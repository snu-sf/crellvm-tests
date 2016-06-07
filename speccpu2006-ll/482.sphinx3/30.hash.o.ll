; ModuleID = 'hash.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_table_t = type { %struct.hash_entry_s*, i32, i8 }
%struct.hash_entry_s = type { i8*, i32, i32, %struct.hash_entry_s* }
%struct.gnode_s = type { %union.anytype_s, %struct.gnode_s* }
%union.anytype_s = type { i8* }

@.str = private unnamed_addr constant [7 x i8] c"hash.c\00", align 1
@prime = internal global [46 x i32] [i32 101, i32 211, i32 307, i32 401, i32 503, i32 601, i32 701, i32 809, i32 907, i32 1009, i32 1201, i32 1601, i32 2003, i32 2411, i32 3001, i32 4001, i32 5003, i32 6007, i32 7001, i32 8009, i32 9001, i32 10007, i32 12007, i32 16001, i32 20011, i32 24001, i32 30011, i32 40009, i32 50021, i32 60013, i32 70001, i32 80021, i32 90001, i32 100003, i32 120011, i32 160001, i32 200003, i32 240007, i32 300007, i32 400009, i32 500009, i32 600011, i32 700001, i32 800011, i32 900001, i32 -1], align 16
@.str.1 = private unnamed_addr constant [8 x i8] c"WARNING\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Very large hash table requested (%d entries)\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.hash_table_t* @hash_new(i32 %size, i32 %casearg) #0 {
entry:
  %size.addr = alloca i32, align 4
  %casearg.addr = alloca i32, align 4
  %h = alloca %struct.hash_table_t*, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 %casearg, i32* %casearg.addr, align 4
  %call = call i8* @__ckd_calloc__(i64 1, i64 16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 126)
  %0 = bitcast i8* %call to %struct.hash_table_t*
  store %struct.hash_table_t* %0, %struct.hash_table_t** %h, align 8
  %1 = load i32, i32* %size.addr, align 4
  %2 = load i32, i32* %size.addr, align 4
  %shr = ashr i32 %2, 1
  %add = add nsw i32 %1, %shr
  %call1 = call i32 @prime_size(i32 %add)
  %3 = load %struct.hash_table_t*, %struct.hash_table_t** %h, align 8
  %size2 = getelementptr inbounds %struct.hash_table_t, %struct.hash_table_t* %3, i32 0, i32 1
  store i32 %call1, i32* %size2, align 4
  %4 = load i32, i32* %casearg.addr, align 4
  %cmp = icmp eq i32 %4, 1
  %conv = zext i1 %cmp to i32
  %conv3 = trunc i32 %conv to i8
  %5 = load %struct.hash_table_t*, %struct.hash_table_t** %h, align 8
  %nocase = getelementptr inbounds %struct.hash_table_t, %struct.hash_table_t* %5, i32 0, i32 2
  store i8 %conv3, i8* %nocase, align 1
  %6 = load %struct.hash_table_t*, %struct.hash_table_t** %h, align 8
  %size4 = getelementptr inbounds %struct.hash_table_t, %struct.hash_table_t* %6, i32 0, i32 1
  %7 = load i32, i32* %size4, align 4
  %conv5 = sext i32 %7 to i64
  %call6 = call i8* @__ckd_calloc__(i64 %conv5, i64 24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 129)
  %8 = bitcast i8* %call6 to %struct.hash_entry_s*
  %9 = load %struct.hash_table_t*, %struct.hash_table_t** %h, align 8
  %table = getelementptr inbounds %struct.hash_table_t, %struct.hash_table_t* %9, i32 0, i32 0
  store %struct.hash_entry_s* %8, %struct.hash_entry_s** %table, align 8
  %10 = load %struct.hash_table_t*, %struct.hash_table_t** %h, align 8
  ret %struct.hash_table_t* %10
}

declare i8* @__ckd_calloc__(i64, i64, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @prime_size(i32 %size) #0 {
entry:
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %size, i32* %size.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [46 x i32], [46 x i32]* @prime, i32 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [46 x i32], [46 x i32]* @prime, i32 0, i64 %idxprom1
  %3 = load i32, i32* %arrayidx2, align 4
  %4 = load i32, i32* %size.addr, align 4
  %cmp3 = icmp slt i32 %3, %4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %cmp3, %land.rhs ]
  br i1 %5, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %7 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [46 x i32], [46 x i32]* @prime, i32 0, i64 %idxprom4
  %8 = load i32, i32* %arrayidx5, align 4
  %cmp6 = icmp sle i32 %8, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 115, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0))
  %9 = load i32, i32* %size.addr, align 4
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i32 0, i32 0), i32 %9)
  %10 = load i32, i32* %i, align 4
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* %i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %11 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [46 x i32], [46 x i32]* @prime, i32 0, i64 %idxprom7
  %12 = load i32, i32* %arrayidx8, align 4
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define i32 @hash_lookup(%struct.hash_table_t* %h, i8* %key, i32* %val) #0 {
entry:
  %h.addr = alloca %struct.hash_table_t*, align 8
  %key.addr = alloca i8*, align 8
  %val.addr = alloca i32*, align 8
  %hash = alloca i32, align 4
  %len = alloca i32, align 4
  store %struct.hash_table_t* %h, %struct.hash_table_t** %h.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32* %val, i32** %val.addr, align 8
  %0 = load %struct.hash_table_t*, %struct.hash_table_t** %h.addr, align 8
  %1 = load i8*, i8** %key.addr, align 8
  %call = call i32 @key2hash(%struct.hash_table_t* %0, i8* %1)
  store i32 %call, i32* %hash, align 4
  %2 = load i8*, i8** %key.addr, align 8
  %call1 = call i64 @strlen(i8* %2) #3
  %conv = trunc i64 %call1 to i32
  store i32 %conv, i32* %len, align 4
  %3 = load %struct.hash_table_t*, %struct.hash_table_t** %h.addr, align 8
  %4 = load i32, i32* %hash, align 4
  %5 = load i8*, i8** %key.addr, align 8
  %6 = load i32, i32* %len, align 4
  %7 = load i32*, i32** %val.addr, align 8
  %call2 = call i32 @lookup(%struct.hash_table_t* %3, i32 %4, i8* %5, i32 %6, i32* %7)
  ret i32 %call2
}

; Function Attrs: nounwind uwtable
define internal i32 @key2hash(%struct.hash_table_t* %h, i8* %key) #0 {
entry:
  %h.addr = alloca %struct.hash_table_t*, align 8
  %key.addr = alloca i8*, align 8
  %cp = alloca i8*, align 8
  %c = alloca i8, align 1
  %s = alloca i32, align 4
  %hash = alloca i32, align 4
  store %struct.hash_table_t* %h, %struct.hash_table_t** %h.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 0, i32* %hash, align 4
  store i32 0, i32* %s, align 4
  %0 = load %struct.hash_table_t*, %struct.hash_table_t** %h.addr, align 8
  %nocase = getelementptr inbounds %struct.hash_table_t, %struct.hash_table_t* %0, i32 0, i32 2
  %1 = load i8, i8* %nocase, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %key.addr, align 8
  store i8* %2, i8** %cp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i8*, i8** %cp, align 8
  %4 = load i8, i8* %3, align 1
  %tobool1 = icmp ne i8 %4, 0
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8*, i8** %cp, align 8
  %6 = load i8, i8* %5, align 1
  store i8 %6, i8* %c, align 1
  %7 = load i8, i8* %c, align 1
  %conv = sext i8 %7 to i32
  %cmp = icmp sge i32 %conv, 97
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %for.body
  %8 = load i8, i8* %c, align 1
  %conv3 = sext i8 %8 to i32
  %cmp4 = icmp sle i32 %conv3, 122
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %9 = load i8, i8* %c, align 1
  %conv6 = sext i8 %9 to i32
  %sub = sub nsw i32 %conv6, 32
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %for.body
  %10 = load i8, i8* %c, align 1
  %conv7 = sext i8 %10 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %conv7, %cond.false ]
  %conv8 = trunc i32 %cond to i8
  store i8 %conv8, i8* %c, align 1
  %11 = load i8, i8* %c, align 1
  %conv9 = sext i8 %11 to i32
  %12 = load i32, i32* %s, align 4
  %shl = shl i32 %conv9, %12
  %13 = load i32, i32* %hash, align 4
  %add = add i32 %13, %shl
  store i32 %add, i32* %hash, align 4
  %14 = load i32, i32* %s, align 4
  %add10 = add nsw i32 %14, 5
  store i32 %add10, i32* %s, align 4
  %15 = load i32, i32* %s, align 4
  %cmp11 = icmp sge i32 %15, 25
  br i1 %cmp11, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %cond.end
  %16 = load i32, i32* %s, align 4
  %sub14 = sub nsw i32 %16, 24
  store i32 %sub14, i32* %s, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.13, %cond.end
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.30

if.else:                                          ; preds = %entry
  %18 = load i8*, i8** %key.addr, align 8
  store i8* %18, i8** %cp, align 8
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.27, %if.else
  %19 = load i8*, i8** %cp, align 8
  %20 = load i8, i8* %19, align 1
  %tobool16 = icmp ne i8 %20, 0
  br i1 %tobool16, label %for.body.17, label %for.end.29

for.body.17:                                      ; preds = %for.cond.15
  %21 = load i8*, i8** %cp, align 8
  %22 = load i8, i8* %21, align 1
  %conv18 = sext i8 %22 to i32
  %23 = load i32, i32* %s, align 4
  %shl19 = shl i32 %conv18, %23
  %24 = load i32, i32* %hash, align 4
  %add20 = add i32 %24, %shl19
  store i32 %add20, i32* %hash, align 4
  %25 = load i32, i32* %s, align 4
  %add21 = add nsw i32 %25, 5
  store i32 %add21, i32* %s, align 4
  %26 = load i32, i32* %s, align 4
  %cmp22 = icmp sge i32 %26, 25
  br i1 %cmp22, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %for.body.17
  %27 = load i32, i32* %s, align 4
  %sub25 = sub nsw i32 %27, 24
  store i32 %sub25, i32* %s, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %for.body.17
  br label %for.inc.27

for.inc.27:                                       ; preds = %if.end.26
  %28 = load i8*, i8** %cp, align 8
  %incdec.ptr28 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr28, i8** %cp, align 8
  br label %for.cond.15

for.end.29:                                       ; preds = %for.cond.15
  br label %if.end.30

if.end.30:                                        ; preds = %for.end.29, %for.end
  %29 = load i32, i32* %hash, align 4
  %30 = load %struct.hash_table_t*, %struct.hash_table_t** %h.addr, align 8
  %size = getelementptr inbounds %struct.hash_table_t, %struct.hash_table_t* %30, i32 0, i32 1
  %31 = load i32, i32* %size, align 4
  %rem = urem i32 %29, %31
  ret i32 %rem
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @lookup(%struct.hash_table_t* %h, i32 %hash, i8* %key, i32 %len, i32* %val) #0 {
entry:
  %retval = alloca i32, align 4
  %h.addr = alloca %struct.hash_table_t*, align 8
  %hash.addr = alloca i32, align 4
  %key.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %val.addr = alloca i32*, align 8
  %entry1 = alloca %struct.hash_entry_s*, align 8
  store %struct.hash_table_t* %h, %struct.hash_table_t** %h.addr, align 8
  store i32 %hash, i32* %hash.addr, align 4
  store i8* %key, i8** %key.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32* %val, i32** %val.addr, align 8
  %0 = load i32, i32* %hash.addr, align 4
  %idxprom = zext i32 %0 to i64
  %1 = load %struct.hash_table_t*, %struct.hash_table_t** %h.addr, align 8
  %table = getelementptr inbounds %struct.hash_table_t, %struct.hash_table_t* %1, i32 0, i32 0
  %2 = load %struct.hash_entry_s*, %struct.hash_entry_s** %table, align 8
  %arrayidx = getelementptr inbounds %struct.hash_entry_s, %struct.hash_entry_s* %2, i64 %idxprom
  store %struct.hash_entry_s* %arrayidx, %struct.hash_entry_s** %entry1, align 8
  %3 = load %struct.hash_entry_s*, %struct.hash_entry_s** %entry1, align 8
  %key2 = getelementptr inbounds %struct.hash_entry_s, %struct.hash_entry_s* %3, i32 0, i32 0
  %4 = load i8*, i8** %key2, align 8
  %cmp = icmp eq i8* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.hash_table_t*, %struct.hash_table_t** %h.addr, align 8
  %nocase = getelementptr inbounds %struct.hash_table_t, %struct.hash_table_t* %5, i32 0, i32 2
  %6 = load i8, i8* %nocase, align 1
  %tobool = icmp ne i8 %6, 0
  br i1 %tobool, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.3
  %7 = load %struct.hash_entry_s*, %struct.hash_entry_s** %entry1, align 8
  %tobool4 = icmp ne %struct.hash_entry_s* %7, null
  br i1 %tobool4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %8 = load %struct.hash_entry_s*, %struct.hash_entry_s** %entry1, align 8
  %len5 = getelementptr inbounds %struct.hash_entry_s, %struct.hash_entry_s* %8, i32 0, i32 1
  %9 = load i32, i32* %len5, align 4
  %10 = load i32, i32* %len.addr, align 4
  %cmp6 = icmp ne i32 %9, %10
  br i1 %cmp6, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %11 = load %struct.hash_entry_s*, %struct.hash_entry_s** %entry1, align 8
  %12 = load i8*, i8** %key.addr, align 8
  %call = call i32 @keycmp_nocase(%struct.hash_entry_s* %11, i8* %12)
  %cmp7 = icmp ne i32 %call, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %13 = phi i1 [ true, %land.rhs ], [ %cmp7, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %14 = phi i1 [ false, %while.cond ], [ %13, %lor.end ]
  br i1 %14, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %15 = load %struct.hash_entry_s*, %struct.hash_entry_s** %entry1, align 8
  %next = getelementptr inbounds %struct.hash_entry_s, %struct.hash_entry_s* %15, i32 0, i32 3
  %16 = load %struct.hash_entry_s*, %struct.hash_entry_s** %next, align 8
  store %struct.hash_entry_s* %16, %struct.hash_entry_s** %entry1, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end.21

if.else:                                          ; preds = %if.end
  br label %while.cond.8

while.cond.8:                                     ; preds = %while.body.18, %if.else
  %17 = load %struct.hash_entry_s*, %struct.hash_entry_s** %entry1, align 8
  %tobool9 = icmp ne %struct.hash_entry_s* %17, null
  br i1 %tobool9, label %land.rhs.10, label %land.end.17

land.rhs.10:                                      ; preds = %while.cond.8
  %18 = load %struct.hash_entry_s*, %struct.hash_entry_s** %entry1, align 8
  %len11 = getelementptr inbounds %struct.hash_entry_s, %struct.hash_entry_s* %18, i32 0, i32 1
  %19 = load i32, i32* %len11, align 4
  %20 = load i32, i32* %len.addr, align 4
  %cmp12 = icmp ne i32 %19, %20
  br i1 %cmp12, label %lor.end.16, label %lor.rhs.13

lor.rhs.13:                                       ; preds = %land.rhs.10
  %21 = load %struct.hash_entry_s*, %struct.hash_entry_s** %entry1, align 8
  %22 = load i8*, i8** %key.addr, align 8
  %call14 = call i32 @keycmp_case(%struct.hash_entry_s* %21, i8* %22)
  %cmp15 = icmp ne i32 %call14, 0
  br label %lor.end.16

lor.end.16:                                       ; preds = %lor.rhs.13, %land.rhs.10
  %23 = phi i1 [ true, %land.rhs.10 ], [ %cmp15, %lor.rhs.13 ]
  br label %land.end.17

land.end.17:                                      ; preds = %lor.end.16, %while.cond.8
  %24 = phi i1 [ false, %while.cond.8 ], [ %23, %lor.end.16 ]
  br i1 %24, label %while.body.18, label %while.end.20

while.body.18:                                    ; preds = %land.end.17
  %25 = load %struct.hash_entry_s*, %struct.hash_entry_s** %entry1, align 8
  %next19 = getelementptr inbounds %struct.hash_entry_s, %struct.hash_entry_s* %25, i32 0, i32 3
  %26 = load %struct.hash_entry_s*, %struct.hash_entry_s** %next19, align 8
  store %struct.hash_entry_s* %26, %struct.hash_entry_s** %entry1, align 8
  br label %while.cond.8

while.end.20:                                     ; preds = %land.end.17
  br label %if.end.21

if.end.21:                                        ; preds = %while.end.20, %while.end
  %27 = load %struct.hash_entry_s*, %struct.hash_entry_s** %entry1, align 8
  %tobool22 = icmp ne %struct.hash_entry_s* %27, null
  br i1 %tobool22, label %if.then.23, label %if.else.25

if.then.23:                                       ; preds = %if.end.21
  %28 = load %struct.hash_entry_s*, %struct.hash_entry_s** %entry1, align 8
  %val24 = getelementptr inbounds %struct.hash_entry_s, %struct.hash_entry_s* %28, i32 0, i32 2
  %29 = load i32, i32* %val24, align 4
  %30 = load i32*, i32** %val.addr, align 8
  store i32 %29, i32* %30, align 4
  store i32 0, i32* %retval
  br label %return

if.else.25:                                       ; preds = %if.end.21
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.else.25, %if.then.23, %if.then
  %31 = load i32, i32* %retval
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define i32 @hash_lookup_bkey(%struct.hash_table_t* %h, i8* %key, i32 %len, i32* %val) #0 {
entry:
  %h.addr = alloca %struct.hash_table_t*, align 8
  %key.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %val.addr = alloca i32*, align 8
  %hash = alloca i32, align 4
  %str = alloca i8*, align 8
  store %struct.hash_table_t* %h, %struct.hash_table_t** %h.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32* %val, i32** %val.addr, align 8
  %0 = load i8*, i8** %key.addr, align 8
  %1 = load i32, i32* %len.addr, align 4
  %call = call i8* @makekey(i8* %0, i32 %1, i8* null)
  store i8* %call, i8** %str, align 8
  %2 = load %struct.hash_table_t*, %struct.hash_table_t** %h.addr, align 8
  %3 = load i8*, i8** %str, align 8
  %call1 = call i32 @key2hash(%struct.hash_table_t* %2, i8* %3)
  store i32 %call1, i32* %hash, align 4
  %4 = load i8*, i8** %str, align 8
  call void @ckd_free(i8* %4)
  %5 = load %struct.hash_table_t*, %struct.hash_table_t** %h.addr, align 8
  %6 = load i32, i32* %hash, align 4
  %7 = load i8*, i8** %key.addr, align 8
  %8 = load i32, i32* %len.addr, align 4
  %9 = load i32*, i32** %val.addr, align 8
  %call2 = call i32 @lookup(%struct.hash_table_t* %5, i32 %6, i8* %7, i32 %8, i32* %9)
  ret i32 %call2
}

; Function Attrs: nounwind uwtable
define internal i8* @makekey(i8* %data, i32 %len, i8* %key) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %key.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i8* %key, i8** %key.addr, align 8
  %0 = load i8*, i8** %key.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %len.addr, align 4
  %mul = mul nsw i32 %1, 2
  %add = add nsw i32 %mul, 1
  %conv = sext i32 %add to i64
  %call = call i8* @__ckd_calloc__(i64 %conv, i64 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 177)
  store i8* %call, i8** %key.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %len.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i8*, i8** %data.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv2 = zext i8 %6 to i32
  %and = and i32 %conv2, 15
  %add3 = add nsw i32 65, %and
  %conv4 = trunc i32 %add3 to i8
  %7 = load i32, i32* %j, align 4
  %idxprom5 = sext i32 %7 to i64
  %8 = load i8*, i8** %key.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %8, i64 %idxprom5
  store i8 %conv4, i8* %arrayidx6, align 1
  %9 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %9 to i64
  %10 = load i8*, i8** %data.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %10, i64 %idxprom7
  %11 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %11 to i32
  %shr = ashr i32 %conv9, 4
  %and10 = and i32 %shr, 15
  %add11 = add nsw i32 74, %and10
  %conv12 = trunc i32 %add11 to i8
  %12 = load i32, i32* %j, align 4
  %add13 = add nsw i32 %12, 1
  %idxprom14 = sext i32 %add13 to i64
  %13 = load i8*, i8** %key.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %13, i64 %idxprom14
  store i8 %conv12, i8* %arrayidx15, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  %15 = load i32, i32* %j, align 4
  %add16 = add nsw i32 %15, 2
  store i32 %add16, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i32, i32* %j, align 4
  %idxprom17 = sext i32 %16 to i64
  %17 = load i8*, i8** %key.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %17, i64 %idxprom17
  store i8 0, i8* %arrayidx18, align 1
  %18 = load i8*, i8** %key.addr, align 8
  ret i8* %18
}

declare void @ckd_free(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @hash_enter(%struct.hash_table_t* %h, i8* %key, i32 %val) #0 {
entry:
  %h.addr = alloca %struct.hash_table_t*, align 8
  %key.addr = alloca i8*, align 8
  %val.addr = alloca i32, align 4
  %hash = alloca i32, align 4
  %len = alloca i32, align 4
  store %struct.hash_table_t* %h, %struct.hash_table_t** %h.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 %val, i32* %val.addr, align 4
  %0 = load %struct.hash_table_t*, %struct.hash_table_t** %h.addr, align 8
  %1 = load i8*, i8** %key.addr, align 8
  %call = call i32 @key2hash(%struct.hash_table_t* %0, i8* %1)
  store i32 %call, i32* %hash, align 4
  %2 = load i8*, i8** %key.addr, align 8
  %call1 = call i64 @strlen(i8* %2) #3
  %conv = trunc i64 %call1 to i32
  store i32 %conv, i32* %len, align 4
  %3 = load %struct.hash_table_t*, %struct.hash_table_t** %h.addr, align 8
  %4 = load i32, i32* %hash, align 4
  %5 = load i8*, i8** %key.addr, align 8
  %6 = load i32, i32* %len, align 4
  %7 = load i32, i32* %val.addr, align 4
  %call2 = call i32 @enter(%struct.hash_table_t* %3, i32 %4, i8* %5, i32 %6, i32 %7)
  ret i32 %call2
}

; Function Attrs: nounwind uwtable
define internal i32 @enter(%struct.hash_table_t* %h, i32 %hash, i8* %key, i32 %len, i32 %val) #0 {
entry:
  %retval = alloca i32, align 4
  %h.addr = alloca %struct.hash_table_t*, align 8
  %hash.addr = alloca i32, align 4
  %key.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  %old = alloca i32, align 4
  %cur = alloca %struct.hash_entry_s*, align 8
  %new = alloca %struct.hash_entry_s*, align 8
  store %struct.hash_table_t* %h, %struct.hash_table_t** %h.addr, align 8
  store i32 %hash, i32* %hash.addr, align 4
  store i8* %key, i8** %key.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 %val, i32* %val.addr, align 4
  %0 = load %struct.hash_table_t*, %struct.hash_table_t** %h.addr, align 8
  %1 = load i32, i32* %hash.addr, align 4
  %2 = load i8*, i8** %key.addr, align 8
  %3 = load i32, i32* %len.addr, align 4
  %call = call i32 @lookup(%struct.hash_table_t* %0, i32 %1, i8* %2, i32 %3, i32* %old)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %old, align 4
  store i32 %4, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %hash.addr, align 4
  %idxprom = zext i32 %5 to i64
  %6 = load %struct.hash_table_t*, %struct.hash_table_t** %h.addr, align 8
  %table = getelementptr inbounds %struct.hash_table_t, %struct.hash_table_t* %6, i32 0, i32 0
  %7 = load %struct.hash_entry_s*, %struct.hash_entry_s** %table, align 8
  %arrayidx = getelementptr inbounds %struct.hash_entry_s, %struct.hash_entry_s* %7, i64 %idxprom
  store %struct.hash_entry_s* %arrayidx, %struct.hash_entry_s** %cur, align 8
  %8 = load %struct.hash_entry_s*, %struct.hash_entry_s** %cur, align 8
  %key1 = getelementptr inbounds %struct.hash_entry_s, %struct.hash_entry_s* %8, i32 0, i32 0
  %9 = load i8*, i8** %key1, align 8
  %cmp2 = icmp eq i8* %9, null
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %10 = load i8*, i8** %key.addr, align 8
  %11 = load %struct.hash_entry_s*, %struct.hash_entry_s** %cur, align 8
  %key4 = getelementptr inbounds %struct.hash_entry_s, %struct.hash_entry_s* %11, i32 0, i32 0
  store i8* %10, i8** %key4, align 8
  %12 = load i32, i32* %len.addr, align 4
  %13 = load %struct.hash_entry_s*, %struct.hash_entry_s** %cur, align 8
  %len5 = getelementptr inbounds %struct.hash_entry_s, %struct.hash_entry_s* %13, i32 0, i32 1
  store i32 %12, i32* %len5, align 4
  %14 = load i32, i32* %val.addr, align 4
  %15 = load %struct.hash_entry_s*, %struct.hash_entry_s** %cur, align 8
  %val6 = getelementptr inbounds %struct.hash_entry_s, %struct.hash_entry_s* %15, i32 0, i32 2
  store i32 %14, i32* %val6, align 4
  br label %if.end.13

if.else:                                          ; preds = %if.end
  %call7 = call i8* @__ckd_calloc__(i64 1, i64 24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 299)
  %16 = bitcast i8* %call7 to %struct.hash_entry_s*
  store %struct.hash_entry_s* %16, %struct.hash_entry_s** %new, align 8
  %17 = load i8*, i8** %key.addr, align 8
  %18 = load %struct.hash_entry_s*, %struct.hash_entry_s** %new, align 8
  %key8 = getelementptr inbounds %struct.hash_entry_s, %struct.hash_entry_s* %18, i32 0, i32 0
  store i8* %17, i8** %key8, align 8
  %19 = load i32, i32* %len.addr, align 4
  %20 = load %struct.hash_entry_s*, %struct.hash_entry_s** %new, align 8
  %len9 = getelementptr inbounds %struct.hash_entry_s, %struct.hash_entry_s* %20, i32 0, i32 1
  store i32 %19, i32* %len9, align 4
  %21 = load i32, i32* %val.addr, align 4
  %22 = load %struct.hash_entry_s*, %struct.hash_entry_s** %new, align 8
  %val10 = getelementptr inbounds %struct.hash_entry_s, %struct.hash_entry_s* %22, i32 0, i32 2
  store i32 %21, i32* %val10, align 4
  %23 = load %struct.hash_entry_s*, %struct.hash_entry_s** %cur, align 8
  %next = getelementptr inbounds %struct.hash_entry_s, %struct.hash_entry_s* %23, i32 0, i32 3
  %24 = load %struct.hash_entry_s*, %struct.hash_entry_s** %next, align 8
  %25 = load %struct.hash_entry_s*, %struct.hash_entry_s** %new, align 8
  %next11 = getelementptr inbounds %struct.hash_entry_s, %struct.hash_entry_s* %25, i32 0, i32 3
  store %struct.hash_entry_s* %24, %struct.hash_entry_s** %next11, align 8
  %26 = load %struct.hash_entry_s*, %struct.hash_entry_s** %new, align 8
  %27 = load %struct.hash_entry_s*, %struct.hash_entry_s** %cur, align 8
  %next12 = getelementptr inbounds %struct.hash_entry_s, %struct.hash_entry_s* %27, i32 0, i32 3
  store %struct.hash_entry_s* %26, %struct.hash_entry_s** %next12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.3
  %28 = load i32, i32* %val.addr, align 4
  store i32 %28, i32* %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define i32 @hash_enter_bkey(%struct.hash_table_t* %h, i8* %key, i32 %len, i32 %val) #0 {
entry:
  %h.addr = alloca %struct.hash_table_t*, align 8
  %key.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  %hash = alloca i32, align 4
  %str = alloca i8*, align 8
  store %struct.hash_table_t* %h, %struct.hash_table_t** %h.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 %val, i32* %val.addr, align 4
  %0 = load i8*, i8** %key.addr, align 8
  %1 = load i32, i32* %len.addr, align 4
  %call = call i8* @makekey(i8* %0, i32 %1, i8* null)
  store i8* %call, i8** %str, align 8
  %2 = load %struct.hash_table_t*, %struct.hash_table_t** %h.addr, align 8
  %3 = load i8*, i8** %str, align 8
  %call1 = call i32 @key2hash(%struct.hash_table_t* %2, i8* %3)
  store i32 %call1, i32* %hash, align 4
  %4 = load i8*, i8** %str, align 8
  call void @ckd_free(i8* %4)
  %5 = load %struct.hash_table_t*, %struct.hash_table_t** %h.addr, align 8
  %6 = load i32, i32* %hash, align 4
  %7 = load i8*, i8** %key.addr, align 8
  %8 = load i32, i32* %len.addr, align 4
  %9 = load i32, i32* %val.addr, align 4
  %call2 = call i32 @enter(%struct.hash_table_t* %5, i32 %6, i8* %7, i32 %8, i32 %9)
  ret i32 %call2
}

; Function Attrs: nounwind uwtable
define %struct.gnode_s* @hash_tolist(%struct.hash_table_t* %h, i32* %count) #0 {
entry:
  %h.addr = alloca %struct.hash_table_t*, align 8
  %count.addr = alloca i32*, align 8
  %g = alloca %struct.gnode_s*, align 8
  %e = alloca %struct.hash_entry_s*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.hash_table_t* %h, %struct.hash_table_t** %h.addr, align 8
  store i32* %count, i32** %count.addr, align 8
  store %struct.gnode_s* null, %struct.gnode_s** %g, align 8
  store i32 0, i32* %j, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.7, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.hash_table_t*, %struct.hash_table_t** %h.addr, align 8
  %size = getelementptr inbounds %struct.hash_table_t, %struct.hash_table_t* %1, i32 0, i32 1
  %2 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end.9

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.hash_table_t*, %struct.hash_table_t** %h.addr, align 8
  %table = getelementptr inbounds %struct.hash_table_t, %struct.hash_table_t* %4, i32 0, i32 0
  %5 = load %struct.hash_entry_s*, %struct.hash_entry_s** %table, align 8
  %arrayidx = getelementptr inbounds %struct.hash_entry_s, %struct.hash_entry_s* %5, i64 %idxprom
  store %struct.hash_entry_s* %arrayidx, %struct.hash_entry_s** %e, align 8
  %6 = load %struct.hash_entry_s*, %struct.hash_entry_s** %e, align 8
  %key = getelementptr inbounds %struct.hash_entry_s, %struct.hash_entry_s* %6, i32 0, i32 0
  %7 = load i8*, i8** %key, align 8
  %cmp1 = icmp ne i8* %7, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load %struct.gnode_s*, %struct.gnode_s** %g, align 8
  %9 = load %struct.hash_entry_s*, %struct.hash_entry_s** %e, align 8
  %10 = bitcast %struct.hash_entry_s* %9 to i8*
  %call = call %struct.gnode_s* @glist_add_ptr(%struct.gnode_s* %8, i8* %10)
  store %struct.gnode_s* %call, %struct.gnode_s** %g, align 8
  %11 = load i32, i32* %j, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %j, align 4
  %12 = load %struct.hash_entry_s*, %struct.hash_entry_s** %e, align 8
  %next = getelementptr inbounds %struct.hash_entry_s, %struct.hash_entry_s* %12, i32 0, i32 3
  %13 = load %struct.hash_entry_s*, %struct.hash_entry_s** %next, align 8
  store %struct.hash_entry_s* %13, %struct.hash_entry_s** %e, align 8
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %if.then
  %14 = load %struct.hash_entry_s*, %struct.hash_entry_s** %e, align 8
  %tobool = icmp ne %struct.hash_entry_s* %14, null
  br i1 %tobool, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.2
  %15 = load %struct.gnode_s*, %struct.gnode_s** %g, align 8
  %16 = load %struct.hash_entry_s*, %struct.hash_entry_s** %e, align 8
  %17 = bitcast %struct.hash_entry_s* %16 to i8*
  %call4 = call %struct.gnode_s* @glist_add_ptr(%struct.gnode_s* %15, i8* %17)
  store %struct.gnode_s* %call4, %struct.gnode_s** %g, align 8
  %18 = load i32, i32* %j, align 4
  %inc5 = add nsw i32 %18, 1
  store i32 %inc5, i32* %j, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %19 = load %struct.hash_entry_s*, %struct.hash_entry_s** %e, align 8
  %next6 = getelementptr inbounds %struct.hash_entry_s, %struct.hash_entry_s* %19, i32 0, i32 3
  %20 = load %struct.hash_entry_s*, %struct.hash_entry_s** %next6, align 8
  store %struct.hash_entry_s* %20, %struct.hash_entry_s** %e, align 8
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %if.end

if.end:                                           ; preds = %for.end, %for.body
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.end
  %21 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %21, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond

for.end.9:                                        ; preds = %for.cond
  %22 = load i32, i32* %j, align 4
  %23 = load i32*, i32** %count.addr, align 8
  store i32 %22, i32* %23, align 4
  %24 = load %struct.gnode_s*, %struct.gnode_s** %g, align 8
  ret %struct.gnode_s* %24
}

declare %struct.gnode_s* @glist_add_ptr(%struct.gnode_s*, i8*) #1

; Function Attrs: nounwind uwtable
define void @hash_free(%struct.hash_table_t* %h) #0 {
entry:
  %h.addr = alloca %struct.hash_table_t*, align 8
  %e = alloca %struct.hash_entry_s*, align 8
  %e2 = alloca %struct.hash_entry_s*, align 8
  %i = alloca i32, align 4
  store %struct.hash_table_t* %h, %struct.hash_table_t** %h.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.4, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.hash_table_t*, %struct.hash_table_t** %h.addr, align 8
  %size = getelementptr inbounds %struct.hash_table_t, %struct.hash_table_t* %1, i32 0, i32 1
  %2 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end.5

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.hash_table_t*, %struct.hash_table_t** %h.addr, align 8
  %table = getelementptr inbounds %struct.hash_table_t, %struct.hash_table_t* %4, i32 0, i32 0
  %5 = load %struct.hash_entry_s*, %struct.hash_entry_s** %table, align 8
  %arrayidx = getelementptr inbounds %struct.hash_entry_s, %struct.hash_entry_s* %5, i64 %idxprom
  %next = getelementptr inbounds %struct.hash_entry_s, %struct.hash_entry_s* %arrayidx, i32 0, i32 3
  %6 = load %struct.hash_entry_s*, %struct.hash_entry_s** %next, align 8
  store %struct.hash_entry_s* %6, %struct.hash_entry_s** %e, align 8
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %7 = load %struct.hash_entry_s*, %struct.hash_entry_s** %e, align 8
  %tobool = icmp ne %struct.hash_entry_s* %7, null
  br i1 %tobool, label %for.body.2, label %for.end

for.body.2:                                       ; preds = %for.cond.1
  %8 = load %struct.hash_entry_s*, %struct.hash_entry_s** %e, align 8
  %next3 = getelementptr inbounds %struct.hash_entry_s, %struct.hash_entry_s* %8, i32 0, i32 3
  %9 = load %struct.hash_entry_s*, %struct.hash_entry_s** %next3, align 8
  store %struct.hash_entry_s* %9, %struct.hash_entry_s** %e2, align 8
  %10 = load %struct.hash_entry_s*, %struct.hash_entry_s** %e, align 8
  %11 = bitcast %struct.hash_entry_s* %10 to i8*
  call void @ckd_free(i8* %11)
  br label %for.inc

for.inc:                                          ; preds = %for.body.2
  %12 = load %struct.hash_entry_s*, %struct.hash_entry_s** %e2, align 8
  store %struct.hash_entry_s* %12, %struct.hash_entry_s** %e, align 8
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.4

for.inc.4:                                        ; preds = %for.end
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.5:                                        ; preds = %for.cond
  %14 = load %struct.hash_table_t*, %struct.hash_table_t** %h.addr, align 8
  %table6 = getelementptr inbounds %struct.hash_table_t, %struct.hash_table_t* %14, i32 0, i32 0
  %15 = load %struct.hash_entry_s*, %struct.hash_entry_s** %table6, align 8
  %16 = bitcast %struct.hash_entry_s* %15 to i8*
  call void @ckd_free(i8* %16)
  %17 = load %struct.hash_table_t*, %struct.hash_table_t** %h.addr, align 8
  %18 = bitcast %struct.hash_table_t* %17 to i8*
  call void @ckd_free(i8* %18)
  ret void
}

declare void @_E__pr_header(i8*, i64, i8*) #1

declare void @_E__pr_warn(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @keycmp_nocase(%struct.hash_entry_s* %entry1, i8* %key) #0 {
entry:
  %retval = alloca i32, align 4
  %entry.addr = alloca %struct.hash_entry_s*, align 8
  %key.addr = alloca i8*, align 8
  %c1 = alloca i8, align 1
  %c2 = alloca i8, align 1
  %i = alloca i32, align 4
  %str = alloca i8*, align 8
  store %struct.hash_entry_s* %entry1, %struct.hash_entry_s** %entry.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load %struct.hash_entry_s*, %struct.hash_entry_s** %entry.addr, align 8
  %key2 = getelementptr inbounds %struct.hash_entry_s, %struct.hash_entry_s* %0, i32 0, i32 0
  %1 = load i8*, i8** %key2, align 8
  store i8* %1, i8** %str, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.hash_entry_s*, %struct.hash_entry_s** %entry.addr, align 8
  %len = getelementptr inbounds %struct.hash_entry_s, %struct.hash_entry_s* %3, i32 0, i32 1
  %4 = load i32, i32* %len, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8*, i8** %str, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %str, align 8
  %6 = load i8, i8* %5, align 1
  store i8 %6, i8* %c1, align 1
  %7 = load i8, i8* %c1, align 1
  %conv = sext i8 %7 to i32
  %cmp3 = icmp sge i32 %conv, 97
  br i1 %cmp3, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %for.body
  %8 = load i8, i8* %c1, align 1
  %conv5 = sext i8 %8 to i32
  %cmp6 = icmp sle i32 %conv5, 122
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %9 = load i8, i8* %c1, align 1
  %conv8 = sext i8 %9 to i32
  %sub = sub nsw i32 %conv8, 32
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %for.body
  %10 = load i8, i8* %c1, align 1
  %conv9 = sext i8 %10 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %conv9, %cond.false ]
  %conv10 = trunc i32 %cond to i8
  store i8 %conv10, i8* %c1, align 1
  %11 = load i8*, i8** %key.addr, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr11, i8** %key.addr, align 8
  %12 = load i8, i8* %11, align 1
  store i8 %12, i8* %c2, align 1
  %13 = load i8, i8* %c2, align 1
  %conv12 = sext i8 %13 to i32
  %cmp13 = icmp sge i32 %conv12, 97
  br i1 %cmp13, label %land.lhs.true.15, label %cond.false.22

land.lhs.true.15:                                 ; preds = %cond.end
  %14 = load i8, i8* %c2, align 1
  %conv16 = sext i8 %14 to i32
  %cmp17 = icmp sle i32 %conv16, 122
  br i1 %cmp17, label %cond.true.19, label %cond.false.22

cond.true.19:                                     ; preds = %land.lhs.true.15
  %15 = load i8, i8* %c2, align 1
  %conv20 = sext i8 %15 to i32
  %sub21 = sub nsw i32 %conv20, 32
  br label %cond.end.24

cond.false.22:                                    ; preds = %land.lhs.true.15, %cond.end
  %16 = load i8, i8* %c2, align 1
  %conv23 = sext i8 %16 to i32
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.22, %cond.true.19
  %cond25 = phi i32 [ %sub21, %cond.true.19 ], [ %conv23, %cond.false.22 ]
  %conv26 = trunc i32 %cond25 to i8
  store i8 %conv26, i8* %c2, align 1
  %17 = load i8, i8* %c1, align 1
  %conv27 = sext i8 %17 to i32
  %18 = load i8, i8* %c2, align 1
  %conv28 = sext i8 %18 to i32
  %cmp29 = icmp ne i32 %conv27, %conv28
  br i1 %cmp29, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.24
  %19 = load i8, i8* %c1, align 1
  %conv31 = sext i8 %19 to i32
  %20 = load i8, i8* %c2, align 1
  %conv32 = sext i8 %20 to i32
  %sub33 = sub nsw i32 %conv31, %conv32
  store i32 %sub33, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end.24
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal i32 @keycmp_case(%struct.hash_entry_s* %entry1, i8* %key) #0 {
entry:
  %retval = alloca i32, align 4
  %entry.addr = alloca %struct.hash_entry_s*, align 8
  %key.addr = alloca i8*, align 8
  %c1 = alloca i8, align 1
  %c2 = alloca i8, align 1
  %i = alloca i32, align 4
  %str = alloca i8*, align 8
  store %struct.hash_entry_s* %entry1, %struct.hash_entry_s** %entry.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load %struct.hash_entry_s*, %struct.hash_entry_s** %entry.addr, align 8
  %key2 = getelementptr inbounds %struct.hash_entry_s, %struct.hash_entry_s* %0, i32 0, i32 0
  %1 = load i8*, i8** %key2, align 8
  store i8* %1, i8** %str, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.hash_entry_s*, %struct.hash_entry_s** %entry.addr, align 8
  %len = getelementptr inbounds %struct.hash_entry_s, %struct.hash_entry_s* %3, i32 0, i32 1
  %4 = load i32, i32* %len, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8*, i8** %str, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %str, align 8
  %6 = load i8, i8* %5, align 1
  store i8 %6, i8* %c1, align 1
  %7 = load i8*, i8** %key.addr, align 8
  %incdec.ptr3 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr3, i8** %key.addr, align 8
  %8 = load i8, i8* %7, align 1
  store i8 %8, i8* %c2, align 1
  %9 = load i8, i8* %c1, align 1
  %conv = sext i8 %9 to i32
  %10 = load i8, i8* %c2, align 1
  %conv4 = sext i8 %10 to i32
  %cmp5 = icmp ne i32 %conv, %conv4
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load i8, i8* %c1, align 1
  %conv7 = sext i8 %11 to i32
  %12 = load i8, i8* %c2, align 1
  %conv8 = sext i8 %12 to i32
  %sub = sub nsw i32 %conv7, %conv8
  store i32 %sub, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
