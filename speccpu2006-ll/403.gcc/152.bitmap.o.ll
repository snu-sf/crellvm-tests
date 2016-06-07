; ModuleID = 'bitmap.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32 }

@bitmap_free = internal global %struct.bitmap_element_def* null, align 8
@bitmap_obstack_init = internal global i32 0, align 4
@bitmap_obstack = internal global %struct.obstack zeroinitializer, align 8
@bitmap_zero_bits = common global %struct.bitmap_element_def zeroinitializer, align 8
@.str = private unnamed_addr constant [9 x i8] c"bitmap.c\00", align 1
@__FUNCTION__.bitmap_operation = private unnamed_addr constant [17 x i8] c"bitmap_operation\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"\0Afirst = \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c" current = \00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c" indx = %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c" next = \00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c" prev = \00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c" indx = %u\0A\09\09bits = {\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"\0A\09\09\09\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c" %u\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c" }\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c", \00", align 1

; Function Attrs: nounwind uwtable
define void @bitmap_release_memory() #0 {
entry:
  %__o = alloca %struct.obstack*, align 8
  %__obj = alloca i8*, align 8
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** @bitmap_free, align 8
  %0 = load i32, i32* @bitmap_obstack_init, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  store i32 0, i32* @bitmap_obstack_init, align 4
  store %struct.obstack* @bitmap_obstack, %struct.obstack** %__o, align 8
  store i8* null, i8** %__obj, align 8
  %1 = load i8*, i8** %__obj, align 8
  %2 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk = getelementptr inbounds %struct.obstack, %struct.obstack* %2, i32 0, i32 1
  %3 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk, align 8
  %4 = bitcast %struct._obstack_chunk* %3 to i8*
  %cmp = icmp ugt i8* %1, %4
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %5 = load i8*, i8** %__obj, align 8
  %6 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %6, i32 0, i32 4
  %7 = load i8*, i8** %chunk_limit, align 8
  %cmp1 = icmp ult i8* %5, %7
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %land.lhs.true
  %8 = load i8*, i8** %__obj, align 8
  %9 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %object_base = getelementptr inbounds %struct.obstack, %struct.obstack* %9, i32 0, i32 2
  store i8* %8, i8** %object_base, align 8
  %10 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %10, i32 0, i32 3
  store i8* %8, i8** %next_free, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  %11 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %12 = load i8*, i8** %__obj, align 8
  call void @obstack_free(%struct.obstack* %11, i8* %12)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  ret void
}

declare void @obstack_free(%struct.obstack*, i8*) #1

; Function Attrs: nounwind uwtable
define void @bitmap_clear(%struct.bitmap_head_def* %head) #0 {
entry:
  %head.addr = alloca %struct.bitmap_head_def*, align 8
  %element = alloca %struct.bitmap_element_def*, align 8
  %next = alloca %struct.bitmap_element_def*, align 8
  store %struct.bitmap_head_def* %head, %struct.bitmap_head_def** %head.addr, align 8
  %0 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %head.addr, align 8
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %0, i32 0, i32 0
  %1 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8
  store %struct.bitmap_element_def* %1, %struct.bitmap_element_def** %element, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %element, align 8
  %cmp = icmp ne %struct.bitmap_element_def* %2, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %element, align 8
  %next1 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %3, i32 0, i32 0
  %4 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next1, align 8
  store %struct.bitmap_element_def* %4, %struct.bitmap_element_def** %next, align 8
  %5 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** @bitmap_free, align 8
  %6 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %element, align 8
  %next2 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %6, i32 0, i32 0
  store %struct.bitmap_element_def* %5, %struct.bitmap_element_def** %next2, align 8
  %7 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %element, align 8
  store %struct.bitmap_element_def* %7, %struct.bitmap_element_def** @bitmap_free, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next, align 8
  store %struct.bitmap_element_def* %8, %struct.bitmap_element_def** %element, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %head.addr, align 8
  %current = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %9, i32 0, i32 1
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %current, align 8
  %10 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %head.addr, align 8
  %first3 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %10, i32 0, i32 0
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %first3, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @bitmap_copy(%struct.bitmap_head_def* %to, %struct.bitmap_head_def* %from) #0 {
entry:
  %to.addr = alloca %struct.bitmap_head_def*, align 8
  %from.addr = alloca %struct.bitmap_head_def*, align 8
  %from_ptr = alloca %struct.bitmap_element_def*, align 8
  %to_ptr = alloca %struct.bitmap_element_def*, align 8
  %to_elt = alloca %struct.bitmap_element_def*, align 8
  store %struct.bitmap_head_def* %to, %struct.bitmap_head_def** %to.addr, align 8
  store %struct.bitmap_head_def* %from, %struct.bitmap_head_def** %from.addr, align 8
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %to_ptr, align 8
  %0 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %to.addr, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %0)
  %1 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %from.addr, align 8
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %1, i32 0, i32 0
  %2 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8
  store %struct.bitmap_element_def* %2, %struct.bitmap_element_def** %from_ptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %from_ptr, align 8
  %tobool = icmp ne %struct.bitmap_element_def* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call %struct.bitmap_element_def* @bitmap_element_allocate()
  store %struct.bitmap_element_def* %call, %struct.bitmap_element_def** %to_elt, align 8
  %4 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %from_ptr, align 8
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %4, i32 0, i32 2
  %5 = load i32, i32* %indx, align 4
  %6 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %to_elt, align 8
  %indx1 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %6, i32 0, i32 2
  store i32 %5, i32* %indx1, align 4
  %7 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %from_ptr, align 8
  %bits = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %7, i32 0, i32 3
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %bits, i32 0, i64 0
  %8 = load i64, i64* %arrayidx, align 8
  %9 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %to_elt, align 8
  %bits2 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %9, i32 0, i32 3
  %arrayidx3 = getelementptr inbounds [2 x i64], [2 x i64]* %bits2, i32 0, i64 0
  store i64 %8, i64* %arrayidx3, align 8
  %10 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %from_ptr, align 8
  %bits4 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %10, i32 0, i32 3
  %arrayidx5 = getelementptr inbounds [2 x i64], [2 x i64]* %bits4, i32 0, i64 1
  %11 = load i64, i64* %arrayidx5, align 8
  %12 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %to_elt, align 8
  %bits6 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %12, i32 0, i32 3
  %arrayidx7 = getelementptr inbounds [2 x i64], [2 x i64]* %bits6, i32 0, i64 1
  store i64 %11, i64* %arrayidx7, align 8
  %13 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %to_ptr, align 8
  %cmp = icmp eq %struct.bitmap_element_def* %13, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %14 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %to_elt, align 8
  %15 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %to.addr, align 8
  %current = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %15, i32 0, i32 1
  store %struct.bitmap_element_def* %14, %struct.bitmap_element_def** %current, align 8
  %16 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %to.addr, align 8
  %first8 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %16, i32 0, i32 0
  store %struct.bitmap_element_def* %14, %struct.bitmap_element_def** %first8, align 8
  %17 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %from_ptr, align 8
  %indx9 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %17, i32 0, i32 2
  %18 = load i32, i32* %indx9, align 4
  %19 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %to.addr, align 8
  %indx10 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %19, i32 0, i32 2
  store i32 %18, i32* %indx10, align 4
  %20 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %to_elt, align 8
  %prev = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %20, i32 0, i32 1
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %prev, align 8
  %21 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %to_elt, align 8
  %next = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %21, i32 0, i32 0
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %next, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  %22 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %to_ptr, align 8
  %23 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %to_elt, align 8
  %prev11 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %23, i32 0, i32 1
  store %struct.bitmap_element_def* %22, %struct.bitmap_element_def** %prev11, align 8
  %24 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %to_elt, align 8
  %next12 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %24, i32 0, i32 0
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %next12, align 8
  %25 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %to_elt, align 8
  %26 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %to_ptr, align 8
  %next13 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %26, i32 0, i32 0
  store %struct.bitmap_element_def* %25, %struct.bitmap_element_def** %next13, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %27 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %to_elt, align 8
  store %struct.bitmap_element_def* %27, %struct.bitmap_element_def** %to_ptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %28 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %from_ptr, align 8
  %next14 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %28, i32 0, i32 0
  %29 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next14, align 8
  store %struct.bitmap_element_def* %29, %struct.bitmap_element_def** %from_ptr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.bitmap_element_def* @bitmap_element_allocate() #0 {
entry:
  %element = alloca %struct.bitmap_element_def*, align 8
  %__h = alloca %struct.obstack*, align 8
  %__o = alloca %struct.obstack*, align 8
  %__len = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %__o1 = alloca %struct.obstack*, align 8
  %value = alloca i8*, align 8
  %tmp39 = alloca i8*, align 8
  %0 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** @bitmap_free, align 8
  %cmp = icmp ne %struct.bitmap_element_def* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** @bitmap_free, align 8
  store %struct.bitmap_element_def* %1, %struct.bitmap_element_def** %element, align 8
  %2 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %element, align 8
  %next = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %2, i32 0, i32 0
  %3 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next, align 8
  store %struct.bitmap_element_def* %3, %struct.bitmap_element_def** @bitmap_free, align 8
  br label %if.end.40

if.else:                                          ; preds = %entry
  %4 = load i32, i32* @bitmap_obstack_init, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end, label %if.then.1

if.then.1:                                        ; preds = %if.else
  store i32 1, i32* @bitmap_obstack_init, align 4
  %call = call i32 @_obstack_begin(%struct.obstack* @bitmap_obstack, i32 0, i32 8, i8* (i64)* @xmalloc, void (i8*)* @free)
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.else
  store %struct.obstack* @bitmap_obstack, %struct.obstack** %__h, align 8
  %5 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %5, %struct.obstack** %__o, align 8
  store i32 40, i32* %__len, align 4
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
  %conv = sext i32 %10 to i64
  %cmp2 = icmp slt i64 %sub.ptr.sub, %conv
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %11 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %12 = load i32, i32* %__len, align 4
  call void @_obstack_newchunk(%struct.obstack* %11, i32 %12)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %13 = load i32, i32* %__len, align 4
  %14 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free6 = getelementptr inbounds %struct.obstack, %struct.obstack* %14, i32 0, i32 3
  %15 = load i8*, i8** %next_free6, align 8
  %idx.ext = sext i32 %13 to i64
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 %idx.ext
  store i8* %add.ptr, i8** %next_free6, align 8
  %16 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %16, %struct.obstack** %__o1, align 8
  %17 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base = getelementptr inbounds %struct.obstack, %struct.obstack* %17, i32 0, i32 2
  %18 = load i8*, i8** %object_base, align 8
  store i8* %18, i8** %value, align 8
  %19 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free9 = getelementptr inbounds %struct.obstack, %struct.obstack* %19, i32 0, i32 3
  %20 = load i8*, i8** %next_free9, align 8
  %21 = load i8*, i8** %value, align 8
  %cmp10 = icmp eq i8* %20, %21
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.5
  %22 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %maybe_empty_object = getelementptr inbounds %struct.obstack, %struct.obstack* %22, i32 0, i32 10
  %bf.load = load i8, i8* %maybe_empty_object, align 8
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, 2
  store i8 %bf.set, i8* %maybe_empty_object, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end.5
  %23 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free14 = getelementptr inbounds %struct.obstack, %struct.obstack* %23, i32 0, i32 3
  %24 = load i8*, i8** %next_free14, align 8
  %sub.ptr.lhs.cast15 = ptrtoint i8* %24 to i64
  %sub.ptr.sub16 = sub i64 %sub.ptr.lhs.cast15, 0
  %25 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask = getelementptr inbounds %struct.obstack, %struct.obstack* %25, i32 0, i32 6
  %26 = load i32, i32* %alignment_mask, align 4
  %conv17 = sext i32 %26 to i64
  %add = add nsw i64 %sub.ptr.sub16, %conv17
  %27 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask18 = getelementptr inbounds %struct.obstack, %struct.obstack* %27, i32 0, i32 6
  %28 = load i32, i32* %alignment_mask18, align 4
  %neg = xor i32 %28, -1
  %conv19 = sext i32 %neg to i64
  %and = and i64 %add, %conv19
  %add.ptr20 = getelementptr inbounds i8, i8* null, i64 %and
  %29 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free21 = getelementptr inbounds %struct.obstack, %struct.obstack* %29, i32 0, i32 3
  store i8* %add.ptr20, i8** %next_free21, align 8
  %30 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free22 = getelementptr inbounds %struct.obstack, %struct.obstack* %30, i32 0, i32 3
  %31 = load i8*, i8** %next_free22, align 8
  %32 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk = getelementptr inbounds %struct.obstack, %struct.obstack* %32, i32 0, i32 1
  %33 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk, align 8
  %34 = bitcast %struct._obstack_chunk* %33 to i8*
  %sub.ptr.lhs.cast23 = ptrtoint i8* %31 to i64
  %sub.ptr.rhs.cast24 = ptrtoint i8* %34 to i64
  %sub.ptr.sub25 = sub i64 %sub.ptr.lhs.cast23, %sub.ptr.rhs.cast24
  %35 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit26 = getelementptr inbounds %struct.obstack, %struct.obstack* %35, i32 0, i32 4
  %36 = load i8*, i8** %chunk_limit26, align 8
  %37 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk27 = getelementptr inbounds %struct.obstack, %struct.obstack* %37, i32 0, i32 1
  %38 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk27, align 8
  %39 = bitcast %struct._obstack_chunk* %38 to i8*
  %sub.ptr.lhs.cast28 = ptrtoint i8* %36 to i64
  %sub.ptr.rhs.cast29 = ptrtoint i8* %39 to i64
  %sub.ptr.sub30 = sub i64 %sub.ptr.lhs.cast28, %sub.ptr.rhs.cast29
  %cmp31 = icmp sgt i64 %sub.ptr.sub25, %sub.ptr.sub30
  br i1 %cmp31, label %if.then.33, label %if.end.36

if.then.33:                                       ; preds = %if.end.13
  %40 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit34 = getelementptr inbounds %struct.obstack, %struct.obstack* %40, i32 0, i32 4
  %41 = load i8*, i8** %chunk_limit34, align 8
  %42 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free35 = getelementptr inbounds %struct.obstack, %struct.obstack* %42, i32 0, i32 3
  store i8* %41, i8** %next_free35, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.33, %if.end.13
  %43 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free37 = getelementptr inbounds %struct.obstack, %struct.obstack* %43, i32 0, i32 3
  %44 = load i8*, i8** %next_free37, align 8
  %45 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base38 = getelementptr inbounds %struct.obstack, %struct.obstack* %45, i32 0, i32 2
  store i8* %44, i8** %object_base38, align 8
  %46 = load i8*, i8** %value, align 8
  store i8* %46, i8** %tmp39
  %47 = load i8*, i8** %tmp39
  store i8* %47, i8** %tmp
  %48 = load i8*, i8** %tmp
  %49 = bitcast i8* %48 to %struct.bitmap_element_def*
  store %struct.bitmap_element_def* %49, %struct.bitmap_element_def** %element, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.36, %if.then
  %50 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %element, align 8
  %bits = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %50, i32 0, i32 3
  %51 = bitcast [2 x i64]* %bits to i8*
  call void @llvm.memset.p0i8.i64(i8* %51, i8 0, i64 16, i32 8, i1 false)
  %52 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %element, align 8
  ret %struct.bitmap_element_def* %52
}

; Function Attrs: nounwind uwtable
define void @bitmap_clear_bit(%struct.bitmap_head_def* %head, i32 %bit) #0 {
entry:
  %head.addr = alloca %struct.bitmap_head_def*, align 8
  %bit.addr = alloca i32, align 4
  %ptr = alloca %struct.bitmap_element_def*, align 8
  %bit_num = alloca i32, align 4
  %word_num = alloca i32, align 4
  store %struct.bitmap_head_def* %head, %struct.bitmap_head_def** %head.addr, align 8
  store i32 %bit, i32* %bit.addr, align 4
  %0 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %head.addr, align 8
  %1 = load i32, i32* %bit.addr, align 4
  %call = call %struct.bitmap_element_def* @bitmap_find_bit(%struct.bitmap_head_def* %0, i32 %1)
  store %struct.bitmap_element_def* %call, %struct.bitmap_element_def** %ptr, align 8
  %2 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr, align 8
  %cmp = icmp ne %struct.bitmap_element_def* %2, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %bit.addr, align 4
  %rem = urem i32 %3, 64
  store i32 %rem, i32* %bit_num, align 4
  %4 = load i32, i32* %bit.addr, align 4
  %div = udiv i32 %4, 64
  %rem1 = urem i32 %div, 2
  store i32 %rem1, i32* %word_num, align 4
  %5 = load i32, i32* %bit_num, align 4
  %sh_prom = zext i32 %5 to i64
  %shl = shl i64 1, %sh_prom
  %neg = xor i64 %shl, -1
  %6 = load i32, i32* %word_num, align 4
  %idxprom = zext i32 %6 to i64
  %7 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr, align 8
  %bits = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %7, i32 0, i32 3
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %bits, i32 0, i64 %idxprom
  %8 = load i64, i64* %arrayidx, align 8
  %and = and i64 %8, %neg
  store i64 %and, i64* %arrayidx, align 8
  %9 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr, align 8
  %call2 = call i32 @bitmap_element_zerop(%struct.bitmap_element_def* %9)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %10 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %head.addr, align 8
  %11 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr, align 8
  call void @bitmap_element_free(%struct.bitmap_head_def* %10, %struct.bitmap_element_def* %11)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.bitmap_element_def* @bitmap_find_bit(%struct.bitmap_head_def* %head, i32 %bit) #0 {
entry:
  %retval = alloca %struct.bitmap_element_def*, align 8
  %head.addr = alloca %struct.bitmap_head_def*, align 8
  %bit.addr = alloca i32, align 4
  %element = alloca %struct.bitmap_element_def*, align 8
  %indx = alloca i64, align 8
  store %struct.bitmap_head_def* %head, %struct.bitmap_head_def** %head.addr, align 8
  store i32 %bit, i32* %bit.addr, align 4
  %0 = load i32, i32* %bit.addr, align 4
  %div = udiv i32 %0, 128
  %conv = zext i32 %div to i64
  store i64 %conv, i64* %indx, align 8
  %1 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %head.addr, align 8
  %current = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %1, i32 0, i32 1
  %2 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %current, align 8
  %cmp = icmp eq %struct.bitmap_element_def* %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %head.addr, align 8
  %indx2 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %3, i32 0, i32 2
  %4 = load i32, i32* %indx2, align 4
  %conv3 = zext i32 %4 to i64
  %5 = load i64, i64* %indx, align 8
  %cmp4 = icmp eq i64 %conv3, %5
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %head.addr, align 8
  %current6 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %6, i32 0, i32 1
  %7 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %current6, align 8
  store %struct.bitmap_element_def* %7, %struct.bitmap_element_def** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %8 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %head.addr, align 8
  %indx7 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %8, i32 0, i32 2
  %9 = load i32, i32* %indx7, align 4
  %conv8 = zext i32 %9 to i64
  %10 = load i64, i64* %indx, align 8
  %cmp9 = icmp ugt i64 %conv8, %10
  br i1 %cmp9, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end
  %11 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %head.addr, align 8
  %current12 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %11, i32 0, i32 1
  %12 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %current12, align 8
  store %struct.bitmap_element_def* %12, %struct.bitmap_element_def** %element, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.11
  %13 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %element, align 8
  %prev = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %13, i32 0, i32 1
  %14 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %prev, align 8
  %cmp13 = icmp ne %struct.bitmap_element_def* %14, null
  br i1 %cmp13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %15 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %element, align 8
  %indx15 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %15, i32 0, i32 2
  %16 = load i32, i32* %indx15, align 4
  %conv16 = zext i32 %16 to i64
  %17 = load i64, i64* %indx, align 8
  %cmp17 = icmp ugt i64 %conv16, %17
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %18 = phi i1 [ false, %for.cond ], [ %cmp17, %land.rhs ]
  br i1 %18, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %element, align 8
  %prev19 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %19, i32 0, i32 1
  %20 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %prev19, align 8
  store %struct.bitmap_element_def* %20, %struct.bitmap_element_def** %element, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  br label %if.end.34

if.else:                                          ; preds = %if.end
  %21 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %head.addr, align 8
  %current20 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %21, i32 0, i32 1
  %22 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %current20, align 8
  store %struct.bitmap_element_def* %22, %struct.bitmap_element_def** %element, align 8
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.31, %if.else
  %23 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %element, align 8
  %next = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %23, i32 0, i32 0
  %24 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next, align 8
  %cmp22 = icmp ne %struct.bitmap_element_def* %24, null
  br i1 %cmp22, label %land.rhs.24, label %land.end.29

land.rhs.24:                                      ; preds = %for.cond.21
  %25 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %element, align 8
  %indx25 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %25, i32 0, i32 2
  %26 = load i32, i32* %indx25, align 4
  %conv26 = zext i32 %26 to i64
  %27 = load i64, i64* %indx, align 8
  %cmp27 = icmp ult i64 %conv26, %27
  br label %land.end.29

land.end.29:                                      ; preds = %land.rhs.24, %for.cond.21
  %28 = phi i1 [ false, %for.cond.21 ], [ %cmp27, %land.rhs.24 ]
  br i1 %28, label %for.body.30, label %for.end.33

for.body.30:                                      ; preds = %land.end.29
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.body.30
  %29 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %element, align 8
  %next32 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %29, i32 0, i32 0
  %30 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next32, align 8
  store %struct.bitmap_element_def* %30, %struct.bitmap_element_def** %element, align 8
  br label %for.cond.21

for.end.33:                                       ; preds = %land.end.29
  br label %if.end.34

if.end.34:                                        ; preds = %for.end.33, %for.end
  %31 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %element, align 8
  %32 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %head.addr, align 8
  %current35 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %32, i32 0, i32 1
  store %struct.bitmap_element_def* %31, %struct.bitmap_element_def** %current35, align 8
  %33 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %element, align 8
  %indx36 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %33, i32 0, i32 2
  %34 = load i32, i32* %indx36, align 4
  %35 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %head.addr, align 8
  %indx37 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %35, i32 0, i32 2
  store i32 %34, i32* %indx37, align 4
  %36 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %element, align 8
  %cmp38 = icmp ne %struct.bitmap_element_def* %36, null
  br i1 %cmp38, label %land.lhs.true, label %if.end.45

land.lhs.true:                                    ; preds = %if.end.34
  %37 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %element, align 8
  %indx40 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %37, i32 0, i32 2
  %38 = load i32, i32* %indx40, align 4
  %conv41 = zext i32 %38 to i64
  %39 = load i64, i64* %indx, align 8
  %cmp42 = icmp ne i64 %conv41, %39
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %land.lhs.true
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %element, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %land.lhs.true, %if.end.34
  %40 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %element, align 8
  store %struct.bitmap_element_def* %40, %struct.bitmap_element_def** %retval
  br label %return

return:                                           ; preds = %if.end.45, %if.then
  %41 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %retval
  ret %struct.bitmap_element_def* %41
}

; Function Attrs: nounwind uwtable
define internal i32 @bitmap_element_zerop(%struct.bitmap_element_def* %element) #0 {
entry:
  %element.addr = alloca %struct.bitmap_element_def*, align 8
  store %struct.bitmap_element_def* %element, %struct.bitmap_element_def** %element.addr, align 8
  %0 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %element.addr, align 8
  %bits = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %0, i32 0, i32 3
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %bits, i32 0, i64 0
  %1 = load i64, i64* %arrayidx, align 8
  %2 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %element.addr, align 8
  %bits1 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %2, i32 0, i32 3
  %arrayidx2 = getelementptr inbounds [2 x i64], [2 x i64]* %bits1, i32 0, i64 1
  %3 = load i64, i64* %arrayidx2, align 8
  %or = or i64 %1, %3
  %cmp = icmp eq i64 %or, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal void @bitmap_element_free(%struct.bitmap_head_def* %head, %struct.bitmap_element_def* %elt) #0 {
entry:
  %head.addr = alloca %struct.bitmap_head_def*, align 8
  %elt.addr = alloca %struct.bitmap_element_def*, align 8
  %next = alloca %struct.bitmap_element_def*, align 8
  %prev = alloca %struct.bitmap_element_def*, align 8
  store %struct.bitmap_head_def* %head, %struct.bitmap_head_def** %head.addr, align 8
  store %struct.bitmap_element_def* %elt, %struct.bitmap_element_def** %elt.addr, align 8
  %0 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %elt.addr, align 8
  %next1 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %0, i32 0, i32 0
  %1 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next1, align 8
  store %struct.bitmap_element_def* %1, %struct.bitmap_element_def** %next, align 8
  %2 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %elt.addr, align 8
  %prev2 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %2, i32 0, i32 1
  %3 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %prev2, align 8
  store %struct.bitmap_element_def* %3, %struct.bitmap_element_def** %prev, align 8
  %4 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %prev, align 8
  %tobool = icmp ne %struct.bitmap_element_def* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next, align 8
  %6 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %prev, align 8
  %next3 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %6, i32 0, i32 0
  store %struct.bitmap_element_def* %5, %struct.bitmap_element_def** %next3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next, align 8
  %tobool4 = icmp ne %struct.bitmap_element_def* %7, null
  br i1 %tobool4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %8 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %prev, align 8
  %9 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next, align 8
  %prev6 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %9, i32 0, i32 1
  store %struct.bitmap_element_def* %8, %struct.bitmap_element_def** %prev6, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  %10 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %head.addr, align 8
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %10, i32 0, i32 0
  %11 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8
  %12 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %elt.addr, align 8
  %cmp = icmp eq %struct.bitmap_element_def* %11, %12
  br i1 %cmp, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end.7
  %13 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next, align 8
  %14 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %head.addr, align 8
  %first9 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %14, i32 0, i32 0
  store %struct.bitmap_element_def* %13, %struct.bitmap_element_def** %first9, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end.7
  %15 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %head.addr, align 8
  %current = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %15, i32 0, i32 1
  %16 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %current, align 8
  %17 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %elt.addr, align 8
  %cmp11 = icmp eq %struct.bitmap_element_def* %16, %17
  br i1 %cmp11, label %if.then.12, label %if.end.21

if.then.12:                                       ; preds = %if.end.10
  %18 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next, align 8
  %cmp13 = icmp ne %struct.bitmap_element_def* %18, null
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.12
  %19 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.12
  %20 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %prev, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.bitmap_element_def* [ %19, %cond.true ], [ %20, %cond.false ]
  %21 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %head.addr, align 8
  %current14 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %21, i32 0, i32 1
  store %struct.bitmap_element_def* %cond, %struct.bitmap_element_def** %current14, align 8
  %22 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %head.addr, align 8
  %current15 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %22, i32 0, i32 1
  %23 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %current15, align 8
  %tobool16 = icmp ne %struct.bitmap_element_def* %23, null
  br i1 %tobool16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %cond.end
  %24 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %head.addr, align 8
  %current18 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %24, i32 0, i32 1
  %25 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %current18, align 8
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %25, i32 0, i32 2
  %26 = load i32, i32* %indx, align 4
  %27 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %head.addr, align 8
  %indx19 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %27, i32 0, i32 2
  store i32 %26, i32* %indx19, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %cond.end
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.end.10
  %28 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** @bitmap_free, align 8
  %29 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %elt.addr, align 8
  %next22 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %29, i32 0, i32 0
  store %struct.bitmap_element_def* %28, %struct.bitmap_element_def** %next22, align 8
  %30 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %elt.addr, align 8
  store %struct.bitmap_element_def* %30, %struct.bitmap_element_def** @bitmap_free, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @bitmap_set_bit(%struct.bitmap_head_def* %head, i32 %bit) #0 {
entry:
  %head.addr = alloca %struct.bitmap_head_def*, align 8
  %bit.addr = alloca i32, align 4
  %ptr = alloca %struct.bitmap_element_def*, align 8
  %word_num = alloca i32, align 4
  %bit_num = alloca i32, align 4
  %bit_val = alloca i64, align 8
  store %struct.bitmap_head_def* %head, %struct.bitmap_head_def** %head.addr, align 8
  store i32 %bit, i32* %bit.addr, align 4
  %0 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %head.addr, align 8
  %1 = load i32, i32* %bit.addr, align 4
  %call = call %struct.bitmap_element_def* @bitmap_find_bit(%struct.bitmap_head_def* %0, i32 %1)
  store %struct.bitmap_element_def* %call, %struct.bitmap_element_def** %ptr, align 8
  %2 = load i32, i32* %bit.addr, align 4
  %div = udiv i32 %2, 64
  %rem = urem i32 %div, 2
  store i32 %rem, i32* %word_num, align 4
  %3 = load i32, i32* %bit.addr, align 4
  %rem1 = urem i32 %3, 64
  store i32 %rem1, i32* %bit_num, align 4
  %4 = load i32, i32* %bit_num, align 4
  %sh_prom = zext i32 %4 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, i64* %bit_val, align 8
  %5 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr, align 8
  %cmp = icmp eq %struct.bitmap_element_def* %5, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call2 = call %struct.bitmap_element_def* @bitmap_element_allocate()
  store %struct.bitmap_element_def* %call2, %struct.bitmap_element_def** %ptr, align 8
  %6 = load i32, i32* %bit.addr, align 4
  %div3 = udiv i32 %6, 128
  %7 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr, align 8
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %7, i32 0, i32 2
  store i32 %div3, i32* %indx, align 4
  %8 = load i64, i64* %bit_val, align 8
  %9 = load i32, i32* %word_num, align 4
  %idxprom = zext i32 %9 to i64
  %10 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr, align 8
  %bits = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %10, i32 0, i32 3
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %bits, i32 0, i64 %idxprom
  store i64 %8, i64* %arrayidx, align 8
  %11 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %head.addr, align 8
  %12 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr, align 8
  call void @bitmap_element_link(%struct.bitmap_head_def* %11, %struct.bitmap_element_def* %12)
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load i64, i64* %bit_val, align 8
  %14 = load i32, i32* %word_num, align 4
  %idxprom4 = zext i32 %14 to i64
  %15 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr, align 8
  %bits5 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %15, i32 0, i32 3
  %arrayidx6 = getelementptr inbounds [2 x i64], [2 x i64]* %bits5, i32 0, i64 %idxprom4
  %16 = load i64, i64* %arrayidx6, align 8
  %or = or i64 %16, %13
  store i64 %or, i64* %arrayidx6, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bitmap_element_link(%struct.bitmap_head_def* %head, %struct.bitmap_element_def* %element) #0 {
entry:
  %head.addr = alloca %struct.bitmap_head_def*, align 8
  %element.addr = alloca %struct.bitmap_element_def*, align 8
  %indx = alloca i32, align 4
  %ptr = alloca %struct.bitmap_element_def*, align 8
  store %struct.bitmap_head_def* %head, %struct.bitmap_head_def** %head.addr, align 8
  store %struct.bitmap_element_def* %element, %struct.bitmap_element_def** %element.addr, align 8
  %0 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %element.addr, align 8
  %indx1 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %0, i32 0, i32 2
  %1 = load i32, i32* %indx1, align 4
  store i32 %1, i32* %indx, align 4
  %2 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %head.addr, align 8
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %2, i32 0, i32 0
  %3 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8
  %cmp = icmp eq %struct.bitmap_element_def* %3, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %element.addr, align 8
  %prev = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %4, i32 0, i32 1
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %prev, align 8
  %5 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %element.addr, align 8
  %next = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %5, i32 0, i32 0
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %next, align 8
  %6 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %element.addr, align 8
  %7 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %head.addr, align 8
  %first2 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %7, i32 0, i32 0
  store %struct.bitmap_element_def* %6, %struct.bitmap_element_def** %first2, align 8
  br label %if.end.47

if.else:                                          ; preds = %entry
  %8 = load i32, i32* %indx, align 4
  %9 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %head.addr, align 8
  %indx3 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %9, i32 0, i32 2
  %10 = load i32, i32* %indx3, align 4
  %cmp4 = icmp ult i32 %8, %10
  br i1 %cmp4, label %if.then.5, label %if.else.22

if.then.5:                                        ; preds = %if.else
  %11 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %head.addr, align 8
  %current = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %11, i32 0, i32 1
  %12 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %current, align 8
  store %struct.bitmap_element_def* %12, %struct.bitmap_element_def** %ptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.5
  %13 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr, align 8
  %prev6 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %13, i32 0, i32 1
  %14 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %prev6, align 8
  %cmp7 = icmp ne %struct.bitmap_element_def* %14, null
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %15 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr, align 8
  %prev8 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %15, i32 0, i32 1
  %16 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %prev8, align 8
  %indx9 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %16, i32 0, i32 2
  %17 = load i32, i32* %indx9, align 4
  %18 = load i32, i32* %indx, align 4
  %cmp10 = icmp ugt i32 %17, %18
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %19 = phi i1 [ false, %for.cond ], [ %cmp10, %land.rhs ]
  br i1 %19, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr, align 8
  %prev11 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %20, i32 0, i32 1
  %21 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %prev11, align 8
  store %struct.bitmap_element_def* %21, %struct.bitmap_element_def** %ptr, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %22 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr, align 8
  %prev12 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %22, i32 0, i32 1
  %23 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %prev12, align 8
  %tobool = icmp ne %struct.bitmap_element_def* %23, null
  br i1 %tobool, label %if.then.13, label %if.else.16

if.then.13:                                       ; preds = %for.end
  %24 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %element.addr, align 8
  %25 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr, align 8
  %prev14 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %25, i32 0, i32 1
  %26 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %prev14, align 8
  %next15 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %26, i32 0, i32 0
  store %struct.bitmap_element_def* %24, %struct.bitmap_element_def** %next15, align 8
  br label %if.end

if.else.16:                                       ; preds = %for.end
  %27 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %element.addr, align 8
  %28 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %head.addr, align 8
  %first17 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %28, i32 0, i32 0
  store %struct.bitmap_element_def* %27, %struct.bitmap_element_def** %first17, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.16, %if.then.13
  %29 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr, align 8
  %prev18 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %29, i32 0, i32 1
  %30 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %prev18, align 8
  %31 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %element.addr, align 8
  %prev19 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %31, i32 0, i32 1
  store %struct.bitmap_element_def* %30, %struct.bitmap_element_def** %prev19, align 8
  %32 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr, align 8
  %33 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %element.addr, align 8
  %next20 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %33, i32 0, i32 0
  store %struct.bitmap_element_def* %32, %struct.bitmap_element_def** %next20, align 8
  %34 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %element.addr, align 8
  %35 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr, align 8
  %prev21 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %35, i32 0, i32 1
  store %struct.bitmap_element_def* %34, %struct.bitmap_element_def** %prev21, align 8
  br label %if.end.46

if.else.22:                                       ; preds = %if.else
  %36 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %head.addr, align 8
  %current23 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %36, i32 0, i32 1
  %37 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %current23, align 8
  store %struct.bitmap_element_def* %37, %struct.bitmap_element_def** %ptr, align 8
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.33, %if.else.22
  %38 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr, align 8
  %next25 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %38, i32 0, i32 0
  %39 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next25, align 8
  %cmp26 = icmp ne %struct.bitmap_element_def* %39, null
  br i1 %cmp26, label %land.rhs.27, label %land.end.31

land.rhs.27:                                      ; preds = %for.cond.24
  %40 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr, align 8
  %next28 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %40, i32 0, i32 0
  %41 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next28, align 8
  %indx29 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %41, i32 0, i32 2
  %42 = load i32, i32* %indx29, align 4
  %43 = load i32, i32* %indx, align 4
  %cmp30 = icmp ult i32 %42, %43
  br label %land.end.31

land.end.31:                                      ; preds = %land.rhs.27, %for.cond.24
  %44 = phi i1 [ false, %for.cond.24 ], [ %cmp30, %land.rhs.27 ]
  br i1 %44, label %for.body.32, label %for.end.35

for.body.32:                                      ; preds = %land.end.31
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.body.32
  %45 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr, align 8
  %next34 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %45, i32 0, i32 0
  %46 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next34, align 8
  store %struct.bitmap_element_def* %46, %struct.bitmap_element_def** %ptr, align 8
  br label %for.cond.24

for.end.35:                                       ; preds = %land.end.31
  %47 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr, align 8
  %next36 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %47, i32 0, i32 0
  %48 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next36, align 8
  %tobool37 = icmp ne %struct.bitmap_element_def* %48, null
  br i1 %tobool37, label %if.then.38, label %if.end.41

if.then.38:                                       ; preds = %for.end.35
  %49 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %element.addr, align 8
  %50 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr, align 8
  %next39 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %50, i32 0, i32 0
  %51 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next39, align 8
  %prev40 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %51, i32 0, i32 1
  store %struct.bitmap_element_def* %49, %struct.bitmap_element_def** %prev40, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.38, %for.end.35
  %52 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr, align 8
  %next42 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %52, i32 0, i32 0
  %53 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next42, align 8
  %54 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %element.addr, align 8
  %next43 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %54, i32 0, i32 0
  store %struct.bitmap_element_def* %53, %struct.bitmap_element_def** %next43, align 8
  %55 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr, align 8
  %56 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %element.addr, align 8
  %prev44 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %56, i32 0, i32 1
  store %struct.bitmap_element_def* %55, %struct.bitmap_element_def** %prev44, align 8
  %57 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %element.addr, align 8
  %58 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr, align 8
  %next45 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %58, i32 0, i32 0
  store %struct.bitmap_element_def* %57, %struct.bitmap_element_def** %next45, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.41, %if.end
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then
  %59 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %element.addr, align 8
  %60 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %head.addr, align 8
  %current48 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %60, i32 0, i32 1
  store %struct.bitmap_element_def* %59, %struct.bitmap_element_def** %current48, align 8
  %61 = load i32, i32* %indx, align 4
  %62 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %head.addr, align 8
  %indx49 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %62, i32 0, i32 2
  store i32 %61, i32* %indx49, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @bitmap_bit_p(%struct.bitmap_head_def* %head, i32 %bit) #0 {
entry:
  %retval = alloca i32, align 4
  %head.addr = alloca %struct.bitmap_head_def*, align 8
  %bit.addr = alloca i32, align 4
  %ptr = alloca %struct.bitmap_element_def*, align 8
  %bit_num = alloca i32, align 4
  %word_num = alloca i32, align 4
  store %struct.bitmap_head_def* %head, %struct.bitmap_head_def** %head.addr, align 8
  store i32 %bit, i32* %bit.addr, align 4
  %0 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %head.addr, align 8
  %1 = load i32, i32* %bit.addr, align 4
  %call = call %struct.bitmap_element_def* @bitmap_find_bit(%struct.bitmap_head_def* %0, i32 %1)
  store %struct.bitmap_element_def* %call, %struct.bitmap_element_def** %ptr, align 8
  %2 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr, align 8
  %cmp = icmp eq %struct.bitmap_element_def* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %bit.addr, align 4
  %rem = urem i32 %3, 64
  store i32 %rem, i32* %bit_num, align 4
  %4 = load i32, i32* %bit.addr, align 4
  %div = udiv i32 %4, 64
  %rem1 = urem i32 %div, 2
  store i32 %rem1, i32* %word_num, align 4
  %5 = load i32, i32* %word_num, align 4
  %idxprom = zext i32 %5 to i64
  %6 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr, align 8
  %bits = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %6, i32 0, i32 3
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %bits, i32 0, i64 %idxprom
  %7 = load i64, i64* %arrayidx, align 8
  %8 = load i32, i32* %bit_num, align 4
  %sh_prom = zext i32 %8 to i64
  %shr = lshr i64 %7, %sh_prom
  %and = and i64 %shr, 1
  %conv = trunc i64 %and to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @bitmap_first_set_bit(%struct.bitmap_head_def* %a) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %struct.bitmap_head_def*, align 8
  %ptr = alloca %struct.bitmap_element_def*, align 8
  %word = alloca i64, align 8
  %word_num = alloca i32, align 4
  %bit_num = alloca i32, align 4
  store %struct.bitmap_head_def* %a, %struct.bitmap_head_def** %a.addr, align 8
  %0 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %a.addr, align 8
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %0, i32 0, i32 0
  %1 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8
  store %struct.bitmap_element_def* %1, %struct.bitmap_element_def** %ptr, align 8
  %2 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr, align 8
  %cmp = icmp eq %struct.bitmap_element_def* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %word_num, align 4
  %3 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr, align 8
  %bits = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %3, i32 0, i32 3
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %bits, i32 0, i64 0
  %4 = load i64, i64* %arrayidx, align 8
  store i64 %4, i64* %word, align 8
  %5 = load i64, i64* %word, align 8
  %cmp1 = icmp eq i64 %5, 0
  br i1 %cmp1, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.end
  store i32 1, i32* %word_num, align 4
  %6 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr, align 8
  %bits3 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %6, i32 0, i32 3
  %arrayidx4 = getelementptr inbounds [2 x i64], [2 x i64]* %bits3, i32 0, i64 1
  %7 = load i64, i64* %arrayidx4, align 8
  store i64 %7, i64* %word, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.2, %if.end
  store i32 0, i32* %bit_num, align 4
  %8 = load i64, i64* %word, align 8
  %9 = load i64, i64* %word, align 8
  %sub = sub i64 0, %9
  %and = and i64 %8, %sub
  store i64 %and, i64* %word, align 8
  %10 = load i64, i64* %word, align 8
  %and6 = and i64 %10, 4294967295
  %cmp7 = icmp eq i64 %and6, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  %11 = load i64, i64* %word, align 8
  %shr = lshr i64 %11, 32
  store i64 %shr, i64* %word, align 8
  %12 = load i32, i32* %bit_num, align 4
  %add = add i32 %12, 32
  store i32 %add, i32* %bit_num, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.5
  %13 = load i64, i64* %word, align 8
  %and10 = and i64 %13, 65535
  %cmp11 = icmp eq i64 %and10, 0
  br i1 %cmp11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %if.end.9
  %14 = load i64, i64* %word, align 8
  %shr13 = lshr i64 %14, 16
  store i64 %shr13, i64* %word, align 8
  %15 = load i32, i32* %bit_num, align 4
  %add14 = add i32 %15, 16
  store i32 %add14, i32* %bit_num, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %if.end.9
  %16 = load i64, i64* %word, align 8
  %and16 = and i64 %16, 255
  %cmp17 = icmp eq i64 %and16, 0
  br i1 %cmp17, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %if.end.15
  %17 = load i64, i64* %word, align 8
  %shr19 = lshr i64 %17, 8
  store i64 %shr19, i64* %word, align 8
  %18 = load i32, i32* %bit_num, align 4
  %add20 = add i32 %18, 8
  store i32 %add20, i32* %bit_num, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.18, %if.end.15
  %19 = load i64, i64* %word, align 8
  %and22 = and i64 %19, 240
  %tobool = icmp ne i64 %and22, 0
  br i1 %tobool, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.end.21
  %20 = load i32, i32* %bit_num, align 4
  %add24 = add i32 %20, 4
  store i32 %add24, i32* %bit_num, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %if.end.21
  %21 = load i64, i64* %word, align 8
  %and26 = and i64 %21, 204
  %tobool27 = icmp ne i64 %and26, 0
  br i1 %tobool27, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %if.end.25
  %22 = load i32, i32* %bit_num, align 4
  %add29 = add i32 %22, 2
  store i32 %add29, i32* %bit_num, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %if.end.25
  %23 = load i64, i64* %word, align 8
  %and31 = and i64 %23, 170
  %tobool32 = icmp ne i64 %and31, 0
  br i1 %tobool32, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %if.end.30
  %24 = load i32, i32* %bit_num, align 4
  %add34 = add i32 %24, 1
  store i32 %add34, i32* %bit_num, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %if.end.30
  %25 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr, align 8
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %25, i32 0, i32 2
  %26 = load i32, i32* %indx, align 4
  %mul = mul i32 %26, 128
  %27 = load i32, i32* %word_num, align 4
  %mul36 = mul i32 %27, 64
  %add37 = add i32 %mul, %mul36
  %28 = load i32, i32* %bit_num, align 4
  %add38 = add i32 %add37, %28
  store i32 %add38, i32* %retval
  br label %return

return:                                           ; preds = %if.end.35, %if.then
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define i32 @bitmap_last_set_bit(%struct.bitmap_head_def* %a) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %struct.bitmap_head_def*, align 8
  %ptr = alloca %struct.bitmap_element_def*, align 8
  %word = alloca i64, align 8
  %word_num = alloca i32, align 4
  %bit_num = alloca i32, align 4
  store %struct.bitmap_head_def* %a, %struct.bitmap_head_def** %a.addr, align 8
  %0 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %a.addr, align 8
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %0, i32 0, i32 0
  %1 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8
  store %struct.bitmap_element_def* %1, %struct.bitmap_element_def** %ptr, align 8
  %2 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr, align 8
  %cmp = icmp eq %struct.bitmap_element_def* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %3 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr, align 8
  %next = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %3, i32 0, i32 0
  %4 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next, align 8
  %cmp1 = icmp ne %struct.bitmap_element_def* %4, null
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr, align 8
  %next2 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %5, i32 0, i32 0
  %6 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next2, align 8
  store %struct.bitmap_element_def* %6, %struct.bitmap_element_def** %ptr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %word_num, align 4
  %7 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr, align 8
  %bits = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %7, i32 0, i32 3
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %bits, i32 0, i64 1
  %8 = load i64, i64* %arrayidx, align 8
  store i64 %8, i64* %word, align 8
  %9 = load i64, i64* %word, align 8
  %cmp3 = icmp eq i64 %9, 0
  br i1 %cmp3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %while.end
  store i32 0, i32* %word_num, align 4
  %10 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr, align 8
  %bits5 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %10, i32 0, i32 3
  %arrayidx6 = getelementptr inbounds [2 x i64], [2 x i64]* %bits5, i32 0, i64 0
  %11 = load i64, i64* %arrayidx6, align 8
  store i64 %11, i64* %word, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.4, %while.end
  store i32 0, i32* %bit_num, align 4
  %12 = load i64, i64* %word, align 8
  %and = and i64 %12, -4294967296
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.7
  %13 = load i64, i64* %word, align 8
  %shr = lshr i64 %13, 32
  store i64 %shr, i64* %word, align 8
  %14 = load i32, i32* %bit_num, align 4
  %add = add i32 %14, 32
  store i32 %add, i32* %bit_num, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.7
  %15 = load i64, i64* %word, align 8
  %and10 = and i64 %15, 4294901760
  %tobool11 = icmp ne i64 %and10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %if.end.9
  %16 = load i64, i64* %word, align 8
  %shr13 = lshr i64 %16, 16
  store i64 %shr13, i64* %word, align 8
  %17 = load i32, i32* %bit_num, align 4
  %add14 = add i32 %17, 16
  store i32 %add14, i32* %bit_num, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %if.end.9
  %18 = load i64, i64* %word, align 8
  %and16 = and i64 %18, 65280
  %tobool17 = icmp ne i64 %and16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %if.end.15
  %19 = load i64, i64* %word, align 8
  %shr19 = lshr i64 %19, 8
  store i64 %shr19, i64* %word, align 8
  %20 = load i32, i32* %bit_num, align 4
  %add20 = add i32 %20, 8
  store i32 %add20, i32* %bit_num, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.18, %if.end.15
  %21 = load i64, i64* %word, align 8
  %and22 = and i64 %21, 240
  %tobool23 = icmp ne i64 %and22, 0
  br i1 %tobool23, label %if.then.24, label %if.end.27

if.then.24:                                       ; preds = %if.end.21
  %22 = load i64, i64* %word, align 8
  %shr25 = lshr i64 %22, 4
  store i64 %shr25, i64* %word, align 8
  %23 = load i32, i32* %bit_num, align 4
  %add26 = add i32 %23, 4
  store i32 %add26, i32* %bit_num, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.24, %if.end.21
  %24 = load i64, i64* %word, align 8
  %and28 = and i64 %24, 12
  %tobool29 = icmp ne i64 %and28, 0
  br i1 %tobool29, label %if.then.30, label %if.end.33

if.then.30:                                       ; preds = %if.end.27
  %25 = load i64, i64* %word, align 8
  %shr31 = lshr i64 %25, 2
  store i64 %shr31, i64* %word, align 8
  %26 = load i32, i32* %bit_num, align 4
  %add32 = add i32 %26, 2
  store i32 %add32, i32* %bit_num, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.30, %if.end.27
  %27 = load i64, i64* %word, align 8
  %and34 = and i64 %27, 2
  %tobool35 = icmp ne i64 %and34, 0
  br i1 %tobool35, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %if.end.33
  %28 = load i32, i32* %bit_num, align 4
  %add37 = add i32 %28, 1
  store i32 %add37, i32* %bit_num, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %if.end.33
  %29 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr, align 8
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %29, i32 0, i32 2
  %30 = load i32, i32* %indx, align 4
  %mul = mul i32 %30, 128
  %31 = load i32, i32* %word_num, align 4
  %mul39 = mul i32 %31, 64
  %add40 = add i32 %mul, %mul39
  %32 = load i32, i32* %bit_num, align 4
  %add41 = add i32 %add40, %32
  store i32 %add41, i32* %retval
  br label %return

return:                                           ; preds = %if.end.38, %if.then
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define i32 @bitmap_operation(%struct.bitmap_head_def* %to, %struct.bitmap_head_def* %from1, %struct.bitmap_head_def* %from2, i32 %operation) #0 {
entry:
  %to.addr = alloca %struct.bitmap_head_def*, align 8
  %from1.addr = alloca %struct.bitmap_head_def*, align 8
  %from2.addr = alloca %struct.bitmap_head_def*, align 8
  %operation.addr = alloca i32, align 4
  %from1_ptr = alloca %struct.bitmap_element_def*, align 8
  %from2_ptr = alloca %struct.bitmap_element_def*, align 8
  %indx1 = alloca i32, align 4
  %indx2 = alloca i32, align 4
  %to_ptr = alloca %struct.bitmap_element_def*, align 8
  %from1_tmp = alloca %struct.bitmap_element_def*, align 8
  %from2_tmp = alloca %struct.bitmap_element_def*, align 8
  %to_tmp = alloca %struct.bitmap_element_def*, align 8
  %indx9 = alloca i32, align 4
  %changed = alloca i32, align 4
  %t0 = alloca i64, align 8
  %t1 = alloca i64, align 8
  %f10 = alloca i64, align 8
  %f11 = alloca i64, align 8
  %f20 = alloca i64, align 8
  %f21 = alloca i64, align 8
  %t079 = alloca i64, align 8
  %t180 = alloca i64, align 8
  %f1081 = alloca i64, align 8
  %f1182 = alloca i64, align 8
  %f2083 = alloca i64, align 8
  %f2184 = alloca i64, align 8
  %t0113 = alloca i64, align 8
  %t1114 = alloca i64, align 8
  %f10115 = alloca i64, align 8
  %f11116 = alloca i64, align 8
  %f20117 = alloca i64, align 8
  %f21118 = alloca i64, align 8
  %t0146 = alloca i64, align 8
  %t1147 = alloca i64, align 8
  %f10148 = alloca i64, align 8
  %f11149 = alloca i64, align 8
  %f20150 = alloca i64, align 8
  %f21151 = alloca i64, align 8
  %t0181 = alloca i64, align 8
  %t1182 = alloca i64, align 8
  %f10183 = alloca i64, align 8
  %f11184 = alloca i64, align 8
  %f20185 = alloca i64, align 8
  %f21186 = alloca i64, align 8
  store %struct.bitmap_head_def* %to, %struct.bitmap_head_def** %to.addr, align 8
  store %struct.bitmap_head_def* %from1, %struct.bitmap_head_def** %from1.addr, align 8
  store %struct.bitmap_head_def* %from2, %struct.bitmap_head_def** %from2.addr, align 8
  store i32 %operation, i32* %operation.addr, align 4
  %0 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %from1.addr, align 8
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %0, i32 0, i32 0
  %1 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8
  store %struct.bitmap_element_def* %1, %struct.bitmap_element_def** %from1_ptr, align 8
  %2 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %from2.addr, align 8
  %first1 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %2, i32 0, i32 0
  %3 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first1, align 8
  store %struct.bitmap_element_def* %3, %struct.bitmap_element_def** %from2_ptr, align 8
  %4 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %from1_ptr, align 8
  %tobool = icmp ne %struct.bitmap_element_def* %4, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %from1_ptr, align 8
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %5, i32 0, i32 2
  %6 = load i32, i32* %indx, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ -1, %cond.false ]
  store i32 %cond, i32* %indx1, align 4
  %7 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %from2_ptr, align 8
  %tobool2 = icmp ne %struct.bitmap_element_def* %7, null
  br i1 %tobool2, label %cond.true.3, label %cond.false.5

cond.true.3:                                      ; preds = %cond.end
  %8 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %from2_ptr, align 8
  %indx4 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %8, i32 0, i32 2
  %9 = load i32, i32* %indx4, align 4
  br label %cond.end.6

cond.false.5:                                     ; preds = %cond.end
  br label %cond.end.6

cond.end.6:                                       ; preds = %cond.false.5, %cond.true.3
  %cond7 = phi i32 [ %9, %cond.true.3 ], [ -1, %cond.false.5 ]
  store i32 %cond7, i32* %indx2, align 4
  %10 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %to.addr, align 8
  %first8 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %10, i32 0, i32 0
  %11 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first8, align 8
  store %struct.bitmap_element_def* %11, %struct.bitmap_element_def** %to_ptr, align 8
  store i32 0, i32* %changed, align 4
  %12 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %to.addr, align 8
  %current = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %12, i32 0, i32 1
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %current, align 8
  %13 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %to.addr, align 8
  %first10 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %13, i32 0, i32 0
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %first10, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.217, %cond.end.6
  %14 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %from1_ptr, align 8
  %cmp = icmp ne %struct.bitmap_element_def* %14, null
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %15 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %from2_ptr, align 8
  %cmp11 = icmp ne %struct.bitmap_element_def* %15, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %16 = phi i1 [ true, %while.cond ], [ %cmp11, %lor.rhs ]
  br i1 %16, label %while.body, label %while.end.218

while.body:                                       ; preds = %lor.end
  %17 = load i32, i32* %indx1, align 4
  %18 = load i32, i32* %indx2, align 4
  %cmp12 = icmp eq i32 %17, %18
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %19 = load i32, i32* %indx1, align 4
  store i32 %19, i32* %indx9, align 4
  %20 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %from1_ptr, align 8
  store %struct.bitmap_element_def* %20, %struct.bitmap_element_def** %from1_tmp, align 8
  %21 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %from2_ptr, align 8
  store %struct.bitmap_element_def* %21, %struct.bitmap_element_def** %from2_tmp, align 8
  %22 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %from1_ptr, align 8
  %next = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %22, i32 0, i32 0
  %23 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next, align 8
  store %struct.bitmap_element_def* %23, %struct.bitmap_element_def** %from1_ptr, align 8
  %24 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %from1_ptr, align 8
  %tobool13 = icmp ne %struct.bitmap_element_def* %24, null
  br i1 %tobool13, label %cond.true.14, label %cond.false.16

cond.true.14:                                     ; preds = %if.then
  %25 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %from1_ptr, align 8
  %indx15 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %25, i32 0, i32 2
  %26 = load i32, i32* %indx15, align 4
  br label %cond.end.17

cond.false.16:                                    ; preds = %if.then
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.false.16, %cond.true.14
  %cond18 = phi i32 [ %26, %cond.true.14 ], [ -1, %cond.false.16 ]
  store i32 %cond18, i32* %indx1, align 4
  %27 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %from2_ptr, align 8
  %next19 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %27, i32 0, i32 0
  %28 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next19, align 8
  store %struct.bitmap_element_def* %28, %struct.bitmap_element_def** %from2_ptr, align 8
  %29 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %from2_ptr, align 8
  %tobool20 = icmp ne %struct.bitmap_element_def* %29, null
  br i1 %tobool20, label %cond.true.21, label %cond.false.23

cond.true.21:                                     ; preds = %cond.end.17
  %30 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %from2_ptr, align 8
  %indx22 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %30, i32 0, i32 2
  %31 = load i32, i32* %indx22, align 4
  br label %cond.end.24

cond.false.23:                                    ; preds = %cond.end.17
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.23, %cond.true.21
  %cond25 = phi i32 [ %31, %cond.true.21 ], [ -1, %cond.false.23 ]
  store i32 %cond25, i32* %indx2, align 4
  br label %if.end.43

if.else:                                          ; preds = %while.body
  %32 = load i32, i32* %indx1, align 4
  %33 = load i32, i32* %indx2, align 4
  %cmp26 = icmp ult i32 %32, %33
  br i1 %cmp26, label %if.then.27, label %if.else.35

if.then.27:                                       ; preds = %if.else
  %34 = load i32, i32* %indx1, align 4
  store i32 %34, i32* %indx9, align 4
  %35 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %from1_ptr, align 8
  store %struct.bitmap_element_def* %35, %struct.bitmap_element_def** %from1_tmp, align 8
  store %struct.bitmap_element_def* @bitmap_zero_bits, %struct.bitmap_element_def** %from2_tmp, align 8
  %36 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %from1_ptr, align 8
  %next28 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %36, i32 0, i32 0
  %37 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next28, align 8
  store %struct.bitmap_element_def* %37, %struct.bitmap_element_def** %from1_ptr, align 8
  %38 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %from1_ptr, align 8
  %tobool29 = icmp ne %struct.bitmap_element_def* %38, null
  br i1 %tobool29, label %cond.true.30, label %cond.false.32

cond.true.30:                                     ; preds = %if.then.27
  %39 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %from1_ptr, align 8
  %indx31 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %39, i32 0, i32 2
  %40 = load i32, i32* %indx31, align 4
  br label %cond.end.33

cond.false.32:                                    ; preds = %if.then.27
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.false.32, %cond.true.30
  %cond34 = phi i32 [ %40, %cond.true.30 ], [ -1, %cond.false.32 ]
  store i32 %cond34, i32* %indx1, align 4
  br label %if.end

if.else.35:                                       ; preds = %if.else
  %41 = load i32, i32* %indx2, align 4
  store i32 %41, i32* %indx9, align 4
  store %struct.bitmap_element_def* @bitmap_zero_bits, %struct.bitmap_element_def** %from1_tmp, align 8
  %42 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %from2_ptr, align 8
  store %struct.bitmap_element_def* %42, %struct.bitmap_element_def** %from2_tmp, align 8
  %43 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %from2_ptr, align 8
  %next36 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %43, i32 0, i32 0
  %44 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next36, align 8
  store %struct.bitmap_element_def* %44, %struct.bitmap_element_def** %from2_ptr, align 8
  %45 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %from2_ptr, align 8
  %tobool37 = icmp ne %struct.bitmap_element_def* %45, null
  br i1 %tobool37, label %cond.true.38, label %cond.false.40

cond.true.38:                                     ; preds = %if.else.35
  %46 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %from2_ptr, align 8
  %indx39 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %46, i32 0, i32 2
  %47 = load i32, i32* %indx39, align 4
  br label %cond.end.41

cond.false.40:                                    ; preds = %if.else.35
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.40, %cond.true.38
  %cond42 = phi i32 [ %47, %cond.true.38 ], [ -1, %cond.false.40 ]
  store i32 %cond42, i32* %indx2, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end.41, %cond.end.33
  br label %if.end.43

if.end.43:                                        ; preds = %if.end, %cond.end.24
  br label %while.cond.44

while.cond.44:                                    ; preds = %while.body.48, %if.end.43
  %48 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %to_ptr, align 8
  %tobool45 = icmp ne %struct.bitmap_element_def* %48, null
  br i1 %tobool45, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.44
  %49 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %to_ptr, align 8
  %indx46 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %49, i32 0, i32 2
  %50 = load i32, i32* %indx46, align 4
  %51 = load i32, i32* %indx9, align 4
  %cmp47 = icmp ult i32 %50, %51
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.44
  %52 = phi i1 [ false, %while.cond.44 ], [ %cmp47, %land.rhs ]
  br i1 %52, label %while.body.48, label %while.end

while.body.48:                                    ; preds = %land.end
  store i32 1, i32* %changed, align 4
  %53 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %to_ptr, align 8
  store %struct.bitmap_element_def* %53, %struct.bitmap_element_def** %to_tmp, align 8
  %54 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %to_ptr, align 8
  %next49 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %54, i32 0, i32 0
  %55 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next49, align 8
  store %struct.bitmap_element_def* %55, %struct.bitmap_element_def** %to_ptr, align 8
  %56 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** @bitmap_free, align 8
  %57 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %to_tmp, align 8
  %next50 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %57, i32 0, i32 0
  store %struct.bitmap_element_def* %56, %struct.bitmap_element_def** %next50, align 8
  %58 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %to_tmp, align 8
  store %struct.bitmap_element_def* %58, %struct.bitmap_element_def** @bitmap_free, align 8
  br label %while.cond.44

while.end:                                        ; preds = %land.end
  %59 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %to_ptr, align 8
  %tobool51 = icmp ne %struct.bitmap_element_def* %59, null
  br i1 %tobool51, label %land.lhs.true, label %if.else.56

land.lhs.true:                                    ; preds = %while.end
  %60 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %to_ptr, align 8
  %indx52 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %60, i32 0, i32 2
  %61 = load i32, i32* %indx52, align 4
  %62 = load i32, i32* %indx9, align 4
  %cmp53 = icmp eq i32 %61, %62
  br i1 %cmp53, label %if.then.54, label %if.else.56

if.then.54:                                       ; preds = %land.lhs.true
  %63 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %to_ptr, align 8
  store %struct.bitmap_element_def* %63, %struct.bitmap_element_def** %to_tmp, align 8
  %64 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %to_ptr, align 8
  %next55 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %64, i32 0, i32 0
  %65 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next55, align 8
  store %struct.bitmap_element_def* %65, %struct.bitmap_element_def** %to_ptr, align 8
  br label %if.end.57

if.else.56:                                       ; preds = %land.lhs.true, %while.end
  %call = call %struct.bitmap_element_def* @bitmap_element_allocate()
  store %struct.bitmap_element_def* %call, %struct.bitmap_element_def** %to_tmp, align 8
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.56, %if.then.54
  %66 = load i32, i32* %operation.addr, align 4
  switch i32 %66, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.77
    i32 2, label %sw.bb.111
    i32 4, label %sw.bb.144
    i32 3, label %sw.bb.179
  ]

sw.default:                                       ; preds = %if.end.57
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 619, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__FUNCTION__.bitmap_operation, i32 0, i32 0)) #5
  unreachable

sw.bb:                                            ; preds = %if.end.57
  br label %do.body

do.body:                                          ; preds = %sw.bb
  %67 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %from1_tmp, align 8
  %bits = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %67, i32 0, i32 3
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %bits, i32 0, i64 0
  %68 = load i64, i64* %arrayidx, align 8
  store i64 %68, i64* %f10, align 8
  %69 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %from2_tmp, align 8
  %bits58 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %69, i32 0, i32 3
  %arrayidx59 = getelementptr inbounds [2 x i64], [2 x i64]* %bits58, i32 0, i64 0
  %70 = load i64, i64* %arrayidx59, align 8
  store i64 %70, i64* %f20, align 8
  %71 = load i64, i64* %f10, align 8
  %72 = load i64, i64* %f20, align 8
  %and = and i64 %71, %72
  store i64 %and, i64* %t0, align 8
  %73 = load i64, i64* %t0, align 8
  %74 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %to_tmp, align 8
  %bits60 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %74, i32 0, i32 3
  %arrayidx61 = getelementptr inbounds [2 x i64], [2 x i64]* %bits60, i32 0, i64 0
  %75 = load i64, i64* %arrayidx61, align 8
  %cmp62 = icmp ne i64 %73, %75
  %conv = zext i1 %cmp62 to i32
  %76 = load i32, i32* %changed, align 4
  %or = or i32 %76, %conv
  store i32 %or, i32* %changed, align 4
  %77 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %from1_tmp, align 8
  %bits63 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %77, i32 0, i32 3
  %arrayidx64 = getelementptr inbounds [2 x i64], [2 x i64]* %bits63, i32 0, i64 1
  %78 = load i64, i64* %arrayidx64, align 8
  store i64 %78, i64* %f11, align 8
  %79 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %from2_tmp, align 8
  %bits65 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %79, i32 0, i32 3
  %arrayidx66 = getelementptr inbounds [2 x i64], [2 x i64]* %bits65, i32 0, i64 1
  %80 = load i64, i64* %arrayidx66, align 8
  store i64 %80, i64* %f21, align 8
  %81 = load i64, i64* %f11, align 8
  %82 = load i64, i64* %f21, align 8
  %and67 = and i64 %81, %82
  store i64 %and67, i64* %t1, align 8
  %83 = load i64, i64* %t1, align 8
  %84 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %to_tmp, align 8
  %bits68 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %84, i32 0, i32 3
  %arrayidx69 = getelementptr inbounds [2 x i64], [2 x i64]* %bits68, i32 0, i64 1
  %85 = load i64, i64* %arrayidx69, align 8
  %cmp70 = icmp ne i64 %83, %85
  %conv71 = zext i1 %cmp70 to i32
  %86 = load i32, i32* %changed, align 4
  %or72 = or i32 %86, %conv71
  store i32 %or72, i32* %changed, align 4
  %87 = load i64, i64* %t0, align 8
  %88 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %to_tmp, align 8
  %bits73 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %88, i32 0, i32 3
  %arrayidx74 = getelementptr inbounds [2 x i64], [2 x i64]* %bits73, i32 0, i64 0
  store i64 %87, i64* %arrayidx74, align 8
  %89 = load i64, i64* %t1, align 8
  %90 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %to_tmp, align 8
  %bits75 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %90, i32 0, i32 3
  %arrayidx76 = getelementptr inbounds [2 x i64], [2 x i64]* %bits75, i32 0, i64 1
  store i64 %89, i64* %arrayidx76, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.bb.77:                                         ; preds = %if.end.57
  br label %do.body.78

do.body.78:                                       ; preds = %sw.bb.77
  %91 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %from1_tmp, align 8
  %bits85 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %91, i32 0, i32 3
  %arrayidx86 = getelementptr inbounds [2 x i64], [2 x i64]* %bits85, i32 0, i64 0
  %92 = load i64, i64* %arrayidx86, align 8
  store i64 %92, i64* %f1081, align 8
  %93 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %from2_tmp, align 8
  %bits87 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %93, i32 0, i32 3
  %arrayidx88 = getelementptr inbounds [2 x i64], [2 x i64]* %bits87, i32 0, i64 0
  %94 = load i64, i64* %arrayidx88, align 8
  store i64 %94, i64* %f2083, align 8
  %95 = load i64, i64* %f1081, align 8
  %96 = load i64, i64* %f2083, align 8
  %neg = xor i64 %96, -1
  %and89 = and i64 %95, %neg
  store i64 %and89, i64* %t079, align 8
  %97 = load i64, i64* %t079, align 8
  %98 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %to_tmp, align 8
  %bits90 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %98, i32 0, i32 3
  %arrayidx91 = getelementptr inbounds [2 x i64], [2 x i64]* %bits90, i32 0, i64 0
  %99 = load i64, i64* %arrayidx91, align 8
  %cmp92 = icmp ne i64 %97, %99
  %conv93 = zext i1 %cmp92 to i32
  %100 = load i32, i32* %changed, align 4
  %or94 = or i32 %100, %conv93
  store i32 %or94, i32* %changed, align 4
  %101 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %from1_tmp, align 8
  %bits95 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %101, i32 0, i32 3
  %arrayidx96 = getelementptr inbounds [2 x i64], [2 x i64]* %bits95, i32 0, i64 1
  %102 = load i64, i64* %arrayidx96, align 8
  store i64 %102, i64* %f1182, align 8
  %103 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %from2_tmp, align 8
  %bits97 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %103, i32 0, i32 3
  %arrayidx98 = getelementptr inbounds [2 x i64], [2 x i64]* %bits97, i32 0, i64 1
  %104 = load i64, i64* %arrayidx98, align 8
  store i64 %104, i64* %f2184, align 8
  %105 = load i64, i64* %f1182, align 8
  %106 = load i64, i64* %f2184, align 8
  %neg99 = xor i64 %106, -1
  %and100 = and i64 %105, %neg99
  store i64 %and100, i64* %t180, align 8
  %107 = load i64, i64* %t180, align 8
  %108 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %to_tmp, align 8
  %bits101 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %108, i32 0, i32 3
  %arrayidx102 = getelementptr inbounds [2 x i64], [2 x i64]* %bits101, i32 0, i64 1
  %109 = load i64, i64* %arrayidx102, align 8
  %cmp103 = icmp ne i64 %107, %109
  %conv104 = zext i1 %cmp103 to i32
  %110 = load i32, i32* %changed, align 4
  %or105 = or i32 %110, %conv104
  store i32 %or105, i32* %changed, align 4
  %111 = load i64, i64* %t079, align 8
  %112 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %to_tmp, align 8
  %bits106 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %112, i32 0, i32 3
  %arrayidx107 = getelementptr inbounds [2 x i64], [2 x i64]* %bits106, i32 0, i64 0
  store i64 %111, i64* %arrayidx107, align 8
  %113 = load i64, i64* %t180, align 8
  %114 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %to_tmp, align 8
  %bits108 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %114, i32 0, i32 3
  %arrayidx109 = getelementptr inbounds [2 x i64], [2 x i64]* %bits108, i32 0, i64 1
  store i64 %113, i64* %arrayidx109, align 8
  br label %do.end.110

do.end.110:                                       ; preds = %do.body.78
  br label %sw.epilog

sw.bb.111:                                        ; preds = %if.end.57
  br label %do.body.112

do.body.112:                                      ; preds = %sw.bb.111
  %115 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %from1_tmp, align 8
  %bits119 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %115, i32 0, i32 3
  %arrayidx120 = getelementptr inbounds [2 x i64], [2 x i64]* %bits119, i32 0, i64 0
  %116 = load i64, i64* %arrayidx120, align 8
  store i64 %116, i64* %f10115, align 8
  %117 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %from2_tmp, align 8
  %bits121 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %117, i32 0, i32 3
  %arrayidx122 = getelementptr inbounds [2 x i64], [2 x i64]* %bits121, i32 0, i64 0
  %118 = load i64, i64* %arrayidx122, align 8
  store i64 %118, i64* %f20117, align 8
  %119 = load i64, i64* %f10115, align 8
  %120 = load i64, i64* %f20117, align 8
  %or123 = or i64 %119, %120
  store i64 %or123, i64* %t0113, align 8
  %121 = load i64, i64* %t0113, align 8
  %122 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %to_tmp, align 8
  %bits124 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %122, i32 0, i32 3
  %arrayidx125 = getelementptr inbounds [2 x i64], [2 x i64]* %bits124, i32 0, i64 0
  %123 = load i64, i64* %arrayidx125, align 8
  %cmp126 = icmp ne i64 %121, %123
  %conv127 = zext i1 %cmp126 to i32
  %124 = load i32, i32* %changed, align 4
  %or128 = or i32 %124, %conv127
  store i32 %or128, i32* %changed, align 4
  %125 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %from1_tmp, align 8
  %bits129 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %125, i32 0, i32 3
  %arrayidx130 = getelementptr inbounds [2 x i64], [2 x i64]* %bits129, i32 0, i64 1
  %126 = load i64, i64* %arrayidx130, align 8
  store i64 %126, i64* %f11116, align 8
  %127 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %from2_tmp, align 8
  %bits131 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %127, i32 0, i32 3
  %arrayidx132 = getelementptr inbounds [2 x i64], [2 x i64]* %bits131, i32 0, i64 1
  %128 = load i64, i64* %arrayidx132, align 8
  store i64 %128, i64* %f21118, align 8
  %129 = load i64, i64* %f11116, align 8
  %130 = load i64, i64* %f21118, align 8
  %or133 = or i64 %129, %130
  store i64 %or133, i64* %t1114, align 8
  %131 = load i64, i64* %t1114, align 8
  %132 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %to_tmp, align 8
  %bits134 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %132, i32 0, i32 3
  %arrayidx135 = getelementptr inbounds [2 x i64], [2 x i64]* %bits134, i32 0, i64 1
  %133 = load i64, i64* %arrayidx135, align 8
  %cmp136 = icmp ne i64 %131, %133
  %conv137 = zext i1 %cmp136 to i32
  %134 = load i32, i32* %changed, align 4
  %or138 = or i32 %134, %conv137
  store i32 %or138, i32* %changed, align 4
  %135 = load i64, i64* %t0113, align 8
  %136 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %to_tmp, align 8
  %bits139 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %136, i32 0, i32 3
  %arrayidx140 = getelementptr inbounds [2 x i64], [2 x i64]* %bits139, i32 0, i64 0
  store i64 %135, i64* %arrayidx140, align 8
  %137 = load i64, i64* %t1114, align 8
  %138 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %to_tmp, align 8
  %bits141 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %138, i32 0, i32 3
  %arrayidx142 = getelementptr inbounds [2 x i64], [2 x i64]* %bits141, i32 0, i64 1
  store i64 %137, i64* %arrayidx142, align 8
  br label %do.end.143

do.end.143:                                       ; preds = %do.body.112
  br label %sw.epilog

sw.bb.144:                                        ; preds = %if.end.57
  br label %do.body.145

do.body.145:                                      ; preds = %sw.bb.144
  %139 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %from1_tmp, align 8
  %bits152 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %139, i32 0, i32 3
  %arrayidx153 = getelementptr inbounds [2 x i64], [2 x i64]* %bits152, i32 0, i64 0
  %140 = load i64, i64* %arrayidx153, align 8
  store i64 %140, i64* %f10148, align 8
  %141 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %from2_tmp, align 8
  %bits154 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %141, i32 0, i32 3
  %arrayidx155 = getelementptr inbounds [2 x i64], [2 x i64]* %bits154, i32 0, i64 0
  %142 = load i64, i64* %arrayidx155, align 8
  store i64 %142, i64* %f20150, align 8
  %143 = load i64, i64* %f10148, align 8
  %144 = load i64, i64* %f20150, align 8
  %neg156 = xor i64 %144, -1
  %or157 = or i64 %143, %neg156
  store i64 %or157, i64* %t0146, align 8
  %145 = load i64, i64* %t0146, align 8
  %146 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %to_tmp, align 8
  %bits158 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %146, i32 0, i32 3
  %arrayidx159 = getelementptr inbounds [2 x i64], [2 x i64]* %bits158, i32 0, i64 0
  %147 = load i64, i64* %arrayidx159, align 8
  %cmp160 = icmp ne i64 %145, %147
  %conv161 = zext i1 %cmp160 to i32
  %148 = load i32, i32* %changed, align 4
  %or162 = or i32 %148, %conv161
  store i32 %or162, i32* %changed, align 4
  %149 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %from1_tmp, align 8
  %bits163 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %149, i32 0, i32 3
  %arrayidx164 = getelementptr inbounds [2 x i64], [2 x i64]* %bits163, i32 0, i64 1
  %150 = load i64, i64* %arrayidx164, align 8
  store i64 %150, i64* %f11149, align 8
  %151 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %from2_tmp, align 8
  %bits165 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %151, i32 0, i32 3
  %arrayidx166 = getelementptr inbounds [2 x i64], [2 x i64]* %bits165, i32 0, i64 1
  %152 = load i64, i64* %arrayidx166, align 8
  store i64 %152, i64* %f21151, align 8
  %153 = load i64, i64* %f11149, align 8
  %154 = load i64, i64* %f21151, align 8
  %neg167 = xor i64 %154, -1
  %or168 = or i64 %153, %neg167
  store i64 %or168, i64* %t1147, align 8
  %155 = load i64, i64* %t1147, align 8
  %156 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %to_tmp, align 8
  %bits169 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %156, i32 0, i32 3
  %arrayidx170 = getelementptr inbounds [2 x i64], [2 x i64]* %bits169, i32 0, i64 1
  %157 = load i64, i64* %arrayidx170, align 8
  %cmp171 = icmp ne i64 %155, %157
  %conv172 = zext i1 %cmp171 to i32
  %158 = load i32, i32* %changed, align 4
  %or173 = or i32 %158, %conv172
  store i32 %or173, i32* %changed, align 4
  %159 = load i64, i64* %t0146, align 8
  %160 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %to_tmp, align 8
  %bits174 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %160, i32 0, i32 3
  %arrayidx175 = getelementptr inbounds [2 x i64], [2 x i64]* %bits174, i32 0, i64 0
  store i64 %159, i64* %arrayidx175, align 8
  %161 = load i64, i64* %t1147, align 8
  %162 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %to_tmp, align 8
  %bits176 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %162, i32 0, i32 3
  %arrayidx177 = getelementptr inbounds [2 x i64], [2 x i64]* %bits176, i32 0, i64 1
  store i64 %161, i64* %arrayidx177, align 8
  br label %do.end.178

do.end.178:                                       ; preds = %do.body.145
  br label %sw.epilog

sw.bb.179:                                        ; preds = %if.end.57
  br label %do.body.180

do.body.180:                                      ; preds = %sw.bb.179
  %163 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %from1_tmp, align 8
  %bits187 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %163, i32 0, i32 3
  %arrayidx188 = getelementptr inbounds [2 x i64], [2 x i64]* %bits187, i32 0, i64 0
  %164 = load i64, i64* %arrayidx188, align 8
  store i64 %164, i64* %f10183, align 8
  %165 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %from2_tmp, align 8
  %bits189 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %165, i32 0, i32 3
  %arrayidx190 = getelementptr inbounds [2 x i64], [2 x i64]* %bits189, i32 0, i64 0
  %166 = load i64, i64* %arrayidx190, align 8
  store i64 %166, i64* %f20185, align 8
  %167 = load i64, i64* %f10183, align 8
  %168 = load i64, i64* %f20185, align 8
  %xor = xor i64 %167, %168
  store i64 %xor, i64* %t0181, align 8
  %169 = load i64, i64* %t0181, align 8
  %170 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %to_tmp, align 8
  %bits191 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %170, i32 0, i32 3
  %arrayidx192 = getelementptr inbounds [2 x i64], [2 x i64]* %bits191, i32 0, i64 0
  %171 = load i64, i64* %arrayidx192, align 8
  %cmp193 = icmp ne i64 %169, %171
  %conv194 = zext i1 %cmp193 to i32
  %172 = load i32, i32* %changed, align 4
  %or195 = or i32 %172, %conv194
  store i32 %or195, i32* %changed, align 4
  %173 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %from1_tmp, align 8
  %bits196 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %173, i32 0, i32 3
  %arrayidx197 = getelementptr inbounds [2 x i64], [2 x i64]* %bits196, i32 0, i64 1
  %174 = load i64, i64* %arrayidx197, align 8
  store i64 %174, i64* %f11184, align 8
  %175 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %from2_tmp, align 8
  %bits198 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %175, i32 0, i32 3
  %arrayidx199 = getelementptr inbounds [2 x i64], [2 x i64]* %bits198, i32 0, i64 1
  %176 = load i64, i64* %arrayidx199, align 8
  store i64 %176, i64* %f21186, align 8
  %177 = load i64, i64* %f11184, align 8
  %178 = load i64, i64* %f21186, align 8
  %xor200 = xor i64 %177, %178
  store i64 %xor200, i64* %t1182, align 8
  %179 = load i64, i64* %t1182, align 8
  %180 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %to_tmp, align 8
  %bits201 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %180, i32 0, i32 3
  %arrayidx202 = getelementptr inbounds [2 x i64], [2 x i64]* %bits201, i32 0, i64 1
  %181 = load i64, i64* %arrayidx202, align 8
  %cmp203 = icmp ne i64 %179, %181
  %conv204 = zext i1 %cmp203 to i32
  %182 = load i32, i32* %changed, align 4
  %or205 = or i32 %182, %conv204
  store i32 %or205, i32* %changed, align 4
  %183 = load i64, i64* %t0181, align 8
  %184 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %to_tmp, align 8
  %bits206 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %184, i32 0, i32 3
  %arrayidx207 = getelementptr inbounds [2 x i64], [2 x i64]* %bits206, i32 0, i64 0
  store i64 %183, i64* %arrayidx207, align 8
  %185 = load i64, i64* %t1182, align 8
  %186 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %to_tmp, align 8
  %bits208 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %186, i32 0, i32 3
  %arrayidx209 = getelementptr inbounds [2 x i64], [2 x i64]* %bits208, i32 0, i64 1
  store i64 %185, i64* %arrayidx209, align 8
  br label %do.end.210

do.end.210:                                       ; preds = %do.body.180
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.210, %do.end.178, %do.end.143, %do.end.110, %do.end
  %187 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %to_tmp, align 8
  %call211 = call i32 @bitmap_element_zerop(%struct.bitmap_element_def* %187)
  %tobool212 = icmp ne i32 %call211, 0
  br i1 %tobool212, label %if.else.215, label %if.then.213

if.then.213:                                      ; preds = %sw.epilog
  %188 = load i32, i32* %indx9, align 4
  %189 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %to_tmp, align 8
  %indx214 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %189, i32 0, i32 2
  store i32 %188, i32* %indx214, align 4
  %190 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %to.addr, align 8
  %191 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %to_tmp, align 8
  call void @bitmap_element_link(%struct.bitmap_head_def* %190, %struct.bitmap_element_def* %191)
  br label %if.end.217

if.else.215:                                      ; preds = %sw.epilog
  %192 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** @bitmap_free, align 8
  %193 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %to_tmp, align 8
  %next216 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %193, i32 0, i32 0
  store %struct.bitmap_element_def* %192, %struct.bitmap_element_def** %next216, align 8
  %194 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %to_tmp, align 8
  store %struct.bitmap_element_def* %194, %struct.bitmap_element_def** @bitmap_free, align 8
  br label %if.end.217

if.end.217:                                       ; preds = %if.else.215, %if.then.213
  br label %while.cond

while.end.218:                                    ; preds = %lor.end
  %195 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %to_ptr, align 8
  %tobool219 = icmp ne %struct.bitmap_element_def* %195, null
  br i1 %tobool219, label %if.then.220, label %if.end.225

if.then.220:                                      ; preds = %while.end.218
  store i32 1, i32* %changed, align 4
  %196 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %to_ptr, align 8
  store %struct.bitmap_element_def* %196, %struct.bitmap_element_def** %to_tmp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.220
  %197 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %to_tmp, align 8
  %next221 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %197, i32 0, i32 0
  %198 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next221, align 8
  %tobool222 = icmp ne %struct.bitmap_element_def* %198, null
  br i1 %tobool222, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %199 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %to_tmp, align 8
  %next223 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %199, i32 0, i32 0
  %200 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next223, align 8
  store %struct.bitmap_element_def* %200, %struct.bitmap_element_def** %to_tmp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %201 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** @bitmap_free, align 8
  %202 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %to_tmp, align 8
  %next224 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %202, i32 0, i32 0
  store %struct.bitmap_element_def* %201, %struct.bitmap_element_def** %next224, align 8
  %203 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %to_ptr, align 8
  store %struct.bitmap_element_def* %203, %struct.bitmap_element_def** @bitmap_free, align 8
  br label %if.end.225

if.end.225:                                       ; preds = %for.end, %while.end.218
  %204 = load i32, i32* %changed, align 4
  ret i32 %204
}

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @bitmap_equal_p(%struct.bitmap_head_def* %a, %struct.bitmap_head_def* %b) #0 {
entry:
  %a.addr = alloca %struct.bitmap_head_def*, align 8
  %b.addr = alloca %struct.bitmap_head_def*, align 8
  %c = alloca %struct.bitmap_head_def, align 8
  %ret = alloca i32, align 4
  store %struct.bitmap_head_def* %a, %struct.bitmap_head_def** %a.addr, align 8
  store %struct.bitmap_head_def* %b, %struct.bitmap_head_def** %b.addr, align 8
  %current = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %c, i32 0, i32 1
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %current, align 8
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %c, i32 0, i32 0
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %first, align 8
  %0 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %a.addr, align 8
  %1 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %b.addr, align 8
  %call = call i32 @bitmap_operation(%struct.bitmap_head_def* %c, %struct.bitmap_head_def* %0, %struct.bitmap_head_def* %1, i32 3)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %ret, align 4
  call void @bitmap_clear(%struct.bitmap_head_def* %c)
  %2 = load i32, i32* %ret, align 4
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define void @bitmap_ior_and_compl(%struct.bitmap_head_def* %to, %struct.bitmap_head_def* %from1, %struct.bitmap_head_def* %from2) #0 {
entry:
  %to.addr = alloca %struct.bitmap_head_def*, align 8
  %from1.addr = alloca %struct.bitmap_head_def*, align 8
  %from2.addr = alloca %struct.bitmap_head_def*, align 8
  %tmp = alloca %struct.bitmap_head_def, align 8
  store %struct.bitmap_head_def* %to, %struct.bitmap_head_def** %to.addr, align 8
  store %struct.bitmap_head_def* %from1, %struct.bitmap_head_def** %from1.addr, align 8
  store %struct.bitmap_head_def* %from2, %struct.bitmap_head_def** %from2.addr, align 8
  %current = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %tmp, i32 0, i32 1
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %current, align 8
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %tmp, i32 0, i32 0
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %first, align 8
  %0 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %from1.addr, align 8
  %1 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %from2.addr, align 8
  %call = call i32 @bitmap_operation(%struct.bitmap_head_def* %tmp, %struct.bitmap_head_def* %0, %struct.bitmap_head_def* %1, i32 1)
  %2 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %to.addr, align 8
  %3 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %to.addr, align 8
  %call1 = call i32 @bitmap_operation(%struct.bitmap_head_def* %2, %struct.bitmap_head_def* %3, %struct.bitmap_head_def* %tmp, i32 2)
  call void @bitmap_clear(%struct.bitmap_head_def* %tmp)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @bitmap_union_of_diff(%struct.bitmap_head_def* %dst, %struct.bitmap_head_def* %a, %struct.bitmap_head_def* %b, %struct.bitmap_head_def* %c) #0 {
entry:
  %dst.addr = alloca %struct.bitmap_head_def*, align 8
  %a.addr = alloca %struct.bitmap_head_def*, align 8
  %b.addr = alloca %struct.bitmap_head_def*, align 8
  %c.addr = alloca %struct.bitmap_head_def*, align 8
  %tmp = alloca %struct.bitmap_head_def, align 8
  %changed = alloca i32, align 4
  store %struct.bitmap_head_def* %dst, %struct.bitmap_head_def** %dst.addr, align 8
  store %struct.bitmap_head_def* %a, %struct.bitmap_head_def** %a.addr, align 8
  store %struct.bitmap_head_def* %b, %struct.bitmap_head_def** %b.addr, align 8
  store %struct.bitmap_head_def* %c, %struct.bitmap_head_def** %c.addr, align 8
  %current = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %tmp, i32 0, i32 1
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %current, align 8
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %tmp, i32 0, i32 0
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %first, align 8
  %0 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %b.addr, align 8
  %1 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %c.addr, align 8
  %call = call i32 @bitmap_operation(%struct.bitmap_head_def* %tmp, %struct.bitmap_head_def* %0, %struct.bitmap_head_def* %1, i32 1)
  %2 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %dst.addr, align 8
  %3 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %a.addr, align 8
  %call2 = call i32 @bitmap_operation(%struct.bitmap_head_def* %2, %struct.bitmap_head_def* %tmp, %struct.bitmap_head_def* %3, i32 2)
  store i32 %call2, i32* %changed, align 4
  call void @bitmap_clear(%struct.bitmap_head_def* %tmp)
  %4 = load i32, i32* %changed, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def* %head) #0 {
entry:
  %head.addr = alloca %struct.bitmap_head_def*, align 8
  store %struct.bitmap_head_def* %head, %struct.bitmap_head_def** %head.addr, align 8
  %0 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %head.addr, align 8
  %current = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %0, i32 0, i32 1
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %current, align 8
  %1 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %head.addr, align 8
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %1, i32 0, i32 0
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %first, align 8
  %2 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %head.addr, align 8
  ret %struct.bitmap_head_def* %2
}

; Function Attrs: nounwind uwtable
define void @debug_bitmap_file(%struct._IO_FILE* %file, %struct.bitmap_head_def* %head) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %head.addr = alloca %struct.bitmap_head_def*, align 8
  %ptr = alloca %struct.bitmap_element_def*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %col = alloca i32, align 4
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store %struct.bitmap_head_def* %head, %struct.bitmap_head_def** %head.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0))
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %2 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %head.addr, align 8
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %2, i32 0, i32 0
  %3 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8
  %4 = bitcast %struct.bitmap_element_def* %3 to i8*
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %7 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %head.addr, align 8
  %current = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %7, i32 0, i32 1
  %8 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %current, align 8
  %9 = bitcast %struct.bitmap_element_def* %8 to i8*
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* %9)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %11 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %head.addr, align 8
  %indx = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %11, i32 0, i32 2
  %12 = load i32, i32* %indx, align 4
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i32 %12)
  %13 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %head.addr, align 8
  %first5 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %13, i32 0, i32 0
  %14 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first5, align 8
  store %struct.bitmap_element_def* %14, %struct.bitmap_element_def** %ptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.33, %entry
  %15 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr, align 8
  %tobool = icmp ne %struct.bitmap_element_def* %15, null
  br i1 %tobool, label %for.body, label %for.end.35

for.body:                                         ; preds = %for.cond
  store i32 26, i32* %col, align 4
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %18 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr, align 8
  %19 = bitcast %struct.bitmap_element_def* %18 to i8*
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* %19)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0))
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %22 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr, align 8
  %next = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %22, i32 0, i32 0
  %23 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next, align 8
  %24 = bitcast %struct.bitmap_element_def* %23 to i8*
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* %24)
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0))
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %27 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr, align 8
  %prev = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %27, i32 0, i32 1
  %28 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %prev, align 8
  %29 = bitcast %struct.bitmap_element_def* %28 to i8*
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* %29)
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %31 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr, align 8
  %indx12 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %31, i32 0, i32 2
  %32 = load i32, i32* %indx12, align 4
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), i32 %32)
  store i32 0, i32* %i, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.29, %for.body
  %33 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %33, 2
  br i1 %cmp, label %for.body.15, label %for.end.31

for.body.15:                                      ; preds = %for.cond.14
  store i32 0, i32* %j, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc, %for.body.15
  %34 = load i32, i32* %j, align 4
  %cmp17 = icmp slt i32 %34, 64
  br i1 %cmp17, label %for.body.18, label %for.end

for.body.18:                                      ; preds = %for.cond.16
  %35 = load i32, i32* %i, align 4
  %idxprom = sext i32 %35 to i64
  %36 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr, align 8
  %bits = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %36, i32 0, i32 3
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %bits, i32 0, i64 %idxprom
  %37 = load i64, i64* %arrayidx, align 8
  %38 = load i32, i32* %j, align 4
  %sh_prom = zext i32 %38 to i64
  %shr = lshr i64 %37, %sh_prom
  %and = and i64 %shr, 1
  %tobool19 = icmp ne i64 %and, 0
  br i1 %tobool19, label %if.then, label %if.end.28

if.then:                                          ; preds = %for.body.18
  %39 = load i32, i32* %col, align 4
  %cmp20 = icmp sgt i32 %39, 70
  br i1 %cmp20, label %if.then.21, label %if.end

if.then.21:                                       ; preds = %if.then
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0))
  store i32 24, i32* %col, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.21, %if.then
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %42 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr, align 8
  %indx23 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %42, i32 0, i32 2
  %43 = load i32, i32* %indx23, align 4
  %mul = mul i32 %43, 128
  %44 = load i32, i32* %i, align 4
  %mul24 = mul nsw i32 %44, 64
  %add = add i32 %mul, %mul24
  %45 = load i32, i32* %j, align 4
  %add25 = add i32 %add, %45
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i32 %add25)
  %46 = load i32, i32* %col, align 4
  %add27 = add nsw i32 %46, 4
  store i32 %add27, i32* %col, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.end, %for.body.18
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %47 = load i32, i32* %j, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.16

for.end:                                          ; preds = %for.cond.16
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.end
  %48 = load i32, i32* %i, align 4
  %inc30 = add nsw i32 %48, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond.14

for.end.31:                                       ; preds = %for.cond.14
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0))
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.end.31
  %50 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr, align 8
  %next34 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %50, i32 0, i32 0
  %51 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next34, align 8
  store %struct.bitmap_element_def* %51, %struct.bitmap_element_def** %ptr, align 8
  br label %for.cond

for.end.35:                                       ; preds = %for.cond
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @debug_bitmap(%struct.bitmap_head_def* %head) #0 {
entry:
  %head.addr = alloca %struct.bitmap_head_def*, align 8
  store %struct.bitmap_head_def* %head, %struct.bitmap_head_def** %head.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %1 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %head.addr, align 8
  call void @debug_bitmap_file(%struct._IO_FILE* %0, %struct.bitmap_head_def* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @bitmap_print(%struct._IO_FILE* %file, %struct.bitmap_head_def* %head, i8* %prefix, i8* %suffix) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %head.addr = alloca %struct.bitmap_head_def*, align 8
  %prefix.addr = alloca i8*, align 8
  %suffix.addr = alloca i8*, align 8
  %comma = alloca i8*, align 8
  %i = alloca i32, align 4
  %ptr_ = alloca %struct.bitmap_element_def*, align 8
  %indx_ = alloca i32, align 4
  %bit_num_ = alloca i32, align 4
  %word_num_ = alloca i32, align 4
  %word_ = alloca i64, align 8
  %mask_ = alloca i64, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store %struct.bitmap_head_def* %head, %struct.bitmap_head_def** %head.addr, align 8
  store i8* %prefix, i8** %prefix.addr, align 8
  store i8* %suffix, i8** %suffix.addr, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i32 0, i32 0), i8** %comma, align 8
  %0 = load i8*, i8** %prefix.addr, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call = call i32 @fputs(i8* %0, %struct._IO_FILE* %1)
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %head.addr, align 8
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %2, i32 0, i32 0
  %3 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8
  store %struct.bitmap_element_def* %3, %struct.bitmap_element_def** %ptr_, align 8
  store i32 0, i32* %indx_, align 4
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body
  %4 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp = icmp ne %struct.bitmap_element_def* %4, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %5, i32 0, i32 2
  %6 = load i32, i32* %indx, align 4
  %7 = load i32, i32* %indx_, align 4
  %cmp1 = icmp ult i32 %6, %7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %9, i32 0, i32 0
  %10 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next, align 8
  store %struct.bitmap_element_def* %10, %struct.bitmap_element_def** %ptr_, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %11 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp2 = icmp ne %struct.bitmap_element_def* %11, null
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.end
  %12 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx3 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %12, i32 0, i32 2
  %13 = load i32, i32* %indx3, align 4
  %14 = load i32, i32* %indx_, align 4
  %cmp4 = icmp ne i32 %13, %14
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.end
  br label %for.cond

for.cond:                                         ; preds = %for.inc.29, %if.end
  %15 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp5 = icmp ne %struct.bitmap_element_def* %15, null
  br i1 %cmp5, label %for.body, label %for.end.31

for.body:                                         ; preds = %for.cond
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.26, %for.body
  %16 = load i32, i32* %word_num_, align 4
  %cmp7 = icmp ult i32 %16, 2
  br i1 %cmp7, label %for.body.8, label %for.end.28

for.body.8:                                       ; preds = %for.cond.6
  %17 = load i32, i32* %word_num_, align 4
  %idxprom = zext i32 %17 to i64
  %18 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %bits = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %18, i32 0, i32 3
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %bits, i32 0, i64 %idxprom
  %19 = load i64, i64* %arrayidx, align 8
  store i64 %19, i64* %word_, align 8
  %20 = load i64, i64* %word_, align 8
  %cmp9 = icmp ne i64 %20, 0
  br i1 %cmp9, label %if.then.10, label %if.end.25

if.then.10:                                       ; preds = %for.body.8
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc, %if.then.10
  %21 = load i32, i32* %bit_num_, align 4
  %cmp12 = icmp ult i32 %21, 64
  br i1 %cmp12, label %for.body.13, label %for.end

for.body.13:                                      ; preds = %for.cond.11
  %22 = load i32, i32* %bit_num_, align 4
  %sh_prom = zext i32 %22 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, i64* %mask_, align 8
  %23 = load i64, i64* %word_, align 8
  %24 = load i64, i64* %mask_, align 8
  %and = and i64 %23, %24
  %cmp14 = icmp ne i64 %and, 0
  br i1 %cmp14, label %if.then.15, label %if.end.24

if.then.15:                                       ; preds = %for.body.13
  %25 = load i64, i64* %mask_, align 8
  %neg = xor i64 %25, -1
  %26 = load i64, i64* %word_, align 8
  %and16 = and i64 %26, %neg
  store i64 %and16, i64* %word_, align 8
  %27 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx17 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %27, i32 0, i32 2
  %28 = load i32, i32* %indx17, align 4
  %mul = mul i32 %28, 128
  %29 = load i32, i32* %word_num_, align 4
  %mul18 = mul i32 %29, 64
  %add = add i32 %mul, %mul18
  %30 = load i32, i32* %bit_num_, align 4
  %add19 = add i32 %add, %30
  store i32 %add19, i32* %i, align 4
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %32 = load i8*, i8** %comma, align 8
  %33 = load i32, i32* %i, align 4
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* %32, i32 %33)
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i8** %comma, align 8
  %34 = load i64, i64* %word_, align 8
  %cmp21 = icmp eq i64 %34, 0
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.then.15
  br label %for.end

if.end.23:                                        ; preds = %if.then.15
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %for.body.13
  br label %for.inc

for.inc:                                          ; preds = %if.end.24
  %35 = load i32, i32* %bit_num_, align 4
  %inc = add i32 %35, 1
  store i32 %inc, i32* %bit_num_, align 4
  br label %for.cond.11

for.end:                                          ; preds = %if.then.22, %for.cond.11
  br label %if.end.25

if.end.25:                                        ; preds = %for.end, %for.body.8
  store i32 0, i32* %bit_num_, align 4
  br label %for.inc.26

for.inc.26:                                       ; preds = %if.end.25
  %36 = load i32, i32* %word_num_, align 4
  %inc27 = add i32 %36, 1
  store i32 %inc27, i32* %word_num_, align 4
  br label %for.cond.6

for.end.28:                                       ; preds = %for.cond.6
  store i32 0, i32* %word_num_, align 4
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.end.28
  %37 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next30 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %37, i32 0, i32 0
  %38 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next30, align 8
  store %struct.bitmap_element_def* %38, %struct.bitmap_element_def** %ptr_, align 8
  br label %for.cond

for.end.31:                                       ; preds = %for.cond
  br label %do.end

do.end:                                           ; preds = %for.end.31
  %39 = load i8*, i8** %suffix.addr, align 8
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call32 = call i32 @fputs(i8* %39, %struct._IO_FILE* %40)
  ret void
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

declare i32 @_obstack_begin(%struct.obstack*, i32, i32, i8* (i64)*, void (i8*)*) #1

declare noalias i8* @xmalloc(i64) #1

; Function Attrs: nounwind
declare void @free(i8*) #3

declare void @_obstack_newchunk(%struct.obstack*, i32) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
