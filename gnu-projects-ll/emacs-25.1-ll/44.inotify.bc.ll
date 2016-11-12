; ModuleID = './src/inotify.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vectorlike_header = type { i64 }
%struct.input_event = type { i32, i32, i32, i64, i64, i64, i64, i64 }
%struct.inotify_event = type { i32, i32, i32, i32, [0 x i8] }
%struct.Lisp_Cons = type { i64, %union.anon.0 }
%union.anon.0 = type { i64 }
%struct.Lisp_Subr = type { %struct.vectorlike_header, %union.anon, i16, i16, i8*, i8*, i8* }
%union.anon = type { i64 ()* }

@inotifyfd = internal global i32 -1, align 4
@.str = private unnamed_addr constant [31 x i8] c"File watching is not available\00", align 1
@watch_list = internal global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Could not add watch for file\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Could not rm watch\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"inotify\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Error while retrieving file system events\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Error while reading file system events\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"Unknown aspect\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"inotify-add-watch\00", align 1
@Sinotify_add_watch = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Finotify_add_watch }, i16 3, i16 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.8 = private unnamed_addr constant [17 x i8] c"inotify-rm-watch\00", align 1
@Sinotify_rm_watch = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Finotify_rm_watch }, i16 1, i16 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.9 = private unnamed_addr constant [16 x i8] c"inotify-valid-p\00", align 1
@Sinotify_valid_p = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Finotify_valid_p }, i16 1, i16 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* null }, align 8

; Function Attrs: nounwind uwtable
define i64 @Finotify_add_watch(i64 %file_name, i64 %aspect, i64 %callback) #0 {
entry:
  %file_name.addr = alloca i64, align 8
  %aspect.addr = alloca i64, align 8
  %callback.addr = alloca i64, align 8
  %mask = alloca i32, align 4
  %watch_object = alloca i64, align 8
  %encoded_file_name = alloca i64, align 8
  %watch_descriptor = alloca i64, align 8
  %watchdesc = alloca i32, align 4
  store i64 %file_name, i64* %file_name.addr, align 8
  store i64 %aspect, i64* %aspect.addr, align 8
  store i64 %callback, i64* %callback.addr, align 8
  store i32 -1, i32* %watchdesc, align 4
  %0 = load i64, i64* %file_name.addr, align 8
  call void @CHECK_STRING(i64 %0)
  %1 = load i32, i32* @inotifyfd, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %call = call i32 @inotify_init1(i32 526336) #4
  store i32 %call, i32* @inotifyfd, align 4
  %2 = load i32, i32* @inotifyfd, align 4
  %cmp1 = icmp slt i32 %2, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  call void @report_file_notify_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0), i64 %call3) #7
  unreachable

if.end:                                           ; preds = %if.then
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call4, i64* @watch_list, align 8
  %3 = load i32, i32* @inotifyfd, align 4
  call void @add_read_fd(i32 %3, void (i32, i8*)* @inotify_callback, i8* null)
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %4 = load i64, i64* %aspect.addr, align 8
  %call6 = call i32 @aspect_to_inotifymask(i64 %4)
  store i32 %call6, i32* %mask, align 4
  %5 = load i64, i64* %file_name.addr, align 8
  %call7 = call i64 @encode_file_name(i64 %5)
  store i64 %call7, i64* %encoded_file_name, align 8
  %6 = load i32, i32* @inotifyfd, align 4
  %7 = load i64, i64* %encoded_file_name, align 8
  %call8 = call i8* @SSDATA(i64 %7)
  %8 = load i32, i32* %mask, align 4
  %call9 = call i32 @inotify_add_watch(i32 %6, i8* %call8, i32 %8) #4
  store i32 %call9, i32* %watchdesc, align 4
  %9 = load i32, i32* %watchdesc, align 4
  %cmp10 = icmp eq i32 %9, -1
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.5
  %10 = load i64, i64* %file_name.addr, align 8
  call void @report_file_notify_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), i64 %10) #7
  unreachable

if.end.12:                                        ; preds = %if.end.5
  %11 = load i32, i32* %watchdesc, align 4
  %call13 = call i64 @make_watch_descriptor(i32 %11)
  store i64 %call13, i64* %watch_descriptor, align 8
  %12 = load i64, i64* %watch_descriptor, align 8
  %13 = load i64, i64* @watch_list, align 8
  %call14 = call i64 @Fassoc(i64 %12, i64 %13)
  store i64 %call14, i64* %watch_object, align 8
  %14 = load i64, i64* %watch_object, align 8
  %call15 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp16 = icmp eq i64 %14, %call15
  br i1 %cmp16, label %if.end.19, label %if.then.17

if.then.17:                                       ; preds = %if.end.12
  %15 = load i64, i64* %watch_object, align 8
  %16 = load i64, i64* @watch_list, align 8
  %call18 = call i64 @Fdelete(i64 %15, i64 %16)
  store i64 %call18, i64* @watch_list, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %if.end.12
  %17 = load i64, i64* %watch_descriptor, align 8
  %18 = load i64, i64* %encoded_file_name, align 8
  %19 = load i64, i64* %callback.addr, align 8
  %call20 = call i64 @list3(i64 %17, i64 %18, i64 %19)
  store i64 %call20, i64* %watch_object, align 8
  %20 = load i64, i64* %watch_object, align 8
  %21 = load i64, i64* @watch_list, align 8
  %call21 = call i64 @Fcons(i64 %20, i64 %21)
  store i64 %call21, i64* @watch_list, align 8
  %22 = load i64, i64* %watch_descriptor, align 8
  ret i64 %22
}

declare void @CHECK_STRING(i64) #1

; Function Attrs: nounwind
declare i32 @inotify_init1(i32) #2

; Function Attrs: noreturn
declare void @report_file_notify_error(i8*, i64) #3

declare i64 @builtin_lisp_symbol(i32) #1

declare void @add_read_fd(i32, void (i32, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @inotify_callback(i32 %fd, i8* %_) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %_.addr = alloca i8*, align 8
  %event = alloca %struct.input_event, align 8
  %watch_object = alloca i64, align 8
  %to_read = alloca i32, align 4
  %buffer = alloca i8*, align 8
  %n = alloca i64, align 8
  %i = alloca i64, align 8
  %ev = alloca %struct.inotify_event*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store i8* %_, i8** %_.addr, align 8
  store i32 0, i32* %to_read, align 4
  %0 = load i32, i32* %fd.addr, align 4
  %call = call i32 (i32, i64, ...) @ioctl(i32 %0, i64 21531, i32* %to_read) #4
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  call void @report_file_notify_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i32 0, i32 0), i64 %call1) #7
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %to_read, align 4
  %conv = sext i32 %1 to i64
  %call2 = call noalias i8* @xmalloc(i64 %conv)
  store i8* %call2, i8** %buffer, align 8
  %2 = load i32, i32* %fd.addr, align 4
  %3 = load i8*, i8** %buffer, align 8
  %4 = load i32, i32* %to_read, align 4
  %conv3 = sext i32 %4 to i64
  %call4 = call i64 @read(i32 %2, i8* %3, i64 %conv3)
  store i64 %call4, i64* %n, align 8
  %5 = load i64, i64* %n, align 8
  %cmp5 = icmp slt i64 %5, 0
  br i1 %cmp5, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %6 = load i8*, i8** %buffer, align 8
  call void @xfree(i8* %6)
  %call8 = call i64 @builtin_lisp_symbol(i32 0)
  call void @report_file_notify_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i32 0, i32 0), i64 %call8) #7
  unreachable

if.end.9:                                         ; preds = %if.end
  %7 = bitcast %struct.input_event* %event to i8*
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 56, i32 8, i1 false)
  %8 = bitcast %struct.input_event* %event to i32*
  %bf.load = load i32, i32* %8, align 8
  %bf.clear = and i32 %bf.load, -65536
  %bf.set = or i32 %bf.clear, 27
  store i32 %bf.set, i32* %8, align 8
  store i64 0, i64* %i, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.28, %if.end.9
  %9 = load i64, i64* %i, align 8
  %10 = load i64, i64* %n, align 8
  %cmp10 = icmp ult i64 %9, %10
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i64, i64* %i, align 8
  %12 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %11
  %13 = bitcast i8* %arrayidx to %struct.inotify_event*
  store %struct.inotify_event* %13, %struct.inotify_event** %ev, align 8
  %14 = load %struct.inotify_event*, %struct.inotify_event** %ev, align 8
  %wd = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %14, i32 0, i32 0
  %15 = load i32, i32* %wd, align 4
  %call12 = call i64 @make_watch_descriptor(i32 %15)
  %16 = load i64, i64* @watch_list, align 8
  %call13 = call i64 @Fassoc(i64 %call12, i64 %16)
  store i64 %call13, i64* %watch_object, align 8
  %17 = load i64, i64* %watch_object, align 8
  %call14 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp15 = icmp eq i64 %17, %call14
  br i1 %cmp15, label %if.end.28, label %if.then.17

if.then.17:                                       ; preds = %while.body
  %18 = load i64, i64* %watch_object, align 8
  %19 = load %struct.inotify_event*, %struct.inotify_event** %ev, align 8
  %call18 = call i64 @inotifyevent_to_event(i64 %18, %struct.inotify_event* %19)
  %arg = getelementptr inbounds %struct.input_event, %struct.input_event* %event, i32 0, i32 7
  store i64 %call18, i64* %arg, align 8
  %20 = load %struct.inotify_event*, %struct.inotify_event** %ev, align 8
  %mask = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %20, i32 0, i32 1
  %21 = load i32, i32* %mask, align 4
  %and = and i32 %21, 32768
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.then.17
  %22 = load i64, i64* %watch_object, align 8
  %23 = load i64, i64* @watch_list, align 8
  %call20 = call i64 @Fdelete(i64 %22, i64 %23)
  store i64 %call20, i64* @watch_list, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.then.17
  %arg22 = getelementptr inbounds %struct.input_event, %struct.input_event* %event, i32 0, i32 7
  %24 = load i64, i64* %arg22, align 8
  %call23 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp24 = icmp eq i64 %24, %call23
  br i1 %cmp24, label %if.end.27, label %if.then.26

if.then.26:                                       ; preds = %if.end.21
  call void @kbd_buffer_store_event(%struct.input_event* %event)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.end.21
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %while.body
  %25 = load %struct.inotify_event*, %struct.inotify_event** %ev, align 8
  %len = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %25, i32 0, i32 3
  %26 = load i32, i32* %len, align 4
  %conv29 = zext i32 %26 to i64
  %add = add i64 16, %conv29
  %27 = load i64, i64* %i, align 8
  %add30 = add i64 %27, %add
  store i64 %add30, i64* %i, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %28 = load i8*, i8** %buffer, align 8
  call void @xfree(i8* %28)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @aspect_to_inotifymask(i64 %aspect) #0 {
entry:
  %retval = alloca i32, align 4
  %aspect.addr = alloca i64, align 8
  %x = alloca i64, align 8
  %mask = alloca i32, align 4
  store i64 %aspect, i64* %aspect.addr, align 8
  %0 = load i64, i64* %aspect.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %aspect.addr, align 8
  store i64 %1, i64* %x, align 8
  store i32 0, i32* %mask, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %2 = load i64, i64* %x, align 8
  %and2 = and i64 %2, 7
  %conv3 = trunc i64 %and2 to i32
  %cmp4 = icmp eq i32 %conv3, 3
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i64, i64* %x, align 8
  %sub = sub nsw i64 %3, 3
  %4 = inttoptr i64 %sub to i8*
  %5 = bitcast i8* %4 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %5, i32 0, i32 0
  %6 = load i64, i64* %car, align 8
  %call = call i32 @symbol_to_inotifymask(i64 %6)
  %7 = load i32, i32* %mask, align 4
  %or = or i32 %7, %call
  store i32 %or, i32* %mask, align 4
  %8 = load i64, i64* %x, align 8
  %sub6 = sub nsw i64 %8, 3
  %9 = inttoptr i64 %sub6 to i8*
  %10 = bitcast i8* %9 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %10, i32 0, i32 1
  %cdr = bitcast %union.anon.0* %u to i64*
  %11 = load i64, i64* %cdr, align 8
  store i64 %11, i64* %x, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %12 = load i32, i32* %mask, align 4
  store i32 %12, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %13 = load i64, i64* %aspect.addr, align 8
  %call7 = call i32 @symbol_to_inotifymask(i64 %13)
  store i32 %call7, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %while.end
  %14 = load i32, i32* %retval
  ret i32 %14
}

declare i64 @encode_file_name(i64) #1

; Function Attrs: nounwind
declare i32 @inotify_add_watch(i32, i8*, i32) #2

declare i8* @SSDATA(i64) #1

; Function Attrs: nounwind uwtable
define internal i64 @make_watch_descriptor(i32 %wd) #0 {
entry:
  %wd.addr = alloca i32, align 4
  store i32 %wd, i32* %wd.addr, align 4
  %0 = load i32, i32* %wd.addr, align 4
  %conv = sext i32 %0 to i64
  %shl = shl i64 %conv, 2
  %add = add i64 %shl, 2
  ret i64 %add
}

declare i64 @Fassoc(i64, i64) #1

declare i64 @Fdelete(i64, i64) #1

declare i64 @list3(i64, i64, i64) #1

declare i64 @Fcons(i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @Finotify_rm_watch(i64 %watch_descriptor) #0 {
entry:
  %watch_descriptor.addr = alloca i64, align 8
  %watch_object = alloca i64, align 8
  %wd = alloca i32, align 4
  store i64 %watch_descriptor, i64* %watch_descriptor.addr, align 8
  %0 = load i64, i64* %watch_descriptor.addr, align 8
  %shr = ashr i64 %0, 2
  %conv = trunc i64 %shr to i32
  store i32 %conv, i32* %wd, align 4
  %1 = load i32, i32* @inotifyfd, align 4
  %2 = load i32, i32* %wd, align 4
  %call = call i32 @inotify_rm_watch(i32 %1, i32 %2) #4
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %watch_descriptor.addr, align 8
  call void @report_file_notify_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i64 %3) #7
  unreachable

if.end:                                           ; preds = %entry
  %4 = load i64, i64* %watch_descriptor.addr, align 8
  %5 = load i64, i64* @watch_list, align 8
  %call2 = call i64 @Fassoc(i64 %4, i64 %5)
  store i64 %call2, i64* %watch_object, align 8
  %6 = load i64, i64* %watch_object, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp4 = icmp eq i64 %6, %call3
  br i1 %cmp4, label %if.end.8, label %if.then.6

if.then.6:                                        ; preds = %if.end
  %7 = load i64, i64* %watch_object, align 8
  %8 = load i64, i64* @watch_list, align 8
  %call7 = call i64 @Fdelete(i64 %7, i64 %8)
  store i64 %call7, i64* @watch_list, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  %9 = load i64, i64* @watch_list, align 8
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp10 = icmp eq i64 %9, %call9
  br i1 %cmp10, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end.8
  %10 = load i32, i32* @inotifyfd, align 4
  %call13 = call i32 @emacs_close(i32 %10)
  %11 = load i32, i32* @inotifyfd, align 4
  call void @delete_read_fd(i32 %11)
  store i32 -1, i32* @inotifyfd, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end.8
  %call15 = call i64 @builtin_lisp_symbol(i32 901)
  ret i64 %call15
}

; Function Attrs: nounwind
declare i32 @inotify_rm_watch(i32, i32) #2

declare i32 @emacs_close(i32) #1

declare void @delete_read_fd(i32) #1

; Function Attrs: nounwind uwtable
define i64 @Finotify_valid_p(i64 %watch_descriptor) #0 {
entry:
  %watch_descriptor.addr = alloca i64, align 8
  %watch_object = alloca i64, align 8
  store i64 %watch_descriptor, i64* %watch_descriptor.addr, align 8
  %0 = load i64, i64* %watch_descriptor.addr, align 8
  %1 = load i64, i64* @watch_list, align 8
  %call = call i64 @Fassoc(i64 %0, i64 %1)
  store i64 %call, i64* %watch_object, align 8
  %2 = load i64, i64* %watch_object, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %2, %call1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call3 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call2, %cond.true ], [ %call3, %cond.false ]
  ret i64 %cond
}

; Function Attrs: nounwind uwtable
define void @syms_of_inotify() #0 {
entry:
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sinotify_add_watch to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sinotify_rm_watch to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sinotify_valid_p to %struct.Lisp_Subr*))
  call void @staticpro(i64* @watch_list)
  %call = call i64 @intern_c_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0))
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %call2 = call i64 @Fprovide(i64 %call, i64 %call1)
  ret void
}

declare void @defsubr(%struct.Lisp_Subr*) #1

declare void @staticpro(i64*) #1

declare i64 @Fprovide(i64, i64) #1

declare i64 @intern_c_string(i8*) #1

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) #2

declare noalias i8* @xmalloc(i64) #1

declare i64 @read(i32, i8*, i64) #1

declare void @xfree(i8*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define internal i64 @inotifyevent_to_event(i64 %watch_object, %struct.inotify_event* %ev) #0 {
entry:
  %watch_object.addr = alloca i64, align 8
  %ev.addr = alloca %struct.inotify_event*, align 8
  %name = alloca i64, align 8
  %len1 = alloca i64, align 8
  store i64 %watch_object, i64* %watch_object.addr, align 8
  store %struct.inotify_event* %ev, %struct.inotify_event** %ev.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %name, align 8
  %0 = load %struct.inotify_event*, %struct.inotify_event** %ev.addr, align 8
  %len = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %0, i32 0, i32 3
  %1 = load i32, i32* %len, align 4
  %cmp = icmp ugt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.inotify_event*, %struct.inotify_event** %ev.addr, align 8
  %name2 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %2, i32 0, i32 4
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %name2, i32 0, i32 0
  %call3 = call i64 @strlen(i8* %arraydecay) #8
  store i64 %call3, i64* %len1, align 8
  %3 = load %struct.inotify_event*, %struct.inotify_event** %ev.addr, align 8
  %name4 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %3, i32 0, i32 4
  %arraydecay5 = getelementptr inbounds [0 x i8], [0 x i8]* %name4, i32 0, i32 0
  %4 = load i64, i64* %len1, align 8
  %5 = load %struct.inotify_event*, %struct.inotify_event** %ev.addr, align 8
  %len6 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %5, i32 0, i32 3
  %6 = load i32, i32* %len6, align 4
  %conv = zext i32 %6 to i64
  %cmp7 = icmp ult i64 %4, %conv
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %7 = load i64, i64* %len1, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %8 = load %struct.inotify_event*, %struct.inotify_event** %ev.addr, align 8
  %len9 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %8, i32 0, i32 3
  %9 = load i32, i32* %len9, align 4
  %conv10 = zext i32 %9 to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %7, %cond.true ], [ %conv10, %cond.false ]
  %call11 = call i64 @make_unibyte_string(i8* %arraydecay5, i64 %cond)
  store i64 %call11, i64* %name, align 8
  %10 = load i64, i64* %name, align 8
  %call12 = call i64 @decode_file_name(i64 %10)
  store i64 %call12, i64* %name, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %11 = load i64, i64* %watch_object.addr, align 8
  %sub = sub nsw i64 %11, 3
  %12 = inttoptr i64 %sub to i8*
  %13 = bitcast i8* %12 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %13, i32 0, i32 1
  %cdr = bitcast %union.anon.0* %u to i64*
  %14 = load i64, i64* %cdr, align 8
  %sub13 = sub nsw i64 %14, 3
  %15 = inttoptr i64 %sub13 to i8*
  %16 = bitcast i8* %15 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %16, i32 0, i32 0
  %17 = load i64, i64* %car, align 8
  store i64 %17, i64* %name, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end
  %18 = load %struct.inotify_event*, %struct.inotify_event** %ev.addr, align 8
  %wd = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %18, i32 0, i32 0
  %19 = load i32, i32* %wd, align 4
  %call14 = call i64 @make_watch_descriptor(i32 %19)
  %20 = load %struct.inotify_event*, %struct.inotify_event** %ev.addr, align 8
  %mask = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %20, i32 0, i32 1
  %21 = load i32, i32* %mask, align 4
  %call15 = call i64 @mask_to_aspects(i32 %21)
  %22 = load i64, i64* %name, align 8
  %23 = load %struct.inotify_event*, %struct.inotify_event** %ev.addr, align 8
  %cookie = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %23, i32 0, i32 2
  %24 = load i32, i32* %cookie, align 4
  %conv16 = zext i32 %24 to i64
  %shl = shl i64 %conv16, 2
  %add = add i64 %shl, 2
  %call17 = call i64 @list4(i64 %call14, i64 %call15, i64 %22, i64 %add)
  %25 = load i64, i64* %watch_object.addr, align 8
  %call18 = call i64 @Fnth(i64 10, i64 %25)
  %call19 = call i64 @list2(i64 %call17, i64 %call18)
  ret i64 %call19
}

declare void @kbd_buffer_store_event(%struct.input_event*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

declare i64 @make_unibyte_string(i8*, i64) #1

declare i64 @decode_file_name(i64) #1

declare i64 @list2(i64, i64) #1

declare i64 @list4(i64, i64, i64, i64) #1

; Function Attrs: nounwind uwtable
define internal i64 @mask_to_aspects(i32 %mask) #0 {
entry:
  %mask.addr = alloca i32, align 4
  %aspects = alloca i64, align 8
  store i32 %mask, i32* %mask.addr, align 4
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %aspects, align 8
  %0 = load i32, i32* %mask.addr, align 4
  %and = and i32 %0, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 157)
  %1 = load i64, i64* %aspects, align 8
  %call2 = call i64 @Fcons(i64 %call1, i64 %1)
  store i64 %call2, i64* %aspects, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %mask.addr, align 4
  %and3 = and i32 %2, 4
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %call6 = call i64 @builtin_lisp_symbol(i32 184)
  %3 = load i64, i64* %aspects, align 8
  %call7 = call i64 @Fcons(i64 %call6, i64 %3)
  store i64 %call7, i64* %aspects, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %4 = load i32, i32* %mask.addr, align 4
  %and9 = and i32 %4, 8
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.8
  %call12 = call i64 @builtin_lisp_symbol(i32 269)
  %5 = load i64, i64* %aspects, align 8
  %call13 = call i64 @Fcons(i64 %call12, i64 %5)
  store i64 %call13, i64* %aspects, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.end.8
  %6 = load i32, i32* %mask.addr, align 4
  %and15 = and i32 %6, 16
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %if.end.14
  %call18 = call i64 @builtin_lisp_symbol(i32 268)
  %7 = load i64, i64* %aspects, align 8
  %call19 = call i64 @Fcons(i64 %call18, i64 %7)
  store i64 %call19, i64* %aspects, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %if.end.14
  %8 = load i32, i32* %mask.addr, align 4
  %and21 = and i32 %8, 256
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %if.then.23, label %if.end.26

if.then.23:                                       ; preds = %if.end.20
  %call24 = call i64 @builtin_lisp_symbol(i32 301)
  %9 = load i64, i64* %aspects, align 8
  %call25 = call i64 @Fcons(i64 %call24, i64 %9)
  store i64 %call25, i64* %aspects, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.23, %if.end.20
  %10 = load i32, i32* %mask.addr, align 4
  %and27 = and i32 %10, 512
  %tobool28 = icmp ne i32 %and27, 0
  br i1 %tobool28, label %if.then.29, label %if.end.32

if.then.29:                                       ; preds = %if.end.26
  %call30 = call i64 @builtin_lisp_symbol(i32 330)
  %11 = load i64, i64* %aspects, align 8
  %call31 = call i64 @Fcons(i64 %call30, i64 %11)
  store i64 %call31, i64* %aspects, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.29, %if.end.26
  %12 = load i32, i32* %mask.addr, align 4
  %and33 = and i32 %12, 1024
  %tobool34 = icmp ne i32 %and33, 0
  br i1 %tobool34, label %if.then.35, label %if.end.38

if.then.35:                                       ; preds = %if.end.32
  %call36 = call i64 @builtin_lisp_symbol(i32 336)
  %13 = load i64, i64* %aspects, align 8
  %call37 = call i64 @Fcons(i64 %call36, i64 %13)
  store i64 %call37, i64* %aspects, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.35, %if.end.32
  %14 = load i32, i32* %mask.addr, align 4
  %and39 = and i32 %14, 2
  %tobool40 = icmp ne i32 %and39, 0
  br i1 %tobool40, label %if.then.41, label %if.end.44

if.then.41:                                       ; preds = %if.end.38
  %call42 = call i64 @builtin_lisp_symbol(i32 679)
  %15 = load i64, i64* %aspects, align 8
  %call43 = call i64 @Fcons(i64 %call42, i64 %15)
  store i64 %call43, i64* %aspects, align 8
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.41, %if.end.38
  %16 = load i32, i32* %mask.addr, align 4
  %and45 = and i32 %16, 2048
  %tobool46 = icmp ne i32 %and45, 0
  br i1 %tobool46, label %if.then.47, label %if.end.50

if.then.47:                                       ; preds = %if.end.44
  %call48 = call i64 @builtin_lisp_symbol(i32 693)
  %17 = load i64, i64* %aspects, align 8
  %call49 = call i64 @Fcons(i64 %call48, i64 %17)
  store i64 %call49, i64* %aspects, align 8
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.47, %if.end.44
  %18 = load i32, i32* %mask.addr, align 4
  %and51 = and i32 %18, 64
  %tobool52 = icmp ne i32 %and51, 0
  br i1 %tobool52, label %if.then.53, label %if.end.56

if.then.53:                                       ; preds = %if.end.50
  %call54 = call i64 @builtin_lisp_symbol(i32 694)
  %19 = load i64, i64* %aspects, align 8
  %call55 = call i64 @Fcons(i64 %call54, i64 %19)
  store i64 %call55, i64* %aspects, align 8
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.53, %if.end.50
  %20 = load i32, i32* %mask.addr, align 4
  %and57 = and i32 %20, 128
  %tobool58 = icmp ne i32 %and57, 0
  br i1 %tobool58, label %if.then.59, label %if.end.62

if.then.59:                                       ; preds = %if.end.56
  %call60 = call i64 @builtin_lisp_symbol(i32 695)
  %21 = load i64, i64* %aspects, align 8
  %call61 = call i64 @Fcons(i64 %call60, i64 %21)
  store i64 %call61, i64* %aspects, align 8
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.59, %if.end.56
  %22 = load i32, i32* %mask.addr, align 4
  %and63 = and i32 %22, 32
  %tobool64 = icmp ne i32 %and63, 0
  br i1 %tobool64, label %if.then.65, label %if.end.68

if.then.65:                                       ; preds = %if.end.62
  %call66 = call i64 @builtin_lisp_symbol(i32 719)
  %23 = load i64, i64* %aspects, align 8
  %call67 = call i64 @Fcons(i64 %call66, i64 %23)
  store i64 %call67, i64* %aspects, align 8
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.65, %if.end.62
  %24 = load i32, i32* %mask.addr, align 4
  %and69 = and i32 %24, 32768
  %tobool70 = icmp ne i32 %and69, 0
  br i1 %tobool70, label %if.then.71, label %if.end.74

if.then.71:                                       ; preds = %if.end.68
  %call72 = call i64 @builtin_lisp_symbol(i32 536)
  %25 = load i64, i64* %aspects, align 8
  %call73 = call i64 @Fcons(i64 %call72, i64 %25)
  store i64 %call73, i64* %aspects, align 8
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.71, %if.end.68
  %26 = load i32, i32* %mask.addr, align 4
  %and75 = and i32 %26, 1073741824
  %tobool76 = icmp ne i32 %and75, 0
  br i1 %tobool76, label %if.then.77, label %if.end.80

if.then.77:                                       ; preds = %if.end.74
  %call78 = call i64 @builtin_lisp_symbol(i32 577)
  %27 = load i64, i64* %aspects, align 8
  %call79 = call i64 @Fcons(i64 %call78, i64 %27)
  store i64 %call79, i64* %aspects, align 8
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.77, %if.end.74
  %28 = load i32, i32* %mask.addr, align 4
  %and81 = and i32 %28, 16384
  %tobool82 = icmp ne i32 %and81, 0
  br i1 %tobool82, label %if.then.83, label %if.end.86

if.then.83:                                       ; preds = %if.end.80
  %call84 = call i64 @builtin_lisp_symbol(i32 781)
  %29 = load i64, i64* %aspects, align 8
  %call85 = call i64 @Fcons(i64 %call84, i64 %29)
  store i64 %call85, i64* %aspects, align 8
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.83, %if.end.80
  %30 = load i32, i32* %mask.addr, align 4
  %and87 = and i32 %30, 8192
  %tobool88 = icmp ne i32 %and87, 0
  br i1 %tobool88, label %if.then.89, label %if.end.92

if.then.89:                                       ; preds = %if.end.86
  %call90 = call i64 @builtin_lisp_symbol(i32 974)
  %31 = load i64, i64* %aspects, align 8
  %call91 = call i64 @Fcons(i64 %call90, i64 %31)
  store i64 %call91, i64* %aspects, align 8
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.89, %if.end.86
  %32 = load i64, i64* %aspects, align 8
  ret i64 %32
}

declare i64 @Fnth(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @symbol_to_inotifymask(i64 %symb) #0 {
entry:
  %retval = alloca i32, align 4
  %symb.addr = alloca i64, align 8
  store i64 %symb, i64* %symb.addr, align 8
  %0 = load i64, i64* %symb.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 157)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i64, i64* %symb.addr, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 184)
  %cmp2 = icmp eq i64 %1, %call1
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.else
  store i32 4, i32* %retval
  br label %return

if.else.4:                                        ; preds = %if.else
  %2 = load i64, i64* %symb.addr, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 269)
  %cmp6 = icmp eq i64 %2, %call5
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %if.else.4
  store i32 8, i32* %retval
  br label %return

if.else.8:                                        ; preds = %if.else.4
  %3 = load i64, i64* %symb.addr, align 8
  %call9 = call i64 @builtin_lisp_symbol(i32 268)
  %cmp10 = icmp eq i64 %3, %call9
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.else.8
  store i32 16, i32* %retval
  br label %return

if.else.12:                                       ; preds = %if.else.8
  %4 = load i64, i64* %symb.addr, align 8
  %call13 = call i64 @builtin_lisp_symbol(i32 301)
  %cmp14 = icmp eq i64 %4, %call13
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.else.12
  store i32 256, i32* %retval
  br label %return

if.else.16:                                       ; preds = %if.else.12
  %5 = load i64, i64* %symb.addr, align 8
  %call17 = call i64 @builtin_lisp_symbol(i32 330)
  %cmp18 = icmp eq i64 %5, %call17
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %if.else.16
  store i32 512, i32* %retval
  br label %return

if.else.20:                                       ; preds = %if.else.16
  %6 = load i64, i64* %symb.addr, align 8
  %call21 = call i64 @builtin_lisp_symbol(i32 336)
  %cmp22 = icmp eq i64 %6, %call21
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %if.else.20
  store i32 1024, i32* %retval
  br label %return

if.else.24:                                       ; preds = %if.else.20
  %7 = load i64, i64* %symb.addr, align 8
  %call25 = call i64 @builtin_lisp_symbol(i32 679)
  %cmp26 = icmp eq i64 %7, %call25
  br i1 %cmp26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %if.else.24
  store i32 2, i32* %retval
  br label %return

if.else.28:                                       ; preds = %if.else.24
  %8 = load i64, i64* %symb.addr, align 8
  %call29 = call i64 @builtin_lisp_symbol(i32 693)
  %cmp30 = icmp eq i64 %8, %call29
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %if.else.28
  store i32 2048, i32* %retval
  br label %return

if.else.32:                                       ; preds = %if.else.28
  %9 = load i64, i64* %symb.addr, align 8
  %call33 = call i64 @builtin_lisp_symbol(i32 694)
  %cmp34 = icmp eq i64 %9, %call33
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.else.32
  store i32 64, i32* %retval
  br label %return

if.else.36:                                       ; preds = %if.else.32
  %10 = load i64, i64* %symb.addr, align 8
  %call37 = call i64 @builtin_lisp_symbol(i32 695)
  %cmp38 = icmp eq i64 %10, %call37
  br i1 %cmp38, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %if.else.36
  store i32 128, i32* %retval
  br label %return

if.else.40:                                       ; preds = %if.else.36
  %11 = load i64, i64* %symb.addr, align 8
  %call41 = call i64 @builtin_lisp_symbol(i32 719)
  %cmp42 = icmp eq i64 %11, %call41
  br i1 %cmp42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %if.else.40
  store i32 32, i32* %retval
  br label %return

if.else.44:                                       ; preds = %if.else.40
  %12 = load i64, i64* %symb.addr, align 8
  %call45 = call i64 @builtin_lisp_symbol(i32 691)
  %cmp46 = icmp eq i64 %12, %call45
  br i1 %cmp46, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %if.else.44
  store i32 192, i32* %retval
  br label %return

if.else.48:                                       ; preds = %if.else.44
  %13 = load i64, i64* %symb.addr, align 8
  %call49 = call i64 @builtin_lisp_symbol(i32 267)
  %cmp50 = icmp eq i64 %13, %call49
  br i1 %cmp50, label %if.then.51, label %if.else.52

if.then.51:                                       ; preds = %if.else.48
  store i32 24, i32* %retval
  br label %return

if.else.52:                                       ; preds = %if.else.48
  %14 = load i64, i64* %symb.addr, align 8
  %call53 = call i64 @builtin_lisp_symbol(i32 350)
  %cmp54 = icmp eq i64 %14, %call53
  br i1 %cmp54, label %if.then.55, label %if.else.56

if.then.55:                                       ; preds = %if.else.52
  store i32 33554432, i32* %retval
  br label %return

if.else.56:                                       ; preds = %if.else.52
  %15 = load i64, i64* %symb.addr, align 8
  %call57 = call i64 @builtin_lisp_symbol(i32 386)
  %cmp58 = icmp eq i64 %15, %call57
  br i1 %cmp58, label %if.then.59, label %if.else.60

if.then.59:                                       ; preds = %if.else.56
  store i32 67108864, i32* %retval
  br label %return

if.else.60:                                       ; preds = %if.else.56
  %16 = load i64, i64* %symb.addr, align 8
  %call61 = call i64 @builtin_lisp_symbol(i32 647)
  %cmp62 = icmp eq i64 %16, %call61
  br i1 %cmp62, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %if.else.60
  store i32 536870912, i32* %retval
  br label %return

if.else.64:                                       ; preds = %if.else.60
  %17 = load i64, i64* %symb.addr, align 8
  %call65 = call i64 @builtin_lisp_symbol(i32 716)
  %cmp66 = icmp eq i64 %17, %call65
  br i1 %cmp66, label %if.then.67, label %if.else.68

if.then.67:                                       ; preds = %if.else.64
  store i32 -2147483648, i32* %retval
  br label %return

if.else.68:                                       ; preds = %if.else.64
  %18 = load i64, i64* %symb.addr, align 8
  %call69 = call i64 @builtin_lisp_symbol(i32 718)
  %cmp70 = icmp eq i64 %18, %call69
  br i1 %cmp70, label %if.then.71, label %if.else.72

if.then.71:                                       ; preds = %if.else.68
  store i32 16777216, i32* %retval
  br label %return

if.else.72:                                       ; preds = %if.else.68
  %19 = load i64, i64* %symb.addr, align 8
  %call73 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp74 = icmp eq i64 %19, %call73
  br i1 %cmp74, label %if.then.77, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.72
  %20 = load i64, i64* %symb.addr, align 8
  %call75 = call i64 @builtin_lisp_symbol(i32 169)
  %cmp76 = icmp eq i64 %20, %call75
  br i1 %cmp76, label %if.then.77, label %if.else.78

if.then.77:                                       ; preds = %lor.lhs.false, %if.else.72
  store i32 4095, i32* %retval
  br label %return

if.else.78:                                       ; preds = %lor.lhs.false
  %call79 = call i32* @__errno_location() #9
  store i32 22, i32* %call79, align 4
  %21 = load i64, i64* %symb.addr, align 8
  call void @report_file_notify_error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i64 %21) #7
  unreachable

return:                                           ; preds = %if.then.77, %if.then.71, %if.then.67, %if.then.63, %if.then.59, %if.then.55, %if.then.51, %if.then.47, %if.then.43, %if.then.39, %if.then.35, %if.then.31, %if.then.27, %if.then.23, %if.then.19, %if.then.15, %if.then.11, %if.then.7, %if.then.3, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
