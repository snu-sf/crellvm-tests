; ModuleID = './logfile.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.logfile = type { %struct.logfile*, %struct._IO_FILE*, i8*, i32, i32, i32, %struct.stat* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@lf_reopen_fn = internal global i32 (...)* bitcast (i32 (i8*, i32, %struct.logfile*)* @logfile_reopen to i32 (...)*), align 8
@logroot = internal global %struct.logfile* null, align 8

; Function Attrs: nounwind uwtable
define i32 @lf_move_fd(i32 %fd, i32 %need_fd) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %need_fd.addr = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  store i32 %need_fd, i32* %need_fd.addr, align 4
  store i32 -1, i32* %r, align 4
  %0 = load i32, i32* %fd.addr, align 4
  %1 = load i32, i32* %need_fd.addr, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %fd.addr, align 4
  store i32 %2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %fd.addr, align 4
  %cmp1 = icmp sge i32 %3, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end.5

land.lhs.true:                                    ; preds = %if.end
  %4 = load i32, i32* %fd.addr, align 4
  %5 = load i32, i32* %need_fd.addr, align 4
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %land.lhs.true
  %6 = load i32, i32* %fd.addr, align 4
  %call = call i32 @dup(i32 %6) #5
  %7 = load i32, i32* %need_fd.addr, align 4
  %call4 = call i32 @lf_move_fd(i32 %call, i32 %7)
  store i32 %call4, i32* %r, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %land.lhs.true, %if.end
  %8 = load i32, i32* %fd.addr, align 4
  %call6 = call i32 @close(i32 %8)
  %9 = load i32, i32* %r, align 4
  store i32 %9, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind
declare i32 @dup(i32) #1

declare i32 @close(i32) #2

; Function Attrs: nounwind uwtable
define void @logreopen_register(i32 (i8*, i32, %struct.logfile*)* %fn) #0 {
entry:
  %fn.addr = alloca i32 (i8*, i32, %struct.logfile*)*, align 8
  store i32 (i8*, i32, %struct.logfile*)* %fn, i32 (i8*, i32, %struct.logfile*)** %fn.addr, align 8
  %0 = load i32 (i8*, i32, %struct.logfile*)*, i32 (i8*, i32, %struct.logfile*)** %fn.addr, align 8
  %tobool = icmp ne i32 (i8*, i32, %struct.logfile*)* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32 (i8*, i32, %struct.logfile*)*, i32 (i8*, i32, %struct.logfile*)** %fn.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 (i8*, i32, %struct.logfile*)* [ %1, %cond.true ], [ @logfile_reopen, %cond.false ]
  %2 = bitcast i32 (i8*, i32, %struct.logfile*)* %cond to i32 (...)*
  store i32 (...)* %2, i32 (...)** @lf_reopen_fn, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @logfile_reopen(i8* %name, i32 %wantfd, %struct.logfile* %l) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %wantfd.addr = alloca i32, align 4
  %l.addr = alloca %struct.logfile*, align 8
  %got_fd = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %wantfd, i32* %wantfd.addr, align 4
  store %struct.logfile* %l, %struct.logfile** %l.addr, align 8
  %0 = load i32, i32* %wantfd.addr, align 4
  %call = call i32 @close(i32 %0)
  %1 = load i8*, i8** %name.addr, align 8
  %call1 = call i32 (i8*, i32, ...) @open(i8* %1, i32 1089, i32 438)
  store i32 %call1, i32* %got_fd, align 4
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %got_fd, align 4
  %3 = load i32, i32* %wantfd.addr, align 4
  %call2 = call i32 @lf_move_fd(i32 %2, i32 %3)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct.logfile*, %struct.logfile** %l.addr, align 8
  %call4 = call i32 @logfclose(%struct.logfile* %4)
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.logfile*, %struct.logfile** %l.addr, align 8
  call void @changed_logfile(%struct.logfile* %5)
  br label %do.body.5

do.body.5:                                        ; preds = %if.end
  br label %do.end.6

do.end.6:                                         ; preds = %do.body.5
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.6, %do.end
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define %struct.logfile* @logfopen(i8* %name, %struct._IO_FILE* %fp) #0 {
entry:
  %retval = alloca %struct.logfile*, align 8
  %name.addr = alloca i8*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %l = alloca %struct.logfile*, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %tobool = icmp ne %struct._IO_FILE* %0, null
  br i1 %tobool, label %if.end.3, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %name.addr, align 8
  %call = call %struct.logfile* @lookup_logfile(i8* %1)
  store %struct.logfile* %call, %struct.logfile** %l, align 8
  %tobool1 = icmp ne %struct.logfile* %call, null
  br i1 %tobool1, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  store %struct.logfile* null, %struct.logfile** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %2 = load %struct.logfile*, %struct.logfile** %l, align 8
  %opencount = getelementptr inbounds %struct.logfile, %struct.logfile* %2, i32 0, i32 3
  %3 = load i32, i32* %opencount, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %opencount, align 4
  %4 = load %struct.logfile*, %struct.logfile** %l, align 8
  store %struct.logfile* %4, %struct.logfile** %retval
  br label %return

if.end.3:                                         ; preds = %entry
  %call4 = call noalias i8* @malloc(i64 48) #5
  %5 = bitcast i8* %call4 to %struct.logfile*
  store %struct.logfile* %5, %struct.logfile** %l, align 8
  %tobool5 = icmp ne %struct.logfile* %5, null
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end.3
  store %struct.logfile* null, %struct.logfile** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %call8 = call noalias i8* @malloc(i64 144) #5
  %6 = bitcast i8* %call8 to %struct.stat*
  %7 = load %struct.logfile*, %struct.logfile** %l, align 8
  %st = getelementptr inbounds %struct.logfile, %struct.logfile* %7, i32 0, i32 6
  store %struct.stat* %6, %struct.stat** %st, align 8
  %tobool9 = icmp ne %struct.stat* %6, null
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.end.7
  %8 = load %struct.logfile*, %struct.logfile** %l, align 8
  %9 = bitcast %struct.logfile* %8 to i8*
  call void @free(i8* %9) #5
  store %struct.logfile* null, %struct.logfile** %retval
  br label %return

if.end.11:                                        ; preds = %if.end.7
  %10 = load i8*, i8** %name.addr, align 8
  %call12 = call i8* @SaveStr(i8* %10)
  %11 = load %struct.logfile*, %struct.logfile** %l, align 8
  %name13 = getelementptr inbounds %struct.logfile, %struct.logfile* %11, i32 0, i32 2
  store i8* %call12, i8** %name13, align 8
  %tobool14 = icmp ne i8* %call12, null
  br i1 %tobool14, label %if.end.17, label %if.then.15

if.then.15:                                       ; preds = %if.end.11
  %12 = load %struct.logfile*, %struct.logfile** %l, align 8
  %st16 = getelementptr inbounds %struct.logfile, %struct.logfile* %12, i32 0, i32 6
  %13 = load %struct.stat*, %struct.stat** %st16, align 8
  %14 = bitcast %struct.stat* %13 to i8*
  call void @free(i8* %14) #5
  %15 = load %struct.logfile*, %struct.logfile** %l, align 8
  %16 = bitcast %struct.logfile* %15 to i8*
  call void @free(i8* %16) #5
  store %struct.logfile* null, %struct.logfile** %retval
  br label %return

if.end.17:                                        ; preds = %if.end.11
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %18 = load %struct.logfile*, %struct.logfile** %l, align 8
  %fp18 = getelementptr inbounds %struct.logfile, %struct.logfile* %18, i32 0, i32 1
  store %struct._IO_FILE* %17, %struct._IO_FILE** %fp18, align 8
  %19 = load %struct.logfile*, %struct.logfile** %l, align 8
  %opencount19 = getelementptr inbounds %struct.logfile, %struct.logfile* %19, i32 0, i32 3
  store i32 1, i32* %opencount19, align 4
  %20 = load %struct.logfile*, %struct.logfile** %l, align 8
  %writecount = getelementptr inbounds %struct.logfile, %struct.logfile* %20, i32 0, i32 4
  store i32 0, i32* %writecount, align 4
  %21 = load %struct.logfile*, %struct.logfile** %l, align 8
  %flushcount = getelementptr inbounds %struct.logfile, %struct.logfile* %21, i32 0, i32 5
  store i32 0, i32* %flushcount, align 4
  %22 = load %struct.logfile*, %struct.logfile** %l, align 8
  call void @changed_logfile(%struct.logfile* %22)
  %23 = load %struct.logfile*, %struct.logfile** @logroot, align 8
  %24 = load %struct.logfile*, %struct.logfile** %l, align 8
  %next = getelementptr inbounds %struct.logfile, %struct.logfile* %24, i32 0, i32 0
  store %struct.logfile* %23, %struct.logfile** %next, align 8
  %25 = load %struct.logfile*, %struct.logfile** %l, align 8
  store %struct.logfile* %25, %struct.logfile** @logroot, align 8
  %26 = load %struct.logfile*, %struct.logfile** %l, align 8
  store %struct.logfile* %26, %struct.logfile** %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then.15, %if.then.10, %if.then.6, %if.end, %if.then.2
  %27 = load %struct.logfile*, %struct.logfile** %retval
  ret %struct.logfile* %27
}

; Function Attrs: nounwind uwtable
define internal %struct.logfile* @lookup_logfile(i8* %name) #0 {
entry:
  %retval = alloca %struct.logfile*, align 8
  %name.addr = alloca i8*, align 8
  %l = alloca %struct.logfile*, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load %struct.logfile*, %struct.logfile** @logroot, align 8
  store %struct.logfile* %0, %struct.logfile** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.logfile*, %struct.logfile** %l, align 8
  %tobool = icmp ne %struct.logfile* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %name.addr, align 8
  %3 = load %struct.logfile*, %struct.logfile** %l, align 8
  %name1 = getelementptr inbounds %struct.logfile, %struct.logfile* %3, i32 0, i32 2
  %4 = load i8*, i8** %name1, align 8
  %call = call i32 @strcmp(i8* %2, i8* %4) #6
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %5 = load %struct.logfile*, %struct.logfile** %l, align 8
  store %struct.logfile* %5, %struct.logfile** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load %struct.logfile*, %struct.logfile** %l, align 8
  %next = getelementptr inbounds %struct.logfile, %struct.logfile* %6, i32 0, i32 0
  %7 = load %struct.logfile*, %struct.logfile** %next, align 8
  store %struct.logfile* %7, %struct.logfile** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.logfile* null, %struct.logfile** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %8 = load %struct.logfile*, %struct.logfile** %retval
  ret %struct.logfile* %8
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare void @free(i8*) #1

declare i8* @SaveStr(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @changed_logfile(%struct.logfile* %l) #0 {
entry:
  %l.addr = alloca %struct.logfile*, align 8
  %o = alloca %struct.stat, align 8
  %s = alloca %struct.stat*, align 8
  store %struct.logfile* %l, %struct.logfile** %l.addr, align 8
  %0 = load %struct.logfile*, %struct.logfile** %l.addr, align 8
  %st = getelementptr inbounds %struct.logfile, %struct.logfile* %0, i32 0, i32 6
  %1 = load %struct.stat*, %struct.stat** %st, align 8
  store %struct.stat* %1, %struct.stat** %s, align 8
  %2 = load %struct.logfile*, %struct.logfile** %l.addr, align 8
  %fp = getelementptr inbounds %struct.logfile, %struct.logfile* %2, i32 0, i32 1
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call = call i32 @fileno(%struct._IO_FILE* %3) #5
  %call1 = call i32 @fstat(i32 %call, %struct.stat* %o) #5
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.9

if.end:                                           ; preds = %entry
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %o, i32 0, i32 8
  %4 = load i64, i64* %st_size, align 8
  %5 = load %struct.stat*, %struct.stat** %s, align 8
  %st_size2 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 8
  %6 = load i64, i64* %st_size2, align 8
  %cmp3 = icmp sgt i64 %4, %6
  br i1 %cmp3, label %if.then.4, label %if.end.9

if.then.4:                                        ; preds = %if.end
  %st_size5 = getelementptr inbounds %struct.stat, %struct.stat* %o, i32 0, i32 8
  %7 = load i64, i64* %st_size5, align 8
  %8 = load %struct.stat*, %struct.stat** %s, align 8
  %st_size6 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 8
  store i64 %7, i64* %st_size6, align 8
  %st_mtim = getelementptr inbounds %struct.stat, %struct.stat* %o, i32 0, i32 12
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim, i32 0, i32 0
  %9 = load i64, i64* %tv_sec, align 8
  %10 = load %struct.stat*, %struct.stat** %s, align 8
  %st_mtim7 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 12
  %tv_sec8 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim7, i32 0, i32 0
  store i64 %9, i64* %tv_sec8, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then, %if.then.4, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @islogfile(i8* %name) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.logfile*, %struct.logfile** @logroot, align 8
  %tobool1 = icmp ne %struct.logfile* %1, null
  %cond = select i1 %tobool1, i32 1, i32 0
  store i32 %cond, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %name.addr, align 8
  %call = call %struct.logfile* @lookup_logfile(i8* %2)
  %tobool2 = icmp ne %struct.logfile* %call, null
  %cond3 = select i1 %tobool2, i32 1, i32 0
  store i32 %cond3, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i32 @logfclose(%struct.logfile* %l) #0 {
entry:
  %retval = alloca i32, align 4
  %l.addr = alloca %struct.logfile*, align 8
  %lp = alloca %struct.logfile**, align 8
  store %struct.logfile* %l, %struct.logfile** %l.addr, align 8
  store %struct.logfile** @logroot, %struct.logfile*** %lp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.logfile**, %struct.logfile*** %lp, align 8
  %1 = load %struct.logfile*, %struct.logfile** %0, align 8
  %tobool = icmp ne %struct.logfile* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.logfile**, %struct.logfile*** %lp, align 8
  %3 = load %struct.logfile*, %struct.logfile** %2, align 8
  %4 = load %struct.logfile*, %struct.logfile** %l.addr, align 8
  %cmp = icmp eq %struct.logfile* %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load %struct.logfile**, %struct.logfile*** %lp, align 8
  %6 = load %struct.logfile*, %struct.logfile** %5, align 8
  %next = getelementptr inbounds %struct.logfile, %struct.logfile* %6, i32 0, i32 0
  store %struct.logfile** %next, %struct.logfile*** %lp, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %7 = load %struct.logfile**, %struct.logfile*** %lp, align 8
  %8 = load %struct.logfile*, %struct.logfile** %7, align 8
  %tobool1 = icmp ne %struct.logfile* %8, null
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %for.end
  store i32 -1, i32* %retval
  br label %return

if.end.3:                                         ; preds = %for.end
  %9 = load %struct.logfile*, %struct.logfile** %l.addr, align 8
  %opencount = getelementptr inbounds %struct.logfile, %struct.logfile* %9, i32 0, i32 3
  %10 = load i32, i32* %opencount, align 4
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* %opencount, align 4
  %cmp4 = icmp sgt i32 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end.3
  %11 = load %struct.logfile*, %struct.logfile** %l.addr, align 8
  %opencount7 = getelementptr inbounds %struct.logfile, %struct.logfile* %11, i32 0, i32 3
  %12 = load i32, i32* %opencount7, align 4
  %cmp8 = icmp slt i32 %12, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  call void @abort() #7
  unreachable

if.end.10:                                        ; preds = %if.end.6
  %13 = load %struct.logfile*, %struct.logfile** %l.addr, align 8
  %next11 = getelementptr inbounds %struct.logfile, %struct.logfile* %13, i32 0, i32 0
  %14 = load %struct.logfile*, %struct.logfile** %next11, align 8
  %15 = load %struct.logfile**, %struct.logfile*** %lp, align 8
  store %struct.logfile* %14, %struct.logfile** %15, align 8
  %16 = load %struct.logfile*, %struct.logfile** %l.addr, align 8
  %fp = getelementptr inbounds %struct.logfile, %struct.logfile* %16, i32 0, i32 1
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call = call i32 @fclose(%struct._IO_FILE* %17)
  %18 = load %struct.logfile*, %struct.logfile** %l.addr, align 8
  %name = getelementptr inbounds %struct.logfile, %struct.logfile* %18, i32 0, i32 2
  %19 = load i8*, i8** %name, align 8
  call void @free(i8* %19) #5
  %20 = load %struct.logfile*, %struct.logfile** %l.addr, align 8
  %21 = bitcast %struct.logfile* %20 to i8*
  call void @free(i8* %21) #5
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.5, %if.then.2
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: noreturn nounwind
declare void @abort() #3

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define i32 @logfwrite(%struct.logfile* %l, i8* %buf, i32 %n) #0 {
entry:
  %retval = alloca i32, align 4
  %l.addr = alloca %struct.logfile*, align 8
  %buf.addr = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  %r = alloca i32, align 4
  store %struct.logfile* %l, %struct.logfile** %l.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load %struct.logfile*, %struct.logfile** %l.addr, align 8
  %call = call i32 @stolen_logfile(%struct.logfile* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32 (...)*, i32 (...)** @lf_reopen_fn, align 8
  %2 = load %struct.logfile*, %struct.logfile** %l.addr, align 8
  %name = getelementptr inbounds %struct.logfile, %struct.logfile* %2, i32 0, i32 2
  %3 = load i8*, i8** %name, align 8
  %4 = load %struct.logfile*, %struct.logfile** %l.addr, align 8
  %fp = getelementptr inbounds %struct.logfile, %struct.logfile* %4, i32 0, i32 1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call1 = call i32 @fileno(%struct._IO_FILE* %5) #5
  %6 = load %struct.logfile*, %struct.logfile** %l.addr, align 8
  %callee.knr.cast = bitcast i32 (...)* %1 to i32 (i8*, i32, %struct.logfile*, ...)*
  %call2 = call i32 (i8*, i32, %struct.logfile*, ...) %callee.knr.cast(i8* %3, i32 %call1, %struct.logfile* %6)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %7 = load i8*, i8** %buf.addr, align 8
  %8 = load i32, i32* %n.addr, align 4
  %conv = sext i32 %8 to i64
  %9 = load %struct.logfile*, %struct.logfile** %l.addr, align 8
  %fp4 = getelementptr inbounds %struct.logfile, %struct.logfile* %9, i32 0, i32 1
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp4, align 8
  %call5 = call i64 @fwrite(i8* %7, i64 %conv, i64 1, %struct._IO_FILE* %10)
  %conv6 = trunc i64 %call5 to i32
  store i32 %conv6, i32* %r, align 4
  %11 = load %struct.logfile*, %struct.logfile** %l.addr, align 8
  %flushcount = getelementptr inbounds %struct.logfile, %struct.logfile* %11, i32 0, i32 5
  %12 = load i32, i32* %flushcount, align 4
  %add = add nsw i32 %12, 1
  %13 = load %struct.logfile*, %struct.logfile** %l.addr, align 8
  %writecount = getelementptr inbounds %struct.logfile, %struct.logfile* %13, i32 0, i32 4
  %14 = load i32, i32* %writecount, align 4
  %add7 = add nsw i32 %14, %add
  store i32 %add7, i32* %writecount, align 4
  %15 = load %struct.logfile*, %struct.logfile** %l.addr, align 8
  %flushcount8 = getelementptr inbounds %struct.logfile, %struct.logfile* %15, i32 0, i32 5
  store i32 0, i32* %flushcount8, align 4
  %16 = load %struct.logfile*, %struct.logfile** %l.addr, align 8
  call void @changed_logfile(%struct.logfile* %16)
  %17 = load i32, i32* %r, align 4
  store i32 %17, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @stolen_logfile(%struct.logfile* %l) #0 {
entry:
  %retval = alloca i32, align 4
  %l.addr = alloca %struct.logfile*, align 8
  %o = alloca %struct.stat, align 8
  %s = alloca %struct.stat*, align 8
  store %struct.logfile* %l, %struct.logfile** %l.addr, align 8
  %0 = load %struct.logfile*, %struct.logfile** %l.addr, align 8
  %st = getelementptr inbounds %struct.logfile, %struct.logfile* %0, i32 0, i32 6
  %1 = load %struct.stat*, %struct.stat** %st, align 8
  store %struct.stat* %1, %struct.stat** %s, align 8
  %2 = load %struct.stat*, %struct.stat** %s, align 8
  %3 = bitcast %struct.stat* %o to i8*
  %4 = bitcast %struct.stat* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 144, i32 8, i1 false)
  %5 = load %struct.logfile*, %struct.logfile** %l.addr, align 8
  %fp = getelementptr inbounds %struct.logfile, %struct.logfile* %5, i32 0, i32 1
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call = call i32 @fileno(%struct._IO_FILE* %6) #5
  %7 = load %struct.stat*, %struct.stat** %s, align 8
  %call1 = call i32 @fstat(i32 %call, %struct.stat* %7) #5
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.stat*, %struct.stat** %s, align 8
  %st_dev = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  store i64 0, i64* %st_dev, align 8
  %9 = load %struct.stat*, %struct.stat** %s, align 8
  %st_ino = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 1
  store i64 0, i64* %st_ino, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.body
  %st_dev2 = getelementptr inbounds %struct.stat, %struct.stat* %o, i32 0, i32 0
  %10 = load i64, i64* %st_dev2, align 8
  %tobool = icmp ne i64 %10, 0
  br i1 %tobool, label %if.end.6, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end
  %st_ino3 = getelementptr inbounds %struct.stat, %struct.stat* %o, i32 0, i32 1
  %11 = load i64, i64* %st_ino3, align 8
  %tobool4 = icmp ne i64 %11, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %land.lhs.true, %do.end
  %12 = load %struct.stat*, %struct.stat** %s, align 8
  %st_dev7 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 0
  %13 = load i64, i64* %st_dev7, align 8
  %tobool8 = icmp ne i64 %13, 0
  br i1 %tobool8, label %lor.lhs.false, label %land.lhs.true.9

land.lhs.true.9:                                  ; preds = %if.end.6
  %14 = load %struct.stat*, %struct.stat** %s, align 8
  %st_ino10 = getelementptr inbounds %struct.stat, %struct.stat* %14, i32 0, i32 1
  %15 = load i64, i64* %st_ino10, align 8
  %tobool11 = icmp ne i64 %15, 0
  br i1 %tobool11, label %lor.lhs.false, label %if.then.37

lor.lhs.false:                                    ; preds = %land.lhs.true.9, %if.end.6
  %16 = load %struct.stat*, %struct.stat** %s, align 8
  %st_nlink = getelementptr inbounds %struct.stat, %struct.stat* %16, i32 0, i32 2
  %17 = load i64, i64* %st_nlink, align 8
  %tobool12 = icmp ne i64 %17, 0
  br i1 %tobool12, label %lor.lhs.false.13, label %if.then.37

lor.lhs.false.13:                                 ; preds = %lor.lhs.false
  %18 = load %struct.stat*, %struct.stat** %s, align 8
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %18, i32 0, i32 8
  %19 = load i64, i64* %st_size, align 8
  %st_size14 = getelementptr inbounds %struct.stat, %struct.stat* %o, i32 0, i32 8
  %20 = load i64, i64* %st_size14, align 8
  %cmp15 = icmp slt i64 %19, %20
  br i1 %cmp15, label %if.then.37, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false.13
  %21 = load %struct.stat*, %struct.stat** %s, align 8
  %st_mtim = getelementptr inbounds %struct.stat, %struct.stat* %21, i32 0, i32 12
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim, i32 0, i32 0
  %22 = load i64, i64* %tv_sec, align 8
  %st_mtim17 = getelementptr inbounds %struct.stat, %struct.stat* %o, i32 0, i32 12
  %tv_sec18 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim17, i32 0, i32 0
  %23 = load i64, i64* %tv_sec18, align 8
  %cmp19 = icmp ne i64 %22, %23
  br i1 %cmp19, label %if.then.37, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %lor.lhs.false.16
  %24 = load %struct.stat*, %struct.stat** %s, align 8
  %st_ctim = getelementptr inbounds %struct.stat, %struct.stat* %24, i32 0, i32 13
  %tv_sec21 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_ctim, i32 0, i32 0
  %25 = load i64, i64* %tv_sec21, align 8
  %st_ctim22 = getelementptr inbounds %struct.stat, %struct.stat* %o, i32 0, i32 13
  %tv_sec23 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_ctim22, i32 0, i32 0
  %26 = load i64, i64* %tv_sec23, align 8
  %cmp24 = icmp ne i64 %25, %26
  br i1 %cmp24, label %land.lhs.true.25, label %if.end.48

land.lhs.true.25:                                 ; preds = %lor.lhs.false.20
  %27 = load %struct.stat*, %struct.stat** %s, align 8
  %st_mtim26 = getelementptr inbounds %struct.stat, %struct.stat* %27, i32 0, i32 12
  %tv_sec27 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim26, i32 0, i32 0
  %28 = load i64, i64* %tv_sec27, align 8
  %29 = load %struct.stat*, %struct.stat** %s, align 8
  %st_ctim28 = getelementptr inbounds %struct.stat, %struct.stat* %29, i32 0, i32 13
  %tv_sec29 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_ctim28, i32 0, i32 0
  %30 = load i64, i64* %tv_sec29, align 8
  %cmp30 = icmp eq i64 %28, %30
  br i1 %cmp30, label %land.lhs.true.31, label %if.then.37

land.lhs.true.31:                                 ; preds = %land.lhs.true.25
  %st_ctim32 = getelementptr inbounds %struct.stat, %struct.stat* %o, i32 0, i32 13
  %tv_sec33 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_ctim32, i32 0, i32 0
  %31 = load i64, i64* %tv_sec33, align 8
  %32 = load %struct.stat*, %struct.stat** %s, align 8
  %st_ctim34 = getelementptr inbounds %struct.stat, %struct.stat* %32, i32 0, i32 13
  %tv_sec35 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_ctim34, i32 0, i32 0
  %33 = load i64, i64* %tv_sec35, align 8
  %cmp36 = icmp slt i64 %31, %33
  br i1 %cmp36, label %if.end.48, label %if.then.37

if.then.37:                                       ; preds = %land.lhs.true.31, %land.lhs.true.25, %lor.lhs.false.16, %lor.lhs.false.13, %lor.lhs.false, %land.lhs.true.9
  br label %do.body.38

do.body.38:                                       ; preds = %if.then.37
  br label %do.end.39

do.end.39:                                        ; preds = %do.body.38
  br label %do.body.40

do.body.40:                                       ; preds = %do.end.39
  br label %do.end.41

do.end.41:                                        ; preds = %do.body.40
  br label %do.body.42

do.body.42:                                       ; preds = %do.end.41
  br label %do.end.43

do.end.43:                                        ; preds = %do.body.42
  br label %do.body.44

do.body.44:                                       ; preds = %do.end.43
  br label %do.end.45

do.end.45:                                        ; preds = %do.body.44
  br label %do.body.46

do.body.46:                                       ; preds = %do.end.45
  br label %do.end.47

do.end.47:                                        ; preds = %do.body.46
  store i32 -1, i32* %retval
  br label %return

if.end.48:                                        ; preds = %land.lhs.true.31, %lor.lhs.false.20
  br label %do.body.49

do.body.49:                                       ; preds = %if.end.48
  br label %do.end.50

do.end.50:                                        ; preds = %do.body.49
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.50, %do.end.47, %if.then.5
  %34 = load i32, i32* %retval
  ret i32 %34
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #1

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define i32 @logfflush(%struct.logfile* %l) #0 {
entry:
  %retval = alloca i32, align 4
  %l.addr = alloca %struct.logfile*, align 8
  %r = alloca i32, align 4
  store %struct.logfile* %l, %struct.logfile** %l.addr, align 8
  store i32 0, i32* %r, align 4
  %0 = load %struct.logfile*, %struct.logfile** %l.addr, align 8
  %tobool = icmp ne %struct.logfile* %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.logfile*, %struct.logfile** @logroot, align 8
  store %struct.logfile* %1, %struct.logfile** %l.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load %struct.logfile*, %struct.logfile** %l.addr, align 8
  %tobool1 = icmp ne %struct.logfile* %2, null
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.logfile*, %struct.logfile** %l.addr, align 8
  %call = call i32 @stolen_logfile(%struct.logfile* %3)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %4 = load i32 (...)*, i32 (...)** @lf_reopen_fn, align 8
  %5 = load %struct.logfile*, %struct.logfile** %l.addr, align 8
  %name = getelementptr inbounds %struct.logfile, %struct.logfile* %5, i32 0, i32 2
  %6 = load i8*, i8** %name, align 8
  %7 = load %struct.logfile*, %struct.logfile** %l.addr, align 8
  %fp = getelementptr inbounds %struct.logfile, %struct.logfile* %7, i32 0, i32 1
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call3 = call i32 @fileno(%struct._IO_FILE* %8) #5
  %9 = load %struct.logfile*, %struct.logfile** %l.addr, align 8
  %callee.knr.cast = bitcast i32 (...)* %4 to i32 (i8*, i32, %struct.logfile*, ...)*
  %call4 = call i32 (i8*, i32, %struct.logfile*, ...) %callee.knr.cast(i8* %6, i32 %call3, %struct.logfile* %9)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %land.lhs.true
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %for.body
  %10 = load %struct.logfile*, %struct.logfile** %l.addr, align 8
  %fp7 = getelementptr inbounds %struct.logfile, %struct.logfile* %10, i32 0, i32 1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp7, align 8
  %call8 = call i32 @fflush(%struct._IO_FILE* %11)
  %12 = load i32, i32* %r, align 4
  %or = or i32 %12, %call8
  store i32 %or, i32* %r, align 4
  %13 = load %struct.logfile*, %struct.logfile** %l.addr, align 8
  %flushcount = getelementptr inbounds %struct.logfile, %struct.logfile* %13, i32 0, i32 5
  %14 = load i32, i32* %flushcount, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %flushcount, align 4
  %15 = load %struct.logfile*, %struct.logfile** %l.addr, align 8
  call void @changed_logfile(%struct.logfile* %15)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load %struct.logfile*, %struct.logfile** %l.addr, align 8
  %next = getelementptr inbounds %struct.logfile, %struct.logfile* %16, i32 0, i32 0
  %17 = load %struct.logfile*, %struct.logfile** %next, align 8
  store %struct.logfile* %17, %struct.logfile** %l.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.24

if.else:                                          ; preds = %entry
  %18 = load %struct.logfile*, %struct.logfile** %l.addr, align 8
  %call9 = call i32 @stolen_logfile(%struct.logfile* %18)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %land.lhs.true.11, label %if.end.19

land.lhs.true.11:                                 ; preds = %if.else
  %19 = load i32 (...)*, i32 (...)** @lf_reopen_fn, align 8
  %20 = load %struct.logfile*, %struct.logfile** %l.addr, align 8
  %name12 = getelementptr inbounds %struct.logfile, %struct.logfile* %20, i32 0, i32 2
  %21 = load i8*, i8** %name12, align 8
  %22 = load %struct.logfile*, %struct.logfile** %l.addr, align 8
  %fp13 = getelementptr inbounds %struct.logfile, %struct.logfile* %22, i32 0, i32 1
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %fp13, align 8
  %call14 = call i32 @fileno(%struct._IO_FILE* %23) #5
  %24 = load %struct.logfile*, %struct.logfile** %l.addr, align 8
  %callee.knr.cast15 = bitcast i32 (...)* %19 to i32 (i8*, i32, %struct.logfile*, ...)*
  %call16 = call i32 (i8*, i32, %struct.logfile*, ...) %callee.knr.cast15(i8* %21, i32 %call14, %struct.logfile* %24)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %land.lhs.true.11
  store i32 -1, i32* %retval
  br label %return

if.end.19:                                        ; preds = %land.lhs.true.11, %if.else
  %25 = load %struct.logfile*, %struct.logfile** %l.addr, align 8
  %fp20 = getelementptr inbounds %struct.logfile, %struct.logfile* %25, i32 0, i32 1
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %fp20, align 8
  %call21 = call i32 @fflush(%struct._IO_FILE* %26)
  store i32 %call21, i32* %r, align 4
  %27 = load %struct.logfile*, %struct.logfile** %l.addr, align 8
  %flushcount22 = getelementptr inbounds %struct.logfile, %struct.logfile* %27, i32 0, i32 5
  %28 = load i32, i32* %flushcount22, align 4
  %inc23 = add nsw i32 %28, 1
  store i32 %inc23, i32* %flushcount22, align 4
  %29 = load %struct.logfile*, %struct.logfile** %l.addr, align 8
  call void @changed_logfile(%struct.logfile* %29)
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.19, %for.end
  %30 = load i32, i32* %r, align 4
  store i32 %30, i32* %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.then.18, %if.then.6
  %31 = load i32, i32* %retval
  ret i32 %31
}

declare i32 @fflush(%struct._IO_FILE*) #2

declare i32 @open(i8*, i32, ...) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind
declare i32 @fstat(i32, %struct.stat*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
