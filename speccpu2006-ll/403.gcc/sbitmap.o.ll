; ModuleID = 'sbitmap.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varray_head_tag = type { i64, i64, i64, i8*, %union.varray_data_tag }
%union.varray_data_tag = type { [1 x %struct.const_equiv_data] }
%struct.const_equiv_data = type { %struct.rtx_def*, i32 }
%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
%struct.basic_block_def = type { %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %union.tree_node*, %struct.edge_def*, %struct.edge_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i8*, i32, i32, i64, i32, i32 }
%union.tree_node = type opaque
%struct.edge_def = type { %struct.edge_def*, %struct.edge_def*, %struct.basic_block_def*, %struct.basic_block_def*, %struct.rtx_def*, i8*, i32, i32, i64 }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32 }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.simple_bitmap_def = type { i32, i32, i32, [1 x i64] }
%struct.anon = type { i8, i64 }

@basic_block_info = external global %struct.varray_head_tag*, align 8
@entry_exit_blocks = external global [2 x %struct.basic_block_def], align 16
@.str = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"n_bits = %d, set = {\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"%s %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.simple_bitmap_def* @sbitmap_alloc(i32 %n_elms) #0 {
entry:
  %n_elms.addr = alloca i32, align 4
  %bytes = alloca i32, align 4
  %size = alloca i32, align 4
  %amt = alloca i32, align 4
  %bmap = alloca %struct.simple_bitmap_def*, align 8
  store i32 %n_elms, i32* %n_elms.addr, align 4
  %0 = load i32, i32* %n_elms.addr, align 4
  %add = add i32 %0, 64
  %sub = sub i32 %add, 1
  %div = udiv i32 %sub, 64
  store i32 %div, i32* %size, align 4
  %1 = load i32, i32* %size, align 4
  %conv = zext i32 %1 to i64
  %mul = mul i64 %conv, 8
  %conv1 = trunc i64 %mul to i32
  store i32 %conv1, i32* %bytes, align 4
  %2 = load i32, i32* %bytes, align 4
  %conv2 = zext i32 %2 to i64
  %add3 = add i64 24, %conv2
  %sub4 = sub i64 %add3, 8
  %conv5 = trunc i64 %sub4 to i32
  store i32 %conv5, i32* %amt, align 4
  %3 = load i32, i32* %amt, align 4
  %conv6 = zext i32 %3 to i64
  %call = call noalias i8* @xmalloc(i64 %conv6)
  %4 = bitcast i8* %call to %struct.simple_bitmap_def*
  store %struct.simple_bitmap_def* %4, %struct.simple_bitmap_def** %bmap, align 8
  %5 = load i32, i32* %n_elms.addr, align 4
  %6 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %bmap, align 8
  %n_bits = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %6, i32 0, i32 0
  store i32 %5, i32* %n_bits, align 4
  %7 = load i32, i32* %size, align 4
  %8 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %bmap, align 8
  %size7 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %8, i32 0, i32 1
  store i32 %7, i32* %size7, align 4
  %9 = load i32, i32* %bytes, align 4
  %10 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %bmap, align 8
  %bytes8 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %10, i32 0, i32 2
  store i32 %9, i32* %bytes8, align 4
  %11 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %bmap, align 8
  ret %struct.simple_bitmap_def* %11
}

declare noalias i8* @xmalloc(i64) #1

; Function Attrs: nounwind uwtable
define %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %n_vecs, i32 %n_elms) #0 {
entry:
  %n_vecs.addr = alloca i32, align 4
  %n_elms.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %bytes = alloca i32, align 4
  %offset = alloca i32, align 4
  %elm_bytes = alloca i32, align 4
  %size = alloca i32, align 4
  %amt = alloca i32, align 4
  %vector_bytes = alloca i32, align 4
  %bitmap_vector = alloca %struct.simple_bitmap_def**, align 8
  %align = alloca %struct.anon, align 8
  %alignment = alloca i32, align 4
  %b = alloca %struct.simple_bitmap_def*, align 8
  store i32 %n_vecs, i32* %n_vecs.addr, align 4
  store i32 %n_elms, i32* %n_elms.addr, align 4
  %0 = load i32, i32* %n_elms.addr, align 4
  %add = add i32 %0, 64
  %sub = sub i32 %add, 1
  %div = udiv i32 %sub, 64
  store i32 %div, i32* %size, align 4
  %1 = load i32, i32* %size, align 4
  %conv = zext i32 %1 to i64
  %mul = mul i64 %conv, 8
  %conv1 = trunc i64 %mul to i32
  store i32 %conv1, i32* %bytes, align 4
  %2 = load i32, i32* %bytes, align 4
  %conv2 = zext i32 %2 to i64
  %add3 = add i64 24, %conv2
  %sub4 = sub i64 %add3, 8
  %conv5 = trunc i64 %sub4 to i32
  store i32 %conv5, i32* %elm_bytes, align 4
  %3 = load i32, i32* %n_vecs.addr, align 4
  %conv6 = zext i32 %3 to i64
  %mul7 = mul i64 %conv6, 8
  %conv8 = trunc i64 %mul7 to i32
  store i32 %conv8, i32* %vector_bytes, align 4
  %y = getelementptr inbounds %struct.anon, %struct.anon* %align, i32 0, i32 1
  %4 = bitcast i64* %y to i8*
  %x = getelementptr inbounds %struct.anon, %struct.anon* %align, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %x to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv9 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv9, i32* %alignment, align 4
  %5 = load i32, i32* %vector_bytes, align 4
  %6 = load i32, i32* %alignment, align 4
  %add10 = add i32 %5, %6
  %sub11 = sub i32 %add10, 1
  %7 = load i32, i32* %alignment, align 4
  %sub12 = sub nsw i32 %7, 1
  %neg = xor i32 %sub12, -1
  %and = and i32 %sub11, %neg
  store i32 %and, i32* %vector_bytes, align 4
  %8 = load i32, i32* %vector_bytes, align 4
  %9 = load i32, i32* %n_vecs.addr, align 4
  %10 = load i32, i32* %elm_bytes, align 4
  %mul13 = mul i32 %9, %10
  %add14 = add i32 %8, %mul13
  store i32 %add14, i32* %amt, align 4
  %11 = load i32, i32* %amt, align 4
  %conv15 = zext i32 %11 to i64
  %call = call noalias i8* @xmalloc(i64 %conv15)
  %12 = bitcast i8* %call to %struct.simple_bitmap_def**
  store %struct.simple_bitmap_def** %12, %struct.simple_bitmap_def*** %bitmap_vector, align 8
  store i32 0, i32* %i, align 4
  %13 = load i32, i32* %vector_bytes, align 4
  store i32 %13, i32* %offset, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %n_vecs.addr, align 4
  %cmp = icmp ult i32 %14, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %bitmap_vector, align 8
  %17 = bitcast %struct.simple_bitmap_def** %16 to i8*
  %18 = load i32, i32* %offset, align 4
  %idx.ext = zext i32 %18 to i64
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 %idx.ext
  %19 = bitcast i8* %add.ptr to %struct.simple_bitmap_def*
  store %struct.simple_bitmap_def* %19, %struct.simple_bitmap_def** %b, align 8
  %20 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %b, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom = zext i32 %21 to i64
  %22 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %bitmap_vector, align 8
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %22, i64 %idxprom
  store %struct.simple_bitmap_def* %20, %struct.simple_bitmap_def** %arrayidx, align 8
  %23 = load i32, i32* %n_elms.addr, align 4
  %24 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %b, align 8
  %n_bits = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %24, i32 0, i32 0
  store i32 %23, i32* %n_bits, align 4
  %25 = load i32, i32* %size, align 4
  %26 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %b, align 8
  %size17 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %26, i32 0, i32 1
  store i32 %25, i32* %size17, align 4
  %27 = load i32, i32* %bytes, align 4
  %28 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %b, align 8
  %bytes18 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %28, i32 0, i32 2
  store i32 %27, i32* %bytes18, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load i32, i32* %i, align 4
  %inc = add i32 %29, 1
  store i32 %inc, i32* %i, align 4
  %30 = load i32, i32* %elm_bytes, align 4
  %31 = load i32, i32* %offset, align 4
  %add19 = add i32 %31, %30
  store i32 %add19, i32* %offset, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %bitmap_vector, align 8
  ret %struct.simple_bitmap_def** %32
}

; Function Attrs: nounwind uwtable
define void @sbitmap_copy(%struct.simple_bitmap_def* %dst, %struct.simple_bitmap_def* %src) #0 {
entry:
  %dst.addr = alloca %struct.simple_bitmap_def*, align 8
  %src.addr = alloca %struct.simple_bitmap_def*, align 8
  store %struct.simple_bitmap_def* %dst, %struct.simple_bitmap_def** %dst.addr, align 8
  store %struct.simple_bitmap_def* %src, %struct.simple_bitmap_def** %src.addr, align 8
  %0 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %dst.addr, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %0, i32 0, i32 3
  %1 = bitcast [1 x i64]* %elms to i8*
  %2 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %src.addr, align 8
  %elms1 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %2, i32 0, i32 3
  %3 = bitcast [1 x i64]* %elms1 to i8*
  %4 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %dst.addr, align 8
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %4, i32 0, i32 1
  %5 = load i32, i32* %size, align 4
  %conv = zext i32 %5 to i64
  %mul = mul i64 8, %conv
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %3, i64 %mul, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i32 @sbitmap_equal(%struct.simple_bitmap_def* %a, %struct.simple_bitmap_def* %b) #0 {
entry:
  %a.addr = alloca %struct.simple_bitmap_def*, align 8
  %b.addr = alloca %struct.simple_bitmap_def*, align 8
  store %struct.simple_bitmap_def* %a, %struct.simple_bitmap_def** %a.addr, align 8
  store %struct.simple_bitmap_def* %b, %struct.simple_bitmap_def** %b.addr, align 8
  %0 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %a.addr, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %0, i32 0, i32 3
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i32 0
  %1 = bitcast i64* %arraydecay to i8*
  %2 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %b.addr, align 8
  %elms1 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %2, i32 0, i32 3
  %arraydecay2 = getelementptr inbounds [1 x i64], [1 x i64]* %elms1, i32 0, i32 0
  %3 = bitcast i64* %arraydecay2 to i8*
  %4 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %a.addr, align 8
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %4, i32 0, i32 1
  %5 = load i32, i32* %size, align 4
  %conv = zext i32 %5 to i64
  %mul = mul i64 8, %conv
  %call = call i32 @memcmp(i8* %1, i8* %3, i64 %mul) #4
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define void @sbitmap_zero(%struct.simple_bitmap_def* %bmap) #0 {
entry:
  %bmap.addr = alloca %struct.simple_bitmap_def*, align 8
  store %struct.simple_bitmap_def* %bmap, %struct.simple_bitmap_def** %bmap.addr, align 8
  %0 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %bmap.addr, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %0, i32 0, i32 3
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i32 0
  %1 = bitcast i64* %arraydecay to i8*
  %2 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %bmap.addr, align 8
  %bytes = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %2, i32 0, i32 2
  %3 = load i32, i32* %bytes, align 4
  %conv = zext i32 %3 to i64
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 %conv, i32 1, i1 false)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define void @sbitmap_ones(%struct.simple_bitmap_def* %bmap) #0 {
entry:
  %bmap.addr = alloca %struct.simple_bitmap_def*, align 8
  %last_bit = alloca i32, align 4
  store %struct.simple_bitmap_def* %bmap, %struct.simple_bitmap_def** %bmap.addr, align 8
  %0 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %bmap.addr, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %0, i32 0, i32 3
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i32 0
  %1 = bitcast i64* %arraydecay to i8*
  %2 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %bmap.addr, align 8
  %bytes = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %2, i32 0, i32 2
  %3 = load i32, i32* %bytes, align 4
  %conv = zext i32 %3 to i64
  call void @llvm.memset.p0i8.i64(i8* %1, i8 -1, i64 %conv, i32 1, i1 false)
  %4 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %bmap.addr, align 8
  %n_bits = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %4, i32 0, i32 0
  %5 = load i32, i32* %n_bits, align 4
  %rem = urem i32 %5, 64
  store i32 %rem, i32* %last_bit, align 4
  %6 = load i32, i32* %last_bit, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %last_bit, align 4
  %sub = sub i32 64, %7
  %sh_prom = zext i32 %sub to i64
  %shr = lshr i64 -1, %sh_prom
  %8 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %bmap.addr, align 8
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %8, i32 0, i32 1
  %9 = load i32, i32* %size, align 4
  %sub1 = sub i32 %9, 1
  %idxprom = zext i32 %sub1 to i64
  %10 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %bmap.addr, align 8
  %elms2 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %10, i32 0, i32 3
  %arrayidx = getelementptr inbounds [1 x i64], [1 x i64]* %elms2, i32 0, i64 %idxprom
  store i64 %shr, i64* %arrayidx, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @sbitmap_vector_zero(%struct.simple_bitmap_def** %bmap, i32 %n_vecs) #0 {
entry:
  %bmap.addr = alloca %struct.simple_bitmap_def**, align 8
  %n_vecs.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.simple_bitmap_def** %bmap, %struct.simple_bitmap_def*** %bmap.addr, align 8
  store i32 %n_vecs, i32* %n_vecs.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n_vecs.addr, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = zext i32 %2 to i64
  %3 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %bmap.addr, align 8
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %3, i64 %idxprom
  %4 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx, align 8
  call void @sbitmap_zero(%struct.simple_bitmap_def* %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @sbitmap_vector_ones(%struct.simple_bitmap_def** %bmap, i32 %n_vecs) #0 {
entry:
  %bmap.addr = alloca %struct.simple_bitmap_def**, align 8
  %n_vecs.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.simple_bitmap_def** %bmap, %struct.simple_bitmap_def*** %bmap.addr, align 8
  store i32 %n_vecs, i32* %n_vecs.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n_vecs.addr, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = zext i32 %2 to i64
  %3 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %bmap.addr, align 8
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %3, i64 %idxprom
  %4 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx, align 8
  call void @sbitmap_ones(%struct.simple_bitmap_def* %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @sbitmap_union_of_diff(%struct.simple_bitmap_def* %dst, %struct.simple_bitmap_def* %a, %struct.simple_bitmap_def* %b, %struct.simple_bitmap_def* %c) #0 {
entry:
  %dst.addr = alloca %struct.simple_bitmap_def*, align 8
  %a.addr = alloca %struct.simple_bitmap_def*, align 8
  %b.addr = alloca %struct.simple_bitmap_def*, align 8
  %c.addr = alloca %struct.simple_bitmap_def*, align 8
  %i = alloca i32, align 4
  %dstp = alloca i64*, align 8
  %ap = alloca i64*, align 8
  %bp = alloca i64*, align 8
  %cp = alloca i64*, align 8
  %changed = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.simple_bitmap_def* %dst, %struct.simple_bitmap_def** %dst.addr, align 8
  store %struct.simple_bitmap_def* %a, %struct.simple_bitmap_def** %a.addr, align 8
  store %struct.simple_bitmap_def* %b, %struct.simple_bitmap_def** %b.addr, align 8
  store %struct.simple_bitmap_def* %c, %struct.simple_bitmap_def** %c.addr, align 8
  store i32 0, i32* %changed, align 4
  %0 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %dst.addr, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %0, i32 0, i32 3
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i32 0
  store i64* %arraydecay, i64** %dstp, align 8
  %1 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %a.addr, align 8
  %elms1 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %1, i32 0, i32 3
  %arraydecay2 = getelementptr inbounds [1 x i64], [1 x i64]* %elms1, i32 0, i32 0
  store i64* %arraydecay2, i64** %ap, align 8
  %2 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %b.addr, align 8
  %elms3 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %2, i32 0, i32 3
  %arraydecay4 = getelementptr inbounds [1 x i64], [1 x i64]* %elms3, i32 0, i32 0
  store i64* %arraydecay4, i64** %bp, align 8
  %3 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %c.addr, align 8
  %elms5 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %3, i32 0, i32 3
  %arraydecay6 = getelementptr inbounds [1 x i64], [1 x i64]* %elms5, i32 0, i32 0
  store i64* %arraydecay6, i64** %cp, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %dst.addr, align 8
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %5, i32 0, i32 1
  %6 = load i32, i32* %size, align 4
  %cmp = icmp ult i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i64*, i64** %ap, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %7, i32 1
  store i64* %incdec.ptr, i64** %ap, align 8
  %8 = load i64, i64* %7, align 8
  %9 = load i64*, i64** %bp, align 8
  %incdec.ptr7 = getelementptr inbounds i64, i64* %9, i32 1
  store i64* %incdec.ptr7, i64** %bp, align 8
  %10 = load i64, i64* %9, align 8
  %11 = load i64*, i64** %cp, align 8
  %incdec.ptr8 = getelementptr inbounds i64, i64* %11, i32 1
  store i64* %incdec.ptr8, i64** %cp, align 8
  %12 = load i64, i64* %11, align 8
  %neg = xor i64 %12, -1
  %and = and i64 %10, %neg
  %or = or i64 %8, %and
  store i64 %or, i64* %tmp, align 8
  %13 = load i64*, i64** %dstp, align 8
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %tmp, align 8
  %cmp9 = icmp ne i64 %14, %15
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %changed, align 4
  %16 = load i64, i64* %tmp, align 8
  %17 = load i64*, i64** %dstp, align 8
  store i64 %16, i64* %17, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i32, i32* %i, align 4
  %inc = add i32 %18, 1
  store i32 %inc, i32* %i, align 4
  %19 = load i64*, i64** %dstp, align 8
  %incdec.ptr10 = getelementptr inbounds i64, i64* %19, i32 1
  store i64* %incdec.ptr10, i64** %dstp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load i32, i32* %changed, align 4
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define void @sbitmap_not(%struct.simple_bitmap_def* %dst, %struct.simple_bitmap_def* %src) #0 {
entry:
  %dst.addr = alloca %struct.simple_bitmap_def*, align 8
  %src.addr = alloca %struct.simple_bitmap_def*, align 8
  %i = alloca i32, align 4
  %dstp = alloca i64*, align 8
  %srcp = alloca i64*, align 8
  store %struct.simple_bitmap_def* %dst, %struct.simple_bitmap_def** %dst.addr, align 8
  store %struct.simple_bitmap_def* %src, %struct.simple_bitmap_def** %src.addr, align 8
  %0 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %dst.addr, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %0, i32 0, i32 3
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i32 0
  store i64* %arraydecay, i64** %dstp, align 8
  %1 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %src.addr, align 8
  %elms1 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %1, i32 0, i32 3
  %arraydecay2 = getelementptr inbounds [1 x i64], [1 x i64]* %elms1, i32 0, i32 0
  store i64* %arraydecay2, i64** %srcp, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %dst.addr, align 8
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %3, i32 0, i32 1
  %4 = load i32, i32* %size, align 4
  %cmp = icmp ult i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i64*, i64** %srcp, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %5, i32 1
  store i64* %incdec.ptr, i64** %srcp, align 8
  %6 = load i64, i64* %5, align 8
  %neg = xor i64 %6, -1
  %7 = load i64*, i64** %dstp, align 8
  %incdec.ptr3 = getelementptr inbounds i64, i64* %7, i32 1
  store i64* %incdec.ptr3, i64** %dstp, align 8
  store i64 %neg, i64* %7, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @sbitmap_difference(%struct.simple_bitmap_def* %dst, %struct.simple_bitmap_def* %a, %struct.simple_bitmap_def* %b) #0 {
entry:
  %dst.addr = alloca %struct.simple_bitmap_def*, align 8
  %a.addr = alloca %struct.simple_bitmap_def*, align 8
  %b.addr = alloca %struct.simple_bitmap_def*, align 8
  %i = alloca i32, align 4
  %dstp = alloca i64*, align 8
  %ap = alloca i64*, align 8
  %bp = alloca i64*, align 8
  store %struct.simple_bitmap_def* %dst, %struct.simple_bitmap_def** %dst.addr, align 8
  store %struct.simple_bitmap_def* %a, %struct.simple_bitmap_def** %a.addr, align 8
  store %struct.simple_bitmap_def* %b, %struct.simple_bitmap_def** %b.addr, align 8
  %0 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %dst.addr, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %0, i32 0, i32 3
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i32 0
  store i64* %arraydecay, i64** %dstp, align 8
  %1 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %a.addr, align 8
  %elms1 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %1, i32 0, i32 3
  %arraydecay2 = getelementptr inbounds [1 x i64], [1 x i64]* %elms1, i32 0, i32 0
  store i64* %arraydecay2, i64** %ap, align 8
  %2 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %b.addr, align 8
  %elms3 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %2, i32 0, i32 3
  %arraydecay4 = getelementptr inbounds [1 x i64], [1 x i64]* %elms3, i32 0, i32 0
  store i64* %arraydecay4, i64** %bp, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %dst.addr, align 8
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %4, i32 0, i32 1
  %5 = load i32, i32* %size, align 4
  %cmp = icmp ult i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i64*, i64** %ap, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %6, i32 1
  store i64* %incdec.ptr, i64** %ap, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load i64*, i64** %bp, align 8
  %incdec.ptr5 = getelementptr inbounds i64, i64* %8, i32 1
  store i64* %incdec.ptr5, i64** %bp, align 8
  %9 = load i64, i64* %8, align 8
  %neg = xor i64 %9, -1
  %and = and i64 %7, %neg
  %10 = load i64*, i64** %dstp, align 8
  %incdec.ptr6 = getelementptr inbounds i64, i64* %10, i32 1
  store i64* %incdec.ptr6, i64** %dstp, align 8
  store i64 %and, i64* %10, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @sbitmap_a_and_b(%struct.simple_bitmap_def* %dst, %struct.simple_bitmap_def* %a, %struct.simple_bitmap_def* %b) #0 {
entry:
  %dst.addr = alloca %struct.simple_bitmap_def*, align 8
  %a.addr = alloca %struct.simple_bitmap_def*, align 8
  %b.addr = alloca %struct.simple_bitmap_def*, align 8
  %i = alloca i32, align 4
  %dstp = alloca i64*, align 8
  %ap = alloca i64*, align 8
  %bp = alloca i64*, align 8
  %changed = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.simple_bitmap_def* %dst, %struct.simple_bitmap_def** %dst.addr, align 8
  store %struct.simple_bitmap_def* %a, %struct.simple_bitmap_def** %a.addr, align 8
  store %struct.simple_bitmap_def* %b, %struct.simple_bitmap_def** %b.addr, align 8
  store i32 0, i32* %changed, align 4
  %0 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %dst.addr, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %0, i32 0, i32 3
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i32 0
  store i64* %arraydecay, i64** %dstp, align 8
  %1 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %a.addr, align 8
  %elms1 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %1, i32 0, i32 3
  %arraydecay2 = getelementptr inbounds [1 x i64], [1 x i64]* %elms1, i32 0, i32 0
  store i64* %arraydecay2, i64** %ap, align 8
  %2 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %b.addr, align 8
  %elms3 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %2, i32 0, i32 3
  %arraydecay4 = getelementptr inbounds [1 x i64], [1 x i64]* %elms3, i32 0, i32 0
  store i64* %arraydecay4, i64** %bp, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %dst.addr, align 8
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %4, i32 0, i32 1
  %5 = load i32, i32* %size, align 4
  %cmp = icmp ult i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i64*, i64** %ap, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %6, i32 1
  store i64* %incdec.ptr, i64** %ap, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load i64*, i64** %bp, align 8
  %incdec.ptr5 = getelementptr inbounds i64, i64* %8, i32 1
  store i64* %incdec.ptr5, i64** %bp, align 8
  %9 = load i64, i64* %8, align 8
  %and = and i64 %7, %9
  store i64 %and, i64* %tmp, align 8
  %10 = load i64*, i64** %dstp, align 8
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %tmp, align 8
  %cmp6 = icmp ne i64 %11, %12
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %changed, align 4
  %13 = load i64, i64* %tmp, align 8
  %14 = load i64*, i64** %dstp, align 8
  store i64 %13, i64* %14, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %i, align 4
  %inc = add i32 %15, 1
  store i32 %inc, i32* %i, align 4
  %16 = load i64*, i64** %dstp, align 8
  %incdec.ptr7 = getelementptr inbounds i64, i64* %16, i32 1
  store i64* %incdec.ptr7, i64** %dstp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %changed, align 4
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define i32 @sbitmap_a_xor_b(%struct.simple_bitmap_def* %dst, %struct.simple_bitmap_def* %a, %struct.simple_bitmap_def* %b) #0 {
entry:
  %dst.addr = alloca %struct.simple_bitmap_def*, align 8
  %a.addr = alloca %struct.simple_bitmap_def*, align 8
  %b.addr = alloca %struct.simple_bitmap_def*, align 8
  %i = alloca i32, align 4
  %dstp = alloca i64*, align 8
  %ap = alloca i64*, align 8
  %bp = alloca i64*, align 8
  %changed = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.simple_bitmap_def* %dst, %struct.simple_bitmap_def** %dst.addr, align 8
  store %struct.simple_bitmap_def* %a, %struct.simple_bitmap_def** %a.addr, align 8
  store %struct.simple_bitmap_def* %b, %struct.simple_bitmap_def** %b.addr, align 8
  store i32 0, i32* %changed, align 4
  %0 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %dst.addr, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %0, i32 0, i32 3
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i32 0
  store i64* %arraydecay, i64** %dstp, align 8
  %1 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %a.addr, align 8
  %elms1 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %1, i32 0, i32 3
  %arraydecay2 = getelementptr inbounds [1 x i64], [1 x i64]* %elms1, i32 0, i32 0
  store i64* %arraydecay2, i64** %ap, align 8
  %2 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %b.addr, align 8
  %elms3 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %2, i32 0, i32 3
  %arraydecay4 = getelementptr inbounds [1 x i64], [1 x i64]* %elms3, i32 0, i32 0
  store i64* %arraydecay4, i64** %bp, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %dst.addr, align 8
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %4, i32 0, i32 1
  %5 = load i32, i32* %size, align 4
  %cmp = icmp ult i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i64*, i64** %ap, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %6, i32 1
  store i64* %incdec.ptr, i64** %ap, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load i64*, i64** %bp, align 8
  %incdec.ptr5 = getelementptr inbounds i64, i64* %8, i32 1
  store i64* %incdec.ptr5, i64** %bp, align 8
  %9 = load i64, i64* %8, align 8
  %xor = xor i64 %7, %9
  store i64 %xor, i64* %tmp, align 8
  %10 = load i64*, i64** %dstp, align 8
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %tmp, align 8
  %cmp6 = icmp ne i64 %11, %12
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %changed, align 4
  %13 = load i64, i64* %tmp, align 8
  %14 = load i64*, i64** %dstp, align 8
  store i64 %13, i64* %14, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %i, align 4
  %inc = add i32 %15, 1
  store i32 %inc, i32* %i, align 4
  %16 = load i64*, i64** %dstp, align 8
  %incdec.ptr7 = getelementptr inbounds i64, i64* %16, i32 1
  store i64* %incdec.ptr7, i64** %dstp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %changed, align 4
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define i32 @sbitmap_a_or_b(%struct.simple_bitmap_def* %dst, %struct.simple_bitmap_def* %a, %struct.simple_bitmap_def* %b) #0 {
entry:
  %dst.addr = alloca %struct.simple_bitmap_def*, align 8
  %a.addr = alloca %struct.simple_bitmap_def*, align 8
  %b.addr = alloca %struct.simple_bitmap_def*, align 8
  %i = alloca i32, align 4
  %dstp = alloca i64*, align 8
  %ap = alloca i64*, align 8
  %bp = alloca i64*, align 8
  %changed = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.simple_bitmap_def* %dst, %struct.simple_bitmap_def** %dst.addr, align 8
  store %struct.simple_bitmap_def* %a, %struct.simple_bitmap_def** %a.addr, align 8
  store %struct.simple_bitmap_def* %b, %struct.simple_bitmap_def** %b.addr, align 8
  store i32 0, i32* %changed, align 4
  %0 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %dst.addr, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %0, i32 0, i32 3
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i32 0
  store i64* %arraydecay, i64** %dstp, align 8
  %1 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %a.addr, align 8
  %elms1 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %1, i32 0, i32 3
  %arraydecay2 = getelementptr inbounds [1 x i64], [1 x i64]* %elms1, i32 0, i32 0
  store i64* %arraydecay2, i64** %ap, align 8
  %2 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %b.addr, align 8
  %elms3 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %2, i32 0, i32 3
  %arraydecay4 = getelementptr inbounds [1 x i64], [1 x i64]* %elms3, i32 0, i32 0
  store i64* %arraydecay4, i64** %bp, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %dst.addr, align 8
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %4, i32 0, i32 1
  %5 = load i32, i32* %size, align 4
  %cmp = icmp ult i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i64*, i64** %ap, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %6, i32 1
  store i64* %incdec.ptr, i64** %ap, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load i64*, i64** %bp, align 8
  %incdec.ptr5 = getelementptr inbounds i64, i64* %8, i32 1
  store i64* %incdec.ptr5, i64** %bp, align 8
  %9 = load i64, i64* %8, align 8
  %or = or i64 %7, %9
  store i64 %or, i64* %tmp, align 8
  %10 = load i64*, i64** %dstp, align 8
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %tmp, align 8
  %cmp6 = icmp ne i64 %11, %12
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %changed, align 4
  %13 = load i64, i64* %tmp, align 8
  %14 = load i64*, i64** %dstp, align 8
  store i64 %13, i64* %14, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %i, align 4
  %inc = add i32 %15, 1
  store i32 %inc, i32* %i, align 4
  %16 = load i64*, i64** %dstp, align 8
  %incdec.ptr7 = getelementptr inbounds i64, i64* %16, i32 1
  store i64* %incdec.ptr7, i64** %dstp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %changed, align 4
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define i32 @sbitmap_a_subset_b_p(%struct.simple_bitmap_def* %a, %struct.simple_bitmap_def* %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %struct.simple_bitmap_def*, align 8
  %b.addr = alloca %struct.simple_bitmap_def*, align 8
  %i = alloca i32, align 4
  %ap = alloca i64*, align 8
  %bp = alloca i64*, align 8
  store %struct.simple_bitmap_def* %a, %struct.simple_bitmap_def** %a.addr, align 8
  store %struct.simple_bitmap_def* %b, %struct.simple_bitmap_def** %b.addr, align 8
  %0 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %a.addr, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %0, i32 0, i32 3
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i32 0
  store i64* %arraydecay, i64** %ap, align 8
  %1 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %b.addr, align 8
  %elms1 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %1, i32 0, i32 3
  %arraydecay2 = getelementptr inbounds [1 x i64], [1 x i64]* %elms1, i32 0, i32 0
  store i64* %arraydecay2, i64** %bp, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %a.addr, align 8
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %3, i32 0, i32 1
  %4 = load i32, i32* %size, align 4
  %cmp = icmp ult i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i64*, i64** %ap, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load i64*, i64** %bp, align 8
  %8 = load i64, i64* %7, align 8
  %or = or i64 %6, %8
  %9 = load i64*, i64** %bp, align 8
  %10 = load i64, i64* %9, align 8
  %cmp3 = icmp ne i64 %or, %10
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4
  %inc = add i32 %11, 1
  store i32 %inc, i32* %i, align 4
  %12 = load i64*, i64** %ap, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %12, i32 1
  store i64* %incdec.ptr, i64** %ap, align 8
  %13 = load i64*, i64** %bp, align 8
  %incdec.ptr4 = getelementptr inbounds i64, i64* %13, i32 1
  store i64* %incdec.ptr4, i64** %bp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define i32 @sbitmap_a_or_b_and_c(%struct.simple_bitmap_def* %dst, %struct.simple_bitmap_def* %a, %struct.simple_bitmap_def* %b, %struct.simple_bitmap_def* %c) #0 {
entry:
  %dst.addr = alloca %struct.simple_bitmap_def*, align 8
  %a.addr = alloca %struct.simple_bitmap_def*, align 8
  %b.addr = alloca %struct.simple_bitmap_def*, align 8
  %c.addr = alloca %struct.simple_bitmap_def*, align 8
  %i = alloca i32, align 4
  %dstp = alloca i64*, align 8
  %ap = alloca i64*, align 8
  %bp = alloca i64*, align 8
  %cp = alloca i64*, align 8
  %changed = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.simple_bitmap_def* %dst, %struct.simple_bitmap_def** %dst.addr, align 8
  store %struct.simple_bitmap_def* %a, %struct.simple_bitmap_def** %a.addr, align 8
  store %struct.simple_bitmap_def* %b, %struct.simple_bitmap_def** %b.addr, align 8
  store %struct.simple_bitmap_def* %c, %struct.simple_bitmap_def** %c.addr, align 8
  store i32 0, i32* %changed, align 4
  %0 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %dst.addr, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %0, i32 0, i32 3
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i32 0
  store i64* %arraydecay, i64** %dstp, align 8
  %1 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %a.addr, align 8
  %elms1 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %1, i32 0, i32 3
  %arraydecay2 = getelementptr inbounds [1 x i64], [1 x i64]* %elms1, i32 0, i32 0
  store i64* %arraydecay2, i64** %ap, align 8
  %2 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %b.addr, align 8
  %elms3 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %2, i32 0, i32 3
  %arraydecay4 = getelementptr inbounds [1 x i64], [1 x i64]* %elms3, i32 0, i32 0
  store i64* %arraydecay4, i64** %bp, align 8
  %3 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %c.addr, align 8
  %elms5 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %3, i32 0, i32 3
  %arraydecay6 = getelementptr inbounds [1 x i64], [1 x i64]* %elms5, i32 0, i32 0
  store i64* %arraydecay6, i64** %cp, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %dst.addr, align 8
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %5, i32 0, i32 1
  %6 = load i32, i32* %size, align 4
  %cmp = icmp ult i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i64*, i64** %ap, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %7, i32 1
  store i64* %incdec.ptr, i64** %ap, align 8
  %8 = load i64, i64* %7, align 8
  %9 = load i64*, i64** %bp, align 8
  %incdec.ptr7 = getelementptr inbounds i64, i64* %9, i32 1
  store i64* %incdec.ptr7, i64** %bp, align 8
  %10 = load i64, i64* %9, align 8
  %11 = load i64*, i64** %cp, align 8
  %incdec.ptr8 = getelementptr inbounds i64, i64* %11, i32 1
  store i64* %incdec.ptr8, i64** %cp, align 8
  %12 = load i64, i64* %11, align 8
  %and = and i64 %10, %12
  %or = or i64 %8, %and
  store i64 %or, i64* %tmp, align 8
  %13 = load i64*, i64** %dstp, align 8
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %tmp, align 8
  %cmp9 = icmp ne i64 %14, %15
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %changed, align 4
  %16 = load i64, i64* %tmp, align 8
  %17 = load i64*, i64** %dstp, align 8
  store i64 %16, i64* %17, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i32, i32* %i, align 4
  %inc = add i32 %18, 1
  store i32 %inc, i32* %i, align 4
  %19 = load i64*, i64** %dstp, align 8
  %incdec.ptr10 = getelementptr inbounds i64, i64* %19, i32 1
  store i64* %incdec.ptr10, i64** %dstp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load i32, i32* %changed, align 4
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define i32 @sbitmap_a_and_b_or_c(%struct.simple_bitmap_def* %dst, %struct.simple_bitmap_def* %a, %struct.simple_bitmap_def* %b, %struct.simple_bitmap_def* %c) #0 {
entry:
  %dst.addr = alloca %struct.simple_bitmap_def*, align 8
  %a.addr = alloca %struct.simple_bitmap_def*, align 8
  %b.addr = alloca %struct.simple_bitmap_def*, align 8
  %c.addr = alloca %struct.simple_bitmap_def*, align 8
  %i = alloca i32, align 4
  %dstp = alloca i64*, align 8
  %ap = alloca i64*, align 8
  %bp = alloca i64*, align 8
  %cp = alloca i64*, align 8
  %changed = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.simple_bitmap_def* %dst, %struct.simple_bitmap_def** %dst.addr, align 8
  store %struct.simple_bitmap_def* %a, %struct.simple_bitmap_def** %a.addr, align 8
  store %struct.simple_bitmap_def* %b, %struct.simple_bitmap_def** %b.addr, align 8
  store %struct.simple_bitmap_def* %c, %struct.simple_bitmap_def** %c.addr, align 8
  store i32 0, i32* %changed, align 4
  %0 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %dst.addr, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %0, i32 0, i32 3
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i32 0
  store i64* %arraydecay, i64** %dstp, align 8
  %1 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %a.addr, align 8
  %elms1 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %1, i32 0, i32 3
  %arraydecay2 = getelementptr inbounds [1 x i64], [1 x i64]* %elms1, i32 0, i32 0
  store i64* %arraydecay2, i64** %ap, align 8
  %2 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %b.addr, align 8
  %elms3 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %2, i32 0, i32 3
  %arraydecay4 = getelementptr inbounds [1 x i64], [1 x i64]* %elms3, i32 0, i32 0
  store i64* %arraydecay4, i64** %bp, align 8
  %3 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %c.addr, align 8
  %elms5 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %3, i32 0, i32 3
  %arraydecay6 = getelementptr inbounds [1 x i64], [1 x i64]* %elms5, i32 0, i32 0
  store i64* %arraydecay6, i64** %cp, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %dst.addr, align 8
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %5, i32 0, i32 1
  %6 = load i32, i32* %size, align 4
  %cmp = icmp ult i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i64*, i64** %ap, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %7, i32 1
  store i64* %incdec.ptr, i64** %ap, align 8
  %8 = load i64, i64* %7, align 8
  %9 = load i64*, i64** %bp, align 8
  %incdec.ptr7 = getelementptr inbounds i64, i64* %9, i32 1
  store i64* %incdec.ptr7, i64** %bp, align 8
  %10 = load i64, i64* %9, align 8
  %11 = load i64*, i64** %cp, align 8
  %incdec.ptr8 = getelementptr inbounds i64, i64* %11, i32 1
  store i64* %incdec.ptr8, i64** %cp, align 8
  %12 = load i64, i64* %11, align 8
  %or = or i64 %10, %12
  %and = and i64 %8, %or
  store i64 %and, i64* %tmp, align 8
  %13 = load i64*, i64** %dstp, align 8
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %tmp, align 8
  %cmp9 = icmp ne i64 %14, %15
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %changed, align 4
  %16 = load i64, i64* %tmp, align 8
  %17 = load i64*, i64** %dstp, align 8
  store i64 %16, i64* %17, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i32, i32* %i, align 4
  %inc = add i32 %18, 1
  store i32 %inc, i32* %i, align 4
  %19 = load i64*, i64** %dstp, align 8
  %incdec.ptr10 = getelementptr inbounds i64, i64* %19, i32 1
  store i64* %incdec.ptr10, i64** %dstp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load i32, i32* %changed, align 4
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define void @sbitmap_intersection_of_succs(%struct.simple_bitmap_def* %dst, %struct.simple_bitmap_def** %src, i32 %bb) #0 {
entry:
  %dst.addr = alloca %struct.simple_bitmap_def*, align 8
  %src.addr = alloca %struct.simple_bitmap_def**, align 8
  %bb.addr = alloca i32, align 4
  %b = alloca %struct.basic_block_def*, align 8
  %set_size = alloca i32, align 4
  %e = alloca %struct.edge_def*, align 8
  %i = alloca i32, align 4
  %p = alloca i64*, align 8
  %r = alloca i64*, align 8
  store %struct.simple_bitmap_def* %dst, %struct.simple_bitmap_def** %dst.addr, align 8
  store %struct.simple_bitmap_def** %src, %struct.simple_bitmap_def*** %src.addr, align 8
  store i32 %bb, i32* %bb.addr, align 4
  %0 = load i32, i32* %bb.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %1, i32 0, i32 4
  %bb1 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb1, i32 0, i64 %idxprom
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  store %struct.basic_block_def* %2, %struct.basic_block_def** %b, align 8
  %3 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %dst.addr, align 8
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %3, i32 0, i32 1
  %4 = load i32, i32* %size, align 4
  store i32 %4, i32* %set_size, align 4
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i32 0, i32 5
  %6 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  store %struct.edge_def* %6, %struct.edge_def** %e, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %cmp = icmp ne %struct.edge_def* %7, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %8, i32 0, i32 3
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %cmp2 = icmp eq %struct.basic_block_def* %9, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %10 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %dst.addr, align 8
  %11 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest3 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %11, i32 0, i32 3
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %dest3, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %12, i32 0, i32 11
  %13 = load i32, i32* %index, align 4
  %idxprom4 = sext i32 %13 to i64
  %14 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %src.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %14, i64 %idxprom4
  %15 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx5, align 8
  call void @sbitmap_copy(%struct.simple_bitmap_def* %10, %struct.simple_bitmap_def* %15)
  br label %for.end

for.inc:                                          ; preds = %if.then
  %16 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %16, i32 0, i32 1
  %17 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  store %struct.edge_def* %17, %struct.edge_def** %e, align 8
  br label %for.cond

for.end:                                          ; preds = %if.end, %for.cond
  %18 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %cmp6 = icmp eq %struct.edge_def* %18, null
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %for.end
  %19 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %dst.addr, align 8
  call void @sbitmap_ones(%struct.simple_bitmap_def* %19)
  br label %if.end.31

if.else:                                          ; preds = %for.end
  %20 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next8 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %20, i32 0, i32 1
  %21 = load %struct.edge_def*, %struct.edge_def** %succ_next8, align 8
  store %struct.edge_def* %21, %struct.edge_def** %e, align 8
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.28, %if.else
  %22 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %cmp10 = icmp ne %struct.edge_def* %22, null
  br i1 %cmp10, label %for.body.11, label %for.end.30

for.body.11:                                      ; preds = %for.cond.9
  %23 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest12 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %23, i32 0, i32 3
  %24 = load %struct.basic_block_def*, %struct.basic_block_def** %dest12, align 8
  %cmp13 = icmp eq %struct.basic_block_def* %24, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %for.body.11
  br label %for.inc.28

if.end.15:                                        ; preds = %for.body.11
  %25 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest16 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %25, i32 0, i32 3
  %26 = load %struct.basic_block_def*, %struct.basic_block_def** %dest16, align 8
  %index17 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %26, i32 0, i32 11
  %27 = load i32, i32* %index17, align 4
  %idxprom18 = sext i32 %27 to i64
  %28 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %src.addr, align 8
  %arrayidx19 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %28, i64 %idxprom18
  %29 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx19, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %29, i32 0, i32 3
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i32 0
  store i64* %arraydecay, i64** %p, align 8
  %30 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %dst.addr, align 8
  %elms20 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %30, i32 0, i32 3
  %arraydecay21 = getelementptr inbounds [1 x i64], [1 x i64]* %elms20, i32 0, i32 0
  store i64* %arraydecay21, i64** %r, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.26, %if.end.15
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* %set_size, align 4
  %cmp23 = icmp ult i32 %31, %32
  br i1 %cmp23, label %for.body.24, label %for.end.27

for.body.24:                                      ; preds = %for.cond.22
  %33 = load i64*, i64** %p, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %33, i32 1
  store i64* %incdec.ptr, i64** %p, align 8
  %34 = load i64, i64* %33, align 8
  %35 = load i64*, i64** %r, align 8
  %incdec.ptr25 = getelementptr inbounds i64, i64* %35, i32 1
  store i64* %incdec.ptr25, i64** %r, align 8
  %36 = load i64, i64* %35, align 8
  %and = and i64 %36, %34
  store i64 %and, i64* %35, align 8
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.body.24
  %37 = load i32, i32* %i, align 4
  %inc = add i32 %37, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.22

for.end.27:                                       ; preds = %for.cond.22
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.end.27, %if.then.14
  %38 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next29 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %38, i32 0, i32 1
  %39 = load %struct.edge_def*, %struct.edge_def** %succ_next29, align 8
  store %struct.edge_def* %39, %struct.edge_def** %e, align 8
  br label %for.cond.9

for.end.30:                                       ; preds = %for.cond.9
  br label %if.end.31

if.end.31:                                        ; preds = %for.end.30, %if.then.7
  ret void
}

; Function Attrs: nounwind uwtable
define void @sbitmap_intersection_of_preds(%struct.simple_bitmap_def* %dst, %struct.simple_bitmap_def** %src, i32 %bb) #0 {
entry:
  %dst.addr = alloca %struct.simple_bitmap_def*, align 8
  %src.addr = alloca %struct.simple_bitmap_def**, align 8
  %bb.addr = alloca i32, align 4
  %b = alloca %struct.basic_block_def*, align 8
  %set_size = alloca i32, align 4
  %e = alloca %struct.edge_def*, align 8
  %i = alloca i32, align 4
  %p = alloca i64*, align 8
  %r = alloca i64*, align 8
  store %struct.simple_bitmap_def* %dst, %struct.simple_bitmap_def** %dst.addr, align 8
  store %struct.simple_bitmap_def** %src, %struct.simple_bitmap_def*** %src.addr, align 8
  store i32 %bb, i32* %bb.addr, align 4
  %0 = load i32, i32* %bb.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %1, i32 0, i32 4
  %bb1 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb1, i32 0, i64 %idxprom
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  store %struct.basic_block_def* %2, %struct.basic_block_def** %b, align 8
  %3 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %dst.addr, align 8
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %3, i32 0, i32 1
  %4 = load i32, i32* %size, align 4
  store i32 %4, i32* %set_size, align 4
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %pred = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i32 0, i32 4
  %6 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  store %struct.edge_def* %6, %struct.edge_def** %e, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %cmp = icmp ne %struct.edge_def* %7, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src2 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %8, i32 0, i32 2
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %src2, align 8
  %cmp3 = icmp eq %struct.basic_block_def* %9, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0)
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %10 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %dst.addr, align 8
  %11 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src4 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %11, i32 0, i32 2
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %src4, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %12, i32 0, i32 11
  %13 = load i32, i32* %index, align 4
  %idxprom5 = sext i32 %13 to i64
  %14 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %src.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %14, i64 %idxprom5
  %15 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx6, align 8
  call void @sbitmap_copy(%struct.simple_bitmap_def* %10, %struct.simple_bitmap_def* %15)
  br label %for.end

for.inc:                                          ; preds = %if.then
  %16 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %pred_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %16, i32 0, i32 0
  %17 = load %struct.edge_def*, %struct.edge_def** %pred_next, align 8
  store %struct.edge_def* %17, %struct.edge_def** %e, align 8
  br label %for.cond

for.end:                                          ; preds = %if.end, %for.cond
  %18 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %cmp7 = icmp eq %struct.edge_def* %18, null
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %for.end
  %19 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %dst.addr, align 8
  call void @sbitmap_ones(%struct.simple_bitmap_def* %19)
  br label %if.end.32

if.else:                                          ; preds = %for.end
  %20 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %pred_next9 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %20, i32 0, i32 0
  %21 = load %struct.edge_def*, %struct.edge_def** %pred_next9, align 8
  store %struct.edge_def* %21, %struct.edge_def** %e, align 8
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.29, %if.else
  %22 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %cmp11 = icmp ne %struct.edge_def* %22, null
  br i1 %cmp11, label %for.body.12, label %for.end.31

for.body.12:                                      ; preds = %for.cond.10
  %23 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src13 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %23, i32 0, i32 2
  %24 = load %struct.basic_block_def*, %struct.basic_block_def** %src13, align 8
  %cmp14 = icmp eq %struct.basic_block_def* %24, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0)
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %for.body.12
  br label %for.inc.29

if.end.16:                                        ; preds = %for.body.12
  %25 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src17 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %25, i32 0, i32 2
  %26 = load %struct.basic_block_def*, %struct.basic_block_def** %src17, align 8
  %index18 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %26, i32 0, i32 11
  %27 = load i32, i32* %index18, align 4
  %idxprom19 = sext i32 %27 to i64
  %28 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %src.addr, align 8
  %arrayidx20 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %28, i64 %idxprom19
  %29 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx20, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %29, i32 0, i32 3
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i32 0
  store i64* %arraydecay, i64** %p, align 8
  %30 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %dst.addr, align 8
  %elms21 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %30, i32 0, i32 3
  %arraydecay22 = getelementptr inbounds [1 x i64], [1 x i64]* %elms21, i32 0, i32 0
  store i64* %arraydecay22, i64** %r, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.27, %if.end.16
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* %set_size, align 4
  %cmp24 = icmp ult i32 %31, %32
  br i1 %cmp24, label %for.body.25, label %for.end.28

for.body.25:                                      ; preds = %for.cond.23
  %33 = load i64*, i64** %p, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %33, i32 1
  store i64* %incdec.ptr, i64** %p, align 8
  %34 = load i64, i64* %33, align 8
  %35 = load i64*, i64** %r, align 8
  %incdec.ptr26 = getelementptr inbounds i64, i64* %35, i32 1
  store i64* %incdec.ptr26, i64** %r, align 8
  %36 = load i64, i64* %35, align 8
  %and = and i64 %36, %34
  store i64 %and, i64* %35, align 8
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.body.25
  %37 = load i32, i32* %i, align 4
  %inc = add i32 %37, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.23

for.end.28:                                       ; preds = %for.cond.23
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.end.28, %if.then.15
  %38 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %pred_next30 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %38, i32 0, i32 0
  %39 = load %struct.edge_def*, %struct.edge_def** %pred_next30, align 8
  store %struct.edge_def* %39, %struct.edge_def** %e, align 8
  br label %for.cond.10

for.end.31:                                       ; preds = %for.cond.10
  br label %if.end.32

if.end.32:                                        ; preds = %for.end.31, %if.then.8
  ret void
}

; Function Attrs: nounwind uwtable
define void @sbitmap_union_of_succs(%struct.simple_bitmap_def* %dst, %struct.simple_bitmap_def** %src, i32 %bb) #0 {
entry:
  %dst.addr = alloca %struct.simple_bitmap_def*, align 8
  %src.addr = alloca %struct.simple_bitmap_def**, align 8
  %bb.addr = alloca i32, align 4
  %b = alloca %struct.basic_block_def*, align 8
  %set_size = alloca i32, align 4
  %e = alloca %struct.edge_def*, align 8
  %i = alloca i32, align 4
  %p = alloca i64*, align 8
  %r = alloca i64*, align 8
  store %struct.simple_bitmap_def* %dst, %struct.simple_bitmap_def** %dst.addr, align 8
  store %struct.simple_bitmap_def** %src, %struct.simple_bitmap_def*** %src.addr, align 8
  store i32 %bb, i32* %bb.addr, align 4
  %0 = load i32, i32* %bb.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %1, i32 0, i32 4
  %bb1 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb1, i32 0, i64 %idxprom
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  store %struct.basic_block_def* %2, %struct.basic_block_def** %b, align 8
  %3 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %dst.addr, align 8
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %3, i32 0, i32 1
  %4 = load i32, i32* %size, align 4
  store i32 %4, i32* %set_size, align 4
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i32 0, i32 5
  %6 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  store %struct.edge_def* %6, %struct.edge_def** %e, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %cmp = icmp ne %struct.edge_def* %7, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %8, i32 0, i32 3
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %cmp2 = icmp eq %struct.basic_block_def* %9, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %10 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %dst.addr, align 8
  %11 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest3 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %11, i32 0, i32 3
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %dest3, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %12, i32 0, i32 11
  %13 = load i32, i32* %index, align 4
  %idxprom4 = sext i32 %13 to i64
  %14 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %src.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %14, i64 %idxprom4
  %15 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx5, align 8
  call void @sbitmap_copy(%struct.simple_bitmap_def* %10, %struct.simple_bitmap_def* %15)
  br label %for.end

for.inc:                                          ; preds = %if.then
  %16 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %16, i32 0, i32 1
  %17 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  store %struct.edge_def* %17, %struct.edge_def** %e, align 8
  br label %for.cond

for.end:                                          ; preds = %if.end, %for.cond
  %18 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %cmp6 = icmp eq %struct.edge_def* %18, null
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %for.end
  %19 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %dst.addr, align 8
  call void @sbitmap_zero(%struct.simple_bitmap_def* %19)
  br label %if.end.31

if.else:                                          ; preds = %for.end
  %20 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next8 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %20, i32 0, i32 1
  %21 = load %struct.edge_def*, %struct.edge_def** %succ_next8, align 8
  store %struct.edge_def* %21, %struct.edge_def** %e, align 8
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.28, %if.else
  %22 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %cmp10 = icmp ne %struct.edge_def* %22, null
  br i1 %cmp10, label %for.body.11, label %for.end.30

for.body.11:                                      ; preds = %for.cond.9
  %23 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest12 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %23, i32 0, i32 3
  %24 = load %struct.basic_block_def*, %struct.basic_block_def** %dest12, align 8
  %cmp13 = icmp eq %struct.basic_block_def* %24, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %for.body.11
  br label %for.inc.28

if.end.15:                                        ; preds = %for.body.11
  %25 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest16 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %25, i32 0, i32 3
  %26 = load %struct.basic_block_def*, %struct.basic_block_def** %dest16, align 8
  %index17 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %26, i32 0, i32 11
  %27 = load i32, i32* %index17, align 4
  %idxprom18 = sext i32 %27 to i64
  %28 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %src.addr, align 8
  %arrayidx19 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %28, i64 %idxprom18
  %29 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx19, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %29, i32 0, i32 3
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i32 0
  store i64* %arraydecay, i64** %p, align 8
  %30 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %dst.addr, align 8
  %elms20 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %30, i32 0, i32 3
  %arraydecay21 = getelementptr inbounds [1 x i64], [1 x i64]* %elms20, i32 0, i32 0
  store i64* %arraydecay21, i64** %r, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.26, %if.end.15
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* %set_size, align 4
  %cmp23 = icmp ult i32 %31, %32
  br i1 %cmp23, label %for.body.24, label %for.end.27

for.body.24:                                      ; preds = %for.cond.22
  %33 = load i64*, i64** %p, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %33, i32 1
  store i64* %incdec.ptr, i64** %p, align 8
  %34 = load i64, i64* %33, align 8
  %35 = load i64*, i64** %r, align 8
  %incdec.ptr25 = getelementptr inbounds i64, i64* %35, i32 1
  store i64* %incdec.ptr25, i64** %r, align 8
  %36 = load i64, i64* %35, align 8
  %or = or i64 %36, %34
  store i64 %or, i64* %35, align 8
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.body.24
  %37 = load i32, i32* %i, align 4
  %inc = add i32 %37, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.22

for.end.27:                                       ; preds = %for.cond.22
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.end.27, %if.then.14
  %38 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next29 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %38, i32 0, i32 1
  %39 = load %struct.edge_def*, %struct.edge_def** %succ_next29, align 8
  store %struct.edge_def* %39, %struct.edge_def** %e, align 8
  br label %for.cond.9

for.end.30:                                       ; preds = %for.cond.9
  br label %if.end.31

if.end.31:                                        ; preds = %for.end.30, %if.then.7
  ret void
}

; Function Attrs: nounwind uwtable
define void @sbitmap_union_of_preds(%struct.simple_bitmap_def* %dst, %struct.simple_bitmap_def** %src, i32 %bb) #0 {
entry:
  %dst.addr = alloca %struct.simple_bitmap_def*, align 8
  %src.addr = alloca %struct.simple_bitmap_def**, align 8
  %bb.addr = alloca i32, align 4
  %b = alloca %struct.basic_block_def*, align 8
  %set_size = alloca i32, align 4
  %e = alloca %struct.edge_def*, align 8
  %i = alloca i32, align 4
  %p = alloca i64*, align 8
  %r = alloca i64*, align 8
  store %struct.simple_bitmap_def* %dst, %struct.simple_bitmap_def** %dst.addr, align 8
  store %struct.simple_bitmap_def** %src, %struct.simple_bitmap_def*** %src.addr, align 8
  store i32 %bb, i32* %bb.addr, align 4
  %0 = load i32, i32* %bb.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %1, i32 0, i32 4
  %bb1 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb1, i32 0, i64 %idxprom
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  store %struct.basic_block_def* %2, %struct.basic_block_def** %b, align 8
  %3 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %dst.addr, align 8
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %3, i32 0, i32 1
  %4 = load i32, i32* %size, align 4
  store i32 %4, i32* %set_size, align 4
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %pred = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i32 0, i32 4
  %6 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  store %struct.edge_def* %6, %struct.edge_def** %e, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %cmp = icmp ne %struct.edge_def* %7, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src2 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %8, i32 0, i32 2
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %src2, align 8
  %cmp3 = icmp eq %struct.basic_block_def* %9, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0)
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %10 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %dst.addr, align 8
  %11 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src4 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %11, i32 0, i32 2
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %src4, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %12, i32 0, i32 11
  %13 = load i32, i32* %index, align 4
  %idxprom5 = sext i32 %13 to i64
  %14 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %src.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %14, i64 %idxprom5
  %15 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx6, align 8
  call void @sbitmap_copy(%struct.simple_bitmap_def* %10, %struct.simple_bitmap_def* %15)
  br label %for.end

for.inc:                                          ; preds = %if.then
  %16 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %pred_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %16, i32 0, i32 0
  %17 = load %struct.edge_def*, %struct.edge_def** %pred_next, align 8
  store %struct.edge_def* %17, %struct.edge_def** %e, align 8
  br label %for.cond

for.end:                                          ; preds = %if.end, %for.cond
  %18 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %cmp7 = icmp eq %struct.edge_def* %18, null
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %for.end
  %19 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %dst.addr, align 8
  call void @sbitmap_zero(%struct.simple_bitmap_def* %19)
  br label %if.end.32

if.else:                                          ; preds = %for.end
  %20 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %pred_next9 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %20, i32 0, i32 0
  %21 = load %struct.edge_def*, %struct.edge_def** %pred_next9, align 8
  store %struct.edge_def* %21, %struct.edge_def** %e, align 8
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.29, %if.else
  %22 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %cmp11 = icmp ne %struct.edge_def* %22, null
  br i1 %cmp11, label %for.body.12, label %for.end.31

for.body.12:                                      ; preds = %for.cond.10
  %23 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src13 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %23, i32 0, i32 2
  %24 = load %struct.basic_block_def*, %struct.basic_block_def** %src13, align 8
  %cmp14 = icmp eq %struct.basic_block_def* %24, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0)
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %for.body.12
  br label %for.inc.29

if.end.16:                                        ; preds = %for.body.12
  %25 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src17 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %25, i32 0, i32 2
  %26 = load %struct.basic_block_def*, %struct.basic_block_def** %src17, align 8
  %index18 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %26, i32 0, i32 11
  %27 = load i32, i32* %index18, align 4
  %idxprom19 = sext i32 %27 to i64
  %28 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %src.addr, align 8
  %arrayidx20 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %28, i64 %idxprom19
  %29 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx20, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %29, i32 0, i32 3
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i32 0
  store i64* %arraydecay, i64** %p, align 8
  %30 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %dst.addr, align 8
  %elms21 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %30, i32 0, i32 3
  %arraydecay22 = getelementptr inbounds [1 x i64], [1 x i64]* %elms21, i32 0, i32 0
  store i64* %arraydecay22, i64** %r, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.27, %if.end.16
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* %set_size, align 4
  %cmp24 = icmp ult i32 %31, %32
  br i1 %cmp24, label %for.body.25, label %for.end.28

for.body.25:                                      ; preds = %for.cond.23
  %33 = load i64*, i64** %p, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %33, i32 1
  store i64* %incdec.ptr, i64** %p, align 8
  %34 = load i64, i64* %33, align 8
  %35 = load i64*, i64** %r, align 8
  %incdec.ptr26 = getelementptr inbounds i64, i64* %35, i32 1
  store i64* %incdec.ptr26, i64** %r, align 8
  %36 = load i64, i64* %35, align 8
  %or = or i64 %36, %34
  store i64 %or, i64* %35, align 8
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.body.25
  %37 = load i32, i32* %i, align 4
  %inc = add i32 %37, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.23

for.end.28:                                       ; preds = %for.cond.23
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.end.28, %if.then.15
  %38 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %pred_next30 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %38, i32 0, i32 0
  %39 = load %struct.edge_def*, %struct.edge_def** %pred_next30, align 8
  store %struct.edge_def* %39, %struct.edge_def** %e, align 8
  br label %for.cond.10

for.end.31:                                       ; preds = %for.cond.10
  br label %if.end.32

if.end.32:                                        ; preds = %for.end.31, %if.then.8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @sbitmap_first_set_bit(%struct.simple_bitmap_def* %bmap) #0 {
entry:
  %retval = alloca i32, align 4
  %bmap.addr = alloca %struct.simple_bitmap_def*, align 8
  %n = alloca i32, align 4
  %word_num_ = alloca i32, align 4
  %bit_num_ = alloca i32, align 4
  %size_ = alloca i32, align 4
  %ptr_ = alloca i64*, align 8
  %word_ = alloca i64, align 8
  %_mask = alloca i64, align 8
  store %struct.simple_bitmap_def* %bmap, %struct.simple_bitmap_def** %bmap.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  store i32 0, i32* %bit_num_, align 4
  %0 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %bmap.addr, align 8
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %0, i32 0, i32 1
  %1 = load i32, i32* %size, align 4
  store i32 %1, i32* %size_, align 4
  %2 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %bmap.addr, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %2, i32 0, i32 3
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i32 0
  store i64* %arraydecay, i64** %ptr_, align 8
  store i32 0, i32* %word_num_, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.9, %do.body
  %3 = load i32, i32* %word_num_, align 4
  %4 = load i32, i32* %size_, align 4
  %cmp = icmp ult i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end.11

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %word_num_, align 4
  %idxprom = zext i32 %5 to i64
  %6 = load i64*, i64** %ptr_, align 8
  %arrayidx = getelementptr inbounds i64, i64* %6, i64 %idxprom
  %7 = load i64, i64* %arrayidx, align 8
  store i64 %7, i64* %word_, align 8
  %8 = load i64, i64* %word_, align 8
  %cmp1 = icmp ne i64 %8, 0
  br i1 %cmp1, label %if.then, label %if.end.8

if.then:                                          ; preds = %for.body
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %if.then
  %9 = load i32, i32* %bit_num_, align 4
  %cmp3 = icmp ult i32 %9, 64
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %10 = load i32, i32* %bit_num_, align 4
  %sh_prom = zext i32 %10 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, i64* %_mask, align 8
  %11 = load i64, i64* %word_, align 8
  %12 = load i64, i64* %_mask, align 8
  %and = and i64 %11, %12
  %cmp5 = icmp ne i64 %and, 0
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %for.body.4
  %13 = load i64, i64* %_mask, align 8
  %neg = xor i64 %13, -1
  %14 = load i64, i64* %word_, align 8
  %and7 = and i64 %14, %neg
  store i64 %and7, i64* %word_, align 8
  %15 = load i32, i32* %word_num_, align 4
  %mul = mul i32 %15, 64
  %16 = load i32, i32* %bit_num_, align 4
  %add = add i32 %mul, %16
  store i32 %add, i32* %n, align 4
  %17 = load i32, i32* %n, align 4
  store i32 %17, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body.4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i32, i32* %bit_num_, align 4
  %inc = add i32 %18, 1
  store i32 %inc, i32* %bit_num_, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %if.end.8

if.end.8:                                         ; preds = %for.end, %for.body
  br label %for.inc.9

for.inc.9:                                        ; preds = %if.end.8
  %19 = load i32, i32* %word_num_, align 4
  %inc10 = add i32 %19, 1
  store i32 %inc10, i32* %word_num_, align 4
  store i32 0, i32* %bit_num_, align 4
  br label %for.cond

for.end.11:                                       ; preds = %for.cond
  br label %do.end

do.end:                                           ; preds = %for.end.11
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.6
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define i32 @sbitmap_last_set_bit(%struct.simple_bitmap_def* %bmap) #0 {
entry:
  %retval = alloca i32, align 4
  %bmap.addr = alloca %struct.simple_bitmap_def*, align 8
  %i = alloca i32, align 4
  %ptr = alloca i64*, align 8
  %word = alloca i64, align 8
  %index = alloca i32, align 4
  %mask = alloca i64, align 8
  store %struct.simple_bitmap_def* %bmap, %struct.simple_bitmap_def** %bmap.addr, align 8
  %0 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %bmap.addr, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %0, i32 0, i32 3
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i32 0
  store i64* %arraydecay, i64** %ptr, align 8
  %1 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %bmap.addr, align 8
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %1, i32 0, i32 1
  %2 = load i32, i32* %size, align 4
  %sub = sub i32 %2, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %3, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i64*, i64** %ptr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %5, i64 %idxprom
  %6 = load i64, i64* %arrayidx, align 8
  store i64 %6, i64* %word, align 8
  %7 = load i64, i64* %word, align 8
  %cmp1 = icmp ne i64 %7, 0
  br i1 %cmp1, label %if.then, label %if.end.5

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %add = add nsw i32 %8, 1
  %mul = mul i32 %add, 64
  %sub2 = sub i32 %mul, 1
  store i32 %sub2, i32* %index, align 4
  store i64 -9223372036854775808, i64* %mask, align 8
  br label %while.body

while.body:                                       ; preds = %if.then, %if.end
  %9 = load i64, i64* %word, align 8
  %10 = load i64, i64* %mask, align 8
  %and = and i64 %9, %10
  %cmp3 = icmp ne i64 %and, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %while.body
  %11 = load i32, i32* %index, align 4
  store i32 %11, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %12 = load i64, i64* %mask, align 8
  %shr = lshr i64 %12, 1
  store i64 %shr, i64* %mask, align 8
  %13 = load i32, i32* %index, align 4
  %dec = add i32 %13, -1
  store i32 %dec, i32* %index, align 4
  br label %while.body

if.end.5:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.5
  %14 = load i32, i32* %i, align 4
  %dec6 = add nsw i32 %14, -1
  store i32 %dec6, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.4
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define void @dump_sbitmap(%struct._IO_FILE* %file, %struct.simple_bitmap_def* %bmap) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %bmap.addr = alloca %struct.simple_bitmap_def*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %j = alloca i32, align 4
  %set_size = alloca i32, align 4
  %total_bits = alloca i32, align 4
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store %struct.simple_bitmap_def* %bmap, %struct.simple_bitmap_def** %bmap.addr, align 8
  %0 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %bmap.addr, align 8
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %0, i32 0, i32 1
  %1 = load i32, i32* %size, align 4
  store i32 %1, i32* %set_size, align 4
  %2 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %bmap.addr, align 8
  %n_bits = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %2, i32 0, i32 0
  %3 = load i32, i32* %n_bits, align 4
  store i32 %3, i32* %total_bits, align 4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %n, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.14, %entry
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %set_size, align 4
  %cmp = icmp ult i32 %5, %6
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %7 = load i32, i32* %n, align 4
  %8 = load i32, i32* %total_bits, align 4
  %cmp1 = icmp ult i32 %7, %8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %9 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %9, label %for.body, label %for.end.16

for.body:                                         ; preds = %land.end
  store i32 0, i32* %j, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %10 = load i32, i32* %j, align 4
  %cmp3 = icmp ult i32 %10, 64
  br i1 %cmp3, label %land.rhs.4, label %land.end.6

land.rhs.4:                                       ; preds = %for.cond.2
  %11 = load i32, i32* %n, align 4
  %12 = load i32, i32* %total_bits, align 4
  %cmp5 = icmp ult i32 %11, %12
  br label %land.end.6

land.end.6:                                       ; preds = %land.rhs.4, %for.cond.2
  %13 = phi i1 [ false, %for.cond.2 ], [ %cmp5, %land.rhs.4 ]
  br i1 %13, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %land.end.6
  %14 = load i32, i32* %n, align 4
  %cmp8 = icmp ne i32 %14, 0
  br i1 %cmp8, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.7
  %15 = load i32, i32* %n, align 4
  %rem = urem i32 %15, 10
  %cmp9 = icmp eq i32 %rem, 0
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body.7
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom = zext i32 %18 to i64
  %19 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %bmap.addr, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %19, i32 0, i32 3
  %arrayidx = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom
  %20 = load i64, i64* %arrayidx, align 8
  %21 = load i32, i32* %j, align 4
  %sh_prom = zext i32 %21 to i64
  %shl = shl i64 1, %sh_prom
  %and = and i64 %20, %shl
  %cmp11 = icmp ne i64 %and, 0
  %conv = zext i1 %cmp11 to i32
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32 %conv)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load i32, i32* %j, align 4
  %inc = add i32 %22, 1
  store i32 %inc, i32* %j, align 4
  %23 = load i32, i32* %n, align 4
  %inc13 = add i32 %23, 1
  store i32 %inc13, i32* %n, align 4
  br label %for.cond.2

for.end:                                          ; preds = %land.end.6
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.end
  %24 = load i32, i32* %i, align 4
  %inc15 = add i32 %24, 1
  store i32 %inc15, i32* %i, align 4
  br label %for.cond

for.end.16:                                       ; preds = %land.end
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @debug_sbitmap(%struct.simple_bitmap_def* %bmap) #0 {
entry:
  %bmap.addr = alloca %struct.simple_bitmap_def*, align 8
  %i = alloca i32, align 4
  %pos = alloca i32, align 4
  store %struct.simple_bitmap_def* %bmap, %struct.simple_bitmap_def** %bmap.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %bmap.addr, align 8
  %n_bits = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %1, i32 0, i32 0
  %2 = load i32, i32* %n_bits, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), i32 %2)
  store i32 30, i32* %pos, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %bmap.addr, align 8
  %n_bits1 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %4, i32 0, i32 0
  %5 = load i32, i32* %n_bits1, align 4
  %cmp = icmp ult i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %div = udiv i32 %6, 64
  %idxprom = zext i32 %div to i64
  %7 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %bmap.addr, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %7, i32 0, i32 3
  %arrayidx = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom
  %8 = load i64, i64* %arrayidx, align 8
  %9 = load i32, i32* %i, align 4
  %rem = urem i32 %9, 64
  %sh_prom = zext i32 %rem to i64
  %shr = lshr i64 %8, %sh_prom
  %and = and i64 %shr, 1
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end.11

if.then:                                          ; preds = %for.body
  %10 = load i32, i32* %pos, align 4
  %cmp2 = icmp ugt i32 %10, 70
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %pos, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = load i32, i32* %i, align 4
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 %13)
  %14 = load i32, i32* %i, align 4
  %cmp6 = icmp uge i32 %14, 10
  %conv = zext i1 %cmp6 to i32
  %add = add nsw i32 1, %conv
  %15 = load i32, i32* %i, align 4
  %cmp7 = icmp uge i32 %15, 100
  %conv8 = zext i1 %cmp7 to i32
  %add9 = add nsw i32 %add, %conv8
  %16 = load i32, i32* %pos, align 4
  %add10 = add i32 %16, %add9
  store i32 %add10, i32* %pos, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %17 = load i32, i32* %i, align 4
  %inc = add i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @dump_sbitmap_vector(%struct._IO_FILE* %file, i8* %title, i8* %subtitle, %struct.simple_bitmap_def** %bmaps, i32 %n_maps) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %title.addr = alloca i8*, align 8
  %subtitle.addr = alloca i8*, align 8
  %bmaps.addr = alloca %struct.simple_bitmap_def**, align 8
  %n_maps.addr = alloca i32, align 4
  %bb = alloca i32, align 4
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store i8* %title, i8** %title.addr, align 8
  store i8* %subtitle, i8** %subtitle.addr, align 8
  store %struct.simple_bitmap_def** %bmaps, %struct.simple_bitmap_def*** %bmaps.addr, align 8
  store i32 %n_maps, i32* %n_maps.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %1 = load i8*, i8** %title.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* %1)
  store i32 0, i32* %bb, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %bb, align 4
  %3 = load i32, i32* %n_maps.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %5 = load i8*, i8** %subtitle.addr, align 8
  %6 = load i32, i32* %bb, align 4
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* %5, i32 %6)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %8 = load i32, i32* %bb, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %bmaps.addr, align 8
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %9, i64 %idxprom
  %10 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx, align 8
  call void @dump_sbitmap(%struct._IO_FILE* %7, %struct.simple_bitmap_def* %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %bb, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %bb, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
