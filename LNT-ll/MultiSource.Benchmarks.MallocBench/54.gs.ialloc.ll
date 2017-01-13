; ModuleID = './MultiSource.Benchmarks.MallocBench/54.gs.ialloc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alloc_state_s = type { %struct.alloc_chunk_s, %struct.alloc_chunk_s*, i32, i32, i8* (i32, i32, i8*)*, void (i8*, i32, i32, i8*)*, i64, i64, i32, [32 x i8*], %struct.alloc_block_s*, %struct.alloc_save_s*, i32, %struct.alloc_change_s* }
%struct.alloc_chunk_s = type { i8*, i8*, i8*, i8*, i32, %struct.alloc_chunk_s* }
%struct.alloc_block_s = type { %struct.alloc_block_s*, i32, i32, %struct.alloc_state_s* }
%struct.alloc_save_s = type { %struct.alloc_state_s, %struct.alloc_state_s* }
%struct.alloc_change_s = type { %struct.alloc_change_s*, i8*, i32 }

@as_current = common global %struct.alloc_state_s zeroinitializer, align 8
@.str = private unnamed_addr constant [13 x i8] c"alloc_shrink\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"alloc_save_state\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"alloc_save_change\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"alloc_restore_state(malloc'ed)\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"alloc_restore_state\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"alloc chunk\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"large object\00", align 1

; Function Attrs: nounwind uwtable
define void @alloc_init(i8* (i32, i32, i8*)* %palloc, void (i8*, i32, i32, i8*)* %pfree, i32 %chunk_size) #0 {
entry:
  %palloc.addr = alloca i8* (i32, i32, i8*)*, align 8
  %pfree.addr = alloca void (i8*, i32, i32, i8*)*, align 8
  %chunk_size.addr = alloca i32, align 4
  %ap = alloca %struct.alloc_state_s*, align 8
  store i8* (i32, i32, i8*)* %palloc, i8* (i32, i32, i8*)** %palloc.addr, align 8
  store void (i8*, i32, i32, i8*)* %pfree, void (i8*, i32, i32, i8*)** %pfree.addr, align 8
  store i32 %chunk_size, i32* %chunk_size.addr, align 4
  store %struct.alloc_state_s* @as_current, %struct.alloc_state_s** %ap, align 8
  %0 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %1 = bitcast %struct.alloc_state_s* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 392, i32 8, i1 false)
  %2 = load i32, i32* %chunk_size.addr, align 4
  %3 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %chunk_size1 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %3, i32 0, i32 2
  store i32 %2, i32* %chunk_size1, align 4
  %4 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %big_size = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %4, i32 0, i32 3
  store i32 8, i32* %big_size, align 4
  %5 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %palloc.addr, align 8
  %6 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %palloc2 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %6, i32 0, i32 4
  store i8* (i32, i32, i8*)* %5, i8* (i32, i32, i8*)** %palloc2, align 8
  %7 = load void (i8*, i32, i32, i8*)*, void (i8*, i32, i32, i8*)** %pfree.addr, align 8
  %8 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %pfree3 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %8, i32 0, i32 5
  store void (i8*, i32, i32, i8*)* %7, void (i8*, i32, i32, i8*)** %pfree3, align 8
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define void @alloc_status(i64* %pused, i64* %ptotal) #0 {
entry:
  %pused.addr = alloca i64*, align 8
  %ptotal.addr = alloca i64*, align 8
  %ap = alloca %struct.alloc_state_s*, align 8
  store i64* %pused, i64** %pused.addr, align 8
  store i64* %ptotal, i64** %ptotal.addr, align 8
  store %struct.alloc_state_s* @as_current, %struct.alloc_state_s** %ap, align 8
  %0 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %current = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %0, i32 0, i32 0
  %bot = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %current, i32 0, i32 1
  %1 = load i8*, i8** %bot, align 8
  %2 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %current1 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %2, i32 0, i32 0
  %base = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %current1, i32 0, i32 0
  %3 = load i8*, i8** %base, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %4 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %current2 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %4, i32 0, i32 0
  %limit = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %current2, i32 0, i32 3
  %5 = load i8*, i8** %limit, align 8
  %6 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %current3 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %6, i32 0, i32 0
  %top = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %current3, i32 0, i32 2
  %7 = load i8*, i8** %top, align 8
  %sub.ptr.lhs.cast4 = ptrtoint i8* %5 to i64
  %sub.ptr.rhs.cast5 = ptrtoint i8* %7 to i64
  %sub.ptr.sub6 = sub i64 %sub.ptr.lhs.cast4, %sub.ptr.rhs.cast5
  %add = add nsw i64 %sub.ptr.sub, %sub.ptr.sub6
  %8 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %used = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %8, i32 0, i32 6
  %9 = load i64, i64* %used, align 8
  %add7 = add nsw i64 %add, %9
  %10 = load i64*, i64** %pused.addr, align 8
  store i64 %add7, i64* %10, align 8
  %11 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %current8 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %11, i32 0, i32 0
  %limit9 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %current8, i32 0, i32 3
  %12 = load i8*, i8** %limit9, align 8
  %13 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %current10 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %13, i32 0, i32 0
  %base11 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %current10, i32 0, i32 0
  %14 = load i8*, i8** %base11, align 8
  %sub.ptr.lhs.cast12 = ptrtoint i8* %12 to i64
  %sub.ptr.rhs.cast13 = ptrtoint i8* %14 to i64
  %sub.ptr.sub14 = sub i64 %sub.ptr.lhs.cast12, %sub.ptr.rhs.cast13
  %15 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %total = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %15, i32 0, i32 7
  %16 = load i64, i64* %total, align 8
  %add15 = add nsw i64 %sub.ptr.sub14, %16
  %17 = load i64*, i64** %ptotal.addr, align 8
  store i64 %add15, i64* %17, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @alloc(i32 %num_elts, i32 %elt_size, i8* %client_name) #0 {
entry:
  %retval = alloca i8*, align 8
  %num_elts.addr = alloca i32, align 4
  %elt_size.addr = alloca i32, align 4
  %client_name.addr = alloca i8*, align 8
  %ap = alloca %struct.alloc_state_s*, align 8
  %size = alloca i32, align 4
  %block_size = alloca i32, align 4
  %left = alloca i32, align 4
  %block = alloca i8*, align 8
  %fptr = alloca i8**, align 8
  %block6 = alloca i8*, align 8
  %block26 = alloca i8*, align 8
  store i32 %num_elts, i32* %num_elts.addr, align 4
  store i32 %elt_size, i32* %elt_size.addr, align 4
  store i8* %client_name, i8** %client_name.addr, align 8
  store %struct.alloc_state_s* @as_current, %struct.alloc_state_s** %ap, align 8
  %0 = load i32, i32* %num_elts.addr, align 4
  %1 = load i32, i32* %elt_size.addr, align 4
  %mul = mul i32 %0, %1
  store i32 %mul, i32* %size, align 4
  %2 = load i32, i32* %size, align 4
  %3 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %big_size = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %3, i32 0, i32 3
  %4 = load i32, i32* %big_size, align 4
  %cmp = icmp uge i32 %2, %4
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %5 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %6 = load i32, i32* %size, align 4
  %7 = load i8*, i8** %client_name.addr, align 8
  %call = call i8* @alloc_large(%struct.alloc_state_s* %5, i32 %6, i8* %7)
  store i8* %call, i8** %block, align 8
  %8 = load i8*, i8** %block, align 8
  %cmp1 = icmp ne i8* %8, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %9 = load i8*, i8** %block, align 8
  store i8* %9, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %10 = load i32, i32* %size, align 4
  %add = add i32 %10, 7
  %and = and i32 %add, -8
  store i32 %and, i32* %block_size, align 4
  %11 = load i32, i32* %block_size, align 4
  %cmp4 = icmp ule i32 %11, 255
  br i1 %cmp4, label %if.then.5, label %if.end.10

if.then.5:                                        ; preds = %if.end.3
  %12 = load i32, i32* %block_size, align 4
  %shr = lshr i32 %12, 3
  %idxprom = zext i32 %shr to i64
  %13 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %free = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %13, i32 0, i32 9
  %arrayidx = getelementptr inbounds [32 x i8*], [32 x i8*]* %free, i32 0, i64 %idxprom
  store i8** %arrayidx, i8*** %fptr, align 8
  %14 = load i8**, i8*** %fptr, align 8
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %block6, align 8
  %16 = load i8*, i8** %block6, align 8
  %cmp7 = icmp ne i8* %16, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.5
  %17 = load i8*, i8** %block6, align 8
  %18 = bitcast i8* %17 to i8**
  %19 = load i8*, i8** %18, align 8
  %20 = load i8**, i8*** %fptr, align 8
  store i8* %19, i8** %20, align 8
  %21 = load i8*, i8** %block6, align 8
  store i8* %21, i8** %retval
  br label %return

if.end.9:                                         ; preds = %if.then.5
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.end.3
  %22 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %current = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %22, i32 0, i32 0
  %top = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %current, i32 0, i32 2
  %23 = load i8*, i8** %top, align 8
  %24 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %current11 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %24, i32 0, i32 0
  %bot = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %current11, i32 0, i32 1
  %25 = load i8*, i8** %bot, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %23 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %25 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %left, align 4
  %26 = load i32, i32* %block_size, align 4
  %27 = load i32, i32* %left, align 4
  %cmp12 = icmp ugt i32 %26, %27
  br i1 %cmp12, label %if.then.14, label %if.end.18

if.then.14:                                       ; preds = %if.end.10
  %28 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %call15 = call i32 @alloc_add_chunk(%struct.alloc_state_s* %28)
  %tobool = icmp ne i32 %call15, 0
  br i1 %tobool, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.then.14
  store i8* null, i8** %retval
  br label %return

if.end.17:                                        ; preds = %if.then.14
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end.10
  %29 = load i32, i32* %elt_size.addr, align 4
  %cmp19 = icmp eq i32 %29, 1
  br i1 %cmp19, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.end.18
  %30 = load i32, i32* %size, align 4
  %31 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %current22 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %31, i32 0, i32 0
  %top23 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %current22, i32 0, i32 2
  %32 = load i8*, i8** %top23, align 8
  %idx.ext = zext i32 %30 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %32, i64 %idx.neg
  store i8* %add.ptr, i8** %top23, align 8
  %33 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %current24 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %33, i32 0, i32 0
  %top25 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %current24, i32 0, i32 2
  %34 = load i8*, i8** %top25, align 8
  store i8* %34, i8** %retval
  br label %return

if.else:                                          ; preds = %if.end.18
  %35 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %current27 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %35, i32 0, i32 0
  %bot28 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %current27, i32 0, i32 1
  %36 = load i8*, i8** %bot28, align 8
  store i8* %36, i8** %block26, align 8
  %37 = load i32, i32* %block_size, align 4
  %38 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %current29 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %38, i32 0, i32 0
  %bot30 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %current29, i32 0, i32 1
  %39 = load i8*, i8** %bot30, align 8
  %idx.ext31 = zext i32 %37 to i64
  %add.ptr32 = getelementptr inbounds i8, i8* %39, i64 %idx.ext31
  store i8* %add.ptr32, i8** %bot30, align 8
  %40 = load i8*, i8** %block26, align 8
  store i8* %40, i8** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.21, %if.then.16, %if.then.8, %if.then.2
  %41 = load i8*, i8** %retval
  ret i8* %41
}

; Function Attrs: nounwind uwtable
define i8* @alloc_large(%struct.alloc_state_s* %ap, i32 %size, i8* %client_name) #0 {
entry:
  %retval = alloca i8*, align 8
  %ap.addr = alloca %struct.alloc_state_s*, align 8
  %size.addr = alloca i32, align 4
  %client_name.addr = alloca i8*, align 8
  %mblock = alloca %struct.alloc_block_s*, align 8
  %block = alloca i8*, align 8
  store %struct.alloc_state_s* %ap, %struct.alloc_state_s** %ap.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i8* %client_name, i8** %client_name.addr, align 8
  %0 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap.addr, align 8
  %palloc = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %0, i32 0, i32 4
  %1 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %palloc, align 8
  %2 = load i32, i32* %size.addr, align 4
  %add = add i32 24, %2
  %3 = load i8*, i8** %client_name.addr, align 8
  %call = call i8* %1(i32 1, i32 %add, i8* %3)
  %4 = bitcast i8* %call to %struct.alloc_block_s*
  store %struct.alloc_block_s* %4, %struct.alloc_block_s** %mblock, align 8
  %5 = load %struct.alloc_block_s*, %struct.alloc_block_s** %mblock, align 8
  %cmp = icmp eq %struct.alloc_block_s* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.alloc_block_s*, %struct.alloc_block_s** %mblock, align 8
  %7 = bitcast %struct.alloc_block_s* %6 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 24
  store i8* %add.ptr, i8** %block, align 8
  %8 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap.addr, align 8
  %malloc_chain = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %8, i32 0, i32 10
  %9 = load %struct.alloc_block_s*, %struct.alloc_block_s** %malloc_chain, align 8
  %10 = load %struct.alloc_block_s*, %struct.alloc_block_s** %mblock, align 8
  %next = getelementptr inbounds %struct.alloc_block_s, %struct.alloc_block_s* %10, i32 0, i32 0
  store %struct.alloc_block_s* %9, %struct.alloc_block_s** %next, align 8
  %11 = load i32, i32* %size.addr, align 4
  %12 = load %struct.alloc_block_s*, %struct.alloc_block_s** %mblock, align 8
  %size1 = getelementptr inbounds %struct.alloc_block_s, %struct.alloc_block_s* %12, i32 0, i32 1
  store i32 %11, i32* %size1, align 4
  %13 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap.addr, align 8
  %save_level = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %13, i32 0, i32 12
  %14 = load i32, i32* %save_level, align 4
  %15 = load %struct.alloc_block_s*, %struct.alloc_block_s** %mblock, align 8
  %save_level2 = getelementptr inbounds %struct.alloc_block_s, %struct.alloc_block_s* %15, i32 0, i32 2
  store i32 %14, i32* %save_level2, align 4
  %16 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap.addr, align 8
  %17 = load %struct.alloc_block_s*, %struct.alloc_block_s** %mblock, align 8
  %cap = getelementptr inbounds %struct.alloc_block_s, %struct.alloc_block_s* %17, i32 0, i32 3
  store %struct.alloc_state_s* %16, %struct.alloc_state_s** %cap, align 8
  %18 = load %struct.alloc_block_s*, %struct.alloc_block_s** %mblock, align 8
  %19 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap.addr, align 8
  %malloc_chain3 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %19, i32 0, i32 10
  store %struct.alloc_block_s* %18, %struct.alloc_block_s** %malloc_chain3, align 8
  %20 = load i8*, i8** %block, align 8
  store i8* %20, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %21 = load i8*, i8** %retval
  ret i8* %21
}

; Function Attrs: nounwind uwtable
define i32 @alloc_add_chunk(%struct.alloc_state_s* %ap) #0 {
entry:
  %retval = alloca i32, align 4
  %ap.addr = alloca %struct.alloc_state_s*, align 8
  %space = alloca i8*, align 8
  store %struct.alloc_state_s* %ap, %struct.alloc_state_s** %ap.addr, align 8
  %0 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap.addr, align 8
  %palloc = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %0, i32 0, i32 4
  %1 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %palloc, align 8
  %2 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap.addr, align 8
  %chunk_size = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %2, i32 0, i32 2
  %3 = load i32, i32* %chunk_size, align 4
  %call = call i8* %1(i32 1, i32 %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0))
  store i8* %call, i8** %space, align 8
  %4 = load i8*, i8** %space, align 8
  %cmp = icmp eq i8* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap.addr, align 8
  %used = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %5, i32 0, i32 6
  %6 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap.addr, align 8
  %total = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %6, i32 0, i32 7
  call void @alloc_status(i64* %used, i64* %total)
  %7 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap.addr, align 8
  %num_chunks = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %7, i32 0, i32 8
  %8 = load i32, i32* %num_chunks, align 4
  %inc = add i32 %8, 1
  store i32 %inc, i32* %num_chunks, align 4
  %9 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap.addr, align 8
  %current_ptr = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %9, i32 0, i32 1
  %10 = load %struct.alloc_chunk_s*, %struct.alloc_chunk_s** %current_ptr, align 8
  %cmp1 = icmp ne %struct.alloc_chunk_s* %10, null
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %11 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap.addr, align 8
  %current_ptr3 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %11, i32 0, i32 1
  %12 = load %struct.alloc_chunk_s*, %struct.alloc_chunk_s** %current_ptr3, align 8
  %13 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap.addr, align 8
  %current = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %13, i32 0, i32 0
  %14 = bitcast %struct.alloc_chunk_s* %12 to i8*
  %15 = bitcast %struct.alloc_chunk_s* %current to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 48, i32 8, i1 false)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %16 = load i8*, i8** %space, align 8
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 48
  %17 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap.addr, align 8
  %current5 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %17, i32 0, i32 0
  %bot = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %current5, i32 0, i32 1
  store i8* %add.ptr, i8** %bot, align 8
  %18 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap.addr, align 8
  %current6 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %18, i32 0, i32 0
  %base = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %current6, i32 0, i32 0
  store i8* %add.ptr, i8** %base, align 8
  %19 = load i8*, i8** %space, align 8
  %20 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap.addr, align 8
  %chunk_size7 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %20, i32 0, i32 2
  %21 = load i32, i32* %chunk_size7, align 4
  %idx.ext = zext i32 %21 to i64
  %add.ptr8 = getelementptr inbounds i8, i8* %19, i64 %idx.ext
  %22 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap.addr, align 8
  %current9 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %22, i32 0, i32 0
  %top = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %current9, i32 0, i32 2
  store i8* %add.ptr8, i8** %top, align 8
  %23 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap.addr, align 8
  %current10 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %23, i32 0, i32 0
  %limit = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %current10, i32 0, i32 3
  store i8* %add.ptr8, i8** %limit, align 8
  %24 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap.addr, align 8
  %current_ptr11 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %24, i32 0, i32 1
  %25 = load %struct.alloc_chunk_s*, %struct.alloc_chunk_s** %current_ptr11, align 8
  %26 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap.addr, align 8
  %current12 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %26, i32 0, i32 0
  %next = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %current12, i32 0, i32 5
  store %struct.alloc_chunk_s* %25, %struct.alloc_chunk_s** %next, align 8
  %27 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap.addr, align 8
  %save_level = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %27, i32 0, i32 12
  %28 = load i32, i32* %save_level, align 4
  %29 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap.addr, align 8
  %current13 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %29, i32 0, i32 0
  %save_level14 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %current13, i32 0, i32 4
  store i32 %28, i32* %save_level14, align 4
  %30 = load i8*, i8** %space, align 8
  %31 = bitcast i8* %30 to %struct.alloc_chunk_s*
  %32 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap.addr, align 8
  %current_ptr15 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %32, i32 0, i32 1
  store %struct.alloc_chunk_s* %31, %struct.alloc_chunk_s** %current_ptr15, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define void @alloc_free(i8* %cobj, i32 %num_elts, i32 %elt_size, i8* %client_name) #0 {
entry:
  %cobj.addr = alloca i8*, align 8
  %num_elts.addr = alloca i32, align 4
  %elt_size.addr = alloca i32, align 4
  %client_name.addr = alloca i8*, align 8
  %ap = alloca %struct.alloc_state_s*, align 8
  %size = alloca i32, align 4
  %block_size = alloca i32, align 4
  %level = alloca i32, align 4
  %cp = alloca %struct.alloc_chunk_s*, align 8
  %fptr = alloca i8**, align 8
  store i8* %cobj, i8** %cobj.addr, align 8
  store i32 %num_elts, i32* %num_elts.addr, align 4
  store i32 %elt_size, i32* %elt_size.addr, align 4
  store i8* %client_name, i8** %client_name.addr, align 8
  store %struct.alloc_state_s* @as_current, %struct.alloc_state_s** %ap, align 8
  %0 = load i32, i32* %num_elts.addr, align 4
  %1 = load i32, i32* %elt_size.addr, align 4
  %mul = mul i32 %0, %1
  store i32 %mul, i32* %size, align 4
  %2 = load i32, i32* %size, align 4
  %3 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %big_size = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %3, i32 0, i32 3
  %4 = load i32, i32* %big_size, align 4
  %cmp = icmp uge i32 %2, %4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %cobj.addr, align 8
  %6 = load i32, i32* %size, align 4
  %7 = load i8*, i8** %client_name.addr, align 8
  call void @alloc_free_large(i8* %5, i32 %6, i8* %7)
  br label %if.end.85

if.else:                                          ; preds = %entry
  %8 = load i8*, i8** %cobj.addr, align 8
  %9 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %current = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %9, i32 0, i32 0
  %top = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %current, i32 0, i32 2
  %10 = load i8*, i8** %top, align 8
  %cmp1 = icmp eq i8* %8, %10
  br i1 %cmp1, label %if.then.2, label %if.else.15

if.then.2:                                        ; preds = %if.else
  %11 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %save_level = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %11, i32 0, i32 12
  %12 = load i32, i32* %save_level, align 4
  %cmp3 = icmp eq i32 %12, 0
  br i1 %cmp3, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.2
  %13 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %current4 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %13, i32 0, i32 0
  %save_level5 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %current4, i32 0, i32 4
  %14 = load i32, i32* %save_level5, align 4
  %15 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %save_level6 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %15, i32 0, i32 12
  %16 = load i32, i32* %save_level6, align 4
  %cmp7 = icmp sge i32 %14, %16
  br i1 %cmp7, label %if.then.12, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false
  %17 = load i8*, i8** %cobj.addr, align 8
  %18 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %saved = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %18, i32 0, i32 11
  %19 = load %struct.alloc_save_s*, %struct.alloc_save_s** %saved, align 8
  %state = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %19, i32 0, i32 0
  %current9 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %state, i32 0, i32 0
  %top10 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %current9, i32 0, i32 2
  %20 = load i8*, i8** %top10, align 8
  %cmp11 = icmp ult i8* %17, %20
  br i1 %cmp11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %lor.lhs.false.8, %lor.lhs.false, %if.then.2
  %21 = load i32, i32* %size, align 4
  %22 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %current13 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %22, i32 0, i32 0
  %top14 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %current13, i32 0, i32 2
  %23 = load i8*, i8** %top14, align 8
  %idx.ext = zext i32 %21 to i64
  %add.ptr = getelementptr inbounds i8, i8* %23, i64 %idx.ext
  store i8* %add.ptr, i8** %top14, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.12, %lor.lhs.false.8
  br label %if.end.85

if.else.15:                                       ; preds = %if.else
  %24 = load i8*, i8** %cobj.addr, align 8
  %25 = load i32, i32* %size, align 4
  %add = add i32 %25, 7
  %and = and i32 %add, -8
  store i32 %and, i32* %block_size, align 4
  %idx.ext16 = zext i32 %and to i64
  %add.ptr17 = getelementptr inbounds i8, i8* %24, i64 %idx.ext16
  %26 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %current18 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %26, i32 0, i32 0
  %bot = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %current18, i32 0, i32 1
  %27 = load i8*, i8** %bot, align 8
  %cmp19 = icmp eq i8* %add.ptr17, %27
  br i1 %cmp19, label %if.then.20, label %if.else.38

if.then.20:                                       ; preds = %if.else.15
  %28 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %save_level21 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %28, i32 0, i32 12
  %29 = load i32, i32* %save_level21, align 4
  %cmp22 = icmp eq i32 %29, 0
  br i1 %cmp22, label %if.then.34, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %if.then.20
  %30 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %current24 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %30, i32 0, i32 0
  %save_level25 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %current24, i32 0, i32 4
  %31 = load i32, i32* %save_level25, align 4
  %32 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %save_level26 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %32, i32 0, i32 12
  %33 = load i32, i32* %save_level26, align 4
  %cmp27 = icmp sge i32 %31, %33
  br i1 %cmp27, label %if.then.34, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %lor.lhs.false.23
  %34 = load i8*, i8** %cobj.addr, align 8
  %35 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %saved29 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %35, i32 0, i32 11
  %36 = load %struct.alloc_save_s*, %struct.alloc_save_s** %saved29, align 8
  %state30 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %36, i32 0, i32 0
  %current31 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %state30, i32 0, i32 0
  %bot32 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %current31, i32 0, i32 1
  %37 = load i8*, i8** %bot32, align 8
  %cmp33 = icmp uge i8* %34, %37
  br i1 %cmp33, label %if.then.34, label %if.end.37

if.then.34:                                       ; preds = %lor.lhs.false.28, %lor.lhs.false.23, %if.then.20
  %38 = load i8*, i8** %cobj.addr, align 8
  %39 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %current35 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %39, i32 0, i32 0
  %bot36 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %current35, i32 0, i32 1
  store i8* %38, i8** %bot36, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.34, %lor.lhs.false.28
  br label %if.end.85

if.else.38:                                       ; preds = %if.else.15
  %40 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %current39 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %40, i32 0, i32 0
  %base = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %current39, i32 0, i32 0
  %41 = load i8*, i8** %base, align 8
  %42 = load i8*, i8** %cobj.addr, align 8
  %cmp40 = icmp ule i8* %41, %42
  br i1 %cmp40, label %land.lhs.true, label %if.then.43

land.lhs.true:                                    ; preds = %if.else.38
  %43 = load i8*, i8** %cobj.addr, align 8
  %44 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %current41 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %44, i32 0, i32 0
  %limit = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %current41, i32 0, i32 3
  %45 = load i8*, i8** %limit, align 8
  %cmp42 = icmp ult i8* %43, %45
  br i1 %cmp42, label %if.else.70, label %if.then.43

if.then.43:                                       ; preds = %land.lhs.true, %if.else.38
  %46 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %save_level44 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %46, i32 0, i32 12
  %47 = load i32, i32* %save_level44, align 4
  store i32 %47, i32* %level, align 4
  %48 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %current45 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %48, i32 0, i32 0
  %next = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %current45, i32 0, i32 5
  %49 = load %struct.alloc_chunk_s*, %struct.alloc_chunk_s** %next, align 8
  store %struct.alloc_chunk_s* %49, %struct.alloc_chunk_s** %cp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.43
  %50 = load %struct.alloc_chunk_s*, %struct.alloc_chunk_s** %cp, align 8
  %cmp46 = icmp ne %struct.alloc_chunk_s* %50, null
  br i1 %cmp46, label %if.then.47, label %if.end.68

if.then.47:                                       ; preds = %for.cond
  %51 = load %struct.alloc_chunk_s*, %struct.alloc_chunk_s** %cp, align 8
  %save_level48 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %51, i32 0, i32 4
  %52 = load i32, i32* %save_level48, align 4
  %53 = load i32, i32* %level, align 4
  %sub = sub nsw i32 %52, %53
  switch i32 %sub, label %sw.epilog [
    i32 0, label %sw.bb
    i32 -1, label %sw.bb.60
  ]

sw.bb:                                            ; preds = %if.then.47
  %54 = load %struct.alloc_chunk_s*, %struct.alloc_chunk_s** %cp, align 8
  %base49 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %54, i32 0, i32 0
  %55 = load i8*, i8** %base49, align 8
  %56 = load i8*, i8** %cobj.addr, align 8
  %cmp50 = icmp ule i8* %55, %56
  br i1 %cmp50, label %land.lhs.true.51, label %if.else.59

land.lhs.true.51:                                 ; preds = %sw.bb
  %57 = load i8*, i8** %cobj.addr, align 8
  %58 = load %struct.alloc_chunk_s*, %struct.alloc_chunk_s** %cp, align 8
  %limit52 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %58, i32 0, i32 3
  %59 = load i8*, i8** %limit52, align 8
  %cmp53 = icmp ult i8* %57, %59
  br i1 %cmp53, label %if.then.54, label %if.else.59

if.then.54:                                       ; preds = %land.lhs.true.51
  %60 = load i8*, i8** %cobj.addr, align 8
  %61 = load %struct.alloc_chunk_s*, %struct.alloc_chunk_s** %cp, align 8
  %bot55 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %61, i32 0, i32 1
  %62 = load i8*, i8** %bot55, align 8
  %cmp56 = icmp ult i8* %60, %62
  br i1 %cmp56, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %if.then.54
  br label %pbf

if.else.58:                                       ; preds = %if.then.54
  br label %sw.epilog

if.else.59:                                       ; preds = %land.lhs.true.51, %sw.bb
  br label %for.inc

sw.bb.60:                                         ; preds = %if.then.47
  %63 = load i8*, i8** %cobj.addr, align 8
  %64 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %saved61 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %64, i32 0, i32 11
  %65 = load %struct.alloc_save_s*, %struct.alloc_save_s** %saved61, align 8
  %state62 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %65, i32 0, i32 0
  %current63 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %state62, i32 0, i32 0
  %bot64 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %current63, i32 0, i32 1
  %66 = load i8*, i8** %bot64, align 8
  %cmp65 = icmp ult i8* %63, %66
  br i1 %cmp65, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %sw.bb.60
  br label %pbf

if.end.67:                                        ; preds = %sw.bb.60
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.67, %if.then.47, %if.else.58
  br label %if.end.68

if.end.68:                                        ; preds = %sw.epilog, %for.cond
  br label %if.end.85

for.inc:                                          ; preds = %if.else.59
  %67 = load %struct.alloc_chunk_s*, %struct.alloc_chunk_s** %cp, align 8
  %next69 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %67, i32 0, i32 5
  %68 = load %struct.alloc_chunk_s*, %struct.alloc_chunk_s** %next69, align 8
  store %struct.alloc_chunk_s* %68, %struct.alloc_chunk_s** %cp, align 8
  br label %for.cond

pbf:                                              ; preds = %if.then.66, %if.then.57
  br label %if.end.76

if.else.70:                                       ; preds = %land.lhs.true
  %69 = load i8*, i8** %cobj.addr, align 8
  %70 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %current71 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %70, i32 0, i32 0
  %bot72 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %current71, i32 0, i32 1
  %71 = load i8*, i8** %bot72, align 8
  %cmp73 = icmp uge i8* %69, %71
  br i1 %cmp73, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %if.else.70
  br label %if.end.85

if.end.75:                                        ; preds = %if.else.70
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %pbf
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78
  %72 = load i32, i32* %block_size, align 4
  %cmp80 = icmp ule i32 %72, 255
  br i1 %cmp80, label %land.lhs.true.81, label %if.end.85

land.lhs.true.81:                                 ; preds = %if.end.79
  %73 = load i32, i32* %block_size, align 4
  %conv = zext i32 %73 to i64
  %cmp82 = icmp uge i64 %conv, 8
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %land.lhs.true.81
  %74 = load i32, i32* %block_size, align 4
  %shr = lshr i32 %74, 3
  %idxprom = zext i32 %shr to i64
  %75 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %free = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %75, i32 0, i32 9
  %arrayidx = getelementptr inbounds [32 x i8*], [32 x i8*]* %free, i32 0, i64 %idxprom
  store i8** %arrayidx, i8*** %fptr, align 8
  %76 = load i8**, i8*** %fptr, align 8
  %77 = load i8*, i8** %76, align 8
  %78 = load i8*, i8** %cobj.addr, align 8
  %79 = bitcast i8* %78 to i8**
  store i8* %77, i8** %79, align 8
  %80 = load i8*, i8** %cobj.addr, align 8
  %81 = load i8**, i8*** %fptr, align 8
  store i8* %80, i8** %81, align 8
  br label %if.end.85

if.end.85:                                        ; preds = %if.then, %if.end, %if.end.37, %if.end.68, %if.then.74, %if.then.84, %land.lhs.true.81, %if.end.79
  ret void
}

; Function Attrs: nounwind uwtable
define void @alloc_free_large(i8* %cobj, i32 %size, i8* %client_name) #0 {
entry:
  %cobj.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %client_name.addr = alloca i8*, align 8
  %prev = alloca %struct.alloc_block_s**, align 8
  %mblock = alloca %struct.alloc_block_s*, align 8
  %ap = alloca %struct.alloc_state_s*, align 8
  store i8* %cobj, i8** %cobj.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i8* %client_name, i8** %client_name.addr, align 8
  %0 = load i8*, i8** %cobj.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 -24
  %1 = bitcast i8* %add.ptr to %struct.alloc_block_s*
  store %struct.alloc_block_s* %1, %struct.alloc_block_s** %mblock, align 8
  %2 = load %struct.alloc_block_s*, %struct.alloc_block_s** %mblock, align 8
  %cap = getelementptr inbounds %struct.alloc_block_s, %struct.alloc_block_s* %2, i32 0, i32 3
  %3 = load %struct.alloc_state_s*, %struct.alloc_state_s** %cap, align 8
  store %struct.alloc_state_s* %3, %struct.alloc_state_s** %ap, align 8
  %4 = load %struct.alloc_block_s*, %struct.alloc_block_s** %mblock, align 8
  %save_level = getelementptr inbounds %struct.alloc_block_s, %struct.alloc_block_s* %4, i32 0, i32 2
  %5 = load i32, i32* %save_level, align 4
  %6 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %save_level1 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %6, i32 0, i32 12
  %7 = load i32, i32* %save_level1, align 4
  %cmp = icmp eq i32 %5, %7
  br i1 %cmp, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %8 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %malloc_chain = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %8, i32 0, i32 10
  store %struct.alloc_block_s** %malloc_chain, %struct.alloc_block_s*** %prev, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %9 = load %struct.alloc_block_s**, %struct.alloc_block_s*** %prev, align 8
  %10 = load %struct.alloc_block_s*, %struct.alloc_block_s** %9, align 8
  %cmp2 = icmp ne %struct.alloc_block_s* %10, null
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.alloc_block_s**, %struct.alloc_block_s*** %prev, align 8
  %12 = load %struct.alloc_block_s*, %struct.alloc_block_s** %11, align 8
  store %struct.alloc_block_s* %12, %struct.alloc_block_s** %mblock, align 8
  %13 = load %struct.alloc_block_s*, %struct.alloc_block_s** %mblock, align 8
  %14 = bitcast %struct.alloc_block_s* %13 to i8*
  %add.ptr3 = getelementptr inbounds i8, i8* %14, i64 24
  %15 = load i8*, i8** %cobj.addr, align 8
  %cmp4 = icmp eq i8* %add.ptr3, %15
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %for.body
  %16 = load %struct.alloc_block_s*, %struct.alloc_block_s** %mblock, align 8
  %next = getelementptr inbounds %struct.alloc_block_s, %struct.alloc_block_s* %16, i32 0, i32 0
  %17 = load %struct.alloc_block_s*, %struct.alloc_block_s** %next, align 8
  %18 = load %struct.alloc_block_s**, %struct.alloc_block_s*** %prev, align 8
  store %struct.alloc_block_s* %17, %struct.alloc_block_s** %18, align 8
  %19 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %pfree = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %19, i32 0, i32 5
  %20 = load void (i8*, i32, i32, i8*)*, void (i8*, i32, i32, i8*)** %pfree, align 8
  %21 = load %struct.alloc_block_s*, %struct.alloc_block_s** %mblock, align 8
  %22 = bitcast %struct.alloc_block_s* %21 to i8*
  %23 = load i32, i32* %size.addr, align 4
  %add = add i32 %23, 24
  call void %20(i8* %22, i32 1, i32 %add, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.7

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %24 = load %struct.alloc_block_s*, %struct.alloc_block_s** %mblock, align 8
  %next6 = getelementptr inbounds %struct.alloc_block_s, %struct.alloc_block_s* %24, i32 0, i32 0
  store %struct.alloc_block_s** %next6, %struct.alloc_block_s*** %prev, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %for.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @alloc_grow(i8* %obj, i32 %old_num, i32 %new_num, i32 %elt_size, i8* %client_name) #0 {
entry:
  %retval = alloca i8*, align 8
  %obj.addr = alloca i8*, align 8
  %old_num.addr = alloca i32, align 4
  %new_num.addr = alloca i32, align 4
  %elt_size.addr = alloca i32, align 4
  %client_name.addr = alloca i8*, align 8
  %ap = alloca %struct.alloc_state_s*, align 8
  %old_size = alloca i32, align 4
  %new_size = alloca i32, align 4
  %nobj = alloca i8*, align 8
  %old_block_size = alloca i32, align 4
  %new_block_size = alloca i32, align 4
  %diff = alloca i32, align 4
  %diff30 = alloca i32, align 4
  store i8* %obj, i8** %obj.addr, align 8
  store i32 %old_num, i32* %old_num.addr, align 4
  store i32 %new_num, i32* %new_num.addr, align 4
  store i32 %elt_size, i32* %elt_size.addr, align 4
  store i8* %client_name, i8** %client_name.addr, align 8
  store %struct.alloc_state_s* @as_current, %struct.alloc_state_s** %ap, align 8
  %0 = load i32, i32* %old_num.addr, align 4
  %1 = load i32, i32* %elt_size.addr, align 4
  %mul = mul i32 %0, %1
  store i32 %mul, i32* %old_size, align 4
  %2 = load i32, i32* %new_num.addr, align 4
  %3 = load i32, i32* %elt_size.addr, align 4
  %mul1 = mul i32 %2, %3
  store i32 %mul1, i32* %new_size, align 4
  %4 = load i32, i32* %new_size, align 4
  %5 = load i32, i32* %old_size, align 4
  %cmp = icmp eq i32 %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i8*, i8** %obj.addr, align 8
  store i8* %6, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i32, i32* %new_size, align 4
  %8 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %big_size = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %8, i32 0, i32 3
  %9 = load i32, i32* %big_size, align 4
  %cmp2 = icmp ult i32 %7, %9
  br i1 %cmp2, label %if.then.3, label %if.end.49

if.then.3:                                        ; preds = %if.end
  %10 = load i8*, i8** %obj.addr, align 8
  %11 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %current = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %11, i32 0, i32 0
  %top = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %current, i32 0, i32 2
  %12 = load i8*, i8** %top, align 8
  %cmp4 = icmp eq i8* %10, %12
  br i1 %cmp4, label %if.then.5, label %if.end.20

if.then.5:                                        ; preds = %if.then.3
  %13 = load i32, i32* %new_size, align 4
  %14 = load i32, i32* %old_size, align 4
  %sub = sub i32 %13, %14
  store i32 %sub, i32* %diff, align 4
  %15 = load i32, i32* %diff, align 4
  %conv = zext i32 %15 to i64
  %16 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %current6 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %16, i32 0, i32 0
  %top7 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %current6, i32 0, i32 2
  %17 = load i8*, i8** %top7, align 8
  %18 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %current8 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %18, i32 0, i32 0
  %bot = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %current8, i32 0, i32 1
  %19 = load i8*, i8** %bot, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %17 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %19 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp9 = icmp sle i64 %conv, %sub.ptr.sub
  br i1 %cmp9, label %if.then.11, label %if.end.19

if.then.11:                                       ; preds = %if.then.5
  %20 = load i32, i32* %diff, align 4
  %21 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %current12 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %21, i32 0, i32 0
  %top13 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %current12, i32 0, i32 2
  %22 = load i8*, i8** %top13, align 8
  %idx.ext = zext i32 %20 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 %idx.neg
  store i8* %add.ptr, i8** %top13, align 8
  %23 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %current14 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %23, i32 0, i32 0
  %top15 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %current14, i32 0, i32 2
  %24 = load i8*, i8** %top15, align 8
  %25 = load i8*, i8** %obj.addr, align 8
  %26 = load i32, i32* %old_size, align 4
  %conv16 = zext i32 %26 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 %conv16, i32 1, i1 false)
  %27 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %current17 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %27, i32 0, i32 0
  %top18 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %current17, i32 0, i32 2
  %28 = load i8*, i8** %top18, align 8
  store i8* %28, i8** %retval
  br label %return

if.end.19:                                        ; preds = %if.then.5
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.then.3
  %29 = load i32, i32* %old_size, align 4
  %add = add i32 %29, 7
  %and = and i32 %add, -8
  store i32 %and, i32* %old_block_size, align 4
  %30 = load i32, i32* %new_size, align 4
  %add21 = add i32 %30, 7
  %and22 = and i32 %add21, -8
  store i32 %and22, i32* %new_block_size, align 4
  %31 = load i8*, i8** %obj.addr, align 8
  %32 = load i32, i32* %old_block_size, align 4
  %idx.ext23 = zext i32 %32 to i64
  %add.ptr24 = getelementptr inbounds i8, i8* %31, i64 %idx.ext23
  %33 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %current25 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %33, i32 0, i32 0
  %bot26 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %current25, i32 0, i32 1
  %34 = load i8*, i8** %bot26, align 8
  %cmp27 = icmp eq i8* %add.ptr24, %34
  br i1 %cmp27, label %if.then.29, label %if.end.48

if.then.29:                                       ; preds = %if.end.20
  %35 = load i32, i32* %new_block_size, align 4
  %36 = load i32, i32* %old_block_size, align 4
  %sub31 = sub i32 %35, %36
  store i32 %sub31, i32* %diff30, align 4
  %37 = load i32, i32* %diff30, align 4
  %conv32 = zext i32 %37 to i64
  %38 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %current33 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %38, i32 0, i32 0
  %top34 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %current33, i32 0, i32 2
  %39 = load i8*, i8** %top34, align 8
  %40 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %current35 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %40, i32 0, i32 0
  %bot36 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %current35, i32 0, i32 1
  %41 = load i8*, i8** %bot36, align 8
  %sub.ptr.lhs.cast37 = ptrtoint i8* %39 to i64
  %sub.ptr.rhs.cast38 = ptrtoint i8* %41 to i64
  %sub.ptr.sub39 = sub i64 %sub.ptr.lhs.cast37, %sub.ptr.rhs.cast38
  %cmp40 = icmp sle i64 %conv32, %sub.ptr.sub39
  br i1 %cmp40, label %if.then.42, label %if.end.47

if.then.42:                                       ; preds = %if.then.29
  %42 = load i32, i32* %diff30, align 4
  %43 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %current43 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %43, i32 0, i32 0
  %bot44 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %current43, i32 0, i32 1
  %44 = load i8*, i8** %bot44, align 8
  %idx.ext45 = zext i32 %42 to i64
  %add.ptr46 = getelementptr inbounds i8, i8* %44, i64 %idx.ext45
  store i8* %add.ptr46, i8** %bot44, align 8
  %45 = load i8*, i8** %obj.addr, align 8
  store i8* %45, i8** %retval
  br label %return

if.end.47:                                        ; preds = %if.then.29
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.end.20
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.end
  %46 = load i32, i32* %new_num.addr, align 4
  %47 = load i32, i32* %elt_size.addr, align 4
  %48 = load i8*, i8** %client_name.addr, align 8
  %call = call i8* @alloc(i32 %46, i32 %47, i8* %48)
  store i8* %call, i8** %nobj, align 8
  %49 = load i8*, i8** %nobj, align 8
  %cmp50 = icmp eq i8* %49, null
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end.49
  store i8* null, i8** %retval
  br label %return

if.end.53:                                        ; preds = %if.end.49
  %50 = load i8*, i8** %nobj, align 8
  %51 = load i8*, i8** %obj.addr, align 8
  %52 = load i32, i32* %old_size, align 4
  %conv54 = zext i32 %52 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %50, i8* %51, i64 %conv54, i32 1, i1 false)
  %53 = load i8*, i8** %obj.addr, align 8
  %54 = load i32, i32* %old_num.addr, align 4
  %55 = load i32, i32* %elt_size.addr, align 4
  %56 = load i8*, i8** %client_name.addr, align 8
  call void @alloc_free(i8* %53, i32 %54, i32 %55, i8* %56)
  %57 = load i8*, i8** %nobj, align 8
  store i8* %57, i8** %retval
  br label %return

return:                                           ; preds = %if.end.53, %if.then.52, %if.then.42, %if.then.11, %if.then
  %58 = load i8*, i8** %retval
  ret i8* %58
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define i8* @alloc_shrink(i8* %obj, i32 %old_num, i32 %new_num, i32 %elt_size, i8* %client_name) #0 {
entry:
  %retval = alloca i8*, align 8
  %obj.addr = alloca i8*, align 8
  %old_num.addr = alloca i32, align 4
  %new_num.addr = alloca i32, align 4
  %elt_size.addr = alloca i32, align 4
  %client_name.addr = alloca i8*, align 8
  %ap = alloca %struct.alloc_state_s*, align 8
  %old_size = alloca i32, align 4
  %new_size = alloca i32, align 4
  %nobj = alloca i8*, align 8
  %from = alloca i8*, align 8
  %to = alloca i8*, align 8
  %new_block_size = alloca i32, align 4
  store i8* %obj, i8** %obj.addr, align 8
  store i32 %old_num, i32* %old_num.addr, align 4
  store i32 %new_num, i32* %new_num.addr, align 4
  store i32 %elt_size, i32* %elt_size.addr, align 4
  store i8* %client_name, i8** %client_name.addr, align 8
  store %struct.alloc_state_s* @as_current, %struct.alloc_state_s** %ap, align 8
  %0 = load i32, i32* %old_num.addr, align 4
  %1 = load i32, i32* %elt_size.addr, align 4
  %mul = mul i32 %0, %1
  store i32 %mul, i32* %old_size, align 4
  %2 = load i32, i32* %new_num.addr, align 4
  %3 = load i32, i32* %elt_size.addr, align 4
  %mul1 = mul i32 %2, %3
  store i32 %mul1, i32* %new_size, align 4
  %4 = load i32, i32* %new_size, align 4
  %5 = load i32, i32* %old_size, align 4
  %cmp = icmp eq i32 %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i8*, i8** %obj.addr, align 8
  store i8* %6, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i32, i32* %old_size, align 4
  %8 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %big_size = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %8, i32 0, i32 3
  %9 = load i32, i32* %big_size, align 4
  %cmp2 = icmp uge i32 %7, %9
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %10 = load i32, i32* %new_num.addr, align 4
  %11 = load i32, i32* %elt_size.addr, align 4
  %12 = load i8*, i8** %client_name.addr, align 8
  %call = call i8* @alloc(i32 %10, i32 %11, i8* %12)
  store i8* %call, i8** %nobj, align 8
  %13 = load i8*, i8** %nobj, align 8
  %cmp4 = icmp eq i8* %13, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.3
  %14 = load i8*, i8** %obj.addr, align 8
  store i8* %14, i8** %retval
  br label %return

if.end.6:                                         ; preds = %if.then.3
  %15 = load i8*, i8** %nobj, align 8
  %16 = load i8*, i8** %obj.addr, align 8
  %17 = load i32, i32* %new_size, align 4
  %conv = zext i32 %17 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 %conv, i32 1, i1 false)
  %18 = load i8*, i8** %obj.addr, align 8
  %19 = load i32, i32* %old_num.addr, align 4
  %20 = load i32, i32* %elt_size.addr, align 4
  %21 = load i8*, i8** %client_name.addr, align 8
  call void @alloc_free(i8* %18, i32 %19, i32 %20, i8* %21)
  %22 = load i8*, i8** %nobj, align 8
  store i8* %22, i8** %retval
  br label %return

if.else:                                          ; preds = %if.end
  %23 = load i8*, i8** %obj.addr, align 8
  %24 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %current = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %24, i32 0, i32 0
  %top = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %current, i32 0, i32 2
  %25 = load i8*, i8** %top, align 8
  %cmp7 = icmp eq i8* %23, %25
  br i1 %cmp7, label %if.then.9, label %if.else.17

if.then.9:                                        ; preds = %if.else
  %26 = load i8*, i8** %obj.addr, align 8
  %27 = load i32, i32* %new_size, align 4
  %idx.ext = zext i32 %27 to i64
  %add.ptr = getelementptr inbounds i8, i8* %26, i64 %idx.ext
  store i8* %add.ptr, i8** %from, align 8
  %28 = load i8*, i8** %obj.addr, align 8
  %29 = load i32, i32* %old_size, align 4
  %idx.ext10 = zext i32 %29 to i64
  %add.ptr11 = getelementptr inbounds i8, i8* %28, i64 %idx.ext10
  store i8* %add.ptr11, i8** %to, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.9
  %30 = load i8*, i8** %from, align 8
  %31 = load i8*, i8** %obj.addr, align 8
  %cmp12 = icmp ugt i8* %30, %31
  br i1 %cmp12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %32 = load i8*, i8** %from, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %32, i32 -1
  store i8* %incdec.ptr, i8** %from, align 8
  %33 = load i8, i8* %incdec.ptr, align 1
  %34 = load i8*, i8** %to, align 8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %34, i32 -1
  store i8* %incdec.ptr14, i8** %to, align 8
  store i8 %33, i8* %incdec.ptr14, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %35 = load i8*, i8** %to, align 8
  %36 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %current15 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %36, i32 0, i32 0
  %top16 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %current15, i32 0, i32 2
  store i8* %35, i8** %top16, align 8
  store i8* %35, i8** %obj.addr, align 8
  br label %if.end.22

if.else.17:                                       ; preds = %if.else
  %37 = load i32, i32* %new_size, align 4
  %add = add i32 %37, 7
  %and = and i32 %add, -8
  store i32 %and, i32* %new_block_size, align 4
  %38 = load i8*, i8** %obj.addr, align 8
  %39 = load i32, i32* %new_block_size, align 4
  %idx.ext18 = zext i32 %39 to i64
  %add.ptr19 = getelementptr inbounds i8, i8* %38, i64 %idx.ext18
  %40 = load i32, i32* %old_size, align 4
  %add20 = add i32 %40, 7
  %and21 = and i32 %add20, -8
  %41 = load i32, i32* %new_block_size, align 4
  %sub = sub i32 %and21, %41
  call void @alloc_free(i8* %add.ptr19, i32 1, i32 %sub, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0))
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.17, %while.end
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22
  %42 = load i8*, i8** %obj.addr, align 8
  store i8* %42, i8** %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.end.6, %if.then.5, %if.then
  %43 = load i8*, i8** %retval
  ret i8* %43
}

; Function Attrs: nounwind uwtable
define %struct.alloc_save_s* @alloc_save_state() #0 {
entry:
  %retval = alloca %struct.alloc_save_s*, align 8
  %ap = alloca %struct.alloc_state_s*, align 8
  %save = alloca %struct.alloc_save_s*, align 8
  store %struct.alloc_state_s* @as_current, %struct.alloc_state_s** %ap, align 8
  %call = call i8* @alloc(i32 1, i32 400, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  %0 = bitcast i8* %call to %struct.alloc_save_s*
  store %struct.alloc_save_s* %0, %struct.alloc_save_s** %save, align 8
  %1 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save, align 8
  %cmp = icmp eq %struct.alloc_save_s* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.alloc_save_s* null, %struct.alloc_save_s** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save, align 8
  %state = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %2, i32 0, i32 0
  %3 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %4 = bitcast %struct.alloc_state_s* %state to i8*
  %5 = bitcast %struct.alloc_state_s* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 392, i32 8, i1 false)
  %6 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %free = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %6, i32 0, i32 9
  %arrayidx = getelementptr inbounds [32 x i8*], [32 x i8*]* %free, i32 0, i64 0
  %7 = bitcast i8** %arrayidx to i8*
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 256, i32 8, i1 false)
  %8 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %malloc_chain = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %8, i32 0, i32 10
  store %struct.alloc_block_s* null, %struct.alloc_block_s** %malloc_chain, align 8
  %9 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save, align 8
  %10 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %saved = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %10, i32 0, i32 11
  store %struct.alloc_save_s* %9, %struct.alloc_save_s** %saved, align 8
  %11 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %save_level = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %11, i32 0, i32 12
  %12 = load i32, i32* %save_level, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %save_level, align 4
  %13 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %changes = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %13, i32 0, i32 13
  store %struct.alloc_change_s* null, %struct.alloc_change_s** %changes, align 8
  %14 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save, align 8
  store %struct.alloc_save_s* %14, %struct.alloc_save_s** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %15 = load %struct.alloc_save_s*, %struct.alloc_save_s** %retval
  ret %struct.alloc_save_s* %15
}

; Function Attrs: nounwind uwtable
define i32 @alloc_save_change(i8* %where, i32 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %where.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %ap = alloca %struct.alloc_state_s*, align 8
  %cp = alloca %struct.alloc_change_s*, align 8
  store i8* %where, i8** %where.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store %struct.alloc_state_s* @as_current, %struct.alloc_state_s** %ap, align 8
  %0 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %save_level = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %0, i32 0, i32 12
  %1 = load i32, i32* %save_level, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %size.addr, align 4
  %conv = zext i32 %2 to i64
  %add = add i64 24, %conv
  %conv1 = trunc i64 %add to i32
  %call = call i8* @alloc(i32 1, i32 %conv1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0))
  %3 = bitcast i8* %call to %struct.alloc_change_s*
  store %struct.alloc_change_s* %3, %struct.alloc_change_s** %cp, align 8
  %4 = load %struct.alloc_change_s*, %struct.alloc_change_s** %cp, align 8
  %cmp2 = icmp eq %struct.alloc_change_s* %4, null
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %5 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %changes = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %5, i32 0, i32 13
  %6 = load %struct.alloc_change_s*, %struct.alloc_change_s** %changes, align 8
  %7 = load %struct.alloc_change_s*, %struct.alloc_change_s** %cp, align 8
  %next = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %7, i32 0, i32 0
  store %struct.alloc_change_s* %6, %struct.alloc_change_s** %next, align 8
  %8 = load i8*, i8** %where.addr, align 8
  %9 = load %struct.alloc_change_s*, %struct.alloc_change_s** %cp, align 8
  %where6 = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %9, i32 0, i32 1
  store i8* %8, i8** %where6, align 8
  %10 = load i32, i32* %size.addr, align 4
  %11 = load %struct.alloc_change_s*, %struct.alloc_change_s** %cp, align 8
  %size7 = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %11, i32 0, i32 2
  store i32 %10, i32* %size7, align 4
  %12 = load %struct.alloc_change_s*, %struct.alloc_change_s** %cp, align 8
  %13 = bitcast %struct.alloc_change_s* %12 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 24
  %14 = load i8*, i8** %where.addr, align 8
  %15 = load i32, i32* %size.addr, align 4
  %conv8 = zext i32 %15 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %14, i64 %conv8, i32 1, i1 false)
  %16 = load %struct.alloc_change_s*, %struct.alloc_change_s** %cp, align 8
  %17 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %changes9 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %17, i32 0, i32 13
  store %struct.alloc_change_s* %16, %struct.alloc_change_s** %changes9, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define i32 @alloc_save_level() #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i32 0, i32 12), align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define i32 @alloc_is_since_save(i8* %ptr, %struct.alloc_save_s* %save) #0 {
entry:
  %retval = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %save.addr = alloca %struct.alloc_save_s*, align 8
  %ap = alloca %struct.alloc_state_s*, align 8
  %chunk = alloca %struct.alloc_chunk_s*, align 8
  %asp = alloca %struct.alloc_state_s*, align 8
  %mblk = alloca %struct.alloc_block_s*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store %struct.alloc_save_s* %save, %struct.alloc_save_s** %save.addr, align 8
  %0 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save.addr, align 8
  %cap = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %0, i32 0, i32 1
  %1 = load %struct.alloc_state_s*, %struct.alloc_state_s** %cap, align 8
  store %struct.alloc_state_s* %1, %struct.alloc_state_s** %ap, align 8
  %2 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save.addr, align 8
  %state = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %2, i32 0, i32 0
  %current = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %state, i32 0, i32 0
  %base = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %current, i32 0, i32 0
  %3 = load i8*, i8** %base, align 8
  %4 = load i8*, i8** %ptr.addr, align 8
  %cmp = icmp ule i8* %3, %4
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load i8*, i8** %ptr.addr, align 8
  %6 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save.addr, align 8
  %state1 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %6, i32 0, i32 0
  %current2 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %state1, i32 0, i32 0
  %limit = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %current2, i32 0, i32 3
  %7 = load i8*, i8** %limit, align 8
  %cmp3 = icmp ult i8* %5, %7
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %8 = load i8*, i8** %ptr.addr, align 8
  %9 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save.addr, align 8
  %state4 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %9, i32 0, i32 0
  %current5 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %state4, i32 0, i32 0
  %bot = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %current5, i32 0, i32 1
  %10 = load i8*, i8** %bot, align 8
  %cmp6 = icmp uge i8* %8, %10
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then
  %11 = load i8*, i8** %ptr.addr, align 8
  %12 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save.addr, align 8
  %state7 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %12, i32 0, i32 0
  %current8 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %state7, i32 0, i32 0
  %top = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %current8, i32 0, i32 2
  %13 = load i8*, i8** %top, align 8
  %cmp9 = icmp ult i8* %11, %13
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %14 = phi i1 [ false, %if.then ], [ %cmp9, %land.rhs ]
  %land.ext = zext i1 %14 to i32
  store i32 %land.ext, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %15 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %current10 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %15, i32 0, i32 0
  store %struct.alloc_chunk_s* %current10, %struct.alloc_chunk_s** %chunk, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.20, %if.end
  %16 = load %struct.alloc_chunk_s*, %struct.alloc_chunk_s** %chunk, align 8
  %save_level = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %16, i32 0, i32 4
  %17 = load i32, i32* %save_level, align 4
  %18 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save.addr, align 8
  %state11 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %18, i32 0, i32 0
  %save_level12 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %state11, i32 0, i32 12
  %19 = load i32, i32* %save_level12, align 4
  %cmp13 = icmp sgt i32 %17, %19
  br i1 %cmp13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %20 = load %struct.alloc_chunk_s*, %struct.alloc_chunk_s** %chunk, align 8
  %base14 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %20, i32 0, i32 0
  %21 = load i8*, i8** %base14, align 8
  %22 = load i8*, i8** %ptr.addr, align 8
  %cmp15 = icmp ule i8* %21, %22
  br i1 %cmp15, label %land.lhs.true.16, label %if.end.20

land.lhs.true.16:                                 ; preds = %while.body
  %23 = load i8*, i8** %ptr.addr, align 8
  %24 = load %struct.alloc_chunk_s*, %struct.alloc_chunk_s** %chunk, align 8
  %limit17 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %24, i32 0, i32 3
  %25 = load i8*, i8** %limit17, align 8
  %cmp18 = icmp ult i8* %23, %25
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %land.lhs.true.16
  store i32 1, i32* %retval
  br label %return

if.end.20:                                        ; preds = %land.lhs.true.16, %while.body
  %26 = load %struct.alloc_chunk_s*, %struct.alloc_chunk_s** %chunk, align 8
  %next = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %26, i32 0, i32 5
  %27 = load %struct.alloc_chunk_s*, %struct.alloc_chunk_s** %next, align 8
  store %struct.alloc_chunk_s* %27, %struct.alloc_chunk_s** %chunk, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %28 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  store %struct.alloc_state_s* %28, %struct.alloc_state_s** %asp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.30, %while.end
  %29 = load %struct.alloc_state_s*, %struct.alloc_state_s** %asp, align 8
  %30 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save.addr, align 8
  %state21 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %30, i32 0, i32 0
  %cmp22 = icmp ne %struct.alloc_state_s* %29, %state21
  br i1 %cmp22, label %for.body, label %for.end.32

for.body:                                         ; preds = %for.cond
  %31 = load %struct.alloc_state_s*, %struct.alloc_state_s** %asp, align 8
  %malloc_chain = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %31, i32 0, i32 10
  %32 = load %struct.alloc_block_s*, %struct.alloc_block_s** %malloc_chain, align 8
  store %struct.alloc_block_s* %32, %struct.alloc_block_s** %mblk, align 8
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc, %for.body
  %33 = load %struct.alloc_block_s*, %struct.alloc_block_s** %mblk, align 8
  %cmp24 = icmp ne %struct.alloc_block_s* %33, null
  br i1 %cmp24, label %for.body.25, label %for.end

for.body.25:                                      ; preds = %for.cond.23
  %34 = load %struct.alloc_block_s*, %struct.alloc_block_s** %mblk, align 8
  %35 = bitcast %struct.alloc_block_s* %34 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %35, i64 24
  %36 = load i8*, i8** %ptr.addr, align 8
  %cmp26 = icmp eq i8* %add.ptr, %36
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %for.body.25
  store i32 1, i32* %retval
  br label %return

if.end.28:                                        ; preds = %for.body.25
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %37 = load %struct.alloc_block_s*, %struct.alloc_block_s** %mblk, align 8
  %next29 = getelementptr inbounds %struct.alloc_block_s, %struct.alloc_block_s* %37, i32 0, i32 0
  %38 = load %struct.alloc_block_s*, %struct.alloc_block_s** %next29, align 8
  store %struct.alloc_block_s* %38, %struct.alloc_block_s** %mblk, align 8
  br label %for.cond.23

for.end:                                          ; preds = %for.cond.23
  br label %for.inc.30

for.inc.30:                                       ; preds = %for.end
  %39 = load %struct.alloc_state_s*, %struct.alloc_state_s** %asp, align 8
  %saved = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %39, i32 0, i32 11
  %40 = load %struct.alloc_save_s*, %struct.alloc_save_s** %saved, align 8
  %state31 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %40, i32 0, i32 0
  store %struct.alloc_state_s* %state31, %struct.alloc_state_s** %asp, align 8
  br label %for.cond

for.end.32:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.32, %if.then.27, %if.then.19, %land.end
  %41 = load i32, i32* %retval
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define i32 @alloc_restore_state_check(%struct.alloc_save_s* %save) #0 {
entry:
  %retval = alloca i32, align 4
  %save.addr = alloca %struct.alloc_save_s*, align 8
  %sprev = alloca %struct.alloc_save_s*, align 8
  store %struct.alloc_save_s* %save, %struct.alloc_save_s** %save.addr, align 8
  %0 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save.addr, align 8
  %cap = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %0, i32 0, i32 1
  %1 = load %struct.alloc_state_s*, %struct.alloc_state_s** %cap, align 8
  %saved = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %1, i32 0, i32 11
  %2 = load %struct.alloc_save_s*, %struct.alloc_save_s** %saved, align 8
  store %struct.alloc_save_s* %2, %struct.alloc_save_s** %sprev, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load %struct.alloc_save_s*, %struct.alloc_save_s** %sprev, align 8
  %4 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save.addr, align 8
  %cmp = icmp ne %struct.alloc_save_s* %3, %4
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.alloc_save_s*, %struct.alloc_save_s** %sprev, align 8
  %cmp1 = icmp eq %struct.alloc_save_s* %5, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %6 = load %struct.alloc_save_s*, %struct.alloc_save_s** %sprev, align 8
  %state = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %6, i32 0, i32 0
  %saved2 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %state, i32 0, i32 11
  %7 = load %struct.alloc_save_s*, %struct.alloc_save_s** %saved2, align 8
  store %struct.alloc_save_s* %7, %struct.alloc_save_s** %sprev, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define void @alloc_restore_state(%struct.alloc_save_s* %save) #0 {
entry:
  %save.addr = alloca %struct.alloc_save_s*, align 8
  %ap = alloca %struct.alloc_state_s*, align 8
  %sprev = alloca %struct.alloc_save_s*, align 8
  %cp = alloca %struct.alloc_chunk_s*, align 8
  %mblock = alloca %struct.alloc_block_s*, align 8
  %cp3 = alloca %struct.alloc_change_s*, align 8
  store %struct.alloc_save_s* %save, %struct.alloc_save_s** %save.addr, align 8
  %0 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save.addr, align 8
  %cap = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %0, i32 0, i32 1
  %1 = load %struct.alloc_state_s*, %struct.alloc_state_s** %cap, align 8
  store %struct.alloc_state_s* %1, %struct.alloc_state_s** %ap, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %2 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %saved = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %2, i32 0, i32 11
  %3 = load %struct.alloc_save_s*, %struct.alloc_save_s** %saved, align 8
  store %struct.alloc_save_s* %3, %struct.alloc_save_s** %sprev, align 8
  %4 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %current_ptr = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %4, i32 0, i32 1
  %5 = load %struct.alloc_chunk_s*, %struct.alloc_chunk_s** %current_ptr, align 8
  store %struct.alloc_chunk_s* %5, %struct.alloc_chunk_s** %cp, align 8
  %6 = load %struct.alloc_chunk_s*, %struct.alloc_chunk_s** %cp, align 8
  %7 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %current = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %7, i32 0, i32 0
  %8 = bitcast %struct.alloc_chunk_s* %6 to i8*
  %9 = bitcast %struct.alloc_chunk_s* %current to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 48, i32 8, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body
  %10 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %malloc_chain = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %10, i32 0, i32 10
  %11 = load %struct.alloc_block_s*, %struct.alloc_block_s** %malloc_chain, align 8
  %cmp = icmp ne %struct.alloc_block_s* %11, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %malloc_chain1 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %12, i32 0, i32 10
  %13 = load %struct.alloc_block_s*, %struct.alloc_block_s** %malloc_chain1, align 8
  store %struct.alloc_block_s* %13, %struct.alloc_block_s** %mblock, align 8
  %14 = load %struct.alloc_block_s*, %struct.alloc_block_s** %mblock, align 8
  %next = getelementptr inbounds %struct.alloc_block_s, %struct.alloc_block_s* %14, i32 0, i32 0
  %15 = load %struct.alloc_block_s*, %struct.alloc_block_s** %next, align 8
  %16 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %malloc_chain2 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %16, i32 0, i32 10
  store %struct.alloc_block_s* %15, %struct.alloc_block_s** %malloc_chain2, align 8
  %17 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %pfree = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %17, i32 0, i32 5
  %18 = load void (i8*, i32, i32, i8*)*, void (i8*, i32, i32, i8*)** %pfree, align 8
  %19 = load %struct.alloc_block_s*, %struct.alloc_block_s** %mblock, align 8
  %20 = bitcast %struct.alloc_block_s* %19 to i8*
  %21 = load %struct.alloc_block_s*, %struct.alloc_block_s** %mblock, align 8
  %size = getelementptr inbounds %struct.alloc_block_s, %struct.alloc_block_s* %21, i32 0, i32 1
  %22 = load i32, i32* %size, align 4
  %add = add i32 24, %22
  call void %18(i8* %20, i32 1, i32 %add, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0))
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %23 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %changes = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %23, i32 0, i32 13
  %24 = load %struct.alloc_change_s*, %struct.alloc_change_s** %changes, align 8
  store %struct.alloc_change_s* %24, %struct.alloc_change_s** %cp3, align 8
  br label %while.cond.4

while.cond.4:                                     ; preds = %while.body.5, %while.end
  %25 = load %struct.alloc_change_s*, %struct.alloc_change_s** %cp3, align 8
  %tobool = icmp ne %struct.alloc_change_s* %25, null
  br i1 %tobool, label %while.body.5, label %while.end.8

while.body.5:                                     ; preds = %while.cond.4
  %26 = load %struct.alloc_change_s*, %struct.alloc_change_s** %cp3, align 8
  %where = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %26, i32 0, i32 1
  %27 = load i8*, i8** %where, align 8
  %28 = load %struct.alloc_change_s*, %struct.alloc_change_s** %cp3, align 8
  %29 = bitcast %struct.alloc_change_s* %28 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %29, i64 24
  %30 = load %struct.alloc_change_s*, %struct.alloc_change_s** %cp3, align 8
  %size6 = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %30, i32 0, i32 2
  %31 = load i32, i32* %size6, align 4
  %conv = zext i32 %31 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %add.ptr, i64 %conv, i32 1, i1 false)
  %32 = load %struct.alloc_change_s*, %struct.alloc_change_s** %cp3, align 8
  %next7 = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %32, i32 0, i32 0
  %33 = load %struct.alloc_change_s*, %struct.alloc_change_s** %next7, align 8
  store %struct.alloc_change_s* %33, %struct.alloc_change_s** %cp3, align 8
  br label %while.cond.4

while.end.8:                                      ; preds = %while.cond.4
  %34 = load %struct.alloc_state_s*, %struct.alloc_state_s** %ap, align 8
  %35 = load %struct.alloc_save_s*, %struct.alloc_save_s** %sprev, align 8
  %state = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %35, i32 0, i32 0
  %36 = bitcast %struct.alloc_state_s* %34 to i8*
  %37 = bitcast %struct.alloc_state_s* %state to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 392, i32 8, i1 false)
  %38 = load %struct.alloc_save_s*, %struct.alloc_save_s** %sprev, align 8
  %39 = bitcast %struct.alloc_save_s* %38 to i8*
  call void @alloc_free(i8* %39, i32 1, i32 400, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0))
  br label %do.cond

do.cond:                                          ; preds = %while.end.8
  %40 = load %struct.alloc_save_s*, %struct.alloc_save_s** %sprev, align 8
  %41 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save.addr, align 8
  %cmp9 = icmp ne %struct.alloc_save_s* %40, %41
  br i1 %cmp9, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
