; ModuleID = 'setup.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.double_prn = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, i32, double, double, double, i32, i32, i32, i32, i32, [256 x i8], [256 x i8] }
%struct.gauge_file = type { %struct._IO_FILE*, %struct.gauge_header*, i8*, i32, i32*, i32, %struct.gauge_check }
%struct.gauge_header = type { i32, [64 x i8], [4 x i32], i32, i32 }
%struct.gauge_check = type { i32, i32 }

@node_prn = external global %struct.double_prn, align 8
@iseed = external global i32, align 4
@volume = external global i32, align 4
@this_node = external global i32, align 4
@.str = private unnamed_addr constant [14 x i8] c"Made lattice\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"Made nn gathers\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Made 3nn gathers\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Finished setup\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"SU3 with improved KS action\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"Microcanonical simulation with refreshing\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"MIMD version 6\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Machine = %s, with %d nodes\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"R algorithm\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"nflavors\00", align 1
@par_buf = common global %struct.params zeroinitializer, align 8
@.str.10 = private unnamed_addr constant [3 x i8] c"nx\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"ny\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"nz\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"nt\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"iseed\00", align 1
@nx = external global i32, align 4
@ny = external global i32, align 4
@nz = external global i32, align 4
@nt = external global i32, align 4
@nflavors = external global i32, align 4
@number_of_nodes = external global i32, align 4
@total_iters = external global i32, align 4
@.str.15 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"warms\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"trajecs\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"traj_between_meas\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"beta\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"mass\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"u0\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"microcanonical_time_step\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"steps_per_trajectory\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"max_cg_iterations\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"error_per_site\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"error_for_propagator\00", align 1
@warms = external global i32, align 4
@trajecs = external global i32, align 4
@steps = external global i32, align 4
@propinterval = external global i32, align 4
@niter = external global i32, align 4
@rsqmin = external global double, align 8
@rsqprop = external global double, align 8
@epsilon = external global double, align 8
@beta = external global double, align 8
@mass = external global double, align 8
@u0 = external global double, align 8
@startflag = external global i32, align 4
@saveflag = external global i32, align 4
@startfile = external global [256 x i8], align 16
@savefile = external global [256 x i8], align 16
@startlat_p = external global %struct.gauge_file*, align 8
@valid_longlinks = external global i32, align 4
@valid_fatlinks = external global i32, align 4
@phases_in = external global i32, align 4
@.str.27 = private unnamed_addr constant [29 x i8] c"third_neighb: bad direction\0A\00", align 1
@gf = common global %struct.gauge_file* null, align 8

; Function Attrs: nounwind uwtable
define i32 @setup() #0 {
entry:
  %prompt = alloca i32, align 4
  %call = call i32 @initial_set()
  store i32 %call, i32* %prompt, align 4
  %0 = load i32, i32* @iseed, align 4
  %1 = load i32, i32* @volume, align 4
  %call1 = call i32 (...) @mynode()
  %add = add nsw i32 %1, %call1
  call void @initialize_prn(%struct.double_prn* @node_prn, i32 %0, i32 %add)
  call void @setup_layout()
  call void (...) @make_lattice()
  %2 = load i32, i32* @this_node, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call3 = call i32 @fflush(%struct._IO_FILE* %3)
  call void (...) @make_nn_gathers()
  %4 = load i32, i32* @this_node, align 4
  %cmp4 = icmp eq i32 %4, 0
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call8 = call i32 @fflush(%struct._IO_FILE* %5)
  call void @make_3n_gathers()
  %6 = load i32, i32* @this_node, align 4
  %cmp9 = icmp eq i32 %6, 0
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end.7
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end.7
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call13 = call i32 @fflush(%struct._IO_FILE* %7)
  call void (...) @phaseset()
  %8 = load i32, i32* @this_node, align 4
  %cmp14 = icmp eq i32 %8, 0
  br i1 %cmp14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end.12
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.end.12
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call18 = call i32 @fflush(%struct._IO_FILE* %9)
  %10 = load i32, i32* %prompt, align 4
  ret i32 %10
}

declare void @initialize_prn(%struct.double_prn*, i32, i32) #1

declare i32 @mynode(...) #1

declare void @setup_layout() #1

declare void @make_lattice(...) #1

declare i32 @printf(i8*, ...) #1

declare i32 @fflush(%struct._IO_FILE*) #1

declare void @make_nn_gathers(...) #1

declare void @phaseset(...) #1

; Function Attrs: nounwind uwtable
define i32 @initial_set() #0 {
entry:
  %prompt = alloca i32, align 4
  %status = alloca i32, align 4
  %call = call i32 (...) @mynode()
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end.40

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0))
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i32 0))
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0))
  %call4 = call i8* (...) @machine_type()
  %call5 = call i32 (...) @numnodes()
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0), i8* %call4, i32 %call5)
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0))
  %call8 = call i32 @get_prompt(i32* %prompt)
  store i32 %call8, i32* %status, align 4
  %0 = load i32, i32* %status, align 4
  %cmp9 = icmp eq i32 %0, 0
  br i1 %cmp9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then
  %1 = load i32, i32* %prompt, align 4
  %call11 = call i32 @get_i(i32 %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32* getelementptr inbounds (%struct.params, %struct.params* @par_buf, i32 0, i32 6))
  %2 = load i32, i32* %status, align 4
  %add = add nsw i32 %2, %call11
  store i32 %add, i32* %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.then
  %3 = load i32, i32* %status, align 4
  %cmp12 = icmp eq i32 %3, 0
  br i1 %cmp12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %if.end
  %4 = load i32, i32* %prompt, align 4
  %call14 = call i32 @get_i(i32 %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i32* getelementptr inbounds (%struct.params, %struct.params* @par_buf, i32 0, i32 1))
  %5 = load i32, i32* %status, align 4
  %add15 = add nsw i32 %5, %call14
  store i32 %add15, i32* %status, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %if.end
  %6 = load i32, i32* %status, align 4
  %cmp17 = icmp eq i32 %6, 0
  br i1 %cmp17, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %if.end.16
  %7 = load i32, i32* %prompt, align 4
  %call19 = call i32 @get_i(i32 %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i32* getelementptr inbounds (%struct.params, %struct.params* @par_buf, i32 0, i32 2))
  %8 = load i32, i32* %status, align 4
  %add20 = add nsw i32 %8, %call19
  store i32 %add20, i32* %status, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.18, %if.end.16
  %9 = load i32, i32* %status, align 4
  %cmp22 = icmp eq i32 %9, 0
  br i1 %cmp22, label %if.then.23, label %if.end.26

if.then.23:                                       ; preds = %if.end.21
  %10 = load i32, i32* %prompt, align 4
  %call24 = call i32 @get_i(i32 %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i32* getelementptr inbounds (%struct.params, %struct.params* @par_buf, i32 0, i32 3))
  %11 = load i32, i32* %status, align 4
  %add25 = add nsw i32 %11, %call24
  store i32 %add25, i32* %status, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.23, %if.end.21
  %12 = load i32, i32* %status, align 4
  %cmp27 = icmp eq i32 %12, 0
  br i1 %cmp27, label %if.then.28, label %if.end.31

if.then.28:                                       ; preds = %if.end.26
  %13 = load i32, i32* %prompt, align 4
  %call29 = call i32 @get_i(i32 %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i32* getelementptr inbounds (%struct.params, %struct.params* @par_buf, i32 0, i32 4))
  %14 = load i32, i32* %status, align 4
  %add30 = add nsw i32 %14, %call29
  store i32 %add30, i32* %status, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.28, %if.end.26
  %15 = load i32, i32* %status, align 4
  %cmp32 = icmp eq i32 %15, 0
  br i1 %cmp32, label %if.then.33, label %if.end.36

if.then.33:                                       ; preds = %if.end.31
  %16 = load i32, i32* %prompt, align 4
  %call34 = call i32 @get_i(i32 %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32* getelementptr inbounds (%struct.params, %struct.params* @par_buf, i32 0, i32 5))
  %17 = load i32, i32* %status, align 4
  %add35 = add nsw i32 %17, %call34
  store i32 %add35, i32* %status, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.33, %if.end.31
  %18 = load i32, i32* %status, align 4
  %cmp37 = icmp sgt i32 %18, 0
  br i1 %cmp37, label %if.then.38, label %if.else

if.then.38:                                       ; preds = %if.end.36
  store i32 1, i32* getelementptr inbounds (%struct.params, %struct.params* @par_buf, i32 0, i32 0), align 4
  br label %if.end.39

if.else:                                          ; preds = %if.end.36
  store i32 0, i32* getelementptr inbounds (%struct.params, %struct.params* @par_buf, i32 0, i32 0), align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.else, %if.then.38
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %entry
  call void @broadcast_bytes(i8* bitcast (%struct.params* @par_buf to i8*), i32 640)
  %19 = load i32, i32* getelementptr inbounds (%struct.params, %struct.params* @par_buf, i32 0, i32 0), align 4
  %cmp41 = icmp ne i32 %19, 0
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.40
  call void @normal_exit(i32 0)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %if.end.40
  %20 = load i32, i32* getelementptr inbounds (%struct.params, %struct.params* @par_buf, i32 0, i32 1), align 4
  store i32 %20, i32* @nx, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.params, %struct.params* @par_buf, i32 0, i32 2), align 4
  store i32 %21, i32* @ny, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.params, %struct.params* @par_buf, i32 0, i32 3), align 4
  store i32 %22, i32* @nz, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.params, %struct.params* @par_buf, i32 0, i32 4), align 4
  store i32 %23, i32* @nt, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.params, %struct.params* @par_buf, i32 0, i32 5), align 4
  store i32 %24, i32* @iseed, align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.params, %struct.params* @par_buf, i32 0, i32 6), align 4
  store i32 %25, i32* @nflavors, align 4
  %call44 = call i32 (...) @mynode()
  store i32 %call44, i32* @this_node, align 4
  %call45 = call i32 (...) @numnodes()
  store i32 %call45, i32* @number_of_nodes, align 4
  %26 = load i32, i32* @nx, align 4
  %27 = load i32, i32* @ny, align 4
  %mul = mul nsw i32 %26, %27
  %28 = load i32, i32* @nz, align 4
  %mul46 = mul nsw i32 %mul, %28
  %29 = load i32, i32* @nt, align 4
  %mul47 = mul nsw i32 %mul46, %29
  store i32 %mul47, i32* @volume, align 4
  store i32 0, i32* @total_iters, align 4
  %30 = load i32, i32* %prompt, align 4
  ret i32 %30
}

declare i8* @machine_type(...) #1

declare i32 @numnodes(...) #1

declare i32 @get_prompt(i32*) #1

declare i32 @get_i(i32, i8*, i32*) #1

declare void @broadcast_bytes(i8*, i32) #1

declare void @normal_exit(i32) #1

; Function Attrs: nounwind uwtable
define i32 @readin(i32 %prompt) #0 {
entry:
  %prompt.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %x = alloca double, align 8
  store i32 %prompt, i32* %prompt.addr, align 4
  %0 = load i32, i32* @this_node, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end.74

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0))
  store i32 0, i32* %status, align 4
  %1 = load i32, i32* %status, align 4
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %2 = load i32, i32* %prompt.addr, align 4
  %call3 = call i32 @get_i(i32 %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32* getelementptr inbounds (%struct.params, %struct.params* @par_buf, i32 0, i32 7))
  %3 = load i32, i32* %status, align 4
  %add = add nsw i32 %3, %call3
  store i32 %add, i32* %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %4 = load i32, i32* %status, align 4
  %cmp4 = icmp eq i32 %4, 0
  br i1 %cmp4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %5 = load i32, i32* %prompt.addr, align 4
  %call6 = call i32 @get_i(i32 %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i32* getelementptr inbounds (%struct.params, %struct.params* @par_buf, i32 0, i32 8))
  %6 = load i32, i32* %status, align 4
  %add7 = add nsw i32 %6, %call6
  store i32 %add7, i32* %status, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %7 = load i32, i32* %status, align 4
  %cmp9 = icmp eq i32 %7, 0
  br i1 %cmp9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %if.end.8
  %8 = load i32, i32* %prompt.addr, align 4
  %call11 = call i32 @get_i(i32 %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0), i32* getelementptr inbounds (%struct.params, %struct.params* @par_buf, i32 0, i32 10))
  %9 = load i32, i32* %status, align 4
  %add12 = add nsw i32 %9, %call11
  store i32 %add12, i32* %status, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %if.end.8
  %10 = load i32, i32* %status, align 4
  %cmp14 = icmp eq i32 %10, 0
  br i1 %cmp14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.end.13
  %11 = load i32, i32* %prompt.addr, align 4
  %call16 = call i32 @get_f(i32 %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), double* getelementptr inbounds (%struct.params, %struct.params* @par_buf, i32 0, i32 11))
  %12 = load i32, i32* %status, align 4
  %add17 = add nsw i32 %12, %call16
  store i32 %add17, i32* %status, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %if.end.13
  %13 = load i32, i32* %status, align 4
  %cmp19 = icmp eq i32 %13, 0
  br i1 %cmp19, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %if.end.18
  %14 = load i32, i32* %prompt.addr, align 4
  %call21 = call i32 @get_f(i32 %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), double* getelementptr inbounds (%struct.params, %struct.params* @par_buf, i32 0, i32 12))
  %15 = load i32, i32* %status, align 4
  %add22 = add nsw i32 %15, %call21
  store i32 %add22, i32* %status, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %if.end.18
  %16 = load i32, i32* %status, align 4
  %cmp24 = icmp eq i32 %16, 0
  br i1 %cmp24, label %if.then.25, label %if.end.28

if.then.25:                                       ; preds = %if.end.23
  %17 = load i32, i32* %prompt.addr, align 4
  %call26 = call i32 @get_f(i32 %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), double* getelementptr inbounds (%struct.params, %struct.params* @par_buf, i32 0, i32 13))
  %18 = load i32, i32* %status, align 4
  %add27 = add nsw i32 %18, %call26
  store i32 %add27, i32* %status, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.25, %if.end.23
  %19 = load i32, i32* %status, align 4
  %cmp29 = icmp eq i32 %19, 0
  br i1 %cmp29, label %if.then.30, label %if.end.33

if.then.30:                                       ; preds = %if.end.28
  %20 = load i32, i32* %prompt.addr, align 4
  %call31 = call i32 @get_f(i32 %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i32 0, i32 0), double* getelementptr inbounds (%struct.params, %struct.params* @par_buf, i32 0, i32 17))
  %21 = load i32, i32* %status, align 4
  %add32 = add nsw i32 %21, %call31
  store i32 %add32, i32* %status, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.30, %if.end.28
  %22 = load i32, i32* %status, align 4
  %cmp34 = icmp eq i32 %22, 0
  br i1 %cmp34, label %if.then.35, label %if.end.38

if.then.35:                                       ; preds = %if.end.33
  %23 = load i32, i32* %prompt.addr, align 4
  %call36 = call i32 @get_i(i32 %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i32 0, i32 0), i32* getelementptr inbounds (%struct.params, %struct.params* @par_buf, i32 0, i32 9))
  %24 = load i32, i32* %status, align 4
  %add37 = add nsw i32 %24, %call36
  store i32 %add37, i32* %status, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.35, %if.end.33
  %25 = load i32, i32* %status, align 4
  %cmp39 = icmp eq i32 %25, 0
  br i1 %cmp39, label %if.then.40, label %if.end.43

if.then.40:                                       ; preds = %if.end.38
  %26 = load i32, i32* %prompt.addr, align 4
  %call41 = call i32 @get_i(i32 %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0), i32* getelementptr inbounds (%struct.params, %struct.params* @par_buf, i32 0, i32 14))
  %27 = load i32, i32* %status, align 4
  %add42 = add nsw i32 %27, %call41
  store i32 %add42, i32* %status, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.40, %if.end.38
  %28 = load i32, i32* %status, align 4
  %cmp44 = icmp eq i32 %28, 0
  br i1 %cmp44, label %if.then.45, label %if.end.48

if.then.45:                                       ; preds = %if.end.43
  %29 = load i32, i32* %prompt.addr, align 4
  %call46 = call i32 @get_f(i32 %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0), double* %x)
  %30 = load i32, i32* %status, align 4
  %add47 = add nsw i32 %30, %call46
  store i32 %add47, i32* %status, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.45, %if.end.43
  %31 = load i32, i32* %status, align 4
  %cmp49 = icmp eq i32 %31, 0
  br i1 %cmp49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.end.48
  %32 = load double, double* %x, align 8
  %33 = load double, double* %x, align 8
  %mul = fmul double %32, %33
  store double %mul, double* getelementptr inbounds (%struct.params, %struct.params* @par_buf, i32 0, i32 15), align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %if.end.48
  %34 = load i32, i32* %status, align 4
  %cmp52 = icmp eq i32 %34, 0
  br i1 %cmp52, label %if.then.53, label %if.end.56

if.then.53:                                       ; preds = %if.end.51
  %35 = load i32, i32* %prompt.addr, align 4
  %call54 = call i32 @get_f(i32 %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i32 0, i32 0), double* %x)
  %36 = load i32, i32* %status, align 4
  %add55 = add nsw i32 %36, %call54
  store i32 %add55, i32* %status, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.53, %if.end.51
  %37 = load i32, i32* %status, align 4
  %cmp57 = icmp eq i32 %37, 0
  br i1 %cmp57, label %if.then.58, label %if.end.60

if.then.58:                                       ; preds = %if.end.56
  %38 = load double, double* %x, align 8
  %39 = load double, double* %x, align 8
  %mul59 = fmul double %38, %39
  store double %mul59, double* getelementptr inbounds (%struct.params, %struct.params* @par_buf, i32 0, i32 16), align 8
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.58, %if.end.56
  %40 = load i32, i32* %status, align 4
  %cmp61 = icmp eq i32 %40, 0
  br i1 %cmp61, label %if.then.62, label %if.end.65

if.then.62:                                       ; preds = %if.end.60
  %41 = load i32, i32* %prompt.addr, align 4
  %call63 = call i32 @ask_starting_lattice(i32 %41, i32* getelementptr inbounds (%struct.params, %struct.params* @par_buf, i32 0, i32 21), i8* getelementptr inbounds (%struct.params, %struct.params* @par_buf, i32 0, i32 23, i32 0))
  %42 = load i32, i32* %status, align 4
  %add64 = add nsw i32 %42, %call63
  store i32 %add64, i32* %status, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.62, %if.end.60
  %43 = load i32, i32* %status, align 4
  %cmp66 = icmp eq i32 %43, 0
  br i1 %cmp66, label %if.then.67, label %if.end.70

if.then.67:                                       ; preds = %if.end.65
  %44 = load i32, i32* %prompt.addr, align 4
  %call68 = call i32 @ask_ending_lattice(i32 %44, i32* getelementptr inbounds (%struct.params, %struct.params* @par_buf, i32 0, i32 22), i8* getelementptr inbounds (%struct.params, %struct.params* @par_buf, i32 0, i32 24, i32 0))
  %45 = load i32, i32* %status, align 4
  %add69 = add nsw i32 %45, %call68
  store i32 %add69, i32* %status, align 4
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.67, %if.end.65
  %46 = load i32, i32* %status, align 4
  %cmp71 = icmp sgt i32 %46, 0
  br i1 %cmp71, label %if.then.72, label %if.else

if.then.72:                                       ; preds = %if.end.70
  store i32 1, i32* getelementptr inbounds (%struct.params, %struct.params* @par_buf, i32 0, i32 0), align 4
  br label %if.end.73

if.else:                                          ; preds = %if.end.70
  store i32 0, i32* getelementptr inbounds (%struct.params, %struct.params* @par_buf, i32 0, i32 0), align 4
  br label %if.end.73

if.end.73:                                        ; preds = %if.else, %if.then.72
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %entry
  call void @broadcast_bytes(i8* bitcast (%struct.params* @par_buf to i8*), i32 640)
  %47 = load i32, i32* getelementptr inbounds (%struct.params, %struct.params* @par_buf, i32 0, i32 0), align 4
  %cmp75 = icmp ne i32 %47, 0
  br i1 %cmp75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.end.74
  call void @normal_exit(i32 0)
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.76, %if.end.74
  %48 = load i32, i32* getelementptr inbounds (%struct.params, %struct.params* @par_buf, i32 0, i32 7), align 4
  store i32 %48, i32* @warms, align 4
  %49 = load i32, i32* getelementptr inbounds (%struct.params, %struct.params* @par_buf, i32 0, i32 8), align 4
  store i32 %49, i32* @trajecs, align 4
  %50 = load i32, i32* getelementptr inbounds (%struct.params, %struct.params* @par_buf, i32 0, i32 9), align 4
  store i32 %50, i32* @steps, align 4
  %51 = load i32, i32* getelementptr inbounds (%struct.params, %struct.params* @par_buf, i32 0, i32 10), align 4
  store i32 %51, i32* @propinterval, align 4
  %52 = load i32, i32* getelementptr inbounds (%struct.params, %struct.params* @par_buf, i32 0, i32 14), align 4
  store i32 %52, i32* @niter, align 4
  %53 = load double, double* getelementptr inbounds (%struct.params, %struct.params* @par_buf, i32 0, i32 15), align 8
  store double %53, double* @rsqmin, align 8
  %54 = load double, double* getelementptr inbounds (%struct.params, %struct.params* @par_buf, i32 0, i32 16), align 8
  store double %54, double* @rsqprop, align 8
  %55 = load double, double* getelementptr inbounds (%struct.params, %struct.params* @par_buf, i32 0, i32 17), align 8
  store double %55, double* @epsilon, align 8
  %56 = load double, double* getelementptr inbounds (%struct.params, %struct.params* @par_buf, i32 0, i32 11), align 8
  store double %56, double* @beta, align 8
  %57 = load double, double* getelementptr inbounds (%struct.params, %struct.params* @par_buf, i32 0, i32 12), align 8
  store double %57, double* @mass, align 8
  %58 = load double, double* getelementptr inbounds (%struct.params, %struct.params* @par_buf, i32 0, i32 13), align 8
  store double %58, double* @u0, align 8
  %59 = load i32, i32* getelementptr inbounds (%struct.params, %struct.params* @par_buf, i32 0, i32 21), align 4
  store i32 %59, i32* @startflag, align 4
  %60 = load i32, i32* getelementptr inbounds (%struct.params, %struct.params* @par_buf, i32 0, i32 22), align 4
  store i32 %60, i32* @saveflag, align 4
  %call78 = call i8* @strcpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @startfile, i32 0, i32 0), i8* getelementptr inbounds (%struct.params, %struct.params* @par_buf, i32 0, i32 23, i32 0)) #4
  %call79 = call i8* @strcpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @savefile, i32 0, i32 0), i8* getelementptr inbounds (%struct.params, %struct.params* @par_buf, i32 0, i32 24, i32 0)) #4
  %61 = load i32, i32* @startflag, align 4
  %cmp80 = icmp eq i32 %61, 10
  br i1 %cmp80, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %if.end.77
  call void @rephase(i32 0)
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.81, %if.end.77
  %62 = load i32, i32* @startflag, align 4
  %call83 = call %struct.gauge_file* @reload_lattice(i32 %62, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @startfile, i32 0, i32 0))
  store %struct.gauge_file* %call83, %struct.gauge_file** @startlat_p, align 8
  store i32 0, i32* @valid_longlinks, align 4
  store i32 0, i32* @valid_fatlinks, align 4
  store i32 0, i32* @phases_in, align 4
  call void @rephase(i32 1)
  call void (...) @make_loop_table()
  call void (...) @make_path_table()
  ret i32 0
}

declare i32 @get_f(i32, i8*, double*) #1

declare i32 @ask_starting_lattice(i32, i32*, i8*) #1

declare i32 @ask_ending_lattice(i32, i32*, i8*) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

declare void @rephase(i32) #1

declare %struct.gauge_file* @reload_lattice(i32, i8*) #1

declare void @make_loop_table(...) #1

declare void @make_path_table(...) #1

; Function Attrs: nounwind uwtable
define void @make_3n_gathers() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @make_gather(void (i32, i32, i32, i32, i32*, i32, i32*, i32*, i32*, i32*)* @third_neighbor, i32* %i, i32 1, i32 0, i32 1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %1 = load i32, i32* %i, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @sort_eight_neighborlists(i32 8)
  ret void
}

declare i32 @make_gather(void (i32, i32, i32, i32, i32*, i32, i32*, i32*, i32*, i32*)*, i32*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @third_neighbor(i32 %x, i32 %y, i32 %z, i32 %t, i32* %dirpt, i32 %FB, i32* %xp, i32* %yp, i32* %zp, i32* %tp) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %z.addr = alloca i32, align 4
  %t.addr = alloca i32, align 4
  %dirpt.addr = alloca i32*, align 8
  %FB.addr = alloca i32, align 4
  %xp.addr = alloca i32*, align 8
  %yp.addr = alloca i32*, align 8
  %zp.addr = alloca i32*, align 8
  %tp.addr = alloca i32*, align 8
  %dir = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %z, i32* %z.addr, align 4
  store i32 %t, i32* %t.addr, align 4
  store i32* %dirpt, i32** %dirpt.addr, align 8
  store i32 %FB, i32* %FB.addr, align 4
  store i32* %xp, i32** %xp.addr, align 8
  store i32* %yp, i32** %yp.addr, align 8
  store i32* %zp, i32** %zp.addr, align 8
  store i32* %tp, i32** %tp.addr, align 8
  %0 = load i32, i32* %FB.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32*, i32** %dirpt.addr, align 8
  %2 = load i32, i32* %1, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32*, i32** %dirpt.addr, align 8
  %4 = load i32, i32* %3, align 4
  %sub = sub nsw i32 7, %4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %sub, %cond.false ]
  store i32 %cond, i32* %dir, align 4
  %5 = load i32, i32* %x.addr, align 4
  %6 = load i32*, i32** %xp.addr, align 8
  store i32 %5, i32* %6, align 4
  %7 = load i32, i32* %y.addr, align 4
  %8 = load i32*, i32** %yp.addr, align 8
  store i32 %7, i32* %8, align 4
  %9 = load i32, i32* %z.addr, align 4
  %10 = load i32*, i32** %zp.addr, align 8
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* %t.addr, align 4
  %12 = load i32*, i32** %tp.addr, align 8
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* %dir, align 4
  switch i32 %13, label %sw.default [
    i32 0, label %sw.bb
    i32 7, label %sw.bb.1
    i32 1, label %sw.bb.5
    i32 6, label %sw.bb.8
    i32 2, label %sw.bb.13
    i32 5, label %sw.bb.16
    i32 3, label %sw.bb.21
    i32 4, label %sw.bb.24
  ]

sw.bb:                                            ; preds = %cond.end
  %14 = load i32, i32* %x.addr, align 4
  %add = add nsw i32 %14, 3
  %15 = load i32, i32* @nx, align 4
  %rem = srem i32 %add, %15
  %16 = load i32*, i32** %xp.addr, align 8
  store i32 %rem, i32* %16, align 4
  br label %sw.epilog

sw.bb.1:                                          ; preds = %cond.end
  %17 = load i32, i32* %x.addr, align 4
  %18 = load i32, i32* @nx, align 4
  %mul = mul nsw i32 4, %18
  %add2 = add nsw i32 %17, %mul
  %sub3 = sub nsw i32 %add2, 3
  %19 = load i32, i32* @nx, align 4
  %rem4 = srem i32 %sub3, %19
  %20 = load i32*, i32** %xp.addr, align 8
  store i32 %rem4, i32* %20, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %cond.end
  %21 = load i32, i32* %y.addr, align 4
  %add6 = add nsw i32 %21, 3
  %22 = load i32, i32* @ny, align 4
  %rem7 = srem i32 %add6, %22
  %23 = load i32*, i32** %yp.addr, align 8
  store i32 %rem7, i32* %23, align 4
  br label %sw.epilog

sw.bb.8:                                          ; preds = %cond.end
  %24 = load i32, i32* %y.addr, align 4
  %25 = load i32, i32* @ny, align 4
  %mul9 = mul nsw i32 4, %25
  %add10 = add nsw i32 %24, %mul9
  %sub11 = sub nsw i32 %add10, 3
  %26 = load i32, i32* @ny, align 4
  %rem12 = srem i32 %sub11, %26
  %27 = load i32*, i32** %yp.addr, align 8
  store i32 %rem12, i32* %27, align 4
  br label %sw.epilog

sw.bb.13:                                         ; preds = %cond.end
  %28 = load i32, i32* %z.addr, align 4
  %add14 = add nsw i32 %28, 3
  %29 = load i32, i32* @nz, align 4
  %rem15 = srem i32 %add14, %29
  %30 = load i32*, i32** %zp.addr, align 8
  store i32 %rem15, i32* %30, align 4
  br label %sw.epilog

sw.bb.16:                                         ; preds = %cond.end
  %31 = load i32, i32* %z.addr, align 4
  %32 = load i32, i32* @nz, align 4
  %mul17 = mul nsw i32 4, %32
  %add18 = add nsw i32 %31, %mul17
  %sub19 = sub nsw i32 %add18, 3
  %33 = load i32, i32* @nz, align 4
  %rem20 = srem i32 %sub19, %33
  %34 = load i32*, i32** %zp.addr, align 8
  store i32 %rem20, i32* %34, align 4
  br label %sw.epilog

sw.bb.21:                                         ; preds = %cond.end
  %35 = load i32, i32* %t.addr, align 4
  %add22 = add nsw i32 %35, 3
  %36 = load i32, i32* @nt, align 4
  %rem23 = srem i32 %add22, %36
  %37 = load i32*, i32** %tp.addr, align 8
  store i32 %rem23, i32* %37, align 4
  br label %sw.epilog

sw.bb.24:                                         ; preds = %cond.end
  %38 = load i32, i32* %t.addr, align 4
  %39 = load i32, i32* @nt, align 4
  %mul25 = mul nsw i32 4, %39
  %add26 = add nsw i32 %38, %mul25
  %sub27 = sub nsw i32 %add26, 3
  %40 = load i32, i32* @nt, align 4
  %rem28 = srem i32 %sub27, %40
  %41 = load i32*, i32** %tp.addr, align 8
  store i32 %rem28, i32* %41, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.27, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

sw.epilog:                                        ; preds = %sw.bb.24, %sw.bb.21, %sw.bb.16, %sw.bb.13, %sw.bb.8, %sw.bb.5, %sw.bb.1, %sw.bb
  ret void
}

declare void @sort_eight_neighborlists(i32) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
