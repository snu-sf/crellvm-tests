; ModuleID = './lib/hashtab.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_table_s = type { i8**, i64, i64, i64, i64, i64, i32, i64 (i8*)*, i64 (i8*)*, i32 (i8*, i8*)* }
%struct.token = type opaque
%struct.token.0 = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@hash_deleted_item = global i8* bitcast (i8** @hash_deleted_item to i8*), align 8
@.str = private unnamed_addr constant [22 x i8] c"Load=%ld/%ld=%.0f%%, \00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Rehash=%d, \00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Collisions=%ld/%ld=%.0f%%\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @hash_init(%struct.hash_table_s* %ht, i64 %size, i64 (i8*)* %hash_1, i64 (i8*)* %hash_2, i32 (i8*, i8*)* %hash_cmp) #0 {
entry:
  %ht.addr = alloca %struct.hash_table_s*, align 8
  %size.addr = alloca i64, align 8
  %hash_1.addr = alloca i64 (i8*)*, align 8
  %hash_2.addr = alloca i64 (i8*)*, align 8
  %hash_cmp.addr = alloca i32 (i8*, i8*)*, align 8
  store %struct.hash_table_s* %ht, %struct.hash_table_s** %ht.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i64 (i8*)* %hash_1, i64 (i8*)** %hash_1.addr, align 8
  store i64 (i8*)* %hash_2, i64 (i8*)** %hash_2.addr, align 8
  store i32 (i8*, i8*)* %hash_cmp, i32 (i8*, i8*)** %hash_cmp.addr, align 8
  %0 = load i64, i64* %size.addr, align 8
  %call = call i64 @round_up_2(i64 %0)
  %1 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_size = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %1, i32 0, i32 1
  store i64 %call, i64* %ht_size, align 8
  %2 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_size1 = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %2, i32 0, i32 1
  %3 = load i64, i64* %ht_size1, align 8
  %cmp = icmp ugt i64 %3, 131072
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_size2 = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %4, i32 0, i32 1
  %5 = load i64, i64* %ht_size2, align 8
  %div = udiv i64 %5, 2
  store i64 %div, i64* %ht_size2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_size3 = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %6, i32 0, i32 1
  %7 = load i64, i64* %ht_size3, align 8
  %call4 = call i8* @xcalloc(i64 8, i64 %7)
  %8 = bitcast i8* %call4 to %struct.token**
  %9 = bitcast %struct.token** %8 to i8**
  %10 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_vec = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %10, i32 0, i32 0
  store i8** %9, i8*** %ht_vec, align 8
  %11 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_size5 = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %11, i32 0, i32 1
  %12 = load i64, i64* %ht_size5, align 8
  %mul = mul i64 %12, 15
  %div6 = udiv i64 %mul, 16
  %13 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_capacity = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %13, i32 0, i32 2
  store i64 %div6, i64* %ht_capacity, align 8
  %14 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_fill = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %14, i32 0, i32 3
  store i64 0, i64* %ht_fill, align 8
  %15 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_collisions = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %15, i32 0, i32 4
  store i64 0, i64* %ht_collisions, align 8
  %16 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_lookups = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %16, i32 0, i32 5
  store i64 0, i64* %ht_lookups, align 8
  %17 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_rehashes = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %17, i32 0, i32 6
  store i32 0, i32* %ht_rehashes, align 4
  %18 = load i64 (i8*)*, i64 (i8*)** %hash_1.addr, align 8
  %19 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_hash_1 = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %19, i32 0, i32 7
  store i64 (i8*)* %18, i64 (i8*)** %ht_hash_1, align 8
  %20 = load i64 (i8*)*, i64 (i8*)** %hash_2.addr, align 8
  %21 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_hash_2 = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %21, i32 0, i32 8
  store i64 (i8*)* %20, i64 (i8*)** %ht_hash_2, align 8
  %22 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %hash_cmp.addr, align 8
  %23 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_compare = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %23, i32 0, i32 9
  store i32 (i8*, i8*)* %22, i32 (i8*, i8*)** %ht_compare, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @round_up_2(i64 %rough) #0 {
entry:
  %rough.addr = alloca i64, align 8
  %round = alloca i32, align 4
  store i64 %rough, i64* %rough.addr, align 8
  store i32 1, i32* %round, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %rough.addr, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %round, align 4
  %shl = shl i32 %1, 1
  store i32 %shl, i32* %round, align 4
  %2 = load i64, i64* %rough.addr, align 8
  %shr = lshr i64 %2, 1
  store i64 %shr, i64* %rough.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %3 = load i32, i32* %round, align 4
  %conv = sext i32 %3 to i64
  ret i64 %conv
}

declare i8* @xcalloc(i64, i64) #1

; Function Attrs: nounwind uwtable
define void @hash_load(%struct.hash_table_s* %ht, i8* %item_table, i64 %cardinality, i64 %size) #0 {
entry:
  %ht.addr = alloca %struct.hash_table_s*, align 8
  %item_table.addr = alloca i8*, align 8
  %cardinality.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %items = alloca i8*, align 8
  store %struct.hash_table_s* %ht, %struct.hash_table_s** %ht.addr, align 8
  store i8* %item_table, i8** %item_table.addr, align 8
  store i64 %cardinality, i64* %cardinality.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i8*, i8** %item_table.addr, align 8
  store i8* %0, i8** %items, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i64, i64* %cardinality.addr, align 8
  %dec = add i64 %1, -1
  store i64 %dec, i64* %cardinality.addr, align 8
  %tobool = icmp ne i64 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %3 = load i8*, i8** %items, align 8
  %call = call i8* @hash_insert(%struct.hash_table_s* %2, i8* %3)
  %4 = load i64, i64* %size.addr, align 8
  %5 = load i8*, i8** %items, align 8
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %4
  store i8* %add.ptr, i8** %items, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @hash_insert(%struct.hash_table_s* %ht, i8* %item) #0 {
entry:
  %ht.addr = alloca %struct.hash_table_s*, align 8
  %item.addr = alloca i8*, align 8
  %slot = alloca i8**, align 8
  store %struct.hash_table_s* %ht, %struct.hash_table_s** %ht.addr, align 8
  store i8* %item, i8** %item.addr, align 8
  %0 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %1 = load i8*, i8** %item.addr, align 8
  %call = call i8** @hash_find_slot(%struct.hash_table_s* %0, i8* %1)
  store i8** %call, i8*** %slot, align 8
  %2 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %3 = load i8*, i8** %item.addr, align 8
  %4 = load i8**, i8*** %slot, align 8
  %5 = bitcast i8** %4 to i8*
  %call1 = call i8* @hash_insert_at(%struct.hash_table_s* %2, i8* %3, i8* %5)
  ret i8* %call1
}

; Function Attrs: nounwind uwtable
define i8** @hash_find_slot(%struct.hash_table_s* %ht, i8* %key) #0 {
entry:
  %retval = alloca i8**, align 8
  %ht.addr = alloca %struct.hash_table_s*, align 8
  %key.addr = alloca i8*, align 8
  %slot = alloca i8**, align 8
  %deleted_slot = alloca i8**, align 8
  %hash_2 = alloca i32, align 4
  %hash_1 = alloca i32, align 4
  store %struct.hash_table_s* %ht, %struct.hash_table_s** %ht.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8** null, i8*** %deleted_slot, align 8
  store i32 0, i32* %hash_2, align 4
  %0 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_hash_1 = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %0, i32 0, i32 7
  %1 = load i64 (i8*)*, i64 (i8*)** %ht_hash_1, align 8
  %2 = load i8*, i8** %key.addr, align 8
  %call = call i64 %1(i8* %2)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %hash_1, align 4
  %3 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_lookups = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %3, i32 0, i32 5
  %4 = load i64, i64* %ht_lookups, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %ht_lookups, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.26, %entry
  %5 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_size = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %5, i32 0, i32 1
  %6 = load i64, i64* %ht_size, align 8
  %7 = load i32, i32* %hash_1, align 4
  %conv1 = zext i32 %7 to i64
  %rem = urem i64 %conv1, %6
  %conv2 = trunc i64 %rem to i32
  store i32 %conv2, i32* %hash_1, align 4
  %8 = load i32, i32* %hash_1, align 4
  %idxprom = zext i32 %8 to i64
  %9 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_vec = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %9, i32 0, i32 0
  %10 = load i8**, i8*** %ht_vec, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %10, i64 %idxprom
  store i8** %arrayidx, i8*** %slot, align 8
  %11 = load i8**, i8*** %slot, align 8
  %12 = load i8*, i8** %11, align 8
  %cmp = icmp eq i8* %12, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  %13 = load i8**, i8*** %deleted_slot, align 8
  %tobool = icmp ne i8** %13, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %14 = load i8**, i8*** %deleted_slot, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %15 = load i8**, i8*** %slot, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8** [ %14, %cond.true ], [ %15, %cond.false ]
  store i8** %cond, i8*** %retval
  br label %return

if.end:                                           ; preds = %for.cond
  %16 = load i8**, i8*** %slot, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = load i8*, i8** @hash_deleted_item, align 8
  %cmp4 = icmp eq i8* %17, %18
  br i1 %cmp4, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  %19 = load i8**, i8*** %deleted_slot, align 8
  %cmp7 = icmp eq i8** %19, null
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.then.6
  %20 = load i8**, i8*** %slot, align 8
  store i8** %20, i8*** %deleted_slot, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.then.6
  br label %if.end.21

if.else:                                          ; preds = %if.end
  %21 = load i8*, i8** %key.addr, align 8
  %22 = load i8**, i8*** %slot, align 8
  %23 = load i8*, i8** %22, align 8
  %cmp11 = icmp eq i8* %21, %23
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.else
  %24 = load i8**, i8*** %slot, align 8
  store i8** %24, i8*** %retval
  br label %return

if.end.14:                                        ; preds = %if.else
  %25 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_compare = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %25, i32 0, i32 9
  %26 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %ht_compare, align 8
  %27 = load i8*, i8** %key.addr, align 8
  %28 = load i8**, i8*** %slot, align 8
  %29 = load i8*, i8** %28, align 8
  %call15 = call i32 %26(i8* %27, i8* %29)
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.14
  %30 = load i8**, i8*** %slot, align 8
  store i8** %30, i8*** %retval
  br label %return

if.end.19:                                        ; preds = %if.end.14
  %31 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_collisions = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %31, i32 0, i32 4
  %32 = load i64, i64* %ht_collisions, align 8
  %inc20 = add i64 %32, 1
  store i64 %inc20, i64* %ht_collisions, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.19, %if.end.10
  %33 = load i32, i32* %hash_2, align 4
  %tobool22 = icmp ne i32 %33, 0
  br i1 %tobool22, label %if.end.26, label %if.then.23

if.then.23:                                       ; preds = %if.end.21
  %34 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_hash_2 = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %34, i32 0, i32 8
  %35 = load i64 (i8*)*, i64 (i8*)** %ht_hash_2, align 8
  %36 = load i8*, i8** %key.addr, align 8
  %call24 = call i64 %35(i8* %36)
  %or = or i64 %call24, 1
  %conv25 = trunc i64 %or to i32
  store i32 %conv25, i32* %hash_2, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.23, %if.end.21
  %37 = load i32, i32* %hash_2, align 4
  %38 = load i32, i32* %hash_1, align 4
  %add = add i32 %38, %37
  store i32 %add, i32* %hash_1, align 4
  br label %for.cond

return:                                           ; preds = %if.then.18, %if.then.13, %cond.end
  %39 = load i8**, i8*** %retval
  ret i8** %39
}

; Function Attrs: nounwind uwtable
define i8* @hash_find_item(%struct.hash_table_s* %ht, i8* %key) #0 {
entry:
  %ht.addr = alloca %struct.hash_table_s*, align 8
  %key.addr = alloca i8*, align 8
  %slot = alloca i8**, align 8
  store %struct.hash_table_s* %ht, %struct.hash_table_s** %ht.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %1 = load i8*, i8** %key.addr, align 8
  %call = call i8** @hash_find_slot(%struct.hash_table_s* %0, i8* %1)
  store i8** %call, i8*** %slot, align 8
  %2 = load i8**, i8*** %slot, align 8
  %3 = load i8*, i8** %2, align 8
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i8**, i8*** %slot, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load i8*, i8** @hash_deleted_item, align 8
  %cmp1 = icmp eq i8* %5, %6
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %entry
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %7 = load i8**, i8*** %slot, align 8
  %8 = load i8*, i8** %7, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %8, %cond.false ]
  ret i8* %cond
}

; Function Attrs: nounwind uwtable
define i8* @hash_insert_at(%struct.hash_table_s* %ht, i8* %item, i8* %slot) #0 {
entry:
  %ht.addr = alloca %struct.hash_table_s*, align 8
  %item.addr = alloca i8*, align 8
  %slot.addr = alloca i8*, align 8
  %old_item = alloca i8*, align 8
  store %struct.hash_table_s* %ht, %struct.hash_table_s** %ht.addr, align 8
  store i8* %item, i8** %item.addr, align 8
  store i8* %slot, i8** %slot.addr, align 8
  %0 = load i8*, i8** %slot.addr, align 8
  %1 = bitcast i8* %0 to i8**
  %2 = load i8*, i8** %1, align 8
  store i8* %2, i8** %old_item, align 8
  %3 = load i8*, i8** %old_item, align 8
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i8*, i8** %old_item, align 8
  %5 = load i8*, i8** @hash_deleted_item, align 8
  %cmp1 = icmp eq i8* %4, %5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_fill = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %6, i32 0, i32 3
  %7 = load i64, i64* %ht_fill, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %ht_fill, align 8
  %8 = load i8*, i8** %item.addr, align 8
  store i8* %8, i8** %old_item, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %9 = load i8*, i8** %item.addr, align 8
  %10 = load i8*, i8** %slot.addr, align 8
  %11 = bitcast i8* %10 to i8**
  store i8* %9, i8** %11, align 8
  %12 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_fill2 = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %12, i32 0, i32 3
  %13 = load i64, i64* %ht_fill2, align 8
  %14 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_capacity = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %14, i32 0, i32 2
  %15 = load i64, i64* %ht_capacity, align 8
  %cmp3 = icmp uge i64 %13, %15
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %16 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  call void @hash_rehash(%struct.hash_table_s* %16)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %17 = load i8*, i8** %old_item, align 8
  ret i8* %17
}

; Function Attrs: nounwind uwtable
define internal void @hash_rehash(%struct.hash_table_s* %ht) #0 {
entry:
  %ht.addr = alloca %struct.hash_table_s*, align 8
  %old_ht_size = alloca i64, align 8
  %old_vec = alloca i8**, align 8
  %ovp = alloca i8**, align 8
  %slot = alloca i8**, align 8
  store %struct.hash_table_s* %ht, %struct.hash_table_s** %ht.addr, align 8
  %0 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_size = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %0, i32 0, i32 1
  %1 = load i64, i64* %ht_size, align 8
  store i64 %1, i64* %old_ht_size, align 8
  %2 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_vec = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %2, i32 0, i32 0
  %3 = load i8**, i8*** %ht_vec, align 8
  store i8** %3, i8*** %old_vec, align 8
  %4 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_size1 = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %4, i32 0, i32 1
  %5 = load i64, i64* %ht_size1, align 8
  %mul = mul i64 %5, 2
  store i64 %mul, i64* %ht_size1, align 8
  %6 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_rehashes = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %6, i32 0, i32 6
  %7 = load i32, i32* %ht_rehashes, align 4
  %inc = add i32 %7, 1
  store i32 %inc, i32* %ht_rehashes, align 4
  %8 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_size2 = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %8, i32 0, i32 1
  %9 = load i64, i64* %ht_size2, align 8
  %10 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_size3 = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %10, i32 0, i32 1
  %11 = load i64, i64* %ht_size3, align 8
  %shr = lshr i64 %11, 4
  %sub = sub i64 %9, %shr
  %12 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_capacity = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %12, i32 0, i32 2
  store i64 %sub, i64* %ht_capacity, align 8
  %13 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_size4 = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %13, i32 0, i32 1
  %14 = load i64, i64* %ht_size4, align 8
  %call = call i8* @xcalloc(i64 8, i64 %14)
  %15 = bitcast i8* %call to %struct.token.0**
  %16 = bitcast %struct.token.0** %15 to i8**
  %17 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_vec5 = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %17, i32 0, i32 0
  store i8** %16, i8*** %ht_vec5, align 8
  %18 = load i8**, i8*** %old_vec, align 8
  store i8** %18, i8*** %ovp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %19 = load i8**, i8*** %ovp, align 8
  %20 = load i64, i64* %old_ht_size, align 8
  %21 = load i8**, i8*** %old_vec, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %21, i64 %20
  %cmp = icmp ult i8** %19, %arrayidx
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i8**, i8*** %ovp, align 8
  %23 = load i8*, i8** %22, align 8
  %cmp6 = icmp eq i8* %23, null
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %24 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %25 = load i8**, i8*** %ovp, align 8
  %26 = load i8*, i8** %25, align 8
  %call7 = call i8** @hash_find_slot(%struct.hash_table_s* %24, i8* %26)
  store i8** %call7, i8*** %slot, align 8
  %27 = load i8**, i8*** %ovp, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = load i8**, i8*** %slot, align 8
  store i8* %28, i8** %29, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then
  %30 = load i8**, i8*** %ovp, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %30, i32 1
  store i8** %incdec.ptr, i8*** %ovp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %31 = load i8**, i8*** %old_vec, align 8
  %32 = bitcast i8** %31 to i8*
  call void @free(i8* %32) #3
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @hash_delete(%struct.hash_table_s* %ht, i8* %item) #0 {
entry:
  %ht.addr = alloca %struct.hash_table_s*, align 8
  %item.addr = alloca i8*, align 8
  %slot = alloca i8**, align 8
  store %struct.hash_table_s* %ht, %struct.hash_table_s** %ht.addr, align 8
  store i8* %item, i8** %item.addr, align 8
  %0 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %1 = load i8*, i8** %item.addr, align 8
  %call = call i8** @hash_find_slot(%struct.hash_table_s* %0, i8* %1)
  store i8** %call, i8*** %slot, align 8
  %2 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %3 = load i8**, i8*** %slot, align 8
  %4 = bitcast i8** %3 to i8*
  %call1 = call i8* @hash_delete_at(%struct.hash_table_s* %2, i8* %4)
  ret i8* %call1
}

; Function Attrs: nounwind uwtable
define i8* @hash_delete_at(%struct.hash_table_s* %ht, i8* %slot) #0 {
entry:
  %retval = alloca i8*, align 8
  %ht.addr = alloca %struct.hash_table_s*, align 8
  %slot.addr = alloca i8*, align 8
  %item = alloca i8*, align 8
  store %struct.hash_table_s* %ht, %struct.hash_table_s** %ht.addr, align 8
  store i8* %slot, i8** %slot.addr, align 8
  %0 = load i8*, i8** %slot.addr, align 8
  %1 = bitcast i8* %0 to i8**
  %2 = load i8*, i8** %1, align 8
  store i8* %2, i8** %item, align 8
  %3 = load i8*, i8** %item, align 8
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.else, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i8*, i8** %item, align 8
  %5 = load i8*, i8** @hash_deleted_item, align 8
  %cmp1 = icmp eq i8* %4, %5
  br i1 %cmp1, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  %6 = load i8*, i8** @hash_deleted_item, align 8
  %7 = load i8*, i8** %slot.addr, align 8
  %8 = bitcast i8* %7 to i8**
  store i8* %6, i8** %8, align 8
  %9 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_fill = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %9, i32 0, i32 3
  %10 = load i64, i64* %ht_fill, align 8
  %dec = add i64 %10, -1
  store i64 %dec, i64* %ht_fill, align 8
  %11 = load i8*, i8** %item, align 8
  store i8* %11, i8** %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false, %entry
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %12 = load i8*, i8** %retval
  ret i8* %12
}

; Function Attrs: nounwind uwtable
define void @hash_free_items(%struct.hash_table_s* %ht, void (i8*)* %free_fn) #0 {
entry:
  %ht.addr = alloca %struct.hash_table_s*, align 8
  %free_fn.addr = alloca void (i8*)*, align 8
  %vec = alloca i8**, align 8
  %end = alloca i8**, align 8
  %item = alloca i8*, align 8
  store %struct.hash_table_s* %ht, %struct.hash_table_s** %ht.addr, align 8
  store void (i8*)* %free_fn, void (i8*)** %free_fn.addr, align 8
  %0 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_vec = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %0, i32 0, i32 0
  %1 = load i8**, i8*** %ht_vec, align 8
  store i8** %1, i8*** %vec, align 8
  %2 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_size = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %2, i32 0, i32 1
  %3 = load i64, i64* %ht_size, align 8
  %4 = load i8**, i8*** %vec, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 %3
  store i8** %arrayidx, i8*** %end, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i8**, i8*** %vec, align 8
  %6 = load i8**, i8*** %end, align 8
  %cmp = icmp ult i8** %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i8**, i8*** %vec, align 8
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %item, align 8
  %9 = load i8*, i8** %item, align 8
  %cmp1 = icmp eq i8* %9, null
  br i1 %cmp1, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %10 = load i8*, i8** %item, align 8
  %11 = load i8*, i8** @hash_deleted_item, align 8
  %cmp2 = icmp eq i8* %10, %11
  br i1 %cmp2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  %12 = load void (i8*)*, void (i8*)** %free_fn.addr, align 8
  %13 = load i8*, i8** %item, align 8
  call void %12(i8* %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %for.body
  %14 = load i8**, i8*** %vec, align 8
  store i8* null, i8** %14, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i8**, i8*** %vec, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %15, i32 1
  store i8** %incdec.ptr, i8*** %vec, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_fill = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %16, i32 0, i32 3
  store i64 0, i64* %ht_fill, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @hash_delete_items(%struct.hash_table_s* %ht) #0 {
entry:
  %ht.addr = alloca %struct.hash_table_s*, align 8
  %vec = alloca i8**, align 8
  %end = alloca i8**, align 8
  store %struct.hash_table_s* %ht, %struct.hash_table_s** %ht.addr, align 8
  %0 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_vec = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %0, i32 0, i32 0
  %1 = load i8**, i8*** %ht_vec, align 8
  store i8** %1, i8*** %vec, align 8
  %2 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_size = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %2, i32 0, i32 1
  %3 = load i64, i64* %ht_size, align 8
  %4 = load i8**, i8*** %vec, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 %3
  store i8** %arrayidx, i8*** %end, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i8**, i8*** %vec, align 8
  %6 = load i8**, i8*** %end, align 8
  %cmp = icmp ult i8** %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i8**, i8*** %vec, align 8
  store i8* null, i8** %7, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i8**, i8*** %vec, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %8, i32 1
  store i8** %incdec.ptr, i8*** %vec, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_fill = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %9, i32 0, i32 3
  store i64 0, i64* %ht_fill, align 8
  %10 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_collisions = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %10, i32 0, i32 4
  store i64 0, i64* %ht_collisions, align 8
  %11 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_lookups = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %11, i32 0, i32 5
  store i64 0, i64* %ht_lookups, align 8
  %12 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_rehashes = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %12, i32 0, i32 6
  store i32 0, i32* %ht_rehashes, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @hash_free(%struct.hash_table_s* %ht, void (i8*)* %free_fn) #0 {
entry:
  %ht.addr = alloca %struct.hash_table_s*, align 8
  %free_fn.addr = alloca void (i8*)*, align 8
  store %struct.hash_table_s* %ht, %struct.hash_table_s** %ht.addr, align 8
  store void (i8*)* %free_fn, void (i8*)** %free_fn.addr, align 8
  %0 = load void (i8*)*, void (i8*)** %free_fn.addr, align 8
  %tobool = icmp ne void (i8*)* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %2 = load void (i8*)*, void (i8*)** %free_fn.addr, align 8
  call void @hash_free_items(%struct.hash_table_s* %1, void (i8*)* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_vec = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %3, i32 0, i32 0
  %4 = load i8**, i8*** %ht_vec, align 8
  %5 = bitcast i8** %4 to i8*
  call void @free(i8* %5) #3
  %6 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_vec1 = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %6, i32 0, i32 0
  store i8** null, i8*** %ht_vec1, align 8
  %7 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_fill = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %7, i32 0, i32 3
  store i64 0, i64* %ht_fill, align 8
  %8 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_capacity = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %8, i32 0, i32 2
  store i64 0, i64* %ht_capacity, align 8
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define void @hash_map(%struct.hash_table_s* %ht, void (i8*)* %map) #0 {
entry:
  %ht.addr = alloca %struct.hash_table_s*, align 8
  %map.addr = alloca void (i8*)*, align 8
  %slot = alloca i8**, align 8
  %end = alloca i8**, align 8
  store %struct.hash_table_s* %ht, %struct.hash_table_s** %ht.addr, align 8
  store void (i8*)* %map, void (i8*)** %map.addr, align 8
  %0 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_size = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %0, i32 0, i32 1
  %1 = load i64, i64* %ht_size, align 8
  %2 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_vec = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %2, i32 0, i32 0
  %3 = load i8**, i8*** %ht_vec, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %1
  store i8** %arrayidx, i8*** %end, align 8
  %4 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_vec1 = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %4, i32 0, i32 0
  %5 = load i8**, i8*** %ht_vec1, align 8
  store i8** %5, i8*** %slot, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i8**, i8*** %slot, align 8
  %7 = load i8**, i8*** %end, align 8
  %cmp = icmp ult i8** %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i8**, i8*** %slot, align 8
  %9 = load i8*, i8** %8, align 8
  %cmp2 = icmp eq i8* %9, null
  br i1 %cmp2, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %10 = load i8**, i8*** %slot, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = load i8*, i8** @hash_deleted_item, align 8
  %cmp3 = icmp eq i8* %11, %12
  br i1 %cmp3, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  %13 = load void (i8*)*, void (i8*)** %map.addr, align 8
  %14 = load i8**, i8*** %slot, align 8
  %15 = load i8*, i8** %14, align 8
  call void %13(i8* %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i8**, i8*** %slot, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %16, i32 1
  store i8** %incdec.ptr, i8*** %slot, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @hash_print_stats(%struct.hash_table_s* %ht, %struct._IO_FILE* %out_FILE) #0 {
entry:
  %ht.addr = alloca %struct.hash_table_s*, align 8
  %out_FILE.addr = alloca %struct._IO_FILE*, align 8
  store %struct.hash_table_s* %ht, %struct.hash_table_s** %ht.addr, align 8
  store %struct._IO_FILE* %out_FILE, %struct._IO_FILE** %out_FILE.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %out_FILE.addr, align 8
  %1 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_fill = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %1, i32 0, i32 3
  %2 = load i64, i64* %ht_fill, align 8
  %3 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_size = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %3, i32 0, i32 1
  %4 = load i64, i64* %ht_size, align 8
  %5 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_fill1 = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %5, i32 0, i32 3
  %6 = load i64, i64* %ht_fill1, align 8
  %conv = uitofp i64 %6 to double
  %mul = fmul double 1.000000e+02, %conv
  %7 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_size2 = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %7, i32 0, i32 1
  %8 = load i64, i64* %ht_size2, align 8
  %conv3 = uitofp i64 %8 to double
  %div = fdiv double %mul, %conv3
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i64 %2, i64 %4, double %div)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %out_FILE.addr, align 8
  %10 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_rehashes = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %10, i32 0, i32 6
  %11 = load i32, i32* %ht_rehashes, align 4
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 %11)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %out_FILE.addr, align 8
  %13 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_collisions = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %13, i32 0, i32 4
  %14 = load i64, i64* %ht_collisions, align 8
  %15 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_lookups = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %15, i32 0, i32 5
  %16 = load i64, i64* %ht_lookups, align 8
  %17 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_lookups5 = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %17, i32 0, i32 5
  %18 = load i64, i64* %ht_lookups5, align 8
  %tobool = icmp ne i64 %18, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %19 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_collisions6 = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %19, i32 0, i32 4
  %20 = load i64, i64* %ht_collisions6, align 8
  %conv7 = uitofp i64 %20 to double
  %mul8 = fmul double 1.000000e+02, %conv7
  %21 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_lookups9 = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %21, i32 0, i32 5
  %22 = load i64, i64* %ht_lookups9, align 8
  %conv10 = uitofp i64 %22 to double
  %div11 = fdiv double %mul8, %conv10
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %div11, %cond.true ], [ 0.000000e+00, %cond.false ]
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0), i64 %14, i64 %16, double %cond)
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define i8** @hash_dump(%struct.hash_table_s* %ht, i8** %vector_0, i32 (i8*, i8*)* %compare) #0 {
entry:
  %ht.addr = alloca %struct.hash_table_s*, align 8
  %vector_0.addr = alloca i8**, align 8
  %compare.addr = alloca i32 (i8*, i8*)*, align 8
  %vector = alloca i8**, align 8
  %slot = alloca i8**, align 8
  %end = alloca i8**, align 8
  store %struct.hash_table_s* %ht, %struct.hash_table_s** %ht.addr, align 8
  store i8** %vector_0, i8*** %vector_0.addr, align 8
  store i32 (i8*, i8*)* %compare, i32 (i8*, i8*)** %compare.addr, align 8
  %0 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_size = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %0, i32 0, i32 1
  %1 = load i64, i64* %ht_size, align 8
  %2 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_vec = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %2, i32 0, i32 0
  %3 = load i8**, i8*** %ht_vec, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %1
  store i8** %arrayidx, i8*** %end, align 8
  %4 = load i8**, i8*** %vector_0.addr, align 8
  %cmp = icmp eq i8** %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_fill = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %5, i32 0, i32 3
  %6 = load i64, i64* %ht_fill, align 8
  %add = add i64 %6, 1
  %mul = mul i64 8, %add
  %call = call i8* @xmalloc(i64 %mul)
  %7 = bitcast i8* %call to i8**
  store i8** %7, i8*** %vector_0.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8**, i8*** %vector_0.addr, align 8
  store i8** %8, i8*** %vector, align 8
  %9 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_vec1 = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %9, i32 0, i32 0
  %10 = load i8**, i8*** %ht_vec1, align 8
  store i8** %10, i8*** %slot, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i8**, i8*** %slot, align 8
  %12 = load i8**, i8*** %end, align 8
  %cmp2 = icmp ult i8** %11, %12
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i8**, i8*** %slot, align 8
  %14 = load i8*, i8** %13, align 8
  %cmp3 = icmp eq i8* %14, null
  br i1 %cmp3, label %if.end.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %15 = load i8**, i8*** %slot, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = load i8*, i8** @hash_deleted_item, align 8
  %cmp4 = icmp eq i8* %16, %17
  br i1 %cmp4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %lor.lhs.false
  %18 = load i8**, i8*** %slot, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = load i8**, i8*** %vector, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %20, i32 1
  store i8** %incdec.ptr, i8*** %vector, align 8
  store i8* %19, i8** %20, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %lor.lhs.false, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.6
  %21 = load i8**, i8*** %slot, align 8
  %incdec.ptr7 = getelementptr inbounds i8*, i8** %21, i32 1
  store i8** %incdec.ptr7, i8*** %slot, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load i8**, i8*** %vector, align 8
  store i8* null, i8** %22, align 8
  %23 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %compare.addr, align 8
  %tobool = icmp ne i32 (i8*, i8*)* %23, null
  br i1 %tobool, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %for.end
  %24 = load i8**, i8*** %vector_0.addr, align 8
  %25 = bitcast i8** %24 to i8*
  %26 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_fill9 = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %26, i32 0, i32 3
  %27 = load i64, i64* %ht_fill9, align 8
  %28 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %compare.addr, align 8
  call void @qsort(i8* %25, i64 %27, i64 8, i32 (i8*, i8*)* %28)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %for.end
  %29 = load i8**, i8*** %vector_0.addr, align 8
  ret i8** %29
}

declare i8* @xmalloc(i64) #1

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define i8** @hash_dump_select(%struct.hash_table_s* %ht, i8** %vector_0, i32 (i8*)* %select_fn, i32 (i8*, i8*)* %compare) #0 {
entry:
  %retval = alloca i8**, align 8
  %ht.addr = alloca %struct.hash_table_s*, align 8
  %vector_0.addr = alloca i8**, align 8
  %select_fn.addr = alloca i32 (i8*)*, align 8
  %compare.addr = alloca i32 (i8*, i8*)*, align 8
  %slot = alloca i8**, align 8
  %end = alloca i8**, align 8
  %vector_0_malloced = alloca i32, align 4
  %fill = alloca i64, align 8
  store %struct.hash_table_s* %ht, %struct.hash_table_s** %ht.addr, align 8
  store i8** %vector_0, i8*** %vector_0.addr, align 8
  store i32 (i8*)* %select_fn, i32 (i8*)** %select_fn.addr, align 8
  store i32 (i8*, i8*)* %compare, i32 (i8*, i8*)** %compare.addr, align 8
  %0 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_size = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %0, i32 0, i32 1
  %1 = load i64, i64* %ht_size, align 8
  %2 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_vec = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %2, i32 0, i32 0
  %3 = load i8**, i8*** %ht_vec, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %1
  store i8** %arrayidx, i8*** %end, align 8
  store i32 0, i32* %vector_0_malloced, align 4
  store i64 0, i64* %fill, align 8
  %4 = load i32 (i8*)*, i32 (i8*)** %select_fn.addr, align 8
  %tobool = icmp ne i32 (i8*)* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %6 = load i8**, i8*** %vector_0.addr, align 8
  %7 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %compare.addr, align 8
  %call = call i8** @hash_dump(%struct.hash_table_s* %5, i8** %6, i32 (i8*, i8*)* %7)
  store i8** %call, i8*** %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load i8**, i8*** %vector_0.addr, align 8
  %cmp = icmp eq i8** %8, null
  br i1 %cmp, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %if.end
  %9 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_fill = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %9, i32 0, i32 3
  %10 = load i64, i64* %ht_fill, align 8
  %add = add i64 %10, 1
  %mul = mul i64 8, %add
  %call2 = call i8* @xmalloc(i64 %mul)
  %11 = bitcast i8* %call2 to i8**
  store i8** %11, i8*** %vector_0.addr, align 8
  store i32 1, i32* %vector_0_malloced, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.1, %if.end
  %12 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %ht_vec4 = getelementptr inbounds %struct.hash_table_s, %struct.hash_table_s* %12, i32 0, i32 0
  %13 = load i8**, i8*** %ht_vec4, align 8
  store i8** %13, i8*** %slot, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.3
  %14 = load i8**, i8*** %slot, align 8
  %15 = load i8**, i8*** %end, align 8
  %cmp5 = icmp ult i8** %14, %15
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i8**, i8*** %slot, align 8
  %17 = load i8*, i8** %16, align 8
  %cmp6 = icmp eq i8* %17, null
  br i1 %cmp6, label %if.end.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %18 = load i8**, i8*** %slot, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = load i8*, i8** @hash_deleted_item, align 8
  %cmp7 = icmp eq i8* %19, %20
  br i1 %cmp7, label %if.end.12, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %21 = load i32 (i8*)*, i32 (i8*)** %select_fn.addr, align 8
  %22 = load i8**, i8*** %slot, align 8
  %23 = load i8*, i8** %22, align 8
  %call8 = call i32 %21(i8* %23)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %land.lhs.true
  %24 = load i8**, i8*** %slot, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = load i64, i64* %fill, align 8
  %inc = add i64 %26, 1
  store i64 %inc, i64* %fill, align 8
  %27 = load i8**, i8*** %vector_0.addr, align 8
  %arrayidx11 = getelementptr inbounds i8*, i8** %27, i64 %26
  store i8* %25, i8** %arrayidx11, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %land.lhs.true, %lor.lhs.false, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %28 = load i8**, i8*** %slot, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %28, i32 1
  store i8** %incdec.ptr, i8*** %slot, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load i64, i64* %fill, align 8
  %30 = load i8**, i8*** %vector_0.addr, align 8
  %arrayidx13 = getelementptr inbounds i8*, i8** %30, i64 %29
  store i8* null, i8** %arrayidx13, align 8
  %31 = load i32, i32* %vector_0_malloced, align 4
  %tobool14 = icmp ne i32 %31, 0
  br i1 %tobool14, label %if.then.15, label %if.end.19

if.then.15:                                       ; preds = %for.end
  %32 = load i8**, i8*** %vector_0.addr, align 8
  %33 = bitcast i8** %32 to i8*
  %34 = load i64, i64* %fill, align 8
  %add16 = add i64 %34, 1
  %mul17 = mul i64 8, %add16
  %call18 = call i8* @xrealloc(i8* %33, i64 %mul17)
  %35 = bitcast i8* %call18 to i8**
  store i8** %35, i8*** %vector_0.addr, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.15, %for.end
  %36 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %compare.addr, align 8
  %tobool20 = icmp ne i32 (i8*, i8*)* %36, null
  br i1 %tobool20, label %land.lhs.true.21, label %if.end.24

land.lhs.true.21:                                 ; preds = %if.end.19
  %37 = load i64, i64* %fill, align 8
  %cmp22 = icmp ugt i64 %37, 1
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %land.lhs.true.21
  %38 = load i8**, i8*** %vector_0.addr, align 8
  %39 = bitcast i8** %38 to i8*
  %40 = load i64, i64* %fill, align 8
  %41 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %compare.addr, align 8
  call void @qsort(i8* %39, i64 %40, i64 8, i32 (i8*, i8*)* %41)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %land.lhs.true.21, %if.end.19
  %42 = load i8**, i8*** %vector_0.addr, align 8
  store i8** %42, i8*** %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.then
  %43 = load i8**, i8*** %retval
  ret i8** %43
}

declare i8* @xrealloc(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @hash_maparg(%struct.hash_table_s* %ht, void (i8*, i8*)* %map, i8* %arg, i32 (i8*, i8*)* %compare) #0 {
entry:
  %ht.addr = alloca %struct.hash_table_s*, align 8
  %map.addr = alloca void (i8*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %compare.addr = alloca i32 (i8*, i8*)*, align 8
  %vector = alloca i8**, align 8
  %vector_0 = alloca i8**, align 8
  store %struct.hash_table_s* %ht, %struct.hash_table_s** %ht.addr, align 8
  store void (i8*, i8*)* %map, void (i8*, i8*)** %map.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  store i32 (i8*, i8*)* %compare, i32 (i8*, i8*)** %compare.addr, align 8
  %0 = load %struct.hash_table_s*, %struct.hash_table_s** %ht.addr, align 8
  %1 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %compare.addr, align 8
  %call = call i8** @hash_dump(%struct.hash_table_s* %0, i8** null, i32 (i8*, i8*)* %1)
  store i8** %call, i8*** %vector_0, align 8
  %2 = load i8**, i8*** %vector_0, align 8
  store i8** %2, i8*** %vector, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i8**, i8*** %vector, align 8
  %4 = load i8*, i8** %3, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load void (i8*, i8*)*, void (i8*, i8*)** %map.addr, align 8
  %6 = load i8**, i8*** %vector, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = load i8*, i8** %arg.addr, align 8
  call void %5(i8* %7, i8* %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i8**, i8*** %vector, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %9, i32 1
  store i8** %incdec.ptr, i8*** %vector, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i8**, i8*** %vector_0, align 8
  %11 = bitcast i8** %10 to i8*
  call void @free(i8* %11) #3
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
