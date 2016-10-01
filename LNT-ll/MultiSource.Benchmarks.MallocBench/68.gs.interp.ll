; ModuleID = './MultiSource.Benchmarks.MallocBench/68.gs.interp.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.stream_s = type { i8*, i8*, i8*, i32, i8, i8, i64, %struct.stream_procs, i32, %struct._IO_FILE*, %struct.stream_s*, i16, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*)*, i32 (%struct.stream_s*, i8)*, i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.name_s = type { %struct.name_s*, i16, i16, i8*, %struct.ref_s* }

@special_ops = global [7 x i32 (%struct.ref_s*)*] [i32 (%struct.ref_s*)* @zadd, i32 (%struct.ref_s*)* @zdup, i32 (%struct.ref_s*)* @zexch, i32 (%struct.ref_s*)* @zifelse, i32 (%struct.ref_s*)* @zle, i32 (%struct.ref_s*)* @zpop, i32 (%struct.ref_s*)* @zsub], align 16
@ostack = common global [520 x %struct.ref_s] zeroinitializer, align 16
@osbot = common global %struct.ref_s* null, align 8
@osp = common global %struct.ref_s* null, align 8
@ostop = common global %struct.ref_s* null, align 8
@osp_nargs = common global [6 x %struct.ref_s*] zeroinitializer, align 16
@estack = common global [150 x %struct.ref_s] zeroinitializer, align 16
@esp = common global %struct.ref_s* null, align 8
@estop = common global %struct.ref_s* null, align 8
@dstack = common global [20 x %struct.ref_s] zeroinitializer, align 16
@dsp = common global %struct.ref_s* null, align 8
@dstop = common global %struct.ref_s* null, align 8
@name_errordict = external global %struct.ref_s, align 8
@name_ErrorNames = external global %struct.ref_s, align 8
@error_object = common global %struct.ref_s zeroinitializer, align 8

declare i32 @zadd(%struct.ref_s*) #0

declare i32 @zdup(%struct.ref_s*) #0

declare i32 @zexch(%struct.ref_s*) #0

declare i32 @zifelse(%struct.ref_s*) #0

declare i32 @zle(%struct.ref_s*) #0

declare i32 @zpop(%struct.ref_s*) #0

declare i32 @zsub(%struct.ref_s*) #0

; Function Attrs: nounwind uwtable
define void @interp_init(i32 %ndict) #1 {
entry:
  %ndict.addr = alloca i32, align 4
  %op = alloca %struct.ref_s*, align 8
  %i = alloca i32, align 4
  store i32 %ndict, i32* %ndict.addr, align 4
  store %struct.ref_s* getelementptr inbounds ([520 x %struct.ref_s], [520 x %struct.ref_s]* @ostack, i32 0, i64 10), %struct.ref_s** @osbot, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** @osbot, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  %1 = load %struct.ref_s*, %struct.ref_s** @osbot, align 8
  %add.ptr1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i64 499
  store %struct.ref_s* %add.ptr1, %struct.ref_s** @ostop, align 8
  store %struct.ref_s* getelementptr inbounds ([520 x %struct.ref_s], [520 x %struct.ref_s]* @ostack, i32 0, i32 0), %struct.ref_s** %op, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op, align 8
  %3 = load %struct.ref_s*, %struct.ref_s** @osbot, align 8
  %cmp = icmp ult %struct.ref_s* %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %index = bitcast %union.v* %value to i16*
  store i16 0, i16* %index, align 2
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  store i16 -4, i16* %type_attrs, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %op, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %i, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.7, %for.end
  %7 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %7, 6
  br i1 %cmp3, label %for.body.4, label %for.end.8

for.body.4:                                       ; preds = %for.cond.2
  %8 = load %struct.ref_s*, %struct.ref_s** @osbot, align 8
  %9 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %9 to i64
  %add.ptr5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 %idx.ext
  %add.ptr6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr5, i64 -1
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i32 0, i64 %idxprom
  store %struct.ref_s* %add.ptr6, %struct.ref_s** %arrayidx, align 8
  br label %for.inc.7

for.inc.7:                                        ; preds = %for.body.4
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.2

for.end.8:                                        ; preds = %for.cond.2
  store %struct.ref_s* getelementptr inbounds (%struct.ref_s, %struct.ref_s* getelementptr inbounds ([150 x %struct.ref_s], [150 x %struct.ref_s]* @estack, i32 0, i32 0), i64 -1), %struct.ref_s** @esp, align 8
  store %struct.ref_s* getelementptr inbounds ([150 x %struct.ref_s], [150 x %struct.ref_s]* @estack, i32 0, i64 149), %struct.ref_s** @estop, align 8
  %12 = load i32, i32* %ndict.addr, align 4
  %idx.ext9 = sext i32 %12 to i64
  %add.ptr10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* getelementptr inbounds ([20 x %struct.ref_s], [20 x %struct.ref_s]* @dstack, i32 0, i32 0), i64 %idx.ext9
  %add.ptr11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr10, i64 -1
  store %struct.ref_s* %add.ptr11, %struct.ref_s** @dsp, align 8
  store %struct.ref_s* getelementptr inbounds ([20 x %struct.ref_s], [20 x %struct.ref_s]* @dstack, i32 0, i64 19), %struct.ref_s** @dstop, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @interp_fix_op(%struct.ref_s* %opref) #1 {
entry:
  %opref.addr = alloca %struct.ref_s*, align 8
  %i = alloca i32, align 4
  %proc = alloca i32 (%struct.ref_s*)*, align 8
  store %struct.ref_s* %opref, %struct.ref_s** %opref.addr, align 8
  store i32 7, i32* %i, align 4
  %0 = load %struct.ref_s*, %struct.ref_s** %opref.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 0
  %opproc = bitcast %union.v* %value to i32 (%struct.ref_s*)**
  %1 = load i32 (%struct.ref_s*)*, i32 (%struct.ref_s*)** %opproc, align 8
  store i32 (%struct.ref_s*)* %1, i32 (%struct.ref_s*)** %proc, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i32, i32* %i, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* %i, align 4
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load i32 (%struct.ref_s*)*, i32 (%struct.ref_s*)** %proc, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [7 x i32 (%struct.ref_s*)*], [7 x i32 (%struct.ref_s*)*]* @special_ops, i32 0, i64 %idxprom
  %5 = load i32 (%struct.ref_s*)*, i32 (%struct.ref_s*)** %arrayidx, align 8
  %cmp1 = icmp ne i32 (%struct.ref_s*)* %3, %5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %while.cond

while.end:                                        ; preds = %land.end
  %7 = load i32, i32* %i, align 4
  %cmp2 = icmp sge i32 %7, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %8 = load i32 (%struct.ref_s*)*, i32 (%struct.ref_s*)** %proc, align 8
  %9 = load %struct.ref_s*, %struct.ref_s** %opref.addr, align 8
  %value3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 0
  %opproc4 = bitcast %union.v* %value3 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* %8, i32 (%struct.ref_s*)** %opproc4, align 8
  %10 = load i32, i32* %i, align 4
  %add = add nsw i32 16, %10
  %shl = shl i32 %add, 2
  %add5 = add nsw i32 %shl, 1
  %conv = trunc i32 %add5 to i16
  %11 = load %struct.ref_s*, %struct.ref_s** %opref.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  store i16 %conv, i16* %type_attrs, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @interpret(%struct.ref_s* %pref, i32 %user_errors) #1 {
entry:
  %retval = alloca i32, align 4
  %pref.addr = alloca %struct.ref_s*, align 8
  %user_errors.addr = alloca i32, align 4
  %epref = alloca %struct.ref_s*, align 8
  %erref = alloca %struct.ref_s, align 8
  %perrordict = alloca %struct.ref_s*, align 8
  %pErrorNames = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  store %struct.ref_s* %pref, %struct.ref_s** %pref.addr, align 8
  store i32 %user_errors, i32* %user_errors.addr, align 4
  %0 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8
  store %struct.ref_s* %0, %struct.ref_s** %epref, align 8
  %1 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** @esp, align 8
  %2 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 0
  %opproc = bitcast %union.v* %value to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @interp_exit, i32 (%struct.ref_s*)** %opproc, align 8
  %3 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 1
  store i16 37, i16* %type_attrs, align 2
  br label %retry

retry:                                            ; preds = %if.end.26, %entry
  %4 = load %struct.ref_s*, %struct.ref_s** %epref, align 8
  %call = call i32 @interp(%struct.ref_s* %4)
  store i32 %call, i32* %code, align 4
  %5 = load i32, i32* %code, align 4
  %cmp = icmp eq i32 %5, -100
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %retry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %retry
  %6 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** @osbot, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -1
  %cmp1 = icmp ult %struct.ref_s* %6, %add.ptr
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %8 = load %struct.ref_s*, %struct.ref_s** @osbot, align 8
  %add.ptr3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -1
  store %struct.ref_s* %add.ptr3, %struct.ref_s** @osp, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %9 = load i32, i32* %user_errors.addr, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end.4
  %10 = load i32, i32* %code, align 4
  store i32 %10, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end.4
  %call7 = call i32 @dict_lookup(%struct.ref_s* getelementptr inbounds ([20 x %struct.ref_s], [20 x %struct.ref_s]* @dstack, i32 0, i32 0), %struct.ref_s* getelementptr inbounds ([20 x %struct.ref_s], [20 x %struct.ref_s]* @dstack, i32 0, i32 0), %struct.ref_s* @name_errordict, %struct.ref_s** %perrordict)
  %cmp8 = icmp sle i32 %call7, 0
  br i1 %cmp8, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.6
  %11 = load %struct.ref_s*, %struct.ref_s** %perrordict, align 8
  %12 = load %struct.ref_s*, %struct.ref_s** %perrordict, align 8
  %call9 = call i32 @dict_lookup(%struct.ref_s* %11, %struct.ref_s* %12, %struct.ref_s* @name_ErrorNames, %struct.ref_s** %pErrorNames)
  %cmp10 = icmp sle i32 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %lor.lhs.false, %if.end.6
  %13 = load i32, i32* %code, align 4
  store i32 %13, i32* %retval
  br label %return

if.end.12:                                        ; preds = %lor.lhs.false
  %14 = load i32, i32* %code, align 4
  switch i32 %14, label %sw.epilog [
    i32 -3, label %sw.bb
    i32 -5, label %sw.bb
    i32 -16, label %sw.bb
    i32 -25, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end.12, %if.end.12, %if.end.12, %if.end.12
  %15 = load i32, i32* %code, align 4
  store i32 %15, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.12
  %16 = load i32, i32* %code, align 4
  %cmp13 = icmp sgt i32 %16, -2
  br i1 %cmp13, label %if.then.17, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %sw.epilog
  %17 = load i32, i32* %code, align 4
  %sub = sub nsw i32 0, %17
  %18 = load %struct.ref_s*, %struct.ref_s** %pErrorNames, align 8
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 2
  %19 = load i16, i16* %size, align 2
  %conv = zext i16 %19 to i32
  %cmp15 = icmp sgt i32 %sub, %conv
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %lor.lhs.false.14, %sw.epilog
  %20 = load i32, i32* %code, align 4
  store i32 %20, i32* %retval
  br label %return

if.end.18:                                        ; preds = %lor.lhs.false.14
  %21 = load %struct.ref_s*, %struct.ref_s** %perrordict, align 8
  %22 = load %struct.ref_s*, %struct.ref_s** %perrordict, align 8
  %23 = load i32, i32* %code, align 4
  %sub19 = sub nsw i32 0, %23
  %sub20 = sub nsw i32 %sub19, 1
  %idxprom = sext i32 %sub20 to i64
  %24 = load %struct.ref_s*, %struct.ref_s** %pErrorNames, align 8
  %value21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 0
  %refs = bitcast %union.v* %value21 to %struct.ref_s**
  %25 = load %struct.ref_s*, %struct.ref_s** %refs, align 8
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i64 %idxprom
  %call22 = call i32 @dict_lookup(%struct.ref_s* %21, %struct.ref_s* %22, %struct.ref_s* %arrayidx, %struct.ref_s** %epref)
  %cmp23 = icmp sle i32 %call22, 0
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.18
  %26 = load i32, i32* %code, align 4
  store i32 %26, i32* %retval
  br label %return

if.end.26:                                        ; preds = %if.end.18
  %27 = load %struct.ref_s*, %struct.ref_s** %epref, align 8
  %28 = bitcast %struct.ref_s* %erref to i8*
  %29 = bitcast %struct.ref_s* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 16, i32 8, i1 false)
  store %struct.ref_s* %erref, %struct.ref_s** %epref, align 8
  %30 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %incdec.ptr27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i32 1
  store %struct.ref_s* %incdec.ptr27, %struct.ref_s** @osp, align 8
  %31 = bitcast %struct.ref_s* %incdec.ptr27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* bitcast (%struct.ref_s* @error_object to i8*), i64 16, i32 8, i1 false)
  br label %retry

return:                                           ; preds = %if.then.25, %if.then.17, %sw.bb, %if.then.11, %if.then.5, %if.then
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define i32 @interp_exit(%struct.ref_s* %op) #1 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  ret i32 -100
}

; Function Attrs: nounwind uwtable
define i32 @interp(%struct.ref_s* %pref) #1 {
entry:
  %retval = alloca i32, align 4
  %pref.addr = alloca %struct.ref_s*, align 8
  %iref = alloca %struct.ref_s*, align 8
  %icount = alloca i32, align 4
  %iosp = alloca %struct.ref_s*, align 8
  %iesp = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %token = alloca %struct.ref_s, align 8
  %ptoken = alloca %struct.ref_s*, align 8
  %whichp = alloca %struct.ref_s*, align 8
  %pvalue = alloca %struct.ref_s*, align 8
  %pdvalue = alloca %struct.ref_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %ss = alloca %struct.stream_s, align 8
  store %struct.ref_s* %pref, %struct.ref_s** %pref.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8
  store %struct.ref_s* %0, %struct.ref_s** %iref, align 8
  store i32 0, i32* %icount, align 4
  %1 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  store %struct.ref_s* %1, %struct.ref_s** %iosp, align 8
  %2 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  store %struct.ref_s* %2, %struct.ref_s** %iesp, align 8
  store %struct.ref_s* %token, %struct.ref_s** %ptoken, align 8
  %3 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  %4 = load %struct.ref_s*, %struct.ref_s** @estop, align 8
  %cmp = icmp uge %struct.ref_s* %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  store %struct.ref_s* %5, %struct.ref_s** @esp, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8
  %7 = bitcast %struct.ref_s* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.ref_s* @error_object to i8*), i8* %7, i64 16, i32 8, i1 false)
  store i32 -5, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %iesp, align 8
  %9 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8
  %10 = bitcast %struct.ref_s* %incdec.ptr to i8*
  %11 = bitcast %struct.ref_s* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 16, i32 8, i1 false)
  br label %bot

top:                                              ; preds = %if.end.402, %sw.default.384, %if.then.377, %if.then.373, %if.end.349, %if.end.319, %cond.end.294, %if.then.280, %if.then.268, %if.end.223, %if.then.175, %if.then.129, %if.then.116, %if.then.104, %if.end.89, %sw.default, %if.then.37, %if.then.22, %if.then.10
  br label %sw

sw:                                               ; preds = %top
  %12 = load %struct.ref_s*, %struct.ref_s** %iref, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 1
  %13 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %13 to i32
  %and = and i32 %conv, 255
  switch i32 %and, label %sw.epilog.364 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 8, label %sw.bb
    i32 9, label %sw.bb
    i32 12, label %sw.bb
    i32 13, label %sw.bb
    i32 40, label %sw.bb
    i32 41, label %sw.bb
    i32 52, label %sw.bb
    i32 53, label %sw.bb
    i32 2, label %sw.bb.1
    i32 4, label %sw.bb.1
    i32 5, label %sw.bb.1
    i32 10, label %sw.bb.1
    i32 14, label %sw.bb.1
    i32 16, label %sw.bb.1
    i32 17, label %sw.bb.1
    i32 20, label %sw.bb.1
    i32 21, label %sw.bb.1
    i32 24, label %sw.bb.1
    i32 25, label %sw.bb.1
    i32 28, label %sw.bb.1
    i32 32, label %sw.bb.1
    i32 36, label %sw.bb.1
    i32 42, label %sw.bb.1
    i32 44, label %sw.bb.1
    i32 45, label %sw.bb.1
    i32 48, label %sw.bb.1
    i32 49, label %sw.bb.1
    i32 54, label %sw.bb.1
    i32 56, label %sw.bb.1
    i32 57, label %sw.bb.1
    i32 60, label %sw.bb.1
    i32 61, label %sw.bb.1
    i32 65, label %sw.bb.2
    i32 69, label %sw.bb.12
    i32 73, label %sw.bb.25
    i32 77, label %sw.bb.40
    i32 81, label %sw.bb.90
    i32 85, label %sw.bb.107
    i32 89, label %sw.bb.119
    i32 33, label %sw.bb.132
    i32 37, label %sw.bb.133
    i32 29, label %sw.bb.178
    i32 15, label %sw.bb.296
    i32 55, label %sw.bb.328
  ]

sw.bb:                                            ; preds = %sw, %sw, %sw, %sw, %sw, %sw, %sw, %sw, %sw, %sw
  %14 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  store %struct.ref_s* %14, %struct.ref_s** @esp, align 8
  %15 = load %struct.ref_s*, %struct.ref_s** %iref, align 8
  %16 = bitcast %struct.ref_s* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.ref_s* @error_object to i8*), i8* %16, i64 16, i32 8, i1 false)
  store i32 -7, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %sw, %sw, %sw, %sw, %sw, %sw, %sw, %sw, %sw, %sw, %sw, %sw, %sw, %sw, %sw, %sw, %sw, %sw, %sw, %sw, %sw, %sw, %sw, %sw
  br label %sw.epilog.364

sw.bb.2:                                          ; preds = %sw
  %17 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8
  %call = call i32 @zadd(%struct.ref_s* %17)
  store i32 %call, i32* %code, align 4
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %sw.bb.2
  %18 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  store %struct.ref_s* %18, %struct.ref_s** @esp, align 8
  %19 = load %struct.ref_s*, %struct.ref_s** %iref, align 8
  %20 = bitcast %struct.ref_s* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.ref_s* @error_object to i8*), i8* %20, i64 16, i32 8, i1 false)
  %21 = load i32, i32* %code, align 4
  store i32 %21, i32* %retval
  br label %return

if.end.6:                                         ; preds = %sw.bb.2
  %22 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8
  %incdec.ptr7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 -1
  store %struct.ref_s* %incdec.ptr7, %struct.ref_s** %iosp, align 8
  %23 = load i32, i32* %icount, align 4
  %dec = add nsw i32 %23, -1
  store i32 %dec, i32* %icount, align 4
  %cmp8 = icmp sgt i32 %dec, 0
  br i1 %cmp8, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end.6
  %24 = load %struct.ref_s*, %struct.ref_s** %iref, align 8
  %incdec.ptr11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 1
  store %struct.ref_s* %incdec.ptr11, %struct.ref_s** %iref, align 8
  br label %top

if.else:                                          ; preds = %if.end.6
  br label %out

sw.bb.12:                                         ; preds = %sw
  %25 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8
  %26 = load %struct.ref_s*, %struct.ref_s** getelementptr inbounds ([6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i32 0, i64 1), align 8
  %cmp13 = icmp ult %struct.ref_s* %25, %26
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %sw.bb.12
  %27 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  store %struct.ref_s* %27, %struct.ref_s** @esp, align 8
  %28 = load %struct.ref_s*, %struct.ref_s** %iref, align 8
  %29 = bitcast %struct.ref_s* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.ref_s* @error_object to i8*), i8* %29, i64 16, i32 8, i1 false)
  store i32 -17, i32* %retval
  br label %return

if.end.16:                                        ; preds = %sw.bb.12
  %30 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8
  %incdec.ptr17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i32 1
  store %struct.ref_s* %incdec.ptr17, %struct.ref_s** %iosp, align 8
  %31 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 0
  %32 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8
  %arrayidx18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i64 -1
  %33 = bitcast %struct.ref_s* %arrayidx to i8*
  %34 = bitcast %struct.ref_s* %arrayidx18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 16, i32 8, i1 false)
  %35 = load i32, i32* %icount, align 4
  %dec19 = add nsw i32 %35, -1
  store i32 %dec19, i32* %icount, align 4
  %cmp20 = icmp sgt i32 %dec19, 0
  br i1 %cmp20, label %if.then.22, label %if.else.24

if.then.22:                                       ; preds = %if.end.16
  %36 = load %struct.ref_s*, %struct.ref_s** %iref, align 8
  %incdec.ptr23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i32 1
  store %struct.ref_s* %incdec.ptr23, %struct.ref_s** %iref, align 8
  br label %top

if.else.24:                                       ; preds = %if.end.16
  br label %out

sw.bb.25:                                         ; preds = %sw
  %37 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8
  %38 = load %struct.ref_s*, %struct.ref_s** getelementptr inbounds ([6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i32 0, i64 2), align 8
  %cmp26 = icmp ult %struct.ref_s* %37, %38
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %sw.bb.25
  %39 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  store %struct.ref_s* %39, %struct.ref_s** @esp, align 8
  %40 = load %struct.ref_s*, %struct.ref_s** %iref, align 8
  %41 = bitcast %struct.ref_s* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.ref_s* @error_object to i8*), i8* %41, i64 16, i32 8, i1 false)
  store i32 -17, i32* %retval
  br label %return

if.end.29:                                        ; preds = %sw.bb.25
  %42 = load %struct.ref_s*, %struct.ref_s** %ptoken, align 8
  %43 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8
  %44 = bitcast %struct.ref_s* %42 to i8*
  %45 = bitcast %struct.ref_s* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %45, i64 16, i32 8, i1 false)
  %46 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8
  %arrayidx30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i64 0
  %47 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8
  %arrayidx31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i64 -1
  %48 = bitcast %struct.ref_s* %arrayidx30 to i8*
  %49 = bitcast %struct.ref_s* %arrayidx31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* %49, i64 16, i32 8, i1 false)
  %50 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8
  %arrayidx32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %50, i64 -1
  %51 = load %struct.ref_s*, %struct.ref_s** %ptoken, align 8
  %arrayidx33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %51, i64 0
  %52 = bitcast %struct.ref_s* %arrayidx32 to i8*
  %53 = bitcast %struct.ref_s* %arrayidx33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %52, i8* %53, i64 16, i32 8, i1 false)
  %54 = load i32, i32* %icount, align 4
  %dec34 = add nsw i32 %54, -1
  store i32 %dec34, i32* %icount, align 4
  %cmp35 = icmp sgt i32 %dec34, 0
  br i1 %cmp35, label %if.then.37, label %if.else.39

if.then.37:                                       ; preds = %if.end.29
  %55 = load %struct.ref_s*, %struct.ref_s** %iref, align 8
  %incdec.ptr38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %55, i32 1
  store %struct.ref_s* %incdec.ptr38, %struct.ref_s** %iref, align 8
  br label %top

if.else.39:                                       ; preds = %if.end.29
  br label %out

sw.bb.40:                                         ; preds = %sw
  %56 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %56, i64 -2
  %type_attrs41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 1
  %57 = load i16, i16* %type_attrs41, align 2
  %conv42 = zext i16 %57 to i32
  %and43 = and i32 %conv42, 255
  %shr = ashr i32 %and43, 2
  %cmp44 = icmp ne i32 %shr, 1
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %sw.bb.40
  %58 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  store %struct.ref_s* %58, %struct.ref_s** @esp, align 8
  %59 = load %struct.ref_s*, %struct.ref_s** %iref, align 8
  %60 = bitcast %struct.ref_s* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.ref_s* @error_object to i8*), i8* %60, i64 16, i32 8, i1 false)
  store i32 -20, i32* %retval
  br label %return

if.end.47:                                        ; preds = %sw.bb.40
  %61 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  %62 = load %struct.ref_s*, %struct.ref_s** @estop, align 8
  %cmp48 = icmp uge %struct.ref_s* %61, %62
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.end.47
  %63 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  store %struct.ref_s* %63, %struct.ref_s** @esp, align 8
  %64 = load %struct.ref_s*, %struct.ref_s** %iref, align 8
  %65 = bitcast %struct.ref_s* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.ref_s* @error_object to i8*), i8* %65, i64 16, i32 8, i1 false)
  store i32 -5, i32* %retval
  br label %return

if.end.51:                                        ; preds = %if.end.47
  %66 = load i32, i32* %icount, align 4
  %cmp52 = icmp sgt i32 %66, 0
  br i1 %cmp52, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.51
  %67 = load %struct.ref_s*, %struct.ref_s** %iref, align 8
  %add.ptr54 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %67, i64 1
  %68 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %68, i32 0, i32 0
  %refs = bitcast %union.v* %value to %struct.ref_s**
  store %struct.ref_s* %add.ptr54, %struct.ref_s** %refs, align 8
  %69 = load i32, i32* %icount, align 4
  %conv55 = trunc i32 %69 to i16
  %70 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %70, i32 0, i32 2
  store i16 %conv55, i16* %size, align 2
  %conv56 = zext i16 %conv55 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end.51
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv56, %cond.true ], [ 0, %cond.false ]
  %71 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8
  %add.ptr57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %71, i64 -3
  store %struct.ref_s* %add.ptr57, %struct.ref_s** %iosp, align 8
  %72 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8
  %arrayidx58 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %72, i64 1
  %value59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx58, i32 0, i32 0
  %index = bitcast %union.v* %value59 to i16*
  %73 = load i16, i16* %index, align 2
  %conv60 = zext i16 %73 to i32
  %tobool = icmp ne i32 %conv60, 0
  br i1 %tobool, label %cond.true.61, label %cond.false.63

cond.true.61:                                     ; preds = %cond.end
  %74 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8
  %add.ptr62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %74, i64 2
  br label %cond.end.65

cond.false.63:                                    ; preds = %cond.end
  %75 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8
  %add.ptr64 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %75, i64 3
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.false.63, %cond.true.61
  %cond66 = phi %struct.ref_s* [ %add.ptr62, %cond.true.61 ], [ %add.ptr64, %cond.false.63 ]
  store %struct.ref_s* %cond66, %struct.ref_s** %whichp, align 8
  %76 = load %struct.ref_s*, %struct.ref_s** %whichp, align 8
  %type_attrs67 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %76, i32 0, i32 1
  %77 = load i16, i16* %type_attrs67, align 2
  %conv68 = zext i16 %77 to i32
  %and69 = and i32 %conv68, 255
  switch i32 %and69, label %sw.default [
    i32 3, label %sw.bb.73
    i32 43, label %sw.bb.74
  ]

sw.default:                                       ; preds = %cond.end.65
  %78 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  %arrayidx70 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %78, i64 1
  %79 = load %struct.ref_s*, %struct.ref_s** %whichp, align 8
  %arrayidx71 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %79, i64 0
  %80 = bitcast %struct.ref_s* %arrayidx70 to i8*
  %81 = bitcast %struct.ref_s* %arrayidx71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %80, i8* %81, i64 16, i32 8, i1 false)
  %82 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  %add.ptr72 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %82, i64 1
  store %struct.ref_s* %add.ptr72, %struct.ref_s** %iref, align 8
  store i32 0, i32* %icount, align 4
  br label %top

sw.bb.73:                                         ; preds = %cond.end.65
  br label %sw.bb.74

sw.bb.74:                                         ; preds = %cond.end.65, %sw.bb.73
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.74
  %83 = load %struct.ref_s*, %struct.ref_s** %whichp, align 8
  %value75 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %83, i32 0, i32 0
  %refs76 = bitcast %union.v* %value75 to %struct.ref_s**
  %84 = load %struct.ref_s*, %struct.ref_s** %refs76, align 8
  store %struct.ref_s* %84, %struct.ref_s** %iref, align 8
  %85 = load %struct.ref_s*, %struct.ref_s** %whichp, align 8
  %size77 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %85, i32 0, i32 2
  %86 = load i16, i16* %size77, align 2
  %conv78 = zext i16 %86 to i32
  store i32 %conv78, i32* %icount, align 4
  %87 = load i32, i32* %icount, align 4
  %dec79 = add nsw i32 %87, -1
  store i32 %dec79, i32* %icount, align 4
  %cmp80 = icmp sle i32 %dec79, 0
  br i1 %cmp80, label %if.then.82, label %if.else.87

if.then.82:                                       ; preds = %sw.epilog
  %88 = load i32, i32* %icount, align 4
  %cmp83 = icmp slt i32 %88, 0
  br i1 %cmp83, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %if.then.82
  br label %up

if.end.86:                                        ; preds = %if.then.82
  br label %if.end.89

if.else.87:                                       ; preds = %sw.epilog
  %89 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  %incdec.ptr88 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %89, i32 1
  store %struct.ref_s* %incdec.ptr88, %struct.ref_s** %iesp, align 8
  %90 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  %91 = load %struct.ref_s*, %struct.ref_s** %whichp, align 8
  %92 = bitcast %struct.ref_s* %90 to i8*
  %93 = bitcast %struct.ref_s* %91 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %92, i8* %93, i64 16, i32 8, i1 false)
  br label %if.end.89

if.end.89:                                        ; preds = %if.else.87, %if.end.86
  br label %top

sw.bb.90:                                         ; preds = %sw
  %94 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8
  %call91 = call i32 (%struct.ref_s*, i32, ...) bitcast (i32 (...)* @obj_compare to i32 (%struct.ref_s*, i32, ...)*)(%struct.ref_s* %94, i32 3)
  store i32 %call91, i32* %code, align 4
  %95 = load i32, i32* %code, align 4
  %cmp92 = icmp slt i32 %95, 0
  br i1 %cmp92, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %sw.bb.90
  %96 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  store %struct.ref_s* %96, %struct.ref_s** @esp, align 8
  %97 = load %struct.ref_s*, %struct.ref_s** %iref, align 8
  %98 = bitcast %struct.ref_s* %97 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.ref_s* @error_object to i8*), i8* %98, i64 16, i32 8, i1 false)
  %99 = load i32, i32* %code, align 4
  store i32 %99, i32* %retval
  br label %return

if.end.95:                                        ; preds = %sw.bb.90
  %100 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8
  %incdec.ptr96 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %100, i32 -1
  store %struct.ref_s* %incdec.ptr96, %struct.ref_s** %iosp, align 8
  %101 = load i32, i32* %code, align 4
  %conv97 = trunc i32 %101 to i16
  %102 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8
  %value98 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %102, i32 0, i32 0
  %index99 = bitcast %union.v* %value98 to i16*
  store i16 %conv97, i16* %index99, align 2
  %103 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8
  %type_attrs100 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %103, i32 0, i32 1
  store i16 4, i16* %type_attrs100, align 2
  %104 = load i32, i32* %icount, align 4
  %dec101 = add nsw i32 %104, -1
  store i32 %dec101, i32* %icount, align 4
  %cmp102 = icmp sgt i32 %dec101, 0
  br i1 %cmp102, label %if.then.104, label %if.else.106

if.then.104:                                      ; preds = %if.end.95
  %105 = load %struct.ref_s*, %struct.ref_s** %iref, align 8
  %incdec.ptr105 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %105, i32 1
  store %struct.ref_s* %incdec.ptr105, %struct.ref_s** %iref, align 8
  br label %top

if.else.106:                                      ; preds = %if.end.95
  br label %out

sw.bb.107:                                        ; preds = %sw
  %106 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8
  %107 = load %struct.ref_s*, %struct.ref_s** getelementptr inbounds ([6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i32 0, i64 1), align 8
  %cmp108 = icmp ult %struct.ref_s* %106, %107
  br i1 %cmp108, label %if.then.110, label %if.end.111

if.then.110:                                      ; preds = %sw.bb.107
  %108 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  store %struct.ref_s* %108, %struct.ref_s** @esp, align 8
  %109 = load %struct.ref_s*, %struct.ref_s** %iref, align 8
  %110 = bitcast %struct.ref_s* %109 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.ref_s* @error_object to i8*), i8* %110, i64 16, i32 8, i1 false)
  store i32 -17, i32* %retval
  br label %return

if.end.111:                                       ; preds = %sw.bb.107
  %111 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8
  %incdec.ptr112 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %111, i32 -1
  store %struct.ref_s* %incdec.ptr112, %struct.ref_s** %iosp, align 8
  %112 = load i32, i32* %icount, align 4
  %dec113 = add nsw i32 %112, -1
  store i32 %dec113, i32* %icount, align 4
  %cmp114 = icmp sgt i32 %dec113, 0
  br i1 %cmp114, label %if.then.116, label %if.else.118

if.then.116:                                      ; preds = %if.end.111
  %113 = load %struct.ref_s*, %struct.ref_s** %iref, align 8
  %incdec.ptr117 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %113, i32 1
  store %struct.ref_s* %incdec.ptr117, %struct.ref_s** %iref, align 8
  br label %top

if.else.118:                                      ; preds = %if.end.111
  br label %out

sw.bb.119:                                        ; preds = %sw
  %114 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8
  %call120 = call i32 @zsub(%struct.ref_s* %114)
  store i32 %call120, i32* %code, align 4
  %cmp121 = icmp slt i32 %call120, 0
  br i1 %cmp121, label %if.then.123, label %if.end.124

if.then.123:                                      ; preds = %sw.bb.119
  %115 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  store %struct.ref_s* %115, %struct.ref_s** @esp, align 8
  %116 = load %struct.ref_s*, %struct.ref_s** %iref, align 8
  %117 = bitcast %struct.ref_s* %116 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.ref_s* @error_object to i8*), i8* %117, i64 16, i32 8, i1 false)
  %118 = load i32, i32* %code, align 4
  store i32 %118, i32* %retval
  br label %return

if.end.124:                                       ; preds = %sw.bb.119
  %119 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8
  %incdec.ptr125 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %119, i32 -1
  store %struct.ref_s* %incdec.ptr125, %struct.ref_s** %iosp, align 8
  %120 = load i32, i32* %icount, align 4
  %dec126 = add nsw i32 %120, -1
  store i32 %dec126, i32* %icount, align 4
  %cmp127 = icmp sgt i32 %dec126, 0
  br i1 %cmp127, label %if.then.129, label %if.else.131

if.then.129:                                      ; preds = %if.end.124
  %121 = load %struct.ref_s*, %struct.ref_s** %iref, align 8
  %incdec.ptr130 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %121, i32 1
  store %struct.ref_s* %incdec.ptr130, %struct.ref_s** %iref, align 8
  br label %top

if.else.131:                                      ; preds = %if.end.124
  br label %out

sw.bb.132:                                        ; preds = %sw
  br label %bot

sw.bb.133:                                        ; preds = %sw
  %122 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  store %struct.ref_s* %122, %struct.ref_s** @esp, align 8
  %123 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8
  store %struct.ref_s* %123, %struct.ref_s** @osp, align 8
  %124 = load %struct.ref_s*, %struct.ref_s** %iref, align 8
  %value134 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %124, i32 0, i32 0
  %opproc = bitcast %union.v* %value134 to i32 (%struct.ref_s*)**
  %125 = load i32 (%struct.ref_s*)*, i32 (%struct.ref_s*)** %opproc, align 8
  %126 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8
  %call135 = call i32 %125(%struct.ref_s* %126)
  store i32 %call135, i32* %code, align 4
  %127 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  store %struct.ref_s* %127, %struct.ref_s** %iosp, align 8
  %128 = load i32, i32* %code, align 4
  %cmp136 = icmp ne i32 %128, 0
  br i1 %cmp136, label %if.then.138, label %if.end.171

if.then.138:                                      ; preds = %sw.bb.133
  %129 = load i32, i32* %code, align 4
  switch i32 %129, label %sw.default.170 [
    i32 1, label %sw.bb.139
    i32 -20, label %sw.bb.161
  ]

sw.bb.139:                                        ; preds = %if.then.138
  %130 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %131 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  %cmp140 = icmp ugt %struct.ref_s* %130, %131
  br i1 %cmp140, label %if.then.142, label %if.else.155

if.then.142:                                      ; preds = %sw.bb.139
  %132 = load i32, i32* %icount, align 4
  %cmp143 = icmp sgt i32 %132, 0
  br i1 %cmp143, label %cond.true.145, label %cond.false.152

cond.true.145:                                    ; preds = %if.then.142
  %133 = load %struct.ref_s*, %struct.ref_s** %iref, align 8
  %add.ptr146 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %133, i64 1
  %134 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  %value147 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %134, i32 0, i32 0
  %refs148 = bitcast %union.v* %value147 to %struct.ref_s**
  store %struct.ref_s* %add.ptr146, %struct.ref_s** %refs148, align 8
  %135 = load i32, i32* %icount, align 4
  %conv149 = trunc i32 %135 to i16
  %136 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  %size150 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %136, i32 0, i32 2
  store i16 %conv149, i16* %size150, align 2
  %conv151 = zext i16 %conv149 to i32
  br label %cond.end.153

cond.false.152:                                   ; preds = %if.then.142
  br label %cond.end.153

cond.end.153:                                     ; preds = %cond.false.152, %cond.true.145
  %cond154 = phi i32 [ %conv151, %cond.true.145 ], [ 0, %cond.false.152 ]
  br label %if.end.160

if.else.155:                                      ; preds = %sw.bb.139
  %137 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %138 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  %cmp156 = icmp eq %struct.ref_s* %137, %138
  br i1 %cmp156, label %if.then.158, label %if.end.159

if.then.158:                                      ; preds = %if.else.155
  br label %bot

if.end.159:                                       ; preds = %if.else.155
  br label %if.end.160

if.end.160:                                       ; preds = %if.end.159, %cond.end.153
  %139 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  store %struct.ref_s* %139, %struct.ref_s** %iesp, align 8
  br label %up

sw.bb.161:                                        ; preds = %if.then.138
  %140 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8
  %141 = load %struct.ref_s*, %struct.ref_s** @osbot, align 8
  %add.ptr162 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %141, i64 -1
  %142 = load %struct.ref_s*, %struct.ref_s** %iref, align 8
  %size163 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %142, i32 0, i32 2
  %143 = load i16, i16* %size163, align 2
  %conv164 = zext i16 %143 to i32
  %idx.ext = sext i32 %conv164 to i64
  %add.ptr165 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr162, i64 %idx.ext
  %cmp166 = icmp ult %struct.ref_s* %140, %add.ptr165
  br i1 %cmp166, label %if.then.168, label %if.end.169

if.then.168:                                      ; preds = %sw.bb.161
  store i32 -17, i32* %code, align 4
  br label %if.end.169

if.end.169:                                       ; preds = %if.then.168, %sw.bb.161
  br label %sw.default.170

sw.default.170:                                   ; preds = %if.then.138, %if.end.169
  %144 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  store %struct.ref_s* %144, %struct.ref_s** @esp, align 8
  %145 = load %struct.ref_s*, %struct.ref_s** %iref, align 8
  %146 = bitcast %struct.ref_s* %145 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.ref_s* @error_object to i8*), i8* %146, i64 16, i32 8, i1 false)
  %147 = load i32, i32* %code, align 4
  store i32 %147, i32* %retval
  br label %return

if.end.171:                                       ; preds = %sw.bb.133
  %148 = load i32, i32* %icount, align 4
  %dec172 = add nsw i32 %148, -1
  store i32 %dec172, i32* %icount, align 4
  %cmp173 = icmp sgt i32 %dec172, 0
  br i1 %cmp173, label %if.then.175, label %if.else.177

if.then.175:                                      ; preds = %if.end.171
  %149 = load %struct.ref_s*, %struct.ref_s** %iref, align 8
  %incdec.ptr176 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %149, i32 1
  store %struct.ref_s* %incdec.ptr176, %struct.ref_s** %iref, align 8
  br label %top

if.else.177:                                      ; preds = %if.end.171
  br label %out

sw.bb.178:                                        ; preds = %sw
  %150 = load %struct.ref_s*, %struct.ref_s** %iref, align 8
  %value179 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %150, i32 0, i32 0
  %pname = bitcast %union.v* %value179 to %struct.name_s**
  %151 = load %struct.name_s*, %struct.name_s** %pname, align 8
  %pvalue180 = getelementptr inbounds %struct.name_s, %struct.name_s* %151, i32 0, i32 4
  %152 = load %struct.ref_s*, %struct.ref_s** %pvalue180, align 8
  store %struct.ref_s* %152, %struct.ref_s** %pvalue, align 8
  %153 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8
  %154 = ptrtoint %struct.ref_s* %153 to i64
  %cmp181 = icmp ugt i64 %154, 1
  br i1 %cmp181, label %if.end.189, label %if.then.183

if.then.183:                                      ; preds = %sw.bb.178
  %155 = load %struct.ref_s*, %struct.ref_s** @dsp, align 8
  %156 = load %struct.ref_s*, %struct.ref_s** %iref, align 8
  %call184 = call i32 @dict_lookup(%struct.ref_s* getelementptr inbounds ([20 x %struct.ref_s], [20 x %struct.ref_s]* @dstack, i32 0, i32 0), %struct.ref_s* %155, %struct.ref_s* %156, %struct.ref_s** %pdvalue)
  %cmp185 = icmp sle i32 %call184, 0
  br i1 %cmp185, label %if.then.187, label %if.end.188

if.then.187:                                      ; preds = %if.then.183
  %157 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  store %struct.ref_s* %157, %struct.ref_s** @esp, align 8
  %158 = load %struct.ref_s*, %struct.ref_s** %iref, align 8
  %159 = bitcast %struct.ref_s* %158 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.ref_s* @error_object to i8*), i8* %159, i64 16, i32 8, i1 false)
  store i32 -21, i32* %retval
  br label %return

if.end.188:                                       ; preds = %if.then.183
  %160 = load %struct.ref_s*, %struct.ref_s** %pdvalue, align 8
  store %struct.ref_s* %160, %struct.ref_s** %pvalue, align 8
  br label %if.end.189

if.end.189:                                       ; preds = %if.end.188, %sw.bb.178
  %161 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8
  %type_attrs190 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %161, i32 0, i32 1
  %162 = load i16, i16* %type_attrs190, align 2
  %conv191 = zext i16 %162 to i32
  %and192 = and i32 %conv191, 255
  switch i32 %and192, label %sw.default.283 [
    i32 3, label %sw.bb.193
    i32 43, label %sw.bb.193
    i32 37, label %sw.bb.224
    i32 2, label %sw.bb.271
    i32 4, label %sw.bb.271
    i32 20, label %sw.bb.271
    i32 42, label %sw.bb.271
    i32 44, label %sw.bb.271
    i32 54, label %sw.bb.271
  ]

sw.bb.193:                                        ; preds = %if.end.189, %if.end.189
  %163 = load i32, i32* %icount, align 4
  %cmp194 = icmp sgt i32 %163, 0
  br i1 %cmp194, label %cond.true.196, label %cond.false.203

cond.true.196:                                    ; preds = %sw.bb.193
  %164 = load %struct.ref_s*, %struct.ref_s** %iref, align 8
  %add.ptr197 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %164, i64 1
  %165 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  %value198 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %165, i32 0, i32 0
  %refs199 = bitcast %union.v* %value198 to %struct.ref_s**
  store %struct.ref_s* %add.ptr197, %struct.ref_s** %refs199, align 8
  %166 = load i32, i32* %icount, align 4
  %conv200 = trunc i32 %166 to i16
  %167 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  %size201 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %167, i32 0, i32 2
  store i16 %conv200, i16* %size201, align 2
  %conv202 = zext i16 %conv200 to i32
  br label %cond.end.204

cond.false.203:                                   ; preds = %sw.bb.193
  br label %cond.end.204

cond.end.204:                                     ; preds = %cond.false.203, %cond.true.196
  %cond205 = phi i32 [ %conv202, %cond.true.196 ], [ 0, %cond.false.203 ]
  %168 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  %169 = load %struct.ref_s*, %struct.ref_s** @estop, align 8
  %cmp206 = icmp uge %struct.ref_s* %168, %169
  br i1 %cmp206, label %if.then.208, label %if.end.209

if.then.208:                                      ; preds = %cond.end.204
  %170 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  store %struct.ref_s* %170, %struct.ref_s** @esp, align 8
  %171 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8
  %172 = bitcast %struct.ref_s* %171 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.ref_s* @error_object to i8*), i8* %172, i64 16, i32 8, i1 false)
  store i32 -5, i32* %retval
  br label %return

if.end.209:                                       ; preds = %cond.end.204
  %173 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  %incdec.ptr210 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %173, i32 1
  store %struct.ref_s* %incdec.ptr210, %struct.ref_s** %iesp, align 8
  %174 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  %175 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8
  %176 = bitcast %struct.ref_s* %174 to i8*
  %177 = bitcast %struct.ref_s* %175 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %176, i8* %177, i64 16, i32 8, i1 false)
  %178 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8
  %value211 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %178, i32 0, i32 0
  %refs212 = bitcast %union.v* %value211 to %struct.ref_s**
  %179 = load %struct.ref_s*, %struct.ref_s** %refs212, align 8
  store %struct.ref_s* %179, %struct.ref_s** %iref, align 8
  %180 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8
  %size213 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %180, i32 0, i32 2
  %181 = load i16, i16* %size213, align 2
  %conv214 = zext i16 %181 to i32
  %sub = sub nsw i32 %conv214, 1
  store i32 %sub, i32* %icount, align 4
  %182 = load i32, i32* %icount, align 4
  %cmp215 = icmp sle i32 %182, 0
  br i1 %cmp215, label %if.then.217, label %if.end.223

if.then.217:                                      ; preds = %if.end.209
  %183 = load i32, i32* %icount, align 4
  %cmp218 = icmp slt i32 %183, 0
  br i1 %cmp218, label %if.then.220, label %if.end.221

if.then.220:                                      ; preds = %if.then.217
  br label %up

if.end.221:                                       ; preds = %if.then.217
  %184 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  %incdec.ptr222 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %184, i32 -1
  store %struct.ref_s* %incdec.ptr222, %struct.ref_s** %iesp, align 8
  br label %if.end.223

if.end.223:                                       ; preds = %if.end.221, %if.end.209
  br label %top

sw.bb.224:                                        ; preds = %if.end.189
  %185 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  store %struct.ref_s* %185, %struct.ref_s** @esp, align 8
  %186 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8
  store %struct.ref_s* %186, %struct.ref_s** @osp, align 8
  %187 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8
  %value225 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %187, i32 0, i32 0
  %opproc226 = bitcast %union.v* %value225 to i32 (%struct.ref_s*)**
  %188 = load i32 (%struct.ref_s*)*, i32 (%struct.ref_s*)** %opproc226, align 8
  %189 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8
  %call227 = call i32 %188(%struct.ref_s* %189)
  store i32 %call227, i32* %code, align 4
  %190 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  store %struct.ref_s* %190, %struct.ref_s** %iosp, align 8
  %191 = load i32, i32* %code, align 4
  %cmp228 = icmp ne i32 %191, 0
  br i1 %cmp228, label %if.then.230, label %if.end.264

if.then.230:                                      ; preds = %sw.bb.224
  %192 = load i32, i32* %code, align 4
  switch i32 %192, label %sw.epilog.263 [
    i32 1, label %sw.bb.231
    i32 -20, label %sw.bb.253
  ]

sw.bb.231:                                        ; preds = %if.then.230
  %193 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %194 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  %cmp232 = icmp ugt %struct.ref_s* %193, %194
  br i1 %cmp232, label %if.then.234, label %if.else.247

if.then.234:                                      ; preds = %sw.bb.231
  %195 = load i32, i32* %icount, align 4
  %cmp235 = icmp sgt i32 %195, 0
  br i1 %cmp235, label %cond.true.237, label %cond.false.244

cond.true.237:                                    ; preds = %if.then.234
  %196 = load %struct.ref_s*, %struct.ref_s** %iref, align 8
  %add.ptr238 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %196, i64 1
  %197 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  %value239 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %197, i32 0, i32 0
  %refs240 = bitcast %union.v* %value239 to %struct.ref_s**
  store %struct.ref_s* %add.ptr238, %struct.ref_s** %refs240, align 8
  %198 = load i32, i32* %icount, align 4
  %conv241 = trunc i32 %198 to i16
  %199 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  %size242 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %199, i32 0, i32 2
  store i16 %conv241, i16* %size242, align 2
  %conv243 = zext i16 %conv241 to i32
  br label %cond.end.245

cond.false.244:                                   ; preds = %if.then.234
  br label %cond.end.245

cond.end.245:                                     ; preds = %cond.false.244, %cond.true.237
  %cond246 = phi i32 [ %conv243, %cond.true.237 ], [ 0, %cond.false.244 ]
  br label %if.end.252

if.else.247:                                      ; preds = %sw.bb.231
  %200 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %201 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  %cmp248 = icmp eq %struct.ref_s* %200, %201
  br i1 %cmp248, label %if.then.250, label %if.end.251

if.then.250:                                      ; preds = %if.else.247
  br label %bot

if.end.251:                                       ; preds = %if.else.247
  br label %if.end.252

if.end.252:                                       ; preds = %if.end.251, %cond.end.245
  %202 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  store %struct.ref_s* %202, %struct.ref_s** %iesp, align 8
  br label %up

sw.bb.253:                                        ; preds = %if.then.230
  %203 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8
  %204 = load %struct.ref_s*, %struct.ref_s** @osbot, align 8
  %add.ptr254 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %204, i64 -1
  %205 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8
  %size255 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %205, i32 0, i32 2
  %206 = load i16, i16* %size255, align 2
  %conv256 = zext i16 %206 to i32
  %idx.ext257 = sext i32 %conv256 to i64
  %add.ptr258 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr254, i64 %idx.ext257
  %cmp259 = icmp ult %struct.ref_s* %203, %add.ptr258
  br i1 %cmp259, label %if.then.261, label %if.end.262

if.then.261:                                      ; preds = %sw.bb.253
  store i32 -17, i32* %code, align 4
  br label %if.end.262

if.end.262:                                       ; preds = %if.then.261, %sw.bb.253
  br label %sw.epilog.263

sw.epilog.263:                                    ; preds = %if.end.262, %if.then.230
  %207 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  store %struct.ref_s* %207, %struct.ref_s** @esp, align 8
  %208 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8
  %209 = bitcast %struct.ref_s* %208 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.ref_s* @error_object to i8*), i8* %209, i64 16, i32 8, i1 false)
  %210 = load i32, i32* %code, align 4
  store i32 %210, i32* %retval
  br label %return

if.end.264:                                       ; preds = %sw.bb.224
  %211 = load i32, i32* %icount, align 4
  %dec265 = add nsw i32 %211, -1
  store i32 %dec265, i32* %icount, align 4
  %cmp266 = icmp sgt i32 %dec265, 0
  br i1 %cmp266, label %if.then.268, label %if.else.270

if.then.268:                                      ; preds = %if.end.264
  %212 = load %struct.ref_s*, %struct.ref_s** %iref, align 8
  %incdec.ptr269 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %212, i32 1
  store %struct.ref_s* %incdec.ptr269, %struct.ref_s** %iref, align 8
  br label %top

if.else.270:                                      ; preds = %if.end.264
  br label %out

sw.bb.271:                                        ; preds = %if.end.189, %if.end.189, %if.end.189, %if.end.189, %if.end.189, %if.end.189
  %213 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8
  %214 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %cmp272 = icmp uge %struct.ref_s* %213, %214
  br i1 %cmp272, label %if.then.274, label %if.end.275

if.then.274:                                      ; preds = %sw.bb.271
  %215 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  store %struct.ref_s* %215, %struct.ref_s** @esp, align 8
  %216 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8
  %217 = bitcast %struct.ref_s* %216 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.ref_s* @error_object to i8*), i8* %217, i64 16, i32 8, i1 false)
  store i32 -16, i32* %retval
  br label %return

if.end.275:                                       ; preds = %sw.bb.271
  %218 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8
  %incdec.ptr276 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %218, i32 1
  store %struct.ref_s* %incdec.ptr276, %struct.ref_s** %iosp, align 8
  %219 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8
  %220 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8
  %221 = bitcast %struct.ref_s* %219 to i8*
  %222 = bitcast %struct.ref_s* %220 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %221, i8* %222, i64 16, i32 8, i1 false)
  %223 = load i32, i32* %icount, align 4
  %dec277 = add nsw i32 %223, -1
  store i32 %dec277, i32* %icount, align 4
  %cmp278 = icmp sgt i32 %dec277, 0
  br i1 %cmp278, label %if.then.280, label %if.else.282

if.then.280:                                      ; preds = %if.end.275
  %224 = load %struct.ref_s*, %struct.ref_s** %iref, align 8
  %incdec.ptr281 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %224, i32 1
  store %struct.ref_s* %incdec.ptr281, %struct.ref_s** %iref, align 8
  br label %top

if.else.282:                                      ; preds = %if.end.275
  br label %out

sw.default.283:                                   ; preds = %if.end.189
  %225 = load i32, i32* %icount, align 4
  %cmp284 = icmp sgt i32 %225, 0
  br i1 %cmp284, label %cond.true.286, label %cond.false.293

cond.true.286:                                    ; preds = %sw.default.283
  %226 = load %struct.ref_s*, %struct.ref_s** %iref, align 8
  %add.ptr287 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %226, i64 1
  %227 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  %value288 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %227, i32 0, i32 0
  %refs289 = bitcast %union.v* %value288 to %struct.ref_s**
  store %struct.ref_s* %add.ptr287, %struct.ref_s** %refs289, align 8
  %228 = load i32, i32* %icount, align 4
  %conv290 = trunc i32 %228 to i16
  %229 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  %size291 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %229, i32 0, i32 2
  store i16 %conv290, i16* %size291, align 2
  %conv292 = zext i16 %conv290 to i32
  br label %cond.end.294

cond.false.293:                                   ; preds = %sw.default.283
  br label %cond.end.294

cond.end.294:                                     ; preds = %cond.false.293, %cond.true.286
  %cond295 = phi i32 [ %conv292, %cond.true.286 ], [ 0, %cond.false.293 ]
  store i32 0, i32* %icount, align 4
  %230 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8
  store %struct.ref_s* %230, %struct.ref_s** %iref, align 8
  br label %top

sw.bb.296:                                        ; preds = %sw
  %231 = load %struct.ref_s*, %struct.ref_s** %iref, align 8
  %call297 = call i32 (%struct.ref_s*, %struct.stream_s**, ...) bitcast (i32 (...)* @file_check_read to i32 (%struct.ref_s*, %struct.stream_s**, ...)*)(%struct.ref_s* %231, %struct.stream_s** %s)
  store i32 %call297, i32* %code, align 4
  %232 = load i32, i32* %code, align 4
  %cmp298 = icmp slt i32 %232, 0
  br i1 %cmp298, label %if.then.300, label %if.end.301

if.then.300:                                      ; preds = %sw.bb.296
  %233 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  store %struct.ref_s* %233, %struct.ref_s** @esp, align 8
  %234 = load %struct.ref_s*, %struct.ref_s** %iref, align 8
  %235 = bitcast %struct.ref_s* %234 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.ref_s* @error_object to i8*), i8* %235, i64 16, i32 8, i1 false)
  %236 = load i32, i32* %code, align 4
  store i32 %236, i32* %retval
  br label %return

if.end.301:                                       ; preds = %sw.bb.296
  %237 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8
  store %struct.ref_s* %237, %struct.ref_s** @osp, align 8
  %238 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %call302 = call i32 (%struct.stream_s*, i32, %struct.ref_s*, ...) bitcast (i32 (...)* @scan_token to i32 (%struct.stream_s*, i32, %struct.ref_s*, ...)*)(%struct.stream_s* %238, i32 0, %struct.ref_s* %token)
  store i32 %call302, i32* %code, align 4
  switch i32 %call302, label %sw.default.327 [
    i32 0, label %sw.bb.303
    i32 1, label %sw.bb.321
  ]

sw.bb.303:                                        ; preds = %if.end.301
  %239 = load i32, i32* %icount, align 4
  %cmp304 = icmp sgt i32 %239, 0
  br i1 %cmp304, label %cond.true.306, label %cond.false.313

cond.true.306:                                    ; preds = %sw.bb.303
  %240 = load %struct.ref_s*, %struct.ref_s** %iref, align 8
  %add.ptr307 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %240, i64 1
  %241 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  %value308 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %241, i32 0, i32 0
  %refs309 = bitcast %union.v* %value308 to %struct.ref_s**
  store %struct.ref_s* %add.ptr307, %struct.ref_s** %refs309, align 8
  %242 = load i32, i32* %icount, align 4
  %conv310 = trunc i32 %242 to i16
  %243 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  %size311 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %243, i32 0, i32 2
  store i16 %conv310, i16* %size311, align 2
  %conv312 = zext i16 %conv310 to i32
  br label %cond.end.314

cond.false.313:                                   ; preds = %sw.bb.303
  br label %cond.end.314

cond.end.314:                                     ; preds = %cond.false.313, %cond.true.306
  %cond315 = phi i32 [ %conv312, %cond.true.306 ], [ 0, %cond.false.313 ]
  %244 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  %245 = load %struct.ref_s*, %struct.ref_s** @estop, align 8
  %cmp316 = icmp uge %struct.ref_s* %244, %245
  br i1 %cmp316, label %if.then.318, label %if.end.319

if.then.318:                                      ; preds = %cond.end.314
  %246 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  store %struct.ref_s* %246, %struct.ref_s** @esp, align 8
  %247 = load %struct.ref_s*, %struct.ref_s** %iref, align 8
  %248 = bitcast %struct.ref_s* %247 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.ref_s* @error_object to i8*), i8* %248, i64 16, i32 8, i1 false)
  store i32 -5, i32* %retval
  br label %return

if.end.319:                                       ; preds = %cond.end.314
  %249 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  %incdec.ptr320 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %249, i32 1
  store %struct.ref_s* %incdec.ptr320, %struct.ref_s** %iesp, align 8
  %250 = load %struct.ref_s*, %struct.ref_s** %iref, align 8
  %251 = bitcast %struct.ref_s* %incdec.ptr320 to i8*
  %252 = bitcast %struct.ref_s* %250 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %251, i8* %252, i64 16, i32 8, i1 false)
  store %struct.ref_s* %token, %struct.ref_s** %iref, align 8
  store i32 0, i32* %icount, align 4
  br label %top

sw.bb.321:                                        ; preds = %if.end.301
  %253 = load %struct.ref_s*, %struct.ref_s** %iref, align 8
  %254 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %call322 = call i32 (%struct.ref_s*, %struct.stream_s*, ...) bitcast (i32 (...)* @file_close to i32 (%struct.ref_s*, %struct.stream_s*, ...)*)(%struct.ref_s* %253, %struct.stream_s* %254)
  store i32 %call322, i32* %code, align 4
  %255 = load i32, i32* %code, align 4
  %cmp323 = icmp slt i32 %255, 0
  br i1 %cmp323, label %if.then.325, label %if.end.326

if.then.325:                                      ; preds = %sw.bb.321
  %256 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  store %struct.ref_s* %256, %struct.ref_s** @esp, align 8
  %257 = load %struct.ref_s*, %struct.ref_s** %iref, align 8
  %258 = bitcast %struct.ref_s* %257 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.ref_s* @error_object to i8*), i8* %258, i64 16, i32 8, i1 false)
  %259 = load i32, i32* %code, align 4
  store i32 %259, i32* %retval
  br label %return

if.end.326:                                       ; preds = %sw.bb.321
  br label %bot

sw.default.327:                                   ; preds = %if.end.301
  %260 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  store %struct.ref_s* %260, %struct.ref_s** @esp, align 8
  %261 = load %struct.ref_s*, %struct.ref_s** %iref, align 8
  %262 = bitcast %struct.ref_s* %261 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.ref_s* @error_object to i8*), i8* %262, i64 16, i32 8, i1 false)
  %263 = load i32, i32* %code, align 4
  store i32 %263, i32* %retval
  br label %return

sw.bb.328:                                        ; preds = %sw
  %264 = load %struct.ref_s*, %struct.ref_s** %iref, align 8
  %value329 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %264, i32 0, i32 0
  %bytes = bitcast %union.v* %value329 to i8**
  %265 = load i8*, i8** %bytes, align 8
  %266 = load %struct.ref_s*, %struct.ref_s** %iref, align 8
  %size330 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %266, i32 0, i32 2
  %267 = load i16, i16* %size330, align 2
  %conv331 = zext i16 %267 to i32
  call void @sread_string(%struct.stream_s* %ss, i8* %265, i32 %conv331)
  %268 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8
  store %struct.ref_s* %268, %struct.ref_s** @osp, align 8
  %call332 = call i32 (%struct.stream_s*, i32, %struct.ref_s*, ...) bitcast (i32 (...)* @scan_token to i32 (%struct.stream_s*, i32, %struct.ref_s*, ...)*)(%struct.stream_s* %ss, i32 1, %struct.ref_s* %token)
  store i32 %call332, i32* %code, align 4
  switch i32 %call332, label %sw.default.363 [
    i32 0, label %sw.bb.333
    i32 1, label %sw.bb.362
  ]

sw.bb.333:                                        ; preds = %sw.bb.328
  %269 = load i32, i32* %icount, align 4
  %cmp334 = icmp sgt i32 %269, 0
  br i1 %cmp334, label %cond.true.336, label %cond.false.343

cond.true.336:                                    ; preds = %sw.bb.333
  %270 = load %struct.ref_s*, %struct.ref_s** %iref, align 8
  %add.ptr337 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %270, i64 1
  %271 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  %value338 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %271, i32 0, i32 0
  %refs339 = bitcast %union.v* %value338 to %struct.ref_s**
  store %struct.ref_s* %add.ptr337, %struct.ref_s** %refs339, align 8
  %272 = load i32, i32* %icount, align 4
  %conv340 = trunc i32 %272 to i16
  %273 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  %size341 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %273, i32 0, i32 2
  store i16 %conv340, i16* %size341, align 2
  %conv342 = zext i16 %conv340 to i32
  br label %cond.end.344

cond.false.343:                                   ; preds = %sw.bb.333
  br label %cond.end.344

cond.end.344:                                     ; preds = %cond.false.343, %cond.true.336
  %cond345 = phi i32 [ %conv342, %cond.true.336 ], [ 0, %cond.false.343 ]
  %274 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  %275 = load %struct.ref_s*, %struct.ref_s** @estop, align 8
  %cmp346 = icmp uge %struct.ref_s* %274, %275
  br i1 %cmp346, label %if.then.348, label %if.end.349

if.then.348:                                      ; preds = %cond.end.344
  %276 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  store %struct.ref_s* %276, %struct.ref_s** @esp, align 8
  %277 = load %struct.ref_s*, %struct.ref_s** %iref, align 8
  %278 = bitcast %struct.ref_s* %277 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.ref_s* @error_object to i8*), i8* %278, i64 16, i32 8, i1 false)
  store i32 -5, i32* %retval
  br label %return

if.end.349:                                       ; preds = %cond.end.344
  %279 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  %incdec.ptr350 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %279, i32 1
  store %struct.ref_s* %incdec.ptr350, %struct.ref_s** %iesp, align 8
  %280 = load %struct.ref_s*, %struct.ref_s** %iref, align 8
  %type_attrs351 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %280, i32 0, i32 1
  %281 = load i16, i16* %type_attrs351, align 2
  %282 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  %type_attrs352 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %282, i32 0, i32 1
  store i16 %281, i16* %type_attrs352, align 2
  %cptr = getelementptr inbounds %struct.stream_s, %struct.stream_s* %ss, i32 0, i32 0
  %283 = load i8*, i8** %cptr, align 8
  %add.ptr353 = getelementptr inbounds i8, i8* %283, i64 1
  %284 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  %value354 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %284, i32 0, i32 0
  %bytes355 = bitcast %union.v* %value354 to i8**
  store i8* %add.ptr353, i8** %bytes355, align 8
  %cbuf = getelementptr inbounds %struct.stream_s, %struct.stream_s* %ss, i32 0, i32 2
  %285 = load i8*, i8** %cbuf, align 8
  %bsize = getelementptr inbounds %struct.stream_s, %struct.stream_s* %ss, i32 0, i32 3
  %286 = load i32, i32* %bsize, align 4
  %idx.ext356 = zext i32 %286 to i64
  %add.ptr357 = getelementptr inbounds i8, i8* %285, i64 %idx.ext356
  %cptr358 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %ss, i32 0, i32 0
  %287 = load i8*, i8** %cptr358, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr357 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %287 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub359 = sub nsw i64 %sub.ptr.sub, 1
  %conv360 = trunc i64 %sub359 to i16
  %288 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  %size361 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %288, i32 0, i32 2
  store i16 %conv360, i16* %size361, align 2
  store %struct.ref_s* %token, %struct.ref_s** %iref, align 8
  store i32 0, i32* %icount, align 4
  br label %top

sw.bb.362:                                        ; preds = %sw.bb.328
  br label %bot

sw.default.363:                                   ; preds = %sw.bb.328
  %289 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  store %struct.ref_s* %289, %struct.ref_s** @esp, align 8
  %290 = load %struct.ref_s*, %struct.ref_s** %iref, align 8
  %291 = bitcast %struct.ref_s* %290 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.ref_s* @error_object to i8*), i8* %291, i64 16, i32 8, i1 false)
  %292 = load i32, i32* %code, align 4
  store i32 %292, i32* %retval
  br label %return

sw.epilog.364:                                    ; preds = %sw, %sw.bb.1
  %293 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8
  %294 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %cmp365 = icmp uge %struct.ref_s* %293, %294
  br i1 %cmp365, label %if.then.367, label %if.end.368

if.then.367:                                      ; preds = %sw.epilog.364
  %295 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  store %struct.ref_s* %295, %struct.ref_s** @esp, align 8
  %296 = load %struct.ref_s*, %struct.ref_s** %iref, align 8
  %297 = bitcast %struct.ref_s* %296 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.ref_s* @error_object to i8*), i8* %297, i64 16, i32 8, i1 false)
  store i32 -16, i32* %retval
  br label %return

if.end.368:                                       ; preds = %sw.epilog.364
  %298 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8
  %incdec.ptr369 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %298, i32 1
  store %struct.ref_s* %incdec.ptr369, %struct.ref_s** %iosp, align 8
  %299 = load %struct.ref_s*, %struct.ref_s** %iosp, align 8
  %300 = load %struct.ref_s*, %struct.ref_s** %iref, align 8
  %301 = bitcast %struct.ref_s* %299 to i8*
  %302 = bitcast %struct.ref_s* %300 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %301, i8* %302, i64 16, i32 8, i1 false)
  br label %bot

bot:                                              ; preds = %if.end.368, %sw.bb.362, %if.end.326, %if.then.250, %if.then.158, %sw.bb.132, %if.end
  %303 = load i32, i32* %icount, align 4
  %dec370 = add nsw i32 %303, -1
  store i32 %dec370, i32* %icount, align 4
  %cmp371 = icmp sgt i32 %dec370, 0
  br i1 %cmp371, label %if.then.373, label %if.else.375

if.then.373:                                      ; preds = %bot
  %304 = load %struct.ref_s*, %struct.ref_s** %iref, align 8
  %incdec.ptr374 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %304, i32 1
  store %struct.ref_s* %incdec.ptr374, %struct.ref_s** %iref, align 8
  br label %top

if.else.375:                                      ; preds = %bot
  br label %out

out:                                              ; preds = %if.else.375, %if.else.282, %if.else.270, %if.else.177, %if.else.131, %if.else.118, %if.else.106, %if.else.39, %if.else.24, %if.else
  %305 = load i32, i32* %icount, align 4
  %tobool376 = icmp ne i32 %305, 0
  br i1 %tobool376, label %if.end.380, label %if.then.377

if.then.377:                                      ; preds = %out
  %306 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  %incdec.ptr378 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %306, i32 -1
  store %struct.ref_s* %incdec.ptr378, %struct.ref_s** %iesp, align 8
  %307 = load %struct.ref_s*, %struct.ref_s** %iref, align 8
  %incdec.ptr379 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %307, i32 1
  store %struct.ref_s* %incdec.ptr379, %struct.ref_s** %iref, align 8
  br label %top

if.end.380:                                       ; preds = %out
  br label %up

up:                                               ; preds = %if.then.400, %if.end.380, %if.end.252, %if.then.220, %if.end.160, %if.then.85
  %308 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  %type_attrs381 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %308, i32 0, i32 1
  %309 = load i16, i16* %type_attrs381, align 2
  %conv382 = zext i16 %309 to i32
  %and383 = and i32 %conv382, 255
  switch i32 %and383, label %sw.default.384 [
    i32 3, label %sw.bb.386
    i32 43, label %sw.bb.387
  ]

sw.default.384:                                   ; preds = %up
  %310 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  %incdec.ptr385 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %310, i32 -1
  store %struct.ref_s* %incdec.ptr385, %struct.ref_s** %iesp, align 8
  store %struct.ref_s* %310, %struct.ref_s** %iref, align 8
  store i32 0, i32* %icount, align 4
  br label %top

sw.bb.386:                                        ; preds = %up
  br label %sw.bb.387

sw.bb.387:                                        ; preds = %up, %sw.bb.386
  br label %sw.epilog.388

sw.epilog.388:                                    ; preds = %sw.bb.387
  %311 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  %value389 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %311, i32 0, i32 0
  %refs390 = bitcast %union.v* %value389 to %struct.ref_s**
  %312 = load %struct.ref_s*, %struct.ref_s** %refs390, align 8
  store %struct.ref_s* %312, %struct.ref_s** %iref, align 8
  %313 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  %size391 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %313, i32 0, i32 2
  %314 = load i16, i16* %size391, align 2
  %conv392 = zext i16 %314 to i32
  %sub393 = sub nsw i32 %conv392, 1
  store i32 %sub393, i32* %icount, align 4
  %315 = load i32, i32* %icount, align 4
  %cmp394 = icmp sle i32 %315, 0
  br i1 %cmp394, label %if.then.396, label %if.end.402

if.then.396:                                      ; preds = %sw.epilog.388
  %316 = load %struct.ref_s*, %struct.ref_s** %iesp, align 8
  %incdec.ptr397 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %316, i32 -1
  store %struct.ref_s* %incdec.ptr397, %struct.ref_s** %iesp, align 8
  %317 = load i32, i32* %icount, align 4
  %cmp398 = icmp slt i32 %317, 0
  br i1 %cmp398, label %if.then.400, label %if.end.401

if.then.400:                                      ; preds = %if.then.396
  br label %up

if.end.401:                                       ; preds = %if.then.396
  br label %if.end.402

if.end.402:                                       ; preds = %if.end.401, %sw.epilog.388
  br label %top

return:                                           ; preds = %if.then.367, %sw.default.363, %if.then.348, %sw.default.327, %if.then.325, %if.then.318, %if.then.300, %if.then.274, %sw.epilog.263, %if.then.208, %if.then.187, %sw.default.170, %if.then.123, %if.then.110, %if.then.94, %if.then.50, %if.then.46, %if.then.28, %if.then.15, %if.then.5, %sw.bb, %if.then
  %318 = load i32, i32* %retval
  ret i32 %318
}

declare i32 @dict_lookup(%struct.ref_s*, %struct.ref_s*, %struct.ref_s*, %struct.ref_s**) #0

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i32 @obj_compare(...) #0

declare i32 @file_check_read(...) #0

declare i32 @scan_token(...) #0

declare i32 @file_close(...) #0

declare void @sread_string(%struct.stream_s*, i8*, i32) #0

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
