; ModuleID = 'timevar.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timevar_def = type { %struct.timevar_time_def, %struct.timevar_time_def, i8*, i8 }
%struct.timevar_time_def = type { float, float, float }
%struct.timevar_stack_def = type { %struct.timevar_def*, %struct.timevar_stack_def* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@time_report = external global i32, align 4
@timevars = internal global [45 x %struct.timevar_def] zeroinitializer, align 16
@.str = private unnamed_addr constant [11 x i8] c"total time\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"garbage collection\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"dump files\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"cfg construction\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"cfg cleanup\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"life analysis\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"life info update\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"preprocessing\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"lexical analysis\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"parser\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"expand\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"varconst\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"integration\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"jump\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"CSE\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"global CSE\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"loop analysis\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"CSE 2\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"branch prediction\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"flow analysis\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"combiner\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"if-conversion\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"regmove\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"mode switching\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"scheduling\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"local alloc\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"global alloc\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"reload CSE regs\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"flow 2\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"if-conversion 2\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"peephole 2\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"rename registers\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"scheduling 2\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"machine dep reorg\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"delay branch sched\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"reorder blocks\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"shorten branches\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"reg stack\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"convert to SSA\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"SSA CCP\00", align 1
@.str.40 = private unnamed_addr constant [19 x i8] c"SSA aggressive DCE\00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"convert from SSA\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"final\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"symout\00", align 1
@.str.44 = private unnamed_addr constant [20 x i8] c"rest of compilation\00", align 1
@clocks_to_msec = internal global float 0.000000e+00, align 4
@.str.45 = private unnamed_addr constant [10 x i8] c"timevar.c\00", align 1
@__FUNCTION__.timevar_push = private unnamed_addr constant [13 x i8] c"timevar_push\00", align 1
@stack = internal global %struct.timevar_stack_def* null, align 8
@start_time = internal global %struct.timevar_time_def zeroinitializer, align 4
@unused_stack_instances = internal global %struct.timevar_stack_def* null, align 8
@__FUNCTION__.timevar_pop = private unnamed_addr constant [12 x i8] c"timevar_pop\00", align 1
@__FUNCTION__.timevar_start = private unnamed_addr constant [14 x i8] c"timevar_start\00", align 1
@__FUNCTION__.timevar_stop = private unnamed_addr constant [13 x i8] c"timevar_stop\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.46 = private unnamed_addr constant [28 x i8] c"\0AExecution times (seconds)\0A\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c" %-22s:\00", align 1
@.str.48 = private unnamed_addr constant [20 x i8] c"%7.2f (%2.0f%%) usr\00", align 1
@.str.49 = private unnamed_addr constant [25 x i8] c" TOTAL                 :\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"%7.2f          \00", align 1
@.str.51 = private unnamed_addr constant [31 x i8] c"time in %s: %ld.%06ld (%ld%%)\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @init_timevar() #0 {
entry:
  %0 = load i32, i32* @time_report, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.memset.p0i8.i64(i8* bitcast ([45 x %struct.timevar_def]* @timevars to i8*), i8 0, i64 1800, i32 1, i1 false)
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8** getelementptr inbounds ([45 x %struct.timevar_def], [45 x %struct.timevar_def]* @timevars, i32 0, i64 0, i32 2), align 8
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i8** getelementptr inbounds ([45 x %struct.timevar_def], [45 x %struct.timevar_def]* @timevars, i32 0, i64 1, i32 2), align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8** getelementptr inbounds ([45 x %struct.timevar_def], [45 x %struct.timevar_def]* @timevars, i32 0, i64 2, i32 2), align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i8** getelementptr inbounds ([45 x %struct.timevar_def], [45 x %struct.timevar_def]* @timevars, i32 0, i64 3, i32 2), align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8** getelementptr inbounds ([45 x %struct.timevar_def], [45 x %struct.timevar_def]* @timevars, i32 0, i64 4, i32 2), align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i8** getelementptr inbounds ([45 x %struct.timevar_def], [45 x %struct.timevar_def]* @timevars, i32 0, i64 5, i32 2), align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i8** getelementptr inbounds ([45 x %struct.timevar_def], [45 x %struct.timevar_def]* @timevars, i32 0, i64 6, i32 2), align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i8** getelementptr inbounds ([45 x %struct.timevar_def], [45 x %struct.timevar_def]* @timevars, i32 0, i64 7, i32 2), align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), i8** getelementptr inbounds ([45 x %struct.timevar_def], [45 x %struct.timevar_def]* @timevars, i32 0, i64 8, i32 2), align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8** getelementptr inbounds ([45 x %struct.timevar_def], [45 x %struct.timevar_def]* @timevars, i32 0, i64 9, i32 2), align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8** getelementptr inbounds ([45 x %struct.timevar_def], [45 x %struct.timevar_def]* @timevars, i32 0, i64 10, i32 2), align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i8** getelementptr inbounds ([45 x %struct.timevar_def], [45 x %struct.timevar_def]* @timevars, i32 0, i64 11, i32 2), align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i8** getelementptr inbounds ([45 x %struct.timevar_def], [45 x %struct.timevar_def]* @timevars, i32 0, i64 12, i32 2), align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8** getelementptr inbounds ([45 x %struct.timevar_def], [45 x %struct.timevar_def]* @timevars, i32 0, i64 13, i32 2), align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8** getelementptr inbounds ([45 x %struct.timevar_def], [45 x %struct.timevar_def]* @timevars, i32 0, i64 14, i32 2), align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i8** getelementptr inbounds ([45 x %struct.timevar_def], [45 x %struct.timevar_def]* @timevars, i32 0, i64 15, i32 2), align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i8** getelementptr inbounds ([45 x %struct.timevar_def], [45 x %struct.timevar_def]* @timevars, i32 0, i64 16, i32 2), align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8** getelementptr inbounds ([45 x %struct.timevar_def], [45 x %struct.timevar_def]* @timevars, i32 0, i64 17, i32 2), align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0), i8** getelementptr inbounds ([45 x %struct.timevar_def], [45 x %struct.timevar_def]* @timevars, i32 0, i64 18, i32 2), align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i8** getelementptr inbounds ([45 x %struct.timevar_def], [45 x %struct.timevar_def]* @timevars, i32 0, i64 19, i32 2), align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i8** getelementptr inbounds ([45 x %struct.timevar_def], [45 x %struct.timevar_def]* @timevars, i32 0, i64 20, i32 2), align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0), i8** getelementptr inbounds ([45 x %struct.timevar_def], [45 x %struct.timevar_def]* @timevars, i32 0, i64 21, i32 2), align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i8** getelementptr inbounds ([45 x %struct.timevar_def], [45 x %struct.timevar_def]* @timevars, i32 0, i64 22, i32 2), align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0), i8** getelementptr inbounds ([45 x %struct.timevar_def], [45 x %struct.timevar_def]* @timevars, i32 0, i64 23, i32 2), align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), i8** getelementptr inbounds ([45 x %struct.timevar_def], [45 x %struct.timevar_def]* @timevars, i32 0, i64 24, i32 2), align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0), i8** getelementptr inbounds ([45 x %struct.timevar_def], [45 x %struct.timevar_def]* @timevars, i32 0, i64 25, i32 2), align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8** getelementptr inbounds ([45 x %struct.timevar_def], [45 x %struct.timevar_def]* @timevars, i32 0, i64 26, i32 2), align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i32 0, i32 0), i8** getelementptr inbounds ([45 x %struct.timevar_def], [45 x %struct.timevar_def]* @timevars, i32 0, i64 27, i32 2), align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), i8** getelementptr inbounds ([45 x %struct.timevar_def], [45 x %struct.timevar_def]* @timevars, i32 0, i64 28, i32 2), align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0), i8** getelementptr inbounds ([45 x %struct.timevar_def], [45 x %struct.timevar_def]* @timevars, i32 0, i64 29, i32 2), align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i32 0), i8** getelementptr inbounds ([45 x %struct.timevar_def], [45 x %struct.timevar_def]* @timevars, i32 0, i64 30, i32 2), align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i32 0, i32 0), i8** getelementptr inbounds ([45 x %struct.timevar_def], [45 x %struct.timevar_def]* @timevars, i32 0, i64 31, i32 2), align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i32 0, i32 0), i8** getelementptr inbounds ([45 x %struct.timevar_def], [45 x %struct.timevar_def]* @timevars, i32 0, i64 32, i32 2), align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i32 0, i32 0), i8** getelementptr inbounds ([45 x %struct.timevar_def], [45 x %struct.timevar_def]* @timevars, i32 0, i64 33, i32 2), align 8
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i32 0, i32 0), i8** getelementptr inbounds ([45 x %struct.timevar_def], [45 x %struct.timevar_def]* @timevars, i32 0, i64 34, i32 2), align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0), i8** getelementptr inbounds ([45 x %struct.timevar_def], [45 x %struct.timevar_def]* @timevars, i32 0, i64 35, i32 2), align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i32 0, i32 0), i8** getelementptr inbounds ([45 x %struct.timevar_def], [45 x %struct.timevar_def]* @timevars, i32 0, i64 36, i32 2), align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i8** getelementptr inbounds ([45 x %struct.timevar_def], [45 x %struct.timevar_def]* @timevars, i32 0, i64 37, i32 2), align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0), i8** getelementptr inbounds ([45 x %struct.timevar_def], [45 x %struct.timevar_def]* @timevars, i32 0, i64 38, i32 2), align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), i8** getelementptr inbounds ([45 x %struct.timevar_def], [45 x %struct.timevar_def]* @timevars, i32 0, i64 39, i32 2), align 8
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.40, i32 0, i32 0), i8** getelementptr inbounds ([45 x %struct.timevar_def], [45 x %struct.timevar_def]* @timevars, i32 0, i64 40, i32 2), align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i32 0, i32 0), i8** getelementptr inbounds ([45 x %struct.timevar_def], [45 x %struct.timevar_def]* @timevars, i32 0, i64 41, i32 2), align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i8** getelementptr inbounds ([45 x %struct.timevar_def], [45 x %struct.timevar_def]* @timevars, i32 0, i64 42, i32 2), align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i8** getelementptr inbounds ([45 x %struct.timevar_def], [45 x %struct.timevar_def]* @timevars, i32 0, i64 43, i32 2), align 8
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.44, i32 0, i32 0), i8** getelementptr inbounds ([45 x %struct.timevar_def], [45 x %struct.timevar_def]* @timevars, i32 0, i64 44, i32 2), align 8
  store float 0x3EB0C6F7A0000000, float* @clocks_to_msec, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define void @timevar_push(i32 %timevar) #0 {
entry:
  %timevar.addr = alloca i32, align 4
  %tv = alloca %struct.timevar_def*, align 8
  %context = alloca %struct.timevar_stack_def*, align 8
  %now = alloca %struct.timevar_time_def, align 4
  store i32 %timevar, i32* %timevar.addr, align 4
  %0 = load i32, i32* %timevar.addr, align 4
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [45 x %struct.timevar_def], [45 x %struct.timevar_def]* @timevars, i32 0, i64 %idxprom
  store %struct.timevar_def* %arrayidx, %struct.timevar_def** %tv, align 8
  %1 = load i32, i32* @time_report, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.timevar_def*, %struct.timevar_def** %tv, align 8
  %used = getelementptr inbounds %struct.timevar_def, %struct.timevar_def* %2, i32 0, i32 3
  %bf.load = load i8, i8* %used, align 8
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, 2
  store i8 %bf.set, i8* %used, align 8
  %3 = load %struct.timevar_def*, %struct.timevar_def** %tv, align 8
  %standalone = getelementptr inbounds %struct.timevar_def, %struct.timevar_def* %3, i32 0, i32 3
  %bf.load1 = load i8, i8* %standalone, align 8
  %bf.clear2 = and i8 %bf.load1, 1
  %bf.cast = zext i8 %bf.clear2 to i32
  %tobool3 = icmp ne i32 %bf.cast, 0
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0), i32 272, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.timevar_push, i32 0, i32 0)) #5
  unreachable

if.end.5:                                         ; preds = %if.end
  call void @get_time(%struct.timevar_time_def* %now)
  %4 = load %struct.timevar_stack_def*, %struct.timevar_stack_def** @stack, align 8
  %tobool6 = icmp ne %struct.timevar_stack_def* %4, null
  br i1 %tobool6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end.5
  %5 = load %struct.timevar_stack_def*, %struct.timevar_stack_def** @stack, align 8
  %timevar8 = getelementptr inbounds %struct.timevar_stack_def, %struct.timevar_stack_def* %5, i32 0, i32 0
  %6 = load %struct.timevar_def*, %struct.timevar_def** %timevar8, align 8
  %elapsed = getelementptr inbounds %struct.timevar_def, %struct.timevar_def* %6, i32 0, i32 0
  call void @timevar_accumulate(%struct.timevar_time_def* %elapsed, %struct.timevar_time_def* @start_time, %struct.timevar_time_def* %now)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end.5
  %7 = bitcast %struct.timevar_time_def* %now to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.timevar_time_def* @start_time to i8*), i8* %7, i64 12, i32 4, i1 false)
  %8 = load %struct.timevar_stack_def*, %struct.timevar_stack_def** @unused_stack_instances, align 8
  %cmp = icmp ne %struct.timevar_stack_def* %8, null
  br i1 %cmp, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end.9
  %9 = load %struct.timevar_stack_def*, %struct.timevar_stack_def** @unused_stack_instances, align 8
  store %struct.timevar_stack_def* %9, %struct.timevar_stack_def** %context, align 8
  %10 = load %struct.timevar_stack_def*, %struct.timevar_stack_def** @unused_stack_instances, align 8
  %next = getelementptr inbounds %struct.timevar_stack_def, %struct.timevar_stack_def* %10, i32 0, i32 1
  %11 = load %struct.timevar_stack_def*, %struct.timevar_stack_def** %next, align 8
  store %struct.timevar_stack_def* %11, %struct.timevar_stack_def** @unused_stack_instances, align 8
  br label %if.end.11

if.else:                                          ; preds = %if.end.9
  %call = call noalias i8* @xmalloc(i64 16)
  %12 = bitcast i8* %call to %struct.timevar_stack_def*
  store %struct.timevar_stack_def* %12, %struct.timevar_stack_def** %context, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  %13 = load %struct.timevar_def*, %struct.timevar_def** %tv, align 8
  %14 = load %struct.timevar_stack_def*, %struct.timevar_stack_def** %context, align 8
  %timevar12 = getelementptr inbounds %struct.timevar_stack_def, %struct.timevar_stack_def* %14, i32 0, i32 0
  store %struct.timevar_def* %13, %struct.timevar_def** %timevar12, align 8
  %15 = load %struct.timevar_stack_def*, %struct.timevar_stack_def** @stack, align 8
  %16 = load %struct.timevar_stack_def*, %struct.timevar_stack_def** %context, align 8
  %next13 = getelementptr inbounds %struct.timevar_stack_def, %struct.timevar_stack_def* %16, i32 0, i32 1
  store %struct.timevar_stack_def* %15, %struct.timevar_stack_def** %next13, align 8
  %17 = load %struct.timevar_stack_def*, %struct.timevar_stack_def** %context, align 8
  store %struct.timevar_stack_def* %17, %struct.timevar_stack_def** @stack, align 8
  br label %return

return:                                           ; preds = %if.end.11, %if.then
  ret void
}

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @get_time(%struct.timevar_time_def* %now) #0 {
entry:
  %now.addr = alloca %struct.timevar_time_def*, align 8
  store %struct.timevar_time_def* %now, %struct.timevar_time_def** %now.addr, align 8
  %0 = load %struct.timevar_time_def*, %struct.timevar_time_def** %now.addr, align 8
  %user = getelementptr inbounds %struct.timevar_time_def, %struct.timevar_time_def* %0, i32 0, i32 0
  store float 0.000000e+00, float* %user, align 4
  %1 = load %struct.timevar_time_def*, %struct.timevar_time_def** %now.addr, align 8
  %sys = getelementptr inbounds %struct.timevar_time_def, %struct.timevar_time_def* %1, i32 0, i32 1
  store float 0.000000e+00, float* %sys, align 4
  %2 = load %struct.timevar_time_def*, %struct.timevar_time_def** %now.addr, align 8
  %wall = getelementptr inbounds %struct.timevar_time_def, %struct.timevar_time_def* %2, i32 0, i32 2
  store float 0.000000e+00, float* %wall, align 4
  %3 = load i32, i32* @time_report, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call = call i64 @clock() #1
  %conv = sitofp i64 %call to float
  %4 = load float, float* @clocks_to_msec, align 4
  %mul = fmul float %conv, %4
  %5 = load %struct.timevar_time_def*, %struct.timevar_time_def** %now.addr, align 8
  %user1 = getelementptr inbounds %struct.timevar_time_def, %struct.timevar_time_def* %5, i32 0, i32 0
  store float %mul, float* %user1, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @timevar_accumulate(%struct.timevar_time_def* %timer, %struct.timevar_time_def* %start_time, %struct.timevar_time_def* %stop_time) #0 {
entry:
  %timer.addr = alloca %struct.timevar_time_def*, align 8
  %start_time.addr = alloca %struct.timevar_time_def*, align 8
  %stop_time.addr = alloca %struct.timevar_time_def*, align 8
  store %struct.timevar_time_def* %timer, %struct.timevar_time_def** %timer.addr, align 8
  store %struct.timevar_time_def* %start_time, %struct.timevar_time_def** %start_time.addr, align 8
  store %struct.timevar_time_def* %stop_time, %struct.timevar_time_def** %stop_time.addr, align 8
  %0 = load %struct.timevar_time_def*, %struct.timevar_time_def** %stop_time.addr, align 8
  %user = getelementptr inbounds %struct.timevar_time_def, %struct.timevar_time_def* %0, i32 0, i32 0
  %1 = load float, float* %user, align 4
  %2 = load %struct.timevar_time_def*, %struct.timevar_time_def** %start_time.addr, align 8
  %user1 = getelementptr inbounds %struct.timevar_time_def, %struct.timevar_time_def* %2, i32 0, i32 0
  %3 = load float, float* %user1, align 4
  %sub = fsub float %1, %3
  %4 = load %struct.timevar_time_def*, %struct.timevar_time_def** %timer.addr, align 8
  %user2 = getelementptr inbounds %struct.timevar_time_def, %struct.timevar_time_def* %4, i32 0, i32 0
  %5 = load float, float* %user2, align 4
  %add = fadd float %5, %sub
  store float %add, float* %user2, align 4
  %6 = load %struct.timevar_time_def*, %struct.timevar_time_def** %stop_time.addr, align 8
  %sys = getelementptr inbounds %struct.timevar_time_def, %struct.timevar_time_def* %6, i32 0, i32 1
  %7 = load float, float* %sys, align 4
  %8 = load %struct.timevar_time_def*, %struct.timevar_time_def** %start_time.addr, align 8
  %sys3 = getelementptr inbounds %struct.timevar_time_def, %struct.timevar_time_def* %8, i32 0, i32 1
  %9 = load float, float* %sys3, align 4
  %sub4 = fsub float %7, %9
  %10 = load %struct.timevar_time_def*, %struct.timevar_time_def** %timer.addr, align 8
  %sys5 = getelementptr inbounds %struct.timevar_time_def, %struct.timevar_time_def* %10, i32 0, i32 1
  %11 = load float, float* %sys5, align 4
  %add6 = fadd float %11, %sub4
  store float %add6, float* %sys5, align 4
  %12 = load %struct.timevar_time_def*, %struct.timevar_time_def** %stop_time.addr, align 8
  %wall = getelementptr inbounds %struct.timevar_time_def, %struct.timevar_time_def* %12, i32 0, i32 2
  %13 = load float, float* %wall, align 4
  %14 = load %struct.timevar_time_def*, %struct.timevar_time_def** %start_time.addr, align 8
  %wall7 = getelementptr inbounds %struct.timevar_time_def, %struct.timevar_time_def* %14, i32 0, i32 2
  %15 = load float, float* %wall7, align 4
  %sub8 = fsub float %13, %15
  %16 = load %struct.timevar_time_def*, %struct.timevar_time_def** %timer.addr, align 8
  %wall9 = getelementptr inbounds %struct.timevar_time_def, %struct.timevar_time_def* %16, i32 0, i32 2
  %17 = load float, float* %wall9, align 4
  %add10 = fadd float %17, %sub8
  store float %add10, float* %wall9, align 4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare noalias i8* @xmalloc(i64) #3

; Function Attrs: nounwind uwtable
define void @timevar_pop(i32 %timevar) #0 {
entry:
  %timevar.addr = alloca i32, align 4
  %now = alloca %struct.timevar_time_def, align 4
  %popped = alloca %struct.timevar_stack_def*, align 8
  store i32 %timevar, i32* %timevar.addr, align 4
  %0 = load %struct.timevar_stack_def*, %struct.timevar_stack_def** @stack, align 8
  store %struct.timevar_stack_def* %0, %struct.timevar_stack_def** %popped, align 8
  %1 = load i32, i32* @time_report, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %timevar.addr, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [45 x %struct.timevar_def], [45 x %struct.timevar_def]* @timevars, i32 0, i64 %idxprom
  %3 = load %struct.timevar_stack_def*, %struct.timevar_stack_def** @stack, align 8
  %timevar1 = getelementptr inbounds %struct.timevar_stack_def, %struct.timevar_stack_def* %3, i32 0, i32 0
  %4 = load %struct.timevar_def*, %struct.timevar_def** %timevar1, align 8
  %cmp = icmp ne %struct.timevar_def* %arrayidx, %4
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0), i32 320, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.timevar_pop, i32 0, i32 0)) #5
  unreachable

if.end.3:                                         ; preds = %if.end
  call void @get_time(%struct.timevar_time_def* %now)
  %5 = load %struct.timevar_stack_def*, %struct.timevar_stack_def** %popped, align 8
  %timevar4 = getelementptr inbounds %struct.timevar_stack_def, %struct.timevar_stack_def* %5, i32 0, i32 0
  %6 = load %struct.timevar_def*, %struct.timevar_def** %timevar4, align 8
  %elapsed = getelementptr inbounds %struct.timevar_def, %struct.timevar_def* %6, i32 0, i32 0
  call void @timevar_accumulate(%struct.timevar_time_def* %elapsed, %struct.timevar_time_def* @start_time, %struct.timevar_time_def* %now)
  %7 = bitcast %struct.timevar_time_def* %now to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.timevar_time_def* @start_time to i8*), i8* %7, i64 12, i32 4, i1 false)
  %8 = load %struct.timevar_stack_def*, %struct.timevar_stack_def** @stack, align 8
  %next = getelementptr inbounds %struct.timevar_stack_def, %struct.timevar_stack_def* %8, i32 0, i32 1
  %9 = load %struct.timevar_stack_def*, %struct.timevar_stack_def** %next, align 8
  store %struct.timevar_stack_def* %9, %struct.timevar_stack_def** @stack, align 8
  %10 = load %struct.timevar_stack_def*, %struct.timevar_stack_def** @unused_stack_instances, align 8
  %11 = load %struct.timevar_stack_def*, %struct.timevar_stack_def** %popped, align 8
  %next5 = getelementptr inbounds %struct.timevar_stack_def, %struct.timevar_stack_def* %11, i32 0, i32 1
  store %struct.timevar_stack_def* %10, %struct.timevar_stack_def** %next5, align 8
  %12 = load %struct.timevar_stack_def*, %struct.timevar_stack_def** %popped, align 8
  store %struct.timevar_stack_def* %12, %struct.timevar_stack_def** @unused_stack_instances, align 8
  br label %return

return:                                           ; preds = %if.end.3, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @timevar_start(i32 %timevar) #0 {
entry:
  %timevar.addr = alloca i32, align 4
  %tv = alloca %struct.timevar_def*, align 8
  store i32 %timevar, i32* %timevar.addr, align 4
  %0 = load i32, i32* %timevar.addr, align 4
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [45 x %struct.timevar_def], [45 x %struct.timevar_def]* @timevars, i32 0, i64 %idxprom
  store %struct.timevar_def* %arrayidx, %struct.timevar_def** %tv, align 8
  %1 = load i32, i32* @time_report, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.timevar_def*, %struct.timevar_def** %tv, align 8
  %used = getelementptr inbounds %struct.timevar_def, %struct.timevar_def* %2, i32 0, i32 3
  %bf.load = load i8, i8* %used, align 8
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, 2
  store i8 %bf.set, i8* %used, align 8
  %3 = load %struct.timevar_def*, %struct.timevar_def** %tv, align 8
  %standalone = getelementptr inbounds %struct.timevar_def, %struct.timevar_def* %3, i32 0, i32 3
  %bf.load1 = load i8, i8* %standalone, align 8
  %bf.clear2 = and i8 %bf.load1, 1
  %bf.cast = zext i8 %bf.clear2 to i32
  %tobool3 = icmp ne i32 %bf.cast, 0
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0), i32 360, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.timevar_start, i32 0, i32 0)) #5
  unreachable

if.end.5:                                         ; preds = %if.end
  %4 = load %struct.timevar_def*, %struct.timevar_def** %tv, align 8
  %standalone6 = getelementptr inbounds %struct.timevar_def, %struct.timevar_def* %4, i32 0, i32 3
  %bf.load7 = load i8, i8* %standalone6, align 8
  %bf.clear8 = and i8 %bf.load7, -2
  %bf.set9 = or i8 %bf.clear8, 1
  store i8 %bf.set9, i8* %standalone6, align 8
  %5 = load %struct.timevar_def*, %struct.timevar_def** %tv, align 8
  %start_time = getelementptr inbounds %struct.timevar_def, %struct.timevar_def* %5, i32 0, i32 1
  call void @get_time(%struct.timevar_time_def* %start_time)
  br label %return

return:                                           ; preds = %if.end.5, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @timevar_stop(i32 %timevar) #0 {
entry:
  %timevar.addr = alloca i32, align 4
  %tv = alloca %struct.timevar_def*, align 8
  %now = alloca %struct.timevar_time_def, align 4
  store i32 %timevar, i32* %timevar.addr, align 4
  %0 = load i32, i32* %timevar.addr, align 4
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [45 x %struct.timevar_def], [45 x %struct.timevar_def]* @timevars, i32 0, i64 %idxprom
  store %struct.timevar_def* %arrayidx, %struct.timevar_def** %tv, align 8
  %1 = load i32, i32* @time_report, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.timevar_def*, %struct.timevar_def** %tv, align 8
  %standalone = getelementptr inbounds %struct.timevar_def, %struct.timevar_def* %2, i32 0, i32 3
  %bf.load = load i8, i8* %standalone, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool1 = icmp ne i32 %bf.cast, 0
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0), i32 381, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.timevar_stop, i32 0, i32 0)) #5
  unreachable

if.end.3:                                         ; preds = %if.end
  call void @get_time(%struct.timevar_time_def* %now)
  %3 = load %struct.timevar_def*, %struct.timevar_def** %tv, align 8
  %elapsed = getelementptr inbounds %struct.timevar_def, %struct.timevar_def* %3, i32 0, i32 0
  %4 = load %struct.timevar_def*, %struct.timevar_def** %tv, align 8
  %start_time = getelementptr inbounds %struct.timevar_def, %struct.timevar_def* %4, i32 0, i32 1
  call void @timevar_accumulate(%struct.timevar_time_def* %elapsed, %struct.timevar_time_def* %start_time, %struct.timevar_time_def* %now)
  br label %return

return:                                           ; preds = %if.end.3, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @timevar_get(i32 %timevar, %struct.timevar_time_def* %elapsed) #0 {
entry:
  %timevar.addr = alloca i32, align 4
  %elapsed.addr = alloca %struct.timevar_time_def*, align 8
  %tv = alloca %struct.timevar_def*, align 8
  %now = alloca %struct.timevar_time_def, align 4
  store i32 %timevar, i32* %timevar.addr, align 4
  store %struct.timevar_time_def* %elapsed, %struct.timevar_time_def** %elapsed.addr, align 8
  %0 = load i32, i32* %timevar.addr, align 4
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [45 x %struct.timevar_def], [45 x %struct.timevar_def]* @timevars, i32 0, i64 %idxprom
  store %struct.timevar_def* %arrayidx, %struct.timevar_def** %tv, align 8
  %1 = load %struct.timevar_time_def*, %struct.timevar_time_def** %elapsed.addr, align 8
  %2 = load %struct.timevar_def*, %struct.timevar_def** %tv, align 8
  %elapsed1 = getelementptr inbounds %struct.timevar_def, %struct.timevar_def* %2, i32 0, i32 0
  %3 = bitcast %struct.timevar_time_def* %1 to i8*
  %4 = bitcast %struct.timevar_time_def* %elapsed1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 12, i32 4, i1 false)
  %5 = load %struct.timevar_def*, %struct.timevar_def** %tv, align 8
  %standalone = getelementptr inbounds %struct.timevar_def, %struct.timevar_def* %5, i32 0, i32 3
  %bf.load = load i8, i8* %standalone, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @get_time(%struct.timevar_time_def* %now)
  %6 = load %struct.timevar_time_def*, %struct.timevar_time_def** %elapsed.addr, align 8
  %7 = load %struct.timevar_def*, %struct.timevar_def** %tv, align 8
  %start_time = getelementptr inbounds %struct.timevar_def, %struct.timevar_def* %7, i32 0, i32 1
  call void @timevar_accumulate(%struct.timevar_time_def* %6, %struct.timevar_time_def* %start_time, %struct.timevar_time_def* %now)
  br label %if.end.4

if.else:                                          ; preds = %entry
  %8 = load %struct.timevar_stack_def*, %struct.timevar_stack_def** @stack, align 8
  %timevar2 = getelementptr inbounds %struct.timevar_stack_def, %struct.timevar_stack_def* %8, i32 0, i32 0
  %9 = load %struct.timevar_def*, %struct.timevar_def** %timevar2, align 8
  %10 = load %struct.timevar_def*, %struct.timevar_def** %tv, align 8
  %cmp = icmp eq %struct.timevar_def* %9, %10
  br i1 %cmp, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.else
  call void @get_time(%struct.timevar_time_def* %now)
  %11 = load %struct.timevar_time_def*, %struct.timevar_time_def** %elapsed.addr, align 8
  call void @timevar_accumulate(%struct.timevar_time_def* %11, %struct.timevar_time_def* @start_time, %struct.timevar_time_def* %now)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.else
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @timevar_print(%struct._IO_FILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %id = alloca i32, align 4
  %total = alloca %struct.timevar_time_def*, align 8
  %now = alloca %struct.timevar_time_def, align 4
  %tv = alloca %struct.timevar_def*, align 8
  %tiny = alloca float, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.timevar_time_def* getelementptr inbounds ([45 x %struct.timevar_def], [45 x %struct.timevar_def]* @timevars, i32 0, i64 0, i32 0), %struct.timevar_time_def** %total, align 8
  %0 = load i32, i32* @time_report, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %cmp = icmp eq %struct._IO_FILE* %1, null
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  store %struct._IO_FILE* %2, %struct._IO_FILE** %fp.addr, align 8
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  call void @get_time(%struct.timevar_time_def* %now)
  %3 = load %struct.timevar_stack_def*, %struct.timevar_stack_def** @stack, align 8
  %tobool3 = icmp ne %struct.timevar_stack_def* %3, null
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end.2
  %4 = load %struct.timevar_stack_def*, %struct.timevar_stack_def** @stack, align 8
  %timevar = getelementptr inbounds %struct.timevar_stack_def, %struct.timevar_stack_def* %4, i32 0, i32 0
  %5 = load %struct.timevar_def*, %struct.timevar_def** %timevar, align 8
  %elapsed = getelementptr inbounds %struct.timevar_def, %struct.timevar_def* %5, i32 0, i32 0
  call void @timevar_accumulate(%struct.timevar_time_def* %elapsed, %struct.timevar_time_def* @start_time, %struct.timevar_time_def* %now)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end.2
  %6 = bitcast %struct.timevar_time_def* %now to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.timevar_time_def* @start_time to i8*), i8* %6, i64 12, i32 4, i1 false)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.46, i32 0, i32 0), %struct._IO_FILE* %7)
  store i32 0, i32* %id, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.5
  %8 = load i32, i32* %id, align 4
  %cmp6 = icmp ult i32 %8, 45
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %id, align 4
  %idxprom = zext i32 %9 to i64
  %arrayidx = getelementptr inbounds [45 x %struct.timevar_def], [45 x %struct.timevar_def]* @timevars, i32 0, i64 %idxprom
  store %struct.timevar_def* %arrayidx, %struct.timevar_def** %tv, align 8
  store float 0x3F747AE140000000, float* %tiny, align 4
  %10 = load i32, i32* %id, align 4
  %cmp7 = icmp eq i32 %10, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %for.body
  br label %for.inc

if.end.9:                                         ; preds = %for.body
  %11 = load %struct.timevar_def*, %struct.timevar_def** %tv, align 8
  %used = getelementptr inbounds %struct.timevar_def, %struct.timevar_def* %11, i32 0, i32 3
  %bf.load = load i8, i8* %used, align 8
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool10 = icmp ne i32 %bf.cast, 0
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.end.9
  br label %for.inc

if.end.12:                                        ; preds = %if.end.9
  %12 = load %struct.timevar_def*, %struct.timevar_def** %tv, align 8
  %elapsed13 = getelementptr inbounds %struct.timevar_def, %struct.timevar_def* %12, i32 0, i32 0
  %user = getelementptr inbounds %struct.timevar_time_def, %struct.timevar_time_def* %elapsed13, i32 0, i32 0
  %13 = load float, float* %user, align 4
  %cmp14 = fcmp olt float %13, 0x3F747AE140000000
  br i1 %cmp14, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %if.end.12
  %14 = load %struct.timevar_def*, %struct.timevar_def** %tv, align 8
  %elapsed15 = getelementptr inbounds %struct.timevar_def, %struct.timevar_def* %14, i32 0, i32 0
  %sys = getelementptr inbounds %struct.timevar_time_def, %struct.timevar_time_def* %elapsed15, i32 0, i32 1
  %15 = load float, float* %sys, align 4
  %cmp16 = fcmp olt float %15, 0x3F747AE140000000
  br i1 %cmp16, label %land.lhs.true.17, label %if.end.21

land.lhs.true.17:                                 ; preds = %land.lhs.true
  %16 = load %struct.timevar_def*, %struct.timevar_def** %tv, align 8
  %elapsed18 = getelementptr inbounds %struct.timevar_def, %struct.timevar_def* %16, i32 0, i32 0
  %wall = getelementptr inbounds %struct.timevar_time_def, %struct.timevar_time_def* %elapsed18, i32 0, i32 2
  %17 = load float, float* %wall, align 4
  %cmp19 = fcmp olt float %17, 0x3F747AE140000000
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %land.lhs.true.17
  br label %for.inc

if.end.21:                                        ; preds = %land.lhs.true.17, %land.lhs.true, %if.end.12
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %19 = load %struct.timevar_def*, %struct.timevar_def** %tv, align 8
  %name = getelementptr inbounds %struct.timevar_def, %struct.timevar_def* %19, i32 0, i32 2
  %20 = load i8*, i8** %name, align 8
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0), i8* %20)
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %22 = load %struct.timevar_def*, %struct.timevar_def** %tv, align 8
  %elapsed23 = getelementptr inbounds %struct.timevar_def, %struct.timevar_def* %22, i32 0, i32 0
  %user24 = getelementptr inbounds %struct.timevar_time_def, %struct.timevar_time_def* %elapsed23, i32 0, i32 0
  %23 = load float, float* %user24, align 4
  %conv = fpext float %23 to double
  %24 = load %struct.timevar_time_def*, %struct.timevar_time_def** %total, align 8
  %user25 = getelementptr inbounds %struct.timevar_time_def, %struct.timevar_time_def* %24, i32 0, i32 0
  %25 = load float, float* %user25, align 4
  %cmp26 = fcmp oeq float %25, 0.000000e+00
  br i1 %cmp26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.21
  br label %cond.end

cond.false:                                       ; preds = %if.end.21
  %26 = load %struct.timevar_def*, %struct.timevar_def** %tv, align 8
  %elapsed28 = getelementptr inbounds %struct.timevar_def, %struct.timevar_def* %26, i32 0, i32 0
  %user29 = getelementptr inbounds %struct.timevar_time_def, %struct.timevar_time_def* %elapsed28, i32 0, i32 0
  %27 = load float, float* %user29, align 4
  %28 = load %struct.timevar_time_def*, %struct.timevar_time_def** %total, align 8
  %user30 = getelementptr inbounds %struct.timevar_time_def, %struct.timevar_time_def* %28, i32 0, i32 0
  %29 = load float, float* %user30, align 4
  %div = fdiv float %27, %29
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ 0.000000e+00, %cond.true ], [ %div, %cond.false ]
  %mul = fmul float %cond, 1.000000e+02
  %conv31 = fpext float %mul to double
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.48, i32 0, i32 0), double %conv, double %conv31)
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call33 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %30)
  br label %for.inc

for.inc:                                          ; preds = %cond.end, %if.then.20, %if.then.11, %if.then.8
  %31 = load i32, i32* %id, align 4
  %inc = add i32 %31, 1
  store i32 %inc, i32* %id, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call34 = call i32 @fputs(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.49, i32 0, i32 0), %struct._IO_FILE* %32)
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %34 = load %struct.timevar_time_def*, %struct.timevar_time_def** %total, align 8
  %user35 = getelementptr inbounds %struct.timevar_time_def, %struct.timevar_time_def* %34, i32 0, i32 0
  %35 = load float, float* %user35, align 4
  %conv36 = fpext float %35 to double
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.50, i32 0, i32 0), double %conv36)
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define i64 @get_run_time() #0 {
entry:
  %total_elapsed = alloca %struct.timevar_time_def, align 4
  call void @timevar_get(i32 0, %struct.timevar_time_def* %total_elapsed)
  %user = getelementptr inbounds %struct.timevar_time_def, %struct.timevar_time_def* %total_elapsed, i32 0, i32 0
  %0 = load float, float* %user, align 4
  %sys = getelementptr inbounds %struct.timevar_time_def, %struct.timevar_time_def* %total_elapsed, i32 0, i32 1
  %1 = load float, float* %sys, align 4
  %add = fadd float %0, %1
  %conv = fptosi float %add to i64
  ret i64 %conv
}

; Function Attrs: nounwind uwtable
define void @print_time(i8* %str, i64 %total) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %total.addr = alloca i64, align 8
  %all_time = alloca i64, align 8
  store i8* %str, i8** %str.addr, align 8
  store i64 %total, i64* %total.addr, align 8
  %call = call i64 @get_run_time()
  store i64 %call, i64* %all_time, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1 = load i8*, i8** %str.addr, align 8
  %2 = load i64, i64* %total.addr, align 8
  %div = sdiv i64 %2, 1000000
  %3 = load i64, i64* %total.addr, align 8
  %rem = srem i64 %3, 1000000
  %4 = load i64, i64* %all_time, align 8
  %cmp = icmp eq i64 %4, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load i64, i64* %total.addr, align 8
  %conv = sitofp i64 %5 to double
  %mul = fmul double 1.000000e+02, %conv
  %6 = load i64, i64* %all_time, align 8
  %conv1 = sitofp i64 %6 to double
  %div2 = fdiv double %mul, %conv1
  %add = fadd double %div2, 5.000000e-01
  %conv3 = fptosi double %add to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %conv3, %cond.false ]
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.51, i32 0, i32 0), i8* %1, i64 %div, i64 %rem, i64 %cond)
  ret void
}

; Function Attrs: nounwind
declare i64 @clock() #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
