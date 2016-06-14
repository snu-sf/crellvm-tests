; ModuleID = 'hash.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_table = type { %struct.hash_entry**, i32, %struct.hash_entry* (%struct.hash_entry*, %struct.hash_table*, i8*)*, i64 (i8*)*, i1 (i8*, i8*)*, %struct.obstack }
%struct.hash_entry = type { %struct.hash_entry*, i8*, i64 }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }

; Function Attrs: nounwind uwtable
define void @hash_table_init_n(%struct.hash_table* %table, %struct.hash_entry* (%struct.hash_entry*, %struct.hash_table*, i8*)* %newfunc, i64 (i8*)* %hash, i1 (i8*, i8*)* %comp, i32 %size) #0 {
entry:
  %table.addr = alloca %struct.hash_table*, align 8
  %newfunc.addr = alloca %struct.hash_entry* (%struct.hash_entry*, %struct.hash_table*, i8*)*, align 8
  %hash.addr = alloca i64 (i8*)*, align 8
  %comp.addr = alloca i1 (i8*, i8*)*, align 8
  %size.addr = alloca i32, align 4
  %alloc = alloca i32, align 4
  %__h = alloca %struct.obstack*, align 8
  %__o = alloca %struct.obstack*, align 8
  %__len = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %__o1 = alloca %struct.obstack*, align 8
  %value = alloca i8*, align 8
  %tmp38 = alloca i8*, align 8
  store %struct.hash_table* %table, %struct.hash_table** %table.addr, align 8
  store %struct.hash_entry* (%struct.hash_entry*, %struct.hash_table*, i8*)* %newfunc, %struct.hash_entry* (%struct.hash_entry*, %struct.hash_table*, i8*)** %newfunc.addr, align 8
  store i64 (i8*)* %hash, i64 (i8*)** %hash.addr, align 8
  store i1 (i8*, i8*)* %comp, i1 (i8*, i8*)** %comp.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %conv = zext i32 %0 to i64
  %mul = mul i64 %conv, 8
  %conv1 = trunc i64 %mul to i32
  store i32 %conv1, i32* %alloc, align 4
  %1 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8
  %memory = getelementptr inbounds %struct.hash_table, %struct.hash_table* %1, i32 0, i32 5
  %2 = load i32, i32* %alloc, align 4
  %call = call i32 @_obstack_begin(%struct.obstack* %memory, i32 %2, i32 0, i8* (i64)* @xmalloc, void (i8*)* @free)
  %3 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8
  %memory2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i32 0, i32 5
  store %struct.obstack* %memory2, %struct.obstack** %__h, align 8
  %4 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %4, %struct.obstack** %__o, align 8
  %5 = load i32, i32* %alloc, align 4
  store i32 %5, i32* %__len, align 4
  %6 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %6, i32 0, i32 4
  %7 = load i8*, i8** %chunk_limit, align 8
  %8 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %8, i32 0, i32 3
  %9 = load i8*, i8** %next_free, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %10 = load i32, i32* %__len, align 4
  %conv3 = sext i32 %10 to i64
  %cmp = icmp slt i64 %sub.ptr.sub, %conv3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %12 = load i32, i32* %__len, align 4
  call void @_obstack_newchunk(%struct.obstack* %11, i32 %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load i32, i32* %__len, align 4
  %14 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free5 = getelementptr inbounds %struct.obstack, %struct.obstack* %14, i32 0, i32 3
  %15 = load i8*, i8** %next_free5, align 8
  %idx.ext = sext i32 %13 to i64
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 %idx.ext
  store i8* %add.ptr, i8** %next_free5, align 8
  %16 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %16, %struct.obstack** %__o1, align 8
  %17 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base = getelementptr inbounds %struct.obstack, %struct.obstack* %17, i32 0, i32 2
  %18 = load i8*, i8** %object_base, align 8
  store i8* %18, i8** %value, align 8
  %19 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free8 = getelementptr inbounds %struct.obstack, %struct.obstack* %19, i32 0, i32 3
  %20 = load i8*, i8** %next_free8, align 8
  %21 = load i8*, i8** %value, align 8
  %cmp9 = icmp eq i8* %20, %21
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  %22 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %maybe_empty_object = getelementptr inbounds %struct.obstack, %struct.obstack* %22, i32 0, i32 10
  %bf.load = load i8, i8* %maybe_empty_object, align 8
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, 2
  store i8 %bf.set, i8* %maybe_empty_object, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end
  %23 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free13 = getelementptr inbounds %struct.obstack, %struct.obstack* %23, i32 0, i32 3
  %24 = load i8*, i8** %next_free13, align 8
  %sub.ptr.lhs.cast14 = ptrtoint i8* %24 to i64
  %sub.ptr.sub15 = sub i64 %sub.ptr.lhs.cast14, 0
  %25 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask = getelementptr inbounds %struct.obstack, %struct.obstack* %25, i32 0, i32 6
  %26 = load i32, i32* %alignment_mask, align 4
  %conv16 = sext i32 %26 to i64
  %add = add nsw i64 %sub.ptr.sub15, %conv16
  %27 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask17 = getelementptr inbounds %struct.obstack, %struct.obstack* %27, i32 0, i32 6
  %28 = load i32, i32* %alignment_mask17, align 4
  %neg = xor i32 %28, -1
  %conv18 = sext i32 %neg to i64
  %and = and i64 %add, %conv18
  %add.ptr19 = getelementptr inbounds i8, i8* null, i64 %and
  %29 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free20 = getelementptr inbounds %struct.obstack, %struct.obstack* %29, i32 0, i32 3
  store i8* %add.ptr19, i8** %next_free20, align 8
  %30 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free21 = getelementptr inbounds %struct.obstack, %struct.obstack* %30, i32 0, i32 3
  %31 = load i8*, i8** %next_free21, align 8
  %32 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk = getelementptr inbounds %struct.obstack, %struct.obstack* %32, i32 0, i32 1
  %33 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk, align 8
  %34 = bitcast %struct._obstack_chunk* %33 to i8*
  %sub.ptr.lhs.cast22 = ptrtoint i8* %31 to i64
  %sub.ptr.rhs.cast23 = ptrtoint i8* %34 to i64
  %sub.ptr.sub24 = sub i64 %sub.ptr.lhs.cast22, %sub.ptr.rhs.cast23
  %35 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit25 = getelementptr inbounds %struct.obstack, %struct.obstack* %35, i32 0, i32 4
  %36 = load i8*, i8** %chunk_limit25, align 8
  %37 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk26 = getelementptr inbounds %struct.obstack, %struct.obstack* %37, i32 0, i32 1
  %38 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk26, align 8
  %39 = bitcast %struct._obstack_chunk* %38 to i8*
  %sub.ptr.lhs.cast27 = ptrtoint i8* %36 to i64
  %sub.ptr.rhs.cast28 = ptrtoint i8* %39 to i64
  %sub.ptr.sub29 = sub i64 %sub.ptr.lhs.cast27, %sub.ptr.rhs.cast28
  %cmp30 = icmp sgt i64 %sub.ptr.sub24, %sub.ptr.sub29
  br i1 %cmp30, label %if.then.32, label %if.end.35

if.then.32:                                       ; preds = %if.end.12
  %40 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit33 = getelementptr inbounds %struct.obstack, %struct.obstack* %40, i32 0, i32 4
  %41 = load i8*, i8** %chunk_limit33, align 8
  %42 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free34 = getelementptr inbounds %struct.obstack, %struct.obstack* %42, i32 0, i32 3
  store i8* %41, i8** %next_free34, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.32, %if.end.12
  %43 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free36 = getelementptr inbounds %struct.obstack, %struct.obstack* %43, i32 0, i32 3
  %44 = load i8*, i8** %next_free36, align 8
  %45 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base37 = getelementptr inbounds %struct.obstack, %struct.obstack* %45, i32 0, i32 2
  store i8* %44, i8** %object_base37, align 8
  %46 = load i8*, i8** %value, align 8
  store i8* %46, i8** %tmp38
  %47 = load i8*, i8** %tmp38
  store i8* %47, i8** %tmp
  %48 = load i8*, i8** %tmp
  %49 = bitcast i8* %48 to %struct.hash_entry**
  %50 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8
  %table39 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %50, i32 0, i32 0
  store %struct.hash_entry** %49, %struct.hash_entry*** %table39, align 8
  %51 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8
  %table40 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %51, i32 0, i32 0
  %52 = load %struct.hash_entry**, %struct.hash_entry*** %table40, align 8
  %53 = bitcast %struct.hash_entry** %52 to i8*
  %54 = load i32, i32* %alloc, align 4
  %conv41 = zext i32 %54 to i64
  call void @llvm.memset.p0i8.i64(i8* %53, i8 0, i64 %conv41, i32 1, i1 false)
  %55 = load i32, i32* %size.addr, align 4
  %56 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8
  %size42 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %56, i32 0, i32 1
  store i32 %55, i32* %size42, align 4
  %57 = load %struct.hash_entry* (%struct.hash_entry*, %struct.hash_table*, i8*)*, %struct.hash_entry* (%struct.hash_entry*, %struct.hash_table*, i8*)** %newfunc.addr, align 8
  %58 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8
  %newfunc43 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %58, i32 0, i32 2
  store %struct.hash_entry* (%struct.hash_entry*, %struct.hash_table*, i8*)* %57, %struct.hash_entry* (%struct.hash_entry*, %struct.hash_table*, i8*)** %newfunc43, align 8
  %59 = load i64 (i8*)*, i64 (i8*)** %hash.addr, align 8
  %60 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8
  %hash44 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %60, i32 0, i32 3
  store i64 (i8*)* %59, i64 (i8*)** %hash44, align 8
  %61 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %comp.addr, align 8
  %62 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8
  %comp45 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %62, i32 0, i32 4
  store i1 (i8*, i8*)* %61, i1 (i8*, i8*)** %comp45, align 8
  ret void
}

declare i32 @_obstack_begin(%struct.obstack*, i32, i32, i8* (i64)*, void (i8*)*) #1

declare noalias i8* @xmalloc(i64) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

declare void @_obstack_newchunk(%struct.obstack*, i32) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define void @hash_table_init(%struct.hash_table* %table, %struct.hash_entry* (%struct.hash_entry*, %struct.hash_table*, i8*)* %newfunc, i64 (i8*)* %hash, i1 (i8*, i8*)* %comp) #0 {
entry:
  %table.addr = alloca %struct.hash_table*, align 8
  %newfunc.addr = alloca %struct.hash_entry* (%struct.hash_entry*, %struct.hash_table*, i8*)*, align 8
  %hash.addr = alloca i64 (i8*)*, align 8
  %comp.addr = alloca i1 (i8*, i8*)*, align 8
  store %struct.hash_table* %table, %struct.hash_table** %table.addr, align 8
  store %struct.hash_entry* (%struct.hash_entry*, %struct.hash_table*, i8*)* %newfunc, %struct.hash_entry* (%struct.hash_entry*, %struct.hash_table*, i8*)** %newfunc.addr, align 8
  store i64 (i8*)* %hash, i64 (i8*)** %hash.addr, align 8
  store i1 (i8*, i8*)* %comp, i1 (i8*, i8*)** %comp.addr, align 8
  %0 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8
  %1 = load %struct.hash_entry* (%struct.hash_entry*, %struct.hash_table*, i8*)*, %struct.hash_entry* (%struct.hash_entry*, %struct.hash_table*, i8*)** %newfunc.addr, align 8
  %2 = load i64 (i8*)*, i64 (i8*)** %hash.addr, align 8
  %3 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %comp.addr, align 8
  call void @hash_table_init_n(%struct.hash_table* %0, %struct.hash_entry* (%struct.hash_entry*, %struct.hash_table*, i8*)* %1, i64 (i8*)* %2, i1 (i8*, i8*)* %3, i32 1009)
  ret void
}

; Function Attrs: nounwind uwtable
define void @hash_table_free(%struct.hash_table* %table) #0 {
entry:
  %table.addr = alloca %struct.hash_table*, align 8
  %__o = alloca %struct.obstack*, align 8
  %__obj = alloca i8*, align 8
  store %struct.hash_table* %table, %struct.hash_table** %table.addr, align 8
  %0 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8
  %memory = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i32 0, i32 5
  store %struct.obstack* %memory, %struct.obstack** %__o, align 8
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
  ret void
}

declare void @obstack_free(%struct.obstack*, i8*) #1

; Function Attrs: nounwind uwtable
define %struct.hash_entry* @hash_lookup(%struct.hash_table* %table, i8* %key, i32 %create, i8* (%struct.obstack*, i8*)* %copy) #0 {
entry:
  %retval = alloca %struct.hash_entry*, align 8
  %table.addr = alloca %struct.hash_table*, align 8
  %key.addr = alloca i8*, align 8
  %create.addr = alloca i32, align 4
  %copy.addr = alloca i8* (%struct.obstack*, i8*)*, align 8
  %hash = alloca i64, align 8
  %hashp = alloca %struct.hash_entry*, align 8
  %index = alloca i32, align 4
  store %struct.hash_table* %table, %struct.hash_table** %table.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 %create, i32* %create.addr, align 4
  store i8* (%struct.obstack*, i8*)* %copy, i8* (%struct.obstack*, i8*)** %copy.addr, align 8
  %0 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8
  %hash1 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i32 0, i32 3
  %1 = load i64 (i8*)*, i64 (i8*)** %hash1, align 8
  %2 = load i8*, i8** %key.addr, align 8
  %call = call i64 %1(i8* %2)
  store i64 %call, i64* %hash, align 8
  %3 = load i64, i64* %hash, align 8
  %4 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8
  %size = getelementptr inbounds %struct.hash_table, %struct.hash_table* %4, i32 0, i32 1
  %5 = load i32, i32* %size, align 4
  %conv = zext i32 %5 to i64
  %rem = urem i64 %3, %conv
  %conv2 = trunc i64 %rem to i32
  store i32 %conv2, i32* %index, align 4
  %6 = load i32, i32* %index, align 4
  %idxprom = zext i32 %6 to i64
  %7 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8
  %table3 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %7, i32 0, i32 0
  %8 = load %struct.hash_entry**, %struct.hash_entry*** %table3, align 8
  %arrayidx = getelementptr inbounds %struct.hash_entry*, %struct.hash_entry** %8, i64 %idxprom
  %9 = load %struct.hash_entry*, %struct.hash_entry** %arrayidx, align 8
  store %struct.hash_entry* %9, %struct.hash_entry** %hashp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load %struct.hash_entry*, %struct.hash_entry** %hashp, align 8
  %cmp = icmp ne %struct.hash_entry* %10, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.hash_entry*, %struct.hash_entry** %hashp, align 8
  %hash5 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %11, i32 0, i32 2
  %12 = load i64, i64* %hash5, align 8
  %13 = load i64, i64* %hash, align 8
  %cmp6 = icmp eq i64 %12, %13
  br i1 %cmp6, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %14 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8
  %comp = getelementptr inbounds %struct.hash_table, %struct.hash_table* %14, i32 0, i32 4
  %15 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %comp, align 8
  %16 = load %struct.hash_entry*, %struct.hash_entry** %hashp, align 8
  %key8 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %16, i32 0, i32 1
  %17 = load i8*, i8** %key8, align 8
  %18 = load i8*, i8** %key.addr, align 8
  %call9 = call zeroext i1 %15(i8* %17, i8* %18)
  br i1 %call9, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %19 = load %struct.hash_entry*, %struct.hash_entry** %hashp, align 8
  store %struct.hash_entry* %19, %struct.hash_entry** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load %struct.hash_entry*, %struct.hash_entry** %hashp, align 8
  %next = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %20, i32 0, i32 0
  %21 = load %struct.hash_entry*, %struct.hash_entry** %next, align 8
  store %struct.hash_entry* %21, %struct.hash_entry** %hashp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load i32, i32* %create.addr, align 4
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %for.end
  store %struct.hash_entry* null, %struct.hash_entry** %retval
  br label %return

if.end.12:                                        ; preds = %for.end
  %23 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8
  %newfunc = getelementptr inbounds %struct.hash_table, %struct.hash_table* %23, i32 0, i32 2
  %24 = load %struct.hash_entry* (%struct.hash_entry*, %struct.hash_table*, i8*)*, %struct.hash_entry* (%struct.hash_entry*, %struct.hash_table*, i8*)** %newfunc, align 8
  %25 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8
  %26 = load i8*, i8** %key.addr, align 8
  %call13 = call %struct.hash_entry* %24(%struct.hash_entry* null, %struct.hash_table* %25, i8* %26)
  store %struct.hash_entry* %call13, %struct.hash_entry** %hashp, align 8
  %27 = load %struct.hash_entry*, %struct.hash_entry** %hashp, align 8
  %cmp14 = icmp eq %struct.hash_entry* %27, null
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.12
  store %struct.hash_entry* null, %struct.hash_entry** %retval
  br label %return

if.end.17:                                        ; preds = %if.end.12
  %28 = load i8* (%struct.obstack*, i8*)*, i8* (%struct.obstack*, i8*)** %copy.addr, align 8
  %tobool18 = icmp ne i8* (%struct.obstack*, i8*)* %28, null
  br i1 %tobool18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.end.17
  %29 = load i8* (%struct.obstack*, i8*)*, i8* (%struct.obstack*, i8*)** %copy.addr, align 8
  %30 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8
  %memory = getelementptr inbounds %struct.hash_table, %struct.hash_table* %30, i32 0, i32 5
  %31 = load i8*, i8** %key.addr, align 8
  %call20 = call i8* %29(%struct.obstack* %memory, i8* %31)
  store i8* %call20, i8** %key.addr, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.end.17
  %32 = load i8*, i8** %key.addr, align 8
  %33 = load %struct.hash_entry*, %struct.hash_entry** %hashp, align 8
  %key22 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %33, i32 0, i32 1
  store i8* %32, i8** %key22, align 8
  %34 = load i64, i64* %hash, align 8
  %35 = load %struct.hash_entry*, %struct.hash_entry** %hashp, align 8
  %hash23 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %35, i32 0, i32 2
  store i64 %34, i64* %hash23, align 8
  %36 = load i32, i32* %index, align 4
  %idxprom24 = zext i32 %36 to i64
  %37 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8
  %table25 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %37, i32 0, i32 0
  %38 = load %struct.hash_entry**, %struct.hash_entry*** %table25, align 8
  %arrayidx26 = getelementptr inbounds %struct.hash_entry*, %struct.hash_entry** %38, i64 %idxprom24
  %39 = load %struct.hash_entry*, %struct.hash_entry** %arrayidx26, align 8
  %40 = load %struct.hash_entry*, %struct.hash_entry** %hashp, align 8
  %next27 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %40, i32 0, i32 0
  store %struct.hash_entry* %39, %struct.hash_entry** %next27, align 8
  %41 = load %struct.hash_entry*, %struct.hash_entry** %hashp, align 8
  %42 = load i32, i32* %index, align 4
  %idxprom28 = zext i32 %42 to i64
  %43 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8
  %table29 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %43, i32 0, i32 0
  %44 = load %struct.hash_entry**, %struct.hash_entry*** %table29, align 8
  %arrayidx30 = getelementptr inbounds %struct.hash_entry*, %struct.hash_entry** %44, i64 %idxprom28
  store %struct.hash_entry* %41, %struct.hash_entry** %arrayidx30, align 8
  %45 = load %struct.hash_entry*, %struct.hash_entry** %hashp, align 8
  store %struct.hash_entry* %45, %struct.hash_entry** %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.then.16, %if.then.11, %if.then
  %46 = load %struct.hash_entry*, %struct.hash_entry** %retval
  ret %struct.hash_entry* %46
}

; Function Attrs: nounwind uwtable
define %struct.hash_entry* @hash_newfunc(%struct.hash_entry* %entry1, %struct.hash_table* %table, i8* %p) #0 {
entry:
  %entry.addr = alloca %struct.hash_entry*, align 8
  %table.addr = alloca %struct.hash_table*, align 8
  %p.addr = alloca i8*, align 8
  store %struct.hash_entry* %entry1, %struct.hash_entry** %entry.addr, align 8
  store %struct.hash_table* %table, %struct.hash_table** %table.addr, align 8
  store i8* %p, i8** %p.addr, align 8
  %0 = load %struct.hash_entry*, %struct.hash_entry** %entry.addr, align 8
  %cmp = icmp eq %struct.hash_entry* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8
  %call = call i8* @hash_allocate(%struct.hash_table* %1, i32 24)
  %2 = bitcast i8* %call to %struct.hash_entry*
  store %struct.hash_entry* %2, %struct.hash_entry** %entry.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.hash_entry*, %struct.hash_entry** %entry.addr, align 8
  ret %struct.hash_entry* %3
}

; Function Attrs: nounwind uwtable
define i8* @hash_allocate(%struct.hash_table* %table, i32 %size) #0 {
entry:
  %table.addr = alloca %struct.hash_table*, align 8
  %size.addr = alloca i32, align 4
  %__h = alloca %struct.obstack*, align 8
  %__o = alloca %struct.obstack*, align 8
  %__len = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %__o1 = alloca %struct.obstack*, align 8
  %value = alloca i8*, align 8
  %tmp35 = alloca i8*, align 8
  store %struct.hash_table* %table, %struct.hash_table** %table.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8
  %memory = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i32 0, i32 5
  store %struct.obstack* %memory, %struct.obstack** %__h, align 8
  %1 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %1, %struct.obstack** %__o, align 8
  %2 = load i32, i32* %size.addr, align 4
  store i32 %2, i32* %__len, align 4
  %3 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %3, i32 0, i32 4
  %4 = load i8*, i8** %chunk_limit, align 8
  %5 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %5, i32 0, i32 3
  %6 = load i8*, i8** %next_free, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %7 = load i32, i32* %__len, align 4
  %conv = sext i32 %7 to i64
  %cmp = icmp slt i64 %sub.ptr.sub, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %9 = load i32, i32* %__len, align 4
  call void @_obstack_newchunk(%struct.obstack* %8, i32 %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i32, i32* %__len, align 4
  %11 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free2 = getelementptr inbounds %struct.obstack, %struct.obstack* %11, i32 0, i32 3
  %12 = load i8*, i8** %next_free2, align 8
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 %idx.ext
  store i8* %add.ptr, i8** %next_free2, align 8
  %13 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %13, %struct.obstack** %__o1, align 8
  %14 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base = getelementptr inbounds %struct.obstack, %struct.obstack* %14, i32 0, i32 2
  %15 = load i8*, i8** %object_base, align 8
  store i8* %15, i8** %value, align 8
  %16 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free5 = getelementptr inbounds %struct.obstack, %struct.obstack* %16, i32 0, i32 3
  %17 = load i8*, i8** %next_free5, align 8
  %18 = load i8*, i8** %value, align 8
  %cmp6 = icmp eq i8* %17, %18
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  %19 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %maybe_empty_object = getelementptr inbounds %struct.obstack, %struct.obstack* %19, i32 0, i32 10
  %bf.load = load i8, i8* %maybe_empty_object, align 8
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, 2
  store i8 %bf.set, i8* %maybe_empty_object, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end
  %20 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free10 = getelementptr inbounds %struct.obstack, %struct.obstack* %20, i32 0, i32 3
  %21 = load i8*, i8** %next_free10, align 8
  %sub.ptr.lhs.cast11 = ptrtoint i8* %21 to i64
  %sub.ptr.sub12 = sub i64 %sub.ptr.lhs.cast11, 0
  %22 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask = getelementptr inbounds %struct.obstack, %struct.obstack* %22, i32 0, i32 6
  %23 = load i32, i32* %alignment_mask, align 4
  %conv13 = sext i32 %23 to i64
  %add = add nsw i64 %sub.ptr.sub12, %conv13
  %24 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask14 = getelementptr inbounds %struct.obstack, %struct.obstack* %24, i32 0, i32 6
  %25 = load i32, i32* %alignment_mask14, align 4
  %neg = xor i32 %25, -1
  %conv15 = sext i32 %neg to i64
  %and = and i64 %add, %conv15
  %add.ptr16 = getelementptr inbounds i8, i8* null, i64 %and
  %26 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free17 = getelementptr inbounds %struct.obstack, %struct.obstack* %26, i32 0, i32 3
  store i8* %add.ptr16, i8** %next_free17, align 8
  %27 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free18 = getelementptr inbounds %struct.obstack, %struct.obstack* %27, i32 0, i32 3
  %28 = load i8*, i8** %next_free18, align 8
  %29 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk = getelementptr inbounds %struct.obstack, %struct.obstack* %29, i32 0, i32 1
  %30 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk, align 8
  %31 = bitcast %struct._obstack_chunk* %30 to i8*
  %sub.ptr.lhs.cast19 = ptrtoint i8* %28 to i64
  %sub.ptr.rhs.cast20 = ptrtoint i8* %31 to i64
  %sub.ptr.sub21 = sub i64 %sub.ptr.lhs.cast19, %sub.ptr.rhs.cast20
  %32 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit22 = getelementptr inbounds %struct.obstack, %struct.obstack* %32, i32 0, i32 4
  %33 = load i8*, i8** %chunk_limit22, align 8
  %34 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk23 = getelementptr inbounds %struct.obstack, %struct.obstack* %34, i32 0, i32 1
  %35 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk23, align 8
  %36 = bitcast %struct._obstack_chunk* %35 to i8*
  %sub.ptr.lhs.cast24 = ptrtoint i8* %33 to i64
  %sub.ptr.rhs.cast25 = ptrtoint i8* %36 to i64
  %sub.ptr.sub26 = sub i64 %sub.ptr.lhs.cast24, %sub.ptr.rhs.cast25
  %cmp27 = icmp sgt i64 %sub.ptr.sub21, %sub.ptr.sub26
  br i1 %cmp27, label %if.then.29, label %if.end.32

if.then.29:                                       ; preds = %if.end.9
  %37 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit30 = getelementptr inbounds %struct.obstack, %struct.obstack* %37, i32 0, i32 4
  %38 = load i8*, i8** %chunk_limit30, align 8
  %39 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free31 = getelementptr inbounds %struct.obstack, %struct.obstack* %39, i32 0, i32 3
  store i8* %38, i8** %next_free31, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.29, %if.end.9
  %40 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free33 = getelementptr inbounds %struct.obstack, %struct.obstack* %40, i32 0, i32 3
  %41 = load i8*, i8** %next_free33, align 8
  %42 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base34 = getelementptr inbounds %struct.obstack, %struct.obstack* %42, i32 0, i32 2
  store i8* %41, i8** %object_base34, align 8
  %43 = load i8*, i8** %value, align 8
  store i8* %43, i8** %tmp35
  %44 = load i8*, i8** %tmp35
  store i8* %44, i8** %tmp
  %45 = load i8*, i8** %tmp
  ret i8* %45
}

; Function Attrs: nounwind uwtable
define void @hash_traverse(%struct.hash_table* %table, i1 (%struct.hash_entry*, i8*)* %func, i8* %info) #0 {
entry:
  %table.addr = alloca %struct.hash_table*, align 8
  %func.addr = alloca i1 (%struct.hash_entry*, i8*)*, align 8
  %info.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %p = alloca %struct.hash_entry*, align 8
  store %struct.hash_table* %table, %struct.hash_table** %table.addr, align 8
  store i1 (%struct.hash_entry*, i8*)* %func, i1 (%struct.hash_entry*, i8*)** %func.addr, align 8
  store i8* %info, i8** %info.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.5, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8
  %size = getelementptr inbounds %struct.hash_table, %struct.hash_table* %1, i32 0, i32 1
  %2 = load i32, i32* %size, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end.6

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = zext i32 %3 to i64
  %4 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8
  %table1 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %4, i32 0, i32 0
  %5 = load %struct.hash_entry**, %struct.hash_entry*** %table1, align 8
  %arrayidx = getelementptr inbounds %struct.hash_entry*, %struct.hash_entry** %5, i64 %idxprom
  %6 = load %struct.hash_entry*, %struct.hash_entry** %arrayidx, align 8
  store %struct.hash_entry* %6, %struct.hash_entry** %p, align 8
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %7 = load %struct.hash_entry*, %struct.hash_entry** %p, align 8
  %cmp3 = icmp ne %struct.hash_entry* %7, null
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %8 = load i1 (%struct.hash_entry*, i8*)*, i1 (%struct.hash_entry*, i8*)** %func.addr, align 8
  %9 = load %struct.hash_entry*, %struct.hash_entry** %p, align 8
  %10 = load i8*, i8** %info.addr, align 8
  %call = call zeroext i1 %8(%struct.hash_entry* %9, i8* %10)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %for.body.4
  br label %for.end.6

if.end:                                           ; preds = %for.body.4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load %struct.hash_entry*, %struct.hash_entry** %p, align 8
  %next = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %11, i32 0, i32 0
  %12 = load %struct.hash_entry*, %struct.hash_entry** %next, align 8
  store %struct.hash_entry* %12, %struct.hash_entry** %p, align 8
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.5

for.inc.5:                                        ; preds = %for.end
  %13 = load i32, i32* %i, align 4
  %inc = add i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.6:                                        ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @string_hash(i8* %k) #0 {
entry:
  %k.addr = alloca i8*, align 8
  %s = alloca i8*, align 8
  %hash = alloca i64, align 8
  %c = alloca i8, align 1
  %len = alloca i32, align 4
  store i8* %k, i8** %k.addr, align 8
  %0 = load i8*, i8** %k.addr, align 8
  store i8* %0, i8** %s, align 8
  store i64 0, i64* %hash, align 8
  store i32 0, i32* %len, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  %2 = load i8, i8* %1, align 1
  store i8 %2, i8* %c, align 1
  %conv = zext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8, i8* %c, align 1
  %conv2 = zext i8 %3 to i32
  %4 = load i8, i8* %c, align 1
  %conv3 = zext i8 %4 to i32
  %shl = shl i32 %conv3, 17
  %add = add nsw i32 %conv2, %shl
  %conv4 = sext i32 %add to i64
  %5 = load i64, i64* %hash, align 8
  %add5 = add i64 %5, %conv4
  store i64 %add5, i64* %hash, align 8
  %6 = load i64, i64* %hash, align 8
  %shr = lshr i64 %6, 2
  %7 = load i64, i64* %hash, align 8
  %xor = xor i64 %7, %shr
  store i64 %xor, i64* %hash, align 8
  %8 = load i32, i32* %len, align 4
  %inc = add i32 %8, 1
  store i32 %inc, i32* %len, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %9 = load i32, i32* %len, align 4
  %10 = load i32, i32* %len, align 4
  %shl6 = shl i32 %10, 17
  %add7 = add i32 %9, %shl6
  %conv8 = zext i32 %add7 to i64
  %11 = load i64, i64* %hash, align 8
  %add9 = add i64 %11, %conv8
  store i64 %add9, i64* %hash, align 8
  %12 = load i64, i64* %hash, align 8
  %shr10 = lshr i64 %12, 2
  %13 = load i64, i64* %hash, align 8
  %xor11 = xor i64 %13, %shr10
  store i64 %xor11, i64* %hash, align 8
  %14 = load i64, i64* %hash, align 8
  ret i64 %14
}

; Function Attrs: nounwind uwtable
define zeroext i1 @string_compare(i8* %k1, i8* %k2) #0 {
entry:
  %k1.addr = alloca i8*, align 8
  %k2.addr = alloca i8*, align 8
  store i8* %k1, i8** %k1.addr, align 8
  store i8* %k2, i8** %k2.addr, align 8
  %0 = load i8*, i8** %k1.addr, align 8
  %1 = load i8*, i8** %k2.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* %1) #5
  %cmp = icmp eq i32 %call, 0
  ret i1 %cmp
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define i8* @string_copy(%struct.obstack* %memory, i8* %k) #0 {
entry:
  %memory.addr = alloca %struct.obstack*, align 8
  %k.addr = alloca i8*, align 8
  %new = alloca i8*, align 8
  %string = alloca i8*, align 8
  %__h = alloca %struct.obstack*, align 8
  %__o = alloca %struct.obstack*, align 8
  %__len = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %__o1 = alloca %struct.obstack*, align 8
  %value = alloca i8*, align 8
  %tmp37 = alloca i8*, align 8
  store %struct.obstack* %memory, %struct.obstack** %memory.addr, align 8
  store i8* %k, i8** %k.addr, align 8
  %0 = load i8*, i8** %k.addr, align 8
  store i8* %0, i8** %string, align 8
  %1 = load %struct.obstack*, %struct.obstack** %memory.addr, align 8
  store %struct.obstack* %1, %struct.obstack** %__h, align 8
  %2 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %2, %struct.obstack** %__o, align 8
  %3 = load i8*, i8** %string, align 8
  %call = call i64 @strlen(i8* %3) #5
  %add = add i64 %call, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %__len, align 4
  %4 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %4, i32 0, i32 4
  %5 = load i8*, i8** %chunk_limit, align 8
  %6 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %6, i32 0, i32 3
  %7 = load i8*, i8** %next_free, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %8 = load i32, i32* %__len, align 4
  %conv1 = sext i32 %8 to i64
  %cmp = icmp slt i64 %sub.ptr.sub, %conv1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %10 = load i32, i32* %__len, align 4
  call void @_obstack_newchunk(%struct.obstack* %9, i32 %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i32, i32* %__len, align 4
  %12 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free3 = getelementptr inbounds %struct.obstack, %struct.obstack* %12, i32 0, i32 3
  %13 = load i8*, i8** %next_free3, align 8
  %idx.ext = sext i32 %11 to i64
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %idx.ext
  store i8* %add.ptr, i8** %next_free3, align 8
  %14 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %14, %struct.obstack** %__o1, align 8
  %15 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base = getelementptr inbounds %struct.obstack, %struct.obstack* %15, i32 0, i32 2
  %16 = load i8*, i8** %object_base, align 8
  store i8* %16, i8** %value, align 8
  %17 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free6 = getelementptr inbounds %struct.obstack, %struct.obstack* %17, i32 0, i32 3
  %18 = load i8*, i8** %next_free6, align 8
  %19 = load i8*, i8** %value, align 8
  %cmp7 = icmp eq i8* %18, %19
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  %20 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %maybe_empty_object = getelementptr inbounds %struct.obstack, %struct.obstack* %20, i32 0, i32 10
  %bf.load = load i8, i8* %maybe_empty_object, align 8
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, 2
  store i8 %bf.set, i8* %maybe_empty_object, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end
  %21 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free11 = getelementptr inbounds %struct.obstack, %struct.obstack* %21, i32 0, i32 3
  %22 = load i8*, i8** %next_free11, align 8
  %sub.ptr.lhs.cast12 = ptrtoint i8* %22 to i64
  %sub.ptr.sub13 = sub i64 %sub.ptr.lhs.cast12, 0
  %23 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask = getelementptr inbounds %struct.obstack, %struct.obstack* %23, i32 0, i32 6
  %24 = load i32, i32* %alignment_mask, align 4
  %conv14 = sext i32 %24 to i64
  %add15 = add nsw i64 %sub.ptr.sub13, %conv14
  %25 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask16 = getelementptr inbounds %struct.obstack, %struct.obstack* %25, i32 0, i32 6
  %26 = load i32, i32* %alignment_mask16, align 4
  %neg = xor i32 %26, -1
  %conv17 = sext i32 %neg to i64
  %and = and i64 %add15, %conv17
  %add.ptr18 = getelementptr inbounds i8, i8* null, i64 %and
  %27 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free19 = getelementptr inbounds %struct.obstack, %struct.obstack* %27, i32 0, i32 3
  store i8* %add.ptr18, i8** %next_free19, align 8
  %28 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free20 = getelementptr inbounds %struct.obstack, %struct.obstack* %28, i32 0, i32 3
  %29 = load i8*, i8** %next_free20, align 8
  %30 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk = getelementptr inbounds %struct.obstack, %struct.obstack* %30, i32 0, i32 1
  %31 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk, align 8
  %32 = bitcast %struct._obstack_chunk* %31 to i8*
  %sub.ptr.lhs.cast21 = ptrtoint i8* %29 to i64
  %sub.ptr.rhs.cast22 = ptrtoint i8* %32 to i64
  %sub.ptr.sub23 = sub i64 %sub.ptr.lhs.cast21, %sub.ptr.rhs.cast22
  %33 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit24 = getelementptr inbounds %struct.obstack, %struct.obstack* %33, i32 0, i32 4
  %34 = load i8*, i8** %chunk_limit24, align 8
  %35 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk25 = getelementptr inbounds %struct.obstack, %struct.obstack* %35, i32 0, i32 1
  %36 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk25, align 8
  %37 = bitcast %struct._obstack_chunk* %36 to i8*
  %sub.ptr.lhs.cast26 = ptrtoint i8* %34 to i64
  %sub.ptr.rhs.cast27 = ptrtoint i8* %37 to i64
  %sub.ptr.sub28 = sub i64 %sub.ptr.lhs.cast26, %sub.ptr.rhs.cast27
  %cmp29 = icmp sgt i64 %sub.ptr.sub23, %sub.ptr.sub28
  br i1 %cmp29, label %if.then.31, label %if.end.34

if.then.31:                                       ; preds = %if.end.10
  %38 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit32 = getelementptr inbounds %struct.obstack, %struct.obstack* %38, i32 0, i32 4
  %39 = load i8*, i8** %chunk_limit32, align 8
  %40 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free33 = getelementptr inbounds %struct.obstack, %struct.obstack* %40, i32 0, i32 3
  store i8* %39, i8** %next_free33, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.31, %if.end.10
  %41 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free35 = getelementptr inbounds %struct.obstack, %struct.obstack* %41, i32 0, i32 3
  %42 = load i8*, i8** %next_free35, align 8
  %43 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base36 = getelementptr inbounds %struct.obstack, %struct.obstack* %43, i32 0, i32 2
  store i8* %42, i8** %object_base36, align 8
  %44 = load i8*, i8** %value, align 8
  store i8* %44, i8** %tmp37
  %45 = load i8*, i8** %tmp37
  store i8* %45, i8** %tmp
  %46 = load i8*, i8** %tmp
  store i8* %46, i8** %new, align 8
  %47 = load i8*, i8** %new, align 8
  %48 = load i8*, i8** %string, align 8
  %call38 = call i8* @strcpy(i8* %47, i8* %48) #3
  %49 = load i8*, i8** %new, align 8
  ret i8* %49
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
