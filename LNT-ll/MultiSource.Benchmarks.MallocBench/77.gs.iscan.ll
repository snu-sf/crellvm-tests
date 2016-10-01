; ModuleID = './MultiSource.Benchmarks.MallocBench/77.gs.iscan.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.dynamic_area_s = type { i8*, i8*, i32, i32, i32, i8* }
%struct.stream_s = type { i8*, i8*, i8*, i32, i8, i8, i64, %struct.stream_procs, i32, %struct._IO_FILE*, %struct.stream_s*, i16, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*)*, i32 (%struct.stream_s*, i8)*, i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"scanner\00", align 1
@scan_char_array = common global [257 x i8] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@left_bracket = common global %struct.ref_s zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@right_bracket = common global %struct.ref_s zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@empty_name = common global %struct.ref_s zeroinitializer, align 8
@scan_init.stop_chars = internal global [11 x i8] c"()<>[]{}/%\00", align 1
@scan_init.space_chars = internal global [6 x i8] c" \0C\09\0A\0D\00", align 1
@array_packing = common global i32 0, align 4
@osp = external global %struct.ref_s*, align 8
@ostop = external global %struct.ref_s*, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"scanner(top proc)\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"scanner(proc)\00", align 1
@dstack = external global [0 x %struct.ref_s], align 8
@dsp = external global %struct.ref_s*, align 8
@scan_number.powers_10 = internal global [7 x float] [float 1.000000e+00, float 1.000000e+01, float 1.000000e+02, float 1.000000e+03, float 1.000000e+04, float 1.000000e+05, float 1.000000e+06], align 16
@.str.6 = private unnamed_addr constant [16 x i8] c"scanner(string)\00", align 1

; Function Attrs: nounwind uwtable
define i32 @dynamic_grow(%struct.dynamic_area_s* %pda) #0 {
entry:
  %retval = alloca i32, align 4
  %pda.addr = alloca %struct.dynamic_area_s*, align 8
  %num = alloca i32, align 4
  %size = alloca i64, align 8
  %new_num = alloca i64, align 8
  %pos = alloca i32, align 4
  %base22 = alloca i8*, align 8
  %old_size = alloca i32, align 4
  store %struct.dynamic_area_s* %pda, %struct.dynamic_area_s** %pda.addr, align 8
  %0 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8
  %num_elts = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %0, i32 0, i32 2
  %1 = load i32, i32* %num_elts, align 4
  store i32 %1, i32* %num, align 4
  %2 = load i32, i32* %num, align 4
  %3 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8
  %elt_size = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %3, i32 0, i32 3
  %4 = load i32, i32* %elt_size, align 4
  %mul = mul i32 %2, %4
  %conv = zext i32 %mul to i64
  store i64 %conv, i64* %size, align 8
  %5 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8
  %next = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %5, i32 0, i32 1
  %6 = load i8*, i8** %next, align 8
  %7 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8
  %base = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %7, i32 0, i32 0
  %8 = load i8*, i8** %base, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv1 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv1, i32* %pos, align 4
  %9 = load i64, i64* %size, align 8
  %cmp = icmp ult i64 %9, 10
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.7

cond.false:                                       ; preds = %entry
  %10 = load i64, i64* %size, align 8
  %cmp3 = icmp uge i64 %10, 2147483647
  br i1 %cmp3, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %cond.false
  br label %cond.end

cond.false.6:                                     ; preds = %cond.false
  %11 = load i64, i64* %size, align 8
  %shl = shl i64 %11, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false.6, %cond.true.5
  %cond = phi i64 [ -1, %cond.true.5 ], [ %shl, %cond.false.6 ]
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.end, %cond.true
  %cond8 = phi i64 [ 20, %cond.true ], [ %cond, %cond.end ]
  store i64 %cond8, i64* %size, align 8
  %12 = load i64, i64* %size, align 8
  %13 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8
  %elt_size9 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %13, i32 0, i32 3
  %14 = load i32, i32* %elt_size9, align 4
  %conv10 = zext i32 %14 to i64
  %div = udiv i64 %12, %conv10
  store i64 %div, i64* %new_num, align 8
  %15 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8
  %is_dynamic = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %15, i32 0, i32 4
  %16 = load i32, i32* %is_dynamic, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.7
  %17 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8
  %base11 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %17, i32 0, i32 0
  %18 = load i8*, i8** %base11, align 8
  %19 = load i32, i32* %num, align 4
  %20 = load i64, i64* %new_num, align 8
  %conv12 = trunc i64 %20 to i32
  %21 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8
  %elt_size13 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %21, i32 0, i32 3
  %22 = load i32, i32* %elt_size13, align 4
  %call = call i8* @alloc_grow(i8* %18, i32 %19, i32 %conv12, i32 %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0))
  %23 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8
  %base14 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %23, i32 0, i32 0
  store i8* %call, i8** %base14, align 8
  %24 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8
  %base15 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %24, i32 0, i32 0
  %25 = load i8*, i8** %base15, align 8
  %cmp16 = icmp eq i8* %25, null
  br i1 %cmp16, label %if.then.18, label %if.end

if.then.18:                                       ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %26 = load i64, i64* %new_num, align 8
  %conv19 = trunc i64 %26 to i32
  %27 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8
  %num_elts20 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %27, i32 0, i32 2
  store i32 %conv19, i32* %num_elts20, align 4
  %28 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8
  %base21 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %28, i32 0, i32 0
  %29 = load i8*, i8** %base21, align 8
  %30 = load i64, i64* %size, align 8
  %add.ptr = getelementptr inbounds i8, i8* %29, i64 %30
  %31 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8
  %limit = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %31, i32 0, i32 5
  store i8* %add.ptr, i8** %limit, align 8
  br label %if.end.46

if.else:                                          ; preds = %cond.end.7
  %32 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8
  %base23 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %32, i32 0, i32 0
  %33 = load i8*, i8** %base23, align 8
  store i8* %33, i8** %base22, align 8
  %34 = load i64, i64* %size, align 8
  %conv24 = trunc i64 %34 to i32
  store i32 %conv24, i32* %old_size, align 4
  %35 = load i64, i64* %new_num, align 8
  %conv25 = trunc i64 %35 to i32
  %36 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8
  %num_elts26 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %36, i32 0, i32 2
  store i32 %conv25, i32* %num_elts26, align 4
  %37 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8
  %elt_size27 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %37, i32 0, i32 3
  %38 = load i32, i32* %elt_size27, align 4
  %39 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8
  %elt_size28 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %39, i32 0, i32 3
  store i32 %38, i32* %elt_size28, align 4
  %call29 = call i8* @alloc(i32 %conv25, i32 %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0))
  %40 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8
  %base30 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %40, i32 0, i32 0
  store i8* %call29, i8** %base30, align 8
  %41 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8
  %base31 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %41, i32 0, i32 0
  %42 = load i8*, i8** %base31, align 8
  %43 = load i64, i64* %new_num, align 8
  %44 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8
  %elt_size32 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %44, i32 0, i32 3
  %45 = load i32, i32* %elt_size32, align 4
  %conv33 = zext i32 %45 to i64
  %mul34 = mul i64 %43, %conv33
  %add.ptr35 = getelementptr inbounds i8, i8* %42, i64 %mul34
  %46 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8
  %limit36 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %46, i32 0, i32 5
  store i8* %add.ptr35, i8** %limit36, align 8
  %47 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8
  %is_dynamic37 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %47, i32 0, i32 4
  store i32 1, i32* %is_dynamic37, align 4
  %48 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8
  %base38 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %48, i32 0, i32 0
  %49 = load i8*, i8** %base38, align 8
  %50 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8
  %next39 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %50, i32 0, i32 1
  store i8* %49, i8** %next39, align 8
  %tobool40 = icmp ne i8* %49, null
  br i1 %tobool40, label %if.end.42, label %if.then.41

if.then.41:                                       ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

if.end.42:                                        ; preds = %if.else
  %51 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8
  %base43 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %51, i32 0, i32 0
  %52 = load i8*, i8** %base43, align 8
  %53 = load i8*, i8** %base22, align 8
  %54 = load i32, i32* %old_size, align 4
  %conv44 = zext i32 %54 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %52, i8* %53, i64 %conv44, i32 1, i1 false)
  %55 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8
  %is_dynamic45 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %55, i32 0, i32 4
  store i32 1, i32* %is_dynamic45, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.42, %if.end
  %56 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8
  %base47 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %56, i32 0, i32 0
  %57 = load i8*, i8** %base47, align 8
  %58 = load i32, i32* %pos, align 4
  %idx.ext = zext i32 %58 to i64
  %add.ptr48 = getelementptr inbounds i8, i8* %57, i64 %idx.ext
  %59 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8
  %next49 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %59, i32 0, i32 1
  store i8* %add.ptr48, i8** %next49, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.46, %if.then.41, %if.then.18
  %60 = load i32, i32* %retval
  ret i32 %60
}

declare i8* @alloc_grow(i8*, i32, i32, i32, i8*) #1

declare i8* @alloc(i32, i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define void @scan_init() #0 {
entry:
  %decoder = alloca i8*, align 8
  %i = alloca i32, align 4
  %p = alloca i8*, align 8
  store i8* getelementptr inbounds ([257 x i8], [257 x i8]* @scan_char_array, i32 0, i64 1), i8** %decoder, align 8
  %call = call i32 @name_ref(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i32 1, %struct.ref_s* @left_bracket, i32 0)
  %call1 = call i32 @name_ref(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i32 1, %struct.ref_s* @right_bracket, i32 0)
  %call2 = call i32 @name_ref(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i32 0, %struct.ref_s* @empty_name, i32 0)
  %0 = load i8*, i8** %decoder, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 -1
  store i8 103, i8* %arrayidx, align 1
  %1 = load i8*, i8** %decoder, align 8
  call void @llvm.memset.p0i8.i64(i8* %1, i8 100, i64 256, i32 1, i1 false)
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @scan_init.space_chars, i32 0, i32 0), i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i8*, i8** %p, align 8
  %3 = load i8, i8* %2, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %p, align 8
  %5 = load i8, i8* %4, align 1
  %idxprom = sext i8 %5 to i64
  %6 = load i8*, i8** %decoder, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %6, i64 %idxprom
  store i8 101, i8* %arrayidx3, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i8*, i8** %decoder, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %8, i64 26
  store i8 101, i8* %arrayidx4, align 1
  %9 = load i8*, i8** %decoder, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %9, i64 11
  store i8 101, i8* %arrayidx5, align 1
  %10 = load i8*, i8** %decoder, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %10, i64 0
  store i8 101, i8* %arrayidx6, align 1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @scan_init.stop_chars, i32 0, i32 0), i8** %p, align 8
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.12, %for.end
  %11 = load i8*, i8** %p, align 8
  %12 = load i8, i8* %11, align 1
  %tobool8 = icmp ne i8 %12, 0
  br i1 %tobool8, label %for.body.9, label %for.end.14

for.body.9:                                       ; preds = %for.cond.7
  %13 = load i8*, i8** %p, align 8
  %14 = load i8, i8* %13, align 1
  %idxprom10 = sext i8 %14 to i64
  %15 = load i8*, i8** %decoder, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %15, i64 %idxprom10
  store i8 102, i8* %arrayidx11, align 1
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.body.9
  %16 = load i8*, i8** %p, align 8
  %incdec.ptr13 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr13, i8** %p, align 8
  br label %for.cond.7

for.end.14:                                       ; preds = %for.cond.7
  store i32 0, i32* %i, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.19, %for.end.14
  %17 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %17, 10
  br i1 %cmp, label %for.body.16, label %for.end.20

for.body.16:                                      ; preds = %for.cond.15
  %18 = load i32, i32* %i, align 4
  %conv = trunc i32 %18 to i8
  %19 = load i32, i32* %i, align 4
  %add = add nsw i32 48, %19
  %idxprom17 = sext i32 %add to i64
  %20 = load i8*, i8** %decoder, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %20, i64 %idxprom17
  store i8 %conv, i8* %arrayidx18, align 1
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.body.16
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.15

for.end.20:                                       ; preds = %for.cond.15
  store i32 0, i32* %i, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.33, %for.end.20
  %22 = load i32, i32* %i, align 4
  %cmp22 = icmp slt i32 %22, 26
  br i1 %cmp22, label %for.body.24, label %for.end.35

for.body.24:                                      ; preds = %for.cond.21
  %23 = load i32, i32* %i, align 4
  %add25 = add nsw i32 %23, 10
  %conv26 = trunc i32 %add25 to i8
  %24 = load i32, i32* %i, align 4
  %add27 = add nsw i32 97, %24
  %idxprom28 = sext i32 %add27 to i64
  %25 = load i8*, i8** %decoder, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %25, i64 %idxprom28
  store i8 %conv26, i8* %arrayidx29, align 1
  %26 = load i32, i32* %i, align 4
  %add30 = add nsw i32 65, %26
  %idxprom31 = sext i32 %add30 to i64
  %27 = load i8*, i8** %decoder, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %27, i64 %idxprom31
  store i8 %conv26, i8* %arrayidx32, align 1
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.body.24
  %28 = load i32, i32* %i, align 4
  %inc34 = add nsw i32 %28, 1
  store i32 %inc34, i32* %i, align 4
  br label %for.cond.21

for.end.35:                                       ; preds = %for.cond.21
  store i32 0, i32* @array_packing, align 4
  ret void
}

declare i32 @name_ref(i8*, i32, %struct.ref_s*, i32) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i32 @scan_token(%struct.stream_s* %s, i32 %from_string, %struct.ref_s* %pref) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stream_s*, align 8
  %from_string.addr = alloca i32, align 4
  %pref.addr = alloca %struct.ref_s*, align 8
  %myref = alloca %struct.ref_s*, align 8
  %proc_da = alloca %struct.dynamic_area_s, align 8
  %pstack = alloca i32, align 4
  %retcode = alloca i32, align 4
  %c = alloca i32, align 4
  %name_type = alloca i32, align 4
  %try_number = alloca i32, align 4
  %decoder = alloca i8*, align 8
  %ref0 = alloca %struct.ref_s*, align 8
  %size46 = alloca i32, align 4
  %aref = alloca %struct.ref_s*, align 8
  %c1 = alloca i32, align 4
  %da = alloca %struct.dynamic_area_s, align 8
  %ptr = alloca i8*, align 8
  %end = alloca i8*, align 8
  %nst = alloca %struct.stream_s, align 8
  %ns = alloca %struct.stream_s*, align 8
  %pvalue = alloca %struct.ref_s*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8
  store i32 %from_string, i32* %from_string.addr, align 4
  store %struct.ref_s* %pref, %struct.ref_s** %pref.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8
  store %struct.ref_s* %0, %struct.ref_s** %myref, align 8
  store i32 0, i32* %pstack, align 4
  store i32 0, i32* %retcode, align 4
  store i8* getelementptr inbounds ([257 x i8], [257 x i8]* @scan_char_array, i32 0, i64 1), i8** %decoder, align 8
  store i32 0, i32* %from_string.addr, align 4
  br label %top

top:                                              ; preds = %if.end.408, %if.then.214, %if.end.30, %sw.bb, %entry
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr = getelementptr inbounds %struct.stream_s, %struct.stream_s* %1, i32 0, i32 0
  %2 = load i8*, i8** %cptr, align 8
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %endptr = getelementptr inbounds %struct.stream_s, %struct.stream_s* %3, i32 0, i32 1
  %4 = load i8*, i8** %endptr, align 8
  %cmp = icmp ult i8* %2, %4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %top
  %5 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i32 0, i32 0
  %6 = load i8*, i8** %cptr1, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %cptr1, align 8
  %7 = load i8, i8* %incdec.ptr, align 1
  %conv = zext i8 %7 to i32
  br label %cond.end

cond.false:                                       ; preds = %top
  %8 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %8, i32 0, i32 7
  %read = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs, i32 0, i32 0
  %9 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %read, align 8
  %10 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %call = call i32 %9(%struct.stream_s* %10)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %call, %cond.false ]
  store i32 %cond, i32* %c, align 4
  %11 = load i32, i32* %c, align 4
  switch i32 %11, label %sw.default.221 [
    i32 32, label %sw.bb
    i32 12, label %sw.bb
    i32 9, label %sw.bb
    i32 10, label %sw.bb
    i32 13, label %sw.bb
    i32 0, label %sw.bb
    i32 11, label %sw.bb
    i32 26, label %sw.bb
    i32 91, label %sw.bb.2
    i32 93, label %sw.bb.5
    i32 60, label %sw.bb.10
    i32 40, label %sw.bb.12
    i32 123, label %sw.bb.14
    i32 62, label %sw.bb.38
    i32 41, label %sw.bb.38
    i32 125, label %sw.bb.39
    i32 47, label %sw.bb.91
    i32 37, label %sw.bb.161
    i32 -1, label %sw.bb.216
    i32 48, label %sw.bb.220
    i32 49, label %sw.bb.220
    i32 50, label %sw.bb.220
    i32 51, label %sw.bb.220
    i32 52, label %sw.bb.220
    i32 53, label %sw.bb.220
    i32 54, label %sw.bb.220
    i32 55, label %sw.bb.220
    i32 56, label %sw.bb.220
    i32 57, label %sw.bb.220
    i32 46, label %sw.bb.220
    i32 43, label %sw.bb.220
    i32 45, label %sw.bb.220
    i32 97, label %sw.bb.222
    i32 98, label %sw.bb.222
    i32 99, label %sw.bb.222
    i32 100, label %sw.bb.222
    i32 101, label %sw.bb.222
    i32 102, label %sw.bb.222
    i32 103, label %sw.bb.222
    i32 104, label %sw.bb.222
    i32 105, label %sw.bb.222
    i32 106, label %sw.bb.222
    i32 107, label %sw.bb.222
    i32 108, label %sw.bb.222
    i32 109, label %sw.bb.222
    i32 110, label %sw.bb.222
    i32 111, label %sw.bb.222
    i32 112, label %sw.bb.222
    i32 113, label %sw.bb.222
    i32 114, label %sw.bb.222
    i32 115, label %sw.bb.222
    i32 116, label %sw.bb.222
    i32 117, label %sw.bb.222
    i32 118, label %sw.bb.222
    i32 119, label %sw.bb.222
    i32 120, label %sw.bb.222
    i32 121, label %sw.bb.222
    i32 122, label %sw.bb.222
    i32 65, label %sw.bb.222
    i32 66, label %sw.bb.222
    i32 67, label %sw.bb.222
    i32 68, label %sw.bb.222
    i32 69, label %sw.bb.222
    i32 70, label %sw.bb.222
    i32 71, label %sw.bb.222
    i32 72, label %sw.bb.222
    i32 73, label %sw.bb.222
    i32 74, label %sw.bb.222
    i32 75, label %sw.bb.222
    i32 76, label %sw.bb.222
    i32 77, label %sw.bb.222
    i32 78, label %sw.bb.222
    i32 79, label %sw.bb.222
    i32 80, label %sw.bb.222
    i32 81, label %sw.bb.222
    i32 82, label %sw.bb.222
    i32 83, label %sw.bb.222
    i32 84, label %sw.bb.222
    i32 85, label %sw.bb.222
    i32 86, label %sw.bb.222
    i32 87, label %sw.bb.222
    i32 88, label %sw.bb.222
    i32 89, label %sw.bb.222
    i32 90, label %sw.bb.222
    i32 95, label %sw.bb.222
  ]

sw.bb:                                            ; preds = %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end
  br label %top

sw.bb.2:                                          ; preds = %cond.end
  %12 = load %struct.ref_s*, %struct.ref_s** %myref, align 8
  %13 = bitcast %struct.ref_s* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* bitcast (%struct.ref_s* @left_bracket to i8*), i64 16, i32 8, i1 false)
  %14 = load %struct.ref_s*, %struct.ref_s** %myref, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 1
  %15 = load i16, i16* %type_attrs, align 2
  %conv3 = zext i16 %15 to i32
  %or = or i32 %conv3, 1
  %conv4 = trunc i32 %or to i16
  store i16 %conv4, i16* %type_attrs, align 2
  br label %sw.epilog.388

sw.bb.5:                                          ; preds = %cond.end
  %16 = load %struct.ref_s*, %struct.ref_s** %myref, align 8
  %17 = bitcast %struct.ref_s* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* bitcast (%struct.ref_s* @right_bracket to i8*), i64 16, i32 8, i1 false)
  %18 = load %struct.ref_s*, %struct.ref_s** %myref, align 8
  %type_attrs6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 1
  %19 = load i16, i16* %type_attrs6, align 2
  %conv7 = zext i16 %19 to i32
  %or8 = or i32 %conv7, 1
  %conv9 = trunc i32 %or8 to i16
  store i16 %conv9, i16* %type_attrs6, align 2
  br label %sw.epilog.388

sw.bb.10:                                         ; preds = %cond.end
  %20 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %21 = load %struct.ref_s*, %struct.ref_s** %myref, align 8
  %call11 = call i32 @scan_hex_string(%struct.stream_s* %20, %struct.ref_s* %21)
  store i32 %call11, i32* %retcode, align 4
  br label %sw.epilog.388

sw.bb.12:                                         ; preds = %cond.end
  %22 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %23 = load i32, i32* %from_string.addr, align 4
  %24 = load %struct.ref_s*, %struct.ref_s** %myref, align 8
  %call13 = call i32 @scan_string(%struct.stream_s* %22, i32 %23, %struct.ref_s* %24)
  store i32 %call13, i32* %retcode, align 4
  br label %sw.epilog.388

sw.bb.14:                                         ; preds = %cond.end
  %25 = load i32, i32* %pstack, align 4
  %cmp15 = icmp eq i32 %25, 0
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.14
  %26 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %myref, align 8
  %27 = load %struct.ref_s*, %struct.ref_s** %myref, align 8
  %28 = bitcast %struct.ref_s* %27 to i8*
  %base = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %proc_da, i32 0, i32 0
  store i8* %28, i8** %base, align 8
  %29 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %add.ptr17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i64 1
  %30 = bitcast %struct.ref_s* %add.ptr17 to i8*
  %limit = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %proc_da, i32 0, i32 5
  store i8* %30, i8** %limit, align 8
  %is_dynamic = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %proc_da, i32 0, i32 4
  store i32 0, i32* %is_dynamic, align 4
  %elt_size = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %proc_da, i32 0, i32 3
  store i32 16, i32* %elt_size, align 4
  %31 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %32 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %31 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ref_s* %32 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %conv18 = trunc i64 %sub.ptr.div to i32
  %num_elts = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %proc_da, i32 0, i32 2
  store i32 %conv18, i32* %num_elts, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.14
  %limit19 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %proc_da, i32 0, i32 5
  %33 = load i8*, i8** %limit19, align 8
  %34 = load %struct.ref_s*, %struct.ref_s** %myref, align 8
  %35 = bitcast %struct.ref_s* %34 to i8*
  %sub.ptr.lhs.cast20 = ptrtoint i8* %33 to i64
  %sub.ptr.rhs.cast21 = ptrtoint i8* %35 to i64
  %sub.ptr.sub22 = sub i64 %sub.ptr.lhs.cast20, %sub.ptr.rhs.cast21
  %cmp23 = icmp ult i64 %sub.ptr.sub22, 32
  br i1 %cmp23, label %if.then.25, label %if.end.30

if.then.25:                                       ; preds = %if.end
  %36 = load %struct.ref_s*, %struct.ref_s** %myref, align 8
  %37 = bitcast %struct.ref_s* %36 to i8*
  %next = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %proc_da, i32 0, i32 1
  store i8* %37, i8** %next, align 8
  %call26 = call i32 @dynamic_grow(%struct.dynamic_area_s* %proc_da)
  %tobool = icmp ne i32 %call26, 0
  br i1 %tobool, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %if.then.25
  store i32 -25, i32* %retval
  br label %return

if.end.28:                                        ; preds = %if.then.25
  %next29 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %proc_da, i32 0, i32 1
  %38 = load i8*, i8** %next29, align 8
  %39 = bitcast i8* %38 to %struct.ref_s*
  store %struct.ref_s* %39, %struct.ref_s** %myref, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.28, %if.end
  %40 = load i32, i32* %pstack, align 4
  %conv31 = trunc i32 %40 to i16
  %41 = load %struct.ref_s*, %struct.ref_s** %myref, align 8
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i32 0, i32 2
  store i16 %conv31, i16* %size, align 2
  %42 = load %struct.ref_s*, %struct.ref_s** %myref, align 8
  %incdec.ptr32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i32 1
  store %struct.ref_s* %incdec.ptr32, %struct.ref_s** %myref, align 8
  %43 = load %struct.ref_s*, %struct.ref_s** %myref, align 8
  %44 = bitcast %struct.ref_s* %43 to i8*
  %base33 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %proc_da, i32 0, i32 0
  %45 = load i8*, i8** %base33, align 8
  %sub.ptr.lhs.cast34 = ptrtoint i8* %44 to i64
  %sub.ptr.rhs.cast35 = ptrtoint i8* %45 to i64
  %sub.ptr.sub36 = sub i64 %sub.ptr.lhs.cast34, %sub.ptr.rhs.cast35
  %conv37 = trunc i64 %sub.ptr.sub36 to i32
  store i32 %conv37, i32* %pstack, align 4
  br label %top

sw.bb.38:                                         ; preds = %cond.end, %cond.end
  store i32 -18, i32* %retcode, align 4
  br label %sw.epilog.388

sw.bb.39:                                         ; preds = %cond.end
  %46 = load i32, i32* %pstack, align 4
  %cmp40 = icmp eq i32 %46, 0
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %sw.bb.39
  store i32 -18, i32* %retcode, align 4
  br label %sw.epilog.388

if.end.43:                                        ; preds = %sw.bb.39
  %base44 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %proc_da, i32 0, i32 0
  %47 = load i8*, i8** %base44, align 8
  %48 = load i32, i32* %pstack, align 4
  %idx.ext = sext i32 %48 to i64
  %add.ptr45 = getelementptr inbounds i8, i8* %47, i64 %idx.ext
  %49 = bitcast i8* %add.ptr45 to %struct.ref_s*
  store %struct.ref_s* %49, %struct.ref_s** %ref0, align 8
  %50 = load %struct.ref_s*, %struct.ref_s** %myref, align 8
  %51 = load %struct.ref_s*, %struct.ref_s** %ref0, align 8
  %sub.ptr.lhs.cast47 = ptrtoint %struct.ref_s* %50 to i64
  %sub.ptr.rhs.cast48 = ptrtoint %struct.ref_s* %51 to i64
  %sub.ptr.sub49 = sub i64 %sub.ptr.lhs.cast47, %sub.ptr.rhs.cast48
  %sub.ptr.div50 = sdiv exact i64 %sub.ptr.sub49, 16
  %conv51 = trunc i64 %sub.ptr.div50 to i32
  store i32 %conv51, i32* %size46, align 4
  %52 = load %struct.ref_s*, %struct.ref_s** %ref0, align 8
  %add.ptr52 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %52, i64 -1
  store %struct.ref_s* %add.ptr52, %struct.ref_s** %myref, align 8
  %53 = load %struct.ref_s*, %struct.ref_s** %myref, align 8
  %size53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %53, i32 0, i32 2
  %54 = load i16, i16* %size53, align 2
  %conv54 = zext i16 %54 to i32
  store i32 %conv54, i32* %pstack, align 4
  %55 = load i32, i32* %pstack, align 4
  %cmp55 = icmp eq i32 %55, 0
  br i1 %cmp55, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.43
  %is_dynamic57 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %proc_da, i32 0, i32 4
  %56 = load i32, i32* %is_dynamic57, align 4
  %tobool58 = icmp ne i32 %56, 0
  br i1 %tobool58, label %if.then.59, label %if.else

if.then.59:                                       ; preds = %land.lhs.true
  %57 = load %struct.ref_s*, %struct.ref_s** %myref, align 8
  %58 = bitcast %struct.ref_s* %57 to i8*
  %59 = load %struct.ref_s*, %struct.ref_s** %ref0, align 8
  %60 = bitcast %struct.ref_s* %59 to i8*
  %61 = load i32, i32* %size46, align 4
  %conv60 = zext i32 %61 to i64
  %mul = mul i64 %conv60, 16
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* %60, i64 %mul, i32 8, i1 false)
  %62 = load %struct.ref_s*, %struct.ref_s** %myref, align 8
  %63 = bitcast %struct.ref_s* %62 to i8*
  %num_elts61 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %proc_da, i32 0, i32 2
  %64 = load i32, i32* %num_elts61, align 4
  %65 = load i32, i32* %size46, align 4
  %call62 = call i8* @alloc_shrink(i8* %63, i32 %64, i32 %65, i32 16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0))
  %66 = bitcast i8* %call62 to %struct.ref_s*
  store %struct.ref_s* %66, %struct.ref_s** %aref, align 8
  %67 = load %struct.ref_s*, %struct.ref_s** %aref, align 8
  %cmp63 = icmp eq %struct.ref_s* %67, null
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.then.59
  store i32 -25, i32* %retval
  br label %return

if.end.66:                                        ; preds = %if.then.59
  %68 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8
  store %struct.ref_s* %68, %struct.ref_s** %myref, align 8
  br label %if.end.78

if.else:                                          ; preds = %land.lhs.true, %if.end.43
  %69 = load i32, i32* %size46, align 4
  %call67 = call i8* @alloc(i32 %69, i32 16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0))
  %70 = bitcast i8* %call67 to %struct.ref_s*
  store %struct.ref_s* %70, %struct.ref_s** %aref, align 8
  %71 = load %struct.ref_s*, %struct.ref_s** %aref, align 8
  %cmp68 = icmp eq %struct.ref_s* %71, null
  br i1 %cmp68, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.else
  store i32 -25, i32* %retval
  br label %return

if.end.71:                                        ; preds = %if.else
  %72 = load %struct.ref_s*, %struct.ref_s** %aref, align 8
  %73 = bitcast %struct.ref_s* %72 to i8*
  %74 = load %struct.ref_s*, %struct.ref_s** %ref0, align 8
  %75 = bitcast %struct.ref_s* %74 to i8*
  %76 = load i32, i32* %size46, align 4
  %conv72 = zext i32 %76 to i64
  %mul73 = mul i64 %conv72, 16
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %73, i8* %75, i64 %mul73, i32 8, i1 false)
  %77 = load i32, i32* %pstack, align 4
  %cmp74 = icmp eq i32 %77, 0
  br i1 %cmp74, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.end.71
  %78 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8
  store %struct.ref_s* %78, %struct.ref_s** %myref, align 8
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.76, %if.end.71
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.end.66
  %79 = load i32, i32* @array_packing, align 4
  %tobool79 = icmp ne i32 %79, 0
  br i1 %tobool79, label %if.then.80, label %if.else.84

if.then.80:                                       ; preds = %if.end.78
  %80 = load %struct.ref_s*, %struct.ref_s** %aref, align 8
  %81 = load %struct.ref_s*, %struct.ref_s** %myref, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %81, i32 0, i32 0
  %refs = bitcast %union.v* %value to %struct.ref_s**
  store %struct.ref_s* %80, %struct.ref_s** %refs, align 8
  %82 = load %struct.ref_s*, %struct.ref_s** %myref, align 8
  %type_attrs81 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %82, i32 0, i32 1
  store i16 555, i16* %type_attrs81, align 2
  %83 = load i32, i32* %size46, align 4
  %conv82 = trunc i32 %83 to i16
  %84 = load %struct.ref_s*, %struct.ref_s** %myref, align 8
  %size83 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %84, i32 0, i32 2
  store i16 %conv82, i16* %size83, align 2
  br label %if.end.90

if.else.84:                                       ; preds = %if.end.78
  %85 = load %struct.ref_s*, %struct.ref_s** %aref, align 8
  %86 = load %struct.ref_s*, %struct.ref_s** %myref, align 8
  %value85 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %86, i32 0, i32 0
  %refs86 = bitcast %union.v* %value85 to %struct.ref_s**
  store %struct.ref_s* %85, %struct.ref_s** %refs86, align 8
  %87 = load %struct.ref_s*, %struct.ref_s** %myref, align 8
  %type_attrs87 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %87, i32 0, i32 1
  store i16 771, i16* %type_attrs87, align 2
  %88 = load i32, i32* %size46, align 4
  %conv88 = trunc i32 %88 to i16
  %89 = load %struct.ref_s*, %struct.ref_s** %myref, align 8
  %size89 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %89, i32 0, i32 2
  store i16 %conv88, i16* %size89, align 2
  br label %if.end.90

if.end.90:                                        ; preds = %if.else.84, %if.then.80
  br label %sw.epilog.388

sw.bb.91:                                         ; preds = %cond.end
  %90 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr92 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %90, i32 0, i32 0
  %91 = load i8*, i8** %cptr92, align 8
  %92 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %endptr93 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %92, i32 0, i32 1
  %93 = load i8*, i8** %endptr93, align 8
  %cmp94 = icmp ult i8* %91, %93
  br i1 %cmp94, label %cond.true.96, label %cond.false.100

cond.true.96:                                     ; preds = %sw.bb.91
  %94 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr97 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %94, i32 0, i32 0
  %95 = load i8*, i8** %cptr97, align 8
  %incdec.ptr98 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %incdec.ptr98, i8** %cptr97, align 8
  %96 = load i8, i8* %incdec.ptr98, align 1
  %conv99 = zext i8 %96 to i32
  br label %cond.end.104

cond.false.100:                                   ; preds = %sw.bb.91
  %97 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %procs101 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %97, i32 0, i32 7
  %read102 = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs101, i32 0, i32 0
  %98 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %read102, align 8
  %99 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %call103 = call i32 %98(%struct.stream_s* %99)
  br label %cond.end.104

cond.end.104:                                     ; preds = %cond.false.100, %cond.true.96
  %cond105 = phi i32 [ %conv99, %cond.true.96 ], [ %call103, %cond.false.100 ]
  store i32 %cond105, i32* %c, align 4
  %100 = load i32, i32* %c, align 4
  %cmp106 = icmp eq i32 %100, 47
  br i1 %cmp106, label %if.then.108, label %if.else.123

if.then.108:                                      ; preds = %cond.end.104
  store i32 2, i32* %name_type, align 4
  %101 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr109 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %101, i32 0, i32 0
  %102 = load i8*, i8** %cptr109, align 8
  %103 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %endptr110 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %103, i32 0, i32 1
  %104 = load i8*, i8** %endptr110, align 8
  %cmp111 = icmp ult i8* %102, %104
  br i1 %cmp111, label %cond.true.113, label %cond.false.117

cond.true.113:                                    ; preds = %if.then.108
  %105 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr114 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %105, i32 0, i32 0
  %106 = load i8*, i8** %cptr114, align 8
  %incdec.ptr115 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %incdec.ptr115, i8** %cptr114, align 8
  %107 = load i8, i8* %incdec.ptr115, align 1
  %conv116 = zext i8 %107 to i32
  br label %cond.end.121

cond.false.117:                                   ; preds = %if.then.108
  %108 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %procs118 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %108, i32 0, i32 7
  %read119 = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs118, i32 0, i32 0
  %109 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %read119, align 8
  %110 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %call120 = call i32 %109(%struct.stream_s* %110)
  br label %cond.end.121

cond.end.121:                                     ; preds = %cond.false.117, %cond.true.113
  %cond122 = phi i32 [ %conv116, %cond.true.113 ], [ %call120, %cond.false.117 ]
  store i32 %cond122, i32* %c, align 4
  br label %if.end.124

if.else.123:                                      ; preds = %cond.end.104
  store i32 1, i32* %name_type, align 4
  br label %if.end.124

if.end.124:                                       ; preds = %if.else.123, %cond.end.121
  store i32 0, i32* %try_number, align 4
  %111 = load i32, i32* %c, align 4
  %idxprom = sext i32 %111 to i64
  %112 = load i8*, i8** %decoder, align 8
  %arrayidx = getelementptr inbounds i8, i8* %112, i64 %idxprom
  %113 = load i8, i8* %arrayidx, align 1
  %conv125 = zext i8 %113 to i32
  switch i32 %conv125, label %sw.default [
    i32 100, label %sw.bb.126
    i32 103, label %sw.bb.127
    i32 102, label %sw.bb.128
    i32 101, label %sw.bb.134
  ]

sw.bb.126:                                        ; preds = %if.end.124
  br label %sw.default

sw.default:                                       ; preds = %if.end.124, %sw.bb.126
  br label %do_name

sw.bb.127:                                        ; preds = %if.end.124
  %114 = load %struct.ref_s*, %struct.ref_s** %myref, align 8
  %115 = bitcast %struct.ref_s* %114 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %115, i8* bitcast (%struct.ref_s* @empty_name to i8*), i64 16, i32 8, i1 false)
  br label %have_name

sw.bb.128:                                        ; preds = %if.end.124
  %116 = load i32, i32* %c, align 4
  switch i32 %116, label %sw.default.131 [
    i32 91, label %sw.bb.129
    i32 93, label %sw.bb.130
  ]

sw.bb.129:                                        ; preds = %sw.bb.128
  %117 = load %struct.ref_s*, %struct.ref_s** %myref, align 8
  %118 = bitcast %struct.ref_s* %117 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %118, i8* bitcast (%struct.ref_s* @left_bracket to i8*), i64 16, i32 8, i1 false)
  br label %have_name

sw.bb.130:                                        ; preds = %sw.bb.128
  %119 = load %struct.ref_s*, %struct.ref_s** %myref, align 8
  %120 = bitcast %struct.ref_s* %119 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %120, i8* bitcast (%struct.ref_s* @right_bracket to i8*), i64 16, i32 8, i1 false)
  br label %have_name

sw.default.131:                                   ; preds = %sw.bb.128
  %121 = load %struct.ref_s*, %struct.ref_s** %myref, align 8
  %122 = bitcast %struct.ref_s* %121 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %122, i8* bitcast (%struct.ref_s* @empty_name to i8*), i64 16, i32 8, i1 false)
  %123 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr132 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %123, i32 0, i32 0
  %124 = load i8*, i8** %cptr132, align 8
  %incdec.ptr133 = getelementptr inbounds i8, i8* %124, i32 -1
  store i8* %incdec.ptr133, i8** %cptr132, align 8
  br label %have_name

sw.bb.134:                                        ; preds = %if.end.124
  %125 = load %struct.ref_s*, %struct.ref_s** %myref, align 8
  %126 = bitcast %struct.ref_s* %125 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %126, i8* bitcast (%struct.ref_s* @empty_name to i8*), i64 16, i32 8, i1 false)
  %127 = load i32, i32* %c, align 4
  %cmp135 = icmp eq i32 %127, 13
  br i1 %cmp135, label %land.lhs.true.137, label %if.end.160

land.lhs.true.137:                                ; preds = %sw.bb.134
  %128 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr138 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %128, i32 0, i32 0
  %129 = load i8*, i8** %cptr138, align 8
  %130 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %endptr139 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %130, i32 0, i32 1
  %131 = load i8*, i8** %endptr139, align 8
  %cmp140 = icmp ult i8* %129, %131
  br i1 %cmp140, label %cond.true.142, label %cond.false.146

cond.true.142:                                    ; preds = %land.lhs.true.137
  %132 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr143 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %132, i32 0, i32 0
  %133 = load i8*, i8** %cptr143, align 8
  %incdec.ptr144 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %incdec.ptr144, i8** %cptr143, align 8
  %134 = load i8, i8* %incdec.ptr144, align 1
  %conv145 = zext i8 %134 to i32
  br label %cond.end.150

cond.false.146:                                   ; preds = %land.lhs.true.137
  %135 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %procs147 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %135, i32 0, i32 7
  %read148 = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs147, i32 0, i32 0
  %136 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %read148, align 8
  %137 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %call149 = call i32 %136(%struct.stream_s* %137)
  br label %cond.end.150

cond.end.150:                                     ; preds = %cond.false.146, %cond.true.142
  %cond151 = phi i32 [ %conv145, %cond.true.142 ], [ %call149, %cond.false.146 ]
  store i32 %cond151, i32* %c, align 4
  %cmp152 = icmp ne i32 %cond151, 10
  br i1 %cmp152, label %land.lhs.true.154, label %if.end.160

land.lhs.true.154:                                ; preds = %cond.end.150
  %138 = load i32, i32* %c, align 4
  %cmp155 = icmp ne i32 %138, -1
  br i1 %cmp155, label %if.then.157, label %if.end.160

if.then.157:                                      ; preds = %land.lhs.true.154
  %139 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr158 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %139, i32 0, i32 0
  %140 = load i8*, i8** %cptr158, align 8
  %incdec.ptr159 = getelementptr inbounds i8, i8* %140, i32 -1
  store i8* %incdec.ptr159, i8** %cptr158, align 8
  br label %if.end.160

if.end.160:                                       ; preds = %if.then.157, %land.lhs.true.154, %cond.end.150, %sw.bb.134
  br label %have_name

sw.bb.161:                                        ; preds = %cond.end
  br label %do.body

do.body:                                          ; preds = %land.end, %sw.bb.161
  %141 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr162 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %141, i32 0, i32 0
  %142 = load i8*, i8** %cptr162, align 8
  %143 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %endptr163 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %143, i32 0, i32 1
  %144 = load i8*, i8** %endptr163, align 8
  %cmp164 = icmp ult i8* %142, %144
  br i1 %cmp164, label %cond.true.166, label %cond.false.170

cond.true.166:                                    ; preds = %do.body
  %145 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr167 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %145, i32 0, i32 0
  %146 = load i8*, i8** %cptr167, align 8
  %incdec.ptr168 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %incdec.ptr168, i8** %cptr167, align 8
  %147 = load i8, i8* %incdec.ptr168, align 1
  %conv169 = zext i8 %147 to i32
  br label %cond.end.174

cond.false.170:                                   ; preds = %do.body
  %148 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %procs171 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %148, i32 0, i32 7
  %read172 = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs171, i32 0, i32 0
  %149 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %read172, align 8
  %150 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %call173 = call i32 %149(%struct.stream_s* %150)
  br label %cond.end.174

cond.end.174:                                     ; preds = %cond.false.170, %cond.true.166
  %cond175 = phi i32 [ %conv169, %cond.true.166 ], [ %call173, %cond.false.170 ]
  store i32 %cond175, i32* %c, align 4
  br label %do.cond

do.cond:                                          ; preds = %cond.end.174
  %151 = load i32, i32* %c, align 4
  %cmp176 = icmp ne i32 %151, 12
  br i1 %cmp176, label %land.lhs.true.178, label %land.end

land.lhs.true.178:                                ; preds = %do.cond
  %152 = load i32, i32* %c, align 4
  %cmp179 = icmp ne i32 %152, 10
  br i1 %cmp179, label %land.lhs.true.181, label %land.end

land.lhs.true.181:                                ; preds = %land.lhs.true.178
  %153 = load i32, i32* %c, align 4
  %cmp182 = icmp ne i32 %153, 13
  br i1 %cmp182, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.181
  %154 = load i32, i32* %c, align 4
  %cmp184 = icmp ne i32 %154, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.181, %land.lhs.true.178, %do.cond
  %155 = phi i1 [ false, %land.lhs.true.181 ], [ false, %land.lhs.true.178 ], [ false, %do.cond ], [ %cmp184, %land.rhs ]
  br i1 %155, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %156 = load i32, i32* %c, align 4
  %cmp186 = icmp eq i32 %156, 13
  br i1 %cmp186, label %land.lhs.true.188, label %if.end.211

land.lhs.true.188:                                ; preds = %do.end
  %157 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr189 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %157, i32 0, i32 0
  %158 = load i8*, i8** %cptr189, align 8
  %159 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %endptr190 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %159, i32 0, i32 1
  %160 = load i8*, i8** %endptr190, align 8
  %cmp191 = icmp ult i8* %158, %160
  br i1 %cmp191, label %cond.true.193, label %cond.false.197

cond.true.193:                                    ; preds = %land.lhs.true.188
  %161 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr194 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %161, i32 0, i32 0
  %162 = load i8*, i8** %cptr194, align 8
  %incdec.ptr195 = getelementptr inbounds i8, i8* %162, i32 1
  store i8* %incdec.ptr195, i8** %cptr194, align 8
  %163 = load i8, i8* %incdec.ptr195, align 1
  %conv196 = zext i8 %163 to i32
  br label %cond.end.201

cond.false.197:                                   ; preds = %land.lhs.true.188
  %164 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %procs198 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %164, i32 0, i32 7
  %read199 = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs198, i32 0, i32 0
  %165 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %read199, align 8
  %166 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %call200 = call i32 %165(%struct.stream_s* %166)
  br label %cond.end.201

cond.end.201:                                     ; preds = %cond.false.197, %cond.true.193
  %cond202 = phi i32 [ %conv196, %cond.true.193 ], [ %call200, %cond.false.197 ]
  store i32 %cond202, i32* %c1, align 4
  %cmp203 = icmp ne i32 %cond202, 10
  br i1 %cmp203, label %land.lhs.true.205, label %if.end.211

land.lhs.true.205:                                ; preds = %cond.end.201
  %167 = load i32, i32* %c1, align 4
  %cmp206 = icmp ne i32 %167, -1
  br i1 %cmp206, label %if.then.208, label %if.end.211

if.then.208:                                      ; preds = %land.lhs.true.205
  %168 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr209 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %168, i32 0, i32 0
  %169 = load i8*, i8** %cptr209, align 8
  %incdec.ptr210 = getelementptr inbounds i8, i8* %169, i32 -1
  store i8* %incdec.ptr210, i8** %cptr209, align 8
  br label %if.end.211

if.end.211:                                       ; preds = %if.then.208, %land.lhs.true.205, %cond.end.201, %do.end
  %170 = load i32, i32* %c, align 4
  %cmp212 = icmp ne i32 %170, -1
  br i1 %cmp212, label %if.then.214, label %if.end.215

if.then.214:                                      ; preds = %if.end.211
  br label %top

if.end.215:                                       ; preds = %if.end.211
  br label %sw.bb.216

sw.bb.216:                                        ; preds = %cond.end, %if.end.215
  %171 = load i32, i32* %pstack, align 4
  %cmp217 = icmp ne i32 %171, 0
  %cond219 = select i1 %cmp217, i32 -18, i32 1
  store i32 %cond219, i32* %retcode, align 4
  br label %sw.epilog.388

sw.bb.220:                                        ; preds = %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end
  store i32 1, i32* %try_number, align 4
  store i32 0, i32* %name_type, align 4
  br label %do_name

sw.default.221:                                   ; preds = %cond.end
  br label %sw.bb.222

sw.bb.222:                                        ; preds = %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %sw.default.221
  store i32 0, i32* %try_number, align 4
  store i32 0, i32* %name_type, align 4
  br label %do_name

do_name:                                          ; preds = %sw.bb.222, %sw.bb.220, %sw.default
  %172 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr223 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %172, i32 0, i32 0
  %173 = load i8*, i8** %cptr223, align 8
  %add.ptr224 = getelementptr inbounds i8, i8* %173, i64 1
  store i8* %add.ptr224, i8** %ptr, align 8
  %174 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %endptr225 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %174, i32 0, i32 1
  %175 = load i8*, i8** %endptr225, align 8
  %add.ptr226 = getelementptr inbounds i8, i8* %175, i64 1
  %add.ptr227 = getelementptr inbounds i8, i8* %add.ptr226, i64 -1
  store i8* %add.ptr227, i8** %end, align 8
  %176 = load i8*, i8** %ptr, align 8
  %add.ptr228 = getelementptr inbounds i8, i8* %176, i64 -1
  %base229 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %da, i32 0, i32 0
  store i8* %add.ptr228, i8** %base229, align 8
  %is_dynamic230 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %da, i32 0, i32 4
  store i32 0, i32* %is_dynamic230, align 4
  br label %do.body.231

do.body.231:                                      ; preds = %do.cond.254, %do_name
  %177 = load i8*, i8** %ptr, align 8
  %178 = load i8*, i8** %end, align 8
  %cmp232 = icmp uge i8* %177, %178
  br i1 %cmp232, label %if.then.234, label %if.end.251

if.then.234:                                      ; preds = %do.body.231
  %179 = load i8*, i8** %ptr, align 8
  %add.ptr235 = getelementptr inbounds i8, i8* %179, i64 -1
  %180 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr236 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %180, i32 0, i32 0
  store i8* %add.ptr235, i8** %cptr236, align 8
  %181 = load i8*, i8** %ptr, align 8
  %limit237 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %da, i32 0, i32 5
  store i8* %181, i8** %limit237, align 8
  %next238 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %da, i32 0, i32 1
  store i8* %181, i8** %next238, align 8
  %182 = load i8*, i8** %ptr, align 8
  %base239 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %da, i32 0, i32 0
  %183 = load i8*, i8** %base239, align 8
  %sub.ptr.lhs.cast240 = ptrtoint i8* %182 to i64
  %sub.ptr.rhs.cast241 = ptrtoint i8* %183 to i64
  %sub.ptr.sub242 = sub i64 %sub.ptr.lhs.cast240, %sub.ptr.rhs.cast241
  %conv243 = trunc i64 %sub.ptr.sub242 to i32
  %num_elts244 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %da, i32 0, i32 2
  store i32 %conv243, i32* %num_elts244, align 4
  %elt_size245 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %da, i32 0, i32 3
  store i32 1, i32* %elt_size245, align 4
  %call246 = call i32 @dynamic_grow(%struct.dynamic_area_s* %da)
  %tobool247 = icmp ne i32 %call246, 0
  br i1 %tobool247, label %if.end.249, label %if.then.248

if.then.248:                                      ; preds = %if.then.234
  store i32 -25, i32* %retval
  br label %return

if.end.249:                                       ; preds = %if.then.234
  %next250 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %da, i32 0, i32 1
  %184 = load i8*, i8** %next250, align 8
  store i8* %184, i8** %ptr, align 8
  br label %dyn_name

if.end.251:                                       ; preds = %do.body.231
  %185 = load i8*, i8** %ptr, align 8
  %incdec.ptr252 = getelementptr inbounds i8, i8* %185, i32 1
  store i8* %incdec.ptr252, i8** %ptr, align 8
  %186 = load i8, i8* %185, align 1
  %conv253 = zext i8 %186 to i32
  store i32 %conv253, i32* %c, align 4
  br label %do.cond.254

do.cond.254:                                      ; preds = %if.end.251
  %187 = load i32, i32* %c, align 4
  %idxprom255 = sext i32 %187 to i64
  %188 = load i8*, i8** %decoder, align 8
  %arrayidx256 = getelementptr inbounds i8, i8* %188, i64 %idxprom255
  %189 = load i8, i8* %arrayidx256, align 1
  %conv257 = zext i8 %189 to i32
  %cmp258 = icmp sle i32 %conv257, 100
  br i1 %cmp258, label %do.body.231, label %do.end.260

do.end.260:                                       ; preds = %do.cond.254
  %190 = load i8*, i8** %ptr, align 8
  %add.ptr261 = getelementptr inbounds i8, i8* %190, i64 -1
  %191 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr262 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %191, i32 0, i32 0
  store i8* %add.ptr261, i8** %cptr262, align 8
  %192 = load i8*, i8** %ptr, align 8
  %incdec.ptr263 = getelementptr inbounds i8, i8* %192, i32 -1
  store i8* %incdec.ptr263, i8** %ptr, align 8
  br label %nx

dyn_name:                                         ; preds = %if.end.249
  br label %while.cond

while.cond:                                       ; preds = %if.end.293, %dyn_name
  %193 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr264 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %193, i32 0, i32 0
  %194 = load i8*, i8** %cptr264, align 8
  %195 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %endptr265 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %195, i32 0, i32 1
  %196 = load i8*, i8** %endptr265, align 8
  %cmp266 = icmp ult i8* %194, %196
  br i1 %cmp266, label %cond.true.268, label %cond.false.272

cond.true.268:                                    ; preds = %while.cond
  %197 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr269 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %197, i32 0, i32 0
  %198 = load i8*, i8** %cptr269, align 8
  %incdec.ptr270 = getelementptr inbounds i8, i8* %198, i32 1
  store i8* %incdec.ptr270, i8** %cptr269, align 8
  %199 = load i8, i8* %incdec.ptr270, align 1
  %conv271 = zext i8 %199 to i32
  br label %cond.end.276

cond.false.272:                                   ; preds = %while.cond
  %200 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %procs273 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %200, i32 0, i32 7
  %read274 = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs273, i32 0, i32 0
  %201 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %read274, align 8
  %202 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %call275 = call i32 %201(%struct.stream_s* %202)
  br label %cond.end.276

cond.end.276:                                     ; preds = %cond.false.272, %cond.true.268
  %cond277 = phi i32 [ %conv271, %cond.true.268 ], [ %call275, %cond.false.272 ]
  store i32 %cond277, i32* %c, align 4
  %idxprom278 = sext i32 %cond277 to i64
  %203 = load i8*, i8** %decoder, align 8
  %arrayidx279 = getelementptr inbounds i8, i8* %203, i64 %idxprom278
  %204 = load i8, i8* %arrayidx279, align 1
  %conv280 = zext i8 %204 to i32
  %cmp281 = icmp sle i32 %conv280, 100
  br i1 %cmp281, label %while.body, label %while.end

while.body:                                       ; preds = %cond.end.276
  %205 = load i8*, i8** %ptr, align 8
  %limit283 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %da, i32 0, i32 5
  %206 = load i8*, i8** %limit283, align 8
  %cmp284 = icmp eq i8* %205, %206
  br i1 %cmp284, label %if.then.286, label %if.end.293

if.then.286:                                      ; preds = %while.body
  %207 = load i8*, i8** %ptr, align 8
  %next287 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %da, i32 0, i32 1
  store i8* %207, i8** %next287, align 8
  %call288 = call i32 @dynamic_grow(%struct.dynamic_area_s* %da)
  %tobool289 = icmp ne i32 %call288, 0
  br i1 %tobool289, label %if.end.291, label %if.then.290

if.then.290:                                      ; preds = %if.then.286
  store i32 -25, i32* %retval
  br label %return

if.end.291:                                       ; preds = %if.then.286
  %next292 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %da, i32 0, i32 1
  %208 = load i8*, i8** %next292, align 8
  store i8* %208, i8** %ptr, align 8
  br label %if.end.293

if.end.293:                                       ; preds = %if.end.291, %while.body
  %209 = load i32, i32* %c, align 4
  %conv294 = trunc i32 %209 to i8
  %210 = load i8*, i8** %ptr, align 8
  %incdec.ptr295 = getelementptr inbounds i8, i8* %210, i32 1
  store i8* %incdec.ptr295, i8** %ptr, align 8
  store i8 %conv294, i8* %210, align 1
  br label %while.cond

while.end:                                        ; preds = %cond.end.276
  br label %nx

nx:                                               ; preds = %while.end, %do.end.260
  %211 = load i32, i32* %c, align 4
  %idxprom296 = sext i32 %211 to i64
  %212 = load i8*, i8** %decoder, align 8
  %arrayidx297 = getelementptr inbounds i8, i8* %212, i64 %idxprom296
  %213 = load i8, i8* %arrayidx297, align 1
  %conv298 = zext i8 %213 to i32
  switch i32 %conv298, label %sw.epilog [
    i32 102, label %sw.bb.299
    i32 101, label %sw.bb.302
    i32 103, label %sw.bb.329
  ]

sw.bb.299:                                        ; preds = %nx
  %214 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr300 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %214, i32 0, i32 0
  %215 = load i8*, i8** %cptr300, align 8
  %incdec.ptr301 = getelementptr inbounds i8, i8* %215, i32 -1
  store i8* %incdec.ptr301, i8** %cptr300, align 8
  br label %sw.bb.302

sw.bb.302:                                        ; preds = %nx, %sw.bb.299
  %216 = load i32, i32* %c, align 4
  %cmp303 = icmp eq i32 %216, 13
  br i1 %cmp303, label %land.lhs.true.305, label %if.end.328

land.lhs.true.305:                                ; preds = %sw.bb.302
  %217 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr306 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %217, i32 0, i32 0
  %218 = load i8*, i8** %cptr306, align 8
  %219 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %endptr307 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %219, i32 0, i32 1
  %220 = load i8*, i8** %endptr307, align 8
  %cmp308 = icmp ult i8* %218, %220
  br i1 %cmp308, label %cond.true.310, label %cond.false.314

cond.true.310:                                    ; preds = %land.lhs.true.305
  %221 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr311 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %221, i32 0, i32 0
  %222 = load i8*, i8** %cptr311, align 8
  %incdec.ptr312 = getelementptr inbounds i8, i8* %222, i32 1
  store i8* %incdec.ptr312, i8** %cptr311, align 8
  %223 = load i8, i8* %incdec.ptr312, align 1
  %conv313 = zext i8 %223 to i32
  br label %cond.end.318

cond.false.314:                                   ; preds = %land.lhs.true.305
  %224 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %procs315 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %224, i32 0, i32 7
  %read316 = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs315, i32 0, i32 0
  %225 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %read316, align 8
  %226 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %call317 = call i32 %225(%struct.stream_s* %226)
  br label %cond.end.318

cond.end.318:                                     ; preds = %cond.false.314, %cond.true.310
  %cond319 = phi i32 [ %conv313, %cond.true.310 ], [ %call317, %cond.false.314 ]
  store i32 %cond319, i32* %c, align 4
  %cmp320 = icmp ne i32 %cond319, 10
  br i1 %cmp320, label %land.lhs.true.322, label %if.end.328

land.lhs.true.322:                                ; preds = %cond.end.318
  %227 = load i32, i32* %c, align 4
  %cmp323 = icmp ne i32 %227, -1
  br i1 %cmp323, label %if.then.325, label %if.end.328

if.then.325:                                      ; preds = %land.lhs.true.322
  %228 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr326 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %228, i32 0, i32 0
  %229 = load i8*, i8** %cptr326, align 8
  %incdec.ptr327 = getelementptr inbounds i8, i8* %229, i32 -1
  store i8* %incdec.ptr327, i8** %cptr326, align 8
  br label %if.end.328

if.end.328:                                       ; preds = %if.then.325, %land.lhs.true.322, %cond.end.318, %sw.bb.302
  br label %sw.bb.329

sw.bb.329:                                        ; preds = %nx, %if.end.328
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.329, %nx
  %230 = load i32, i32* %try_number, align 4
  %tobool330 = icmp ne i32 %230, 0
  br i1 %tobool330, label %if.then.331, label %if.end.350

if.then.331:                                      ; preds = %sw.epilog
  store %struct.stream_s* %nst, %struct.stream_s** %ns, align 8
  %231 = load %struct.stream_s*, %struct.stream_s** %ns, align 8
  %base332 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %da, i32 0, i32 0
  %232 = load i8*, i8** %base332, align 8
  %233 = load i8*, i8** %ptr, align 8
  %base333 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %da, i32 0, i32 0
  %234 = load i8*, i8** %base333, align 8
  %sub.ptr.lhs.cast334 = ptrtoint i8* %233 to i64
  %sub.ptr.rhs.cast335 = ptrtoint i8* %234 to i64
  %sub.ptr.sub336 = sub i64 %sub.ptr.lhs.cast334, %sub.ptr.rhs.cast335
  %conv337 = trunc i64 %sub.ptr.sub336 to i32
  call void @sread_string(%struct.stream_s* %231, i8* %232, i32 %conv337)
  %235 = load %struct.stream_s*, %struct.stream_s** %ns, align 8
  %236 = load %struct.ref_s*, %struct.ref_s** %myref, align 8
  %call338 = call i32 @scan_number(%struct.stream_s* %235, %struct.ref_s* %236)
  store i32 %call338, i32* %retcode, align 4
  %237 = load i32, i32* %retcode, align 4
  %cmp339 = icmp ne i32 %237, -18
  br i1 %cmp339, label %if.then.341, label %if.end.349

if.then.341:                                      ; preds = %if.then.331
  %is_dynamic342 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %da, i32 0, i32 4
  %238 = load i32, i32* %is_dynamic342, align 4
  %tobool343 = icmp ne i32 %238, 0
  br i1 %tobool343, label %if.then.344, label %if.end.348

if.then.344:                                      ; preds = %if.then.341
  %base345 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %da, i32 0, i32 0
  %239 = load i8*, i8** %base345, align 8
  %num_elts346 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %da, i32 0, i32 2
  %240 = load i32, i32* %num_elts346, align 4
  %elt_size347 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %da, i32 0, i32 3
  %241 = load i32, i32* %elt_size347, align 4
  call void @alloc_free(i8* %239, i32 %240, i32 %241, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0))
  br label %if.end.348

if.end.348:                                       ; preds = %if.then.344, %if.then.341
  br label %have_name

if.end.349:                                       ; preds = %if.then.331
  br label %if.end.350

if.end.350:                                       ; preds = %if.end.349, %sw.epilog
  %base351 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %da, i32 0, i32 0
  %242 = load i8*, i8** %base351, align 8
  %243 = load i8*, i8** %ptr, align 8
  %base352 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %da, i32 0, i32 0
  %244 = load i8*, i8** %base352, align 8
  %sub.ptr.lhs.cast353 = ptrtoint i8* %243 to i64
  %sub.ptr.rhs.cast354 = ptrtoint i8* %244 to i64
  %sub.ptr.sub355 = sub i64 %sub.ptr.lhs.cast353, %sub.ptr.rhs.cast354
  %conv356 = trunc i64 %sub.ptr.sub355 to i32
  %245 = load %struct.ref_s*, %struct.ref_s** %myref, align 8
  %call357 = call i32 @name_ref(i8* %242, i32 %conv356, %struct.ref_s* %245, i32 1)
  store i32 %call357, i32* %retcode, align 4
  %is_dynamic358 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %da, i32 0, i32 4
  %246 = load i32, i32* %is_dynamic358, align 4
  %tobool359 = icmp ne i32 %246, 0
  br i1 %tobool359, label %if.then.360, label %if.end.364

if.then.360:                                      ; preds = %if.end.350
  %base361 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %da, i32 0, i32 0
  %247 = load i8*, i8** %base361, align 8
  %num_elts362 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %da, i32 0, i32 2
  %248 = load i32, i32* %num_elts362, align 4
  %elt_size363 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %da, i32 0, i32 3
  %249 = load i32, i32* %elt_size363, align 4
  call void @alloc_free(i8* %247, i32 %248, i32 %249, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0))
  br label %if.end.364

if.end.364:                                       ; preds = %if.then.360, %if.end.350
  br label %have_name

have_name:                                        ; preds = %if.end.364, %if.end.348, %if.end.160, %sw.default.131, %sw.bb.130, %sw.bb.129, %sw.bb.127
  %250 = load i32, i32* %retcode, align 4
  %cmp365 = icmp slt i32 %250, 0
  br i1 %cmp365, label %if.then.367, label %if.end.368

if.then.367:                                      ; preds = %have_name
  %251 = load i32, i32* %retcode, align 4
  store i32 %251, i32* %retval
  br label %return

if.end.368:                                       ; preds = %have_name
  %252 = load i32, i32* %name_type, align 4
  switch i32 %252, label %sw.epilog.387 [
    i32 0, label %sw.bb.369
    i32 1, label %sw.bb.380
    i32 2, label %sw.bb.381
  ]

sw.bb.369:                                        ; preds = %if.end.368
  %253 = load %struct.ref_s*, %struct.ref_s** %myref, align 8
  %type_attrs370 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %253, i32 0, i32 1
  %254 = load i16, i16* %type_attrs370, align 2
  %conv371 = zext i16 %254 to i32
  %and = and i32 %conv371, 255
  %shr = ashr i32 %and, 2
  %cmp372 = icmp eq i32 %shr, 7
  br i1 %cmp372, label %if.then.374, label %if.end.379

if.then.374:                                      ; preds = %sw.bb.369
  %255 = load %struct.ref_s*, %struct.ref_s** %myref, align 8
  %type_attrs375 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %255, i32 0, i32 1
  %256 = load i16, i16* %type_attrs375, align 2
  %conv376 = zext i16 %256 to i32
  %or377 = or i32 %conv376, 1
  %conv378 = trunc i32 %or377 to i16
  store i16 %conv378, i16* %type_attrs375, align 2
  br label %if.end.379

if.end.379:                                       ; preds = %if.then.374, %sw.bb.369
  br label %sw.bb.380

sw.bb.380:                                        ; preds = %if.end.368, %if.end.379
  br label %sw.epilog.387

sw.bb.381:                                        ; preds = %if.end.368
  %257 = load %struct.ref_s*, %struct.ref_s** @dsp, align 8
  %258 = load %struct.ref_s*, %struct.ref_s** %myref, align 8
  %call382 = call i32 @dict_lookup(%struct.ref_s* getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @dstack, i32 0, i32 0), %struct.ref_s* %257, %struct.ref_s* %258, %struct.ref_s** %pvalue)
  %cmp383 = icmp sle i32 %call382, 0
  br i1 %cmp383, label %if.then.385, label %if.end.386

if.then.385:                                      ; preds = %sw.bb.381
  store i32 -21, i32* %retval
  br label %return

if.end.386:                                       ; preds = %sw.bb.381
  %259 = load %struct.ref_s*, %struct.ref_s** %myref, align 8
  %260 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8
  %261 = bitcast %struct.ref_s* %259 to i8*
  %262 = bitcast %struct.ref_s* %260 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %261, i8* %262, i64 16, i32 8, i1 false)
  br label %sw.epilog.387

sw.epilog.387:                                    ; preds = %if.end.386, %if.end.368, %sw.bb.380
  br label %sw.epilog.388

sw.epilog.388:                                    ; preds = %sw.epilog.387, %sw.bb.216, %if.end.90, %if.then.42, %sw.bb.38, %sw.bb.12, %sw.bb.10, %sw.bb.5, %sw.bb.2
  %263 = load i32, i32* %pstack, align 4
  %cmp389 = icmp eq i32 %263, 0
  br i1 %cmp389, label %if.then.393, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.epilog.388
  %264 = load i32, i32* %retcode, align 4
  %cmp391 = icmp slt i32 %264, 0
  br i1 %cmp391, label %if.then.393, label %if.end.394

if.then.393:                                      ; preds = %lor.lhs.false, %sw.epilog.388
  %265 = load i32, i32* %retcode, align 4
  store i32 %265, i32* %retval
  br label %return

if.end.394:                                       ; preds = %lor.lhs.false
  %limit395 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %proc_da, i32 0, i32 5
  %266 = load i8*, i8** %limit395, align 8
  %267 = load %struct.ref_s*, %struct.ref_s** %myref, align 8
  %268 = bitcast %struct.ref_s* %267 to i8*
  %sub.ptr.lhs.cast396 = ptrtoint i8* %266 to i64
  %sub.ptr.rhs.cast397 = ptrtoint i8* %268 to i64
  %sub.ptr.sub398 = sub i64 %sub.ptr.lhs.cast396, %sub.ptr.rhs.cast397
  %cmp399 = icmp ult i64 %sub.ptr.sub398, 32
  br i1 %cmp399, label %if.then.401, label %if.end.408

if.then.401:                                      ; preds = %if.end.394
  %269 = load %struct.ref_s*, %struct.ref_s** %myref, align 8
  %270 = bitcast %struct.ref_s* %269 to i8*
  %next402 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %proc_da, i32 0, i32 1
  store i8* %270, i8** %next402, align 8
  %call403 = call i32 @dynamic_grow(%struct.dynamic_area_s* %proc_da)
  %tobool404 = icmp ne i32 %call403, 0
  br i1 %tobool404, label %if.end.406, label %if.then.405

if.then.405:                                      ; preds = %if.then.401
  store i32 -25, i32* %retval
  br label %return

if.end.406:                                       ; preds = %if.then.401
  %next407 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %proc_da, i32 0, i32 1
  %271 = load i8*, i8** %next407, align 8
  %272 = bitcast i8* %271 to %struct.ref_s*
  store %struct.ref_s* %272, %struct.ref_s** %myref, align 8
  br label %if.end.408

if.end.408:                                       ; preds = %if.end.406, %if.end.394
  %273 = load %struct.ref_s*, %struct.ref_s** %myref, align 8
  %incdec.ptr409 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %273, i32 1
  store %struct.ref_s* %incdec.ptr409, %struct.ref_s** %myref, align 8
  br label %top

return:                                           ; preds = %if.then.405, %if.then.393, %if.then.385, %if.then.367, %if.then.290, %if.then.248, %if.then.70, %if.then.65, %if.then.27
  %274 = load i32, i32* %retval
  ret i32 %274
}

; Function Attrs: nounwind uwtable
define i32 @scan_hex_string(%struct.stream_s* %s, %struct.ref_s* %pref) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stream_s*, align 8
  %pref.addr = alloca %struct.ref_s*, align 8
  %da = alloca %struct.dynamic_area_s, align 8
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  %val1 = alloca i32, align 4
  %val2 = alloca i32, align 4
  %ptr = alloca i8*, align 8
  %decoder = alloca i8*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8
  store %struct.ref_s* %pref, %struct.ref_s** %pref.addr, align 8
  %num_elts = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %da, i32 0, i32 2
  store i32 100, i32* %num_elts, align 4
  %elt_size = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %da, i32 0, i32 3
  store i32 1, i32* %elt_size, align 4
  %call = call i8* @alloc(i32 100, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0))
  %base = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %da, i32 0, i32 0
  store i8* %call, i8** %base, align 8
  %base1 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %da, i32 0, i32 0
  %0 = load i8*, i8** %base1, align 8
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 100
  %limit = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %da, i32 0, i32 5
  store i8* %add.ptr, i8** %limit, align 8
  %is_dynamic = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %da, i32 0, i32 4
  store i32 1, i32* %is_dynamic, align 4
  %base2 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %da, i32 0, i32 0
  %1 = load i8*, i8** %base2, align 8
  %next = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %da, i32 0, i32 1
  store i8* %1, i8** %next, align 8
  store i8* %1, i8** %ptr, align 8
  store i8* getelementptr inbounds ([257 x i8], [257 x i8]* @scan_char_array, i32 0, i64 1), i8** %decoder, align 8
  %2 = load i8*, i8** %ptr, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %l1

l1:                                               ; preds = %if.end.40, %if.end
  br label %do.body

do.body:                                          ; preds = %do.cond.65, %l1
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr = getelementptr inbounds %struct.stream_s, %struct.stream_s* %3, i32 0, i32 0
  %4 = load i8*, i8** %cptr, align 8
  %5 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %endptr = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i32 0, i32 1
  %6 = load i8*, i8** %endptr, align 8
  %cmp3 = icmp ult i8* %4, %6
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr4 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 0
  %8 = load i8*, i8** %cptr4, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %cptr4, align 8
  %9 = load i8, i8* %incdec.ptr, align 1
  %conv = zext i8 %9 to i32
  br label %cond.end

cond.false:                                       ; preds = %do.body
  %10 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %10, i32 0, i32 7
  %read = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs, i32 0, i32 0
  %11 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %read, align 8
  %12 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %call5 = call i32 %11(%struct.stream_s* %12)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %call5, %cond.false ]
  store i32 %cond, i32* %c1, align 4
  %13 = load i32, i32* %c1, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load i8*, i8** %decoder, align 8
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 %idxprom
  %15 = load i8, i8* %arrayidx, align 1
  %conv6 = zext i8 %15 to i32
  store i32 %conv6, i32* %val1, align 4
  %cmp7 = icmp slt i32 %conv6, 16
  br i1 %cmp7, label %if.then.9, label %if.end.64

if.then.9:                                        ; preds = %cond.end
  br label %do.body.10

do.body.10:                                       ; preds = %do.cond, %if.then.9
  %16 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr11 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %16, i32 0, i32 0
  %17 = load i8*, i8** %cptr11, align 8
  %18 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %endptr12 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %18, i32 0, i32 1
  %19 = load i8*, i8** %endptr12, align 8
  %cmp13 = icmp ult i8* %17, %19
  br i1 %cmp13, label %cond.true.15, label %cond.false.19

cond.true.15:                                     ; preds = %do.body.10
  %20 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr16 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %20, i32 0, i32 0
  %21 = load i8*, i8** %cptr16, align 8
  %incdec.ptr17 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr17, i8** %cptr16, align 8
  %22 = load i8, i8* %incdec.ptr17, align 1
  %conv18 = zext i8 %22 to i32
  br label %cond.end.23

cond.false.19:                                    ; preds = %do.body.10
  %23 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %procs20 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %23, i32 0, i32 7
  %read21 = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs20, i32 0, i32 0
  %24 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %read21, align 8
  %25 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %call22 = call i32 %24(%struct.stream_s* %25)
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.19, %cond.true.15
  %cond24 = phi i32 [ %conv18, %cond.true.15 ], [ %call22, %cond.false.19 ]
  store i32 %cond24, i32* %c2, align 4
  %26 = load i32, i32* %c2, align 4
  %idxprom25 = sext i32 %26 to i64
  %27 = load i8*, i8** %decoder, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %27, i64 %idxprom25
  %28 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %28 to i32
  store i32 %conv27, i32* %val2, align 4
  %cmp28 = icmp slt i32 %conv27, 16
  br i1 %cmp28, label %if.then.30, label %if.end.43

if.then.30:                                       ; preds = %cond.end.23
  %29 = load i8*, i8** %ptr, align 8
  %limit31 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %da, i32 0, i32 5
  %30 = load i8*, i8** %limit31, align 8
  %cmp32 = icmp eq i8* %29, %30
  br i1 %cmp32, label %if.then.34, label %if.end.40

if.then.34:                                       ; preds = %if.then.30
  %31 = load i8*, i8** %ptr, align 8
  %next35 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %da, i32 0, i32 1
  store i8* %31, i8** %next35, align 8
  %call36 = call i32 @dynamic_grow(%struct.dynamic_area_s* %da)
  %tobool = icmp ne i32 %call36, 0
  br i1 %tobool, label %if.end.38, label %if.then.37

if.then.37:                                       ; preds = %if.then.34
  store i32 -25, i32* %retval
  br label %return

if.end.38:                                        ; preds = %if.then.34
  %next39 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %da, i32 0, i32 1
  %32 = load i8*, i8** %next39, align 8
  store i8* %32, i8** %ptr, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.38, %if.then.30
  %33 = load i32, i32* %val1, align 4
  %shl = shl i32 %33, 4
  %34 = load i32, i32* %val2, align 4
  %add = add nsw i32 %shl, %34
  %conv41 = trunc i32 %add to i8
  %35 = load i8*, i8** %ptr, align 8
  %incdec.ptr42 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr42, i8** %ptr, align 8
  store i8 %conv41, i8* %35, align 1
  br label %l1

if.end.43:                                        ; preds = %cond.end.23
  br label %do.cond

do.cond:                                          ; preds = %if.end.43
  %36 = load i32, i32* %val2, align 4
  %cmp44 = icmp eq i32 %36, 101
  br i1 %cmp44, label %do.body.10, label %do.end

do.end:                                           ; preds = %do.cond
  %37 = load i32, i32* %c2, align 4
  %cmp46 = icmp ne i32 %37, 62
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %do.end
  store i32 -18, i32* %retval
  br label %return

if.end.49:                                        ; preds = %do.end
  %38 = load i8*, i8** %ptr, align 8
  %limit50 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %da, i32 0, i32 5
  %39 = load i8*, i8** %limit50, align 8
  %cmp51 = icmp eq i8* %38, %39
  br i1 %cmp51, label %if.then.53, label %if.end.60

if.then.53:                                       ; preds = %if.end.49
  %40 = load i8*, i8** %ptr, align 8
  %next54 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %da, i32 0, i32 1
  store i8* %40, i8** %next54, align 8
  %call55 = call i32 @dynamic_grow(%struct.dynamic_area_s* %da)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.end.58, label %if.then.57

if.then.57:                                       ; preds = %if.then.53
  store i32 -25, i32* %retval
  br label %return

if.end.58:                                        ; preds = %if.then.53
  %next59 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %da, i32 0, i32 1
  %41 = load i8*, i8** %next59, align 8
  store i8* %41, i8** %ptr, align 8
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.58, %if.end.49
  %42 = load i32, i32* %val1, align 4
  %shl61 = shl i32 %42, 4
  %conv62 = trunc i32 %shl61 to i8
  %43 = load i8*, i8** %ptr, align 8
  %incdec.ptr63 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr63, i8** %ptr, align 8
  store i8 %conv62, i8* %43, align 1
  br label %lx

if.end.64:                                        ; preds = %cond.end
  br label %do.cond.65

do.cond.65:                                       ; preds = %if.end.64
  %44 = load i32, i32* %val1, align 4
  %cmp66 = icmp eq i32 %44, 101
  br i1 %cmp66, label %do.body, label %do.end.68

do.end.68:                                        ; preds = %do.cond.65
  %45 = load i32, i32* %c1, align 4
  %cmp69 = icmp ne i32 %45, 62
  br i1 %cmp69, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %do.end.68
  store i32 -18, i32* %retval
  br label %return

if.end.72:                                        ; preds = %do.end.68
  br label %lx

lx:                                               ; preds = %if.end.72, %if.end.60
  %46 = load i8*, i8** %ptr, align 8
  %next73 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %da, i32 0, i32 1
  store i8* %46, i8** %next73, align 8
  %47 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8
  %call74 = call i32 @mk_string(%struct.ref_s* %47, %struct.dynamic_area_s* %da)
  store i32 %call74, i32* %retval
  br label %return

return:                                           ; preds = %lx, %if.then.71, %if.then.57, %if.then.48, %if.then.37, %if.then
  %48 = load i32, i32* %retval
  ret i32 %48
}

; Function Attrs: nounwind uwtable
define i32 @scan_string(%struct.stream_s* %s, i32 %from_string, %struct.ref_s* %pref) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stream_s*, align 8
  %from_string.addr = alloca i32, align 4
  %pref.addr = alloca %struct.ref_s*, align 8
  %da = alloca %struct.dynamic_area_s, align 8
  %c = alloca i32, align 4
  %ptr = alloca i8*, align 8
  %plevel = alloca i32, align 4
  %d = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8
  store i32 %from_string, i32* %from_string.addr, align 4
  store %struct.ref_s* %pref, %struct.ref_s** %pref.addr, align 8
  %num_elts = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %da, i32 0, i32 2
  store i32 100, i32* %num_elts, align 4
  %elt_size = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %da, i32 0, i32 3
  store i32 1, i32* %elt_size, align 4
  %call = call i8* @alloc(i32 100, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0))
  %base = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %da, i32 0, i32 0
  store i8* %call, i8** %base, align 8
  %base1 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %da, i32 0, i32 0
  %0 = load i8*, i8** %base1, align 8
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 100
  %limit = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %da, i32 0, i32 5
  store i8* %add.ptr, i8** %limit, align 8
  %is_dynamic = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %da, i32 0, i32 4
  store i32 1, i32* %is_dynamic, align 4
  %base2 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %da, i32 0, i32 0
  %1 = load i8*, i8** %base2, align 8
  %next = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %da, i32 0, i32 1
  store i8* %1, i8** %next, align 8
  store i8* %1, i8** %ptr, align 8
  store i32 0, i32* %plevel, align 4
  %2 = load i8*, i8** %ptr, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %top

top:                                              ; preds = %sw.bb.42, %if.end
  br label %while.body

while.body:                                       ; preds = %top, %if.end.110
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr = getelementptr inbounds %struct.stream_s, %struct.stream_s* %3, i32 0, i32 0
  %4 = load i8*, i8** %cptr, align 8
  %5 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %endptr = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i32 0, i32 1
  %6 = load i8*, i8** %endptr, align 8
  %cmp3 = icmp ult i8* %4, %6
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr4 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 0
  %8 = load i8*, i8** %cptr4, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %cptr4, align 8
  %9 = load i8, i8* %incdec.ptr, align 1
  %conv = zext i8 %9 to i32
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %10 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %10, i32 0, i32 7
  %read = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs, i32 0, i32 0
  %11 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %read, align 8
  %12 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %call5 = call i32 %11(%struct.stream_s* %12)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %call5, %cond.false ]
  store i32 %cond, i32* %c, align 4
  %13 = load i32, i32* %c, align 4
  %cmp6 = icmp eq i32 %13, -1
  br i1 %cmp6, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %cond.end
  store i32 -18, i32* %retval
  br label %return

if.else:                                          ; preds = %cond.end
  %14 = load i32, i32* %c, align 4
  %cmp9 = icmp eq i32 %14, 40
  br i1 %cmp9, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.else
  %15 = load i32, i32* %plevel, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %plevel, align 4
  br label %if.end.98

if.else.12:                                       ; preds = %if.else
  %16 = load i32, i32* %c, align 4
  %cmp13 = icmp eq i32 %16, 41
  br i1 %cmp13, label %if.then.15, label %if.else.20

if.then.15:                                       ; preds = %if.else.12
  %17 = load i32, i32* %plevel, align 4
  %dec = add nsw i32 %17, -1
  store i32 %dec, i32* %plevel, align 4
  %cmp16 = icmp slt i32 %dec, 0
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.then.15
  br label %while.end

if.end.19:                                        ; preds = %if.then.15
  br label %if.end.97

if.else.20:                                       ; preds = %if.else.12
  %18 = load i32, i32* %c, align 4
  %cmp21 = icmp eq i32 %18, 92
  br i1 %cmp21, label %land.lhs.true, label %if.end.96

land.lhs.true:                                    ; preds = %if.else.20
  %19 = load i32, i32* %from_string.addr, align 4
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.end.96, label %if.then.23

if.then.23:                                       ; preds = %land.lhs.true
  %20 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr24 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %20, i32 0, i32 0
  %21 = load i8*, i8** %cptr24, align 8
  %22 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %endptr25 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %22, i32 0, i32 1
  %23 = load i8*, i8** %endptr25, align 8
  %cmp26 = icmp ult i8* %21, %23
  br i1 %cmp26, label %cond.true.28, label %cond.false.32

cond.true.28:                                     ; preds = %if.then.23
  %24 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr29 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %24, i32 0, i32 0
  %25 = load i8*, i8** %cptr29, align 8
  %incdec.ptr30 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr30, i8** %cptr29, align 8
  %26 = load i8, i8* %incdec.ptr30, align 1
  %conv31 = zext i8 %26 to i32
  br label %cond.end.36

cond.false.32:                                    ; preds = %if.then.23
  %27 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %procs33 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %27, i32 0, i32 7
  %read34 = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs33, i32 0, i32 0
  %28 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %read34, align 8
  %29 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %call35 = call i32 %28(%struct.stream_s* %29)
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.false.32, %cond.true.28
  %cond37 = phi i32 [ %conv31, %cond.true.28 ], [ %call35, %cond.false.32 ]
  store i32 %cond37, i32* %c, align 4
  %30 = load i32, i32* %c, align 4
  switch i32 %30, label %sw.default [
    i32 110, label %sw.bb
    i32 114, label %sw.bb.38
    i32 116, label %sw.bb.39
    i32 98, label %sw.bb.40
    i32 102, label %sw.bb.41
    i32 10, label %sw.bb.42
    i32 48, label %sw.bb.43
    i32 49, label %sw.bb.43
    i32 50, label %sw.bb.43
    i32 51, label %sw.bb.43
    i32 52, label %sw.bb.43
    i32 53, label %sw.bb.43
    i32 54, label %sw.bb.43
    i32 55, label %sw.bb.43
  ]

sw.bb:                                            ; preds = %cond.end.36
  store i32 10, i32* %c, align 4
  br label %sw.epilog

sw.bb.38:                                         ; preds = %cond.end.36
  store i32 13, i32* %c, align 4
  br label %sw.epilog

sw.bb.39:                                         ; preds = %cond.end.36
  store i32 9, i32* %c, align 4
  br label %sw.epilog

sw.bb.40:                                         ; preds = %cond.end.36
  store i32 8, i32* %c, align 4
  br label %sw.epilog

sw.bb.41:                                         ; preds = %cond.end.36
  store i32 12, i32* %c, align 4
  br label %sw.epilog

sw.bb.42:                                         ; preds = %cond.end.36
  br label %top

sw.bb.43:                                         ; preds = %cond.end.36, %cond.end.36, %cond.end.36, %cond.end.36, %cond.end.36, %cond.end.36, %cond.end.36, %cond.end.36
  %31 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr44 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %31, i32 0, i32 0
  %32 = load i8*, i8** %cptr44, align 8
  %33 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %endptr45 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %33, i32 0, i32 1
  %34 = load i8*, i8** %endptr45, align 8
  %cmp46 = icmp ult i8* %32, %34
  br i1 %cmp46, label %cond.true.48, label %cond.false.52

cond.true.48:                                     ; preds = %sw.bb.43
  %35 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr49 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %35, i32 0, i32 0
  %36 = load i8*, i8** %cptr49, align 8
  %incdec.ptr50 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr50, i8** %cptr49, align 8
  %37 = load i8, i8* %incdec.ptr50, align 1
  %conv51 = zext i8 %37 to i32
  br label %cond.end.56

cond.false.52:                                    ; preds = %sw.bb.43
  %38 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %procs53 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %38, i32 0, i32 7
  %read54 = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs53, i32 0, i32 0
  %39 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %read54, align 8
  %40 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %call55 = call i32 %39(%struct.stream_s* %40)
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.false.52, %cond.true.48
  %cond57 = phi i32 [ %conv51, %cond.true.48 ], [ %call55, %cond.false.52 ]
  store i32 %cond57, i32* %d, align 4
  %41 = load i32, i32* %c, align 4
  %sub = sub nsw i32 %41, 48
  store i32 %sub, i32* %c, align 4
  %42 = load i32, i32* %d, align 4
  %cmp58 = icmp sge i32 %42, 48
  br i1 %cmp58, label %land.lhs.true.60, label %if.end.89

land.lhs.true.60:                                 ; preds = %cond.end.56
  %43 = load i32, i32* %d, align 4
  %cmp61 = icmp sle i32 %43, 55
  br i1 %cmp61, label %if.then.63, label %if.end.89

if.then.63:                                       ; preds = %land.lhs.true.60
  %44 = load i32, i32* %c, align 4
  %shl = shl i32 %44, 3
  %45 = load i32, i32* %d, align 4
  %add = add nsw i32 %shl, %45
  %sub64 = sub nsw i32 %add, 48
  store i32 %sub64, i32* %c, align 4
  %46 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr65 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %46, i32 0, i32 0
  %47 = load i8*, i8** %cptr65, align 8
  %48 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %endptr66 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %48, i32 0, i32 1
  %49 = load i8*, i8** %endptr66, align 8
  %cmp67 = icmp ult i8* %47, %49
  br i1 %cmp67, label %cond.true.69, label %cond.false.73

cond.true.69:                                     ; preds = %if.then.63
  %50 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr70 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %50, i32 0, i32 0
  %51 = load i8*, i8** %cptr70, align 8
  %incdec.ptr71 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr71, i8** %cptr70, align 8
  %52 = load i8, i8* %incdec.ptr71, align 1
  %conv72 = zext i8 %52 to i32
  br label %cond.end.77

cond.false.73:                                    ; preds = %if.then.63
  %53 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %procs74 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %53, i32 0, i32 7
  %read75 = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs74, i32 0, i32 0
  %54 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %read75, align 8
  %55 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %call76 = call i32 %54(%struct.stream_s* %55)
  br label %cond.end.77

cond.end.77:                                      ; preds = %cond.false.73, %cond.true.69
  %cond78 = phi i32 [ %conv72, %cond.true.69 ], [ %call76, %cond.false.73 ]
  store i32 %cond78, i32* %d, align 4
  %56 = load i32, i32* %d, align 4
  %cmp79 = icmp sge i32 %56, 48
  br i1 %cmp79, label %land.lhs.true.81, label %if.end.88

land.lhs.true.81:                                 ; preds = %cond.end.77
  %57 = load i32, i32* %d, align 4
  %cmp82 = icmp sle i32 %57, 55
  br i1 %cmp82, label %if.then.84, label %if.end.88

if.then.84:                                       ; preds = %land.lhs.true.81
  %58 = load i32, i32* %c, align 4
  %shl85 = shl i32 %58, 3
  %59 = load i32, i32* %d, align 4
  %add86 = add nsw i32 %shl85, %59
  %sub87 = sub nsw i32 %add86, 48
  store i32 %sub87, i32* %c, align 4
  br label %sw.epilog

if.end.88:                                        ; preds = %land.lhs.true.81, %cond.end.77
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %land.lhs.true.60, %cond.end.56
  %60 = load i32, i32* %d, align 4
  %cmp90 = icmp eq i32 %60, -1
  br i1 %cmp90, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %if.end.89
  store i32 -18, i32* %retval
  br label %return

if.end.93:                                        ; preds = %if.end.89
  %61 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr94 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %61, i32 0, i32 0
  %62 = load i8*, i8** %cptr94, align 8
  %incdec.ptr95 = getelementptr inbounds i8, i8* %62, i32 -1
  store i8* %incdec.ptr95, i8** %cptr94, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end.36
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.93, %if.then.84, %sw.bb.41, %sw.bb.40, %sw.bb.39, %sw.bb.38, %sw.bb
  br label %if.end.96

if.end.96:                                        ; preds = %sw.epilog, %land.lhs.true, %if.else.20
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %if.end.19
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %if.then.11
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98
  %63 = load i8*, i8** %ptr, align 8
  %limit100 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %da, i32 0, i32 5
  %64 = load i8*, i8** %limit100, align 8
  %cmp101 = icmp eq i8* %63, %64
  br i1 %cmp101, label %if.then.103, label %if.end.110

if.then.103:                                      ; preds = %if.end.99
  %65 = load i8*, i8** %ptr, align 8
  %next104 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %da, i32 0, i32 1
  store i8* %65, i8** %next104, align 8
  %call105 = call i32 @dynamic_grow(%struct.dynamic_area_s* %da)
  %tobool106 = icmp ne i32 %call105, 0
  br i1 %tobool106, label %if.end.108, label %if.then.107

if.then.107:                                      ; preds = %if.then.103
  store i32 -25, i32* %retval
  br label %return

if.end.108:                                       ; preds = %if.then.103
  %next109 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %da, i32 0, i32 1
  %66 = load i8*, i8** %next109, align 8
  store i8* %66, i8** %ptr, align 8
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.108, %if.end.99
  %67 = load i32, i32* %c, align 4
  %conv111 = trunc i32 %67 to i8
  %68 = load i8*, i8** %ptr, align 8
  %incdec.ptr112 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %incdec.ptr112, i8** %ptr, align 8
  store i8 %conv111, i8* %68, align 1
  br label %while.body

while.end:                                        ; preds = %if.then.18
  %69 = load i8*, i8** %ptr, align 8
  %next113 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %da, i32 0, i32 1
  store i8* %69, i8** %next113, align 8
  %70 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8
  %call114 = call i32 @mk_string(%struct.ref_s* %70, %struct.dynamic_area_s* %da)
  store i32 %call114, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.107, %if.then.92, %if.then.8, %if.then
  %71 = load i32, i32* %retval
  ret i32 %71
}

declare i8* @alloc_shrink(i8*, i32, i32, i32, i8*) #1

declare void @sread_string(%struct.stream_s*, i8*, i32) #1

declare void @alloc_free(i8*, i32, i32, i8*) #1

declare i32 @dict_lookup(%struct.ref_s*, %struct.ref_s*, %struct.ref_s*, %struct.ref_s**) #1

; Function Attrs: nounwind uwtable
define i32 @scan_number(%struct.stream_s* %s, %struct.ref_s* %pref) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stream_s*, align 8
  %pref.addr = alloca %struct.ref_s*, align 8
  %sign = alloca i32, align 4
  %ival = alloca i64, align 8
  %dval = alloca double, align 8
  %exp10 = alloca i32, align 4
  %code = alloca i32, align 4
  %c = alloca i32, align 4
  %esign = alloca i32, align 4
  %eexp = alloca i64, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8
  store %struct.ref_s* %pref, %struct.ref_s** %pref.addr, align 8
  store i32 0, i32* %sign, align 4
  store i32 0, i32* %exp10, align 4
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i32 0, i32 0
  %1 = load i8*, i8** %cptr, align 8
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %endptr = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i32 0, i32 1
  %3 = load i8*, i8** %endptr, align 8
  %cmp = icmp ult i8* %1, %3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 0
  %5 = load i8*, i8** %cptr1, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %cptr1, align 8
  %6 = load i8, i8* %incdec.ptr, align 1
  %conv = zext i8 %6 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 7
  %read = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs, i32 0, i32 0
  %8 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %read, align 8
  %9 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %call = call i32 %8(%struct.stream_s* %9)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %call, %cond.false ]
  store i32 %cond, i32* %c, align 4
  switch i32 %cond, label %sw.epilog [
    i32 43, label %sw.bb
    i32 45, label %sw.bb.16
  ]

sw.bb:                                            ; preds = %cond.end
  store i32 1, i32* %sign, align 4
  %10 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr2 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %10, i32 0, i32 0
  %11 = load i8*, i8** %cptr2, align 8
  %12 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %endptr3 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %12, i32 0, i32 1
  %13 = load i8*, i8** %endptr3, align 8
  %cmp4 = icmp ult i8* %11, %13
  br i1 %cmp4, label %cond.true.6, label %cond.false.10

cond.true.6:                                      ; preds = %sw.bb
  %14 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr7 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %14, i32 0, i32 0
  %15 = load i8*, i8** %cptr7, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr8, i8** %cptr7, align 8
  %16 = load i8, i8* %incdec.ptr8, align 1
  %conv9 = zext i8 %16 to i32
  br label %cond.end.14

cond.false.10:                                    ; preds = %sw.bb
  %17 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %procs11 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %17, i32 0, i32 7
  %read12 = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs11, i32 0, i32 0
  %18 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %read12, align 8
  %19 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %call13 = call i32 %18(%struct.stream_s* %19)
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.10, %cond.true.6
  %cond15 = phi i32 [ %conv9, %cond.true.6 ], [ %call13, %cond.false.10 ]
  store i32 %cond15, i32* %c, align 4
  br label %sw.epilog

sw.bb.16:                                         ; preds = %cond.end
  store i32 -1, i32* %sign, align 4
  %20 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr17 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %20, i32 0, i32 0
  %21 = load i8*, i8** %cptr17, align 8
  %22 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %endptr18 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %22, i32 0, i32 1
  %23 = load i8*, i8** %endptr18, align 8
  %cmp19 = icmp ult i8* %21, %23
  br i1 %cmp19, label %cond.true.21, label %cond.false.25

cond.true.21:                                     ; preds = %sw.bb.16
  %24 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr22 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %24, i32 0, i32 0
  %25 = load i8*, i8** %cptr22, align 8
  %incdec.ptr23 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr23, i8** %cptr22, align 8
  %26 = load i8, i8* %incdec.ptr23, align 1
  %conv24 = zext i8 %26 to i32
  br label %cond.end.29

cond.false.25:                                    ; preds = %sw.bb.16
  %27 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %procs26 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %27, i32 0, i32 7
  %read27 = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs26, i32 0, i32 0
  %28 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %read27, align 8
  %29 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %call28 = call i32 %28(%struct.stream_s* %29)
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.false.25, %cond.true.21
  %cond30 = phi i32 [ %conv24, %cond.true.21 ], [ %call28, %cond.false.25 ]
  store i32 %cond30, i32* %c, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end, %cond.end.29, %cond.end.14
  %30 = load i32, i32* %c, align 4
  %idxprom = sext i32 %30 to i64
  %call31 = call i16** @__ctype_b_loc() #4
  %31 = load i16*, i16** %call31, align 8
  %arrayidx = getelementptr inbounds i16, i16* %31, i64 %idxprom
  %32 = load i16, i16* %arrayidx, align 2
  %conv32 = zext i16 %32 to i32
  %and = and i32 %conv32, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.58, label %if.then

if.then:                                          ; preds = %sw.epilog
  %33 = load i32, i32* %c, align 4
  %cmp33 = icmp ne i32 %33, 46
  br i1 %cmp33, label %if.then.35, label %if.end

if.then.35:                                       ; preds = %if.then
  store i32 -18, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %34 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr36 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %34, i32 0, i32 0
  %35 = load i8*, i8** %cptr36, align 8
  %36 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %endptr37 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %36, i32 0, i32 1
  %37 = load i8*, i8** %endptr37, align 8
  %cmp38 = icmp ult i8* %35, %37
  br i1 %cmp38, label %cond.true.40, label %cond.false.44

cond.true.40:                                     ; preds = %if.end
  %38 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr41 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %38, i32 0, i32 0
  %39 = load i8*, i8** %cptr41, align 8
  %incdec.ptr42 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr42, i8** %cptr41, align 8
  %40 = load i8, i8* %incdec.ptr42, align 1
  %conv43 = zext i8 %40 to i32
  br label %cond.end.48

cond.false.44:                                    ; preds = %if.end
  %41 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %procs45 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %41, i32 0, i32 7
  %read46 = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs45, i32 0, i32 0
  %42 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %read46, align 8
  %43 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %call47 = call i32 %42(%struct.stream_s* %43)
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.false.44, %cond.true.40
  %cond49 = phi i32 [ %conv43, %cond.true.40 ], [ %call47, %cond.false.44 ]
  store i32 %cond49, i32* %c, align 4
  %44 = load i32, i32* %c, align 4
  %idxprom50 = sext i32 %44 to i64
  %call51 = call i16** @__ctype_b_loc() #4
  %45 = load i16*, i16** %call51, align 8
  %arrayidx52 = getelementptr inbounds i16, i16* %45, i64 %idxprom50
  %46 = load i16, i16* %arrayidx52, align 2
  %conv53 = zext i16 %46 to i32
  %and54 = and i32 %conv53, 2048
  %tobool55 = icmp ne i32 %and54, 0
  br i1 %tobool55, label %if.end.57, label %if.then.56

if.then.56:                                       ; preds = %cond.end.48
  store i32 -18, i32* %retval
  br label %return

if.end.57:                                        ; preds = %cond.end.48
  store i64 0, i64* %ival, align 8
  br label %fi

if.end.58:                                        ; preds = %sw.epilog
  %47 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr59 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %47, i32 0, i32 0
  %48 = load i8*, i8** %cptr59, align 8
  %incdec.ptr60 = getelementptr inbounds i8, i8* %48, i32 -1
  store i8* %incdec.ptr60, i8** %cptr59, align 8
  %49 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %call61 = call i32 @scan_int(%struct.stream_s* %49, i32 10, i64* %ival, double* %dval)
  store i32 %call61, i32* %code, align 4
  %cmp62 = icmp ne i32 %call61, 0
  br i1 %cmp62, label %if.then.64, label %if.end.106

if.then.64:                                       ; preds = %if.end.58
  %50 = load i32, i32* %code, align 4
  %cmp65 = icmp slt i32 %50, 0
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.then.64
  %51 = load i32, i32* %code, align 4
  store i32 %51, i32* %retval
  br label %return

if.end.68:                                        ; preds = %if.then.64
  %52 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr69 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %52, i32 0, i32 0
  %53 = load i8*, i8** %cptr69, align 8
  %54 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %endptr70 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %54, i32 0, i32 1
  %55 = load i8*, i8** %endptr70, align 8
  %cmp71 = icmp ult i8* %53, %55
  br i1 %cmp71, label %cond.true.73, label %cond.false.77

cond.true.73:                                     ; preds = %if.end.68
  %56 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr74 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %56, i32 0, i32 0
  %57 = load i8*, i8** %cptr74, align 8
  %incdec.ptr75 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %incdec.ptr75, i8** %cptr74, align 8
  %58 = load i8, i8* %incdec.ptr75, align 1
  %conv76 = zext i8 %58 to i32
  br label %cond.end.81

cond.false.77:                                    ; preds = %if.end.68
  %59 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %procs78 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %59, i32 0, i32 7
  %read79 = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs78, i32 0, i32 0
  %60 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %read79, align 8
  %61 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %call80 = call i32 %60(%struct.stream_s* %61)
  br label %cond.end.81

cond.end.81:                                      ; preds = %cond.false.77, %cond.true.73
  %cond82 = phi i32 [ %conv76, %cond.true.73 ], [ %call80, %cond.false.77 ]
  store i32 %cond82, i32* %c, align 4
  switch i32 %cond82, label %sw.default [
    i32 46, label %sw.bb.83
    i32 -1, label %sw.bb.98
  ]

sw.default:                                       ; preds = %cond.end.81
  store i32 -18, i32* %retval
  br label %return

sw.bb.83:                                         ; preds = %cond.end.81
  %62 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr84 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %62, i32 0, i32 0
  %63 = load i8*, i8** %cptr84, align 8
  %64 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %endptr85 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %64, i32 0, i32 1
  %65 = load i8*, i8** %endptr85, align 8
  %cmp86 = icmp ult i8* %63, %65
  br i1 %cmp86, label %cond.true.88, label %cond.false.92

cond.true.88:                                     ; preds = %sw.bb.83
  %66 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr89 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %66, i32 0, i32 0
  %67 = load i8*, i8** %cptr89, align 8
  %incdec.ptr90 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %incdec.ptr90, i8** %cptr89, align 8
  %68 = load i8, i8* %incdec.ptr90, align 1
  %conv91 = zext i8 %68 to i32
  br label %cond.end.96

cond.false.92:                                    ; preds = %sw.bb.83
  %69 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %procs93 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %69, i32 0, i32 7
  %read94 = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs93, i32 0, i32 0
  %70 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %read94, align 8
  %71 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %call95 = call i32 %70(%struct.stream_s* %71)
  br label %cond.end.96

cond.end.96:                                      ; preds = %cond.false.92, %cond.true.88
  %cond97 = phi i32 [ %conv91, %cond.true.88 ], [ %call95, %cond.false.92 ]
  store i32 %cond97, i32* %c, align 4
  br label %fd

sw.bb.98:                                         ; preds = %cond.end.81
  %72 = load i32, i32* %sign, align 4
  %cmp99 = icmp slt i32 %72, 0
  br i1 %cmp99, label %cond.true.101, label %cond.false.102

cond.true.101:                                    ; preds = %sw.bb.98
  %73 = load double, double* %dval, align 8
  %sub = fsub double -0.000000e+00, %73
  br label %cond.end.103

cond.false.102:                                   ; preds = %sw.bb.98
  %74 = load double, double* %dval, align 8
  br label %cond.end.103

cond.end.103:                                     ; preds = %cond.false.102, %cond.true.101
  %cond104 = phi double [ %sub, %cond.true.101 ], [ %74, %cond.false.102 ]
  %conv105 = fptrunc double %cond104 to float
  %75 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %75, i32 0, i32 0
  %realval = bitcast %union.v* %value to float*
  store float %conv105, float* %realval, align 4
  %76 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %76, i32 0, i32 1
  store i16 44, i16* %type_attrs, align 2
  store i32 0, i32* %retval
  br label %return

if.end.106:                                       ; preds = %if.end.58
  %77 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr107 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %77, i32 0, i32 0
  %78 = load i8*, i8** %cptr107, align 8
  %79 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %endptr108 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %79, i32 0, i32 1
  %80 = load i8*, i8** %endptr108, align 8
  %cmp109 = icmp ult i8* %78, %80
  br i1 %cmp109, label %cond.true.111, label %cond.false.115

cond.true.111:                                    ; preds = %if.end.106
  %81 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr112 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %81, i32 0, i32 0
  %82 = load i8*, i8** %cptr112, align 8
  %incdec.ptr113 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %incdec.ptr113, i8** %cptr112, align 8
  %83 = load i8, i8* %incdec.ptr113, align 1
  %conv114 = zext i8 %83 to i32
  br label %cond.end.119

cond.false.115:                                   ; preds = %if.end.106
  %84 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %procs116 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %84, i32 0, i32 7
  %read117 = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs116, i32 0, i32 0
  %85 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %read117, align 8
  %86 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %call118 = call i32 %85(%struct.stream_s* %86)
  br label %cond.end.119

cond.end.119:                                     ; preds = %cond.false.115, %cond.true.111
  %cond120 = phi i32 [ %conv114, %cond.true.111 ], [ %call118, %cond.false.115 ]
  store i32 %cond120, i32* %c, align 4
  switch i32 %cond120, label %sw.default.121 [
    i32 46, label %sw.bb.122
    i32 35, label %sw.bb.137
    i32 -1, label %sw.bb.169
  ]

sw.default.121:                                   ; preds = %cond.end.119
  store i32 -18, i32* %retval
  br label %return

sw.bb.122:                                        ; preds = %cond.end.119
  %87 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr123 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %87, i32 0, i32 0
  %88 = load i8*, i8** %cptr123, align 8
  %89 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %endptr124 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %89, i32 0, i32 1
  %90 = load i8*, i8** %endptr124, align 8
  %cmp125 = icmp ult i8* %88, %90
  br i1 %cmp125, label %cond.true.127, label %cond.false.131

cond.true.127:                                    ; preds = %sw.bb.122
  %91 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr128 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %91, i32 0, i32 0
  %92 = load i8*, i8** %cptr128, align 8
  %incdec.ptr129 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %incdec.ptr129, i8** %cptr128, align 8
  %93 = load i8, i8* %incdec.ptr129, align 1
  %conv130 = zext i8 %93 to i32
  br label %cond.end.135

cond.false.131:                                   ; preds = %sw.bb.122
  %94 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %procs132 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %94, i32 0, i32 7
  %read133 = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs132, i32 0, i32 0
  %95 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %read133, align 8
  %96 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %call134 = call i32 %95(%struct.stream_s* %96)
  br label %cond.end.135

cond.end.135:                                     ; preds = %cond.false.131, %cond.true.127
  %cond136 = phi i32 [ %conv130, %cond.true.127 ], [ %call134, %cond.false.131 ]
  store i32 %cond136, i32* %c, align 4
  br label %fi

sw.bb.137:                                        ; preds = %cond.end.119
  %97 = load i32, i32* %sign, align 4
  %tobool138 = icmp ne i32 %97, 0
  br i1 %tobool138, label %if.then.144, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.137
  %98 = load i64, i64* %ival, align 8
  %cmp139 = icmp slt i64 %98, 2
  br i1 %cmp139, label %if.then.144, label %lor.lhs.false.141

lor.lhs.false.141:                                ; preds = %lor.lhs.false
  %99 = load i64, i64* %ival, align 8
  %cmp142 = icmp sgt i64 %99, 36
  br i1 %cmp142, label %if.then.144, label %if.end.145

if.then.144:                                      ; preds = %lor.lhs.false.141, %lor.lhs.false, %sw.bb.137
  store i32 -18, i32* %retval
  br label %return

if.end.145:                                       ; preds = %lor.lhs.false.141
  %100 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %101 = load i64, i64* %ival, align 8
  %conv146 = trunc i64 %101 to i32
  %call147 = call i32 @scan_int(%struct.stream_s* %100, i32 %conv146, i64* %ival, double* null)
  store i32 %call147, i32* %code, align 4
  %102 = load i32, i32* %code, align 4
  %tobool148 = icmp ne i32 %102, 0
  br i1 %tobool148, label %if.then.149, label %if.end.150

if.then.149:                                      ; preds = %if.end.145
  %103 = load i32, i32* %code, align 4
  store i32 %103, i32* %retval
  br label %return

if.end.150:                                       ; preds = %if.end.145
  %104 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr151 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %104, i32 0, i32 0
  %105 = load i8*, i8** %cptr151, align 8
  %106 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %endptr152 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %106, i32 0, i32 1
  %107 = load i8*, i8** %endptr152, align 8
  %cmp153 = icmp ult i8* %105, %107
  br i1 %cmp153, label %cond.true.155, label %cond.false.159

cond.true.155:                                    ; preds = %if.end.150
  %108 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr156 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %108, i32 0, i32 0
  %109 = load i8*, i8** %cptr156, align 8
  %incdec.ptr157 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %incdec.ptr157, i8** %cptr156, align 8
  %110 = load i8, i8* %incdec.ptr157, align 1
  %conv158 = zext i8 %110 to i32
  br label %cond.end.163

cond.false.159:                                   ; preds = %if.end.150
  %111 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %procs160 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %111, i32 0, i32 7
  %read161 = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs160, i32 0, i32 0
  %112 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %read161, align 8
  %113 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %call162 = call i32 %112(%struct.stream_s* %113)
  br label %cond.end.163

cond.end.163:                                     ; preds = %cond.false.159, %cond.true.155
  %cond164 = phi i32 [ %conv158, %cond.true.155 ], [ %call162, %cond.false.159 ]
  %cmp165 = icmp ne i32 %cond164, -1
  br i1 %cmp165, label %if.then.167, label %if.end.168

if.then.167:                                      ; preds = %cond.end.163
  store i32 -18, i32* %retval
  br label %return

if.end.168:                                       ; preds = %cond.end.163
  br label %sw.bb.169

sw.bb.169:                                        ; preds = %cond.end.119, %if.end.168
  br label %sw.epilog.170

sw.epilog.170:                                    ; preds = %sw.bb.169
  %114 = load i32, i32* %sign, align 4
  %cmp171 = icmp slt i32 %114, 0
  br i1 %cmp171, label %cond.true.173, label %cond.false.175

cond.true.173:                                    ; preds = %sw.epilog.170
  %115 = load i64, i64* %ival, align 8
  %sub174 = sub nsw i64 0, %115
  br label %cond.end.176

cond.false.175:                                   ; preds = %sw.epilog.170
  %116 = load i64, i64* %ival, align 8
  br label %cond.end.176

cond.end.176:                                     ; preds = %cond.false.175, %cond.true.173
  %cond177 = phi i64 [ %sub174, %cond.true.173 ], [ %116, %cond.false.175 ]
  %117 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8
  %value178 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %117, i32 0, i32 0
  %intval = bitcast %union.v* %value178 to i64*
  store i64 %cond177, i64* %intval, align 8
  %118 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8
  %type_attrs179 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %118, i32 0, i32 1
  store i16 20, i16* %type_attrs179, align 2
  store i32 0, i32* %retval
  br label %return

fi:                                               ; preds = %cond.end.135, %if.end.57
  br label %while.cond

while.cond:                                       ; preds = %cond.end.205, %fi
  %119 = load i32, i32* %c, align 4
  %idxprom180 = sext i32 %119 to i64
  %call181 = call i16** @__ctype_b_loc() #4
  %120 = load i16*, i16** %call181, align 8
  %arrayidx182 = getelementptr inbounds i16, i16* %120, i64 %idxprom180
  %121 = load i16, i16* %arrayidx182, align 2
  %conv183 = zext i16 %121 to i32
  %and184 = and i32 %conv183, 2048
  %tobool185 = icmp ne i32 %and184, 0
  br i1 %tobool185, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %122 = load i64, i64* %ival, align 8
  %cmp186 = icmp uge i64 %122, 922337203685477579
  br i1 %cmp186, label %if.then.188, label %if.end.190

if.then.188:                                      ; preds = %while.body
  %123 = load i64, i64* %ival, align 8
  %conv189 = sitofp i64 %123 to double
  store double %conv189, double* %dval, align 8
  br label %fd

if.end.190:                                       ; preds = %while.body
  %124 = load i64, i64* %ival, align 8
  %mul = mul nsw i64 %124, 10
  %125 = load i32, i32* %c, align 4
  %sub191 = sub nsw i32 %125, 48
  %conv192 = sext i32 %sub191 to i64
  %add = add nsw i64 %mul, %conv192
  store i64 %add, i64* %ival, align 8
  %126 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr193 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %126, i32 0, i32 0
  %127 = load i8*, i8** %cptr193, align 8
  %128 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %endptr194 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %128, i32 0, i32 1
  %129 = load i8*, i8** %endptr194, align 8
  %cmp195 = icmp ult i8* %127, %129
  br i1 %cmp195, label %cond.true.197, label %cond.false.201

cond.true.197:                                    ; preds = %if.end.190
  %130 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr198 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %130, i32 0, i32 0
  %131 = load i8*, i8** %cptr198, align 8
  %incdec.ptr199 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %incdec.ptr199, i8** %cptr198, align 8
  %132 = load i8, i8* %incdec.ptr199, align 1
  %conv200 = zext i8 %132 to i32
  br label %cond.end.205

cond.false.201:                                   ; preds = %if.end.190
  %133 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %procs202 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %133, i32 0, i32 7
  %read203 = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs202, i32 0, i32 0
  %134 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %read203, align 8
  %135 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %call204 = call i32 %134(%struct.stream_s* %135)
  br label %cond.end.205

cond.end.205:                                     ; preds = %cond.false.201, %cond.true.197
  %cond206 = phi i32 [ %conv200, %cond.true.197 ], [ %call204, %cond.false.201 ]
  store i32 %cond206, i32* %c, align 4
  %136 = load i32, i32* %exp10, align 4
  %dec = add nsw i32 %136, -1
  store i32 %dec, i32* %exp10, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %137 = load i32, i32* %sign, align 4
  %cmp207 = icmp slt i32 %137, 0
  br i1 %cmp207, label %if.then.209, label %if.end.211

if.then.209:                                      ; preds = %while.end
  %138 = load i64, i64* %ival, align 8
  %sub210 = sub nsw i64 0, %138
  store i64 %sub210, i64* %ival, align 8
  br label %if.end.211

if.end.211:                                       ; preds = %if.then.209, %while.end
  %139 = load i32, i32* %c, align 4
  %cmp212 = icmp eq i32 %139, 101
  br i1 %cmp212, label %if.end.228, label %lor.lhs.false.214

lor.lhs.false.214:                                ; preds = %if.end.211
  %140 = load i32, i32* %c, align 4
  %cmp215 = icmp eq i32 %140, 69
  br i1 %cmp215, label %if.end.228, label %lor.lhs.false.217

lor.lhs.false.217:                                ; preds = %lor.lhs.false.214
  %141 = load i32, i32* %exp10, align 4
  %cmp218 = icmp slt i32 %141, -6
  br i1 %cmp218, label %if.end.228, label %if.then.220

if.then.220:                                      ; preds = %lor.lhs.false.217
  %142 = load i64, i64* %ival, align 8
  %conv221 = sitofp i64 %142 to float
  %143 = load i32, i32* %exp10, align 4
  %sub222 = sub nsw i32 0, %143
  %idxprom223 = sext i32 %sub222 to i64
  %arrayidx224 = getelementptr inbounds [7 x float], [7 x float]* @scan_number.powers_10, i32 0, i64 %idxprom223
  %144 = load float, float* %arrayidx224, align 4
  %div = fdiv float %conv221, %144
  %145 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8
  %value225 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %145, i32 0, i32 0
  %realval226 = bitcast %union.v* %value225 to float*
  store float %div, float* %realval226, align 4
  %146 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8
  %type_attrs227 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %146, i32 0, i32 1
  store i16 44, i16* %type_attrs227, align 2
  store i32 0, i32* %retval
  br label %return

if.end.228:                                       ; preds = %lor.lhs.false.217, %lor.lhs.false.214, %if.end.211
  %147 = load i64, i64* %ival, align 8
  %conv229 = sitofp i64 %147 to double
  store double %conv229, double* %dval, align 8
  br label %fe

fd:                                               ; preds = %if.then.188, %cond.end.96
  br label %while.cond.230

while.cond.230:                                   ; preds = %cond.end.254, %fd
  %148 = load i32, i32* %c, align 4
  %idxprom231 = sext i32 %148 to i64
  %call232 = call i16** @__ctype_b_loc() #4
  %149 = load i16*, i16** %call232, align 8
  %arrayidx233 = getelementptr inbounds i16, i16* %149, i64 %idxprom231
  %150 = load i16, i16* %arrayidx233, align 2
  %conv234 = zext i16 %150 to i32
  %and235 = and i32 %conv234, 2048
  %tobool236 = icmp ne i32 %and235, 0
  br i1 %tobool236, label %while.body.237, label %while.end.257

while.body.237:                                   ; preds = %while.cond.230
  %151 = load double, double* %dval, align 8
  %mul238 = fmul double %151, 1.000000e+01
  %152 = load i32, i32* %c, align 4
  %sub239 = sub nsw i32 %152, 48
  %conv240 = sitofp i32 %sub239 to double
  %add241 = fadd double %mul238, %conv240
  store double %add241, double* %dval, align 8
  %153 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr242 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %153, i32 0, i32 0
  %154 = load i8*, i8** %cptr242, align 8
  %155 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %endptr243 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %155, i32 0, i32 1
  %156 = load i8*, i8** %endptr243, align 8
  %cmp244 = icmp ult i8* %154, %156
  br i1 %cmp244, label %cond.true.246, label %cond.false.250

cond.true.246:                                    ; preds = %while.body.237
  %157 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr247 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %157, i32 0, i32 0
  %158 = load i8*, i8** %cptr247, align 8
  %incdec.ptr248 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %incdec.ptr248, i8** %cptr247, align 8
  %159 = load i8, i8* %incdec.ptr248, align 1
  %conv249 = zext i8 %159 to i32
  br label %cond.end.254

cond.false.250:                                   ; preds = %while.body.237
  %160 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %procs251 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %160, i32 0, i32 7
  %read252 = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs251, i32 0, i32 0
  %161 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %read252, align 8
  %162 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %call253 = call i32 %161(%struct.stream_s* %162)
  br label %cond.end.254

cond.end.254:                                     ; preds = %cond.false.250, %cond.true.246
  %cond255 = phi i32 [ %conv249, %cond.true.246 ], [ %call253, %cond.false.250 ]
  store i32 %cond255, i32* %c, align 4
  %163 = load i32, i32* %exp10, align 4
  %dec256 = add nsw i32 %163, -1
  store i32 %dec256, i32* %exp10, align 4
  br label %while.cond.230

while.end.257:                                    ; preds = %while.cond.230
  %164 = load i32, i32* %sign, align 4
  %cmp258 = icmp slt i32 %164, 0
  br i1 %cmp258, label %if.then.260, label %if.end.262

if.then.260:                                      ; preds = %while.end.257
  %165 = load double, double* %dval, align 8
  %sub261 = fsub double -0.000000e+00, %165
  store double %sub261, double* %dval, align 8
  br label %if.end.262

if.end.262:                                       ; preds = %if.then.260, %while.end.257
  br label %fe

fe:                                               ; preds = %if.end.262, %if.end.228
  %166 = load i32, i32* %c, align 4
  %cmp263 = icmp eq i32 %166, 101
  br i1 %cmp263, label %if.then.268, label %lor.lhs.false.265

lor.lhs.false.265:                                ; preds = %fe
  %167 = load i32, i32* %c, align 4
  %cmp266 = icmp eq i32 %167, 69
  br i1 %cmp266, label %if.then.268, label %if.end.322

if.then.268:                                      ; preds = %lor.lhs.false.265, %fe
  store i32 0, i32* %esign, align 4
  %168 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr269 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %168, i32 0, i32 0
  %169 = load i8*, i8** %cptr269, align 8
  %170 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %endptr270 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %170, i32 0, i32 1
  %171 = load i8*, i8** %endptr270, align 8
  %cmp271 = icmp ult i8* %169, %171
  br i1 %cmp271, label %cond.true.273, label %cond.false.277

cond.true.273:                                    ; preds = %if.then.268
  %172 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr274 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %172, i32 0, i32 0
  %173 = load i8*, i8** %cptr274, align 8
  %incdec.ptr275 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %incdec.ptr275, i8** %cptr274, align 8
  %174 = load i8, i8* %incdec.ptr275, align 1
  %conv276 = zext i8 %174 to i32
  br label %cond.end.281

cond.false.277:                                   ; preds = %if.then.268
  %175 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %procs278 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %175, i32 0, i32 7
  %read279 = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs278, i32 0, i32 0
  %176 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %read279, align 8
  %177 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %call280 = call i32 %176(%struct.stream_s* %177)
  br label %cond.end.281

cond.end.281:                                     ; preds = %cond.false.277, %cond.true.273
  %cond282 = phi i32 [ %conv276, %cond.true.273 ], [ %call280, %cond.false.277 ]
  store i32 %cond282, i32* %c, align 4
  switch i32 %cond282, label %sw.default.285 [
    i32 43, label %sw.bb.283
    i32 45, label %sw.bb.284
  ]

sw.bb.283:                                        ; preds = %cond.end.281
  br label %sw.epilog.288

sw.bb.284:                                        ; preds = %cond.end.281
  store i32 1, i32* %esign, align 4
  br label %sw.epilog.288

sw.default.285:                                   ; preds = %cond.end.281
  %178 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr286 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %178, i32 0, i32 0
  %179 = load i8*, i8** %cptr286, align 8
  %incdec.ptr287 = getelementptr inbounds i8, i8* %179, i32 -1
  store i8* %incdec.ptr287, i8** %cptr286, align 8
  br label %sw.epilog.288

sw.epilog.288:                                    ; preds = %sw.default.285, %sw.bb.284, %sw.bb.283
  %180 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %call289 = call i32 @scan_int(%struct.stream_s* %180, i32 10, i64* %eexp, double* null)
  store i32 %call289, i32* %code, align 4
  %181 = load i32, i32* %code, align 4
  %cmp290 = icmp slt i32 %181, 0
  br i1 %cmp290, label %if.then.292, label %if.end.293

if.then.292:                                      ; preds = %sw.epilog.288
  %182 = load i32, i32* %code, align 4
  store i32 %182, i32* %retval
  br label %return

if.end.293:                                       ; preds = %sw.epilog.288
  %183 = load i32, i32* %code, align 4
  %cmp294 = icmp sgt i32 %183, 0
  br i1 %cmp294, label %if.then.299, label %lor.lhs.false.296

lor.lhs.false.296:                                ; preds = %if.end.293
  %184 = load i64, i64* %eexp, align 8
  %cmp297 = icmp sgt i64 %184, 999
  br i1 %cmp297, label %if.then.299, label %if.end.300

if.then.299:                                      ; preds = %lor.lhs.false.296, %if.end.293
  store i32 -13, i32* %retval
  br label %return

if.end.300:                                       ; preds = %lor.lhs.false.296
  %185 = load i32, i32* %esign, align 4
  %tobool301 = icmp ne i32 %185, 0
  br i1 %tobool301, label %if.then.302, label %if.else

if.then.302:                                      ; preds = %if.end.300
  %186 = load i64, i64* %eexp, align 8
  %conv303 = trunc i64 %186 to i32
  %187 = load i32, i32* %exp10, align 4
  %sub304 = sub nsw i32 %187, %conv303
  store i32 %sub304, i32* %exp10, align 4
  br label %if.end.307

if.else:                                          ; preds = %if.end.300
  %188 = load i64, i64* %eexp, align 8
  %conv305 = trunc i64 %188 to i32
  %189 = load i32, i32* %exp10, align 4
  %add306 = add nsw i32 %189, %conv305
  store i32 %add306, i32* %exp10, align 4
  br label %if.end.307

if.end.307:                                       ; preds = %if.else, %if.then.302
  %190 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr308 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %190, i32 0, i32 0
  %191 = load i8*, i8** %cptr308, align 8
  %192 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %endptr309 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %192, i32 0, i32 1
  %193 = load i8*, i8** %endptr309, align 8
  %cmp310 = icmp ult i8* %191, %193
  br i1 %cmp310, label %cond.true.312, label %cond.false.316

cond.true.312:                                    ; preds = %if.end.307
  %194 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr313 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %194, i32 0, i32 0
  %195 = load i8*, i8** %cptr313, align 8
  %incdec.ptr314 = getelementptr inbounds i8, i8* %195, i32 1
  store i8* %incdec.ptr314, i8** %cptr313, align 8
  %196 = load i8, i8* %incdec.ptr314, align 1
  %conv315 = zext i8 %196 to i32
  br label %cond.end.320

cond.false.316:                                   ; preds = %if.end.307
  %197 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %procs317 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %197, i32 0, i32 7
  %read318 = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs317, i32 0, i32 0
  %198 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %read318, align 8
  %199 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %call319 = call i32 %198(%struct.stream_s* %199)
  br label %cond.end.320

cond.end.320:                                     ; preds = %cond.false.316, %cond.true.312
  %cond321 = phi i32 [ %conv315, %cond.true.312 ], [ %call319, %cond.false.316 ]
  store i32 %cond321, i32* %c, align 4
  br label %if.end.322

if.end.322:                                       ; preds = %cond.end.320, %lor.lhs.false.265
  %200 = load i32, i32* %c, align 4
  %cmp323 = icmp ne i32 %200, -1
  br i1 %cmp323, label %if.then.325, label %if.end.326

if.then.325:                                      ; preds = %if.end.322
  store i32 -18, i32* %retval
  br label %return

if.end.326:                                       ; preds = %if.end.322
  %201 = load i32, i32* %exp10, align 4
  %cmp327 = icmp sgt i32 %201, 0
  br i1 %cmp327, label %if.then.329, label %if.else.346

if.then.329:                                      ; preds = %if.end.326
  br label %while.cond.330

while.cond.330:                                   ; preds = %while.body.333, %if.then.329
  %202 = load i32, i32* %exp10, align 4
  %cmp331 = icmp sgt i32 %202, 6
  br i1 %cmp331, label %while.body.333, label %while.end.337

while.body.333:                                   ; preds = %while.cond.330
  %203 = load float, float* getelementptr inbounds ([7 x float], [7 x float]* @scan_number.powers_10, i32 0, i64 6), align 4
  %conv334 = fpext float %203 to double
  %204 = load double, double* %dval, align 8
  %mul335 = fmul double %204, %conv334
  store double %mul335, double* %dval, align 8
  %205 = load i32, i32* %exp10, align 4
  %sub336 = sub nsw i32 %205, 6
  store i32 %sub336, i32* %exp10, align 4
  br label %while.cond.330

while.end.337:                                    ; preds = %while.cond.330
  %206 = load i32, i32* %exp10, align 4
  %cmp338 = icmp sgt i32 %206, 0
  br i1 %cmp338, label %if.then.340, label %if.end.345

if.then.340:                                      ; preds = %while.end.337
  %207 = load i32, i32* %exp10, align 4
  %idxprom341 = sext i32 %207 to i64
  %arrayidx342 = getelementptr inbounds [7 x float], [7 x float]* @scan_number.powers_10, i32 0, i64 %idxprom341
  %208 = load float, float* %arrayidx342, align 4
  %conv343 = fpext float %208 to double
  %209 = load double, double* %dval, align 8
  %mul344 = fmul double %209, %conv343
  store double %mul344, double* %dval, align 8
  br label %if.end.345

if.end.345:                                       ; preds = %if.then.340, %while.end.337
  br label %if.end.368

if.else.346:                                      ; preds = %if.end.326
  %210 = load i32, i32* %exp10, align 4
  %cmp347 = icmp slt i32 %210, 0
  br i1 %cmp347, label %if.then.349, label %if.end.367

if.then.349:                                      ; preds = %if.else.346
  br label %while.cond.350

while.cond.350:                                   ; preds = %while.body.353, %if.then.349
  %211 = load i32, i32* %exp10, align 4
  %cmp351 = icmp slt i32 %211, -6
  br i1 %cmp351, label %while.body.353, label %while.end.357

while.body.353:                                   ; preds = %while.cond.350
  %212 = load float, float* getelementptr inbounds ([7 x float], [7 x float]* @scan_number.powers_10, i32 0, i64 6), align 4
  %conv354 = fpext float %212 to double
  %213 = load double, double* %dval, align 8
  %div355 = fdiv double %213, %conv354
  store double %div355, double* %dval, align 8
  %214 = load i32, i32* %exp10, align 4
  %add356 = add nsw i32 %214, 6
  store i32 %add356, i32* %exp10, align 4
  br label %while.cond.350

while.end.357:                                    ; preds = %while.cond.350
  %215 = load i32, i32* %exp10, align 4
  %cmp358 = icmp slt i32 %215, 0
  br i1 %cmp358, label %if.then.360, label %if.end.366

if.then.360:                                      ; preds = %while.end.357
  %216 = load i32, i32* %exp10, align 4
  %sub361 = sub nsw i32 0, %216
  %idxprom362 = sext i32 %sub361 to i64
  %arrayidx363 = getelementptr inbounds [7 x float], [7 x float]* @scan_number.powers_10, i32 0, i64 %idxprom362
  %217 = load float, float* %arrayidx363, align 4
  %conv364 = fpext float %217 to double
  %218 = load double, double* %dval, align 8
  %div365 = fdiv double %218, %conv364
  store double %div365, double* %dval, align 8
  br label %if.end.366

if.end.366:                                       ; preds = %if.then.360, %while.end.357
  br label %if.end.367

if.end.367:                                       ; preds = %if.end.366, %if.else.346
  br label %if.end.368

if.end.368:                                       ; preds = %if.end.367, %if.end.345
  %219 = load double, double* %dval, align 8
  %conv369 = fptrunc double %219 to float
  %220 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8
  %value370 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %220, i32 0, i32 0
  %realval371 = bitcast %union.v* %value370 to float*
  store float %conv369, float* %realval371, align 4
  %221 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8
  %type_attrs372 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %221, i32 0, i32 1
  store i16 44, i16* %type_attrs372, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.368, %if.then.325, %if.then.299, %if.then.292, %if.then.220, %cond.end.176, %if.then.167, %if.then.149, %if.then.144, %sw.default.121, %cond.end.103, %sw.default, %if.then.67, %if.then.56, %if.then.35
  %222 = load i32, i32* %retval
  ret i32 %222
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #3

; Function Attrs: nounwind uwtable
define i32 @scan_int(%struct.stream_s* %s, i32 %radix, i64* %pval, double* %pdval) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stream_s*, align 8
  %radix.addr = alloca i32, align 4
  %pval.addr = alloca i64*, align 8
  %pdval.addr = alloca double*, align 8
  %ival = alloca i32, align 4
  %imax = alloca i32, align 4
  %irem = alloca i32, align 4
  %dval = alloca double, align 8
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %decoder = alloca i8*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8
  store i32 %radix, i32* %radix.addr, align 4
  store i64* %pval, i64** %pval.addr, align 8
  store double* %pdval, double** %pdval.addr, align 8
  store i32 0, i32* %ival, align 4
  store i8* getelementptr inbounds ([257 x i8], [257 x i8]* @scan_char_array, i32 0, i64 1), i8** %decoder, align 8
  %0 = load i32, i32* %radix.addr, align 4
  %cmp = icmp eq i32 %0, 10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 214748364, i32* %imax, align 4
  store i32 7, i32* %irem, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %radix.addr, align 4
  %div = udiv i32 2147483647, %1
  store i32 %div, i32* %imax, align 4
  %2 = load i32, i32* %radix.addr, align 4
  %rem = urem i32 2147483647, %2
  store i32 %rem, i32* %irem, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.body

while.body:                                       ; preds = %if.end, %if.end.22
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr = getelementptr inbounds %struct.stream_s, %struct.stream_s* %3, i32 0, i32 0
  %4 = load i8*, i8** %cptr, align 8
  %5 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %endptr = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i32 0, i32 1
  %6 = load i8*, i8** %endptr, align 8
  %cmp1 = icmp ult i8* %4, %6
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr2 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 0
  %8 = load i8*, i8** %cptr2, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %cptr2, align 8
  %9 = load i8, i8* %incdec.ptr, align 1
  %conv = zext i8 %9 to i32
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %10 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %10, i32 0, i32 7
  %read = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs, i32 0, i32 0
  %11 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %read, align 8
  %12 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %call = call i32 %11(%struct.stream_s* %12)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %call, %cond.false ]
  store i32 %cond, i32* %c, align 4
  %13 = load i32, i32* %c, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load i8*, i8** %decoder, align 8
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 %idxprom
  %15 = load i8, i8* %arrayidx, align 1
  %conv3 = zext i8 %15 to i32
  store i32 %conv3, i32* %d, align 4
  %16 = load i32, i32* %radix.addr, align 4
  %cmp4 = icmp sge i32 %conv3, %16
  br i1 %cmp4, label %if.then.6, label %if.end.14

if.then.6:                                        ; preds = %cond.end
  %17 = load i32, i32* %c, align 4
  %cmp7 = icmp ne i32 %17, -1
  br i1 %cmp7, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.then.6
  %18 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr10 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %18, i32 0, i32 0
  %19 = load i8*, i8** %cptr10, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %19, i32 -1
  store i8* %incdec.ptr11, i8** %cptr10, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %if.then.6
  %20 = load i32, i32* %ival, align 4
  %conv13 = sext i32 %20 to i64
  %21 = load i64*, i64** %pval.addr, align 8
  store i64 %conv13, i64* %21, align 8
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %cond.end
  %22 = load i32, i32* %ival, align 4
  %23 = load i32, i32* %imax, align 4
  %cmp15 = icmp sge i32 %22, %23
  br i1 %cmp15, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %if.end.14
  %24 = load i32, i32* %ival, align 4
  %25 = load i32, i32* %imax, align 4
  %cmp17 = icmp sgt i32 %24, %25
  br i1 %cmp17, label %if.then.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %26 = load i32, i32* %d, align 4
  %27 = load i32, i32* %irem, align 4
  %cmp19 = icmp sgt i32 %26, %27
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %lor.lhs.false, %land.lhs.true
  br label %while.end

if.end.22:                                        ; preds = %lor.lhs.false, %if.end.14
  %28 = load i32, i32* %ival, align 4
  %29 = load i32, i32* %radix.addr, align 4
  %mul = mul nsw i32 %28, %29
  %30 = load i32, i32* %d, align 4
  %add = add nsw i32 %mul, %30
  store i32 %add, i32* %ival, align 4
  br label %while.body

while.end:                                        ; preds = %if.then.21
  %31 = load double*, double** %pdval.addr, align 8
  %cmp23 = icmp eq double* %31, null
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %while.end
  store i32 -13, i32* %retval
  br label %return

if.end.26:                                        ; preds = %while.end
  %32 = load i32, i32* %ival, align 4
  %conv27 = sitofp i32 %32 to double
  %33 = load i32, i32* %radix.addr, align 4
  %conv28 = sitofp i32 %33 to double
  %mul29 = fmul double %conv27, %conv28
  %34 = load i32, i32* %d, align 4
  %conv30 = sitofp i32 %34 to double
  %add31 = fadd double %mul29, %conv30
  store double %add31, double* %dval, align 8
  br label %while.body.32

while.body.32:                                    ; preds = %if.end.26, %if.end.59
  %35 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr33 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %35, i32 0, i32 0
  %36 = load i8*, i8** %cptr33, align 8
  %37 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %endptr34 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %37, i32 0, i32 1
  %38 = load i8*, i8** %endptr34, align 8
  %cmp35 = icmp ult i8* %36, %38
  br i1 %cmp35, label %cond.true.37, label %cond.false.41

cond.true.37:                                     ; preds = %while.body.32
  %39 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr38 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %39, i32 0, i32 0
  %40 = load i8*, i8** %cptr38, align 8
  %incdec.ptr39 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr39, i8** %cptr38, align 8
  %41 = load i8, i8* %incdec.ptr39, align 1
  %conv40 = zext i8 %41 to i32
  br label %cond.end.45

cond.false.41:                                    ; preds = %while.body.32
  %42 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %procs42 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %42, i32 0, i32 7
  %read43 = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs42, i32 0, i32 0
  %43 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %read43, align 8
  %44 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %call44 = call i32 %43(%struct.stream_s* %44)
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.41, %cond.true.37
  %cond46 = phi i32 [ %conv40, %cond.true.37 ], [ %call44, %cond.false.41 ]
  store i32 %cond46, i32* %c, align 4
  %45 = load i32, i32* %c, align 4
  %idxprom47 = sext i32 %45 to i64
  %46 = load i8*, i8** %decoder, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %46, i64 %idxprom47
  %47 = load i8, i8* %arrayidx48, align 1
  %conv49 = zext i8 %47 to i32
  store i32 %conv49, i32* %d, align 4
  %48 = load i32, i32* %radix.addr, align 4
  %cmp50 = icmp sge i32 %conv49, %48
  br i1 %cmp50, label %if.then.52, label %if.end.59

if.then.52:                                       ; preds = %cond.end.45
  %49 = load i32, i32* %c, align 4
  %cmp53 = icmp ne i32 %49, -1
  br i1 %cmp53, label %if.then.55, label %if.end.58

if.then.55:                                       ; preds = %if.then.52
  %50 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr56 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %50, i32 0, i32 0
  %51 = load i8*, i8** %cptr56, align 8
  %incdec.ptr57 = getelementptr inbounds i8, i8* %51, i32 -1
  store i8* %incdec.ptr57, i8** %cptr56, align 8
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.55, %if.then.52
  %52 = load double, double* %dval, align 8
  %53 = load double*, double** %pdval.addr, align 8
  store double %52, double* %53, align 8
  store i32 1, i32* %retval
  br label %return

if.end.59:                                        ; preds = %cond.end.45
  %54 = load double, double* %dval, align 8
  %55 = load i32, i32* %radix.addr, align 4
  %conv60 = sitofp i32 %55 to double
  %mul61 = fmul double %54, %conv60
  %56 = load i32, i32* %d, align 4
  %conv62 = sitofp i32 %56 to double
  %add63 = fadd double %mul61, %conv62
  store double %add63, double* %dval, align 8
  br label %while.body.32

return:                                           ; preds = %if.end.58, %if.then.25, %if.end.12
  %57 = load i32, i32* %retval
  ret i32 %57
}

; Function Attrs: nounwind uwtable
define i32 @mk_string(%struct.ref_s* %pref, %struct.dynamic_area_s* %pda) #0 {
entry:
  %retval = alloca i32, align 4
  %pref.addr = alloca %struct.ref_s*, align 8
  %pda.addr = alloca %struct.dynamic_area_s*, align 8
  %size = alloca i32, align 4
  %body = alloca i8*, align 8
  store %struct.ref_s* %pref, %struct.ref_s** %pref.addr, align 8
  store %struct.dynamic_area_s* %pda, %struct.dynamic_area_s** %pda.addr, align 8
  %0 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8
  %next = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %0, i32 0, i32 1
  %1 = load i8*, i8** %next, align 8
  %2 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8
  %base = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %2, i32 0, i32 0
  %3 = load i8*, i8** %base, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %size, align 4
  %4 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8
  %base1 = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %4, i32 0, i32 0
  %5 = load i8*, i8** %base1, align 8
  %6 = load %struct.dynamic_area_s*, %struct.dynamic_area_s** %pda.addr, align 8
  %num_elts = getelementptr inbounds %struct.dynamic_area_s, %struct.dynamic_area_s* %6, i32 0, i32 2
  %7 = load i32, i32* %num_elts, align 4
  %8 = load i32, i32* %size, align 4
  %call = call i8* @alloc_shrink(i8* %5, i32 %7, i32 %8, i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0))
  store i8* %call, i8** %body, align 8
  %9 = load i8*, i8** %body, align 8
  %cmp = icmp eq i8* %9, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %10 = load i8*, i8** %body, align 8
  %11 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %bytes = bitcast %union.v* %value to i8**
  store i8* %10, i8** %bytes, align 8
  %12 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 1
  store i16 822, i16* %type_attrs, align 2
  %13 = load i32, i32* %size, align 4
  %conv3 = trunc i32 %13 to i16
  %14 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8
  %size4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 2
  store i16 %conv3, i16* %size4, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
