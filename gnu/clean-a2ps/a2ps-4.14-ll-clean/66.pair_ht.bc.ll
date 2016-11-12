; ModuleID = './lib/pair_ht.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.pair_htable = type { i8**, i64, i64, i64, i64, i64, i32, i64 (i8*)*, i64 (i8*)*, i32 (i8*, i8*)* }
%struct.pair = type { i8*, i8* }
%struct.lister = type opaque

@.str = private unnamed_addr constant [12 x i8] c"%-16s = %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"<NULL>\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s:%s\0A\00", align 1
@msg_verbosity = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"Loading map file `%s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"***\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"missing argument for `%s'\00", align 1

; Function Attrs: nounwind uwtable
define %struct.pair_htable* @pair_table_new() #0 {
entry:
  %res = alloca %struct.pair_htable*, align 8
  %call = call i8* @xmalloc(i64 80)
  %0 = bitcast i8* %call to %struct.pair_htable*
  store %struct.pair_htable* %0, %struct.pair_htable** %res, align 8
  %1 = load %struct.pair_htable*, %struct.pair_htable** %res, align 8
  call void @hash_init(%struct.pair_htable* %1, i64 8, i64 (i8*)* bitcast (i64 (%struct.pair*)* @pair_hash_1 to i64 (i8*)*), i64 (i8*)* bitcast (i64 (%struct.pair*)* @pair_hash_2 to i64 (i8*)*), i32 (i8*, i8*)* bitcast (i32 (%struct.pair*, %struct.pair*)* @pair_hash_cmp to i32 (i8*, i8*)*))
  %2 = load %struct.pair_htable*, %struct.pair_htable** %res, align 8
  ret %struct.pair_htable* %2
}

declare i8* @xmalloc(i64) #1

declare void @hash_init(%struct.pair_htable*, i64, i64 (i8*)*, i64 (i8*)*, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i64 @pair_hash_1(%struct.pair* %pair) #0 {
entry:
  %pair.addr = alloca %struct.pair*, align 8
  %result = alloca i64, align 8
  %kk = alloca i8*, align 8
  store %struct.pair* %pair, %struct.pair** %pair.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  store i64 0, i64* %result, align 8
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %0 = load %struct.pair*, %struct.pair** %pair.addr, align 8
  %key = getelementptr inbounds %struct.pair, %struct.pair* %0, i32 0, i32 0
  %1 = load i8*, i8** %key, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 -1
  store i8* %add.ptr, i8** %kk, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body.1
  %2 = load i8*, i8** %kk, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %kk, align 8
  %3 = load i8, i8* %incdec.ptr, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %kk, align 8
  %5 = load i8, i8* %4, align 1
  %conv = zext i8 %5 to i32
  %6 = load i8*, i8** %kk, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx, align 1
  %conv2 = zext i8 %7 to i32
  %and = and i32 %conv2, 15
  %shl = shl i32 %conv, %and
  %conv3 = sext i32 %shl to i64
  %8 = load i64, i64* %result, align 8
  %add = add i64 %8, %conv3
  store i64 %add, i64* %result, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  %9 = load i64, i64* %result, align 8
  br label %do.end.4

do.end.4:                                         ; preds = %do.end
  ret i64 %9
}

; Function Attrs: nounwind uwtable
define internal i64 @pair_hash_2(%struct.pair* %pair) #0 {
entry:
  %pair.addr = alloca %struct.pair*, align 8
  %result = alloca i64, align 8
  %kk = alloca i8*, align 8
  store %struct.pair* %pair, %struct.pair** %pair.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  store i64 0, i64* %result, align 8
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %0 = load %struct.pair*, %struct.pair** %pair.addr, align 8
  %key = getelementptr inbounds %struct.pair, %struct.pair* %0, i32 0, i32 0
  %1 = load i8*, i8** %key, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 -1
  store i8* %add.ptr, i8** %kk, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body.1
  %2 = load i8*, i8** %kk, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %kk, align 8
  %3 = load i8, i8* %incdec.ptr, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %kk, align 8
  %5 = load i8, i8* %4, align 1
  %conv = zext i8 %5 to i32
  %6 = load i8*, i8** %kk, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx, align 1
  %conv2 = zext i8 %7 to i32
  %and = and i32 %conv2, 7
  %shl = shl i32 %conv, %and
  %conv3 = sext i32 %shl to i64
  %8 = load i64, i64* %result, align 8
  %add = add i64 %8, %conv3
  store i64 %add, i64* %result, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  %9 = load i64, i64* %result, align 8
  br label %do.end.4

do.end.4:                                         ; preds = %do.end
  ret i64 %9
}

; Function Attrs: nounwind uwtable
define internal i32 @pair_hash_cmp(%struct.pair* %x, %struct.pair* %y) #0 {
entry:
  %x.addr = alloca %struct.pair*, align 8
  %y.addr = alloca %struct.pair*, align 8
  %result = alloca i32, align 4
  %xx = alloca i8*, align 8
  %yy = alloca i8*, align 8
  store %struct.pair* %x, %struct.pair** %x.addr, align 8
  store %struct.pair* %y, %struct.pair** %y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %0 = load %struct.pair*, %struct.pair** %x.addr, align 8
  %key = getelementptr inbounds %struct.pair, %struct.pair* %0, i32 0, i32 0
  %1 = load i8*, i8** %key, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 -1
  store i8* %add.ptr, i8** %xx, align 8
  %2 = load %struct.pair*, %struct.pair** %y.addr, align 8
  %key2 = getelementptr inbounds %struct.pair, %struct.pair* %2, i32 0, i32 0
  %3 = load i8*, i8** %key2, align 8
  %add.ptr3 = getelementptr inbounds i8, i8* %3, i64 -1
  store i8* %add.ptr3, i8** %yy, align 8
  br label %do.body.4

do.body.4:                                        ; preds = %do.cond, %do.body.1
  %4 = load i8*, i8** %xx, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %xx, align 8
  %5 = load i8, i8* %incdec.ptr, align 1
  %conv = zext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body.4
  %6 = load i8*, i8** %yy, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr6, i8** %yy, align 8
  br label %do.end

if.end:                                           ; preds = %do.body.4
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %7 = load i8*, i8** %xx, align 8
  %8 = load i8, i8* %7, align 1
  %conv7 = zext i8 %8 to i32
  %9 = load i8*, i8** %yy, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr8, i8** %yy, align 8
  %10 = load i8, i8* %incdec.ptr8, align 1
  %conv9 = zext i8 %10 to i32
  %cmp10 = icmp eq i32 %conv7, %conv9
  br i1 %cmp10, label %do.body.4, label %do.end

do.end:                                           ; preds = %do.cond, %if.then
  %11 = load i8*, i8** %xx, align 8
  %12 = load i8, i8* %11, align 1
  %conv12 = zext i8 %12 to i32
  %13 = load i8*, i8** %yy, align 8
  %14 = load i8, i8* %13, align 1
  %conv13 = zext i8 %14 to i32
  %sub = sub nsw i32 %conv12, %conv13
  store i32 %sub, i32* %result, align 4
  br label %do.end.15

do.end.15:                                        ; preds = %do.end
  %15 = load i32, i32* %result, align 4
  br label %do.end.17

do.end.17:                                        ; preds = %do.end.15
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define void @pair_table_free(%struct.pair_htable* %table) #0 {
entry:
  %table.addr = alloca %struct.pair_htable*, align 8
  store %struct.pair_htable* %table, %struct.pair_htable** %table.addr, align 8
  %0 = load %struct.pair_htable*, %struct.pair_htable** %table.addr, align 8
  call void @hash_free(%struct.pair_htable* %0, void (i8*)* bitcast (void (%struct.pair*)* @pair_free to void (i8*)*))
  %1 = load %struct.pair_htable*, %struct.pair_htable** %table.addr, align 8
  %2 = bitcast %struct.pair_htable* %1 to i8*
  call void @free(i8* %2) #4
  ret void
}

declare void @hash_free(%struct.pair_htable*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal void @pair_free(%struct.pair* %pair) #0 {
entry:
  %pair.addr = alloca %struct.pair*, align 8
  store %struct.pair* %pair, %struct.pair** %pair.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.pair*, %struct.pair** %pair.addr, align 8
  %key = getelementptr inbounds %struct.pair, %struct.pair* %0, i32 0, i32 0
  %1 = load i8*, i8** %key, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %2 = load %struct.pair*, %struct.pair** %pair.addr, align 8
  %key1 = getelementptr inbounds %struct.pair, %struct.pair* %2, i32 0, i32 0
  %3 = load i8*, i8** %key1, align 8
  call void @free(i8* %3) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  %4 = load %struct.pair*, %struct.pair** %pair.addr, align 8
  %value = getelementptr inbounds %struct.pair, %struct.pair* %4, i32 0, i32 1
  %5 = load i8*, i8** %value, align 8
  %tobool3 = icmp ne i8* %5, null
  br i1 %tobool3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %do.body.2
  %6 = load %struct.pair*, %struct.pair** %pair.addr, align 8
  %value5 = getelementptr inbounds %struct.pair, %struct.pair* %6, i32 0, i32 1
  %7 = load i8*, i8** %value5, align 8
  call void @free(i8* %7) #4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %do.body.2
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  br label %do.body.8

do.body.8:                                        ; preds = %do.end.7
  %8 = load %struct.pair*, %struct.pair** %pair.addr, align 8
  %tobool9 = icmp ne %struct.pair* %8, null
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %do.body.8
  %9 = load %struct.pair*, %struct.pair** %pair.addr, align 8
  %10 = bitcast %struct.pair* %9 to i8*
  call void @free(i8* %10) #4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %do.body.8
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define void @pair_add(%struct.pair_htable* %table, i8* %key, i8* %value) #0 {
entry:
  %table.addr = alloca %struct.pair_htable*, align 8
  %key.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %item = alloca %struct.pair*, align 8
  %token = alloca %struct.pair, align 8
  store %struct.pair_htable* %table, %struct.pair_htable** %table.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  %0 = load i8*, i8** %key.addr, align 8
  %key1 = getelementptr inbounds %struct.pair, %struct.pair* %token, i32 0, i32 0
  store i8* %0, i8** %key1, align 8
  %1 = load %struct.pair_htable*, %struct.pair_htable** %table.addr, align 8
  %2 = bitcast %struct.pair* %token to i8*
  %call = call i8* @hash_find_item(%struct.pair_htable* %1, i8* %2)
  %3 = bitcast i8* %call to %struct.pair*
  store %struct.pair* %3, %struct.pair** %item, align 8
  %4 = load %struct.pair*, %struct.pair** %item, align 8
  %tobool = icmp ne %struct.pair* %4, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.pair*, %struct.pair** %item, align 8
  %value2 = getelementptr inbounds %struct.pair, %struct.pair* %5, i32 0, i32 1
  %6 = load i8*, i8** %value2, align 8
  %tobool3 = icmp ne i8* %6, null
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %7 = load %struct.pair*, %struct.pair** %item, align 8
  %value5 = getelementptr inbounds %struct.pair, %struct.pair* %7, i32 0, i32 1
  %8 = load i8*, i8** %value5, align 8
  call void @free(i8* %8) #4
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.9

if.else:                                          ; preds = %entry
  %call6 = call i8* @xmalloc(i64 16)
  %9 = bitcast i8* %call6 to %struct.pair*
  store %struct.pair* %9, %struct.pair** %item, align 8
  %10 = load i8*, i8** %key.addr, align 8
  %call7 = call i8* @xstrdup(i8* %10)
  %11 = load %struct.pair*, %struct.pair** %item, align 8
  %key8 = getelementptr inbounds %struct.pair, %struct.pair* %11, i32 0, i32 0
  store i8* %call7, i8** %key8, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.end
  %12 = load i8*, i8** %value.addr, align 8
  %tobool10 = icmp ne i8* %12, null
  br i1 %tobool10, label %if.then.11, label %if.else.14

if.then.11:                                       ; preds = %if.end.9
  %13 = load i8*, i8** %value.addr, align 8
  %call12 = call i8* @xstrdup(i8* %13)
  %14 = load %struct.pair*, %struct.pair** %item, align 8
  %value13 = getelementptr inbounds %struct.pair, %struct.pair* %14, i32 0, i32 1
  store i8* %call12, i8** %value13, align 8
  br label %if.end.16

if.else.14:                                       ; preds = %if.end.9
  %15 = load %struct.pair*, %struct.pair** %item, align 8
  %value15 = getelementptr inbounds %struct.pair, %struct.pair* %15, i32 0, i32 1
  store i8* null, i8** %value15, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.14, %if.then.11
  %16 = load %struct.pair_htable*, %struct.pair_htable** %table.addr, align 8
  %17 = load %struct.pair*, %struct.pair** %item, align 8
  %18 = bitcast %struct.pair* %17 to i8*
  %call17 = call i8* @hash_insert(%struct.pair_htable* %16, i8* %18)
  ret void
}

declare i8* @hash_find_item(%struct.pair_htable*, i8*) #1

declare i8* @xstrdup(i8*) #1

declare i8* @hash_insert(%struct.pair_htable*, i8*) #1

; Function Attrs: nounwind uwtable
define void @pair_delete(%struct.pair_htable* %table, i8* %key) #0 {
entry:
  %table.addr = alloca %struct.pair_htable*, align 8
  %key.addr = alloca i8*, align 8
  %item = alloca %struct.pair*, align 8
  %token = alloca %struct.pair, align 8
  store %struct.pair_htable* %table, %struct.pair_htable** %table.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load i8*, i8** %key.addr, align 8
  %key1 = getelementptr inbounds %struct.pair, %struct.pair* %token, i32 0, i32 0
  store i8* %0, i8** %key1, align 8
  %1 = load %struct.pair_htable*, %struct.pair_htable** %table.addr, align 8
  %2 = bitcast %struct.pair* %token to i8*
  %call = call i8* @hash_find_item(%struct.pair_htable* %1, i8* %2)
  %3 = bitcast i8* %call to %struct.pair*
  store %struct.pair* %3, %struct.pair** %item, align 8
  %4 = load %struct.pair*, %struct.pair** %item, align 8
  %tobool = icmp ne %struct.pair* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.pair_htable*, %struct.pair_htable** %table.addr, align 8
  %6 = load %struct.pair*, %struct.pair** %item, align 8
  %7 = bitcast %struct.pair* %6 to i8*
  %call2 = call i8* @hash_delete(%struct.pair_htable* %5, i8* %7)
  %8 = load %struct.pair*, %struct.pair** %item, align 8
  call void @pair_free(%struct.pair* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i8* @hash_delete(%struct.pair_htable*, i8*) #1

; Function Attrs: nounwind uwtable
define i8* @pair_get(%struct.pair_htable* %table, i8* %key) #0 {
entry:
  %retval = alloca i8*, align 8
  %table.addr = alloca %struct.pair_htable*, align 8
  %key.addr = alloca i8*, align 8
  %item = alloca %struct.pair*, align 8
  %token = alloca %struct.pair, align 8
  store %struct.pair_htable* %table, %struct.pair_htable** %table.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load i8*, i8** %key.addr, align 8
  %key1 = getelementptr inbounds %struct.pair, %struct.pair* %token, i32 0, i32 0
  store i8* %0, i8** %key1, align 8
  %1 = load %struct.pair_htable*, %struct.pair_htable** %table.addr, align 8
  %2 = bitcast %struct.pair* %token to i8*
  %call = call i8* @hash_find_item(%struct.pair_htable* %1, i8* %2)
  %3 = bitcast i8* %call to %struct.pair*
  store %struct.pair* %3, %struct.pair** %item, align 8
  %4 = load %struct.pair*, %struct.pair** %item, align 8
  %tobool = icmp ne %struct.pair* %4, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.pair*, %struct.pair** %item, align 8
  %value = getelementptr inbounds %struct.pair, %struct.pair* %5, i32 0, i32 1
  %6 = load i8*, i8** %value, align 8
  store i8* %6, i8** %retval
  br label %return

if.else:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %7 = load i8*, i8** %retval
  ret i8* %7
}

; Function Attrs: nounwind uwtable
define void @pair_table_map(%struct.pair_htable* %table, void (i32, i8*, i8*, i8*)* %map_fn, i32 (i8*, i8*)* %select_fn, i8* %arg) #0 {
entry:
  %table.addr = alloca %struct.pair_htable*, align 8
  %map_fn.addr = alloca void (i32, i8*, i8*, i8*)*, align 8
  %select_fn.addr = alloca i32 (i8*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %num = alloca i32, align 4
  %entries = alloca %struct.pair**, align 8
  store %struct.pair_htable* %table, %struct.pair_htable** %table.addr, align 8
  store void (i32, i8*, i8*, i8*)* %map_fn, void (i32, i8*, i8*, i8*)** %map_fn.addr, align 8
  store i32 (i8*, i8*)* %select_fn, i32 (i8*, i8*)** %select_fn.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  store i32 0, i32* %num, align 4
  %0 = load %struct.pair_htable*, %struct.pair_htable** %table.addr, align 8
  %call = call i8** @hash_dump(%struct.pair_htable* %0, i8** null, i32 (i8*, i8*)* bitcast (i32 (%struct.pair**, %struct.pair**)* @pair_hash_qcmp to i32 (i8*, i8*)*))
  %1 = bitcast i8** %call to %struct.pair**
  store %struct.pair** %1, %struct.pair*** %entries, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.pair**, %struct.pair*** %entries, align 8
  %arrayidx = getelementptr inbounds %struct.pair*, %struct.pair** %3, i64 %idxprom
  %4 = load %struct.pair*, %struct.pair** %arrayidx, align 8
  %tobool = icmp ne %struct.pair* %4, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %select_fn.addr, align 8
  %tobool1 = icmp ne i32 (i8*, i8*)* %5, null
  br i1 %tobool1, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %6 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %select_fn.addr, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %7 to i64
  %8 = load %struct.pair**, %struct.pair*** %entries, align 8
  %arrayidx3 = getelementptr inbounds %struct.pair*, %struct.pair** %8, i64 %idxprom2
  %9 = load %struct.pair*, %struct.pair** %arrayidx3, align 8
  %key = getelementptr inbounds %struct.pair, %struct.pair* %9, i32 0, i32 0
  %10 = load i8*, i8** %key, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %11 to i64
  %12 = load %struct.pair**, %struct.pair*** %entries, align 8
  %arrayidx5 = getelementptr inbounds %struct.pair*, %struct.pair** %12, i64 %idxprom4
  %13 = load %struct.pair*, %struct.pair** %arrayidx5, align 8
  %value = getelementptr inbounds %struct.pair, %struct.pair* %13, i32 0, i32 1
  %14 = load i8*, i8** %value, align 8
  %call6 = call i32 %6(i8* %10, i8* %14)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %15 = load void (i32, i8*, i8*, i8*)*, void (i32, i8*, i8*, i8*)** %map_fn.addr, align 8
  %16 = load i32, i32* %num, align 4
  %17 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %17 to i64
  %18 = load %struct.pair**, %struct.pair*** %entries, align 8
  %arrayidx9 = getelementptr inbounds %struct.pair*, %struct.pair** %18, i64 %idxprom8
  %19 = load %struct.pair*, %struct.pair** %arrayidx9, align 8
  %key10 = getelementptr inbounds %struct.pair, %struct.pair* %19, i32 0, i32 0
  %20 = load i8*, i8** %key10, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %21 to i64
  %22 = load %struct.pair**, %struct.pair*** %entries, align 8
  %arrayidx12 = getelementptr inbounds %struct.pair*, %struct.pair** %22, i64 %idxprom11
  %23 = load %struct.pair*, %struct.pair** %arrayidx12, align 8
  %value13 = getelementptr inbounds %struct.pair, %struct.pair* %23, i32 0, i32 1
  %24 = load i8*, i8** %value13, align 8
  %25 = load i8*, i8** %arg.addr, align 8
  call void %15(i32 %16, i8* %20, i8* %24, i8* %25)
  %26 = load i32, i32* %num, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %num, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %27 = load i32, i32* %i, align 4
  %inc14 = add nsw i32 %27, 1
  store i32 %inc14, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load %struct.pair**, %struct.pair*** %entries, align 8
  %29 = bitcast %struct.pair** %28 to i8*
  call void @free(i8* %29) #4
  ret void
}

declare i8** @hash_dump(%struct.pair_htable*, i8**, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @pair_hash_qcmp(%struct.pair** %x, %struct.pair** %y) #0 {
entry:
  %x.addr = alloca %struct.pair**, align 8
  %y.addr = alloca %struct.pair**, align 8
  %result = alloca i32, align 4
  %xx = alloca i8*, align 8
  %yy = alloca i8*, align 8
  store %struct.pair** %x, %struct.pair*** %x.addr, align 8
  store %struct.pair** %y, %struct.pair*** %y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %0 = load %struct.pair**, %struct.pair*** %x.addr, align 8
  %1 = load %struct.pair*, %struct.pair** %0, align 8
  %key = getelementptr inbounds %struct.pair, %struct.pair* %1, i32 0, i32 0
  %2 = load i8*, i8** %key, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 -1
  store i8* %add.ptr, i8** %xx, align 8
  %3 = load %struct.pair**, %struct.pair*** %y.addr, align 8
  %4 = load %struct.pair*, %struct.pair** %3, align 8
  %key2 = getelementptr inbounds %struct.pair, %struct.pair* %4, i32 0, i32 0
  %5 = load i8*, i8** %key2, align 8
  %add.ptr3 = getelementptr inbounds i8, i8* %5, i64 -1
  store i8* %add.ptr3, i8** %yy, align 8
  br label %do.body.4

do.body.4:                                        ; preds = %do.cond, %do.body.1
  %6 = load i8*, i8** %xx, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %xx, align 8
  %7 = load i8, i8* %incdec.ptr, align 1
  %conv = zext i8 %7 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body.4
  %8 = load i8*, i8** %yy, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr6, i8** %yy, align 8
  br label %do.end

if.end:                                           ; preds = %do.body.4
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %9 = load i8*, i8** %xx, align 8
  %10 = load i8, i8* %9, align 1
  %conv7 = zext i8 %10 to i32
  %11 = load i8*, i8** %yy, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr8, i8** %yy, align 8
  %12 = load i8, i8* %incdec.ptr8, align 1
  %conv9 = zext i8 %12 to i32
  %cmp10 = icmp eq i32 %conv7, %conv9
  br i1 %cmp10, label %do.body.4, label %do.end

do.end:                                           ; preds = %do.cond, %if.then
  %13 = load i8*, i8** %xx, align 8
  %14 = load i8, i8* %13, align 1
  %conv12 = zext i8 %14 to i32
  %15 = load i8*, i8** %yy, align 8
  %16 = load i8, i8* %15, align 1
  %conv13 = zext i8 %16 to i32
  %sub = sub nsw i32 %conv12, %conv13
  store i32 %sub, i32* %result, align 4
  br label %do.end.15

do.end.15:                                        ; preds = %do.end
  %17 = load i32, i32* %result, align 4
  br label %do.end.17

do.end.17:                                        ; preds = %do.end.15
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define void @pair_table_list_short(%struct.pair_htable* %table, %struct._IO_FILE* %stream) #0 {
entry:
  %table.addr = alloca %struct.pair_htable*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %entries = alloca %struct.pair**, align 8
  store %struct.pair_htable* %table, %struct.pair_htable** %table.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct.pair_htable*, %struct.pair_htable** %table.addr, align 8
  %call = call i8** @hash_dump(%struct.pair_htable* %0, i8** null, i32 (i8*, i8*)* bitcast (i32 (%struct.pair**, %struct.pair**)* @pair_hash_qcmp to i32 (i8*, i8*)*))
  %1 = bitcast i8** %call to %struct.pair**
  store %struct.pair** %1, %struct.pair*** %entries, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %3 = load %struct.pair**, %struct.pair*** %entries, align 8
  %4 = bitcast %struct.pair** %3 to i8**
  call void @lister_fprint_vertical(%struct.lister* null, %struct._IO_FILE* %2, i8** %4, i64 -1, i64 (i8*)* bitcast (i64 (%struct.pair*)* @pair_key_len to i64 (i8*)*), void (i8*, %struct._IO_FILE*)* bitcast (void (%struct.pair*, %struct._IO_FILE*)* @pair_key_fputs to void (i8*, %struct._IO_FILE*)*))
  %5 = load %struct.pair**, %struct.pair*** %entries, align 8
  %6 = bitcast %struct.pair** %5 to i8*
  call void @free(i8* %6) #4
  ret void
}

declare void @lister_fprint_vertical(%struct.lister*, %struct._IO_FILE*, i8**, i64, i64 (i8*)*, void (i8*, %struct._IO_FILE*)*) #1

; Function Attrs: nounwind uwtable
define internal i64 @pair_key_len(%struct.pair* %pair) #0 {
entry:
  %pair.addr = alloca %struct.pair*, align 8
  store %struct.pair* %pair, %struct.pair** %pair.addr, align 8
  %0 = load %struct.pair*, %struct.pair** %pair.addr, align 8
  %key = getelementptr inbounds %struct.pair, %struct.pair* %0, i32 0, i32 0
  %1 = load i8*, i8** %key, align 8
  %call = call i64 @strlen(i8* %1) #5
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define internal void @pair_key_fputs(%struct.pair* %pair, %struct._IO_FILE* %stream) #0 {
entry:
  %pair.addr = alloca %struct.pair*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.pair* %pair, %struct.pair** %pair.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct.pair*, %struct.pair** %pair.addr, align 8
  %key = getelementptr inbounds %struct.pair, %struct.pair* %0, i32 0, i32 0
  %1 = load i8*, i8** %key, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call = call i32 @fputs(i8* %1, %struct._IO_FILE* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define void @pair_table_list_long(%struct.pair_htable* %table, %struct._IO_FILE* %stream) #0 {
entry:
  %table.addr = alloca %struct.pair_htable*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %entries = alloca %struct.pair**, align 8
  store %struct.pair_htable* %table, %struct.pair_htable** %table.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct.pair_htable*, %struct.pair_htable** %table.addr, align 8
  %call = call i8** @hash_dump(%struct.pair_htable* %0, i8** null, i32 (i8*, i8*)* bitcast (i32 (%struct.pair**, %struct.pair**)* @pair_hash_qcmp to i32 (i8*, i8*)*))
  %1 = bitcast i8** %call to %struct.pair**
  store %struct.pair** %1, %struct.pair*** %entries, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.pair**, %struct.pair*** %entries, align 8
  %arrayidx = getelementptr inbounds %struct.pair*, %struct.pair** %3, i64 %idxprom
  %4 = load %struct.pair*, %struct.pair** %arrayidx, align 8
  %tobool = icmp ne %struct.pair* %4, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %6 to i64
  %7 = load %struct.pair**, %struct.pair*** %entries, align 8
  %arrayidx2 = getelementptr inbounds %struct.pair*, %struct.pair** %7, i64 %idxprom1
  %8 = load %struct.pair*, %struct.pair** %arrayidx2, align 8
  %key = getelementptr inbounds %struct.pair, %struct.pair* %8, i32 0, i32 0
  %9 = load i8*, i8** %key, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %10 to i64
  %11 = load %struct.pair**, %struct.pair*** %entries, align 8
  %arrayidx4 = getelementptr inbounds %struct.pair*, %struct.pair** %11, i64 %idxprom3
  %12 = load %struct.pair*, %struct.pair** %arrayidx4, align 8
  %value = getelementptr inbounds %struct.pair, %struct.pair* %12, i32 0, i32 1
  %13 = load i8*, i8** %value, align 8
  %tobool5 = icmp ne i8* %13, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %14 to i64
  %15 = load %struct.pair**, %struct.pair*** %entries, align 8
  %arrayidx7 = getelementptr inbounds %struct.pair*, %struct.pair** %15, i64 %idxprom6
  %16 = load %struct.pair*, %struct.pair** %arrayidx7, align 8
  %value8 = getelementptr inbounds %struct.pair, %struct.pair* %16, i32 0, i32 1
  %17 = load i8*, i8** %value8, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %17, %cond.true ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), %cond.false ]
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* %9, i8* %cond)
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call10 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %19)
  %20 = load %struct.pair**, %struct.pair*** %entries, align 8
  %21 = bitcast %struct.pair** %20 to i8*
  call void @free(i8* %21) #4
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @pair_table_self_print(%struct.pair_htable* %table, %struct._IO_FILE* %stream) #0 {
entry:
  %table.addr = alloca %struct.pair_htable*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %entries = alloca %struct.pair**, align 8
  store %struct.pair_htable* %table, %struct.pair_htable** %table.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct.pair_htable*, %struct.pair_htable** %table.addr, align 8
  %call = call i8** @hash_dump(%struct.pair_htable* %0, i8** null, i32 (i8*, i8*)* bitcast (i32 (%struct.pair**, %struct.pair**)* @pair_hash_qcmp to i32 (i8*, i8*)*))
  %1 = bitcast i8** %call to %struct.pair**
  store %struct.pair** %1, %struct.pair*** %entries, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.pair**, %struct.pair*** %entries, align 8
  %arrayidx = getelementptr inbounds %struct.pair*, %struct.pair** %3, i64 %idxprom
  %4 = load %struct.pair*, %struct.pair** %arrayidx, align 8
  %tobool = icmp ne %struct.pair* %4, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %6 to i64
  %7 = load %struct.pair**, %struct.pair*** %entries, align 8
  %arrayidx2 = getelementptr inbounds %struct.pair*, %struct.pair** %7, i64 %idxprom1
  %8 = load %struct.pair*, %struct.pair** %arrayidx2, align 8
  %key = getelementptr inbounds %struct.pair, %struct.pair* %8, i32 0, i32 0
  %9 = load i8*, i8** %key, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %10 to i64
  %11 = load %struct.pair**, %struct.pair*** %entries, align 8
  %arrayidx4 = getelementptr inbounds %struct.pair*, %struct.pair** %11, i64 %idxprom3
  %12 = load %struct.pair*, %struct.pair** %arrayidx4, align 8
  %value = getelementptr inbounds %struct.pair, %struct.pair* %12, i32 0, i32 1
  %13 = load i8*, i8** %value, align 8
  %tobool5 = icmp ne i8* %13, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %14 to i64
  %15 = load %struct.pair**, %struct.pair*** %entries, align 8
  %arrayidx7 = getelementptr inbounds %struct.pair*, %struct.pair** %15, i64 %idxprom6
  %16 = load %struct.pair*, %struct.pair** %arrayidx7, align 8
  %value8 = getelementptr inbounds %struct.pair, %struct.pair* %16, i32 0, i32 1
  %17 = load i8*, i8** %value8, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %17, %cond.true ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), %cond.false ]
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* %9, i8* %cond)
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call10 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %19)
  %20 = load %struct.pair**, %struct.pair*** %entries, align 8
  %21 = bitcast %struct.pair** %20 to i8*
  call void @free(i8* %21) #4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @pair_table_load(%struct.pair_htable* %table, i8* %file) #0 {
entry:
  %table.addr = alloca %struct.pair_htable*, align 8
  %file.addr = alloca i8*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %buf = alloca i8*, align 8
  %bufsiz = alloca i64, align 8
  %token = alloca i8*, align 8
  %token2 = alloca i8*, align 8
  %firstline = alloca i32, align 4
  %lastline = alloca i32, align 4
  store %struct.pair_htable* %table, %struct.pair_htable** %table.addr, align 8
  store i8* %file, i8** %file.addr, align 8
  store i8* null, i8** %buf, align 8
  store i64 0, i64* %bufsiz, align 8
  store i32 0, i32* %firstline, align 4
  store i32 0, i32* %lastline, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @msg_verbosity, align 4
  %and = and i32 64, %0
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i8*, i8** %file.addr, align 8
  %call = call i8* @quotearg(i8* %2)
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0), i8* %call)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load i8*, i8** %file.addr, align 8
  %call2 = call %struct._IO_FILE* @xrfopen(i8* %3)
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %fp, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.24, %if.then.6, %do.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call3 = call i32 @getshline_numbered(i32* %firstline, i32* %lastline, i8** %buf, i64* %bufsiz, %struct._IO_FILE* %4)
  %cmp = icmp ne i32 %call3, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i8*, i8** %buf, align 8
  %call4 = call i8* @strtok(i8* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)) #4
  store i8* %call4, i8** %token, align 8
  %6 = load i8*, i8** %token, align 8
  %tobool5 = icmp ne i8* %6, null
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %while.body
  br label %while.cond

if.end.7:                                         ; preds = %while.body
  %7 = load i8*, i8** %token, align 8
  %call8 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0)) #5
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end.7
  %call11 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)) #4
  store i8* %call11, i8** %token2, align 8
  %8 = load i8*, i8** %token2, align 8
  %cmp12 = icmp eq i8* %8, null
  br i1 %cmp12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %if.then.10
  %9 = load i8*, i8** %file.addr, align 8
  %10 = load i32, i32* %firstline, align 4
  %call14 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0)) #4
  %11 = load i8*, i8** %token, align 8
  %call15 = call i8* @quotearg(i8* %11)
  call void (i32, i32, i8*, i32, i8*, ...) @error_at_line(i32 1, i32 0, i8* %9, i32 %10, i8* %call14, i8* %call15)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %if.then.10
  %12 = load %struct.pair_htable*, %struct.pair_htable** %table.addr, align 8
  %13 = load i8*, i8** %token2, align 8
  %call17 = call i32 @pair_table_load(%struct.pair_htable* %12, i8* %13)
  br label %if.end.24

if.else:                                          ; preds = %if.end.7
  %call18 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)) #4
  store i8* %call18, i8** %token2, align 8
  %14 = load i8*, i8** %token2, align 8
  %cmp19 = icmp eq i8* %14, null
  br i1 %cmp19, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %if.else
  %15 = load i8*, i8** %file.addr, align 8
  %16 = load i32, i32* %firstline, align 4
  %call21 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0)) #4
  %17 = load i8*, i8** %token, align 8
  %call22 = call i8* @quotearg(i8* %17)
  call void (i32, i32, i8*, i32, i8*, ...) @error_at_line(i32 1, i32 0, i8* %15, i32 %16, i8* %call21, i8* %call22)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %if.else
  %18 = load %struct.pair_htable*, %struct.pair_htable** %table.addr, align 8
  %19 = load i8*, i8** %token, align 8
  %20 = load i8*, i8** %token2, align 8
  call void @pair_add(%struct.pair_htable* %18, i8* %19, i8* %20)
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.end.16
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %21 = load i8*, i8** %buf, align 8
  call void @free(i8* %21) #4
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call25 = call i32 @fclose(%struct._IO_FILE* %22)
  ret i32 1
}

declare i8* @quotearg(i8*) #1

declare %struct._IO_FILE* @xrfopen(i8*) #1

declare i32 @getshline_numbered(i32*, i32*, i8**, i64*, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare void @error_at_line(i32, i32, i8*, i32, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
