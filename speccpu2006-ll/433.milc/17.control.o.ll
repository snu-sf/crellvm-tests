; ModuleID = 'control.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.site = type { i16, i16, i16, i16, i8, i32, %struct.double_prn, i32, [4 x %struct.su3_matrix], [4 x %struct.anti_hermitmat], [4 x double], %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, [4 x %struct.su3_vector], [4 x %struct.su3_vector], %struct.su3_vector, %struct.su3_matrix, %struct.su3_matrix }
%struct.double_prn = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double }
%struct.anti_hermitmat = type { %struct.complex, %struct.complex, %struct.complex, double, double, double, double }
%struct.complex = type { double, double }
%struct.su3_vector = type { [3 x %struct.complex] }
%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.gauge_file = type { %struct._IO_FILE*, %struct.gauge_header*, i8*, i32, i32*, i32, %struct.gauge_check }
%struct.gauge_header = type { i32, [64 x i8], [4 x i32], i32, i32 }
%struct.gauge_check = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"magic_number\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"time_stamp\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"checksums\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"nx\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"ny\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"nz\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"nt\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"action.description\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"gauge.description\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"gauge.beta11\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"gauge.beta12\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"gauge.tadpole.u0\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"gauge.nloops\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"gauge.nreps\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"gauge.previous.filename\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"gauge.previous.time_stamp\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"gauge.previous.checksums\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"gauge.fix.description\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"gauge.fix.tolerance\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"gauge.smear.description\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"gauge.smear.steps\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"gauge.smear.factor\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"quark.description\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"quark.flavors\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"quark.flavors1\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"quark.flavors2\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"quark.mass\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"quark.mass1\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"quark.mass2\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"quark.kappa\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"quark.link.c1\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"quark.link.c3\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"quark.staple.w3\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"quark.clover.c0\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"quark.clover.u0\00", align 1
@.str.35 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@gauge_info_keyword = global [36 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.35, i32 0, i32 0)], align 16
@warms = common global i32 0, align 4
@this_node = common global i32 0, align 4
@.str.36 = private unnamed_addr constant [19 x i8] c"WARMUPS COMPLETED\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@trajecs = common global i32 0, align 4
@propinterval = common global i32 0, align 4
@lattice = common global %struct.site* null, align 8
@mass = common global double 0.000000e+00, align 8
@.str.37 = private unnamed_addr constant [19 x i8] c"RUNNING COMPLETED\0A\00", align 1
@.str.38 = private unnamed_addr constant [31 x i8] c"average cg iters for step= %e\0A\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"total_iters = %d\0A\00", align 1
@total_iters = common global i32 0, align 4
@saveflag = common global i32 0, align 4
@savefile = common global [256 x i8] zeroinitializer, align 16
@ensemble_id = common global [256 x i8] zeroinitializer, align 16
@sequence_number = common global i32 0, align 4
@nx = common global i32 0, align 4
@ny = common global i32 0, align 4
@nz = common global i32 0, align 4
@nt = common global i32 0, align 4
@volume = common global i32 0, align 4
@iseed = common global i32 0, align 4
@steps = common global i32 0, align 4
@niter = common global i32 0, align 4
@nflavors = common global i32 0, align 4
@epsilon = common global double 0.000000e+00, align 8
@beta = common global double 0.000000e+00, align 8
@u0 = common global double 0.000000e+00, align 8
@rsqmin = common global double 0.000000e+00, align 8
@rsqprop = common global double 0.000000e+00, align 8
@startflag = common global i32 0, align 4
@startfile = common global [256 x i8] zeroinitializer, align 16
@phases_in = common global i32 0, align 4
@source_start = common global i32 0, align 4
@source_inc = common global i32 0, align 4
@n_sources = common global i32 0, align 4
@sites_on_node = common global i32 0, align 4
@even_sites_on_node = common global i32 0, align 4
@odd_sites_on_node = common global i32 0, align 4
@number_of_nodes = common global i32 0, align 4
@valid_longlinks = common global i32 0, align 4
@valid_fatlinks = common global i32 0, align 4
@startlat_p = common global %struct.gauge_file* null, align 8
@node_prn = common global %struct.double_prn zeroinitializer, align 8
@gen_pt = common global [16 x i8**] zeroinitializer, align 16
@t_longlink = common global %struct.su3_matrix* null, align 8
@t_fatlink = common global %struct.su3_matrix* null, align 8
@start_lat_hdr = common global %struct.gauge_header zeroinitializer, align 4

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %meascount = alloca i32, align 4
  %traj_done = alloca i32, align 4
  %prompt = alloca i32, align 4
  %s_iters = alloca i32, align 4
  %avs_iters = alloca i32, align 4
  %avspect_iters = alloca i32, align 4
  %avbcorr_iters = alloca i32, align 4
  %dtime = alloca double, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  call void @initialize_machine(i32 %0, i8** %1)
  call void (...) @g_sync()
  %call = call i32 (...) @setup()
  store i32 %call, i32* %prompt, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.57, %entry
  %2 = load i32, i32* %prompt, align 4
  %call1 = call i32 @readin(i32 %2)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call2 = call double (...) @dclock()
  %sub = fsub double -0.000000e+00, %call2
  store double %sub, double* %dtime, align 8
  store i32 0, i32* %traj_done, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %3 = load i32, i32* %traj_done, align 4
  %4 = load i32, i32* @warms, align 4
  %cmp3 = icmp slt i32 %3, %4
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call4 = call i32 (...) @update()
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %traj_done, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %traj_done, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* @this_node, align 4
  %cmp5 = icmp eq i32 %6, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.36, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call7 = call i32 @fflush(%struct._IO_FILE* %7)
  store i32 0, i32* %meascount, align 4
  store i32 0, i32* %avbcorr_iters, align 4
  store i32 0, i32* %avs_iters, align 4
  store i32 0, i32* %avspect_iters, align 4
  store i32 0, i32* %traj_done, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.25, %if.end
  %8 = load i32, i32* %traj_done, align 4
  %9 = load i32, i32* @trajecs, align 4
  %cmp9 = icmp slt i32 %8, %9
  br i1 %cmp9, label %for.body.10, label %for.end.27

for.body.10:                                      ; preds = %for.cond.8
  %call11 = call i32 (...) @update()
  store i32 %call11, i32* %s_iters, align 4
  %10 = load i32, i32* %traj_done, align 4
  %11 = load i32, i32* @propinterval, align 4
  %rem = srem i32 %10, %11
  %12 = load i32, i32* @propinterval, align 4
  %sub12 = sub nsw i32 %12, 1
  %cmp13 = icmp eq i32 %rem, %sub12
  br i1 %cmp13, label %if.then.14, label %if.end.24

if.then.14:                                       ; preds = %for.body.10
  call void @rephase(i32 0)
  call void @g_measure()
  call void @rephase(i32 1)
  %13 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx = getelementptr inbounds %struct.site, %struct.site* %13, i64 0
  %phi = getelementptr inbounds %struct.site, %struct.site* %arrayidx, i32 0, i32 11
  %14 = bitcast %struct.su3_vector* %phi to i8*
  %15 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx15 = getelementptr inbounds %struct.site, %struct.site* %15, i64 0
  %16 = bitcast %struct.site* %arrayidx15 to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %14 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %16 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  %17 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx16 = getelementptr inbounds %struct.site, %struct.site* %17, i64 0
  %xxx = getelementptr inbounds %struct.site, %struct.site* %arrayidx16, i32 0, i32 14
  %18 = bitcast %struct.su3_vector* %xxx to i8*
  %19 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx17 = getelementptr inbounds %struct.site, %struct.site* %19, i64 0
  %20 = bitcast %struct.site* %arrayidx17 to i8*
  %sub.ptr.lhs.cast18 = ptrtoint i8* %18 to i64
  %sub.ptr.rhs.cast19 = ptrtoint i8* %20 to i64
  %sub.ptr.sub20 = sub i64 %sub.ptr.lhs.cast18, %sub.ptr.rhs.cast19
  %conv21 = trunc i64 %sub.ptr.sub20 to i32
  %21 = load double, double* @mass, align 8
  call void @f_meas_imp(i32 %conv, i32 %conv21, double %21)
  %22 = load i32, i32* %s_iters, align 4
  %23 = load i32, i32* %avs_iters, align 4
  %add = add nsw i32 %23, %22
  store i32 %add, i32* %avs_iters, align 4
  %24 = load i32, i32* %meascount, align 4
  %inc22 = add nsw i32 %24, 1
  store i32 %inc22, i32* %meascount, align 4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call23 = call i32 @fflush(%struct._IO_FILE* %25)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.14, %for.body.10
  br label %for.inc.25

for.inc.25:                                       ; preds = %if.end.24
  %26 = load i32, i32* %traj_done, align 4
  %inc26 = add nsw i32 %26, 1
  store i32 %inc26, i32* %traj_done, align 4
  br label %for.cond.8

for.end.27:                                       ; preds = %for.cond.8
  %27 = load i32, i32* @this_node, align 4
  %cmp28 = icmp eq i32 %27, 0
  br i1 %cmp28, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %for.end.27
  %call31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.37, i32 0, i32 0))
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %for.end.27
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call33 = call i32 @fflush(%struct._IO_FILE* %28)
  %29 = load i32, i32* %meascount, align 4
  %cmp34 = icmp sgt i32 %29, 0
  br i1 %cmp34, label %if.then.36, label %if.end.44

if.then.36:                                       ; preds = %if.end.32
  %30 = load i32, i32* @this_node, align 4
  %cmp37 = icmp eq i32 %30, 0
  br i1 %cmp37, label %if.then.39, label %if.end.43

if.then.39:                                       ; preds = %if.then.36
  %31 = load i32, i32* %avs_iters, align 4
  %conv40 = sitofp i32 %31 to double
  %32 = load i32, i32* %meascount, align 4
  %conv41 = sitofp i32 %32 to double
  %div = fdiv double %conv40, %conv41
  %call42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.38, i32 0, i32 0), double %div)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.39, %if.then.36
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.end.32
  %call45 = call double (...) @dclock()
  %33 = load double, double* %dtime, align 8
  %add46 = fadd double %33, %call45
  store double %add46, double* %dtime, align 8
  %34 = load i32, i32* @this_node, align 4
  %cmp47 = icmp eq i32 %34, 0
  br i1 %cmp47, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %if.end.44
  %35 = load i32, i32* @total_iters, align 4
  %call50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.39, i32 0, i32 0), i32 %35)
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %if.end.44
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call52 = call i32 @fflush(%struct._IO_FILE* %36)
  %37 = load i32, i32* @saveflag, align 4
  %cmp53 = icmp ne i32 %37, 20
  br i1 %cmp53, label %if.then.55, label %if.end.57

if.then.55:                                       ; preds = %if.end.51
  call void @rephase(i32 0)
  %38 = load i32, i32* @saveflag, align 4
  %call56 = call %struct.gauge_file* @save_lattice(i32 %38, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @savefile, i32 0, i32 0))
  call void @rephase(i32 1)
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.55, %if.end.51
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret i32 0
}

declare void @initialize_machine(i32, i8**) #1

declare void @g_sync(...) #1

declare i32 @setup(...) #1

declare i32 @readin(i32) #1

declare double @dclock(...) #1

declare i32 @update(...) #1

declare i32 @printf(i8*, ...) #1

declare i32 @fflush(%struct._IO_FILE*) #1

declare void @rephase(i32) #1

declare void @g_measure() #1

declare void @f_meas_imp(i32, i32, double) #1

declare %struct.gauge_file* @save_lattice(i32, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
