; ModuleID = './src/profiler.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emacs_globals = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.Lisp_Intfwd = type { i32, i64* }
%struct.hash_table_test = type { i64, i64, i64, i1 (%struct.hash_table_test*, i64, i64)*, i64 (%struct.hash_table_test*, i64)* }
%struct.Lisp_Subr = type { %struct.vectorlike_header, %union.anon.0, i16, i16, i8*, i8*, i8* }
%struct.vectorlike_header = type { i64 }
%union.anon.0 = type { i64 ()* }
%struct.Lisp_Hash_Table = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.hash_table_test, %struct.Lisp_Hash_Table* }
%struct.sigaction = type { %union.anon.1, %struct.__sigset_t, i32, void ()* }
%union.anon.1 = type { void (i32)* }
%struct.__sigset_t = type { [16 x i64] }
%struct.itimerval = type { %struct.timeval, %struct.timeval }
%struct.timeval = type { i64, i64 }
%struct.timespec = type { i64, i64 }
%struct.sigevent = type { %union.sigval, i32, i32, %union.anon.9 }
%union.sigval = type { i8* }
%union.anon.9 = type { %struct.anon.10, [32 x i8] }
%struct.anon.10 = type { void (i8*)*, %union.pthread_attr_t* }
%union.pthread_attr_t = type { i64, [48 x i8] }
%struct.itimerspec = type { %struct.timespec, %struct.timespec }
%struct.Lisp_Cons = type { i64, %union.anon }
%union.anon = type { i64 }

@profiler_cpu_running = internal global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"CPU profiler is already running\00", align 1
@cpu_log = internal global i64 0, align 8
@cpu_gc_count = internal global i64 0, align 8
@globals = external global %struct.emacs_globals, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Invalid sampling interval\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Unable to start profiler timer\00", align 1
@profiler_timer = internal global i8* null, align 8
@profiler_memory_running = common global i8 0, align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Memory profiler is already running\00", align 1
@memory_log = internal global i64 0, align 8
@syms_of_profiler.i_fwd = internal global %struct.Lisp_Intfwd zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"profiler-max-stack-depth\00", align 1
@syms_of_profiler.i_fwd.5 = internal global %struct.Lisp_Intfwd zeroinitializer, align 8
@.str.6 = private unnamed_addr constant [18 x i8] c"profiler-log-size\00", align 1
@hashtest_profiler = internal global %struct.hash_table_test zeroinitializer, align 8
@Sprofiler_cpu_stop = internal global %struct.Lisp_Subr { %struct.vectorlike_header { i64 167772160 }, %union.anon.0 { i64 ()* @Fprofiler_cpu_stop }, i16 0, i16 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* null }, align 8
@Sprofiler_cpu_running_p = internal global %struct.Lisp_Subr { %struct.vectorlike_header { i64 167772160 }, %union.anon.0 { i64 ()* @Fprofiler_cpu_running_p }, i16 0, i16 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0), i8* null, i8* null }, align 8
@Sprofiler_cpu_log = internal global %struct.Lisp_Subr { %struct.vectorlike_header { i64 167772160 }, %union.anon.0 { i64 ()* @Fprofiler_cpu_log }, i16 0, i16 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i8* null, i8* null }, align 8
@Sprofiler_memory_start = internal global %struct.Lisp_Subr { %struct.vectorlike_header { i64 167772160 }, %union.anon.0 { i64 ()* @Fprofiler_memory_start }, i16 0, i16 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* null }, align 8
@Sprofiler_memory_stop = internal global %struct.Lisp_Subr { %struct.vectorlike_header { i64 167772160 }, %union.anon.0 { i64 ()* @Fprofiler_memory_stop }, i16 0, i16 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i32 0, i32 0), i8* null, i8* null }, align 8
@Sprofiler_memory_running_p = internal global %struct.Lisp_Subr { %struct.vectorlike_header { i64 167772160 }, %union.anon.0 { i64 ()* @Fprofiler_memory_running_p }, i16 0, i16 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i32 0, i32 0), i8* null, i8* null }, align 8
@Sprofiler_memory_log = internal global %struct.Lisp_Subr { %struct.vectorlike_header { i64 167772160 }, %union.anon.0 { i64 ()* @Fprofiler_memory_log }, i16 0, i16 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0), i8* null, i8* null }, align 8
@current_sampling_interval = internal global i64 0, align 8
@profiler_timer_ok = internal global i8 0, align 1
@setup_cpu_timer.system_clock = internal constant [4 x i32] [i32 3, i32 2, i32 1, i32 0], align 16
@.str.7 = private unnamed_addr constant [15 x i8] c"function-equal\00", align 1
@Sfunction_equal = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Ffunction_equal }, i16 2, i16 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.8 = private unnamed_addr constant [19 x i8] c"profiler-cpu-start\00", align 1
@Sprofiler_cpu_start = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fprofiler_cpu_start }, i16 1, i16 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.9 = private unnamed_addr constant [18 x i8] c"profiler-cpu-stop\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"profiler-cpu-running-p\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"profiler-cpu-log\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"profiler-memory-start\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"profiler-memory-stop\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"profiler-memory-running-p\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"profiler-memory-log\00", align 1

; Function Attrs: nounwind uwtable
define i64 @Fprofiler_cpu_start(i64 %sampling_interval) #0 {
entry:
  %sampling_interval.addr = alloca i64, align 8
  %status = alloca i32, align 4
  store i64 %sampling_interval, i64* %sampling_interval.addr, align 8
  %0 = load i32, i32* @profiler_cpu_running, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i64, i64* @cpu_log, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %1, %call
  br i1 %cmp, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %if.end
  store i64 0, i64* @cpu_gc_count, align 8
  %2 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 404), align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 405), align 8
  %call2 = call i64 @make_log(i64 %2, i64 %3)
  store i64 %call2, i64* @cpu_log, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.1, %if.end
  %4 = load i64, i64* %sampling_interval.addr, align 8
  %call4 = call i32 @setup_cpu_timer(i64 %4)
  store i32 %call4, i32* %status, align 4
  %5 = load i32, i32* %status, align 4
  %cmp5 = icmp eq i32 %5, -1
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end.3
  store i32 0, i32* @profiler_cpu_running, align 4
  call void (i8*, ...) @error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0)) #6
  unreachable

if.else:                                          ; preds = %if.end.3
  %6 = load i32, i32* %status, align 4
  store i32 %6, i32* @profiler_cpu_running, align 4
  %7 = load i32, i32* @profiler_cpu_running, align 4
  %tobool7 = icmp ne i32 %7, 0
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.else
  call void (i8*, ...) @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0)) #6
  unreachable

if.end.9:                                         ; preds = %if.else
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9
  %call11 = call i64 @builtin_lisp_symbol(i32 901)
  ret i64 %call11
}

; Function Attrs: noreturn
declare void @error(i8*, ...) #1

declare i64 @builtin_lisp_symbol(i32) #2

; Function Attrs: nounwind uwtable
define internal i64 @make_log(i64 %heap_size, i64 %max_stack_depth) #0 {
entry:
  %heap_size.addr = alloca i64, align 8
  %max_stack_depth.addr = alloca i64, align 8
  %log = alloca i64, align 8
  %h = alloca %struct.Lisp_Hash_Table*, align 8
  %i = alloca i64, align 8
  store i64 %heap_size, i64* %heap_size.addr, align 8
  store i64 %max_stack_depth, i64* %max_stack_depth.addr, align 8
  %0 = load i64, i64* %heap_size.addr, align 8
  %shl = shl i64 %0, 2
  %add = add i64 %shl, 2
  %call = call i64 @make_float(double 1.500000e+00)
  %call1 = call i64 @make_float(double 8.000000e-01)
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %call3 = call i64 @make_hash_table(%struct.hash_table_test* byval align 8 @hashtest_profiler, i64 %add, i64 %call, i64 %call1, i64 %call2)
  store i64 %call3, i64* %log, align 8
  %1 = load i64, i64* %log, align 8
  %call4 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %1)
  store %struct.Lisp_Hash_Table* %call4, %struct.Lisp_Hash_Table** %h, align 8
  %2 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %h, align 8
  %key_and_value = getelementptr inbounds %struct.Lisp_Hash_Table, %struct.Lisp_Hash_Table* %2, i32 0, i32 9
  %3 = load i64, i64* %key_and_value, align 8
  %call5 = call i64 @ASIZE(i64 %3)
  %shr = ashr i64 %call5, 1
  store i64 %shr, i64* %i, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %4 = load i64, i64* %i, align 8
  %cmp = icmp sgt i64 %4, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %h, align 8
  %6 = load i64, i64* %i, align 8
  %dec = add nsw i64 %6, -1
  store i64 %dec, i64* %i, align 8
  %7 = load i64, i64* %max_stack_depth.addr, align 8
  %shl6 = shl i64 %7, 2
  %add7 = add i64 %shl6, 2
  %call8 = call i64 @builtin_lisp_symbol(i32 0)
  %call9 = call i64 @Fmake_vector(i64 %add7, i64 %call8)
  call void @set_hash_key_slot(%struct.Lisp_Hash_Table* %5, i64 %dec, i64 %call9)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load i64, i64* %log, align 8
  ret i64 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @setup_cpu_timer(i64 %sampling_interval) #0 {
entry:
  %retval = alloca i32, align 4
  %sampling_interval.addr = alloca i64, align 8
  %action = alloca %struct.sigaction, align 8
  %timer = alloca %struct.itimerval, align 8
  %interval = alloca %struct.timespec, align 8
  %billion = alloca i32, align 4
  %coerce = alloca %struct.timespec, align 8
  %i = alloca i32, align 4
  %sigev = alloca %struct.sigevent, align 8
  %ispec = alloca %struct.itimerspec, align 8
  %coerce30 = alloca %struct.timeval, align 8
  store i64 %sampling_interval, i64* %sampling_interval.addr, align 8
  store i32 1000000000, i32* %billion, align 4
  %0 = load i64, i64* %sampling_interval.addr, align 8
  %1 = load i32, i32* %billion, align 4
  %conv = sext i32 %1 to i64
  %div = sdiv i64 9223372036854775807, %conv
  %cmp = icmp slt i64 9223372036854775807, %div
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %billion, align 4
  %conv2 = sext i32 %2 to i64
  %mul = mul nsw i64 9223372036854775807, %conv2
  %3 = load i32, i32* %billion, align 4
  %sub = sub nsw i32 %3, 1
  %conv3 = sext i32 %sub to i64
  %add = add nsw i64 %mul, %conv3
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add, %cond.true ], [ 9223372036854775807, %cond.false ]
  %call = call zeroext i1 @RANGED_INTEGERP(i64 1, i64 %0, i64 %cond)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %4 = load i64, i64* %sampling_interval.addr, align 8
  %shr = ashr i64 %4, 2
  store i64 %shr, i64* @current_sampling_interval, align 8
  %5 = load i64, i64* @current_sampling_interval, align 8
  %6 = load i32, i32* %billion, align 4
  %conv4 = sext i32 %6 to i64
  %div5 = sdiv i64 %5, %conv4
  %7 = load i64, i64* @current_sampling_interval, align 8
  %8 = load i32, i32* %billion, align 4
  %conv6 = sext i32 %8 to i64
  %rem = srem i64 %7, %conv6
  %call7 = call { i64, i64 } @make_timespec(i64 %div5, i64 %rem)
  %9 = bitcast %struct.timespec* %coerce to { i64, i64 }*
  %10 = getelementptr { i64, i64 }, { i64, i64 }* %9, i32 0, i32 0
  %11 = extractvalue { i64, i64 } %call7, 0
  store i64 %11, i64* %10, align 8
  %12 = getelementptr { i64, i64 }, { i64, i64 }* %9, i32 0, i32 1
  %13 = extractvalue { i64, i64 } %call7, 1
  store i64 %13, i64* %12, align 8
  %14 = bitcast %struct.timespec* %interval to i8*
  %15 = bitcast %struct.timespec* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 16, i32 8, i1 false)
  call void @emacs_sigaction_init(%struct.sigaction* %action, void (i32)* @deliver_profiler_signal)
  %call8 = call i32 @sigaction(i32 27, %struct.sigaction* %action, %struct.sigaction* null) #3
  %16 = load i8, i8* @profiler_timer_ok, align 1
  %tobool = trunc i8 %16 to i1
  br i1 %tobool, label %if.end.18, label %if.then.9

if.then.9:                                        ; preds = %if.end
  %sigev_value = getelementptr inbounds %struct.sigevent, %struct.sigevent* %sigev, i32 0, i32 0
  %sival_ptr = bitcast %union.sigval* %sigev_value to i8**
  store i8* bitcast (i8** @profiler_timer to i8*), i8** %sival_ptr, align 8
  %sigev_signo = getelementptr inbounds %struct.sigevent, %struct.sigevent* %sigev, i32 0, i32 1
  store i32 27, i32* %sigev_signo, align 4
  %sigev_notify = getelementptr inbounds %struct.sigevent, %struct.sigevent* %sigev, i32 0, i32 2
  store i32 0, i32* %sigev_notify, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.9
  %17 = load i32, i32* %i, align 4
  %conv10 = sext i32 %17 to i64
  %cmp11 = icmp ult i64 %conv10, 4
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %i, align 4
  %idxprom = sext i32 %18 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* @setup_cpu_timer.system_clock, i32 0, i64 %idxprom
  %19 = load i32, i32* %arrayidx, align 4
  %call13 = call i32 @timer_create(i32 %19, %struct.sigevent* %sigev, i8** @profiler_timer) #3
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %for.body
  store i8 1, i8* @profiler_timer_ok, align 1
  br label %for.end

if.end.17:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.17
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.16, %for.cond
  br label %if.end.18

if.end.18:                                        ; preds = %for.end, %if.end
  %21 = load i8, i8* @profiler_timer_ok, align 1
  %tobool19 = trunc i8 %21 to i1
  br i1 %tobool19, label %if.then.20, label %if.end.26

if.then.20:                                       ; preds = %if.end.18
  %it_value = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %ispec, i32 0, i32 1
  %it_interval = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %ispec, i32 0, i32 0
  %22 = bitcast %struct.timespec* %it_interval to i8*
  %23 = bitcast %struct.timespec* %interval to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 16, i32 8, i1 false)
  %24 = bitcast %struct.timespec* %it_value to i8*
  %25 = bitcast %struct.timespec* %it_interval to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 16, i32 8, i1 false)
  %26 = load i8*, i8** @profiler_timer, align 8
  %call21 = call i32 @timer_settime(i8* %26, i32 0, %struct.itimerspec* %ispec, %struct.itimerspec* null) #3
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.then.20
  store i32 1, i32* %retval
  br label %return

if.end.25:                                        ; preds = %if.then.20
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.end.18
  %it_value27 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %timer, i32 0, i32 1
  %it_interval28 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %timer, i32 0, i32 0
  %27 = bitcast %struct.timespec* %interval to { i64, i64 }*
  %28 = getelementptr { i64, i64 }, { i64, i64 }* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 1
  %30 = getelementptr { i64, i64 }, { i64, i64 }* %27, i32 0, i32 1
  %31 = load i64, i64* %30, align 1
  %call29 = call { i64, i64 } @make_timeval(i64 %29, i64 %31) #7
  %32 = bitcast %struct.timeval* %coerce30 to { i64, i64 }*
  %33 = getelementptr { i64, i64 }, { i64, i64 }* %32, i32 0, i32 0
  %34 = extractvalue { i64, i64 } %call29, 0
  store i64 %34, i64* %33, align 8
  %35 = getelementptr { i64, i64 }, { i64, i64 }* %32, i32 0, i32 1
  %36 = extractvalue { i64, i64 } %call29, 1
  store i64 %36, i64* %35, align 8
  %37 = bitcast %struct.timeval* %it_interval28 to i8*
  %38 = bitcast %struct.timeval* %coerce30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 16, i32 8, i1 false)
  %39 = bitcast %struct.timeval* %it_value27 to i8*
  %40 = bitcast %struct.timeval* %it_interval28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 16, i32 8, i1 false)
  %call31 = call i32 @setitimer(i32 2, %struct.itimerval* %timer, %struct.itimerval* null) #3
  %cmp32 = icmp eq i32 %call31, 0
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.26
  store i32 2, i32* %retval
  br label %return

if.end.35:                                        ; preds = %if.end.26
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.35, %if.then.34, %if.then.24, %if.then
  %41 = load i32, i32* %retval
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define i64 @Fprofiler_cpu_stop() #0 {
entry:
  %retval = alloca i64, align 8
  %disable = alloca %struct.itimerspec, align 8
  %disable4 = alloca %struct.itimerval, align 8
  %0 = load i32, i32* @profiler_cpu_running, align 4
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %1 = bitcast %struct.itimerspec* %disable to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 32, i32 8, i1 false)
  %2 = load i8*, i8** @profiler_timer, align 8
  %call2 = call i32 @timer_settime(i8* %2, i32 0, %struct.itimerspec* %disable, %struct.itimerspec* null) #3
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %3 = bitcast %struct.itimerval* %disable4 to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 32, i32 8, i1 false)
  %call5 = call i32 @setitimer(i32 2, %struct.itimerval* %disable4, %struct.itimerval* null) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.3, %sw.bb.1
  %call6 = call void (i32)* @signal(i32 27, void (i32)* inttoptr (i64 1 to void (i32)*)) #3
  store i32 0, i32* @profiler_cpu_running, align 4
  %call7 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call7, i64* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb
  %4 = load i64, i64* %retval
  ret i64 %4
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind
declare i32 @timer_settime(i8*, i32, %struct.itimerspec*, %struct.itimerspec*) #4

; Function Attrs: nounwind
declare i32 @setitimer(i32, %struct.itimerval*, %struct.itimerval*) #4

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #4

; Function Attrs: nounwind uwtable
define i64 @Fprofiler_cpu_running_p() #0 {
entry:
  %0 = load i32, i32* @profiler_cpu_running, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call, %cond.true ], [ %call1, %cond.false ]
  ret i64 %cond
}

; Function Attrs: nounwind uwtable
define i64 @Fprofiler_cpu_log() #0 {
entry:
  %result = alloca i64, align 8
  %0 = load i64, i64* @cpu_log, align 8
  store i64 %0, i64* %result, align 8
  %1 = load i32, i32* @profiler_cpu_running, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 404), align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 405), align 8
  %call = call i64 @make_log(i64 %2, i64 %3)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call, %cond.true ], [ %call1, %cond.false ]
  store i64 %cond, i64* @cpu_log, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 192)
  %call3 = call i64 @Fmake_vector(i64 6, i64 %call2)
  %4 = load i64, i64* @cpu_gc_count, align 8
  %shl = shl i64 %4, 2
  %add = add i64 %shl, 2
  %5 = load i64, i64* %result, align 8
  %call4 = call i64 @Fputhash(i64 %call3, i64 %add, i64 %5)
  store i64 0, i64* @cpu_gc_count, align 8
  %6 = load i64, i64* %result, align 8
  ret i64 %6
}

declare i64 @Fputhash(i64, i64, i64) #2

declare i64 @Fmake_vector(i64, i64) #2

; Function Attrs: nounwind uwtable
define i64 @Fprofiler_memory_start() #0 {
entry:
  %0 = load i8, i8* @profiler_memory_running, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i64, i64* @memory_log, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %1, %call
  br i1 %cmp, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %if.end
  %2 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 404), align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 405), align 8
  %call2 = call i64 @make_log(i64 %2, i64 %3)
  store i64 %call2, i64* @memory_log, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.1, %if.end
  store i8 1, i8* @profiler_memory_running, align 1
  %call4 = call i64 @builtin_lisp_symbol(i32 901)
  ret i64 %call4
}

; Function Attrs: nounwind uwtable
define i64 @Fprofiler_memory_stop() #0 {
entry:
  %retval = alloca i64, align 8
  %0 = load i8, i8* @profiler_memory_running, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i8 0, i8* @profiler_memory_running, align 1
  %call1 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call1, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %1 = load i64, i64* %retval
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define i64 @Fprofiler_memory_running_p() #0 {
entry:
  %0 = load i8, i8* @profiler_memory_running, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call, %cond.true ], [ %call1, %cond.false ]
  ret i64 %cond
}

; Function Attrs: nounwind uwtable
define i64 @Fprofiler_memory_log() #0 {
entry:
  %result = alloca i64, align 8
  %0 = load i64, i64* @memory_log, align 8
  store i64 %0, i64* %result, align 8
  %1 = load i8, i8* @profiler_memory_running, align 1
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 404), align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 405), align 8
  %call = call i64 @make_log(i64 %2, i64 %3)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call, %cond.true ], [ %call1, %cond.false ]
  store i64 %cond, i64* @memory_log, align 8
  %4 = load i64, i64* %result, align 8
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define void @malloc_probe(i64 %size) #0 {
entry:
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i64, i64* @memory_log, align 8
  %call = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %0)
  %1 = load i64, i64* %size.addr, align 8
  %cmp = icmp ult i64 %1, 2305843009213693951
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %2, %cond.true ], [ 2305843009213693951, %cond.false ]
  call void @record_backtrace(%struct.Lisp_Hash_Table* %call, i64 %cond)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @record_backtrace(%struct.Lisp_Hash_Table* %log, i64 %count) #0 {
entry:
  %log.addr = alloca %struct.Lisp_Hash_Table*, align 8
  %count.addr = alloca i64, align 8
  %backtrace = alloca i64, align 8
  %index = alloca i64, align 8
  %hash = alloca i64, align 8
  %j = alloca i64, align 8
  %old_val = alloca i64, align 8
  %new_val = alloca i64, align 8
  %j11 = alloca i64, align 8
  store %struct.Lisp_Hash_Table* %log, %struct.Lisp_Hash_Table** %log.addr, align 8
  store i64 %count, i64* %count.addr, align 8
  %0 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %log.addr, align 8
  %next_free = getelementptr inbounds %struct.Lisp_Hash_Table, %struct.Lisp_Hash_Table* %0, i32 0, i32 6
  %1 = load i64, i64* %next_free, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %and1 = and i32 %conv, -5
  %cmp = icmp eq i32 %and1, 2
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %log.addr, align 8
  call void @evict_lower_half(%struct.Lisp_Hash_Table* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %log.addr, align 8
  %next_free3 = getelementptr inbounds %struct.Lisp_Hash_Table, %struct.Lisp_Hash_Table* %3, i32 0, i32 6
  %4 = load i64, i64* %next_free3, align 8
  %shr = ashr i64 %4, 2
  store i64 %shr, i64* %index, align 8
  %5 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %log.addr, align 8
  %6 = load i64, i64* %index, align 8
  %call = call i64 @HASH_KEY(%struct.Lisp_Hash_Table* %5, i64 %6)
  store i64 %call, i64* %backtrace, align 8
  %7 = load i64, i64* %backtrace, align 8
  call void @get_backtrace(i64 %7)
  %8 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %log.addr, align 8
  %9 = load i64, i64* %backtrace, align 8
  %call4 = call i64 @hash_lookup(%struct.Lisp_Hash_Table* %8, i64 %9, i64* %hash)
  store i64 %call4, i64* %j, align 8
  %10 = load i64, i64* %j, align 8
  %cmp5 = icmp sge i64 %10, 0
  br i1 %cmp5, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end
  %11 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %log.addr, align 8
  %12 = load i64, i64* %j, align 8
  %call8 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %11, i64 %12)
  %shr9 = ashr i64 %call8, 2
  store i64 %shr9, i64* %old_val, align 8
  %13 = load i64, i64* %old_val, align 8
  %14 = load i64, i64* %count.addr, align 8
  %call10 = call i64 @saturated_add(i64 %13, i64 %14)
  store i64 %call10, i64* %new_val, align 8
  %15 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %log.addr, align 8
  %16 = load i64, i64* %j, align 8
  %17 = load i64, i64* %new_val, align 8
  %shl = shl i64 %17, 2
  %add = add i64 %shl, 2
  call void @set_hash_value_slot(%struct.Lisp_Hash_Table* %15, i64 %16, i64 %add)
  br label %if.end.15

if.else:                                          ; preds = %if.end
  %18 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %log.addr, align 8
  %19 = load i64, i64* %backtrace, align 8
  %20 = load i64, i64* %count.addr, align 8
  %shl12 = shl i64 %20, 2
  %add13 = add i64 %shl12, 2
  %21 = load i64, i64* %hash, align 8
  %call14 = call i64 @hash_put(%struct.Lisp_Hash_Table* %18, i64 %19, i64 %add13, i64 %21)
  store i64 %call14, i64* %j11, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.7
  ret void
}

declare %struct.Lisp_Hash_Table* @XHASH_TABLE(i64) #2

; Function Attrs: nounwind uwtable
define i64 @Ffunction_equal(i64 %f1, i64 %f2) #0 {
entry:
  %f1.addr = alloca i64, align 8
  %f2.addr = alloca i64, align 8
  %res = alloca i8, align 1
  store i64 %f1, i64* %f1.addr, align 8
  store i64 %f2, i64* %f2.addr, align 8
  %0 = load i64, i64* %f1.addr, align 8
  %1 = load i64, i64* %f2.addr, align 8
  %cmp = icmp eq i64 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8 1, i8* %res, align 1
  br label %if.end.56

if.else:                                          ; preds = %entry
  %2 = load i64, i64* %f1.addr, align 8
  %call = call zeroext i1 @COMPILEDP(i64 %2)
  br i1 %call, label %land.lhs.true, label %if.else.6

land.lhs.true:                                    ; preds = %if.else
  %3 = load i64, i64* %f2.addr, align 8
  %call1 = call zeroext i1 @COMPILEDP(i64 %3)
  br i1 %call1, label %if.then.2, label %if.else.6

if.then.2:                                        ; preds = %land.lhs.true
  %4 = load i64, i64* %f1.addr, align 8
  %call3 = call i64 @AREF(i64 %4, i64 1)
  %5 = load i64, i64* %f2.addr, align 8
  %call4 = call i64 @AREF(i64 %5, i64 1)
  %cmp5 = icmp eq i64 %call3, %call4
  %frombool = zext i1 %cmp5 to i8
  store i8 %frombool, i8* %res, align 1
  br label %if.end.55

if.else.6:                                        ; preds = %land.lhs.true, %if.else
  %6 = load i64, i64* %f1.addr, align 8
  %and = and i64 %6, 7
  %conv = trunc i64 %and to i32
  %cmp7 = icmp eq i32 %conv, 3
  br i1 %cmp7, label %land.lhs.true.9, label %if.else.54

land.lhs.true.9:                                  ; preds = %if.else.6
  %7 = load i64, i64* %f2.addr, align 8
  %and10 = and i64 %7, 7
  %conv11 = trunc i64 %and10 to i32
  %cmp12 = icmp eq i32 %conv11, 3
  br i1 %cmp12, label %land.lhs.true.14, label %if.else.54

land.lhs.true.14:                                 ; preds = %land.lhs.true.9
  %8 = load i64, i64* %f1.addr, align 8
  %sub = sub nsw i64 %8, 3
  %9 = inttoptr i64 %sub to i8*
  %10 = bitcast i8* %9 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %10, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %11 = load i64, i64* %cdr, align 8
  %and15 = and i64 %11, 7
  %conv16 = trunc i64 %and15 to i32
  %cmp17 = icmp eq i32 %conv16, 3
  br i1 %cmp17, label %land.lhs.true.19, label %if.else.54

land.lhs.true.19:                                 ; preds = %land.lhs.true.14
  %12 = load i64, i64* %f2.addr, align 8
  %sub20 = sub nsw i64 %12, 3
  %13 = inttoptr i64 %sub20 to i8*
  %14 = bitcast i8* %13 to %struct.Lisp_Cons*
  %u21 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %14, i32 0, i32 1
  %cdr22 = bitcast %union.anon* %u21 to i64*
  %15 = load i64, i64* %cdr22, align 8
  %and23 = and i64 %15, 7
  %conv24 = trunc i64 %and23 to i32
  %cmp25 = icmp eq i32 %conv24, 3
  br i1 %cmp25, label %land.lhs.true.27, label %if.else.54

land.lhs.true.27:                                 ; preds = %land.lhs.true.19
  %call28 = call i64 @builtin_lisp_symbol(i32 271)
  %16 = load i64, i64* %f1.addr, align 8
  %sub29 = sub nsw i64 %16, 3
  %17 = inttoptr i64 %sub29 to i8*
  %18 = bitcast i8* %17 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %18, i32 0, i32 0
  %19 = load i64, i64* %car, align 8
  %cmp30 = icmp eq i64 %call28, %19
  br i1 %cmp30, label %land.lhs.true.32, label %if.else.54

land.lhs.true.32:                                 ; preds = %land.lhs.true.27
  %call33 = call i64 @builtin_lisp_symbol(i32 271)
  %20 = load i64, i64* %f2.addr, align 8
  %sub34 = sub nsw i64 %20, 3
  %21 = inttoptr i64 %sub34 to i8*
  %22 = bitcast i8* %21 to %struct.Lisp_Cons*
  %car35 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %22, i32 0, i32 0
  %23 = load i64, i64* %car35, align 8
  %cmp36 = icmp eq i64 %call33, %23
  br i1 %cmp36, label %if.then.38, label %if.else.54

if.then.38:                                       ; preds = %land.lhs.true.32
  %24 = load i64, i64* %f1.addr, align 8
  %sub39 = sub nsw i64 %24, 3
  %25 = inttoptr i64 %sub39 to i8*
  %26 = bitcast i8* %25 to %struct.Lisp_Cons*
  %u40 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %26, i32 0, i32 1
  %cdr41 = bitcast %union.anon* %u40 to i64*
  %27 = load i64, i64* %cdr41, align 8
  %sub42 = sub nsw i64 %27, 3
  %28 = inttoptr i64 %sub42 to i8*
  %29 = bitcast i8* %28 to %struct.Lisp_Cons*
  %u43 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %29, i32 0, i32 1
  %cdr44 = bitcast %union.anon* %u43 to i64*
  %30 = load i64, i64* %cdr44, align 8
  %31 = load i64, i64* %f2.addr, align 8
  %sub45 = sub nsw i64 %31, 3
  %32 = inttoptr i64 %sub45 to i8*
  %33 = bitcast i8* %32 to %struct.Lisp_Cons*
  %u46 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %33, i32 0, i32 1
  %cdr47 = bitcast %union.anon* %u46 to i64*
  %34 = load i64, i64* %cdr47, align 8
  %sub48 = sub nsw i64 %34, 3
  %35 = inttoptr i64 %sub48 to i8*
  %36 = bitcast i8* %35 to %struct.Lisp_Cons*
  %u49 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %36, i32 0, i32 1
  %cdr50 = bitcast %union.anon* %u49 to i64*
  %37 = load i64, i64* %cdr50, align 8
  %cmp51 = icmp eq i64 %30, %37
  %frombool53 = zext i1 %cmp51 to i8
  store i8 %frombool53, i8* %res, align 1
  br label %if.end

if.else.54:                                       ; preds = %land.lhs.true.32, %land.lhs.true.27, %land.lhs.true.19, %land.lhs.true.14, %land.lhs.true.9, %if.else.6
  store i8 0, i8* %res, align 1
  br label %if.end

if.end:                                           ; preds = %if.else.54, %if.then.38
  br label %if.end.55

if.end.55:                                        ; preds = %if.end, %if.then.2
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.then
  %38 = load i8, i8* %res, align 1
  %tobool = trunc i8 %38 to i1
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.56
  %call58 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end

cond.false:                                       ; preds = %if.end.56
  %call59 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call58, %cond.true ], [ %call59, %cond.false ]
  ret i64 %cond
}

declare zeroext i1 @COMPILEDP(i64) #2

declare i64 @AREF(i64, i64) #2

; Function Attrs: nounwind uwtable
define void @syms_of_profiler() #0 {
entry:
  br label %do.body

do.body:                                          ; preds = %entry
  call void @defvar_int(%struct.Lisp_Intfwd* @syms_of_profiler.i_fwd, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 405))
  br label %do.end

do.end:                                           ; preds = %do.body
  store i64 16, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 405), align 8
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  call void @defvar_int(%struct.Lisp_Intfwd* @syms_of_profiler.i_fwd.5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 404))
  br label %do.end.2

do.end.2:                                         ; preds = %do.body.1
  store i64 10000, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 404), align 8
  %call = call i64 @builtin_lisp_symbol(i32 776)
  store i64 %call, i64* getelementptr inbounds (%struct.hash_table_test, %struct.hash_table_test* @hashtest_profiler, i32 0, i32 0), align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call3, i64* getelementptr inbounds (%struct.hash_table_test, %struct.hash_table_test* @hashtest_profiler, i32 0, i32 1), align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call4, i64* getelementptr inbounds (%struct.hash_table_test, %struct.hash_table_test* @hashtest_profiler, i32 0, i32 2), align 8
  store i1 (%struct.hash_table_test*, i64, i64)* @cmpfn_profiler, i1 (%struct.hash_table_test*, i64, i64)** getelementptr inbounds (%struct.hash_table_test, %struct.hash_table_test* @hashtest_profiler, i32 0, i32 3), align 8
  store i64 (%struct.hash_table_test*, i64)* @hashfn_profiler, i64 (%struct.hash_table_test*, i64)** getelementptr inbounds (%struct.hash_table_test, %struct.hash_table_test* @hashtest_profiler, i32 0, i32 4), align 8
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sfunction_equal to %struct.Lisp_Subr*))
  store i32 0, i32* @profiler_cpu_running, align 4
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call5, i64* @cpu_log, align 8
  call void @staticpro(i64* @cpu_log)
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sprofiler_cpu_start to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* @Sprofiler_cpu_stop)
  call void @defsubr(%struct.Lisp_Subr* @Sprofiler_cpu_running_p)
  call void @defsubr(%struct.Lisp_Subr* @Sprofiler_cpu_log)
  store i8 0, i8* @profiler_memory_running, align 1
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call6, i64* @memory_log, align 8
  call void @staticpro(i64* @memory_log)
  call void @defsubr(%struct.Lisp_Subr* @Sprofiler_memory_start)
  call void @defsubr(%struct.Lisp_Subr* @Sprofiler_memory_stop)
  call void @defsubr(%struct.Lisp_Subr* @Sprofiler_memory_running_p)
  call void @defsubr(%struct.Lisp_Subr* @Sprofiler_memory_log)
  ret void
}

declare void @defvar_int(%struct.Lisp_Intfwd*, i8*, i64*) #2

; Function Attrs: nounwind uwtable
define internal zeroext i1 @cmpfn_profiler(%struct.hash_table_test* %t, i64 %bt1, i64 %bt2) #0 {
entry:
  %retval = alloca i1, align 1
  %t.addr = alloca %struct.hash_table_test*, align 8
  %bt1.addr = alloca i64, align 8
  %bt2.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %l = alloca i64, align 8
  store %struct.hash_table_test* %t, %struct.hash_table_test** %t.addr, align 8
  store i64 %bt1, i64* %bt1.addr, align 8
  store i64 %bt2, i64* %bt2.addr, align 8
  %0 = load i64, i64* %bt1.addr, align 8
  %call = call zeroext i1 @VECTORP(i64 %0)
  br i1 %call, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %bt2.addr, align 8
  %call1 = call zeroext i1 @VECTORP(i64 %1)
  br i1 %call1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = load i64, i64* %bt1.addr, align 8
  %call2 = call i64 @ASIZE(i64 %2)
  store i64 %call2, i64* %l, align 8
  %3 = load i64, i64* %l, align 8
  %4 = load i64, i64* %bt2.addr, align 8
  %call3 = call i64 @ASIZE(i64 %4)
  %cmp = icmp ne i64 %3, %call3
  br i1 %cmp, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  store i1 false, i1* %retval
  br label %return

if.end:                                           ; preds = %if.then
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i64, i64* %i, align 8
  %6 = load i64, i64* %l, align 8
  %cmp5 = icmp slt i64 %5, %6
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i64, i64* %bt1.addr, align 8
  %8 = load i64, i64* %i, align 8
  %call6 = call i64 @AREF(i64 %7, i64 %8)
  %9 = load i64, i64* %bt2.addr, align 8
  %10 = load i64, i64* %i, align 8
  %call7 = call i64 @AREF(i64 %9, i64 %10)
  %call8 = call i64 @Ffunction_equal(i64 %call6, i64 %call7)
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp10 = icmp eq i64 %call8, %call9
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %for.body
  store i1 false, i1* %retval
  br label %return

if.end.12:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %11 = load i64, i64* %i, align 8
  %inc = add nsw i64 %11, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i1 true, i1* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %12 = load i64, i64* %bt1.addr, align 8
  %13 = load i64, i64* %bt2.addr, align 8
  %cmp13 = icmp eq i64 %12, %13
  store i1 %cmp13, i1* %retval
  br label %return

return:                                           ; preds = %if.else, %for.end, %if.then.11, %if.then.4
  %14 = load i1, i1* %retval
  ret i1 %14
}

; Function Attrs: nounwind uwtable
define internal i64 @hashfn_profiler(%struct.hash_table_test* %ht, i64 %bt) #0 {
entry:
  %retval = alloca i64, align 8
  %ht.addr = alloca %struct.hash_table_test*, align 8
  %bt.addr = alloca i64, align 8
  %hash = alloca i64, align 8
  %i = alloca i64, align 8
  %l = alloca i64, align 8
  %f = alloca i64, align 8
  %hash1 = alloca i64, align 8
  store %struct.hash_table_test* %ht, %struct.hash_table_test** %ht.addr, align 8
  store i64 %bt, i64* %bt.addr, align 8
  %0 = load i64, i64* %bt.addr, align 8
  %call = call zeroext i1 @VECTORP(i64 %0)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 0, i64* %hash, align 8
  %1 = load i64, i64* %bt.addr, align 8
  %call1 = call i64 @ASIZE(i64 %1)
  store i64 %call1, i64* %l, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i64, i64* %i, align 8
  %3 = load i64, i64* %l, align 8
  %cmp = icmp slt i64 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %bt.addr, align 8
  %5 = load i64, i64* %i, align 8
  %call2 = call i64 @AREF(i64 %4, i64 %5)
  store i64 %call2, i64* %f, align 8
  %6 = load i64, i64* %f, align 8
  %call3 = call zeroext i1 @COMPILEDP(i64 %6)
  br i1 %call3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %7 = load i64, i64* %f, align 8
  %call4 = call i64 @AREF(i64 %7, i64 1)
  %call5 = call i64 @XUINT(i64 %call4)
  br label %cond.end.27

cond.false:                                       ; preds = %for.body
  %8 = load i64, i64* %f, align 8
  %and = and i64 %8, 7
  %conv = trunc i64 %and to i32
  %cmp6 = icmp eq i32 %conv, 3
  br i1 %cmp6, label %land.lhs.true, label %cond.false.25

land.lhs.true:                                    ; preds = %cond.false
  %9 = load i64, i64* %f, align 8
  %sub = sub nsw i64 %9, 3
  %10 = inttoptr i64 %sub to i8*
  %11 = bitcast i8* %10 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %11, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %12 = load i64, i64* %cdr, align 8
  %and8 = and i64 %12, 7
  %conv9 = trunc i64 %and8 to i32
  %cmp10 = icmp eq i32 %conv9, 3
  br i1 %cmp10, label %land.lhs.true.12, label %cond.false.25

land.lhs.true.12:                                 ; preds = %land.lhs.true
  %call13 = call i64 @builtin_lisp_symbol(i32 271)
  %13 = load i64, i64* %f, align 8
  %sub14 = sub nsw i64 %13, 3
  %14 = inttoptr i64 %sub14 to i8*
  %15 = bitcast i8* %14 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %15, i32 0, i32 0
  %16 = load i64, i64* %car, align 8
  %cmp15 = icmp eq i64 %call13, %16
  br i1 %cmp15, label %cond.true.17, label %cond.false.25

cond.true.17:                                     ; preds = %land.lhs.true.12
  %17 = load i64, i64* %f, align 8
  %sub18 = sub nsw i64 %17, 3
  %18 = inttoptr i64 %sub18 to i8*
  %19 = bitcast i8* %18 to %struct.Lisp_Cons*
  %u19 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %19, i32 0, i32 1
  %cdr20 = bitcast %union.anon* %u19 to i64*
  %20 = load i64, i64* %cdr20, align 8
  %sub21 = sub nsw i64 %20, 3
  %21 = inttoptr i64 %sub21 to i8*
  %22 = bitcast i8* %21 to %struct.Lisp_Cons*
  %u22 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %22, i32 0, i32 1
  %cdr23 = bitcast %union.anon* %u22 to i64*
  %23 = load i64, i64* %cdr23, align 8
  %call24 = call i64 @XUINT(i64 %23)
  br label %cond.end

cond.false.25:                                    ; preds = %land.lhs.true.12, %land.lhs.true, %cond.false
  %24 = load i64, i64* %f, align 8
  %call26 = call i64 @XUINT(i64 %24)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.25, %cond.true.17
  %cond = phi i64 [ %call24, %cond.true.17 ], [ %call26, %cond.false.25 ]
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.end, %cond.true
  %cond28 = phi i64 [ %call5, %cond.true ], [ %cond, %cond.end ]
  store i64 %cond28, i64* %hash1, align 8
  %25 = load i64, i64* %hash, align 8
  %26 = load i64, i64* %hash1, align 8
  %call29 = call i64 @sxhash_combine(i64 %25, i64 %26)
  store i64 %call29, i64* %hash, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end.27
  %27 = load i64, i64* %i, align 8
  %inc = add nsw i64 %27, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load i64, i64* %hash, align 8
  %call30 = call i64 @SXHASH_REDUCE(i64 %28)
  store i64 %call30, i64* %retval
  br label %return

if.else:                                          ; preds = %entry
  %29 = load i64, i64* %bt.addr, align 8
  %call31 = call i64 @XUINT(i64 %29)
  store i64 %call31, i64* %retval
  br label %return

return:                                           ; preds = %if.else, %for.end
  %30 = load i64, i64* %retval
  ret i64 %30
}

declare void @defsubr(%struct.Lisp_Subr*) #2

declare void @staticpro(i64*) #2

declare i64 @make_hash_table(%struct.hash_table_test* byval align 8, i64, i64, i64, i64) #2

declare i64 @make_float(double) #2

declare i64 @ASIZE(i64) #2

declare void @set_hash_key_slot(%struct.Lisp_Hash_Table*, i64, i64) #2

declare zeroext i1 @RANGED_INTEGERP(i64, i64, i64) #2

declare { i64, i64 } @make_timespec(i64, i64) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare void @emacs_sigaction_init(%struct.sigaction*, void (i32)*) #2

; Function Attrs: nounwind uwtable
define internal void @deliver_profiler_signal(i32 %signal) #0 {
entry:
  %signal.addr = alloca i32, align 4
  store i32 %signal, i32* %signal.addr, align 4
  %0 = load i32, i32* %signal.addr, align 4
  call void @deliver_process_signal(i32 %0, void (i32)* @handle_profiler_signal)
  ret void
}

; Function Attrs: nounwind
declare i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) #4

; Function Attrs: nounwind
declare i32 @timer_create(i32, %struct.sigevent*, i8**) #4

; Function Attrs: nounwind readnone
declare { i64, i64 } @make_timeval(i64, i64) #5

declare void @deliver_process_signal(i32, void (i32)*) #2

; Function Attrs: nounwind uwtable
define internal void @handle_profiler_signal(i32 %signal) #0 {
entry:
  %signal.addr = alloca i32, align 4
  %count = alloca i64, align 8
  %overruns = alloca i32, align 4
  store i32 %signal, i32* %signal.addr, align 4
  %call = call i64 @backtrace_top_function()
  %call1 = call i64 @builtin_lisp_symbol(i32 192)
  %cmp = icmp eq i64 %call, %call1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = load i64, i64* @cpu_gc_count, align 8
  %call2 = call i64 @saturated_add(i64 %0, i64 1)
  store i64 %call2, i64* @cpu_gc_count, align 8
  br label %if.end.6

if.else:                                          ; preds = %entry
  store i64 1, i64* %count, align 8
  %1 = load i8, i8* @profiler_timer_ok, align 1
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.else
  %2 = load i8*, i8** @profiler_timer, align 8
  %call4 = call i32 @timer_getoverrun(i8* %2) #3
  store i32 %call4, i32* %overruns, align 4
  %3 = load i32, i32* %overruns, align 4
  %conv = sext i32 %3 to i64
  %4 = load i64, i64* %count, align 8
  %add = add nsw i64 %4, %conv
  store i64 %add, i64* %count, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.else
  %5 = load i64, i64* @cpu_log, align 8
  %call5 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %5)
  %6 = load i64, i64* %count, align 8
  call void @record_backtrace(%struct.Lisp_Hash_Table* %call5, i64 %6)
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  ret void
}

declare i64 @backtrace_top_function() #2

; Function Attrs: nounwind uwtable
define internal i64 @saturated_add(i64 %a, i64 %b) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %1 = load i64, i64* %b.addr, align 8
  %add = add nsw i64 %0, %1
  %cmp = icmp slt i64 %add, 2305843009213693951
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i64, i64* %a.addr, align 8
  %3 = load i64, i64* %b.addr, align 8
  %add1 = add nsw i64 %2, %3
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add1, %cond.true ], [ 2305843009213693951, %cond.false ]
  ret i64 %cond
}

; Function Attrs: nounwind
declare i32 @timer_getoverrun(i8*) #4

; Function Attrs: nounwind uwtable
define internal void @evict_lower_half(%struct.Lisp_Hash_Table* %log) #0 {
entry:
  %log.addr = alloca %struct.Lisp_Hash_Table*, align 8
  %size = alloca i64, align 8
  %median = alloca i64, align 8
  %i = alloca i64, align 8
  %key = alloca i64, align 8
  %tmp = alloca i64, align 8
  %j = alloca i64, align 8
  store %struct.Lisp_Hash_Table* %log, %struct.Lisp_Hash_Table** %log.addr, align 8
  %0 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %log.addr, align 8
  %key_and_value = getelementptr inbounds %struct.Lisp_Hash_Table, %struct.Lisp_Hash_Table* %0, i32 0, i32 9
  %1 = load i64, i64* %key_and_value, align 8
  %call = call i64 @ASIZE(i64 %1)
  %div = sdiv i64 %call, 2
  store i64 %div, i64* %size, align 8
  %2 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %log.addr, align 8
  %3 = load i64, i64* %size, align 8
  %call1 = call i64 @approximate_median(%struct.Lisp_Hash_Table* %2, i64 0, i64 %3)
  store i64 %call1, i64* %median, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.13, %entry
  %4 = load i64, i64* %i, align 8
  %5 = load i64, i64* %size, align 8
  %cmp = icmp slt i64 %4, %5
  br i1 %cmp, label %for.body, label %for.end.15

for.body:                                         ; preds = %for.cond
  %6 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %log.addr, align 8
  %7 = load i64, i64* %i, align 8
  %call2 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %6, i64 %7)
  %shr = ashr i64 %call2, 2
  %8 = load i64, i64* %median, align 8
  %cmp3 = icmp sle i64 %shr, %8
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %log.addr, align 8
  %10 = load i64, i64* %i, align 8
  %call4 = call i64 @HASH_KEY(%struct.Lisp_Hash_Table* %9, i64 %10)
  store i64 %call4, i64* %key, align 8
  %11 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %log.addr, align 8
  %12 = bitcast %struct.Lisp_Hash_Table* %11 to i8*
  %call5 = call i64 @make_lisp_ptr(i8* %12, i32 5)
  store i64 %call5, i64* %tmp, align 8
  %13 = load i64, i64* %key, align 8
  %14 = load i64, i64* %tmp, align 8
  %call6 = call i64 @Fremhash(i64 %13, i64 %14)
  store i64 0, i64* %j, align 8
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %if.then
  %15 = load i64, i64* %j, align 8
  %16 = load i64, i64* %key, align 8
  %call9 = call i64 @ASIZE(i64 %16)
  %cmp10 = icmp slt i64 %15, %call9
  br i1 %cmp10, label %for.body.11, label %for.end

for.body.11:                                      ; preds = %for.cond.8
  %17 = load i64, i64* %key, align 8
  %18 = load i64, i64* %j, align 8
  %call12 = call i64 @builtin_lisp_symbol(i32 0)
  call void @ASET(i64 %17, i64 %18, i64 %call12)
  br label %for.inc

for.inc:                                          ; preds = %for.body.11
  %19 = load i64, i64* %j, align 8
  %inc = add nsw i64 %19, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  %20 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %log.addr, align 8
  %21 = load i64, i64* %i, align 8
  %22 = load i64, i64* %key, align 8
  call void @set_hash_key_slot(%struct.Lisp_Hash_Table* %20, i64 %21, i64 %22)
  br label %if.end

if.end:                                           ; preds = %for.end, %for.body
  br label %for.inc.13

for.inc.13:                                       ; preds = %if.end
  %23 = load i64, i64* %i, align 8
  %inc14 = add nsw i64 %23, 1
  store i64 %inc14, i64* %i, align 8
  br label %for.cond

for.end.15:                                       ; preds = %for.cond
  ret void
}

declare i64 @HASH_KEY(%struct.Lisp_Hash_Table*, i64) #2

declare void @get_backtrace(i64) #2

declare i64 @hash_lookup(%struct.Lisp_Hash_Table*, i64, i64*) #2

declare i64 @HASH_VALUE(%struct.Lisp_Hash_Table*, i64) #2

declare void @set_hash_value_slot(%struct.Lisp_Hash_Table*, i64, i64) #2

declare i64 @hash_put(%struct.Lisp_Hash_Table*, i64, i64, i64) #2

; Function Attrs: nounwind uwtable
define internal i64 @approximate_median(%struct.Lisp_Hash_Table* %log, i64 %start, i64 %size) #0 {
entry:
  %retval = alloca i64, align 8
  %log.addr = alloca %struct.Lisp_Hash_Table*, align 8
  %start.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %newsize = alloca i64, align 8
  %start2 = alloca i64, align 8
  %i1 = alloca i64, align 8
  %i2 = alloca i64, align 8
  %i3 = alloca i64, align 8
  store %struct.Lisp_Hash_Table* %log, %struct.Lisp_Hash_Table** %log.addr, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i64, i64* %size.addr, align 8
  %cmp = icmp slt i64 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %log.addr, align 8
  %2 = load i64, i64* %start.addr, align 8
  %call = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %1, i64 %2)
  %shr = ashr i64 %call, 2
  store i64 %shr, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %size.addr, align 8
  %cmp1 = icmp slt i64 %3, 3
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %4 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %log.addr, align 8
  %5 = load i64, i64* %start.addr, align 8
  %call3 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %4, i64 %5)
  %shr4 = ashr i64 %call3, 2
  %6 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %log.addr, align 8
  %7 = load i64, i64* %start.addr, align 8
  %add = add nsw i64 %7, 1
  %call5 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %6, i64 %add)
  %shr6 = ashr i64 %call5, 2
  %add7 = add nsw i64 %shr4, %shr6
  %div = sdiv i64 %add7, 2
  store i64 %div, i64* %retval
  br label %return

if.else:                                          ; preds = %if.end
  %8 = load i64, i64* %size.addr, align 8
  %div8 = sdiv i64 %8, 3
  store i64 %div8, i64* %newsize, align 8
  %9 = load i64, i64* %start.addr, align 8
  %10 = load i64, i64* %newsize, align 8
  %add9 = add nsw i64 %9, %10
  store i64 %add9, i64* %start2, align 8
  %11 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %log.addr, align 8
  %12 = load i64, i64* %start.addr, align 8
  %13 = load i64, i64* %newsize, align 8
  %call10 = call i64 @approximate_median(%struct.Lisp_Hash_Table* %11, i64 %12, i64 %13)
  store i64 %call10, i64* %i1, align 8
  %14 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %log.addr, align 8
  %15 = load i64, i64* %start2, align 8
  %16 = load i64, i64* %newsize, align 8
  %call11 = call i64 @approximate_median(%struct.Lisp_Hash_Table* %14, i64 %15, i64 %16)
  store i64 %call11, i64* %i2, align 8
  %17 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %log.addr, align 8
  %18 = load i64, i64* %start2, align 8
  %19 = load i64, i64* %newsize, align 8
  %add12 = add nsw i64 %18, %19
  %20 = load i64, i64* %size.addr, align 8
  %21 = load i64, i64* %newsize, align 8
  %mul = mul nsw i64 2, %21
  %sub = sub nsw i64 %20, %mul
  %call13 = call i64 @approximate_median(%struct.Lisp_Hash_Table* %17, i64 %add12, i64 %sub)
  store i64 %call13, i64* %i3, align 8
  %22 = load i64, i64* %i1, align 8
  %23 = load i64, i64* %i2, align 8
  %cmp14 = icmp slt i64 %22, %23
  br i1 %cmp14, label %cond.true, label %cond.false.22

cond.true:                                        ; preds = %if.else
  %24 = load i64, i64* %i2, align 8
  %25 = load i64, i64* %i3, align 8
  %cmp15 = icmp slt i64 %24, %25
  br i1 %cmp15, label %cond.true.16, label %cond.false

cond.true.16:                                     ; preds = %cond.true
  %26 = load i64, i64* %i2, align 8
  br label %cond.end.20

cond.false:                                       ; preds = %cond.true
  %27 = load i64, i64* %i1, align 8
  %28 = load i64, i64* %i3, align 8
  %cmp17 = icmp slt i64 %27, %28
  br i1 %cmp17, label %cond.true.18, label %cond.false.19

cond.true.18:                                     ; preds = %cond.false
  %29 = load i64, i64* %i3, align 8
  br label %cond.end

cond.false.19:                                    ; preds = %cond.false
  %30 = load i64, i64* %i1, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.19, %cond.true.18
  %cond = phi i64 [ %29, %cond.true.18 ], [ %30, %cond.false.19 ]
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.end, %cond.true.16
  %cond21 = phi i64 [ %26, %cond.true.16 ], [ %cond, %cond.end ]
  br label %cond.end.33

cond.false.22:                                    ; preds = %if.else
  %31 = load i64, i64* %i1, align 8
  %32 = load i64, i64* %i3, align 8
  %cmp23 = icmp slt i64 %31, %32
  br i1 %cmp23, label %cond.true.24, label %cond.false.25

cond.true.24:                                     ; preds = %cond.false.22
  %33 = load i64, i64* %i1, align 8
  br label %cond.end.31

cond.false.25:                                    ; preds = %cond.false.22
  %34 = load i64, i64* %i2, align 8
  %35 = load i64, i64* %i3, align 8
  %cmp26 = icmp slt i64 %34, %35
  br i1 %cmp26, label %cond.true.27, label %cond.false.28

cond.true.27:                                     ; preds = %cond.false.25
  %36 = load i64, i64* %i3, align 8
  br label %cond.end.29

cond.false.28:                                    ; preds = %cond.false.25
  %37 = load i64, i64* %i2, align 8
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.false.28, %cond.true.27
  %cond30 = phi i64 [ %36, %cond.true.27 ], [ %37, %cond.false.28 ]
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.end.29, %cond.true.24
  %cond32 = phi i64 [ %33, %cond.true.24 ], [ %cond30, %cond.end.29 ]
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.end.31, %cond.end.20
  %cond34 = phi i64 [ %cond21, %cond.end.20 ], [ %cond32, %cond.end.31 ]
  store i64 %cond34, i64* %retval
  br label %return

return:                                           ; preds = %cond.end.33, %if.then.2, %if.then
  %38 = load i64, i64* %retval
  ret i64 %38
}

declare i64 @make_lisp_ptr(i8*, i32) #2

declare i64 @Fremhash(i64, i64) #2

declare void @ASET(i64, i64, i64) #2

declare zeroext i1 @VECTORP(i64) #2

declare i64 @XUINT(i64) #2

declare i64 @sxhash_combine(i64, i64) #2

declare i64 @SXHASH_REDUCE(i64) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
