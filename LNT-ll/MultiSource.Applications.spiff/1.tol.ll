; ModuleID = './MultiSource.Applications.spiff/1.tol.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._T_tstr = type { i32, %struct.R_flstr*, %struct._T_tstr* }
%struct.R_flstr = type { i32, i32, i8* }

@_T_gtol = global %struct._T_tstr* null, align 8
@T_initdefault.called_before = internal global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"T_initdefault called more than once\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"1e-10\00", align 1
@_T_tols = internal global [10 x %struct._T_tstr*] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [29 x i8] c"too many tolerances per line\00", align 1
@Z_err_buf = external global [0 x i8], align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"%s : negative tolerances don't make any sense\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"2.0\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"%s : relative tolerances greater than 2 don't make any sense\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"don't understand tolerance type '%c'\0A\00", align 1
@_T_getspec.retval = internal global [1024 x i8] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define void @T_initdefault() #0 {
entry:
  %0 = load i32, i32* @T_initdefault.called_before, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct._T_tstr*, %struct._T_tstr** @_T_gtol, align 8
  %cmp = icmp eq %struct._T_tstr* %1, null
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  call void @_T_addtol(%struct._T_tstr** @_T_gtol, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0))
  call void @_T_addtol(%struct._T_tstr** @_T_gtol, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  store i32 1, i32* @T_initdefault.called_before, align 4
  ret void
}

declare void @Z_fatal(...) #1

; Function Attrs: nounwind uwtable
define void @T_clear_tols() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [10 x %struct._T_tstr*], [10 x %struct._T_tstr*]* @_T_tols, i32 0, i64 %idxprom
  call void @_T_tolclear(%struct._T_tstr** %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_T_tolclear(%struct._T_tstr** %addr) #0 {
entry:
  %addr.addr = alloca %struct._T_tstr**, align 8
  store %struct._T_tstr** %addr, %struct._T_tstr*** %addr.addr, align 8
  %0 = load %struct._T_tstr**, %struct._T_tstr*** %addr.addr, align 8
  store %struct._T_tstr* null, %struct._T_tstr** %0, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @T_setdef(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  call void @_T_defclear()
  %0 = load i8*, i8** %str.addr, align 8
  call void @_T_settol(%struct._T_tstr** @_T_gtol, i8* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_T_settol(%struct._T_tstr** %toladdr, i8* %str) #0 {
entry:
  %toladdr.addr = alloca %struct._T_tstr**, align 8
  %str.addr = alloca i8*, align 8
  %typechar = alloca i8, align 1
  store %struct._T_tstr** %toladdr, %struct._T_tstr*** %toladdr.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 0, %conv
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void (i8**, ...) bitcast (void (...)* @S_skipspace to void (i8**, ...)*)(i8** %str.addr)
  %2 = load i8*, i8** %str.addr, align 8
  %3 = load i8, i8* %2, align 1
  store i8 %3, i8* %typechar, align 1
  %4 = load i8*, i8** %str.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %str.addr, align 8
  call void (i8**, ...) bitcast (void (...)* @S_skipspace to void (i8**, ...)*)(i8** %str.addr)
  %5 = load i8, i8* %typechar, align 1
  %conv2 = sext i8 %5 to i32
  switch i32 %conv2, label %sw.default [
    i32 97, label %sw.bb
    i32 114, label %sw.bb.3
    i32 105, label %sw.bb.4
    i32 100, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %while.body
  %6 = load %struct._T_tstr**, %struct._T_tstr*** %toladdr.addr, align 8
  %7 = load i8*, i8** %str.addr, align 8
  call void @_T_addtol(%struct._T_tstr** %6, i32 0, i8* %7)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %while.body
  %8 = load %struct._T_tstr**, %struct._T_tstr*** %toladdr.addr, align 8
  %9 = load i8*, i8** %str.addr, align 8
  call void @_T_addtol(%struct._T_tstr** %8, i32 1, i8* %9)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %while.body
  %10 = load %struct._T_tstr**, %struct._T_tstr*** %toladdr.addr, align 8
  call void @_T_addtol(%struct._T_tstr** %10, i32 2, i8* null)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %while.body
  %11 = load %struct._T_tstr**, %struct._T_tstr*** %toladdr.addr, align 8
  %12 = load %struct._T_tstr*, %struct._T_tstr** @_T_gtol, align 8
  call void @_T_appendtols(%struct._T_tstr** %11, %struct._T_tstr* %12)
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %13 = load i8, i8* %typechar, align 1
  %conv6 = sext i8 %13 to i32
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i32 0, i32 0), i32 %conv6) #3
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb
  call void (i8**, ...) bitcast (void (...)* @S_nextword to void (i8**, ...)*)(i8** %str.addr)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @T_tolline(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %nexttol = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  call void @T_clear_tols()
  store i32 0, i32* %nexttol, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 0, %conv
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %nexttol, align 4
  %cmp2 = icmp sge i32 %2, 10
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %3 = load i32, i32* %nexttol, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [10 x %struct._T_tstr*], [10 x %struct._T_tstr*]* @_T_tols, i32 0, i64 %idxprom
  %4 = load i8*, i8** %str.addr, align 8
  %call = call i8* @_T_getspec(i8* %4)
  call void @_T_settol(%struct._T_tstr** %arrayidx, i8* %call)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %nexttol, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %nexttol, align 4
  %6 = load i8*, i8** %str.addr, align 8
  %call4 = call i8* @_T_nextspec(i8* %6)
  store i8* %call4, i8** %str.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @_T_getspec(i8* %from) #0 {
entry:
  %from.addr = alloca i8*, align 8
  %ptr = alloca i8*, align 8
  store i8* %from, i8** %from.addr, align 8
  store i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @_T_getspec.retval, i32 0, i32 0), i8** %ptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %from.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 59, %conv
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i8*, i8** %from.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv2 = sext i8 %3 to i32
  %cmp3 = icmp ne i32 0, %conv2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load i8*, i8** %from.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %from.addr, align 8
  %6 = load i8, i8* %5, align 1
  %7 = load i8*, i8** %ptr, align 8
  %incdec.ptr5 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr5, i8** %ptr, align 8
  store i8 %6, i8* %7, align 1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %8 = load i8*, i8** %ptr, align 8
  store i8 0, i8* %8, align 1
  ret i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @_T_getspec.retval, i32 0, i32 0)
}

; Function Attrs: nounwind uwtable
define internal i8* @_T_nextspec(i8* %ptr) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8*, i8** %ptr.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 59, %conv
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %2 = load i8*, i8** %ptr.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv2 = sext i8 %3 to i32
  %cmp3 = icmp ne i32 0, %conv2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %cmp3, %land.rhs ]
  br i1 %4, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i8*, i8** %ptr.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %ptr.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %6 = load i8*, i8** %ptr.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv5 = sext i8 %7 to i32
  %cmp6 = icmp eq i32 59, %conv5
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %8 = load i8*, i8** %ptr.addr, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr8, i8** %ptr.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %9 = load i8*, i8** %ptr.addr, align 8
  ret i8* %9
}

; Function Attrs: nounwind uwtable
define i32 @T_moretols(i32 %next_tol) #0 {
entry:
  %next_tol.addr = alloca i32, align 4
  store i32 %next_tol, i32* %next_tol.addr, align 4
  %0 = load i32, i32* %next_tol.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %next_tol.addr, align 4
  %cmp1 = icmp sgt i32 9, %1
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %2 = load i32, i32* %next_tol.addr, align 4
  %add = add nsw i32 %2, 1
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [10 x %struct._T_tstr*], [10 x %struct._T_tstr*]* @_T_tols, i32 0, i64 %idxprom
  %3 = load %struct._T_tstr*, %struct._T_tstr** %arrayidx, align 8
  %cmp2 = icmp eq %struct._T_tstr* %3, null
  %lnot = xor i1 %cmp2, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %4 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define %struct._T_tstr* @T_gettol(i32 %index) #0 {
entry:
  %index.addr = alloca i32, align 4
  store i32 %index, i32* %index.addr, align 4
  %0 = load i32, i32* %index.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [10 x %struct._T_tstr*], [10 x %struct._T_tstr*]* @_T_tols, i32 0, i64 %idxprom
  %1 = load %struct._T_tstr*, %struct._T_tstr** %arrayidx, align 8
  ret %struct._T_tstr* %1
}

; Function Attrs: nounwind uwtable
define %struct._T_tstr* @T_picktol(%struct._T_tstr* %p1, %struct._T_tstr* %p2) #0 {
entry:
  %retval = alloca %struct._T_tstr*, align 8
  %p1.addr = alloca %struct._T_tstr*, align 8
  %p2.addr = alloca %struct._T_tstr*, align 8
  store %struct._T_tstr* %p1, %struct._T_tstr** %p1.addr, align 8
  store %struct._T_tstr* %p2, %struct._T_tstr** %p2.addr, align 8
  %0 = load %struct._T_tstr*, %struct._T_tstr** %p1.addr, align 8
  %cmp = icmp eq %struct._T_tstr* %0, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._T_tstr*, %struct._T_tstr** %p1.addr, align 8
  store %struct._T_tstr* %1, %struct._T_tstr** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._T_tstr*, %struct._T_tstr** %p2.addr, align 8
  %cmp1 = icmp eq %struct._T_tstr* %2, null
  br i1 %cmp1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %3 = load %struct._T_tstr*, %struct._T_tstr** %p2.addr, align 8
  store %struct._T_tstr* %3, %struct._T_tstr** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = load %struct._T_tstr*, %struct._T_tstr** @_T_gtol, align 8
  store %struct._T_tstr* %4, %struct._T_tstr** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %5 = load %struct._T_tstr*, %struct._T_tstr** %retval
  ret %struct._T_tstr* %5
}

; Function Attrs: nounwind uwtable
define void @_T_appendtols(%struct._T_tstr** %to, %struct._T_tstr* %from) #0 {
entry:
  %to.addr = alloca %struct._T_tstr**, align 8
  %from.addr = alloca %struct._T_tstr*, align 8
  %last = alloca %struct._T_tstr*, align 8
  store %struct._T_tstr** %to, %struct._T_tstr*** %to.addr, align 8
  store %struct._T_tstr* %from, %struct._T_tstr** %from.addr, align 8
  %0 = load %struct._T_tstr**, %struct._T_tstr*** %to.addr, align 8
  %1 = load %struct._T_tstr*, %struct._T_tstr** %0, align 8
  %cmp = icmp eq %struct._T_tstr* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._T_tstr*, %struct._T_tstr** %from.addr, align 8
  %3 = load %struct._T_tstr**, %struct._T_tstr*** %to.addr, align 8
  store %struct._T_tstr* %2, %struct._T_tstr** %3, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct._T_tstr**, %struct._T_tstr*** %to.addr, align 8
  %5 = load %struct._T_tstr*, %struct._T_tstr** %4, align 8
  store %struct._T_tstr* %5, %struct._T_tstr** %last, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %6 = load %struct._T_tstr*, %struct._T_tstr** %last, align 8
  %next = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %6, i32 0, i32 2
  %7 = load %struct._T_tstr*, %struct._T_tstr** %next, align 8
  %cmp1 = icmp eq %struct._T_tstr* %7, null
  %lnot = xor i1 %cmp1, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load %struct._T_tstr*, %struct._T_tstr** %last, align 8
  %next2 = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %8, i32 0, i32 2
  %9 = load %struct._T_tstr*, %struct._T_tstr** %next2, align 8
  store %struct._T_tstr* %9, %struct._T_tstr** %last, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load %struct._T_tstr*, %struct._T_tstr** %from.addr, align 8
  %11 = load %struct._T_tstr*, %struct._T_tstr** %last, align 8
  %next3 = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %11, i32 0, i32 2
  store %struct._T_tstr* %10, %struct._T_tstr** %next3, align 8
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @_T_addtol(%struct._T_tstr** %listptr, i32 %type, i8* %str) #0 {
entry:
  %listptr.addr = alloca %struct._T_tstr**, align 8
  %type.addr = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %last = alloca %struct._T_tstr*, align 8
  store %struct._T_tstr** %listptr, %struct._T_tstr*** %listptr.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store i8* %str, i8** %str.addr, align 8
  %0 = load %struct._T_tstr**, %struct._T_tstr*** %listptr.addr, align 8
  %1 = load %struct._T_tstr*, %struct._T_tstr** %0, align 8
  %cmp = icmp eq %struct._T_tstr* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32* (i64, ...) bitcast (i32* (...)* @_Z_myalloc to i32* (i64, ...)*)(i64 24)
  %2 = bitcast i32* %call to %struct._T_tstr*
  %3 = load %struct._T_tstr**, %struct._T_tstr*** %listptr.addr, align 8
  store %struct._T_tstr* %2, %struct._T_tstr** %3, align 8
  store %struct._T_tstr* %2, %struct._T_tstr** %last, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct._T_tstr**, %struct._T_tstr*** %listptr.addr, align 8
  %5 = load %struct._T_tstr*, %struct._T_tstr** %4, align 8
  store %struct._T_tstr* %5, %struct._T_tstr** %last, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %6 = load %struct._T_tstr*, %struct._T_tstr** %last, align 8
  %next = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %6, i32 0, i32 2
  %7 = load %struct._T_tstr*, %struct._T_tstr** %next, align 8
  %cmp1 = icmp eq %struct._T_tstr* %7, null
  %lnot = xor i1 %cmp1, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load %struct._T_tstr*, %struct._T_tstr** %last, align 8
  %next2 = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %8, i32 0, i32 2
  %9 = load %struct._T_tstr*, %struct._T_tstr** %next2, align 8
  store %struct._T_tstr* %9, %struct._T_tstr** %last, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call3 = call i32* (i64, ...) bitcast (i32* (...)* @_Z_myalloc to i32* (i64, ...)*)(i64 24)
  %10 = bitcast i32* %call3 to %struct._T_tstr*
  %11 = load %struct._T_tstr*, %struct._T_tstr** %last, align 8
  %next4 = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %11, i32 0, i32 2
  store %struct._T_tstr* %10, %struct._T_tstr** %next4, align 8
  %12 = load %struct._T_tstr*, %struct._T_tstr** %last, align 8
  %next5 = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %12, i32 0, i32 2
  %13 = load %struct._T_tstr*, %struct._T_tstr** %next5, align 8
  store %struct._T_tstr* %13, %struct._T_tstr** %last, align 8
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %14 = load i32, i32* %type.addr, align 4
  %15 = load %struct._T_tstr*, %struct._T_tstr** %last, align 8
  %tol_type = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %15, i32 0, i32 0
  store i32 %14, i32* %tol_type, align 4
  %16 = load %struct._T_tstr*, %struct._T_tstr** %last, align 8
  %next6 = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %16, i32 0, i32 2
  store %struct._T_tstr* null, %struct._T_tstr** %next6, align 8
  %17 = load i32, i32* %type.addr, align 4
  %cmp7 = icmp eq i32 2, %17
  br i1 %cmp7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end
  %18 = load %struct._T_tstr*, %struct._T_tstr** %last, align 8
  %flo_tol = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %18, i32 0, i32 1
  store %struct.R_flstr* null, %struct.R_flstr** %flo_tol, align 8
  br label %if.end.24

if.else.9:                                        ; preds = %if.end
  %19 = load i8*, i8** %str.addr, align 8
  %call10 = call %struct.R_flstr* (i8*, i32, ...) bitcast (%struct.R_flstr* (...)* @F_atof to %struct.R_flstr* (i8*, i32, ...)*)(i8* %19, i32 0)
  %20 = load %struct._T_tstr*, %struct._T_tstr** %last, align 8
  %flo_tol11 = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %20, i32 0, i32 1
  store %struct.R_flstr* %call10, %struct.R_flstr** %flo_tol11, align 8
  %21 = load %struct._T_tstr*, %struct._T_tstr** %last, align 8
  %flo_tol12 = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %21, i32 0, i32 1
  %22 = load %struct.R_flstr*, %struct.R_flstr** %flo_tol12, align 8
  %man_sign = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %22, i32 0, i32 1
  %23 = load i32, i32* %man_sign, align 4
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.else.9
  %24 = load i8*, i8** %str.addr, align 8
  %call14 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i32 0, i32 0), i8* %24) #3
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i32 0, i32 0))
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.else.9
  %25 = load i32, i32* %type.addr, align 4
  %cmp16 = icmp eq i32 1, %25
  br i1 %cmp16, label %land.lhs.true, label %if.end.23

land.lhs.true:                                    ; preds = %if.end.15
  %26 = load %struct._T_tstr*, %struct._T_tstr** %last, align 8
  %flo_tol17 = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %26, i32 0, i32 1
  %27 = load %struct.R_flstr*, %struct.R_flstr** %flo_tol17, align 8
  %call18 = call %struct.R_flstr* (i8*, i32, ...) bitcast (%struct.R_flstr* (...)* @F_atof to %struct.R_flstr* (i8*, i32, ...)*)(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 1)
  %call19 = call i32 @F_floatcmp(%struct.R_flstr* %27, %struct.R_flstr* %call18)
  %cmp20 = icmp sgt i32 %call19, 0
  br i1 %cmp20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %land.lhs.true
  %28 = load i8*, i8** %str.addr, align 8
  %call22 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i32 0, i32 0), i8* %28) #3
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i32 0, i32 0))
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %land.lhs.true, %if.end.15
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then.8
  ret void
}

declare i32* @_Z_myalloc(...) #1

declare %struct.R_flstr* @F_atof(...) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare i32 @F_floatcmp(%struct.R_flstr*, %struct.R_flstr*) #1

; Function Attrs: nounwind uwtable
define internal void @_T_defclear() #0 {
entry:
  call void @_T_tolclear(%struct._T_tstr** @_T_gtol)
  ret void
}

declare void @S_skipspace(...) #1

declare void @S_nextword(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
