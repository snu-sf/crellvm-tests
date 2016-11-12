; ModuleID = './src/bidi.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bidi_it = type { i64, i64, i32, i64, i64, i32, i32, i32, i8, i8, i64, i64, %struct.bidi_saved_info, %struct.bidi_saved_info, %struct.bidi_saved_info, %struct.bidi_saved_info, %struct.bidi_saved_info, i64, i32, i64, i32, i32, i32, i64, i32, i32, [128 x %struct.bidi_stack], %struct.bidi_string_data, %struct.window*, i32, i64, i8 }
%struct.bidi_saved_info = type { i64, i32, i32 }
%struct.bidi_stack = type { i64, i16, i8, i8 }
%struct.bidi_string_data = type { i64, i8*, i64, i64, i8 }
%struct.window = type opaque
%struct.buffer = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.buffer_text, %struct.buffer_text*, %struct.buffer*, i64, i64, i64, i64, i64, i64, %struct.buffer*, i32, i32, [50 x i8], %struct.timespec, i64, i64, i64, i64, i64, %struct.region_cache*, %struct.region_cache*, %struct.region_cache*, i8, %struct.Lisp_Overlay*, %struct.Lisp_Overlay*, i64, i64 }
%struct.vectorlike_header = type { i64 }
%struct.buffer_text = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.interval*, %struct.Lisp_Marker*, i8 }
%struct.interval = type opaque
%struct.Lisp_Marker = type { i32, %struct.buffer*, %struct.Lisp_Marker*, i64, i64 }
%struct.timespec = type { i64, i64 }
%struct.region_cache = type opaque
%struct.Lisp_Overlay = type { i32, %struct.Lisp_Overlay*, i64, i64, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.text_pos = type { i64, i64 }
%struct.bpa_stack_entry = type { i32, i32, i8 }

@bidi_mirror_table = internal global i64 0, align 8
@bidi_cache_max_elts = internal global i64 50000, align 8
@bidi_cache_idx = internal global i64 0, align 8
@bidi_cache = internal global %struct.bidi_it* null, align 8
@bidi_cache_start = internal global i64 0, align 8
@bidi_cache_sp = internal global i32 0, align 4
@bidi_cache_start_stack = internal global [5 x i64] zeroinitializer, align 16
@bidi_cache_last_idx = internal global i64 0, align 8
@bidi_cache_total_alloc = internal global i64 0, align 8
@bidi_initialized = internal global i8 0, align 1
@current_buffer = external global %struct.buffer*, align 8
@bidi_cache_size = internal global i64 0, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [21 x i8] c"The cache is empty.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Total of  %ld state%s in cache:\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"ch  \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%*c\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"lvl \00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%*d\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"pos \00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%*ld\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"bidi-class\00", align 1
@bidi_type_table = internal global i64 0, align 8
@.str.12 = private unnamed_addr constant [10 x i8] c"mirroring\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"bracket-type\00", align 1
@bidi_brackets_table = internal global i64 0, align 8
@paragraph_start_re = internal global i64 0, align 8
@.str.14 = private unnamed_addr constant [10 x i8] c"\0C\5C|[ \09]*$\00", align 1
@paragraph_separate_re = internal global i64 0, align 8
@.str.15 = private unnamed_addr constant [8 x i8] c"[ \09\0C]*$\00", align 1

; Function Attrs: nounwind uwtable
define i32 @bidi_mirror_char(i32 %c) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %val = alloca i64, align 8
  %v = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4
  store i32 %1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %c.addr, align 4
  %cmp1 = icmp slt i32 %2, 0
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load i32, i32* %c.addr, align 4
  %cmp2 = icmp sgt i32 %3, 4194303
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  call void @emacs_abort() #4
  unreachable

if.end.4:                                         ; preds = %lor.lhs.false
  %4 = load i64, i64* @bidi_mirror_table, align 8
  %5 = load i32, i32* %c.addr, align 4
  %call = call i64 @CHAR_TABLE_REF(i64 %4, i32 %5)
  store i64 %call, i64* %val, align 8
  %6 = load i64, i64* %val, align 8
  %and = and i64 %6, 7
  %conv = trunc i64 %and to i32
  %and5 = and i32 %conv, -5
  %cmp6 = icmp eq i32 %and5, 2
  br i1 %cmp6, label %if.then.8, label %if.end.17

if.then.8:                                        ; preds = %if.end.4
  %7 = load i64, i64* %val, align 8
  %shr = ashr i64 %7, 2
  %conv9 = trunc i64 %shr to i32
  store i32 %conv9, i32* %v, align 4
  %8 = load i32, i32* %v, align 4
  %cmp10 = icmp slt i32 %8, 0
  br i1 %cmp10, label %if.then.15, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %if.then.8
  %9 = load i32, i32* %v, align 4
  %cmp13 = icmp sgt i32 %9, 4194303
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %lor.lhs.false.12, %if.then.8
  call void @emacs_abort() #4
  unreachable

if.end.16:                                        ; preds = %lor.lhs.false.12
  %10 = load i32, i32* %v, align 4
  store i32 %10, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.end.4
  %11 = load i32, i32* %c.addr, align 4
  store i32 %11, i32* %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.end.16, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: noreturn
declare void @emacs_abort() #1

declare i64 @CHAR_TABLE_REF(i64, i32) #2

; Function Attrs: nounwind uwtable
define void @bidi_push_it(%struct.bidi_it* %bidi_it) #0 {
entry:
  %bidi_it.addr = alloca %struct.bidi_it*, align 8
  store %struct.bidi_it* %bidi_it, %struct.bidi_it** %bidi_it.addr, align 8
  %0 = load i64, i64* @bidi_cache_max_elts, align 8
  %add = add nsw i64 %0, 50000
  store i64 %add, i64* @bidi_cache_max_elts, align 8
  %1 = load i64, i64* @bidi_cache_idx, align 8
  call void @bidi_cache_ensure_space(i64 %1)
  %2 = load i64, i64* @bidi_cache_idx, align 8
  %inc = add nsw i64 %2, 1
  store i64 %inc, i64* @bidi_cache_idx, align 8
  %3 = load %struct.bidi_it*, %struct.bidi_it** @bidi_cache, align 8
  %arrayidx = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %3, i64 %2
  %4 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %5 = bitcast %struct.bidi_it* %arrayidx to i8*
  %6 = bitcast %struct.bidi_it* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 2328, i32 8, i1 false)
  %7 = load i64, i64* @bidi_cache_start, align 8
  %8 = load i32, i32* @bidi_cache_sp, align 4
  %inc1 = add nsw i32 %8, 1
  store i32 %inc1, i32* @bidi_cache_sp, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx2 = getelementptr inbounds [5 x i64], [5 x i64]* @bidi_cache_start_stack, i32 0, i64 %idxprom
  store i64 %7, i64* %arrayidx2, align 8
  %9 = load i64, i64* @bidi_cache_idx, align 8
  store i64 %9, i64* @bidi_cache_start, align 8
  store i64 -1, i64* @bidi_cache_last_idx, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bidi_cache_ensure_space(i64 %idx) #0 {
entry:
  %idx.addr = alloca i64, align 8
  %chunk_size = alloca i64, align 8
  %string_or_buffer_bound = alloca i64, align 8
  %c_bound = alloca i64, align 8
  %max_elts = alloca i64, align 8
  store i64 %idx, i64* %idx.addr, align 8
  %0 = load i64, i64* %idx.addr, align 8
  %1 = load i64, i64* @bidi_cache_size, align 8
  %cmp = icmp sge i64 %0, %1
  br i1 %cmp, label %if.then, label %if.end.35

if.then:                                          ; preds = %entry
  store i64 200, i64* %chunk_size, align 8
  %2 = load i64, i64* @bidi_cache_size, align 8
  %3 = load i64, i64* @bidi_cache_max_elts, align 8
  %4 = load i64, i64* %chunk_size, align 8
  %sub = sub nsw i64 %3, %4
  %cmp1 = icmp sgt i64 %2, %sub
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %5 = load i64, i64* @bidi_cache_max_elts, align 8
  %6 = load i64, i64* @bidi_cache_size, align 8
  %sub3 = sub nsw i64 %5, %6
  store i64 %sub3, i64* %chunk_size, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %7 = load i64, i64* %idx.addr, align 8
  %add = add nsw i64 %7, 1
  %8 = load i64, i64* @bidi_cache_size, align 8
  %9 = load i64, i64* %chunk_size, align 8
  %add4 = add nsw i64 %8, %9
  %cmp5 = icmp sgt i64 %add, %add4
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load i64, i64* %idx.addr, align 8
  %add6 = add nsw i64 %10, 1
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %11 = load i64, i64* @bidi_cache_size, align 8
  %12 = load i64, i64* %chunk_size, align 8
  %add7 = add nsw i64 %11, %12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add6, %cond.true ], [ %add7, %cond.false ]
  %13 = load i64, i64* @bidi_cache_max_elts, align 8
  %cmp8 = icmp sle i64 %cond, %13
  br i1 %cmp8, label %if.then.9, label %if.end.34

if.then.9:                                        ; preds = %cond.end
  store i64 2305843009213693951, i64* %string_or_buffer_bound, align 8
  store i64 3961929569095694, i64* %c_bound, align 8
  %14 = load i64, i64* @bidi_cache_max_elts, align 8
  store i64 %14, i64* %max_elts, align 8
  %15 = load i64, i64* %max_elts, align 8
  %16 = load i64, i64* %string_or_buffer_bound, align 8
  %17 = load i64, i64* %c_bound, align 8
  %cmp10 = icmp slt i64 %16, %17
  br i1 %cmp10, label %cond.true.11, label %cond.false.12

cond.true.11:                                     ; preds = %if.then.9
  %18 = load i64, i64* %string_or_buffer_bound, align 8
  br label %cond.end.13

cond.false.12:                                    ; preds = %if.then.9
  %19 = load i64, i64* %c_bound, align 8
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.12, %cond.true.11
  %cond14 = phi i64 [ %18, %cond.true.11 ], [ %19, %cond.false.12 ]
  %cmp15 = icmp slt i64 %15, %cond14
  br i1 %cmp15, label %cond.true.16, label %cond.false.17

cond.true.16:                                     ; preds = %cond.end.13
  %20 = load i64, i64* %max_elts, align 8
  br label %cond.end.23

cond.false.17:                                    ; preds = %cond.end.13
  %21 = load i64, i64* %string_or_buffer_bound, align 8
  %22 = load i64, i64* %c_bound, align 8
  %cmp18 = icmp slt i64 %21, %22
  br i1 %cmp18, label %cond.true.19, label %cond.false.20

cond.true.19:                                     ; preds = %cond.false.17
  %23 = load i64, i64* %string_or_buffer_bound, align 8
  br label %cond.end.21

cond.false.20:                                    ; preds = %cond.false.17
  %24 = load i64, i64* %c_bound, align 8
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.false.20, %cond.true.19
  %cond22 = phi i64 [ %23, %cond.true.19 ], [ %24, %cond.false.20 ]
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.end.21, %cond.true.16
  %cond24 = phi i64 [ %20, %cond.true.16 ], [ %cond22, %cond.end.21 ]
  store i64 %cond24, i64* %max_elts, align 8
  %25 = load %struct.bidi_it*, %struct.bidi_it** @bidi_cache, align 8
  %26 = bitcast %struct.bidi_it* %25 to i8*
  %27 = load i64, i64* %chunk_size, align 8
  %28 = load i64, i64* %idx.addr, align 8
  %29 = load i64, i64* @bidi_cache_size, align 8
  %sub25 = sub nsw i64 %28, %29
  %add26 = add nsw i64 %sub25, 1
  %cmp27 = icmp sgt i64 %27, %add26
  br i1 %cmp27, label %cond.true.28, label %cond.false.29

cond.true.28:                                     ; preds = %cond.end.23
  %30 = load i64, i64* %chunk_size, align 8
  br label %cond.end.32

cond.false.29:                                    ; preds = %cond.end.23
  %31 = load i64, i64* %idx.addr, align 8
  %32 = load i64, i64* @bidi_cache_size, align 8
  %sub30 = sub nsw i64 %31, %32
  %add31 = add nsw i64 %sub30, 1
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.29, %cond.true.28
  %cond33 = phi i64 [ %30, %cond.true.28 ], [ %add31, %cond.false.29 ]
  %33 = load i64, i64* %max_elts, align 8
  %call = call i8* @xpalloc(i8* %26, i64* @bidi_cache_size, i64 %cond33, i64 %33, i64 2328)
  %34 = bitcast i8* %call to %struct.bidi_it*
  store %struct.bidi_it* %34, %struct.bidi_it** @bidi_cache, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %cond.end.32, %cond.end
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %entry
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define void @bidi_pop_it(%struct.bidi_it* %bidi_it) #0 {
entry:
  %bidi_it.addr = alloca %struct.bidi_it*, align 8
  store %struct.bidi_it* %bidi_it, %struct.bidi_it** %bidi_it.addr, align 8
  %0 = load i64, i64* @bidi_cache_start, align 8
  %cmp = icmp sle i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @emacs_abort() #4
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i64, i64* @bidi_cache_start, align 8
  %sub = sub nsw i64 %1, 1
  store i64 %sub, i64* @bidi_cache_idx, align 8
  %2 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %3 = load i64, i64* @bidi_cache_idx, align 8
  %4 = load %struct.bidi_it*, %struct.bidi_it** @bidi_cache, align 8
  %arrayidx = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %4, i64 %3
  %5 = bitcast %struct.bidi_it* %2 to i8*
  %6 = bitcast %struct.bidi_it* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 2328, i32 8, i1 false)
  %7 = load i32, i32* @bidi_cache_sp, align 4
  %cmp1 = icmp sle i32 %7, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  call void @emacs_abort() #4
  unreachable

if.end.3:                                         ; preds = %if.end
  %8 = load i32, i32* @bidi_cache_sp, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* @bidi_cache_sp, align 4
  %idxprom = sext i32 %dec to i64
  %arrayidx4 = getelementptr inbounds [5 x i64], [5 x i64]* @bidi_cache_start_stack, i32 0, i64 %idxprom
  %9 = load i64, i64* %arrayidx4, align 8
  store i64 %9, i64* @bidi_cache_start, align 8
  store i64 -1, i64* @bidi_cache_last_idx, align 8
  %10 = load i64, i64* @bidi_cache_max_elts, align 8
  %sub5 = sub nsw i64 %10, 50000
  store i64 %sub5, i64* @bidi_cache_max_elts, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @bidi_shelve_cache() #0 {
entry:
  %retval = alloca i8*, align 8
  %databuf = alloca i8*, align 8
  %alloc = alloca i64, align 8
  %0 = load i64, i64* @bidi_cache_idx, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* @bidi_cache_idx, align 8
  %mul = mul i64 %1, 2328
  %add = add i64 76, %mul
  store i64 %add, i64* %alloc, align 8
  %2 = load i64, i64* %alloc, align 8
  %call = call noalias i8* @xmalloc(i64 %2)
  store i8* %call, i8** %databuf, align 8
  %3 = load i64, i64* %alloc, align 8
  %4 = load i64, i64* @bidi_cache_total_alloc, align 8
  %add1 = add nsw i64 %4, %3
  store i64 %add1, i64* @bidi_cache_total_alloc, align 8
  %5 = load i8*, i8** %databuf, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* bitcast (i64* @bidi_cache_idx to i8*), i64 8, i32 1, i1 false)
  %6 = load i8*, i8** %databuf, align 8
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 8
  %7 = load %struct.bidi_it*, %struct.bidi_it** @bidi_cache, align 8
  %8 = bitcast %struct.bidi_it* %7 to i8*
  %9 = load i64, i64* @bidi_cache_idx, align 8
  %mul2 = mul i64 %9, 2328
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %8, i64 %mul2, i32 1, i1 false)
  %10 = load i8*, i8** %databuf, align 8
  %add.ptr3 = getelementptr inbounds i8, i8* %10, i64 8
  %11 = load i64, i64* @bidi_cache_idx, align 8
  %mul4 = mul i64 %11, 2328
  %add.ptr5 = getelementptr inbounds i8, i8* %add.ptr3, i64 %mul4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr5, i8* bitcast ([5 x i64]* @bidi_cache_start_stack to i8*), i64 40, i32 1, i1 false)
  %12 = load i8*, i8** %databuf, align 8
  %add.ptr6 = getelementptr inbounds i8, i8* %12, i64 8
  %13 = load i64, i64* @bidi_cache_idx, align 8
  %mul7 = mul i64 %13, 2328
  %add.ptr8 = getelementptr inbounds i8, i8* %add.ptr6, i64 %mul7
  %add.ptr9 = getelementptr inbounds i8, i8* %add.ptr8, i64 40
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr9, i8* bitcast (i32* @bidi_cache_sp to i8*), i64 4, i32 1, i1 false)
  %14 = load i8*, i8** %databuf, align 8
  %add.ptr10 = getelementptr inbounds i8, i8* %14, i64 8
  %15 = load i64, i64* @bidi_cache_idx, align 8
  %mul11 = mul i64 %15, 2328
  %add.ptr12 = getelementptr inbounds i8, i8* %add.ptr10, i64 %mul11
  %add.ptr13 = getelementptr inbounds i8, i8* %add.ptr12, i64 40
  %add.ptr14 = getelementptr inbounds i8, i8* %add.ptr13, i64 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr14, i8* bitcast (i64* @bidi_cache_start to i8*), i64 8, i32 1, i1 false)
  %16 = load i8*, i8** %databuf, align 8
  %add.ptr15 = getelementptr inbounds i8, i8* %16, i64 8
  %17 = load i64, i64* @bidi_cache_idx, align 8
  %mul16 = mul i64 %17, 2328
  %add.ptr17 = getelementptr inbounds i8, i8* %add.ptr15, i64 %mul16
  %add.ptr18 = getelementptr inbounds i8, i8* %add.ptr17, i64 40
  %add.ptr19 = getelementptr inbounds i8, i8* %add.ptr18, i64 4
  %add.ptr20 = getelementptr inbounds i8, i8* %add.ptr19, i64 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr20, i8* bitcast (i64* @bidi_cache_last_idx to i8*), i64 8, i32 1, i1 false)
  %18 = load i8*, i8** %databuf, align 8
  %add.ptr21 = getelementptr inbounds i8, i8* %18, i64 8
  %19 = load i64, i64* @bidi_cache_idx, align 8
  %mul22 = mul i64 %19, 2328
  %add.ptr23 = getelementptr inbounds i8, i8* %add.ptr21, i64 %mul22
  %add.ptr24 = getelementptr inbounds i8, i8* %add.ptr23, i64 40
  %add.ptr25 = getelementptr inbounds i8, i8* %add.ptr24, i64 4
  %add.ptr26 = getelementptr inbounds i8, i8* %add.ptr25, i64 8
  %add.ptr27 = getelementptr inbounds i8, i8* %add.ptr26, i64 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr27, i8* bitcast (i64* @bidi_cache_max_elts to i8*), i64 8, i32 1, i1 false)
  %20 = load i8*, i8** %databuf, align 8
  store i8* %20, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %21 = load i8*, i8** %retval
  ret i8* %21
}

declare noalias i8* @xmalloc(i64) #2

; Function Attrs: nounwind uwtable
define void @bidi_unshelve_cache(i8* %databuf, i1 zeroext %just_free) #0 {
entry:
  %databuf.addr = alloca i8*, align 8
  %just_free.addr = alloca i8, align 1
  %p = alloca i8*, align 8
  %idx = alloca i64, align 8
  store i8* %databuf, i8** %databuf.addr, align 8
  %frombool = zext i1 %just_free to i8
  store i8 %frombool, i8* %just_free.addr, align 1
  %0 = load i8*, i8** %databuf.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i8*, i8** %p, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i8, i8* %just_free.addr, align 1
  %tobool1 = trunc i8 %2 to i1
  br i1 %tobool1, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  store i64 0, i64* @bidi_cache_start, align 8
  store i32 0, i32* @bidi_cache_sp, align 4
  store i64 50000, i64* @bidi_cache_max_elts, align 8
  call void @bidi_cache_reset()
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.36

if.else:                                          ; preds = %entry
  %3 = load i8, i8* %just_free.addr, align 1
  %tobool3 = trunc i8 %3 to i1
  br i1 %tobool3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %if.else
  %4 = bitcast i64* %idx to i8*
  %5 = load i8*, i8** %p, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 1, i1 false)
  %6 = load i64, i64* %idx, align 8
  %mul = mul i64 %6, 2328
  %add = add i64 76, %mul
  %7 = load i64, i64* @bidi_cache_total_alloc, align 8
  %sub = sub i64 %7, %add
  store i64 %sub, i64* @bidi_cache_total_alloc, align 8
  br label %if.end.35

if.else.5:                                        ; preds = %if.else
  %8 = load i8*, i8** %p, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (i64* @bidi_cache_idx to i8*), i8* %8, i64 8, i32 1, i1 false)
  %9 = load i64, i64* @bidi_cache_idx, align 8
  call void @bidi_cache_ensure_space(i64 %9)
  %10 = load %struct.bidi_it*, %struct.bidi_it** @bidi_cache, align 8
  %11 = bitcast %struct.bidi_it* %10 to i8*
  %12 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 8
  %13 = load i64, i64* @bidi_cache_idx, align 8
  %mul6 = mul i64 %13, 2328
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %add.ptr, i64 %mul6, i32 1, i1 false)
  %14 = load i8*, i8** %p, align 8
  %add.ptr7 = getelementptr inbounds i8, i8* %14, i64 8
  %15 = load i64, i64* @bidi_cache_idx, align 8
  %mul8 = mul i64 %15, 2328
  %add.ptr9 = getelementptr inbounds i8, i8* %add.ptr7, i64 %mul8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([5 x i64]* @bidi_cache_start_stack to i8*), i8* %add.ptr9, i64 40, i32 1, i1 false)
  %16 = load i8*, i8** %p, align 8
  %add.ptr10 = getelementptr inbounds i8, i8* %16, i64 8
  %17 = load i64, i64* @bidi_cache_idx, align 8
  %mul11 = mul i64 %17, 2328
  %add.ptr12 = getelementptr inbounds i8, i8* %add.ptr10, i64 %mul11
  %add.ptr13 = getelementptr inbounds i8, i8* %add.ptr12, i64 40
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (i32* @bidi_cache_sp to i8*), i8* %add.ptr13, i64 4, i32 1, i1 false)
  %18 = load i8*, i8** %p, align 8
  %add.ptr14 = getelementptr inbounds i8, i8* %18, i64 8
  %19 = load i64, i64* @bidi_cache_idx, align 8
  %mul15 = mul i64 %19, 2328
  %add.ptr16 = getelementptr inbounds i8, i8* %add.ptr14, i64 %mul15
  %add.ptr17 = getelementptr inbounds i8, i8* %add.ptr16, i64 40
  %add.ptr18 = getelementptr inbounds i8, i8* %add.ptr17, i64 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (i64* @bidi_cache_start to i8*), i8* %add.ptr18, i64 8, i32 1, i1 false)
  %20 = load i8*, i8** %p, align 8
  %add.ptr19 = getelementptr inbounds i8, i8* %20, i64 8
  %21 = load i64, i64* @bidi_cache_idx, align 8
  %mul20 = mul i64 %21, 2328
  %add.ptr21 = getelementptr inbounds i8, i8* %add.ptr19, i64 %mul20
  %add.ptr22 = getelementptr inbounds i8, i8* %add.ptr21, i64 40
  %add.ptr23 = getelementptr inbounds i8, i8* %add.ptr22, i64 4
  %add.ptr24 = getelementptr inbounds i8, i8* %add.ptr23, i64 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (i64* @bidi_cache_last_idx to i8*), i8* %add.ptr24, i64 8, i32 1, i1 false)
  %22 = load i8*, i8** %p, align 8
  %add.ptr25 = getelementptr inbounds i8, i8* %22, i64 8
  %23 = load i64, i64* @bidi_cache_idx, align 8
  %mul26 = mul i64 %23, 2328
  %add.ptr27 = getelementptr inbounds i8, i8* %add.ptr25, i64 %mul26
  %add.ptr28 = getelementptr inbounds i8, i8* %add.ptr27, i64 40
  %add.ptr29 = getelementptr inbounds i8, i8* %add.ptr28, i64 4
  %add.ptr30 = getelementptr inbounds i8, i8* %add.ptr29, i64 8
  %add.ptr31 = getelementptr inbounds i8, i8* %add.ptr30, i64 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (i64* @bidi_cache_max_elts to i8*), i8* %add.ptr31, i64 8, i32 1, i1 false)
  %24 = load i64, i64* @bidi_cache_idx, align 8
  %mul32 = mul i64 %24, 2328
  %add33 = add i64 76, %mul32
  %25 = load i64, i64* @bidi_cache_total_alloc, align 8
  %sub34 = sub i64 %25, %add33
  store i64 %sub34, i64* @bidi_cache_total_alloc, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.5, %if.then.4
  %26 = load i8*, i8** %p, align 8
  call void @xfree(i8* %26)
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bidi_cache_reset() #0 {
entry:
  call void @bidi_cache_reset_to(i32 0)
  ret void
}

declare void @xfree(i8*) #2

; Function Attrs: nounwind uwtable
define void @bidi_init_it(i64 %charpos, i64 %bytepos, i1 zeroext %frame_window_p, %struct.bidi_it* %bidi_it) #0 {
entry:
  %charpos.addr = alloca i64, align 8
  %bytepos.addr = alloca i64, align 8
  %frame_window_p.addr = alloca i8, align 1
  %bidi_it.addr = alloca %struct.bidi_it*, align 8
  store i64 %charpos, i64* %charpos.addr, align 8
  store i64 %bytepos, i64* %bytepos.addr, align 8
  %frombool = zext i1 %frame_window_p to i8
  store i8 %frombool, i8* %frame_window_p.addr, align 1
  store %struct.bidi_it* %bidi_it, %struct.bidi_it** %bidi_it.addr, align 8
  %0 = load i8, i8* @bidi_initialized, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @bidi_initialize()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* %charpos.addr, align 8
  %cmp = icmp sge i64 %1, 0
  br i1 %cmp, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %if.end
  %2 = load i64, i64* %charpos.addr, align 8
  %3 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %charpos2 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %3, i32 0, i32 1
  store i64 %2, i64* %charpos2, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.1, %if.end
  %4 = load i64, i64* %bytepos.addr, align 8
  %cmp4 = icmp sge i64 %4, 0
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end.3
  %5 = load i64, i64* %bytepos.addr, align 8
  %6 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %bytepos6 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %6, i32 0, i32 0
  store i64 %5, i64* %bytepos6, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end.3
  %7 = load i8, i8* %frame_window_p.addr, align 1
  %tobool8 = trunc i8 %7 to i1
  %8 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %frame_window_p9 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %8, i32 0, i32 31
  %9 = zext i1 %tobool8 to i8
  %bf.load = load i8, i8* %frame_window_p9, align 8
  %bf.shl = shl i8 %9, 2
  %bf.clear = and i8 %bf.load, -5
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, i8* %frame_window_p9, align 8
  %tobool10 = trunc i8 %9 to i1
  %10 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %nchars = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %10, i32 0, i32 3
  store i64 -1, i64* %nchars, align 8
  %11 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %first_elt = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %11, i32 0, i32 31
  %bf.load11 = load i8, i8* %first_elt, align 8
  %bf.clear12 = and i8 %bf.load11, -2
  %bf.set13 = or i8 %bf.clear12, 1
  store i8 %bf.set13, i8* %first_elt, align 8
  %12 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  call void @bidi_set_paragraph_end(%struct.bidi_it* %12)
  %13 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %new_paragraph = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %13, i32 0, i32 31
  %bf.load14 = load i8, i8* %new_paragraph, align 8
  %bf.clear15 = and i8 %bf.load14, -3
  %bf.set16 = or i8 %bf.clear15, 2
  store i8 %bf.set16, i8* %new_paragraph, align 8
  %14 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %separator_limit = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %14, i32 0, i32 30
  store i64 -1, i64* %separator_limit, align 8
  %15 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %15, i32 0, i32 5
  store i32 6, i32* %type, align 4
  %16 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type_after_wn = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %16, i32 0, i32 6
  store i32 6, i32* %type_after_wn, align 4
  %17 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %orig_type = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %17, i32 0, i32 7
  store i32 6, i32* %orig_type, align 4
  %18 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %prev = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %18, i32 0, i32 12
  %orig_type17 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %prev, i32 0, i32 2
  store i32 0, i32* %orig_type17, align 4
  %19 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %prev18 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %19, i32 0, i32 12
  %type19 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %prev18, i32 0, i32 1
  store i32 0, i32* %type19, align 4
  %20 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %last_strong = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %20, i32 0, i32 13
  %orig_type20 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %last_strong, i32 0, i32 2
  store i32 0, i32* %orig_type20, align 4
  %21 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %last_strong21 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %21, i32 0, i32 13
  %type22 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %last_strong21, i32 0, i32 1
  store i32 0, i32* %type22, align 4
  %22 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %next_for_neutral = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %22, i32 0, i32 14
  %charpos23 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %next_for_neutral, i32 0, i32 0
  store i64 -1, i64* %charpos23, align 8
  %23 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %next_for_neutral24 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %23, i32 0, i32 14
  %orig_type25 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %next_for_neutral24, i32 0, i32 2
  store i32 0, i32* %orig_type25, align 4
  %24 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %next_for_neutral26 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %24, i32 0, i32 14
  %type27 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %next_for_neutral26, i32 0, i32 1
  store i32 0, i32* %type27, align 4
  %25 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %prev_for_neutral = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %25, i32 0, i32 15
  %charpos28 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %prev_for_neutral, i32 0, i32 0
  store i64 -1, i64* %charpos28, align 8
  %26 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %prev_for_neutral29 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %26, i32 0, i32 15
  %orig_type30 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %prev_for_neutral29, i32 0, i32 2
  store i32 0, i32* %orig_type30, align 4
  %27 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %prev_for_neutral31 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %27, i32 0, i32 15
  %type32 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %prev_for_neutral31, i32 0, i32 1
  store i32 0, i32* %type32, align 4
  %28 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %bracket_pairing_pos = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %28, i32 0, i32 17
  store i64 -1, i64* %bracket_pairing_pos, align 8
  %29 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %sos = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %29, i32 0, i32 21
  store i32 1, i32* %sos, align 4
  %30 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %disp_pos = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %30, i32 0, i32 23
  store i64 -1, i64* %disp_pos, align 8
  %31 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %disp_prop = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %31, i32 0, i32 24
  store i32 0, i32* %disp_prop, align 4
  %32 = load i64, i64* @bidi_cache_start, align 8
  %cmp33 = icmp eq i64 %32, 0
  br i1 %cmp33, label %if.then.34, label %if.else

if.then.34:                                       ; preds = %if.end.7
  call void @bidi_cache_shrink()
  br label %if.end.35

if.else:                                          ; preds = %if.end.7
  call void @bidi_cache_reset()
  br label %if.end.35

if.end.35:                                        ; preds = %if.else, %if.then.34
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bidi_initialize() #0 {
entry:
  %call = call i64 @intern(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0))
  %call1 = call i64 @uniprop_table(i64 %call)
  store i64 %call1, i64* @bidi_type_table, align 8
  %0 = load i64, i64* @bidi_type_table, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @emacs_abort() #4
  unreachable

if.end:                                           ; preds = %entry
  call void @staticpro(i64* @bidi_type_table)
  %call3 = call i64 @intern(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0))
  %call4 = call i64 @uniprop_table(i64 %call3)
  store i64 %call4, i64* @bidi_mirror_table, align 8
  %1 = load i64, i64* @bidi_mirror_table, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp6 = icmp eq i64 %1, %call5
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  call void @emacs_abort() #4
  unreachable

if.end.8:                                         ; preds = %if.end
  call void @staticpro(i64* @bidi_mirror_table)
  %call9 = call i64 @intern(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0))
  %call10 = call i64 @uniprop_table(i64 %call9)
  store i64 %call10, i64* @bidi_brackets_table, align 8
  %2 = load i64, i64* @bidi_brackets_table, align 8
  %call11 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp12 = icmp eq i64 %2, %call11
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.8
  call void @emacs_abort() #4
  unreachable

if.end.14:                                        ; preds = %if.end.8
  call void @staticpro(i64* @bidi_brackets_table)
  %call15 = call i64 @builtin_lisp_symbol(i32 741)
  %call16 = call i64 @Fsymbol_value(i64 %call15)
  store i64 %call16, i64* @paragraph_start_re, align 8
  %3 = load i64, i64* @paragraph_start_re, align 8
  %call17 = call zeroext i1 @STRINGP(i64 %3)
  br i1 %call17, label %if.end.20, label %if.then.18

if.then.18:                                       ; preds = %if.end.14
  %call19 = call i64 @build_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0))
  store i64 %call19, i64* @paragraph_start_re, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.end.14
  call void @staticpro(i64* @paragraph_start_re)
  %call21 = call i64 @builtin_lisp_symbol(i32 740)
  %call22 = call i64 @Fsymbol_value(i64 %call21)
  store i64 %call22, i64* @paragraph_separate_re, align 8
  %4 = load i64, i64* @paragraph_separate_re, align 8
  %call23 = call zeroext i1 @STRINGP(i64 %4)
  br i1 %call23, label %if.end.26, label %if.then.24

if.then.24:                                       ; preds = %if.end.20
  %call25 = call i64 @build_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0))
  store i64 %call25, i64* @paragraph_separate_re, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %if.end.20
  call void @staticpro(i64* @paragraph_separate_re)
  store i32 0, i32* @bidi_cache_sp, align 4
  store i64 0, i64* @bidi_cache_total_alloc, align 8
  store i64 50000, i64* @bidi_cache_max_elts, align 8
  store i8 1, i8* @bidi_initialized, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bidi_set_paragraph_end(%struct.bidi_it* %bidi_it) #0 {
entry:
  %bidi_it.addr = alloca %struct.bidi_it*, align 8
  store %struct.bidi_it* %bidi_it, %struct.bidi_it** %bidi_it.addr, align 8
  %0 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %invalid_levels = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %0, i32 0, i32 10
  store i64 0, i64* %invalid_levels, align 8
  %1 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %invalid_isolates = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %1, i32 0, i32 11
  store i64 0, i64* %invalid_isolates, align 8
  %2 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %stack_idx = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %2, i32 0, i32 25
  store i32 0, i32* %stack_idx, align 4
  %3 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %level_stack = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %3, i32 0, i32 26
  %arrayidx = getelementptr inbounds [128 x %struct.bidi_stack], [128 x %struct.bidi_stack]* %level_stack, i32 0, i64 0
  %level = getelementptr inbounds %struct.bidi_stack, %struct.bidi_stack* %arrayidx, i32 0, i32 2
  %4 = load i8, i8* %level, align 1
  %5 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %resolved_level = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %5, i32 0, i32 8
  store i8 %4, i8* %resolved_level, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bidi_cache_shrink() #0 {
entry:
  %0 = load i64, i64* @bidi_cache_size, align 8
  %cmp = icmp sgt i64 %0, 200
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.bidi_it*, %struct.bidi_it** @bidi_cache, align 8
  %2 = bitcast %struct.bidi_it* %1 to i8*
  %call = call i8* @xrealloc(i8* %2, i64 465600)
  %3 = bitcast i8* %call to %struct.bidi_it*
  store %struct.bidi_it* %3, %struct.bidi_it** @bidi_cache, align 8
  store i64 200, i64* @bidi_cache_size, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @bidi_cache_reset()
  store i64 50000, i64* @bidi_cache_max_elts, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @bidi_paragraph_init(i32 %dir, %struct.bidi_it* %bidi_it, i1 zeroext %no_default_p) #0 {
entry:
  %dir.addr = alloca i32, align 4
  %bidi_it.addr = alloca %struct.bidi_it*, align 8
  %no_default_p.addr = alloca i8, align 1
  %bytepos = alloca i64, align 8
  %string_p = alloca i8, align 1
  %pstartbyte = alloca i64, align 8
  %begbyte = alloca i64, align 8
  %end = alloca i64, align 8
  %ch_len = alloca i64, align 8
  %nchars = alloca i64, align 8
  %pos = alloca i64, align 8
  %disp_pos = alloca i64, align 8
  %disp_prop = alloca i32, align 4
  %type = alloca i32, align 4
  %s29 = alloca i8*, align 8
  %prevpbyte = alloca i64, align 8
  %p = alloca i64, align 8
  %pbyte = alloca i64, align 8
  %chp = alloca i8*, align 8
  store i32 %dir, i32* %dir.addr, align 4
  store %struct.bidi_it* %bidi_it, %struct.bidi_it** %bidi_it.addr, align 8
  %frombool = zext i1 %no_default_p to i8
  store i8 %frombool, i8* %no_default_p.addr, align 1
  %0 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %bytepos1 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %0, i32 0, i32 0
  %1 = load i64, i64* %bytepos1, align 8
  store i64 %1, i64* %bytepos, align 8
  %2 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %string = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %2, i32 0, i32 27
  %s = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %string, i32 0, i32 1
  %3 = load i8*, i8** %s, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %4 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %string2 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %4, i32 0, i32 27
  %lstring = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %string2, i32 0, i32 0
  %5 = load i64, i64* %lstring, align 8
  %call = call zeroext i1 @STRINGP(i64 %5)
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %6 = phi i1 [ true, %entry ], [ %call, %lor.rhs ]
  %frombool3 = zext i1 %6 to i8
  store i8 %frombool3, i8* %string_p, align 1
  %7 = load i8, i8* %string_p, align 1
  %tobool4 = trunc i8 %7 to i1
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.end
  br label %cond.end

cond.false:                                       ; preds = %lor.end
  %8 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %8, i32 0, i32 78
  %9 = load i64, i64* %begv_byte, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %9, %cond.false ]
  store i64 %cond, i64* %begbyte, align 8
  %10 = load i8, i8* %string_p, align 1
  %tobool5 = trunc i8 %10 to i1
  br i1 %tobool5, label %cond.true.6, label %cond.false.8

cond.true.6:                                      ; preds = %cond.end
  %11 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %string7 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %11, i32 0, i32 27
  %schars = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %string7, i32 0, i32 2
  %12 = load i64, i64* %schars, align 8
  br label %cond.end.9

cond.false.8:                                     ; preds = %cond.end
  %13 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %13, i32 0, i32 79
  %14 = load i64, i64* %zv, align 8
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.8, %cond.true.6
  %cond10 = phi i64 [ %12, %cond.true.6 ], [ %14, %cond.false.8 ]
  store i64 %cond10, i64* %end, align 8
  %15 = load i64, i64* %bytepos, align 8
  %16 = load i64, i64* %begbyte, align 8
  %cmp = icmp eq i64 %15, %16
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %cond.end.9
  %17 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %charpos = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %17, i32 0, i32 1
  %18 = load i64, i64* %charpos, align 8
  %19 = load i64, i64* %end, align 8
  %cmp11 = icmp eq i64 %18, %19
  br i1 %cmp11, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %dir.addr, align 4
  br label %if.end.16

if.else:                                          ; preds = %land.lhs.true, %cond.end.9
  %20 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %charpos12 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %20, i32 0, i32 1
  %21 = load i64, i64* %charpos12, align 8
  %22 = load i64, i64* %end, align 8
  %cmp13 = icmp sge i64 %21, %22
  br i1 %cmp13, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %23 = load i64, i64* %bytepos, align 8
  %24 = load i64, i64* %begbyte, align 8
  %cmp14 = icmp slt i64 %23, %24
  br i1 %cmp14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %lor.lhs.false, %if.else
  call void @emacs_abort() #4
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %if.then
  %25 = load i32, i32* %dir.addr, align 4
  %cmp17 = icmp eq i32 %25, 1
  br i1 %cmp17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %if.end.16
  %26 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %paragraph_dir = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %26, i32 0, i32 29
  store i32 1, i32* %paragraph_dir, align 4
  %27 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %new_paragraph = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %27, i32 0, i32 31
  %bf.load = load i8, i8* %new_paragraph, align 8
  %bf.clear = and i8 %bf.load, -3
  store i8 %bf.clear, i8* %new_paragraph, align 8
  br label %if.end.155

if.else.19:                                       ; preds = %if.end.16
  %28 = load i32, i32* %dir.addr, align 4
  %cmp20 = icmp eq i32 %28, 2
  br i1 %cmp20, label %if.then.21, label %if.else.26

if.then.21:                                       ; preds = %if.else.19
  %29 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %paragraph_dir22 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %29, i32 0, i32 29
  store i32 2, i32* %paragraph_dir22, align 4
  %30 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %new_paragraph23 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %30, i32 0, i32 31
  %bf.load24 = load i8, i8* %new_paragraph23, align 8
  %bf.clear25 = and i8 %bf.load24, -3
  store i8 %bf.clear25, i8* %new_paragraph23, align 8
  br label %if.end.154

if.else.26:                                       ; preds = %if.else.19
  %31 = load i32, i32* %dir.addr, align 4
  %cmp27 = icmp eq i32 %31, 0
  br i1 %cmp27, label %if.then.28, label %if.else.152

if.then.28:                                       ; preds = %if.else.26
  store i64 -1, i64* %disp_pos, align 8
  store i32 0, i32* %disp_prop, align 4
  %32 = load i8, i8* @bidi_initialized, align 1
  %tobool30 = trunc i8 %32 to i1
  br i1 %tobool30, label %if.end.32, label %if.then.31

if.then.31:                                       ; preds = %if.then.28
  call void @bidi_initialize()
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.then.28
  %33 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %first_elt = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %33, i32 0, i32 31
  %bf.load33 = load i8, i8* %first_elt, align 8
  %bf.clear34 = and i8 %bf.load33, 1
  %bf.cast = trunc i8 %bf.clear34 to i1
  br i1 %bf.cast, label %if.end.39, label %land.lhs.true.35

land.lhs.true.35:                                 ; preds = %if.end.32
  %34 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %charpos36 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %34, i32 0, i32 1
  %35 = load i64, i64* %charpos36, align 8
  %36 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %separator_limit = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %36, i32 0, i32 30
  %37 = load i64, i64* %separator_limit, align 8
  %cmp37 = icmp slt i64 %35, %37
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %land.lhs.true.35
  br label %return

if.end.39:                                        ; preds = %land.lhs.true.35, %if.end.32
  %38 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %charpos40 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %38, i32 0, i32 1
  %39 = load i64, i64* %charpos40, align 8
  store i64 %39, i64* %pos, align 8
  %40 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %string41 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %40, i32 0, i32 27
  %lstring42 = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %string41, i32 0, i32 0
  %41 = load i64, i64* %lstring42, align 8
  %call43 = call zeroext i1 @STRINGP(i64 %41)
  br i1 %call43, label %cond.true.44, label %cond.false.48

cond.true.44:                                     ; preds = %if.end.39
  %42 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %string45 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %42, i32 0, i32 27
  %lstring46 = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %string45, i32 0, i32 0
  %43 = load i64, i64* %lstring46, align 8
  %call47 = call i8* @SDATA(i64 %43)
  br label %cond.end.51

cond.false.48:                                    ; preds = %if.end.39
  %44 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %string49 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %44, i32 0, i32 27
  %s50 = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %string49, i32 0, i32 1
  %45 = load i8*, i8** %s50, align 8
  br label %cond.end.51

cond.end.51:                                      ; preds = %cond.false.48, %cond.true.44
  %cond52 = phi i8* [ %call47, %cond.true.44 ], [ %45, %cond.false.48 ]
  store i8* %cond52, i8** %s29, align 8
  %46 = load i64, i64* %bytepos, align 8
  %47 = load i64, i64* %begbyte, align 8
  %cmp53 = icmp sgt i64 %46, %47
  br i1 %cmp53, label %land.lhs.true.54, label %if.end.63

land.lhs.true.54:                                 ; preds = %cond.end.51
  %48 = load i64, i64* %bytepos, align 8
  %49 = load i8*, i8** %s29, align 8
  %50 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %string55 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %50, i32 0, i32 27
  %unibyte = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %string55, i32 0, i32 4
  %bf.load56 = load i8, i8* %unibyte, align 8
  %bf.lshr = lshr i8 %bf.load56, 1
  %bf.clear57 = and i8 %bf.lshr, 1
  %bf.cast58 = trunc i8 %bf.clear57 to i1
  %call59 = call i32 @bidi_char_at_pos(i64 %48, i8* %49, i1 zeroext %bf.cast58)
  %cmp60 = icmp eq i32 %call59, 10
  br i1 %cmp60, label %if.then.61, label %if.end.63

if.then.61:                                       ; preds = %land.lhs.true.54
  %51 = load i64, i64* %bytepos, align 8
  %inc = add nsw i64 %51, 1
  store i64 %inc, i64* %bytepos, align 8
  %52 = load i64, i64* %pos, align 8
  %inc62 = add nsw i64 %52, 1
  store i64 %inc62, i64* %pos, align 8
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.61, %land.lhs.true.54, %cond.end.51
  %53 = load i8, i8* %string_p, align 1
  %tobool64 = trunc i8 %53 to i1
  br i1 %tobool64, label %if.then.65, label %if.else.66

if.then.65:                                       ; preds = %if.end.63
  store i64 0, i64* %pstartbyte, align 8
  br label %if.end.68

if.else.66:                                       ; preds = %if.end.63
  %54 = load i64, i64* %pos, align 8
  %55 = load i64, i64* %bytepos, align 8
  %call67 = call i64 @bidi_find_paragraph_start(i64 %54, i64 %55)
  store i64 %call67, i64* %pstartbyte, align 8
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.66, %if.then.65
  %56 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %separator_limit69 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %56, i32 0, i32 30
  store i64 -1, i64* %separator_limit69, align 8
  %57 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %new_paragraph70 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %57, i32 0, i32 31
  %bf.load71 = load i8, i8* %new_paragraph70, align 8
  %bf.clear72 = and i8 %bf.load71, -3
  store i8 %bf.clear72, i8* %new_paragraph70, align 8
  br label %do.body

do.body:                                          ; preds = %land.end.150, %if.end.68
  %58 = load i64, i64* %pstartbyte, align 8
  store i64 %58, i64* %bytepos, align 8
  %59 = load i8, i8* %string_p, align 1
  %tobool73 = trunc i8 %59 to i1
  br i1 %tobool73, label %if.end.76, label %if.then.74

if.then.74:                                       ; preds = %do.body
  %60 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %61 = load i64, i64* %bytepos, align 8
  %call75 = call i64 @buf_bytepos_to_charpos(%struct.buffer* %60, i64 %61)
  store i64 %call75, i64* %pos, align 8
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.74, %do.body
  %62 = load i64, i64* %pos, align 8
  %63 = load i64, i64* %bytepos, align 8
  %64 = load i64, i64* %end, align 8
  %65 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %string77 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %65, i32 0, i32 27
  %66 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %w = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %66, i32 0, i32 28
  %67 = load %struct.window*, %struct.window** %w, align 8
  %68 = load i8, i8* %string_p, align 1
  %tobool78 = trunc i8 %68 to i1
  %69 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %frame_window_p = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %69, i32 0, i32 31
  %bf.load79 = load i8, i8* %frame_window_p, align 8
  %bf.lshr80 = lshr i8 %bf.load79, 2
  %bf.clear81 = and i8 %bf.lshr80, 1
  %bf.cast82 = trunc i8 %bf.clear81 to i1
  %call83 = call i32 @find_first_strong_char(i64 %62, i64 %63, i64 %64, i64* %disp_pos, i32* %disp_prop, %struct.bidi_string_data* %string77, %struct.window* %67, i1 zeroext %tobool78, i1 zeroext %bf.cast82, i64* %ch_len, i64* %nchars, i1 zeroext false)
  store i32 %call83, i32* %type, align 4
  %70 = load i32, i32* %type, align 4
  %cmp84 = icmp eq i32 %70, 2
  br i1 %cmp84, label %if.then.87, label %lor.lhs.false.85

lor.lhs.false.85:                                 ; preds = %if.end.76
  %71 = load i32, i32* %type, align 4
  %cmp86 = icmp eq i32 %71, 7
  br i1 %cmp86, label %if.then.87, label %if.else.89

if.then.87:                                       ; preds = %lor.lhs.false.85, %if.end.76
  %72 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %paragraph_dir88 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %72, i32 0, i32 29
  store i32 2, i32* %paragraph_dir88, align 4
  br label %if.end.94

if.else.89:                                       ; preds = %lor.lhs.false.85
  %73 = load i32, i32* %type, align 4
  %cmp90 = icmp eq i32 %73, 1
  br i1 %cmp90, label %if.then.91, label %if.end.93

if.then.91:                                       ; preds = %if.else.89
  %74 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %paragraph_dir92 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %74, i32 0, i32 29
  store i32 1, i32* %paragraph_dir92, align 4
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.91, %if.else.89
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.then.87
  %75 = load i8, i8* %string_p, align 1
  %tobool95 = trunc i8 %75 to i1
  br i1 %tobool95, label %if.end.141, label %land.lhs.true.96

land.lhs.true.96:                                 ; preds = %if.end.94
  %76 = load i8, i8* %no_default_p.addr, align 1
  %tobool97 = trunc i8 %76 to i1
  br i1 %tobool97, label %land.lhs.true.98, label %if.end.141

land.lhs.true.98:                                 ; preds = %land.lhs.true.96
  %77 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %paragraph_dir99 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %77, i32 0, i32 29
  %78 = load i32, i32* %paragraph_dir99, align 4
  %cmp100 = icmp eq i32 %78, 0
  br i1 %cmp100, label %if.then.101, label %if.end.141

if.then.101:                                      ; preds = %land.lhs.true.98
  %79 = load i64, i64* %pstartbyte, align 8
  %80 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte102 = getelementptr inbounds %struct.buffer, %struct.buffer* %80, i32 0, i32 78
  %81 = load i64, i64* %begv_byte102, align 8
  %cmp103 = icmp eq i64 %79, %81
  br i1 %cmp103, label %if.then.104, label %if.else.106

if.then.104:                                      ; preds = %if.then.101
  %82 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %paragraph_dir105 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %82, i32 0, i32 29
  store i32 1, i32* %paragraph_dir105, align 4
  br label %if.end.140

if.else.106:                                      ; preds = %if.then.101
  %83 = load i64, i64* %pstartbyte, align 8
  store i64 %83, i64* %prevpbyte, align 8
  %84 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %85 = load i64, i64* %pstartbyte, align 8
  %call107 = call i64 @buf_bytepos_to_charpos(%struct.buffer* %84, i64 %85)
  store i64 %call107, i64* %p, align 8
  %86 = load i64, i64* %pstartbyte, align 8
  store i64 %86, i64* %pbyte, align 8
  br label %while.cond

while.cond:                                       ; preds = %do.end.137, %if.else.106
  %87 = load i64, i64* %pbyte, align 8
  %88 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte108 = getelementptr inbounds %struct.buffer, %struct.buffer* %88, i32 0, i32 78
  %89 = load i64, i64* %begv_byte108, align 8
  %cmp109 = icmp sgt i64 %87, %89
  br i1 %cmp109, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %90 = load i64, i64* %prevpbyte, align 8
  %91 = load i64, i64* %pstartbyte, align 8
  %cmp110 = icmp sge i64 %90, %91
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %92 = phi i1 [ false, %while.cond ], [ %cmp110, %land.rhs ]
  br i1 %92, label %while.body, label %while.end.139

while.body:                                       ; preds = %land.end
  br label %do.body.111

do.body.111:                                      ; preds = %while.body
  %93 = load i64, i64* %p, align 8
  %dec = add nsw i64 %93, -1
  store i64 %dec, i64* %p, align 8
  %94 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_ = getelementptr inbounds %struct.buffer, %struct.buffer* %94, i32 0, i32 39
  %95 = load i64, i64* %enable_multibyte_characters_, align 8
  %call112 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp113 = icmp eq i64 %95, %call112
  br i1 %cmp113, label %if.then.114, label %if.else.116

if.then.114:                                      ; preds = %do.body.111
  %96 = load i64, i64* %pbyte, align 8
  %dec115 = add nsw i64 %96, -1
  store i64 %dec115, i64* %pbyte, align 8
  br label %if.end.136

if.else.116:                                      ; preds = %do.body.111
  br label %do.body.117

do.body.117:                                      ; preds = %if.else.116
  %97 = load i64, i64* %pbyte, align 8
  %dec118 = add nsw i64 %97, -1
  store i64 %dec118, i64* %pbyte, align 8
  %98 = load i64, i64* %pbyte, align 8
  %99 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %99, i32 0, i32 73
  %100 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %gpt_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %100, i32 0, i32 3
  %101 = load i64, i64* %gpt_byte, align 8
  %cmp119 = icmp slt i64 %98, %101
  br i1 %cmp119, label %if.then.120, label %if.else.123

if.then.120:                                      ; preds = %do.body.117
  %102 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text121 = getelementptr inbounds %struct.buffer, %struct.buffer* %102, i32 0, i32 73
  %103 = load %struct.buffer_text*, %struct.buffer_text** %text121, align 8
  %beg = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %103, i32 0, i32 0
  %104 = load i8*, i8** %beg, align 8
  %105 = load i64, i64* %pbyte, align 8
  %add.ptr = getelementptr inbounds i8, i8* %104, i64 %105
  %add.ptr122 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  store i8* %add.ptr122, i8** %chp, align 8
  br label %if.end.130

if.else.123:                                      ; preds = %do.body.117
  %106 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text124 = getelementptr inbounds %struct.buffer, %struct.buffer* %106, i32 0, i32 73
  %107 = load %struct.buffer_text*, %struct.buffer_text** %text124, align 8
  %beg125 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %107, i32 0, i32 0
  %108 = load i8*, i8** %beg125, align 8
  %109 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text126 = getelementptr inbounds %struct.buffer, %struct.buffer* %109, i32 0, i32 73
  %110 = load %struct.buffer_text*, %struct.buffer_text** %text126, align 8
  %gap_size = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %110, i32 0, i32 5
  %111 = load i64, i64* %gap_size, align 8
  %add.ptr127 = getelementptr inbounds i8, i8* %108, i64 %111
  %112 = load i64, i64* %pbyte, align 8
  %add.ptr128 = getelementptr inbounds i8, i8* %add.ptr127, i64 %112
  %add.ptr129 = getelementptr inbounds i8, i8* %add.ptr128, i64 -1
  store i8* %add.ptr129, i8** %chp, align 8
  br label %if.end.130

if.end.130:                                       ; preds = %if.else.123, %if.then.120
  br label %while.cond.131

while.cond.131:                                   ; preds = %while.body.134, %if.end.130
  %113 = load i8*, i8** %chp, align 8
  %114 = load i8, i8* %113, align 1
  %conv = zext i8 %114 to i32
  %and = and i32 %conv, 192
  %cmp132 = icmp ne i32 %and, 128
  %lnot = xor i1 %cmp132, true
  br i1 %lnot, label %while.body.134, label %while.end

while.body.134:                                   ; preds = %while.cond.131
  %115 = load i8*, i8** %chp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %115, i32 -1
  store i8* %incdec.ptr, i8** %chp, align 8
  %116 = load i64, i64* %pbyte, align 8
  %dec135 = add nsw i64 %116, -1
  store i64 %dec135, i64* %pbyte, align 8
  br label %while.cond.131

while.end:                                        ; preds = %while.cond.131
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end.136

if.end.136:                                       ; preds = %do.end, %if.then.114
  br label %do.end.137

do.end.137:                                       ; preds = %if.end.136
  %117 = load i64, i64* %p, align 8
  %118 = load i64, i64* %pbyte, align 8
  %call138 = call i64 @bidi_find_paragraph_start(i64 %117, i64 %118)
  store i64 %call138, i64* %prevpbyte, align 8
  br label %while.cond

while.end.139:                                    ; preds = %land.end
  %119 = load i64, i64* %prevpbyte, align 8
  store i64 %119, i64* %pstartbyte, align 8
  br label %if.end.140

if.end.140:                                       ; preds = %while.end.139, %if.then.104
  br label %if.end.141

if.end.141:                                       ; preds = %if.end.140, %land.lhs.true.98, %land.lhs.true.96, %if.end.94
  br label %do.cond

do.cond:                                          ; preds = %if.end.141
  %120 = load i8, i8* %string_p, align 1
  %tobool142 = trunc i8 %120 to i1
  br i1 %tobool142, label %land.end.150, label %land.lhs.true.143

land.lhs.true.143:                                ; preds = %do.cond
  %121 = load i8, i8* %no_default_p.addr, align 1
  %tobool144 = trunc i8 %121 to i1
  br i1 %tobool144, label %land.rhs.146, label %land.end.150

land.rhs.146:                                     ; preds = %land.lhs.true.143
  %122 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %paragraph_dir147 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %122, i32 0, i32 29
  %123 = load i32, i32* %paragraph_dir147, align 4
  %cmp148 = icmp eq i32 %123, 0
  br label %land.end.150

land.end.150:                                     ; preds = %land.rhs.146, %land.lhs.true.143, %do.cond
  %124 = phi i1 [ false, %land.lhs.true.143 ], [ false, %do.cond ], [ %cmp148, %land.rhs.146 ]
  br i1 %124, label %do.body, label %do.end.151

do.end.151:                                       ; preds = %land.end.150
  br label %if.end.153

if.else.152:                                      ; preds = %if.else.26
  call void @emacs_abort() #4
  unreachable

if.end.153:                                       ; preds = %do.end.151
  br label %if.end.154

if.end.154:                                       ; preds = %if.end.153, %if.then.21
  br label %if.end.155

if.end.155:                                       ; preds = %if.end.154, %if.then.18
  %125 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %paragraph_dir156 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %125, i32 0, i32 29
  %126 = load i32, i32* %paragraph_dir156, align 4
  %cmp157 = icmp ne i32 %126, 1
  br i1 %cmp157, label %land.lhs.true.159, label %if.end.165

land.lhs.true.159:                                ; preds = %if.end.155
  %127 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %paragraph_dir160 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %127, i32 0, i32 29
  %128 = load i32, i32* %paragraph_dir160, align 4
  %cmp161 = icmp ne i32 %128, 2
  br i1 %cmp161, label %if.then.163, label %if.end.165

if.then.163:                                      ; preds = %land.lhs.true.159
  %129 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %paragraph_dir164 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %129, i32 0, i32 29
  store i32 1, i32* %paragraph_dir164, align 4
  br label %if.end.165

if.end.165:                                       ; preds = %if.then.163, %land.lhs.true.159, %if.end.155
  %130 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %paragraph_dir166 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %130, i32 0, i32 29
  %131 = load i32, i32* %paragraph_dir166, align 4
  %cmp167 = icmp eq i32 %131, 2
  br i1 %cmp167, label %if.then.169, label %if.else.170

if.then.169:                                      ; preds = %if.end.165
  %132 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %level_stack = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %132, i32 0, i32 26
  %arrayidx = getelementptr inbounds [128 x %struct.bidi_stack], [128 x %struct.bidi_stack]* %level_stack, i32 0, i64 0
  %level = getelementptr inbounds %struct.bidi_stack, %struct.bidi_stack* %arrayidx, i32 0, i32 2
  store i8 1, i8* %level, align 1
  br label %if.end.174

if.else.170:                                      ; preds = %if.end.165
  %133 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %level_stack171 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %133, i32 0, i32 26
  %arrayidx172 = getelementptr inbounds [128 x %struct.bidi_stack], [128 x %struct.bidi_stack]* %level_stack171, i32 0, i64 0
  %level173 = getelementptr inbounds %struct.bidi_stack, %struct.bidi_stack* %arrayidx172, i32 0, i32 2
  store i8 0, i8* %level173, align 1
  br label %if.end.174

if.end.174:                                       ; preds = %if.else.170, %if.then.169
  %134 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  call void @bidi_line_init(%struct.bidi_it* %134)
  br label %return

return:                                           ; preds = %if.end.174, %if.then.38
  ret void
}

declare zeroext i1 @STRINGP(i64) #2

declare i8* @SDATA(i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @bidi_char_at_pos(i64 %bytepos, i8* %s, i1 zeroext %unibyte) #0 {
entry:
  %retval = alloca i32, align 4
  %bytepos.addr = alloca i64, align 8
  %s.addr = alloca i8*, align 8
  %unibyte.addr = alloca i8, align 1
  store i64 %bytepos, i64* %bytepos.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  %frombool = zext i1 %unibyte to i8
  store i8 %frombool, i8* %unibyte.addr, align 1
  %0 = load i8*, i8** %s.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %bytepos.addr, align 8
  %2 = load i8*, i8** %s.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %1
  store i8* %add.ptr, i8** %s.addr, align 8
  %3 = load i8, i8* %unibyte.addr, align 1
  %tobool1 = trunc i8 %3 to i1
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %4 = load i8*, i8** %s.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv = zext i8 %5 to i32
  store i32 %conv, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.8

if.else:                                          ; preds = %entry
  %6 = load i64, i64* %bytepos.addr, align 8
  %7 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %7, i32 0, i32 73
  %8 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %gpt_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %8, i32 0, i32 3
  %9 = load i64, i64* %gpt_byte, align 8
  %cmp = icmp sge i64 %6, %9
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %10 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text4 = getelementptr inbounds %struct.buffer, %struct.buffer* %10, i32 0, i32 73
  %11 = load %struct.buffer_text*, %struct.buffer_text** %text4, align 8
  %gap_size = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %11, i32 0, i32 5
  %12 = load i64, i64* %gap_size, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.else
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %12, %cond.true ], [ 0, %cond.false ]
  %13 = load i64, i64* %bytepos.addr, align 8
  %add = add nsw i64 %cond, %13
  %14 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text5 = getelementptr inbounds %struct.buffer, %struct.buffer* %14, i32 0, i32 73
  %15 = load %struct.buffer_text*, %struct.buffer_text** %text5, align 8
  %beg = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %15, i32 0, i32 0
  %16 = load i8*, i8** %beg, align 8
  %add.ptr6 = getelementptr inbounds i8, i8* %16, i64 %add
  %add.ptr7 = getelementptr inbounds i8, i8* %add.ptr6, i64 -1
  store i8* %add.ptr7, i8** %s.addr, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %cond.end, %if.end
  %17 = load i8*, i8** %s.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %17, i64 0
  %18 = load i8, i8* %arrayidx, align 1
  %conv9 = zext i8 %18 to i32
  %and = and i32 %conv9, 128
  %tobool10 = icmp ne i32 %and, 0
  br i1 %tobool10, label %cond.false.14, label %cond.true.11

cond.true.11:                                     ; preds = %if.end.8
  %19 = load i8*, i8** %s.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %19, i64 0
  %20 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %20 to i32
  br label %cond.end.56

cond.false.14:                                    ; preds = %if.end.8
  %21 = load i8*, i8** %s.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %21, i64 0
  %22 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %22 to i32
  %and17 = and i32 %conv16, 32
  %tobool18 = icmp ne i32 %and17, 0
  br i1 %tobool18, label %cond.false.32, label %cond.true.19

cond.true.19:                                     ; preds = %cond.false.14
  %23 = load i8*, i8** %s.addr, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %23, i64 0
  %24 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %24 to i32
  %and22 = and i32 %conv21, 31
  %shl = shl i32 %and22, 6
  %25 = load i8*, i8** %s.addr, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %25, i64 1
  %26 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %26 to i32
  %and25 = and i32 %conv24, 63
  %or = or i32 %shl, %and25
  %27 = load i8*, i8** %s.addr, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %27, i64 0
  %28 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %28 to i32
  %cmp28 = icmp slt i32 %conv27, 194
  %cond30 = select i1 %cmp28, i32 4194176, i32 0
  %add31 = add nsw i32 %or, %cond30
  br label %cond.end.54

cond.false.32:                                    ; preds = %cond.false.14
  %29 = load i8*, i8** %s.addr, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %29, i64 0
  %30 = load i8, i8* %arrayidx33, align 1
  %conv34 = zext i8 %30 to i32
  %and35 = and i32 %conv34, 16
  %tobool36 = icmp ne i32 %and35, 0
  br i1 %tobool36, label %cond.false.51, label %cond.true.37

cond.true.37:                                     ; preds = %cond.false.32
  %31 = load i8*, i8** %s.addr, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %31, i64 0
  %32 = load i8, i8* %arrayidx38, align 1
  %conv39 = zext i8 %32 to i32
  %and40 = and i32 %conv39, 15
  %shl41 = shl i32 %and40, 12
  %33 = load i8*, i8** %s.addr, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %33, i64 1
  %34 = load i8, i8* %arrayidx42, align 1
  %conv43 = zext i8 %34 to i32
  %and44 = and i32 %conv43, 63
  %shl45 = shl i32 %and44, 6
  %or46 = or i32 %shl41, %shl45
  %35 = load i8*, i8** %s.addr, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %35, i64 2
  %36 = load i8, i8* %arrayidx47, align 1
  %conv48 = zext i8 %36 to i32
  %and49 = and i32 %conv48, 63
  %or50 = or i32 %or46, %and49
  br label %cond.end.52

cond.false.51:                                    ; preds = %cond.false.32
  %37 = load i8*, i8** %s.addr, align 8
  %call = call i32 @string_char(i8* %37, i8** null, i32* null)
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.51, %cond.true.37
  %cond53 = phi i32 [ %or50, %cond.true.37 ], [ %call, %cond.false.51 ]
  br label %cond.end.54

cond.end.54:                                      ; preds = %cond.end.52, %cond.true.19
  %cond55 = phi i32 [ %add31, %cond.true.19 ], [ %cond53, %cond.end.52 ]
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.end.54, %cond.true.11
  %cond57 = phi i32 [ %conv13, %cond.true.11 ], [ %cond55, %cond.end.54 ]
  store i32 %cond57, i32* %retval
  br label %return

return:                                           ; preds = %cond.end.56, %if.then.2
  %38 = load i32, i32* %retval
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define internal i64 @bidi_find_paragraph_start(i64 %pos, i64 %pos_byte) #0 {
entry:
  %pos.addr = alloca i64, align 8
  %pos_byte.addr = alloca i64, align 8
  %re = alloca i64, align 8
  %limit = alloca i64, align 8
  %limit_byte = alloca i64, align 8
  %bpc = alloca %struct.region_cache*, align 8
  %n = alloca i64, align 8
  %oldpos = alloca i64, align 8
  %next = alloca i64, align 8
  %cache_buffer = alloca %struct.buffer*, align 8
  %chp = alloca i8*, align 8
  store i64 %pos, i64* %pos.addr, align 8
  store i64 %pos_byte, i64* %pos_byte.addr, align 8
  %0 = load i64, i64* @paragraph_start_re, align 8
  store i64 %0, i64* %re, align 8
  %1 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 79
  %2 = load i64, i64* %zv, align 8
  store i64 %2, i64* %limit, align 8
  %3 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %3, i32 0, i32 80
  %4 = load i64, i64* %zv_byte, align 8
  store i64 %4, i64* %limit_byte, align 8
  %call = call %struct.region_cache* @bidi_paragraph_cache_on_off()
  store %struct.region_cache* %call, %struct.region_cache** %bpc, align 8
  store i64 0, i64* %n, align 8
  %5 = load i64, i64* %pos.addr, align 8
  store i64 %5, i64* %oldpos, align 8
  %6 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  store %struct.buffer* %6, %struct.buffer** %cache_buffer, align 8
  %7 = load %struct.buffer*, %struct.buffer** %cache_buffer, align 8
  %base_buffer = getelementptr inbounds %struct.buffer, %struct.buffer* %7, i32 0, i32 81
  %8 = load %struct.buffer*, %struct.buffer** %base_buffer, align 8
  %tobool = icmp ne %struct.buffer* %8, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.buffer*, %struct.buffer** %cache_buffer, align 8
  %base_buffer1 = getelementptr inbounds %struct.buffer, %struct.buffer* %9, i32 0, i32 81
  %10 = load %struct.buffer*, %struct.buffer** %base_buffer1, align 8
  store %struct.buffer* %10, %struct.buffer** %cache_buffer, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.39, %if.end
  %11 = load i64, i64* %pos_byte.addr, align 8
  %12 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %12, i32 0, i32 78
  %13 = load i64, i64* %begv_byte, align 8
  %cmp = icmp sgt i64 %11, %13
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %14 = load i64, i64* %n, align 8
  %inc = add nsw i64 %14, 1
  store i64 %inc, i64* %n, align 8
  %cmp2 = icmp slt i64 %14, 7500
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %15 = load i64, i64* %re, align 8
  %16 = load i64, i64* %pos.addr, align 8
  %17 = load i64, i64* %pos_byte.addr, align 8
  %18 = load i64, i64* %limit, align 8
  %19 = load i64, i64* %limit_byte, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %call4 = call i64 @fast_looking_at(i64 %15, i64 %16, i64 %17, i64 %18, i64 %19, i64 %call3)
  %cmp5 = icmp slt i64 %call4, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %20 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp5, %land.rhs ]
  br i1 %20, label %while.body, label %while.end.40

while.body:                                       ; preds = %land.end
  br label %do.body

do.body:                                          ; preds = %while.body
  %21 = load i64, i64* %pos.addr, align 8
  %dec = add nsw i64 %21, -1
  store i64 %dec, i64* %pos.addr, align 8
  %22 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_ = getelementptr inbounds %struct.buffer, %struct.buffer* %22, i32 0, i32 39
  %23 = load i64, i64* %enable_multibyte_characters_, align 8
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp7 = icmp eq i64 %23, %call6
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body
  %24 = load i64, i64* %pos_byte.addr, align 8
  %dec9 = add nsw i64 %24, -1
  store i64 %dec9, i64* %pos_byte.addr, align 8
  br label %if.end.29

if.else:                                          ; preds = %do.body
  br label %do.body.10

do.body.10:                                       ; preds = %if.else
  %25 = load i64, i64* %pos_byte.addr, align 8
  %dec11 = add nsw i64 %25, -1
  store i64 %dec11, i64* %pos_byte.addr, align 8
  %26 = load i64, i64* %pos_byte.addr, align 8
  %27 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %27, i32 0, i32 73
  %28 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %gpt_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %28, i32 0, i32 3
  %29 = load i64, i64* %gpt_byte, align 8
  %cmp12 = icmp slt i64 %26, %29
  br i1 %cmp12, label %if.then.13, label %if.else.16

if.then.13:                                       ; preds = %do.body.10
  %30 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text14 = getelementptr inbounds %struct.buffer, %struct.buffer* %30, i32 0, i32 73
  %31 = load %struct.buffer_text*, %struct.buffer_text** %text14, align 8
  %beg = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %31, i32 0, i32 0
  %32 = load i8*, i8** %beg, align 8
  %33 = load i64, i64* %pos_byte.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %32, i64 %33
  %add.ptr15 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  store i8* %add.ptr15, i8** %chp, align 8
  br label %if.end.23

if.else.16:                                       ; preds = %do.body.10
  %34 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text17 = getelementptr inbounds %struct.buffer, %struct.buffer* %34, i32 0, i32 73
  %35 = load %struct.buffer_text*, %struct.buffer_text** %text17, align 8
  %beg18 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %35, i32 0, i32 0
  %36 = load i8*, i8** %beg18, align 8
  %37 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text19 = getelementptr inbounds %struct.buffer, %struct.buffer* %37, i32 0, i32 73
  %38 = load %struct.buffer_text*, %struct.buffer_text** %text19, align 8
  %gap_size = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %38, i32 0, i32 5
  %39 = load i64, i64* %gap_size, align 8
  %add.ptr20 = getelementptr inbounds i8, i8* %36, i64 %39
  %40 = load i64, i64* %pos_byte.addr, align 8
  %add.ptr21 = getelementptr inbounds i8, i8* %add.ptr20, i64 %40
  %add.ptr22 = getelementptr inbounds i8, i8* %add.ptr21, i64 -1
  store i8* %add.ptr22, i8** %chp, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.16, %if.then.13
  br label %while.cond.24

while.cond.24:                                    ; preds = %while.body.27, %if.end.23
  %41 = load i8*, i8** %chp, align 8
  %42 = load i8, i8* %41, align 1
  %conv = zext i8 %42 to i32
  %and = and i32 %conv, 192
  %cmp25 = icmp ne i32 %and, 128
  %lnot = xor i1 %cmp25, true
  br i1 %lnot, label %while.body.27, label %while.end

while.body.27:                                    ; preds = %while.cond.24
  %43 = load i8*, i8** %chp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %43, i32 -1
  store i8* %incdec.ptr, i8** %chp, align 8
  %44 = load i64, i64* %pos_byte.addr, align 8
  %dec28 = add nsw i64 %44, -1
  store i64 %dec28, i64* %pos_byte.addr, align 8
  br label %while.cond.24

while.end:                                        ; preds = %while.cond.24
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end.29

if.end.29:                                        ; preds = %do.end, %if.then.8
  br label %do.end.30

do.end.30:                                        ; preds = %if.end.29
  %45 = load %struct.region_cache*, %struct.region_cache** %bpc, align 8
  %tobool31 = icmp ne %struct.region_cache* %45, null
  br i1 %tobool31, label %land.lhs.true.32, label %if.else.37

land.lhs.true.32:                                 ; preds = %do.end.30
  %46 = load %struct.buffer*, %struct.buffer** %cache_buffer, align 8
  %47 = load %struct.region_cache*, %struct.region_cache** %bpc, align 8
  %48 = load i64, i64* %pos.addr, align 8
  %call33 = call i32 @region_cache_backward(%struct.buffer* %46, %struct.region_cache* %47, i64 %48, i64* %next)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then.35, label %if.else.37

if.then.35:                                       ; preds = %land.lhs.true.32
  %49 = load i64, i64* %next, align 8
  store i64 %49, i64* %pos.addr, align 8
  %50 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %51 = load i64, i64* %pos.addr, align 8
  %call36 = call i64 @buf_charpos_to_bytepos(%struct.buffer* %50, i64 %51)
  store i64 %call36, i64* %pos_byte.addr, align 8
  br label %while.end.40

if.else.37:                                       ; preds = %land.lhs.true.32, %do.end.30
  %52 = load i64, i64* %pos.addr, align 8
  %53 = load i64, i64* %pos_byte.addr, align 8
  %call38 = call i64 @find_newline_no_quit(i64 %52, i64 %53, i64 -1, i64* %pos_byte.addr)
  store i64 %call38, i64* %pos.addr, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.37
  br label %while.cond

while.end.40:                                     ; preds = %if.then.35, %land.end
  %54 = load i64, i64* %n, align 8
  %cmp41 = icmp sge i64 %54, 7500
  br i1 %cmp41, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %while.end.40
  %55 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %55, i32 0, i32 77
  %56 = load i64, i64* %begv, align 8
  store i64 %56, i64* %pos.addr, align 8
  %57 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte44 = getelementptr inbounds %struct.buffer, %struct.buffer* %57, i32 0, i32 78
  %58 = load i64, i64* %begv_byte44, align 8
  store i64 %58, i64* %pos_byte.addr, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %while.end.40
  %59 = load %struct.region_cache*, %struct.region_cache** %bpc, align 8
  %tobool46 = icmp ne %struct.region_cache* %59, null
  br i1 %tobool46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.end.45
  %60 = load %struct.buffer*, %struct.buffer** %cache_buffer, align 8
  %61 = load %struct.region_cache*, %struct.region_cache** %bpc, align 8
  %62 = load i64, i64* %pos.addr, align 8
  %63 = load i64, i64* %oldpos, align 8
  call void @know_region_cache(%struct.buffer* %60, %struct.region_cache* %61, i64 %62, i64 %63)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %if.end.45
  %64 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte49 = getelementptr inbounds %struct.buffer, %struct.buffer* %64, i32 0, i32 78
  %65 = load i64, i64* %begv_byte49, align 8
  %66 = load i64, i64* %pos_byte.addr, align 8
  %67 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte50 = getelementptr inbounds %struct.buffer, %struct.buffer* %67, i32 0, i32 80
  %68 = load i64, i64* %zv_byte50, align 8
  %call51 = call i64 @clip_to_bounds(i64 %65, i64 %66, i64 %68)
  store i64 %call51, i64* %pos_byte.addr, align 8
  %69 = load i64, i64* %pos_byte.addr, align 8
  ret i64 %69
}

declare i64 @buf_bytepos_to_charpos(%struct.buffer*, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @find_first_strong_char(i64 %pos, i64 %bytepos, i64 %end, i64* %disp_pos, i32* %disp_prop, %struct.bidi_string_data* %string, %struct.window* %w, i1 zeroext %string_p, i1 zeroext %frame_window_p, i64* %ch_len, i64* %nchars, i1 zeroext %stop_at_pdi) #0 {
entry:
  %pos.addr = alloca i64, align 8
  %bytepos.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %disp_pos.addr = alloca i64*, align 8
  %disp_prop.addr = alloca i32*, align 8
  %string.addr = alloca %struct.bidi_string_data*, align 8
  %w.addr = alloca %struct.window*, align 8
  %string_p.addr = alloca i8, align 1
  %frame_window_p.addr = alloca i8, align 1
  %ch_len.addr = alloca i64*, align 8
  %nchars.addr = alloca i64*, align 8
  %stop_at_pdi.addr = alloca i8, align 1
  %pos1 = alloca i64, align 8
  %type = alloca i32, align 4
  %ch = alloca i32, align 4
  store i64 %pos, i64* %pos.addr, align 8
  store i64 %bytepos, i64* %bytepos.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  store i64* %disp_pos, i64** %disp_pos.addr, align 8
  store i32* %disp_prop, i32** %disp_prop.addr, align 8
  store %struct.bidi_string_data* %string, %struct.bidi_string_data** %string.addr, align 8
  store %struct.window* %w, %struct.window** %w.addr, align 8
  %frombool = zext i1 %string_p to i8
  store i8 %frombool, i8* %string_p.addr, align 1
  %frombool1 = zext i1 %frame_window_p to i8
  store i8 %frombool1, i8* %frame_window_p.addr, align 1
  store i64* %ch_len, i64** %ch_len.addr, align 8
  store i64* %nchars, i64** %nchars.addr, align 8
  %frombool2 = zext i1 %stop_at_pdi to i8
  store i8 %frombool2, i8* %stop_at_pdi.addr, align 1
  %0 = load i8, i8* %stop_at_pdi.addr, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64*, i64** %nchars.addr, align 8
  %2 = load i64, i64* %1, align 8
  %3 = load i64, i64* %pos.addr, align 8
  %add = add nsw i64 %3, %2
  store i64 %add, i64* %pos.addr, align 8
  %4 = load i64*, i64** %ch_len.addr, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* %bytepos.addr, align 8
  %add3 = add nsw i64 %6, %5
  store i64 %add3, i64* %bytepos.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i64, i64* %pos.addr, align 8
  %8 = load i64, i64* %bytepos.addr, align 8
  %9 = load i64*, i64** %disp_pos.addr, align 8
  %10 = load i32*, i32** %disp_prop.addr, align 8
  %11 = load %struct.bidi_string_data*, %struct.bidi_string_data** %string.addr, align 8
  %12 = load %struct.window*, %struct.window** %w.addr, align 8
  %13 = load i8, i8* %frame_window_p.addr, align 1
  %tobool4 = trunc i8 %13 to i1
  %14 = load i64*, i64** %ch_len.addr, align 8
  %15 = load i64*, i64** %nchars.addr, align 8
  %call = call i32 @bidi_fetch_char_skip_isolates(i64 %7, i64 %8, i64* %9, i32* %10, %struct.bidi_string_data* %11, %struct.window* %12, i1 zeroext %tobool4, i64* %14, i64* %15)
  store i32 %call, i32* %ch, align 4
  %16 = load i32, i32* %ch, align 4
  %call5 = call i32 @bidi_get_type(i32 %16, i32 0)
  store i32 %call5, i32* %type, align 4
  %17 = load i64, i64* %pos.addr, align 8
  store i64 %17, i64* %pos1, align 8
  %18 = load i64*, i64** %nchars.addr, align 8
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %pos.addr, align 8
  %add6 = add nsw i64 %20, %19
  store i64 %add6, i64* %pos.addr, align 8
  %21 = load i64*, i64** %ch_len.addr, align 8
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %bytepos.addr, align 8
  %add7 = add nsw i64 %23, %22
  store i64 %add7, i64* %bytepos.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %24 = load i32, i32* %type, align 4
  %call8 = call i32 @bidi_get_category(i32 %24)
  %cmp = icmp ne i32 %call8, 3
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %for.cond
  %25 = load i8, i8* %stop_at_pdi.addr, align 1
  %tobool9 = trunc i8 %25 to i1
  br i1 %tobool9, label %land.lhs.true.10, label %land.rhs

land.lhs.true.10:                                 ; preds = %land.lhs.true
  %26 = load i32, i32* %type, align 4
  %cmp11 = icmp eq i32 %26, 16
  br i1 %cmp11, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true.10, %land.lhs.true
  %27 = load i64, i64* %pos.addr, align 8
  %28 = load i64, i64* %pos1, align 8
  %sub = sub nsw i64 %27, %28
  %cmp12 = icmp slt i64 %sub, 100000
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.10, %for.cond
  %29 = phi i1 [ false, %land.lhs.true.10 ], [ false, %for.cond ], [ %cmp12, %land.rhs ]
  br i1 %29, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %30 = load i64, i64* %pos.addr, align 8
  %31 = load i64, i64* %end.addr, align 8
  %cmp13 = icmp sge i64 %30, %31
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %for.body
  store i32 6, i32* %type, align 4
  br label %for.end

if.end.15:                                        ; preds = %for.body
  %32 = load i8, i8* %string_p.addr, align 1
  %tobool16 = trunc i8 %32 to i1
  br i1 %tobool16, label %if.end.23, label %land.lhs.true.17

land.lhs.true.17:                                 ; preds = %if.end.15
  %33 = load i32, i32* %type, align 4
  %cmp18 = icmp eq i32 %33, 6
  br i1 %cmp18, label %land.lhs.true.19, label %if.end.23

land.lhs.true.19:                                 ; preds = %land.lhs.true.17
  %34 = load i64, i64* %pos.addr, align 8
  %35 = load i64, i64* %bytepos.addr, align 8
  %call20 = call i64 @bidi_at_paragraph_end(i64 %34, i64 %35)
  %cmp21 = icmp sge i64 %call20, -1
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %land.lhs.true.19
  br label %for.end

if.end.23:                                        ; preds = %land.lhs.true.19, %land.lhs.true.17, %if.end.15
  %36 = load i64, i64* %pos.addr, align 8
  %37 = load i64, i64* %bytepos.addr, align 8
  %38 = load i64*, i64** %disp_pos.addr, align 8
  %39 = load i32*, i32** %disp_prop.addr, align 8
  %40 = load %struct.bidi_string_data*, %struct.bidi_string_data** %string.addr, align 8
  %41 = load %struct.window*, %struct.window** %w.addr, align 8
  %42 = load i8, i8* %frame_window_p.addr, align 1
  %tobool24 = trunc i8 %42 to i1
  %43 = load i64*, i64** %ch_len.addr, align 8
  %44 = load i64*, i64** %nchars.addr, align 8
  %call25 = call i32 @bidi_fetch_char_skip_isolates(i64 %36, i64 %37, i64* %38, i32* %39, %struct.bidi_string_data* %40, %struct.window* %41, i1 zeroext %tobool24, i64* %43, i64* %44)
  store i32 %call25, i32* %ch, align 4
  %45 = load i64*, i64** %nchars.addr, align 8
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %pos.addr, align 8
  %add26 = add nsw i64 %47, %46
  store i64 %add26, i64* %pos.addr, align 8
  %48 = load i64*, i64** %ch_len.addr, align 8
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %bytepos.addr, align 8
  %add27 = add nsw i64 %50, %49
  store i64 %add27, i64* %bytepos.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %51 = load i32, i32* %ch, align 4
  %call28 = call i32 @bidi_get_type(i32 %51, i32 0)
  store i32 %call28, i32* %type, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.22, %if.then.14, %land.end
  %52 = load i32, i32* %type, align 4
  ret i32 %52
}

declare i64 @builtin_lisp_symbol(i32) #2

; Function Attrs: nounwind uwtable
define internal void @bidi_line_init(%struct.bidi_it* %bidi_it) #0 {
entry:
  %bidi_it.addr = alloca %struct.bidi_it*, align 8
  store %struct.bidi_it* %bidi_it, %struct.bidi_it** %bidi_it.addr, align 8
  %0 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %scan_dir = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %0, i32 0, i32 22
  store i32 1, i32* %scan_dir, align 4
  %1 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %stack_idx = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %1, i32 0, i32 25
  store i32 0, i32* %stack_idx, align 4
  %2 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %level_stack = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %2, i32 0, i32 26
  %arrayidx = getelementptr inbounds [128 x %struct.bidi_stack], [128 x %struct.bidi_stack]* %level_stack, i32 0, i64 0
  %level = getelementptr inbounds %struct.bidi_stack, %struct.bidi_stack* %arrayidx, i32 0, i32 2
  %3 = load i8, i8* %level, align 1
  %4 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %resolved_level = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %4, i32 0, i32 8
  store i8 %3, i8* %resolved_level, align 1
  %5 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %level_stack1 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %5, i32 0, i32 26
  %arrayidx2 = getelementptr inbounds [128 x %struct.bidi_stack], [128 x %struct.bidi_stack]* %level_stack1, i32 0, i64 0
  %flags = getelementptr inbounds %struct.bidi_stack, %struct.bidi_stack* %arrayidx2, i32 0, i32 3
  store i8 0, i8* %flags, align 1
  %6 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %invalid_levels = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %6, i32 0, i32 10
  store i64 0, i64* %invalid_levels, align 8
  %7 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %isolate_level = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %7, i32 0, i32 9
  store i8 0, i8* %isolate_level, align 1
  %8 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %invalid_isolates = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %8, i32 0, i32 11
  store i64 0, i64* %invalid_isolates, align 8
  %9 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %next_en_pos = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %9, i32 0, i32 19
  store i64 0, i64* %next_en_pos, align 8
  %10 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %next_en_type = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %10, i32 0, i32 20
  store i32 0, i32* %next_en_type, align 4
  %11 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %next_for_ws = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %11, i32 0, i32 16
  %charpos = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %next_for_ws, i32 0, i32 0
  store i64 -1, i64* %charpos, align 8
  %12 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %next_for_ws3 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %12, i32 0, i32 16
  %type = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %next_for_ws3, i32 0, i32 1
  store i32 0, i32* %type, align 4
  %13 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %bracket_pairing_pos = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %13, i32 0, i32 17
  store i64 -1, i64* %bracket_pairing_pos, align 8
  %14 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %15 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %paragraph_dir = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %15, i32 0, i32 29
  %16 = load i32, i32* %paragraph_dir, align 4
  %cmp = icmp eq i32 %16, 2
  %cond = select i1 %cmp, i32 1, i32 0
  %17 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %level_stack4 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %17, i32 0, i32 26
  %arrayidx5 = getelementptr inbounds [128 x %struct.bidi_stack], [128 x %struct.bidi_stack]* %level_stack4, i32 0, i64 0
  %level6 = getelementptr inbounds %struct.bidi_stack, %struct.bidi_stack* %arrayidx5, i32 0, i32 2
  %18 = load i8, i8* %level6, align 1
  %conv = zext i8 %18 to i32
  call void @bidi_set_sos_type(%struct.bidi_it* %14, i32 %cond, i32 %conv)
  call void @bidi_cache_reset()
  ret void
}

; Function Attrs: nounwind uwtable
define void @bidi_move_to_visually_next(%struct.bidi_it* %bidi_it) #0 {
entry:
  %bidi_it.addr = alloca %struct.bidi_it*, align 8
  %old_level = alloca i32, align 4
  %new_level = alloca i32, align 4
  %next_level = alloca i32, align 4
  %sentinel = alloca %struct.bidi_it, align 8
  %ascending = alloca i8, align 1
  %level_to_search = alloca i32, align 4
  %incr = alloca i32, align 4
  %expected_next_level = alloca i32, align 4
  %sep_len = alloca i64, align 8
  store %struct.bidi_it* %bidi_it, %struct.bidi_it** %bidi_it.addr, align 8
  %0 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %charpos = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %0, i32 0, i32 1
  %1 = load i64, i64* %charpos, align 8
  %cmp = icmp slt i64 %1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %bytepos = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %2, i32 0, i32 0
  %3 = load i64, i64* %bytepos, align 8
  %cmp1 = icmp slt i64 %3, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @emacs_abort() #4
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %scan_dir = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %4, i32 0, i32 22
  %5 = load i32, i32* %scan_dir, align 4
  %cmp2 = icmp eq i32 %5, 0
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %6 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %scan_dir4 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %6, i32 0, i32 22
  store i32 1, i32* %scan_dir4, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %7 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %first_elt = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %7, i32 0, i32 31
  %bf.load = load i8, i8* %first_elt, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %if.end.11, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.5
  %8 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %ch = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %8, i32 0, i32 2
  %9 = load i32, i32* %ch, align 4
  %cmp6 = icmp eq i32 %9, 10
  br i1 %cmp6, label %if.then.10, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %land.lhs.true
  %10 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %ch8 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %10, i32 0, i32 2
  %11 = load i32, i32* %ch8, align 4
  %cmp9 = icmp eq i32 %11, -1
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %lor.lhs.false.7, %land.lhs.true
  %12 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  call void @bidi_line_init(%struct.bidi_it* %12)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %lor.lhs.false.7, %if.end.5
  %13 = load i64, i64* @bidi_cache_idx, align 8
  %14 = load i64, i64* @bidi_cache_start, align 8
  %cmp12 = icmp eq i64 %13, %14
  br i1 %cmp12, label %if.then.13, label %if.end.24

if.then.13:                                       ; preds = %if.end.11
  %15 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  call void @bidi_copy_it(%struct.bidi_it* %sentinel, %struct.bidi_it* %15)
  %16 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %first_elt14 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %16, i32 0, i32 31
  %bf.load15 = load i8, i8* %first_elt14, align 8
  %bf.clear16 = and i8 %bf.load15, 1
  %bf.cast17 = trunc i8 %bf.clear16 to i1
  br i1 %bf.cast17, label %if.then.18, label %if.end.23

if.then.18:                                       ; preds = %if.then.13
  %charpos19 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %sentinel, i32 0, i32 1
  %17 = load i64, i64* %charpos19, align 8
  %dec = add nsw i64 %17, -1
  store i64 %dec, i64* %charpos19, align 8
  %bytepos20 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %sentinel, i32 0, i32 0
  %18 = load i64, i64* %bytepos20, align 8
  %dec21 = add nsw i64 %18, -1
  store i64 %dec21, i64* %bytepos20, align 8
  %ch22 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %sentinel, i32 0, i32 2
  store i32 10, i32* %ch22, align 4
  %ch_len = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %sentinel, i32 0, i32 4
  store i64 1, i64* %ch_len, align 8
  %nchars = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %sentinel, i32 0, i32 3
  store i64 1, i64* %nchars, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.18, %if.then.13
  %call = call i32 @bidi_cache_iterator_state(%struct.bidi_it* %sentinel, i1 zeroext true, i1 zeroext false)
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.end.11
  %19 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %resolved_level = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %19, i32 0, i32 8
  %20 = load i8, i8* %resolved_level, align 1
  %conv = sext i8 %20 to i32
  store i32 %conv, i32* %old_level, align 4
  %21 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %call25 = call i32 @bidi_level_of_next_char(%struct.bidi_it* %21)
  store i32 %call25, i32* %new_level, align 4
  %22 = load i32, i32* %new_level, align 4
  %23 = load i32, i32* %old_level, align 4
  %cmp26 = icmp ne i32 %22, %23
  br i1 %cmp26, label %if.then.28, label %if.end.51

if.then.28:                                       ; preds = %if.end.24
  %24 = load i32, i32* %new_level, align 4
  %25 = load i32, i32* %old_level, align 4
  %cmp29 = icmp sgt i32 %24, %25
  %frombool = zext i1 %cmp29 to i8
  store i8 %frombool, i8* %ascending, align 1
  %26 = load i8, i8* %ascending, align 1
  %tobool = trunc i8 %26 to i1
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.28
  %27 = load i32, i32* %old_level, align 4
  %add = add nsw i32 %27, 1
  br label %cond.end

cond.false:                                       ; preds = %if.then.28
  %28 = load i32, i32* %old_level, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %28, %cond.false ]
  store i32 %cond, i32* %level_to_search, align 4
  %29 = load i8, i8* %ascending, align 1
  %tobool32 = trunc i8 %29 to i1
  %cond34 = select i1 %tobool32, i32 1, i32 -1
  store i32 %cond34, i32* %incr, align 4
  %30 = load i32, i32* %old_level, align 4
  %31 = load i32, i32* %incr, align 4
  %add35 = add nsw i32 %30, %31
  store i32 %add35, i32* %expected_next_level, align 4
  %32 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %33 = load i32, i32* %level_to_search, align 4
  %34 = load i8, i8* %ascending, align 1
  %tobool36 = trunc i8 %34 to i1
  %lnot = xor i1 %tobool36, true
  call void @bidi_find_other_level_edge(%struct.bidi_it* %32, i32 %33, i1 zeroext %lnot)
  %35 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %scan_dir37 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %35, i32 0, i32 22
  %36 = load i32, i32* %scan_dir37, align 4
  %sub = sub nsw i32 0, %36
  %37 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %scan_dir38 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %37, i32 0, i32 22
  store i32 %sub, i32* %scan_dir38, align 4
  %38 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %call39 = call i32 @bidi_peek_at_next_level(%struct.bidi_it* %38)
  store i32 %call39, i32* %next_level, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end
  %39 = load i32, i32* %next_level, align 4
  %40 = load i32, i32* %expected_next_level, align 4
  %cmp40 = icmp ne i32 %39, %40
  br i1 %cmp40, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %41 = load i32, i32* %incr, align 4
  %42 = load i32, i32* %expected_next_level, align 4
  %add42 = add nsw i32 %42, %41
  store i32 %add42, i32* %expected_next_level, align 4
  %43 = load i32, i32* %incr, align 4
  %44 = load i32, i32* %level_to_search, align 4
  %add43 = add nsw i32 %44, %43
  store i32 %add43, i32* %level_to_search, align 4
  %45 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %46 = load i32, i32* %level_to_search, align 4
  %47 = load i8, i8* %ascending, align 1
  %tobool44 = trunc i8 %47 to i1
  %lnot45 = xor i1 %tobool44, true
  call void @bidi_find_other_level_edge(%struct.bidi_it* %45, i32 %46, i1 zeroext %lnot45)
  %48 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %scan_dir46 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %48, i32 0, i32 22
  %49 = load i32, i32* %scan_dir46, align 4
  %sub47 = sub nsw i32 0, %49
  %50 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %scan_dir48 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %50, i32 0, i32 22
  store i32 %sub47, i32* %scan_dir48, align 4
  %51 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %call49 = call i32 @bidi_peek_at_next_level(%struct.bidi_it* %51)
  store i32 %call49, i32* %next_level, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %52 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %call50 = call i32 @bidi_level_of_next_char(%struct.bidi_it* %52)
  store i32 %call50, i32* %next_level, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %while.end, %if.end.24
  %53 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %scan_dir52 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %53, i32 0, i32 22
  %54 = load i32, i32* %scan_dir52, align 4
  %cmp53 = icmp eq i32 %54, 1
  br i1 %cmp53, label %land.lhs.true.55, label %if.end.100

land.lhs.true.55:                                 ; preds = %if.end.51
  %55 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %ch56 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %55, i32 0, i32 2
  %56 = load i32, i32* %ch56, align 4
  %cmp57 = icmp eq i32 %56, 10
  br i1 %cmp57, label %if.then.63, label %lor.lhs.false.59

lor.lhs.false.59:                                 ; preds = %land.lhs.true.55
  %57 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %ch60 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %57, i32 0, i32 2
  %58 = load i32, i32* %ch60, align 4
  %cmp61 = icmp eq i32 %58, -1
  br i1 %cmp61, label %if.then.63, label %if.end.100

if.then.63:                                       ; preds = %lor.lhs.false.59, %land.lhs.true.55
  %59 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %string = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %59, i32 0, i32 27
  %s = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %string, i32 0, i32 1
  %60 = load i8*, i8** %s, align 8
  %tobool64 = icmp ne i8* %60, null
  br i1 %tobool64, label %if.then.69, label %lor.lhs.false.65

lor.lhs.false.65:                                 ; preds = %if.then.63
  %61 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %string66 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %61, i32 0, i32 27
  %lstring = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %string66, i32 0, i32 0
  %62 = load i64, i64* %lstring, align 8
  %call67 = call zeroext i1 @STRINGP(i64 %62)
  br i1 %call67, label %if.then.69, label %if.else

if.then.69:                                       ; preds = %lor.lhs.false.65, %if.then.63
  %63 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %string70 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %63, i32 0, i32 27
  %schars = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %string70, i32 0, i32 2
  %64 = load i64, i64* %schars, align 8
  %65 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %separator_limit = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %65, i32 0, i32 30
  store i64 %64, i64* %separator_limit, align 8
  br label %if.end.99

if.else:                                          ; preds = %lor.lhs.false.65
  %66 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %bytepos71 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %66, i32 0, i32 0
  %67 = load i64, i64* %bytepos71, align 8
  %68 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %68, i32 0, i32 80
  %69 = load i64, i64* %zv_byte, align 8
  %cmp72 = icmp slt i64 %67, %69
  br i1 %cmp72, label %if.then.74, label %if.end.98

if.then.74:                                       ; preds = %if.else
  %70 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %charpos75 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %70, i32 0, i32 1
  %71 = load i64, i64* %charpos75, align 8
  %72 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %nchars76 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %72, i32 0, i32 3
  %73 = load i64, i64* %nchars76, align 8
  %add77 = add nsw i64 %71, %73
  %74 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %bytepos78 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %74, i32 0, i32 0
  %75 = load i64, i64* %bytepos78, align 8
  %76 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %ch_len79 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %76, i32 0, i32 4
  %77 = load i64, i64* %ch_len79, align 8
  %add80 = add nsw i64 %75, %77
  %call81 = call i64 @bidi_at_paragraph_end(i64 %add77, i64 %add80)
  store i64 %call81, i64* %sep_len, align 8
  %78 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %nchars82 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %78, i32 0, i32 3
  %79 = load i64, i64* %nchars82, align 8
  %cmp83 = icmp sle i64 %79, 0
  br i1 %cmp83, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %if.then.74
  call void @emacs_abort() #4
  unreachable

if.end.86:                                        ; preds = %if.then.74
  %80 = load i64, i64* %sep_len, align 8
  %cmp87 = icmp sge i64 %80, 0
  br i1 %cmp87, label %if.then.89, label %if.end.97

if.then.89:                                       ; preds = %if.end.86
  %81 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %new_paragraph = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %81, i32 0, i32 31
  %bf.load90 = load i8, i8* %new_paragraph, align 8
  %bf.clear91 = and i8 %bf.load90, -3
  %bf.set = or i8 %bf.clear91, 2
  store i8 %bf.set, i8* %new_paragraph, align 8
  %82 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %charpos92 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %82, i32 0, i32 1
  %83 = load i64, i64* %charpos92, align 8
  %84 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %nchars93 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %84, i32 0, i32 3
  %85 = load i64, i64* %nchars93, align 8
  %add94 = add nsw i64 %83, %85
  %86 = load i64, i64* %sep_len, align 8
  %add95 = add nsw i64 %add94, %86
  %87 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %separator_limit96 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %87, i32 0, i32 30
  store i64 %add95, i64* %separator_limit96, align 8
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.89, %if.end.86
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %if.else
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %if.then.69
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %lor.lhs.false.59, %if.end.51
  %88 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %scan_dir101 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %88, i32 0, i32 22
  %89 = load i32, i32* %scan_dir101, align 4
  %cmp102 = icmp eq i32 %89, 1
  br i1 %cmp102, label %land.lhs.true.104, label %if.end.150

land.lhs.true.104:                                ; preds = %if.end.100
  %90 = load i64, i64* @bidi_cache_idx, align 8
  %91 = load i64, i64* @bidi_cache_start, align 8
  %cmp105 = icmp sgt i64 %90, %91
  br i1 %cmp105, label %if.then.107, label %if.end.150

if.then.107:                                      ; preds = %land.lhs.true.104
  %92 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %resolved_level108 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %92, i32 0, i32 8
  %93 = load i8, i8* %resolved_level108, align 1
  %conv109 = sext i8 %93 to i32
  %94 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %level_stack = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %94, i32 0, i32 26
  %arrayidx = getelementptr inbounds [128 x %struct.bidi_stack], [128 x %struct.bidi_stack]* %level_stack, i32 0, i64 0
  %level = getelementptr inbounds %struct.bidi_stack, %struct.bidi_stack* %arrayidx, i32 0, i32 2
  %95 = load i8, i8* %level, align 1
  %conv110 = zext i8 %95 to i32
  %cmp111 = icmp eq i32 %conv109, %conv110
  br i1 %cmp111, label %land.lhs.true.113, label %if.else.126

land.lhs.true.113:                                ; preds = %if.then.107
  %96 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %charpos114 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %96, i32 0, i32 1
  %97 = load i64, i64* %charpos114, align 8
  %98 = load i64, i64* @bidi_cache_idx, align 8
  %sub115 = sub nsw i64 %98, 1
  %99 = load %struct.bidi_it*, %struct.bidi_it** @bidi_cache, align 8
  %arrayidx116 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %99, i64 %sub115
  %charpos117 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %arrayidx116, i32 0, i32 1
  %100 = load i64, i64* %charpos117, align 8
  %101 = load i64, i64* @bidi_cache_idx, align 8
  %sub118 = sub nsw i64 %101, 1
  %102 = load %struct.bidi_it*, %struct.bidi_it** @bidi_cache, align 8
  %arrayidx119 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %102, i64 %sub118
  %nchars120 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %arrayidx119, i32 0, i32 3
  %103 = load i64, i64* %nchars120, align 8
  %add121 = add nsw i64 %100, %103
  %sub122 = sub nsw i64 %add121, 1
  %cmp123 = icmp sgt i64 %97, %sub122
  br i1 %cmp123, label %if.then.125, label %if.else.126

if.then.125:                                      ; preds = %land.lhs.true.113
  call void @bidi_cache_reset()
  br label %if.end.149

if.else.126:                                      ; preds = %land.lhs.true.113, %if.then.107
  %104 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %resolved_level127 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %104, i32 0, i32 8
  %105 = load i8, i8* %resolved_level127, align 1
  %conv128 = sext i8 %105 to i32
  %106 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %level_stack129 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %106, i32 0, i32 26
  %arrayidx130 = getelementptr inbounds [128 x %struct.bidi_stack], [128 x %struct.bidi_stack]* %level_stack129, i32 0, i64 0
  %level131 = getelementptr inbounds %struct.bidi_stack, %struct.bidi_stack* %arrayidx130, i32 0, i32 2
  %107 = load i8, i8* %level131, align 1
  %conv132 = zext i8 %107 to i32
  %cmp133 = icmp eq i32 %conv128, %conv132
  br i1 %cmp133, label %land.lhs.true.135, label %if.else.146

land.lhs.true.135:                                ; preds = %if.else.126
  %108 = load i64, i64* @bidi_cache_idx, align 8
  %109 = load i64, i64* @bidi_cache_size, align 8
  %cmp136 = icmp sge i64 %108, %109
  br i1 %cmp136, label %land.lhs.true.138, label %if.else.146

land.lhs.true.138:                                ; preds = %land.lhs.true.135
  %110 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %charpos139 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %110, i32 0, i32 1
  %111 = load i64, i64* %charpos139, align 8
  %112 = load i64, i64* @bidi_cache_idx, align 8
  %sub140 = sub nsw i64 %112, 1
  %113 = load %struct.bidi_it*, %struct.bidi_it** @bidi_cache, align 8
  %arrayidx141 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %113, i64 %sub140
  %charpos142 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %arrayidx141, i32 0, i32 1
  %114 = load i64, i64* %charpos142, align 8
  %cmp143 = icmp eq i64 %111, %114
  br i1 %cmp143, label %if.then.145, label %if.else.146

if.then.145:                                      ; preds = %land.lhs.true.138
  call void @bidi_cache_reset()
  br label %if.end.148

if.else.146:                                      ; preds = %land.lhs.true.138, %land.lhs.true.135, %if.else.126
  %115 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %call147 = call i32 @bidi_cache_iterator_state(%struct.bidi_it* %115, i1 zeroext true, i1 zeroext false)
  br label %if.end.148

if.end.148:                                       ; preds = %if.else.146, %if.then.145
  br label %if.end.149

if.end.149:                                       ; preds = %if.end.148, %if.then.125
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.149, %land.lhs.true.104, %if.end.100
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bidi_copy_it(%struct.bidi_it* %to, %struct.bidi_it* %from) #0 {
entry:
  %to.addr = alloca %struct.bidi_it*, align 8
  %from.addr = alloca %struct.bidi_it*, align 8
  store %struct.bidi_it* %to, %struct.bidi_it** %to.addr, align 8
  store %struct.bidi_it* %from, %struct.bidi_it** %from.addr, align 8
  %0 = load %struct.bidi_it*, %struct.bidi_it** %to.addr, align 8
  %1 = bitcast %struct.bidi_it* %0 to i8*
  %2 = load %struct.bidi_it*, %struct.bidi_it** %from.addr, align 8
  %3 = bitcast %struct.bidi_it* %2 to i8*
  %4 = load %struct.bidi_it*, %struct.bidi_it** %from.addr, align 8
  %stack_idx = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %4, i32 0, i32 25
  %5 = load i32, i32* %stack_idx, align 4
  %conv = sext i32 %5 to i64
  %mul = mul i64 %conv, 16
  %add = add i64 224, %mul
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %3, i64 %add, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @bidi_cache_iterator_state(%struct.bidi_it* %bidi_it, i1 zeroext %resolved, i1 zeroext %update_only) #0 {
entry:
  %retval = alloca i32, align 4
  %bidi_it.addr = alloca %struct.bidi_it*, align 8
  %resolved.addr = alloca i8, align 1
  %update_only.addr = alloca i8, align 1
  %idx = alloca i64, align 8
  store %struct.bidi_it* %bidi_it, %struct.bidi_it** %bidi_it.addr, align 8
  %frombool = zext i1 %resolved to i8
  store i8 %frombool, i8* %resolved.addr, align 1
  %frombool1 = zext i1 %update_only to i8
  store i8 %frombool1, i8* %update_only.addr, align 1
  %0 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %scan_dir = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %0, i32 0, i32 22
  %1 = load i32, i32* %scan_dir, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @emacs_abort() #4
  unreachable

if.end:                                           ; preds = %entry
  %2 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %charpos = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %2, i32 0, i32 1
  %3 = load i64, i64* %charpos, align 8
  %call = call i64 @bidi_cache_search(i64 %3, i32 -1, i32 1)
  store i64 %call, i64* %idx, align 8
  %4 = load i64, i64* %idx, align 8
  %cmp2 = icmp slt i64 %4, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %if.end
  %5 = load i8, i8* %update_only.addr, align 1
  %tobool = trunc i8 %5 to i1
  br i1 %tobool, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %land.lhs.true, %if.end
  %6 = load i64, i64* %idx, align 8
  %cmp5 = icmp slt i64 %6, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end.4
  %7 = load i64, i64* @bidi_cache_idx, align 8
  store i64 %7, i64* %idx, align 8
  %8 = load i64, i64* %idx, align 8
  call void @bidi_cache_ensure_space(i64 %8)
  %9 = load i64, i64* @bidi_cache_start, align 8
  %10 = load i64, i64* %idx, align 8
  %cmp7 = icmp slt i64 %9, %10
  br i1 %cmp7, label %land.lhs.true.8, label %if.end.21

land.lhs.true.8:                                  ; preds = %if.then.6
  %11 = load i64, i64* %idx, align 8
  %12 = load i64, i64* @bidi_cache_size, align 8
  %cmp9 = icmp slt i64 %11, %12
  br i1 %cmp9, label %land.lhs.true.10, label %if.end.21

land.lhs.true.10:                                 ; preds = %land.lhs.true.8
  %13 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %charpos11 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %13, i32 0, i32 1
  %14 = load i64, i64* %charpos11, align 8
  %15 = load i64, i64* %idx, align 8
  %sub = sub nsw i64 %15, 1
  %16 = load %struct.bidi_it*, %struct.bidi_it** @bidi_cache, align 8
  %arrayidx = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %16, i64 %sub
  %charpos12 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %arrayidx, i32 0, i32 1
  %17 = load i64, i64* %charpos12, align 8
  %18 = load i64, i64* %idx, align 8
  %sub13 = sub nsw i64 %18, 1
  %19 = load %struct.bidi_it*, %struct.bidi_it** @bidi_cache, align 8
  %arrayidx14 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %19, i64 %sub13
  %nchars = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %arrayidx14, i32 0, i32 3
  %20 = load i64, i64* %nchars, align 8
  %add = add nsw i64 %17, %20
  %cmp15 = icmp sgt i64 %14, %add
  br i1 %cmp15, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.10
  %21 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %charpos16 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %21, i32 0, i32 1
  %22 = load i64, i64* %charpos16, align 8
  %23 = load i64, i64* @bidi_cache_start, align 8
  %24 = load %struct.bidi_it*, %struct.bidi_it** @bidi_cache, align 8
  %arrayidx17 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %24, i64 %23
  %charpos18 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %arrayidx17, i32 0, i32 1
  %25 = load i64, i64* %charpos18, align 8
  %cmp19 = icmp slt i64 %22, %25
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %lor.lhs.false, %land.lhs.true.10
  call void @bidi_cache_reset()
  %26 = load i64, i64* @bidi_cache_start, align 8
  store i64 %26, i64* %idx, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %lor.lhs.false, %land.lhs.true.8, %if.then.6
  %27 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %nchars22 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %27, i32 0, i32 3
  %28 = load i64, i64* %nchars22, align 8
  %cmp23 = icmp sle i64 %28, 0
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.21
  call void @emacs_abort() #4
  unreachable

if.end.25:                                        ; preds = %if.end.21
  %29 = load i64, i64* @bidi_cache_size, align 8
  %30 = load i64, i64* %idx, align 8
  %cmp26 = icmp sgt i64 %29, %30
  br i1 %cmp26, label %if.then.27, label %if.end.33

if.then.27:                                       ; preds = %if.end.25
  %31 = load i64, i64* %idx, align 8
  %32 = load %struct.bidi_it*, %struct.bidi_it** @bidi_cache, align 8
  %arrayidx28 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %32, i64 %31
  %33 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  call void @bidi_copy_it(%struct.bidi_it* %arrayidx28, %struct.bidi_it* %33)
  %34 = load i8, i8* %resolved.addr, align 1
  %tobool29 = trunc i8 %34 to i1
  br i1 %tobool29, label %if.end.32, label %if.then.30

if.then.30:                                       ; preds = %if.then.27
  %35 = load i64, i64* %idx, align 8
  %36 = load %struct.bidi_it*, %struct.bidi_it** @bidi_cache, align 8
  %arrayidx31 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %36, i64 %35
  %resolved_level = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %arrayidx31, i32 0, i32 8
  store i8 -1, i8* %resolved_level, align 1
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %if.then.27
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.end.25
  br label %if.end.63

if.else:                                          ; preds = %if.end.4
  %37 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %37, i32 0, i32 5
  %38 = load i32, i32* %type, align 4
  %39 = load i64, i64* %idx, align 8
  %40 = load %struct.bidi_it*, %struct.bidi_it** @bidi_cache, align 8
  %arrayidx34 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %40, i64 %39
  %type35 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %arrayidx34, i32 0, i32 5
  store i32 %38, i32* %type35, align 4
  %41 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type36 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %41, i32 0, i32 5
  %42 = load i32, i32* %type36, align 4
  call void @bidi_check_type(i32 %42)
  %43 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type_after_wn = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %43, i32 0, i32 6
  %44 = load i32, i32* %type_after_wn, align 4
  %45 = load i64, i64* %idx, align 8
  %46 = load %struct.bidi_it*, %struct.bidi_it** @bidi_cache, align 8
  %arrayidx37 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %46, i64 %45
  %type_after_wn38 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %arrayidx37, i32 0, i32 6
  store i32 %44, i32* %type_after_wn38, align 4
  %47 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type_after_wn39 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %47, i32 0, i32 6
  %48 = load i32, i32* %type_after_wn39, align 4
  call void @bidi_check_type(i32 %48)
  %49 = load i8, i8* %resolved.addr, align 1
  %tobool40 = trunc i8 %49 to i1
  br i1 %tobool40, label %if.then.41, label %if.else.45

if.then.41:                                       ; preds = %if.else
  %50 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %resolved_level42 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %50, i32 0, i32 8
  %51 = load i8, i8* %resolved_level42, align 1
  %52 = load i64, i64* %idx, align 8
  %53 = load %struct.bidi_it*, %struct.bidi_it** @bidi_cache, align 8
  %arrayidx43 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %53, i64 %52
  %resolved_level44 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %arrayidx43, i32 0, i32 8
  store i8 %51, i8* %resolved_level44, align 1
  br label %if.end.48

if.else.45:                                       ; preds = %if.else
  %54 = load i64, i64* %idx, align 8
  %55 = load %struct.bidi_it*, %struct.bidi_it** @bidi_cache, align 8
  %arrayidx46 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %55, i64 %54
  %resolved_level47 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %arrayidx46, i32 0, i32 8
  store i8 -1, i8* %resolved_level47, align 1
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.45, %if.then.41
  %56 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %invalid_levels = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %56, i32 0, i32 10
  %57 = load i64, i64* %invalid_levels, align 8
  %58 = load i64, i64* %idx, align 8
  %59 = load %struct.bidi_it*, %struct.bidi_it** @bidi_cache, align 8
  %arrayidx49 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %59, i64 %58
  %invalid_levels50 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %arrayidx49, i32 0, i32 10
  store i64 %57, i64* %invalid_levels50, align 8
  %60 = load i64, i64* %idx, align 8
  %61 = load %struct.bidi_it*, %struct.bidi_it** @bidi_cache, align 8
  %arrayidx51 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %61, i64 %60
  %next_for_neutral = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %arrayidx51, i32 0, i32 14
  %62 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %next_for_neutral52 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %62, i32 0, i32 14
  %63 = bitcast %struct.bidi_saved_info* %next_for_neutral to i8*
  %64 = bitcast %struct.bidi_saved_info* %next_for_neutral52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %63, i8* %64, i64 16, i32 8, i1 false)
  %65 = load i64, i64* %idx, align 8
  %66 = load %struct.bidi_it*, %struct.bidi_it** @bidi_cache, align 8
  %arrayidx53 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %66, i64 %65
  %next_for_ws = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %arrayidx53, i32 0, i32 16
  %67 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %next_for_ws54 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %67, i32 0, i32 16
  %68 = bitcast %struct.bidi_saved_info* %next_for_ws to i8*
  %69 = bitcast %struct.bidi_saved_info* %next_for_ws54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* %69, i64 16, i32 8, i1 false)
  %70 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %disp_pos = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %70, i32 0, i32 23
  %71 = load i64, i64* %disp_pos, align 8
  %72 = load i64, i64* %idx, align 8
  %73 = load %struct.bidi_it*, %struct.bidi_it** @bidi_cache, align 8
  %arrayidx55 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %73, i64 %72
  %disp_pos56 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %arrayidx55, i32 0, i32 23
  store i64 %71, i64* %disp_pos56, align 8
  %74 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %disp_prop = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %74, i32 0, i32 24
  %75 = load i32, i32* %disp_prop, align 4
  %76 = load i64, i64* %idx, align 8
  %77 = load %struct.bidi_it*, %struct.bidi_it** @bidi_cache, align 8
  %arrayidx57 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %77, i64 %76
  %disp_prop58 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %arrayidx57, i32 0, i32 24
  store i32 %75, i32* %disp_prop58, align 4
  %78 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %bracket_pairing_pos = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %78, i32 0, i32 17
  %79 = load i64, i64* %bracket_pairing_pos, align 8
  %80 = load i64, i64* %idx, align 8
  %81 = load %struct.bidi_it*, %struct.bidi_it** @bidi_cache, align 8
  %arrayidx59 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %81, i64 %80
  %bracket_pairing_pos60 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %arrayidx59, i32 0, i32 17
  store i64 %79, i64* %bracket_pairing_pos60, align 8
  %82 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %bracket_enclosed_type = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %82, i32 0, i32 18
  %83 = load i32, i32* %bracket_enclosed_type, align 4
  %84 = load i64, i64* %idx, align 8
  %85 = load %struct.bidi_it*, %struct.bidi_it** @bidi_cache, align 8
  %arrayidx61 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %85, i64 %84
  %bracket_enclosed_type62 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %arrayidx61, i32 0, i32 18
  store i32 %83, i32* %bracket_enclosed_type62, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.48, %if.end.33
  %86 = load i64, i64* @bidi_cache_size, align 8
  %87 = load i64, i64* %idx, align 8
  %cmp64 = icmp sgt i64 %86, %87
  br i1 %cmp64, label %if.then.65, label %if.else.70

if.then.65:                                       ; preds = %if.end.63
  %88 = load i64, i64* %idx, align 8
  store i64 %88, i64* @bidi_cache_last_idx, align 8
  %89 = load i64, i64* %idx, align 8
  %90 = load i64, i64* @bidi_cache_idx, align 8
  %cmp66 = icmp sge i64 %89, %90
  br i1 %cmp66, label %if.then.67, label %if.end.69

if.then.67:                                       ; preds = %if.then.65
  %91 = load i64, i64* %idx, align 8
  %add68 = add nsw i64 %91, 1
  store i64 %add68, i64* @bidi_cache_idx, align 8
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.67, %if.then.65
  store i32 1, i32* %retval
  br label %return

if.else.70:                                       ; preds = %if.end.63
  store i64 -1, i64* @bidi_cache_last_idx, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.70, %if.end.69, %if.then.3
  %92 = load i32, i32* %retval
  ret i32 %92
}

; Function Attrs: nounwind uwtable
define internal i32 @bidi_level_of_next_char(%struct.bidi_it* %bidi_it) #0 {
entry:
  %retval = alloca i32, align 4
  %bidi_it.addr = alloca %struct.bidi_it*, align 8
  %type = alloca i32, align 4
  %level = alloca i32, align 4
  %next_char_pos = alloca i64, align 8
  %eob = alloca i64, align 8
  %bob = alloca i32, align 4
  %ch = alloca i32, align 4
  %clen = alloca i64, align 8
  %bpos = alloca i64, align 8
  %cpos = alloca i64, align 8
  %disp_pos = alloca i64, align 8
  %nc = alloca i64, align 8
  %bs = alloca %struct.bidi_string_data, align 8
  %chtype = alloca i32, align 4
  %fwp = alloca i8, align 1
  %dpp = alloca i32, align 4
  store %struct.bidi_it* %bidi_it, %struct.bidi_it** %bidi_it.addr, align 8
  store i32 0, i32* %type, align 4
  store i64 -2, i64* %next_char_pos, align 8
  %0 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %scan_dir = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %0, i32 0, i32 22
  %1 = load i32, i32* %scan_dir, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %2 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %string = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %2, i32 0, i32 27
  %s = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %string, i32 0, i32 1
  %3 = load i8*, i8** %s, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %4 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %string1 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %4, i32 0, i32 27
  %lstring = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %string1, i32 0, i32 0
  %5 = load i64, i64* %lstring, align 8
  %call = call zeroext i1 @STRINGP(i64 %5)
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %if.then
  %6 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %string2 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %6, i32 0, i32 27
  %schars = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %string2, i32 0, i32 2
  %7 = load i64, i64* %schars, align 8
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %8 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %8, i32 0, i32 79
  %9 = load i64, i64* %zv, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %7, %cond.true ], [ %9, %cond.false ]
  store i64 %cond, i64* %eob, align 8
  %10 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %charpos = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %10, i32 0, i32 1
  %11 = load i64, i64* %charpos, align 8
  %12 = load i64, i64* %eob, align 8
  %cmp3 = icmp sge i64 %11, %12
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %cond.end
  %13 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %resolved_level = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %13, i32 0, i32 8
  %14 = load i8, i8* %resolved_level, align 1
  %conv = sext i8 %14 to i32
  store i32 %conv, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %15 = load i64, i64* @bidi_cache_idx, align 8
  %16 = load i64, i64* @bidi_cache_start, align 8
  %cmp6 = icmp sgt i64 %15, %16
  br i1 %cmp6, label %land.lhs.true, label %if.end.48

land.lhs.true:                                    ; preds = %if.end.5
  %17 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %first_elt = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %17, i32 0, i32 31
  %bf.load = load i8, i8* %first_elt, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %if.end.48, label %if.then.8

if.then.8:                                        ; preds = %land.lhs.true
  %18 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %string9 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %18, i32 0, i32 27
  %s10 = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %string9, i32 0, i32 1
  %19 = load i8*, i8** %s10, align 8
  %tobool11 = icmp ne i8* %19, null
  br i1 %tobool11, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then.8
  %20 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %string12 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %20, i32 0, i32 27
  %lstring13 = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %string12, i32 0, i32 0
  %21 = load i64, i64* %lstring13, align 8
  %call14 = call zeroext i1 @STRINGP(i64 %21)
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then.8
  %22 = phi i1 [ true, %if.then.8 ], [ %call14, %lor.rhs ]
  %cond16 = select i1 %22, i32 0, i32 1
  store i32 %cond16, i32* %bob, align 4
  %23 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %scan_dir17 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %23, i32 0, i32 22
  %24 = load i32, i32* %scan_dir17, align 4
  %cmp18 = icmp sgt i32 %24, 0
  br i1 %cmp18, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %lor.end
  %25 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %nchars = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %25, i32 0, i32 3
  %26 = load i64, i64* %nchars, align 8
  %cmp21 = icmp sle i64 %26, 0
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.then.20
  call void @emacs_abort() #4
  unreachable

if.end.24:                                        ; preds = %if.then.20
  %27 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %charpos25 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %27, i32 0, i32 1
  %28 = load i64, i64* %charpos25, align 8
  %29 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %nchars26 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %29, i32 0, i32 3
  %30 = load i64, i64* %nchars26, align 8
  %add = add nsw i64 %28, %30
  store i64 %add, i64* %next_char_pos, align 8
  br label %if.end.34

if.else:                                          ; preds = %lor.end
  %31 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %charpos27 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %31, i32 0, i32 1
  %32 = load i64, i64* %charpos27, align 8
  %33 = load i32, i32* %bob, align 4
  %conv28 = sext i32 %33 to i64
  %cmp29 = icmp sge i64 %32, %conv28
  br i1 %cmp29, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %if.else
  %34 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %charpos32 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %34, i32 0, i32 1
  %35 = load i64, i64* %charpos32, align 8
  %sub = sub nsw i64 %35, 1
  store i64 %sub, i64* %next_char_pos, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %if.else
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.end.24
  %36 = load i64, i64* %next_char_pos, align 8
  %37 = load i32, i32* %bob, align 4
  %sub35 = sub nsw i32 %37, 1
  %conv36 = sext i32 %sub35 to i64
  %cmp37 = icmp sge i64 %36, %conv36
  br i1 %cmp37, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %if.end.34
  %38 = load i64, i64* %next_char_pos, align 8
  %39 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %call40 = call i32 @bidi_cache_find(i64 %38, i1 zeroext true, %struct.bidi_it* %39)
  store i32 %call40, i32* %type, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %if.end.34
  %40 = load i32, i32* %type, align 4
  %cmp42 = icmp ne i32 %40, 0
  br i1 %cmp42, label %if.then.44, label %if.end.47

if.then.44:                                       ; preds = %if.end.41
  %41 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %resolved_level45 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %41, i32 0, i32 8
  %42 = load i8, i8* %resolved_level45, align 1
  %conv46 = sext i8 %42 to i32
  store i32 %conv46, i32* %retval
  br label %return

if.end.47:                                        ; preds = %if.end.41
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %land.lhs.true, %if.end.5
  %43 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %scan_dir49 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %43, i32 0, i32 22
  %44 = load i32, i32* %scan_dir49, align 4
  %cmp50 = icmp eq i32 %44, -1
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end.48
  call void @emacs_abort() #4
  unreachable

if.end.53:                                        ; preds = %if.end.48
  %45 = load i32, i32* %type, align 4
  %cmp54 = icmp eq i32 %45, 0
  br i1 %cmp54, label %if.then.56, label %if.end.58

if.then.56:                                       ; preds = %if.end.53
  %46 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %call57 = call i32 @bidi_type_of_next_char(%struct.bidi_it* %46)
  store i32 %call57, i32* %type, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.56, %if.end.53
  %47 = load i32, i32* %type, align 4
  %cmp59 = icmp eq i32 %47, 6
  br i1 %cmp59, label %if.then.61, label %if.end.64

if.then.61:                                       ; preds = %if.end.58
  %48 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %resolved_level62 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %48, i32 0, i32 8
  %49 = load i8, i8* %resolved_level62, align 1
  %conv63 = sext i8 %49 to i32
  store i32 %conv63, i32* %retval
  br label %return

if.end.64:                                        ; preds = %if.end.58
  %50 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %stack_idx = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %50, i32 0, i32 25
  %51 = load i32, i32* %stack_idx, align 4
  %idxprom = sext i32 %51 to i64
  %52 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %level_stack = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %52, i32 0, i32 26
  %arrayidx = getelementptr inbounds [128 x %struct.bidi_stack], [128 x %struct.bidi_stack]* %level_stack, i32 0, i64 %idxprom
  %level65 = getelementptr inbounds %struct.bidi_stack, %struct.bidi_stack* %arrayidx, i32 0, i32 2
  %53 = load i8, i8* %level65, align 1
  %conv66 = zext i8 %53 to i32
  store i32 %conv66, i32* %level, align 4
  %54 = load i32, i32* %type, align 4
  %55 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type67 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %55, i32 0, i32 5
  store i32 %54, i32* %type67, align 4
  %56 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type68 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %56, i32 0, i32 5
  %57 = load i32, i32* %type68, align 4
  call void @bidi_check_type(i32 %57)
  %58 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %orig_type = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %58, i32 0, i32 7
  %59 = load i32, i32* %orig_type, align 4
  %cmp69 = icmp eq i32 %59, 22
  br i1 %cmp69, label %land.lhs.true.79, label %lor.lhs.false.71

lor.lhs.false.71:                                 ; preds = %if.end.64
  %60 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %orig_type72 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %60, i32 0, i32 7
  %61 = load i32, i32* %orig_type72, align 4
  %cmp73 = icmp eq i32 %61, 5
  br i1 %cmp73, label %land.lhs.true.79, label %lor.lhs.false.75

lor.lhs.false.75:                                 ; preds = %lor.lhs.false.71
  %62 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %orig_type76 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %62, i32 0, i32 7
  %63 = load i32, i32* %orig_type76, align 4
  %call77 = call zeroext i1 @bidi_isolate_fmt_char(i32 %63)
  br i1 %call77, label %land.lhs.true.79, label %if.end.127

land.lhs.true.79:                                 ; preds = %lor.lhs.false.75, %lor.lhs.false.71, %if.end.64
  %64 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %next_for_ws = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %64, i32 0, i32 16
  %charpos80 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %next_for_ws, i32 0, i32 0
  %65 = load i64, i64* %charpos80, align 8
  %66 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %charpos81 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %66, i32 0, i32 1
  %67 = load i64, i64* %charpos81, align 8
  %cmp82 = icmp slt i64 %65, %67
  br i1 %cmp82, label %land.lhs.true.84, label %if.end.127

land.lhs.true.84:                                 ; preds = %land.lhs.true.79
  %68 = load i32, i32* %level, align 4
  %69 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %level_stack85 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %69, i32 0, i32 26
  %arrayidx86 = getelementptr inbounds [128 x %struct.bidi_stack], [128 x %struct.bidi_stack]* %level_stack85, i32 0, i64 0
  %level87 = getelementptr inbounds %struct.bidi_stack, %struct.bidi_stack* %arrayidx86, i32 0, i32 2
  %70 = load i8, i8* %level87, align 1
  %conv88 = zext i8 %70 to i32
  %cmp89 = icmp ne i32 %68, %conv88
  br i1 %cmp89, label %if.then.91, label %if.end.127

if.then.91:                                       ; preds = %land.lhs.true.84
  %71 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %ch_len = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %71, i32 0, i32 4
  %72 = load i64, i64* %ch_len, align 8
  store i64 %72, i64* %clen, align 8
  %73 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %bytepos = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %73, i32 0, i32 0
  %74 = load i64, i64* %bytepos, align 8
  store i64 %74, i64* %bpos, align 8
  %75 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %charpos92 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %75, i32 0, i32 1
  %76 = load i64, i64* %charpos92, align 8
  store i64 %76, i64* %cpos, align 8
  %77 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %disp_pos93 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %77, i32 0, i32 23
  %78 = load i64, i64* %disp_pos93, align 8
  store i64 %78, i64* %disp_pos, align 8
  %79 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %nchars94 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %79, i32 0, i32 3
  %80 = load i64, i64* %nchars94, align 8
  store i64 %80, i64* %nc, align 8
  %81 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %string95 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %81, i32 0, i32 27
  %82 = bitcast %struct.bidi_string_data* %bs to i8*
  %83 = bitcast %struct.bidi_string_data* %string95 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %82, i8* %83, i64 40, i32 8, i1 false)
  %84 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %frame_window_p = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %84, i32 0, i32 31
  %bf.load96 = load i8, i8* %frame_window_p, align 8
  %bf.lshr = lshr i8 %bf.load96, 2
  %bf.clear97 = and i8 %bf.lshr, 1
  %bf.cast98 = trunc i8 %bf.clear97 to i1
  %frombool = zext i1 %bf.cast98 to i8
  store i8 %frombool, i8* %fwp, align 1
  %85 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %disp_prop = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %85, i32 0, i32 24
  %86 = load i32, i32* %disp_prop, align 4
  store i32 %86, i32* %dpp, align 4
  %87 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %nchars99 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %87, i32 0, i32 3
  %88 = load i64, i64* %nchars99, align 8
  %cmp100 = icmp sle i64 %88, 0
  br i1 %cmp100, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %if.then.91
  call void @emacs_abort() #4
  unreachable

if.end.103:                                       ; preds = %if.then.91
  br label %do.body

do.body:                                          ; preds = %lor.end.120, %if.end.103
  %89 = load i64, i64* %nc, align 8
  %90 = load i64, i64* %cpos, align 8
  %add104 = add nsw i64 %90, %89
  store i64 %add104, i64* %cpos, align 8
  %91 = load i64, i64* %clen, align 8
  %92 = load i64, i64* %bpos, align 8
  %add105 = add nsw i64 %92, %91
  store i64 %add105, i64* %bpos, align 8
  %93 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %w = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %93, i32 0, i32 28
  %94 = load %struct.window*, %struct.window** %w, align 8
  %95 = load i8, i8* %fwp, align 1
  %tobool106 = trunc i8 %95 to i1
  %call107 = call i32 @bidi_fetch_char(i64 %add104, i64 %add105, i64* %disp_pos, i32* %dpp, %struct.bidi_string_data* %bs, %struct.window* %94, i1 zeroext %tobool106, i64* %clen, i64* %nc)
  store i32 %call107, i32* %ch, align 4
  %96 = load i32, i32* %ch, align 4
  %call108 = call i32 @bidi_get_type(i32 %96, i32 0)
  store i32 %call108, i32* %chtype, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %97 = load i32, i32* %chtype, align 4
  %cmp109 = icmp eq i32 %97, 22
  br i1 %cmp109, label %lor.end.120, label %lor.lhs.false.111

lor.lhs.false.111:                                ; preds = %do.cond
  %98 = load i32, i32* %chtype, align 4
  %cmp112 = icmp eq i32 %98, 5
  br i1 %cmp112, label %lor.end.120, label %lor.lhs.false.114

lor.lhs.false.114:                                ; preds = %lor.lhs.false.111
  %99 = load i32, i32* %chtype, align 4
  %call115 = call zeroext i1 @bidi_isolate_fmt_char(i32 %99)
  br i1 %call115, label %lor.end.120, label %lor.rhs.117

lor.rhs.117:                                      ; preds = %lor.lhs.false.114
  %100 = load i32, i32* %ch, align 4
  %call118 = call zeroext i1 @bidi_explicit_dir_char(i32 %100)
  br label %lor.end.120

lor.end.120:                                      ; preds = %lor.rhs.117, %lor.lhs.false.114, %lor.lhs.false.111, %do.cond
  %101 = phi i1 [ true, %lor.lhs.false.114 ], [ true, %lor.lhs.false.111 ], [ true, %do.cond ], [ %call118, %lor.rhs.117 ]
  br i1 %101, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end.120
  %102 = load i32, i32* %chtype, align 4
  %103 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %next_for_ws121 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %103, i32 0, i32 16
  %type122 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %next_for_ws121, i32 0, i32 1
  store i32 %102, i32* %type122, align 4
  %104 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %next_for_ws123 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %104, i32 0, i32 16
  %type124 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %next_for_ws123, i32 0, i32 1
  %105 = load i32, i32* %type124, align 4
  call void @bidi_check_type(i32 %105)
  %106 = load i64, i64* %cpos, align 8
  %107 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %next_for_ws125 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %107, i32 0, i32 16
  %charpos126 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %next_for_ws125, i32 0, i32 0
  store i64 %106, i64* %charpos126, align 8
  br label %if.end.127

if.end.127:                                       ; preds = %do.end, %land.lhs.true.84, %land.lhs.true.79, %lor.lhs.false.75
  %108 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %call128 = call i32 @bidi_cache_iterator_state(%struct.bidi_it* %108, i1 zeroext true, i1 zeroext true)
  %109 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %orig_type129 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %109, i32 0, i32 7
  %110 = load i32, i32* %orig_type129, align 4
  %cmp130 = icmp eq i32 %110, 6
  br i1 %cmp130, label %if.then.170, label %lor.lhs.false.132

lor.lhs.false.132:                                ; preds = %if.end.127
  %111 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %orig_type133 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %111, i32 0, i32 7
  %112 = load i32, i32* %orig_type133, align 4
  %cmp134 = icmp eq i32 %112, 21
  br i1 %cmp134, label %if.then.170, label %lor.lhs.false.136

lor.lhs.false.136:                                ; preds = %lor.lhs.false.132
  %113 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %ch137 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %113, i32 0, i32 2
  %114 = load i32, i32* %ch137, align 4
  %cmp138 = icmp eq i32 %114, 10
  br i1 %cmp138, label %if.then.170, label %lor.lhs.false.140

lor.lhs.false.140:                                ; preds = %lor.lhs.false.136
  %115 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %ch141 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %115, i32 0, i32 2
  %116 = load i32, i32* %ch141, align 4
  %cmp142 = icmp eq i32 %116, -1
  br i1 %cmp142, label %if.then.170, label %lor.lhs.false.144

lor.lhs.false.144:                                ; preds = %lor.lhs.false.140
  %117 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %orig_type145 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %117, i32 0, i32 7
  %118 = load i32, i32* %orig_type145, align 4
  %cmp146 = icmp eq i32 %118, 22
  br i1 %cmp146, label %land.lhs.true.160, label %lor.lhs.false.148

lor.lhs.false.148:                                ; preds = %lor.lhs.false.144
  %119 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %orig_type149 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %119, i32 0, i32 7
  %120 = load i32, i32* %orig_type149, align 4
  %cmp150 = icmp eq i32 %120, 5
  br i1 %cmp150, label %land.lhs.true.160, label %lor.lhs.false.152

lor.lhs.false.152:                                ; preds = %lor.lhs.false.148
  %121 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %orig_type153 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %121, i32 0, i32 7
  %122 = load i32, i32* %orig_type153, align 4
  %call154 = call zeroext i1 @bidi_isolate_fmt_char(i32 %122)
  br i1 %call154, label %land.lhs.true.160, label %lor.lhs.false.156

lor.lhs.false.156:                                ; preds = %lor.lhs.false.152
  %123 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %ch157 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %123, i32 0, i32 2
  %124 = load i32, i32* %ch157, align 4
  %call158 = call zeroext i1 @bidi_explicit_dir_char(i32 %124)
  br i1 %call158, label %land.lhs.true.160, label %if.else.175

land.lhs.true.160:                                ; preds = %lor.lhs.false.156, %lor.lhs.false.152, %lor.lhs.false.148, %lor.lhs.false.144
  %125 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %next_for_ws161 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %125, i32 0, i32 16
  %type162 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %next_for_ws161, i32 0, i32 1
  %126 = load i32, i32* %type162, align 4
  %cmp163 = icmp eq i32 %126, 6
  br i1 %cmp163, label %if.then.170, label %lor.lhs.false.165

lor.lhs.false.165:                                ; preds = %land.lhs.true.160
  %127 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %next_for_ws166 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %127, i32 0, i32 16
  %type167 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %next_for_ws166, i32 0, i32 1
  %128 = load i32, i32* %type167, align 4
  %cmp168 = icmp eq i32 %128, 21
  br i1 %cmp168, label %if.then.170, label %if.else.175

if.then.170:                                      ; preds = %lor.lhs.false.165, %land.lhs.true.160, %lor.lhs.false.140, %lor.lhs.false.136, %lor.lhs.false.132, %if.end.127
  %129 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %level_stack171 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %129, i32 0, i32 26
  %arrayidx172 = getelementptr inbounds [128 x %struct.bidi_stack], [128 x %struct.bidi_stack]* %level_stack171, i32 0, i64 0
  %level173 = getelementptr inbounds %struct.bidi_stack, %struct.bidi_stack* %arrayidx172, i32 0, i32 2
  %130 = load i8, i8* %level173, align 1
  %conv174 = zext i8 %130 to i32
  store i32 %conv174, i32* %level, align 4
  br label %if.end.205

if.else.175:                                      ; preds = %lor.lhs.false.165, %lor.lhs.false.156
  %131 = load i32, i32* %level, align 4
  %and = and i32 %131, 1
  %cmp176 = icmp eq i32 %and, 0
  br i1 %cmp176, label %if.then.178, label %if.else.192

if.then.178:                                      ; preds = %if.else.175
  %132 = load i32, i32* %type, align 4
  %cmp179 = icmp eq i32 %132, 2
  br i1 %cmp179, label %if.then.181, label %if.else.182

if.then.181:                                      ; preds = %if.then.178
  %133 = load i32, i32* %level, align 4
  %inc = add nsw i32 %133, 1
  store i32 %inc, i32* %level, align 4
  br label %if.end.191

if.else.182:                                      ; preds = %if.then.178
  %134 = load i32, i32* %type, align 4
  %cmp183 = icmp eq i32 %134, 3
  br i1 %cmp183, label %if.then.188, label %lor.lhs.false.185

lor.lhs.false.185:                                ; preds = %if.else.182
  %135 = load i32, i32* %type, align 4
  %cmp186 = icmp eq i32 %135, 4
  br i1 %cmp186, label %if.then.188, label %if.end.190

if.then.188:                                      ; preds = %lor.lhs.false.185, %if.else.182
  %136 = load i32, i32* %level, align 4
  %add189 = add nsw i32 %136, 2
  store i32 %add189, i32* %level, align 4
  br label %if.end.190

if.end.190:                                       ; preds = %if.then.188, %lor.lhs.false.185
  br label %if.end.191

if.end.191:                                       ; preds = %if.end.190, %if.then.181
  br label %if.end.204

if.else.192:                                      ; preds = %if.else.175
  %137 = load i32, i32* %type, align 4
  %cmp193 = icmp eq i32 %137, 1
  br i1 %cmp193, label %if.then.201, label %lor.lhs.false.195

lor.lhs.false.195:                                ; preds = %if.else.192
  %138 = load i32, i32* %type, align 4
  %cmp196 = icmp eq i32 %138, 3
  br i1 %cmp196, label %if.then.201, label %lor.lhs.false.198

lor.lhs.false.198:                                ; preds = %lor.lhs.false.195
  %139 = load i32, i32* %type, align 4
  %cmp199 = icmp eq i32 %139, 4
  br i1 %cmp199, label %if.then.201, label %if.end.203

if.then.201:                                      ; preds = %lor.lhs.false.198, %lor.lhs.false.195, %if.else.192
  %140 = load i32, i32* %level, align 4
  %inc202 = add nsw i32 %140, 1
  store i32 %inc202, i32* %level, align 4
  br label %if.end.203

if.end.203:                                       ; preds = %if.then.201, %lor.lhs.false.198
  br label %if.end.204

if.end.204:                                       ; preds = %if.end.203, %if.end.191
  br label %if.end.205

if.end.205:                                       ; preds = %if.end.204, %if.then.170
  %141 = load i32, i32* %level, align 4
  %conv206 = trunc i32 %141 to i8
  %142 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %resolved_level207 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %142, i32 0, i32 8
  store i8 %conv206, i8* %resolved_level207, align 1
  %143 = load i32, i32* %level, align 4
  store i32 %143, i32* %retval
  br label %return

return:                                           ; preds = %if.end.205, %if.then.61, %if.then.44, %if.then.4
  %144 = load i32, i32* %retval
  ret i32 %144
}

; Function Attrs: nounwind uwtable
define internal void @bidi_find_other_level_edge(%struct.bidi_it* %bidi_it, i32 %level, i1 zeroext %end_flag) #0 {
entry:
  %bidi_it.addr = alloca %struct.bidi_it*, align 8
  %level.addr = alloca i32, align 4
  %end_flag.addr = alloca i8, align 1
  %dir = alloca i32, align 4
  %idx = alloca i64, align 8
  %new_level = alloca i32, align 4
  store %struct.bidi_it* %bidi_it, %struct.bidi_it** %bidi_it.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  %frombool = zext i1 %end_flag to i8
  store i8 %frombool, i8* %end_flag.addr, align 1
  %0 = load i8, i8* %end_flag.addr, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %scan_dir = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %1, i32 0, i32 22
  %2 = load i32, i32* %scan_dir, align 4
  %sub = sub nsw i32 0, %2
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %scan_dir1 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %3, i32 0, i32 22
  %4 = load i32, i32* %scan_dir1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %4, %cond.false ]
  store i32 %cond, i32* %dir, align 4
  %5 = load i32, i32* %level.addr, align 4
  %6 = load i32, i32* %dir, align 4
  %7 = load i8, i8* %end_flag.addr, align 1
  %tobool2 = trunc i8 %7 to i1
  %call = call i64 @bidi_cache_find_level_change(i32 %5, i32 %6, i1 zeroext %tobool2)
  store i64 %call, i64* %idx, align 8
  %8 = load i64, i64* @bidi_cache_start, align 8
  %cmp = icmp sge i64 %call, %8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %9 = load i64, i64* %idx, align 8
  %10 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  call void @bidi_cache_fetch_state(i64 %9, %struct.bidi_it* %10)
  br label %if.end.19

if.else:                                          ; preds = %cond.end
  %11 = load i8, i8* %end_flag.addr, align 1
  %tobool3 = trunc i8 %11 to i1
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  call void @emacs_abort() #4
  unreachable

if.end:                                           ; preds = %if.else
  %12 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %call5 = call i32 @bidi_cache_iterator_state(%struct.bidi_it* %12, i1 zeroext true, i1 zeroext false)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end
  call void @emacs_abort() #4
  unreachable

if.end.8:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.8
  %13 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %call9 = call i32 @bidi_level_of_next_char(%struct.bidi_it* %13)
  store i32 %call9, i32* %new_level, align 4
  %14 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %call10 = call i32 @bidi_cache_iterator_state(%struct.bidi_it* %14, i1 zeroext true, i1 zeroext false)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end.16, label %if.then.12

if.then.12:                                       ; preds = %do.body
  %15 = load i32, i32* %level.addr, align 4
  %sub13 = sub nsw i32 %15, 1
  store i32 %sub13, i32* %new_level, align 4
  %16 = load i64, i64* @bidi_cache_idx, align 8
  %sub14 = sub nsw i64 %16, 1
  %17 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  call void @bidi_cache_fetch_state(i64 %sub14, %struct.bidi_it* %17)
  %18 = load i32, i32* %new_level, align 4
  %conv = trunc i32 %18 to i8
  %19 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %resolved_level = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %19, i32 0, i32 8
  store i8 %conv, i8* %resolved_level, align 1
  %20 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %call15 = call i32 @bidi_cache_iterator_state(%struct.bidi_it* %20, i1 zeroext true, i1 zeroext true)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.12, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.16
  %21 = load i32, i32* %new_level, align 4
  %22 = load i32, i32* %level.addr, align 4
  %cmp17 = icmp sge i32 %21, %22
  br i1 %cmp17, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.19

if.end.19:                                        ; preds = %do.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @bidi_peek_at_next_level(%struct.bidi_it* %bidi_it) #0 {
entry:
  %retval = alloca i32, align 4
  %bidi_it.addr = alloca %struct.bidi_it*, align 8
  store %struct.bidi_it* %bidi_it, %struct.bidi_it** %bidi_it.addr, align 8
  %0 = load i64, i64* @bidi_cache_idx, align 8
  %1 = load i64, i64* @bidi_cache_start, align 8
  %cmp = icmp eq i64 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @emacs_abort() #4
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i64, i64* @bidi_cache_last_idx, align 8
  %cmp1 = icmp eq i64 %2, -1
  br i1 %cmp1, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load i64, i64* @bidi_cache_last_idx, align 8
  %4 = load i64, i64* @bidi_cache_idx, align 8
  %sub = sub nsw i64 %4, 1
  %cmp2 = icmp sge i64 %3, %sub
  br i1 %cmp2, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %lor.lhs.false
  %5 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %scan_dir = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %5, i32 0, i32 22
  %6 = load i32, i32* %scan_dir, align 4
  %cmp3 = icmp sgt i32 %6, 0
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %land.lhs.true, %if.end
  %7 = load i64, i64* @bidi_cache_idx, align 8
  %sub5 = sub nsw i64 %7, 1
  %8 = load %struct.bidi_it*, %struct.bidi_it** @bidi_cache, align 8
  %arrayidx = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %8, i64 %sub5
  %resolved_level = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %arrayidx, i32 0, i32 8
  %9 = load i8, i8* %resolved_level, align 1
  %conv = sext i8 %9 to i32
  store i32 %conv, i32* %retval
  br label %return

if.end.6:                                         ; preds = %land.lhs.true, %lor.lhs.false
  %10 = load i64, i64* @bidi_cache_last_idx, align 8
  %11 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %scan_dir7 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %11, i32 0, i32 22
  %12 = load i32, i32* %scan_dir7, align 4
  %conv8 = sext i32 %12 to i64
  %add = add nsw i64 %10, %conv8
  %13 = load %struct.bidi_it*, %struct.bidi_it** @bidi_cache, align 8
  %arrayidx9 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %13, i64 %add
  %resolved_level10 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %arrayidx9, i32 0, i32 8
  %14 = load i8, i8* %resolved_level10, align 1
  %conv11 = sext i8 %14 to i32
  store i32 %conv11, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.4
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i64 @bidi_at_paragraph_end(i64 %charpos, i64 %bytepos) #0 {
entry:
  %charpos.addr = alloca i64, align 8
  %bytepos.addr = alloca i64, align 8
  %sep_re = alloca i64, align 8
  %start_re = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %charpos, i64* %charpos.addr, align 8
  store i64 %bytepos, i64* %bytepos.addr, align 8
  %0 = load i64, i64* @paragraph_separate_re, align 8
  store i64 %0, i64* %sep_re, align 8
  %1 = load i64, i64* @paragraph_start_re, align 8
  store i64 %1, i64* %start_re, align 8
  %2 = load i64, i64* %sep_re, align 8
  %3 = load i64, i64* %charpos.addr, align 8
  %4 = load i64, i64* %bytepos.addr, align 8
  %5 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %5, i32 0, i32 79
  %6 = load i64, i64* %zv, align 8
  %7 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %7, i32 0, i32 80
  %8 = load i64, i64* %zv_byte, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %call1 = call i64 @fast_looking_at(i64 %2, i64 %3, i64 %4, i64 %6, i64 %8, i64 %call)
  store i64 %call1, i64* %val, align 8
  %9 = load i64, i64* %val, align 8
  %cmp = icmp slt i64 %9, 0
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %10 = load i64, i64* %start_re, align 8
  %11 = load i64, i64* %charpos.addr, align 8
  %12 = load i64, i64* %bytepos.addr, align 8
  %13 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv2 = getelementptr inbounds %struct.buffer, %struct.buffer* %13, i32 0, i32 79
  %14 = load i64, i64* %zv2, align 8
  %15 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte3 = getelementptr inbounds %struct.buffer, %struct.buffer* %15, i32 0, i32 80
  %16 = load i64, i64* %zv_byte3, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %call5 = call i64 @fast_looking_at(i64 %10, i64 %11, i64 %12, i64 %14, i64 %16, i64 %call4)
  %cmp6 = icmp sge i64 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then
  store i64 -1, i64* %val, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  store i64 -2, i64* %val, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.7
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %entry
  %17 = load i64, i64* %val, align 8
  ret i64 %17
}

; Function Attrs: nounwind uwtable
define i64 @bidi_find_first_overridden(%struct.bidi_it* %bidi_it) #0 {
entry:
  %bidi_it.addr = alloca %struct.bidi_it*, align 8
  %found_pos = alloca i64, align 8
  %type = alloca i32, align 4
  store %struct.bidi_it* %bidi_it, %struct.bidi_it** %bidi_it.addr, align 8
  %0 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 79
  %1 = load i64, i64* %zv, align 8
  store i64 %1, i64* %found_pos, align 8
  br label %do.body

do.body:                                          ; preds = %land.end, %entry
  %2 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %call = call i32 @bidi_resolve_weak(%struct.bidi_it* %2)
  store i32 %call, i32* %type, align 4
  %3 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %do.body
  %4 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %orig_type = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %4, i32 0, i32 7
  %5 = load i32, i32* %orig_type, align 4
  %cmp1 = icmp eq i32 %5, 1
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %do.body
  %6 = load i32, i32* %type, align 4
  %cmp2 = icmp eq i32 %6, 1
  br i1 %cmp2, label %land.lhs.true.3, label %if.end

land.lhs.true.3:                                  ; preds = %lor.lhs.false
  %7 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %orig_type4 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %7, i32 0, i32 7
  %8 = load i32, i32* %orig_type4, align 4
  %cmp5 = icmp eq i32 %8, 2
  br i1 %cmp5, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %land.lhs.true.3
  %9 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %orig_type7 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %9, i32 0, i32 7
  %10 = load i32, i32* %orig_type7, align 4
  %cmp8 = icmp eq i32 %10, 7
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.6, %land.lhs.true.3, %land.lhs.true
  %11 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %charpos = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %11, i32 0, i32 1
  %12 = load i64, i64* %charpos, align 8
  store i64 %12, i64* %found_pos, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.6, %lor.lhs.false
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %13 = load i64, i64* %found_pos, align 8
  %14 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv9 = getelementptr inbounds %struct.buffer, %struct.buffer* %14, i32 0, i32 79
  %15 = load i64, i64* %zv9, align 8
  %cmp10 = icmp eq i64 %13, %15
  br i1 %cmp10, label %land.lhs.true.11, label %land.end

land.lhs.true.11:                                 ; preds = %do.cond
  %16 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %charpos12 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %16, i32 0, i32 1
  %17 = load i64, i64* %charpos12, align 8
  %18 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv13 = getelementptr inbounds %struct.buffer, %struct.buffer* %18, i32 0, i32 79
  %19 = load i64, i64* %zv13, align 8
  %cmp14 = icmp slt i64 %17, %19
  br i1 %cmp14, label %land.lhs.true.15, label %land.end

land.lhs.true.15:                                 ; preds = %land.lhs.true.11
  %20 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %ch = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %20, i32 0, i32 2
  %21 = load i32, i32* %ch, align 4
  %cmp16 = icmp ne i32 %21, -1
  br i1 %cmp16, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.15
  %22 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %ch17 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %22, i32 0, i32 2
  %23 = load i32, i32* %ch17, align 4
  %cmp18 = icmp ne i32 %23, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.15, %land.lhs.true.11, %do.cond
  %24 = phi i1 [ false, %land.lhs.true.15 ], [ false, %land.lhs.true.11 ], [ false, %do.cond ], [ %cmp18, %land.rhs ]
  br i1 %24, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %25 = load i64, i64* %found_pos, align 8
  ret i64 %25
}

; Function Attrs: nounwind uwtable
define internal i32 @bidi_resolve_weak(%struct.bidi_it* %bidi_it) #0 {
entry:
  %bidi_it.addr = alloca %struct.bidi_it*, align 8
  %type = alloca i32, align 4
  %override = alloca i32, align 4
  %prev_level = alloca i32, align 4
  %new_level = alloca i32, align 4
  %next_char = alloca i32, align 4
  %type_of_next = alloca i32, align 4
  %saved_it = alloca %struct.bidi_it, align 8
  %eob = alloca i64, align 8
  %s109 = alloca i8*, align 8
  %en_pos = alloca i64, align 8
  %s252 = alloca i8*, align 8
  store %struct.bidi_it* %bidi_it, %struct.bidi_it** %bidi_it.addr, align 8
  %0 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %stack_idx = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %0, i32 0, i32 25
  %1 = load i32, i32* %stack_idx, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %level_stack = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %2, i32 0, i32 26
  %arrayidx = getelementptr inbounds [128 x %struct.bidi_stack], [128 x %struct.bidi_stack]* %level_stack, i32 0, i64 %idxprom
  %level = getelementptr inbounds %struct.bidi_stack, %struct.bidi_stack* %arrayidx, i32 0, i32 2
  %3 = load i8, i8* %level, align 1
  %conv = zext i8 %3 to i32
  store i32 %conv, i32* %prev_level, align 4
  %4 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %call = call i32 @bidi_resolve_explicit(%struct.bidi_it* %4)
  store i32 %call, i32* %new_level, align 4
  %5 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %string = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %5, i32 0, i32 27
  %lstring = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %string, i32 0, i32 0
  %6 = load i64, i64* %lstring, align 8
  %call1 = call zeroext i1 @STRINGP(i64 %6)
  br i1 %call1, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %string3 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %7, i32 0, i32 27
  %s = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %string3, i32 0, i32 1
  %8 = load i8*, i8** %s, align 8
  %tobool = icmp ne i8* %8, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %entry
  %9 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %string4 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %9, i32 0, i32 27
  %schars = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %string4, i32 0, i32 2
  %10 = load i64, i64* %schars, align 8
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %11 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %11, i32 0, i32 79
  %12 = load i64, i64* %zv, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %10, %cond.true ], [ %12, %cond.false ]
  store i64 %cond, i64* %eob, align 8
  %13 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type5 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %13, i32 0, i32 5
  %14 = load i32, i32* %type5, align 4
  store i32 %14, i32* %type, align 4
  %15 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %stack_idx6 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %15, i32 0, i32 25
  %16 = load i32, i32* %stack_idx6, align 4
  %idxprom7 = sext i32 %16 to i64
  %17 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %level_stack8 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %17, i32 0, i32 26
  %arrayidx9 = getelementptr inbounds [128 x %struct.bidi_stack], [128 x %struct.bidi_stack]* %level_stack8, i32 0, i64 %idxprom7
  %flags = getelementptr inbounds %struct.bidi_stack, %struct.bidi_stack* %arrayidx9, i32 0, i32 3
  %18 = load i8, i8* %flags, align 1
  %conv10 = zext i8 %18 to i32
  %shr = ashr i32 %conv10, 1
  %and = and i32 %shr, 3
  store i32 %and, i32* %override, align 4
  %19 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type11 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %19, i32 0, i32 5
  %20 = load i32, i32* %type11, align 4
  %cmp = icmp eq i32 %20, 6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %21 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %22 = load i32, i32* %prev_level, align 4
  %23 = load i32, i32* %new_level, align 4
  call void @bidi_set_sos_type(%struct.bidi_it* %21, i32 %22, i32 %23)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %24 = load i32, i32* %type, align 4
  %cmp13 = icmp eq i32 %24, 21
  br i1 %cmp13, label %if.then.24, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %if.end
  %25 = load i32, i32* %type, align 4
  %cmp16 = icmp eq i32 %25, 22
  br i1 %cmp16, label %if.then.24, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %lor.lhs.false.15
  %26 = load i32, i32* %type, align 4
  %cmp19 = icmp eq i32 %26, 5
  br i1 %cmp19, label %if.then.24, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %lor.lhs.false.18
  %27 = load i32, i32* %type, align 4
  %cmp22 = icmp eq i32 %27, 7
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %lor.lhs.false.21, %lor.lhs.false.18, %lor.lhs.false.15, %if.end
  %28 = load i32, i32* %type, align 4
  %29 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type_after_wn = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %29, i32 0, i32 6
  store i32 %28, i32* %type_after_wn, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %lor.lhs.false.21
  %30 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type_after_wn26 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %30, i32 0, i32 6
  %31 = load i32, i32* %type_after_wn26, align 4
  call void @bidi_check_type(i32 %31)
  %32 = load i32, i32* %override, align 4
  %cmp27 = icmp eq i32 %32, 2
  br i1 %cmp27, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %if.end.25
  store i32 2, i32* %type, align 4
  br label %if.end.363

if.else:                                          ; preds = %if.end.25
  %33 = load i32, i32* %override, align 4
  %cmp30 = icmp eq i32 %33, 1
  br i1 %cmp30, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %if.else
  store i32 1, i32* %type, align 4
  br label %if.end.362

if.else.33:                                       ; preds = %if.else
  %34 = load i32, i32* %type, align 4
  %cmp34 = icmp eq i32 %34, 20
  br i1 %cmp34, label %if.then.36, label %if.end.66

if.then.36:                                       ; preds = %if.else.33
  %35 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %prev = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %35, i32 0, i32 12
  %type37 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %prev, i32 0, i32 1
  %36 = load i32, i32* %type37, align 4
  %cmp38 = icmp ne i32 %36, 0
  br i1 %cmp38, label %land.lhs.true, label %if.else.53

land.lhs.true:                                    ; preds = %if.then.36
  %37 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %prev40 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %37, i32 0, i32 12
  %type41 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %prev40, i32 0, i32 1
  %38 = load i32, i32* %type41, align 4
  %cmp42 = icmp ne i32 %38, 6
  br i1 %cmp42, label %if.then.44, label %if.else.53

if.then.44:                                       ; preds = %land.lhs.true
  %39 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %prev45 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %39, i32 0, i32 12
  %type46 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %prev45, i32 0, i32 1
  %40 = load i32, i32* %type46, align 4
  %call47 = call zeroext i1 @bidi_isolate_fmt_char(i32 %40)
  br i1 %call47, label %if.then.48, label %if.else.49

if.then.48:                                       ; preds = %if.then.44
  store i32 23, i32* %type, align 4
  br label %if.end.52

if.else.49:                                       ; preds = %if.then.44
  %41 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %prev50 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %41, i32 0, i32 12
  %type51 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %prev50, i32 0, i32 1
  %42 = load i32, i32* %type51, align 4
  store i32 %42, i32* %type, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.49, %if.then.48
  br label %if.end.65

if.else.53:                                       ; preds = %land.lhs.true, %if.then.36
  %43 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %sos = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %43, i32 0, i32 21
  %44 = load i32, i32* %sos, align 4
  %cmp54 = icmp eq i32 %44, 2
  br i1 %cmp54, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %if.else.53
  store i32 2, i32* %type, align 4
  br label %if.end.64

if.else.57:                                       ; preds = %if.else.53
  %45 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %sos58 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %45, i32 0, i32 21
  %46 = load i32, i32* %sos58, align 4
  %cmp59 = icmp eq i32 %46, 1
  br i1 %cmp59, label %if.then.61, label %if.else.62

if.then.61:                                       ; preds = %if.else.57
  store i32 1, i32* %type, align 4
  br label %if.end.63

if.else.62:                                       ; preds = %if.else.57
  call void @emacs_abort() #4
  unreachable

if.end.63:                                        ; preds = %if.then.61
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.then.56
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.end.52
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.else.33
  %47 = load i32, i32* %type, align 4
  %cmp67 = icmp eq i32 %47, 3
  br i1 %cmp67, label %land.lhs.true.69, label %if.else.74

land.lhs.true.69:                                 ; preds = %if.end.66
  %48 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %last_strong = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %48, i32 0, i32 13
  %type70 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %last_strong, i32 0, i32 1
  %49 = load i32, i32* %type70, align 4
  %cmp71 = icmp eq i32 %49, 7
  br i1 %cmp71, label %if.then.73, label %if.else.74

if.then.73:                                       ; preds = %land.lhs.true.69
  store i32 4, i32* %type, align 4
  br label %if.end.361

if.else.74:                                       ; preds = %land.lhs.true.69, %if.end.66
  %50 = load i32, i32* %type, align 4
  %cmp75 = icmp eq i32 %50, 7
  br i1 %cmp75, label %if.then.77, label %if.else.78

if.then.77:                                       ; preds = %if.else.74
  store i32 2, i32* %type, align 4
  br label %if.end.360

if.else.78:                                       ; preds = %if.else.74
  %51 = load i32, i32* %type, align 4
  %cmp79 = icmp eq i32 %51, 17
  br i1 %cmp79, label %land.lhs.true.81, label %lor.lhs.false.90

land.lhs.true.81:                                 ; preds = %if.else.78
  %52 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %prev82 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %52, i32 0, i32 12
  %type83 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %prev82, i32 0, i32 1
  %53 = load i32, i32* %type83, align 4
  %cmp84 = icmp eq i32 %53, 3
  br i1 %cmp84, label %land.lhs.true.86, label %lor.lhs.false.90

land.lhs.true.86:                                 ; preds = %land.lhs.true.81
  %54 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %prev87 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %54, i32 0, i32 12
  %orig_type = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %prev87, i32 0, i32 2
  %55 = load i32, i32* %orig_type, align 4
  %cmp88 = icmp eq i32 %55, 3
  br i1 %cmp88, label %if.then.108, label %lor.lhs.false.90

lor.lhs.false.90:                                 ; preds = %land.lhs.true.86, %land.lhs.true.81, %if.else.78
  %56 = load i32, i32* %type, align 4
  %cmp91 = icmp eq i32 %56, 19
  br i1 %cmp91, label %land.lhs.true.93, label %if.else.196

land.lhs.true.93:                                 ; preds = %lor.lhs.false.90
  %57 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %prev94 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %57, i32 0, i32 12
  %type95 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %prev94, i32 0, i32 1
  %58 = load i32, i32* %type95, align 4
  %cmp96 = icmp eq i32 %58, 3
  br i1 %cmp96, label %land.lhs.true.98, label %lor.lhs.false.103

land.lhs.true.98:                                 ; preds = %land.lhs.true.93
  %59 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %prev99 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %59, i32 0, i32 12
  %orig_type100 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %prev99, i32 0, i32 2
  %60 = load i32, i32* %orig_type100, align 4
  %cmp101 = icmp eq i32 %60, 3
  br i1 %cmp101, label %if.then.108, label %lor.lhs.false.103

lor.lhs.false.103:                                ; preds = %land.lhs.true.98, %land.lhs.true.93
  %61 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %prev104 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %61, i32 0, i32 12
  %type105 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %prev104, i32 0, i32 1
  %62 = load i32, i32* %type105, align 4
  %cmp106 = icmp eq i32 %62, 4
  br i1 %cmp106, label %if.then.108, label %if.else.196

if.then.108:                                      ; preds = %lor.lhs.false.103, %land.lhs.true.98, %land.lhs.true.86
  %63 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %string110 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %63, i32 0, i32 27
  %lstring111 = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %string110, i32 0, i32 0
  %64 = load i64, i64* %lstring111, align 8
  %call112 = call zeroext i1 @STRINGP(i64 %64)
  br i1 %call112, label %cond.true.114, label %cond.false.118

cond.true.114:                                    ; preds = %if.then.108
  %65 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %string115 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %65, i32 0, i32 27
  %lstring116 = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %string115, i32 0, i32 0
  %66 = load i64, i64* %lstring116, align 8
  %call117 = call i8* @SDATA(i64 %66)
  br label %cond.end.121

cond.false.118:                                   ; preds = %if.then.108
  %67 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %string119 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %67, i32 0, i32 27
  %s120 = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %string119, i32 0, i32 1
  %68 = load i8*, i8** %s120, align 8
  br label %cond.end.121

cond.end.121:                                     ; preds = %cond.false.118, %cond.true.114
  %cond122 = phi i8* [ %call117, %cond.true.114 ], [ %68, %cond.false.118 ]
  store i8* %cond122, i8** %s109, align 8
  %69 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %charpos = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %69, i32 0, i32 1
  %70 = load i64, i64* %charpos, align 8
  %71 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %nchars = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %71, i32 0, i32 3
  %72 = load i64, i64* %nchars, align 8
  %add = add nsw i64 %70, %72
  %73 = load i64, i64* %eob, align 8
  %cmp123 = icmp sge i64 %add, %73
  br i1 %cmp123, label %cond.true.125, label %cond.false.126

cond.true.125:                                    ; preds = %cond.end.121
  br label %cond.end.130

cond.false.126:                                   ; preds = %cond.end.121
  %74 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %bytepos = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %74, i32 0, i32 0
  %75 = load i64, i64* %bytepos, align 8
  %76 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %ch_len = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %76, i32 0, i32 4
  %77 = load i64, i64* %ch_len, align 8
  %add127 = add nsw i64 %75, %77
  %78 = load i8*, i8** %s109, align 8
  %79 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %string128 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %79, i32 0, i32 27
  %unibyte = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %string128, i32 0, i32 4
  %bf.load = load i8, i8* %unibyte, align 8
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = trunc i8 %bf.clear to i1
  %call129 = call i32 @bidi_char_at_pos(i64 %add127, i8* %78, i1 zeroext %bf.cast)
  br label %cond.end.130

cond.end.130:                                     ; preds = %cond.false.126, %cond.true.125
  %cond131 = phi i32 [ -1, %cond.true.125 ], [ %call129, %cond.false.126 ]
  store i32 %cond131, i32* %next_char, align 4
  %80 = load i32, i32* %next_char, align 4
  %81 = load i32, i32* %override, align 4
  %call132 = call i32 @bidi_get_type(i32 %80, i32 %81)
  store i32 %call132, i32* %type_of_next, align 4
  %82 = load i32, i32* %type_of_next, align 4
  %cmp133 = icmp eq i32 %82, 5
  br i1 %cmp133, label %if.then.138, label %lor.lhs.false.135

lor.lhs.false.135:                                ; preds = %cond.end.130
  %83 = load i32, i32* %next_char, align 4
  %call136 = call zeroext i1 @bidi_explicit_dir_char(i32 %83)
  br i1 %call136, label %if.then.138, label %if.end.146

if.then.138:                                      ; preds = %lor.lhs.false.135, %cond.end.130
  %84 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  call void @bidi_copy_it(%struct.bidi_it* %saved_it, %struct.bidi_it* %84)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.138
  %85 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %call139 = call i32 @bidi_resolve_explicit(%struct.bidi_it* %85)
  %86 = load i32, i32* %new_level, align 4
  %cmp140 = icmp eq i32 %call139, %86
  br i1 %cmp140, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %87 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type142 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %87, i32 0, i32 5
  %88 = load i32, i32* %type142, align 4
  %cmp143 = icmp eq i32 %88, 5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %89 = phi i1 [ false, %while.cond ], [ %cmp143, %land.rhs ]
  br i1 %89, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %90 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type145 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %90, i32 0, i32 5
  %91 = load i32, i32* %type145, align 4
  store i32 %91, i32* %type_of_next, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %92 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  call void @bidi_copy_it(%struct.bidi_it* %92, %struct.bidi_it* %saved_it)
  br label %if.end.146

if.end.146:                                       ; preds = %while.end, %lor.lhs.false.135
  %93 = load i32, i32* %type, align 4
  %cmp147 = icmp eq i32 %93, 17
  br i1 %cmp147, label %land.lhs.true.149, label %if.else.158

land.lhs.true.149:                                ; preds = %if.end.146
  %94 = load i32, i32* %type_of_next, align 4
  %cmp150 = icmp eq i32 %94, 3
  br i1 %cmp150, label %land.lhs.true.152, label %if.else.158

land.lhs.true.152:                                ; preds = %land.lhs.true.149
  %95 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %last_strong153 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %95, i32 0, i32 13
  %type154 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %last_strong153, i32 0, i32 1
  %96 = load i32, i32* %type154, align 4
  %cmp155 = icmp ne i32 %96, 7
  br i1 %cmp155, label %if.then.157, label %if.else.158

if.then.157:                                      ; preds = %land.lhs.true.152
  store i32 3, i32* %type, align 4
  br label %if.end.195

if.else.158:                                      ; preds = %land.lhs.true.152, %land.lhs.true.149, %if.end.146
  %97 = load i32, i32* %type, align 4
  %cmp159 = icmp eq i32 %97, 19
  br i1 %cmp159, label %if.then.161, label %if.end.194

if.then.161:                                      ; preds = %if.else.158
  %98 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %prev162 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %98, i32 0, i32 12
  %type163 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %prev162, i32 0, i32 1
  %99 = load i32, i32* %type163, align 4
  %cmp164 = icmp eq i32 %99, 4
  br i1 %cmp164, label %land.lhs.true.166, label %if.else.178

land.lhs.true.166:                                ; preds = %if.then.161
  %100 = load i32, i32* %type_of_next, align 4
  %cmp167 = icmp eq i32 %100, 4
  br i1 %cmp167, label %if.then.177, label %lor.lhs.false.169

lor.lhs.false.169:                                ; preds = %land.lhs.true.166
  %101 = load i32, i32* %type_of_next, align 4
  %cmp170 = icmp eq i32 %101, 3
  br i1 %cmp170, label %land.lhs.true.172, label %if.else.178

land.lhs.true.172:                                ; preds = %lor.lhs.false.169
  %102 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %last_strong173 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %102, i32 0, i32 13
  %type174 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %last_strong173, i32 0, i32 1
  %103 = load i32, i32* %type174, align 4
  %cmp175 = icmp eq i32 %103, 7
  br i1 %cmp175, label %if.then.177, label %if.else.178

if.then.177:                                      ; preds = %land.lhs.true.172, %land.lhs.true.166
  store i32 4, i32* %type, align 4
  br label %if.end.193

if.else.178:                                      ; preds = %land.lhs.true.172, %lor.lhs.false.169, %if.then.161
  %104 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %prev179 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %104, i32 0, i32 12
  %type180 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %prev179, i32 0, i32 1
  %105 = load i32, i32* %type180, align 4
  %cmp181 = icmp eq i32 %105, 3
  br i1 %cmp181, label %land.lhs.true.183, label %if.end.192

land.lhs.true.183:                                ; preds = %if.else.178
  %106 = load i32, i32* %type_of_next, align 4
  %cmp184 = icmp eq i32 %106, 3
  br i1 %cmp184, label %land.lhs.true.186, label %if.end.192

land.lhs.true.186:                                ; preds = %land.lhs.true.183
  %107 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %last_strong187 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %107, i32 0, i32 13
  %type188 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %last_strong187, i32 0, i32 1
  %108 = load i32, i32* %type188, align 4
  %cmp189 = icmp ne i32 %108, 7
  br i1 %cmp189, label %if.then.191, label %if.end.192

if.then.191:                                      ; preds = %land.lhs.true.186
  store i32 3, i32* %type, align 4
  br label %if.end.192

if.end.192:                                       ; preds = %if.then.191, %land.lhs.true.186, %land.lhs.true.183, %if.else.178
  br label %if.end.193

if.end.193:                                       ; preds = %if.end.192, %if.then.177
  br label %if.end.194

if.end.194:                                       ; preds = %if.end.193, %if.else.158
  br label %if.end.195

if.end.195:                                       ; preds = %if.end.194, %if.then.157
  br label %if.end.359

if.else.196:                                      ; preds = %lor.lhs.false.103, %lor.lhs.false.90
  %109 = load i32, i32* %type, align 4
  %cmp197 = icmp eq i32 %109, 18
  br i1 %cmp197, label %if.then.202, label %lor.lhs.false.199

lor.lhs.false.199:                                ; preds = %if.else.196
  %110 = load i32, i32* %type, align 4
  %cmp200 = icmp eq i32 %110, 5
  br i1 %cmp200, label %if.then.202, label %if.end.358

if.then.202:                                      ; preds = %lor.lhs.false.199, %if.else.196
  %111 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %prev203 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %111, i32 0, i32 12
  %type204 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %prev203, i32 0, i32 1
  %112 = load i32, i32* %type204, align 4
  %cmp205 = icmp eq i32 %112, 3
  br i1 %cmp205, label %if.then.207, label %if.else.208

if.then.207:                                      ; preds = %if.then.202
  store i32 3, i32* %type, align 4
  br label %if.end.357

if.else.208:                                      ; preds = %if.then.202
  %113 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %next_en_pos = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %113, i32 0, i32 19
  %114 = load i64, i64* %next_en_pos, align 8
  %115 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %charpos209 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %115, i32 0, i32 1
  %116 = load i64, i64* %charpos209, align 8
  %cmp210 = icmp sgt i64 %114, %116
  br i1 %cmp210, label %land.lhs.true.212, label %if.else.221

land.lhs.true.212:                                ; preds = %if.else.208
  %117 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %next_en_type = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %117, i32 0, i32 20
  %118 = load i32, i32* %next_en_type, align 4
  %cmp213 = icmp ne i32 %118, 5
  br i1 %cmp213, label %if.then.215, label %if.else.221

if.then.215:                                      ; preds = %land.lhs.true.212
  %119 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %next_en_type216 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %119, i32 0, i32 20
  %120 = load i32, i32* %next_en_type216, align 4
  %cmp217 = icmp eq i32 %120, 3
  br i1 %cmp217, label %if.then.219, label %if.end.220

if.then.219:                                      ; preds = %if.then.215
  store i32 3, i32* %type, align 4
  br label %if.end.220

if.end.220:                                       ; preds = %if.then.219, %if.then.215
  br label %if.end.356

if.else.221:                                      ; preds = %land.lhs.true.212, %if.else.208
  %121 = load i32, i32* %type, align 4
  %cmp222 = icmp eq i32 %121, 5
  br i1 %cmp222, label %land.lhs.true.224, label %if.else.244

land.lhs.true.224:                                ; preds = %if.else.221
  %122 = load i32, i32* %new_level, align 4
  %cmp225 = icmp eq i32 %122, 0
  br i1 %cmp225, label %land.lhs.true.227, label %if.else.244

land.lhs.true.227:                                ; preds = %land.lhs.true.224
  %123 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %ch = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %123, i32 0, i32 2
  %124 = load i32, i32* %ch, align 4
  %call228 = call zeroext i1 @bidi_explicit_dir_char(i32 %124)
  br i1 %call228, label %if.else.244, label %land.lhs.true.229

land.lhs.true.229:                                ; preds = %land.lhs.true.227
  %125 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %last_strong230 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %125, i32 0, i32 13
  %type231 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %last_strong230, i32 0, i32 1
  %126 = load i32, i32* %type231, align 4
  %cmp232 = icmp eq i32 %126, 1
  br i1 %cmp232, label %if.then.243, label %lor.lhs.false.234

lor.lhs.false.234:                                ; preds = %land.lhs.true.229
  %127 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %last_strong235 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %127, i32 0, i32 13
  %type236 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %last_strong235, i32 0, i32 1
  %128 = load i32, i32* %type236, align 4
  %cmp237 = icmp eq i32 %128, 0
  br i1 %cmp237, label %land.lhs.true.239, label %if.else.244

land.lhs.true.239:                                ; preds = %lor.lhs.false.234
  %129 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %sos240 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %129, i32 0, i32 21
  %130 = load i32, i32* %sos240, align 4
  %cmp241 = icmp eq i32 %130, 1
  br i1 %cmp241, label %if.then.243, label %if.else.244

if.then.243:                                      ; preds = %land.lhs.true.239, %land.lhs.true.229
  store i32 1, i32* %type, align 4
  br label %if.end.355

if.else.244:                                      ; preds = %land.lhs.true.239, %lor.lhs.false.234, %land.lhs.true.227, %land.lhs.true.224, %if.else.221
  %131 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %next_en_pos245 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %131, i32 0, i32 19
  %132 = load i64, i64* %next_en_pos245, align 8
  %cmp246 = icmp sge i64 %132, 0
  br i1 %cmp246, label %if.then.248, label %if.end.354

if.then.248:                                      ; preds = %if.else.244
  %133 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %charpos249 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %133, i32 0, i32 1
  %134 = load i64, i64* %charpos249, align 8
  %135 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %nchars250 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %135, i32 0, i32 3
  %136 = load i64, i64* %nchars250, align 8
  %add251 = add nsw i64 %134, %136
  store i64 %add251, i64* %en_pos, align 8
  %137 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %string253 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %137, i32 0, i32 27
  %lstring254 = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %string253, i32 0, i32 0
  %138 = load i64, i64* %lstring254, align 8
  %call255 = call zeroext i1 @STRINGP(i64 %138)
  br i1 %call255, label %cond.true.257, label %cond.false.261

cond.true.257:                                    ; preds = %if.then.248
  %139 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %string258 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %139, i32 0, i32 27
  %lstring259 = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %string258, i32 0, i32 0
  %140 = load i64, i64* %lstring259, align 8
  %call260 = call i8* @SDATA(i64 %140)
  br label %cond.end.264

cond.false.261:                                   ; preds = %if.then.248
  %141 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %string262 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %141, i32 0, i32 27
  %s263 = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %string262, i32 0, i32 1
  %142 = load i8*, i8** %s263, align 8
  br label %cond.end.264

cond.end.264:                                     ; preds = %cond.false.261, %cond.true.257
  %cond265 = phi i8* [ %call260, %cond.true.257 ], [ %142, %cond.false.261 ]
  store i8* %cond265, i8** %s252, align 8
  %143 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %nchars266 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %143, i32 0, i32 3
  %144 = load i64, i64* %nchars266, align 8
  %cmp267 = icmp sle i64 %144, 0
  br i1 %cmp267, label %if.then.269, label %if.end.270

if.then.269:                                      ; preds = %cond.end.264
  call void @emacs_abort() #4
  unreachable

if.end.270:                                       ; preds = %cond.end.264
  %145 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %charpos271 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %145, i32 0, i32 1
  %146 = load i64, i64* %charpos271, align 8
  %147 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %nchars272 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %147, i32 0, i32 3
  %148 = load i64, i64* %nchars272, align 8
  %add273 = add nsw i64 %146, %148
  %149 = load i64, i64* %eob, align 8
  %cmp274 = icmp sge i64 %add273, %149
  br i1 %cmp274, label %cond.true.276, label %cond.false.277

cond.true.276:                                    ; preds = %if.end.270
  br label %cond.end.288

cond.false.277:                                   ; preds = %if.end.270
  %150 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %bytepos278 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %150, i32 0, i32 0
  %151 = load i64, i64* %bytepos278, align 8
  %152 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %ch_len279 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %152, i32 0, i32 4
  %153 = load i64, i64* %ch_len279, align 8
  %add280 = add nsw i64 %151, %153
  %154 = load i8*, i8** %s252, align 8
  %155 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %string281 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %155, i32 0, i32 27
  %unibyte282 = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %string281, i32 0, i32 4
  %bf.load283 = load i8, i8* %unibyte282, align 8
  %bf.lshr284 = lshr i8 %bf.load283, 1
  %bf.clear285 = and i8 %bf.lshr284, 1
  %bf.cast286 = trunc i8 %bf.clear285 to i1
  %call287 = call i32 @bidi_char_at_pos(i64 %add280, i8* %154, i1 zeroext %bf.cast286)
  br label %cond.end.288

cond.end.288:                                     ; preds = %cond.false.277, %cond.true.276
  %cond289 = phi i32 [ -1, %cond.true.276 ], [ %call287, %cond.false.277 ]
  store i32 %cond289, i32* %next_char, align 4
  %156 = load i32, i32* %next_char, align 4
  %157 = load i32, i32* %override, align 4
  %call290 = call i32 @bidi_get_type(i32 %156, i32 %157)
  store i32 %call290, i32* %type_of_next, align 4
  %158 = load i32, i32* %type_of_next, align 4
  %cmp291 = icmp eq i32 %158, 18
  br i1 %cmp291, label %if.then.299, label %lor.lhs.false.293

lor.lhs.false.293:                                ; preds = %cond.end.288
  %159 = load i32, i32* %type_of_next, align 4
  %cmp294 = icmp eq i32 %159, 5
  br i1 %cmp294, label %if.then.299, label %lor.lhs.false.296

lor.lhs.false.296:                                ; preds = %lor.lhs.false.293
  %160 = load i32, i32* %next_char, align 4
  %call297 = call zeroext i1 @bidi_explicit_dir_char(i32 %160)
  br i1 %call297, label %if.then.299, label %if.end.329

if.then.299:                                      ; preds = %lor.lhs.false.296, %lor.lhs.false.293, %cond.end.288
  %161 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  call void @bidi_copy_it(%struct.bidi_it* %saved_it, %struct.bidi_it* %161)
  br label %while.cond.300

while.cond.300:                                   ; preds = %while.body.312, %if.then.299
  %162 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %call301 = call i32 @bidi_resolve_explicit(%struct.bidi_it* %162)
  %163 = load i32, i32* %new_level, align 4
  %cmp302 = icmp eq i32 %call301, %163
  br i1 %cmp302, label %land.rhs.304, label %land.end.311

land.rhs.304:                                     ; preds = %while.cond.300
  %164 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type305 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %164, i32 0, i32 5
  %165 = load i32, i32* %type305, align 4
  %cmp306 = icmp eq i32 %165, 5
  br i1 %cmp306, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs.304
  %166 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type308 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %166, i32 0, i32 5
  %167 = load i32, i32* %type308, align 4
  %cmp309 = icmp eq i32 %167, 18
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs.304
  %168 = phi i1 [ true, %land.rhs.304 ], [ %cmp309, %lor.rhs ]
  br label %land.end.311

land.end.311:                                     ; preds = %lor.end, %while.cond.300
  %169 = phi i1 [ false, %while.cond.300 ], [ %168, %lor.end ]
  br i1 %169, label %while.body.312, label %while.end.314

while.body.312:                                   ; preds = %land.end.311
  %170 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type313 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %170, i32 0, i32 5
  %171 = load i32, i32* %type313, align 4
  store i32 %171, i32* %type_of_next, align 4
  br label %while.cond.300

while.end.314:                                    ; preds = %land.end.311
  %172 = load i32, i32* %type, align 4
  %cmp315 = icmp eq i32 %172, 5
  br i1 %cmp315, label %land.lhs.true.317, label %if.else.326

land.lhs.true.317:                                ; preds = %while.end.314
  %173 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %charpos318 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %173, i32 0, i32 1
  %174 = load i64, i64* %charpos318, align 8
  %charpos319 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %saved_it, i32 0, i32 1
  %175 = load i64, i64* %charpos319, align 8
  %nchars320 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %saved_it, i32 0, i32 3
  %176 = load i64, i64* %nchars320, align 8
  %add321 = add nsw i64 %175, %176
  %cmp322 = icmp eq i64 %174, %add321
  br i1 %cmp322, label %if.then.324, label %if.else.326

if.then.324:                                      ; preds = %land.lhs.true.317
  %charpos325 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %saved_it, i32 0, i32 1
  %177 = load i64, i64* %charpos325, align 8
  store i64 %177, i64* %en_pos, align 8
  %178 = load i32, i32* %type, align 4
  store i32 %178, i32* %type_of_next, align 4
  br label %if.end.328

if.else.326:                                      ; preds = %land.lhs.true.317, %while.end.314
  %179 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %charpos327 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %179, i32 0, i32 1
  %180 = load i64, i64* %charpos327, align 8
  store i64 %180, i64* %en_pos, align 8
  br label %if.end.328

if.end.328:                                       ; preds = %if.else.326, %if.then.324
  %181 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  call void @bidi_copy_it(%struct.bidi_it* %181, %struct.bidi_it* %saved_it)
  br label %if.end.329

if.end.329:                                       ; preds = %if.end.328, %lor.lhs.false.296
  %182 = load i64, i64* %en_pos, align 8
  %183 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %next_en_pos330 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %183, i32 0, i32 19
  store i64 %182, i64* %next_en_pos330, align 8
  %184 = load i32, i32* %type_of_next, align 4
  %cmp331 = icmp eq i32 %184, 3
  br i1 %cmp331, label %if.then.333, label %if.else.346

if.then.333:                                      ; preds = %if.end.329
  %185 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %last_strong334 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %185, i32 0, i32 13
  %type335 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %last_strong334, i32 0, i32 1
  %186 = load i32, i32* %type335, align 4
  %cmp336 = icmp eq i32 %186, 7
  br i1 %cmp336, label %if.then.338, label %if.else.339

if.then.338:                                      ; preds = %if.then.333
  store i32 4, i32* %type_of_next, align 4
  br label %if.end.345

if.else.339:                                      ; preds = %if.then.333
  %187 = load i32, i32* %type, align 4
  %cmp340 = icmp eq i32 %187, 5
  br i1 %cmp340, label %if.then.342, label %if.else.343

if.then.342:                                      ; preds = %if.else.339
  store i32 23, i32* %type, align 4
  br label %if.end.344

if.else.343:                                      ; preds = %if.else.339
  store i32 3, i32* %type, align 4
  br label %if.end.344

if.end.344:                                       ; preds = %if.else.343, %if.then.342
  br label %if.end.345

if.end.345:                                       ; preds = %if.end.344, %if.then.338
  br label %if.end.352

if.else.346:                                      ; preds = %if.end.329
  %188 = load i32, i32* %type_of_next, align 4
  %cmp347 = icmp eq i32 %188, 6
  br i1 %cmp347, label %if.then.349, label %if.end.351

if.then.349:                                      ; preds = %if.else.346
  %189 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %next_en_pos350 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %189, i32 0, i32 19
  store i64 -1, i64* %next_en_pos350, align 8
  br label %if.end.351

if.end.351:                                       ; preds = %if.then.349, %if.else.346
  br label %if.end.352

if.end.352:                                       ; preds = %if.end.351, %if.end.345
  %190 = load i32, i32* %type_of_next, align 4
  %191 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %next_en_type353 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %191, i32 0, i32 20
  store i32 %190, i32* %next_en_type353, align 4
  br label %if.end.354

if.end.354:                                       ; preds = %if.end.352, %if.else.244
  br label %if.end.355

if.end.355:                                       ; preds = %if.end.354, %if.then.243
  br label %if.end.356

if.end.356:                                       ; preds = %if.end.355, %if.end.220
  br label %if.end.357

if.end.357:                                       ; preds = %if.end.356, %if.then.207
  br label %if.end.358

if.end.358:                                       ; preds = %if.end.357, %lor.lhs.false.199
  br label %if.end.359

if.end.359:                                       ; preds = %if.end.358, %if.end.195
  br label %if.end.360

if.end.360:                                       ; preds = %if.end.359, %if.then.77
  br label %if.end.361

if.end.361:                                       ; preds = %if.end.360, %if.then.73
  br label %if.end.362

if.end.362:                                       ; preds = %if.end.361, %if.then.32
  br label %if.end.363

if.end.363:                                       ; preds = %if.end.362, %if.then.29
  %192 = load i32, i32* %type, align 4
  %cmp364 = icmp eq i32 %192, 17
  br i1 %cmp364, label %if.then.390, label %lor.lhs.false.366

lor.lhs.false.366:                                ; preds = %if.end.363
  %193 = load i32, i32* %type, align 4
  %cmp367 = icmp eq i32 %193, 18
  br i1 %cmp367, label %if.then.390, label %lor.lhs.false.369

lor.lhs.false.369:                                ; preds = %lor.lhs.false.366
  %194 = load i32, i32* %type, align 4
  %cmp370 = icmp eq i32 %194, 19
  br i1 %cmp370, label %if.then.390, label %lor.lhs.false.372

lor.lhs.false.372:                                ; preds = %lor.lhs.false.369
  %195 = load i32, i32* %type, align 4
  %cmp373 = icmp eq i32 %195, 5
  br i1 %cmp373, label %land.lhs.true.375, label %if.end.391

land.lhs.true.375:                                ; preds = %lor.lhs.false.372
  %196 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %prev376 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %196, i32 0, i32 12
  %type377 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %prev376, i32 0, i32 1
  %197 = load i32, i32* %type377, align 4
  %cmp378 = icmp eq i32 %197, 19
  br i1 %cmp378, label %if.then.390, label %lor.lhs.false.380

lor.lhs.false.380:                                ; preds = %land.lhs.true.375
  %198 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %prev381 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %198, i32 0, i32 12
  %type382 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %prev381, i32 0, i32 1
  %199 = load i32, i32* %type382, align 4
  %cmp383 = icmp eq i32 %199, 17
  br i1 %cmp383, label %if.then.390, label %lor.lhs.false.385

lor.lhs.false.385:                                ; preds = %lor.lhs.false.380
  %200 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %prev386 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %200, i32 0, i32 12
  %type387 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %prev386, i32 0, i32 1
  %201 = load i32, i32* %type387, align 4
  %cmp388 = icmp eq i32 %201, 18
  br i1 %cmp388, label %if.then.390, label %if.end.391

if.then.390:                                      ; preds = %lor.lhs.false.385, %lor.lhs.false.380, %land.lhs.true.375, %lor.lhs.false.369, %lor.lhs.false.366, %if.end.363
  store i32 23, i32* %type, align 4
  br label %if.end.391

if.end.391:                                       ; preds = %if.then.390, %lor.lhs.false.385, %lor.lhs.false.372
  %202 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type_after_wn392 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %202, i32 0, i32 6
  %203 = load i32, i32* %type_after_wn392, align 4
  %cmp393 = icmp eq i32 %203, 0
  br i1 %cmp393, label %if.then.395, label %if.end.397

if.then.395:                                      ; preds = %if.end.391
  %204 = load i32, i32* %type, align 4
  %205 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type_after_wn396 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %205, i32 0, i32 6
  store i32 %204, i32* %type_after_wn396, align 4
  br label %if.end.397

if.end.397:                                       ; preds = %if.then.395, %if.end.391
  %206 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type_after_wn398 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %206, i32 0, i32 6
  %207 = load i32, i32* %type_after_wn398, align 4
  call void @bidi_check_type(i32 %207)
  %208 = load i32, i32* %type, align 4
  %cmp399 = icmp eq i32 %208, 3
  br i1 %cmp399, label %if.then.401, label %if.end.417

if.then.401:                                      ; preds = %if.end.397
  %209 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %last_strong402 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %209, i32 0, i32 13
  %type403 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %last_strong402, i32 0, i32 1
  %210 = load i32, i32* %type403, align 4
  %cmp404 = icmp eq i32 %210, 1
  br i1 %cmp404, label %if.then.415, label %lor.lhs.false.406

lor.lhs.false.406:                                ; preds = %if.then.401
  %211 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %last_strong407 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %211, i32 0, i32 13
  %type408 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %last_strong407, i32 0, i32 1
  %212 = load i32, i32* %type408, align 4
  %cmp409 = icmp eq i32 %212, 0
  br i1 %cmp409, label %land.lhs.true.411, label %if.end.416

land.lhs.true.411:                                ; preds = %lor.lhs.false.406
  %213 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %sos412 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %213, i32 0, i32 21
  %214 = load i32, i32* %sos412, align 4
  %cmp413 = icmp eq i32 %214, 1
  br i1 %cmp413, label %if.then.415, label %if.end.416

if.then.415:                                      ; preds = %land.lhs.true.411, %if.then.401
  store i32 1, i32* %type, align 4
  br label %if.end.416

if.end.416:                                       ; preds = %if.then.415, %land.lhs.true.411, %lor.lhs.false.406
  br label %if.end.417

if.end.417:                                       ; preds = %if.end.416, %if.end.397
  %215 = load i32, i32* %type, align 4
  %216 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type418 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %216, i32 0, i32 5
  store i32 %215, i32* %type418, align 4
  %217 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type419 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %217, i32 0, i32 5
  %218 = load i32, i32* %type419, align 4
  call void @bidi_check_type(i32 %218)
  %219 = load i32, i32* %type, align 4
  ret i32 %219
}

; Function Attrs: nounwind uwtable
define void @bidi_dump_cached_states() #0 {
entry:
  %i = alloca i64, align 8
  %ndigits = alloca i32, align 4
  store i32 1, i32* %ndigits, align 4
  %0 = load i64, i64* @bidi_cache_idx, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %3 = load i64, i64* @bidi_cache_idx, align 8
  %4 = load i64, i64* @bidi_cache_idx, align 8
  %cmp1 = icmp eq i64 %4, 1
  %cond = select i1 %cmp1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0)
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0), i64 %3, i8* %cond)
  %5 = load i64, i64* @bidi_cache_idx, align 8
  %sub = sub nsw i64 %5, 1
  %6 = load %struct.bidi_it*, %struct.bidi_it** @bidi_cache, align 8
  %arrayidx = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %6, i64 %sub
  %charpos = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %arrayidx, i32 0, i32 1
  %7 = load i64, i64* %charpos, align 8
  store i64 %7, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i64, i64* %i, align 8
  %cmp3 = icmp sgt i64 %8, 0
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %ndigits, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %ndigits, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i64, i64* %i, align 8
  %div = sdiv i64 %10, 10
  store i64 %div, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call4 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), %struct._IO_FILE* %11)
  store i64 0, i64* %i, align 8
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.10, %for.end
  %12 = load i64, i64* %i, align 8
  %13 = load i64, i64* @bidi_cache_idx, align 8
  %cmp6 = icmp slt i64 %12, %13
  br i1 %cmp6, label %for.body.7, label %for.end.12

for.body.7:                                       ; preds = %for.cond.5
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = load i32, i32* %ndigits, align 4
  %16 = load i64, i64* %i, align 8
  %17 = load %struct.bidi_it*, %struct.bidi_it** @bidi_cache, align 8
  %arrayidx8 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %17, i64 %16
  %ch = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %arrayidx8, i32 0, i32 2
  %18 = load i32, i32* %ch, align 4
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 %15, i32 %18)
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.body.7
  %19 = load i64, i64* %i, align 8
  %inc11 = add nsw i64 %19, 1
  store i64 %inc11, i64* %i, align 8
  br label %for.cond.5

for.end.12:                                       ; preds = %for.cond.5
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call13 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), %struct._IO_FILE* %20)
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call14 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), %struct._IO_FILE* %21)
  store i64 0, i64* %i, align 8
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.20, %for.end.12
  %22 = load i64, i64* %i, align 8
  %23 = load i64, i64* @bidi_cache_idx, align 8
  %cmp16 = icmp slt i64 %22, %23
  br i1 %cmp16, label %for.body.17, label %for.end.22

for.body.17:                                      ; preds = %for.cond.15
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %25 = load i32, i32* %ndigits, align 4
  %26 = load i64, i64* %i, align 8
  %27 = load %struct.bidi_it*, %struct.bidi_it** @bidi_cache, align 8
  %arrayidx18 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %27, i64 %26
  %resolved_level = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %arrayidx18, i32 0, i32 8
  %28 = load i8, i8* %resolved_level, align 1
  %conv = sext i8 %28 to i32
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i32 %25, i32 %conv)
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.body.17
  %29 = load i64, i64* %i, align 8
  %inc21 = add nsw i64 %29, 1
  store i64 %inc21, i64* %i, align 8
  br label %for.cond.15

for.end.22:                                       ; preds = %for.cond.15
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call23 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), %struct._IO_FILE* %30)
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call24 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), %struct._IO_FILE* %31)
  store i64 0, i64* %i, align 8
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.32, %for.end.22
  %32 = load i64, i64* %i, align 8
  %33 = load i64, i64* @bidi_cache_idx, align 8
  %cmp26 = icmp slt i64 %32, %33
  br i1 %cmp26, label %for.body.28, label %for.end.34

for.body.28:                                      ; preds = %for.cond.25
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %35 = load i32, i32* %ndigits, align 4
  %36 = load i64, i64* %i, align 8
  %37 = load %struct.bidi_it*, %struct.bidi_it** @bidi_cache, align 8
  %arrayidx29 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %37, i64 %36
  %charpos30 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %arrayidx29, i32 0, i32 1
  %38 = load i64, i64* %charpos30, align 8
  %call31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 %35, i64 %38)
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.body.28
  %39 = load i64, i64* %i, align 8
  %inc33 = add nsw i64 %39, 1
  store i64 %inc33, i64* %i, align 8
  br label %for.cond.25

for.end.34:                                       ; preds = %for.cond.25
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call35 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), %struct._IO_FILE* %40)
  br label %return

return:                                           ; preds = %for.end.34, %if.then
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare i32 @fputs(i8*, %struct._IO_FILE*) #2

declare i8* @xpalloc(i8*, i64*, i64, i64, i64) #2

; Function Attrs: nounwind uwtable
define internal void @bidi_cache_reset_to(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i64, i64* @bidi_cache_start, align 8
  %1 = load i32, i32* %n.addr, align 4
  %conv = sext i32 %1 to i64
  %add = add nsw i64 %0, %conv
  store i64 %add, i64* @bidi_cache_idx, align 8
  store i64 -1, i64* @bidi_cache_last_idx, align 8
  ret void
}

declare i64 @uniprop_table(i64) #2

declare i64 @intern(i8*) #2

declare void @staticpro(i64*) #2

declare i64 @Fsymbol_value(i64) #2

declare i64 @build_string(i8*) #2

declare i8* @xrealloc(i8*, i64) #2

declare i32 @string_char(i8*, i8**, i32*) #2

; Function Attrs: nounwind uwtable
define internal %struct.region_cache* @bidi_paragraph_cache_on_off() #0 {
entry:
  %retval = alloca %struct.region_cache*, align 8
  %cache_buffer = alloca %struct.buffer*, align 8
  %indirect_p = alloca i8, align 1
  %0 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  store %struct.buffer* %0, %struct.buffer** %cache_buffer, align 8
  store i8 0, i8* %indirect_p, align 1
  %1 = load %struct.buffer*, %struct.buffer** %cache_buffer, align 8
  %base_buffer = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 81
  %2 = load %struct.buffer*, %struct.buffer** %base_buffer, align 8
  %tobool = icmp ne %struct.buffer* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.buffer*, %struct.buffer** %cache_buffer, align 8
  %base_buffer1 = getelementptr inbounds %struct.buffer, %struct.buffer* %3, i32 0, i32 81
  %4 = load %struct.buffer*, %struct.buffer** %base_buffer1, align 8
  store %struct.buffer* %4, %struct.buffer** %cache_buffer, align 8
  store i8 1, i8* %indirect_p, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cache_long_scans_ = getelementptr inbounds %struct.buffer, %struct.buffer* %5, i32 0, i32 43
  %6 = load i64, i64* %cache_long_scans_, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %6, %call
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %7 = load i8, i8* %indirect_p, align 1
  %tobool3 = trunc i8 %7 to i1
  br i1 %tobool3, label %lor.lhs.false, label %if.then.7

lor.lhs.false:                                    ; preds = %if.then.2
  %8 = load %struct.buffer*, %struct.buffer** %cache_buffer, align 8
  %cache_long_scans_4 = getelementptr inbounds %struct.buffer, %struct.buffer* %8, i32 0, i32 43
  %9 = load i64, i64* %cache_long_scans_4, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp6 = icmp eq i64 %9, %call5
  br i1 %cmp6, label %if.then.7, label %if.end.13

if.then.7:                                        ; preds = %lor.lhs.false, %if.then.2
  %10 = load %struct.buffer*, %struct.buffer** %cache_buffer, align 8
  %bidi_paragraph_cache = getelementptr inbounds %struct.buffer, %struct.buffer* %10, i32 0, i32 93
  %11 = load %struct.region_cache*, %struct.region_cache** %bidi_paragraph_cache, align 8
  %tobool8 = icmp ne %struct.region_cache* %11, null
  br i1 %tobool8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.then.7
  %12 = load %struct.buffer*, %struct.buffer** %cache_buffer, align 8
  %bidi_paragraph_cache10 = getelementptr inbounds %struct.buffer, %struct.buffer* %12, i32 0, i32 93
  %13 = load %struct.region_cache*, %struct.region_cache** %bidi_paragraph_cache10, align 8
  call void @free_region_cache(%struct.region_cache* %13)
  %14 = load %struct.buffer*, %struct.buffer** %cache_buffer, align 8
  %bidi_paragraph_cache11 = getelementptr inbounds %struct.buffer, %struct.buffer* %14, i32 0, i32 93
  store %struct.region_cache* null, %struct.region_cache** %bidi_paragraph_cache11, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %if.then.7
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %lor.lhs.false
  store %struct.region_cache* null, %struct.region_cache** %retval
  br label %return

if.else:                                          ; preds = %if.end
  %15 = load i8, i8* %indirect_p, align 1
  %tobool14 = trunc i8 %15 to i1
  br i1 %tobool14, label %lor.lhs.false.15, label %if.then.19

lor.lhs.false.15:                                 ; preds = %if.else
  %16 = load %struct.buffer*, %struct.buffer** %cache_buffer, align 8
  %cache_long_scans_16 = getelementptr inbounds %struct.buffer, %struct.buffer* %16, i32 0, i32 43
  %17 = load i64, i64* %cache_long_scans_16, align 8
  %call17 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp18 = icmp eq i64 %17, %call17
  br i1 %cmp18, label %if.end.26, label %if.then.19

if.then.19:                                       ; preds = %lor.lhs.false.15, %if.else
  %18 = load %struct.buffer*, %struct.buffer** %cache_buffer, align 8
  %bidi_paragraph_cache20 = getelementptr inbounds %struct.buffer, %struct.buffer* %18, i32 0, i32 93
  %19 = load %struct.region_cache*, %struct.region_cache** %bidi_paragraph_cache20, align 8
  %tobool21 = icmp ne %struct.region_cache* %19, null
  br i1 %tobool21, label %if.end.25, label %if.then.22

if.then.22:                                       ; preds = %if.then.19
  %call23 = call %struct.region_cache* @new_region_cache()
  %20 = load %struct.buffer*, %struct.buffer** %cache_buffer, align 8
  %bidi_paragraph_cache24 = getelementptr inbounds %struct.buffer, %struct.buffer* %20, i32 0, i32 93
  store %struct.region_cache* %call23, %struct.region_cache** %bidi_paragraph_cache24, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.22, %if.then.19
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %lor.lhs.false.15
  %21 = load %struct.buffer*, %struct.buffer** %cache_buffer, align 8
  %bidi_paragraph_cache27 = getelementptr inbounds %struct.buffer, %struct.buffer* %21, i32 0, i32 93
  %22 = load %struct.region_cache*, %struct.region_cache** %bidi_paragraph_cache27, align 8
  store %struct.region_cache* %22, %struct.region_cache** %retval
  br label %return

return:                                           ; preds = %if.end.26, %if.end.13
  %23 = load %struct.region_cache*, %struct.region_cache** %retval
  ret %struct.region_cache* %23
}

declare i64 @fast_looking_at(i64, i64, i64, i64, i64, i64) #2

declare i32 @region_cache_backward(%struct.buffer*, %struct.region_cache*, i64, i64*) #2

declare i64 @buf_charpos_to_bytepos(%struct.buffer*, i64) #2

declare i64 @find_newline_no_quit(i64, i64, i64, i64*) #2

declare void @know_region_cache(%struct.buffer*, %struct.region_cache*, i64, i64) #2

declare i64 @clip_to_bounds(i64, i64, i64) #2

declare void @free_region_cache(%struct.region_cache*) #2

declare %struct.region_cache* @new_region_cache() #2

; Function Attrs: nounwind uwtable
define internal i32 @bidi_fetch_char_skip_isolates(i64 %charpos, i64 %bytepos, i64* %disp_pos, i32* %disp_prop, %struct.bidi_string_data* %string, %struct.window* %w, i1 zeroext %frame_window_p, i64* %ch_len, i64* %nchars) #0 {
entry:
  %charpos.addr = alloca i64, align 8
  %bytepos.addr = alloca i64, align 8
  %disp_pos.addr = alloca i64*, align 8
  %disp_prop.addr = alloca i32*, align 8
  %string.addr = alloca %struct.bidi_string_data*, align 8
  %w.addr = alloca %struct.window*, align 8
  %frame_window_p.addr = alloca i8, align 1
  %ch_len.addr = alloca i64*, align 8
  %nchars.addr = alloca i64*, align 8
  %orig_charpos = alloca i64, align 8
  %orig_bytepos = alloca i64, align 8
  %ch = alloca i32, align 4
  %ch_type = alloca i32, align 4
  %level = alloca i64, align 8
  store i64 %charpos, i64* %charpos.addr, align 8
  store i64 %bytepos, i64* %bytepos.addr, align 8
  store i64* %disp_pos, i64** %disp_pos.addr, align 8
  store i32* %disp_prop, i32** %disp_prop.addr, align 8
  store %struct.bidi_string_data* %string, %struct.bidi_string_data** %string.addr, align 8
  store %struct.window* %w, %struct.window** %w.addr, align 8
  %frombool = zext i1 %frame_window_p to i8
  store i8 %frombool, i8* %frame_window_p.addr, align 1
  store i64* %ch_len, i64** %ch_len.addr, align 8
  store i64* %nchars, i64** %nchars.addr, align 8
  %0 = load i64, i64* %charpos.addr, align 8
  store i64 %0, i64* %orig_charpos, align 8
  %1 = load i64, i64* %bytepos.addr, align 8
  store i64 %1, i64* %orig_bytepos, align 8
  %2 = load i64, i64* %charpos.addr, align 8
  %3 = load i64, i64* %bytepos.addr, align 8
  %4 = load i64*, i64** %disp_pos.addr, align 8
  %5 = load i32*, i32** %disp_prop.addr, align 8
  %6 = load %struct.bidi_string_data*, %struct.bidi_string_data** %string.addr, align 8
  %7 = load %struct.window*, %struct.window** %w.addr, align 8
  %8 = load i8, i8* %frame_window_p.addr, align 1
  %tobool = trunc i8 %8 to i1
  %9 = load i64*, i64** %ch_len.addr, align 8
  %10 = load i64*, i64** %nchars.addr, align 8
  %call = call i32 @bidi_fetch_char(i64 %2, i64 %3, i64* %4, i32* %5, %struct.bidi_string_data* %6, %struct.window* %7, i1 zeroext %tobool, i64* %9, i64* %10)
  store i32 %call, i32* %ch, align 4
  %11 = load i32, i32* %ch, align 4
  %call1 = call i32 @bidi_get_type(i32 %11, i32 0)
  store i32 %call1, i32* %ch_type, align 4
  store i64 0, i64* %level, align 8
  %12 = load i32, i32* %ch_type, align 4
  %cmp = icmp eq i32 %12, 13
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %13 = load i32, i32* %ch_type, align 4
  %cmp2 = icmp eq i32 %13, 14
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %14 = load i32, i32* %ch_type, align 4
  %cmp4 = icmp eq i32 %14, 15
  br i1 %cmp4, label %if.then, label %if.end.21

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %entry
  %15 = load i64, i64* %level, align 8
  %inc = add nsw i64 %15, 1
  store i64 %inc, i64* %level, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.20, %if.then
  %16 = load i64, i64* %level, align 8
  %cmp5 = icmp sgt i64 %16, 0
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %17 = load i32, i32* %ch_type, align 4
  %cmp6 = icmp ne i32 %17, 6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %18 = phi i1 [ false, %while.cond ], [ %cmp6, %land.rhs ]
  br i1 %18, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %19 = load i64*, i64** %nchars.addr, align 8
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %charpos.addr, align 8
  %add = add nsw i64 %21, %20
  store i64 %add, i64* %charpos.addr, align 8
  %22 = load i64*, i64** %ch_len.addr, align 8
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %bytepos.addr, align 8
  %add7 = add nsw i64 %24, %23
  store i64 %add7, i64* %bytepos.addr, align 8
  %25 = load i64, i64* %charpos.addr, align 8
  %26 = load i64, i64* %bytepos.addr, align 8
  %27 = load i64*, i64** %disp_pos.addr, align 8
  %28 = load i32*, i32** %disp_prop.addr, align 8
  %29 = load %struct.bidi_string_data*, %struct.bidi_string_data** %string.addr, align 8
  %30 = load %struct.window*, %struct.window** %w.addr, align 8
  %31 = load i8, i8* %frame_window_p.addr, align 1
  %tobool8 = trunc i8 %31 to i1
  %32 = load i64*, i64** %ch_len.addr, align 8
  %33 = load i64*, i64** %nchars.addr, align 8
  %call9 = call i32 @bidi_fetch_char(i64 %25, i64 %26, i64* %27, i32* %28, %struct.bidi_string_data* %29, %struct.window* %30, i1 zeroext %tobool8, i64* %32, i64* %33)
  store i32 %call9, i32* %ch, align 4
  %34 = load i32, i32* %ch, align 4
  %call10 = call i32 @bidi_get_type(i32 %34, i32 0)
  store i32 %call10, i32* %ch_type, align 4
  %35 = load i32, i32* %ch_type, align 4
  %cmp11 = icmp eq i32 %35, 13
  br i1 %cmp11, label %if.then.16, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %while.body
  %36 = load i32, i32* %ch_type, align 4
  %cmp13 = icmp eq i32 %36, 14
  br i1 %cmp13, label %if.then.16, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false.12
  %37 = load i32, i32* %ch_type, align 4
  %cmp15 = icmp eq i32 %37, 15
  br i1 %cmp15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %lor.lhs.false.14, %lor.lhs.false.12, %while.body
  %38 = load i64, i64* %level, align 8
  %inc17 = add nsw i64 %38, 1
  store i64 %inc17, i64* %level, align 8
  br label %if.end.20

if.else:                                          ; preds = %lor.lhs.false.14
  %39 = load i32, i32* %ch_type, align 4
  %cmp18 = icmp eq i32 %39, 16
  br i1 %cmp18, label %if.then.19, label %if.end

if.then.19:                                       ; preds = %if.else
  %40 = load i64, i64* %level, align 8
  %dec = add nsw i64 %40, -1
  store i64 %dec, i64* %level, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.19, %if.else
  br label %if.end.20

if.end.20:                                        ; preds = %if.end, %if.then.16
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end.21

if.end.21:                                        ; preds = %while.end, %lor.lhs.false.3
  %41 = load i64, i64* %charpos.addr, align 8
  %42 = load i64, i64* %orig_charpos, align 8
  %sub = sub nsw i64 %41, %42
  %43 = load i64*, i64** %nchars.addr, align 8
  %44 = load i64, i64* %43, align 8
  %add22 = add nsw i64 %44, %sub
  store i64 %add22, i64* %43, align 8
  %45 = load i64, i64* %bytepos.addr, align 8
  %46 = load i64, i64* %orig_bytepos, align 8
  %sub23 = sub nsw i64 %45, %46
  %47 = load i64*, i64** %ch_len.addr, align 8
  %48 = load i64, i64* %47, align 8
  %add24 = add nsw i64 %48, %sub23
  store i64 %add24, i64* %47, align 8
  %49 = load i32, i32* %ch, align 4
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define internal i32 @bidi_get_type(i32 %ch, i32 %override) #0 {
entry:
  %retval = alloca i32, align 4
  %ch.addr = alloca i32, align 4
  %override.addr = alloca i32, align 4
  %default_type = alloca i32, align 4
  store i32 %ch, i32* %ch.addr, align 4
  store i32 %override, i32* %override.addr, align 4
  %0 = load i32, i32* %ch.addr, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 6, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %ch.addr, align 4
  %cmp1 = icmp slt i32 %1, 0
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i32, i32* %ch.addr, align 4
  %cmp2 = icmp sgt i32 %2, 4194303
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  call void @emacs_abort() #4
  unreachable

if.end.4:                                         ; preds = %lor.lhs.false
  %3 = load i64, i64* @bidi_type_table, align 8
  %4 = load i32, i32* %ch.addr, align 4
  %call = call i64 @CHAR_TABLE_REF(i64 %3, i32 %4)
  %shr = ashr i64 %call, 2
  %conv = trunc i64 %shr to i32
  store i32 %conv, i32* %default_type, align 4
  %5 = load i32, i32* %default_type, align 4
  %cmp5 = icmp eq i32 %5, 0
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  call void @emacs_abort() #4
  unreachable

if.end.8:                                         ; preds = %if.end.4
  %6 = load i32, i32* %default_type, align 4
  switch i32 %6, label %sw.default [
    i32 5, label %sw.bb
    i32 6, label %sw.bb
    i32 8, label %sw.bb
    i32 9, label %sw.bb
    i32 10, label %sw.bb
    i32 11, label %sw.bb
    i32 12, label %sw.bb
    i32 13, label %sw.bb
    i32 14, label %sw.bb
    i32 15, label %sw.bb
    i32 16, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end.8, %if.end.8, %if.end.8, %if.end.8, %if.end.8, %if.end.8, %if.end.8, %if.end.8, %if.end.8, %if.end.8, %if.end.8
  %7 = load i32, i32* %default_type, align 4
  store i32 %7, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.end.8
  %8 = load i32, i32* %override.addr, align 4
  %cmp9 = icmp eq i32 %8, 1
  br i1 %cmp9, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %sw.default
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %sw.default
  %9 = load i32, i32* %override.addr, align 4
  %cmp12 = icmp eq i32 %9, 2
  br i1 %cmp12, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %if.else
  store i32 2, i32* %retval
  br label %return

if.else.15:                                       ; preds = %if.else
  %10 = load i32, i32* %default_type, align 4
  store i32 %10, i32* %retval
  br label %return

return:                                           ; preds = %if.else.15, %if.then.14, %if.then.11, %sw.bb, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @bidi_get_category(i32 %type) #0 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4
  %0 = load i32, i32* %type.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.1
    i32 7, label %sw.bb.1
    i32 3, label %sw.bb.2
    i32 17, label %sw.bb.2
    i32 18, label %sw.bb.2
    i32 4, label %sw.bb.2
    i32 19, label %sw.bb.2
    i32 20, label %sw.bb.2
    i32 5, label %sw.bb.2
    i32 6, label %sw.bb.3
    i32 21, label %sw.bb.3
    i32 22, label %sw.bb.3
    i32 23, label %sw.bb.3
    i32 8, label %sw.bb.4
    i32 9, label %sw.bb.4
    i32 10, label %sw.bb.4
    i32 11, label %sw.bb.4
    i32 12, label %sw.bb.4
    i32 13, label %sw.bb.4
    i32 14, label %sw.bb.4
    i32 15, label %sw.bb.4
    i32 16, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry, %entry, %entry
  store i32 3, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry
  store i32 2, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %entry, %entry, %entry, %entry
  store i32 1, i32* %retval
  br label %return

sw.bb.4:                                          ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  store i32 4, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  call void @emacs_abort() #4
  unreachable

return:                                           ; preds = %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %1 = load i32, i32* %retval
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define internal i32 @bidi_fetch_char(i64 %charpos, i64 %bytepos, i64* %disp_pos, i32* %disp_prop, %struct.bidi_string_data* %string, %struct.window* %w, i1 zeroext %frame_window_p, i64* %ch_len, i64* %nchars) #0 {
entry:
  %charpos.addr = alloca i64, align 8
  %bytepos.addr = alloca i64, align 8
  %disp_pos.addr = alloca i64*, align 8
  %disp_prop.addr = alloca i32*, align 8
  %string.addr = alloca %struct.bidi_string_data*, align 8
  %w.addr = alloca %struct.window*, align 8
  %frame_window_p.addr = alloca i8, align 1
  %ch_len.addr = alloca i64*, align 8
  %nchars.addr = alloca i64*, align 8
  %ch = alloca i32, align 4
  %endpos = alloca i64, align 8
  %pos = alloca %struct.text_pos, align 8
  %len = alloca i32, align 4
  %disp_end_pos = alloca i64, align 8
  store i64 %charpos, i64* %charpos.addr, align 8
  store i64 %bytepos, i64* %bytepos.addr, align 8
  store i64* %disp_pos, i64** %disp_pos.addr, align 8
  store i32* %disp_prop, i32** %disp_prop.addr, align 8
  store %struct.bidi_string_data* %string, %struct.bidi_string_data** %string.addr, align 8
  store %struct.window* %w, %struct.window** %w.addr, align 8
  %frombool = zext i1 %frame_window_p to i8
  store i8 %frombool, i8* %frame_window_p.addr, align 1
  store i64* %ch_len, i64** %ch_len.addr, align 8
  store i64* %nchars, i64** %nchars.addr, align 8
  %0 = load %struct.bidi_string_data*, %struct.bidi_string_data** %string.addr, align 8
  %s = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %0, i32 0, i32 1
  %1 = load i8*, i8** %s, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.bidi_string_data*, %struct.bidi_string_data** %string.addr, align 8
  %lstring = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %2, i32 0, i32 0
  %3 = load i64, i64* %lstring, align 8
  %call = call zeroext i1 @STRINGP(i64 %3)
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %entry
  %4 = load %struct.bidi_string_data*, %struct.bidi_string_data** %string.addr, align 8
  %schars = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %4, i32 0, i32 2
  %5 = load i64, i64* %schars, align 8
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %6 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 79
  %7 = load i64, i64* %zv, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %5, %cond.true ], [ %7, %cond.false ]
  store i64 %cond, i64* %endpos, align 8
  %8 = load i64, i64* %charpos.addr, align 8
  %9 = load i64, i64* %endpos, align 8
  %cmp = icmp slt i64 %8, %9
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.end
  %10 = load i64, i64* %charpos.addr, align 8
  %11 = load i64*, i64** %disp_pos.addr, align 8
  %12 = load i64, i64* %11, align 8
  %cmp1 = icmp sgt i64 %10, %12
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %13 = load i64, i64* %charpos.addr, align 8
  %charpos2 = getelementptr inbounds %struct.text_pos, %struct.text_pos* %pos, i32 0, i32 0
  store i64 %13, i64* %charpos2, align 8
  %14 = load i64, i64* %bytepos.addr, align 8
  %bytepos3 = getelementptr inbounds %struct.text_pos, %struct.text_pos* %pos, i32 0, i32 1
  store i64 %14, i64* %bytepos3, align 8
  %15 = load %struct.bidi_string_data*, %struct.bidi_string_data** %string.addr, align 8
  %16 = load %struct.window*, %struct.window** %w.addr, align 8
  %17 = load i8, i8* %frame_window_p.addr, align 1
  %tobool4 = trunc i8 %17 to i1
  %18 = load i32*, i32** %disp_prop.addr, align 8
  %call5 = call i64 @compute_display_string_pos(%struct.text_pos* %pos, %struct.bidi_string_data* %15, %struct.window* %16, i1 zeroext %tobool4, i32* %18)
  %19 = load i64*, i64** %disp_pos.addr, align 8
  store i64 %call5, i64* %19, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %cond.end
  %20 = load i64, i64* %charpos.addr, align 8
  %21 = load i64, i64* %endpos, align 8
  %cmp6 = icmp sge i64 %20, %21
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end
  store i32 -1, i32* %ch, align 4
  %22 = load i64*, i64** %ch_len.addr, align 8
  store i64 1, i64* %22, align 8
  %23 = load i64*, i64** %nchars.addr, align 8
  store i64 1, i64* %23, align 8
  %24 = load i64, i64* %endpos, align 8
  %25 = load i64*, i64** %disp_pos.addr, align 8
  store i64 %24, i64* %25, align 8
  %26 = load i32*, i32** %disp_prop.addr, align 8
  store i32 0, i32* %26, align 4
  br label %if.end.500

if.else:                                          ; preds = %if.end
  %27 = load i64, i64* %charpos.addr, align 8
  %28 = load i64*, i64** %disp_pos.addr, align 8
  %29 = load i64, i64* %28, align 8
  %cmp8 = icmp sge i64 %27, %29
  br i1 %cmp8, label %land.lhs.true.9, label %if.else.48

land.lhs.true.9:                                  ; preds = %if.else
  %30 = load i32*, i32** %disp_prop.addr, align 8
  %31 = load i32, i32* %30, align 4
  %tobool10 = icmp ne i32 %31, 0
  br i1 %tobool10, label %if.then.11, label %if.else.48

if.then.11:                                       ; preds = %land.lhs.true.9
  %32 = load i64, i64* %charpos.addr, align 8
  %33 = load i64*, i64** %disp_pos.addr, align 8
  %34 = load i64, i64* %33, align 8
  %cmp12 = icmp sgt i64 %32, %34
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.11
  call void @emacs_abort() #4
  unreachable

if.end.14:                                        ; preds = %if.then.11
  %35 = load i32*, i32** %disp_prop.addr, align 8
  %36 = load i32, i32* %35, align 4
  %cmp15 = icmp eq i32 %36, 2
  br i1 %cmp15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %if.end.14
  store i32 8233, i32* %ch, align 4
  br label %if.end.18

if.else.17:                                       ; preds = %if.end.14
  store i32 65532, i32* %ch, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.17, %if.then.16
  %37 = load i64*, i64** %disp_pos.addr, align 8
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.bidi_string_data*, %struct.bidi_string_data** %string.addr, align 8
  %call19 = call i64 @compute_display_string_end(i64 %38, %struct.bidi_string_data* %39)
  store i64 %call19, i64* %disp_end_pos, align 8
  %40 = load i64, i64* %disp_end_pos, align 8
  %cmp20 = icmp slt i64 %40, 0
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.18
  %41 = load i32*, i32** %disp_prop.addr, align 8
  store i32 0, i32* %41, align 4
  br label %normal_char

if.end.22:                                        ; preds = %if.end.18
  %42 = load i64, i64* %disp_end_pos, align 8
  %43 = load i64*, i64** %disp_pos.addr, align 8
  %44 = load i64, i64* %43, align 8
  %sub = sub nsw i64 %42, %44
  %45 = load i64*, i64** %nchars.addr, align 8
  store i64 %sub, i64* %45, align 8
  %46 = load i64*, i64** %nchars.addr, align 8
  %47 = load i64, i64* %46, align 8
  %cmp23 = icmp sle i64 %47, 0
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.22
  call void @emacs_abort() #4
  unreachable

if.end.25:                                        ; preds = %if.end.22
  %48 = load %struct.bidi_string_data*, %struct.bidi_string_data** %string.addr, align 8
  %s26 = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %48, i32 0, i32 1
  %49 = load i8*, i8** %s26, align 8
  %tobool27 = icmp ne i8* %49, null
  br i1 %tobool27, label %if.then.28, label %if.else.31

if.then.28:                                       ; preds = %if.end.25
  %50 = load %struct.bidi_string_data*, %struct.bidi_string_data** %string.addr, align 8
  %s29 = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %50, i32 0, i32 1
  %51 = load i8*, i8** %s29, align 8
  %52 = load i64*, i64** %disp_pos.addr, align 8
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %bytepos.addr, align 8
  %55 = load i64, i64* %disp_end_pos, align 8
  %56 = load %struct.bidi_string_data*, %struct.bidi_string_data** %string.addr, align 8
  %unibyte = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %56, i32 0, i32 4
  %bf.load = load i8, i8* %unibyte, align 8
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = trunc i8 %bf.clear to i1
  %call30 = call i64 @bidi_count_bytes(i8* %51, i64 %53, i64 %54, i64 %55, i1 zeroext %bf.cast)
  %57 = load i64*, i64** %ch_len.addr, align 8
  store i64 %call30, i64* %57, align 8
  br label %if.end.47

if.else.31:                                       ; preds = %if.end.25
  %58 = load %struct.bidi_string_data*, %struct.bidi_string_data** %string.addr, align 8
  %lstring32 = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %58, i32 0, i32 0
  %59 = load i64, i64* %lstring32, align 8
  %call33 = call zeroext i1 @STRINGP(i64 %59)
  br i1 %call33, label %if.then.34, label %if.else.43

if.then.34:                                       ; preds = %if.else.31
  %60 = load %struct.bidi_string_data*, %struct.bidi_string_data** %string.addr, align 8
  %lstring35 = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %60, i32 0, i32 0
  %61 = load i64, i64* %lstring35, align 8
  %call36 = call i8* @SDATA(i64 %61)
  %62 = load i64*, i64** %disp_pos.addr, align 8
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %bytepos.addr, align 8
  %65 = load i64, i64* %disp_end_pos, align 8
  %66 = load %struct.bidi_string_data*, %struct.bidi_string_data** %string.addr, align 8
  %unibyte37 = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %66, i32 0, i32 4
  %bf.load38 = load i8, i8* %unibyte37, align 8
  %bf.lshr39 = lshr i8 %bf.load38, 1
  %bf.clear40 = and i8 %bf.lshr39, 1
  %bf.cast41 = trunc i8 %bf.clear40 to i1
  %call42 = call i64 @bidi_count_bytes(i8* %call36, i64 %63, i64 %64, i64 %65, i1 zeroext %bf.cast41)
  %67 = load i64*, i64** %ch_len.addr, align 8
  store i64 %call42, i64* %67, align 8
  br label %if.end.46

if.else.43:                                       ; preds = %if.else.31
  %68 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %69 = load i64, i64* %disp_end_pos, align 8
  %call44 = call i64 @buf_charpos_to_bytepos(%struct.buffer* %68, i64 %69)
  %70 = load i64, i64* %bytepos.addr, align 8
  %sub45 = sub nsw i64 %call44, %70
  %71 = load i64*, i64** %ch_len.addr, align 8
  store i64 %sub45, i64* %71, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.43, %if.then.34
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then.28
  br label %if.end.499

if.else.48:                                       ; preds = %land.lhs.true.9, %if.else
  br label %normal_char

normal_char:                                      ; preds = %if.else.48, %if.then.21
  %72 = load %struct.bidi_string_data*, %struct.bidi_string_data** %string.addr, align 8
  %s49 = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %72, i32 0, i32 1
  %73 = load i8*, i8** %s49, align 8
  %tobool50 = icmp ne i8* %73, null
  br i1 %tobool50, label %if.then.51, label %if.else.155

if.then.51:                                       ; preds = %normal_char
  %74 = load %struct.bidi_string_data*, %struct.bidi_string_data** %string.addr, align 8
  %unibyte52 = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %74, i32 0, i32 4
  %bf.load53 = load i8, i8* %unibyte52, align 8
  %bf.lshr54 = lshr i8 %bf.load53, 1
  %bf.clear55 = and i8 %bf.lshr54, 1
  %bf.cast56 = trunc i8 %bf.clear55 to i1
  br i1 %bf.cast56, label %if.else.128, label %if.then.57

if.then.57:                                       ; preds = %if.then.51
  %75 = load %struct.bidi_string_data*, %struct.bidi_string_data** %string.addr, align 8
  %s58 = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %75, i32 0, i32 1
  %76 = load i8*, i8** %s58, align 8
  %77 = load i64, i64* %bytepos.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %76, i64 %77
  %arrayidx = getelementptr inbounds i8, i8* %add.ptr, i64 0
  %78 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %78 to i32
  %and = and i32 %conv, 128
  %tobool59 = icmp ne i32 %and, 0
  br i1 %tobool59, label %cond.false.65, label %cond.true.60

cond.true.60:                                     ; preds = %if.then.57
  store i32 1, i32* %len, align 4
  %79 = load %struct.bidi_string_data*, %struct.bidi_string_data** %string.addr, align 8
  %s61 = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %79, i32 0, i32 1
  %80 = load i8*, i8** %s61, align 8
  %81 = load i64, i64* %bytepos.addr, align 8
  %add.ptr62 = getelementptr inbounds i8, i8* %80, i64 %81
  %arrayidx63 = getelementptr inbounds i8, i8* %add.ptr62, i64 0
  %82 = load i8, i8* %arrayidx63, align 1
  %conv64 = zext i8 %82 to i32
  br label %cond.end.125

cond.false.65:                                    ; preds = %if.then.57
  %83 = load %struct.bidi_string_data*, %struct.bidi_string_data** %string.addr, align 8
  %s66 = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %83, i32 0, i32 1
  %84 = load i8*, i8** %s66, align 8
  %85 = load i64, i64* %bytepos.addr, align 8
  %add.ptr67 = getelementptr inbounds i8, i8* %84, i64 %85
  %arrayidx68 = getelementptr inbounds i8, i8* %add.ptr67, i64 0
  %86 = load i8, i8* %arrayidx68, align 1
  %conv69 = zext i8 %86 to i32
  %and70 = and i32 %conv69, 32
  %tobool71 = icmp ne i32 %and70, 0
  br i1 %tobool71, label %cond.false.90, label %cond.true.72

cond.true.72:                                     ; preds = %cond.false.65
  store i32 2, i32* %len, align 4
  %87 = load %struct.bidi_string_data*, %struct.bidi_string_data** %string.addr, align 8
  %s73 = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %87, i32 0, i32 1
  %88 = load i8*, i8** %s73, align 8
  %89 = load i64, i64* %bytepos.addr, align 8
  %add.ptr74 = getelementptr inbounds i8, i8* %88, i64 %89
  %arrayidx75 = getelementptr inbounds i8, i8* %add.ptr74, i64 0
  %90 = load i8, i8* %arrayidx75, align 1
  %conv76 = zext i8 %90 to i32
  %and77 = and i32 %conv76, 31
  %shl = shl i32 %and77, 6
  %91 = load %struct.bidi_string_data*, %struct.bidi_string_data** %string.addr, align 8
  %s78 = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %91, i32 0, i32 1
  %92 = load i8*, i8** %s78, align 8
  %93 = load i64, i64* %bytepos.addr, align 8
  %add.ptr79 = getelementptr inbounds i8, i8* %92, i64 %93
  %arrayidx80 = getelementptr inbounds i8, i8* %add.ptr79, i64 1
  %94 = load i8, i8* %arrayidx80, align 1
  %conv81 = zext i8 %94 to i32
  %and82 = and i32 %conv81, 63
  %or = or i32 %shl, %and82
  %95 = load %struct.bidi_string_data*, %struct.bidi_string_data** %string.addr, align 8
  %s83 = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %95, i32 0, i32 1
  %96 = load i8*, i8** %s83, align 8
  %97 = load i64, i64* %bytepos.addr, align 8
  %add.ptr84 = getelementptr inbounds i8, i8* %96, i64 %97
  %arrayidx85 = getelementptr inbounds i8, i8* %add.ptr84, i64 0
  %98 = load i8, i8* %arrayidx85, align 1
  %conv86 = zext i8 %98 to i32
  %cmp87 = icmp slt i32 %conv86, 194
  %cond89 = select i1 %cmp87, i32 4194176, i32 0
  %add = add nsw i32 %or, %cond89
  br label %cond.end.123

cond.false.90:                                    ; preds = %cond.false.65
  %99 = load %struct.bidi_string_data*, %struct.bidi_string_data** %string.addr, align 8
  %s91 = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %99, i32 0, i32 1
  %100 = load i8*, i8** %s91, align 8
  %101 = load i64, i64* %bytepos.addr, align 8
  %add.ptr92 = getelementptr inbounds i8, i8* %100, i64 %101
  %arrayidx93 = getelementptr inbounds i8, i8* %add.ptr92, i64 0
  %102 = load i8, i8* %arrayidx93, align 1
  %conv94 = zext i8 %102 to i32
  %and95 = and i32 %conv94, 16
  %tobool96 = icmp ne i32 %and95, 0
  br i1 %tobool96, label %cond.false.117, label %cond.true.97

cond.true.97:                                     ; preds = %cond.false.90
  store i32 3, i32* %len, align 4
  %103 = load %struct.bidi_string_data*, %struct.bidi_string_data** %string.addr, align 8
  %s98 = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %103, i32 0, i32 1
  %104 = load i8*, i8** %s98, align 8
  %105 = load i64, i64* %bytepos.addr, align 8
  %add.ptr99 = getelementptr inbounds i8, i8* %104, i64 %105
  %arrayidx100 = getelementptr inbounds i8, i8* %add.ptr99, i64 0
  %106 = load i8, i8* %arrayidx100, align 1
  %conv101 = zext i8 %106 to i32
  %and102 = and i32 %conv101, 15
  %shl103 = shl i32 %and102, 12
  %107 = load %struct.bidi_string_data*, %struct.bidi_string_data** %string.addr, align 8
  %s104 = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %107, i32 0, i32 1
  %108 = load i8*, i8** %s104, align 8
  %109 = load i64, i64* %bytepos.addr, align 8
  %add.ptr105 = getelementptr inbounds i8, i8* %108, i64 %109
  %arrayidx106 = getelementptr inbounds i8, i8* %add.ptr105, i64 1
  %110 = load i8, i8* %arrayidx106, align 1
  %conv107 = zext i8 %110 to i32
  %and108 = and i32 %conv107, 63
  %shl109 = shl i32 %and108, 6
  %or110 = or i32 %shl103, %shl109
  %111 = load %struct.bidi_string_data*, %struct.bidi_string_data** %string.addr, align 8
  %s111 = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %111, i32 0, i32 1
  %112 = load i8*, i8** %s111, align 8
  %113 = load i64, i64* %bytepos.addr, align 8
  %add.ptr112 = getelementptr inbounds i8, i8* %112, i64 %113
  %arrayidx113 = getelementptr inbounds i8, i8* %add.ptr112, i64 2
  %114 = load i8, i8* %arrayidx113, align 1
  %conv114 = zext i8 %114 to i32
  %and115 = and i32 %conv114, 63
  %or116 = or i32 %or110, %and115
  br label %cond.end.121

cond.false.117:                                   ; preds = %cond.false.90
  %115 = load %struct.bidi_string_data*, %struct.bidi_string_data** %string.addr, align 8
  %s118 = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %115, i32 0, i32 1
  %116 = load i8*, i8** %s118, align 8
  %117 = load i64, i64* %bytepos.addr, align 8
  %add.ptr119 = getelementptr inbounds i8, i8* %116, i64 %117
  %call120 = call i32 @string_char(i8* %add.ptr119, i8** null, i32* %len)
  br label %cond.end.121

cond.end.121:                                     ; preds = %cond.false.117, %cond.true.97
  %cond122 = phi i32 [ %or116, %cond.true.97 ], [ %call120, %cond.false.117 ]
  br label %cond.end.123

cond.end.123:                                     ; preds = %cond.end.121, %cond.true.72
  %cond124 = phi i32 [ %add, %cond.true.72 ], [ %cond122, %cond.end.121 ]
  br label %cond.end.125

cond.end.125:                                     ; preds = %cond.end.123, %cond.true.60
  %cond126 = phi i32 [ %conv64, %cond.true.60 ], [ %cond124, %cond.end.123 ]
  store i32 %cond126, i32* %ch, align 4
  %118 = load i32, i32* %len, align 4
  %conv127 = sext i32 %118 to i64
  %119 = load i64*, i64** %ch_len.addr, align 8
  store i64 %conv127, i64* %119, align 8
  br label %if.end.154

if.else.128:                                      ; preds = %if.then.51
  br i1 true, label %cond.true.129, label %cond.false.136

cond.true.129:                                    ; preds = %if.else.128
  %120 = load i64, i64* %bytepos.addr, align 8
  %121 = load %struct.bidi_string_data*, %struct.bidi_string_data** %string.addr, align 8
  %s130 = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %121, i32 0, i32 1
  %122 = load i8*, i8** %s130, align 8
  %arrayidx131 = getelementptr inbounds i8, i8* %122, i64 %120
  %123 = load i8, i8* %arrayidx131, align 1
  %conv132 = zext i8 %123 to i32
  %add133 = add i32 %conv132, 0
  %cmp134 = icmp ult i32 %add133, 128
  br i1 %cmp134, label %cond.true.143, label %cond.false.147

cond.false.136:                                   ; preds = %if.else.128
  %124 = load i64, i64* %bytepos.addr, align 8
  %125 = load %struct.bidi_string_data*, %struct.bidi_string_data** %string.addr, align 8
  %s137 = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %125, i32 0, i32 1
  %126 = load i8*, i8** %s137, align 8
  %arrayidx138 = getelementptr inbounds i8, i8* %126, i64 %124
  %127 = load i8, i8* %arrayidx138, align 1
  %conv139 = zext i8 %127 to i64
  %add140 = add i64 %conv139, 0
  %cmp141 = icmp ult i64 %add140, 128
  br i1 %cmp141, label %cond.true.143, label %cond.false.147

cond.true.143:                                    ; preds = %cond.false.136, %cond.true.129
  %128 = load i64, i64* %bytepos.addr, align 8
  %129 = load %struct.bidi_string_data*, %struct.bidi_string_data** %string.addr, align 8
  %s144 = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %129, i32 0, i32 1
  %130 = load i8*, i8** %s144, align 8
  %arrayidx145 = getelementptr inbounds i8, i8* %130, i64 %128
  %131 = load i8, i8* %arrayidx145, align 1
  %conv146 = zext i8 %131 to i32
  br label %cond.end.152

cond.false.147:                                   ; preds = %cond.false.136, %cond.true.129
  %132 = load i64, i64* %bytepos.addr, align 8
  %133 = load %struct.bidi_string_data*, %struct.bidi_string_data** %string.addr, align 8
  %s148 = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %133, i32 0, i32 1
  %134 = load i8*, i8** %s148, align 8
  %arrayidx149 = getelementptr inbounds i8, i8* %134, i64 %132
  %135 = load i8, i8* %arrayidx149, align 1
  %conv150 = zext i8 %135 to i32
  %add151 = add nsw i32 %conv150, 4194048
  br label %cond.end.152

cond.end.152:                                     ; preds = %cond.false.147, %cond.true.143
  %cond153 = phi i32 [ %conv146, %cond.true.143 ], [ %add151, %cond.false.147 ]
  store i32 %cond153, i32* %ch, align 4
  %136 = load i64*, i64** %ch_len.addr, align 8
  store i64 1, i64* %136, align 8
  br label %if.end.154

if.end.154:                                       ; preds = %cond.end.152, %cond.end.125
  br label %if.end.498

if.else.155:                                      ; preds = %normal_char
  %137 = load %struct.bidi_string_data*, %struct.bidi_string_data** %string.addr, align 8
  %lstring156 = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %137, i32 0, i32 0
  %138 = load i64, i64* %lstring156, align 8
  %call157 = call zeroext i1 @STRINGP(i64 %138)
  br i1 %call157, label %if.then.158, label %if.else.280

if.then.158:                                      ; preds = %if.else.155
  %139 = load %struct.bidi_string_data*, %struct.bidi_string_data** %string.addr, align 8
  %unibyte159 = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %139, i32 0, i32 4
  %bf.load160 = load i8, i8* %unibyte159, align 8
  %bf.lshr161 = lshr i8 %bf.load160, 1
  %bf.clear162 = and i8 %bf.lshr161, 1
  %bf.cast163 = trunc i8 %bf.clear162 to i1
  br i1 %bf.cast163, label %if.else.253, label %if.then.164

if.then.164:                                      ; preds = %if.then.158
  %140 = load %struct.bidi_string_data*, %struct.bidi_string_data** %string.addr, align 8
  %lstring165 = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %140, i32 0, i32 0
  %141 = load i64, i64* %lstring165, align 8
  %call166 = call i8* @SDATA(i64 %141)
  %142 = load i64, i64* %bytepos.addr, align 8
  %add.ptr167 = getelementptr inbounds i8, i8* %call166, i64 %142
  %arrayidx168 = getelementptr inbounds i8, i8* %add.ptr167, i64 0
  %143 = load i8, i8* %arrayidx168, align 1
  %conv169 = zext i8 %143 to i32
  %and170 = and i32 %conv169, 128
  %tobool171 = icmp ne i32 %and170, 0
  br i1 %tobool171, label %cond.false.178, label %cond.true.172

cond.true.172:                                    ; preds = %if.then.164
  store i32 1, i32* %len, align 4
  %144 = load %struct.bidi_string_data*, %struct.bidi_string_data** %string.addr, align 8
  %lstring173 = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %144, i32 0, i32 0
  %145 = load i64, i64* %lstring173, align 8
  %call174 = call i8* @SDATA(i64 %145)
  %146 = load i64, i64* %bytepos.addr, align 8
  %add.ptr175 = getelementptr inbounds i8, i8* %call174, i64 %146
  %arrayidx176 = getelementptr inbounds i8, i8* %add.ptr175, i64 0
  %147 = load i8, i8* %arrayidx176, align 1
  %conv177 = zext i8 %147 to i32
  br label %cond.end.250

cond.false.178:                                   ; preds = %if.then.164
  %148 = load %struct.bidi_string_data*, %struct.bidi_string_data** %string.addr, align 8
  %lstring179 = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %148, i32 0, i32 0
  %149 = load i64, i64* %lstring179, align 8
  %call180 = call i8* @SDATA(i64 %149)
  %150 = load i64, i64* %bytepos.addr, align 8
  %add.ptr181 = getelementptr inbounds i8, i8* %call180, i64 %150
  %arrayidx182 = getelementptr inbounds i8, i8* %add.ptr181, i64 0
  %151 = load i8, i8* %arrayidx182, align 1
  %conv183 = zext i8 %151 to i32
  %and184 = and i32 %conv183, 32
  %tobool185 = icmp ne i32 %and184, 0
  br i1 %tobool185, label %cond.false.210, label %cond.true.186

cond.true.186:                                    ; preds = %cond.false.178
  store i32 2, i32* %len, align 4
  %152 = load %struct.bidi_string_data*, %struct.bidi_string_data** %string.addr, align 8
  %lstring187 = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %152, i32 0, i32 0
  %153 = load i64, i64* %lstring187, align 8
  %call188 = call i8* @SDATA(i64 %153)
  %154 = load i64, i64* %bytepos.addr, align 8
  %add.ptr189 = getelementptr inbounds i8, i8* %call188, i64 %154
  %arrayidx190 = getelementptr inbounds i8, i8* %add.ptr189, i64 0
  %155 = load i8, i8* %arrayidx190, align 1
  %conv191 = zext i8 %155 to i32
  %and192 = and i32 %conv191, 31
  %shl193 = shl i32 %and192, 6
  %156 = load %struct.bidi_string_data*, %struct.bidi_string_data** %string.addr, align 8
  %lstring194 = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %156, i32 0, i32 0
  %157 = load i64, i64* %lstring194, align 8
  %call195 = call i8* @SDATA(i64 %157)
  %158 = load i64, i64* %bytepos.addr, align 8
  %add.ptr196 = getelementptr inbounds i8, i8* %call195, i64 %158
  %arrayidx197 = getelementptr inbounds i8, i8* %add.ptr196, i64 1
  %159 = load i8, i8* %arrayidx197, align 1
  %conv198 = zext i8 %159 to i32
  %and199 = and i32 %conv198, 63
  %or200 = or i32 %shl193, %and199
  %160 = load %struct.bidi_string_data*, %struct.bidi_string_data** %string.addr, align 8
  %lstring201 = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %160, i32 0, i32 0
  %161 = load i64, i64* %lstring201, align 8
  %call202 = call i8* @SDATA(i64 %161)
  %162 = load i64, i64* %bytepos.addr, align 8
  %add.ptr203 = getelementptr inbounds i8, i8* %call202, i64 %162
  %arrayidx204 = getelementptr inbounds i8, i8* %add.ptr203, i64 0
  %163 = load i8, i8* %arrayidx204, align 1
  %conv205 = zext i8 %163 to i32
  %cmp206 = icmp slt i32 %conv205, 194
  %cond208 = select i1 %cmp206, i32 4194176, i32 0
  %add209 = add nsw i32 %or200, %cond208
  br label %cond.end.248

cond.false.210:                                   ; preds = %cond.false.178
  %164 = load %struct.bidi_string_data*, %struct.bidi_string_data** %string.addr, align 8
  %lstring211 = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %164, i32 0, i32 0
  %165 = load i64, i64* %lstring211, align 8
  %call212 = call i8* @SDATA(i64 %165)
  %166 = load i64, i64* %bytepos.addr, align 8
  %add.ptr213 = getelementptr inbounds i8, i8* %call212, i64 %166
  %arrayidx214 = getelementptr inbounds i8, i8* %add.ptr213, i64 0
  %167 = load i8, i8* %arrayidx214, align 1
  %conv215 = zext i8 %167 to i32
  %and216 = and i32 %conv215, 16
  %tobool217 = icmp ne i32 %and216, 0
  br i1 %tobool217, label %cond.false.241, label %cond.true.218

cond.true.218:                                    ; preds = %cond.false.210
  store i32 3, i32* %len, align 4
  %168 = load %struct.bidi_string_data*, %struct.bidi_string_data** %string.addr, align 8
  %lstring219 = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %168, i32 0, i32 0
  %169 = load i64, i64* %lstring219, align 8
  %call220 = call i8* @SDATA(i64 %169)
  %170 = load i64, i64* %bytepos.addr, align 8
  %add.ptr221 = getelementptr inbounds i8, i8* %call220, i64 %170
  %arrayidx222 = getelementptr inbounds i8, i8* %add.ptr221, i64 0
  %171 = load i8, i8* %arrayidx222, align 1
  %conv223 = zext i8 %171 to i32
  %and224 = and i32 %conv223, 15
  %shl225 = shl i32 %and224, 12
  %172 = load %struct.bidi_string_data*, %struct.bidi_string_data** %string.addr, align 8
  %lstring226 = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %172, i32 0, i32 0
  %173 = load i64, i64* %lstring226, align 8
  %call227 = call i8* @SDATA(i64 %173)
  %174 = load i64, i64* %bytepos.addr, align 8
  %add.ptr228 = getelementptr inbounds i8, i8* %call227, i64 %174
  %arrayidx229 = getelementptr inbounds i8, i8* %add.ptr228, i64 1
  %175 = load i8, i8* %arrayidx229, align 1
  %conv230 = zext i8 %175 to i32
  %and231 = and i32 %conv230, 63
  %shl232 = shl i32 %and231, 6
  %or233 = or i32 %shl225, %shl232
  %176 = load %struct.bidi_string_data*, %struct.bidi_string_data** %string.addr, align 8
  %lstring234 = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %176, i32 0, i32 0
  %177 = load i64, i64* %lstring234, align 8
  %call235 = call i8* @SDATA(i64 %177)
  %178 = load i64, i64* %bytepos.addr, align 8
  %add.ptr236 = getelementptr inbounds i8, i8* %call235, i64 %178
  %arrayidx237 = getelementptr inbounds i8, i8* %add.ptr236, i64 2
  %179 = load i8, i8* %arrayidx237, align 1
  %conv238 = zext i8 %179 to i32
  %and239 = and i32 %conv238, 63
  %or240 = or i32 %or233, %and239
  br label %cond.end.246

cond.false.241:                                   ; preds = %cond.false.210
  %180 = load %struct.bidi_string_data*, %struct.bidi_string_data** %string.addr, align 8
  %lstring242 = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %180, i32 0, i32 0
  %181 = load i64, i64* %lstring242, align 8
  %call243 = call i8* @SDATA(i64 %181)
  %182 = load i64, i64* %bytepos.addr, align 8
  %add.ptr244 = getelementptr inbounds i8, i8* %call243, i64 %182
  %call245 = call i32 @string_char(i8* %add.ptr244, i8** null, i32* %len)
  br label %cond.end.246

cond.end.246:                                     ; preds = %cond.false.241, %cond.true.218
  %cond247 = phi i32 [ %or240, %cond.true.218 ], [ %call245, %cond.false.241 ]
  br label %cond.end.248

cond.end.248:                                     ; preds = %cond.end.246, %cond.true.186
  %cond249 = phi i32 [ %add209, %cond.true.186 ], [ %cond247, %cond.end.246 ]
  br label %cond.end.250

cond.end.250:                                     ; preds = %cond.end.248, %cond.true.172
  %cond251 = phi i32 [ %conv177, %cond.true.172 ], [ %cond249, %cond.end.248 ]
  store i32 %cond251, i32* %ch, align 4
  %183 = load i32, i32* %len, align 4
  %conv252 = sext i32 %183 to i64
  %184 = load i64*, i64** %ch_len.addr, align 8
  store i64 %conv252, i64* %184, align 8
  br label %if.end.279

if.else.253:                                      ; preds = %if.then.158
  br i1 true, label %cond.true.254, label %cond.false.261

cond.true.254:                                    ; preds = %if.else.253
  %185 = load %struct.bidi_string_data*, %struct.bidi_string_data** %string.addr, align 8
  %lstring255 = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %185, i32 0, i32 0
  %186 = load i64, i64* %lstring255, align 8
  %187 = load i64, i64* %bytepos.addr, align 8
  %call256 = call zeroext i8 @SREF(i64 %186, i64 %187)
  %conv257 = zext i8 %call256 to i32
  %add258 = add i32 %conv257, 0
  %cmp259 = icmp ult i32 %add258, 128
  br i1 %cmp259, label %cond.true.268, label %cond.false.272

cond.false.261:                                   ; preds = %if.else.253
  %188 = load %struct.bidi_string_data*, %struct.bidi_string_data** %string.addr, align 8
  %lstring262 = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %188, i32 0, i32 0
  %189 = load i64, i64* %lstring262, align 8
  %190 = load i64, i64* %bytepos.addr, align 8
  %call263 = call zeroext i8 @SREF(i64 %189, i64 %190)
  %conv264 = zext i8 %call263 to i64
  %add265 = add i64 %conv264, 0
  %cmp266 = icmp ult i64 %add265, 128
  br i1 %cmp266, label %cond.true.268, label %cond.false.272

cond.true.268:                                    ; preds = %cond.false.261, %cond.true.254
  %191 = load %struct.bidi_string_data*, %struct.bidi_string_data** %string.addr, align 8
  %lstring269 = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %191, i32 0, i32 0
  %192 = load i64, i64* %lstring269, align 8
  %193 = load i64, i64* %bytepos.addr, align 8
  %call270 = call zeroext i8 @SREF(i64 %192, i64 %193)
  %conv271 = zext i8 %call270 to i32
  br label %cond.end.277

cond.false.272:                                   ; preds = %cond.false.261, %cond.true.254
  %194 = load %struct.bidi_string_data*, %struct.bidi_string_data** %string.addr, align 8
  %lstring273 = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %194, i32 0, i32 0
  %195 = load i64, i64* %lstring273, align 8
  %196 = load i64, i64* %bytepos.addr, align 8
  %call274 = call zeroext i8 @SREF(i64 %195, i64 %196)
  %conv275 = zext i8 %call274 to i32
  %add276 = add nsw i32 %conv275, 4194048
  br label %cond.end.277

cond.end.277:                                     ; preds = %cond.false.272, %cond.true.268
  %cond278 = phi i32 [ %conv271, %cond.true.268 ], [ %add276, %cond.false.272 ]
  store i32 %cond278, i32* %ch, align 4
  %197 = load i64*, i64** %ch_len.addr, align 8
  store i64 1, i64* %197, align 8
  br label %if.end.279

if.end.279:                                       ; preds = %cond.end.277, %cond.end.250
  br label %if.end.497

if.else.280:                                      ; preds = %if.else.155
  %198 = load i64, i64* %bytepos.addr, align 8
  %199 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %199, i32 0, i32 73
  %200 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %gpt_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %200, i32 0, i32 3
  %201 = load i64, i64* %gpt_byte, align 8
  %cmp281 = icmp sge i64 %198, %201
  br i1 %cmp281, label %cond.true.283, label %cond.false.285

cond.true.283:                                    ; preds = %if.else.280
  %202 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text284 = getelementptr inbounds %struct.buffer, %struct.buffer* %202, i32 0, i32 73
  %203 = load %struct.buffer_text*, %struct.buffer_text** %text284, align 8
  %gap_size = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %203, i32 0, i32 5
  %204 = load i64, i64* %gap_size, align 8
  br label %cond.end.286

cond.false.285:                                   ; preds = %if.else.280
  br label %cond.end.286

cond.end.286:                                     ; preds = %cond.false.285, %cond.true.283
  %cond287 = phi i64 [ %204, %cond.true.283 ], [ 0, %cond.false.285 ]
  %205 = load i64, i64* %bytepos.addr, align 8
  %add288 = add nsw i64 %cond287, %205
  %206 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text289 = getelementptr inbounds %struct.buffer, %struct.buffer* %206, i32 0, i32 73
  %207 = load %struct.buffer_text*, %struct.buffer_text** %text289, align 8
  %beg = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %207, i32 0, i32 0
  %208 = load i8*, i8** %beg, align 8
  %add.ptr290 = getelementptr inbounds i8, i8* %208, i64 %add288
  %add.ptr291 = getelementptr inbounds i8, i8* %add.ptr290, i64 -1
  %arrayidx292 = getelementptr inbounds i8, i8* %add.ptr291, i64 0
  %209 = load i8, i8* %arrayidx292, align 1
  %conv293 = zext i8 %209 to i32
  %and294 = and i32 %conv293, 128
  %tobool295 = icmp ne i32 %and294, 0
  br i1 %tobool295, label %cond.false.314, label %cond.true.296

cond.true.296:                                    ; preds = %cond.end.286
  store i32 1, i32* %len, align 4
  %210 = load i64, i64* %bytepos.addr, align 8
  %211 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text297 = getelementptr inbounds %struct.buffer, %struct.buffer* %211, i32 0, i32 73
  %212 = load %struct.buffer_text*, %struct.buffer_text** %text297, align 8
  %gpt_byte298 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %212, i32 0, i32 3
  %213 = load i64, i64* %gpt_byte298, align 8
  %cmp299 = icmp sge i64 %210, %213
  br i1 %cmp299, label %cond.true.301, label %cond.false.304

cond.true.301:                                    ; preds = %cond.true.296
  %214 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text302 = getelementptr inbounds %struct.buffer, %struct.buffer* %214, i32 0, i32 73
  %215 = load %struct.buffer_text*, %struct.buffer_text** %text302, align 8
  %gap_size303 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %215, i32 0, i32 5
  %216 = load i64, i64* %gap_size303, align 8
  br label %cond.end.305

cond.false.304:                                   ; preds = %cond.true.296
  br label %cond.end.305

cond.end.305:                                     ; preds = %cond.false.304, %cond.true.301
  %cond306 = phi i64 [ %216, %cond.true.301 ], [ 0, %cond.false.304 ]
  %217 = load i64, i64* %bytepos.addr, align 8
  %add307 = add nsw i64 %cond306, %217
  %218 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text308 = getelementptr inbounds %struct.buffer, %struct.buffer* %218, i32 0, i32 73
  %219 = load %struct.buffer_text*, %struct.buffer_text** %text308, align 8
  %beg309 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %219, i32 0, i32 0
  %220 = load i8*, i8** %beg309, align 8
  %add.ptr310 = getelementptr inbounds i8, i8* %220, i64 %add307
  %add.ptr311 = getelementptr inbounds i8, i8* %add.ptr310, i64 -1
  %arrayidx312 = getelementptr inbounds i8, i8* %add.ptr311, i64 0
  %221 = load i8, i8* %arrayidx312, align 1
  %conv313 = zext i8 %221 to i32
  br label %cond.end.494

cond.false.314:                                   ; preds = %cond.end.286
  %222 = load i64, i64* %bytepos.addr, align 8
  %223 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text315 = getelementptr inbounds %struct.buffer, %struct.buffer* %223, i32 0, i32 73
  %224 = load %struct.buffer_text*, %struct.buffer_text** %text315, align 8
  %gpt_byte316 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %224, i32 0, i32 3
  %225 = load i64, i64* %gpt_byte316, align 8
  %cmp317 = icmp sge i64 %222, %225
  br i1 %cmp317, label %cond.true.319, label %cond.false.322

cond.true.319:                                    ; preds = %cond.false.314
  %226 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text320 = getelementptr inbounds %struct.buffer, %struct.buffer* %226, i32 0, i32 73
  %227 = load %struct.buffer_text*, %struct.buffer_text** %text320, align 8
  %gap_size321 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %227, i32 0, i32 5
  %228 = load i64, i64* %gap_size321, align 8
  br label %cond.end.323

cond.false.322:                                   ; preds = %cond.false.314
  br label %cond.end.323

cond.end.323:                                     ; preds = %cond.false.322, %cond.true.319
  %cond324 = phi i64 [ %228, %cond.true.319 ], [ 0, %cond.false.322 ]
  %229 = load i64, i64* %bytepos.addr, align 8
  %add325 = add nsw i64 %cond324, %229
  %230 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text326 = getelementptr inbounds %struct.buffer, %struct.buffer* %230, i32 0, i32 73
  %231 = load %struct.buffer_text*, %struct.buffer_text** %text326, align 8
  %beg327 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %231, i32 0, i32 0
  %232 = load i8*, i8** %beg327, align 8
  %add.ptr328 = getelementptr inbounds i8, i8* %232, i64 %add325
  %add.ptr329 = getelementptr inbounds i8, i8* %add.ptr328, i64 -1
  %arrayidx330 = getelementptr inbounds i8, i8* %add.ptr329, i64 0
  %233 = load i8, i8* %arrayidx330, align 1
  %conv331 = zext i8 %233 to i32
  %and332 = and i32 %conv331, 32
  %tobool333 = icmp ne i32 %and332, 0
  br i1 %tobool333, label %cond.false.394, label %cond.true.334

cond.true.334:                                    ; preds = %cond.end.323
  store i32 2, i32* %len, align 4
  %234 = load i64, i64* %bytepos.addr, align 8
  %235 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text335 = getelementptr inbounds %struct.buffer, %struct.buffer* %235, i32 0, i32 73
  %236 = load %struct.buffer_text*, %struct.buffer_text** %text335, align 8
  %gpt_byte336 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %236, i32 0, i32 3
  %237 = load i64, i64* %gpt_byte336, align 8
  %cmp337 = icmp sge i64 %234, %237
  br i1 %cmp337, label %cond.true.339, label %cond.false.342

cond.true.339:                                    ; preds = %cond.true.334
  %238 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text340 = getelementptr inbounds %struct.buffer, %struct.buffer* %238, i32 0, i32 73
  %239 = load %struct.buffer_text*, %struct.buffer_text** %text340, align 8
  %gap_size341 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %239, i32 0, i32 5
  %240 = load i64, i64* %gap_size341, align 8
  br label %cond.end.343

cond.false.342:                                   ; preds = %cond.true.334
  br label %cond.end.343

cond.end.343:                                     ; preds = %cond.false.342, %cond.true.339
  %cond344 = phi i64 [ %240, %cond.true.339 ], [ 0, %cond.false.342 ]
  %241 = load i64, i64* %bytepos.addr, align 8
  %add345 = add nsw i64 %cond344, %241
  %242 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text346 = getelementptr inbounds %struct.buffer, %struct.buffer* %242, i32 0, i32 73
  %243 = load %struct.buffer_text*, %struct.buffer_text** %text346, align 8
  %beg347 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %243, i32 0, i32 0
  %244 = load i8*, i8** %beg347, align 8
  %add.ptr348 = getelementptr inbounds i8, i8* %244, i64 %add345
  %add.ptr349 = getelementptr inbounds i8, i8* %add.ptr348, i64 -1
  %arrayidx350 = getelementptr inbounds i8, i8* %add.ptr349, i64 0
  %245 = load i8, i8* %arrayidx350, align 1
  %conv351 = zext i8 %245 to i32
  %and352 = and i32 %conv351, 31
  %shl353 = shl i32 %and352, 6
  %246 = load i64, i64* %bytepos.addr, align 8
  %247 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text354 = getelementptr inbounds %struct.buffer, %struct.buffer* %247, i32 0, i32 73
  %248 = load %struct.buffer_text*, %struct.buffer_text** %text354, align 8
  %gpt_byte355 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %248, i32 0, i32 3
  %249 = load i64, i64* %gpt_byte355, align 8
  %cmp356 = icmp sge i64 %246, %249
  br i1 %cmp356, label %cond.true.358, label %cond.false.361

cond.true.358:                                    ; preds = %cond.end.343
  %250 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text359 = getelementptr inbounds %struct.buffer, %struct.buffer* %250, i32 0, i32 73
  %251 = load %struct.buffer_text*, %struct.buffer_text** %text359, align 8
  %gap_size360 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %251, i32 0, i32 5
  %252 = load i64, i64* %gap_size360, align 8
  br label %cond.end.362

cond.false.361:                                   ; preds = %cond.end.343
  br label %cond.end.362

cond.end.362:                                     ; preds = %cond.false.361, %cond.true.358
  %cond363 = phi i64 [ %252, %cond.true.358 ], [ 0, %cond.false.361 ]
  %253 = load i64, i64* %bytepos.addr, align 8
  %add364 = add nsw i64 %cond363, %253
  %254 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text365 = getelementptr inbounds %struct.buffer, %struct.buffer* %254, i32 0, i32 73
  %255 = load %struct.buffer_text*, %struct.buffer_text** %text365, align 8
  %beg366 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %255, i32 0, i32 0
  %256 = load i8*, i8** %beg366, align 8
  %add.ptr367 = getelementptr inbounds i8, i8* %256, i64 %add364
  %add.ptr368 = getelementptr inbounds i8, i8* %add.ptr367, i64 -1
  %arrayidx369 = getelementptr inbounds i8, i8* %add.ptr368, i64 1
  %257 = load i8, i8* %arrayidx369, align 1
  %conv370 = zext i8 %257 to i32
  %and371 = and i32 %conv370, 63
  %or372 = or i32 %shl353, %and371
  %258 = load i64, i64* %bytepos.addr, align 8
  %259 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text373 = getelementptr inbounds %struct.buffer, %struct.buffer* %259, i32 0, i32 73
  %260 = load %struct.buffer_text*, %struct.buffer_text** %text373, align 8
  %gpt_byte374 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %260, i32 0, i32 3
  %261 = load i64, i64* %gpt_byte374, align 8
  %cmp375 = icmp sge i64 %258, %261
  br i1 %cmp375, label %cond.true.377, label %cond.false.380

cond.true.377:                                    ; preds = %cond.end.362
  %262 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text378 = getelementptr inbounds %struct.buffer, %struct.buffer* %262, i32 0, i32 73
  %263 = load %struct.buffer_text*, %struct.buffer_text** %text378, align 8
  %gap_size379 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %263, i32 0, i32 5
  %264 = load i64, i64* %gap_size379, align 8
  br label %cond.end.381

cond.false.380:                                   ; preds = %cond.end.362
  br label %cond.end.381

cond.end.381:                                     ; preds = %cond.false.380, %cond.true.377
  %cond382 = phi i64 [ %264, %cond.true.377 ], [ 0, %cond.false.380 ]
  %265 = load i64, i64* %bytepos.addr, align 8
  %add383 = add nsw i64 %cond382, %265
  %266 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text384 = getelementptr inbounds %struct.buffer, %struct.buffer* %266, i32 0, i32 73
  %267 = load %struct.buffer_text*, %struct.buffer_text** %text384, align 8
  %beg385 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %267, i32 0, i32 0
  %268 = load i8*, i8** %beg385, align 8
  %add.ptr386 = getelementptr inbounds i8, i8* %268, i64 %add383
  %add.ptr387 = getelementptr inbounds i8, i8* %add.ptr386, i64 -1
  %arrayidx388 = getelementptr inbounds i8, i8* %add.ptr387, i64 0
  %269 = load i8, i8* %arrayidx388, align 1
  %conv389 = zext i8 %269 to i32
  %cmp390 = icmp slt i32 %conv389, 194
  %cond392 = select i1 %cmp390, i32 4194176, i32 0
  %add393 = add nsw i32 %or372, %cond392
  br label %cond.end.492

cond.false.394:                                   ; preds = %cond.end.323
  %270 = load i64, i64* %bytepos.addr, align 8
  %271 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text395 = getelementptr inbounds %struct.buffer, %struct.buffer* %271, i32 0, i32 73
  %272 = load %struct.buffer_text*, %struct.buffer_text** %text395, align 8
  %gpt_byte396 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %272, i32 0, i32 3
  %273 = load i64, i64* %gpt_byte396, align 8
  %cmp397 = icmp sge i64 %270, %273
  br i1 %cmp397, label %cond.true.399, label %cond.false.402

cond.true.399:                                    ; preds = %cond.false.394
  %274 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text400 = getelementptr inbounds %struct.buffer, %struct.buffer* %274, i32 0, i32 73
  %275 = load %struct.buffer_text*, %struct.buffer_text** %text400, align 8
  %gap_size401 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %275, i32 0, i32 5
  %276 = load i64, i64* %gap_size401, align 8
  br label %cond.end.403

cond.false.402:                                   ; preds = %cond.false.394
  br label %cond.end.403

cond.end.403:                                     ; preds = %cond.false.402, %cond.true.399
  %cond404 = phi i64 [ %276, %cond.true.399 ], [ 0, %cond.false.402 ]
  %277 = load i64, i64* %bytepos.addr, align 8
  %add405 = add nsw i64 %cond404, %277
  %278 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text406 = getelementptr inbounds %struct.buffer, %struct.buffer* %278, i32 0, i32 73
  %279 = load %struct.buffer_text*, %struct.buffer_text** %text406, align 8
  %beg407 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %279, i32 0, i32 0
  %280 = load i8*, i8** %beg407, align 8
  %add.ptr408 = getelementptr inbounds i8, i8* %280, i64 %add405
  %add.ptr409 = getelementptr inbounds i8, i8* %add.ptr408, i64 -1
  %arrayidx410 = getelementptr inbounds i8, i8* %add.ptr409, i64 0
  %281 = load i8, i8* %arrayidx410, align 1
  %conv411 = zext i8 %281 to i32
  %and412 = and i32 %conv411, 16
  %tobool413 = icmp ne i32 %and412, 0
  br i1 %tobool413, label %cond.false.473, label %cond.true.414

cond.true.414:                                    ; preds = %cond.end.403
  store i32 3, i32* %len, align 4
  %282 = load i64, i64* %bytepos.addr, align 8
  %283 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text415 = getelementptr inbounds %struct.buffer, %struct.buffer* %283, i32 0, i32 73
  %284 = load %struct.buffer_text*, %struct.buffer_text** %text415, align 8
  %gpt_byte416 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %284, i32 0, i32 3
  %285 = load i64, i64* %gpt_byte416, align 8
  %cmp417 = icmp sge i64 %282, %285
  br i1 %cmp417, label %cond.true.419, label %cond.false.422

cond.true.419:                                    ; preds = %cond.true.414
  %286 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text420 = getelementptr inbounds %struct.buffer, %struct.buffer* %286, i32 0, i32 73
  %287 = load %struct.buffer_text*, %struct.buffer_text** %text420, align 8
  %gap_size421 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %287, i32 0, i32 5
  %288 = load i64, i64* %gap_size421, align 8
  br label %cond.end.423

cond.false.422:                                   ; preds = %cond.true.414
  br label %cond.end.423

cond.end.423:                                     ; preds = %cond.false.422, %cond.true.419
  %cond424 = phi i64 [ %288, %cond.true.419 ], [ 0, %cond.false.422 ]
  %289 = load i64, i64* %bytepos.addr, align 8
  %add425 = add nsw i64 %cond424, %289
  %290 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text426 = getelementptr inbounds %struct.buffer, %struct.buffer* %290, i32 0, i32 73
  %291 = load %struct.buffer_text*, %struct.buffer_text** %text426, align 8
  %beg427 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %291, i32 0, i32 0
  %292 = load i8*, i8** %beg427, align 8
  %add.ptr428 = getelementptr inbounds i8, i8* %292, i64 %add425
  %add.ptr429 = getelementptr inbounds i8, i8* %add.ptr428, i64 -1
  %arrayidx430 = getelementptr inbounds i8, i8* %add.ptr429, i64 0
  %293 = load i8, i8* %arrayidx430, align 1
  %conv431 = zext i8 %293 to i32
  %and432 = and i32 %conv431, 15
  %shl433 = shl i32 %and432, 12
  %294 = load i64, i64* %bytepos.addr, align 8
  %295 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text434 = getelementptr inbounds %struct.buffer, %struct.buffer* %295, i32 0, i32 73
  %296 = load %struct.buffer_text*, %struct.buffer_text** %text434, align 8
  %gpt_byte435 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %296, i32 0, i32 3
  %297 = load i64, i64* %gpt_byte435, align 8
  %cmp436 = icmp sge i64 %294, %297
  br i1 %cmp436, label %cond.true.438, label %cond.false.441

cond.true.438:                                    ; preds = %cond.end.423
  %298 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text439 = getelementptr inbounds %struct.buffer, %struct.buffer* %298, i32 0, i32 73
  %299 = load %struct.buffer_text*, %struct.buffer_text** %text439, align 8
  %gap_size440 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %299, i32 0, i32 5
  %300 = load i64, i64* %gap_size440, align 8
  br label %cond.end.442

cond.false.441:                                   ; preds = %cond.end.423
  br label %cond.end.442

cond.end.442:                                     ; preds = %cond.false.441, %cond.true.438
  %cond443 = phi i64 [ %300, %cond.true.438 ], [ 0, %cond.false.441 ]
  %301 = load i64, i64* %bytepos.addr, align 8
  %add444 = add nsw i64 %cond443, %301
  %302 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text445 = getelementptr inbounds %struct.buffer, %struct.buffer* %302, i32 0, i32 73
  %303 = load %struct.buffer_text*, %struct.buffer_text** %text445, align 8
  %beg446 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %303, i32 0, i32 0
  %304 = load i8*, i8** %beg446, align 8
  %add.ptr447 = getelementptr inbounds i8, i8* %304, i64 %add444
  %add.ptr448 = getelementptr inbounds i8, i8* %add.ptr447, i64 -1
  %arrayidx449 = getelementptr inbounds i8, i8* %add.ptr448, i64 1
  %305 = load i8, i8* %arrayidx449, align 1
  %conv450 = zext i8 %305 to i32
  %and451 = and i32 %conv450, 63
  %shl452 = shl i32 %and451, 6
  %or453 = or i32 %shl433, %shl452
  %306 = load i64, i64* %bytepos.addr, align 8
  %307 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text454 = getelementptr inbounds %struct.buffer, %struct.buffer* %307, i32 0, i32 73
  %308 = load %struct.buffer_text*, %struct.buffer_text** %text454, align 8
  %gpt_byte455 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %308, i32 0, i32 3
  %309 = load i64, i64* %gpt_byte455, align 8
  %cmp456 = icmp sge i64 %306, %309
  br i1 %cmp456, label %cond.true.458, label %cond.false.461

cond.true.458:                                    ; preds = %cond.end.442
  %310 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text459 = getelementptr inbounds %struct.buffer, %struct.buffer* %310, i32 0, i32 73
  %311 = load %struct.buffer_text*, %struct.buffer_text** %text459, align 8
  %gap_size460 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %311, i32 0, i32 5
  %312 = load i64, i64* %gap_size460, align 8
  br label %cond.end.462

cond.false.461:                                   ; preds = %cond.end.442
  br label %cond.end.462

cond.end.462:                                     ; preds = %cond.false.461, %cond.true.458
  %cond463 = phi i64 [ %312, %cond.true.458 ], [ 0, %cond.false.461 ]
  %313 = load i64, i64* %bytepos.addr, align 8
  %add464 = add nsw i64 %cond463, %313
  %314 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text465 = getelementptr inbounds %struct.buffer, %struct.buffer* %314, i32 0, i32 73
  %315 = load %struct.buffer_text*, %struct.buffer_text** %text465, align 8
  %beg466 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %315, i32 0, i32 0
  %316 = load i8*, i8** %beg466, align 8
  %add.ptr467 = getelementptr inbounds i8, i8* %316, i64 %add464
  %add.ptr468 = getelementptr inbounds i8, i8* %add.ptr467, i64 -1
  %arrayidx469 = getelementptr inbounds i8, i8* %add.ptr468, i64 2
  %317 = load i8, i8* %arrayidx469, align 1
  %conv470 = zext i8 %317 to i32
  %and471 = and i32 %conv470, 63
  %or472 = or i32 %or453, %and471
  br label %cond.end.490

cond.false.473:                                   ; preds = %cond.end.403
  %318 = load i64, i64* %bytepos.addr, align 8
  %319 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text474 = getelementptr inbounds %struct.buffer, %struct.buffer* %319, i32 0, i32 73
  %320 = load %struct.buffer_text*, %struct.buffer_text** %text474, align 8
  %gpt_byte475 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %320, i32 0, i32 3
  %321 = load i64, i64* %gpt_byte475, align 8
  %cmp476 = icmp sge i64 %318, %321
  br i1 %cmp476, label %cond.true.478, label %cond.false.481

cond.true.478:                                    ; preds = %cond.false.473
  %322 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text479 = getelementptr inbounds %struct.buffer, %struct.buffer* %322, i32 0, i32 73
  %323 = load %struct.buffer_text*, %struct.buffer_text** %text479, align 8
  %gap_size480 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %323, i32 0, i32 5
  %324 = load i64, i64* %gap_size480, align 8
  br label %cond.end.482

cond.false.481:                                   ; preds = %cond.false.473
  br label %cond.end.482

cond.end.482:                                     ; preds = %cond.false.481, %cond.true.478
  %cond483 = phi i64 [ %324, %cond.true.478 ], [ 0, %cond.false.481 ]
  %325 = load i64, i64* %bytepos.addr, align 8
  %add484 = add nsw i64 %cond483, %325
  %326 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text485 = getelementptr inbounds %struct.buffer, %struct.buffer* %326, i32 0, i32 73
  %327 = load %struct.buffer_text*, %struct.buffer_text** %text485, align 8
  %beg486 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %327, i32 0, i32 0
  %328 = load i8*, i8** %beg486, align 8
  %add.ptr487 = getelementptr inbounds i8, i8* %328, i64 %add484
  %add.ptr488 = getelementptr inbounds i8, i8* %add.ptr487, i64 -1
  %call489 = call i32 @string_char(i8* %add.ptr488, i8** null, i32* %len)
  br label %cond.end.490

cond.end.490:                                     ; preds = %cond.end.482, %cond.end.462
  %cond491 = phi i32 [ %or472, %cond.end.462 ], [ %call489, %cond.end.482 ]
  br label %cond.end.492

cond.end.492:                                     ; preds = %cond.end.490, %cond.end.381
  %cond493 = phi i32 [ %add393, %cond.end.381 ], [ %cond491, %cond.end.490 ]
  br label %cond.end.494

cond.end.494:                                     ; preds = %cond.end.492, %cond.end.305
  %cond495 = phi i32 [ %conv313, %cond.end.305 ], [ %cond493, %cond.end.492 ]
  store i32 %cond495, i32* %ch, align 4
  %329 = load i32, i32* %len, align 4
  %conv496 = sext i32 %329 to i64
  %330 = load i64*, i64** %ch_len.addr, align 8
  store i64 %conv496, i64* %330, align 8
  br label %if.end.497

if.end.497:                                       ; preds = %cond.end.494, %if.end.279
  br label %if.end.498

if.end.498:                                       ; preds = %if.end.497, %if.end.154
  %331 = load i64*, i64** %nchars.addr, align 8
  store i64 1, i64* %331, align 8
  br label %if.end.499

if.end.499:                                       ; preds = %if.end.498, %if.end.47
  br label %if.end.500

if.end.500:                                       ; preds = %if.end.499, %if.then.7
  %332 = load i64, i64* %charpos.addr, align 8
  %333 = load i64*, i64** %nchars.addr, align 8
  %334 = load i64, i64* %333, align 8
  %add501 = add nsw i64 %332, %334
  %335 = load i64, i64* %endpos, align 8
  %cmp502 = icmp sle i64 %add501, %335
  br i1 %cmp502, label %land.lhs.true.504, label %if.end.517

land.lhs.true.504:                                ; preds = %if.end.500
  %336 = load i64, i64* %charpos.addr, align 8
  %337 = load i64*, i64** %nchars.addr, align 8
  %338 = load i64, i64* %337, align 8
  %add505 = add nsw i64 %336, %338
  %339 = load i64*, i64** %disp_pos.addr, align 8
  %340 = load i64, i64* %339, align 8
  %cmp506 = icmp sgt i64 %add505, %340
  br i1 %cmp506, label %land.lhs.true.508, label %if.end.517

land.lhs.true.508:                                ; preds = %land.lhs.true.504
  %341 = load i32*, i32** %disp_prop.addr, align 8
  %342 = load i32, i32* %341, align 4
  %tobool509 = icmp ne i32 %342, 0
  br i1 %tobool509, label %if.then.510, label %if.end.517

if.then.510:                                      ; preds = %land.lhs.true.508
  %343 = load i64, i64* %charpos.addr, align 8
  %344 = load i64*, i64** %nchars.addr, align 8
  %345 = load i64, i64* %344, align 8
  %add511 = add nsw i64 %343, %345
  %charpos512 = getelementptr inbounds %struct.text_pos, %struct.text_pos* %pos, i32 0, i32 0
  store i64 %add511, i64* %charpos512, align 8
  %346 = load i64, i64* %bytepos.addr, align 8
  %347 = load i64*, i64** %ch_len.addr, align 8
  %348 = load i64, i64* %347, align 8
  %add513 = add nsw i64 %346, %348
  %bytepos514 = getelementptr inbounds %struct.text_pos, %struct.text_pos* %pos, i32 0, i32 1
  store i64 %add513, i64* %bytepos514, align 8
  %349 = load %struct.bidi_string_data*, %struct.bidi_string_data** %string.addr, align 8
  %350 = load %struct.window*, %struct.window** %w.addr, align 8
  %351 = load i8, i8* %frame_window_p.addr, align 1
  %tobool515 = trunc i8 %351 to i1
  %352 = load i32*, i32** %disp_prop.addr, align 8
  %call516 = call i64 @compute_display_string_pos(%struct.text_pos* %pos, %struct.bidi_string_data* %349, %struct.window* %350, i1 zeroext %tobool515, i32* %352)
  %353 = load i64*, i64** %disp_pos.addr, align 8
  store i64 %call516, i64* %353, align 8
  br label %if.end.517

if.end.517:                                       ; preds = %if.then.510, %land.lhs.true.508, %land.lhs.true.504, %if.end.500
  %354 = load i32, i32* %ch, align 4
  ret i32 %354
}

declare i64 @compute_display_string_pos(%struct.text_pos*, %struct.bidi_string_data*, %struct.window*, i1 zeroext, i32*) #2

declare i64 @compute_display_string_end(i64, %struct.bidi_string_data*) #2

; Function Attrs: nounwind uwtable
define internal i64 @bidi_count_bytes(i8* %s, i64 %beg, i64 %begbyte, i64 %end, i1 zeroext %unibyte) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %beg.addr = alloca i64, align 8
  %begbyte.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %unibyte.addr = alloca i8, align 1
  %pos = alloca i64, align 8
  %p = alloca i8*, align 8
  %start = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i64 %beg, i64* %beg.addr, align 8
  store i64 %begbyte, i64* %begbyte.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  %frombool = zext i1 %unibyte to i8
  store i8 %frombool, i8* %unibyte.addr, align 1
  %0 = load i64, i64* %beg.addr, align 8
  store i64 %0, i64* %pos, align 8
  %1 = load i8*, i8** %s.addr, align 8
  %2 = load i64, i64* %begbyte.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %2
  store i8* %add.ptr, i8** %p, align 8
  %3 = load i8*, i8** %p, align 8
  store i8* %3, i8** %start, align 8
  %4 = load i8, i8* %unibyte.addr, align 1
  %tobool = trunc i8 %4 to i1
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %s.addr, align 8
  %6 = load i64, i64* %end.addr, align 8
  %add.ptr1 = getelementptr inbounds i8, i8* %5, i64 %6
  store i8* %add.ptr1, i8** %p, align 8
  br label %if.end.28

if.else:                                          ; preds = %entry
  %7 = load i8*, i8** %p, align 8
  %8 = load i8, i8* %7, align 1
  %conv = zext i8 %8 to i32
  %and = and i32 %conv, 192
  %cmp = icmp ne i32 %and, 128
  br i1 %cmp, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.else
  call void @emacs_abort() #4
  unreachable

if.end:                                           ; preds = %if.else
  br label %while.cond

while.cond:                                       ; preds = %cond.end.25, %if.end
  %9 = load i64, i64* %pos, align 8
  %10 = load i64, i64* %end.addr, align 8
  %cmp4 = icmp slt i64 %9, %10
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i8*, i8** %p, align 8
  %12 = load i8, i8* %11, align 1
  %conv6 = zext i8 %12 to i32
  %and7 = and i32 %conv6, 128
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %cond.false, label %cond.true

cond.true:                                        ; preds = %while.body
  br label %cond.end.25

cond.false:                                       ; preds = %while.body
  %13 = load i8*, i8** %p, align 8
  %14 = load i8, i8* %13, align 1
  %conv9 = zext i8 %14 to i32
  %and10 = and i32 %conv9, 32
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %cond.false.13, label %cond.true.12

cond.true.12:                                     ; preds = %cond.false
  br label %cond.end.23

cond.false.13:                                    ; preds = %cond.false
  %15 = load i8*, i8** %p, align 8
  %16 = load i8, i8* %15, align 1
  %conv14 = zext i8 %16 to i32
  %and15 = and i32 %conv14, 16
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %cond.false.18, label %cond.true.17

cond.true.17:                                     ; preds = %cond.false.13
  br label %cond.end

cond.false.18:                                    ; preds = %cond.false.13
  %17 = load i8*, i8** %p, align 8
  %18 = load i8, i8* %17, align 1
  %conv19 = zext i8 %18 to i32
  %and20 = and i32 %conv19, 8
  %tobool21 = icmp ne i32 %and20, 0
  %lnot = xor i1 %tobool21, true
  %cond = select i1 %lnot, i32 4, i32 5
  br label %cond.end

cond.end:                                         ; preds = %cond.false.18, %cond.true.17
  %cond22 = phi i32 [ 3, %cond.true.17 ], [ %cond, %cond.false.18 ]
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.end, %cond.true.12
  %cond24 = phi i32 [ 2, %cond.true.12 ], [ %cond22, %cond.end ]
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.end.23, %cond.true
  %cond26 = phi i32 [ 1, %cond.true ], [ %cond24, %cond.end.23 ]
  %19 = load i8*, i8** %p, align 8
  %idx.ext = sext i32 %cond26 to i64
  %add.ptr27 = getelementptr inbounds i8, i8* %19, i64 %idx.ext
  store i8* %add.ptr27, i8** %p, align 8
  %20 = load i64, i64* %pos, align 8
  %inc = add nsw i64 %20, 1
  store i64 %inc, i64* %pos, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.28

if.end.28:                                        ; preds = %while.end, %if.then
  %21 = load i8*, i8** %p, align 8
  %22 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %21 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %22 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  ret i64 %sub.ptr.sub
}

declare zeroext i8 @SREF(i64, i64) #2

; Function Attrs: nounwind uwtable
define internal void @bidi_set_sos_type(%struct.bidi_it* %bidi_it, i32 %level_before, i32 %level_after) #0 {
entry:
  %bidi_it.addr = alloca %struct.bidi_it*, align 8
  %level_before.addr = alloca i32, align 4
  %level_after.addr = alloca i32, align 4
  %higher_level = alloca i32, align 4
  store %struct.bidi_it* %bidi_it, %struct.bidi_it** %bidi_it.addr, align 8
  store i32 %level_before, i32* %level_before.addr, align 4
  store i32 %level_after, i32* %level_after.addr, align 4
  %0 = load i32, i32* %level_before.addr, align 4
  %1 = load i32, i32* %level_after.addr, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %level_before.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %level_after.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  store i32 %cond, i32* %higher_level, align 4
  %4 = load i32, i32* %higher_level, align 4
  %and = and i32 %4, 1
  %cmp1 = icmp ne i32 %and, 0
  %cond2 = select i1 %cmp1, i32 2, i32 1
  %5 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %sos = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %5, i32 0, i32 21
  store i32 %cond2, i32* %sos, align 4
  %6 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %prev = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %6, i32 0, i32 12
  %type = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %prev, i32 0, i32 1
  store i32 0, i32* %type, align 4
  %7 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %last_strong = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %7, i32 0, i32 13
  %orig_type = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %last_strong, i32 0, i32 2
  store i32 0, i32* %orig_type, align 4
  %8 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %last_strong3 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %8, i32 0, i32 13
  %type4 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %last_strong3, i32 0, i32 1
  store i32 0, i32* %type4, align 4
  %9 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %sos5 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %9, i32 0, i32 21
  %10 = load i32, i32* %sos5, align 4
  %cmp6 = icmp eq i32 %10, 2
  %cond7 = select i1 %cmp6, i32 2, i32 1
  %11 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %prev_for_neutral = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %11, i32 0, i32 15
  %type8 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %prev_for_neutral, i32 0, i32 1
  store i32 %cond7, i32* %type8, align 4
  %12 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %charpos = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %12, i32 0, i32 1
  %13 = load i64, i64* %charpos, align 8
  %14 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %prev_for_neutral9 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %14, i32 0, i32 15
  %charpos10 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %prev_for_neutral9, i32 0, i32 0
  store i64 %13, i64* %charpos10, align 8
  %15 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %next_for_neutral = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %15, i32 0, i32 14
  %orig_type11 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %next_for_neutral, i32 0, i32 2
  store i32 0, i32* %orig_type11, align 4
  %16 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %next_for_neutral12 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %16, i32 0, i32 14
  %type13 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %next_for_neutral12, i32 0, i32 1
  store i32 0, i32* %type13, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @bidi_cache_search(i64 %charpos, i32 %level, i32 %dir) #0 {
entry:
  %retval = alloca i64, align 8
  %charpos.addr = alloca i64, align 8
  %level.addr = alloca i32, align 4
  %dir.addr = alloca i32, align 4
  %i = alloca i64, align 8
  %i_start = alloca i64, align 8
  store i64 %charpos, i64* %charpos.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  store i32 %dir, i32* %dir.addr, align 4
  %0 = load i64, i64* @bidi_cache_idx, align 8
  %1 = load i64, i64* @bidi_cache_start, align 8
  %cmp = icmp sgt i64 %0, %1
  br i1 %cmp, label %if.then, label %if.end.71

if.then:                                          ; preds = %entry
  %2 = load i64, i64* @bidi_cache_last_idx, align 8
  %cmp1 = icmp eq i64 %2, -1
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %3 = load i64, i64* @bidi_cache_idx, align 8
  %sub = sub nsw i64 %3, 1
  store i64 %sub, i64* @bidi_cache_last_idx, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %4 = load i64, i64* %charpos.addr, align 8
  %5 = load i64, i64* @bidi_cache_last_idx, align 8
  %6 = load %struct.bidi_it*, %struct.bidi_it** @bidi_cache, align 8
  %arrayidx = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %6, i64 %5
  %charpos3 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %arrayidx, i32 0, i32 1
  %7 = load i64, i64* %charpos3, align 8
  %cmp4 = icmp slt i64 %4, %7
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  store i32 -1, i32* %dir.addr, align 4
  %8 = load i64, i64* @bidi_cache_last_idx, align 8
  %sub6 = sub nsw i64 %8, 1
  store i64 %sub6, i64* %i_start, align 8
  br label %if.end.20

if.else:                                          ; preds = %if.end
  %9 = load i64, i64* %charpos.addr, align 8
  %10 = load i64, i64* @bidi_cache_last_idx, align 8
  %11 = load %struct.bidi_it*, %struct.bidi_it** @bidi_cache, align 8
  %arrayidx7 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %11, i64 %10
  %charpos8 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %arrayidx7, i32 0, i32 1
  %12 = load i64, i64* %charpos8, align 8
  %13 = load i64, i64* @bidi_cache_last_idx, align 8
  %14 = load %struct.bidi_it*, %struct.bidi_it** @bidi_cache, align 8
  %arrayidx9 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %14, i64 %13
  %nchars = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %arrayidx9, i32 0, i32 3
  %15 = load i64, i64* %nchars, align 8
  %add = add nsw i64 %12, %15
  %sub10 = sub nsw i64 %add, 1
  %cmp11 = icmp sgt i64 %9, %sub10
  br i1 %cmp11, label %if.then.12, label %if.else.14

if.then.12:                                       ; preds = %if.else
  store i32 1, i32* %dir.addr, align 4
  %16 = load i64, i64* @bidi_cache_last_idx, align 8
  %add13 = add nsw i64 %16, 1
  store i64 %add13, i64* %i_start, align 8
  br label %if.end.19

if.else.14:                                       ; preds = %if.else
  %17 = load i32, i32* %dir.addr, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.else.14
  %18 = load i64, i64* @bidi_cache_last_idx, align 8
  store i64 %18, i64* %i_start, align 8
  br label %if.end.18

if.else.16:                                       ; preds = %if.else.14
  store i32 -1, i32* %dir.addr, align 4
  %19 = load i64, i64* @bidi_cache_idx, align 8
  %sub17 = sub nsw i64 %19, 1
  store i64 %sub17, i64* %i_start, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.16, %if.then.15
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.12
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.then.5
  %20 = load i32, i32* %dir.addr, align 4
  %cmp21 = icmp slt i32 %20, 0
  br i1 %cmp21, label %if.then.22, label %if.else.40

if.then.22:                                       ; preds = %if.end.20
  %21 = load i64, i64* %i_start, align 8
  store i64 %21, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.22
  %22 = load i64, i64* %i, align 8
  %23 = load i64, i64* @bidi_cache_start, align 8
  %cmp23 = icmp sge i64 %22, %23
  br i1 %cmp23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i64, i64* %i, align 8
  %25 = load %struct.bidi_it*, %struct.bidi_it** @bidi_cache, align 8
  %arrayidx24 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %25, i64 %24
  %charpos25 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %arrayidx24, i32 0, i32 1
  %26 = load i64, i64* %charpos25, align 8
  %27 = load i64, i64* %charpos.addr, align 8
  %cmp26 = icmp sle i64 %26, %27
  br i1 %cmp26, label %land.lhs.true, label %if.end.39

land.lhs.true:                                    ; preds = %for.body
  %28 = load i64, i64* %charpos.addr, align 8
  %29 = load i64, i64* %i, align 8
  %30 = load %struct.bidi_it*, %struct.bidi_it** @bidi_cache, align 8
  %arrayidx27 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %30, i64 %29
  %charpos28 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %arrayidx27, i32 0, i32 1
  %31 = load i64, i64* %charpos28, align 8
  %32 = load i64, i64* %i, align 8
  %33 = load %struct.bidi_it*, %struct.bidi_it** @bidi_cache, align 8
  %arrayidx29 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %33, i64 %32
  %nchars30 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %arrayidx29, i32 0, i32 3
  %34 = load i64, i64* %nchars30, align 8
  %add31 = add nsw i64 %31, %34
  %cmp32 = icmp slt i64 %28, %add31
  br i1 %cmp32, label %land.lhs.true.33, label %if.end.39

land.lhs.true.33:                                 ; preds = %land.lhs.true
  %35 = load i32, i32* %level.addr, align 4
  %cmp34 = icmp eq i32 %35, -1
  br i1 %cmp34, label %if.then.38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.33
  %36 = load i64, i64* %i, align 8
  %37 = load %struct.bidi_it*, %struct.bidi_it** @bidi_cache, align 8
  %arrayidx35 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %37, i64 %36
  %resolved_level = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %arrayidx35, i32 0, i32 8
  %38 = load i8, i8* %resolved_level, align 1
  %conv = sext i8 %38 to i32
  %39 = load i32, i32* %level.addr, align 4
  %cmp36 = icmp sle i32 %conv, %39
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %lor.lhs.false, %land.lhs.true.33
  %40 = load i64, i64* %i, align 8
  store i64 %40, i64* %retval
  br label %return

if.end.39:                                        ; preds = %lor.lhs.false, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.39
  %41 = load i64, i64* %i, align 8
  %dec = add nsw i64 %41, -1
  store i64 %dec, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.70

if.else.40:                                       ; preds = %if.end.20
  %42 = load i64, i64* %i_start, align 8
  store i64 %42, i64* %i, align 8
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.68, %if.else.40
  %43 = load i64, i64* %i, align 8
  %44 = load i64, i64* @bidi_cache_idx, align 8
  %cmp42 = icmp slt i64 %43, %44
  br i1 %cmp42, label %for.body.44, label %for.end.69

for.body.44:                                      ; preds = %for.cond.41
  %45 = load i64, i64* %i, align 8
  %46 = load %struct.bidi_it*, %struct.bidi_it** @bidi_cache, align 8
  %arrayidx45 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %46, i64 %45
  %charpos46 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %arrayidx45, i32 0, i32 1
  %47 = load i64, i64* %charpos46, align 8
  %48 = load i64, i64* %charpos.addr, align 8
  %cmp47 = icmp sle i64 %47, %48
  br i1 %cmp47, label %land.lhs.true.49, label %if.end.67

land.lhs.true.49:                                 ; preds = %for.body.44
  %49 = load i64, i64* %charpos.addr, align 8
  %50 = load i64, i64* %i, align 8
  %51 = load %struct.bidi_it*, %struct.bidi_it** @bidi_cache, align 8
  %arrayidx50 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %51, i64 %50
  %charpos51 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %arrayidx50, i32 0, i32 1
  %52 = load i64, i64* %charpos51, align 8
  %53 = load i64, i64* %i, align 8
  %54 = load %struct.bidi_it*, %struct.bidi_it** @bidi_cache, align 8
  %arrayidx52 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %54, i64 %53
  %nchars53 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %arrayidx52, i32 0, i32 3
  %55 = load i64, i64* %nchars53, align 8
  %add54 = add nsw i64 %52, %55
  %cmp55 = icmp slt i64 %49, %add54
  br i1 %cmp55, label %land.lhs.true.57, label %if.end.67

land.lhs.true.57:                                 ; preds = %land.lhs.true.49
  %56 = load i32, i32* %level.addr, align 4
  %cmp58 = icmp eq i32 %56, -1
  br i1 %cmp58, label %if.then.66, label %lor.lhs.false.60

lor.lhs.false.60:                                 ; preds = %land.lhs.true.57
  %57 = load i64, i64* %i, align 8
  %58 = load %struct.bidi_it*, %struct.bidi_it** @bidi_cache, align 8
  %arrayidx61 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %58, i64 %57
  %resolved_level62 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %arrayidx61, i32 0, i32 8
  %59 = load i8, i8* %resolved_level62, align 1
  %conv63 = sext i8 %59 to i32
  %60 = load i32, i32* %level.addr, align 4
  %cmp64 = icmp sle i32 %conv63, %60
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %lor.lhs.false.60, %land.lhs.true.57
  %61 = load i64, i64* %i, align 8
  store i64 %61, i64* %retval
  br label %return

if.end.67:                                        ; preds = %lor.lhs.false.60, %land.lhs.true.49, %for.body.44
  br label %for.inc.68

for.inc.68:                                       ; preds = %if.end.67
  %62 = load i64, i64* %i, align 8
  %inc = add nsw i64 %62, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond.41

for.end.69:                                       ; preds = %for.cond.41
  br label %if.end.70

if.end.70:                                        ; preds = %for.end.69, %for.end
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %entry
  store i64 -1, i64* %retval
  br label %return

return:                                           ; preds = %if.end.71, %if.then.66, %if.then.38
  %63 = load i64, i64* %retval
  ret i64 %63
}

; Function Attrs: nounwind uwtable
define internal void @bidi_check_type(i32 %type) #0 {
entry:
  %type.addr = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @bidi_cache_find(i64 %charpos, i1 zeroext %resolved_only, %struct.bidi_it* %bidi_it) #0 {
entry:
  %retval = alloca i32, align 4
  %charpos.addr = alloca i64, align 8
  %resolved_only.addr = alloca i8, align 1
  %bidi_it.addr = alloca %struct.bidi_it*, align 8
  %i = alloca i64, align 8
  %current_scan_dir = alloca i32, align 4
  store i64 %charpos, i64* %charpos.addr, align 8
  %frombool = zext i1 %resolved_only to i8
  store i8 %frombool, i8* %resolved_only.addr, align 1
  store %struct.bidi_it* %bidi_it, %struct.bidi_it** %bidi_it.addr, align 8
  %0 = load i64, i64* %charpos.addr, align 8
  %1 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %scan_dir = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %1, i32 0, i32 22
  %2 = load i32, i32* %scan_dir, align 4
  %call = call i64 @bidi_cache_search(i64 %0, i32 -1, i32 %2)
  store i64 %call, i64* %i, align 8
  %3 = load i64, i64* %i, align 8
  %4 = load i64, i64* @bidi_cache_start, align 8
  %cmp = icmp sge i64 %3, %4
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load i8, i8* %resolved_only.addr, align 1
  %tobool = trunc i8 %5 to i1
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %6 = load i64, i64* %i, align 8
  %7 = load %struct.bidi_it*, %struct.bidi_it** @bidi_cache, align 8
  %arrayidx = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %7, i64 %6
  %resolved_level = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %arrayidx, i32 0, i32 8
  %8 = load i8, i8* %resolved_level, align 1
  %conv = sext i8 %8 to i32
  %cmp1 = icmp sge i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %9 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %scan_dir3 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %9, i32 0, i32 22
  %10 = load i32, i32* %scan_dir3, align 4
  store i32 %10, i32* %current_scan_dir, align 4
  %11 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %12 = load i64, i64* %i, align 8
  %13 = load %struct.bidi_it*, %struct.bidi_it** @bidi_cache, align 8
  %arrayidx4 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %13, i64 %12
  call void @bidi_copy_it(%struct.bidi_it* %11, %struct.bidi_it* %arrayidx4)
  %14 = load i64, i64* %i, align 8
  store i64 %14, i64* @bidi_cache_last_idx, align 8
  %15 = load i32, i32* %current_scan_dir, align 4
  %16 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %scan_dir5 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %16, i32 0, i32 22
  store i32 %15, i32* %scan_dir5, align 4
  %17 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %17, i32 0, i32 5
  %18 = load i32, i32* %type, align 4
  store i32 %18, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal i32 @bidi_type_of_next_char(%struct.bidi_it* %bidi_it) #0 {
entry:
  %bidi_it.addr = alloca %struct.bidi_it*, align 8
  %type = alloca i32, align 4
  store %struct.bidi_it* %bidi_it, %struct.bidi_it** %bidi_it.addr, align 8
  %0 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %scan_dir = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %0, i32 0, i32 22
  %1 = load i32, i32* %scan_dir, align 4
  %cmp = icmp ne i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @emacs_abort() #4
  unreachable

if.end:                                           ; preds = %entry
  %2 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %call = call i32 @bidi_resolve_neutral(%struct.bidi_it* %2)
  store i32 %call, i32* %type, align 4
  %3 = load i32, i32* %type, align 4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @bidi_isolate_fmt_char(i32 %ch_type) #0 {
entry:
  %ch_type.addr = alloca i32, align 4
  store i32 %ch_type, i32* %ch_type.addr, align 4
  %0 = load i32, i32* %ch_type.addr, align 4
  %cmp = icmp eq i32 %0, 13
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %ch_type.addr, align 4
  %cmp1 = icmp eq i32 %1, 14
  br i1 %cmp1, label %lor.end, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %2 = load i32, i32* %ch_type.addr, align 4
  %cmp3 = icmp eq i32 %2, 16
  br i1 %cmp3, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.2
  %3 = load i32, i32* %ch_type.addr, align 4
  %cmp4 = icmp eq i32 %3, 15
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.2, %lor.lhs.false, %entry
  %4 = phi i1 [ true, %lor.lhs.false.2 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp4, %lor.rhs ]
  ret i1 %4
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @bidi_explicit_dir_char(i32 %ch) #0 {
entry:
  %retval = alloca i1, align 1
  %ch.addr = alloca i32, align 4
  %ch_type = alloca i32, align 4
  store i32 %ch, i32* %ch.addr, align 4
  %0 = load i8, i8* @bidi_initialized, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @emacs_abort() #4
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %ch.addr, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  store i1 false, i1* %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %2 = load i64, i64* @bidi_type_table, align 8
  %3 = load i32, i32* %ch.addr, align 4
  %call = call i64 @CHAR_TABLE_REF(i64 %2, i32 %3)
  %shr = ashr i64 %call, 2
  %conv = trunc i64 %shr to i32
  store i32 %conv, i32* %ch_type, align 4
  %4 = load i32, i32* %ch_type, align 4
  %cmp3 = icmp eq i32 %4, 8
  br i1 %cmp3, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.2
  %5 = load i32, i32* %ch_type, align 4
  %cmp5 = icmp eq i32 %5, 9
  br i1 %cmp5, label %lor.end, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false
  %6 = load i32, i32* %ch_type, align 4
  %cmp8 = icmp eq i32 %6, 10
  br i1 %cmp8, label %lor.end, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false.7
  %7 = load i32, i32* %ch_type, align 4
  %cmp11 = icmp eq i32 %7, 11
  br i1 %cmp11, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.10
  %8 = load i32, i32* %ch_type, align 4
  %cmp13 = icmp eq i32 %8, 12
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.10, %lor.lhs.false.7, %lor.lhs.false, %if.end.2
  %9 = phi i1 [ true, %lor.lhs.false.10 ], [ true, %lor.lhs.false.7 ], [ true, %lor.lhs.false ], [ true, %if.end.2 ], [ %cmp13, %lor.rhs ]
  store i1 %9, i1* %retval
  br label %return

return:                                           ; preds = %lor.end, %if.then.1
  %10 = load i1, i1* %retval
  ret i1 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @bidi_resolve_neutral(%struct.bidi_it* %bidi_it) #0 {
entry:
  %retval = alloca i32, align 4
  %bidi_it.addr = alloca %struct.bidi_it*, align 8
  %type = alloca i32, align 4
  %current_level = alloca i32, align 4
  %is_neutral = alloca i8, align 1
  %saved_it = alloca %struct.bidi_it, align 8
  %next_type = alloca i32, align 4
  %adjacent_to_neutrals = alloca i8, align 1
  %old_sidx = alloca i32, align 4
  %new_sidx = alloca i32, align 4
  store %struct.bidi_it* %bidi_it, %struct.bidi_it** %bidi_it.addr, align 8
  %0 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %call = call i32 @bidi_resolve_brackets(%struct.bidi_it* %0)
  store i32 %call, i32* %type, align 4
  %1 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %stack_idx = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %1, i32 0, i32 25
  %2 = load i32, i32* %stack_idx, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %level_stack = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %3, i32 0, i32 26
  %arrayidx = getelementptr inbounds [128 x %struct.bidi_stack], [128 x %struct.bidi_stack]* %level_stack, i32 0, i64 %idxprom
  %level = getelementptr inbounds %struct.bidi_stack, %struct.bidi_stack* %arrayidx, i32 0, i32 2
  %4 = load i8, i8* %level, align 1
  %conv = zext i8 %4 to i32
  store i32 %conv, i32* %current_level, align 4
  %5 = load i32, i32* %type, align 4
  %call1 = call i32 @bidi_get_category(i32 %5)
  %cmp = icmp eq i32 %call1, 1
  %frombool = zext i1 %cmp to i8
  store i8 %frombool, i8* %is_neutral, align 1
  %6 = load i32, i32* %type, align 4
  %cmp3 = icmp ne i32 %6, 6
  br i1 %cmp3, label %land.lhs.true, label %lor.lhs.false.8

land.lhs.true:                                    ; preds = %entry
  %7 = load i8, i8* %is_neutral, align 1
  %tobool = trunc i8 %7 to i1
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %8 = load i32, i32* %type, align 4
  %call6 = call zeroext i1 @bidi_isolate_fmt_char(i32 %8)
  br i1 %call6, label %if.then, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false, %entry
  %9 = load i32, i32* %type, align 4
  %cmp9 = icmp eq i32 %9, 5
  br i1 %cmp9, label %if.then, label %if.end.206

if.then:                                          ; preds = %lor.lhs.false.8, %lor.lhs.false, %land.lhs.true
  %10 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %next_for_neutral = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %10, i32 0, i32 14
  %type11 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %next_for_neutral, i32 0, i32 1
  %11 = load i32, i32* %type11, align 4
  %cmp12 = icmp ne i32 %11, 0
  br i1 %cmp12, label %land.lhs.true.14, label %if.else

land.lhs.true.14:                                 ; preds = %if.then
  %12 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %next_for_neutral15 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %12, i32 0, i32 14
  %charpos = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %next_for_neutral15, i32 0, i32 0
  %13 = load i64, i64* %charpos, align 8
  %14 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %charpos16 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %14, i32 0, i32 1
  %15 = load i64, i64* %charpos16, align 8
  %cmp17 = icmp sgt i64 %13, %15
  br i1 %cmp17, label %if.then.29, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %land.lhs.true.14
  %16 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %next_for_neutral20 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %16, i32 0, i32 14
  %charpos21 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %next_for_neutral20, i32 0, i32 0
  %17 = load i64, i64* %charpos21, align 8
  %18 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %charpos22 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %18, i32 0, i32 1
  %19 = load i64, i64* %charpos22, align 8
  %cmp23 = icmp eq i64 %17, %19
  br i1 %cmp23, label %land.lhs.true.25, label %if.else

land.lhs.true.25:                                 ; preds = %lor.lhs.false.19
  %20 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type26 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %20, i32 0, i32 5
  %21 = load i32, i32* %type26, align 4
  %cmp27 = icmp eq i32 %21, 16
  br i1 %cmp27, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %land.lhs.true.25, %land.lhs.true.14
  %22 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %prev_for_neutral = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %22, i32 0, i32 15
  %type30 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %prev_for_neutral, i32 0, i32 1
  %23 = load i32, i32* %type30, align 4
  %24 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %next_for_neutral31 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %24, i32 0, i32 14
  %type32 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %next_for_neutral31, i32 0, i32 1
  %25 = load i32, i32* %type32, align 4
  %26 = load i32, i32* %current_level, align 4
  %call33 = call i32 @bidi_resolve_neutral_1(i32 %23, i32 %25, i32 %26)
  store i32 %call33, i32* %type, align 4
  br label %if.end.205

if.else:                                          ; preds = %land.lhs.true.25, %lor.lhs.false.19, %if.then
  %27 = load i32, i32* %current_level, align 4
  %cmp34 = icmp eq i32 %27, 0
  br i1 %cmp34, label %land.lhs.true.36, label %if.else.61

land.lhs.true.36:                                 ; preds = %if.else
  %28 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %prev_for_neutral37 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %28, i32 0, i32 15
  %type38 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %prev_for_neutral37, i32 0, i32 1
  %29 = load i32, i32* %type38, align 4
  %cmp39 = icmp eq i32 %29, 1
  br i1 %cmp39, label %land.lhs.true.41, label %if.else.61

land.lhs.true.41:                                 ; preds = %land.lhs.true.36
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.41
  %30 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %ch = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %30, i32 0, i32 2
  %31 = load i32, i32* %ch, align 4
  %add = add i32 %31, 0
  %cmp42 = icmp ult i32 %add, 128
  br i1 %cmp42, label %if.then.57, label %lor.lhs.false.49

cond.false:                                       ; preds = %land.lhs.true.41
  %32 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %ch44 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %32, i32 0, i32 2
  %33 = load i32, i32* %ch44, align 4
  %conv45 = sext i32 %33 to i64
  %add46 = add i64 %conv45, 0
  %cmp47 = icmp ult i64 %add46, 128
  br i1 %cmp47, label %if.then.57, label %lor.lhs.false.49

lor.lhs.false.49:                                 ; preds = %cond.false, %cond.true
  %34 = load i32, i32* %type, align 4
  %cmp50 = icmp ne i32 %34, 5
  br i1 %cmp50, label %land.lhs.true.52, label %if.else.61

land.lhs.true.52:                                 ; preds = %lor.lhs.false.49
  %35 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %ch53 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %35, i32 0, i32 2
  %36 = load i32, i32* %ch53, align 4
  %call54 = call zeroext i1 @bidi_explicit_dir_char(i32 %36)
  br i1 %call54, label %if.else.61, label %land.lhs.true.55

land.lhs.true.55:                                 ; preds = %land.lhs.true.52
  %37 = load i32, i32* %type, align 4
  %call56 = call zeroext i1 @bidi_isolate_fmt_char(i32 %37)
  br i1 %call56, label %if.else.61, label %if.then.57

if.then.57:                                       ; preds = %land.lhs.true.55, %cond.false, %cond.true
  %38 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %prev_for_neutral58 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %38, i32 0, i32 15
  %type59 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %prev_for_neutral58, i32 0, i32 1
  %39 = load i32, i32* %type59, align 4
  %40 = load i32, i32* %current_level, align 4
  %call60 = call i32 @bidi_resolve_neutral_1(i32 %39, i32 1, i32 %40)
  store i32 %call60, i32* %type, align 4
  br label %if.end.204

if.else.61:                                       ; preds = %land.lhs.true.55, %land.lhs.true.52, %lor.lhs.false.49, %land.lhs.true.36, %if.else
  %41 = load i32, i32* %current_level, align 4
  %cmp62 = icmp eq i32 %41, 1
  br i1 %cmp62, label %land.lhs.true.64, label %if.else.98

land.lhs.true.64:                                 ; preds = %if.else.61
  %42 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %level_stack65 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %42, i32 0, i32 26
  %arrayidx66 = getelementptr inbounds [128 x %struct.bidi_stack], [128 x %struct.bidi_stack]* %level_stack65, i32 0, i64 0
  %level67 = getelementptr inbounds %struct.bidi_stack, %struct.bidi_stack* %arrayidx66, i32 0, i32 2
  %43 = load i8, i8* %level67, align 1
  %conv68 = zext i8 %43 to i32
  %cmp69 = icmp eq i32 %conv68, 1
  br i1 %cmp69, label %land.lhs.true.71, label %if.else.98

land.lhs.true.71:                                 ; preds = %land.lhs.true.64
  %44 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %prev_for_neutral72 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %44, i32 0, i32 15
  %type73 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %prev_for_neutral72, i32 0, i32 1
  %45 = load i32, i32* %type73, align 4
  %cmp74 = icmp eq i32 %45, 2
  br i1 %cmp74, label %land.lhs.true.86, label %lor.lhs.false.76

lor.lhs.false.76:                                 ; preds = %land.lhs.true.71
  %46 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %prev_for_neutral77 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %46, i32 0, i32 15
  %type78 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %prev_for_neutral77, i32 0, i32 1
  %47 = load i32, i32* %type78, align 4
  %cmp79 = icmp eq i32 %47, 3
  br i1 %cmp79, label %land.lhs.true.86, label %lor.lhs.false.81

lor.lhs.false.81:                                 ; preds = %lor.lhs.false.76
  %48 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %prev_for_neutral82 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %48, i32 0, i32 15
  %type83 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %prev_for_neutral82, i32 0, i32 1
  %49 = load i32, i32* %type83, align 4
  %cmp84 = icmp eq i32 %49, 4
  br i1 %cmp84, label %land.lhs.true.86, label %if.else.98

land.lhs.true.86:                                 ; preds = %lor.lhs.false.81, %lor.lhs.false.76, %land.lhs.true.71
  %50 = load i32, i32* %type, align 4
  %cmp87 = icmp ne i32 %50, 5
  br i1 %cmp87, label %land.lhs.true.89, label %if.else.98

land.lhs.true.89:                                 ; preds = %land.lhs.true.86
  %51 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %ch90 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %51, i32 0, i32 2
  %52 = load i32, i32* %ch90, align 4
  %call91 = call zeroext i1 @bidi_explicit_dir_char(i32 %52)
  br i1 %call91, label %if.else.98, label %land.lhs.true.92

land.lhs.true.92:                                 ; preds = %land.lhs.true.89
  %53 = load i32, i32* %type, align 4
  %call93 = call zeroext i1 @bidi_isolate_fmt_char(i32 %53)
  br i1 %call93, label %if.else.98, label %if.then.94

if.then.94:                                       ; preds = %land.lhs.true.92
  %54 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %prev_for_neutral95 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %54, i32 0, i32 15
  %type96 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %prev_for_neutral95, i32 0, i32 1
  %55 = load i32, i32* %type96, align 4
  %56 = load i32, i32* %current_level, align 4
  %call97 = call i32 @bidi_resolve_neutral_1(i32 %55, i32 2, i32 %56)
  store i32 %call97, i32* %type, align 4
  br label %if.end.203

if.else.98:                                       ; preds = %land.lhs.true.92, %land.lhs.true.89, %land.lhs.true.86, %lor.lhs.false.81, %land.lhs.true.64, %if.else.61
  %57 = load i8, i8* %is_neutral, align 1
  %tobool99 = trunc i8 %57 to i1
  %frombool100 = zext i1 %tobool99 to i8
  store i8 %frombool100, i8* %adjacent_to_neutrals, align 1
  %58 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  call void @bidi_copy_it(%struct.bidi_it* %saved_it, %struct.bidi_it* %58)
  br label %do.body

do.body:                                          ; preds = %lor.end, %if.else.98
  %59 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %60 = load i32, i32* %type, align 4
  %cmp101 = icmp eq i32 %60, 6
  %call103 = call i32 @bidi_cache_iterator_state(%struct.bidi_it* %59, i1 zeroext %cmp101, i1 zeroext false)
  %61 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %stack_idx104 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %61, i32 0, i32 25
  %62 = load i32, i32* %stack_idx104, align 4
  store i32 %62, i32* %old_sidx, align 4
  %63 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %call105 = call i32 @bidi_resolve_brackets(%struct.bidi_it* %63)
  store i32 %call105, i32* %type, align 4
  %64 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %stack_idx106 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %64, i32 0, i32 25
  %65 = load i32, i32* %stack_idx106, align 4
  store i32 %65, i32* %new_sidx, align 4
  %66 = load i32, i32* %new_sidx, align 4
  %idxprom107 = sext i32 %66 to i64
  %67 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %level_stack108 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %67, i32 0, i32 26
  %arrayidx109 = getelementptr inbounds [128 x %struct.bidi_stack], [128 x %struct.bidi_stack]* %level_stack108, i32 0, i64 %idxprom107
  %level110 = getelementptr inbounds %struct.bidi_stack, %struct.bidi_stack* %arrayidx109, i32 0, i32 2
  %68 = load i8, i8* %level110, align 1
  %conv111 = zext i8 %68 to i32
  %69 = load i32, i32* %current_level, align 4
  %cmp112 = icmp sgt i32 %conv111, %69
  br i1 %cmp112, label %land.lhs.true.114, label %if.end

land.lhs.true.114:                                ; preds = %do.body
  %70 = load i32, i32* %new_sidx, align 4
  %idxprom115 = sext i32 %70 to i64
  %71 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %level_stack116 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %71, i32 0, i32 26
  %arrayidx117 = getelementptr inbounds [128 x %struct.bidi_stack], [128 x %struct.bidi_stack]* %level_stack116, i32 0, i64 %idxprom115
  %flags = getelementptr inbounds %struct.bidi_stack, %struct.bidi_stack* %arrayidx117, i32 0, i32 3
  %72 = load i8, i8* %flags, align 1
  %conv118 = zext i8 %72 to i32
  %and = and i32 %conv118, 1
  %tobool119 = icmp ne i32 %and, 0
  br i1 %tobool119, label %if.then.132, label %lor.lhs.false.120

lor.lhs.false.120:                                ; preds = %land.lhs.true.114
  %73 = load i32, i32* %new_sidx, align 4
  %74 = load i32, i32* %old_sidx, align 4
  %add121 = add nsw i32 %74, 1
  %cmp122 = icmp sgt i32 %73, %add121
  br i1 %cmp122, label %land.lhs.true.124, label %if.end

land.lhs.true.124:                                ; preds = %lor.lhs.false.120
  %75 = load i32, i32* %new_sidx, align 4
  %sub = sub nsw i32 %75, 1
  %idxprom125 = sext i32 %sub to i64
  %76 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %level_stack126 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %76, i32 0, i32 26
  %arrayidx127 = getelementptr inbounds [128 x %struct.bidi_stack], [128 x %struct.bidi_stack]* %level_stack126, i32 0, i64 %idxprom125
  %flags128 = getelementptr inbounds %struct.bidi_stack, %struct.bidi_stack* %arrayidx127, i32 0, i32 3
  %77 = load i8, i8* %flags128, align 1
  %conv129 = zext i8 %77 to i32
  %and130 = and i32 %conv129, 1
  %tobool131 = icmp ne i32 %and130, 0
  br i1 %tobool131, label %if.then.132, label %if.end

if.then.132:                                      ; preds = %land.lhs.true.124, %land.lhs.true.114
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.132
  %78 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %stack_idx133 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %78, i32 0, i32 25
  %79 = load i32, i32* %stack_idx133, align 4
  %idxprom134 = sext i32 %79 to i64
  %80 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %level_stack135 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %80, i32 0, i32 26
  %arrayidx136 = getelementptr inbounds [128 x %struct.bidi_stack], [128 x %struct.bidi_stack]* %level_stack135, i32 0, i64 %idxprom134
  %level137 = getelementptr inbounds %struct.bidi_stack, %struct.bidi_stack* %arrayidx136, i32 0, i32 2
  %81 = load i8, i8* %level137, align 1
  %conv138 = zext i8 %81 to i32
  %82 = load i32, i32* %current_level, align 4
  %cmp139 = icmp sgt i32 %conv138, %82
  br i1 %cmp139, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %83 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %84 = load i32, i32* %type, align 4
  %cmp141 = icmp eq i32 %84, 6
  %call143 = call i32 @bidi_cache_iterator_state(%struct.bidi_it* %83, i1 zeroext %cmp141, i1 zeroext false)
  %85 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %call144 = call i32 @bidi_resolve_brackets(%struct.bidi_it* %85)
  store i32 %call144, i32* %type, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %land.lhs.true.124, %lor.lhs.false.120, %do.body
  %86 = load i8, i8* %adjacent_to_neutrals, align 1
  %tobool145 = trunc i8 %86 to i1
  br i1 %tobool145, label %if.end.154, label %land.lhs.true.146

land.lhs.true.146:                                ; preds = %if.end
  %87 = load i32, i32* %type, align 4
  %call147 = call i32 @bidi_get_category(i32 %87)
  %cmp148 = icmp eq i32 %call147, 1
  br i1 %cmp148, label %if.then.153, label %lor.lhs.false.150

lor.lhs.false.150:                                ; preds = %land.lhs.true.146
  %88 = load i32, i32* %type, align 4
  %call151 = call zeroext i1 @bidi_isolate_fmt_char(i32 %88)
  br i1 %call151, label %if.then.153, label %if.end.154

if.then.153:                                      ; preds = %lor.lhs.false.150, %land.lhs.true.146
  store i8 1, i8* %adjacent_to_neutrals, align 1
  br label %if.end.154

if.end.154:                                       ; preds = %if.then.153, %lor.lhs.false.150, %if.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.154
  %89 = load i32, i32* %type, align 4
  %cmp155 = icmp eq i32 %89, 6
  br i1 %cmp155, label %lor.end, label %lor.lhs.false.157

lor.lhs.false.157:                                ; preds = %do.cond
  %90 = load i32, i32* %type, align 4
  %cmp158 = icmp ne i32 %90, 5
  br i1 %cmp158, label %land.lhs.true.160, label %lor.rhs

land.lhs.true.160:                                ; preds = %lor.lhs.false.157
  %91 = load i32, i32* %type, align 4
  %call161 = call i32 @bidi_get_category(i32 %91)
  %cmp162 = icmp ne i32 %call161, 1
  br i1 %cmp162, label %land.lhs.true.164, label %lor.rhs

land.lhs.true.164:                                ; preds = %land.lhs.true.160
  %92 = load i32, i32* %type, align 4
  %call165 = call zeroext i1 @bidi_isolate_fmt_char(i32 %92)
  br i1 %call165, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %land.lhs.true.164, %land.lhs.true.160, %lor.lhs.false.157
  %93 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %stack_idx166 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %93, i32 0, i32 25
  %94 = load i32, i32* %stack_idx166, align 4
  %idxprom167 = sext i32 %94 to i64
  %95 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %level_stack168 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %95, i32 0, i32 26
  %arrayidx169 = getelementptr inbounds [128 x %struct.bidi_stack], [128 x %struct.bidi_stack]* %level_stack168, i32 0, i64 %idxprom167
  %level170 = getelementptr inbounds %struct.bidi_stack, %struct.bidi_stack* %arrayidx169, i32 0, i32 2
  %96 = load i8, i8* %level170, align 1
  %conv171 = zext i8 %96 to i32
  %97 = load i32, i32* %current_level, align 4
  %cmp172 = icmp ne i32 %conv171, %97
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.lhs.true.164, %do.cond
  %98 = phi i1 [ true, %land.lhs.true.164 ], [ true, %do.cond ], [ %cmp172, %lor.rhs ]
  %lnot = xor i1 %98, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end
  %next_for_neutral174 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %saved_it, i32 0, i32 14
  %99 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  call void @bidi_remember_char(%struct.bidi_saved_info* %next_for_neutral174, %struct.bidi_it* %99, i1 zeroext true)
  %100 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %stack_idx175 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %100, i32 0, i32 25
  %101 = load i32, i32* %stack_idx175, align 4
  %idxprom176 = sext i32 %101 to i64
  %102 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %level_stack177 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %102, i32 0, i32 26
  %arrayidx178 = getelementptr inbounds [128 x %struct.bidi_stack], [128 x %struct.bidi_stack]* %level_stack177, i32 0, i64 %idxprom176
  %level179 = getelementptr inbounds %struct.bidi_stack, %struct.bidi_stack* %arrayidx178, i32 0, i32 2
  %103 = load i8, i8* %level179, align 1
  %conv180 = zext i8 %103 to i32
  %104 = load i32, i32* %current_level, align 4
  %cmp181 = icmp ne i32 %conv180, %104
  br i1 %cmp181, label %if.then.186, label %lor.lhs.false.183

lor.lhs.false.183:                                ; preds = %do.end
  %105 = load i32, i32* %type, align 4
  %cmp184 = icmp eq i32 %105, 6
  br i1 %cmp184, label %if.then.186, label %if.else.194

if.then.186:                                      ; preds = %lor.lhs.false.183, %do.end
  %106 = load i8, i8* %adjacent_to_neutrals, align 1
  %tobool187 = trunc i8 %106 to i1
  br i1 %tobool187, label %if.then.188, label %if.else.191

if.then.188:                                      ; preds = %if.then.186
  %107 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %prev_for_neutral189 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %107, i32 0, i32 15
  %type190 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %prev_for_neutral189, i32 0, i32 1
  %108 = load i32, i32* %type190, align 4
  store i32 %108, i32* %next_type, align 4
  br label %if.end.193

if.else.191:                                      ; preds = %if.then.186
  %109 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  call void @bidi_copy_it(%struct.bidi_it* %109, %struct.bidi_it* %saved_it)
  %110 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type192 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %110, i32 0, i32 5
  %111 = load i32, i32* %type192, align 4
  store i32 %111, i32* %retval
  br label %return

if.end.193:                                       ; preds = %if.then.188
  br label %if.end.196

if.else.194:                                      ; preds = %lor.lhs.false.183
  %112 = load i32, i32* %type, align 4
  switch i32 %112, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 7, label %sw.bb
    i32 3, label %sw.bb.195
    i32 4, label %sw.bb.195
  ]

sw.bb:                                            ; preds = %if.else.194, %if.else.194, %if.else.194
  %113 = load i32, i32* %type, align 4
  store i32 %113, i32* %next_type, align 4
  br label %sw.epilog

sw.bb.195:                                        ; preds = %if.else.194, %if.else.194
  store i32 2, i32* %next_type, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.else.194
  call void @emacs_abort() #4
  unreachable

sw.epilog:                                        ; preds = %sw.bb.195, %sw.bb
  br label %if.end.196

if.end.196:                                       ; preds = %sw.epilog, %if.end.193
  %prev_for_neutral197 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %saved_it, i32 0, i32 15
  %type198 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %prev_for_neutral197, i32 0, i32 1
  %114 = load i32, i32* %type198, align 4
  %115 = load i32, i32* %next_type, align 4
  %116 = load i32, i32* %current_level, align 4
  %call199 = call i32 @bidi_resolve_neutral_1(i32 %114, i32 %115, i32 %116)
  store i32 %call199, i32* %type, align 4
  %117 = load i32, i32* %next_type, align 4
  %next_for_neutral200 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %saved_it, i32 0, i32 14
  %type201 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %next_for_neutral200, i32 0, i32 1
  store i32 %117, i32* %type201, align 4
  %118 = load i32, i32* %type, align 4
  call void @bidi_check_type(i32 %118)
  %119 = load i32, i32* %type, align 4
  %type202 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %saved_it, i32 0, i32 5
  store i32 %119, i32* %type202, align 4
  %120 = load i32, i32* %next_type, align 4
  call void @bidi_check_type(i32 %120)
  %121 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  call void @bidi_copy_it(%struct.bidi_it* %121, %struct.bidi_it* %saved_it)
  br label %if.end.203

if.end.203:                                       ; preds = %if.end.196, %if.then.94
  br label %if.end.204

if.end.204:                                       ; preds = %if.end.203, %if.then.57
  br label %if.end.205

if.end.205:                                       ; preds = %if.end.204, %if.then.29
  br label %if.end.206

if.end.206:                                       ; preds = %if.end.205, %lor.lhs.false.8
  %122 = load i32, i32* %type, align 4
  store i32 %122, i32* %retval
  br label %return

return:                                           ; preds = %if.end.206, %if.else.191
  %123 = load i32, i32* %retval
  ret i32 %123
}

; Function Attrs: nounwind uwtable
define internal i32 @bidi_resolve_brackets(%struct.bidi_it* %bidi_it) #0 {
entry:
  %bidi_it.addr = alloca %struct.bidi_it*, align 8
  %prev_level = alloca i32, align 4
  %resolve_bracket = alloca i8, align 1
  %type = alloca i32, align 4
  %ch = alloca i32, align 4
  %prev_for_neutral = alloca %struct.bidi_saved_info, align 8
  %next_for_neutral = alloca %struct.bidi_saved_info, align 8
  %eob = alloca i64, align 8
  %embedding_level = alloca i32, align 4
  %embedding_type = alloca i32, align 4
  %idx = alloca i64, align 8
  store %struct.bidi_it* %bidi_it, %struct.bidi_it** %bidi_it.addr, align 8
  %0 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %stack_idx = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %0, i32 0, i32 25
  %1 = load i32, i32* %stack_idx, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %level_stack = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %2, i32 0, i32 26
  %arrayidx = getelementptr inbounds [128 x %struct.bidi_stack], [128 x %struct.bidi_stack]* %level_stack, i32 0, i64 %idxprom
  %level = getelementptr inbounds %struct.bidi_stack, %struct.bidi_stack* %arrayidx, i32 0, i32 2
  %3 = load i8, i8* %level, align 1
  %conv = zext i8 %3 to i32
  store i32 %conv, i32* %prev_level, align 4
  store i8 0, i8* %resolve_bracket, align 1
  store i32 0, i32* %type, align 4
  %4 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %string = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %4, i32 0, i32 27
  %s = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %string, i32 0, i32 1
  %5 = load i8*, i8** %s, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %string1 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %6, i32 0, i32 27
  %lstring = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %string1, i32 0, i32 0
  %7 = load i64, i64* %lstring, align 8
  %call = call zeroext i1 @STRINGP(i64 %7)
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %entry
  %8 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %string3 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %8, i32 0, i32 27
  %schars = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %string3, i32 0, i32 2
  %9 = load i64, i64* %schars, align 8
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %10 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %10, i32 0, i32 79
  %11 = load i64, i64* %zv, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %9, %cond.true ], [ %11, %cond.false ]
  store i64 %cond, i64* %eob, align 8
  %12 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type4 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %12, i32 0, i32 5
  %13 = load i32, i32* %type4, align 4
  %cmp = icmp eq i32 %13, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %cond.end
  %14 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type7 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %14, i32 0, i32 5
  %15 = load i32, i32* %type7, align 4
  %cmp8 = icmp eq i32 %15, 2
  br i1 %cmp8, label %if.then, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false.6
  %16 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type11 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %16, i32 0, i32 5
  %17 = load i32, i32* %type11, align 4
  %cmp12 = icmp eq i32 %17, 4
  br i1 %cmp12, label %if.then, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false.10
  %18 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type15 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %18, i32 0, i32 5
  %19 = load i32, i32* %type15, align 4
  %cmp16 = icmp eq i32 %19, 3
  br i1 %cmp16, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.14, %lor.lhs.false.10, %lor.lhs.false.6, %cond.end
  %20 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  call void @bidi_remember_char(%struct.bidi_saved_info* %prev_for_neutral, %struct.bidi_it* %20, i1 zeroext true)
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false.14
  %21 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %prev_for_neutral18 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %21, i32 0, i32 15
  %22 = bitcast %struct.bidi_saved_info* %prev_for_neutral to i8*
  %23 = bitcast %struct.bidi_saved_info* %prev_for_neutral18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 16, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %24 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %next_for_neutral19 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %24, i32 0, i32 14
  %charpos = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %next_for_neutral19, i32 0, i32 0
  %25 = load i64, i64* %charpos, align 8
  %26 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %charpos20 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %26, i32 0, i32 1
  %27 = load i64, i64* %charpos20, align 8
  %cmp21 = icmp sgt i64 %25, %27
  br i1 %cmp21, label %if.then.23, label %if.else.25

if.then.23:                                       ; preds = %if.end
  %28 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %next_for_neutral24 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %28, i32 0, i32 14
  %29 = bitcast %struct.bidi_saved_info* %next_for_neutral to i8*
  %30 = bitcast %struct.bidi_saved_info* %next_for_neutral24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 16, i32 8, i1 false)
  br label %if.end.27

if.else.25:                                       ; preds = %if.end
  %charpos26 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %next_for_neutral, i32 0, i32 0
  store i64 -1, i64* %charpos26, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.25, %if.then.23
  %31 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %first_elt = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %31, i32 0, i32 31
  %bf.load = load i8, i8* %first_elt, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %if.end.32, label %if.then.28

if.then.28:                                       ; preds = %if.end.27
  %32 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %charpos29 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %32, i32 0, i32 1
  %33 = load i64, i64* %charpos29, align 8
  %34 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %nchars = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %34, i32 0, i32 3
  %35 = load i64, i64* %nchars, align 8
  %add = add nsw i64 %33, %35
  %36 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %call30 = call i32 @bidi_cache_find(i64 %add, i1 zeroext false, %struct.bidi_it* %36)
  store i32 %call30, i32* %type, align 4
  %37 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %ch31 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %37, i32 0, i32 2
  %38 = load i32, i32* %ch31, align 4
  store i32 %38, i32* %ch, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.28, %if.end.27
  %39 = load i32, i32* %type, align 4
  %cmp33 = icmp eq i32 %39, 0
  br i1 %cmp33, label %if.then.35, label %if.else.60

if.then.35:                                       ; preds = %if.end.32
  %40 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %call36 = call i32 @bidi_resolve_weak(%struct.bidi_it* %40)
  store i32 %call36, i32* %type, align 4
  %41 = load i32, i32* %type, align 4
  %cmp37 = icmp eq i32 %41, 23
  br i1 %cmp37, label %if.then.39, label %if.end.59

if.then.39:                                       ; preds = %if.then.35
  %42 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %bracket_pairing_pos = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %42, i32 0, i32 17
  %43 = load i64, i64* %bracket_pairing_pos, align 8
  %44 = load i64, i64* %eob, align 8
  %cmp40 = icmp eq i64 %43, %44
  br i1 %cmp40, label %if.then.42, label %if.else.54

if.then.42:                                       ; preds = %if.then.39
  %45 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %next_for_neutral43 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %45, i32 0, i32 14
  %charpos44 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %next_for_neutral43, i32 0, i32 0
  %46 = load i64, i64* %charpos44, align 8
  %47 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %charpos45 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %47, i32 0, i32 1
  %48 = load i64, i64* %charpos45, align 8
  %cmp46 = icmp eq i64 %46, %48
  br i1 %cmp46, label %land.lhs.true, label %if.end.53

land.lhs.true:                                    ; preds = %if.then.42
  %49 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %ch48 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %49, i32 0, i32 2
  %50 = load i32, i32* %ch48, align 4
  %call49 = call i32 @bidi_paired_bracket_type(i32 %50)
  %cmp50 = icmp eq i32 %call49, 3
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %land.lhs.true
  %51 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %bracket_enclosed_type = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %51, i32 0, i32 18
  %52 = load i32, i32* %bracket_enclosed_type, align 4
  store i32 %52, i32* %type, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %land.lhs.true, %if.then.42
  br label %if.end.58

if.else.54:                                       ; preds = %if.then.39
  %53 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %call55 = call zeroext i1 @bidi_find_bracket_pairs(%struct.bidi_it* %53)
  br i1 %call55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.else.54
  store i8 1, i8* %resolve_bracket, align 1
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.56, %if.else.54
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.end.53
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.then.35
  br label %if.end.123

if.else.60:                                       ; preds = %if.end.32
  %54 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %bracket_pairing_pos61 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %54, i32 0, i32 17
  %55 = load i64, i64* %bracket_pairing_pos61, align 8
  %56 = load i64, i64* %eob, align 8
  %cmp62 = icmp ne i64 %55, %56
  br i1 %cmp62, label %if.then.64, label %if.end.122

if.then.64:                                       ; preds = %if.else.60
  %57 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %stack_idx65 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %57, i32 0, i32 25
  %58 = load i32, i32* %stack_idx65, align 4
  %idxprom66 = sext i32 %58 to i64
  %59 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %level_stack67 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %59, i32 0, i32 26
  %arrayidx68 = getelementptr inbounds [128 x %struct.bidi_stack], [128 x %struct.bidi_stack]* %level_stack67, i32 0, i64 %idxprom66
  %level69 = getelementptr inbounds %struct.bidi_stack, %struct.bidi_stack* %arrayidx68, i32 0, i32 2
  %60 = load i8, i8* %level69, align 1
  %conv70 = zext i8 %60 to i32
  %61 = load i32, i32* %prev_level, align 4
  %cmp71 = icmp sgt i32 %conv70, %61
  br i1 %cmp71, label %land.lhs.true.73, label %if.end.81

land.lhs.true.73:                                 ; preds = %if.then.64
  %62 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %stack_idx74 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %62, i32 0, i32 25
  %63 = load i32, i32* %stack_idx74, align 4
  %idxprom75 = sext i32 %63 to i64
  %64 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %level_stack76 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %64, i32 0, i32 26
  %arrayidx77 = getelementptr inbounds [128 x %struct.bidi_stack], [128 x %struct.bidi_stack]* %level_stack76, i32 0, i64 %idxprom75
  %flags = getelementptr inbounds %struct.bidi_stack, %struct.bidi_stack* %arrayidx77, i32 0, i32 3
  %65 = load i8, i8* %flags, align 1
  %conv78 = zext i8 %65 to i32
  %and = and i32 %conv78, 1
  %tobool79 = icmp ne i32 %and, 0
  br i1 %tobool79, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %land.lhs.true.73
  %66 = load i32, i32* %prev_level, align 4
  call void @bidi_record_type_for_neutral(%struct.bidi_saved_info* %prev_for_neutral, i32 %66, i1 zeroext false)
  %67 = load i32, i32* %prev_level, align 4
  call void @bidi_record_type_for_neutral(%struct.bidi_saved_info* %next_for_neutral, i32 %67, i1 zeroext true)
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.80, %land.lhs.true.73, %if.then.64
  %68 = load i32, i32* %type, align 4
  %cmp82 = icmp eq i32 %68, 23
  br i1 %cmp82, label %land.lhs.true.84, label %if.end.104

land.lhs.true.84:                                 ; preds = %if.end.81
  %69 = load i32, i32* %ch, align 4
  %call85 = call i32 @bidi_paired_bracket_type(i32 %69)
  %cmp86 = icmp eq i32 %call85, 2
  br i1 %cmp86, label %if.then.88, label %if.end.104

if.then.88:                                       ; preds = %land.lhs.true.84
  %70 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %bracket_pairing_pos89 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %70, i32 0, i32 17
  %71 = load i64, i64* %bracket_pairing_pos89, align 8
  %72 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %charpos90 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %72, i32 0, i32 1
  %73 = load i64, i64* %charpos90, align 8
  %cmp91 = icmp sgt i64 %71, %73
  br i1 %cmp91, label %if.then.93, label %if.else.94

if.then.93:                                       ; preds = %if.then.88
  store i8 1, i8* %resolve_bracket, align 1
  br label %if.end.103

if.else.94:                                       ; preds = %if.then.88
  %74 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %bracket_pairing_pos95 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %74, i32 0, i32 17
  %75 = load i64, i64* %bracket_pairing_pos95, align 8
  %cmp96 = icmp eq i64 %75, -1
  br i1 %cmp96, label %if.then.98, label %if.end.102

if.then.98:                                       ; preds = %if.else.94
  %76 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %call99 = call zeroext i1 @bidi_find_bracket_pairs(%struct.bidi_it* %76)
  br i1 %call99, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %if.then.98
  store i8 1, i8* %resolve_bracket, align 1
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.100, %if.then.98
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %if.else.94
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %if.then.93
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %land.lhs.true.84, %if.end.81
  %77 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %stack_idx105 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %77, i32 0, i32 25
  %78 = load i32, i32* %stack_idx105, align 4
  %idxprom106 = sext i32 %78 to i64
  %79 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %level_stack107 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %79, i32 0, i32 26
  %arrayidx108 = getelementptr inbounds [128 x %struct.bidi_stack], [128 x %struct.bidi_stack]* %level_stack107, i32 0, i64 %idxprom106
  %level109 = getelementptr inbounds %struct.bidi_stack, %struct.bidi_stack* %arrayidx108, i32 0, i32 2
  %80 = load i8, i8* %level109, align 1
  %conv110 = zext i8 %80 to i32
  %81 = load i32, i32* %prev_level, align 4
  %cmp111 = icmp eq i32 %conv110, %81
  br i1 %cmp111, label %if.then.113, label %if.end.121

if.then.113:                                      ; preds = %if.end.104
  %82 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %prev_for_neutral114 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %82, i32 0, i32 15
  %83 = bitcast %struct.bidi_saved_info* %prev_for_neutral114 to i8*
  %84 = bitcast %struct.bidi_saved_info* %prev_for_neutral to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %83, i8* %84, i64 16, i32 8, i1 false)
  %charpos115 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %next_for_neutral, i32 0, i32 0
  %85 = load i64, i64* %charpos115, align 8
  %cmp116 = icmp sgt i64 %85, 0
  br i1 %cmp116, label %if.then.118, label %if.end.120

if.then.118:                                      ; preds = %if.then.113
  %86 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %next_for_neutral119 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %86, i32 0, i32 14
  %87 = bitcast %struct.bidi_saved_info* %next_for_neutral119 to i8*
  %88 = bitcast %struct.bidi_saved_info* %next_for_neutral to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %87, i8* %88, i64 16, i32 8, i1 false)
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.118, %if.then.113
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.120, %if.end.104
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %if.else.60
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.122, %if.end.59
  %89 = load i8, i8* %resolve_bracket, align 1
  %tobool124 = trunc i8 %89 to i1
  br i1 %tobool124, label %if.then.125, label %if.end.170

if.then.125:                                      ; preds = %if.end.123
  %90 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %stack_idx126 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %90, i32 0, i32 25
  %91 = load i32, i32* %stack_idx126, align 4
  %idxprom127 = sext i32 %91 to i64
  %92 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %level_stack128 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %92, i32 0, i32 26
  %arrayidx129 = getelementptr inbounds [128 x %struct.bidi_stack], [128 x %struct.bidi_stack]* %level_stack128, i32 0, i64 %idxprom127
  %level130 = getelementptr inbounds %struct.bidi_stack, %struct.bidi_stack* %arrayidx129, i32 0, i32 2
  %93 = load i8, i8* %level130, align 1
  %conv131 = zext i8 %93 to i32
  store i32 %conv131, i32* %embedding_level, align 4
  %94 = load i32, i32* %embedding_level, align 4
  %and132 = and i32 %94, 1
  %tobool133 = icmp ne i32 %and132, 0
  %cond134 = select i1 %tobool133, i32 2, i32 1
  store i32 %cond134, i32* %embedding_type, align 4
  %95 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %bracket_enclosed_type135 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %95, i32 0, i32 18
  %96 = load i32, i32* %bracket_enclosed_type135, align 4
  %97 = load i32, i32* %embedding_type, align 4
  %cmp136 = icmp eq i32 %96, %97
  br i1 %cmp136, label %if.then.138, label %if.else.139

if.then.138:                                      ; preds = %if.then.125
  %98 = load i32, i32* %embedding_type, align 4
  store i32 %98, i32* %type, align 4
  br label %if.end.157

if.else.139:                                      ; preds = %if.then.125
  %99 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %prev_for_neutral140 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %99, i32 0, i32 15
  %type141 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %prev_for_neutral140, i32 0, i32 1
  %100 = load i32, i32* %type141, align 4
  switch i32 %100, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 1, label %sw.bb.149
  ]

sw.bb:                                            ; preds = %if.else.139, %if.else.139, %if.else.139
  %101 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %bracket_enclosed_type142 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %101, i32 0, i32 18
  %102 = load i32, i32* %bracket_enclosed_type142, align 4
  %cmp143 = icmp eq i32 %102, 2
  br i1 %cmp143, label %cond.true.145, label %cond.false.146

cond.true.145:                                    ; preds = %sw.bb
  br label %cond.end.147

cond.false.146:                                   ; preds = %sw.bb
  %103 = load i32, i32* %embedding_type, align 4
  br label %cond.end.147

cond.end.147:                                     ; preds = %cond.false.146, %cond.true.145
  %cond148 = phi i32 [ 2, %cond.true.145 ], [ %103, %cond.false.146 ]
  store i32 %cond148, i32* %type, align 4
  br label %sw.epilog

sw.bb.149:                                        ; preds = %if.else.139
  %104 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %bracket_enclosed_type150 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %104, i32 0, i32 18
  %105 = load i32, i32* %bracket_enclosed_type150, align 4
  %cmp151 = icmp eq i32 %105, 1
  br i1 %cmp151, label %cond.true.153, label %cond.false.154

cond.true.153:                                    ; preds = %sw.bb.149
  br label %cond.end.155

cond.false.154:                                   ; preds = %sw.bb.149
  %106 = load i32, i32* %embedding_type, align 4
  br label %cond.end.155

cond.end.155:                                     ; preds = %cond.false.154, %cond.true.153
  %cond156 = phi i32 [ 1, %cond.true.153 ], [ %106, %cond.false.154 ]
  store i32 %cond156, i32* %type, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.else.139
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %cond.end.155, %cond.end.147
  br label %if.end.157

if.end.157:                                       ; preds = %sw.epilog, %if.then.138
  %107 = load i32, i32* %type, align 4
  %cmp158 = icmp ne i32 %107, 23
  br i1 %cmp158, label %if.then.160, label %if.end.169

if.then.160:                                      ; preds = %if.end.157
  %108 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %bracket_pairing_pos161 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %108, i32 0, i32 17
  %109 = load i64, i64* %bracket_pairing_pos161, align 8
  %call162 = call i64 @bidi_cache_search(i64 %109, i32 -1, i32 1)
  store i64 %call162, i64* %idx, align 8
  %110 = load i64, i64* %idx, align 8
  %111 = load i64, i64* @bidi_cache_start, align 8
  %cmp163 = icmp slt i64 %110, %111
  br i1 %cmp163, label %if.then.165, label %if.end.166

if.then.165:                                      ; preds = %if.then.160
  call void @emacs_abort() #4
  unreachable

if.end.166:                                       ; preds = %if.then.160
  %112 = load i32, i32* %type, align 4
  %113 = load i64, i64* %idx, align 8
  %114 = load %struct.bidi_it*, %struct.bidi_it** @bidi_cache, align 8
  %arrayidx167 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %114, i64 %113
  %type168 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %arrayidx167, i32 0, i32 5
  store i32 %112, i32* %type168, align 4
  br label %if.end.169

if.end.169:                                       ; preds = %if.end.166, %if.end.157
  br label %if.end.170

if.end.170:                                       ; preds = %if.end.169, %if.end.123
  %115 = load i32, i32* %type, align 4
  ret i32 %115
}

; Function Attrs: nounwind uwtable
define internal i32 @bidi_resolve_neutral_1(i32 %prev_type, i32 %next_type, i32 %lev) #0 {
entry:
  %retval = alloca i32, align 4
  %prev_type.addr = alloca i32, align 4
  %next_type.addr = alloca i32, align 4
  %lev.addr = alloca i32, align 4
  store i32 %prev_type, i32* %prev_type.addr, align 4
  store i32 %next_type, i32* %next_type.addr, align 4
  store i32 %lev, i32* %lev.addr, align 4
  %0 = load i32, i32* %next_type.addr, align 4
  %cmp = icmp eq i32 %0, 3
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %next_type.addr, align 4
  %cmp1 = icmp eq i32 %1, 4
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 2, i32* %next_type.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %2 = load i32, i32* %prev_type.addr, align 4
  %cmp2 = icmp eq i32 %2, 3
  br i1 %cmp2, label %if.then.5, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %if.end
  %3 = load i32, i32* %prev_type.addr, align 4
  %cmp4 = icmp eq i32 %3, 4
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %lor.lhs.false.3, %if.end
  store i32 2, i32* %prev_type.addr, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %lor.lhs.false.3
  %4 = load i32, i32* %next_type.addr, align 4
  %5 = load i32, i32* %prev_type.addr, align 4
  %cmp7 = icmp eq i32 %4, %5
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end.6
  %6 = load i32, i32* %next_type.addr, align 4
  store i32 %6, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end.6
  %7 = load i32, i32* %lev.addr, align 4
  %and = and i32 %7, 1
  %cmp9 = icmp eq i32 %and, 0
  br i1 %cmp9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.else
  store i32 1, i32* %retval
  br label %return

if.else.11:                                       ; preds = %if.else
  store i32 2, i32* %retval
  br label %return

return:                                           ; preds = %if.else.11, %if.then.10, %if.then.8
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal void @bidi_remember_char(%struct.bidi_saved_info* %saved_info, %struct.bidi_it* %bidi_it, i1 zeroext %from_type) #0 {
entry:
  %saved_info.addr = alloca %struct.bidi_saved_info*, align 8
  %bidi_it.addr = alloca %struct.bidi_it*, align 8
  %from_type.addr = alloca i8, align 1
  store %struct.bidi_saved_info* %saved_info, %struct.bidi_saved_info** %saved_info.addr, align 8
  store %struct.bidi_it* %bidi_it, %struct.bidi_it** %bidi_it.addr, align 8
  %frombool = zext i1 %from_type to i8
  store i8 %frombool, i8* %from_type.addr, align 1
  %0 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %charpos = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %0, i32 0, i32 1
  %1 = load i64, i64* %charpos, align 8
  %2 = load %struct.bidi_saved_info*, %struct.bidi_saved_info** %saved_info.addr, align 8
  %charpos1 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %2, i32 0, i32 0
  store i64 %1, i64* %charpos1, align 8
  %3 = load i8, i8* %from_type.addr, align 1
  %tobool = trunc i8 %3 to i1
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %4, i32 0, i32 5
  %5 = load i32, i32* %type, align 4
  %6 = load %struct.bidi_saved_info*, %struct.bidi_saved_info** %saved_info.addr, align 8
  %type2 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %6, i32 0, i32 1
  store i32 %5, i32* %type2, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type_after_wn = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %7, i32 0, i32 6
  %8 = load i32, i32* %type_after_wn, align 4
  %9 = load %struct.bidi_saved_info*, %struct.bidi_saved_info** %saved_info.addr, align 8
  %type3 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %9, i32 0, i32 1
  store i32 %8, i32* %type3, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load %struct.bidi_saved_info*, %struct.bidi_saved_info** %saved_info.addr, align 8
  %type4 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %10, i32 0, i32 1
  %11 = load i32, i32* %type4, align 4
  call void @bidi_check_type(i32 %11)
  %12 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %orig_type = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %12, i32 0, i32 7
  %13 = load i32, i32* %orig_type, align 4
  %14 = load %struct.bidi_saved_info*, %struct.bidi_saved_info** %saved_info.addr, align 8
  %orig_type5 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %14, i32 0, i32 2
  store i32 %13, i32* %orig_type5, align 4
  %15 = load %struct.bidi_saved_info*, %struct.bidi_saved_info** %saved_info.addr, align 8
  %orig_type6 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %15, i32 0, i32 2
  %16 = load i32, i32* %orig_type6, align 4
  call void @bidi_check_type(i32 %16)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @bidi_paired_bracket_type(i32 %c) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4
  %cmp1 = icmp slt i32 %1, 0
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i32, i32* %c.addr, align 4
  %cmp2 = icmp sgt i32 %2, 4194303
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  call void @emacs_abort() #4
  unreachable

if.end.4:                                         ; preds = %lor.lhs.false
  %3 = load i64, i64* @bidi_brackets_table, align 8
  %4 = load i32, i32* %c.addr, align 4
  %call = call i64 @CHAR_TABLE_REF(i64 %3, i32 %4)
  %shr = ashr i64 %call, 2
  %conv = trunc i64 %shr to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @bidi_find_bracket_pairs(%struct.bidi_it* %bidi_it) #0 {
entry:
  %bidi_it.addr = alloca %struct.bidi_it*, align 8
  %btype = alloca i32, align 4
  %type = alloca i32, align 4
  %retval2 = alloca i8, align 1
  %bpa_stack = alloca [1365 x %struct.bpa_stack_entry], align 16
  %bpa_sp = alloca i32, align 4
  %saved_it = alloca %struct.bidi_it, align 8
  %base_level = alloca i32, align 4
  %embedding_level = alloca i32, align 4
  %maxlevel = alloca i32, align 4
  %embedding_type = alloca i32, align 4
  %tem_it = alloca %struct.bidi_it, align 8
  %l2r_seen = alloca i8, align 1
  %r2l_seen = alloca i8, align 1
  %pairing_pos = alloca i64, align 8
  %idx_at_entry = alloca i32, align 4
  %old_sidx = alloca i32, align 4
  %new_sidx = alloca i32, align 4
  %current_level = alloca i32, align 4
  %ch39 = alloca i32, align 4
  %sp = alloca i32, align 4
  %curchar = alloca i32, align 4
  %flag = alloca i32, align 4
  %sp169 = alloca i32, align 4
  %eob = alloca i64, align 8
  store %struct.bidi_it* %bidi_it, %struct.bidi_it** %bidi_it.addr, align 8
  %0 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type1 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %0, i32 0, i32 5
  %1 = load i32, i32* %type1, align 4
  store i32 %1, i32* %type, align 4
  store i8 0, i8* %retval2, align 1
  %2 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %scan_dir = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %2, i32 0, i32 22
  %3 = load i32, i32* %scan_dir, align 4
  %cmp = icmp ne i32 %3, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @emacs_abort() #4
  unreachable

if.end:                                           ; preds = %entry
  %4 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %ch = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %4, i32 0, i32 2
  %5 = load i32, i32* %ch, align 4
  %call = call i32 @bidi_paired_bracket_type(i32 %5)
  store i32 %call, i32* %btype, align 4
  %6 = load i32, i32* %btype, align 4
  %cmp3 = icmp eq i32 %6, 2
  br i1 %cmp3, label %if.then.4, label %if.end.326

if.then.4:                                        ; preds = %if.end
  store i32 -1, i32* %bpa_sp, align 4
  %7 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %level_stack = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %7, i32 0, i32 26
  %arrayidx = getelementptr inbounds [128 x %struct.bidi_stack], [128 x %struct.bidi_stack]* %level_stack, i32 0, i64 0
  %level = getelementptr inbounds %struct.bidi_stack, %struct.bidi_stack* %arrayidx, i32 0, i32 2
  %8 = load i8, i8* %level, align 1
  %conv = zext i8 %8 to i32
  store i32 %conv, i32* %base_level, align 4
  %9 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %stack_idx = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %9, i32 0, i32 25
  %10 = load i32, i32* %stack_idx, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %level_stack5 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %11, i32 0, i32 26
  %arrayidx6 = getelementptr inbounds [128 x %struct.bidi_stack], [128 x %struct.bidi_stack]* %level_stack5, i32 0, i64 %idxprom
  %level7 = getelementptr inbounds %struct.bidi_stack, %struct.bidi_stack* %arrayidx6, i32 0, i32 2
  %12 = load i8, i8* %level7, align 1
  %conv8 = zext i8 %12 to i32
  store i32 %conv8, i32* %embedding_level, align 4
  %13 = load i32, i32* %embedding_level, align 4
  store i32 %13, i32* %maxlevel, align 4
  %14 = load i32, i32* %embedding_level, align 4
  %and = and i32 %14, 1
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 2, i32 1
  store i32 %cond, i32* %embedding_type, align 4
  store i8 0, i8* %l2r_seen, align 1
  store i8 0, i8* %r2l_seen, align 1
  %15 = load i64, i64* @bidi_cache_idx, align 8
  %conv9 = trunc i64 %15 to i32
  store i32 %conv9, i32* %idx_at_entry, align 4
  %16 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  call void @bidi_copy_it(%struct.bidi_it* %saved_it, %struct.bidi_it* %16)
  %scan_dir10 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %tem_it, i32 0, i32 22
  store i32 1, i32* %scan_dir10, align 4
  br label %while.body

while.body:                                       ; preds = %if.then.4, %if.end.287
  %17 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %stack_idx11 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %17, i32 0, i32 25
  %18 = load i32, i32* %stack_idx11, align 4
  %idxprom12 = sext i32 %18 to i64
  %19 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %level_stack13 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %19, i32 0, i32 26
  %arrayidx14 = getelementptr inbounds [128 x %struct.bidi_stack], [128 x %struct.bidi_stack]* %level_stack13, i32 0, i64 %idxprom12
  %level15 = getelementptr inbounds %struct.bidi_stack, %struct.bidi_stack* %arrayidx14, i32 0, i32 2
  %20 = load i8, i8* %level15, align 1
  %conv16 = zext i8 %20 to i32
  store i32 %conv16, i32* %current_level, align 4
  %21 = load i32, i32* %maxlevel, align 4
  %22 = load i32, i32* %current_level, align 4
  %cmp17 = icmp slt i32 %21, %22
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %while.body
  %23 = load i32, i32* %current_level, align 4
  store i32 %23, i32* %maxlevel, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %while.body
  %24 = load i32, i32* %btype, align 4
  %cmp21 = icmp eq i32 %24, 2
  br i1 %cmp21, label %land.lhs.true, label %if.end.27

land.lhs.true:                                    ; preds = %if.end.20
  %25 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %bracket_pairing_pos = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %25, i32 0, i32 17
  %26 = load i64, i64* %bracket_pairing_pos, align 8
  %cmp23 = icmp eq i64 %26, -1
  br i1 %cmp23, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %land.lhs.true
  %27 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %charpos = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %27, i32 0, i32 1
  %28 = load i64, i64* %charpos, align 8
  %29 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %bracket_pairing_pos26 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %29, i32 0, i32 17
  store i64 %28, i64* %bracket_pairing_pos26, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %land.lhs.true, %if.end.20
  %30 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %31 = load i32, i32* %type, align 4
  %cmp28 = icmp eq i32 %31, 6
  %call30 = call i32 @bidi_cache_iterator_state(%struct.bidi_it* %30, i1 zeroext %cmp28, i1 zeroext false)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.end.35, label %if.then.32

if.then.32:                                       ; preds = %if.end.27
  %32 = load i32, i32* %idx_at_entry, align 4
  %conv33 = sext i32 %32 to i64
  %33 = load i64, i64* @bidi_cache_start, align 8
  %sub = sub nsw i64 %conv33, %33
  %conv34 = trunc i64 %sub to i32
  call void @bidi_cache_reset_to(i32 %conv34)
  %34 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  call void @bidi_copy_it(%struct.bidi_it* %34, %struct.bidi_it* %saved_it)
  br label %give_up

if.end.35:                                        ; preds = %if.end.27
  %35 = load i32, i32* %btype, align 4
  %cmp36 = icmp eq i32 %35, 2
  br i1 %cmp36, label %if.then.38, label %if.else

if.then.38:                                       ; preds = %if.end.35
  br label %do.body

do.body:                                          ; preds = %if.then.38
  %36 = load i32, i32* %bpa_sp, align 4
  %cmp40 = icmp slt i32 %36, 1364
  br i1 %cmp40, label %if.then.42, label %if.end.78

if.then.42:                                       ; preds = %do.body
  %37 = load i32, i32* %bpa_sp, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %bpa_sp, align 4
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.42
  %38 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %ch43 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %38, i32 0, i32 2
  %39 = load i32, i32* %ch43, align 4
  %add = add i32 %39, 0
  %cmp44 = icmp ult i32 %add, 128
  br i1 %cmp44, label %cond.true.51, label %cond.false.53

cond.false:                                       ; preds = %if.then.42
  %40 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %ch46 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %40, i32 0, i32 2
  %41 = load i32, i32* %ch46, align 4
  %conv47 = sext i32 %41 to i64
  %add48 = add i64 %conv47, 0
  %cmp49 = icmp ult i64 %add48, 128
  br i1 %cmp49, label %cond.true.51, label %cond.false.53

cond.true.51:                                     ; preds = %cond.false, %cond.true
  %42 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %ch52 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %42, i32 0, i32 2
  %43 = load i32, i32* %ch52, align 4
  br label %cond.end.68

cond.false.53:                                    ; preds = %cond.false, %cond.true
  %44 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %ch54 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %44, i32 0, i32 2
  %45 = load i32, i32* %ch54, align 4
  %cmp55 = icmp eq i32 %45, 9001
  br i1 %cmp55, label %cond.true.57, label %cond.false.58

cond.true.57:                                     ; preds = %cond.false.53
  br label %cond.end.66

cond.false.58:                                    ; preds = %cond.false.53
  %46 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %ch59 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %46, i32 0, i32 2
  %47 = load i32, i32* %ch59, align 4
  %cmp60 = icmp eq i32 %47, 9002
  br i1 %cmp60, label %cond.true.62, label %cond.false.63

cond.true.62:                                     ; preds = %cond.false.58
  br label %cond.end

cond.false.63:                                    ; preds = %cond.false.58
  %48 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %ch64 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %48, i32 0, i32 2
  %49 = load i32, i32* %ch64, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.63, %cond.true.62
  %cond65 = phi i32 [ 12297, %cond.true.62 ], [ %49, %cond.false.63 ]
  br label %cond.end.66

cond.end.66:                                      ; preds = %cond.end, %cond.true.57
  %cond67 = phi i32 [ 12296, %cond.true.57 ], [ %cond65, %cond.end ]
  br label %cond.end.68

cond.end.68:                                      ; preds = %cond.end.66, %cond.true.51
  %cond69 = phi i32 [ %43, %cond.true.51 ], [ %cond67, %cond.end.66 ]
  store i32 %cond69, i32* %ch39, align 4
  %50 = load i32, i32* %ch39, align 4
  %call70 = call i32 @bidi_mirror_char(i32 %50)
  %51 = load i32, i32* %bpa_sp, align 4
  %idxprom71 = sext i32 %51 to i64
  %arrayidx72 = getelementptr inbounds [1365 x %struct.bpa_stack_entry], [1365 x %struct.bpa_stack_entry]* %bpa_stack, i32 0, i64 %idxprom71
  %close_bracket_char = getelementptr inbounds %struct.bpa_stack_entry, %struct.bpa_stack_entry* %arrayidx72, i32 0, i32 0
  store i32 %call70, i32* %close_bracket_char, align 4
  %52 = load i64, i64* @bidi_cache_last_idx, align 8
  %conv73 = trunc i64 %52 to i32
  %53 = load i32, i32* %bpa_sp, align 4
  %idxprom74 = sext i32 %53 to i64
  %arrayidx75 = getelementptr inbounds [1365 x %struct.bpa_stack_entry], [1365 x %struct.bpa_stack_entry]* %bpa_stack, i32 0, i64 %idxprom74
  %open_bracket_idx = getelementptr inbounds %struct.bpa_stack_entry, %struct.bpa_stack_entry* %arrayidx75, i32 0, i32 1
  store i32 %conv73, i32* %open_bracket_idx, align 4
  %54 = load i32, i32* %bpa_sp, align 4
  %idxprom76 = sext i32 %54 to i64
  %arrayidx77 = getelementptr inbounds [1365 x %struct.bpa_stack_entry], [1365 x %struct.bpa_stack_entry]* %bpa_stack, i32 0, i64 %idxprom76
  %flags = getelementptr inbounds %struct.bpa_stack_entry, %struct.bpa_stack_entry* %arrayidx77, i32 0, i32 2
  %bf.load = load i8, i8* %flags, align 4
  %bf.clear = and i8 %bf.load, -4
  store i8 %bf.clear, i8* %flags, align 4
  br label %if.end.78

if.end.78:                                        ; preds = %cond.end.68, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.78
  br label %if.end.196

if.else:                                          ; preds = %if.end.35
  %55 = load i32, i32* %btype, align 4
  %cmp79 = icmp eq i32 %55, 3
  br i1 %cmp79, label %if.then.81, label %if.else.164

if.then.81:                                       ; preds = %if.else
  %56 = load i32, i32* %bpa_sp, align 4
  store i32 %56, i32* %sp, align 4
  br i1 true, label %cond.true.82, label %cond.false.87

cond.true.82:                                     ; preds = %if.then.81
  %57 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %ch83 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %57, i32 0, i32 2
  %58 = load i32, i32* %ch83, align 4
  %add84 = add i32 %58, 0
  %cmp85 = icmp ult i32 %add84, 128
  br i1 %cmp85, label %cond.true.93, label %cond.false.95

cond.false.87:                                    ; preds = %if.then.81
  %59 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %ch88 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %59, i32 0, i32 2
  %60 = load i32, i32* %ch88, align 4
  %conv89 = sext i32 %60 to i64
  %add90 = add i64 %conv89, 0
  %cmp91 = icmp ult i64 %add90, 128
  br i1 %cmp91, label %cond.true.93, label %cond.false.95

cond.true.93:                                     ; preds = %cond.false.87, %cond.true.82
  %61 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %ch94 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %61, i32 0, i32 2
  %62 = load i32, i32* %ch94, align 4
  br label %cond.end.111

cond.false.95:                                    ; preds = %cond.false.87, %cond.true.82
  %63 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %ch96 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %63, i32 0, i32 2
  %64 = load i32, i32* %ch96, align 4
  %cmp97 = icmp eq i32 %64, 9001
  br i1 %cmp97, label %cond.true.99, label %cond.false.100

cond.true.99:                                     ; preds = %cond.false.95
  br label %cond.end.109

cond.false.100:                                   ; preds = %cond.false.95
  %65 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %ch101 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %65, i32 0, i32 2
  %66 = load i32, i32* %ch101, align 4
  %cmp102 = icmp eq i32 %66, 9002
  br i1 %cmp102, label %cond.true.104, label %cond.false.105

cond.true.104:                                    ; preds = %cond.false.100
  br label %cond.end.107

cond.false.105:                                   ; preds = %cond.false.100
  %67 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %ch106 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %67, i32 0, i32 2
  %68 = load i32, i32* %ch106, align 4
  br label %cond.end.107

cond.end.107:                                     ; preds = %cond.false.105, %cond.true.104
  %cond108 = phi i32 [ 12297, %cond.true.104 ], [ %68, %cond.false.105 ]
  br label %cond.end.109

cond.end.109:                                     ; preds = %cond.end.107, %cond.true.99
  %cond110 = phi i32 [ 12296, %cond.true.99 ], [ %cond108, %cond.end.107 ]
  br label %cond.end.111

cond.end.111:                                     ; preds = %cond.end.109, %cond.true.93
  %cond112 = phi i32 [ %62, %cond.true.93 ], [ %cond110, %cond.end.109 ]
  store i32 %cond112, i32* %curchar, align 4
  br label %while.cond.113

while.cond.113:                                   ; preds = %while.body.121, %cond.end.111
  %69 = load i32, i32* %sp, align 4
  %cmp114 = icmp sge i32 %69, 0
  br i1 %cmp114, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.113
  %70 = load i32, i32* %sp, align 4
  %idxprom116 = sext i32 %70 to i64
  %arrayidx117 = getelementptr inbounds [1365 x %struct.bpa_stack_entry], [1365 x %struct.bpa_stack_entry]* %bpa_stack, i32 0, i64 %idxprom116
  %close_bracket_char118 = getelementptr inbounds %struct.bpa_stack_entry, %struct.bpa_stack_entry* %arrayidx117, i32 0, i32 0
  %71 = load i32, i32* %close_bracket_char118, align 4
  %72 = load i32, i32* %curchar, align 4
  %cmp119 = icmp ne i32 %71, %72
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.113
  %73 = phi i1 [ false, %while.cond.113 ], [ %cmp119, %land.rhs ]
  br i1 %73, label %while.body.121, label %while.end

while.body.121:                                   ; preds = %land.end
  %74 = load i32, i32* %sp, align 4
  %dec = add nsw i32 %74, -1
  store i32 %dec, i32* %sp, align 4
  br label %while.cond.113

while.end:                                        ; preds = %land.end
  %75 = load i32, i32* %sp, align 4
  %cmp122 = icmp sge i32 %75, 0
  br i1 %cmp122, label %if.then.124, label %if.end.159

if.then.124:                                      ; preds = %while.end
  %76 = load i32, i32* %sp, align 4
  %idxprom125 = sext i32 %76 to i64
  %arrayidx126 = getelementptr inbounds [1365 x %struct.bpa_stack_entry], [1365 x %struct.bpa_stack_entry]* %bpa_stack, i32 0, i64 %idxprom125
  %open_bracket_idx127 = getelementptr inbounds %struct.bpa_stack_entry, %struct.bpa_stack_entry* %arrayidx126, i32 0, i32 1
  %77 = load i32, i32* %open_bracket_idx127, align 4
  %conv128 = sext i32 %77 to i64
  call void @bidi_cache_fetch_state(i64 %conv128, %struct.bidi_it* %tem_it)
  %78 = load i32, i32* %sp, align 4
  %idxprom129 = sext i32 %78 to i64
  %arrayidx130 = getelementptr inbounds [1365 x %struct.bpa_stack_entry], [1365 x %struct.bpa_stack_entry]* %bpa_stack, i32 0, i64 %idxprom129
  %flags131 = getelementptr inbounds %struct.bpa_stack_entry, %struct.bpa_stack_entry* %arrayidx130, i32 0, i32 2
  %bf.load132 = load i8, i8* %flags131, align 4
  %bf.clear133 = and i8 %bf.load132, 3
  %bf.cast = zext i8 %bf.clear133 to i32
  %and134 = and i32 %bf.cast, 1
  %tobool135 = icmp ne i32 %and134, 0
  br i1 %tobool135, label %if.then.136, label %if.else.137

if.then.136:                                      ; preds = %if.then.124
  %79 = load i32, i32* %embedding_type, align 4
  %bracket_enclosed_type = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %tem_it, i32 0, i32 18
  store i32 %79, i32* %bracket_enclosed_type, align 4
  br label %if.end.154

if.else.137:                                      ; preds = %if.then.124
  %80 = load i32, i32* %sp, align 4
  %idxprom138 = sext i32 %80 to i64
  %arrayidx139 = getelementptr inbounds [1365 x %struct.bpa_stack_entry], [1365 x %struct.bpa_stack_entry]* %bpa_stack, i32 0, i64 %idxprom138
  %flags140 = getelementptr inbounds %struct.bpa_stack_entry, %struct.bpa_stack_entry* %arrayidx139, i32 0, i32 2
  %bf.load141 = load i8, i8* %flags140, align 4
  %bf.clear142 = and i8 %bf.load141, 3
  %bf.cast143 = zext i8 %bf.clear142 to i32
  %and144 = and i32 %bf.cast143, 2
  %tobool145 = icmp ne i32 %and144, 0
  br i1 %tobool145, label %if.then.146, label %if.else.151

if.then.146:                                      ; preds = %if.else.137
  %81 = load i32, i32* %embedding_type, align 4
  %cmp147 = icmp eq i32 %81, 1
  %cond149 = select i1 %cmp147, i32 2, i32 1
  %bracket_enclosed_type150 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %tem_it, i32 0, i32 18
  store i32 %cond149, i32* %bracket_enclosed_type150, align 4
  br label %if.end.153

if.else.151:                                      ; preds = %if.else.137
  %bracket_enclosed_type152 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %tem_it, i32 0, i32 18
  store i32 0, i32* %bracket_enclosed_type152, align 4
  br label %if.end.153

if.end.153:                                       ; preds = %if.else.151, %if.then.146
  br label %if.end.154

if.end.154:                                       ; preds = %if.end.153, %if.then.136
  %82 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %charpos155 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %82, i32 0, i32 1
  %83 = load i64, i64* %charpos155, align 8
  %bracket_pairing_pos156 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %tem_it, i32 0, i32 17
  store i64 %83, i64* %bracket_pairing_pos156, align 8
  %call157 = call i32 @bidi_cache_iterator_state(%struct.bidi_it* %tem_it, i1 zeroext false, i1 zeroext true)
  %84 = load i32, i32* %sp, align 4
  %sub158 = sub nsw i32 %84, 1
  store i32 %sub158, i32* %bpa_sp, align 4
  br label %if.end.159

if.end.159:                                       ; preds = %if.end.154, %while.end
  %85 = load i32, i32* %bpa_sp, align 4
  %cmp160 = icmp slt i32 %85, 0
  br i1 %cmp160, label %if.then.162, label %if.end.163

if.then.162:                                      ; preds = %if.end.159
  store i8 1, i8* %retval2, align 1
  br label %while.end.288

if.end.163:                                       ; preds = %if.end.159
  br label %if.end.195

if.else.164:                                      ; preds = %if.else
  %86 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type_after_wn = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %86, i32 0, i32 6
  %87 = load i32, i32* %type_after_wn, align 4
  %call165 = call i32 @bidi_get_category(i32 %87)
  %cmp166 = icmp ne i32 %call165, 1
  br i1 %cmp166, label %if.then.168, label %if.end.194

if.then.168:                                      ; preds = %if.else.164
  store i32 0, i32* %flag, align 4
  %88 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type170 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %88, i32 0, i32 5
  %89 = load i32, i32* %type170, align 4
  switch i32 %89, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.175
    i32 3, label %sw.bb.175
    i32 4, label %sw.bb.175
  ]

sw.bb:                                            ; preds = %if.then.168
  %90 = load i32, i32* %embedding_level, align 4
  %and171 = and i32 %90, 1
  %cmp172 = icmp eq i32 %and171, 0
  %cond174 = select i1 %cmp172, i32 1, i32 2
  store i32 %cond174, i32* %flag, align 4
  store i8 1, i8* %l2r_seen, align 1
  br label %sw.epilog

sw.bb.175:                                        ; preds = %if.then.168, %if.then.168, %if.then.168
  %91 = load i32, i32* %embedding_level, align 4
  %and176 = and i32 %91, 1
  %cmp177 = icmp eq i32 %and176, 1
  %cond179 = select i1 %cmp177, i32 1, i32 2
  store i32 %cond179, i32* %flag, align 4
  store i8 1, i8* %r2l_seen, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.168
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.175, %sw.bb
  %92 = load i32, i32* %flag, align 4
  %tobool180 = icmp ne i32 %92, 0
  br i1 %tobool180, label %if.then.181, label %if.end.193

if.then.181:                                      ; preds = %sw.epilog
  %93 = load i32, i32* %bpa_sp, align 4
  store i32 %93, i32* %sp169, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.181
  %94 = load i32, i32* %sp169, align 4
  %cmp182 = icmp sge i32 %94, 0
  br i1 %cmp182, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %95 = load i32, i32* %flag, align 4
  %96 = load i32, i32* %sp169, align 4
  %idxprom184 = sext i32 %96 to i64
  %arrayidx185 = getelementptr inbounds [1365 x %struct.bpa_stack_entry], [1365 x %struct.bpa_stack_entry]* %bpa_stack, i32 0, i64 %idxprom184
  %flags186 = getelementptr inbounds %struct.bpa_stack_entry, %struct.bpa_stack_entry* %arrayidx185, i32 0, i32 2
  %bf.load187 = load i8, i8* %flags186, align 4
  %bf.clear188 = and i8 %bf.load187, 3
  %bf.cast189 = zext i8 %bf.clear188 to i32
  %or = or i32 %bf.cast189, %95
  %97 = trunc i32 %or to i8
  %bf.load190 = load i8, i8* %flags186, align 4
  %bf.value = and i8 %97, 3
  %bf.clear191 = and i8 %bf.load190, -4
  %bf.set = or i8 %bf.clear191, %bf.value
  store i8 %bf.set, i8* %flags186, align 4
  %bf.result.cast = zext i8 %bf.value to i32
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %98 = load i32, i32* %sp169, align 4
  %dec192 = add nsw i32 %98, -1
  store i32 %dec192, i32* %sp169, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.193

if.end.193:                                       ; preds = %for.end, %sw.epilog
  br label %if.end.194

if.end.194:                                       ; preds = %if.end.193, %if.else.164
  br label %if.end.195

if.end.195:                                       ; preds = %if.end.194, %if.end.163
  br label %if.end.196

if.end.196:                                       ; preds = %if.end.195, %do.end
  %99 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %stack_idx197 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %99, i32 0, i32 25
  %100 = load i32, i32* %stack_idx197, align 4
  store i32 %100, i32* %old_sidx, align 4
  %101 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %call198 = call i32 @bidi_resolve_weak(%struct.bidi_it* %101)
  store i32 %call198, i32* %type, align 4
  %102 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %stack_idx199 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %102, i32 0, i32 25
  %103 = load i32, i32* %stack_idx199, align 4
  store i32 %103, i32* %new_sidx, align 4
  %104 = load i32, i32* %new_sidx, align 4
  %idxprom200 = sext i32 %104 to i64
  %105 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %level_stack201 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %105, i32 0, i32 26
  %arrayidx202 = getelementptr inbounds [128 x %struct.bidi_stack], [128 x %struct.bidi_stack]* %level_stack201, i32 0, i64 %idxprom200
  %level203 = getelementptr inbounds %struct.bidi_stack, %struct.bidi_stack* %arrayidx202, i32 0, i32 2
  %106 = load i8, i8* %level203, align 1
  %conv204 = zext i8 %106 to i32
  %107 = load i32, i32* %current_level, align 4
  %cmp205 = icmp sgt i32 %conv204, %107
  br i1 %cmp205, label %land.lhs.true.207, label %if.end.265

land.lhs.true.207:                                ; preds = %if.end.196
  %108 = load i32, i32* %new_sidx, align 4
  %idxprom208 = sext i32 %108 to i64
  %109 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %level_stack209 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %109, i32 0, i32 26
  %arrayidx210 = getelementptr inbounds [128 x %struct.bidi_stack], [128 x %struct.bidi_stack]* %level_stack209, i32 0, i64 %idxprom208
  %flags211 = getelementptr inbounds %struct.bidi_stack, %struct.bidi_stack* %arrayidx210, i32 0, i32 3
  %110 = load i8, i8* %flags211, align 1
  %conv212 = zext i8 %110 to i32
  %and213 = and i32 %conv212, 1
  %tobool214 = icmp ne i32 %and213, 0
  br i1 %tobool214, label %if.then.227, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.207
  %111 = load i32, i32* %new_sidx, align 4
  %112 = load i32, i32* %old_sidx, align 4
  %add215 = add nsw i32 %112, 1
  %cmp216 = icmp sgt i32 %111, %add215
  br i1 %cmp216, label %land.lhs.true.218, label %if.end.265

land.lhs.true.218:                                ; preds = %lor.lhs.false
  %113 = load i32, i32* %new_sidx, align 4
  %sub219 = sub nsw i32 %113, 1
  %idxprom220 = sext i32 %sub219 to i64
  %114 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %level_stack221 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %114, i32 0, i32 26
  %arrayidx222 = getelementptr inbounds [128 x %struct.bidi_stack], [128 x %struct.bidi_stack]* %level_stack221, i32 0, i64 %idxprom220
  %flags223 = getelementptr inbounds %struct.bidi_stack, %struct.bidi_stack* %arrayidx222, i32 0, i32 3
  %115 = load i8, i8* %flags223, align 1
  %conv224 = zext i8 %115 to i32
  %and225 = and i32 %conv224, 1
  %tobool226 = icmp ne i32 %and225, 0
  br i1 %tobool226, label %if.then.227, label %if.end.265

if.then.227:                                      ; preds = %land.lhs.true.218, %land.lhs.true.207
  br label %while.cond.228

while.cond.228:                                   ; preds = %if.end.262, %if.then.227
  %116 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %stack_idx229 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %116, i32 0, i32 25
  %117 = load i32, i32* %stack_idx229, align 4
  %idxprom230 = sext i32 %117 to i64
  %118 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %level_stack231 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %118, i32 0, i32 26
  %arrayidx232 = getelementptr inbounds [128 x %struct.bidi_stack], [128 x %struct.bidi_stack]* %level_stack231, i32 0, i64 %idxprom230
  %level233 = getelementptr inbounds %struct.bidi_stack, %struct.bidi_stack* %arrayidx232, i32 0, i32 2
  %119 = load i8, i8* %level233, align 1
  %conv234 = zext i8 %119 to i32
  %120 = load i32, i32* %current_level, align 4
  %cmp235 = icmp sgt i32 %conv234, %120
  br i1 %cmp235, label %while.body.237, label %while.end.264

while.body.237:                                   ; preds = %while.cond.228
  %121 = load i32, i32* %maxlevel, align 4
  %122 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %stack_idx238 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %122, i32 0, i32 25
  %123 = load i32, i32* %stack_idx238, align 4
  %idxprom239 = sext i32 %123 to i64
  %124 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %level_stack240 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %124, i32 0, i32 26
  %arrayidx241 = getelementptr inbounds [128 x %struct.bidi_stack], [128 x %struct.bidi_stack]* %level_stack240, i32 0, i64 %idxprom239
  %level242 = getelementptr inbounds %struct.bidi_stack, %struct.bidi_stack* %arrayidx241, i32 0, i32 2
  %125 = load i8, i8* %level242, align 1
  %conv243 = zext i8 %125 to i32
  %cmp244 = icmp slt i32 %121, %conv243
  br i1 %cmp244, label %if.then.246, label %if.end.253

if.then.246:                                      ; preds = %while.body.237
  %126 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %stack_idx247 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %126, i32 0, i32 25
  %127 = load i32, i32* %stack_idx247, align 4
  %idxprom248 = sext i32 %127 to i64
  %128 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %level_stack249 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %128, i32 0, i32 26
  %arrayidx250 = getelementptr inbounds [128 x %struct.bidi_stack], [128 x %struct.bidi_stack]* %level_stack249, i32 0, i64 %idxprom248
  %level251 = getelementptr inbounds %struct.bidi_stack, %struct.bidi_stack* %arrayidx250, i32 0, i32 2
  %129 = load i8, i8* %level251, align 1
  %conv252 = zext i8 %129 to i32
  store i32 %conv252, i32* %maxlevel, align 4
  br label %if.end.253

if.end.253:                                       ; preds = %if.then.246, %while.body.237
  %130 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %131 = load i32, i32* %type, align 4
  %cmp254 = icmp eq i32 %131, 6
  %call256 = call i32 @bidi_cache_iterator_state(%struct.bidi_it* %130, i1 zeroext %cmp254, i1 zeroext false)
  %tobool257 = icmp ne i32 %call256, 0
  br i1 %tobool257, label %if.end.262, label %if.then.258

if.then.258:                                      ; preds = %if.end.253
  %132 = load i32, i32* %idx_at_entry, align 4
  %conv259 = sext i32 %132 to i64
  %133 = load i64, i64* @bidi_cache_start, align 8
  %sub260 = sub nsw i64 %conv259, %133
  %conv261 = trunc i64 %sub260 to i32
  call void @bidi_cache_reset_to(i32 %conv261)
  %134 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  call void @bidi_copy_it(%struct.bidi_it* %134, %struct.bidi_it* %saved_it)
  br label %give_up

if.end.262:                                       ; preds = %if.end.253
  %135 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %call263 = call i32 @bidi_resolve_weak(%struct.bidi_it* %135)
  store i32 %call263, i32* %type, align 4
  br label %while.cond.228

while.end.264:                                    ; preds = %while.cond.228
  br label %if.end.265

if.end.265:                                       ; preds = %while.end.264, %land.lhs.true.218, %lor.lhs.false, %if.end.196
  %136 = load i32, i32* %type, align 4
  %cmp266 = icmp eq i32 %136, 6
  br i1 %cmp266, label %if.then.277, label %lor.lhs.false.268

lor.lhs.false.268:                                ; preds = %if.end.265
  %137 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %stack_idx269 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %137, i32 0, i32 25
  %138 = load i32, i32* %stack_idx269, align 4
  %idxprom270 = sext i32 %138 to i64
  %139 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %level_stack271 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %139, i32 0, i32 26
  %arrayidx272 = getelementptr inbounds [128 x %struct.bidi_stack], [128 x %struct.bidi_stack]* %level_stack271, i32 0, i64 %idxprom270
  %level273 = getelementptr inbounds %struct.bidi_stack, %struct.bidi_stack* %arrayidx272, i32 0, i32 2
  %140 = load i8, i8* %level273, align 1
  %conv274 = zext i8 %140 to i32
  %141 = load i32, i32* %current_level, align 4
  %cmp275 = icmp ne i32 %conv274, %141
  br i1 %cmp275, label %if.then.277, label %if.end.279

if.then.277:                                      ; preds = %lor.lhs.false.268, %if.end.265
  %142 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %charpos278 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %142, i32 0, i32 1
  %143 = load i64, i64* %charpos278, align 8
  store i64 %143, i64* %pairing_pos, align 8
  br label %while.end.288

if.end.279:                                       ; preds = %lor.lhs.false.268
  %144 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type_after_wn280 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %144, i32 0, i32 6
  %145 = load i32, i32* %type_after_wn280, align 4
  %cmp281 = icmp eq i32 %145, 23
  br i1 %cmp281, label %if.then.283, label %if.else.286

if.then.283:                                      ; preds = %if.end.279
  %146 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %ch284 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %146, i32 0, i32 2
  %147 = load i32, i32* %ch284, align 4
  %call285 = call i32 @bidi_paired_bracket_type(i32 %147)
  store i32 %call285, i32* %btype, align 4
  br label %if.end.287

if.else.286:                                      ; preds = %if.end.279
  store i32 1, i32* %btype, align 4
  br label %if.end.287

if.end.287:                                       ; preds = %if.else.286, %if.then.283
  br label %while.body

while.end.288:                                    ; preds = %if.then.277, %if.then.162
  %charpos289 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %saved_it, i32 0, i32 1
  %148 = load i64, i64* %charpos289, align 8
  %149 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %call290 = call i32 @bidi_cache_find(i64 %148, i1 zeroext false, %struct.bidi_it* %149)
  store i32 %call290, i32* %type, align 4
  %150 = load i32, i32* %maxlevel, align 4
  %151 = load i32, i32* %base_level, align 4
  %cmp291 = icmp eq i32 %150, %151
  br i1 %cmp291, label %land.lhs.true.293, label %if.end.325

land.lhs.true.293:                                ; preds = %while.end.288
  %152 = load i32, i32* %base_level, align 4
  %cmp294 = icmp eq i32 %152, 0
  br i1 %cmp294, label %land.lhs.true.296, label %lor.lhs.false.298

land.lhs.true.296:                                ; preds = %land.lhs.true.293
  %153 = load i8, i8* %r2l_seen, align 1
  %tobool297 = trunc i8 %153 to i1
  br i1 %tobool297, label %lor.lhs.false.298, label %if.then.303

lor.lhs.false.298:                                ; preds = %land.lhs.true.296, %land.lhs.true.293
  %154 = load i32, i32* %base_level, align 4
  %cmp299 = icmp eq i32 %154, 1
  br i1 %cmp299, label %land.lhs.true.301, label %if.end.325

land.lhs.true.301:                                ; preds = %lor.lhs.false.298
  %155 = load i8, i8* %l2r_seen, align 1
  %tobool302 = trunc i8 %155 to i1
  br i1 %tobool302, label %if.end.325, label %if.then.303

if.then.303:                                      ; preds = %land.lhs.true.301, %land.lhs.true.296
  %156 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %string = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %156, i32 0, i32 27
  %s = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %string, i32 0, i32 1
  %157 = load i8*, i8** %s, align 8
  %tobool304 = icmp ne i8* %157, null
  br i1 %tobool304, label %cond.true.309, label %lor.lhs.false.305

lor.lhs.false.305:                                ; preds = %if.then.303
  %158 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %string306 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %158, i32 0, i32 27
  %lstring = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %string306, i32 0, i32 0
  %159 = load i64, i64* %lstring, align 8
  %call307 = call zeroext i1 @STRINGP(i64 %159)
  br i1 %call307, label %cond.true.309, label %cond.false.311

cond.true.309:                                    ; preds = %lor.lhs.false.305, %if.then.303
  %160 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %string310 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %160, i32 0, i32 27
  %schars = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %string310, i32 0, i32 2
  %161 = load i64, i64* %schars, align 8
  br label %cond.end.312

cond.false.311:                                   ; preds = %lor.lhs.false.305
  %162 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %162, i32 0, i32 79
  %163 = load i64, i64* %zv, align 8
  br label %cond.end.312

cond.end.312:                                     ; preds = %cond.false.311, %cond.true.309
  %cond313 = phi i64 [ %161, %cond.true.309 ], [ %163, %cond.false.311 ]
  store i64 %cond313, i64* %eob, align 8
  %164 = load i8, i8* %retval2, align 1
  %tobool314 = trunc i8 %164 to i1
  br i1 %tobool314, label %if.then.315, label %if.end.317

if.then.315:                                      ; preds = %cond.end.312
  %165 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %bracket_pairing_pos316 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %165, i32 0, i32 17
  %166 = load i64, i64* %bracket_pairing_pos316, align 8
  store i64 %166, i64* %pairing_pos, align 8
  br label %if.end.317

if.end.317:                                       ; preds = %if.then.315, %cond.end.312
  %167 = load i64, i64* %eob, align 8
  %168 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %bracket_pairing_pos318 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %168, i32 0, i32 17
  store i64 %167, i64* %bracket_pairing_pos318, align 8
  %169 = load i32, i32* %embedding_type, align 4
  %170 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %bracket_enclosed_type319 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %170, i32 0, i32 18
  store i32 %169, i32* %bracket_enclosed_type319, align 4
  %171 = load i64, i64* @bidi_cache_last_idx, align 8
  %172 = load i64, i64* @bidi_cache_start, align 8
  %sub320 = sub nsw i64 %171, %172
  %conv321 = trunc i64 %sub320 to i32
  call void @bidi_cache_reset_to(i32 %conv321)
  %173 = load i32, i32* %embedding_type, align 4
  %174 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %next_for_neutral = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %174, i32 0, i32 14
  %type322 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %next_for_neutral, i32 0, i32 1
  store i32 %173, i32* %type322, align 4
  %175 = load i64, i64* %pairing_pos, align 8
  %176 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %next_for_neutral323 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %176, i32 0, i32 14
  %charpos324 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %next_for_neutral323, i32 0, i32 0
  store i64 %175, i64* %charpos324, align 8
  store i8 0, i8* %retval2, align 1
  br label %if.end.325

if.end.325:                                       ; preds = %if.end.317, %land.lhs.true.301, %lor.lhs.false.298, %while.end.288
  br label %if.end.326

if.end.326:                                       ; preds = %if.end.325, %if.end
  br label %give_up

give_up:                                          ; preds = %if.end.326, %if.then.258, %if.then.32
  %177 = load i8, i8* %retval2, align 1
  %tobool327 = trunc i8 %177 to i1
  ret i1 %tobool327
}

; Function Attrs: nounwind uwtable
define internal void @bidi_record_type_for_neutral(%struct.bidi_saved_info* %info, i32 %level, i1 zeroext %nextp) #0 {
entry:
  %info.addr = alloca %struct.bidi_saved_info*, align 8
  %level.addr = alloca i32, align 4
  %nextp.addr = alloca i8, align 1
  %idx = alloca i32, align 4
  %lev = alloca i32, align 4
  store %struct.bidi_saved_info* %info, %struct.bidi_saved_info** %info.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  %frombool = zext i1 %nextp to i8
  store i8 %frombool, i8* %nextp.addr, align 1
  %0 = load i64, i64* @bidi_cache_last_idx, align 8
  %add = add nsw i64 %0, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %idx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %idx, align 4
  %conv1 = sext i32 %1 to i64
  %2 = load i64, i64* @bidi_cache_idx, align 8
  %cmp = icmp slt i64 %conv1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %idx, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.bidi_it*, %struct.bidi_it** @bidi_cache, align 8
  %arrayidx = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %4, i64 %idxprom
  %stack_idx = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %arrayidx, i32 0, i32 25
  %5 = load i32, i32* %stack_idx, align 4
  %idxprom3 = sext i32 %5 to i64
  %6 = load i32, i32* %idx, align 4
  %idxprom4 = sext i32 %6 to i64
  %7 = load %struct.bidi_it*, %struct.bidi_it** @bidi_cache, align 8
  %arrayidx5 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %7, i64 %idxprom4
  %level_stack = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %arrayidx5, i32 0, i32 26
  %arrayidx6 = getelementptr inbounds [128 x %struct.bidi_stack], [128 x %struct.bidi_stack]* %level_stack, i32 0, i64 %idxprom3
  %level7 = getelementptr inbounds %struct.bidi_stack, %struct.bidi_stack* %arrayidx6, i32 0, i32 2
  %8 = load i8, i8* %level7, align 1
  %conv8 = zext i8 %8 to i32
  store i32 %conv8, i32* %lev, align 4
  %9 = load i32, i32* %lev, align 4
  %10 = load i32, i32* %level.addr, align 4
  %cmp9 = icmp sle i32 %9, %10
  br i1 %cmp9, label %if.then, label %if.end.16

if.then:                                          ; preds = %for.body
  %11 = load i8, i8* %nextp.addr, align 1
  %tobool = trunc i8 %11 to i1
  br i1 %tobool, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.then
  %12 = load i32, i32* %idx, align 4
  %idxprom12 = sext i32 %12 to i64
  %13 = load %struct.bidi_it*, %struct.bidi_it** @bidi_cache, align 8
  %arrayidx13 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %13, i64 %idxprom12
  %next_for_neutral = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %arrayidx13, i32 0, i32 14
  %14 = load %struct.bidi_saved_info*, %struct.bidi_saved_info** %info.addr, align 8
  %15 = bitcast %struct.bidi_saved_info* %next_for_neutral to i8*
  %16 = bitcast %struct.bidi_saved_info* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 16, i32 8, i1 false)
  br label %if.end

if.else:                                          ; preds = %if.then
  %17 = load i32, i32* %idx, align 4
  %idxprom14 = sext i32 %17 to i64
  %18 = load %struct.bidi_it*, %struct.bidi_it** @bidi_cache, align 8
  %arrayidx15 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %18, i64 %idxprom14
  %prev_for_neutral = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %arrayidx15, i32 0, i32 15
  %19 = load %struct.bidi_saved_info*, %struct.bidi_saved_info** %info.addr, align 8
  %20 = bitcast %struct.bidi_saved_info* %prev_for_neutral to i8*
  %21 = bitcast %struct.bidi_saved_info* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 16, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.11
  br label %for.end

if.end.16:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %22 = load i32, i32* %idx, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %idx, align 4
  br label %for.cond

for.end:                                          ; preds = %if.end, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bidi_cache_fetch_state(i64 %idx, %struct.bidi_it* %bidi_it) #0 {
entry:
  %idx.addr = alloca i64, align 8
  %bidi_it.addr = alloca %struct.bidi_it*, align 8
  %current_scan_dir = alloca i32, align 4
  store i64 %idx, i64* %idx.addr, align 8
  store %struct.bidi_it* %bidi_it, %struct.bidi_it** %bidi_it.addr, align 8
  %0 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %scan_dir = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %0, i32 0, i32 22
  %1 = load i32, i32* %scan_dir, align 4
  store i32 %1, i32* %current_scan_dir, align 4
  %2 = load i64, i64* %idx.addr, align 8
  %3 = load i64, i64* @bidi_cache_start, align 8
  %cmp = icmp slt i64 %2, %3
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i64, i64* %idx.addr, align 8
  %5 = load i64, i64* @bidi_cache_idx, align 8
  %cmp1 = icmp sge i64 %4, %5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @emacs_abort() #4
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %7 = load i64, i64* %idx.addr, align 8
  %8 = load %struct.bidi_it*, %struct.bidi_it** @bidi_cache, align 8
  %arrayidx = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %8, i64 %7
  call void @bidi_copy_it(%struct.bidi_it* %6, %struct.bidi_it* %arrayidx)
  %9 = load i32, i32* %current_scan_dir, align 4
  %10 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %scan_dir2 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %10, i32 0, i32 22
  store i32 %9, i32* %scan_dir2, align 4
  %11 = load i64, i64* %idx.addr, align 8
  store i64 %11, i64* @bidi_cache_last_idx, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @bidi_cache_find_level_change(i32 %level, i32 %dir, i1 zeroext %before) #0 {
entry:
  %retval = alloca i64, align 8
  %level.addr = alloca i32, align 4
  %dir.addr = alloca i32, align 4
  %before.addr = alloca i8, align 1
  %i = alloca i64, align 8
  %incr = alloca i32, align 4
  store i32 %level, i32* %level.addr, align 4
  store i32 %dir, i32* %dir.addr, align 4
  %frombool = zext i1 %before to i8
  store i8 %frombool, i8* %before.addr, align 1
  %0 = load i64, i64* @bidi_cache_idx, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.then, label %if.end.58

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %dir.addr, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %2 = load i64, i64* @bidi_cache_last_idx, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %3 = load i64, i64* @bidi_cache_idx, align 8
  %sub = sub nsw i64 %3, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %2, %cond.true ], [ %sub, %cond.false ]
  store i64 %cond, i64* %i, align 8
  %4 = load i8, i8* %before.addr, align 1
  %tobool2 = trunc i8 %4 to i1
  %cond3 = select i1 %tobool2, i32 1, i32 0
  store i32 %cond3, i32* %incr, align 4
  %5 = load i64, i64* %i, align 8
  %cmp = icmp slt i64 %5, 0
  br i1 %cmp, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %cond.end
  store i64 0, i64* %i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.4, %cond.end
  %6 = load i32, i32* %dir.addr, align 4
  %tobool5 = icmp ne i32 %6, 0
  br i1 %tobool5, label %if.else, label %if.then.6

if.then.6:                                        ; preds = %if.end
  store i32 -1, i32* %dir.addr, align 4
  br label %if.end.10

if.else:                                          ; preds = %if.end
  %7 = load i32, i32* %incr, align 4
  %tobool7 = icmp ne i32 %7, 0
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.else
  %8 = load i32, i32* %dir.addr, align 4
  %conv = sext i32 %8 to i64
  %9 = load i64, i64* %i, align 8
  %add = add nsw i64 %9, %conv
  store i64 %add, i64* %i, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.else
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.then.6
  %10 = load i32, i32* %dir.addr, align 4
  %cmp11 = icmp slt i32 %10, 0
  br i1 %cmp11, label %if.then.13, label %if.else.32

if.then.13:                                       ; preds = %if.end.10
  br label %while.cond

while.cond:                                       ; preds = %if.end.31, %if.then.13
  %11 = load i64, i64* %i, align 8
  %12 = load i64, i64* @bidi_cache_start, align 8
  %13 = load i32, i32* %incr, align 4
  %conv14 = sext i32 %13 to i64
  %add15 = add nsw i64 %12, %conv14
  %cmp16 = icmp sge i64 %11, %add15
  br i1 %cmp16, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load i64, i64* %i, align 8
  %15 = load i32, i32* %incr, align 4
  %conv18 = sext i32 %15 to i64
  %sub19 = sub nsw i64 %14, %conv18
  %16 = load %struct.bidi_it*, %struct.bidi_it** @bidi_cache, align 8
  %arrayidx = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %16, i64 %sub19
  %resolved_level = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %arrayidx, i32 0, i32 8
  %17 = load i8, i8* %resolved_level, align 1
  %conv20 = sext i8 %17 to i32
  %cmp21 = icmp sge i32 %conv20, 0
  br i1 %cmp21, label %land.lhs.true, label %if.end.31

land.lhs.true:                                    ; preds = %while.body
  %18 = load i64, i64* %i, align 8
  %19 = load i32, i32* %incr, align 4
  %conv23 = sext i32 %19 to i64
  %sub24 = sub nsw i64 %18, %conv23
  %20 = load %struct.bidi_it*, %struct.bidi_it** @bidi_cache, align 8
  %arrayidx25 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %20, i64 %sub24
  %resolved_level26 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %arrayidx25, i32 0, i32 8
  %21 = load i8, i8* %resolved_level26, align 1
  %conv27 = sext i8 %21 to i32
  %22 = load i32, i32* %level.addr, align 4
  %cmp28 = icmp slt i32 %conv27, %22
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %land.lhs.true
  %23 = load i64, i64* %i, align 8
  store i64 %23, i64* %retval
  br label %return

if.end.31:                                        ; preds = %land.lhs.true, %while.body
  %24 = load i64, i64* %i, align 8
  %dec = add nsw i64 %24, -1
  store i64 %dec, i64* %i, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.57

if.else.32:                                       ; preds = %if.end.10
  br label %while.cond.33

while.cond.33:                                    ; preds = %if.end.55, %if.else.32
  %25 = load i64, i64* %i, align 8
  %26 = load i64, i64* @bidi_cache_idx, align 8
  %27 = load i32, i32* %incr, align 4
  %conv34 = sext i32 %27 to i64
  %sub35 = sub nsw i64 %26, %conv34
  %cmp36 = icmp slt i64 %25, %sub35
  br i1 %cmp36, label %while.body.38, label %while.end.56

while.body.38:                                    ; preds = %while.cond.33
  %28 = load i64, i64* %i, align 8
  %29 = load i32, i32* %incr, align 4
  %conv39 = sext i32 %29 to i64
  %add40 = add nsw i64 %28, %conv39
  %30 = load %struct.bidi_it*, %struct.bidi_it** @bidi_cache, align 8
  %arrayidx41 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %30, i64 %add40
  %resolved_level42 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %arrayidx41, i32 0, i32 8
  %31 = load i8, i8* %resolved_level42, align 1
  %conv43 = sext i8 %31 to i32
  %cmp44 = icmp sge i32 %conv43, 0
  br i1 %cmp44, label %land.lhs.true.46, label %if.end.55

land.lhs.true.46:                                 ; preds = %while.body.38
  %32 = load i64, i64* %i, align 8
  %33 = load i32, i32* %incr, align 4
  %conv47 = sext i32 %33 to i64
  %add48 = add nsw i64 %32, %conv47
  %34 = load %struct.bidi_it*, %struct.bidi_it** @bidi_cache, align 8
  %arrayidx49 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %34, i64 %add48
  %resolved_level50 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %arrayidx49, i32 0, i32 8
  %35 = load i8, i8* %resolved_level50, align 1
  %conv51 = sext i8 %35 to i32
  %36 = load i32, i32* %level.addr, align 4
  %cmp52 = icmp slt i32 %conv51, %36
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %land.lhs.true.46
  %37 = load i64, i64* %i, align 8
  store i64 %37, i64* %retval
  br label %return

if.end.55:                                        ; preds = %land.lhs.true.46, %while.body.38
  %38 = load i64, i64* %i, align 8
  %inc = add nsw i64 %38, 1
  store i64 %inc, i64* %i, align 8
  br label %while.cond.33

while.end.56:                                     ; preds = %while.cond.33
  br label %if.end.57

if.end.57:                                        ; preds = %while.end.56, %while.end
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %entry
  store i64 -1, i64* %retval
  br label %return

return:                                           ; preds = %if.end.58, %if.then.54, %if.then.30
  %39 = load i64, i64* %retval
  ret i64 %39
}

; Function Attrs: nounwind uwtable
define internal i32 @bidi_resolve_explicit(%struct.bidi_it* %bidi_it) #0 {
entry:
  %bidi_it.addr = alloca %struct.bidi_it*, align 8
  %curchar = alloca i32, align 4
  %type = alloca i32, align 4
  %typ1 = alloca i32, align 4
  %prev_type = alloca i32, align 4
  %current_level = alloca i32, align 4
  %new_level = alloca i32, align 4
  %override = alloca i32, align 4
  %isolate_status = alloca i8, align 1
  %string_p = alloca i8, align 1
  %ch_len = alloca i64, align 8
  %nchars = alloca i64, align 8
  %disp_pos = alloca i64, align 8
  %end = alloca i64, align 8
  %disp_prop = alloca i32, align 4
  %eob = alloca i64, align 8
  %p = alloca i8*, align 8
  %stack_override = alloca i32, align 4
  store %struct.bidi_it* %bidi_it, %struct.bidi_it** %bidi_it.addr, align 8
  store i32 0, i32* %prev_type, align 4
  %0 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %string = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %0, i32 0, i32 27
  %s = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %string, i32 0, i32 1
  %1 = load i8*, i8** %s, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %2 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %string1 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %2, i32 0, i32 27
  %lstring = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %string1, i32 0, i32 0
  %3 = load i64, i64* %lstring, align 8
  %call = call zeroext i1 @STRINGP(i64 %3)
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %call, %lor.rhs ]
  %frombool = zext i1 %4 to i8
  store i8 %frombool, i8* %string_p, align 1
  %5 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %string2 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %5, i32 0, i32 27
  %s3 = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %string2, i32 0, i32 1
  %6 = load i8*, i8** %s3, align 8
  %tobool4 = icmp ne i8* %6, null
  br i1 %tobool4, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %lor.end
  %7 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %string5 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %7, i32 0, i32 27
  %lstring6 = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %string5, i32 0, i32 0
  %8 = load i64, i64* %lstring6, align 8
  %call7 = call zeroext i1 @STRINGP(i64 %8)
  br i1 %call7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %lor.end
  %9 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %string8 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %9, i32 0, i32 27
  %schars = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %string8, i32 0, i32 2
  %10 = load i64, i64* %schars, align 8
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %11 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %11, i32 0, i32 79
  %12 = load i64, i64* %zv, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %10, %cond.true ], [ %12, %cond.false ]
  store i64 %cond, i64* %eob, align 8
  %13 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type_after_wn = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %13, i32 0, i32 6
  %14 = load i32, i32* %type_after_wn, align 4
  %cmp = icmp ne i32 %14, 5
  br i1 %cmp, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %cond.end
  %15 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type9 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %15, i32 0, i32 5
  %16 = load i32, i32* %type9, align 4
  %cmp10 = icmp ne i32 %16, 5
  br i1 %cmp10, label %if.then, label %if.end.22

if.then:                                          ; preds = %land.lhs.true
  %17 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type_after_wn11 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %17, i32 0, i32 6
  %18 = load i32, i32* %type_after_wn11, align 4
  %cmp12 = icmp eq i32 %18, 23
  br i1 %cmp12, label %land.lhs.true.13, label %if.else

land.lhs.true.13:                                 ; preds = %if.then
  %19 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type14 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %19, i32 0, i32 5
  %20 = load i32, i32* %type14, align 4
  %call15 = call i32 @bidi_get_category(i32 %20)
  %cmp16 = icmp eq i32 %call15, 3
  br i1 %cmp16, label %land.lhs.true.17, label %if.else

land.lhs.true.17:                                 ; preds = %land.lhs.true.13
  %21 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %ch = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %21, i32 0, i32 2
  %22 = load i32, i32* %ch, align 4
  %call18 = call i32 @bidi_paired_bracket_type(i32 %22)
  %cmp19 = icmp eq i32 %call18, 3
  br i1 %cmp19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %land.lhs.true.17
  %23 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %prev = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %23, i32 0, i32 12
  %24 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  call void @bidi_remember_char(%struct.bidi_saved_info* %prev, %struct.bidi_it* %24, i1 zeroext true)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.17, %land.lhs.true.13, %if.then
  %25 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %prev21 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %25, i32 0, i32 12
  %26 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  call void @bidi_remember_char(%struct.bidi_saved_info* %prev21, %struct.bidi_it* %26, i1 zeroext false)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.20
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %land.lhs.true, %cond.end
  %27 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type_after_wn23 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %27, i32 0, i32 6
  %28 = load i32, i32* %type_after_wn23, align 4
  %cmp24 = icmp eq i32 %28, 2
  br i1 %cmp24, label %if.then.31, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %if.end.22
  %29 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type_after_wn26 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %29, i32 0, i32 6
  %30 = load i32, i32* %type_after_wn26, align 4
  %cmp27 = icmp eq i32 %30, 1
  br i1 %cmp27, label %if.then.31, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %lor.lhs.false.25
  %31 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type_after_wn29 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %31, i32 0, i32 6
  %32 = load i32, i32* %type_after_wn29, align 4
  %cmp30 = icmp eq i32 %32, 7
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %lor.lhs.false.28, %lor.lhs.false.25, %if.end.22
  %33 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %last_strong = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %33, i32 0, i32 13
  %34 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  call void @bidi_remember_char(%struct.bidi_saved_info* %last_strong, %struct.bidi_it* %34, i1 zeroext false)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %lor.lhs.false.28
  %35 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type33 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %35, i32 0, i32 5
  %36 = load i32, i32* %type33, align 4
  %cmp34 = icmp eq i32 %36, 2
  br i1 %cmp34, label %if.then.44, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %if.end.32
  %37 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type36 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %37, i32 0, i32 5
  %38 = load i32, i32* %type36, align 4
  %cmp37 = icmp eq i32 %38, 1
  br i1 %cmp37, label %if.then.44, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %lor.lhs.false.35
  %39 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type39 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %39, i32 0, i32 5
  %40 = load i32, i32* %type39, align 4
  %cmp40 = icmp eq i32 %40, 3
  br i1 %cmp40, label %if.then.44, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %lor.lhs.false.38
  %41 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type42 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %41, i32 0, i32 5
  %42 = load i32, i32* %type42, align 4
  %cmp43 = icmp eq i32 %42, 4
  br i1 %cmp43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %lor.lhs.false.41, %lor.lhs.false.38, %lor.lhs.false.35, %if.end.32
  %43 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %prev_for_neutral = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %43, i32 0, i32 15
  %44 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  call void @bidi_remember_char(%struct.bidi_saved_info* %prev_for_neutral, %struct.bidi_it* %44, i1 zeroext true)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %lor.lhs.false.41
  %45 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %charpos = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %45, i32 0, i32 1
  %46 = load i64, i64* %charpos, align 8
  %47 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %next_for_neutral = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %47, i32 0, i32 14
  %charpos46 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %next_for_neutral, i32 0, i32 0
  %48 = load i64, i64* %charpos46, align 8
  %cmp47 = icmp sge i64 %46, %48
  br i1 %cmp47, label %if.then.48, label %if.end.55

if.then.48:                                       ; preds = %if.end.45
  %49 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %next_for_neutral49 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %49, i32 0, i32 14
  %type50 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %next_for_neutral49, i32 0, i32 1
  store i32 0, i32* %type50, align 4
  %50 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %bracket_pairing_pos = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %50, i32 0, i32 17
  %51 = load i64, i64* %bracket_pairing_pos, align 8
  %52 = load i64, i64* %eob, align 8
  %cmp51 = icmp eq i64 %51, %52
  br i1 %cmp51, label %if.then.52, label %if.end.54

if.then.52:                                       ; preds = %if.then.48
  %53 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %bracket_pairing_pos53 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %53, i32 0, i32 17
  store i64 -1, i64* %bracket_pairing_pos53, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.52, %if.then.48
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.end.45
  %54 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %next_en_pos = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %54, i32 0, i32 19
  %55 = load i64, i64* %next_en_pos, align 8
  %cmp56 = icmp sge i64 %55, 0
  br i1 %cmp56, label %land.lhs.true.57, label %if.end.63

land.lhs.true.57:                                 ; preds = %if.end.55
  %56 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %charpos58 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %56, i32 0, i32 1
  %57 = load i64, i64* %charpos58, align 8
  %58 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %next_en_pos59 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %58, i32 0, i32 19
  %59 = load i64, i64* %next_en_pos59, align 8
  %cmp60 = icmp sge i64 %57, %59
  br i1 %cmp60, label %if.then.61, label %if.end.63

if.then.61:                                       ; preds = %land.lhs.true.57
  %60 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %next_en_pos62 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %60, i32 0, i32 19
  store i64 0, i64* %next_en_pos62, align 8
  %61 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %next_en_type = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %61, i32 0, i32 20
  store i32 0, i32* %next_en_type, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.61, %land.lhs.true.57, %if.end.55
  %62 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %bracket_pairing_pos64 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %62, i32 0, i32 17
  %63 = load i64, i64* %bracket_pairing_pos64, align 8
  %64 = load i64, i64* %eob, align 8
  %cmp65 = icmp ne i64 %63, %64
  br i1 %cmp65, label %if.then.66, label %if.end.68

if.then.66:                                       ; preds = %if.end.63
  %65 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %bracket_pairing_pos67 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %65, i32 0, i32 17
  store i64 -1, i64* %bracket_pairing_pos67, align 8
  %66 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %bracket_enclosed_type = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %66, i32 0, i32 18
  store i32 0, i32* %bracket_enclosed_type, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.66, %if.end.63
  %67 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %bytepos = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %67, i32 0, i32 0
  %68 = load i64, i64* %bytepos, align 8
  %69 = load i8, i8* %string_p, align 1
  %tobool69 = trunc i8 %69 to i1
  br i1 %tobool69, label %cond.true.70, label %cond.false.71

cond.true.70:                                     ; preds = %if.end.68
  br label %cond.end.72

cond.false.71:                                    ; preds = %if.end.68
  %70 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %70, i32 0, i32 78
  %71 = load i64, i64* %begv_byte, align 8
  br label %cond.end.72

cond.end.72:                                      ; preds = %cond.false.71, %cond.true.70
  %cond73 = phi i64 [ 0, %cond.true.70 ], [ %71, %cond.false.71 ]
  %cmp74 = icmp slt i64 %68, %cond73
  br i1 %cmp74, label %if.then.76, label %lor.lhs.false.75

lor.lhs.false.75:                                 ; preds = %cond.end.72
  %72 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %first_elt = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %72, i32 0, i32 31
  %bf.load = load i8, i8* %first_elt, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %if.then.76, label %if.else.121

if.then.76:                                       ; preds = %lor.lhs.false.75, %cond.end.72
  %73 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %first_elt77 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %73, i32 0, i32 31
  %bf.load78 = load i8, i8* %first_elt77, align 8
  %bf.clear79 = and i8 %bf.load78, -2
  store i8 %bf.clear79, i8* %first_elt77, align 8
  %74 = load i8, i8* %string_p, align 1
  %tobool80 = trunc i8 %74 to i1
  br i1 %tobool80, label %if.then.81, label %if.else.100

if.then.81:                                       ; preds = %if.then.76
  %75 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %string82 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %75, i32 0, i32 27
  %lstring83 = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %string82, i32 0, i32 0
  %76 = load i64, i64* %lstring83, align 8
  %call84 = call zeroext i1 @STRINGP(i64 %76)
  br i1 %call84, label %cond.true.85, label %cond.false.89

cond.true.85:                                     ; preds = %if.then.81
  %77 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %string86 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %77, i32 0, i32 27
  %lstring87 = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %string86, i32 0, i32 0
  %78 = load i64, i64* %lstring87, align 8
  %call88 = call i8* @SDATA(i64 %78)
  br label %cond.end.92

cond.false.89:                                    ; preds = %if.then.81
  %79 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %string90 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %79, i32 0, i32 27
  %s91 = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %string90, i32 0, i32 1
  %80 = load i8*, i8** %s91, align 8
  br label %cond.end.92

cond.end.92:                                      ; preds = %cond.false.89, %cond.true.85
  %cond93 = phi i8* [ %call88, %cond.true.85 ], [ %80, %cond.false.89 ]
  store i8* %cond93, i8** %p, align 8
  %81 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %charpos94 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %81, i32 0, i32 1
  %82 = load i64, i64* %charpos94, align 8
  %cmp95 = icmp slt i64 %82, 0
  br i1 %cmp95, label %if.then.96, label %if.end.99

if.then.96:                                       ; preds = %cond.end.92
  %83 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %bytepos97 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %83, i32 0, i32 0
  store i64 0, i64* %bytepos97, align 8
  %84 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %charpos98 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %84, i32 0, i32 1
  store i64 0, i64* %charpos98, align 8
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.96, %cond.end.92
  br label %if.end.109

if.else.100:                                      ; preds = %if.then.76
  %85 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %charpos101 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %85, i32 0, i32 1
  %86 = load i64, i64* %charpos101, align 8
  %87 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %87, i32 0, i32 77
  %88 = load i64, i64* %begv, align 8
  %cmp102 = icmp slt i64 %86, %88
  br i1 %cmp102, label %if.then.103, label %if.end.108

if.then.103:                                      ; preds = %if.else.100
  %89 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv104 = getelementptr inbounds %struct.buffer, %struct.buffer* %89, i32 0, i32 77
  %90 = load i64, i64* %begv104, align 8
  %91 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %charpos105 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %91, i32 0, i32 1
  store i64 %90, i64* %charpos105, align 8
  %92 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte106 = getelementptr inbounds %struct.buffer, %struct.buffer* %92, i32 0, i32 78
  %93 = load i64, i64* %begv_byte106, align 8
  %94 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %bytepos107 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %94, i32 0, i32 0
  store i64 %93, i64* %bytepos107, align 8
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.103, %if.else.100
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %if.end.99
  %95 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %first_elt110 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %95, i32 0, i32 31
  %bf.load111 = load i8, i8* %first_elt110, align 8
  %bf.clear112 = and i8 %bf.load111, 1
  %bf.cast113 = trunc i8 %bf.clear112 to i1
  br i1 %bf.cast113, label %land.lhs.true.114, label %if.end.120

land.lhs.true.114:                                ; preds = %if.end.109
  %96 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %prev115 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %96, i32 0, i32 12
  %type116 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %prev115, i32 0, i32 1
  %97 = load i32, i32* %type116, align 4
  %cmp117 = icmp ne i32 %97, 0
  br i1 %cmp117, label %if.then.118, label %if.end.120

if.then.118:                                      ; preds = %land.lhs.true.114
  %98 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %prev119 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %98, i32 0, i32 12
  %orig_type = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %prev119, i32 0, i32 2
  %99 = load i32, i32* %orig_type, align 4
  store i32 %99, i32* %prev_type, align 4
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.118, %land.lhs.true.114, %if.end.109
  br label %if.end.149

if.else.121:                                      ; preds = %lor.lhs.false.75
  %100 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %charpos122 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %100, i32 0, i32 1
  %101 = load i64, i64* %charpos122, align 8
  %102 = load i8, i8* %string_p, align 1
  %tobool123 = trunc i8 %102 to i1
  br i1 %tobool123, label %cond.true.124, label %cond.false.127

cond.true.124:                                    ; preds = %if.else.121
  %103 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %string125 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %103, i32 0, i32 27
  %schars126 = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %string125, i32 0, i32 2
  %104 = load i64, i64* %schars126, align 8
  br label %cond.end.129

cond.false.127:                                   ; preds = %if.else.121
  %105 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv128 = getelementptr inbounds %struct.buffer, %struct.buffer* %105, i32 0, i32 79
  %106 = load i64, i64* %zv128, align 8
  br label %cond.end.129

cond.end.129:                                     ; preds = %cond.false.127, %cond.true.124
  %cond130 = phi i64 [ %104, %cond.true.124 ], [ %106, %cond.false.127 ]
  %cmp131 = icmp slt i64 %101, %cond130
  br i1 %cmp131, label %if.then.132, label %if.else.147

if.then.132:                                      ; preds = %cond.end.129
  %107 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %nchars133 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %107, i32 0, i32 3
  %108 = load i64, i64* %nchars133, align 8
  %cmp134 = icmp sle i64 %108, 0
  br i1 %cmp134, label %if.then.135, label %if.end.136

if.then.135:                                      ; preds = %if.then.132
  call void @emacs_abort() #4
  unreachable

if.end.136:                                       ; preds = %if.then.132
  %109 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %nchars137 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %109, i32 0, i32 3
  %110 = load i64, i64* %nchars137, align 8
  %111 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %charpos138 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %111, i32 0, i32 1
  %112 = load i64, i64* %charpos138, align 8
  %add = add nsw i64 %112, %110
  store i64 %add, i64* %charpos138, align 8
  %113 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %ch_len139 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %113, i32 0, i32 4
  %114 = load i64, i64* %ch_len139, align 8
  %cmp140 = icmp eq i64 %114, 0
  br i1 %cmp140, label %if.then.141, label %if.end.142

if.then.141:                                      ; preds = %if.end.136
  call void @emacs_abort() #4
  unreachable

if.end.142:                                       ; preds = %if.end.136
  %115 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %ch_len143 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %115, i32 0, i32 4
  %116 = load i64, i64* %ch_len143, align 8
  %117 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %bytepos144 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %117, i32 0, i32 0
  %118 = load i64, i64* %bytepos144, align 8
  %add145 = add nsw i64 %118, %116
  store i64 %add145, i64* %bytepos144, align 8
  %119 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %orig_type146 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %119, i32 0, i32 7
  %120 = load i32, i32* %orig_type146, align 4
  store i32 %120, i32* %prev_type, align 4
  br label %if.end.148

if.else.147:                                      ; preds = %cond.end.129
  store i32 6, i32* %prev_type, align 4
  br label %if.end.148

if.end.148:                                       ; preds = %if.else.147, %if.end.142
  br label %if.end.149

if.end.149:                                       ; preds = %if.end.148, %if.end.120
  %121 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %stack_idx = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %121, i32 0, i32 25
  %122 = load i32, i32* %stack_idx, align 4
  %idxprom = sext i32 %122 to i64
  %123 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %level_stack = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %123, i32 0, i32 26
  %arrayidx = getelementptr inbounds [128 x %struct.bidi_stack], [128 x %struct.bidi_stack]* %level_stack, i32 0, i64 %idxprom
  %level = getelementptr inbounds %struct.bidi_stack, %struct.bidi_stack* %arrayidx, i32 0, i32 2
  %124 = load i8, i8* %level, align 1
  %conv = zext i8 %124 to i32
  store i32 %conv, i32* %current_level, align 4
  %125 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %stack_idx150 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %125, i32 0, i32 25
  %126 = load i32, i32* %stack_idx150, align 4
  %idxprom151 = sext i32 %126 to i64
  %127 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %level_stack152 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %127, i32 0, i32 26
  %arrayidx153 = getelementptr inbounds [128 x %struct.bidi_stack], [128 x %struct.bidi_stack]* %level_stack152, i32 0, i64 %idxprom151
  %flags = getelementptr inbounds %struct.bidi_stack, %struct.bidi_stack* %arrayidx153, i32 0, i32 3
  %128 = load i8, i8* %flags, align 1
  %conv154 = zext i8 %128 to i32
  %and = and i32 %conv154, 1
  %tobool155 = icmp ne i32 %and, 0
  %frombool156 = zext i1 %tobool155 to i8
  store i8 %frombool156, i8* %isolate_status, align 1
  %129 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %stack_idx157 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %129, i32 0, i32 25
  %130 = load i32, i32* %stack_idx157, align 4
  %idxprom158 = sext i32 %130 to i64
  %131 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %level_stack159 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %131, i32 0, i32 26
  %arrayidx160 = getelementptr inbounds [128 x %struct.bidi_stack], [128 x %struct.bidi_stack]* %level_stack159, i32 0, i64 %idxprom158
  %flags161 = getelementptr inbounds %struct.bidi_stack, %struct.bidi_stack* %arrayidx160, i32 0, i32 3
  %132 = load i8, i8* %flags161, align 1
  %conv162 = zext i8 %132 to i32
  %shr = ashr i32 %conv162, 1
  %and163 = and i32 %shr, 3
  store i32 %and163, i32* %override, align 4
  %133 = load i32, i32* %current_level, align 4
  store i32 %133, i32* %new_level, align 4
  %134 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %charpos164 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %134, i32 0, i32 1
  %135 = load i64, i64* %charpos164, align 8
  %136 = load i8, i8* %string_p, align 1
  %tobool165 = trunc i8 %136 to i1
  br i1 %tobool165, label %cond.true.167, label %cond.false.170

cond.true.167:                                    ; preds = %if.end.149
  %137 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %string168 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %137, i32 0, i32 27
  %schars169 = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %string168, i32 0, i32 2
  %138 = load i64, i64* %schars169, align 8
  br label %cond.end.172

cond.false.170:                                   ; preds = %if.end.149
  %139 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv171 = getelementptr inbounds %struct.buffer, %struct.buffer* %139, i32 0, i32 79
  %140 = load i64, i64* %zv171, align 8
  br label %cond.end.172

cond.end.172:                                     ; preds = %cond.false.170, %cond.true.167
  %cond173 = phi i64 [ %138, %cond.true.167 ], [ %140, %cond.false.170 ]
  %cmp174 = icmp sge i64 %135, %cond173
  br i1 %cmp174, label %if.then.176, label %if.else.190

if.then.176:                                      ; preds = %cond.end.172
  store i32 -1, i32* %curchar, align 4
  %141 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %ch_len177 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %141, i32 0, i32 4
  store i64 1, i64* %ch_len177, align 8
  %142 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %nchars178 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %142, i32 0, i32 3
  store i64 1, i64* %nchars178, align 8
  %143 = load i8, i8* %string_p, align 1
  %tobool179 = trunc i8 %143 to i1
  br i1 %tobool179, label %cond.true.181, label %cond.false.184

cond.true.181:                                    ; preds = %if.then.176
  %144 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %string182 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %144, i32 0, i32 27
  %schars183 = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %string182, i32 0, i32 2
  %145 = load i64, i64* %schars183, align 8
  br label %cond.end.186

cond.false.184:                                   ; preds = %if.then.176
  %146 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv185 = getelementptr inbounds %struct.buffer, %struct.buffer* %146, i32 0, i32 79
  %147 = load i64, i64* %zv185, align 8
  br label %cond.end.186

cond.end.186:                                     ; preds = %cond.false.184, %cond.true.181
  %cond187 = phi i64 [ %145, %cond.true.181 ], [ %147, %cond.false.184 ]
  %148 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %disp_pos188 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %148, i32 0, i32 23
  store i64 %cond187, i64* %disp_pos188, align 8
  %149 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %disp_prop189 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %149, i32 0, i32 24
  store i32 0, i32* %disp_prop189, align 4
  br label %if.end.257

if.else.190:                                      ; preds = %cond.end.172
  %150 = load i32, i32* %prev_type, align 4
  switch i32 %150, label %sw.default [
    i32 14, label %sw.bb
    i32 13, label %sw.bb.207
    i32 12, label %sw.bb.227
  ]

sw.bb:                                            ; preds = %if.else.190
  %151 = load i32, i32* %current_level, align 4
  %cmp191 = icmp slt i32 %151, 125
  br i1 %cmp191, label %land.lhs.true.193, label %if.else.203

land.lhs.true.193:                                ; preds = %sw.bb
  %152 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %invalid_levels = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %152, i32 0, i32 10
  %153 = load i64, i64* %invalid_levels, align 8
  %cmp194 = icmp eq i64 %153, 0
  br i1 %cmp194, label %land.lhs.true.196, label %if.else.203

land.lhs.true.196:                                ; preds = %land.lhs.true.193
  %154 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %invalid_isolates = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %154, i32 0, i32 11
  %155 = load i64, i64* %invalid_isolates, align 8
  %cmp197 = icmp eq i64 %155, 0
  br i1 %cmp197, label %if.then.199, label %if.else.203

if.then.199:                                      ; preds = %land.lhs.true.196
  %156 = load i32, i32* %current_level, align 4
  %add200 = add nsw i32 %156, 1
  %and201 = and i32 %add200, -2
  %add202 = add nsw i32 %and201, 1
  store i32 %add202, i32* %new_level, align 4
  %157 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %isolate_level = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %157, i32 0, i32 9
  %158 = load i8, i8* %isolate_level, align 1
  %inc = add i8 %158, 1
  store i8 %inc, i8* %isolate_level, align 1
  %159 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %160 = load i32, i32* %new_level, align 4
  call void @bidi_push_embedding_level(%struct.bidi_it* %159, i32 %160, i32 0, i1 zeroext true)
  br label %if.end.206

if.else.203:                                      ; preds = %land.lhs.true.196, %land.lhs.true.193, %sw.bb
  %161 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %invalid_isolates204 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %161, i32 0, i32 11
  %162 = load i64, i64* %invalid_isolates204, align 8
  %inc205 = add nsw i64 %162, 1
  store i64 %inc205, i64* %invalid_isolates204, align 8
  br label %if.end.206

if.end.206:                                       ; preds = %if.else.203, %if.then.199
  br label %sw.epilog

sw.bb.207:                                        ; preds = %if.else.190
  %163 = load i32, i32* %current_level, align 4
  %cmp208 = icmp slt i32 %163, 124
  br i1 %cmp208, label %land.lhs.true.210, label %if.else.223

land.lhs.true.210:                                ; preds = %sw.bb.207
  %164 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %invalid_levels211 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %164, i32 0, i32 10
  %165 = load i64, i64* %invalid_levels211, align 8
  %cmp212 = icmp eq i64 %165, 0
  br i1 %cmp212, label %land.lhs.true.214, label %if.else.223

land.lhs.true.214:                                ; preds = %land.lhs.true.210
  %166 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %invalid_isolates215 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %166, i32 0, i32 11
  %167 = load i64, i64* %invalid_isolates215, align 8
  %cmp216 = icmp eq i64 %167, 0
  br i1 %cmp216, label %if.then.218, label %if.else.223

if.then.218:                                      ; preds = %land.lhs.true.214
  %168 = load i32, i32* %current_level, align 4
  %add219 = add nsw i32 %168, 2
  %and220 = and i32 %add219, -2
  store i32 %and220, i32* %new_level, align 4
  %169 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %isolate_level221 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %169, i32 0, i32 9
  %170 = load i8, i8* %isolate_level221, align 1
  %inc222 = add i8 %170, 1
  store i8 %inc222, i8* %isolate_level221, align 1
  %171 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %172 = load i32, i32* %new_level, align 4
  call void @bidi_push_embedding_level(%struct.bidi_it* %171, i32 %172, i32 0, i1 zeroext true)
  br label %if.end.226

if.else.223:                                      ; preds = %land.lhs.true.214, %land.lhs.true.210, %sw.bb.207
  %173 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %invalid_isolates224 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %173, i32 0, i32 11
  %174 = load i64, i64* %invalid_isolates224, align 8
  %inc225 = add nsw i64 %174, 1
  store i64 %inc225, i64* %invalid_isolates224, align 8
  br label %if.end.226

if.end.226:                                       ; preds = %if.else.223, %if.then.218
  br label %sw.epilog

sw.bb.227:                                        ; preds = %if.else.190
  %175 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %invalid_isolates228 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %175, i32 0, i32 11
  %176 = load i64, i64* %invalid_isolates228, align 8
  %tobool229 = icmp ne i64 %176, 0
  br i1 %tobool229, label %if.end.245, label %if.then.230

if.then.230:                                      ; preds = %sw.bb.227
  %177 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %invalid_levels231 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %177, i32 0, i32 10
  %178 = load i64, i64* %invalid_levels231, align 8
  %tobool232 = icmp ne i64 %178, 0
  br i1 %tobool232, label %if.then.233, label %if.else.235

if.then.233:                                      ; preds = %if.then.230
  %179 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %invalid_levels234 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %179, i32 0, i32 10
  %180 = load i64, i64* %invalid_levels234, align 8
  %dec = add nsw i64 %180, -1
  store i64 %dec, i64* %invalid_levels234, align 8
  br label %if.end.244

if.else.235:                                      ; preds = %if.then.230
  %181 = load i8, i8* %isolate_status, align 1
  %tobool236 = trunc i8 %181 to i1
  br i1 %tobool236, label %if.end.243, label %land.lhs.true.237

land.lhs.true.237:                                ; preds = %if.else.235
  %182 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %stack_idx238 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %182, i32 0, i32 25
  %183 = load i32, i32* %stack_idx238, align 4
  %cmp239 = icmp sge i32 %183, 1
  br i1 %cmp239, label %if.then.241, label %if.end.243

if.then.241:                                      ; preds = %land.lhs.true.237
  %184 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %call242 = call i32 @bidi_pop_embedding_level(%struct.bidi_it* %184)
  store i32 %call242, i32* %new_level, align 4
  br label %if.end.243

if.end.243:                                       ; preds = %if.then.241, %land.lhs.true.237, %if.else.235
  br label %if.end.244

if.end.244:                                       ; preds = %if.end.243, %if.then.233
  br label %if.end.245

if.end.245:                                       ; preds = %if.end.244, %sw.bb.227
  br label %sw.epilog

sw.default:                                       ; preds = %if.else.190
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.245, %if.end.226, %if.end.206
  %185 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %charpos246 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %185, i32 0, i32 1
  %186 = load i64, i64* %charpos246, align 8
  %187 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %bytepos247 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %187, i32 0, i32 0
  %188 = load i64, i64* %bytepos247, align 8
  %189 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %disp_pos248 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %189, i32 0, i32 23
  %190 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %disp_prop249 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %190, i32 0, i32 24
  %191 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %string250 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %191, i32 0, i32 27
  %192 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %w = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %192, i32 0, i32 28
  %193 = load %struct.window*, %struct.window** %w, align 8
  %194 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %frame_window_p = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %194, i32 0, i32 31
  %bf.load251 = load i8, i8* %frame_window_p, align 8
  %bf.lshr = lshr i8 %bf.load251, 2
  %bf.clear252 = and i8 %bf.lshr, 1
  %bf.cast253 = trunc i8 %bf.clear252 to i1
  %195 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %ch_len254 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %195, i32 0, i32 4
  %196 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %nchars255 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %196, i32 0, i32 3
  %call256 = call i32 @bidi_fetch_char(i64 %186, i64 %188, i64* %disp_pos248, i32* %disp_prop249, %struct.bidi_string_data* %string250, %struct.window* %193, i1 zeroext %bf.cast253, i64* %ch_len254, i64* %nchars255)
  store i32 %call256, i32* %curchar, align 4
  br label %if.end.257

if.end.257:                                       ; preds = %sw.epilog, %cond.end.186
  %197 = load i32, i32* %curchar, align 4
  %198 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %ch258 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %198, i32 0, i32 2
  store i32 %197, i32* %ch258, align 4
  %199 = load i32, i32* %new_level, align 4
  %conv259 = trunc i32 %199 to i8
  %200 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %resolved_level = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %200, i32 0, i32 8
  store i8 %conv259, i8* %resolved_level, align 1
  %201 = load i32, i32* %curchar, align 4
  %call260 = call i32 @bidi_get_type(i32 %201, i32 0)
  store i32 %call260, i32* %type, align 4
  %202 = load i32, i32* %type, align 4
  %203 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %orig_type261 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %203, i32 0, i32 7
  store i32 %202, i32* %orig_type261, align 4
  %204 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %orig_type262 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %204, i32 0, i32 7
  %205 = load i32, i32* %orig_type262, align 4
  call void @bidi_check_type(i32 %205)
  %206 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type_after_wn263 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %206, i32 0, i32 6
  store i32 0, i32* %type_after_wn263, align 4
  %207 = load i32, i32* %type, align 4
  switch i32 %207, label %sw.default.443 [
    i32 10, label %sw.bb.264
    i32 11, label %sw.bb.264
    i32 8, label %sw.bb.298
    i32 9, label %sw.bb.298
    i32 15, label %sw.bb.331
    i32 14, label %sw.bb.366
    i32 13, label %sw.bb.378
    i32 16, label %sw.bb.390
    i32 12, label %sw.bb.440
  ]

sw.bb.264:                                        ; preds = %if.end.257, %if.end.257
  %208 = load i32, i32* %type, align 4
  %209 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type_after_wn265 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %209, i32 0, i32 6
  store i32 %208, i32* %type_after_wn265, align 4
  %210 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type_after_wn266 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %210, i32 0, i32 6
  %211 = load i32, i32* %type_after_wn266, align 4
  call void @bidi_check_type(i32 %211)
  store i32 5, i32* %type, align 4
  %212 = load i32, i32* %new_level, align 4
  %cmp267 = icmp slt i32 %212, 125
  br i1 %cmp267, label %land.lhs.true.269, label %if.else.289

land.lhs.true.269:                                ; preds = %sw.bb.264
  %213 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %invalid_levels270 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %213, i32 0, i32 10
  %214 = load i64, i64* %invalid_levels270, align 8
  %cmp271 = icmp eq i64 %214, 0
  br i1 %cmp271, label %land.lhs.true.273, label %if.else.289

land.lhs.true.273:                                ; preds = %land.lhs.true.269
  %215 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %invalid_isolates274 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %215, i32 0, i32 11
  %216 = load i64, i64* %invalid_isolates274, align 8
  %cmp275 = icmp eq i64 %216, 0
  br i1 %cmp275, label %if.then.277, label %if.else.289

if.then.277:                                      ; preds = %land.lhs.true.273
  %217 = load i32, i32* %new_level, align 4
  %add278 = add nsw i32 %217, 1
  %and279 = and i32 %add278, -2
  %add280 = add nsw i32 %and279, 1
  store i32 %add280, i32* %new_level, align 4
  %218 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type_after_wn281 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %218, i32 0, i32 6
  %219 = load i32, i32* %type_after_wn281, align 4
  %cmp282 = icmp eq i32 %219, 10
  br i1 %cmp282, label %if.then.284, label %if.else.285

if.then.284:                                      ; preds = %if.then.277
  store i32 0, i32* %override, align 4
  br label %if.end.286

if.else.285:                                      ; preds = %if.then.277
  store i32 2, i32* %override, align 4
  br label %if.end.286

if.end.286:                                       ; preds = %if.else.285, %if.then.284
  %220 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %221 = load i32, i32* %new_level, align 4
  %222 = load i32, i32* %override, align 4
  call void @bidi_push_embedding_level(%struct.bidi_it* %220, i32 %221, i32 %222, i1 zeroext false)
  %223 = load i32, i32* %new_level, align 4
  %conv287 = trunc i32 %223 to i8
  %224 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %resolved_level288 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %224, i32 0, i32 8
  store i8 %conv287, i8* %resolved_level288, align 1
  br label %if.end.297

if.else.289:                                      ; preds = %land.lhs.true.273, %land.lhs.true.269, %sw.bb.264
  %225 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %invalid_isolates290 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %225, i32 0, i32 11
  %226 = load i64, i64* %invalid_isolates290, align 8
  %cmp291 = icmp eq i64 %226, 0
  br i1 %cmp291, label %if.then.293, label %if.end.296

if.then.293:                                      ; preds = %if.else.289
  %227 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %invalid_levels294 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %227, i32 0, i32 10
  %228 = load i64, i64* %invalid_levels294, align 8
  %inc295 = add nsw i64 %228, 1
  store i64 %inc295, i64* %invalid_levels294, align 8
  br label %if.end.296

if.end.296:                                       ; preds = %if.then.293, %if.else.289
  br label %if.end.297

if.end.297:                                       ; preds = %if.end.296, %if.end.286
  br label %sw.epilog.444

sw.bb.298:                                        ; preds = %if.end.257, %if.end.257
  %229 = load i32, i32* %type, align 4
  %230 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type_after_wn299 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %230, i32 0, i32 6
  store i32 %229, i32* %type_after_wn299, align 4
  %231 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type_after_wn300 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %231, i32 0, i32 6
  %232 = load i32, i32* %type_after_wn300, align 4
  call void @bidi_check_type(i32 %232)
  store i32 5, i32* %type, align 4
  %233 = load i32, i32* %new_level, align 4
  %cmp301 = icmp slt i32 %233, 124
  br i1 %cmp301, label %land.lhs.true.303, label %if.else.322

land.lhs.true.303:                                ; preds = %sw.bb.298
  %234 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %invalid_levels304 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %234, i32 0, i32 10
  %235 = load i64, i64* %invalid_levels304, align 8
  %cmp305 = icmp eq i64 %235, 0
  br i1 %cmp305, label %land.lhs.true.307, label %if.else.322

land.lhs.true.307:                                ; preds = %land.lhs.true.303
  %236 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %invalid_isolates308 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %236, i32 0, i32 11
  %237 = load i64, i64* %invalid_isolates308, align 8
  %cmp309 = icmp eq i64 %237, 0
  br i1 %cmp309, label %if.then.311, label %if.else.322

if.then.311:                                      ; preds = %land.lhs.true.307
  %238 = load i32, i32* %new_level, align 4
  %add312 = add nsw i32 %238, 2
  %and313 = and i32 %add312, -2
  store i32 %and313, i32* %new_level, align 4
  %239 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type_after_wn314 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %239, i32 0, i32 6
  %240 = load i32, i32* %type_after_wn314, align 4
  %cmp315 = icmp eq i32 %240, 8
  br i1 %cmp315, label %if.then.317, label %if.else.318

if.then.317:                                      ; preds = %if.then.311
  store i32 0, i32* %override, align 4
  br label %if.end.319

if.else.318:                                      ; preds = %if.then.311
  store i32 1, i32* %override, align 4
  br label %if.end.319

if.end.319:                                       ; preds = %if.else.318, %if.then.317
  %241 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %242 = load i32, i32* %new_level, align 4
  %243 = load i32, i32* %override, align 4
  call void @bidi_push_embedding_level(%struct.bidi_it* %241, i32 %242, i32 %243, i1 zeroext false)
  %244 = load i32, i32* %new_level, align 4
  %conv320 = trunc i32 %244 to i8
  %245 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %resolved_level321 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %245, i32 0, i32 8
  store i8 %conv320, i8* %resolved_level321, align 1
  br label %if.end.330

if.else.322:                                      ; preds = %land.lhs.true.307, %land.lhs.true.303, %sw.bb.298
  %246 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %invalid_isolates323 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %246, i32 0, i32 11
  %247 = load i64, i64* %invalid_isolates323, align 8
  %cmp324 = icmp eq i64 %247, 0
  br i1 %cmp324, label %if.then.326, label %if.end.329

if.then.326:                                      ; preds = %if.else.322
  %248 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %invalid_levels327 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %248, i32 0, i32 10
  %249 = load i64, i64* %invalid_levels327, align 8
  %inc328 = add nsw i64 %249, 1
  store i64 %inc328, i64* %invalid_levels327, align 8
  br label %if.end.329

if.end.329:                                       ; preds = %if.then.326, %if.else.322
  br label %if.end.330

if.end.330:                                       ; preds = %if.end.329, %if.end.319
  br label %sw.epilog.444

sw.bb.331:                                        ; preds = %if.end.257
  %250 = load i8, i8* %string_p, align 1
  %tobool332 = trunc i8 %250 to i1
  br i1 %tobool332, label %cond.true.334, label %cond.false.337

cond.true.334:                                    ; preds = %sw.bb.331
  %251 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %string335 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %251, i32 0, i32 27
  %schars336 = getelementptr inbounds %struct.bidi_string_data, %struct.bidi_string_data* %string335, i32 0, i32 2
  %252 = load i64, i64* %schars336, align 8
  br label %cond.end.339

cond.false.337:                                   ; preds = %sw.bb.331
  %253 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv338 = getelementptr inbounds %struct.buffer, %struct.buffer* %253, i32 0, i32 79
  %254 = load i64, i64* %zv338, align 8
  br label %cond.end.339

cond.end.339:                                     ; preds = %cond.false.337, %cond.true.334
  %cond340 = phi i64 [ %252, %cond.true.334 ], [ %254, %cond.false.337 ]
  store i64 %cond340, i64* %end, align 8
  %255 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %disp_pos341 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %255, i32 0, i32 23
  %256 = load i64, i64* %disp_pos341, align 8
  store i64 %256, i64* %disp_pos, align 8
  %257 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %disp_prop342 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %257, i32 0, i32 24
  %258 = load i32, i32* %disp_prop342, align 4
  store i32 %258, i32* %disp_prop, align 4
  %259 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %nchars343 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %259, i32 0, i32 3
  %260 = load i64, i64* %nchars343, align 8
  store i64 %260, i64* %nchars, align 8
  %261 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %ch_len344 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %261, i32 0, i32 4
  %262 = load i64, i64* %ch_len344, align 8
  store i64 %262, i64* %ch_len, align 8
  %263 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %charpos345 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %263, i32 0, i32 1
  %264 = load i64, i64* %charpos345, align 8
  %265 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %bytepos346 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %265, i32 0, i32 0
  %266 = load i64, i64* %bytepos346, align 8
  %267 = load i64, i64* %end, align 8
  %268 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %string347 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %268, i32 0, i32 27
  %269 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %w348 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %269, i32 0, i32 28
  %270 = load %struct.window*, %struct.window** %w348, align 8
  %271 = load i8, i8* %string_p, align 1
  %tobool349 = trunc i8 %271 to i1
  %272 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %frame_window_p350 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %272, i32 0, i32 31
  %bf.load351 = load i8, i8* %frame_window_p350, align 8
  %bf.lshr352 = lshr i8 %bf.load351, 2
  %bf.clear353 = and i8 %bf.lshr352, 1
  %bf.cast354 = trunc i8 %bf.clear353 to i1
  %call355 = call i32 @find_first_strong_char(i64 %264, i64 %266, i64 %267, i64* %disp_pos, i32* %disp_prop, %struct.bidi_string_data* %string347, %struct.window* %270, i1 zeroext %tobool349, i1 zeroext %bf.cast354, i64* %ch_len, i64* %nchars, i1 zeroext true)
  store i32 %call355, i32* %typ1, align 4
  %273 = load i32, i32* %typ1, align 4
  %cmp356 = icmp ne i32 %273, 2
  br i1 %cmp356, label %land.lhs.true.358, label %if.else.363

land.lhs.true.358:                                ; preds = %cond.end.339
  %274 = load i32, i32* %typ1, align 4
  %cmp359 = icmp ne i32 %274, 7
  br i1 %cmp359, label %if.then.361, label %if.else.363

if.then.361:                                      ; preds = %land.lhs.true.358
  store i32 13, i32* %type, align 4
  %275 = load i32, i32* %type, align 4
  %276 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %orig_type362 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %276, i32 0, i32 7
  store i32 %275, i32* %orig_type362, align 4
  br label %fsi_as_lri

if.else.363:                                      ; preds = %land.lhs.true.358, %cond.end.339
  store i32 14, i32* %type, align 4
  %277 = load i32, i32* %type, align 4
  %278 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %orig_type364 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %278, i32 0, i32 7
  store i32 %277, i32* %orig_type364, align 4
  br label %if.end.365

if.end.365:                                       ; preds = %if.else.363
  br label %sw.bb.366

sw.bb.366:                                        ; preds = %if.end.257, %if.end.365
  %279 = load i32, i32* %override, align 4
  %cmp367 = icmp eq i32 %279, 0
  br i1 %cmp367, label %if.then.369, label %if.else.371

if.then.369:                                      ; preds = %sw.bb.366
  %280 = load i32, i32* %type, align 4
  %281 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type_after_wn370 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %281, i32 0, i32 6
  store i32 %280, i32* %type_after_wn370, align 4
  br label %if.end.376

if.else.371:                                      ; preds = %sw.bb.366
  %282 = load i32, i32* %override, align 4
  %cmp372 = icmp eq i32 %282, 1
  %cond374 = select i1 %cmp372, i32 1, i32 2
  %283 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type_after_wn375 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %283, i32 0, i32 6
  store i32 %cond374, i32* %type_after_wn375, align 4
  br label %if.end.376

if.end.376:                                       ; preds = %if.else.371, %if.then.369
  %284 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type_after_wn377 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %284, i32 0, i32 6
  %285 = load i32, i32* %type_after_wn377, align 4
  call void @bidi_check_type(i32 %285)
  br label %sw.epilog.444

sw.bb.378:                                        ; preds = %if.end.257
  br label %fsi_as_lri

fsi_as_lri:                                       ; preds = %sw.bb.378, %if.then.361
  %286 = load i32, i32* %override, align 4
  %cmp379 = icmp eq i32 %286, 0
  br i1 %cmp379, label %if.then.381, label %if.else.383

if.then.381:                                      ; preds = %fsi_as_lri
  %287 = load i32, i32* %type, align 4
  %288 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type_after_wn382 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %288, i32 0, i32 6
  store i32 %287, i32* %type_after_wn382, align 4
  br label %if.end.388

if.else.383:                                      ; preds = %fsi_as_lri
  %289 = load i32, i32* %override, align 4
  %cmp384 = icmp eq i32 %289, 1
  %cond386 = select i1 %cmp384, i32 1, i32 2
  %290 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type_after_wn387 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %290, i32 0, i32 6
  store i32 %cond386, i32* %type_after_wn387, align 4
  br label %if.end.388

if.end.388:                                       ; preds = %if.else.383, %if.then.381
  %291 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type_after_wn389 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %291, i32 0, i32 6
  %292 = load i32, i32* %type_after_wn389, align 4
  call void @bidi_check_type(i32 %292)
  br label %sw.epilog.444

sw.bb.390:                                        ; preds = %if.end.257
  %293 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %invalid_isolates391 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %293, i32 0, i32 11
  %294 = load i64, i64* %invalid_isolates391, align 8
  %tobool392 = icmp ne i64 %294, 0
  br i1 %tobool392, label %if.then.393, label %if.else.396

if.then.393:                                      ; preds = %sw.bb.390
  %295 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %invalid_isolates394 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %295, i32 0, i32 11
  %296 = load i64, i64* %invalid_isolates394, align 8
  %dec395 = add nsw i64 %296, -1
  store i64 %dec395, i64* %invalid_isolates394, align 8
  br label %if.end.416

if.else.396:                                      ; preds = %sw.bb.390
  %297 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %isolate_level397 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %297, i32 0, i32 9
  %298 = load i8, i8* %isolate_level397, align 1
  %conv398 = sext i8 %298 to i32
  %cmp399 = icmp sgt i32 %conv398, 0
  br i1 %cmp399, label %if.then.401, label %if.end.415

if.then.401:                                      ; preds = %if.else.396
  %299 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %invalid_levels402 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %299, i32 0, i32 10
  store i64 0, i64* %invalid_levels402, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.401
  %300 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %stack_idx403 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %300, i32 0, i32 25
  %301 = load i32, i32* %stack_idx403, align 4
  %idxprom404 = sext i32 %301 to i64
  %302 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %level_stack405 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %302, i32 0, i32 26
  %arrayidx406 = getelementptr inbounds [128 x %struct.bidi_stack], [128 x %struct.bidi_stack]* %level_stack405, i32 0, i64 %idxprom404
  %flags407 = getelementptr inbounds %struct.bidi_stack, %struct.bidi_stack* %arrayidx406, i32 0, i32 3
  %303 = load i8, i8* %flags407, align 1
  %conv408 = zext i8 %303 to i32
  %and409 = and i32 %conv408, 1
  %tobool410 = icmp ne i32 %and409, 0
  %lnot = xor i1 %tobool410, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %304 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %call411 = call i32 @bidi_pop_embedding_level(%struct.bidi_it* %304)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %305 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %call412 = call i32 @bidi_pop_embedding_level(%struct.bidi_it* %305)
  store i32 %call412, i32* %new_level, align 4
  %306 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %isolate_level413 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %306, i32 0, i32 9
  %307 = load i8, i8* %isolate_level413, align 1
  %dec414 = add i8 %307, -1
  store i8 %dec414, i8* %isolate_level413, align 1
  br label %if.end.415

if.end.415:                                       ; preds = %while.end, %if.else.396
  br label %if.end.416

if.end.416:                                       ; preds = %if.end.415, %if.then.393
  %308 = load i32, i32* %new_level, align 4
  %conv417 = trunc i32 %308 to i8
  %309 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %resolved_level418 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %309, i32 0, i32 8
  store i8 %conv417, i8* %resolved_level418, align 1
  %310 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %stack_idx419 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %310, i32 0, i32 25
  %311 = load i32, i32* %stack_idx419, align 4
  %idxprom420 = sext i32 %311 to i64
  %312 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %level_stack421 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %312, i32 0, i32 26
  %arrayidx422 = getelementptr inbounds [128 x %struct.bidi_stack], [128 x %struct.bidi_stack]* %level_stack421, i32 0, i64 %idxprom420
  %flags423 = getelementptr inbounds %struct.bidi_stack, %struct.bidi_stack* %arrayidx422, i32 0, i32 3
  %313 = load i8, i8* %flags423, align 1
  %conv424 = zext i8 %313 to i32
  %shr425 = ashr i32 %conv424, 1
  %and426 = and i32 %shr425, 3
  store i32 %and426, i32* %stack_override, align 4
  %314 = load i32, i32* %stack_override, align 4
  %cmp427 = icmp eq i32 %314, 1
  br i1 %cmp427, label %if.then.429, label %if.else.431

if.then.429:                                      ; preds = %if.end.416
  %315 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type_after_wn430 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %315, i32 0, i32 6
  store i32 1, i32* %type_after_wn430, align 4
  br label %if.end.439

if.else.431:                                      ; preds = %if.end.416
  %316 = load i32, i32* %stack_override, align 4
  %cmp432 = icmp eq i32 %316, 2
  br i1 %cmp432, label %if.then.434, label %if.else.436

if.then.434:                                      ; preds = %if.else.431
  %317 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type_after_wn435 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %317, i32 0, i32 6
  store i32 2, i32* %type_after_wn435, align 4
  br label %if.end.438

if.else.436:                                      ; preds = %if.else.431
  %318 = load i32, i32* %type, align 4
  %319 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type_after_wn437 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %319, i32 0, i32 6
  store i32 %318, i32* %type_after_wn437, align 4
  br label %if.end.438

if.end.438:                                       ; preds = %if.else.436, %if.then.434
  br label %if.end.439

if.end.439:                                       ; preds = %if.end.438, %if.then.429
  br label %sw.epilog.444

sw.bb.440:                                        ; preds = %if.end.257
  %320 = load i32, i32* %type, align 4
  %321 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type_after_wn441 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %321, i32 0, i32 6
  store i32 %320, i32* %type_after_wn441, align 4
  %322 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type_after_wn442 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %322, i32 0, i32 6
  %323 = load i32, i32* %type_after_wn442, align 4
  call void @bidi_check_type(i32 %323)
  store i32 5, i32* %type, align 4
  br label %sw.epilog.444

sw.default.443:                                   ; preds = %if.end.257
  br label %sw.epilog.444

sw.epilog.444:                                    ; preds = %sw.default.443, %sw.bb.440, %if.end.439, %if.end.388, %if.end.376, %if.end.330, %if.end.297
  %324 = load i32, i32* %type, align 4
  %325 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type445 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %325, i32 0, i32 5
  store i32 %324, i32* %type445, align 4
  %326 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type446 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %326, i32 0, i32 5
  %327 = load i32, i32* %type446, align 4
  call void @bidi_check_type(i32 %327)
  %328 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type447 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %328, i32 0, i32 5
  %329 = load i32, i32* %type447, align 4
  %cmp448 = icmp eq i32 %329, 6
  br i1 %cmp448, label %if.then.450, label %if.end.453

if.then.450:                                      ; preds = %sw.epilog.444
  %330 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  call void @bidi_set_paragraph_end(%struct.bidi_it* %330)
  %331 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type451 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %331, i32 0, i32 5
  %332 = load i32, i32* %type451, align 4
  %333 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %type_after_wn452 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %333, i32 0, i32 6
  store i32 %332, i32* %type_after_wn452, align 4
  br label %if.end.453

if.end.453:                                       ; preds = %if.then.450, %sw.epilog.444
  %334 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %resolved_level454 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %334, i32 0, i32 8
  %335 = load i8, i8* %resolved_level454, align 1
  %conv455 = sext i8 %335 to i32
  ret i32 %conv455
}

; Function Attrs: nounwind uwtable
define internal void @bidi_push_embedding_level(%struct.bidi_it* %bidi_it, i32 %level, i32 %override, i1 zeroext %isolate_status) #0 {
entry:
  %bidi_it.addr = alloca %struct.bidi_it*, align 8
  %level.addr = alloca i32, align 4
  %override.addr = alloca i32, align 4
  %isolate_status.addr = alloca i8, align 1
  %st = alloca %struct.bidi_stack*, align 8
  %prev_level = alloca i32, align 4
  store %struct.bidi_it* %bidi_it, %struct.bidi_it** %bidi_it.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  store i32 %override, i32* %override.addr, align 4
  %frombool = zext i1 %isolate_status to i8
  store i8 %frombool, i8* %isolate_status.addr, align 1
  %0 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %stack_idx = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %0, i32 0, i32 25
  %1 = load i32, i32* %stack_idx, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %level_stack = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %2, i32 0, i32 26
  %arrayidx = getelementptr inbounds [128 x %struct.bidi_stack], [128 x %struct.bidi_stack]* %level_stack, i32 0, i64 %idxprom
  %level1 = getelementptr inbounds %struct.bidi_stack, %struct.bidi_stack* %arrayidx, i32 0, i32 2
  %3 = load i8, i8* %level1, align 1
  %conv = zext i8 %3 to i32
  store i32 %conv, i32* %prev_level, align 4
  %4 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %stack_idx2 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %4, i32 0, i32 25
  %5 = load i32, i32* %stack_idx2, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %stack_idx2, align 4
  %6 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %stack_idx3 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %6, i32 0, i32 25
  %7 = load i32, i32* %stack_idx3, align 4
  %idxprom4 = sext i32 %7 to i64
  %8 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %level_stack5 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %8, i32 0, i32 26
  %arrayidx6 = getelementptr inbounds [128 x %struct.bidi_stack], [128 x %struct.bidi_stack]* %level_stack5, i32 0, i64 %idxprom4
  store %struct.bidi_stack* %arrayidx6, %struct.bidi_stack** %st, align 8
  %9 = load i32, i32* %level.addr, align 4
  %conv7 = trunc i32 %9 to i8
  %10 = load %struct.bidi_stack*, %struct.bidi_stack** %st, align 8
  %level8 = getelementptr inbounds %struct.bidi_stack, %struct.bidi_stack* %10, i32 0, i32 2
  store i8 %conv7, i8* %level8, align 1
  %11 = load i32, i32* %override.addr, align 4
  %and = and i32 %11, 3
  %shl = shl i32 %and, 1
  %12 = load i8, i8* %isolate_status.addr, align 1
  %tobool = trunc i8 %12 to i1
  %conv9 = zext i1 %tobool to i32
  %cmp = icmp ne i32 %conv9, 0
  %conv10 = zext i1 %cmp to i32
  %or = or i32 %shl, %conv10
  %conv11 = trunc i32 %or to i8
  %13 = load %struct.bidi_stack*, %struct.bidi_stack** %st, align 8
  %flags = getelementptr inbounds %struct.bidi_stack, %struct.bidi_stack* %13, i32 0, i32 3
  store i8 %conv11, i8* %flags, align 1
  %14 = load i8, i8* %isolate_status.addr, align 1
  %tobool12 = trunc i8 %14 to i1
  br i1 %tobool12, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %15 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %last_strong = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %15, i32 0, i32 13
  %type = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %last_strong, i32 0, i32 1
  %16 = load i32, i32* %type, align 4
  %17 = load %struct.bidi_stack*, %struct.bidi_stack** %st, align 8
  %last_strong_type = getelementptr inbounds %struct.bidi_stack, %struct.bidi_stack* %17, i32 0, i32 1
  %18 = trunc i32 %16 to i16
  %bf.load = load i16, i16* %last_strong_type, align 8
  %bf.value = and i16 %18, 7
  %bf.shl = shl i16 %bf.value, 3
  %bf.clear = and i16 %bf.load, -57
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, i16* %last_strong_type, align 8
  %bf.result.cast = zext i16 %bf.value to i32
  %19 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %prev_for_neutral = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %19, i32 0, i32 15
  %type13 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %prev_for_neutral, i32 0, i32 1
  %20 = load i32, i32* %type13, align 4
  %21 = load %struct.bidi_stack*, %struct.bidi_stack** %st, align 8
  %prev_for_neutral_type = getelementptr inbounds %struct.bidi_stack, %struct.bidi_stack* %21, i32 0, i32 1
  %22 = trunc i32 %20 to i16
  %bf.load14 = load i16, i16* %prev_for_neutral_type, align 8
  %bf.value15 = and i16 %22, 7
  %bf.shl16 = shl i16 %bf.value15, 6
  %bf.clear17 = and i16 %bf.load14, -449
  %bf.set18 = or i16 %bf.clear17, %bf.shl16
  store i16 %bf.set18, i16* %prev_for_neutral_type, align 8
  %bf.result.cast19 = zext i16 %bf.value15 to i32
  %23 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %next_for_neutral = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %23, i32 0, i32 14
  %type20 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %next_for_neutral, i32 0, i32 1
  %24 = load i32, i32* %type20, align 4
  %25 = load %struct.bidi_stack*, %struct.bidi_stack** %st, align 8
  %next_for_neutral_type = getelementptr inbounds %struct.bidi_stack, %struct.bidi_stack* %25, i32 0, i32 1
  %26 = trunc i32 %24 to i16
  %bf.load21 = load i16, i16* %next_for_neutral_type, align 8
  %bf.value22 = and i16 %26, 7
  %bf.clear23 = and i16 %bf.load21, -8
  %bf.set24 = or i16 %bf.clear23, %bf.value22
  store i16 %bf.set24, i16* %next_for_neutral_type, align 8
  %bf.result.cast25 = zext i16 %bf.value22 to i32
  %27 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %next_for_neutral26 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %27, i32 0, i32 14
  %charpos = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %next_for_neutral26, i32 0, i32 0
  %28 = load i64, i64* %charpos, align 8
  %29 = load %struct.bidi_stack*, %struct.bidi_stack** %st, align 8
  %next_for_neutral_pos = getelementptr inbounds %struct.bidi_stack, %struct.bidi_stack* %29, i32 0, i32 0
  store i64 %28, i64* %next_for_neutral_pos, align 8
  %30 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %sos = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %30, i32 0, i32 21
  %31 = load i32, i32* %sos, align 4
  %cmp27 = icmp eq i32 %31, 1
  %cond = select i1 %cmp27, i32 0, i32 1
  %shl29 = shl i32 %cond, 3
  %32 = load %struct.bidi_stack*, %struct.bidi_stack** %st, align 8
  %flags30 = getelementptr inbounds %struct.bidi_stack, %struct.bidi_stack* %32, i32 0, i32 3
  %33 = load i8, i8* %flags30, align 1
  %conv31 = zext i8 %33 to i32
  %or32 = or i32 %conv31, %shl29
  %conv33 = trunc i32 %or32 to i8
  store i8 %conv33, i8* %flags30, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %34 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %35 = load i32, i32* %prev_level, align 4
  %36 = load i32, i32* %level.addr, align 4
  call void @bidi_set_sos_type(%struct.bidi_it* %34, i32 %35, i32 %36)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @bidi_pop_embedding_level(%struct.bidi_it* %bidi_it) #0 {
entry:
  %bidi_it.addr = alloca %struct.bidi_it*, align 8
  %level = alloca i32, align 4
  %isolate_status = alloca i8, align 1
  %old_level = alloca i32, align 4
  %st = alloca %struct.bidi_stack, align 8
  %sos = alloca i32, align 4
  store %struct.bidi_it* %bidi_it, %struct.bidi_it** %bidi_it.addr, align 8
  %0 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %stack_idx = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %0, i32 0, i32 25
  %1 = load i32, i32* %stack_idx, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.39

if.then:                                          ; preds = %entry
  %2 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %stack_idx1 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %2, i32 0, i32 25
  %3 = load i32, i32* %stack_idx1, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %level_stack = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %4, i32 0, i32 26
  %arrayidx = getelementptr inbounds [128 x %struct.bidi_stack], [128 x %struct.bidi_stack]* %level_stack, i32 0, i64 %idxprom
  %flags = getelementptr inbounds %struct.bidi_stack, %struct.bidi_stack* %arrayidx, i32 0, i32 3
  %5 = load i8, i8* %flags, align 1
  %conv = zext i8 %5 to i32
  %and = and i32 %conv, 1
  %tobool = icmp ne i32 %and, 0
  %frombool = zext i1 %tobool to i8
  store i8 %frombool, i8* %isolate_status, align 1
  %6 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %stack_idx2 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %6, i32 0, i32 25
  %7 = load i32, i32* %stack_idx2, align 4
  %idxprom3 = sext i32 %7 to i64
  %8 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %level_stack4 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %8, i32 0, i32 26
  %arrayidx5 = getelementptr inbounds [128 x %struct.bidi_stack], [128 x %struct.bidi_stack]* %level_stack4, i32 0, i64 %idxprom3
  %level6 = getelementptr inbounds %struct.bidi_stack, %struct.bidi_stack* %arrayidx5, i32 0, i32 2
  %9 = load i8, i8* %level6, align 1
  %conv7 = zext i8 %9 to i32
  store i32 %conv7, i32* %old_level, align 4
  %10 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %stack_idx8 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %10, i32 0, i32 25
  %11 = load i32, i32* %stack_idx8, align 4
  %idxprom9 = sext i32 %11 to i64
  %12 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %level_stack10 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %12, i32 0, i32 26
  %arrayidx11 = getelementptr inbounds [128 x %struct.bidi_stack], [128 x %struct.bidi_stack]* %level_stack10, i32 0, i64 %idxprom9
  %13 = bitcast %struct.bidi_stack* %st to i8*
  %14 = bitcast %struct.bidi_stack* %arrayidx11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 16, i32 8, i1 false)
  %15 = load i8, i8* %isolate_status, align 1
  %tobool12 = trunc i8 %15 to i1
  br i1 %tobool12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.then
  %flags14 = getelementptr inbounds %struct.bidi_stack, %struct.bidi_stack* %st, i32 0, i32 3
  %16 = load i8, i8* %flags14, align 1
  %conv15 = zext i8 %16 to i32
  %shr = ashr i32 %conv15, 3
  %and16 = and i32 %shr, 1
  store i32 %and16, i32* %sos, align 4
  %17 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %prev = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %17, i32 0, i32 12
  %type = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %prev, i32 0, i32 1
  store i32 0, i32* %type, align 4
  %18 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %prev17 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %18, i32 0, i32 12
  %orig_type = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %prev17, i32 0, i32 2
  store i32 0, i32* %orig_type, align 4
  %last_strong_type = getelementptr inbounds %struct.bidi_stack, %struct.bidi_stack* %st, i32 0, i32 1
  %bf.load = load i16, i16* %last_strong_type, align 8
  %bf.lshr = lshr i16 %bf.load, 3
  %bf.clear = and i16 %bf.lshr, 7
  %bf.cast = zext i16 %bf.clear to i32
  %19 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %last_strong = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %19, i32 0, i32 13
  %type18 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %last_strong, i32 0, i32 1
  store i32 %bf.cast, i32* %type18, align 4
  %prev_for_neutral_type = getelementptr inbounds %struct.bidi_stack, %struct.bidi_stack* %st, i32 0, i32 1
  %bf.load19 = load i16, i16* %prev_for_neutral_type, align 8
  %bf.lshr20 = lshr i16 %bf.load19, 6
  %bf.clear21 = and i16 %bf.lshr20, 7
  %bf.cast22 = zext i16 %bf.clear21 to i32
  %20 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %prev_for_neutral = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %20, i32 0, i32 15
  %type23 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %prev_for_neutral, i32 0, i32 1
  store i32 %bf.cast22, i32* %type23, align 4
  %next_for_neutral_type = getelementptr inbounds %struct.bidi_stack, %struct.bidi_stack* %st, i32 0, i32 1
  %bf.load24 = load i16, i16* %next_for_neutral_type, align 8
  %bf.clear25 = and i16 %bf.load24, 7
  %bf.cast26 = zext i16 %bf.clear25 to i32
  %21 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %next_for_neutral = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %21, i32 0, i32 14
  %type27 = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %next_for_neutral, i32 0, i32 1
  store i32 %bf.cast26, i32* %type27, align 4
  %next_for_neutral_pos = getelementptr inbounds %struct.bidi_stack, %struct.bidi_stack* %st, i32 0, i32 0
  %22 = load i64, i64* %next_for_neutral_pos, align 8
  %23 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %next_for_neutral28 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %23, i32 0, i32 14
  %charpos = getelementptr inbounds %struct.bidi_saved_info, %struct.bidi_saved_info* %next_for_neutral28, i32 0, i32 0
  store i64 %22, i64* %charpos, align 8
  %24 = load i32, i32* %sos, align 4
  %cmp29 = icmp eq i32 %24, 0
  %cond = select i1 %cmp29, i32 1, i32 2
  %25 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %sos31 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %25, i32 0, i32 21
  store i32 %cond, i32* %sos31, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %26 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %27 = load i32, i32* %old_level, align 4
  %28 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %stack_idx32 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %28, i32 0, i32 25
  %29 = load i32, i32* %stack_idx32, align 4
  %sub = sub nsw i32 %29, 1
  %idxprom33 = sext i32 %sub to i64
  %30 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %level_stack34 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %30, i32 0, i32 26
  %arrayidx35 = getelementptr inbounds [128 x %struct.bidi_stack], [128 x %struct.bidi_stack]* %level_stack34, i32 0, i64 %idxprom33
  %level36 = getelementptr inbounds %struct.bidi_stack, %struct.bidi_stack* %arrayidx35, i32 0, i32 2
  %31 = load i8, i8* %level36, align 1
  %conv37 = zext i8 %31 to i32
  call void @bidi_set_sos_type(%struct.bidi_it* %26, i32 %27, i32 %conv37)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.13
  %32 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %stack_idx38 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %32, i32 0, i32 25
  %33 = load i32, i32* %stack_idx38, align 4
  %dec = add nsw i32 %33, -1
  store i32 %dec, i32* %stack_idx38, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.end, %entry
  %34 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %stack_idx40 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %34, i32 0, i32 25
  %35 = load i32, i32* %stack_idx40, align 4
  %idxprom41 = sext i32 %35 to i64
  %36 = load %struct.bidi_it*, %struct.bidi_it** %bidi_it.addr, align 8
  %level_stack42 = getelementptr inbounds %struct.bidi_it, %struct.bidi_it* %36, i32 0, i32 26
  %arrayidx43 = getelementptr inbounds [128 x %struct.bidi_stack], [128 x %struct.bidi_stack]* %level_stack42, i32 0, i64 %idxprom41
  %level44 = getelementptr inbounds %struct.bidi_stack, %struct.bidi_stack* %arrayidx43, i32 0, i32 2
  %37 = load i8, i8* %level44, align 1
  %conv45 = zext i8 %37 to i32
  store i32 %conv45, i32* %level, align 4
  %38 = load i32, i32* %level, align 4
  ret i32 %38
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
