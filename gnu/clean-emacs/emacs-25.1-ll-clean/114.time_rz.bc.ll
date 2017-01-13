; ModuleID = './lib/time_rz.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm_zone = type { %struct.tm_zone*, i8, [0 x i8] }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@local_tz = internal constant %struct.tm_zone* inttoptr (i64 1 to %struct.tm_zone*), align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define %struct.tm_zone* @tzalloc(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %name_size = alloca i64, align 8
  %abbr_size = alloca i64, align 8
  %tz = alloca %struct.tm_zone*, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i8*, i8** %name.addr, align 8
  %call = call i64 @strlen(i8* %1) #6
  %add = add i64 %call, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add, %cond.true ], [ 0, %cond.false ]
  store i64 %cond, i64* %name_size, align 8
  %2 = load i64, i64* %name_size, align 8
  %cmp = icmp ult i64 %2, 119
  br i1 %cmp, label %cond.true.1, label %cond.false.2

cond.true.1:                                      ; preds = %cond.end
  br label %cond.end.4

cond.false.2:                                     ; preds = %cond.end
  %3 = load i64, i64* %name_size, align 8
  %add3 = add i64 %3, 1
  br label %cond.end.4

cond.end.4:                                       ; preds = %cond.false.2, %cond.true.1
  %cond5 = phi i64 [ 119, %cond.true.1 ], [ %add3, %cond.false.2 ]
  store i64 %cond5, i64* %abbr_size, align 8
  %4 = load i64, i64* %abbr_size, align 8
  %add6 = add i64 9, %4
  %call7 = call noalias i8* @malloc(i64 %add6) #3
  %5 = bitcast i8* %call7 to %struct.tm_zone*
  store %struct.tm_zone* %5, %struct.tm_zone** %tz, align 8
  %6 = load %struct.tm_zone*, %struct.tm_zone** %tz, align 8
  %tobool8 = icmp ne %struct.tm_zone* %6, null
  br i1 %tobool8, label %if.then, label %if.end.14

if.then:                                          ; preds = %cond.end.4
  %7 = load %struct.tm_zone*, %struct.tm_zone** %tz, align 8
  %next = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %7, i32 0, i32 0
  store %struct.tm_zone* null, %struct.tm_zone** %next, align 8
  %8 = load i8*, i8** %name.addr, align 8
  %tobool9 = icmp ne i8* %8, null
  %lnot = xor i1 %tobool9, true
  %lnot10 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot10 to i32
  %conv = trunc i32 %lnot.ext to i8
  %9 = load %struct.tm_zone*, %struct.tm_zone** %tz, align 8
  %tz_is_set = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %9, i32 0, i32 1
  store i8 %conv, i8* %tz_is_set, align 1
  %10 = load %struct.tm_zone*, %struct.tm_zone** %tz, align 8
  %abbrs = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %10, i32 0, i32 2
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* %abbrs, i32 0, i64 0
  store i8 0, i8* %arrayidx, align 1
  %11 = load i8*, i8** %name.addr, align 8
  %tobool11 = icmp ne i8* %11, null
  br i1 %tobool11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.then
  %12 = load %struct.tm_zone*, %struct.tm_zone** %tz, align 8
  %abbrs13 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %12, i32 0, i32 2
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %abbrs13, i32 0, i32 0
  %13 = load i8*, i8** %name.addr, align 8
  %14 = load i64, i64* %name_size, align 8
  call void @extend_abbrs(i8* %arraydecay, i8* %13, i64 %14)
  br label %if.end

if.end:                                           ; preds = %if.then.12, %if.then
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %cond.end.4
  %15 = load %struct.tm_zone*, %struct.tm_zone** %tz, align 8
  ret %struct.tm_zone* %15
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind uwtable
define internal void @extend_abbrs(i8* %abbrs, i8* %abbr, i64 %abbr_size) #0 {
entry:
  %abbrs.addr = alloca i8*, align 8
  %abbr.addr = alloca i8*, align 8
  %abbr_size.addr = alloca i64, align 8
  store i8* %abbrs, i8** %abbrs.addr, align 8
  store i8* %abbr, i8** %abbr.addr, align 8
  store i64 %abbr_size, i64* %abbr_size.addr, align 8
  %0 = load i8*, i8** %abbrs.addr, align 8
  %1 = load i8*, i8** %abbr.addr, align 8
  %2 = load i64, i64* %abbr_size.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 %2, i32 1, i1 false)
  %3 = load i64, i64* %abbr_size.addr, align 8
  %4 = load i8*, i8** %abbrs.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %3
  store i8 0, i8* %arrayidx, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define void @tzfree(%struct.tm_zone* %tz) #0 {
entry:
  %tz.addr = alloca %struct.tm_zone*, align 8
  %next = alloca %struct.tm_zone*, align 8
  store %struct.tm_zone* %tz, %struct.tm_zone** %tz.addr, align 8
  %0 = load %struct.tm_zone*, %struct.tm_zone** %tz.addr, align 8
  %1 = load %struct.tm_zone*, %struct.tm_zone** @local_tz, align 8
  %cmp = icmp ne %struct.tm_zone* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %2 = load %struct.tm_zone*, %struct.tm_zone** %tz.addr, align 8
  %tobool = icmp ne %struct.tm_zone* %2, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.tm_zone*, %struct.tm_zone** %tz.addr, align 8
  %next1 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %3, i32 0, i32 0
  %4 = load %struct.tm_zone*, %struct.tm_zone** %next1, align 8
  store %struct.tm_zone* %4, %struct.tm_zone** %next, align 8
  %5 = load %struct.tm_zone*, %struct.tm_zone** %tz.addr, align 8
  %6 = bitcast %struct.tm_zone* %5 to i8*
  call void @free(i8* %6) #3
  %7 = load %struct.tm_zone*, %struct.tm_zone** %next, align 8
  store %struct.tm_zone* %7, %struct.tm_zone** %tz.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define %struct.tm* @localtime_rz(%struct.tm_zone* %tz, i64* nonnull %t, %struct.tm* nonnull %tm) #0 {
entry:
  %retval = alloca %struct.tm*, align 8
  %tz.addr = alloca %struct.tm_zone*, align 8
  %t.addr = alloca i64*, align 8
  %tm.addr = alloca %struct.tm*, align 8
  %old_tz = alloca %struct.tm_zone*, align 8
  %abbr_saved = alloca i8, align 1
  store %struct.tm_zone* %tz, %struct.tm_zone** %tz.addr, align 8
  store i64* %t, i64** %t.addr, align 8
  store %struct.tm* %tm, %struct.tm** %tm.addr, align 8
  %0 = load %struct.tm_zone*, %struct.tm_zone** %tz.addr, align 8
  %tobool = icmp ne %struct.tm_zone* %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i64*, i64** %t.addr, align 8
  %2 = load %struct.tm*, %struct.tm** %tm.addr, align 8
  %call = call %struct.tm* @gmtime_r(i64* %1, %struct.tm* %2) #3
  store %struct.tm* %call, %struct.tm** %retval
  br label %return

if.else:                                          ; preds = %entry
  %3 = load %struct.tm_zone*, %struct.tm_zone** %tz.addr, align 8
  %call1 = call %struct.tm_zone* @set_tz(%struct.tm_zone* %3)
  store %struct.tm_zone* %call1, %struct.tm_zone** %old_tz, align 8
  %4 = load %struct.tm_zone*, %struct.tm_zone** %old_tz, align 8
  %tobool2 = icmp ne %struct.tm_zone* %4, null
  br i1 %tobool2, label %if.then.3, label %if.end.10

if.then.3:                                        ; preds = %if.else
  %5 = load i64*, i64** %t.addr, align 8
  %6 = load %struct.tm*, %struct.tm** %tm.addr, align 8
  %call4 = call %struct.tm* @localtime_r(i64* %5, %struct.tm* %6) #3
  %tobool5 = icmp ne %struct.tm* %call4, null
  br i1 %tobool5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.3
  %7 = load %struct.tm_zone*, %struct.tm_zone** %tz.addr, align 8
  %8 = load %struct.tm*, %struct.tm** %tm.addr, align 8
  %call6 = call zeroext i1 @save_abbr(%struct.tm_zone* %7, %struct.tm* %8)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.3
  %9 = phi i1 [ false, %if.then.3 ], [ %call6, %land.rhs ]
  %frombool = zext i1 %9 to i8
  store i8 %frombool, i8* %abbr_saved, align 1
  %10 = load %struct.tm_zone*, %struct.tm_zone** %old_tz, align 8
  %call7 = call zeroext i1 @revert_tz(%struct.tm_zone* %10)
  br i1 %call7, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %land.end
  %11 = load i8, i8* %abbr_saved, align 1
  %tobool8 = trunc i8 %11 to i1
  br i1 %tobool8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %land.lhs.true
  %12 = load %struct.tm*, %struct.tm** %tm.addr, align 8
  store %struct.tm* %12, %struct.tm** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %land.end
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.else
  store %struct.tm* null, %struct.tm** %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.9, %if.then
  %13 = load %struct.tm*, %struct.tm** %retval
  ret %struct.tm* %13
}

; Function Attrs: nounwind
declare %struct.tm* @gmtime_r(i64*, %struct.tm*) #2

; Function Attrs: nounwind uwtable
define internal %struct.tm_zone* @set_tz(%struct.tm_zone* %tz) #0 {
entry:
  %retval = alloca %struct.tm_zone*, align 8
  %tz.addr = alloca %struct.tm_zone*, align 8
  %env_tz = alloca i8*, align 8
  %old_tz = alloca %struct.tm_zone*, align 8
  %saved_errno = alloca i32, align 4
  store %struct.tm_zone* %tz, %struct.tm_zone** %tz.addr, align 8
  %call = call i8* @emacs_getenv_TZ()
  store i8* %call, i8** %env_tz, align 8
  %0 = load i8*, i8** %env_tz, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct.tm_zone*, %struct.tm_zone** %tz.addr, align 8
  %tz_is_set = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %1, i32 0, i32 1
  %2 = load i8, i8* %tz_is_set, align 1
  %conv = sext i8 %2 to i32
  %tobool1 = icmp ne i32 %conv, 0
  br i1 %tobool1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %cond.true
  %3 = load %struct.tm_zone*, %struct.tm_zone** %tz.addr, align 8
  %abbrs = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %3, i32 0, i32 2
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %abbrs, i32 0, i32 0
  %4 = load i8*, i8** %env_tz, align 8
  %call2 = call i32 @strcmp(i8* %arraydecay, i8* %4) #6
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.else

cond.false:                                       ; preds = %entry
  %5 = load %struct.tm_zone*, %struct.tm_zone** %tz.addr, align 8
  %tz_is_set4 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %5, i32 0, i32 1
  %6 = load i8, i8* %tz_is_set4, align 1
  %tobool5 = icmp ne i8 %6, 0
  br i1 %tobool5, label %if.else, label %if.then

if.then:                                          ; preds = %cond.false, %land.lhs.true
  %7 = load %struct.tm_zone*, %struct.tm_zone** @local_tz, align 8
  store %struct.tm_zone* %7, %struct.tm_zone** %retval
  br label %return

if.else:                                          ; preds = %cond.false, %land.lhs.true, %cond.true
  %8 = load i8*, i8** %env_tz, align 8
  %call6 = call %struct.tm_zone* @tzalloc(i8* %8)
  store %struct.tm_zone* %call6, %struct.tm_zone** %old_tz, align 8
  %9 = load %struct.tm_zone*, %struct.tm_zone** %old_tz, align 8
  %tobool7 = icmp ne %struct.tm_zone* %9, null
  br i1 %tobool7, label %if.end, label %if.then.8

if.then.8:                                        ; preds = %if.else
  %10 = load %struct.tm_zone*, %struct.tm_zone** %old_tz, align 8
  store %struct.tm_zone* %10, %struct.tm_zone** %retval
  br label %return

if.end:                                           ; preds = %if.else
  %11 = load %struct.tm_zone*, %struct.tm_zone** %tz.addr, align 8
  %call9 = call zeroext i1 @change_env(%struct.tm_zone* %11)
  br i1 %call9, label %if.end.13, label %if.then.10

if.then.10:                                       ; preds = %if.end
  %call11 = call i32* @__errno_location() #7
  %12 = load i32, i32* %call11, align 4
  store i32 %12, i32* %saved_errno, align 4
  %13 = load %struct.tm_zone*, %struct.tm_zone** %old_tz, align 8
  call void @tzfree(%struct.tm_zone* %13)
  %14 = load i32, i32* %saved_errno, align 4
  %call12 = call i32* @__errno_location() #7
  store i32 %14, i32* %call12, align 4
  store %struct.tm_zone* null, %struct.tm_zone** %retval
  br label %return

if.end.13:                                        ; preds = %if.end
  %15 = load %struct.tm_zone*, %struct.tm_zone** %old_tz, align 8
  store %struct.tm_zone* %15, %struct.tm_zone** %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.10, %if.then.8, %if.then
  %16 = load %struct.tm_zone*, %struct.tm_zone** %retval
  ret %struct.tm_zone* %16
}

; Function Attrs: nounwind
declare %struct.tm* @localtime_r(i64*, %struct.tm*) #2

; Function Attrs: nounwind uwtable
define internal zeroext i1 @save_abbr(%struct.tm_zone* %tz, %struct.tm* %tm) #0 {
entry:
  %retval = alloca i1, align 1
  %tz.addr = alloca %struct.tm_zone*, align 8
  %tm.addr = alloca %struct.tm*, align 8
  %zone = alloca i8*, align 8
  %zone_copy = alloca i8*, align 8
  %zone_size = alloca i64, align 8
  store %struct.tm_zone* %tz, %struct.tm_zone** %tz.addr, align 8
  store %struct.tm* %tm, %struct.tm** %tm.addr, align 8
  store i8* null, i8** %zone, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8** %zone_copy, align 8
  %0 = load %struct.tm*, %struct.tm** %tm.addr, align 8
  %tm_zone = getelementptr inbounds %struct.tm, %struct.tm* %0, i32 0, i32 10
  %1 = load i8*, i8** %tm_zone, align 8
  store i8* %1, i8** %zone, align 8
  %2 = load i8*, i8** %zone, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.tm*, %struct.tm** %tm.addr, align 8
  %4 = bitcast %struct.tm* %3 to i8*
  %5 = load i8*, i8** %zone, align 8
  %cmp = icmp ule i8* %4, %5
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %6 = load i8*, i8** %zone, align 8
  %7 = load %struct.tm*, %struct.tm** %tm.addr, align 8
  %add.ptr = getelementptr inbounds %struct.tm, %struct.tm* %7, i64 1
  %8 = bitcast %struct.tm* %add.ptr to i8*
  %cmp1 = icmp ult i8* %6, %8
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %entry
  store i1 true, i1* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %9 = load i8*, i8** %zone, align 8
  %10 = load i8, i8* %9, align 1
  %tobool2 = icmp ne i8 %10, 0
  br i1 %tobool2, label %if.then.3, label %if.end.43

if.then.3:                                        ; preds = %if.end
  %11 = load %struct.tm_zone*, %struct.tm_zone** %tz.addr, align 8
  %abbrs = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %11, i32 0, i32 2
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %abbrs, i32 0, i32 0
  store i8* %arraydecay, i8** %zone_copy, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.42, %if.then.3
  %12 = load i8*, i8** %zone_copy, align 8
  %13 = load i8*, i8** %zone, align 8
  %call = call i32 @strcmp(i8* %12, i8* %13) #6
  %cmp4 = icmp ne i32 %call, 0
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load i8*, i8** %zone_copy, align 8
  %15 = load i8, i8* %14, align 1
  %conv = sext i8 %15 to i32
  %tobool5 = icmp ne i32 %conv, 0
  br i1 %tobool5, label %if.end.30, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %while.body
  %16 = load i8*, i8** %zone_copy, align 8
  %17 = load %struct.tm_zone*, %struct.tm_zone** %tz.addr, align 8
  %abbrs7 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %17, i32 0, i32 2
  %arraydecay8 = getelementptr inbounds [0 x i8], [0 x i8]* %abbrs7, i32 0, i32 0
  %cmp9 = icmp eq i8* %16, %arraydecay8
  br i1 %cmp9, label %land.lhs.true.11, label %if.then.14

land.lhs.true.11:                                 ; preds = %lor.lhs.false.6
  %18 = load %struct.tm_zone*, %struct.tm_zone** %tz.addr, align 8
  %tz_is_set = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %18, i32 0, i32 1
  %19 = load i8, i8* %tz_is_set, align 1
  %conv12 = sext i8 %19 to i32
  %tobool13 = icmp ne i32 %conv12, 0
  br i1 %tobool13, label %if.end.30, label %if.then.14

if.then.14:                                       ; preds = %land.lhs.true.11, %lor.lhs.false.6
  %20 = load i8*, i8** %zone, align 8
  %call15 = call i64 @strlen(i8* %20) #6
  %add = add i64 %call15, 1
  store i64 %add, i64* %zone_size, align 8
  %21 = load i64, i64* %zone_size, align 8
  %22 = load %struct.tm_zone*, %struct.tm_zone** %tz.addr, align 8
  %abbrs16 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %22, i32 0, i32 2
  %arraydecay17 = getelementptr inbounds [0 x i8], [0 x i8]* %abbrs16, i32 0, i32 0
  %add.ptr18 = getelementptr inbounds i8, i8* %arraydecay17, i64 119
  %23 = load i8*, i8** %zone_copy, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr18 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %23 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp19 = icmp ult i64 %21, %sub.ptr.sub
  br i1 %cmp19, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.then.14
  %24 = load i8*, i8** %zone_copy, align 8
  %25 = load i8*, i8** %zone, align 8
  %26 = load i64, i64* %zone_size, align 8
  call void @extend_abbrs(i8* %24, i8* %25, i64 %26)
  br label %if.end.29

if.else:                                          ; preds = %if.then.14
  %27 = load i8*, i8** %zone, align 8
  %call22 = call %struct.tm_zone* @tzalloc(i8* %27)
  %28 = load %struct.tm_zone*, %struct.tm_zone** %tz.addr, align 8
  %next = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %28, i32 0, i32 0
  store %struct.tm_zone* %call22, %struct.tm_zone** %next, align 8
  store %struct.tm_zone* %call22, %struct.tm_zone** %tz.addr, align 8
  %29 = load %struct.tm_zone*, %struct.tm_zone** %tz.addr, align 8
  %tobool23 = icmp ne %struct.tm_zone* %29, null
  br i1 %tobool23, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %if.else
  store i1 false, i1* %retval
  br label %return

if.end.25:                                        ; preds = %if.else
  %30 = load %struct.tm_zone*, %struct.tm_zone** %tz.addr, align 8
  %tz_is_set26 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %30, i32 0, i32 1
  store i8 0, i8* %tz_is_set26, align 1
  %31 = load %struct.tm_zone*, %struct.tm_zone** %tz.addr, align 8
  %abbrs27 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %31, i32 0, i32 2
  %arraydecay28 = getelementptr inbounds [0 x i8], [0 x i8]* %abbrs27, i32 0, i32 0
  store i8* %arraydecay28, i8** %zone_copy, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.25, %if.then.21
  br label %while.end

if.end.30:                                        ; preds = %land.lhs.true.11, %while.body
  %32 = load i8*, i8** %zone_copy, align 8
  %call31 = call i64 @strlen(i8* %32) #6
  %add32 = add i64 %call31, 1
  %33 = load i8*, i8** %zone_copy, align 8
  %add.ptr33 = getelementptr inbounds i8, i8* %33, i64 %add32
  store i8* %add.ptr33, i8** %zone_copy, align 8
  %34 = load i8*, i8** %zone_copy, align 8
  %35 = load i8, i8* %34, align 1
  %tobool34 = icmp ne i8 %35, 0
  br i1 %tobool34, label %if.end.42, label %land.lhs.true.35

land.lhs.true.35:                                 ; preds = %if.end.30
  %36 = load %struct.tm_zone*, %struct.tm_zone** %tz.addr, align 8
  %next36 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %36, i32 0, i32 0
  %37 = load %struct.tm_zone*, %struct.tm_zone** %next36, align 8
  %tobool37 = icmp ne %struct.tm_zone* %37, null
  br i1 %tobool37, label %if.then.38, label %if.end.42

if.then.38:                                       ; preds = %land.lhs.true.35
  %38 = load %struct.tm_zone*, %struct.tm_zone** %tz.addr, align 8
  %next39 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %38, i32 0, i32 0
  %39 = load %struct.tm_zone*, %struct.tm_zone** %next39, align 8
  store %struct.tm_zone* %39, %struct.tm_zone** %tz.addr, align 8
  %40 = load %struct.tm_zone*, %struct.tm_zone** %tz.addr, align 8
  %abbrs40 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %40, i32 0, i32 2
  %arraydecay41 = getelementptr inbounds [0 x i8], [0 x i8]* %abbrs40, i32 0, i32 0
  store i8* %arraydecay41, i8** %zone_copy, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.38, %land.lhs.true.35, %if.end.30
  br label %while.cond

while.end:                                        ; preds = %if.end.29, %while.cond
  br label %if.end.43

if.end.43:                                        ; preds = %while.end, %if.end
  %41 = load i8*, i8** %zone_copy, align 8
  %42 = load %struct.tm*, %struct.tm** %tm.addr, align 8
  %tm_zone44 = getelementptr inbounds %struct.tm, %struct.tm* %42, i32 0, i32 10
  store i8* %41, i8** %tm_zone44, align 8
  store i1 true, i1* %retval
  br label %return

return:                                           ; preds = %if.end.43, %if.then.24, %if.then
  %43 = load i1, i1* %retval
  ret i1 %43
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @revert_tz(%struct.tm_zone* %tz) #0 {
entry:
  %retval = alloca i1, align 1
  %tz.addr = alloca %struct.tm_zone*, align 8
  %saved_errno = alloca i32, align 4
  %ok = alloca i8, align 1
  store %struct.tm_zone* %tz, %struct.tm_zone** %tz.addr, align 8
  %0 = load %struct.tm_zone*, %struct.tm_zone** %tz.addr, align 8
  %1 = load %struct.tm_zone*, %struct.tm_zone** @local_tz, align 8
  %cmp = icmp eq %struct.tm_zone* %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i1 true, i1* %retval
  br label %return

if.else:                                          ; preds = %entry
  %call = call i32* @__errno_location() #7
  %2 = load i32, i32* %call, align 4
  store i32 %2, i32* %saved_errno, align 4
  %3 = load %struct.tm_zone*, %struct.tm_zone** %tz.addr, align 8
  %call1 = call zeroext i1 @change_env(%struct.tm_zone* %3)
  %frombool = zext i1 %call1 to i8
  store i8 %frombool, i8* %ok, align 1
  %4 = load i8, i8* %ok, align 1
  %tobool = trunc i8 %4 to i1
  br i1 %tobool, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.else
  %call3 = call i32* @__errno_location() #7
  %5 = load i32, i32* %call3, align 4
  store i32 %5, i32* %saved_errno, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.else
  %6 = load %struct.tm_zone*, %struct.tm_zone** %tz.addr, align 8
  call void @tzfree(%struct.tm_zone* %6)
  %7 = load i32, i32* %saved_errno, align 4
  %call4 = call i32* @__errno_location() #7
  store i32 %7, i32* %call4, align 4
  %8 = load i8, i8* %ok, align 1
  %tobool5 = trunc i8 %8 to i1
  store i1 %tobool5, i1* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i1, i1* %retval
  ret i1 %9
}

; Function Attrs: nounwind uwtable
define i64 @mktime_z(%struct.tm_zone* %tz, %struct.tm* nonnull %tm) #0 {
entry:
  %retval = alloca i64, align 8
  %tz.addr = alloca %struct.tm_zone*, align 8
  %tm.addr = alloca %struct.tm*, align 8
  %old_tz = alloca %struct.tm_zone*, align 8
  %t = alloca i64, align 8
  %badtime = alloca i64, align 8
  %tm_1 = alloca %struct.tm, align 8
  store %struct.tm_zone* %tz, %struct.tm_zone** %tz.addr, align 8
  store %struct.tm* %tm, %struct.tm** %tm.addr, align 8
  %0 = load %struct.tm_zone*, %struct.tm_zone** %tz.addr, align 8
  %tobool = icmp ne %struct.tm_zone* %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.tm*, %struct.tm** %tm.addr, align 8
  %call = call i64 @timegm(%struct.tm* %1) #3
  store i64 %call, i64* %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load %struct.tm_zone*, %struct.tm_zone** %tz.addr, align 8
  %call1 = call %struct.tm_zone* @set_tz(%struct.tm_zone* %2)
  store %struct.tm_zone* %call1, %struct.tm_zone** %old_tz, align 8
  %3 = load %struct.tm_zone*, %struct.tm_zone** %old_tz, align 8
  %tobool2 = icmp ne %struct.tm_zone* %3, null
  br i1 %tobool2, label %if.then.3, label %if.end.15

if.then.3:                                        ; preds = %if.else
  %4 = load %struct.tm*, %struct.tm** %tm.addr, align 8
  %call4 = call i64 @mktime(%struct.tm* %4) #3
  store i64 %call4, i64* %t, align 8
  store i64 -1, i64* %badtime, align 8
  %5 = load i64, i64* %t, align 8
  %6 = load i64, i64* %badtime, align 8
  %cmp = icmp ne i64 %5, %6
  br i1 %cmp, label %land.lhs.true.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.3
  %call5 = call %struct.tm* @localtime_r(i64* %t, %struct.tm* %tm_1) #3
  %tobool6 = icmp ne %struct.tm* %call5, null
  br i1 %tobool6, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %7 = load %struct.tm*, %struct.tm** %tm.addr, align 8
  %call7 = call i32 @equal_tm(%struct.tm* %7, %struct.tm* %tm_1)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %land.lhs.true.9, label %if.end

land.lhs.true.9:                                  ; preds = %land.lhs.true, %if.then.3
  %8 = load %struct.tm_zone*, %struct.tm_zone** %tz.addr, align 8
  %9 = load %struct.tm*, %struct.tm** %tm.addr, align 8
  %call10 = call zeroext i1 @save_abbr(%struct.tm_zone* %8, %struct.tm* %9)
  br i1 %call10, label %if.end, label %if.then.11

if.then.11:                                       ; preds = %land.lhs.true.9
  %10 = load i64, i64* %badtime, align 8
  store i64 %10, i64* %t, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.11, %land.lhs.true.9, %land.lhs.true, %lor.lhs.false
  %11 = load %struct.tm_zone*, %struct.tm_zone** %old_tz, align 8
  %call12 = call zeroext i1 @revert_tz(%struct.tm_zone* %11)
  br i1 %call12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end
  %12 = load i64, i64* %t, align 8
  store i64 %12, i64* %retval
  br label %return

if.end.14:                                        ; preds = %if.end
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.else
  store i64 -1, i64* %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.13, %if.then
  %13 = load i64, i64* %retval
  ret i64 %13
}

; Function Attrs: nounwind
declare i64 @timegm(%struct.tm*) #2

; Function Attrs: nounwind
declare i64 @mktime(%struct.tm*) #2

; Function Attrs: nounwind uwtable
define internal i32 @equal_tm(%struct.tm* %a, %struct.tm* %b) #0 {
entry:
  %a.addr = alloca %struct.tm*, align 8
  %b.addr = alloca %struct.tm*, align 8
  store %struct.tm* %a, %struct.tm** %a.addr, align 8
  store %struct.tm* %b, %struct.tm** %b.addr, align 8
  %0 = load %struct.tm*, %struct.tm** %a.addr, align 8
  %tm_sec = getelementptr inbounds %struct.tm, %struct.tm* %0, i32 0, i32 0
  %1 = load i32, i32* %tm_sec, align 4
  %2 = load %struct.tm*, %struct.tm** %b.addr, align 8
  %tm_sec1 = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 0
  %3 = load i32, i32* %tm_sec1, align 4
  %xor = xor i32 %1, %3
  %4 = load %struct.tm*, %struct.tm** %a.addr, align 8
  %tm_min = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 1
  %5 = load i32, i32* %tm_min, align 4
  %6 = load %struct.tm*, %struct.tm** %b.addr, align 8
  %tm_min2 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 1
  %7 = load i32, i32* %tm_min2, align 4
  %xor3 = xor i32 %5, %7
  %or = or i32 %xor, %xor3
  %8 = load %struct.tm*, %struct.tm** %a.addr, align 8
  %tm_hour = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 2
  %9 = load i32, i32* %tm_hour, align 4
  %10 = load %struct.tm*, %struct.tm** %b.addr, align 8
  %tm_hour4 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 2
  %11 = load i32, i32* %tm_hour4, align 4
  %xor5 = xor i32 %9, %11
  %or6 = or i32 %or, %xor5
  %12 = load %struct.tm*, %struct.tm** %a.addr, align 8
  %tm_mday = getelementptr inbounds %struct.tm, %struct.tm* %12, i32 0, i32 3
  %13 = load i32, i32* %tm_mday, align 4
  %14 = load %struct.tm*, %struct.tm** %b.addr, align 8
  %tm_mday7 = getelementptr inbounds %struct.tm, %struct.tm* %14, i32 0, i32 3
  %15 = load i32, i32* %tm_mday7, align 4
  %xor8 = xor i32 %13, %15
  %or9 = or i32 %or6, %xor8
  %16 = load %struct.tm*, %struct.tm** %a.addr, align 8
  %tm_mon = getelementptr inbounds %struct.tm, %struct.tm* %16, i32 0, i32 4
  %17 = load i32, i32* %tm_mon, align 4
  %18 = load %struct.tm*, %struct.tm** %b.addr, align 8
  %tm_mon10 = getelementptr inbounds %struct.tm, %struct.tm* %18, i32 0, i32 4
  %19 = load i32, i32* %tm_mon10, align 4
  %xor11 = xor i32 %17, %19
  %or12 = or i32 %or9, %xor11
  %20 = load %struct.tm*, %struct.tm** %a.addr, align 8
  %tm_year = getelementptr inbounds %struct.tm, %struct.tm* %20, i32 0, i32 5
  %21 = load i32, i32* %tm_year, align 4
  %22 = load %struct.tm*, %struct.tm** %b.addr, align 8
  %tm_year13 = getelementptr inbounds %struct.tm, %struct.tm* %22, i32 0, i32 5
  %23 = load i32, i32* %tm_year13, align 4
  %xor14 = xor i32 %21, %23
  %or15 = or i32 %or12, %xor14
  %24 = load %struct.tm*, %struct.tm** %a.addr, align 8
  %tm_isdst = getelementptr inbounds %struct.tm, %struct.tm* %24, i32 0, i32 8
  %25 = load i32, i32* %tm_isdst, align 4
  %26 = load %struct.tm*, %struct.tm** %b.addr, align 8
  %tm_isdst16 = getelementptr inbounds %struct.tm, %struct.tm* %26, i32 0, i32 8
  %27 = load i32, i32* %tm_isdst16, align 4
  %call = call zeroext i1 @isdst_differ(i32 %25, i32 %27)
  %conv = zext i1 %call to i32
  %or17 = or i32 %or15, %conv
  %tobool = icmp ne i32 %or17, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare i8* @emacs_getenv_TZ() #4

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal zeroext i1 @change_env(%struct.tm_zone* %tz) #0 {
entry:
  %retval = alloca i1, align 1
  %tz.addr = alloca %struct.tm_zone*, align 8
  store %struct.tm_zone* %tz, %struct.tm_zone** %tz.addr, align 8
  %0 = load %struct.tm_zone*, %struct.tm_zone** %tz.addr, align 8
  %tz_is_set = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %0, i32 0, i32 1
  %1 = load i8, i8* %tz_is_set, align 1
  %conv = sext i8 %1 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.tm_zone*, %struct.tm_zone** %tz.addr, align 8
  %abbrs = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %2, i32 0, i32 2
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %abbrs, i32 0, i32 0
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %arraydecay, %cond.true ], [ null, %cond.false ]
  %call = call i32 @emacs_setenv_TZ(i8* %cond)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i1 false, i1* %retval
  br label %return

if.end:                                           ; preds = %cond.end
  call void @tzset() #3
  store i1 true, i1* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i1, i1* %retval
  ret i1 %3
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

declare i32 @emacs_setenv_TZ(i8*) #4

; Function Attrs: nounwind
declare void @tzset() #2

; Function Attrs: nounwind uwtable
define internal zeroext i1 @isdst_differ(i32 %a, i32 %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %tobool = icmp ne i32 %0, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %1 = load i32, i32* %b.addr, align 4
  %tobool1 = icmp ne i32 %1, 0
  %lnot2 = xor i1 %tobool1, true
  %lnot.ext3 = zext i1 %lnot2 to i32
  %cmp = icmp ne i32 %lnot.ext, %lnot.ext3
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %a.addr, align 4
  %cmp4 = icmp sle i32 0, %2
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %3 = load i32, i32* %b.addr, align 4
  %cmp5 = icmp sle i32 0, %3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %4 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %cmp5, %land.rhs ]
  ret i1 %4
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
