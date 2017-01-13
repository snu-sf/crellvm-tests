; ModuleID = './MultiSource.Applications.ClamAV/42.libclamav_hashtab.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashtable = type { %struct.element*, i64, i64, i64 }
%struct.element = type { i8*, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@DELETED_KEY = internal global [1 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [79 x i8] c"hashtab.c:Growing hashtable %p, because it has exceeded maxfill, old size:%ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"hashtab.c: Growing hashtable %p, because its full, old size:%ld.\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"hashtab.c: Unable to grow hashtable\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%ld %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"/* TODO: include GPL headers */\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"#include <hashtab.h>\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"static struct element %s_elements[] = {\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"\09{NULL, 0},\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"\09{DELETED_KEY,0},\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"\09{(const unsigned char*)\22%s\22, %ld},\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"const struct hashtable %s = {\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"\09%s_elements, %ld, %ld, %ld\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"\0A};\0A\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"%d %1023s\00", align 1
@prime_list = internal constant [27 x i64] [i64 53, i64 97, i64 193, i64 389, i64 769, i64 1543, i64 3079, i64 6151, i64 12289, i64 24593, i64 49157, i64 98317, i64 196613, i64 393241, i64 786433, i64 1572869, i64 3145739, i64 6291469, i64 12582917, i64 25165843, i64 50331653, i64 100663319, i64 201326611, i64 402653189, i64 805306457, i64 1610612741, i64 3221225473], align 16
@.str.15 = private unnamed_addr constant [37 x i8] c"Requested hashtable size is too big!\00", align 1
@.str.16 = private unnamed_addr constant [143 x i8] c"hashtab.c: Warning: growing open-addressing hashtables is slow. Either allocate more storage when initializing, or use other hashtable types!\0A\00", align 1
@.str.17 = private unnamed_addr constant [47 x i8] c"hashtab.c: Impossible - unable to rehash table\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"Table %p size after grow:%ld\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @hashtab_init(%struct.hashtable* %s, i64 %capacity) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.hashtable*, align 8
  %capacity.addr = alloca i64, align 8
  store %struct.hashtable* %s, %struct.hashtable** %s.addr, align 8
  store i64 %capacity, i64* %capacity.addr, align 8
  %0 = load %struct.hashtable*, %struct.hashtable** %s.addr, align 8
  %tobool = icmp ne %struct.hashtable* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -111, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %capacity.addr, align 8
  %call = call i64 @get_nearest_capacity(i64 %1)
  store i64 %call, i64* %capacity.addr, align 8
  %2 = load i64, i64* %capacity.addr, align 8
  %call1 = call i8* @cli_calloc(i64 %2, i64 16)
  %3 = bitcast i8* %call1 to %struct.element*
  %4 = load %struct.hashtable*, %struct.hashtable** %s.addr, align 8
  %htable = getelementptr inbounds %struct.hashtable, %struct.hashtable* %4, i32 0, i32 0
  store %struct.element* %3, %struct.element** %htable, align 8
  %5 = load %struct.hashtable*, %struct.hashtable** %s.addr, align 8
  %htable2 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %5, i32 0, i32 0
  %6 = load %struct.element*, %struct.element** %htable2, align 8
  %tobool3 = icmp ne %struct.element* %6, null
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  store i32 -114, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %7 = load i64, i64* %capacity.addr, align 8
  %8 = load %struct.hashtable*, %struct.hashtable** %s.addr, align 8
  %capacity6 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %8, i32 0, i32 1
  store i64 %7, i64* %capacity6, align 8
  %9 = load %struct.hashtable*, %struct.hashtable** %s.addr, align 8
  %used = getelementptr inbounds %struct.hashtable, %struct.hashtable* %9, i32 0, i32 2
  store i64 0, i64* %used, align 8
  %10 = load i64, i64* %capacity.addr, align 8
  %mul = mul i64 8, %10
  %div = udiv i64 %mul, 10
  %11 = load %struct.hashtable*, %struct.hashtable** %s.addr, align 8
  %maxfill = getelementptr inbounds %struct.hashtable, %struct.hashtable* %11, i32 0, i32 3
  store i64 %div, i64* %maxfill, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i64 @get_nearest_capacity(i64 %capacity) #0 {
entry:
  %retval = alloca i64, align 8
  %capacity.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i64 %capacity, i64* %capacity.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %cmp = icmp ult i64 %0, 27
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds [27 x i64], [27 x i64]* @prime_list, i32 0, i64 %1
  %2 = load i64, i64* %arrayidx, align 8
  %3 = load i64, i64* %capacity.addr, align 8
  %cmp1 = icmp ugt i64 %2, %3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i64, i64* %i, align 8
  %arrayidx2 = getelementptr inbounds [27 x i64], [27 x i64]* @prime_list, i32 0, i64 %4
  %5 = load i64, i64* %arrayidx2, align 8
  store i64 %5, i64* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i64, i64* %i, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i32 0, i32 0))
  %7 = load i64, i64* getelementptr inbounds ([27 x i64], [27 x i64]* @prime_list, i32 0, i64 26), align 8
  store i64 %7, i64* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %8 = load i64, i64* %retval
  ret i64 %8
}

declare i8* @cli_calloc(i64, i64) #1

; Function Attrs: nounwind uwtable
define %struct.element* @hashtab_find(%struct.hashtable* %s, i8* %key, i64 %len) #0 {
entry:
  %retval = alloca %struct.element*, align 8
  %s.addr = alloca %struct.hashtable*, align 8
  %key.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %element = alloca %struct.element*, align 8
  %tries = alloca i64, align 8
  %idx = alloca i64, align 8
  store %struct.hashtable* %s, %struct.hashtable** %s.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i64 1, i64* %tries, align 8
  %0 = load %struct.hashtable*, %struct.hashtable** %s.addr, align 8
  %tobool = icmp ne %struct.hashtable* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.element* null, %struct.element** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %key.addr, align 8
  %2 = load i64, i64* %len.addr, align 8
  %3 = load %struct.hashtable*, %struct.hashtable** %s.addr, align 8
  %capacity = getelementptr inbounds %struct.hashtable, %struct.hashtable* %3, i32 0, i32 1
  %4 = load i64, i64* %capacity, align 8
  %call = call i64 @hash(i8* %1, i64 %2, i64 %4)
  store i64 %call, i64* %idx, align 8
  %5 = load i64, i64* %idx, align 8
  %6 = load %struct.hashtable*, %struct.hashtable** %s.addr, align 8
  %htable = getelementptr inbounds %struct.hashtable, %struct.hashtable* %6, i32 0, i32 0
  %7 = load %struct.element*, %struct.element** %htable, align 8
  %arrayidx = getelementptr inbounds %struct.element, %struct.element* %7, i64 %5
  store %struct.element* %arrayidx, %struct.element** %element, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %8 = load %struct.element*, %struct.element** %element, align 8
  %key1 = getelementptr inbounds %struct.element, %struct.element* %8, i32 0, i32 0
  %9 = load i8*, i8** %key1, align 8
  %tobool2 = icmp ne i8* %9, null
  br i1 %tobool2, label %if.else, label %if.then.3

if.then.3:                                        ; preds = %do.body
  store %struct.element* null, %struct.element** %retval
  br label %return

if.else:                                          ; preds = %do.body
  %10 = load %struct.element*, %struct.element** %element, align 8
  %key4 = getelementptr inbounds %struct.element, %struct.element* %10, i32 0, i32 0
  %11 = load i8*, i8** %key4, align 8
  %cmp = icmp ne i8* %11, getelementptr inbounds ([1 x i8], [1 x i8]* @DELETED_KEY, i32 0, i32 0)
  br i1 %cmp, label %land.lhs.true, label %if.else.9

land.lhs.true:                                    ; preds = %if.else
  %12 = load i8*, i8** %key.addr, align 8
  %13 = load %struct.element*, %struct.element** %element, align 8
  %key5 = getelementptr inbounds %struct.element, %struct.element* %13, i32 0, i32 0
  %14 = load i8*, i8** %key5, align 8
  %15 = load i64, i64* %len.addr, align 8
  %call6 = call i32 @strncmp(i8* %12, i8* %14, i64 %15) #5
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %land.lhs.true
  %16 = load %struct.element*, %struct.element** %element, align 8
  store %struct.element* %16, %struct.element** %retval
  br label %return

if.else.9:                                        ; preds = %land.lhs.true, %if.else
  %17 = load i64, i64* %idx, align 8
  %18 = load i64, i64* %tries, align 8
  %inc = add i64 %18, 1
  store i64 %inc, i64* %tries, align 8
  %add = add i64 %17, %18
  %19 = load %struct.hashtable*, %struct.hashtable** %s.addr, align 8
  %capacity10 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %19, i32 0, i32 1
  %20 = load i64, i64* %capacity10, align 8
  %rem = urem i64 %add, %20
  store i64 %rem, i64* %idx, align 8
  %21 = load i64, i64* %idx, align 8
  %22 = load %struct.hashtable*, %struct.hashtable** %s.addr, align 8
  %htable11 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %22, i32 0, i32 0
  %23 = load %struct.element*, %struct.element** %htable11, align 8
  %arrayidx12 = getelementptr inbounds %struct.element, %struct.element* %23, i64 %21
  store %struct.element* %arrayidx12, %struct.element** %element, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.9
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13
  br label %do.cond

do.cond:                                          ; preds = %if.end.14
  %24 = load i64, i64* %tries, align 8
  %25 = load %struct.hashtable*, %struct.hashtable** %s.addr, align 8
  %capacity15 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %25, i32 0, i32 1
  %26 = load i64, i64* %capacity15, align 8
  %cmp16 = icmp ule i64 %24, %26
  br i1 %cmp16, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store %struct.element* null, %struct.element** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.8, %if.then.3, %if.then
  %27 = load %struct.element*, %struct.element** %retval
  ret %struct.element* %27
}

; Function Attrs: nounwind uwtable
define internal i64 @hash(i8* %k, i64 %len, i64 %SIZE) #0 {
entry:
  %k.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %SIZE.addr = alloca i64, align 8
  %Hash = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %k, i8** %k.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i64 %SIZE, i64* %SIZE.addr, align 8
  store i64 0, i64* %Hash, align 8
  %0 = load i64, i64* %len.addr, align 8
  store i64 %0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %i, align 8
  %cmp = icmp ugt i64 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %Hash, align 8
  %shl = shl i64 %2, 8
  %3 = load i64, i64* %i, align 8
  %sub = sub i64 %3, 1
  %4 = load i8*, i8** %k.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %sub
  %5 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %5 to i64
  %add = add i64 %shl, %conv
  %6 = load i64, i64* %SIZE.addr, align 8
  %rem = urem i64 %add, %6
  store i64 %rem, i64* %Hash, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i64, i64* %i, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i64, i64* %Hash, align 8
  ret i64 %8
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define i32 @hashtab_insert(%struct.hashtable* %s, i8* %key, i64 %len, i64 %data) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.hashtable*, align 8
  %key.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %data.addr = alloca i64, align 8
  %element = alloca %struct.element*, align 8
  %deleted_element = alloca %struct.element*, align 8
  %tries = alloca i64, align 8
  %idx = alloca i64, align 8
  %thekey = alloca i8*, align 8
  store %struct.hashtable* %s, %struct.hashtable** %s.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i64 %data, i64* %data.addr, align 8
  store %struct.element* null, %struct.element** %deleted_element, align 8
  store i64 1, i64* %tries, align 8
  %0 = load %struct.hashtable*, %struct.hashtable** %s.addr, align 8
  %tobool = icmp ne %struct.hashtable* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -111, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.cond.43, %if.end
  %1 = load i8*, i8** %key.addr, align 8
  %2 = load i64, i64* %len.addr, align 8
  %3 = load %struct.hashtable*, %struct.hashtable** %s.addr, align 8
  %capacity = getelementptr inbounds %struct.hashtable, %struct.hashtable* %3, i32 0, i32 1
  %4 = load i64, i64* %capacity, align 8
  %call = call i64 @hash(i8* %1, i64 %2, i64 %4)
  store i64 %call, i64* %idx, align 8
  %5 = load i64, i64* %idx, align 8
  %6 = load %struct.hashtable*, %struct.hashtable** %s.addr, align 8
  %htable = getelementptr inbounds %struct.hashtable, %struct.hashtable* %6, i32 0, i32 0
  %7 = load %struct.element*, %struct.element** %htable, align 8
  %arrayidx = getelementptr inbounds %struct.element, %struct.element* %7, i64 %5
  store %struct.element* %arrayidx, %struct.element** %element, align 8
  br label %do.body.1

do.body.1:                                        ; preds = %do.cond, %do.body
  %8 = load %struct.element*, %struct.element** %element, align 8
  %key2 = getelementptr inbounds %struct.element, %struct.element* %8, i32 0, i32 0
  %9 = load i8*, i8** %key2, align 8
  %tobool3 = icmp ne i8* %9, null
  br i1 %tobool3, label %if.else.21, label %if.then.4

if.then.4:                                        ; preds = %do.body.1
  %10 = load %struct.element*, %struct.element** %deleted_element, align 8
  %tobool5 = icmp ne %struct.element* %10, null
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then.4
  %11 = load %struct.element*, %struct.element** %deleted_element, align 8
  store %struct.element* %11, %struct.element** %element, align 8
  br label %if.end.7

if.else:                                          ; preds = %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  %12 = load i64, i64* %len.addr, align 8
  %add = add i64 %12, 1
  %call8 = call i8* @cli_malloc(i64 %add)
  store i8* %call8, i8** %thekey, align 8
  %13 = load i8*, i8** %thekey, align 8
  %tobool9 = icmp ne i8* %13, null
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.end.7
  store i32 -114, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end.7
  %14 = load i8*, i8** %thekey, align 8
  %15 = load i8*, i8** %key.addr, align 8
  %16 = load i64, i64* %len.addr, align 8
  %add12 = add i64 %16, 1
  %call13 = call i8* @strncpy(i8* %14, i8* %15, i64 %add12) #4
  %17 = load i8*, i8** %thekey, align 8
  %18 = load %struct.element*, %struct.element** %element, align 8
  %key14 = getelementptr inbounds %struct.element, %struct.element* %18, i32 0, i32 0
  store i8* %17, i8** %key14, align 8
  %19 = load i64, i64* %data.addr, align 8
  %20 = load %struct.element*, %struct.element** %element, align 8
  %data15 = getelementptr inbounds %struct.element, %struct.element* %20, i32 0, i32 1
  store i64 %19, i64* %data15, align 8
  %21 = load %struct.hashtable*, %struct.hashtable** %s.addr, align 8
  %used = getelementptr inbounds %struct.hashtable, %struct.hashtable* %21, i32 0, i32 2
  %22 = load i64, i64* %used, align 8
  %inc = add i64 %22, 1
  store i64 %inc, i64* %used, align 8
  %23 = load %struct.hashtable*, %struct.hashtable** %s.addr, align 8
  %used16 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %23, i32 0, i32 2
  %24 = load i64, i64* %used16, align 8
  %25 = load %struct.hashtable*, %struct.hashtable** %s.addr, align 8
  %maxfill = getelementptr inbounds %struct.hashtable, %struct.hashtable* %25, i32 0, i32 3
  %26 = load i64, i64* %maxfill, align 8
  %cmp = icmp ugt i64 %24, %26
  br i1 %cmp, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %if.end.11
  %27 = load %struct.hashtable*, %struct.hashtable** %s.addr, align 8
  %28 = bitcast %struct.hashtable* %27 to i8*
  %29 = load %struct.hashtable*, %struct.hashtable** %s.addr, align 8
  %capacity18 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %29, i32 0, i32 1
  %30 = load i64, i64* %capacity18, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i32 0, i32 0), i8* %28, i64 %30)
  %31 = load %struct.hashtable*, %struct.hashtable** %s.addr, align 8
  %call19 = call i32 @hashtab_grow(%struct.hashtable* %31)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %if.end.11
  store i32 0, i32* %retval
  br label %return

if.else.21:                                       ; preds = %do.body.1
  %32 = load %struct.element*, %struct.element** %element, align 8
  %key22 = getelementptr inbounds %struct.element, %struct.element* %32, i32 0, i32 0
  %33 = load i8*, i8** %key22, align 8
  %cmp23 = icmp eq i8* %33, getelementptr inbounds ([1 x i8], [1 x i8]* @DELETED_KEY, i32 0, i32 0)
  br i1 %cmp23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %if.else.21
  %34 = load %struct.element*, %struct.element** %element, align 8
  store %struct.element* %34, %struct.element** %deleted_element, align 8
  br label %if.end.38

if.else.25:                                       ; preds = %if.else.21
  %35 = load i8*, i8** %key.addr, align 8
  %36 = load %struct.element*, %struct.element** %element, align 8
  %key26 = getelementptr inbounds %struct.element, %struct.element* %36, i32 0, i32 0
  %37 = load i8*, i8** %key26, align 8
  %38 = load i64, i64* %len.addr, align 8
  %call27 = call i32 @strncmp(i8* %35, i8* %37, i64 %38) #5
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %if.then.29, label %if.else.31

if.then.29:                                       ; preds = %if.else.25
  %39 = load i64, i64* %data.addr, align 8
  %40 = load %struct.element*, %struct.element** %element, align 8
  %data30 = getelementptr inbounds %struct.element, %struct.element* %40, i32 0, i32 1
  store i64 %39, i64* %data30, align 8
  store i32 0, i32* %retval
  br label %return

if.else.31:                                       ; preds = %if.else.25
  %41 = load i64, i64* %idx, align 8
  %42 = load i64, i64* %tries, align 8
  %inc32 = add i64 %42, 1
  store i64 %inc32, i64* %tries, align 8
  %add33 = add i64 %41, %42
  %43 = load %struct.hashtable*, %struct.hashtable** %s.addr, align 8
  %capacity34 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %43, i32 0, i32 1
  %44 = load i64, i64* %capacity34, align 8
  %rem = urem i64 %add33, %44
  store i64 %rem, i64* %idx, align 8
  %45 = load i64, i64* %idx, align 8
  %46 = load %struct.hashtable*, %struct.hashtable** %s.addr, align 8
  %htable35 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %46, i32 0, i32 0
  %47 = load %struct.element*, %struct.element** %htable35, align 8
  %arrayidx36 = getelementptr inbounds %struct.element, %struct.element* %47, i64 %45
  store %struct.element* %arrayidx36, %struct.element** %element, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.31
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.24
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38
  br label %do.cond

do.cond:                                          ; preds = %if.end.39
  %48 = load i64, i64* %tries, align 8
  %49 = load %struct.hashtable*, %struct.hashtable** %s.addr, align 8
  %capacity40 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %49, i32 0, i32 1
  %50 = load i64, i64* %capacity40, align 8
  %cmp41 = icmp ule i64 %48, %50
  br i1 %cmp41, label %do.body.1, label %do.end

do.end:                                           ; preds = %do.cond
  %51 = load %struct.hashtable*, %struct.hashtable** %s.addr, align 8
  %52 = bitcast %struct.hashtable* %51 to i8*
  %53 = load %struct.hashtable*, %struct.hashtable** %s.addr, align 8
  %capacity42 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %53, i32 0, i32 1
  %54 = load i64, i64* %capacity42, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i32 0, i32 0), i8* %52, i64 %54)
  br label %do.cond.43

do.cond.43:                                       ; preds = %do.end
  %55 = load %struct.hashtable*, %struct.hashtable** %s.addr, align 8
  %call44 = call i32 @hashtab_grow(%struct.hashtable* %55)
  %cmp45 = icmp sge i32 %call44, 0
  br i1 %cmp45, label %do.body, label %do.end.46

do.end.46:                                        ; preds = %do.cond.43
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i32 0, i32 0))
  store i32 -114, i32* %retval
  br label %return

return:                                           ; preds = %do.end.46, %if.then.29, %if.end.20, %if.then.10, %if.then
  %56 = load i32, i32* %retval
  ret i32 %56
}

declare i8* @cli_malloc(i64) #1

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #3

declare void @cli_dbgmsg(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @hashtab_grow(%struct.hashtable* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.hashtable*, align 8
  %new_capacity = alloca i64, align 8
  %htable = alloca %struct.element*, align 8
  %i = alloca i64, align 8
  %idx = alloca i64, align 8
  %used = alloca i64, align 8
  %element = alloca %struct.element*, align 8
  %tries = alloca i64, align 8
  store %struct.hashtable* %s, %struct.hashtable** %s.addr, align 8
  %0 = load %struct.hashtable*, %struct.hashtable** %s.addr, align 8
  %capacity = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i32 0, i32 1
  %1 = load i64, i64* %capacity, align 8
  %call = call i64 @get_nearest_capacity(i64 %1)
  store i64 %call, i64* %new_capacity, align 8
  %2 = load i64, i64* %new_capacity, align 8
  %call1 = call i8* @cli_calloc(i64 %2, i64 16)
  %3 = bitcast i8* %call1 to %struct.element*
  store %struct.element* %3, %struct.element** %htable, align 8
  store i64 0, i64* %used, align 8
  %4 = load i64, i64* %new_capacity, align 8
  %5 = load %struct.hashtable*, %struct.hashtable** %s.addr, align 8
  %capacity2 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %5, i32 0, i32 1
  %6 = load i64, i64* %capacity2, align 8
  %cmp = icmp eq i64 %4, %6
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load %struct.element*, %struct.element** %htable, align 8
  %tobool = icmp ne %struct.element* %7, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -114, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([143 x i8], [143 x i8]* @.str.16, i32 0, i32 0))
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i64, i64* %i, align 8
  %9 = load %struct.hashtable*, %struct.hashtable** %s.addr, align 8
  %capacity3 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %9, i32 0, i32 1
  %10 = load i64, i64* %capacity3, align 8
  %cmp4 = icmp ult i64 %8, %10
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i64, i64* %i, align 8
  %12 = load %struct.hashtable*, %struct.hashtable** %s.addr, align 8
  %htable5 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %12, i32 0, i32 0
  %13 = load %struct.element*, %struct.element** %htable5, align 8
  %arrayidx = getelementptr inbounds %struct.element, %struct.element* %13, i64 %11
  %key = getelementptr inbounds %struct.element, %struct.element* %arrayidx, i32 0, i32 0
  %14 = load i8*, i8** %key, align 8
  %tobool6 = icmp ne i8* %14, null
  br i1 %tobool6, label %land.lhs.true, label %if.end.32

land.lhs.true:                                    ; preds = %for.body
  %15 = load i64, i64* %i, align 8
  %16 = load %struct.hashtable*, %struct.hashtable** %s.addr, align 8
  %htable7 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %16, i32 0, i32 0
  %17 = load %struct.element*, %struct.element** %htable7, align 8
  %arrayidx8 = getelementptr inbounds %struct.element, %struct.element* %17, i64 %15
  %key9 = getelementptr inbounds %struct.element, %struct.element* %arrayidx8, i32 0, i32 0
  %18 = load i8*, i8** %key9, align 8
  %cmp10 = icmp ne i8* %18, getelementptr inbounds ([1 x i8], [1 x i8]* @DELETED_KEY, i32 0, i32 0)
  br i1 %cmp10, label %if.then.11, label %if.end.32

if.then.11:                                       ; preds = %land.lhs.true
  store i64 1, i64* %tries, align 8
  %19 = load i64, i64* %i, align 8
  %20 = load %struct.hashtable*, %struct.hashtable** %s.addr, align 8
  %htable12 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %20, i32 0, i32 0
  %21 = load %struct.element*, %struct.element** %htable12, align 8
  %arrayidx13 = getelementptr inbounds %struct.element, %struct.element* %21, i64 %19
  %key14 = getelementptr inbounds %struct.element, %struct.element* %arrayidx13, i32 0, i32 0
  %22 = load i8*, i8** %key14, align 8
  %23 = load i64, i64* %i, align 8
  %24 = load %struct.hashtable*, %struct.hashtable** %s.addr, align 8
  %htable15 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %24, i32 0, i32 0
  %25 = load %struct.element*, %struct.element** %htable15, align 8
  %arrayidx16 = getelementptr inbounds %struct.element, %struct.element* %25, i64 %23
  %key17 = getelementptr inbounds %struct.element, %struct.element* %arrayidx16, i32 0, i32 0
  %26 = load i8*, i8** %key17, align 8
  %call18 = call i64 @strlen(i8* %26) #5
  %27 = load i64, i64* %new_capacity, align 8
  %call19 = call i64 @hash(i8* %22, i64 %call18, i64 %27)
  store i64 %call19, i64* %idx, align 8
  %28 = load i64, i64* %idx, align 8
  %29 = load %struct.element*, %struct.element** %htable, align 8
  %arrayidx20 = getelementptr inbounds %struct.element, %struct.element* %29, i64 %28
  store %struct.element* %arrayidx20, %struct.element** %element, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.11
  %30 = load %struct.element*, %struct.element** %element, align 8
  %key21 = getelementptr inbounds %struct.element, %struct.element* %30, i32 0, i32 0
  %31 = load i8*, i8** %key21, align 8
  %tobool22 = icmp ne i8* %31, null
  br i1 %tobool22, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %32 = load i64, i64* %tries, align 8
  %33 = load i64, i64* %new_capacity, align 8
  %cmp23 = icmp ule i64 %32, %33
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %34 = phi i1 [ false, %while.cond ], [ %cmp23, %land.rhs ]
  br i1 %34, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %35 = load i64, i64* %idx, align 8
  %36 = load i64, i64* %tries, align 8
  %inc = add i64 %36, 1
  store i64 %inc, i64* %tries, align 8
  %add = add i64 %35, %36
  %37 = load i64, i64* %new_capacity, align 8
  %rem = urem i64 %add, %37
  store i64 %rem, i64* %idx, align 8
  %38 = load i64, i64* %idx, align 8
  %39 = load %struct.element*, %struct.element** %htable, align 8
  %arrayidx24 = getelementptr inbounds %struct.element, %struct.element* %39, i64 %38
  store %struct.element* %arrayidx24, %struct.element** %element, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %40 = load %struct.element*, %struct.element** %element, align 8
  %key25 = getelementptr inbounds %struct.element, %struct.element* %40, i32 0, i32 0
  %41 = load i8*, i8** %key25, align 8
  %tobool26 = icmp ne i8* %41, null
  br i1 %tobool26, label %if.else, label %if.then.27

if.then.27:                                       ; preds = %while.end
  %42 = load %struct.element*, %struct.element** %element, align 8
  %43 = load i64, i64* %i, align 8
  %44 = load %struct.hashtable*, %struct.hashtable** %s.addr, align 8
  %htable28 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %44, i32 0, i32 0
  %45 = load %struct.element*, %struct.element** %htable28, align 8
  %arrayidx29 = getelementptr inbounds %struct.element, %struct.element* %45, i64 %43
  %46 = bitcast %struct.element* %42 to i8*
  %47 = bitcast %struct.element* %arrayidx29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 16, i32 8, i1 false)
  %48 = load i64, i64* %used, align 8
  %inc30 = add i64 %48, 1
  store i64 %inc30, i64* %used, align 8
  br label %if.end.31

if.else:                                          ; preds = %while.end
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.17, i32 0, i32 0))
  store i32 -114, i32* %retval
  br label %return

if.end.31:                                        ; preds = %if.then.27
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.32
  %49 = load i64, i64* %i, align 8
  %inc33 = add i64 %49, 1
  store i64 %inc33, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %50 = load %struct.hashtable*, %struct.hashtable** %s.addr, align 8
  %htable34 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %50, i32 0, i32 0
  %51 = load %struct.element*, %struct.element** %htable34, align 8
  %52 = bitcast %struct.element* %51 to i8*
  call void @free(i8* %52) #4
  %53 = load %struct.element*, %struct.element** %htable, align 8
  %54 = load %struct.hashtable*, %struct.hashtable** %s.addr, align 8
  %htable35 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %54, i32 0, i32 0
  store %struct.element* %53, %struct.element** %htable35, align 8
  %55 = load i64, i64* %used, align 8
  %56 = load %struct.hashtable*, %struct.hashtable** %s.addr, align 8
  %used36 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %56, i32 0, i32 2
  store i64 %55, i64* %used36, align 8
  %57 = load i64, i64* %new_capacity, align 8
  %58 = load %struct.hashtable*, %struct.hashtable** %s.addr, align 8
  %capacity37 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %58, i32 0, i32 1
  store i64 %57, i64* %capacity37, align 8
  %59 = load i64, i64* %new_capacity, align 8
  %mul = mul i64 %59, 8
  %div = udiv i64 %mul, 10
  %60 = load %struct.hashtable*, %struct.hashtable** %s.addr, align 8
  %maxfill = getelementptr inbounds %struct.hashtable, %struct.hashtable* %60, i32 0, i32 3
  store i64 %div, i64* %maxfill, align 8
  %61 = load %struct.hashtable*, %struct.hashtable** %s.addr, align 8
  %62 = bitcast %struct.hashtable* %61 to i8*
  %63 = load %struct.hashtable*, %struct.hashtable** %s.addr, align 8
  %capacity38 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %63, i32 0, i32 1
  %64 = load i64, i64* %capacity38, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i32 0, i32 0), i8* %62, i64 %64)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.else, %if.then
  %65 = load i32, i32* %retval
  ret i32 %65
}

declare void @cli_warnmsg(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @hashtab_delete(%struct.hashtable* %s, i8* %key, i64 %len) #0 {
entry:
  %s.addr = alloca %struct.hashtable*, align 8
  %key.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %e = alloca %struct.element*, align 8
  store %struct.hashtable* %s, %struct.hashtable** %s.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load %struct.hashtable*, %struct.hashtable** %s.addr, align 8
  %1 = load i8*, i8** %key.addr, align 8
  %2 = load i64, i64* %len.addr, align 8
  %call = call %struct.element* @hashtab_find(%struct.hashtable* %0, i8* %1, i64 %2)
  store %struct.element* %call, %struct.element** %e, align 8
  %3 = load %struct.element*, %struct.element** %e, align 8
  %tobool = icmp ne %struct.element* %3, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.element*, %struct.element** %e, align 8
  %key1 = getelementptr inbounds %struct.element, %struct.element* %4, i32 0, i32 0
  %5 = load i8*, i8** %key1, align 8
  %tobool2 = icmp ne i8* %5, null
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.element*, %struct.element** %e, align 8
  %key3 = getelementptr inbounds %struct.element, %struct.element* %6, i32 0, i32 0
  %7 = load i8*, i8** %key3, align 8
  call void @free(i8* %7) #4
  %8 = load %struct.element*, %struct.element** %e, align 8
  %key4 = getelementptr inbounds %struct.element, %struct.element* %8, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @DELETED_KEY, i32 0, i32 0), i8** %key4, align 8
  %9 = load %struct.hashtable*, %struct.hashtable** %s.addr, align 8
  %used = getelementptr inbounds %struct.hashtable, %struct.hashtable* %9, i32 0, i32 2
  %10 = load i64, i64* %used, align 8
  %dec = add i64 %10, -1
  store i64 %dec, i64* %used, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define void @hashtab_clear(%struct.hashtable* %s) #0 {
entry:
  %s.addr = alloca %struct.hashtable*, align 8
  %i = alloca i64, align 8
  store %struct.hashtable* %s, %struct.hashtable** %s.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load %struct.hashtable*, %struct.hashtable** %s.addr, align 8
  %capacity = getelementptr inbounds %struct.hashtable, %struct.hashtable* %1, i32 0, i32 1
  %2 = load i64, i64* %capacity, align 8
  %cmp = icmp ult i64 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64, i64* %i, align 8
  %4 = load %struct.hashtable*, %struct.hashtable** %s.addr, align 8
  %htable = getelementptr inbounds %struct.hashtable, %struct.hashtable* %4, i32 0, i32 0
  %5 = load %struct.element*, %struct.element** %htable, align 8
  %arrayidx = getelementptr inbounds %struct.element, %struct.element* %5, i64 %3
  %key = getelementptr inbounds %struct.element, %struct.element* %arrayidx, i32 0, i32 0
  %6 = load i8*, i8** %key, align 8
  %tobool = icmp ne i8* %6, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %7 = load i64, i64* %i, align 8
  %8 = load %struct.hashtable*, %struct.hashtable** %s.addr, align 8
  %htable1 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %8, i32 0, i32 0
  %9 = load %struct.element*, %struct.element** %htable1, align 8
  %arrayidx2 = getelementptr inbounds %struct.element, %struct.element* %9, i64 %7
  %key3 = getelementptr inbounds %struct.element, %struct.element* %arrayidx2, i32 0, i32 0
  %10 = load i8*, i8** %key3, align 8
  %cmp4 = icmp ne i8* %10, getelementptr inbounds ([1 x i8], [1 x i8]* @DELETED_KEY, i32 0, i32 0)
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %11 = load i64, i64* %i, align 8
  %12 = load %struct.hashtable*, %struct.hashtable** %s.addr, align 8
  %htable5 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %12, i32 0, i32 0
  %13 = load %struct.element*, %struct.element** %htable5, align 8
  %arrayidx6 = getelementptr inbounds %struct.element, %struct.element* %13, i64 %11
  %key7 = getelementptr inbounds %struct.element, %struct.element* %arrayidx6, i32 0, i32 0
  %14 = load i8*, i8** %key7, align 8
  call void @free(i8* %14) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i64, i64* %i, align 8
  %inc = add i64 %15, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct.hashtable*, %struct.hashtable** %s.addr, align 8
  %htable8 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %16, i32 0, i32 0
  %17 = load %struct.element*, %struct.element** %htable8, align 8
  %18 = bitcast %struct.element* %17 to i8*
  %19 = load %struct.hashtable*, %struct.hashtable** %s.addr, align 8
  %capacity9 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %19, i32 0, i32 1
  %20 = load i64, i64* %capacity9, align 8
  call void @llvm.memset.p0i8.i64(i8* %18, i8 0, i64 %20, i32 8, i1 false)
  %21 = load %struct.hashtable*, %struct.hashtable** %s.addr, align 8
  %used = getelementptr inbounds %struct.hashtable, %struct.hashtable* %21, i32 0, i32 2
  store i64 0, i64* %used, align 8
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define i32 @hashtab_store(%struct.hashtable* %s, %struct._IO_FILE* %out) #0 {
entry:
  %s.addr = alloca %struct.hashtable*, align 8
  %out.addr = alloca %struct._IO_FILE*, align 8
  %i = alloca i64, align 8
  %e = alloca %struct.element*, align 8
  store %struct.hashtable* %s, %struct.hashtable** %s.addr, align 8
  store %struct._IO_FILE* %out, %struct._IO_FILE** %out.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load %struct.hashtable*, %struct.hashtable** %s.addr, align 8
  %capacity = getelementptr inbounds %struct.hashtable, %struct.hashtable* %1, i32 0, i32 1
  %2 = load i64, i64* %capacity, align 8
  %cmp = icmp ult i64 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64, i64* %i, align 8
  %4 = load %struct.hashtable*, %struct.hashtable** %s.addr, align 8
  %htable = getelementptr inbounds %struct.hashtable, %struct.hashtable* %4, i32 0, i32 0
  %5 = load %struct.element*, %struct.element** %htable, align 8
  %arrayidx = getelementptr inbounds %struct.element, %struct.element* %5, i64 %3
  store %struct.element* %arrayidx, %struct.element** %e, align 8
  %6 = load %struct.element*, %struct.element** %e, align 8
  %key = getelementptr inbounds %struct.element, %struct.element* %6, i32 0, i32 0
  %7 = load i8*, i8** %key, align 8
  %tobool = icmp ne i8* %7, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %8 = load %struct.element*, %struct.element** %e, align 8
  %key1 = getelementptr inbounds %struct.element, %struct.element* %8, i32 0, i32 0
  %9 = load i8*, i8** %key1, align 8
  %cmp2 = icmp ne i8* %9, getelementptr inbounds ([1 x i8], [1 x i8]* @DELETED_KEY, i32 0, i32 0)
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %11 = load %struct.element*, %struct.element** %e, align 8
  %data = getelementptr inbounds %struct.element, %struct.element* %11, i32 0, i32 1
  %12 = load i64, i64* %data, align 8
  %13 = load %struct.element*, %struct.element** %e, align 8
  %key3 = getelementptr inbounds %struct.element, %struct.element* %13, i32 0, i32 0
  %14 = load i8*, i8** %key3, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i64 %12, i8* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i64, i64* %i, align 8
  %inc = add i64 %15, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 0
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @hashtab_generate_c(%struct.hashtable* %s, i8* %name) #0 {
entry:
  %s.addr = alloca %struct.hashtable*, align 8
  %name.addr = alloca i8*, align 8
  %i = alloca i64, align 8
  %e = alloca %struct.element*, align 8
  store %struct.hashtable* %s, %struct.hashtable** %s.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0))
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0))
  %0 = load i8*, i8** %name.addr, align 8
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i32 0, i32 0), i8* %0)
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %i, align 8
  %2 = load %struct.hashtable*, %struct.hashtable** %s.addr, align 8
  %capacity = getelementptr inbounds %struct.hashtable, %struct.hashtable* %2, i32 0, i32 1
  %3 = load i64, i64* %capacity, align 8
  %cmp = icmp ult i64 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %i, align 8
  %5 = load %struct.hashtable*, %struct.hashtable** %s.addr, align 8
  %htable = getelementptr inbounds %struct.hashtable, %struct.hashtable* %5, i32 0, i32 0
  %6 = load %struct.element*, %struct.element** %htable, align 8
  %arrayidx = getelementptr inbounds %struct.element, %struct.element* %6, i64 %4
  store %struct.element* %arrayidx, %struct.element** %e, align 8
  %7 = load %struct.element*, %struct.element** %e, align 8
  %key = getelementptr inbounds %struct.element, %struct.element* %7, i32 0, i32 0
  %8 = load i8*, i8** %key, align 8
  %tobool = icmp ne i8* %8, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.11

if.else:                                          ; preds = %for.body
  %9 = load %struct.element*, %struct.element** %e, align 8
  %key4 = getelementptr inbounds %struct.element, %struct.element* %9, i32 0, i32 0
  %10 = load i8*, i8** %key4, align 8
  %cmp5 = icmp eq i8* %10, getelementptr inbounds ([1 x i8], [1 x i8]* @DELETED_KEY, i32 0, i32 0)
  br i1 %cmp5, label %if.then.6, label %if.else.8

if.then.6:                                        ; preds = %if.else
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end

if.else.8:                                        ; preds = %if.else
  %11 = load %struct.element*, %struct.element** %e, align 8
  %key9 = getelementptr inbounds %struct.element, %struct.element* %11, i32 0, i32 0
  %12 = load i8*, i8** %key9, align 8
  %13 = load %struct.element*, %struct.element** %e, align 8
  %data = getelementptr inbounds %struct.element, %struct.element* %13, i32 0, i32 1
  %14 = load i64, i64* %data, align 8
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0), i8* %12, i64 %14)
  br label %if.end

if.end:                                           ; preds = %if.else.8, %if.then.6
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %15 = load i64, i64* %i, align 8
  %inc = add i64 %15, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0))
  %16 = load i8*, i8** %name.addr, align 8
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0), i8* %16)
  %17 = load i8*, i8** %name.addr, align 8
  %18 = load %struct.hashtable*, %struct.hashtable** %s.addr, align 8
  %capacity14 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %18, i32 0, i32 1
  %19 = load i64, i64* %capacity14, align 8
  %20 = load %struct.hashtable*, %struct.hashtable** %s.addr, align 8
  %used = getelementptr inbounds %struct.hashtable, %struct.hashtable* %20, i32 0, i32 2
  %21 = load i64, i64* %used, align 8
  %22 = load %struct.hashtable*, %struct.hashtable** %s.addr, align 8
  %maxfill = getelementptr inbounds %struct.hashtable, %struct.hashtable* %22, i32 0, i32 3
  %23 = load i64, i64* %maxfill, align 8
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i32 0, i32 0), i8* %17, i64 %19, i64 %21, i64 %23)
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0))
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @hashtab_load(%struct._IO_FILE* %in, %struct.hashtable* %s) #0 {
entry:
  %in.addr = alloca %struct._IO_FILE*, align 8
  %s.addr = alloca %struct.hashtable*, align 8
  %line = alloca [1024 x i8], align 16
  %l = alloca [1024 x i8], align 16
  %val = alloca i32, align 4
  store %struct._IO_FILE* %in, %struct._IO_FILE** %in.addr, align 8
  store %struct.hashtable* %s, %struct.hashtable** %s.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i32 0
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call = call i8* @fgets(i8* %arraydecay, i32 1024, %struct._IO_FILE* %0)
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay1 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [1024 x i8], [1024 x i8]* %l, i32 0, i32 0
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i32* %val, i8* %arraydecay2) #4
  %1 = load %struct.hashtable*, %struct.hashtable** %s.addr, align 8
  %arraydecay4 = getelementptr inbounds [1024 x i8], [1024 x i8]* %l, i32 0, i32 0
  %arraydecay5 = getelementptr inbounds [1024 x i8], [1024 x i8]* %l, i32 0, i32 0
  %call6 = call i64 @strlen(i8* %arraydecay5) #5
  %2 = load i32, i32* %val, align 4
  %conv = sext i32 %2 to i64
  %call7 = call i32 @hashtab_insert(%struct.hashtable* %1, i8* %arraydecay4, i64 %call6, i64 %conv)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret i32 0
}

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare void @cli_errmsg(i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
