; ModuleID = 'hashtab.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i32 }

@htab_hash_pointer = global i32 (i8*)* @hash_pointer, align 8
@htab_eq_pointer = global i32 (i8*, i8*)* @eq_pointer, align 8
@higher_prime_number.primes = internal constant [30 x i64] [i64 7, i64 13, i64 31, i64 61, i64 127, i64 251, i64 509, i64 1021, i64 2039, i64 4093, i64 8191, i64 16381, i64 32749, i64 65521, i64 131071, i64 262139, i64 524287, i64 1048573, i64 2097143, i64 4194301, i64 8388593, i64 16777213, i64 33554393, i64 67108859, i64 134217689, i64 268435399, i64 536870909, i64 1073741789, i64 2147483647, i64 4294967291], align 16
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [35 x i8] c"Cannot find prime bigger than %lu\0A\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @hash_pointer(i8* %p) #0 {
entry:
  %p.addr = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %1 = ptrtoint i8* %0 to i64
  %shr = ashr i64 %1, 3
  %conv = trunc i64 %shr to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal i32 @eq_pointer(i8* %p1, i8* %p2) #0 {
entry:
  %p1.addr = alloca i8*, align 8
  %p2.addr = alloca i8*, align 8
  store i8* %p1, i8** %p1.addr, align 8
  store i8* %p2, i8** %p2.addr, align 8
  %0 = load i8*, i8** %p1.addr, align 8
  %1 = load i8*, i8** %p2.addr, align 8
  %cmp = icmp eq i8* %0, %1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define %struct.htab* @htab_create(i64 %size, i32 (i8*)* %hash_f, i32 (i8*, i8*)* %eq_f, void (i8*)* %del_f) #0 {
entry:
  %size.addr = alloca i64, align 8
  %hash_f.addr = alloca i32 (i8*)*, align 8
  %eq_f.addr = alloca i32 (i8*, i8*)*, align 8
  %del_f.addr = alloca void (i8*)*, align 8
  %result = alloca %struct.htab*, align 8
  store i64 %size, i64* %size.addr, align 8
  store i32 (i8*)* %hash_f, i32 (i8*)** %hash_f.addr, align 8
  store i32 (i8*, i8*)* %eq_f, i32 (i8*, i8*)** %eq_f.addr, align 8
  store void (i8*)* %del_f, void (i8*)** %del_f.addr, align 8
  %0 = load i64, i64* %size.addr, align 8
  %call = call i64 @higher_prime_number(i64 %0)
  store i64 %call, i64* %size.addr, align 8
  %call1 = call noalias i8* @xcalloc(i64 1, i64 72)
  %1 = bitcast i8* %call1 to %struct.htab*
  store %struct.htab* %1, %struct.htab** %result, align 8
  %2 = load i64, i64* %size.addr, align 8
  %call2 = call noalias i8* @xcalloc(i64 %2, i64 8)
  %3 = bitcast i8* %call2 to i8**
  %4 = load %struct.htab*, %struct.htab** %result, align 8
  %entries = getelementptr inbounds %struct.htab, %struct.htab* %4, i32 0, i32 3
  store i8** %3, i8*** %entries, align 8
  %5 = load i64, i64* %size.addr, align 8
  %6 = load %struct.htab*, %struct.htab** %result, align 8
  %size3 = getelementptr inbounds %struct.htab, %struct.htab* %6, i32 0, i32 4
  store i64 %5, i64* %size3, align 8
  %7 = load i32 (i8*)*, i32 (i8*)** %hash_f.addr, align 8
  %8 = load %struct.htab*, %struct.htab** %result, align 8
  %hash_f4 = getelementptr inbounds %struct.htab, %struct.htab* %8, i32 0, i32 0
  store i32 (i8*)* %7, i32 (i8*)** %hash_f4, align 8
  %9 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %eq_f.addr, align 8
  %10 = load %struct.htab*, %struct.htab** %result, align 8
  %eq_f5 = getelementptr inbounds %struct.htab, %struct.htab* %10, i32 0, i32 1
  store i32 (i8*, i8*)* %9, i32 (i8*, i8*)** %eq_f5, align 8
  %11 = load void (i8*)*, void (i8*)** %del_f.addr, align 8
  %12 = load %struct.htab*, %struct.htab** %result, align 8
  %del_f6 = getelementptr inbounds %struct.htab, %struct.htab* %12, i32 0, i32 2
  store void (i8*)* %11, void (i8*)** %del_f6, align 8
  %13 = load %struct.htab*, %struct.htab** %result, align 8
  %return_allocation_failure = getelementptr inbounds %struct.htab, %struct.htab* %13, i32 0, i32 9
  store i32 0, i32* %return_allocation_failure, align 4
  %14 = load %struct.htab*, %struct.htab** %result, align 8
  ret %struct.htab* %14
}

; Function Attrs: nounwind uwtable
define internal i64 @higher_prime_number(i64 %n) #0 {
entry:
  %n.addr = alloca i64, align 8
  %low = alloca i64*, align 8
  %high = alloca i64*, align 8
  %mid = alloca i64*, align 8
  store i64 %n, i64* %n.addr, align 8
  store i64* getelementptr inbounds ([30 x i64], [30 x i64]* @higher_prime_number.primes, i32 0, i64 0), i64** %low, align 8
  store i64* getelementptr inbounds ([30 x i64], [30 x i64]* @higher_prime_number.primes, i64 1, i64 0), i64** %high, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i64*, i64** %low, align 8
  %1 = load i64*, i64** %high, align 8
  %cmp = icmp ne i64* %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i64*, i64** %low, align 8
  %3 = load i64*, i64** %high, align 8
  %4 = load i64*, i64** %low, align 8
  %sub.ptr.lhs.cast = ptrtoint i64* %3 to i64
  %sub.ptr.rhs.cast = ptrtoint i64* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %div = sdiv i64 %sub.ptr.div, 2
  %add.ptr = getelementptr inbounds i64, i64* %2, i64 %div
  store i64* %add.ptr, i64** %mid, align 8
  %5 = load i64, i64* %n.addr, align 8
  %6 = load i64*, i64** %mid, align 8
  %7 = load i64, i64* %6, align 8
  %cmp1 = icmp ugt i64 %5, %7
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %8 = load i64*, i64** %mid, align 8
  %add.ptr2 = getelementptr inbounds i64, i64* %8, i64 1
  store i64* %add.ptr2, i64** %low, align 8
  br label %if.end

if.else:                                          ; preds = %while.body
  %9 = load i64*, i64** %mid, align 8
  store i64* %9, i64** %high, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %10 = load i64, i64* %n.addr, align 8
  %11 = load i64*, i64** %low, align 8
  %12 = load i64, i64* %11, align 8
  %cmp3 = icmp ugt i64 %10, %12
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %while.end
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %14 = load i64, i64* %n.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i32 0, i32 0), i64 %14)
  call void @abort() #5
  unreachable

if.end.5:                                         ; preds = %while.end
  %15 = load i64*, i64** %low, align 8
  %16 = load i64, i64* %15, align 8
  ret i64 %16
}

declare noalias i8* @xcalloc(i64, i64) #1

; Function Attrs: nounwind uwtable
define %struct.htab* @htab_try_create(i64 %size, i32 (i8*)* %hash_f, i32 (i8*, i8*)* %eq_f, void (i8*)* %del_f) #0 {
entry:
  %retval = alloca %struct.htab*, align 8
  %size.addr = alloca i64, align 8
  %hash_f.addr = alloca i32 (i8*)*, align 8
  %eq_f.addr = alloca i32 (i8*, i8*)*, align 8
  %del_f.addr = alloca void (i8*)*, align 8
  %result = alloca %struct.htab*, align 8
  store i64 %size, i64* %size.addr, align 8
  store i32 (i8*)* %hash_f, i32 (i8*)** %hash_f.addr, align 8
  store i32 (i8*, i8*)* %eq_f, i32 (i8*, i8*)** %eq_f.addr, align 8
  store void (i8*)* %del_f, void (i8*)** %del_f.addr, align 8
  %0 = load i64, i64* %size.addr, align 8
  %call = call i64 @higher_prime_number(i64 %0)
  store i64 %call, i64* %size.addr, align 8
  %call1 = call noalias i8* @calloc(i64 1, i64 72) #3
  %1 = bitcast i8* %call1 to %struct.htab*
  store %struct.htab* %1, %struct.htab** %result, align 8
  %2 = load %struct.htab*, %struct.htab** %result, align 8
  %cmp = icmp eq %struct.htab* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.htab* null, %struct.htab** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %size.addr, align 8
  %call2 = call noalias i8* @calloc(i64 %3, i64 8) #3
  %4 = bitcast i8* %call2 to i8**
  %5 = load %struct.htab*, %struct.htab** %result, align 8
  %entries = getelementptr inbounds %struct.htab, %struct.htab* %5, i32 0, i32 3
  store i8** %4, i8*** %entries, align 8
  %6 = load %struct.htab*, %struct.htab** %result, align 8
  %entries3 = getelementptr inbounds %struct.htab, %struct.htab* %6, i32 0, i32 3
  %7 = load i8**, i8*** %entries3, align 8
  %cmp4 = icmp eq i8** %7, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %8 = load %struct.htab*, %struct.htab** %result, align 8
  %9 = bitcast %struct.htab* %8 to i8*
  call void @free(i8* %9) #3
  store %struct.htab* null, %struct.htab** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %10 = load i64, i64* %size.addr, align 8
  %11 = load %struct.htab*, %struct.htab** %result, align 8
  %size7 = getelementptr inbounds %struct.htab, %struct.htab* %11, i32 0, i32 4
  store i64 %10, i64* %size7, align 8
  %12 = load i32 (i8*)*, i32 (i8*)** %hash_f.addr, align 8
  %13 = load %struct.htab*, %struct.htab** %result, align 8
  %hash_f8 = getelementptr inbounds %struct.htab, %struct.htab* %13, i32 0, i32 0
  store i32 (i8*)* %12, i32 (i8*)** %hash_f8, align 8
  %14 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %eq_f.addr, align 8
  %15 = load %struct.htab*, %struct.htab** %result, align 8
  %eq_f9 = getelementptr inbounds %struct.htab, %struct.htab* %15, i32 0, i32 1
  store i32 (i8*, i8*)* %14, i32 (i8*, i8*)** %eq_f9, align 8
  %16 = load void (i8*)*, void (i8*)** %del_f.addr, align 8
  %17 = load %struct.htab*, %struct.htab** %result, align 8
  %del_f10 = getelementptr inbounds %struct.htab, %struct.htab* %17, i32 0, i32 2
  store void (i8*)* %16, void (i8*)** %del_f10, align 8
  %18 = load %struct.htab*, %struct.htab** %result, align 8
  %return_allocation_failure = getelementptr inbounds %struct.htab, %struct.htab* %18, i32 0, i32 9
  store i32 1, i32* %return_allocation_failure, align 4
  %19 = load %struct.htab*, %struct.htab** %result, align 8
  store %struct.htab* %19, %struct.htab** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then
  %20 = load %struct.htab*, %struct.htab** %retval
  ret %struct.htab* %20
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define void @htab_delete(%struct.htab* %htab) #0 {
entry:
  %htab.addr = alloca %struct.htab*, align 8
  %i = alloca i32, align 4
  store %struct.htab* %htab, %struct.htab** %htab.addr, align 8
  %0 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %del_f = getelementptr inbounds %struct.htab, %struct.htab* %0, i32 0, i32 2
  %1 = load void (i8*)*, void (i8*)** %del_f, align 8
  %tobool = icmp ne void (i8*)* %1, null
  br i1 %tobool, label %if.then, label %if.end.14

if.then:                                          ; preds = %entry
  %2 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %size = getelementptr inbounds %struct.htab, %struct.htab* %2, i32 0, i32 4
  %3 = load i64, i64* %size, align 8
  %sub = sub i64 %3, 1
  %conv = trunc i64 %sub to i32
  store i32 %conv, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %4, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %entries = getelementptr inbounds %struct.htab, %struct.htab* %6, i32 0, i32 3
  %7 = load i8**, i8*** %entries, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %7, i64 %idxprom
  %8 = load i8*, i8** %arrayidx, align 8
  %cmp2 = icmp ne i8* %8, null
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %9 to i64
  %10 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %entries5 = getelementptr inbounds %struct.htab, %struct.htab* %10, i32 0, i32 3
  %11 = load i8**, i8*** %entries5, align 8
  %arrayidx6 = getelementptr inbounds i8*, i8** %11, i64 %idxprom4
  %12 = load i8*, i8** %arrayidx6, align 8
  %cmp7 = icmp ne i8* %12, inttoptr (i64 1 to i8*)
  br i1 %cmp7, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %land.lhs.true
  %13 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %del_f10 = getelementptr inbounds %struct.htab, %struct.htab* %13, i32 0, i32 2
  %14 = load void (i8*)*, void (i8*)** %del_f10, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %15 to i64
  %16 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %entries12 = getelementptr inbounds %struct.htab, %struct.htab* %16, i32 0, i32 3
  %17 = load i8**, i8*** %entries12, align 8
  %arrayidx13 = getelementptr inbounds i8*, i8** %17, i64 %idxprom11
  %18 = load i8*, i8** %arrayidx13, align 8
  call void %14(i8* %18)
  br label %if.end

if.end:                                           ; preds = %if.then.9, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load i32, i32* %i, align 4
  %dec = add nsw i32 %19, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.14

if.end.14:                                        ; preds = %for.end, %entry
  %20 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %entries15 = getelementptr inbounds %struct.htab, %struct.htab* %20, i32 0, i32 3
  %21 = load i8**, i8*** %entries15, align 8
  %22 = bitcast i8** %21 to i8*
  call void @free(i8* %22) #3
  %23 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %24 = bitcast %struct.htab* %23 to i8*
  call void @free(i8* %24) #3
  ret void
}

; Function Attrs: nounwind uwtable
define void @htab_empty(%struct.htab* %htab) #0 {
entry:
  %htab.addr = alloca %struct.htab*, align 8
  %i = alloca i32, align 4
  store %struct.htab* %htab, %struct.htab** %htab.addr, align 8
  %0 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %del_f = getelementptr inbounds %struct.htab, %struct.htab* %0, i32 0, i32 2
  %1 = load void (i8*)*, void (i8*)** %del_f, align 8
  %tobool = icmp ne void (i8*)* %1, null
  br i1 %tobool, label %if.then, label %if.end.14

if.then:                                          ; preds = %entry
  %2 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %size = getelementptr inbounds %struct.htab, %struct.htab* %2, i32 0, i32 4
  %3 = load i64, i64* %size, align 8
  %sub = sub i64 %3, 1
  %conv = trunc i64 %sub to i32
  store i32 %conv, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %4, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %entries = getelementptr inbounds %struct.htab, %struct.htab* %6, i32 0, i32 3
  %7 = load i8**, i8*** %entries, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %7, i64 %idxprom
  %8 = load i8*, i8** %arrayidx, align 8
  %cmp2 = icmp ne i8* %8, null
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %9 to i64
  %10 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %entries5 = getelementptr inbounds %struct.htab, %struct.htab* %10, i32 0, i32 3
  %11 = load i8**, i8*** %entries5, align 8
  %arrayidx6 = getelementptr inbounds i8*, i8** %11, i64 %idxprom4
  %12 = load i8*, i8** %arrayidx6, align 8
  %cmp7 = icmp ne i8* %12, inttoptr (i64 1 to i8*)
  br i1 %cmp7, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %land.lhs.true
  %13 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %del_f10 = getelementptr inbounds %struct.htab, %struct.htab* %13, i32 0, i32 2
  %14 = load void (i8*)*, void (i8*)** %del_f10, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %15 to i64
  %16 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %entries12 = getelementptr inbounds %struct.htab, %struct.htab* %16, i32 0, i32 3
  %17 = load i8**, i8*** %entries12, align 8
  %arrayidx13 = getelementptr inbounds i8*, i8** %17, i64 %idxprom11
  %18 = load i8*, i8** %arrayidx13, align 8
  call void %14(i8* %18)
  br label %if.end

if.end:                                           ; preds = %if.then.9, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load i32, i32* %i, align 4
  %dec = add nsw i32 %19, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.14

if.end.14:                                        ; preds = %for.end, %entry
  %20 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %entries15 = getelementptr inbounds %struct.htab, %struct.htab* %20, i32 0, i32 3
  %21 = load i8**, i8*** %entries15, align 8
  %22 = bitcast i8** %21 to i8*
  %23 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %size16 = getelementptr inbounds %struct.htab, %struct.htab* %23, i32 0, i32 4
  %24 = load i64, i64* %size16, align 8
  %mul = mul i64 %24, 8
  call void @llvm.memset.p0i8.i64(i8* %22, i8 0, i64 %mul, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define i8* @htab_find_with_hash(%struct.htab* %htab, i8* %element, i32 %hash) #0 {
entry:
  %retval = alloca i8*, align 8
  %htab.addr = alloca %struct.htab*, align 8
  %element.addr = alloca i8*, align 8
  %hash.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %hash2 = alloca i32, align 4
  %size = alloca i64, align 8
  %entry1 = alloca i8*, align 8
  store %struct.htab* %htab, %struct.htab** %htab.addr, align 8
  store i8* %element, i8** %element.addr, align 8
  store i32 %hash, i32* %hash.addr, align 4
  %0 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %searches = getelementptr inbounds %struct.htab, %struct.htab* %0, i32 0, i32 7
  %1 = load i32, i32* %searches, align 4
  %inc = add i32 %1, 1
  store i32 %inc, i32* %searches, align 4
  %2 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %size2 = getelementptr inbounds %struct.htab, %struct.htab* %2, i32 0, i32 4
  %3 = load i64, i64* %size2, align 8
  store i64 %3, i64* %size, align 8
  %4 = load i32, i32* %hash.addr, align 4
  %conv = zext i32 %4 to i64
  %5 = load i64, i64* %size, align 8
  %rem = urem i64 %conv, %5
  %conv3 = trunc i64 %rem to i32
  store i32 %conv3, i32* %index, align 4
  %6 = load i32, i32* %index, align 4
  %idxprom = zext i32 %6 to i64
  %7 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %entries = getelementptr inbounds %struct.htab, %struct.htab* %7, i32 0, i32 3
  %8 = load i8**, i8*** %entries, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %8, i64 %idxprom
  %9 = load i8*, i8** %arrayidx, align 8
  store i8* %9, i8** %entry1, align 8
  %10 = load i8*, i8** %entry1, align 8
  %cmp = icmp eq i8* %10, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %11 = load i8*, i8** %entry1, align 8
  %cmp5 = icmp ne i8* %11, inttoptr (i64 1 to i8*)
  br i1 %cmp5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %12 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %eq_f = getelementptr inbounds %struct.htab, %struct.htab* %12, i32 0, i32 1
  %13 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %eq_f, align 8
  %14 = load i8*, i8** %entry1, align 8
  %15 = load i8*, i8** %element.addr, align 8
  %call = call i32 %13(i8* %14, i8* %15)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %entry
  %16 = load i8*, i8** %entry1, align 8
  store i8* %16, i8** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %17 = load i32, i32* %hash.addr, align 4
  %conv7 = zext i32 %17 to i64
  %18 = load i64, i64* %size, align 8
  %sub = sub i64 %18, 2
  %rem8 = urem i64 %conv7, %sub
  %add = add i64 1, %rem8
  %conv9 = trunc i64 %add to i32
  store i32 %conv9, i32* %hash2, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.33, %if.end
  %19 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %collisions = getelementptr inbounds %struct.htab, %struct.htab* %19, i32 0, i32 8
  %20 = load i32, i32* %collisions, align 4
  %inc10 = add i32 %20, 1
  store i32 %inc10, i32* %collisions, align 4
  %21 = load i32, i32* %hash2, align 4
  %22 = load i32, i32* %index, align 4
  %add11 = add i32 %22, %21
  store i32 %add11, i32* %index, align 4
  %23 = load i32, i32* %index, align 4
  %conv12 = zext i32 %23 to i64
  %24 = load i64, i64* %size, align 8
  %cmp13 = icmp uge i64 %conv12, %24
  br i1 %cmp13, label %if.then.15, label %if.end.19

if.then.15:                                       ; preds = %for.cond
  %25 = load i64, i64* %size, align 8
  %26 = load i32, i32* %index, align 4
  %conv16 = zext i32 %26 to i64
  %sub17 = sub i64 %conv16, %25
  %conv18 = trunc i64 %sub17 to i32
  store i32 %conv18, i32* %index, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.15, %for.cond
  %27 = load i32, i32* %index, align 4
  %idxprom20 = zext i32 %27 to i64
  %28 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %entries21 = getelementptr inbounds %struct.htab, %struct.htab* %28, i32 0, i32 3
  %29 = load i8**, i8*** %entries21, align 8
  %arrayidx22 = getelementptr inbounds i8*, i8** %29, i64 %idxprom20
  %30 = load i8*, i8** %arrayidx22, align 8
  store i8* %30, i8** %entry1, align 8
  %31 = load i8*, i8** %entry1, align 8
  %cmp23 = icmp eq i8* %31, null
  br i1 %cmp23, label %if.then.32, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %if.end.19
  %32 = load i8*, i8** %entry1, align 8
  %cmp26 = icmp ne i8* %32, inttoptr (i64 1 to i8*)
  br i1 %cmp26, label %land.lhs.true.28, label %if.end.33

land.lhs.true.28:                                 ; preds = %lor.lhs.false.25
  %33 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %eq_f29 = getelementptr inbounds %struct.htab, %struct.htab* %33, i32 0, i32 1
  %34 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %eq_f29, align 8
  %35 = load i8*, i8** %entry1, align 8
  %36 = load i8*, i8** %element.addr, align 8
  %call30 = call i32 %34(i8* %35, i8* %36)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %land.lhs.true.28, %if.end.19
  %37 = load i8*, i8** %entry1, align 8
  store i8* %37, i8** %retval
  br label %return

if.end.33:                                        ; preds = %land.lhs.true.28, %lor.lhs.false.25
  br label %for.cond

return:                                           ; preds = %if.then.32, %if.then
  %38 = load i8*, i8** %retval
  ret i8* %38
}

; Function Attrs: nounwind uwtable
define i8* @htab_find(%struct.htab* %htab, i8* %element) #0 {
entry:
  %htab.addr = alloca %struct.htab*, align 8
  %element.addr = alloca i8*, align 8
  store %struct.htab* %htab, %struct.htab** %htab.addr, align 8
  store i8* %element, i8** %element.addr, align 8
  %0 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %1 = load i8*, i8** %element.addr, align 8
  %2 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %hash_f = getelementptr inbounds %struct.htab, %struct.htab* %2, i32 0, i32 0
  %3 = load i32 (i8*)*, i32 (i8*)** %hash_f, align 8
  %4 = load i8*, i8** %element.addr, align 8
  %call = call i32 %3(i8* %4)
  %call1 = call i8* @htab_find_with_hash(%struct.htab* %0, i8* %1, i32 %call)
  ret i8* %call1
}

; Function Attrs: nounwind uwtable
define i8** @htab_find_slot_with_hash(%struct.htab* %htab, i8* %element, i32 %hash, i32 %insert) #0 {
entry:
  %retval = alloca i8**, align 8
  %htab.addr = alloca %struct.htab*, align 8
  %element.addr = alloca i8*, align 8
  %hash.addr = alloca i32, align 4
  %insert.addr = alloca i32, align 4
  %first_deleted_slot = alloca i8**, align 8
  %index = alloca i32, align 4
  %hash2 = alloca i32, align 4
  %size = alloca i64, align 8
  %entry1 = alloca i8*, align 8
  store %struct.htab* %htab, %struct.htab** %htab.addr, align 8
  store i8* %element, i8** %element.addr, align 8
  store i32 %hash, i32* %hash.addr, align 4
  store i32 %insert, i32* %insert.addr, align 4
  %0 = load i32, i32* %insert.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %size2 = getelementptr inbounds %struct.htab, %struct.htab* %1, i32 0, i32 4
  %2 = load i64, i64* %size2, align 8
  %mul = mul i64 %2, 3
  %3 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %n_elements = getelementptr inbounds %struct.htab, %struct.htab* %3, i32 0, i32 5
  %4 = load i64, i64* %n_elements, align 8
  %mul3 = mul i64 %4, 4
  %cmp4 = icmp ule i64 %mul, %mul3
  br i1 %cmp4, label %land.lhs.true.5, label %if.end

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %5 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %call = call i32 @htab_expand(%struct.htab* %5)
  %cmp6 = icmp eq i32 %call, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.5
  store i8** null, i8*** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.5, %land.lhs.true, %entry
  %6 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %size7 = getelementptr inbounds %struct.htab, %struct.htab* %6, i32 0, i32 4
  %7 = load i64, i64* %size7, align 8
  store i64 %7, i64* %size, align 8
  %8 = load i32, i32* %hash.addr, align 4
  %conv = zext i32 %8 to i64
  %9 = load i64, i64* %size, align 8
  %rem = urem i64 %conv, %9
  %conv8 = trunc i64 %rem to i32
  store i32 %conv8, i32* %index, align 4
  %10 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %searches = getelementptr inbounds %struct.htab, %struct.htab* %10, i32 0, i32 7
  %11 = load i32, i32* %searches, align 4
  %inc = add i32 %11, 1
  store i32 %inc, i32* %searches, align 4
  store i8** null, i8*** %first_deleted_slot, align 8
  %12 = load i32, i32* %index, align 4
  %idxprom = zext i32 %12 to i64
  %13 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %entries = getelementptr inbounds %struct.htab, %struct.htab* %13, i32 0, i32 3
  %14 = load i8**, i8*** %entries, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %14, i64 %idxprom
  %15 = load i8*, i8** %arrayidx, align 8
  store i8* %15, i8** %entry1, align 8
  %16 = load i8*, i8** %entry1, align 8
  %cmp9 = icmp eq i8* %16, null
  br i1 %cmp9, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end
  br label %empty_entry

if.else:                                          ; preds = %if.end
  %17 = load i8*, i8** %entry1, align 8
  %cmp12 = icmp eq i8* %17, inttoptr (i64 1 to i8*)
  br i1 %cmp12, label %if.then.14, label %if.else.18

if.then.14:                                       ; preds = %if.else
  %18 = load i32, i32* %index, align 4
  %idxprom15 = zext i32 %18 to i64
  %19 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %entries16 = getelementptr inbounds %struct.htab, %struct.htab* %19, i32 0, i32 3
  %20 = load i8**, i8*** %entries16, align 8
  %arrayidx17 = getelementptr inbounds i8*, i8** %20, i64 %idxprom15
  store i8** %arrayidx17, i8*** %first_deleted_slot, align 8
  br label %if.end.25

if.else.18:                                       ; preds = %if.else
  %21 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %eq_f = getelementptr inbounds %struct.htab, %struct.htab* %21, i32 0, i32 1
  %22 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %eq_f, align 8
  %23 = load i8*, i8** %entry1, align 8
  %24 = load i8*, i8** %element.addr, align 8
  %call19 = call i32 %22(i8* %23, i8* %24)
  %tobool = icmp ne i32 %call19, 0
  br i1 %tobool, label %if.then.20, label %if.end.24

if.then.20:                                       ; preds = %if.else.18
  %25 = load i32, i32* %index, align 4
  %idxprom21 = zext i32 %25 to i64
  %26 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %entries22 = getelementptr inbounds %struct.htab, %struct.htab* %26, i32 0, i32 3
  %27 = load i8**, i8*** %entries22, align 8
  %arrayidx23 = getelementptr inbounds i8*, i8** %27, i64 %idxprom21
  store i8** %arrayidx23, i8*** %retval
  br label %return

if.end.24:                                        ; preds = %if.else.18
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then.14
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25
  %28 = load i32, i32* %hash.addr, align 4
  %conv27 = zext i32 %28 to i64
  %29 = load i64, i64* %size, align 8
  %sub = sub i64 %29, 2
  %rem28 = urem i64 %conv27, %sub
  %add = add i64 1, %rem28
  %conv29 = trunc i64 %add to i32
  store i32 %conv29, i32* %hash2, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.66, %if.end.26
  %30 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %collisions = getelementptr inbounds %struct.htab, %struct.htab* %30, i32 0, i32 8
  %31 = load i32, i32* %collisions, align 4
  %inc30 = add i32 %31, 1
  store i32 %inc30, i32* %collisions, align 4
  %32 = load i32, i32* %hash2, align 4
  %33 = load i32, i32* %index, align 4
  %add31 = add i32 %33, %32
  store i32 %add31, i32* %index, align 4
  %34 = load i32, i32* %index, align 4
  %conv32 = zext i32 %34 to i64
  %35 = load i64, i64* %size, align 8
  %cmp33 = icmp uge i64 %conv32, %35
  br i1 %cmp33, label %if.then.35, label %if.end.39

if.then.35:                                       ; preds = %for.cond
  %36 = load i64, i64* %size, align 8
  %37 = load i32, i32* %index, align 4
  %conv36 = zext i32 %37 to i64
  %sub37 = sub i64 %conv36, %36
  %conv38 = trunc i64 %sub37 to i32
  store i32 %conv38, i32* %index, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.35, %for.cond
  %38 = load i32, i32* %index, align 4
  %idxprom40 = zext i32 %38 to i64
  %39 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %entries41 = getelementptr inbounds %struct.htab, %struct.htab* %39, i32 0, i32 3
  %40 = load i8**, i8*** %entries41, align 8
  %arrayidx42 = getelementptr inbounds i8*, i8** %40, i64 %idxprom40
  %41 = load i8*, i8** %arrayidx42, align 8
  store i8* %41, i8** %entry1, align 8
  %42 = load i8*, i8** %entry1, align 8
  %cmp43 = icmp eq i8* %42, null
  br i1 %cmp43, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %if.end.39
  br label %empty_entry

if.else.46:                                       ; preds = %if.end.39
  %43 = load i8*, i8** %entry1, align 8
  %cmp47 = icmp eq i8* %43, inttoptr (i64 1 to i8*)
  br i1 %cmp47, label %if.then.49, label %if.else.56

if.then.49:                                       ; preds = %if.else.46
  %44 = load i8**, i8*** %first_deleted_slot, align 8
  %tobool50 = icmp ne i8** %44, null
  br i1 %tobool50, label %if.end.55, label %if.then.51

if.then.51:                                       ; preds = %if.then.49
  %45 = load i32, i32* %index, align 4
  %idxprom52 = zext i32 %45 to i64
  %46 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %entries53 = getelementptr inbounds %struct.htab, %struct.htab* %46, i32 0, i32 3
  %47 = load i8**, i8*** %entries53, align 8
  %arrayidx54 = getelementptr inbounds i8*, i8** %47, i64 %idxprom52
  store i8** %arrayidx54, i8*** %first_deleted_slot, align 8
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.51, %if.then.49
  br label %if.end.65

if.else.56:                                       ; preds = %if.else.46
  %48 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %eq_f57 = getelementptr inbounds %struct.htab, %struct.htab* %48, i32 0, i32 1
  %49 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %eq_f57, align 8
  %50 = load i8*, i8** %entry1, align 8
  %51 = load i8*, i8** %element.addr, align 8
  %call58 = call i32 %49(i8* %50, i8* %51)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.then.60, label %if.end.64

if.then.60:                                       ; preds = %if.else.56
  %52 = load i32, i32* %index, align 4
  %idxprom61 = zext i32 %52 to i64
  %53 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %entries62 = getelementptr inbounds %struct.htab, %struct.htab* %53, i32 0, i32 3
  %54 = load i8**, i8*** %entries62, align 8
  %arrayidx63 = getelementptr inbounds i8*, i8** %54, i64 %idxprom61
  store i8** %arrayidx63, i8*** %retval
  br label %return

if.end.64:                                        ; preds = %if.else.56
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.end.55
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65
  br label %for.cond

empty_entry:                                      ; preds = %if.then.45, %if.then.11
  %55 = load i32, i32* %insert.addr, align 4
  %cmp67 = icmp eq i32 %55, 0
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %empty_entry
  store i8** null, i8*** %retval
  br label %return

if.end.70:                                        ; preds = %empty_entry
  %56 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %n_elements71 = getelementptr inbounds %struct.htab, %struct.htab* %56, i32 0, i32 5
  %57 = load i64, i64* %n_elements71, align 8
  %inc72 = add i64 %57, 1
  store i64 %inc72, i64* %n_elements71, align 8
  %58 = load i8**, i8*** %first_deleted_slot, align 8
  %tobool73 = icmp ne i8** %58, null
  br i1 %tobool73, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %if.end.70
  %59 = load i8**, i8*** %first_deleted_slot, align 8
  store i8* null, i8** %59, align 8
  %60 = load i8**, i8*** %first_deleted_slot, align 8
  store i8** %60, i8*** %retval
  br label %return

if.end.75:                                        ; preds = %if.end.70
  %61 = load i32, i32* %index, align 4
  %idxprom76 = zext i32 %61 to i64
  %62 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %entries77 = getelementptr inbounds %struct.htab, %struct.htab* %62, i32 0, i32 3
  %63 = load i8**, i8*** %entries77, align 8
  %arrayidx78 = getelementptr inbounds i8*, i8** %63, i64 %idxprom76
  store i8** %arrayidx78, i8*** %retval
  br label %return

return:                                           ; preds = %if.end.75, %if.then.74, %if.then.69, %if.then.60, %if.then.20, %if.then
  %64 = load i8**, i8*** %retval
  ret i8** %64
}

; Function Attrs: nounwind uwtable
define internal i32 @htab_expand(%struct.htab* %htab) #0 {
entry:
  %retval = alloca i32, align 4
  %htab.addr = alloca %struct.htab*, align 8
  %oentries = alloca i8**, align 8
  %olimit = alloca i8**, align 8
  %p = alloca i8**, align 8
  %nentries = alloca i8**, align 8
  %x = alloca i8*, align 8
  %q = alloca i8**, align 8
  store %struct.htab* %htab, %struct.htab** %htab.addr, align 8
  %0 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %entries = getelementptr inbounds %struct.htab, %struct.htab* %0, i32 0, i32 3
  %1 = load i8**, i8*** %entries, align 8
  store i8** %1, i8*** %oentries, align 8
  %2 = load i8**, i8*** %oentries, align 8
  %3 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %size = getelementptr inbounds %struct.htab, %struct.htab* %3, i32 0, i32 4
  %4 = load i64, i64* %size, align 8
  %add.ptr = getelementptr inbounds i8*, i8** %2, i64 %4
  store i8** %add.ptr, i8*** %olimit, align 8
  %5 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %size1 = getelementptr inbounds %struct.htab, %struct.htab* %5, i32 0, i32 4
  %6 = load i64, i64* %size1, align 8
  %mul = mul i64 %6, 2
  %call = call i64 @higher_prime_number(i64 %mul)
  %7 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %size2 = getelementptr inbounds %struct.htab, %struct.htab* %7, i32 0, i32 4
  store i64 %call, i64* %size2, align 8
  %8 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %return_allocation_failure = getelementptr inbounds %struct.htab, %struct.htab* %8, i32 0, i32 9
  %9 = load i32, i32* %return_allocation_failure, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %size3 = getelementptr inbounds %struct.htab, %struct.htab* %10, i32 0, i32 4
  %11 = load i64, i64* %size3, align 8
  %call4 = call noalias i8* @calloc(i64 %11, i64 8) #3
  %12 = bitcast i8* %call4 to i8**
  store i8** %12, i8*** %nentries, align 8
  %13 = load i8**, i8*** %nentries, align 8
  %cmp = icmp eq i8** %13, null
  br i1 %cmp, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %14 = load i8**, i8*** %nentries, align 8
  %15 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %entries6 = getelementptr inbounds %struct.htab, %struct.htab* %15, i32 0, i32 3
  store i8** %14, i8*** %entries6, align 8
  br label %if.end.10

if.else:                                          ; preds = %entry
  %16 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %size7 = getelementptr inbounds %struct.htab, %struct.htab* %16, i32 0, i32 4
  %17 = load i64, i64* %size7, align 8
  %call8 = call noalias i8* @xcalloc(i64 %17, i64 8)
  %18 = bitcast i8* %call8 to i8**
  %19 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %entries9 = getelementptr inbounds %struct.htab, %struct.htab* %19, i32 0, i32 3
  store i8** %18, i8*** %entries9, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.end
  %20 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %n_deleted = getelementptr inbounds %struct.htab, %struct.htab* %20, i32 0, i32 6
  %21 = load i64, i64* %n_deleted, align 8
  %22 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %n_elements = getelementptr inbounds %struct.htab, %struct.htab* %22, i32 0, i32 5
  %23 = load i64, i64* %n_elements, align 8
  %sub = sub i64 %23, %21
  store i64 %sub, i64* %n_elements, align 8
  %24 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %n_deleted11 = getelementptr inbounds %struct.htab, %struct.htab* %24, i32 0, i32 6
  store i64 0, i64* %n_deleted11, align 8
  %25 = load i8**, i8*** %oentries, align 8
  store i8** %25, i8*** %p, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.10
  %26 = load i8**, i8*** %p, align 8
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %x, align 8
  %28 = load i8*, i8** %x, align 8
  %cmp12 = icmp ne i8* %28, null
  br i1 %cmp12, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %do.body
  %29 = load i8*, i8** %x, align 8
  %cmp13 = icmp ne i8* %29, inttoptr (i64 1 to i8*)
  br i1 %cmp13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %land.lhs.true
  %30 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %31 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %hash_f = getelementptr inbounds %struct.htab, %struct.htab* %31, i32 0, i32 0
  %32 = load i32 (i8*)*, i32 (i8*)** %hash_f, align 8
  %33 = load i8*, i8** %x, align 8
  %call15 = call i32 %32(i8* %33)
  %call16 = call i8** @find_empty_slot_for_expand(%struct.htab* %30, i32 %call15)
  store i8** %call16, i8*** %q, align 8
  %34 = load i8*, i8** %x, align 8
  %35 = load i8**, i8*** %q, align 8
  store i8* %34, i8** %35, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %land.lhs.true, %do.body
  %36 = load i8**, i8*** %p, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %36, i32 1
  store i8** %incdec.ptr, i8*** %p, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end.17
  %37 = load i8**, i8*** %p, align 8
  %38 = load i8**, i8*** %olimit, align 8
  %cmp18 = icmp ult i8** %37, %38
  br i1 %cmp18, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %39 = load i8**, i8*** %oentries, align 8
  %40 = bitcast i8** %39 to i8*
  call void @free(i8* %40) #3
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.5
  %41 = load i32, i32* %retval
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define i8** @htab_find_slot(%struct.htab* %htab, i8* %element, i32 %insert) #0 {
entry:
  %htab.addr = alloca %struct.htab*, align 8
  %element.addr = alloca i8*, align 8
  %insert.addr = alloca i32, align 4
  store %struct.htab* %htab, %struct.htab** %htab.addr, align 8
  store i8* %element, i8** %element.addr, align 8
  store i32 %insert, i32* %insert.addr, align 4
  %0 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %1 = load i8*, i8** %element.addr, align 8
  %2 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %hash_f = getelementptr inbounds %struct.htab, %struct.htab* %2, i32 0, i32 0
  %3 = load i32 (i8*)*, i32 (i8*)** %hash_f, align 8
  %4 = load i8*, i8** %element.addr, align 8
  %call = call i32 %3(i8* %4)
  %5 = load i32, i32* %insert.addr, align 4
  %call1 = call i8** @htab_find_slot_with_hash(%struct.htab* %0, i8* %1, i32 %call, i32 %5)
  ret i8** %call1
}

; Function Attrs: nounwind uwtable
define void @htab_remove_elt(%struct.htab* %htab, i8* %element) #0 {
entry:
  %htab.addr = alloca %struct.htab*, align 8
  %element.addr = alloca i8*, align 8
  %slot = alloca i8**, align 8
  store %struct.htab* %htab, %struct.htab** %htab.addr, align 8
  store i8* %element, i8** %element.addr, align 8
  %0 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %1 = load i8*, i8** %element.addr, align 8
  %call = call i8** @htab_find_slot(%struct.htab* %0, i8* %1, i32 0)
  store i8** %call, i8*** %slot, align 8
  %2 = load i8**, i8*** %slot, align 8
  %3 = load i8*, i8** %2, align 8
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %del_f = getelementptr inbounds %struct.htab, %struct.htab* %4, i32 0, i32 2
  %5 = load void (i8*)*, void (i8*)** %del_f, align 8
  %tobool = icmp ne void (i8*)* %5, null
  br i1 %tobool, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %if.end
  %6 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %del_f2 = getelementptr inbounds %struct.htab, %struct.htab* %6, i32 0, i32 2
  %7 = load void (i8*)*, void (i8*)** %del_f2, align 8
  %8 = load i8**, i8*** %slot, align 8
  %9 = load i8*, i8** %8, align 8
  call void %7(i8* %9)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.1, %if.end
  %10 = load i8**, i8*** %slot, align 8
  store i8* inttoptr (i64 1 to i8*), i8** %10, align 8
  %11 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %n_deleted = getelementptr inbounds %struct.htab, %struct.htab* %11, i32 0, i32 6
  %12 = load i64, i64* %n_deleted, align 8
  %inc = add i64 %12, 1
  store i64 %inc, i64* %n_deleted, align 8
  br label %return

return:                                           ; preds = %if.end.3, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @htab_clear_slot(%struct.htab* %htab, i8** %slot) #0 {
entry:
  %htab.addr = alloca %struct.htab*, align 8
  %slot.addr = alloca i8**, align 8
  store %struct.htab* %htab, %struct.htab** %htab.addr, align 8
  store i8** %slot, i8*** %slot.addr, align 8
  %0 = load i8**, i8*** %slot.addr, align 8
  %1 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %entries = getelementptr inbounds %struct.htab, %struct.htab* %1, i32 0, i32 3
  %2 = load i8**, i8*** %entries, align 8
  %cmp = icmp ult i8** %0, %2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i8**, i8*** %slot.addr, align 8
  %4 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %entries1 = getelementptr inbounds %struct.htab, %struct.htab* %4, i32 0, i32 3
  %5 = load i8**, i8*** %entries1, align 8
  %6 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %size = getelementptr inbounds %struct.htab, %struct.htab* %6, i32 0, i32 4
  %7 = load i64, i64* %size, align 8
  %add.ptr = getelementptr inbounds i8*, i8** %5, i64 %7
  %cmp2 = icmp uge i8** %3, %add.ptr
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %8 = load i8**, i8*** %slot.addr, align 8
  %9 = load i8*, i8** %8, align 8
  %cmp4 = icmp eq i8* %9, null
  br i1 %cmp4, label %if.then, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false.3
  %10 = load i8**, i8*** %slot.addr, align 8
  %11 = load i8*, i8** %10, align 8
  %cmp6 = icmp eq i8* %11, inttoptr (i64 1 to i8*)
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.5, %lor.lhs.false.3, %lor.lhs.false, %entry
  call void @abort() #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false.5
  %12 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %del_f = getelementptr inbounds %struct.htab, %struct.htab* %12, i32 0, i32 2
  %13 = load void (i8*)*, void (i8*)** %del_f, align 8
  %tobool = icmp ne void (i8*)* %13, null
  br i1 %tobool, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %14 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %del_f8 = getelementptr inbounds %struct.htab, %struct.htab* %14, i32 0, i32 2
  %15 = load void (i8*)*, void (i8*)** %del_f8, align 8
  %16 = load i8**, i8*** %slot.addr, align 8
  %17 = load i8*, i8** %16, align 8
  call void %15(i8* %17)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end
  %18 = load i8**, i8*** %slot.addr, align 8
  store i8* inttoptr (i64 1 to i8*), i8** %18, align 8
  %19 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %n_deleted = getelementptr inbounds %struct.htab, %struct.htab* %19, i32 0, i32 6
  %20 = load i64, i64* %n_deleted, align 8
  %inc = add i64 %20, 1
  store i64 %inc, i64* %n_deleted, align 8
  ret void
}

; Function Attrs: noreturn nounwind
declare void @abort() #4

; Function Attrs: nounwind uwtable
define void @htab_traverse(%struct.htab* %htab, i32 (i8**, i8*)* %callback, i8* %info) #0 {
entry:
  %htab.addr = alloca %struct.htab*, align 8
  %callback.addr = alloca i32 (i8**, i8*)*, align 8
  %info.addr = alloca i8*, align 8
  %slot = alloca i8**, align 8
  %limit = alloca i8**, align 8
  %x = alloca i8*, align 8
  store %struct.htab* %htab, %struct.htab** %htab.addr, align 8
  store i32 (i8**, i8*)* %callback, i32 (i8**, i8*)** %callback.addr, align 8
  store i8* %info, i8** %info.addr, align 8
  %0 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %entries = getelementptr inbounds %struct.htab, %struct.htab* %0, i32 0, i32 3
  %1 = load i8**, i8*** %entries, align 8
  store i8** %1, i8*** %slot, align 8
  %2 = load i8**, i8*** %slot, align 8
  %3 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %size = getelementptr inbounds %struct.htab, %struct.htab* %3, i32 0, i32 4
  %4 = load i64, i64* %size, align 8
  %add.ptr = getelementptr inbounds i8*, i8** %2, i64 %4
  store i8** %add.ptr, i8*** %limit, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %5 = load i8**, i8*** %slot, align 8
  %6 = load i8*, i8** %5, align 8
  store i8* %6, i8** %x, align 8
  %7 = load i8*, i8** %x, align 8
  %cmp = icmp ne i8* %7, null
  br i1 %cmp, label %land.lhs.true, label %if.end.3

land.lhs.true:                                    ; preds = %do.body
  %8 = load i8*, i8** %x, align 8
  %cmp1 = icmp ne i8* %8, inttoptr (i64 1 to i8*)
  br i1 %cmp1, label %if.then, label %if.end.3

if.then:                                          ; preds = %land.lhs.true
  %9 = load i32 (i8**, i8*)*, i32 (i8**, i8*)** %callback.addr, align 8
  %10 = load i8**, i8*** %slot, align 8
  %11 = load i8*, i8** %info.addr, align 8
  %call = call i32 %9(i8** %10, i8* %11)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  br label %do.end

if.end:                                           ; preds = %if.then
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %land.lhs.true, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.3
  %12 = load i8**, i8*** %slot, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %12, i32 1
  store i8** %incdec.ptr, i8*** %slot, align 8
  %13 = load i8**, i8*** %limit, align 8
  %cmp4 = icmp ult i8** %incdec.ptr, %13
  br i1 %cmp4, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then.2
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @htab_size(%struct.htab* %htab) #0 {
entry:
  %htab.addr = alloca %struct.htab*, align 8
  store %struct.htab* %htab, %struct.htab** %htab.addr, align 8
  %0 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %size = getelementptr inbounds %struct.htab, %struct.htab* %0, i32 0, i32 4
  %1 = load i64, i64* %size, align 8
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define i64 @htab_elements(%struct.htab* %htab) #0 {
entry:
  %htab.addr = alloca %struct.htab*, align 8
  store %struct.htab* %htab, %struct.htab** %htab.addr, align 8
  %0 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %n_elements = getelementptr inbounds %struct.htab, %struct.htab* %0, i32 0, i32 5
  %1 = load i64, i64* %n_elements, align 8
  %2 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %n_deleted = getelementptr inbounds %struct.htab, %struct.htab* %2, i32 0, i32 6
  %3 = load i64, i64* %n_deleted, align 8
  %sub = sub i64 %1, %3
  ret i64 %sub
}

; Function Attrs: nounwind uwtable
define double @htab_collisions(%struct.htab* %htab) #0 {
entry:
  %retval = alloca double, align 8
  %htab.addr = alloca %struct.htab*, align 8
  store %struct.htab* %htab, %struct.htab** %htab.addr, align 8
  %0 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %searches = getelementptr inbounds %struct.htab, %struct.htab* %0, i32 0, i32 7
  %1 = load i32, i32* %searches, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store double 0.000000e+00, double* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %collisions = getelementptr inbounds %struct.htab, %struct.htab* %2, i32 0, i32 8
  %3 = load i32, i32* %collisions, align 4
  %conv = uitofp i32 %3 to double
  %4 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %searches1 = getelementptr inbounds %struct.htab, %struct.htab* %4, i32 0, i32 7
  %5 = load i32, i32* %searches1, align 4
  %conv2 = uitofp i32 %5 to double
  %div = fdiv double %conv, %conv2
  store double %div, double* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load double, double* %retval
  ret double %6
}

; Function Attrs: nounwind uwtable
define i32 @htab_hash_string(i8* %p) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %str = alloca i8*, align 8
  %r = alloca i32, align 4
  %c = alloca i8, align 1
  store i8* %p, i8** %p.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  store i8* %0, i8** %str, align 8
  store i32 0, i32* %r, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i8*, i8** %str, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 1
  store i8* %incdec.ptr, i8** %str, align 8
  %2 = load i8, i8* %1, align 1
  store i8 %2, i8* %c, align 1
  %conv = zext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %r, align 4
  %mul = mul i32 %3, 67
  %4 = load i8, i8* %c, align 1
  %conv2 = zext i8 %4 to i32
  %add = add i32 %mul, %conv2
  %sub = sub i32 %add, 113
  store i32 %sub, i32* %r, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load i32, i32* %r, align 4
  ret i32 %5
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i8** @find_empty_slot_for_expand(%struct.htab* %htab, i32 %hash) #0 {
entry:
  %retval = alloca i8**, align 8
  %htab.addr = alloca %struct.htab*, align 8
  %hash.addr = alloca i32, align 4
  %size = alloca i64, align 8
  %index = alloca i32, align 4
  %slot = alloca i8**, align 8
  %hash2 = alloca i32, align 4
  store %struct.htab* %htab, %struct.htab** %htab.addr, align 8
  store i32 %hash, i32* %hash.addr, align 4
  %0 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %size1 = getelementptr inbounds %struct.htab, %struct.htab* %0, i32 0, i32 4
  %1 = load i64, i64* %size1, align 8
  store i64 %1, i64* %size, align 8
  %2 = load i32, i32* %hash.addr, align 4
  %conv = zext i32 %2 to i64
  %3 = load i64, i64* %size, align 8
  %rem = urem i64 %conv, %3
  %conv2 = trunc i64 %rem to i32
  store i32 %conv2, i32* %index, align 4
  %4 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %entries = getelementptr inbounds %struct.htab, %struct.htab* %4, i32 0, i32 3
  %5 = load i8**, i8*** %entries, align 8
  %6 = load i32, i32* %index, align 4
  %idx.ext = zext i32 %6 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %5, i64 %idx.ext
  store i8** %add.ptr, i8*** %slot, align 8
  %7 = load i8**, i8*** %slot, align 8
  %8 = load i8*, i8** %7, align 8
  %cmp = icmp eq i8* %8, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load i8**, i8*** %slot, align 8
  store i8** %9, i8*** %retval
  br label %return

if.else:                                          ; preds = %entry
  %10 = load i8**, i8*** %slot, align 8
  %11 = load i8*, i8** %10, align 8
  %cmp4 = icmp eq i8* %11, inttoptr (i64 1 to i8*)
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.else
  call void @abort() #5
  unreachable

if.end:                                           ; preds = %if.else
  br label %if.end.7

if.end.7:                                         ; preds = %if.end
  %12 = load i32, i32* %hash.addr, align 4
  %conv8 = zext i32 %12 to i64
  %13 = load i64, i64* %size, align 8
  %sub = sub i64 %13, 2
  %rem9 = urem i64 %conv8, %sub
  %add = add i64 1, %rem9
  %conv10 = trunc i64 %add to i32
  store i32 %conv10, i32* %hash2, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.31, %if.end.7
  %14 = load i32, i32* %hash2, align 4
  %15 = load i32, i32* %index, align 4
  %add11 = add i32 %15, %14
  store i32 %add11, i32* %index, align 4
  %16 = load i32, i32* %index, align 4
  %conv12 = zext i32 %16 to i64
  %17 = load i64, i64* %size, align 8
  %cmp13 = icmp uge i64 %conv12, %17
  br i1 %cmp13, label %if.then.15, label %if.end.19

if.then.15:                                       ; preds = %for.cond
  %18 = load i64, i64* %size, align 8
  %19 = load i32, i32* %index, align 4
  %conv16 = zext i32 %19 to i64
  %sub17 = sub i64 %conv16, %18
  %conv18 = trunc i64 %sub17 to i32
  store i32 %conv18, i32* %index, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.15, %for.cond
  %20 = load %struct.htab*, %struct.htab** %htab.addr, align 8
  %entries20 = getelementptr inbounds %struct.htab, %struct.htab* %20, i32 0, i32 3
  %21 = load i8**, i8*** %entries20, align 8
  %22 = load i32, i32* %index, align 4
  %idx.ext21 = zext i32 %22 to i64
  %add.ptr22 = getelementptr inbounds i8*, i8** %21, i64 %idx.ext21
  store i8** %add.ptr22, i8*** %slot, align 8
  %23 = load i8**, i8*** %slot, align 8
  %24 = load i8*, i8** %23, align 8
  %cmp23 = icmp eq i8* %24, null
  br i1 %cmp23, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %if.end.19
  %25 = load i8**, i8*** %slot, align 8
  store i8** %25, i8*** %retval
  br label %return

if.else.26:                                       ; preds = %if.end.19
  %26 = load i8**, i8*** %slot, align 8
  %27 = load i8*, i8** %26, align 8
  %cmp27 = icmp eq i8* %27, inttoptr (i64 1 to i8*)
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.else.26
  call void @abort() #5
  unreachable

if.end.30:                                        ; preds = %if.else.26
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30
  br label %for.cond

return:                                           ; preds = %if.then.25, %if.then
  %28 = load i8**, i8*** %retval
  ret i8** %28
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
