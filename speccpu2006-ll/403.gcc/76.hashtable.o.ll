; ModuleID = 'hashtable.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.ht = type { %struct.obstack, %struct.ht_identifier**, %struct.ht_identifier* (%struct.ht*)*, i32, i32, %struct.cpp_reader*, i32, i32 }
%struct.ht_identifier = type { i32, i8* }
%struct.cpp_reader = type opaque

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [27 x i8] c"\0AString pool\0Aentries\09\09%lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"identifiers\09%lu (%.2f%%)\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"slots\09\09%lu\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"bytes\09\09%lu%c (%lu%c overhead)\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"table size\09%lu%c\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"coll/search\09%.4f\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"ins/search\09%.4f\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"avg. entry\09%.2f bytes (+/- %.2f)\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"longest entry\09%lu\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @gcc_obstack_init(%struct.obstack* %obstack) #0 {
entry:
  %obstack.addr = alloca %struct.obstack*, align 8
  store %struct.obstack* %obstack, %struct.obstack** %obstack.addr, align 8
  %0 = load %struct.obstack*, %struct.obstack** %obstack.addr, align 8
  %call = call i32 @_obstack_begin(%struct.obstack* %0, i32 0, i32 0, i8* (i64)* @xmalloc, void (i8*)* @free)
  ret void
}

declare i32 @_obstack_begin(%struct.obstack*, i32, i32, i8* (i64)*, void (i8*)*) #1

declare noalias i8* @xmalloc(i64) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define %struct.ht* @ht_create(i32 %order) #0 {
entry:
  %order.addr = alloca i32, align 4
  %nslots = alloca i32, align 4
  %table = alloca %struct.ht*, align 8
  store i32 %order, i32* %order.addr, align 4
  %0 = load i32, i32* %order.addr, align 4
  %shl = shl i32 1, %0
  store i32 %shl, i32* %nslots, align 4
  %call = call noalias i8* @xmalloc(i64 128)
  %1 = bitcast i8* %call to %struct.ht*
  store %struct.ht* %1, %struct.ht** %table, align 8
  %2 = load %struct.ht*, %struct.ht** %table, align 8
  %3 = bitcast %struct.ht* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 128, i32 8, i1 false)
  %4 = load %struct.ht*, %struct.ht** %table, align 8
  %stack = getelementptr inbounds %struct.ht, %struct.ht* %4, i32 0, i32 0
  call void @gcc_obstack_init(%struct.obstack* %stack)
  %5 = load %struct.ht*, %struct.ht** %table, align 8
  %stack1 = getelementptr inbounds %struct.ht, %struct.ht* %5, i32 0, i32 0
  %alignment_mask = getelementptr inbounds %struct.obstack, %struct.obstack* %stack1, i32 0, i32 6
  store i32 0, i32* %alignment_mask, align 4
  %6 = load i32, i32* %nslots, align 4
  %conv = zext i32 %6 to i64
  %call2 = call noalias i8* @xcalloc(i64 %conv, i64 8)
  %7 = bitcast i8* %call2 to %struct.ht_identifier**
  %8 = load %struct.ht*, %struct.ht** %table, align 8
  %entries = getelementptr inbounds %struct.ht, %struct.ht* %8, i32 0, i32 1
  store %struct.ht_identifier** %7, %struct.ht_identifier*** %entries, align 8
  %9 = load i32, i32* %nslots, align 4
  %10 = load %struct.ht*, %struct.ht** %table, align 8
  %nslots3 = getelementptr inbounds %struct.ht, %struct.ht* %10, i32 0, i32 3
  store i32 %9, i32* %nslots3, align 4
  %11 = load %struct.ht*, %struct.ht** %table, align 8
  ret %struct.ht* %11
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

declare noalias i8* @xcalloc(i64, i64) #1

; Function Attrs: nounwind uwtable
define void @ht_destroy(%struct.ht* %table) #0 {
entry:
  %table.addr = alloca %struct.ht*, align 8
  %__o = alloca %struct.obstack*, align 8
  %__obj = alloca i8*, align 8
  store %struct.ht* %table, %struct.ht** %table.addr, align 8
  %0 = load %struct.ht*, %struct.ht** %table.addr, align 8
  %stack = getelementptr inbounds %struct.ht, %struct.ht* %0, i32 0, i32 0
  store %struct.obstack* %stack, %struct.obstack** %__o, align 8
  store i8* null, i8** %__obj, align 8
  %1 = load i8*, i8** %__obj, align 8
  %2 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk = getelementptr inbounds %struct.obstack, %struct.obstack* %2, i32 0, i32 1
  %3 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk, align 8
  %4 = bitcast %struct._obstack_chunk* %3 to i8*
  %cmp = icmp ugt i8* %1, %4
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %5 = load i8*, i8** %__obj, align 8
  %6 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %6, i32 0, i32 4
  %7 = load i8*, i8** %chunk_limit, align 8
  %cmp1 = icmp ult i8* %5, %7
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %8 = load i8*, i8** %__obj, align 8
  %9 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %object_base = getelementptr inbounds %struct.obstack, %struct.obstack* %9, i32 0, i32 2
  store i8* %8, i8** %object_base, align 8
  %10 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %10, i32 0, i32 3
  store i8* %8, i8** %next_free, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %11 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %12 = load i8*, i8** %__obj, align 8
  call void @obstack_free(%struct.obstack* %11, i8* %12)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load %struct.ht*, %struct.ht** %table.addr, align 8
  %entries = getelementptr inbounds %struct.ht, %struct.ht* %13, i32 0, i32 1
  %14 = load %struct.ht_identifier**, %struct.ht_identifier*** %entries, align 8
  %15 = bitcast %struct.ht_identifier** %14 to i8*
  call void @free(i8* %15) #3
  %16 = load %struct.ht*, %struct.ht** %table.addr, align 8
  %17 = bitcast %struct.ht* %16 to i8*
  call void @free(i8* %17) #3
  ret void
}

declare void @obstack_free(%struct.obstack*, i8*) #1

; Function Attrs: nounwind uwtable
define %struct.ht_identifier* @ht_lookup(%struct.ht* %table, i8* %str, i32 %len, i32 %insert) #0 {
entry:
  %retval = alloca %struct.ht_identifier*, align 8
  %table.addr = alloca %struct.ht*, align 8
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %insert.addr = alloca i32, align 4
  %hash = alloca i32, align 4
  %hash2 = alloca i32, align 4
  %index = alloca i32, align 4
  %sizemask = alloca i64, align 8
  %node = alloca %struct.ht_identifier*, align 8
  %__o = alloca %struct.obstack*, align 8
  %__obj = alloca i8*, align 8
  %__h = alloca %struct.obstack*, align 8
  %__o43 = alloca %struct.obstack*, align 8
  %__len = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %__o1 = alloca %struct.obstack*, align 8
  %value = alloca i8*, align 8
  %tmp91 = alloca i8*, align 8
  store %struct.ht* %table, %struct.ht** %table.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 %insert, i32* %insert.addr, align 4
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i32, i32* %len.addr, align 4
  %call = call i32 @calc_hash(i8* %0, i32 %1)
  store i32 %call, i32* %hash, align 4
  %2 = load %struct.ht*, %struct.ht** %table.addr, align 8
  %nslots = getelementptr inbounds %struct.ht, %struct.ht* %2, i32 0, i32 3
  %3 = load i32, i32* %nslots, align 4
  %sub = sub i32 %3, 1
  %conv = zext i32 %sub to i64
  store i64 %conv, i64* %sizemask, align 8
  %4 = load i32, i32* %hash, align 4
  %conv1 = zext i32 %4 to i64
  %5 = load i64, i64* %sizemask, align 8
  %and = and i64 %conv1, %5
  %conv2 = trunc i64 %and to i32
  store i32 %conv2, i32* %index, align 4
  %6 = load i32, i32* %hash, align 4
  %mul = mul i32 %6, 17
  %conv3 = zext i32 %mul to i64
  %7 = load i64, i64* %sizemask, align 8
  %and4 = and i64 %conv3, %7
  %or = or i64 %and4, 1
  %conv5 = trunc i64 %or to i32
  store i32 %conv5, i32* %hash2, align 4
  %8 = load %struct.ht*, %struct.ht** %table.addr, align 8
  %searches = getelementptr inbounds %struct.ht, %struct.ht* %8, i32 0, i32 6
  %9 = load i32, i32* %searches, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %searches, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.25, %entry
  %10 = load i32, i32* %index, align 4
  %idxprom = zext i32 %10 to i64
  %11 = load %struct.ht*, %struct.ht** %table.addr, align 8
  %entries = getelementptr inbounds %struct.ht, %struct.ht* %11, i32 0, i32 1
  %12 = load %struct.ht_identifier**, %struct.ht_identifier*** %entries, align 8
  %arrayidx = getelementptr inbounds %struct.ht_identifier*, %struct.ht_identifier** %12, i64 %idxprom
  %13 = load %struct.ht_identifier*, %struct.ht_identifier** %arrayidx, align 8
  store %struct.ht_identifier* %13, %struct.ht_identifier** %node, align 8
  %14 = load %struct.ht_identifier*, %struct.ht_identifier** %node, align 8
  %cmp = icmp eq %struct.ht_identifier* %14, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  %15 = load %struct.ht_identifier*, %struct.ht_identifier** %node, align 8
  %len7 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %15, i32 0, i32 0
  %16 = load i32, i32* %len7, align 4
  %17 = load i32, i32* %len.addr, align 4
  %cmp8 = icmp eq i32 %16, %17
  br i1 %cmp8, label %land.lhs.true, label %if.end.25

land.lhs.true:                                    ; preds = %if.end
  %18 = load %struct.ht_identifier*, %struct.ht_identifier** %node, align 8
  %str10 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %18, i32 0, i32 1
  %19 = load i8*, i8** %str10, align 8
  %20 = load i8*, i8** %str.addr, align 8
  %21 = load i32, i32* %len.addr, align 4
  %conv11 = zext i32 %21 to i64
  %call12 = call i32 @memcmp(i8* %19, i8* %20, i64 %conv11) #6
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %if.end.25, label %if.then.13

if.then.13:                                       ; preds = %land.lhs.true
  %22 = load i32, i32* %insert.addr, align 4
  %cmp14 = icmp eq i32 %22, 2
  br i1 %cmp14, label %if.then.16, label %if.end.24

if.then.16:                                       ; preds = %if.then.13
  %23 = load %struct.ht*, %struct.ht** %table.addr, align 8
  %stack = getelementptr inbounds %struct.ht, %struct.ht* %23, i32 0, i32 0
  store %struct.obstack* %stack, %struct.obstack** %__o, align 8
  %24 = load i8*, i8** %str.addr, align 8
  store i8* %24, i8** %__obj, align 8
  %25 = load i8*, i8** %__obj, align 8
  %26 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk = getelementptr inbounds %struct.obstack, %struct.obstack* %26, i32 0, i32 1
  %27 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk, align 8
  %28 = bitcast %struct._obstack_chunk* %27 to i8*
  %cmp17 = icmp ugt i8* %25, %28
  br i1 %cmp17, label %land.lhs.true.19, label %if.else

land.lhs.true.19:                                 ; preds = %if.then.16
  %29 = load i8*, i8** %__obj, align 8
  %30 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %30, i32 0, i32 4
  %31 = load i8*, i8** %chunk_limit, align 8
  %cmp20 = icmp ult i8* %29, %31
  br i1 %cmp20, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %land.lhs.true.19
  %32 = load i8*, i8** %__obj, align 8
  %33 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %object_base = getelementptr inbounds %struct.obstack, %struct.obstack* %33, i32 0, i32 2
  store i8* %32, i8** %object_base, align 8
  %34 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %34, i32 0, i32 3
  store i8* %32, i8** %next_free, align 8
  br label %if.end.23

if.else:                                          ; preds = %land.lhs.true.19, %if.then.16
  %35 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %36 = load i8*, i8** %__obj, align 8
  call void @obstack_free(%struct.obstack* %35, i8* %36)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %if.then.22
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then.13
  %37 = load %struct.ht_identifier*, %struct.ht_identifier** %node, align 8
  store %struct.ht_identifier* %37, %struct.ht_identifier** %retval
  br label %return

if.end.25:                                        ; preds = %land.lhs.true, %if.end
  %38 = load i32, i32* %index, align 4
  %39 = load i32, i32* %hash2, align 4
  %add = add i32 %38, %39
  %conv26 = zext i32 %add to i64
  %40 = load i64, i64* %sizemask, align 8
  %and27 = and i64 %conv26, %40
  %conv28 = trunc i64 %and27 to i32
  store i32 %conv28, i32* %index, align 4
  %41 = load %struct.ht*, %struct.ht** %table.addr, align 8
  %collisions = getelementptr inbounds %struct.ht, %struct.ht* %41, i32 0, i32 7
  %42 = load i32, i32* %collisions, align 4
  %inc29 = add i32 %42, 1
  store i32 %inc29, i32* %collisions, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then
  %43 = load i32, i32* %insert.addr, align 4
  %cmp30 = icmp eq i32 %43, 0
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %for.end
  store %struct.ht_identifier* null, %struct.ht_identifier** %retval
  br label %return

if.end.33:                                        ; preds = %for.end
  %44 = load %struct.ht*, %struct.ht** %table.addr, align 8
  %alloc_node = getelementptr inbounds %struct.ht, %struct.ht* %44, i32 0, i32 2
  %45 = load %struct.ht_identifier* (%struct.ht*)*, %struct.ht_identifier* (%struct.ht*)** %alloc_node, align 8
  %46 = load %struct.ht*, %struct.ht** %table.addr, align 8
  %call34 = call %struct.ht_identifier* %45(%struct.ht* %46)
  store %struct.ht_identifier* %call34, %struct.ht_identifier** %node, align 8
  %47 = load %struct.ht_identifier*, %struct.ht_identifier** %node, align 8
  %48 = load i32, i32* %index, align 4
  %idxprom35 = zext i32 %48 to i64
  %49 = load %struct.ht*, %struct.ht** %table.addr, align 8
  %entries36 = getelementptr inbounds %struct.ht, %struct.ht* %49, i32 0, i32 1
  %50 = load %struct.ht_identifier**, %struct.ht_identifier*** %entries36, align 8
  %arrayidx37 = getelementptr inbounds %struct.ht_identifier*, %struct.ht_identifier** %50, i64 %idxprom35
  store %struct.ht_identifier* %47, %struct.ht_identifier** %arrayidx37, align 8
  %51 = load i32, i32* %len.addr, align 4
  %52 = load %struct.ht_identifier*, %struct.ht_identifier** %node, align 8
  %len38 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %52, i32 0, i32 0
  store i32 %51, i32* %len38, align 4
  %53 = load i32, i32* %insert.addr, align 4
  %cmp39 = icmp eq i32 %53, 1
  br i1 %cmp39, label %if.then.41, label %if.else.93

if.then.41:                                       ; preds = %if.end.33
  %54 = load %struct.ht*, %struct.ht** %table.addr, align 8
  %stack42 = getelementptr inbounds %struct.ht, %struct.ht* %54, i32 0, i32 0
  store %struct.obstack* %stack42, %struct.obstack** %__h, align 8
  %55 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %55, %struct.obstack** %__o43, align 8
  %56 = load i32, i32* %len.addr, align 4
  store i32 %56, i32* %__len, align 4
  %57 = load %struct.obstack*, %struct.obstack** %__o43, align 8
  %next_free44 = getelementptr inbounds %struct.obstack, %struct.obstack* %57, i32 0, i32 3
  %58 = load i8*, i8** %next_free44, align 8
  %59 = load i32, i32* %__len, align 4
  %idx.ext = sext i32 %59 to i64
  %add.ptr = getelementptr inbounds i8, i8* %58, i64 %idx.ext
  %add.ptr45 = getelementptr inbounds i8, i8* %add.ptr, i64 1
  %60 = load %struct.obstack*, %struct.obstack** %__o43, align 8
  %chunk_limit46 = getelementptr inbounds %struct.obstack, %struct.obstack* %60, i32 0, i32 4
  %61 = load i8*, i8** %chunk_limit46, align 8
  %cmp47 = icmp ugt i8* %add.ptr45, %61
  br i1 %cmp47, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %if.then.41
  %62 = load %struct.obstack*, %struct.obstack** %__o43, align 8
  %63 = load i32, i32* %__len, align 4
  %add50 = add nsw i32 %63, 1
  call void @_obstack_newchunk(%struct.obstack* %62, i32 %add50)
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %if.then.41
  %64 = load %struct.obstack*, %struct.obstack** %__o43, align 8
  %next_free52 = getelementptr inbounds %struct.obstack, %struct.obstack* %64, i32 0, i32 3
  %65 = load i8*, i8** %next_free52, align 8
  %66 = load i8*, i8** %str.addr, align 8
  %67 = load i32, i32* %__len, align 4
  %conv53 = sext i32 %67 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %65, i8* %66, i64 %conv53, i32 1, i1 false)
  %68 = load i32, i32* %__len, align 4
  %69 = load %struct.obstack*, %struct.obstack** %__o43, align 8
  %next_free54 = getelementptr inbounds %struct.obstack, %struct.obstack* %69, i32 0, i32 3
  %70 = load i8*, i8** %next_free54, align 8
  %idx.ext55 = sext i32 %68 to i64
  %add.ptr56 = getelementptr inbounds i8, i8* %70, i64 %idx.ext55
  store i8* %add.ptr56, i8** %next_free54, align 8
  %71 = load %struct.obstack*, %struct.obstack** %__o43, align 8
  %next_free57 = getelementptr inbounds %struct.obstack, %struct.obstack* %71, i32 0, i32 3
  %72 = load i8*, i8** %next_free57, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %incdec.ptr, i8** %next_free57, align 8
  store i8 0, i8* %72, align 1
  %73 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %73, %struct.obstack** %__o1, align 8
  %74 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base60 = getelementptr inbounds %struct.obstack, %struct.obstack* %74, i32 0, i32 2
  %75 = load i8*, i8** %object_base60, align 8
  store i8* %75, i8** %value, align 8
  %76 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free61 = getelementptr inbounds %struct.obstack, %struct.obstack* %76, i32 0, i32 3
  %77 = load i8*, i8** %next_free61, align 8
  %78 = load i8*, i8** %value, align 8
  %cmp62 = icmp eq i8* %77, %78
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %if.end.51
  %79 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %maybe_empty_object = getelementptr inbounds %struct.obstack, %struct.obstack* %79, i32 0, i32 10
  %bf.load = load i8, i8* %maybe_empty_object, align 8
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, 2
  store i8 %bf.set, i8* %maybe_empty_object, align 8
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.64, %if.end.51
  %80 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free66 = getelementptr inbounds %struct.obstack, %struct.obstack* %80, i32 0, i32 3
  %81 = load i8*, i8** %next_free66, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %81 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, 0
  %82 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask = getelementptr inbounds %struct.obstack, %struct.obstack* %82, i32 0, i32 6
  %83 = load i32, i32* %alignment_mask, align 4
  %conv67 = sext i32 %83 to i64
  %add68 = add nsw i64 %sub.ptr.sub, %conv67
  %84 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask69 = getelementptr inbounds %struct.obstack, %struct.obstack* %84, i32 0, i32 6
  %85 = load i32, i32* %alignment_mask69, align 4
  %neg = xor i32 %85, -1
  %conv70 = sext i32 %neg to i64
  %and71 = and i64 %add68, %conv70
  %add.ptr72 = getelementptr inbounds i8, i8* null, i64 %and71
  %86 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free73 = getelementptr inbounds %struct.obstack, %struct.obstack* %86, i32 0, i32 3
  store i8* %add.ptr72, i8** %next_free73, align 8
  %87 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free74 = getelementptr inbounds %struct.obstack, %struct.obstack* %87, i32 0, i32 3
  %88 = load i8*, i8** %next_free74, align 8
  %89 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk75 = getelementptr inbounds %struct.obstack, %struct.obstack* %89, i32 0, i32 1
  %90 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk75, align 8
  %91 = bitcast %struct._obstack_chunk* %90 to i8*
  %sub.ptr.lhs.cast76 = ptrtoint i8* %88 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %91 to i64
  %sub.ptr.sub77 = sub i64 %sub.ptr.lhs.cast76, %sub.ptr.rhs.cast
  %92 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit78 = getelementptr inbounds %struct.obstack, %struct.obstack* %92, i32 0, i32 4
  %93 = load i8*, i8** %chunk_limit78, align 8
  %94 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk79 = getelementptr inbounds %struct.obstack, %struct.obstack* %94, i32 0, i32 1
  %95 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk79, align 8
  %96 = bitcast %struct._obstack_chunk* %95 to i8*
  %sub.ptr.lhs.cast80 = ptrtoint i8* %93 to i64
  %sub.ptr.rhs.cast81 = ptrtoint i8* %96 to i64
  %sub.ptr.sub82 = sub i64 %sub.ptr.lhs.cast80, %sub.ptr.rhs.cast81
  %cmp83 = icmp sgt i64 %sub.ptr.sub77, %sub.ptr.sub82
  br i1 %cmp83, label %if.then.85, label %if.end.88

if.then.85:                                       ; preds = %if.end.65
  %97 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit86 = getelementptr inbounds %struct.obstack, %struct.obstack* %97, i32 0, i32 4
  %98 = load i8*, i8** %chunk_limit86, align 8
  %99 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free87 = getelementptr inbounds %struct.obstack, %struct.obstack* %99, i32 0, i32 3
  store i8* %98, i8** %next_free87, align 8
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.85, %if.end.65
  %100 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free89 = getelementptr inbounds %struct.obstack, %struct.obstack* %100, i32 0, i32 3
  %101 = load i8*, i8** %next_free89, align 8
  %102 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base90 = getelementptr inbounds %struct.obstack, %struct.obstack* %102, i32 0, i32 2
  store i8* %101, i8** %object_base90, align 8
  %103 = load i8*, i8** %value, align 8
  store i8* %103, i8** %tmp91
  %104 = load i8*, i8** %tmp91
  store i8* %104, i8** %tmp
  %105 = load i8*, i8** %tmp
  %106 = load %struct.ht_identifier*, %struct.ht_identifier** %node, align 8
  %str92 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %106, i32 0, i32 1
  store i8* %105, i8** %str92, align 8
  br label %if.end.95

if.else.93:                                       ; preds = %if.end.33
  %107 = load i8*, i8** %str.addr, align 8
  %108 = load %struct.ht_identifier*, %struct.ht_identifier** %node, align 8
  %str94 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %108, i32 0, i32 1
  store i8* %107, i8** %str94, align 8
  br label %if.end.95

if.end.95:                                        ; preds = %if.else.93, %if.end.88
  %109 = load %struct.ht*, %struct.ht** %table.addr, align 8
  %nelements = getelementptr inbounds %struct.ht, %struct.ht* %109, i32 0, i32 4
  %110 = load i32, i32* %nelements, align 4
  %inc96 = add i32 %110, 1
  store i32 %inc96, i32* %nelements, align 4
  %mul97 = mul i32 %inc96, 4
  %111 = load %struct.ht*, %struct.ht** %table.addr, align 8
  %nslots98 = getelementptr inbounds %struct.ht, %struct.ht* %111, i32 0, i32 3
  %112 = load i32, i32* %nslots98, align 4
  %mul99 = mul i32 %112, 3
  %cmp100 = icmp uge i32 %mul97, %mul99
  br i1 %cmp100, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %if.end.95
  %113 = load %struct.ht*, %struct.ht** %table.addr, align 8
  call void @ht_expand(%struct.ht* %113)
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.102, %if.end.95
  %114 = load %struct.ht_identifier*, %struct.ht_identifier** %node, align 8
  store %struct.ht_identifier* %114, %struct.ht_identifier** %retval
  br label %return

return:                                           ; preds = %if.end.103, %if.then.32, %if.end.24
  %115 = load %struct.ht_identifier*, %struct.ht_identifier** %retval
  ret %struct.ht_identifier* %115
}

; Function Attrs: nounwind uwtable
define internal i32 @calc_hash(i8* %str, i32 %len) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %r = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load i32, i32* %len.addr, align 4
  store i32 %0, i32* %n, align 4
  store i32 0, i32* %r, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, i32* %n, align 4
  %dec = add i32 %1, -1
  store i32 %dec, i32* %n, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %r, align 4
  %mul = mul i32 %2, 67
  %3 = load i8*, i8** %str.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %str.addr, align 8
  %4 = load i8, i8* %3, align 1
  %conv = zext i8 %4 to i32
  %sub = sub nsw i32 %conv, 113
  %add = add i32 %mul, %sub
  store i32 %add, i32* %r, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load i32, i32* %r, align 4
  %6 = load i32, i32* %len.addr, align 4
  %add1 = add i32 %5, %6
  ret i32 %add1
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

declare void @_obstack_newchunk(%struct.obstack*, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define internal void @ht_expand(%struct.ht* %table) #0 {
entry:
  %table.addr = alloca %struct.ht*, align 8
  %nentries = alloca %struct.ht_identifier**, align 8
  %p = alloca %struct.ht_identifier**, align 8
  %limit = alloca %struct.ht_identifier**, align 8
  %size = alloca i32, align 4
  %sizemask = alloca i32, align 4
  %index = alloca i32, align 4
  %hash = alloca i32, align 4
  %hash2 = alloca i32, align 4
  store %struct.ht* %table, %struct.ht** %table.addr, align 8
  %0 = load %struct.ht*, %struct.ht** %table.addr, align 8
  %nslots = getelementptr inbounds %struct.ht, %struct.ht* %0, i32 0, i32 3
  %1 = load i32, i32* %nslots, align 4
  %mul = mul i32 %1, 2
  store i32 %mul, i32* %size, align 4
  %2 = load i32, i32* %size, align 4
  %conv = zext i32 %2 to i64
  %call = call noalias i8* @xcalloc(i64 %conv, i64 8)
  %3 = bitcast i8* %call to %struct.ht_identifier**
  store %struct.ht_identifier** %3, %struct.ht_identifier*** %nentries, align 8
  %4 = load i32, i32* %size, align 4
  %sub = sub i32 %4, 1
  store i32 %sub, i32* %sizemask, align 4
  %5 = load %struct.ht*, %struct.ht** %table.addr, align 8
  %entries = getelementptr inbounds %struct.ht, %struct.ht* %5, i32 0, i32 1
  %6 = load %struct.ht_identifier**, %struct.ht_identifier*** %entries, align 8
  store %struct.ht_identifier** %6, %struct.ht_identifier*** %p, align 8
  %7 = load %struct.ht_identifier**, %struct.ht_identifier*** %p, align 8
  %8 = load %struct.ht*, %struct.ht** %table.addr, align 8
  %nslots1 = getelementptr inbounds %struct.ht, %struct.ht* %8, i32 0, i32 3
  %9 = load i32, i32* %nslots1, align 4
  %idx.ext = zext i32 %9 to i64
  %add.ptr = getelementptr inbounds %struct.ht_identifier*, %struct.ht_identifier** %7, i64 %idx.ext
  store %struct.ht_identifier** %add.ptr, %struct.ht_identifier*** %limit, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %10 = load %struct.ht_identifier**, %struct.ht_identifier*** %p, align 8
  %11 = load %struct.ht_identifier*, %struct.ht_identifier** %10, align 8
  %tobool = icmp ne %struct.ht_identifier* %11, null
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %do.body
  %12 = load %struct.ht_identifier**, %struct.ht_identifier*** %p, align 8
  %13 = load %struct.ht_identifier*, %struct.ht_identifier** %12, align 8
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %13, i32 0, i32 1
  %14 = load i8*, i8** %str, align 8
  %15 = load %struct.ht_identifier**, %struct.ht_identifier*** %p, align 8
  %16 = load %struct.ht_identifier*, %struct.ht_identifier** %15, align 8
  %len = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %16, i32 0, i32 0
  %17 = load i32, i32* %len, align 4
  %call2 = call i32 @calc_hash(i8* %14, i32 %17)
  store i32 %call2, i32* %hash, align 4
  %18 = load i32, i32* %hash, align 4
  %mul3 = mul i32 %18, 17
  %19 = load i32, i32* %sizemask, align 4
  %and = and i32 %mul3, %19
  %or = or i32 %and, 1
  store i32 %or, i32* %hash2, align 4
  %20 = load i32, i32* %hash, align 4
  %21 = load i32, i32* %sizemask, align 4
  %and4 = and i32 %20, %21
  store i32 %and4, i32* %index, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end, %if.then
  %22 = load i32, i32* %index, align 4
  %idxprom = zext i32 %22 to i64
  %23 = load %struct.ht_identifier**, %struct.ht_identifier*** %nentries, align 8
  %arrayidx = getelementptr inbounds %struct.ht_identifier*, %struct.ht_identifier** %23, i64 %idxprom
  %24 = load %struct.ht_identifier*, %struct.ht_identifier** %arrayidx, align 8
  %tobool5 = icmp ne %struct.ht_identifier* %24, null
  br i1 %tobool5, label %if.end, label %if.then.6

if.then.6:                                        ; preds = %for.cond
  %25 = load %struct.ht_identifier**, %struct.ht_identifier*** %p, align 8
  %26 = load %struct.ht_identifier*, %struct.ht_identifier** %25, align 8
  %27 = load i32, i32* %index, align 4
  %idxprom7 = zext i32 %27 to i64
  %28 = load %struct.ht_identifier**, %struct.ht_identifier*** %nentries, align 8
  %arrayidx8 = getelementptr inbounds %struct.ht_identifier*, %struct.ht_identifier** %28, i64 %idxprom7
  store %struct.ht_identifier* %26, %struct.ht_identifier** %arrayidx8, align 8
  br label %for.end

if.end:                                           ; preds = %for.cond
  %29 = load i32, i32* %index, align 4
  %30 = load i32, i32* %hash2, align 4
  %add = add i32 %29, %30
  %31 = load i32, i32* %sizemask, align 4
  %and9 = and i32 %add, %31
  store i32 %and9, i32* %index, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.6
  br label %if.end.10

if.end.10:                                        ; preds = %for.end, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.10
  %32 = load %struct.ht_identifier**, %struct.ht_identifier*** %p, align 8
  %incdec.ptr = getelementptr inbounds %struct.ht_identifier*, %struct.ht_identifier** %32, i32 1
  store %struct.ht_identifier** %incdec.ptr, %struct.ht_identifier*** %p, align 8
  %33 = load %struct.ht_identifier**, %struct.ht_identifier*** %limit, align 8
  %cmp = icmp ult %struct.ht_identifier** %incdec.ptr, %33
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %34 = load %struct.ht*, %struct.ht** %table.addr, align 8
  %entries12 = getelementptr inbounds %struct.ht, %struct.ht* %34, i32 0, i32 1
  %35 = load %struct.ht_identifier**, %struct.ht_identifier*** %entries12, align 8
  %36 = bitcast %struct.ht_identifier** %35 to i8*
  call void @free(i8* %36) #3
  %37 = load %struct.ht_identifier**, %struct.ht_identifier*** %nentries, align 8
  %38 = load %struct.ht*, %struct.ht** %table.addr, align 8
  %entries13 = getelementptr inbounds %struct.ht, %struct.ht* %38, i32 0, i32 1
  store %struct.ht_identifier** %37, %struct.ht_identifier*** %entries13, align 8
  %39 = load i32, i32* %size, align 4
  %40 = load %struct.ht*, %struct.ht** %table.addr, align 8
  %nslots14 = getelementptr inbounds %struct.ht, %struct.ht* %40, i32 0, i32 3
  store i32 %39, i32* %nslots14, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @ht_forall(%struct.ht* %table, i32 (%struct.cpp_reader*, %struct.ht_identifier*, i8*)* %cb, i8* %v) #0 {
entry:
  %table.addr = alloca %struct.ht*, align 8
  %cb.addr = alloca i32 (%struct.cpp_reader*, %struct.ht_identifier*, i8*)*, align 8
  %v.addr = alloca i8*, align 8
  %p = alloca %struct.ht_identifier**, align 8
  %limit = alloca %struct.ht_identifier**, align 8
  store %struct.ht* %table, %struct.ht** %table.addr, align 8
  store i32 (%struct.cpp_reader*, %struct.ht_identifier*, i8*)* %cb, i32 (%struct.cpp_reader*, %struct.ht_identifier*, i8*)** %cb.addr, align 8
  store i8* %v, i8** %v.addr, align 8
  %0 = load %struct.ht*, %struct.ht** %table.addr, align 8
  %entries = getelementptr inbounds %struct.ht, %struct.ht* %0, i32 0, i32 1
  %1 = load %struct.ht_identifier**, %struct.ht_identifier*** %entries, align 8
  store %struct.ht_identifier** %1, %struct.ht_identifier*** %p, align 8
  %2 = load %struct.ht_identifier**, %struct.ht_identifier*** %p, align 8
  %3 = load %struct.ht*, %struct.ht** %table.addr, align 8
  %nslots = getelementptr inbounds %struct.ht, %struct.ht* %3, i32 0, i32 3
  %4 = load i32, i32* %nslots, align 4
  %idx.ext = zext i32 %4 to i64
  %add.ptr = getelementptr inbounds %struct.ht_identifier*, %struct.ht_identifier** %2, i64 %idx.ext
  store %struct.ht_identifier** %add.ptr, %struct.ht_identifier*** %limit, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %5 = load %struct.ht_identifier**, %struct.ht_identifier*** %p, align 8
  %6 = load %struct.ht_identifier*, %struct.ht_identifier** %5, align 8
  %tobool = icmp ne %struct.ht_identifier* %6, null
  br i1 %tobool, label %if.then, label %if.end.2

if.then:                                          ; preds = %do.body
  %7 = load i32 (%struct.cpp_reader*, %struct.ht_identifier*, i8*)*, i32 (%struct.cpp_reader*, %struct.ht_identifier*, i8*)** %cb.addr, align 8
  %8 = load %struct.ht*, %struct.ht** %table.addr, align 8
  %pfile = getelementptr inbounds %struct.ht, %struct.ht* %8, i32 0, i32 5
  %9 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile, align 8
  %10 = load %struct.ht_identifier**, %struct.ht_identifier*** %p, align 8
  %11 = load %struct.ht_identifier*, %struct.ht_identifier** %10, align 8
  %12 = load i8*, i8** %v.addr, align 8
  %call = call i32 %7(%struct.cpp_reader* %9, %struct.ht_identifier* %11, i8* %12)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  br label %do.end

if.end:                                           ; preds = %if.then
  br label %if.end.2

if.end.2:                                         ; preds = %if.end, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.2
  %13 = load %struct.ht_identifier**, %struct.ht_identifier*** %p, align 8
  %incdec.ptr = getelementptr inbounds %struct.ht_identifier*, %struct.ht_identifier** %13, i32 1
  store %struct.ht_identifier** %incdec.ptr, %struct.ht_identifier*** %p, align 8
  %14 = load %struct.ht_identifier**, %struct.ht_identifier*** %limit, align 8
  %cmp3 = icmp ult %struct.ht_identifier** %incdec.ptr, %14
  br i1 %cmp3, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then.1
  ret void
}

; Function Attrs: nounwind uwtable
define void @ht_dump_statistics(%struct.ht* %table) #0 {
entry:
  %table.addr = alloca %struct.ht*, align 8
  %nelts = alloca i64, align 8
  %nids = alloca i64, align 8
  %overhead = alloca i64, align 8
  %headers = alloca i64, align 8
  %total_bytes = alloca i64, align 8
  %longest = alloca i64, align 8
  %sum_of_squares = alloca i64, align 8
  %exp_len = alloca double, align 8
  %exp_len2 = alloca double, align 8
  %exp2_len = alloca double, align 8
  %p = alloca %struct.ht_identifier**, align 8
  %limit = alloca %struct.ht_identifier**, align 8
  %n = alloca i64, align 8
  store %struct.ht* %table, %struct.ht** %table.addr, align 8
  store i64 0, i64* %nids, align 8
  store i64 0, i64* %sum_of_squares, align 8
  store i64 0, i64* %longest, align 8
  store i64 0, i64* %total_bytes, align 8
  %0 = load %struct.ht*, %struct.ht** %table.addr, align 8
  %entries = getelementptr inbounds %struct.ht, %struct.ht* %0, i32 0, i32 1
  %1 = load %struct.ht_identifier**, %struct.ht_identifier*** %entries, align 8
  store %struct.ht_identifier** %1, %struct.ht_identifier*** %p, align 8
  %2 = load %struct.ht_identifier**, %struct.ht_identifier*** %p, align 8
  %3 = load %struct.ht*, %struct.ht** %table.addr, align 8
  %nslots = getelementptr inbounds %struct.ht, %struct.ht* %3, i32 0, i32 3
  %4 = load i32, i32* %nslots, align 4
  %idx.ext = zext i32 %4 to i64
  %add.ptr = getelementptr inbounds %struct.ht_identifier*, %struct.ht_identifier** %2, i64 %idx.ext
  store %struct.ht_identifier** %add.ptr, %struct.ht_identifier*** %limit, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %5 = load %struct.ht_identifier**, %struct.ht_identifier*** %p, align 8
  %6 = load %struct.ht_identifier*, %struct.ht_identifier** %5, align 8
  %tobool = icmp ne %struct.ht_identifier* %6, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %7 = load %struct.ht_identifier**, %struct.ht_identifier*** %p, align 8
  %8 = load %struct.ht_identifier*, %struct.ht_identifier** %7, align 8
  %len = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %8, i32 0, i32 0
  %9 = load i32, i32* %len, align 4
  %conv = zext i32 %9 to i64
  store i64 %conv, i64* %n, align 8
  %10 = load i64, i64* %n, align 8
  %11 = load i64, i64* %total_bytes, align 8
  %add = add i64 %11, %10
  store i64 %add, i64* %total_bytes, align 8
  %12 = load i64, i64* %n, align 8
  %13 = load i64, i64* %n, align 8
  %mul = mul i64 %12, %13
  %14 = load i64, i64* %sum_of_squares, align 8
  %add1 = add i64 %14, %mul
  store i64 %add1, i64* %sum_of_squares, align 8
  %15 = load i64, i64* %n, align 8
  %16 = load i64, i64* %longest, align 8
  %cmp = icmp ugt i64 %15, %16
  br i1 %cmp, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %17 = load i64, i64* %n, align 8
  store i64 %17, i64* %longest, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %18 = load i64, i64* %nids, align 8
  %inc = add i64 %18, 1
  store i64 %inc, i64* %nids, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.4
  %19 = load %struct.ht_identifier**, %struct.ht_identifier*** %p, align 8
  %incdec.ptr = getelementptr inbounds %struct.ht_identifier*, %struct.ht_identifier** %19, i32 1
  store %struct.ht_identifier** %incdec.ptr, %struct.ht_identifier*** %p, align 8
  %20 = load %struct.ht_identifier**, %struct.ht_identifier*** %limit, align 8
  %cmp5 = icmp ult %struct.ht_identifier** %incdec.ptr, %20
  br i1 %cmp5, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %21 = load %struct.ht*, %struct.ht** %table.addr, align 8
  %nelements = getelementptr inbounds %struct.ht, %struct.ht* %21, i32 0, i32 4
  %22 = load i32, i32* %nelements, align 4
  %conv7 = zext i32 %22 to i64
  store i64 %conv7, i64* %nelts, align 8
  %23 = load %struct.ht*, %struct.ht** %table.addr, align 8
  %stack = getelementptr inbounds %struct.ht, %struct.ht* %23, i32 0, i32 0
  %call = call i32 @_obstack_memory_used(%struct.obstack* %stack)
  %conv8 = sext i32 %call to i64
  %24 = load i64, i64* %total_bytes, align 8
  %sub = sub i64 %conv8, %24
  store i64 %sub, i64* %overhead, align 8
  %25 = load %struct.ht*, %struct.ht** %table.addr, align 8
  %nslots9 = getelementptr inbounds %struct.ht, %struct.ht* %25, i32 0, i32 3
  %26 = load i32, i32* %nslots9, align 4
  %conv10 = zext i32 %26 to i64
  %mul11 = mul i64 %conv10, 8
  store i64 %mul11, i64* %headers, align 8
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %28 = load i64, i64* %nelts, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0), i64 %28)
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %30 = load i64, i64* %nids, align 8
  %31 = load i64, i64* %nids, align 8
  %conv13 = uitofp i64 %31 to double
  %mul14 = fmul double %conv13, 1.000000e+02
  %32 = load i64, i64* %nelts, align 8
  %conv15 = uitofp i64 %32 to double
  %div = fdiv double %mul14, %conv15
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0), i64 %30, double %div)
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %34 = load %struct.ht*, %struct.ht** %table.addr, align 8
  %nslots17 = getelementptr inbounds %struct.ht, %struct.ht* %34, i32 0, i32 3
  %35 = load i32, i32* %nslots17, align 4
  %conv18 = zext i32 %35 to i64
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i64 %conv18)
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %37 = load i64, i64* %total_bytes, align 8
  %cmp20 = icmp ult i64 %37, 10240
  br i1 %cmp20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %38 = load i64, i64* %total_bytes, align 8
  br label %cond.end.28

cond.false:                                       ; preds = %do.end
  %39 = load i64, i64* %total_bytes, align 8
  %cmp22 = icmp ult i64 %39, 10485760
  br i1 %cmp22, label %cond.true.24, label %cond.false.26

cond.true.24:                                     ; preds = %cond.false
  %40 = load i64, i64* %total_bytes, align 8
  %div25 = udiv i64 %40, 1024
  br label %cond.end

cond.false.26:                                    ; preds = %cond.false
  %41 = load i64, i64* %total_bytes, align 8
  %div27 = udiv i64 %41, 1048576
  br label %cond.end

cond.end:                                         ; preds = %cond.false.26, %cond.true.24
  %cond = phi i64 [ %div25, %cond.true.24 ], [ %div27, %cond.false.26 ]
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.end, %cond.true
  %cond29 = phi i64 [ %38, %cond.true ], [ %cond, %cond.end ]
  %42 = load i64, i64* %total_bytes, align 8
  %cmp30 = icmp ult i64 %42, 10240
  br i1 %cmp30, label %cond.true.32, label %cond.false.33

cond.true.32:                                     ; preds = %cond.end.28
  br label %cond.end.37

cond.false.33:                                    ; preds = %cond.end.28
  %43 = load i64, i64* %total_bytes, align 8
  %cmp34 = icmp ult i64 %43, 10485760
  %cond36 = select i1 %cmp34, i32 107, i32 77
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.33, %cond.true.32
  %cond38 = phi i32 [ 32, %cond.true.32 ], [ %cond36, %cond.false.33 ]
  %44 = load i64, i64* %overhead, align 8
  %cmp39 = icmp ult i64 %44, 10240
  br i1 %cmp39, label %cond.true.41, label %cond.false.42

cond.true.41:                                     ; preds = %cond.end.37
  %45 = load i64, i64* %overhead, align 8
  br label %cond.end.51

cond.false.42:                                    ; preds = %cond.end.37
  %46 = load i64, i64* %overhead, align 8
  %cmp43 = icmp ult i64 %46, 10485760
  br i1 %cmp43, label %cond.true.45, label %cond.false.47

cond.true.45:                                     ; preds = %cond.false.42
  %47 = load i64, i64* %overhead, align 8
  %div46 = udiv i64 %47, 1024
  br label %cond.end.49

cond.false.47:                                    ; preds = %cond.false.42
  %48 = load i64, i64* %overhead, align 8
  %div48 = udiv i64 %48, 1048576
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.false.47, %cond.true.45
  %cond50 = phi i64 [ %div46, %cond.true.45 ], [ %div48, %cond.false.47 ]
  br label %cond.end.51

cond.end.51:                                      ; preds = %cond.end.49, %cond.true.41
  %cond52 = phi i64 [ %45, %cond.true.41 ], [ %cond50, %cond.end.49 ]
  %49 = load i64, i64* %overhead, align 8
  %cmp53 = icmp ult i64 %49, 10240
  br i1 %cmp53, label %cond.true.55, label %cond.false.56

cond.true.55:                                     ; preds = %cond.end.51
  br label %cond.end.60

cond.false.56:                                    ; preds = %cond.end.51
  %50 = load i64, i64* %overhead, align 8
  %cmp57 = icmp ult i64 %50, 10485760
  %cond59 = select i1 %cmp57, i32 107, i32 77
  br label %cond.end.60

cond.end.60:                                      ; preds = %cond.false.56, %cond.true.55
  %cond61 = phi i32 [ 32, %cond.true.55 ], [ %cond59, %cond.false.56 ]
  %call62 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i64 %cond29, i32 %cond38, i64 %cond52, i32 %cond61)
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %52 = load i64, i64* %headers, align 8
  %cmp63 = icmp ult i64 %52, 10240
  br i1 %cmp63, label %cond.true.65, label %cond.false.66

cond.true.65:                                     ; preds = %cond.end.60
  %53 = load i64, i64* %headers, align 8
  br label %cond.end.75

cond.false.66:                                    ; preds = %cond.end.60
  %54 = load i64, i64* %headers, align 8
  %cmp67 = icmp ult i64 %54, 10485760
  br i1 %cmp67, label %cond.true.69, label %cond.false.71

cond.true.69:                                     ; preds = %cond.false.66
  %55 = load i64, i64* %headers, align 8
  %div70 = udiv i64 %55, 1024
  br label %cond.end.73

cond.false.71:                                    ; preds = %cond.false.66
  %56 = load i64, i64* %headers, align 8
  %div72 = udiv i64 %56, 1048576
  br label %cond.end.73

cond.end.73:                                      ; preds = %cond.false.71, %cond.true.69
  %cond74 = phi i64 [ %div70, %cond.true.69 ], [ %div72, %cond.false.71 ]
  br label %cond.end.75

cond.end.75:                                      ; preds = %cond.end.73, %cond.true.65
  %cond76 = phi i64 [ %53, %cond.true.65 ], [ %cond74, %cond.end.73 ]
  %57 = load i64, i64* %headers, align 8
  %cmp77 = icmp ult i64 %57, 10240
  br i1 %cmp77, label %cond.true.79, label %cond.false.80

cond.true.79:                                     ; preds = %cond.end.75
  br label %cond.end.84

cond.false.80:                                    ; preds = %cond.end.75
  %58 = load i64, i64* %headers, align 8
  %cmp81 = icmp ult i64 %58, 10485760
  %cond83 = select i1 %cmp81, i32 107, i32 77
  br label %cond.end.84

cond.end.84:                                      ; preds = %cond.false.80, %cond.true.79
  %cond85 = phi i32 [ 32, %cond.true.79 ], [ %cond83, %cond.false.80 ]
  %call86 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i64 %cond76, i32 %cond85)
  %59 = load i64, i64* %total_bytes, align 8
  %conv87 = uitofp i64 %59 to double
  %60 = load i64, i64* %nelts, align 8
  %conv88 = uitofp i64 %60 to double
  %div89 = fdiv double %conv87, %conv88
  store double %div89, double* %exp_len, align 8
  %61 = load double, double* %exp_len, align 8
  %62 = load double, double* %exp_len, align 8
  %mul90 = fmul double %61, %62
  store double %mul90, double* %exp2_len, align 8
  %63 = load i64, i64* %sum_of_squares, align 8
  %conv91 = uitofp i64 %63 to double
  %64 = load i64, i64* %nelts, align 8
  %conv92 = uitofp i64 %64 to double
  %div93 = fdiv double %conv91, %conv92
  store double %div93, double* %exp_len2, align 8
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %66 = load %struct.ht*, %struct.ht** %table.addr, align 8
  %collisions = getelementptr inbounds %struct.ht, %struct.ht* %66, i32 0, i32 7
  %67 = load i32, i32* %collisions, align 4
  %conv94 = uitofp i32 %67 to double
  %68 = load %struct.ht*, %struct.ht** %table.addr, align 8
  %searches = getelementptr inbounds %struct.ht, %struct.ht* %68, i32 0, i32 6
  %69 = load i32, i32* %searches, align 4
  %conv95 = uitofp i32 %69 to double
  %div96 = fdiv double %conv94, %conv95
  %call97 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), double %div96)
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %71 = load i64, i64* %nelts, align 8
  %conv98 = uitofp i64 %71 to double
  %72 = load %struct.ht*, %struct.ht** %table.addr, align 8
  %searches99 = getelementptr inbounds %struct.ht, %struct.ht* %72, i32 0, i32 6
  %73 = load i32, i32* %searches99, align 4
  %conv100 = uitofp i32 %73 to double
  %div101 = fdiv double %conv98, %conv100
  %call102 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), double %div101)
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %75 = load double, double* %exp_len, align 8
  %76 = load double, double* %exp_len2, align 8
  %77 = load double, double* %exp2_len, align 8
  %sub103 = fsub double %76, %77
  %call104 = call double @approx_sqrt(double %sub103)
  %call105 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i32 0, i32 0), double %75, double %call104)
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %79 = load i64, i64* %longest, align 8
  %call106 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0), i64 %79)
  ret void
}

declare i32 @_obstack_memory_used(%struct.obstack*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define double @approx_sqrt(double %x) #0 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %s = alloca double, align 8
  %d = alloca double, align 8
  store double %x, double* %x.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %cmp = fcmp olt double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #7
  unreachable

if.end:                                           ; preds = %entry
  %1 = load double, double* %x.addr, align 8
  %cmp1 = fcmp oeq double %1, 0.000000e+00
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store double 0.000000e+00, double* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %2 = load double, double* %x.addr, align 8
  store double %2, double* %s, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.3
  %3 = load double, double* %s, align 8
  %4 = load double, double* %s, align 8
  %mul = fmul double %3, %4
  %5 = load double, double* %x.addr, align 8
  %sub = fsub double %mul, %5
  %6 = load double, double* %s, align 8
  %mul4 = fmul double 2.000000e+00, %6
  %div = fdiv double %sub, %mul4
  store double %div, double* %d, align 8
  %7 = load double, double* %d, align 8
  %8 = load double, double* %s, align 8
  %sub5 = fsub double %8, %7
  store double %sub5, double* %s, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %9 = load double, double* %d, align 8
  %cmp6 = fcmp ogt double %9, 1.000000e-04
  br i1 %cmp6, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %10 = load double, double* %s, align 8
  store double %10, double* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.2
  %11 = load double, double* %retval
  ret double %11
}

; Function Attrs: noreturn nounwind
declare void @abort() #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
