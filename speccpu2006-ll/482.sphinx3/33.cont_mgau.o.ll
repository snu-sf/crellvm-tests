; ModuleID = 'cont_mgau.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.mgau_model_t = type { i32, i32, i32, %struct.mgau_t*, double, i32, i32, i32 }
%struct.mgau_t = type { i32, float**, float**, float*, i32* }

@considered = global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"cont_mgau.c\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"Applying variance floor to non-zero variance vectors\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"%d variance values floored\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c".cont.\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c".semi.\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"FATAL_ERROR\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"Feature should be either .semi. or .cont.\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"Reading mixture gaussian file '%s'\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"bio_readhdr(%s) failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"WARNING\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"Version mismatch(%s): %s, expecting %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"chksum0\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"fread(%s) (#codebooks) failed\0A\00", align 1
@.str.17 = private unnamed_addr constant [71 x i8] c"%s: #Mixture Gaussians (%d) exceeds limit(%d) enforced by MGAUID type\0A\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"fread(%s) (#features) failed\0A\00", align 1
@.str.19 = private unnamed_addr constant [46 x i8] c"#Features streams(%d) != 1 in continuous HMM\0A\00", align 1
@.str.20 = private unnamed_addr constant [51 x i8] c"#Features streams(%d) != 1 in semi-continuous HMM\0A\00", align 1
@.str.21 = private unnamed_addr constant [38 x i8] c"fread(%s) (#density/codebook) failed\0A\00", align 1
@.str.22 = private unnamed_addr constant [36 x i8] c"fread(%s) (feature-lengths) failed\0A\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"fread(%s) (total #floats) failed\0A\00", align 1
@.str.24 = private unnamed_addr constant [58 x i8] c"%s: #float32s(%d) doesn't match dimensions: %d x %d x %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [50 x i8] c"Currently S2 semi-continous HMM is not supported\0A\00", align 1
@.str.26 = private unnamed_addr constant [47 x i8] c"#Mixtures(%d) doesn't match that of means(%d)\0A\00", align 1
@.str.27 = private unnamed_addr constant [49 x i8] c"#Components(%d) doesn't match that of means(%d)\0A\00", align 1
@.str.28 = private unnamed_addr constant [52 x i8] c"#Vector length(%d) doesn't match that of means(%d)\0A\00", align 1
@.str.29 = private unnamed_addr constant [61 x i8] c"Mixture %d: #Components(%d) doesn't match that of means(%d)\0A\00", align 1
@.str.30 = private unnamed_addr constant [32 x i8] c"fread(%s) (densitydata) failed\0A\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"%s: More data than expected\0A\00", align 1
@.str.32 = private unnamed_addr constant [60 x i8] c"%d mixture Gaussians, %d components, %d streams, veclen %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [35 x i8] c"Reading mixture weights file '%s'\0A\00", align 1
@.str.34 = private unnamed_addr constant [34 x i8] c"bio_fread(%s) (arraysize) failed\0A\00", align 1
@.str.35 = private unnamed_addr constant [51 x i8] c"#Features streams(%d) != 4 in semi-continuous HMM\0A\00", align 1
@.str.36 = private unnamed_addr constant [116 x i8] c"How can this happen? Someone must have moved this part of the code somewhere! Not my fault! ARCHAN at 20040504 :-)\0A\00", align 1
@.str.37 = private unnamed_addr constant [60 x i8] c"%s: #float32s(%d) doesn't match header dimensions: %d x %d\0A\00", align 1
@.str.38 = private unnamed_addr constant [66 x i8] c"%s: #Mixture Gaussians(%d) doesn't match mean/var parameters(%d)\0A\00", align 1
@.str.39 = private unnamed_addr constant [65 x i8] c"Mixture %d: #Weights(%d) doesn't match #Gaussian components(%d)\0A\00", align 1
@.str.40 = private unnamed_addr constant [34 x i8] c"bio_fread(%s) (arraydata) failed\0A\00", align 1
@.str.41 = private unnamed_addr constant [31 x i8] c"More data than expected in %s\0A\00", align 1
@.str.42 = private unnamed_addr constant [30 x i8] c"Read %d x %d mixture weights\0A\00", align 1
@.str.43 = private unnamed_addr constant [43 x i8] c"Removing uninitialized Gaussian densities\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.44 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.46 = private unnamed_addr constant [53 x i8] c"%d densities removed (%d mixtures removed entirely)\0A\00", align 1
@.str.47 = private unnamed_addr constant [25 x i8] c"Applying variance floor\0A\00", align 1
@.str.48 = private unnamed_addr constant [46 x i8] c"Precomputing Mahalanobis distance invariants\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @mgau_var_nzvec_floor(%struct.mgau_model_t* %g, double %floor) #0 {
entry:
  %g.addr = alloca %struct.mgau_model_t*, align 8
  %floor.addr = alloca double, align 8
  %m = alloca i32, align 4
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %l = alloca i32, align 4
  %var = alloca float*, align 8
  store %struct.mgau_model_t* %g, %struct.mgau_model_t** %g.addr, align 8
  store double %floor, double* %floor.addr, align 8
  call void @_E__pr_info_header(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 437, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i32 0, i32 0))
  %0 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %veclen = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %0, i32 0, i32 2
  %1 = load i32, i32* %veclen, align 4
  store i32 %1, i32* %l, align 4
  store i32 0, i32* %n, align 4
  store i32 0, i32* %m, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.26, %entry
  %2 = load i32, i32* %m, align 4
  %3 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %n_mgau = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %3, i32 0, i32 0
  %4 = load i32, i32* %n_mgau, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end.28

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %c, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.23, %for.body
  %5 = load i32, i32* %c, align 4
  %6 = load i32, i32* %m, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %mgau = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %7, i32 0, i32 3
  %8 = load %struct.mgau_t*, %struct.mgau_t** %mgau, align 8
  %arrayidx = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %8, i64 %idxprom
  %n_comp = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %arrayidx, i32 0, i32 0
  %9 = load i32, i32* %n_comp, align 4
  %cmp2 = icmp slt i32 %5, %9
  br i1 %cmp2, label %for.body.3, label %for.end.25

for.body.3:                                       ; preds = %for.cond.1
  %10 = load i32, i32* %c, align 4
  %idxprom4 = sext i32 %10 to i64
  %11 = load i32, i32* %m, align 4
  %idxprom5 = sext i32 %11 to i64
  %12 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %mgau6 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %12, i32 0, i32 3
  %13 = load %struct.mgau_t*, %struct.mgau_t** %mgau6, align 8
  %arrayidx7 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %13, i64 %idxprom5
  %var8 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %arrayidx7, i32 0, i32 2
  %14 = load float**, float*** %var8, align 8
  %arrayidx9 = getelementptr inbounds float*, float** %14, i64 %idxprom4
  %15 = load float*, float** %arrayidx9, align 8
  store float* %15, float** %var, align 8
  %16 = load float*, float** %var, align 8
  %17 = load i32, i32* %l, align 4
  %call = call i32 @vector_is_zero(float* %16, i32 %17)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.22, label %if.then

if.then:                                          ; preds = %for.body.3
  store i32 0, i32* %i, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %if.then
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %l, align 4
  %cmp11 = icmp slt i32 %18, %19
  br i1 %cmp11, label %for.body.12, label %for.end

for.body.12:                                      ; preds = %for.cond.10
  %20 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %20 to i64
  %21 = load float*, float** %var, align 8
  %arrayidx14 = getelementptr inbounds float, float* %21, i64 %idxprom13
  %22 = load float, float* %arrayidx14, align 4
  %conv = fpext float %22 to double
  %23 = load double, double* %floor.addr, align 8
  %cmp15 = fcmp olt double %conv, %23
  br i1 %cmp15, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %for.body.12
  %24 = load double, double* %floor.addr, align 8
  %conv18 = fptrunc double %24 to float
  %25 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %25 to i64
  %26 = load float*, float** %var, align 8
  %arrayidx20 = getelementptr inbounds float, float* %26, i64 %idxprom19
  store float %conv18, float* %arrayidx20, align 4
  %27 = load i32, i32* %n, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %n, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.17, %for.body.12
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %28 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %28, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond.10

for.end:                                          ; preds = %for.cond.10
  br label %if.end.22

if.end.22:                                        ; preds = %for.end, %for.body.3
  br label %for.inc.23

for.inc.23:                                       ; preds = %if.end.22
  %29 = load i32, i32* %c, align 4
  %inc24 = add nsw i32 %29, 1
  store i32 %inc24, i32* %c, align 4
  br label %for.cond.1

for.end.25:                                       ; preds = %for.cond.1
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.end.25
  %30 = load i32, i32* %m, align 4
  %inc27 = add nsw i32 %30, 1
  store i32 %inc27, i32* %m, align 4
  br label %for.cond

for.end.28:                                       ; preds = %for.cond
  call void @_E__pr_info_header(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 457, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  %31 = load i32, i32* %n, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0), i32 %31)
  %32 = load i32, i32* %n, align 4
  ret i32 %32
}

declare void @_E__pr_info_header(i8*, i64, i8*) #1

declare void @_E__pr_info(i8*, ...) #1

declare i32 @vector_is_zero(float*, i32) #1

; Function Attrs: nounwind uwtable
define %struct.mgau_model_t* @mgau_init(i8* %meanfile, i8* %varfile, double %varfloor, i8* %mixwfile, double %mixwfloor, i32 %precomp, i8* %senmgau) #0 {
entry:
  %meanfile.addr = alloca i8*, align 8
  %varfile.addr = alloca i8*, align 8
  %varfloor.addr = alloca double, align 8
  %mixwfile.addr = alloca i8*, align 8
  %mixwfloor.addr = alloca double, align 8
  %precomp.addr = alloca i32, align 4
  %senmgau.addr = alloca i8*, align 8
  %g = alloca %struct.mgau_model_t*, align 8
  store i8* %meanfile, i8** %meanfile.addr, align 8
  store i8* %varfile, i8** %varfile.addr, align 8
  store double %varfloor, double* %varfloor.addr, align 8
  store i8* %mixwfile, i8** %mixwfile.addr, align 8
  store double %mixwfloor, double* %mixwfloor.addr, align 8
  store i32 %precomp, i32* %precomp.addr, align 4
  store i8* %senmgau, i8** %senmgau.addr, align 8
  %call = call i8* @__ckd_calloc__(i64 1, i64 48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 509)
  %0 = bitcast i8* %call to %struct.mgau_model_t*
  store %struct.mgau_model_t* %0, %struct.mgau_model_t** %g, align 8
  %1 = load i8*, i8** %senmgau.addr, align 8
  %call1 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0)) #5
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g, align 8
  %gau_type = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %2, i32 0, i32 7
  store i32 10001, i32* %gau_type, align 4
  br label %if.end.7

if.else:                                          ; preds = %entry
  %3 = load i8*, i8** %senmgau.addr, align 8
  %call2 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0)) #5
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.else.6

if.then.4:                                        ; preds = %if.else
  %4 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g, align 8
  %gau_type5 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %4, i32 0, i32 7
  store i32 10002, i32* %gau_type5, align 4
  br label %if.end

if.else.6:                                        ; preds = %if.else
  call void @_E__pr_header(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 516, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0))
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else.6, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %5 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g, align 8
  %6 = load i8*, i8** %meanfile.addr, align 8
  %call8 = call i32 @mgau_file_read(%struct.mgau_model_t* %5, i8* %6, i32 1)
  %7 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g, align 8
  %8 = load i8*, i8** %varfile.addr, align 8
  %call9 = call i32 @mgau_file_read(%struct.mgau_model_t* %7, i8* %8, i32 2)
  %9 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g, align 8
  %10 = load i8*, i8** %mixwfile.addr, align 8
  %11 = load double, double* %mixwfloor.addr, align 8
  %call10 = call i32 @mgau_mixw_read(%struct.mgau_model_t* %9, i8* %10, double %11)
  %12 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g, align 8
  call void @mgau_uninit_compact(%struct.mgau_model_t* %12)
  %13 = load double, double* %varfloor.addr, align 8
  %cmp11 = fcmp ogt double %13, 0.000000e+00
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.7
  %14 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g, align 8
  %15 = load double, double* %varfloor.addr, align 8
  call void @mgau_var_floor(%struct.mgau_model_t* %14, double %15)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end.7
  %16 = load i32, i32* %precomp.addr, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.13
  %17 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g, align 8
  %call15 = call i32 @mgau_precomp(%struct.mgau_model_t* %17)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end.13
  %call17 = call double @logs3_to_log(i32 -939524096)
  %18 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g, align 8
  %distfloor = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %18, i32 0, i32 4
  store double %call17, double* %distfloor, align 8
  %19 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g, align 8
  ret %struct.mgau_model_t* %19
}

declare i8* @__ckd_calloc__(i64, i64, i8*, i32) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare void @_E__pr_header(i8*, i64, i8*) #1

declare void @_E__die_error(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @mgau_file_read(%struct.mgau_model_t* %g, i8* %file_name, i32 %type) #0 {
entry:
  %g.addr = alloca %struct.mgau_model_t*, align 8
  %file_name.addr = alloca i8*, align 8
  %type.addr = alloca i32, align 4
  %tmp = alloca i8, align 1
  %fp = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %n = alloca i32, align 4
  %n_mgau = alloca i32, align 4
  %n_feat = alloca i32, align 4
  %n_density = alloca i32, align 4
  %veclen = alloca i32*, align 8
  %blk = alloca i32, align 4
  %byteswap = alloca i32, align 4
  %chksum_present = alloca i32, align 4
  %buf = alloca float*, align 8
  %pbuf = alloca float**, align 8
  %argname = alloca i8**, align 8
  %argval = alloca i8**, align 8
  %chksum = alloca i32, align 4
  %f = alloca double, align 8
  store %struct.mgau_model_t* %g, %struct.mgau_model_t** %g.addr, align 8
  store i8* %file_name, i8** %file_name.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  call void @_E__pr_info_header(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  %0 = load i8*, i8** %file_name.addr, align 8
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i32 0, i32 0), i8* %0)
  %1 = load i8*, i8** %file_name.addr, align 8
  %call = call %struct._IO_FILE* @_myfopen(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 98)
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call18 = call i32 @bio_readhdr(%struct._IO_FILE* %2, i8*** %argname, i8*** %argval, i32* %byteswap)
  %cmp = icmp slt i32 %call18, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 102, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0))
  %3 = load i8*, i8** %file_name.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i32 0, i32 0), i8* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %chksum_present, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i8**, i8*** %argname, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 %idxprom
  %6 = load i8*, i8** %arrayidx, align 8
  %tobool = icmp ne i8* %6, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %7 to i64
  %8 = load i8**, i8*** %argname, align 8
  %arrayidx20 = getelementptr inbounds i8*, i8** %8, i64 %idxprom19
  %9 = load i8*, i8** %arrayidx20, align 8
  %call21 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0)) #5
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %10 to i64
  %11 = load i8**, i8*** %argval, align 8
  %arrayidx25 = getelementptr inbounds i8*, i8** %11, i64 %idxprom24
  %12 = load i8*, i8** %arrayidx25, align 8
  %call26 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0)) #5
  %cmp27 = icmp ne i32 %call26, 0
  br i1 %cmp27, label %if.then.28, label %if.end.31

if.then.28:                                       ; preds = %if.then.23
  call void @_E__pr_header(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 109, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0))
  %13 = load i8*, i8** %file_name.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %14 to i64
  %15 = load i8**, i8*** %argval, align 8
  %arrayidx30 = getelementptr inbounds i8*, i8** %15, i64 %idxprom29
  %16 = load i8*, i8** %arrayidx30, align 8
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i32 0, i32 0), i8* %13, i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.28, %if.then.23
  br label %if.end.38

if.else:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %17 to i64
  %18 = load i8**, i8*** %argname, align 8
  %arrayidx33 = getelementptr inbounds i8*, i8** %18, i64 %idxprom32
  %19 = load i8*, i8** %arrayidx33, align 8
  %call34 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0)) #5
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.else
  store i32 1, i32* %chksum_present, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.else
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.end.31
  br label %for.inc

for.inc:                                          ; preds = %if.end.38
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load i8**, i8*** %argname, align 8
  %22 = load i8**, i8*** %argval, align 8
  call void @bio_hdrarg_free(i8** %21, i8** %22)
  store i8** null, i8*** %argval, align 8
  store i8** null, i8*** %argname, align 8
  store i32 0, i32* %chksum, align 4
  %23 = bitcast i32* %n_mgau to i8*
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %25 = load i32, i32* %byteswap, align 4
  %call39 = call i32 @bio_fread(i8* %23, i32 4, i32 1, %struct._IO_FILE* %24, i32 %25, i32* %chksum)
  %cmp40 = icmp ne i32 %call39, 1
  br i1 %cmp40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %for.end
  call void @_E__pr_header(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 122, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0))
  %26 = load i8*, i8** %file_name.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i32 0, i32 0), i8* %26)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %for.end
  %27 = load i32, i32* %n_mgau, align 4
  %cmp43 = icmp sge i32 %27, 32766
  br i1 %cmp43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.end.42
  call void @_E__pr_header(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 124, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0))
  %28 = load i8*, i8** %file_name.addr, align 8
  %29 = load i32, i32* %n_mgau, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.17, i32 0, i32 0), i8* %28, i32 %29, i32 32766)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %if.end.42
  %30 = bitcast i32* %n_feat to i8*
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %32 = load i32, i32* %byteswap, align 4
  %call46 = call i32 @bio_fread(i8* %30, i32 4, i32 1, %struct._IO_FILE* %31, i32 %32, i32* %chksum)
  %cmp47 = icmp ne i32 %call46, 1
  br i1 %cmp47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.end.45
  call void @_E__pr_header(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 130, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0))
  %33 = load i8*, i8** %file_name.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i32 0, i32 0), i8* %33)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.48, %if.end.45
  %34 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %gau_type = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %34, i32 0, i32 7
  %35 = load i32, i32* %gau_type, align 4
  %cmp50 = icmp eq i32 %35, 10001
  br i1 %cmp50, label %if.then.51, label %if.else.55

if.then.51:                                       ; preds = %if.end.49
  %36 = load i32, i32* %n_feat, align 4
  %cmp52 = icmp ne i32 %36, 1
  br i1 %cmp52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.then.51
  call void @_E__pr_header(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 134, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0))
  %37 = load i32, i32* %n_feat, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.19, i32 0, i32 0), i32 %37)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %if.then.51
  br label %if.end.63

if.else.55:                                       ; preds = %if.end.49
  %38 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %gau_type56 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %38, i32 0, i32 7
  %39 = load i32, i32* %gau_type56, align 4
  %cmp57 = icmp eq i32 %39, 10002
  br i1 %cmp57, label %if.then.58, label %if.end.62

if.then.58:                                       ; preds = %if.else.55
  %40 = load i32, i32* %n_feat, align 4
  %cmp59 = icmp ne i32 %40, 4
  br i1 %cmp59, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.then.58
  call void @_E__pr_header(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 137, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0))
  %41 = load i32, i32* %n_feat, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.20, i32 0, i32 0), i32 %41)
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.60, %if.then.58
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.else.55
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.end.54
  %42 = bitcast i32* %n_density to i8*
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %44 = load i32, i32* %byteswap, align 4
  %call64 = call i32 @bio_fread(i8* %42, i32 4, i32 1, %struct._IO_FILE* %43, i32 %44, i32* %chksum)
  %cmp65 = icmp ne i32 %call64, 1
  br i1 %cmp65, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.end.63
  call void @_E__pr_header(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 142, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0))
  %45 = load i8*, i8** %file_name.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.21, i32 0, i32 0), i8* %45)
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.66, %if.end.63
  %46 = load i32, i32* %n_feat, align 4
  %conv = sext i32 %46 to i64
  %call68 = call i8* @__ckd_calloc__(i64 %conv, i64 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 146)
  %47 = bitcast i8* %call68 to i32*
  store i32* %47, i32** %veclen, align 8
  %48 = load i32*, i32** %veclen, align 8
  %49 = bitcast i32* %48 to i8*
  %50 = load i32, i32* %n_feat, align 4
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %52 = load i32, i32* %byteswap, align 4
  %call69 = call i32 @bio_fread(i8* %49, i32 4, i32 %50, %struct._IO_FILE* %51, i32 %52, i32* %chksum)
  %53 = load i32, i32* %n_feat, align 4
  %cmp70 = icmp ne i32 %call69, %53
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.end.67
  call void @_E__pr_header(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 149, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0))
  %54 = load i8*, i8** %file_name.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.22, i32 0, i32 0), i8* %54)
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.72, %if.end.67
  store i32 0, i32* %i, align 4
  store i32 0, i32* %blk, align 4
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc.80, %if.end.73
  %55 = load i32, i32* %i, align 4
  %56 = load i32, i32* %n_feat, align 4
  %cmp75 = icmp slt i32 %55, %56
  br i1 %cmp75, label %for.body.77, label %for.end.82

for.body.77:                                      ; preds = %for.cond.74
  %57 = load i32, i32* %i, align 4
  %idxprom78 = sext i32 %57 to i64
  %58 = load i32*, i32** %veclen, align 8
  %arrayidx79 = getelementptr inbounds i32, i32* %58, i64 %idxprom78
  %59 = load i32, i32* %arrayidx79, align 4
  %60 = load i32, i32* %blk, align 4
  %add = add nsw i32 %60, %59
  store i32 %add, i32* %blk, align 4
  br label %for.inc.80

for.inc.80:                                       ; preds = %for.body.77
  %61 = load i32, i32* %i, align 4
  %inc81 = add nsw i32 %61, 1
  store i32 %inc81, i32* %i, align 4
  br label %for.cond.74

for.end.82:                                       ; preds = %for.cond.74
  %62 = bitcast i32* %n to i8*
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %64 = load i32, i32* %byteswap, align 4
  %call83 = call i32 @bio_fread(i8* %62, i32 4, i32 1, %struct._IO_FILE* %63, i32 %64, i32* %chksum)
  %cmp84 = icmp ne i32 %call83, 1
  br i1 %cmp84, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %for.end.82
  call void @_E__pr_header(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 159, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0))
  %65 = load i8*, i8** %file_name.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i32 0, i32 0), i8* %65)
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.86, %for.end.82
  %66 = load i32, i32* %n, align 4
  %67 = load i32, i32* %n_mgau, align 4
  %68 = load i32, i32* %n_density, align 4
  %mul = mul nsw i32 %67, %68
  %69 = load i32, i32* %blk, align 4
  %mul88 = mul nsw i32 %mul, %69
  %cmp89 = icmp ne i32 %66, %mul88
  br i1 %cmp89, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %if.end.87
  call void @_E__pr_header(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 162, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0))
  %70 = load i8*, i8** %file_name.addr, align 8
  %71 = load i32, i32* %n, align 4
  %72 = load i32, i32* %n_mgau, align 4
  %73 = load i32, i32* %n_density, align 4
  %74 = load i32, i32* %blk, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.24, i32 0, i32 0), i8* %70, i32 %71, i32 %72, i32 %73, i32 %74)
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.91, %if.end.87
  %75 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %gau_type93 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %75, i32 0, i32 7
  %76 = load i32, i32* %gau_type93, align 4
  %cmp94 = icmp eq i32 %76, 10002
  br i1 %cmp94, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %if.end.92
  call void @_E__pr_header(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 167, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0))
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.25, i32 0, i32 0))
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.96, %if.end.92
  %77 = load i32, i32* %type.addr, align 4
  %cmp98 = icmp eq i32 %77, 1
  br i1 %cmp98, label %if.then.100, label %if.else.142

if.then.100:                                      ; preds = %if.end.97
  %78 = load i32, i32* %n_mgau, align 4
  %79 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %n_mgau101 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %79, i32 0, i32 0
  store i32 %78, i32* %n_mgau101, align 4
  %80 = load i32, i32* %n_density, align 4
  %81 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %max_comp = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %81, i32 0, i32 1
  store i32 %80, i32* %max_comp, align 4
  %82 = load i32, i32* %blk, align 4
  %83 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %veclen102 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %83, i32 0, i32 2
  store i32 %82, i32* %veclen102, align 4
  %84 = load i32, i32* %n_mgau, align 4
  %conv103 = sext i32 %84 to i64
  %call104 = call i8* @__ckd_calloc__(i64 %conv103, i64 40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 175)
  %85 = bitcast i8* %call104 to %struct.mgau_t*
  %86 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %mgau = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %86, i32 0, i32 3
  store %struct.mgau_t* %85, %struct.mgau_t** %mgau, align 8
  %87 = load i32, i32* %n, align 4
  %conv105 = sext i32 %87 to i64
  %call106 = call i8* @__ckd_calloc__(i64 %conv105, i64 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 177)
  %88 = bitcast i8* %call106 to float*
  store float* %88, float** %buf, align 8
  %89 = load i32, i32* %n_mgau, align 4
  %90 = load i32, i32* %n_density, align 4
  %mul107 = mul nsw i32 %89, %90
  %conv108 = sext i32 %mul107 to i64
  %call109 = call i8* @__ckd_calloc__(i64 %conv108, i64 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 178)
  %91 = bitcast i8* %call109 to float**
  store float** %91, float*** %pbuf, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.110

for.cond.110:                                     ; preds = %for.inc.135, %if.then.100
  %92 = load i32, i32* %i, align 4
  %93 = load i32, i32* %n_mgau, align 4
  %cmp111 = icmp slt i32 %92, %93
  br i1 %cmp111, label %for.body.113, label %for.end.137

for.body.113:                                     ; preds = %for.cond.110
  %94 = load i32, i32* %n_density, align 4
  %95 = load i32, i32* %i, align 4
  %idxprom114 = sext i32 %95 to i64
  %96 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %mgau115 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %96, i32 0, i32 3
  %97 = load %struct.mgau_t*, %struct.mgau_t** %mgau115, align 8
  %arrayidx116 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %97, i64 %idxprom114
  %n_comp = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %arrayidx116, i32 0, i32 0
  store i32 %94, i32* %n_comp, align 4
  %98 = load float**, float*** %pbuf, align 8
  %99 = load i32, i32* %i, align 4
  %idxprom117 = sext i32 %99 to i64
  %100 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %mgau118 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %100, i32 0, i32 3
  %101 = load %struct.mgau_t*, %struct.mgau_t** %mgau118, align 8
  %arrayidx119 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %101, i64 %idxprom117
  %mean = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %arrayidx119, i32 0, i32 1
  store float** %98, float*** %mean, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond.120

for.cond.120:                                     ; preds = %for.inc.130, %for.body.113
  %102 = load i32, i32* %k, align 4
  %103 = load i32, i32* %n_density, align 4
  %cmp121 = icmp slt i32 %102, %103
  br i1 %cmp121, label %for.body.123, label %for.end.132

for.body.123:                                     ; preds = %for.cond.120
  %104 = load float*, float** %buf, align 8
  %105 = load i32, i32* %k, align 4
  %idxprom124 = sext i32 %105 to i64
  %106 = load i32, i32* %i, align 4
  %idxprom125 = sext i32 %106 to i64
  %107 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %mgau126 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %107, i32 0, i32 3
  %108 = load %struct.mgau_t*, %struct.mgau_t** %mgau126, align 8
  %arrayidx127 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %108, i64 %idxprom125
  %mean128 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %arrayidx127, i32 0, i32 1
  %109 = load float**, float*** %mean128, align 8
  %arrayidx129 = getelementptr inbounds float*, float** %109, i64 %idxprom124
  store float* %104, float** %arrayidx129, align 8
  %110 = load i32, i32* %blk, align 4
  %111 = load float*, float** %buf, align 8
  %idx.ext = sext i32 %110 to i64
  %add.ptr = getelementptr inbounds float, float* %111, i64 %idx.ext
  store float* %add.ptr, float** %buf, align 8
  br label %for.inc.130

for.inc.130:                                      ; preds = %for.body.123
  %112 = load i32, i32* %k, align 4
  %inc131 = add nsw i32 %112, 1
  store i32 %inc131, i32* %k, align 4
  br label %for.cond.120

for.end.132:                                      ; preds = %for.cond.120
  %113 = load i32, i32* %n_density, align 4
  %114 = load float**, float*** %pbuf, align 8
  %idx.ext133 = sext i32 %113 to i64
  %add.ptr134 = getelementptr inbounds float*, float** %114, i64 %idx.ext133
  store float** %add.ptr134, float*** %pbuf, align 8
  br label %for.inc.135

for.inc.135:                                      ; preds = %for.end.132
  %115 = load i32, i32* %i, align 4
  %inc136 = add nsw i32 %115, 1
  store i32 %inc136, i32* %i, align 4
  br label %for.cond.110

for.end.137:                                      ; preds = %for.cond.110
  %116 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %mgau138 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %116, i32 0, i32 3
  %117 = load %struct.mgau_t*, %struct.mgau_t** %mgau138, align 8
  %arrayidx139 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %117, i64 0
  %mean140 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %arrayidx139, i32 0, i32 1
  %118 = load float**, float*** %mean140, align 8
  %arrayidx141 = getelementptr inbounds float*, float** %118, i64 0
  %119 = load float*, float** %arrayidx141, align 8
  store float* %119, float** %buf, align 8
  br label %if.end.224

if.else.142:                                      ; preds = %if.end.97
  %120 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %n_mgau143 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %120, i32 0, i32 0
  %121 = load i32, i32* %n_mgau143, align 4
  %122 = load i32, i32* %n_mgau, align 4
  %cmp144 = icmp ne i32 %121, %122
  br i1 %cmp144, label %if.then.146, label %if.end.148

if.then.146:                                      ; preds = %if.else.142
  call void @_E__pr_header(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 198, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0))
  %123 = load i32, i32* %n_mgau, align 4
  %124 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %n_mgau147 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %124, i32 0, i32 0
  %125 = load i32, i32* %n_mgau147, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.26, i32 0, i32 0), i32 %123, i32 %125)
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.146, %if.else.142
  %126 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %max_comp149 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %126, i32 0, i32 1
  %127 = load i32, i32* %max_comp149, align 4
  %128 = load i32, i32* %n_density, align 4
  %cmp150 = icmp ne i32 %127, %128
  br i1 %cmp150, label %if.then.152, label %if.end.154

if.then.152:                                      ; preds = %if.end.148
  call void @_E__pr_header(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 200, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0))
  %129 = load i32, i32* %n_density, align 4
  %130 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %max_comp153 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %130, i32 0, i32 1
  %131 = load i32, i32* %max_comp153, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.27, i32 0, i32 0), i32 %129, i32 %131)
  br label %if.end.154

if.end.154:                                       ; preds = %if.then.152, %if.end.148
  %132 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %veclen155 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %132, i32 0, i32 2
  %133 = load i32, i32* %veclen155, align 4
  %134 = load i32, i32* %blk, align 4
  %cmp156 = icmp ne i32 %133, %134
  br i1 %cmp156, label %if.then.158, label %if.end.160

if.then.158:                                      ; preds = %if.end.154
  call void @_E__pr_header(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 202, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0))
  %135 = load i32, i32* %blk, align 4
  %136 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %veclen159 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %136, i32 0, i32 2
  %137 = load i32, i32* %veclen159, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.28, i32 0, i32 0), i32 %135, i32 %137)
  br label %if.end.160

if.end.160:                                       ; preds = %if.then.158, %if.end.154
  %138 = load i32, i32* %n, align 4
  %conv161 = sext i32 %138 to i64
  %call162 = call i8* @__ckd_calloc__(i64 %conv161, i64 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 204)
  %139 = bitcast i8* %call162 to float*
  store float* %139, float** %buf, align 8
  %140 = load i32, i32* %n_mgau, align 4
  %141 = load i32, i32* %n_density, align 4
  %mul163 = mul nsw i32 %140, %141
  %conv164 = sext i32 %mul163 to i64
  %call165 = call i8* @__ckd_calloc__(i64 %conv164, i64 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 205)
  %142 = bitcast i8* %call165 to float**
  store float** %142, float*** %pbuf, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.166

for.cond.166:                                     ; preds = %for.inc.202, %if.end.160
  %143 = load i32, i32* %i, align 4
  %144 = load i32, i32* %n_mgau, align 4
  %cmp167 = icmp slt i32 %143, %144
  br i1 %cmp167, label %for.body.169, label %for.end.204

for.body.169:                                     ; preds = %for.cond.166
  %145 = load i32, i32* %i, align 4
  %idxprom170 = sext i32 %145 to i64
  %146 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %mgau171 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %146, i32 0, i32 3
  %147 = load %struct.mgau_t*, %struct.mgau_t** %mgau171, align 8
  %arrayidx172 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %147, i64 %idxprom170
  %n_comp173 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %arrayidx172, i32 0, i32 0
  %148 = load i32, i32* %n_comp173, align 4
  %149 = load i32, i32* %n_density, align 4
  %cmp174 = icmp ne i32 %148, %149
  br i1 %cmp174, label %if.then.176, label %if.end.181

if.then.176:                                      ; preds = %for.body.169
  call void @_E__pr_header(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 210, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0))
  %150 = load i32, i32* %i, align 4
  %151 = load i32, i32* %n_density, align 4
  %152 = load i32, i32* %i, align 4
  %idxprom177 = sext i32 %152 to i64
  %153 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %mgau178 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %153, i32 0, i32 3
  %154 = load %struct.mgau_t*, %struct.mgau_t** %mgau178, align 8
  %arrayidx179 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %154, i64 %idxprom177
  %n_comp180 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %arrayidx179, i32 0, i32 0
  %155 = load i32, i32* %n_comp180, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.29, i32 0, i32 0), i32 %150, i32 %151, i32 %155)
  br label %if.end.181

if.end.181:                                       ; preds = %if.then.176, %for.body.169
  %156 = load float**, float*** %pbuf, align 8
  %157 = load i32, i32* %i, align 4
  %idxprom182 = sext i32 %157 to i64
  %158 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %mgau183 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %158, i32 0, i32 3
  %159 = load %struct.mgau_t*, %struct.mgau_t** %mgau183, align 8
  %arrayidx184 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %159, i64 %idxprom182
  %var = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %arrayidx184, i32 0, i32 2
  store float** %156, float*** %var, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond.185

for.cond.185:                                     ; preds = %for.inc.197, %if.end.181
  %160 = load i32, i32* %k, align 4
  %161 = load i32, i32* %n_density, align 4
  %cmp186 = icmp slt i32 %160, %161
  br i1 %cmp186, label %for.body.188, label %for.end.199

for.body.188:                                     ; preds = %for.cond.185
  %162 = load float*, float** %buf, align 8
  %163 = load i32, i32* %k, align 4
  %idxprom189 = sext i32 %163 to i64
  %164 = load i32, i32* %i, align 4
  %idxprom190 = sext i32 %164 to i64
  %165 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %mgau191 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %165, i32 0, i32 3
  %166 = load %struct.mgau_t*, %struct.mgau_t** %mgau191, align 8
  %arrayidx192 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %166, i64 %idxprom190
  %var193 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %arrayidx192, i32 0, i32 2
  %167 = load float**, float*** %var193, align 8
  %arrayidx194 = getelementptr inbounds float*, float** %167, i64 %idxprom189
  store float* %162, float** %arrayidx194, align 8
  %168 = load i32, i32* %blk, align 4
  %169 = load float*, float** %buf, align 8
  %idx.ext195 = sext i32 %168 to i64
  %add.ptr196 = getelementptr inbounds float, float* %169, i64 %idx.ext195
  store float* %add.ptr196, float** %buf, align 8
  br label %for.inc.197

for.inc.197:                                      ; preds = %for.body.188
  %170 = load i32, i32* %k, align 4
  %inc198 = add nsw i32 %170, 1
  store i32 %inc198, i32* %k, align 4
  br label %for.cond.185

for.end.199:                                      ; preds = %for.cond.185
  %171 = load i32, i32* %n_density, align 4
  %172 = load float**, float*** %pbuf, align 8
  %idx.ext200 = sext i32 %171 to i64
  %add.ptr201 = getelementptr inbounds float*, float** %172, i64 %idx.ext200
  store float** %add.ptr201, float*** %pbuf, align 8
  br label %for.inc.202

for.inc.202:                                      ; preds = %for.end.199
  %173 = load i32, i32* %i, align 4
  %inc203 = add nsw i32 %173, 1
  store i32 %inc203, i32* %i, align 4
  br label %for.cond.166

for.end.204:                                      ; preds = %for.cond.166
  %174 = load i32, i32* %n_mgau, align 4
  %175 = load i32, i32* %n_density, align 4
  %mul205 = mul nsw i32 %174, %175
  %conv206 = sext i32 %mul205 to i64
  %call207 = call i8* @__ckd_calloc__(i64 %conv206, i64 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 224)
  %176 = bitcast i8* %call207 to float*
  store float* %176, float** %buf, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.208

for.cond.208:                                     ; preds = %for.inc.217, %for.end.204
  %177 = load i32, i32* %i, align 4
  %178 = load i32, i32* %n_mgau, align 4
  %cmp209 = icmp slt i32 %177, %178
  br i1 %cmp209, label %for.body.211, label %for.end.219

for.body.211:                                     ; preds = %for.cond.208
  %179 = load float*, float** %buf, align 8
  %180 = load i32, i32* %i, align 4
  %idxprom212 = sext i32 %180 to i64
  %181 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %mgau213 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %181, i32 0, i32 3
  %182 = load %struct.mgau_t*, %struct.mgau_t** %mgau213, align 8
  %arrayidx214 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %182, i64 %idxprom212
  %lrd = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %arrayidx214, i32 0, i32 3
  store float* %179, float** %lrd, align 8
  %183 = load i32, i32* %n_density, align 4
  %184 = load float*, float** %buf, align 8
  %idx.ext215 = sext i32 %183 to i64
  %add.ptr216 = getelementptr inbounds float, float* %184, i64 %idx.ext215
  store float* %add.ptr216, float** %buf, align 8
  br label %for.inc.217

for.inc.217:                                      ; preds = %for.body.211
  %185 = load i32, i32* %i, align 4
  %inc218 = add nsw i32 %185, 1
  store i32 %inc218, i32* %i, align 4
  br label %for.cond.208

for.end.219:                                      ; preds = %for.cond.208
  %186 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %mgau220 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %186, i32 0, i32 3
  %187 = load %struct.mgau_t*, %struct.mgau_t** %mgau220, align 8
  %arrayidx221 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %187, i64 0
  %var222 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %arrayidx221, i32 0, i32 2
  %188 = load float**, float*** %var222, align 8
  %arrayidx223 = getelementptr inbounds float*, float** %188, i64 0
  %189 = load float*, float** %arrayidx223, align 8
  store float* %189, float** %buf, align 8
  br label %if.end.224

if.end.224:                                       ; preds = %for.end.219, %for.end.137
  %190 = load float*, float** %buf, align 8
  %191 = bitcast float* %190 to i8*
  %192 = load i32, i32* %n, align 4
  %193 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %194 = load i32, i32* %byteswap, align 4
  %call225 = call i32 @bio_fread(i8* %191, i32 4, i32 %192, %struct._IO_FILE* %193, i32 %194, i32* %chksum)
  %195 = load i32, i32* %n, align 4
  %cmp226 = icmp ne i32 %call225, %195
  br i1 %cmp226, label %if.then.228, label %if.end.229

if.then.228:                                      ; preds = %if.end.224
  call void @_E__pr_header(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 236, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0))
  %196 = load i8*, i8** %file_name.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.30, i32 0, i32 0), i8* %196)
  br label %if.end.229

if.end.229:                                       ; preds = %if.then.228, %if.end.224
  %call230 = call double @log_to_logs3_factor()
  store double %call230, double* %f, align 8
  %197 = load i32, i32* %chksum_present, align 4
  %tobool231 = icmp ne i32 %197, 0
  br i1 %tobool231, label %if.then.232, label %if.end.233

if.then.232:                                      ; preds = %if.end.229
  %198 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %199 = load i32, i32* %byteswap, align 4
  %200 = load i32, i32* %chksum, align 4
  call void @bio_verify_chksum(%struct._IO_FILE* %198, i32 %199, i32 %200)
  br label %if.end.233

if.end.233:                                       ; preds = %if.then.232, %if.end.229
  %201 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call234 = call i64 @fread(i8* %tmp, i64 1, i64 1, %struct._IO_FILE* %201)
  %cmp235 = icmp eq i64 %call234, 1
  br i1 %cmp235, label %if.then.237, label %if.end.238

if.then.237:                                      ; preds = %if.end.233
  call void @_E__pr_header(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 244, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0))
  %202 = load i8*, i8** %file_name.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.31, i32 0, i32 0), i8* %202)
  br label %if.end.238

if.end.238:                                       ; preds = %if.then.237, %if.end.233
  %203 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call239 = call i32 @fclose(%struct._IO_FILE* %203)
  call void @_E__pr_info_header(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 248, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  %204 = load i32, i32* %n_mgau, align 4
  %205 = load i32, i32* %n_density, align 4
  %206 = load i32, i32* %n_feat, align 4
  %207 = load i32, i32* %blk, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.32, i32 0, i32 0), i32 %204, i32 %205, i32 %206, i32 %207)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @mgau_mixw_read(%struct.mgau_model_t* %g, i8* %file_name, double %mixwfloor) #0 {
entry:
  %g.addr = alloca %struct.mgau_model_t*, align 8
  %file_name.addr = alloca i8*, align 8
  %mixwfloor.addr = alloca double, align 8
  %argname = alloca i8**, align 8
  %argval = alloca i8**, align 8
  %eofchk = alloca i8, align 1
  %fp = alloca %struct._IO_FILE*, align 8
  %byteswap = alloca i32, align 4
  %chksum_present = alloca i32, align 4
  %chksum = alloca i32, align 4
  %buf = alloca i32*, align 8
  %pdf = alloca float*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %n_mgau = alloca i32, align 4
  %n_feat = alloca i32, align 4
  %n_comp = alloca i32, align 4
  %n_err = alloca i32, align 4
  store %struct.mgau_model_t* %g, %struct.mgau_model_t** %g.addr, align 8
  store i8* %file_name, i8** %file_name.addr, align 8
  store double %mixwfloor, double* %mixwfloor.addr, align 8
  call void @_E__pr_info_header(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 269, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  %0 = load i8*, i8** %file_name.addr, align 8
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.33, i32 0, i32 0), i8* %0)
  %1 = load i8*, i8** %file_name.addr, align 8
  %call = call %struct._IO_FILE* @_myfopen(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 271)
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call1 = call i32 @bio_readhdr(%struct._IO_FILE* %2, i8*** %argname, i8*** %argval, i32* %byteswap)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 275, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0))
  %3 = load i8*, i8** %file_name.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i32 0, i32 0), i8* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %chksum_present, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i8**, i8*** %argname, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 %idxprom
  %6 = load i8*, i8** %arrayidx, align 8
  %tobool = icmp ne i8* %6, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %7 to i64
  %8 = load i8**, i8*** %argname, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %8, i64 %idxprom2
  %9 = load i8*, i8** %arrayidx3, align 8
  %call4 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0)) #5
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %10 to i64
  %11 = load i8**, i8*** %argval, align 8
  %arrayidx8 = getelementptr inbounds i8*, i8** %11, i64 %idxprom7
  %12 = load i8*, i8** %arrayidx8, align 8
  %call9 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0)) #5
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.then.6
  call void @_E__pr_header(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 282, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0))
  %13 = load i8*, i8** %file_name.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %14 to i64
  %15 = load i8**, i8*** %argval, align 8
  %arrayidx13 = getelementptr inbounds i8*, i8** %15, i64 %idxprom12
  %16 = load i8*, i8** %arrayidx13, align 8
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i32 0, i32 0), i8* %13, i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.then.6
  br label %if.end.21

if.else:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %17 to i64
  %18 = load i8**, i8*** %argname, align 8
  %arrayidx16 = getelementptr inbounds i8*, i8** %18, i64 %idxprom15
  %19 = load i8*, i8** %arrayidx16, align 8
  %call17 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0)) #5
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.else
  store i32 1, i32* %chksum_present, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.else
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.end.14
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load i8**, i8*** %argname, align 8
  %22 = load i8**, i8*** %argval, align 8
  call void @bio_hdrarg_free(i8** %21, i8** %22)
  store i8** null, i8*** %argval, align 8
  store i8** null, i8*** %argname, align 8
  store i32 0, i32* %chksum, align 4
  %23 = bitcast i32* %n_mgau to i8*
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %25 = load i32, i32* %byteswap, align 4
  %call22 = call i32 @bio_fread(i8* %23, i32 4, i32 1, %struct._IO_FILE* %24, i32 %25, i32* %chksum)
  %cmp23 = icmp ne i32 %call22, 1
  br i1 %cmp23, label %if.then.32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %26 = bitcast i32* %n_feat to i8*
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %28 = load i32, i32* %byteswap, align 4
  %call24 = call i32 @bio_fread(i8* %26, i32 4, i32 1, %struct._IO_FILE* %27, i32 %28, i32* %chksum)
  %cmp25 = icmp ne i32 %call24, 1
  br i1 %cmp25, label %if.then.32, label %lor.lhs.false.26

lor.lhs.false.26:                                 ; preds = %lor.lhs.false
  %29 = bitcast i32* %n_comp to i8*
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %31 = load i32, i32* %byteswap, align 4
  %call27 = call i32 @bio_fread(i8* %29, i32 4, i32 1, %struct._IO_FILE* %30, i32 %31, i32* %chksum)
  %cmp28 = icmp ne i32 %call27, 1
  br i1 %cmp28, label %if.then.32, label %lor.lhs.false.29

lor.lhs.false.29:                                 ; preds = %lor.lhs.false.26
  %32 = bitcast i32* %n to i8*
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %34 = load i32, i32* %byteswap, align 4
  %call30 = call i32 @bio_fread(i8* %32, i32 4, i32 1, %struct._IO_FILE* %33, i32 %34, i32* %chksum)
  %cmp31 = icmp ne i32 %call30, 1
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %lor.lhs.false.29, %lor.lhs.false.26, %lor.lhs.false, %for.end
  call void @_E__pr_header(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 298, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0))
  %35 = load i8*, i8** %file_name.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.34, i32 0, i32 0), i8* %35)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %lor.lhs.false.29
  %36 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %gau_type = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %36, i32 0, i32 7
  %37 = load i32, i32* %gau_type, align 4
  %cmp34 = icmp eq i32 %37, 10001
  br i1 %cmp34, label %if.then.35, label %if.else.39

if.then.35:                                       ; preds = %if.end.33
  %38 = load i32, i32* %n_feat, align 4
  %cmp36 = icmp ne i32 %38, 1
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.then.35
  call void @_E__pr_header(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 302, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0))
  %39 = load i32, i32* %n_feat, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.19, i32 0, i32 0), i32 %39)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %if.then.35
  br label %if.end.48

if.else.39:                                       ; preds = %if.end.33
  %40 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %gau_type40 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %40, i32 0, i32 7
  %41 = load i32, i32* %gau_type40, align 4
  %cmp41 = icmp eq i32 %41, 10002
  br i1 %cmp41, label %if.then.42, label %if.else.46

if.then.42:                                       ; preds = %if.else.39
  %42 = load i32, i32* %n_feat, align 4
  %cmp43 = icmp ne i32 %42, 4
  br i1 %cmp43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.then.42
  call void @_E__pr_header(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 305, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0))
  %43 = load i32, i32* %n_feat, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.35, i32 0, i32 0), i32 %43)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %if.then.42
  br label %if.end.47

if.else.46:                                       ; preds = %if.else.39
  call void @_E__pr_header(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 307, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0))
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.36, i32 0, i32 0))
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.46, %if.end.45
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.end.38
  %44 = load i32, i32* %n, align 4
  %45 = load i32, i32* %n_mgau, align 4
  %46 = load i32, i32* %n_comp, align 4
  %mul = mul nsw i32 %45, %46
  %cmp49 = icmp ne i32 %44, %mul
  br i1 %cmp49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.end.48
  call void @_E__pr_header(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 311, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0))
  %47 = load i8*, i8** %file_name.addr, align 8
  %48 = load i32, i32* %i, align 4
  %49 = load i32, i32* %n_mgau, align 4
  %50 = load i32, i32* %n_comp, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.37, i32 0, i32 0), i8* %47, i32 %48, i32 %49, i32 %50)
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %if.end.48
  %51 = load i32, i32* %n_mgau, align 4
  %52 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %n_mgau52 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %52, i32 0, i32 0
  %53 = load i32, i32* %n_mgau52, align 4
  %cmp53 = icmp ne i32 %51, %53
  br i1 %cmp53, label %if.then.54, label %if.end.56

if.then.54:                                       ; preds = %if.end.51
  call void @_E__pr_header(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 315, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0))
  %54 = load i32, i32* %n_mgau, align 4
  %55 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %n_mgau55 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %55, i32 0, i32 0
  %56 = load i32, i32* %n_mgau55, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.38, i32 0, i32 0), i32 %54, i32 %56)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.54, %if.end.51
  %57 = load i32, i32* %n_mgau, align 4
  %58 = load i32, i32* %n_comp, align 4
  %mul57 = mul nsw i32 %57, %58
  %conv = sext i32 %mul57 to i64
  %call58 = call i8* @__ckd_calloc__(i64 %conv, i64 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 318)
  %59 = bitcast i8* %call58 to i32*
  store i32* %59, i32** %buf, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.59

for.cond.59:                                      ; preds = %for.inc.81, %if.end.56
  %60 = load i32, i32* %i, align 4
  %61 = load i32, i32* %n_mgau, align 4
  %cmp60 = icmp slt i32 %60, %61
  br i1 %cmp60, label %for.body.62, label %for.end.83

for.body.62:                                      ; preds = %for.cond.59
  %62 = load i32, i32* %n_comp, align 4
  %63 = load i32, i32* %i, align 4
  %idxprom63 = sext i32 %63 to i64
  %64 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %mgau = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %64, i32 0, i32 3
  %65 = load %struct.mgau_t*, %struct.mgau_t** %mgau, align 8
  %arrayidx64 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %65, i64 %idxprom63
  %n_comp65 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %arrayidx64, i32 0, i32 0
  %66 = load i32, i32* %n_comp65, align 4
  %cmp66 = icmp ne i32 %62, %66
  br i1 %cmp66, label %if.then.68, label %if.end.73

if.then.68:                                       ; preds = %for.body.62
  call void @_E__pr_header(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 321, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0))
  %67 = load i32, i32* %i, align 4
  %68 = load i32, i32* %n_comp, align 4
  %69 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %69 to i64
  %70 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %mgau70 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %70, i32 0, i32 3
  %71 = load %struct.mgau_t*, %struct.mgau_t** %mgau70, align 8
  %arrayidx71 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %71, i64 %idxprom69
  %n_comp72 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %arrayidx71, i32 0, i32 0
  %72 = load i32, i32* %n_comp72, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.39, i32 0, i32 0), i32 %67, i32 %68, i32 %72)
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.68, %for.body.62
  %73 = load i32*, i32** %buf, align 8
  %74 = load i32, i32* %i, align 4
  %idxprom74 = sext i32 %74 to i64
  %75 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %mgau75 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %75, i32 0, i32 3
  %76 = load %struct.mgau_t*, %struct.mgau_t** %mgau75, align 8
  %arrayidx76 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %76, i64 %idxprom74
  %mixw = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %arrayidx76, i32 0, i32 4
  store i32* %73, i32** %mixw, align 8
  %77 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %77 to i64
  %78 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %mgau78 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %78, i32 0, i32 3
  %79 = load %struct.mgau_t*, %struct.mgau_t** %mgau78, align 8
  %arrayidx79 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %79, i64 %idxprom77
  %n_comp80 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %arrayidx79, i32 0, i32 0
  %80 = load i32, i32* %n_comp80, align 4
  %81 = load i32*, i32** %buf, align 8
  %idx.ext = sext i32 %80 to i64
  %add.ptr = getelementptr inbounds i32, i32* %81, i64 %idx.ext
  store i32* %add.ptr, i32** %buf, align 8
  br label %for.inc.81

for.inc.81:                                       ; preds = %if.end.73
  %82 = load i32, i32* %i, align 4
  %inc82 = add nsw i32 %82, 1
  store i32 %inc82, i32* %i, align 4
  br label %for.cond.59

for.end.83:                                       ; preds = %for.cond.59
  %83 = load i32, i32* %n_comp, align 4
  %conv84 = sext i32 %83 to i64
  %call85 = call i8* @__ckd_calloc__(i64 %conv84, i64 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 329)
  %84 = bitcast i8* %call85 to float*
  store float* %84, float** %pdf, align 8
  store i32 0, i32* %n_err, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.86

for.cond.86:                                      ; preds = %for.inc.137, %for.end.83
  %85 = load i32, i32* %i, align 4
  %86 = load i32, i32* %n_mgau, align 4
  %cmp87 = icmp slt i32 %85, %86
  br i1 %cmp87, label %for.body.89, label %for.end.139

for.body.89:                                      ; preds = %for.cond.86
  %87 = load float*, float** %pdf, align 8
  %88 = bitcast float* %87 to i8*
  %89 = load i32, i32* %n_comp, align 4
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %91 = load i32, i32* %byteswap, align 4
  %call90 = call i32 @bio_fread(i8* %88, i32 4, i32 %89, %struct._IO_FILE* %90, i32 %91, i32* %chksum)
  %92 = load i32, i32* %n_comp, align 4
  %cmp91 = icmp ne i32 %call90, %92
  br i1 %cmp91, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %for.body.89
  call void @_E__pr_header(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 335, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0))
  %93 = load i8*, i8** %file_name.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.40, i32 0, i32 0), i8* %93)
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.93, %for.body.89
  %94 = load float*, float** %pdf, align 8
  %95 = load i32, i32* %n_comp, align 4
  %call95 = call i32 @vector_is_zero(float* %94, i32 %95)
  %tobool96 = icmp ne i32 %call95, 0
  br i1 %tobool96, label %if.then.97, label %if.else.112

if.then.97:                                       ; preds = %if.end.94
  %96 = load i32, i32* %n_err, align 4
  %inc98 = add nsw i32 %96, 1
  store i32 %inc98, i32* %n_err, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.99

for.cond.99:                                      ; preds = %for.inc.109, %if.then.97
  %97 = load i32, i32* %j, align 4
  %98 = load i32, i32* %n_comp, align 4
  %cmp100 = icmp slt i32 %97, %98
  br i1 %cmp100, label %for.body.102, label %for.end.111

for.body.102:                                     ; preds = %for.cond.99
  %99 = load i32, i32* %j, align 4
  %idxprom103 = sext i32 %99 to i64
  %100 = load i32, i32* %i, align 4
  %idxprom104 = sext i32 %100 to i64
  %101 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %mgau105 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %101, i32 0, i32 3
  %102 = load %struct.mgau_t*, %struct.mgau_t** %mgau105, align 8
  %arrayidx106 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %102, i64 %idxprom104
  %mixw107 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %arrayidx106, i32 0, i32 4
  %103 = load i32*, i32** %mixw107, align 8
  %arrayidx108 = getelementptr inbounds i32, i32* %103, i64 %idxprom103
  store i32 -939524096, i32* %arrayidx108, align 4
  br label %for.inc.109

for.inc.109:                                      ; preds = %for.body.102
  %104 = load i32, i32* %j, align 4
  %inc110 = add nsw i32 %104, 1
  store i32 %inc110, i32* %j, align 4
  br label %for.cond.99

for.end.111:                                      ; preds = %for.cond.99
  br label %if.end.136

if.else.112:                                      ; preds = %if.end.94
  %105 = load float*, float** %pdf, align 8
  %106 = load i32, i32* %n_comp, align 4
  %107 = load double, double* %mixwfloor.addr, align 8
  call void @vector_nz_floor(float* %105, i32 %106, double %107)
  %108 = load float*, float** %pdf, align 8
  %109 = load i32, i32* %n_comp, align 4
  %call113 = call double @vector_sum_norm(float* %108, i32 %109)
  store i32 0, i32* %j, align 4
  br label %for.cond.114

for.cond.114:                                     ; preds = %for.inc.133, %if.else.112
  %110 = load i32, i32* %j, align 4
  %111 = load i32, i32* %n_comp, align 4
  %cmp115 = icmp slt i32 %110, %111
  br i1 %cmp115, label %for.body.117, label %for.end.135

for.body.117:                                     ; preds = %for.cond.114
  %112 = load i32, i32* %j, align 4
  %idxprom118 = sext i32 %112 to i64
  %113 = load float*, float** %pdf, align 8
  %arrayidx119 = getelementptr inbounds float, float* %113, i64 %idxprom118
  %114 = load float, float* %arrayidx119, align 4
  %conv120 = fpext float %114 to double
  %cmp121 = fcmp une double %conv120, 0.000000e+00
  br i1 %cmp121, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.117
  %115 = load i32, i32* %j, align 4
  %idxprom123 = sext i32 %115 to i64
  %116 = load float*, float** %pdf, align 8
  %arrayidx124 = getelementptr inbounds float, float* %116, i64 %idxprom123
  %117 = load float, float* %arrayidx124, align 4
  %conv125 = fpext float %117 to double
  %call126 = call i32 @logs3(double %conv125)
  br label %cond.end

cond.false:                                       ; preds = %for.body.117
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call126, %cond.true ], [ -939524096, %cond.false ]
  %118 = load i32, i32* %j, align 4
  %idxprom127 = sext i32 %118 to i64
  %119 = load i32, i32* %i, align 4
  %idxprom128 = sext i32 %119 to i64
  %120 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %mgau129 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %120, i32 0, i32 3
  %121 = load %struct.mgau_t*, %struct.mgau_t** %mgau129, align 8
  %arrayidx130 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %121, i64 %idxprom128
  %mixw131 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %arrayidx130, i32 0, i32 4
  %122 = load i32*, i32** %mixw131, align 8
  %arrayidx132 = getelementptr inbounds i32, i32* %122, i64 %idxprom127
  store i32 %cond, i32* %arrayidx132, align 4
  br label %for.inc.133

for.inc.133:                                      ; preds = %cond.end
  %123 = load i32, i32* %j, align 4
  %inc134 = add nsw i32 %123, 1
  store i32 %inc134, i32* %j, align 4
  br label %for.cond.114

for.end.135:                                      ; preds = %for.cond.114
  br label %if.end.136

if.end.136:                                       ; preds = %for.end.135, %for.end.111
  br label %for.inc.137

for.inc.137:                                      ; preds = %if.end.136
  %124 = load i32, i32* %i, align 4
  %inc138 = add nsw i32 %124, 1
  store i32 %inc138, i32* %i, align 4
  br label %for.cond.86

for.end.139:                                      ; preds = %for.cond.86
  %125 = load float*, float** %pdf, align 8
  %126 = bitcast float* %125 to i8*
  call void @ckd_free(i8* %126)
  %127 = load i32, i32* %chksum_present, align 4
  %tobool140 = icmp ne i32 %127, 0
  br i1 %tobool140, label %if.then.141, label %if.end.142

if.then.141:                                      ; preds = %for.end.139
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %129 = load i32, i32* %byteswap, align 4
  %130 = load i32, i32* %chksum, align 4
  call void @bio_verify_chksum(%struct._IO_FILE* %128, i32 %129, i32 %130)
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.141, %for.end.139
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call143 = call i64 @fread(i8* %eofchk, i64 1, i64 1, %struct._IO_FILE* %131)
  %cmp144 = icmp eq i64 %call143, 1
  br i1 %cmp144, label %if.then.146, label %if.end.147

if.then.146:                                      ; preds = %if.end.142
  call void @_E__pr_header(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 358, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0))
  %132 = load i8*, i8** %file_name.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.41, i32 0, i32 0), i8* %132)
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.146, %if.end.142
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call148 = call i32 @fclose(%struct._IO_FILE* %133)
  call void @_E__pr_info_header(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 362, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  %134 = load i32, i32* %n_mgau, align 4
  %135 = load i32, i32* %n_comp, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.42, i32 0, i32 0), i32 %134, i32 %135)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @mgau_uninit_compact(%struct.mgau_model_t* %g) #0 {
entry:
  %g.addr = alloca %struct.mgau_model_t*, align 8
  %m = alloca i32, align 4
  %c = alloca i32, align 4
  %c2 = alloca i32, align 4
  %n = alloca i32, align 4
  %nm = alloca i32, align 4
  store %struct.mgau_model_t* %g, %struct.mgau_model_t** %g.addr, align 8
  call void @_E__pr_info_header(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 378, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.43, i32 0, i32 0))
  store i32 0, i32* %n, align 4
  store i32 0, i32* %nm, align 4
  store i32 0, i32* %m, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.62, %entry
  %0 = load i32, i32* %m, align 4
  %1 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %n_mgau = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %1, i32 0, i32 0
  %2 = load i32, i32* %n_mgau, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end.64

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %c, align 4
  store i32 0, i32* %c2, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %c, align 4
  %4 = load i32, i32* %m, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %mgau = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %5, i32 0, i32 3
  %6 = load %struct.mgau_t*, %struct.mgau_t** %mgau, align 8
  %arrayidx = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %6, i64 %idxprom
  %n_comp = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %arrayidx, i32 0, i32 0
  %7 = load i32, i32* %n_comp, align 4
  %cmp2 = icmp slt i32 %3, %7
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %8 = load i32, i32* %c, align 4
  %idxprom4 = sext i32 %8 to i64
  %9 = load i32, i32* %m, align 4
  %idxprom5 = sext i32 %9 to i64
  %10 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %mgau6 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %10, i32 0, i32 3
  %11 = load %struct.mgau_t*, %struct.mgau_t** %mgau6, align 8
  %arrayidx7 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %11, i64 %idxprom5
  %var = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %arrayidx7, i32 0, i32 2
  %12 = load float**, float*** %var, align 8
  %arrayidx8 = getelementptr inbounds float*, float** %12, i64 %idxprom4
  %13 = load float*, float** %arrayidx8, align 8
  %14 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %veclen = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %14, i32 0, i32 2
  %15 = load i32, i32* %veclen, align 4
  %call = call i32 @vector_is_zero(float* %13, i32 %15)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %for.body.3
  %16 = load i32, i32* %c2, align 4
  %17 = load i32, i32* %c, align 4
  %cmp9 = icmp ne i32 %16, %17
  br i1 %cmp9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then
  %18 = load i32, i32* %c2, align 4
  %idxprom11 = sext i32 %18 to i64
  %19 = load i32, i32* %m, align 4
  %idxprom12 = sext i32 %19 to i64
  %20 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %mgau13 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %20, i32 0, i32 3
  %21 = load %struct.mgau_t*, %struct.mgau_t** %mgau13, align 8
  %arrayidx14 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %21, i64 %idxprom12
  %mean = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %arrayidx14, i32 0, i32 1
  %22 = load float**, float*** %mean, align 8
  %arrayidx15 = getelementptr inbounds float*, float** %22, i64 %idxprom11
  %23 = load float*, float** %arrayidx15, align 8
  %24 = bitcast float* %23 to i8*
  %25 = load i32, i32* %c, align 4
  %idxprom16 = sext i32 %25 to i64
  %26 = load i32, i32* %m, align 4
  %idxprom17 = sext i32 %26 to i64
  %27 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %mgau18 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %27, i32 0, i32 3
  %28 = load %struct.mgau_t*, %struct.mgau_t** %mgau18, align 8
  %arrayidx19 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %28, i64 %idxprom17
  %mean20 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %arrayidx19, i32 0, i32 1
  %29 = load float**, float*** %mean20, align 8
  %arrayidx21 = getelementptr inbounds float*, float** %29, i64 %idxprom16
  %30 = load float*, float** %arrayidx21, align 8
  %31 = bitcast float* %30 to i8*
  %32 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %veclen22 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %32, i32 0, i32 2
  %33 = load i32, i32* %veclen22, align 4
  %conv = sext i32 %33 to i64
  %mul = mul i64 %conv, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %31, i64 %mul, i32 4, i1 false)
  %34 = load i32, i32* %c2, align 4
  %idxprom23 = sext i32 %34 to i64
  %35 = load i32, i32* %m, align 4
  %idxprom24 = sext i32 %35 to i64
  %36 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %mgau25 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %36, i32 0, i32 3
  %37 = load %struct.mgau_t*, %struct.mgau_t** %mgau25, align 8
  %arrayidx26 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %37, i64 %idxprom24
  %var27 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %arrayidx26, i32 0, i32 2
  %38 = load float**, float*** %var27, align 8
  %arrayidx28 = getelementptr inbounds float*, float** %38, i64 %idxprom23
  %39 = load float*, float** %arrayidx28, align 8
  %40 = bitcast float* %39 to i8*
  %41 = load i32, i32* %c, align 4
  %idxprom29 = sext i32 %41 to i64
  %42 = load i32, i32* %m, align 4
  %idxprom30 = sext i32 %42 to i64
  %43 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %mgau31 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %43, i32 0, i32 3
  %44 = load %struct.mgau_t*, %struct.mgau_t** %mgau31, align 8
  %arrayidx32 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %44, i64 %idxprom30
  %var33 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %arrayidx32, i32 0, i32 2
  %45 = load float**, float*** %var33, align 8
  %arrayidx34 = getelementptr inbounds float*, float** %45, i64 %idxprom29
  %46 = load float*, float** %arrayidx34, align 8
  %47 = bitcast float* %46 to i8*
  %48 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %veclen35 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %48, i32 0, i32 2
  %49 = load i32, i32* %veclen35, align 4
  %conv36 = sext i32 %49 to i64
  %mul37 = mul i64 %conv36, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %47, i64 %mul37, i32 4, i1 false)
  %50 = load i32, i32* %c, align 4
  %idxprom38 = sext i32 %50 to i64
  %51 = load i32, i32* %m, align 4
  %idxprom39 = sext i32 %51 to i64
  %52 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %mgau40 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %52, i32 0, i32 3
  %53 = load %struct.mgau_t*, %struct.mgau_t** %mgau40, align 8
  %arrayidx41 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %53, i64 %idxprom39
  %mixw = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %arrayidx41, i32 0, i32 4
  %54 = load i32*, i32** %mixw, align 8
  %arrayidx42 = getelementptr inbounds i32, i32* %54, i64 %idxprom38
  %55 = load i32, i32* %arrayidx42, align 4
  %56 = load i32, i32* %c2, align 4
  %idxprom43 = sext i32 %56 to i64
  %57 = load i32, i32* %m, align 4
  %idxprom44 = sext i32 %57 to i64
  %58 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %mgau45 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %58, i32 0, i32 3
  %59 = load %struct.mgau_t*, %struct.mgau_t** %mgau45, align 8
  %arrayidx46 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %59, i64 %idxprom44
  %mixw47 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %arrayidx46, i32 0, i32 4
  %60 = load i32*, i32** %mixw47, align 8
  %arrayidx48 = getelementptr inbounds i32, i32* %60, i64 %idxprom43
  store i32 %55, i32* %arrayidx48, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.then
  %61 = load i32, i32* %c2, align 4
  %inc = add nsw i32 %61, 1
  store i32 %inc, i32* %c2, align 4
  br label %if.end.50

if.else:                                          ; preds = %for.body.3
  %62 = load i32, i32* %n, align 4
  %inc49 = add nsw i32 %62, 1
  store i32 %inc49, i32* %n, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.else, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.50
  %63 = load i32, i32* %c, align 4
  %inc51 = add nsw i32 %63, 1
  store i32 %inc51, i32* %c, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %64 = load i32, i32* %c2, align 4
  %65 = load i32, i32* %m, align 4
  %idxprom52 = sext i32 %65 to i64
  %66 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %mgau53 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %66, i32 0, i32 3
  %67 = load %struct.mgau_t*, %struct.mgau_t** %mgau53, align 8
  %arrayidx54 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %67, i64 %idxprom52
  %n_comp55 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %arrayidx54, i32 0, i32 0
  store i32 %64, i32* %n_comp55, align 4
  %68 = load i32, i32* %c2, align 4
  %cmp56 = icmp eq i32 %68, 0
  br i1 %cmp56, label %if.then.58, label %if.end.61

if.then.58:                                       ; preds = %for.end
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %70 = load i32, i32* %m, align 4
  %call59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i32 0, i32 0), i32 %70)
  %71 = load i32, i32* %nm, align 4
  %inc60 = add nsw i32 %71, 1
  store i32 %inc60, i32* %nm, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.58, %for.end
  br label %for.inc.62

for.inc.62:                                       ; preds = %if.end.61
  %72 = load i32, i32* %m, align 4
  %inc63 = add nsw i32 %72, 1
  store i32 %inc63, i32* %m, align 4
  br label %for.cond

for.end.64:                                       ; preds = %for.cond
  %73 = load i32, i32* %nm, align 4
  %cmp65 = icmp sgt i32 %73, 0
  br i1 %cmp65, label %if.then.67, label %if.end.69

if.then.67:                                       ; preds = %for.end.64
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i32 0, i32 0))
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.67, %for.end.64
  %75 = load i32, i32* %nm, align 4
  %cmp70 = icmp sgt i32 %75, 0
  br i1 %cmp70, label %if.then.74, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.69
  %76 = load i32, i32* %n, align 4
  %cmp72 = icmp sgt i32 %76, 0
  br i1 %cmp72, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %lor.lhs.false, %if.end.69
  call void @_E__pr_info_header(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 408, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  %77 = load i32, i32* %n, align 4
  %78 = load i32, i32* %nm, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.46, i32 0, i32 0), i32 %77, i32 %78)
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.74, %lor.lhs.false
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mgau_var_floor(%struct.mgau_model_t* %g, double %floor) #0 {
entry:
  %g.addr = alloca %struct.mgau_model_t*, align 8
  %floor.addr = alloca double, align 8
  %m = alloca i32, align 4
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.mgau_model_t* %g, %struct.mgau_model_t** %g.addr, align 8
  store double %floor, double* %floor.addr, align 8
  call void @_E__pr_info_header(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 416, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.47, i32 0, i32 0))
  store i32 0, i32* %n, align 4
  store i32 0, i32* %m, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.29, %entry
  %0 = load i32, i32* %m, align 4
  %1 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %n_mgau = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %1, i32 0, i32 0
  %2 = load i32, i32* %n_mgau, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end.31

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %c, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.26, %for.body
  %3 = load i32, i32* %c, align 4
  %4 = load i32, i32* %m, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %mgau = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %5, i32 0, i32 3
  %6 = load %struct.mgau_t*, %struct.mgau_t** %mgau, align 8
  %arrayidx = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %6, i64 %idxprom
  %n_comp = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %arrayidx, i32 0, i32 0
  %7 = load i32, i32* %n_comp, align 4
  %cmp2 = icmp slt i32 %3, %7
  br i1 %cmp2, label %for.body.3, label %for.end.28

for.body.3:                                       ; preds = %for.cond.1
  store i32 0, i32* %i, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body.3
  %8 = load i32, i32* %i, align 4
  %9 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %veclen = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %9, i32 0, i32 2
  %10 = load i32, i32* %veclen, align 4
  %cmp5 = icmp slt i32 %8, %10
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %11 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %11 to i64
  %12 = load i32, i32* %c, align 4
  %idxprom8 = sext i32 %12 to i64
  %13 = load i32, i32* %m, align 4
  %idxprom9 = sext i32 %13 to i64
  %14 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %mgau10 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %14, i32 0, i32 3
  %15 = load %struct.mgau_t*, %struct.mgau_t** %mgau10, align 8
  %arrayidx11 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %15, i64 %idxprom9
  %var = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %arrayidx11, i32 0, i32 2
  %16 = load float**, float*** %var, align 8
  %arrayidx12 = getelementptr inbounds float*, float** %16, i64 %idxprom8
  %17 = load float*, float** %arrayidx12, align 8
  %arrayidx13 = getelementptr inbounds float, float* %17, i64 %idxprom7
  %18 = load float, float* %arrayidx13, align 4
  %conv = fpext float %18 to double
  %19 = load double, double* %floor.addr, align 8
  %cmp14 = fcmp olt double %conv, %19
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.6
  %20 = load double, double* %floor.addr, align 8
  %conv16 = fptrunc double %20 to float
  %21 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %21 to i64
  %22 = load i32, i32* %c, align 4
  %idxprom18 = sext i32 %22 to i64
  %23 = load i32, i32* %m, align 4
  %idxprom19 = sext i32 %23 to i64
  %24 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %mgau20 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %24, i32 0, i32 3
  %25 = load %struct.mgau_t*, %struct.mgau_t** %mgau20, align 8
  %arrayidx21 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %25, i64 %idxprom19
  %var22 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %arrayidx21, i32 0, i32 2
  %26 = load float**, float*** %var22, align 8
  %arrayidx23 = getelementptr inbounds float*, float** %26, i64 %idxprom18
  %27 = load float*, float** %arrayidx23, align 8
  %arrayidx24 = getelementptr inbounds float, float* %27, i64 %idxprom17
  store float %conv16, float* %arrayidx24, align 4
  %28 = load i32, i32* %n, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %n, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.6
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %29 = load i32, i32* %i, align 4
  %inc25 = add nsw i32 %29, 1
  store i32 %inc25, i32* %i, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.end
  %30 = load i32, i32* %c, align 4
  %inc27 = add nsw i32 %30, 1
  store i32 %inc27, i32* %c, align 4
  br label %for.cond.1

for.end.28:                                       ; preds = %for.cond.1
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.end.28
  %31 = load i32, i32* %m, align 4
  %inc30 = add nsw i32 %31, 1
  store i32 %inc30, i32* %m, align 4
  br label %for.cond

for.end.31:                                       ; preds = %for.cond
  call void @_E__pr_info_header(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 428, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  %32 = load i32, i32* %n, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0), i32 %32)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @mgau_precomp(%struct.mgau_model_t* %g) #0 {
entry:
  %g.addr = alloca %struct.mgau_model_t*, align 8
  %m = alloca i32, align 4
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  %lrd = alloca double, align 8
  %f = alloca double, align 8
  store %struct.mgau_model_t* %g, %struct.mgau_model_t** %g.addr, align 8
  %call = call double @log_to_logs3_factor()
  store double %call, double* %f, align 8
  call void @_E__pr_info_header(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 474, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.48, i32 0, i32 0))
  store i32 0, i32* %m, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.49, %entry
  %0 = load i32, i32* %m, align 4
  %1 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %n_mgau = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %1, i32 0, i32 0
  %2 = load i32, i32* %n_mgau, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end.51

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %c, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.46, %for.body
  %3 = load i32, i32* %c, align 4
  %4 = load i32, i32* %m, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %mgau = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %5, i32 0, i32 3
  %6 = load %struct.mgau_t*, %struct.mgau_t** %mgau, align 8
  %arrayidx = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %6, i64 %idxprom
  %n_comp = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %arrayidx, i32 0, i32 0
  %7 = load i32, i32* %n_comp, align 4
  %cmp2 = icmp slt i32 %3, %7
  br i1 %cmp2, label %for.body.3, label %for.end.48

for.body.3:                                       ; preds = %for.cond.1
  store double 0.000000e+00, double* %lrd, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body.3
  %8 = load i32, i32* %i, align 4
  %9 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %veclen = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %9, i32 0, i32 2
  %10 = load i32, i32* %veclen, align 4
  %cmp5 = icmp slt i32 %8, %10
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %11 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %11 to i64
  %12 = load i32, i32* %c, align 4
  %idxprom8 = sext i32 %12 to i64
  %13 = load i32, i32* %m, align 4
  %idxprom9 = sext i32 %13 to i64
  %14 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %mgau10 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %14, i32 0, i32 3
  %15 = load %struct.mgau_t*, %struct.mgau_t** %mgau10, align 8
  %arrayidx11 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %15, i64 %idxprom9
  %var = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %arrayidx11, i32 0, i32 2
  %16 = load float**, float*** %var, align 8
  %arrayidx12 = getelementptr inbounds float*, float** %16, i64 %idxprom8
  %17 = load float*, float** %arrayidx12, align 8
  %arrayidx13 = getelementptr inbounds float, float* %17, i64 %idxprom7
  %18 = load float, float* %arrayidx13, align 4
  %conv = fpext float %18 to double
  %call14 = call double @log(double %conv) #3
  %19 = load double, double* %lrd, align 8
  %add = fadd double %19, %call14
  store double %add, double* %lrd, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %20 to i64
  %21 = load i32, i32* %c, align 4
  %idxprom16 = sext i32 %21 to i64
  %22 = load i32, i32* %m, align 4
  %idxprom17 = sext i32 %22 to i64
  %23 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %mgau18 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %23, i32 0, i32 3
  %24 = load %struct.mgau_t*, %struct.mgau_t** %mgau18, align 8
  %arrayidx19 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %24, i64 %idxprom17
  %var20 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %arrayidx19, i32 0, i32 2
  %25 = load float**, float*** %var20, align 8
  %arrayidx21 = getelementptr inbounds float*, float** %25, i64 %idxprom16
  %26 = load float*, float** %arrayidx21, align 8
  %arrayidx22 = getelementptr inbounds float, float* %26, i64 %idxprom15
  %27 = load float, float* %arrayidx22, align 4
  %conv23 = fpext float %27 to double
  %mul = fmul double %conv23, 2.000000e+00
  %div = fdiv double 1.000000e+00, %mul
  %conv24 = fptrunc double %div to float
  %28 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %28 to i64
  %29 = load i32, i32* %c, align 4
  %idxprom26 = sext i32 %29 to i64
  %30 = load i32, i32* %m, align 4
  %idxprom27 = sext i32 %30 to i64
  %31 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %mgau28 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %31, i32 0, i32 3
  %32 = load %struct.mgau_t*, %struct.mgau_t** %mgau28, align 8
  %arrayidx29 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %32, i64 %idxprom27
  %var30 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %arrayidx29, i32 0, i32 2
  %33 = load float**, float*** %var30, align 8
  %arrayidx31 = getelementptr inbounds float*, float** %33, i64 %idxprom26
  %34 = load float*, float** %arrayidx31, align 8
  %arrayidx32 = getelementptr inbounds float, float* %34, i64 %idxprom25
  store float %conv24, float* %arrayidx32, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %35 = load i32, i32* %i, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  %36 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %veclen33 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %36, i32 0, i32 2
  %37 = load i32, i32* %veclen33, align 4
  %conv34 = sitofp i32 %37 to double
  %call35 = call double @log(double 0x401921FB54442D18) #3
  %mul36 = fmul double %conv34, %call35
  %38 = load double, double* %lrd, align 8
  %add37 = fadd double %38, %mul36
  store double %add37, double* %lrd, align 8
  %39 = load double, double* %lrd, align 8
  %mul38 = fmul double -5.000000e-01, %39
  %conv39 = fptrunc double %mul38 to float
  %40 = load i32, i32* %c, align 4
  %idxprom40 = sext i32 %40 to i64
  %41 = load i32, i32* %m, align 4
  %idxprom41 = sext i32 %41 to i64
  %42 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %mgau42 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %42, i32 0, i32 3
  %43 = load %struct.mgau_t*, %struct.mgau_t** %mgau42, align 8
  %arrayidx43 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %43, i64 %idxprom41
  %lrd44 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %arrayidx43, i32 0, i32 3
  %44 = load float*, float** %lrd44, align 8
  %arrayidx45 = getelementptr inbounds float, float* %44, i64 %idxprom40
  store float %conv39, float* %arrayidx45, align 4
  br label %for.inc.46

for.inc.46:                                       ; preds = %for.end
  %45 = load i32, i32* %c, align 4
  %inc47 = add nsw i32 %45, 1
  store i32 %inc47, i32* %c, align 4
  br label %for.cond.1

for.end.48:                                       ; preds = %for.cond.1
  br label %for.inc.49

for.inc.49:                                       ; preds = %for.end.48
  %46 = load i32, i32* %m, align 4
  %inc50 = add nsw i32 %46, 1
  store i32 %inc50, i32* %m, align 4
  br label %for.cond

for.end.51:                                       ; preds = %for.cond
  ret i32 0
}

declare double @logs3_to_log(i32) #1

; Function Attrs: nounwind uwtable
define i32 @mgau_comp_eval(%struct.mgau_model_t* %g, i32 %s, float* %x, i32* %score) #0 {
entry:
  %g.addr = alloca %struct.mgau_model_t*, align 8
  %s.addr = alloca i32, align 4
  %x.addr = alloca float*, align 8
  %score.addr = alloca i32*, align 8
  %mgau = alloca %struct.mgau_t*, align 8
  %veclen = alloca i32, align 4
  %m = alloca float*, align 8
  %v = alloca float*, align 8
  %dval = alloca double, align 8
  %diff = alloca double, align 8
  %f = alloca double, align 8
  %bs = alloca i32, align 4
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  store %struct.mgau_model_t* %g, %struct.mgau_model_t** %g.addr, align 8
  store i32 %s, i32* %s.addr, align 4
  store float* %x, float** %x.addr, align 8
  store i32* %score, i32** %score.addr, align 8
  %0 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %veclen1 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %0, i32 0, i32 2
  %1 = load i32, i32* %veclen1, align 4
  store i32 %1, i32* %veclen, align 4
  %2 = load i32, i32* %s.addr, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %mgau2 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %3, i32 0, i32 3
  %4 = load %struct.mgau_t*, %struct.mgau_t** %mgau2, align 8
  %arrayidx = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %4, i64 %idxprom
  store %struct.mgau_t* %arrayidx, %struct.mgau_t** %mgau, align 8
  %call = call double @log_to_logs3_factor()
  store double %call, double* %f, align 8
  store i32 -2147483648, i32* %bs, align 4
  store i32 0, i32* %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.38, %entry
  %5 = load i32, i32* %c, align 4
  %6 = load %struct.mgau_t*, %struct.mgau_t** %mgau, align 8
  %n_comp = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %6, i32 0, i32 0
  %7 = load i32, i32* %n_comp, align 4
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end.40

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %c, align 4
  %idxprom3 = sext i32 %8 to i64
  %9 = load %struct.mgau_t*, %struct.mgau_t** %mgau, align 8
  %mean = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %9, i32 0, i32 1
  %10 = load float**, float*** %mean, align 8
  %arrayidx4 = getelementptr inbounds float*, float** %10, i64 %idxprom3
  %11 = load float*, float** %arrayidx4, align 8
  store float* %11, float** %m, align 8
  %12 = load i32, i32* %c, align 4
  %idxprom5 = sext i32 %12 to i64
  %13 = load %struct.mgau_t*, %struct.mgau_t** %mgau, align 8
  %var = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %13, i32 0, i32 2
  %14 = load float**, float*** %var, align 8
  %arrayidx6 = getelementptr inbounds float*, float** %14, i64 %idxprom5
  %15 = load float*, float** %arrayidx6, align 8
  store float* %15, float** %v, align 8
  %16 = load i32, i32* %c, align 4
  %idxprom7 = sext i32 %16 to i64
  %17 = load %struct.mgau_t*, %struct.mgau_t** %mgau, align 8
  %lrd = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %17, i32 0, i32 3
  %18 = load float*, float** %lrd, align 8
  %arrayidx8 = getelementptr inbounds float, float* %18, i64 %idxprom7
  %19 = load float, float* %arrayidx8, align 4
  %conv = fpext float %19 to double
  store double %conv, double* %dval, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %for.body
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %veclen, align 4
  %cmp10 = icmp slt i32 %20, %21
  br i1 %cmp10, label %for.body.12, label %for.end

for.body.12:                                      ; preds = %for.cond.9
  %22 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %22 to i64
  %23 = load float*, float** %x.addr, align 8
  %arrayidx14 = getelementptr inbounds float, float* %23, i64 %idxprom13
  %24 = load float, float* %arrayidx14, align 4
  %25 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %25 to i64
  %26 = load float*, float** %m, align 8
  %arrayidx16 = getelementptr inbounds float, float* %26, i64 %idxprom15
  %27 = load float, float* %arrayidx16, align 4
  %sub = fsub float %24, %27
  %conv17 = fpext float %sub to double
  store double %conv17, double* %diff, align 8
  %28 = load double, double* %diff, align 8
  %29 = load double, double* %diff, align 8
  %mul = fmul double %28, %29
  %30 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %30 to i64
  %31 = load float*, float** %v, align 8
  %arrayidx19 = getelementptr inbounds float, float* %31, i64 %idxprom18
  %32 = load float, float* %arrayidx19, align 4
  %conv20 = fpext float %32 to double
  %mul21 = fmul double %mul, %conv20
  %33 = load double, double* %dval, align 8
  %sub22 = fsub double %33, %mul21
  store double %sub22, double* %dval, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.12
  %34 = load i32, i32* %i, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.9

for.end:                                          ; preds = %for.cond.9
  %35 = load double, double* %dval, align 8
  %36 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %distfloor = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %36, i32 0, i32 4
  %37 = load double, double* %distfloor, align 8
  %cmp23 = fcmp olt double %35, %37
  br i1 %cmp23, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %38 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %distfloor25 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %38, i32 0, i32 4
  %39 = load double, double* %distfloor25, align 8
  store double %39, double* %dval, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %40 = load double, double* %f, align 8
  %41 = load double, double* %dval, align 8
  %mul26 = fmul double %40, %41
  %conv27 = fptosi double %mul26 to i32
  %42 = load i32, i32* %c, align 4
  %idxprom28 = sext i32 %42 to i64
  %43 = load i32*, i32** %score.addr, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %43, i64 %idxprom28
  store i32 %conv27, i32* %arrayidx29, align 4
  %44 = load i32, i32* %c, align 4
  %idxprom30 = sext i32 %44 to i64
  %45 = load i32*, i32** %score.addr, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %45, i64 %idxprom30
  %46 = load i32, i32* %arrayidx31, align 4
  %47 = load i32, i32* %bs, align 4
  %cmp32 = icmp sgt i32 %46, %47
  br i1 %cmp32, label %if.then.34, label %if.end.37

if.then.34:                                       ; preds = %if.end
  %48 = load i32, i32* %c, align 4
  %idxprom35 = sext i32 %48 to i64
  %49 = load i32*, i32** %score.addr, align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %49, i64 %idxprom35
  %50 = load i32, i32* %arrayidx36, align 4
  store i32 %50, i32* %bs, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.34, %if.end
  br label %for.inc.38

for.inc.38:                                       ; preds = %if.end.37
  %51 = load i32, i32* %c, align 4
  %inc39 = add nsw i32 %51, 1
  store i32 %inc39, i32* %c, align 4
  br label %for.cond

for.end.40:                                       ; preds = %for.cond
  %52 = load i32, i32* %bs, align 4
  ret i32 %52
}

declare double @log_to_logs3_factor() #1

; Function Attrs: nounwind uwtable
define i32 @mgau_eval(%struct.mgau_model_t* %g, i32 %m, i32* %active, float* %x) #0 {
entry:
  %g.addr = alloca %struct.mgau_model_t*, align 8
  %m.addr = alloca i32, align 4
  %active.addr = alloca i32*, align 8
  %x.addr = alloca float*, align 8
  %mgau = alloca %struct.mgau_t*, align 8
  %veclen = alloca i32, align 4
  %score = alloca i32, align 4
  %m1 = alloca float*, align 8
  %m2 = alloca float*, align 8
  %v1 = alloca float*, align 8
  %v2 = alloca float*, align 8
  %dval1 = alloca double, align 8
  %dval2 = alloca double, align 8
  %diff1 = alloca double, align 8
  %diff2 = alloca double, align 8
  %f = alloca double, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %c = alloca i32, align 4
  store %struct.mgau_model_t* %g, %struct.mgau_model_t** %g.addr, align 8
  store i32 %m, i32* %m.addr, align 4
  store i32* %active, i32** %active.addr, align 8
  store float* %x, float** %x.addr, align 8
  %0 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %veclen1 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %0, i32 0, i32 2
  %1 = load i32, i32* %veclen1, align 4
  store i32 %1, i32* %veclen, align 4
  %2 = load i32, i32* %m.addr, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %mgau2 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %3, i32 0, i32 3
  %4 = load %struct.mgau_t*, %struct.mgau_t** %mgau2, align 8
  %arrayidx = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %4, i64 %idxprom
  store %struct.mgau_t* %arrayidx, %struct.mgau_t** %mgau, align 8
  %call = call double @log_to_logs3_factor()
  store double %call, double* %f, align 8
  store i32 -939524096, i32* %score, align 4
  %5 = load i32*, i32** %active.addr, align 8
  %tobool = icmp ne i32* %5, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.72, %if.then
  %6 = load i32, i32* %c, align 4
  %7 = load %struct.mgau_t*, %struct.mgau_t** %mgau, align 8
  %n_comp = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %7, i32 0, i32 0
  %8 = load i32, i32* %n_comp, align 4
  %sub = sub nsw i32 %8, 1
  %cmp = icmp slt i32 %6, %sub
  br i1 %cmp, label %for.body, label %for.end.74

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %c, align 4
  %idxprom3 = sext i32 %9 to i64
  %10 = load %struct.mgau_t*, %struct.mgau_t** %mgau, align 8
  %mean = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %10, i32 0, i32 1
  %11 = load float**, float*** %mean, align 8
  %arrayidx4 = getelementptr inbounds float*, float** %11, i64 %idxprom3
  %12 = load float*, float** %arrayidx4, align 8
  store float* %12, float** %m1, align 8
  %13 = load i32, i32* %c, align 4
  %add = add nsw i32 %13, 1
  %idxprom5 = sext i32 %add to i64
  %14 = load %struct.mgau_t*, %struct.mgau_t** %mgau, align 8
  %mean6 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %14, i32 0, i32 1
  %15 = load float**, float*** %mean6, align 8
  %arrayidx7 = getelementptr inbounds float*, float** %15, i64 %idxprom5
  %16 = load float*, float** %arrayidx7, align 8
  store float* %16, float** %m2, align 8
  %17 = load i32, i32* %c, align 4
  %idxprom8 = sext i32 %17 to i64
  %18 = load %struct.mgau_t*, %struct.mgau_t** %mgau, align 8
  %var = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %18, i32 0, i32 2
  %19 = load float**, float*** %var, align 8
  %arrayidx9 = getelementptr inbounds float*, float** %19, i64 %idxprom8
  %20 = load float*, float** %arrayidx9, align 8
  store float* %20, float** %v1, align 8
  %21 = load i32, i32* %c, align 4
  %add10 = add nsw i32 %21, 1
  %idxprom11 = sext i32 %add10 to i64
  %22 = load %struct.mgau_t*, %struct.mgau_t** %mgau, align 8
  %var12 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %22, i32 0, i32 2
  %23 = load float**, float*** %var12, align 8
  %arrayidx13 = getelementptr inbounds float*, float** %23, i64 %idxprom11
  %24 = load float*, float** %arrayidx13, align 8
  store float* %24, float** %v2, align 8
  %25 = load i32, i32* %c, align 4
  %idxprom14 = sext i32 %25 to i64
  %26 = load %struct.mgau_t*, %struct.mgau_t** %mgau, align 8
  %lrd = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %26, i32 0, i32 3
  %27 = load float*, float** %lrd, align 8
  %arrayidx15 = getelementptr inbounds float, float* %27, i64 %idxprom14
  %28 = load float, float* %arrayidx15, align 4
  %conv = fpext float %28 to double
  store double %conv, double* %dval1, align 8
  %29 = load i32, i32* %c, align 4
  %add16 = add nsw i32 %29, 1
  %idxprom17 = sext i32 %add16 to i64
  %30 = load %struct.mgau_t*, %struct.mgau_t** %mgau, align 8
  %lrd18 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %30, i32 0, i32 3
  %31 = load float*, float** %lrd18, align 8
  %arrayidx19 = getelementptr inbounds float, float* %31, i64 %idxprom17
  %32 = load float, float* %arrayidx19, align 4
  %conv20 = fpext float %32 to double
  store double %conv20, double* %dval2, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc, %for.body
  %33 = load i32, i32* %i, align 4
  %34 = load i32, i32* %veclen, align 4
  %cmp22 = icmp slt i32 %33, %34
  br i1 %cmp22, label %for.body.24, label %for.end

for.body.24:                                      ; preds = %for.cond.21
  %35 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %35 to i64
  %36 = load float*, float** %x.addr, align 8
  %arrayidx26 = getelementptr inbounds float, float* %36, i64 %idxprom25
  %37 = load float, float* %arrayidx26, align 4
  %38 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %38 to i64
  %39 = load float*, float** %m1, align 8
  %arrayidx28 = getelementptr inbounds float, float* %39, i64 %idxprom27
  %40 = load float, float* %arrayidx28, align 4
  %sub29 = fsub float %37, %40
  %conv30 = fpext float %sub29 to double
  store double %conv30, double* %diff1, align 8
  %41 = load double, double* %diff1, align 8
  %42 = load double, double* %diff1, align 8
  %mul = fmul double %41, %42
  %43 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %43 to i64
  %44 = load float*, float** %v1, align 8
  %arrayidx32 = getelementptr inbounds float, float* %44, i64 %idxprom31
  %45 = load float, float* %arrayidx32, align 4
  %conv33 = fpext float %45 to double
  %mul34 = fmul double %mul, %conv33
  %46 = load double, double* %dval1, align 8
  %sub35 = fsub double %46, %mul34
  store double %sub35, double* %dval1, align 8
  %47 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %47 to i64
  %48 = load float*, float** %x.addr, align 8
  %arrayidx37 = getelementptr inbounds float, float* %48, i64 %idxprom36
  %49 = load float, float* %arrayidx37, align 4
  %50 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %50 to i64
  %51 = load float*, float** %m2, align 8
  %arrayidx39 = getelementptr inbounds float, float* %51, i64 %idxprom38
  %52 = load float, float* %arrayidx39, align 4
  %sub40 = fsub float %49, %52
  %conv41 = fpext float %sub40 to double
  store double %conv41, double* %diff2, align 8
  %53 = load double, double* %diff2, align 8
  %54 = load double, double* %diff2, align 8
  %mul42 = fmul double %53, %54
  %55 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %55 to i64
  %56 = load float*, float** %v2, align 8
  %arrayidx44 = getelementptr inbounds float, float* %56, i64 %idxprom43
  %57 = load float, float* %arrayidx44, align 4
  %conv45 = fpext float %57 to double
  %mul46 = fmul double %mul42, %conv45
  %58 = load double, double* %dval2, align 8
  %sub47 = fsub double %58, %mul46
  store double %sub47, double* %dval2, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.24
  %59 = load i32, i32* %i, align 4
  %inc = add nsw i32 %59, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.21

for.end:                                          ; preds = %for.cond.21
  %60 = load double, double* %dval1, align 8
  %61 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %distfloor = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %61, i32 0, i32 4
  %62 = load double, double* %distfloor, align 8
  %cmp48 = fcmp olt double %60, %62
  br i1 %cmp48, label %if.then.50, label %if.end

if.then.50:                                       ; preds = %for.end
  %63 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %distfloor51 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %63, i32 0, i32 4
  %64 = load double, double* %distfloor51, align 8
  store double %64, double* %dval1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.50, %for.end
  %65 = load double, double* %dval2, align 8
  %66 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %distfloor52 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %66, i32 0, i32 4
  %67 = load double, double* %distfloor52, align 8
  %cmp53 = fcmp olt double %65, %67
  br i1 %cmp53, label %if.then.55, label %if.end.57

if.then.55:                                       ; preds = %if.end
  %68 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %distfloor56 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %68, i32 0, i32 4
  %69 = load double, double* %distfloor56, align 8
  store double %69, double* %dval2, align 8
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.55, %if.end
  %70 = load i32, i32* %score, align 4
  %71 = load double, double* %f, align 8
  %72 = load double, double* %dval1, align 8
  %mul58 = fmul double %71, %72
  %conv59 = fptosi double %mul58 to i32
  %73 = load i32, i32* %c, align 4
  %idxprom60 = sext i32 %73 to i64
  %74 = load %struct.mgau_t*, %struct.mgau_t** %mgau, align 8
  %mixw = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %74, i32 0, i32 4
  %75 = load i32*, i32** %mixw, align 8
  %arrayidx61 = getelementptr inbounds i32, i32* %75, i64 %idxprom60
  %76 = load i32, i32* %arrayidx61, align 4
  %add62 = add nsw i32 %conv59, %76
  %call63 = call i32 @logs3_add(i32 %70, i32 %add62)
  store i32 %call63, i32* %score, align 4
  %77 = load i32, i32* %score, align 4
  %78 = load double, double* %f, align 8
  %79 = load double, double* %dval2, align 8
  %mul64 = fmul double %78, %79
  %conv65 = fptosi double %mul64 to i32
  %80 = load i32, i32* %c, align 4
  %add66 = add nsw i32 %80, 1
  %idxprom67 = sext i32 %add66 to i64
  %81 = load %struct.mgau_t*, %struct.mgau_t** %mgau, align 8
  %mixw68 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %81, i32 0, i32 4
  %82 = load i32*, i32** %mixw68, align 8
  %arrayidx69 = getelementptr inbounds i32, i32* %82, i64 %idxprom67
  %83 = load i32, i32* %arrayidx69, align 4
  %add70 = add nsw i32 %conv65, %83
  %call71 = call i32 @logs3_add(i32 %77, i32 %add70)
  store i32 %call71, i32* %score, align 4
  br label %for.inc.72

for.inc.72:                                       ; preds = %if.end.57
  %84 = load i32, i32* %c, align 4
  %add73 = add nsw i32 %84, 2
  store i32 %add73, i32* %c, align 4
  br label %for.cond

for.end.74:                                       ; preds = %for.cond
  %85 = load i32, i32* %c, align 4
  %86 = load %struct.mgau_t*, %struct.mgau_t** %mgau, align 8
  %n_comp75 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %86, i32 0, i32 0
  %87 = load i32, i32* %n_comp75, align 4
  %cmp76 = icmp slt i32 %85, %87
  br i1 %cmp76, label %if.then.78, label %if.end.121

if.then.78:                                       ; preds = %for.end.74
  %88 = load i32, i32* %c, align 4
  %idxprom79 = sext i32 %88 to i64
  %89 = load %struct.mgau_t*, %struct.mgau_t** %mgau, align 8
  %mean80 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %89, i32 0, i32 1
  %90 = load float**, float*** %mean80, align 8
  %arrayidx81 = getelementptr inbounds float*, float** %90, i64 %idxprom79
  %91 = load float*, float** %arrayidx81, align 8
  store float* %91, float** %m1, align 8
  %92 = load i32, i32* %c, align 4
  %idxprom82 = sext i32 %92 to i64
  %93 = load %struct.mgau_t*, %struct.mgau_t** %mgau, align 8
  %var83 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %93, i32 0, i32 2
  %94 = load float**, float*** %var83, align 8
  %arrayidx84 = getelementptr inbounds float*, float** %94, i64 %idxprom82
  %95 = load float*, float** %arrayidx84, align 8
  store float* %95, float** %v1, align 8
  %96 = load i32, i32* %c, align 4
  %idxprom85 = sext i32 %96 to i64
  %97 = load %struct.mgau_t*, %struct.mgau_t** %mgau, align 8
  %lrd86 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %97, i32 0, i32 3
  %98 = load float*, float** %lrd86, align 8
  %arrayidx87 = getelementptr inbounds float, float* %98, i64 %idxprom85
  %99 = load float, float* %arrayidx87, align 4
  %conv88 = fpext float %99 to double
  store double %conv88, double* %dval1, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.89

for.cond.89:                                      ; preds = %for.inc.105, %if.then.78
  %100 = load i32, i32* %i, align 4
  %101 = load i32, i32* %veclen, align 4
  %cmp90 = icmp slt i32 %100, %101
  br i1 %cmp90, label %for.body.92, label %for.end.107

for.body.92:                                      ; preds = %for.cond.89
  %102 = load i32, i32* %i, align 4
  %idxprom93 = sext i32 %102 to i64
  %103 = load float*, float** %x.addr, align 8
  %arrayidx94 = getelementptr inbounds float, float* %103, i64 %idxprom93
  %104 = load float, float* %arrayidx94, align 4
  %105 = load i32, i32* %i, align 4
  %idxprom95 = sext i32 %105 to i64
  %106 = load float*, float** %m1, align 8
  %arrayidx96 = getelementptr inbounds float, float* %106, i64 %idxprom95
  %107 = load float, float* %arrayidx96, align 4
  %sub97 = fsub float %104, %107
  %conv98 = fpext float %sub97 to double
  store double %conv98, double* %diff1, align 8
  %108 = load double, double* %diff1, align 8
  %109 = load double, double* %diff1, align 8
  %mul99 = fmul double %108, %109
  %110 = load i32, i32* %i, align 4
  %idxprom100 = sext i32 %110 to i64
  %111 = load float*, float** %v1, align 8
  %arrayidx101 = getelementptr inbounds float, float* %111, i64 %idxprom100
  %112 = load float, float* %arrayidx101, align 4
  %conv102 = fpext float %112 to double
  %mul103 = fmul double %mul99, %conv102
  %113 = load double, double* %dval1, align 8
  %sub104 = fsub double %113, %mul103
  store double %sub104, double* %dval1, align 8
  br label %for.inc.105

for.inc.105:                                      ; preds = %for.body.92
  %114 = load i32, i32* %i, align 4
  %inc106 = add nsw i32 %114, 1
  store i32 %inc106, i32* %i, align 4
  br label %for.cond.89

for.end.107:                                      ; preds = %for.cond.89
  %115 = load double, double* %dval1, align 8
  %116 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %distfloor108 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %116, i32 0, i32 4
  %117 = load double, double* %distfloor108, align 8
  %cmp109 = fcmp olt double %115, %117
  br i1 %cmp109, label %if.then.111, label %if.end.113

if.then.111:                                      ; preds = %for.end.107
  %118 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %distfloor112 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %118, i32 0, i32 4
  %119 = load double, double* %distfloor112, align 8
  store double %119, double* %dval1, align 8
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.111, %for.end.107
  %120 = load i32, i32* %score, align 4
  %121 = load double, double* %f, align 8
  %122 = load double, double* %dval1, align 8
  %mul114 = fmul double %121, %122
  %conv115 = fptosi double %mul114 to i32
  %123 = load i32, i32* %c, align 4
  %idxprom116 = sext i32 %123 to i64
  %124 = load %struct.mgau_t*, %struct.mgau_t** %mgau, align 8
  %mixw117 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %124, i32 0, i32 4
  %125 = load i32*, i32** %mixw117, align 8
  %arrayidx118 = getelementptr inbounds i32, i32* %125, i64 %idxprom116
  %126 = load i32, i32* %arrayidx118, align 4
  %add119 = add nsw i32 %conv115, %126
  %call120 = call i32 @logs3_add(i32 %120, i32 %add119)
  store i32 %call120, i32* %score, align 4
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.113, %for.end.74
  br label %if.end.176

if.else:                                          ; preds = %entry
  store i32 0, i32* %j, align 4
  br label %for.cond.122

for.cond.122:                                     ; preds = %for.inc.173, %if.else
  %127 = load i32, i32* %j, align 4
  %idxprom123 = sext i32 %127 to i64
  %128 = load i32*, i32** %active.addr, align 8
  %arrayidx124 = getelementptr inbounds i32, i32* %128, i64 %idxprom123
  %129 = load i32, i32* %arrayidx124, align 4
  %cmp125 = icmp sge i32 %129, 0
  br i1 %cmp125, label %for.body.127, label %for.end.175

for.body.127:                                     ; preds = %for.cond.122
  %130 = load i64, i64* @considered, align 8
  %inc128 = add nsw i64 %130, 1
  store i64 %inc128, i64* @considered, align 8
  %131 = load i32, i32* %j, align 4
  %idxprom129 = sext i32 %131 to i64
  %132 = load i32*, i32** %active.addr, align 8
  %arrayidx130 = getelementptr inbounds i32, i32* %132, i64 %idxprom129
  %133 = load i32, i32* %arrayidx130, align 4
  store i32 %133, i32* %c, align 4
  %134 = load i32, i32* %c, align 4
  %idxprom131 = sext i32 %134 to i64
  %135 = load %struct.mgau_t*, %struct.mgau_t** %mgau, align 8
  %mean132 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %135, i32 0, i32 1
  %136 = load float**, float*** %mean132, align 8
  %arrayidx133 = getelementptr inbounds float*, float** %136, i64 %idxprom131
  %137 = load float*, float** %arrayidx133, align 8
  store float* %137, float** %m1, align 8
  %138 = load i32, i32* %c, align 4
  %idxprom134 = sext i32 %138 to i64
  %139 = load %struct.mgau_t*, %struct.mgau_t** %mgau, align 8
  %var135 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %139, i32 0, i32 2
  %140 = load float**, float*** %var135, align 8
  %arrayidx136 = getelementptr inbounds float*, float** %140, i64 %idxprom134
  %141 = load float*, float** %arrayidx136, align 8
  store float* %141, float** %v1, align 8
  %142 = load i32, i32* %c, align 4
  %idxprom137 = sext i32 %142 to i64
  %143 = load %struct.mgau_t*, %struct.mgau_t** %mgau, align 8
  %lrd138 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %143, i32 0, i32 3
  %144 = load float*, float** %lrd138, align 8
  %arrayidx139 = getelementptr inbounds float, float* %144, i64 %idxprom137
  %145 = load float, float* %arrayidx139, align 4
  %conv140 = fpext float %145 to double
  store double %conv140, double* %dval1, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.141

for.cond.141:                                     ; preds = %for.inc.157, %for.body.127
  %146 = load i32, i32* %i, align 4
  %147 = load i32, i32* %veclen, align 4
  %cmp142 = icmp slt i32 %146, %147
  br i1 %cmp142, label %for.body.144, label %for.end.159

for.body.144:                                     ; preds = %for.cond.141
  %148 = load i32, i32* %i, align 4
  %idxprom145 = sext i32 %148 to i64
  %149 = load float*, float** %x.addr, align 8
  %arrayidx146 = getelementptr inbounds float, float* %149, i64 %idxprom145
  %150 = load float, float* %arrayidx146, align 4
  %151 = load i32, i32* %i, align 4
  %idxprom147 = sext i32 %151 to i64
  %152 = load float*, float** %m1, align 8
  %arrayidx148 = getelementptr inbounds float, float* %152, i64 %idxprom147
  %153 = load float, float* %arrayidx148, align 4
  %sub149 = fsub float %150, %153
  %conv150 = fpext float %sub149 to double
  store double %conv150, double* %diff1, align 8
  %154 = load double, double* %diff1, align 8
  %155 = load double, double* %diff1, align 8
  %mul151 = fmul double %154, %155
  %156 = load i32, i32* %i, align 4
  %idxprom152 = sext i32 %156 to i64
  %157 = load float*, float** %v1, align 8
  %arrayidx153 = getelementptr inbounds float, float* %157, i64 %idxprom152
  %158 = load float, float* %arrayidx153, align 4
  %conv154 = fpext float %158 to double
  %mul155 = fmul double %mul151, %conv154
  %159 = load double, double* %dval1, align 8
  %sub156 = fsub double %159, %mul155
  store double %sub156, double* %dval1, align 8
  br label %for.inc.157

for.inc.157:                                      ; preds = %for.body.144
  %160 = load i32, i32* %i, align 4
  %inc158 = add nsw i32 %160, 1
  store i32 %inc158, i32* %i, align 4
  br label %for.cond.141

for.end.159:                                      ; preds = %for.cond.141
  %161 = load double, double* %dval1, align 8
  %162 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %distfloor160 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %162, i32 0, i32 4
  %163 = load double, double* %distfloor160, align 8
  %cmp161 = fcmp olt double %161, %163
  br i1 %cmp161, label %if.then.163, label %if.end.165

if.then.163:                                      ; preds = %for.end.159
  %164 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %distfloor164 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %164, i32 0, i32 4
  %165 = load double, double* %distfloor164, align 8
  store double %165, double* %dval1, align 8
  br label %if.end.165

if.end.165:                                       ; preds = %if.then.163, %for.end.159
  %166 = load i32, i32* %score, align 4
  %167 = load double, double* %f, align 8
  %168 = load double, double* %dval1, align 8
  %mul166 = fmul double %167, %168
  %conv167 = fptosi double %mul166 to i32
  %169 = load i32, i32* %c, align 4
  %idxprom168 = sext i32 %169 to i64
  %170 = load %struct.mgau_t*, %struct.mgau_t** %mgau, align 8
  %mixw169 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %170, i32 0, i32 4
  %171 = load i32*, i32** %mixw169, align 8
  %arrayidx170 = getelementptr inbounds i32, i32* %171, i64 %idxprom168
  %172 = load i32, i32* %arrayidx170, align 4
  %add171 = add nsw i32 %conv167, %172
  %call172 = call i32 @logs3_add(i32 %166, i32 %add171)
  store i32 %call172, i32* %score, align 4
  br label %for.inc.173

for.inc.173:                                      ; preds = %if.end.165
  %173 = load i32, i32* %j, align 4
  %inc174 = add nsw i32 %173, 1
  store i32 %inc174, i32* %j, align 4
  br label %for.cond.122

for.end.175:                                      ; preds = %for.cond.122
  br label %if.end.176

if.end.176:                                       ; preds = %for.end.175, %if.end.121
  %174 = load i32, i32* %score, align 4
  %cmp177 = icmp eq i32 %174, -939524096
  br i1 %cmp177, label %if.then.179, label %if.end.180

if.then.179:                                      ; preds = %if.end.176
  br label %if.end.180

if.end.180:                                       ; preds = %if.then.179, %if.end.176
  %175 = load i32, i32* %score, align 4
  ret i32 %175
}

declare i32 @logs3_add(i32, i32) #1

; Function Attrs: nounwind uwtable
define void @mgau_free(%struct.mgau_model_t* %g) #0 {
entry:
  %g.addr = alloca %struct.mgau_model_t*, align 8
  store %struct.mgau_model_t* %g, %struct.mgau_model_t** %g.addr, align 8
  %0 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %tobool = icmp ne %struct.mgau_model_t* %0, null
  br i1 %tobool, label %if.then, label %if.end.35

if.then:                                          ; preds = %entry
  %1 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %mgau = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %1, i32 0, i32 3
  %2 = load %struct.mgau_t*, %struct.mgau_t** %mgau, align 8
  %arrayidx = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %2, i64 0
  %mean = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %arrayidx, i32 0, i32 1
  %3 = load float**, float*** %mean, align 8
  %tobool1 = icmp ne float** %3, null
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %4 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %mgau3 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %4, i32 0, i32 3
  %5 = load %struct.mgau_t*, %struct.mgau_t** %mgau3, align 8
  %arrayidx4 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %5, i64 0
  %mean5 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %arrayidx4, i32 0, i32 1
  %6 = load float**, float*** %mean5, align 8
  %7 = bitcast float** %6 to i8*
  call void @ckd_free(i8* %7)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %8 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %mgau6 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %8, i32 0, i32 3
  %9 = load %struct.mgau_t*, %struct.mgau_t** %mgau6, align 8
  %arrayidx7 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %9, i64 0
  %var = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %arrayidx7, i32 0, i32 2
  %10 = load float**, float*** %var, align 8
  %tobool8 = icmp ne float** %10, null
  br i1 %tobool8, label %if.then.9, label %if.end.13

if.then.9:                                        ; preds = %if.end
  %11 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %mgau10 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %11, i32 0, i32 3
  %12 = load %struct.mgau_t*, %struct.mgau_t** %mgau10, align 8
  %arrayidx11 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %12, i64 0
  %var12 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %arrayidx11, i32 0, i32 2
  %13 = load float**, float*** %var12, align 8
  %14 = bitcast float** %13 to i8*
  call void @ckd_free(i8* %14)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.9, %if.end
  %15 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %mgau14 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %15, i32 0, i32 3
  %16 = load %struct.mgau_t*, %struct.mgau_t** %mgau14, align 8
  %arrayidx15 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %16, i64 0
  %lrd = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %arrayidx15, i32 0, i32 3
  %17 = load float*, float** %lrd, align 8
  %tobool16 = icmp ne float* %17, null
  br i1 %tobool16, label %if.then.17, label %if.end.21

if.then.17:                                       ; preds = %if.end.13
  %18 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %mgau18 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %18, i32 0, i32 3
  %19 = load %struct.mgau_t*, %struct.mgau_t** %mgau18, align 8
  %arrayidx19 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %19, i64 0
  %lrd20 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %arrayidx19, i32 0, i32 3
  %20 = load float*, float** %lrd20, align 8
  %21 = bitcast float* %20 to i8*
  call void @ckd_free(i8* %21)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.17, %if.end.13
  %22 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %mgau22 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %22, i32 0, i32 3
  %23 = load %struct.mgau_t*, %struct.mgau_t** %mgau22, align 8
  %arrayidx23 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %23, i64 0
  %mixw = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %arrayidx23, i32 0, i32 4
  %24 = load i32*, i32** %mixw, align 8
  %tobool24 = icmp ne i32* %24, null
  br i1 %tobool24, label %if.then.25, label %if.end.29

if.then.25:                                       ; preds = %if.end.21
  %25 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %mgau26 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %25, i32 0, i32 3
  %26 = load %struct.mgau_t*, %struct.mgau_t** %mgau26, align 8
  %arrayidx27 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %26, i64 0
  %mixw28 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %arrayidx27, i32 0, i32 4
  %27 = load i32*, i32** %mixw28, align 8
  %28 = bitcast i32* %27 to i8*
  call void @ckd_free(i8* %28)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.25, %if.end.21
  %29 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %mgau30 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %29, i32 0, i32 3
  %30 = load %struct.mgau_t*, %struct.mgau_t** %mgau30, align 8
  %tobool31 = icmp ne %struct.mgau_t* %30, null
  br i1 %tobool31, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %if.end.29
  %31 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %mgau33 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %31, i32 0, i32 3
  %32 = load %struct.mgau_t*, %struct.mgau_t** %mgau33, align 8
  %33 = bitcast %struct.mgau_t* %32 to i8*
  call void @ckd_free(i8* %33)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %if.end.29
  %34 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %35 = bitcast %struct.mgau_model_t* %34 to i8*
  call void @ckd_free(i8* %35)
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %entry
  ret void
}

declare void @ckd_free(i8*) #1

declare %struct._IO_FILE* @_myfopen(i8*, i8*, i8*, i32) #1

declare i32 @bio_readhdr(%struct._IO_FILE*, i8***, i8***, i32*) #1

declare void @_E__pr_warn(i8*, ...) #1

declare void @bio_hdrarg_free(i8**, i8**) #1

declare i32 @bio_fread(i8*, i32, i32, %struct._IO_FILE*, i32, i32*) #1

declare void @bio_verify_chksum(%struct._IO_FILE*, i32, i32) #1

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

declare void @vector_nz_floor(float*, i32, double) #1

declare double @vector_sum_norm(float*, i32) #1

declare i32 @logs3(double) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare double @log(double) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
