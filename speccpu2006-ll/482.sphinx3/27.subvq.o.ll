; ModuleID = 'subvq.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.subvq_t = type { %struct.arraysize_t, i32, i32, i32**, %struct.vector_gautbl_t*, i32***, float*, i32**, i32*, i32* }
%struct.arraysize_t = type { i32, i32 }
%struct.vector_gautbl_t = type { i32, i32, float**, float**, float*, double }
%struct.mgau_model_t = type { i32, i32, i32, %struct.mgau_t*, double, i32, i32, i32 }
%struct.mgau_t = type { i32, float**, float**, float*, i32* }

@.str = private unnamed_addr constant [8 x i8] c"-vqeval\00", align 1
@VQ_EVAL = internal global i32 3, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"subvq.c\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"Loading Mixture Gaussian sub-VQ file '%s' (vq_eval: %d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"FATAL_ERROR\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Failed to read VQParam header\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"VQParam %d %d -> %d %d\00", align 1
@.str.8 = private unnamed_addr constant [60 x i8] c"Model size conflict: %d x %d (SubVQ) vs %d x %d (Original)\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"Using %d subvectors out of %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"WARNING\00", align 1
@.str.11 = private unnamed_addr constant [57 x i8] c"#Subvectors specified(%d) > available(%d); using latter\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"Subvector %d length %d%n\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"Error reading length(subvector %d)\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%d%n\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"Error reading subvector(%d).featdim(%d)\0A\00", align 1
@.str.16 = private unnamed_addr constant [48 x i8] c"Original #codebooks(states)/codewords: %d x %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"Subvectors: %d, VQsize: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"SV %d feature dims(%d): \00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.19 = private unnamed_addr constant [5 x i8] c" %2d\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"Reading subvq %d%s\0A\00", align 1
@.str.22 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.23 = private unnamed_addr constant [12 x i8] c" (not used)\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"Reading codebook\0A\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"Codebook %d\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"Error reading codebook header\0A\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"Error reading row(%d)\0A\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"%f %f%n\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"Error reading row(%d) col(%d)\0A\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"Reading map\0A\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"Map %d\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"Error reading map header\0A\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"End\00", align 1
@.str.35 = private unnamed_addr constant [27 x i8] c"Error reading 'End' token\0A\00", align 1
@.str.36 = private unnamed_addr constant [36 x i8] c"Warning!! Score is S3_LOGPROB_ZERO\0A\00", align 1
@.str.37 = private unnamed_addr constant [46 x i8] c"Precomputing Mahalanobis distance invariants\0A\00", align 1
@.str.38 = private unnamed_addr constant [33 x i8] c"Partially undefined map[%d][%d]\0A\00", align 1
@.str.39 = private unnamed_addr constant [69 x i8] c"Mixture %d: #Valid components conflict: %d (SubVQ) vs %d (Original)\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.subvq_t* @subvq_init(i8* %file, double %varfloor, i32 %max_sv, %struct.mgau_model_t* %g) #0 {
entry:
  %file.addr = alloca i8*, align 8
  %varfloor.addr = alloca double, align 8
  %max_sv.addr = alloca i32, align 4
  %g.addr = alloca %struct.mgau_model_t*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %line = alloca [16384 x i8], align 16
  %n_sv = alloca i32, align 4
  %s = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %n = alloca i32, align 4
  %r = alloca i32, align 4
  %c = alloca i32, align 4
  %strp = alloca i8*, align 8
  %vq = alloca %struct.subvq_t*, align 8
  store i8* %file, i8** %file.addr, align 8
  store double %varfloor, double* %varfloor.addr, align 8
  store i32 %max_sv, i32* %max_sv.addr, align 4
  store %struct.mgau_model_t* %g, %struct.mgau_model_t** %g.addr, align 8
  %call = call i8* @cmd_ln_access(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0))
  %0 = bitcast i8* %call to i32*
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* @VQ_EVAL, align 4
  call void @_E__pr_info_header(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i64 199, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0))
  %2 = load i8*, i8** %file.addr, align 8
  %3 = load i32, i32* @VQ_EVAL, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i32 0, i32 0), i8* %2, i32 %3)
  %call1 = call i8* @__ckd_calloc__(i64 1, i64 72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 201)
  %4 = bitcast i8* %call1 to %struct.subvq_t*
  store %struct.subvq_t* %4, %struct.subvq_t** %vq, align 8
  %5 = load i8*, i8** %file.addr, align 8
  %call2 = call %struct._IO_FILE* @_myfopen(i8* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 203)
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %fp, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.12, %entry
  %arraydecay = getelementptr inbounds [16384 x i8], [16384 x i8]* %line, i32 0, i32 0
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call3 = call i8* @fgets(i8* %arraydecay, i32 16384, %struct._IO_FILE* %6)
  %cmp = icmp eq i8* %call3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  call void @_E__pr_header(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i64 208, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0))
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.cond
  %arraydecay4 = getelementptr inbounds [16384 x i8], [16384 x i8]* %line, i32 0, i32 0
  %7 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %origsize = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %7, i32 0, i32 0
  %r5 = getelementptr inbounds %struct.arraysize_t, %struct.arraysize_t* %origsize, i32 0, i32 0
  %8 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %origsize6 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %8, i32 0, i32 0
  %c7 = getelementptr inbounds %struct.arraysize_t, %struct.arraysize_t* %origsize6, i32 0, i32 1
  %9 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %n_sv8 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %9, i32 0, i32 1
  %10 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %vqsize = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %10, i32 0, i32 2
  %call9 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), i32* %r5, i32* %c7, i32* %n_sv8, i32* %vqsize) #4
  %cmp10 = icmp eq i32 %call9, 4
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  br label %for.end

if.end.12:                                        ; preds = %if.end
  br label %for.cond

for.end:                                          ; preds = %if.then.11
  %11 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %tobool = icmp ne %struct.mgau_model_t* %11, null
  br i1 %tobool, label %if.then.13, label %if.end.28

if.then.13:                                       ; preds = %for.end
  %12 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %n_mgau = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %12, i32 0, i32 0
  %13 = load i32, i32* %n_mgau, align 4
  %14 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %origsize14 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %14, i32 0, i32 0
  %r15 = getelementptr inbounds %struct.arraysize_t, %struct.arraysize_t* %origsize14, i32 0, i32 0
  %15 = load i32, i32* %r15, align 4
  %cmp16 = icmp ne i32 %13, %15
  br i1 %cmp16, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.13
  %16 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %max_comp = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %16, i32 0, i32 1
  %17 = load i32, i32* %max_comp, align 4
  %18 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %origsize17 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %18, i32 0, i32 0
  %c18 = getelementptr inbounds %struct.arraysize_t, %struct.arraysize_t* %origsize17, i32 0, i32 1
  %19 = load i32, i32* %c18, align 4
  %cmp19 = icmp ne i32 %17, %19
  br i1 %cmp19, label %if.then.20, label %if.end.27

if.then.20:                                       ; preds = %lor.lhs.false, %if.then.13
  call void @_E__pr_header(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i64 216, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0))
  %20 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %origsize21 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %20, i32 0, i32 0
  %r22 = getelementptr inbounds %struct.arraysize_t, %struct.arraysize_t* %origsize21, i32 0, i32 0
  %21 = load i32, i32* %r22, align 4
  %22 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %origsize23 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %22, i32 0, i32 0
  %c24 = getelementptr inbounds %struct.arraysize_t, %struct.arraysize_t* %origsize23, i32 0, i32 1
  %23 = load i32, i32* %c24, align 4
  %24 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %n_mgau25 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %24, i32 0, i32 0
  %25 = load i32, i32* %n_mgau25, align 4
  %26 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %max_comp26 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %26, i32 0, i32 1
  %27 = load i32, i32* %max_comp26, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.8, i32 0, i32 0), i32 %21, i32 %23, i32 %25, i32 %27)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.20, %lor.lhs.false
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %for.end
  %28 = load i32, i32* %max_sv.addr, align 4
  %cmp29 = icmp slt i32 %28, 0
  br i1 %cmp29, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.end.28
  %29 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %n_sv31 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %29, i32 0, i32 1
  %30 = load i32, i32* %n_sv31, align 4
  store i32 %30, i32* %max_sv.addr, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %if.end.28
  %31 = load i32, i32* %max_sv.addr, align 4
  %32 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %n_sv33 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %32, i32 0, i32 1
  %33 = load i32, i32* %n_sv33, align 4
  %cmp34 = icmp slt i32 %31, %33
  br i1 %cmp34, label %if.then.35, label %if.else

if.then.35:                                       ; preds = %if.end.32
  call void @_E__pr_info_header(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i64 223, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0))
  %34 = load i32, i32* %max_sv.addr, align 4
  %35 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %n_sv36 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %35, i32 0, i32 1
  %36 = load i32, i32* %n_sv36, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i32 0, i32 0), i32 %34, i32 %36)
  br label %if.end.43

if.else:                                          ; preds = %if.end.32
  %37 = load i32, i32* %max_sv.addr, align 4
  %38 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %n_sv37 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %38, i32 0, i32 1
  %39 = load i32, i32* %n_sv37, align 4
  %cmp38 = icmp sgt i32 %37, %39
  br i1 %cmp38, label %if.then.39, label %if.end.42

if.then.39:                                       ; preds = %if.else
  call void @_E__pr_header(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i64 225, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0))
  %40 = load i32, i32* %max_sv.addr, align 4
  %41 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %n_sv40 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %41, i32 0, i32 1
  %42 = load i32, i32* %n_sv40, align 4
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.11, i32 0, i32 0), i32 %40, i32 %42)
  %43 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %n_sv41 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %43, i32 0, i32 1
  %44 = load i32, i32* %n_sv41, align 4
  store i32 %44, i32* %max_sv.addr, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.39, %if.else
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.then.35
  %45 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %n_sv44 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %45, i32 0, i32 1
  %46 = load i32, i32* %n_sv44, align 4
  store i32 %46, i32* %n_sv, align 4
  %47 = load i32, i32* %max_sv.addr, align 4
  %48 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %n_sv45 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %48, i32 0, i32 1
  store i32 %47, i32* %n_sv45, align 4
  %49 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %n_sv46 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %49, i32 0, i32 1
  %50 = load i32, i32* %n_sv46, align 4
  %51 = load i32, i32* @VQ_EVAL, align 4
  %cmp47 = icmp slt i32 %50, %51
  br i1 %cmp47, label %if.then.48, label %if.end.50

if.then.48:                                       ; preds = %if.end.43
  %52 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %n_sv49 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %52, i32 0, i32 1
  %53 = load i32, i32* %n_sv49, align 4
  store i32 %53, i32* @VQ_EVAL, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.48, %if.end.43
  %54 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %n_sv51 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %54, i32 0, i32 1
  %55 = load i32, i32* %n_sv51, align 4
  %conv = sext i32 %55 to i64
  %call52 = call i8* @__ckd_calloc__(i64 %conv, i64 8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 233)
  %56 = bitcast i8* %call52 to i32**
  %57 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %featdim = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %57, i32 0, i32 3
  store i32** %56, i32*** %featdim, align 8
  %58 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %n_sv53 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %58, i32 0, i32 1
  %59 = load i32, i32* %n_sv53, align 4
  %conv54 = sext i32 %59 to i64
  %call55 = call i8* @__ckd_calloc__(i64 %conv54, i64 40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 234)
  %60 = bitcast i8* %call55 to %struct.vector_gautbl_t*
  %61 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %gautbl = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %61, i32 0, i32 4
  store %struct.vector_gautbl_t* %60, %struct.vector_gautbl_t** %gautbl, align 8
  %62 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %origsize56 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %62, i32 0, i32 0
  %r57 = getelementptr inbounds %struct.arraysize_t, %struct.arraysize_t* %origsize56, i32 0, i32 0
  %63 = load i32, i32* %r57, align 4
  %64 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %origsize58 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %64, i32 0, i32 0
  %c59 = getelementptr inbounds %struct.arraysize_t, %struct.arraysize_t* %origsize58, i32 0, i32 1
  %65 = load i32, i32* %c59, align 4
  %66 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %n_sv60 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %66, i32 0, i32 1
  %67 = load i32, i32* %n_sv60, align 4
  %call61 = call i8*** @__ckd_calloc_3d__(i32 %63, i32 %65, i32 %67, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 236)
  %68 = bitcast i8*** %call61 to i32***
  %69 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %map = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %69, i32 0, i32 5
  store i32*** %68, i32**** %map, align 8
  store i32 0, i32* %s, align 4
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc.124, %if.end.50
  %70 = load i32, i32* %s, align 4
  %71 = load i32, i32* %n_sv, align 4
  %cmp63 = icmp slt i32 %70, %71
  br i1 %cmp63, label %for.body, label %for.end.126

for.body:                                         ; preds = %for.cond.62
  %arraydecay65 = getelementptr inbounds [16384 x i8], [16384 x i8]* %line, i32 0, i32 0
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call66 = call i8* @fgets(i8* %arraydecay65, i32 16384, %struct._IO_FILE* %72)
  %cmp67 = icmp eq i8* %call66, null
  br i1 %cmp67, label %if.then.77, label %lor.lhs.false.69

lor.lhs.false.69:                                 ; preds = %for.body
  %arraydecay70 = getelementptr inbounds [16384 x i8], [16384 x i8]* %line, i32 0, i32 0
  %call71 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay70, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i32 0, i32 0), i32* %k, i32* %l, i32* %n) #4
  %cmp72 = icmp ne i32 %call71, 2
  br i1 %cmp72, label %if.then.77, label %lor.lhs.false.74

lor.lhs.false.74:                                 ; preds = %lor.lhs.false.69
  %73 = load i32, i32* %k, align 4
  %74 = load i32, i32* %s, align 4
  %cmp75 = icmp ne i32 %73, %74
  br i1 %cmp75, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %lor.lhs.false.74, %lor.lhs.false.69, %for.body
  call void @_E__pr_header(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i64 242, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0))
  %75 = load i32, i32* %s, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i32 0, i32 0), i32 %75)
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.77, %lor.lhs.false.74
  %76 = load i32, i32* %s, align 4
  %77 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %n_sv79 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %77, i32 0, i32 1
  %78 = load i32, i32* %n_sv79, align 4
  %cmp80 = icmp slt i32 %76, %78
  br i1 %cmp80, label %if.then.82, label %if.end.123

if.then.82:                                       ; preds = %if.end.78
  %79 = load i32, i32* %l, align 4
  %80 = load i32, i32* %s, align 4
  %idxprom = sext i32 %80 to i64
  %81 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %gautbl83 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %81, i32 0, i32 4
  %82 = load %struct.vector_gautbl_t*, %struct.vector_gautbl_t** %gautbl83, align 8
  %arrayidx = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %82, i64 %idxprom
  %veclen = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %arrayidx, i32 0, i32 1
  store i32 %79, i32* %veclen, align 4
  %83 = load i32, i32* %s, align 4
  %idxprom84 = sext i32 %83 to i64
  %84 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %gautbl85 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %84, i32 0, i32 4
  %85 = load %struct.vector_gautbl_t*, %struct.vector_gautbl_t** %gautbl85, align 8
  %arrayidx86 = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %85, i64 %idxprom84
  %veclen87 = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %arrayidx86, i32 0, i32 1
  %86 = load i32, i32* %veclen87, align 4
  %conv88 = sext i32 %86 to i64
  %call89 = call i8* @__ckd_calloc__(i64 %conv88, i64 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 246)
  %87 = bitcast i8* %call89 to i32*
  %88 = load i32, i32* %s, align 4
  %idxprom90 = sext i32 %88 to i64
  %89 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %featdim91 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %89, i32 0, i32 3
  %90 = load i32**, i32*** %featdim91, align 8
  %arrayidx92 = getelementptr inbounds i32*, i32** %90, i64 %idxprom90
  store i32* %87, i32** %arrayidx92, align 8
  %arraydecay93 = getelementptr inbounds [16384 x i8], [16384 x i8]* %line, i32 0, i32 0
  %91 = load i32, i32* %n, align 4
  %idx.ext = sext i32 %91 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay93, i64 %idx.ext
  store i8* %add.ptr, i8** %strp, align 8
  store i32 0, i32* %c, align 4
  br label %for.cond.94

for.cond.94:                                      ; preds = %for.inc, %if.then.82
  %92 = load i32, i32* %c, align 4
  %93 = load i32, i32* %s, align 4
  %idxprom95 = sext i32 %93 to i64
  %94 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %gautbl96 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %94, i32 0, i32 4
  %95 = load %struct.vector_gautbl_t*, %struct.vector_gautbl_t** %gautbl96, align 8
  %arrayidx97 = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %95, i64 %idxprom95
  %veclen98 = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %arrayidx97, i32 0, i32 1
  %96 = load i32, i32* %veclen98, align 4
  %cmp99 = icmp slt i32 %92, %96
  br i1 %cmp99, label %for.body.101, label %for.end.114

for.body.101:                                     ; preds = %for.cond.94
  %97 = load i8*, i8** %strp, align 8
  %98 = load i32, i32* %c, align 4
  %idxprom102 = sext i32 %98 to i64
  %99 = load i32, i32* %s, align 4
  %idxprom103 = sext i32 %99 to i64
  %100 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %featdim104 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %100, i32 0, i32 3
  %101 = load i32**, i32*** %featdim104, align 8
  %arrayidx105 = getelementptr inbounds i32*, i32** %101, i64 %idxprom103
  %102 = load i32*, i32** %arrayidx105, align 8
  %arrayidx106 = getelementptr inbounds i32, i32* %102, i64 %idxprom102
  %call107 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32* %arrayidx106, i32* %n) #4
  %cmp108 = icmp ne i32 %call107, 1
  br i1 %cmp108, label %if.then.110, label %if.end.111

if.then.110:                                      ; preds = %for.body.101
  call void @_E__pr_header(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i64 250, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0))
  %103 = load i32, i32* %s, align 4
  %104 = load i32, i32* %c, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i32 0, i32 0), i32 %103, i32 %104)
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.110, %for.body.101
  %105 = load i32, i32* %n, align 4
  %106 = load i8*, i8** %strp, align 8
  %idx.ext112 = sext i32 %105 to i64
  %add.ptr113 = getelementptr inbounds i8, i8* %106, i64 %idx.ext112
  store i8* %add.ptr113, i8** %strp, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.111
  %107 = load i32, i32* %c, align 4
  %inc = add nsw i32 %107, 1
  store i32 %inc, i32* %c, align 4
  br label %for.cond.94

for.end.114:                                      ; preds = %for.cond.94
  %108 = load i32, i32* %s, align 4
  %idxprom115 = sext i32 %108 to i64
  %109 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %gautbl116 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %109, i32 0, i32 4
  %110 = load %struct.vector_gautbl_t*, %struct.vector_gautbl_t** %gautbl116, align 8
  %arrayidx117 = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %110, i64 %idxprom115
  %111 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %vqsize118 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %111, i32 0, i32 2
  %112 = load i32, i32* %vqsize118, align 4
  %113 = load i32, i32* %s, align 4
  %idxprom119 = sext i32 %113 to i64
  %114 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %gautbl120 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %114, i32 0, i32 4
  %115 = load %struct.vector_gautbl_t*, %struct.vector_gautbl_t** %gautbl120, align 8
  %arrayidx121 = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %115, i64 %idxprom119
  %veclen122 = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %arrayidx121, i32 0, i32 1
  %116 = load i32, i32* %veclen122, align 4
  call void @vector_gautbl_alloc(%struct.vector_gautbl_t* %arrayidx117, i32 %112, i32 %116)
  br label %if.end.123

if.end.123:                                       ; preds = %for.end.114, %if.end.78
  br label %for.inc.124

for.inc.124:                                      ; preds = %if.end.123
  %117 = load i32, i32* %s, align 4
  %inc125 = add nsw i32 %117, 1
  store i32 %inc125, i32* %s, align 4
  br label %for.cond.62

for.end.126:                                      ; preds = %for.cond.62
  call void @_E__pr_info_header(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i64 259, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0))
  %118 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %origsize127 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %118, i32 0, i32 0
  %r128 = getelementptr inbounds %struct.arraysize_t, %struct.arraysize_t* %origsize127, i32 0, i32 0
  %119 = load i32, i32* %r128, align 4
  %120 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %origsize129 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %120, i32 0, i32 0
  %c130 = getelementptr inbounds %struct.arraysize_t, %struct.arraysize_t* %origsize129, i32 0, i32 1
  %121 = load i32, i32* %c130, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.16, i32 0, i32 0), i32 %119, i32 %121)
  call void @_E__pr_info_header(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i64 260, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0))
  %122 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %n_sv131 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %122, i32 0, i32 1
  %123 = load i32, i32* %n_sv131, align 4
  %124 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %vqsize132 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %124, i32 0, i32 2
  %125 = load i32, i32* %vqsize132, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i32 0, i32 0), i32 %123, i32 %125)
  store i32 0, i32* %s, align 4
  br label %for.cond.133

for.cond.133:                                     ; preds = %for.inc.160, %for.end.126
  %126 = load i32, i32* %s, align 4
  %127 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %n_sv134 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %127, i32 0, i32 1
  %128 = load i32, i32* %n_sv134, align 4
  %cmp135 = icmp slt i32 %126, %128
  br i1 %cmp135, label %for.body.137, label %for.end.162

for.body.137:                                     ; preds = %for.cond.133
  call void @_E__pr_info_header(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i64 262, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0))
  %129 = load i32, i32* %s, align 4
  %130 = load i32, i32* %s, align 4
  %idxprom138 = sext i32 %130 to i64
  %131 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %gautbl139 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %131, i32 0, i32 4
  %132 = load %struct.vector_gautbl_t*, %struct.vector_gautbl_t** %gautbl139, align 8
  %arrayidx140 = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %132, i64 %idxprom138
  %veclen141 = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %arrayidx140, i32 0, i32 1
  %133 = load i32, i32* %veclen141, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i32 0, i32 0), i32 %129, i32 %133)
  store i32 0, i32* %c, align 4
  br label %for.cond.142

for.cond.142:                                     ; preds = %for.inc.156, %for.body.137
  %134 = load i32, i32* %c, align 4
  %135 = load i32, i32* %s, align 4
  %idxprom143 = sext i32 %135 to i64
  %136 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %gautbl144 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %136, i32 0, i32 4
  %137 = load %struct.vector_gautbl_t*, %struct.vector_gautbl_t** %gautbl144, align 8
  %arrayidx145 = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %137, i64 %idxprom143
  %veclen146 = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %arrayidx145, i32 0, i32 1
  %138 = load i32, i32* %veclen146, align 4
  %cmp147 = icmp slt i32 %134, %138
  br i1 %cmp147, label %for.body.149, label %for.end.158

for.body.149:                                     ; preds = %for.cond.142
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %140 = load i32, i32* %c, align 4
  %idxprom150 = sext i32 %140 to i64
  %141 = load i32, i32* %s, align 4
  %idxprom151 = sext i32 %141 to i64
  %142 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %featdim152 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %142, i32 0, i32 3
  %143 = load i32**, i32*** %featdim152, align 8
  %arrayidx153 = getelementptr inbounds i32*, i32** %143, i64 %idxprom151
  %144 = load i32*, i32** %arrayidx153, align 8
  %arrayidx154 = getelementptr inbounds i32, i32* %144, i64 %idxprom150
  %145 = load i32, i32* %arrayidx154, align 4
  %call155 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %139, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i32 %145)
  br label %for.inc.156

for.inc.156:                                      ; preds = %for.body.149
  %146 = load i32, i32* %c, align 4
  %inc157 = add nsw i32 %146, 1
  store i32 %inc157, i32* %c, align 4
  br label %for.cond.142

for.end.158:                                      ; preds = %for.cond.142
  %147 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call159 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %147, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0))
  br label %for.inc.160

for.inc.160:                                      ; preds = %for.end.158
  %148 = load i32, i32* %s, align 4
  %inc161 = add nsw i32 %148, 1
  store i32 %inc161, i32* %s, align 4
  br label %for.cond.133

for.end.162:                                      ; preds = %for.cond.133
  store i32 0, i32* %s, align 4
  br label %for.cond.163

for.cond.163:                                     ; preds = %for.inc.295, %for.end.162
  %149 = load i32, i32* %s, align 4
  %150 = load i32, i32* %n_sv, align 4
  %cmp164 = icmp slt i32 %149, %150
  br i1 %cmp164, label %for.body.166, label %for.end.297

for.body.166:                                     ; preds = %for.cond.163
  call void @_E__pr_info_header(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i64 271, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0))
  %151 = load i32, i32* %s, align 4
  %152 = load i32, i32* %s, align 4
  %153 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %n_sv167 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %153, i32 0, i32 1
  %154 = load i32, i32* %n_sv167, align 4
  %cmp168 = icmp slt i32 %152, %154
  %cond = select i1 %cmp168, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0)
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0), i32 %151, i8* %cond)
  call void @_E__pr_info_header(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i64 273, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0))
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0))
  %arraydecay170 = getelementptr inbounds [16384 x i8], [16384 x i8]* %line, i32 0, i32 0
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call171 = call i8* @fgets(i8* %arraydecay170, i32 16384, %struct._IO_FILE* %155)
  %cmp172 = icmp eq i8* %call171, null
  br i1 %cmp172, label %if.then.182, label %lor.lhs.false.174

lor.lhs.false.174:                                ; preds = %for.body.166
  %arraydecay175 = getelementptr inbounds [16384 x i8], [16384 x i8]* %line, i32 0, i32 0
  %call176 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay175, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0), i32* %k) #4
  %cmp177 = icmp ne i32 %call176, 1
  br i1 %cmp177, label %if.then.182, label %lor.lhs.false.179

lor.lhs.false.179:                                ; preds = %lor.lhs.false.174
  %156 = load i32, i32* %k, align 4
  %157 = load i32, i32* %s, align 4
  %cmp180 = icmp ne i32 %156, %157
  br i1 %cmp180, label %if.then.182, label %if.end.183

if.then.182:                                      ; preds = %lor.lhs.false.179, %lor.lhs.false.174, %for.body.166
  call void @_E__pr_header(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i64 276, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0))
  %158 = load i32, i32* %s, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i32 0, i32 0), i32 %158)
  br label %if.end.183

if.end.183:                                       ; preds = %if.then.182, %lor.lhs.false.179
  store i32 0, i32* %r, align 4
  br label %for.cond.184

for.cond.184:                                     ; preds = %for.inc.233, %if.end.183
  %159 = load i32, i32* %r, align 4
  %160 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %vqsize185 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %160, i32 0, i32 2
  %161 = load i32, i32* %vqsize185, align 4
  %cmp186 = icmp slt i32 %159, %161
  br i1 %cmp186, label %for.body.188, label %for.end.235

for.body.188:                                     ; preds = %for.cond.184
  %arraydecay189 = getelementptr inbounds [16384 x i8], [16384 x i8]* %line, i32 0, i32 0
  %162 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call190 = call i8* @fgets(i8* %arraydecay189, i32 16384, %struct._IO_FILE* %162)
  %cmp191 = icmp eq i8* %call190, null
  br i1 %cmp191, label %if.then.193, label %if.end.194

if.then.193:                                      ; preds = %for.body.188
  call void @_E__pr_header(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i64 280, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0))
  %163 = load i32, i32* %r, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.27, i32 0, i32 0), i32 %163)
  br label %if.end.194

if.end.194:                                       ; preds = %if.then.193, %for.body.188
  %164 = load i32, i32* %s, align 4
  %165 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %n_sv195 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %165, i32 0, i32 1
  %166 = load i32, i32* %n_sv195, align 4
  %cmp196 = icmp sge i32 %164, %166
  br i1 %cmp196, label %if.then.198, label %if.end.199

if.then.198:                                      ; preds = %if.end.194
  br label %for.inc.233

if.end.199:                                       ; preds = %if.end.194
  %arraydecay200 = getelementptr inbounds [16384 x i8], [16384 x i8]* %line, i32 0, i32 0
  store i8* %arraydecay200, i8** %strp, align 8
  store i32 0, i32* %c, align 4
  br label %for.cond.201

for.cond.201:                                     ; preds = %for.inc.230, %if.end.199
  %167 = load i32, i32* %c, align 4
  %168 = load i32, i32* %s, align 4
  %idxprom202 = sext i32 %168 to i64
  %169 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %gautbl203 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %169, i32 0, i32 4
  %170 = load %struct.vector_gautbl_t*, %struct.vector_gautbl_t** %gautbl203, align 8
  %arrayidx204 = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %170, i64 %idxprom202
  %veclen205 = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %arrayidx204, i32 0, i32 1
  %171 = load i32, i32* %veclen205, align 4
  %cmp206 = icmp slt i32 %167, %171
  br i1 %cmp206, label %for.body.208, label %for.end.232

for.body.208:                                     ; preds = %for.cond.201
  %172 = load i8*, i8** %strp, align 8
  %173 = load i32, i32* %c, align 4
  %idxprom209 = sext i32 %173 to i64
  %174 = load i32, i32* %r, align 4
  %idxprom210 = sext i32 %174 to i64
  %175 = load i32, i32* %s, align 4
  %idxprom211 = sext i32 %175 to i64
  %176 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %gautbl212 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %176, i32 0, i32 4
  %177 = load %struct.vector_gautbl_t*, %struct.vector_gautbl_t** %gautbl212, align 8
  %arrayidx213 = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %177, i64 %idxprom211
  %mean = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %arrayidx213, i32 0, i32 2
  %178 = load float**, float*** %mean, align 8
  %arrayidx214 = getelementptr inbounds float*, float** %178, i64 %idxprom210
  %179 = load float*, float** %arrayidx214, align 8
  %arrayidx215 = getelementptr inbounds float, float* %179, i64 %idxprom209
  %180 = load i32, i32* %c, align 4
  %idxprom216 = sext i32 %180 to i64
  %181 = load i32, i32* %r, align 4
  %idxprom217 = sext i32 %181 to i64
  %182 = load i32, i32* %s, align 4
  %idxprom218 = sext i32 %182 to i64
  %183 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %gautbl219 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %183, i32 0, i32 4
  %184 = load %struct.vector_gautbl_t*, %struct.vector_gautbl_t** %gautbl219, align 8
  %arrayidx220 = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %184, i64 %idxprom218
  %var = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %arrayidx220, i32 0, i32 3
  %185 = load float**, float*** %var, align 8
  %arrayidx221 = getelementptr inbounds float*, float** %185, i64 %idxprom217
  %186 = load float*, float** %arrayidx221, align 8
  %arrayidx222 = getelementptr inbounds float, float* %186, i64 %idxprom216
  %call223 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %172, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), float* %arrayidx215, float* %arrayidx222, i32* %k) #4
  %cmp224 = icmp ne i32 %call223, 2
  br i1 %cmp224, label %if.then.226, label %if.end.227

if.then.226:                                      ; preds = %for.body.208
  call void @_E__pr_header(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i64 288, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0))
  %187 = load i32, i32* %r, align 4
  %188 = load i32, i32* %c, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i32 0, i32 0), i32 %187, i32 %188)
  br label %if.end.227

if.end.227:                                       ; preds = %if.then.226, %for.body.208
  %189 = load i32, i32* %k, align 4
  %190 = load i8*, i8** %strp, align 8
  %idx.ext228 = sext i32 %189 to i64
  %add.ptr229 = getelementptr inbounds i8, i8* %190, i64 %idx.ext228
  store i8* %add.ptr229, i8** %strp, align 8
  br label %for.inc.230

for.inc.230:                                      ; preds = %if.end.227
  %191 = load i32, i32* %c, align 4
  %inc231 = add nsw i32 %191, 1
  store i32 %inc231, i32* %c, align 4
  br label %for.cond.201

for.end.232:                                      ; preds = %for.cond.201
  br label %for.inc.233

for.inc.233:                                      ; preds = %for.end.232, %if.then.198
  %192 = load i32, i32* %r, align 4
  %inc234 = add nsw i32 %192, 1
  store i32 %inc234, i32* %r, align 4
  br label %for.cond.184

for.end.235:                                      ; preds = %for.cond.184
  call void @_E__pr_info_header(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i64 293, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0))
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0))
  %arraydecay236 = getelementptr inbounds [16384 x i8], [16384 x i8]* %line, i32 0, i32 0
  %193 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call237 = call i8* @fgets(i8* %arraydecay236, i32 16384, %struct._IO_FILE* %193)
  %cmp238 = icmp eq i8* %call237, null
  br i1 %cmp238, label %if.then.248, label %lor.lhs.false.240

lor.lhs.false.240:                                ; preds = %for.end.235
  %arraydecay241 = getelementptr inbounds [16384 x i8], [16384 x i8]* %line, i32 0, i32 0
  %call242 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay241, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i32* %k) #4
  %cmp243 = icmp ne i32 %call242, 1
  br i1 %cmp243, label %if.then.248, label %lor.lhs.false.245

lor.lhs.false.245:                                ; preds = %lor.lhs.false.240
  %194 = load i32, i32* %k, align 4
  %195 = load i32, i32* %s, align 4
  %cmp246 = icmp ne i32 %194, %195
  br i1 %cmp246, label %if.then.248, label %if.end.249

if.then.248:                                      ; preds = %lor.lhs.false.245, %lor.lhs.false.240, %for.end.235
  call void @_E__pr_header(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i64 296, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0))
  %196 = load i32, i32* %s, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.32, i32 0, i32 0), i32 %196)
  br label %if.end.249

if.end.249:                                       ; preds = %if.then.248, %lor.lhs.false.245
  store i32 0, i32* %r, align 4
  br label %for.cond.250

for.cond.250:                                     ; preds = %for.inc.291, %if.end.249
  %197 = load i32, i32* %r, align 4
  %198 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %origsize251 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %198, i32 0, i32 0
  %r252 = getelementptr inbounds %struct.arraysize_t, %struct.arraysize_t* %origsize251, i32 0, i32 0
  %199 = load i32, i32* %r252, align 4
  %cmp253 = icmp slt i32 %197, %199
  br i1 %cmp253, label %for.body.255, label %for.end.293

for.body.255:                                     ; preds = %for.cond.250
  %arraydecay256 = getelementptr inbounds [16384 x i8], [16384 x i8]* %line, i32 0, i32 0
  %200 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call257 = call i8* @fgets(i8* %arraydecay256, i32 16384, %struct._IO_FILE* %200)
  %cmp258 = icmp eq i8* %call257, null
  br i1 %cmp258, label %if.then.260, label %if.end.261

if.then.260:                                      ; preds = %for.body.255
  call void @_E__pr_header(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0))
  %201 = load i32, i32* %r, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.27, i32 0, i32 0), i32 %201)
  br label %if.end.261

if.end.261:                                       ; preds = %if.then.260, %for.body.255
  %202 = load i32, i32* %s, align 4
  %203 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %n_sv262 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %203, i32 0, i32 1
  %204 = load i32, i32* %n_sv262, align 4
  %cmp263 = icmp sge i32 %202, %204
  br i1 %cmp263, label %if.then.265, label %if.end.266

if.then.265:                                      ; preds = %if.end.261
  br label %for.inc.291

if.end.266:                                       ; preds = %if.end.261
  %arraydecay267 = getelementptr inbounds [16384 x i8], [16384 x i8]* %line, i32 0, i32 0
  store i8* %arraydecay267, i8** %strp, align 8
  store i32 0, i32* %c, align 4
  br label %for.cond.268

for.cond.268:                                     ; preds = %for.inc.288, %if.end.266
  %205 = load i32, i32* %c, align 4
  %206 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %origsize269 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %206, i32 0, i32 0
  %c270 = getelementptr inbounds %struct.arraysize_t, %struct.arraysize_t* %origsize269, i32 0, i32 1
  %207 = load i32, i32* %c270, align 4
  %cmp271 = icmp slt i32 %205, %207
  br i1 %cmp271, label %for.body.273, label %for.end.290

for.body.273:                                     ; preds = %for.cond.268
  %208 = load i8*, i8** %strp, align 8
  %209 = load i32, i32* %s, align 4
  %idxprom274 = sext i32 %209 to i64
  %210 = load i32, i32* %c, align 4
  %idxprom275 = sext i32 %210 to i64
  %211 = load i32, i32* %r, align 4
  %idxprom276 = sext i32 %211 to i64
  %212 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %map277 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %212, i32 0, i32 5
  %213 = load i32***, i32**** %map277, align 8
  %arrayidx278 = getelementptr inbounds i32**, i32*** %213, i64 %idxprom276
  %214 = load i32**, i32*** %arrayidx278, align 8
  %arrayidx279 = getelementptr inbounds i32*, i32** %214, i64 %idxprom275
  %215 = load i32*, i32** %arrayidx279, align 8
  %arrayidx280 = getelementptr inbounds i32, i32* %215, i64 %idxprom274
  %call281 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %208, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32* %arrayidx280, i32* %k) #4
  %cmp282 = icmp ne i32 %call281, 1
  br i1 %cmp282, label %if.then.284, label %if.end.285

if.then.284:                                      ; preds = %for.body.273
  call void @_E__pr_header(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i64 307, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0))
  %216 = load i32, i32* %r, align 4
  %217 = load i32, i32* %c, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i32 0, i32 0), i32 %216, i32 %217)
  br label %if.end.285

if.end.285:                                       ; preds = %if.then.284, %for.body.273
  %218 = load i32, i32* %k, align 4
  %219 = load i8*, i8** %strp, align 8
  %idx.ext286 = sext i32 %218 to i64
  %add.ptr287 = getelementptr inbounds i8, i8* %219, i64 %idx.ext286
  store i8* %add.ptr287, i8** %strp, align 8
  br label %for.inc.288

for.inc.288:                                      ; preds = %if.end.285
  %220 = load i32, i32* %c, align 4
  %inc289 = add nsw i32 %220, 1
  store i32 %inc289, i32* %c, align 4
  br label %for.cond.268

for.end.290:                                      ; preds = %for.cond.268
  br label %for.inc.291

for.inc.291:                                      ; preds = %for.end.290, %if.then.265
  %221 = load i32, i32* %r, align 4
  %inc292 = add nsw i32 %221, 1
  store i32 %inc292, i32* %r, align 4
  br label %for.cond.250

for.end.293:                                      ; preds = %for.cond.250
  %222 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call294 = call i32 @fflush(%struct._IO_FILE* %222)
  br label %for.inc.295

for.inc.295:                                      ; preds = %for.end.293
  %223 = load i32, i32* %s, align 4
  %inc296 = add nsw i32 %223, 1
  store i32 %inc296, i32* %s, align 4
  br label %for.cond.163

for.end.297:                                      ; preds = %for.cond.163
  %224 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %arraydecay298 = getelementptr inbounds [16384 x i8], [16384 x i8]* %line, i32 0, i32 0
  %call299 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %224, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i32 0, i32 0), i8* %arraydecay298)
  %cmp300 = icmp ne i32 %call299, 1
  br i1 %cmp300, label %if.then.307, label %lor.lhs.false.302

lor.lhs.false.302:                                ; preds = %for.end.297
  %arraydecay303 = getelementptr inbounds [16384 x i8], [16384 x i8]* %line, i32 0, i32 0
  %call304 = call i32 @strcmp(i8* %arraydecay303, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0)) #5
  %cmp305 = icmp ne i32 %call304, 0
  br i1 %cmp305, label %if.then.307, label %if.end.308

if.then.307:                                      ; preds = %lor.lhs.false.302, %for.end.297
  call void @_E__pr_header(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i64 316, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0))
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.35, i32 0, i32 0))
  br label %if.end.308

if.end.308:                                       ; preds = %if.then.307, %lor.lhs.false.302
  %225 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call309 = call i32 @fclose(%struct._IO_FILE* %225)
  %226 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %227 = load double, double* %varfloor.addr, align 8
  call void @subvq_maha_precomp(%struct.subvq_t* %226, double %227)
  %228 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %229 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  call void @subvq_map_compact(%struct.subvq_t* %228, %struct.mgau_model_t* %229)
  %230 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  call void @subvq_map_linearize(%struct.subvq_t* %230)
  store i32 0, i32* %n, align 4
  store i32 0, i32* %s, align 4
  br label %for.cond.310

for.cond.310:                                     ; preds = %for.inc.326, %if.end.308
  %231 = load i32, i32* %s, align 4
  %232 = load i32, i32* %n_sv, align 4
  %cmp311 = icmp slt i32 %231, %232
  br i1 %cmp311, label %for.body.313, label %for.end.328

for.body.313:                                     ; preds = %for.cond.310
  %233 = load i32, i32* %s, align 4
  %idxprom314 = sext i32 %233 to i64
  %234 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %gautbl315 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %234, i32 0, i32 4
  %235 = load %struct.vector_gautbl_t*, %struct.vector_gautbl_t** %gautbl315, align 8
  %arrayidx316 = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %235, i64 %idxprom314
  %veclen317 = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %arrayidx316, i32 0, i32 1
  %236 = load i32, i32* %veclen317, align 4
  %237 = load i32, i32* %n, align 4
  %cmp318 = icmp sgt i32 %236, %237
  br i1 %cmp318, label %if.then.320, label %if.end.325

if.then.320:                                      ; preds = %for.body.313
  %238 = load i32, i32* %s, align 4
  %idxprom321 = sext i32 %238 to i64
  %239 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %gautbl322 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %239, i32 0, i32 4
  %240 = load %struct.vector_gautbl_t*, %struct.vector_gautbl_t** %gautbl322, align 8
  %arrayidx323 = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %240, i64 %idxprom321
  %veclen324 = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %arrayidx323, i32 0, i32 1
  %241 = load i32, i32* %veclen324, align 4
  store i32 %241, i32* %n, align 4
  br label %if.end.325

if.end.325:                                       ; preds = %if.then.320, %for.body.313
  br label %for.inc.326

for.inc.326:                                      ; preds = %if.end.325
  %242 = load i32, i32* %s, align 4
  %inc327 = add nsw i32 %242, 1
  store i32 %inc327, i32* %s, align 4
  br label %for.cond.310

for.end.328:                                      ; preds = %for.cond.310
  %243 = load i32, i32* %n, align 4
  %conv329 = sext i32 %243 to i64
  %call330 = call i8* @__ckd_calloc__(i64 %conv329, i64 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 330)
  %244 = bitcast i8* %call330 to float*
  %245 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %subvec = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %245, i32 0, i32 6
  store float* %244, float** %subvec, align 8
  %246 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %n_sv331 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %246, i32 0, i32 1
  %247 = load i32, i32* %n_sv331, align 4
  %248 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %vqsize332 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %248, i32 0, i32 2
  %249 = load i32, i32* %vqsize332, align 4
  %call333 = call i8** @__ckd_calloc_2d__(i32 %247, i32 %249, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 331)
  %250 = bitcast i8** %call333 to i32**
  %251 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %vqdist = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %251, i32 0, i32 7
  store i32** %250, i32*** %vqdist, align 8
  %252 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %origsize334 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %252, i32 0, i32 0
  %c335 = getelementptr inbounds %struct.arraysize_t, %struct.arraysize_t* %origsize334, i32 0, i32 1
  %253 = load i32, i32* %c335, align 4
  %conv336 = sext i32 %253 to i64
  %call337 = call i8* @__ckd_calloc__(i64 %conv336, i64 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 332)
  %254 = bitcast i8* %call337 to i32*
  %255 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %gauscore = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %255, i32 0, i32 8
  store i32* %254, i32** %gauscore, align 8
  %256 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %origsize338 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %256, i32 0, i32 0
  %c339 = getelementptr inbounds %struct.arraysize_t, %struct.arraysize_t* %origsize338, i32 0, i32 1
  %257 = load i32, i32* %c339, align 4
  %add = add nsw i32 %257, 1
  %conv340 = sext i32 %add to i64
  %call341 = call i8* @__ckd_calloc__(i64 %conv340, i64 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 333)
  %258 = bitcast i8* %call341 to i32*
  %259 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  %mgau_sl = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %259, i32 0, i32 9
  store i32* %258, i32** %mgau_sl, align 8
  %260 = load %struct.subvq_t*, %struct.subvq_t** %vq, align 8
  ret %struct.subvq_t* %260
}

declare i8* @cmd_ln_access(i8*) #1

declare void @_E__pr_info_header(i8*, i64, i8*) #1

declare void @_E__pr_info(i8*, ...) #1

declare i8* @__ckd_calloc__(i64, i64, i8*, i32) #1

declare %struct._IO_FILE* @_myfopen(i8*, i8*, i8*, i32) #1

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

declare void @_E__pr_header(i8*, i64, i8*) #1

declare void @_E__die_error(i8*, ...) #1

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #2

declare void @_E__pr_warn(i8*, ...) #1

declare i8*** @__ckd_calloc_3d__(i32, i32, i32, i32, i8*, i32) #1

declare void @vector_gautbl_alloc(%struct.vector_gautbl_t*, i32, i32) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @fflush(%struct._IO_FILE*) #1

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal void @subvq_maha_precomp(%struct.subvq_t* %svq, double %floor) #0 {
entry:
  %svq.addr = alloca %struct.subvq_t*, align 8
  %floor.addr = alloca double, align 8
  %s = alloca i32, align 4
  %lrd = alloca float*, align 8
  %gautbl = alloca %struct.vector_gautbl_t*, align 8
  store %struct.subvq_t* %svq, %struct.subvq_t** %svq.addr, align 8
  store double %floor, double* %floor.addr, align 8
  call void @_E__pr_info_header(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i64 103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0))
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.37, i32 0, i32 0))
  %0 = load %struct.subvq_t*, %struct.subvq_t** %svq.addr, align 8
  %n_sv = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %0, i32 0, i32 1
  %1 = load i32, i32* %n_sv, align 4
  %2 = load %struct.subvq_t*, %struct.subvq_t** %svq.addr, align 8
  %vqsize = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %2, i32 0, i32 2
  %3 = load i32, i32* %vqsize, align 4
  %mul = mul nsw i32 %1, %3
  %conv = sext i32 %mul to i64
  %call = call i8* @__ckd_calloc__(i64 %conv, i64 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 105)
  %4 = bitcast i8* %call to float*
  store float* %4, float** %lrd, align 8
  store i32 0, i32* %s, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %s, align 4
  %6 = load %struct.subvq_t*, %struct.subvq_t** %svq.addr, align 8
  %n_sv1 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %6, i32 0, i32 1
  %7 = load i32, i32* %n_sv1, align 4
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %s, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.subvq_t*, %struct.subvq_t** %svq.addr, align 8
  %gautbl3 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %9, i32 0, i32 4
  %10 = load %struct.vector_gautbl_t*, %struct.vector_gautbl_t** %gautbl3, align 8
  %arrayidx = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %10, i64 %idxprom
  store %struct.vector_gautbl_t* %arrayidx, %struct.vector_gautbl_t** %gautbl, align 8
  %11 = load %struct.vector_gautbl_t*, %struct.vector_gautbl_t** %gautbl, align 8
  %12 = load double, double* %floor.addr, align 8
  call void @vector_gautbl_var_floor(%struct.vector_gautbl_t* %11, double %12)
  %13 = load float*, float** %lrd, align 8
  %14 = load %struct.vector_gautbl_t*, %struct.vector_gautbl_t** %gautbl, align 8
  %lrd4 = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %14, i32 0, i32 4
  store float* %13, float** %lrd4, align 8
  %15 = load %struct.subvq_t*, %struct.subvq_t** %svq.addr, align 8
  %vqsize5 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %15, i32 0, i32 2
  %16 = load i32, i32* %vqsize5, align 4
  %17 = load float*, float** %lrd, align 8
  %idx.ext = sext i32 %16 to i64
  %add.ptr = getelementptr inbounds float, float* %17, i64 %idx.ext
  store float* %add.ptr, float** %lrd, align 8
  %18 = load %struct.vector_gautbl_t*, %struct.vector_gautbl_t** %gautbl, align 8
  call void @vector_gautbl_maha_precomp(%struct.vector_gautbl_t* %18)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %s, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %s, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @subvq_map_compact(%struct.subvq_t* %vq, %struct.mgau_model_t* %g) #0 {
entry:
  %vq.addr = alloca %struct.subvq_t*, align 8
  %g.addr = alloca %struct.mgau_model_t*, align 8
  %r = alloca i32, align 4
  %c = alloca i32, align 4
  %c2 = alloca i32, align 4
  %s = alloca i32, align 4
  store %struct.subvq_t* %vq, %struct.subvq_t** %vq.addr, align 8
  store %struct.mgau_model_t* %g, %struct.mgau_model_t** %g.addr, align 8
  %0 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %tobool = icmp ne %struct.mgau_model_t* %0, null
  br i1 %tobool, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  %1 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %n_mgau = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %1, i32 0, i32 0
  %2 = load i32, i32* %n_mgau, align 4
  %3 = load %struct.subvq_t*, %struct.subvq_t** %vq.addr, align 8
  %origsize = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %3, i32 0, i32 0
  %r1 = getelementptr inbounds %struct.arraysize_t, %struct.arraysize_t* %origsize, i32 0, i32 0
  %4 = load i32, i32* %r1, align 4
  %cmp = icmp ne i32 %2, %4
  br i1 %cmp, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %5 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %max_comp = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %5, i32 0, i32 1
  %6 = load i32, i32* %max_comp, align 4
  %7 = load %struct.subvq_t*, %struct.subvq_t** %vq.addr, align 8
  %origsize2 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %7, i32 0, i32 0
  %c3 = getelementptr inbounds %struct.arraysize_t, %struct.arraysize_t* %origsize2, i32 0, i32 1
  %8 = load i32, i32* %c3, align 4
  %cmp4 = icmp ne i32 %6, %8
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %lor.lhs.false, %if.then
  call void @_E__pr_header(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i64 125, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0))
  %9 = load %struct.subvq_t*, %struct.subvq_t** %vq.addr, align 8
  %origsize6 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %9, i32 0, i32 0
  %r7 = getelementptr inbounds %struct.arraysize_t, %struct.arraysize_t* %origsize6, i32 0, i32 0
  %10 = load i32, i32* %r7, align 4
  %11 = load %struct.subvq_t*, %struct.subvq_t** %vq.addr, align 8
  %origsize8 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %11, i32 0, i32 0
  %c9 = getelementptr inbounds %struct.arraysize_t, %struct.arraysize_t* %origsize8, i32 0, i32 1
  %12 = load i32, i32* %c9, align 4
  %13 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %n_mgau10 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %13, i32 0, i32 0
  %14 = load i32, i32* %n_mgau10, align 4
  %15 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %max_comp11 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %15, i32 0, i32 1
  %16 = load i32, i32* %max_comp11, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.8, i32 0, i32 0), i32 %10, i32 %12, i32 %14, i32 %16)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %lor.lhs.false
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %entry
  store i32 0, i32* %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.110, %if.end.12
  %17 = load i32, i32* %r, align 4
  %18 = load %struct.subvq_t*, %struct.subvq_t** %vq.addr, align 8
  %origsize13 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %18, i32 0, i32 0
  %r14 = getelementptr inbounds %struct.arraysize_t, %struct.arraysize_t* %origsize13, i32 0, i32 0
  %19 = load i32, i32* %r14, align 4
  %cmp15 = icmp slt i32 %17, %19
  br i1 %cmp15, label %for.body, label %for.end.112

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %c, align 4
  store i32 0, i32* %c2, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.75, %for.body
  %20 = load i32, i32* %c, align 4
  %21 = load %struct.subvq_t*, %struct.subvq_t** %vq.addr, align 8
  %origsize17 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %21, i32 0, i32 0
  %c18 = getelementptr inbounds %struct.arraysize_t, %struct.arraysize_t* %origsize17, i32 0, i32 1
  %22 = load i32, i32* %c18, align 4
  %cmp19 = icmp slt i32 %20, %22
  br i1 %cmp19, label %for.body.20, label %for.end.77

for.body.20:                                      ; preds = %for.cond.16
  %23 = load i32, i32* %c, align 4
  %idxprom = sext i32 %23 to i64
  %24 = load i32, i32* %r, align 4
  %idxprom21 = sext i32 %24 to i64
  %25 = load %struct.subvq_t*, %struct.subvq_t** %vq.addr, align 8
  %map = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %25, i32 0, i32 5
  %26 = load i32***, i32**** %map, align 8
  %arrayidx = getelementptr inbounds i32**, i32*** %26, i64 %idxprom21
  %27 = load i32**, i32*** %arrayidx, align 8
  %arrayidx22 = getelementptr inbounds i32*, i32** %27, i64 %idxprom
  %28 = load i32*, i32** %arrayidx22, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %28, i64 0
  %29 = load i32, i32* %arrayidx23, align 4
  %cmp24 = icmp slt i32 %29, 0
  br i1 %cmp24, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %for.body.20
  store i32 1, i32* %s, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc, %if.then.25
  %30 = load i32, i32* %s, align 4
  %31 = load %struct.subvq_t*, %struct.subvq_t** %vq.addr, align 8
  %n_sv = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %31, i32 0, i32 1
  %32 = load i32, i32* %n_sv, align 4
  %cmp27 = icmp slt i32 %30, %32
  br i1 %cmp27, label %for.body.28, label %for.end

for.body.28:                                      ; preds = %for.cond.26
  %33 = load i32, i32* %s, align 4
  %idxprom29 = sext i32 %33 to i64
  %34 = load i32, i32* %c, align 4
  %idxprom30 = sext i32 %34 to i64
  %35 = load i32, i32* %r, align 4
  %idxprom31 = sext i32 %35 to i64
  %36 = load %struct.subvq_t*, %struct.subvq_t** %vq.addr, align 8
  %map32 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %36, i32 0, i32 5
  %37 = load i32***, i32**** %map32, align 8
  %arrayidx33 = getelementptr inbounds i32**, i32*** %37, i64 %idxprom31
  %38 = load i32**, i32*** %arrayidx33, align 8
  %arrayidx34 = getelementptr inbounds i32*, i32** %38, i64 %idxprom30
  %39 = load i32*, i32** %arrayidx34, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %39, i64 %idxprom29
  %40 = load i32, i32* %arrayidx35, align 4
  %cmp36 = icmp sge i32 %40, 0
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %for.body.28
  call void @_E__pr_header(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i64 141, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0))
  %41 = load i32, i32* %r, align 4
  %42 = load i32, i32* %c, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.38, i32 0, i32 0), i32 %41, i32 %42)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %for.body.28
  br label %for.inc

for.inc:                                          ; preds = %if.end.38
  %43 = load i32, i32* %s, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %s, align 4
  br label %for.cond.26

for.end:                                          ; preds = %for.cond.26
  br label %if.end.74

if.else:                                          ; preds = %for.body.20
  %44 = load i32, i32* %c2, align 4
  %45 = load i32, i32* %c, align 4
  %cmp39 = icmp ne i32 %44, %45
  br i1 %cmp39, label %if.then.40, label %if.end.72

if.then.40:                                       ; preds = %if.else
  store i32 0, i32* %s, align 4
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.69, %if.then.40
  %46 = load i32, i32* %s, align 4
  %47 = load %struct.subvq_t*, %struct.subvq_t** %vq.addr, align 8
  %n_sv42 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %47, i32 0, i32 1
  %48 = load i32, i32* %n_sv42, align 4
  %cmp43 = icmp slt i32 %46, %48
  br i1 %cmp43, label %for.body.44, label %for.end.71

for.body.44:                                      ; preds = %for.cond.41
  %49 = load i32, i32* %s, align 4
  %idxprom45 = sext i32 %49 to i64
  %50 = load i32, i32* %c, align 4
  %idxprom46 = sext i32 %50 to i64
  %51 = load i32, i32* %r, align 4
  %idxprom47 = sext i32 %51 to i64
  %52 = load %struct.subvq_t*, %struct.subvq_t** %vq.addr, align 8
  %map48 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %52, i32 0, i32 5
  %53 = load i32***, i32**** %map48, align 8
  %arrayidx49 = getelementptr inbounds i32**, i32*** %53, i64 %idxprom47
  %54 = load i32**, i32*** %arrayidx49, align 8
  %arrayidx50 = getelementptr inbounds i32*, i32** %54, i64 %idxprom46
  %55 = load i32*, i32** %arrayidx50, align 8
  %arrayidx51 = getelementptr inbounds i32, i32* %55, i64 %idxprom45
  %56 = load i32, i32* %arrayidx51, align 4
  %cmp52 = icmp slt i32 %56, 0
  br i1 %cmp52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %for.body.44
  call void @_E__pr_header(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i64 147, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0))
  %57 = load i32, i32* %r, align 4
  %58 = load i32, i32* %c, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.38, i32 0, i32 0), i32 %57, i32 %58)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %for.body.44
  %59 = load i32, i32* %s, align 4
  %idxprom55 = sext i32 %59 to i64
  %60 = load i32, i32* %c, align 4
  %idxprom56 = sext i32 %60 to i64
  %61 = load i32, i32* %r, align 4
  %idxprom57 = sext i32 %61 to i64
  %62 = load %struct.subvq_t*, %struct.subvq_t** %vq.addr, align 8
  %map58 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %62, i32 0, i32 5
  %63 = load i32***, i32**** %map58, align 8
  %arrayidx59 = getelementptr inbounds i32**, i32*** %63, i64 %idxprom57
  %64 = load i32**, i32*** %arrayidx59, align 8
  %arrayidx60 = getelementptr inbounds i32*, i32** %64, i64 %idxprom56
  %65 = load i32*, i32** %arrayidx60, align 8
  %arrayidx61 = getelementptr inbounds i32, i32* %65, i64 %idxprom55
  %66 = load i32, i32* %arrayidx61, align 4
  %67 = load i32, i32* %s, align 4
  %idxprom62 = sext i32 %67 to i64
  %68 = load i32, i32* %c2, align 4
  %idxprom63 = sext i32 %68 to i64
  %69 = load i32, i32* %r, align 4
  %idxprom64 = sext i32 %69 to i64
  %70 = load %struct.subvq_t*, %struct.subvq_t** %vq.addr, align 8
  %map65 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %70, i32 0, i32 5
  %71 = load i32***, i32**** %map65, align 8
  %arrayidx66 = getelementptr inbounds i32**, i32*** %71, i64 %idxprom64
  %72 = load i32**, i32*** %arrayidx66, align 8
  %arrayidx67 = getelementptr inbounds i32*, i32** %72, i64 %idxprom63
  %73 = load i32*, i32** %arrayidx67, align 8
  %arrayidx68 = getelementptr inbounds i32, i32* %73, i64 %idxprom62
  store i32 %66, i32* %arrayidx68, align 4
  br label %for.inc.69

for.inc.69:                                       ; preds = %if.end.54
  %74 = load i32, i32* %s, align 4
  %inc70 = add nsw i32 %74, 1
  store i32 %inc70, i32* %s, align 4
  br label %for.cond.41

for.end.71:                                       ; preds = %for.cond.41
  br label %if.end.72

if.end.72:                                        ; preds = %for.end.71, %if.else
  %75 = load i32, i32* %c2, align 4
  %inc73 = add nsw i32 %75, 1
  store i32 %inc73, i32* %c2, align 4
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.72, %for.end
  br label %for.inc.75

for.inc.75:                                       ; preds = %if.end.74
  %76 = load i32, i32* %c, align 4
  %inc76 = add nsw i32 %76, 1
  store i32 %inc76, i32* %c, align 4
  br label %for.cond.16

for.end.77:                                       ; preds = %for.cond.16
  %77 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %tobool78 = icmp ne %struct.mgau_model_t* %77, null
  br i1 %tobool78, label %land.lhs.true, label %if.end.87

land.lhs.true:                                    ; preds = %for.end.77
  %78 = load i32, i32* %c2, align 4
  %79 = load i32, i32* %r, align 4
  %idxprom79 = sext i32 %79 to i64
  %80 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %mgau = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %80, i32 0, i32 3
  %81 = load %struct.mgau_t*, %struct.mgau_t** %mgau, align 8
  %arrayidx80 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %81, i64 %idxprom79
  %n_comp = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %arrayidx80, i32 0, i32 0
  %82 = load i32, i32* %n_comp, align 4
  %cmp81 = icmp ne i32 %78, %82
  br i1 %cmp81, label %if.then.82, label %if.end.87

if.then.82:                                       ; preds = %land.lhs.true
  call void @_E__pr_header(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i64 156, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0))
  %83 = load i32, i32* %r, align 4
  %84 = load i32, i32* %c2, align 4
  %85 = load i32, i32* %r, align 4
  %idxprom83 = sext i32 %85 to i64
  %86 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %mgau84 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %86, i32 0, i32 3
  %87 = load %struct.mgau_t*, %struct.mgau_t** %mgau84, align 8
  %arrayidx85 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %87, i64 %idxprom83
  %n_comp86 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %arrayidx85, i32 0, i32 0
  %88 = load i32, i32* %n_comp86, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.39, i32 0, i32 0), i32 %83, i32 %84, i32 %88)
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.82, %land.lhs.true, %for.end.77
  br label %for.cond.88

for.cond.88:                                      ; preds = %for.inc.107, %if.end.87
  %89 = load i32, i32* %c2, align 4
  %90 = load %struct.subvq_t*, %struct.subvq_t** %vq.addr, align 8
  %origsize89 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %90, i32 0, i32 0
  %c90 = getelementptr inbounds %struct.arraysize_t, %struct.arraysize_t* %origsize89, i32 0, i32 1
  %91 = load i32, i32* %c90, align 4
  %cmp91 = icmp slt i32 %89, %91
  br i1 %cmp91, label %for.body.92, label %for.end.109

for.body.92:                                      ; preds = %for.cond.88
  store i32 0, i32* %s, align 4
  br label %for.cond.93

for.cond.93:                                      ; preds = %for.inc.104, %for.body.92
  %92 = load i32, i32* %s, align 4
  %93 = load %struct.subvq_t*, %struct.subvq_t** %vq.addr, align 8
  %n_sv94 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %93, i32 0, i32 1
  %94 = load i32, i32* %n_sv94, align 4
  %cmp95 = icmp slt i32 %92, %94
  br i1 %cmp95, label %for.body.96, label %for.end.106

for.body.96:                                      ; preds = %for.cond.93
  %95 = load i32, i32* %s, align 4
  %idxprom97 = sext i32 %95 to i64
  %96 = load i32, i32* %c2, align 4
  %idxprom98 = sext i32 %96 to i64
  %97 = load i32, i32* %r, align 4
  %idxprom99 = sext i32 %97 to i64
  %98 = load %struct.subvq_t*, %struct.subvq_t** %vq.addr, align 8
  %map100 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %98, i32 0, i32 5
  %99 = load i32***, i32**** %map100, align 8
  %arrayidx101 = getelementptr inbounds i32**, i32*** %99, i64 %idxprom99
  %100 = load i32**, i32*** %arrayidx101, align 8
  %arrayidx102 = getelementptr inbounds i32*, i32** %100, i64 %idxprom98
  %101 = load i32*, i32** %arrayidx102, align 8
  %arrayidx103 = getelementptr inbounds i32, i32* %101, i64 %idxprom97
  store i32 -1, i32* %arrayidx103, align 4
  br label %for.inc.104

for.inc.104:                                      ; preds = %for.body.96
  %102 = load i32, i32* %s, align 4
  %inc105 = add nsw i32 %102, 1
  store i32 %inc105, i32* %s, align 4
  br label %for.cond.93

for.end.106:                                      ; preds = %for.cond.93
  br label %for.inc.107

for.inc.107:                                      ; preds = %for.end.106
  %103 = load i32, i32* %c2, align 4
  %inc108 = add nsw i32 %103, 1
  store i32 %inc108, i32* %c2, align 4
  br label %for.cond.88

for.end.109:                                      ; preds = %for.cond.88
  br label %for.inc.110

for.inc.110:                                      ; preds = %for.end.109
  %104 = load i32, i32* %r, align 4
  %inc111 = add nsw i32 %104, 1
  store i32 %inc111, i32* %r, align 4
  br label %for.cond

for.end.112:                                      ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @subvq_map_linearize(%struct.subvq_t* %vq) #0 {
entry:
  %vq.addr = alloca %struct.subvq_t*, align 8
  %r = alloca i32, align 4
  %c = alloca i32, align 4
  %s = alloca i32, align 4
  store %struct.subvq_t* %vq, %struct.subvq_t** %vq.addr, align 8
  store i32 0, i32* %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.31, %entry
  %0 = load i32, i32* %r, align 4
  %1 = load %struct.subvq_t*, %struct.subvq_t** %vq.addr, align 8
  %origsize = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %1, i32 0, i32 0
  %r1 = getelementptr inbounds %struct.arraysize_t, %struct.arraysize_t* %origsize, i32 0, i32 0
  %2 = load i32, i32* %r1, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end.33

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %c, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.28, %for.body
  %3 = load i32, i32* %c, align 4
  %4 = load %struct.subvq_t*, %struct.subvq_t** %vq.addr, align 8
  %origsize3 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %4, i32 0, i32 0
  %c4 = getelementptr inbounds %struct.arraysize_t, %struct.arraysize_t* %origsize3, i32 0, i32 1
  %5 = load i32, i32* %c4, align 4
  %cmp5 = icmp slt i32 %3, %5
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.2
  %6 = load i32, i32* %c, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32, i32* %r, align 4
  %idxprom6 = sext i32 %7 to i64
  %8 = load %struct.subvq_t*, %struct.subvq_t** %vq.addr, align 8
  %map = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %8, i32 0, i32 5
  %9 = load i32***, i32**** %map, align 8
  %arrayidx = getelementptr inbounds i32**, i32*** %9, i64 %idxprom6
  %10 = load i32**, i32*** %arrayidx, align 8
  %arrayidx7 = getelementptr inbounds i32*, i32** %10, i64 %idxprom
  %11 = load i32*, i32** %arrayidx7, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %11, i64 0
  %12 = load i32, i32* %arrayidx8, align 4
  %cmp9 = icmp sge i32 %12, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.2
  %13 = phi i1 [ false, %for.cond.2 ], [ %cmp9, %land.rhs ]
  br i1 %13, label %for.body.10, label %for.end.30

for.body.10:                                      ; preds = %land.end
  store i32 0, i32* %s, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc, %for.body.10
  %14 = load i32, i32* %s, align 4
  %15 = load %struct.subvq_t*, %struct.subvq_t** %vq.addr, align 8
  %n_sv = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %15, i32 0, i32 1
  %16 = load i32, i32* %n_sv, align 4
  %cmp12 = icmp slt i32 %14, %16
  br i1 %cmp12, label %for.body.13, label %for.end

for.body.13:                                      ; preds = %for.cond.11
  %17 = load i32, i32* %s, align 4
  %18 = load %struct.subvq_t*, %struct.subvq_t** %vq.addr, align 8
  %vqsize = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %18, i32 0, i32 2
  %19 = load i32, i32* %vqsize, align 4
  %mul = mul nsw i32 %17, %19
  %20 = load i32, i32* %s, align 4
  %idxprom14 = sext i32 %20 to i64
  %21 = load i32, i32* %c, align 4
  %idxprom15 = sext i32 %21 to i64
  %22 = load i32, i32* %r, align 4
  %idxprom16 = sext i32 %22 to i64
  %23 = load %struct.subvq_t*, %struct.subvq_t** %vq.addr, align 8
  %map17 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %23, i32 0, i32 5
  %24 = load i32***, i32**** %map17, align 8
  %arrayidx18 = getelementptr inbounds i32**, i32*** %24, i64 %idxprom16
  %25 = load i32**, i32*** %arrayidx18, align 8
  %arrayidx19 = getelementptr inbounds i32*, i32** %25, i64 %idxprom15
  %26 = load i32*, i32** %arrayidx19, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %26, i64 %idxprom14
  %27 = load i32, i32* %arrayidx20, align 4
  %add = add nsw i32 %mul, %27
  %28 = load i32, i32* %s, align 4
  %idxprom21 = sext i32 %28 to i64
  %29 = load i32, i32* %c, align 4
  %idxprom22 = sext i32 %29 to i64
  %30 = load i32, i32* %r, align 4
  %idxprom23 = sext i32 %30 to i64
  %31 = load %struct.subvq_t*, %struct.subvq_t** %vq.addr, align 8
  %map24 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %31, i32 0, i32 5
  %32 = load i32***, i32**** %map24, align 8
  %arrayidx25 = getelementptr inbounds i32**, i32*** %32, i64 %idxprom23
  %33 = load i32**, i32*** %arrayidx25, align 8
  %arrayidx26 = getelementptr inbounds i32*, i32** %33, i64 %idxprom22
  %34 = load i32*, i32** %arrayidx26, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %34, i64 %idxprom21
  store i32 %add, i32* %arrayidx27, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.13
  %35 = load i32, i32* %s, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %s, align 4
  br label %for.cond.11

for.end:                                          ; preds = %for.cond.11
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.end
  %36 = load i32, i32* %c, align 4
  %inc29 = add nsw i32 %36, 1
  store i32 %inc29, i32* %c, align 4
  br label %for.cond.2

for.end.30:                                       ; preds = %land.end
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.end.30
  %37 = load i32, i32* %r, align 4
  %inc32 = add nsw i32 %37, 1
  store i32 %inc32, i32* %r, align 4
  br label %for.cond

for.end.33:                                       ; preds = %for.cond
  ret void
}

declare i8** @__ckd_calloc_2d__(i32, i32, i32, i8*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @subvq_mgau_shortlist(%struct.subvq_t* %vq, i32 %m, i32 %n, i32 %beam) #0 {
entry:
  %vq.addr = alloca %struct.subvq_t*, align 8
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %beam.addr = alloca i32, align 4
  %gauscore = alloca i32*, align 8
  %map = alloca i32*, align 8
  %i = alloca i32, align 4
  %v = alloca i32, align 4
  %bv = alloca i32, align 4
  %th = alloca i32, align 4
  %nc = alloca i32, align 4
  %sl = alloca i32*, align 8
  %vqdist = alloca i32*, align 8
  %sv_id = alloca i32, align 4
  store %struct.subvq_t* %vq, %struct.subvq_t** %vq.addr, align 8
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %beam, i32* %beam.addr, align 4
  %0 = load %struct.subvq_t*, %struct.subvq_t** %vq.addr, align 8
  %vqdist1 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %0, i32 0, i32 7
  %1 = load i32**, i32*** %vqdist1, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %1, i64 0
  %2 = load i32*, i32** %arrayidx, align 8
  store i32* %2, i32** %vqdist, align 8
  %3 = load %struct.subvq_t*, %struct.subvq_t** %vq.addr, align 8
  %gauscore2 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %3, i32 0, i32 8
  %4 = load i32*, i32** %gauscore2, align 8
  store i32* %4, i32** %gauscore, align 8
  %5 = load %struct.subvq_t*, %struct.subvq_t** %vq.addr, align 8
  %mgau_sl = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %5, i32 0, i32 9
  %6 = load i32*, i32** %mgau_sl, align 8
  store i32* %6, i32** %sl, align 8
  %7 = load i32, i32* %m.addr, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.subvq_t*, %struct.subvq_t** %vq.addr, align 8
  %map3 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %8, i32 0, i32 5
  %9 = load i32***, i32**** %map3, align 8
  %arrayidx4 = getelementptr inbounds i32**, i32*** %9, i64 %idxprom
  %10 = load i32**, i32*** %arrayidx4, align 8
  %arrayidx5 = getelementptr inbounds i32*, i32** %10, i64 0
  %11 = load i32*, i32** %arrayidx5, align 8
  store i32* %11, i32** %map, align 8
  store i32 -2147483648, i32* %bv, align 4
  %12 = load %struct.subvq_t*, %struct.subvq_t** %vq.addr, align 8
  %n_sv = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %12, i32 0, i32 1
  %13 = load i32, i32* %n_sv, align 4
  switch i32 %13, label %sw.default [
    i32 3, label %sw.bb
    i32 2, label %sw.bb.34
    i32 1, label %sw.bb.53
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %14, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* @VQ_EVAL, align 4
  %cmp6 = icmp eq i32 %16, 1
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %17 = load i32*, i32** %map, align 8
  %18 = load i32, i32* %17, align 4
  %idxprom7 = sext i32 %18 to i64
  %19 = load i32*, i32** %vqdist, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %19, i64 %idxprom7
  %20 = load i32, i32* %arrayidx8, align 4
  store i32 %20, i32* %v, align 4
  %21 = load i32*, i32** %map, align 8
  %add.ptr = getelementptr inbounds i32, i32* %21, i64 3
  store i32* %add.ptr, i32** %map, align 8
  br label %if.end.28

if.else:                                          ; preds = %for.body
  %22 = load i32, i32* @VQ_EVAL, align 4
  %cmp9 = icmp eq i32 %22, 2
  br i1 %cmp9, label %if.then.10, label %if.else.16

if.then.10:                                       ; preds = %if.else
  %23 = load i32*, i32** %map, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %incdec.ptr, i32** %map, align 8
  %24 = load i32, i32* %23, align 4
  %idxprom11 = sext i32 %24 to i64
  %25 = load i32*, i32** %vqdist, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %25, i64 %idxprom11
  %26 = load i32, i32* %arrayidx12, align 4
  store i32 %26, i32* %v, align 4
  %27 = load i32*, i32** %map, align 8
  %28 = load i32, i32* %27, align 4
  %idxprom13 = sext i32 %28 to i64
  %29 = load i32*, i32** %vqdist, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %29, i64 %idxprom13
  %30 = load i32, i32* %arrayidx14, align 4
  %mul = mul nsw i32 2, %30
  %31 = load i32, i32* %v, align 4
  %add = add nsw i32 %31, %mul
  store i32 %add, i32* %v, align 4
  %32 = load i32*, i32** %map, align 8
  %add.ptr15 = getelementptr inbounds i32, i32* %32, i64 2
  store i32* %add.ptr15, i32** %map, align 8
  br label %if.end

if.else.16:                                       ; preds = %if.else
  %33 = load i32*, i32** %map, align 8
  %incdec.ptr17 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %incdec.ptr17, i32** %map, align 8
  %34 = load i32, i32* %33, align 4
  %idxprom18 = sext i32 %34 to i64
  %35 = load i32*, i32** %vqdist, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %35, i64 %idxprom18
  %36 = load i32, i32* %arrayidx19, align 4
  store i32 %36, i32* %v, align 4
  %37 = load i32*, i32** %map, align 8
  %incdec.ptr20 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %incdec.ptr20, i32** %map, align 8
  %38 = load i32, i32* %37, align 4
  %idxprom21 = sext i32 %38 to i64
  %39 = load i32*, i32** %vqdist, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %39, i64 %idxprom21
  %40 = load i32, i32* %arrayidx22, align 4
  %41 = load i32, i32* %v, align 4
  %add23 = add nsw i32 %41, %40
  store i32 %add23, i32* %v, align 4
  %42 = load i32*, i32** %map, align 8
  %incdec.ptr24 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %incdec.ptr24, i32** %map, align 8
  %43 = load i32, i32* %42, align 4
  %idxprom25 = sext i32 %43 to i64
  %44 = load i32*, i32** %vqdist, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %44, i64 %idxprom25
  %45 = load i32, i32* %arrayidx26, align 4
  %46 = load i32, i32* %v, align 4
  %add27 = add nsw i32 %46, %45
  store i32 %add27, i32* %v, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.16, %if.then.10
  br label %if.end.28

if.end.28:                                        ; preds = %if.end, %if.then
  %47 = load i32, i32* %v, align 4
  %48 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %48 to i64
  %49 = load i32*, i32** %gauscore, align 8
  %arrayidx30 = getelementptr inbounds i32, i32* %49, i64 %idxprom29
  store i32 %47, i32* %arrayidx30, align 4
  %50 = load i32, i32* %bv, align 4
  %51 = load i32, i32* %v, align 4
  %cmp31 = icmp slt i32 %50, %51
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.28
  %52 = load i32, i32* %v, align 4
  store i32 %52, i32* %bv, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.end.28
  br label %for.inc

for.inc:                                          ; preds = %if.end.33
  %53 = load i32, i32* %i, align 4
  %inc = add nsw i32 %53, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.bb.34:                                         ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.50, %sw.bb.34
  %54 = load i32, i32* %i, align 4
  %55 = load i32, i32* %n.addr, align 4
  %cmp36 = icmp slt i32 %54, %55
  br i1 %cmp36, label %for.body.37, label %for.end.52

for.body.37:                                      ; preds = %for.cond.35
  %56 = load i32*, i32** %map, align 8
  %incdec.ptr38 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %incdec.ptr38, i32** %map, align 8
  %57 = load i32, i32* %56, align 4
  %idxprom39 = sext i32 %57 to i64
  %58 = load i32*, i32** %vqdist, align 8
  %arrayidx40 = getelementptr inbounds i32, i32* %58, i64 %idxprom39
  %59 = load i32, i32* %arrayidx40, align 4
  store i32 %59, i32* %v, align 4
  %60 = load i32*, i32** %map, align 8
  %incdec.ptr41 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %incdec.ptr41, i32** %map, align 8
  %61 = load i32, i32* %60, align 4
  %idxprom42 = sext i32 %61 to i64
  %62 = load i32*, i32** %vqdist, align 8
  %arrayidx43 = getelementptr inbounds i32, i32* %62, i64 %idxprom42
  %63 = load i32, i32* %arrayidx43, align 4
  %64 = load i32, i32* %v, align 4
  %add44 = add nsw i32 %64, %63
  store i32 %add44, i32* %v, align 4
  %65 = load i32, i32* %v, align 4
  %66 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %66 to i64
  %67 = load i32*, i32** %gauscore, align 8
  %arrayidx46 = getelementptr inbounds i32, i32* %67, i64 %idxprom45
  store i32 %65, i32* %arrayidx46, align 4
  %68 = load i32, i32* %bv, align 4
  %69 = load i32, i32* %v, align 4
  %cmp47 = icmp slt i32 %68, %69
  br i1 %cmp47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %for.body.37
  %70 = load i32, i32* %v, align 4
  store i32 %70, i32* %bv, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.48, %for.body.37
  br label %for.inc.50

for.inc.50:                                       ; preds = %if.end.49
  %71 = load i32, i32* %i, align 4
  %inc51 = add nsw i32 %71, 1
  store i32 %inc51, i32* %i, align 4
  br label %for.cond.35

for.end.52:                                       ; preds = %for.cond.35
  br label %sw.epilog

sw.bb.53:                                         ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.65, %sw.bb.53
  %72 = load i32, i32* %i, align 4
  %73 = load i32, i32* %n.addr, align 4
  %cmp55 = icmp slt i32 %72, %73
  br i1 %cmp55, label %for.body.56, label %for.end.67

for.body.56:                                      ; preds = %for.cond.54
  %74 = load i32*, i32** %map, align 8
  %incdec.ptr57 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %incdec.ptr57, i32** %map, align 8
  %75 = load i32, i32* %74, align 4
  %idxprom58 = sext i32 %75 to i64
  %76 = load i32*, i32** %vqdist, align 8
  %arrayidx59 = getelementptr inbounds i32, i32* %76, i64 %idxprom58
  %77 = load i32, i32* %arrayidx59, align 4
  store i32 %77, i32* %v, align 4
  %78 = load i32, i32* %v, align 4
  %79 = load i32, i32* %i, align 4
  %idxprom60 = sext i32 %79 to i64
  %80 = load i32*, i32** %gauscore, align 8
  %arrayidx61 = getelementptr inbounds i32, i32* %80, i64 %idxprom60
  store i32 %78, i32* %arrayidx61, align 4
  %81 = load i32, i32* %bv, align 4
  %82 = load i32, i32* %v, align 4
  %cmp62 = icmp slt i32 %81, %82
  br i1 %cmp62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %for.body.56
  %83 = load i32, i32* %v, align 4
  store i32 %83, i32* %bv, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.63, %for.body.56
  br label %for.inc.65

for.inc.65:                                       ; preds = %if.end.64
  %84 = load i32, i32* %i, align 4
  %inc66 = add nsw i32 %84, 1
  store i32 %inc66, i32* %i, align 4
  br label %for.cond.54

for.end.67:                                       ; preds = %for.cond.54
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond.68

for.cond.68:                                      ; preds = %for.inc.87, %sw.default
  %85 = load i32, i32* %i, align 4
  %86 = load i32, i32* %n.addr, align 4
  %cmp69 = icmp slt i32 %85, %86
  br i1 %cmp69, label %for.body.70, label %for.end.89

for.body.70:                                      ; preds = %for.cond.68
  store i32 0, i32* %v, align 4
  store i32 0, i32* %sv_id, align 4
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc.79, %for.body.70
  %87 = load i32, i32* %sv_id, align 4
  %88 = load %struct.subvq_t*, %struct.subvq_t** %vq.addr, align 8
  %n_sv72 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %88, i32 0, i32 1
  %89 = load i32, i32* %n_sv72, align 4
  %cmp73 = icmp slt i32 %87, %89
  br i1 %cmp73, label %for.body.74, label %for.end.81

for.body.74:                                      ; preds = %for.cond.71
  %90 = load i32*, i32** %map, align 8
  %incdec.ptr75 = getelementptr inbounds i32, i32* %90, i32 1
  store i32* %incdec.ptr75, i32** %map, align 8
  %91 = load i32, i32* %90, align 4
  %idxprom76 = sext i32 %91 to i64
  %92 = load i32*, i32** %vqdist, align 8
  %arrayidx77 = getelementptr inbounds i32, i32* %92, i64 %idxprom76
  %93 = load i32, i32* %arrayidx77, align 4
  %94 = load i32, i32* %v, align 4
  %add78 = add nsw i32 %94, %93
  store i32 %add78, i32* %v, align 4
  br label %for.inc.79

for.inc.79:                                       ; preds = %for.body.74
  %95 = load i32, i32* %sv_id, align 4
  %inc80 = add nsw i32 %95, 1
  store i32 %inc80, i32* %sv_id, align 4
  br label %for.cond.71

for.end.81:                                       ; preds = %for.cond.71
  %96 = load i32, i32* %v, align 4
  %97 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %97 to i64
  %98 = load i32*, i32** %gauscore, align 8
  %arrayidx83 = getelementptr inbounds i32, i32* %98, i64 %idxprom82
  store i32 %96, i32* %arrayidx83, align 4
  %99 = load i32, i32* %bv, align 4
  %100 = load i32, i32* %v, align 4
  %cmp84 = icmp slt i32 %99, %100
  br i1 %cmp84, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %for.end.81
  %101 = load i32, i32* %v, align 4
  store i32 %101, i32* %bv, align 4
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.85, %for.end.81
  br label %for.inc.87

for.inc.87:                                       ; preds = %if.end.86
  %102 = load i32, i32* %i, align 4
  %inc88 = add nsw i32 %102, 1
  store i32 %inc88, i32* %i, align 4
  br label %for.cond.68

for.end.89:                                       ; preds = %for.cond.68
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end.89, %for.end.67, %for.end.52, %for.end
  %103 = load i32, i32* %bv, align 4
  %104 = load i32, i32* %beam.addr, align 4
  %add90 = add nsw i32 %103, %104
  store i32 %add90, i32* %th, align 4
  store i32 0, i32* %nc, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.91

for.cond.91:                                      ; preds = %for.inc.102, %sw.epilog
  %105 = load i32, i32* %i, align 4
  %106 = load i32, i32* %n.addr, align 4
  %cmp92 = icmp slt i32 %105, %106
  br i1 %cmp92, label %for.body.93, label %for.end.104

for.body.93:                                      ; preds = %for.cond.91
  %107 = load i32, i32* %i, align 4
  %idxprom94 = sext i32 %107 to i64
  %108 = load i32*, i32** %gauscore, align 8
  %arrayidx95 = getelementptr inbounds i32, i32* %108, i64 %idxprom94
  %109 = load i32, i32* %arrayidx95, align 4
  %110 = load i32, i32* %th, align 4
  %cmp96 = icmp sge i32 %109, %110
  br i1 %cmp96, label %if.then.97, label %if.end.101

if.then.97:                                       ; preds = %for.body.93
  %111 = load i32, i32* %i, align 4
  %112 = load i32, i32* %nc, align 4
  %inc98 = add nsw i32 %112, 1
  store i32 %inc98, i32* %nc, align 4
  %idxprom99 = sext i32 %112 to i64
  %113 = load i32*, i32** %sl, align 8
  %arrayidx100 = getelementptr inbounds i32, i32* %113, i64 %idxprom99
  store i32 %111, i32* %arrayidx100, align 4
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.97, %for.body.93
  br label %for.inc.102

for.inc.102:                                      ; preds = %if.end.101
  %114 = load i32, i32* %i, align 4
  %inc103 = add nsw i32 %114, 1
  store i32 %inc103, i32* %i, align 4
  br label %for.cond.91

for.end.104:                                      ; preds = %for.cond.91
  %115 = load i32, i32* %nc, align 4
  %idxprom105 = sext i32 %115 to i64
  %116 = load i32*, i32** %sl, align 8
  %arrayidx106 = getelementptr inbounds i32, i32* %116, i64 %idxprom105
  store i32 -1, i32* %arrayidx106, align 4
  %117 = load i32, i32* %nc, align 4
  ret i32 %117
}

; Function Attrs: nounwind uwtable
define void @subvq_subvec_eval_logs3(%struct.subvq_t* %vq, float* %feat, i32 %s) #0 {
entry:
  %vq.addr = alloca %struct.subvq_t*, align 8
  %feat.addr = alloca float*, align 8
  %s.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %featdim = alloca i32*, align 8
  store %struct.subvq_t* %vq, %struct.subvq_t** %vq.addr, align 8
  store float* %feat, float** %feat.addr, align 8
  store i32 %s, i32* %s.addr, align 4
  %0 = load i32, i32* %s.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.subvq_t*, %struct.subvq_t** %vq.addr, align 8
  %featdim1 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %1, i32 0, i32 3
  %2 = load i32**, i32*** %featdim1, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %2, i64 %idxprom
  %3 = load i32*, i32** %arrayidx, align 8
  store i32* %3, i32** %featdim, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %s.addr, align 4
  %idxprom2 = sext i32 %5 to i64
  %6 = load %struct.subvq_t*, %struct.subvq_t** %vq.addr, align 8
  %gautbl = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %6, i32 0, i32 4
  %7 = load %struct.vector_gautbl_t*, %struct.vector_gautbl_t** %gautbl, align 8
  %arrayidx3 = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %7, i64 %idxprom2
  %veclen = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %arrayidx3, i32 0, i32 1
  %8 = load i32, i32* %veclen, align 4
  %cmp = icmp slt i32 %4, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %9 to i64
  %10 = load i32*, i32** %featdim, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %10, i64 %idxprom4
  %11 = load i32, i32* %arrayidx5, align 4
  %idxprom6 = sext i32 %11 to i64
  %12 = load float*, float** %feat.addr, align 8
  %arrayidx7 = getelementptr inbounds float, float* %12, i64 %idxprom6
  %13 = load float, float* %arrayidx7, align 4
  %14 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %14 to i64
  %15 = load %struct.subvq_t*, %struct.subvq_t** %vq.addr, align 8
  %subvec = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %15, i32 0, i32 6
  %16 = load float*, float** %subvec, align 8
  %arrayidx9 = getelementptr inbounds float, float* %16, i64 %idxprom8
  store float %13, float* %arrayidx9, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* %s.addr, align 4
  %idxprom10 = sext i32 %18 to i64
  %19 = load %struct.subvq_t*, %struct.subvq_t** %vq.addr, align 8
  %gautbl11 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %19, i32 0, i32 4
  %20 = load %struct.vector_gautbl_t*, %struct.vector_gautbl_t** %gautbl11, align 8
  %arrayidx12 = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %20, i64 %idxprom10
  %21 = load %struct.subvq_t*, %struct.subvq_t** %vq.addr, align 8
  %vqsize = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %21, i32 0, i32 2
  %22 = load i32, i32* %vqsize, align 4
  %23 = load %struct.subvq_t*, %struct.subvq_t** %vq.addr, align 8
  %subvec13 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %23, i32 0, i32 6
  %24 = load float*, float** %subvec13, align 8
  %25 = load i32, i32* %s.addr, align 4
  %idxprom14 = sext i32 %25 to i64
  %26 = load %struct.subvq_t*, %struct.subvq_t** %vq.addr, align 8
  %vqdist = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %26, i32 0, i32 7
  %27 = load i32**, i32*** %vqdist, align 8
  %arrayidx15 = getelementptr inbounds i32*, i32** %27, i64 %idxprom14
  %28 = load i32*, i32** %arrayidx15, align 8
  call void @vector_gautbl_eval_logs3(%struct.vector_gautbl_t* %arrayidx12, i32 0, i32 %22, float* %24, i32* %28)
  ret void
}

declare void @vector_gautbl_eval_logs3(%struct.vector_gautbl_t*, i32, i32, float*, i32*) #1

; Function Attrs: nounwind uwtable
define void @subvq_gautbl_eval_logs3(%struct.subvq_t* %vq, float* %feat) #0 {
entry:
  %vq.addr = alloca %struct.subvq_t*, align 8
  %feat.addr = alloca float*, align 8
  %s = alloca i32, align 4
  %i = alloca i32, align 4
  %featdim = alloca i32*, align 8
  store %struct.subvq_t* %vq, %struct.subvq_t** %vq.addr, align 8
  store float* %feat, float** %feat.addr, align 8
  store i32 0, i32* %s, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.20, %entry
  %0 = load i32, i32* %s, align 4
  %1 = load %struct.subvq_t*, %struct.subvq_t** %vq.addr, align 8
  %n_sv = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %1, i32 0, i32 1
  %2 = load i32, i32* %n_sv, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end.22

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %s, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.subvq_t*, %struct.subvq_t** %vq.addr, align 8
  %featdim1 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %4, i32 0, i32 3
  %5 = load i32**, i32*** %featdim1, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %5, i64 %idxprom
  %6 = load i32*, i32** %arrayidx, align 8
  store i32* %6, i32** %featdim, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %s, align 4
  %idxprom3 = sext i32 %8 to i64
  %9 = load %struct.subvq_t*, %struct.subvq_t** %vq.addr, align 8
  %gautbl = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %9, i32 0, i32 4
  %10 = load %struct.vector_gautbl_t*, %struct.vector_gautbl_t** %gautbl, align 8
  %arrayidx4 = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %10, i64 %idxprom3
  %veclen = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %arrayidx4, i32 0, i32 1
  %11 = load i32, i32* %veclen, align 4
  %cmp5 = icmp slt i32 %7, %11
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.2
  %12 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %12 to i64
  %13 = load i32*, i32** %featdim, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %13, i64 %idxprom7
  %14 = load i32, i32* %arrayidx8, align 4
  %idxprom9 = sext i32 %14 to i64
  %15 = load float*, float** %feat.addr, align 8
  %arrayidx10 = getelementptr inbounds float, float* %15, i64 %idxprom9
  %16 = load float, float* %arrayidx10, align 4
  %17 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %17 to i64
  %18 = load %struct.subvq_t*, %struct.subvq_t** %vq.addr, align 8
  %subvec = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %18, i32 0, i32 6
  %19 = load float*, float** %subvec, align 8
  %arrayidx12 = getelementptr inbounds float, float* %19, i64 %idxprom11
  store float %16, float* %arrayidx12, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  %21 = load i32, i32* %s, align 4
  %22 = load i32, i32* @VQ_EVAL, align 4
  %cmp13 = icmp slt i32 %21, %22
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %23 = load i32, i32* %s, align 4
  %idxprom14 = sext i32 %23 to i64
  %24 = load %struct.subvq_t*, %struct.subvq_t** %vq.addr, align 8
  %gautbl15 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %24, i32 0, i32 4
  %25 = load %struct.vector_gautbl_t*, %struct.vector_gautbl_t** %gautbl15, align 8
  %arrayidx16 = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %25, i64 %idxprom14
  %26 = load %struct.subvq_t*, %struct.subvq_t** %vq.addr, align 8
  %vqsize = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %26, i32 0, i32 2
  %27 = load i32, i32* %vqsize, align 4
  %28 = load %struct.subvq_t*, %struct.subvq_t** %vq.addr, align 8
  %subvec17 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %28, i32 0, i32 6
  %29 = load float*, float** %subvec17, align 8
  %30 = load i32, i32* %s, align 4
  %idxprom18 = sext i32 %30 to i64
  %31 = load %struct.subvq_t*, %struct.subvq_t** %vq.addr, align 8
  %vqdist = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %31, i32 0, i32 7
  %32 = load i32**, i32*** %vqdist, align 8
  %arrayidx19 = getelementptr inbounds i32*, i32** %32, i64 %idxprom18
  %33 = load i32*, i32** %arrayidx19, align 8
  call void @vector_gautbl_eval_logs3(%struct.vector_gautbl_t* %arrayidx16, i32 0, i32 %27, float* %29, i32* %33)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  br label %for.inc.20

for.inc.20:                                       ; preds = %if.end
  %34 = load i32, i32* %s, align 4
  %inc21 = add nsw i32 %34, 1
  store i32 %inc21, i32* %s, align 4
  br label %for.cond

for.end.22:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @subvq_frame_eval(%struct.subvq_t* %vq, %struct.mgau_model_t* %g, i32 %beam, float* %feat, i32* %sen_active, i32* %senscr) #0 {
entry:
  %vq.addr = alloca %struct.subvq_t*, align 8
  %g.addr = alloca %struct.mgau_model_t*, align 8
  %beam.addr = alloca i32, align 4
  %feat.addr = alloca float*, align 8
  %sen_active.addr = alloca i32*, align 8
  %senscr.addr = alloca i32*, align 8
  %s = alloca i32, align 4
  %best = alloca i32, align 4
  %ns = alloca i32, align 4
  %ng = alloca i32, align 4
  store %struct.subvq_t* %vq, %struct.subvq_t** %vq.addr, align 8
  store %struct.mgau_model_t* %g, %struct.mgau_model_t** %g.addr, align 8
  store i32 %beam, i32* %beam.addr, align 4
  store float* %feat, float** %feat.addr, align 8
  store i32* %sen_active, i32** %sen_active.addr, align 8
  store i32* %senscr, i32** %senscr.addr, align 8
  store i32 -2147483648, i32* %best, align 4
  store i32 0, i32* %ns, align 4
  store i32 0, i32* %ng, align 4
  %0 = load %struct.subvq_t*, %struct.subvq_t** %vq.addr, align 8
  %tobool = icmp ne %struct.subvq_t* %0, null
  br i1 %tobool, label %if.else.18, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %s, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %s, align 4
  %2 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %n_mgau = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %2, i32 0, i32 0
  %3 = load i32, i32* %n_mgau, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32*, i32** %sen_active.addr, align 8
  %tobool1 = icmp ne i32* %4, null
  br i1 %tobool1, label %lor.lhs.false, label %if.then.3

lor.lhs.false:                                    ; preds = %for.body
  %5 = load i32, i32* %s, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i32*, i32** %sen_active.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  %tobool2 = icmp ne i32 %7, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %lor.lhs.false, %for.body
  %8 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %9 = load i32, i32* %s, align 4
  %10 = load float*, float** %feat.addr, align 8
  %call = call i32 @mgau_eval(%struct.mgau_model_t* %8, i32 %9, i32* null, float* %10)
  %11 = load i32, i32* %s, align 4
  %idxprom4 = sext i32 %11 to i64
  %12 = load i32*, i32** %senscr.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %12, i64 %idxprom4
  store i32 %call, i32* %arrayidx5, align 4
  %13 = load i32, i32* %best, align 4
  %14 = load i32, i32* %s, align 4
  %idxprom6 = sext i32 %14 to i64
  %15 = load i32*, i32** %senscr.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %15, i64 %idxprom6
  %16 = load i32, i32* %arrayidx7, align 4
  %cmp8 = icmp slt i32 %13, %16
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then.3
  %17 = load i32, i32* %s, align 4
  %idxprom10 = sext i32 %17 to i64
  %18 = load i32*, i32** %senscr.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %18, i64 %idxprom10
  %19 = load i32, i32* %arrayidx11, align 4
  store i32 %19, i32* %best, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.then.3
  %20 = load i32, i32* %ns, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %ns, align 4
  %21 = load i32, i32* %s, align 4
  %idxprom12 = sext i32 %21 to i64
  %22 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %mgau = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %22, i32 0, i32 3
  %23 = load %struct.mgau_t*, %struct.mgau_t** %mgau, align 8
  %arrayidx13 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %23, i64 %idxprom12
  %n_comp = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %arrayidx13, i32 0, i32 0
  %24 = load i32, i32* %n_comp, align 4
  %25 = load i32, i32* %ng, align 4
  %add = add nsw i32 %25, %24
  store i32 %add, i32* %ng, align 4
  br label %if.end.16

if.else:                                          ; preds = %lor.lhs.false
  %26 = load i32, i32* %s, align 4
  %idxprom14 = sext i32 %26 to i64
  %27 = load i32*, i32** %senscr.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %27, i64 %idxprom14
  store i32 -939524096, i32* %arrayidx15, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %28 = load i32, i32* %s, align 4
  %inc17 = add nsw i32 %28, 1
  store i32 %inc17, i32* %s, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.53

if.else.18:                                       ; preds = %entry
  %29 = load %struct.subvq_t*, %struct.subvq_t** %vq.addr, align 8
  %30 = load float*, float** %feat.addr, align 8
  call void @subvq_gautbl_eval_logs3(%struct.subvq_t* %29, float* %30)
  store i32 0, i32* %s, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.50, %if.else.18
  %31 = load i32, i32* %s, align 4
  %32 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %n_mgau20 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %32, i32 0, i32 0
  %33 = load i32, i32* %n_mgau20, align 4
  %cmp21 = icmp slt i32 %31, %33
  br i1 %cmp21, label %for.body.22, label %for.end.52

for.body.22:                                      ; preds = %for.cond.19
  %34 = load i32*, i32** %sen_active.addr, align 8
  %tobool23 = icmp ne i32* %34, null
  br i1 %tobool23, label %lor.lhs.false.24, label %if.then.28

lor.lhs.false.24:                                 ; preds = %for.body.22
  %35 = load i32, i32* %s, align 4
  %idxprom25 = sext i32 %35 to i64
  %36 = load i32*, i32** %sen_active.addr, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %36, i64 %idxprom25
  %37 = load i32, i32* %arrayidx26, align 4
  %tobool27 = icmp ne i32 %37, 0
  br i1 %tobool27, label %if.then.28, label %if.else.46

if.then.28:                                       ; preds = %lor.lhs.false.24, %for.body.22
  %38 = load %struct.subvq_t*, %struct.subvq_t** %vq.addr, align 8
  %39 = load i32, i32* %s, align 4
  %40 = load i32, i32* %s, align 4
  %idxprom29 = sext i32 %40 to i64
  %41 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %mgau30 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %41, i32 0, i32 3
  %42 = load %struct.mgau_t*, %struct.mgau_t** %mgau30, align 8
  %arrayidx31 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %42, i64 %idxprom29
  %n_comp32 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %arrayidx31, i32 0, i32 0
  %43 = load i32, i32* %n_comp32, align 4
  %44 = load i32, i32* %beam.addr, align 4
  %call33 = call i32 @subvq_mgau_shortlist(%struct.subvq_t* %38, i32 %39, i32 %43, i32 %44)
  %45 = load i32, i32* %ng, align 4
  %add34 = add nsw i32 %45, %call33
  store i32 %add34, i32* %ng, align 4
  %46 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %47 = load i32, i32* %s, align 4
  %48 = load %struct.subvq_t*, %struct.subvq_t** %vq.addr, align 8
  %mgau_sl = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %48, i32 0, i32 9
  %49 = load i32*, i32** %mgau_sl, align 8
  %50 = load float*, float** %feat.addr, align 8
  %call35 = call i32 @mgau_eval(%struct.mgau_model_t* %46, i32 %47, i32* %49, float* %50)
  %51 = load i32, i32* %s, align 4
  %idxprom36 = sext i32 %51 to i64
  %52 = load i32*, i32** %senscr.addr, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %52, i64 %idxprom36
  store i32 %call35, i32* %arrayidx37, align 4
  %53 = load i32, i32* %best, align 4
  %54 = load i32, i32* %s, align 4
  %idxprom38 = sext i32 %54 to i64
  %55 = load i32*, i32** %senscr.addr, align 8
  %arrayidx39 = getelementptr inbounds i32, i32* %55, i64 %idxprom38
  %56 = load i32, i32* %arrayidx39, align 4
  %cmp40 = icmp slt i32 %53, %56
  br i1 %cmp40, label %if.then.41, label %if.end.44

if.then.41:                                       ; preds = %if.then.28
  %57 = load i32, i32* %s, align 4
  %idxprom42 = sext i32 %57 to i64
  %58 = load i32*, i32** %senscr.addr, align 8
  %arrayidx43 = getelementptr inbounds i32, i32* %58, i64 %idxprom42
  %59 = load i32, i32* %arrayidx43, align 4
  store i32 %59, i32* %best, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.41, %if.then.28
  %60 = load i32, i32* %ns, align 4
  %inc45 = add nsw i32 %60, 1
  store i32 %inc45, i32* %ns, align 4
  br label %if.end.49

if.else.46:                                       ; preds = %lor.lhs.false.24
  %61 = load i32, i32* %s, align 4
  %idxprom47 = sext i32 %61 to i64
  %62 = load i32*, i32** %senscr.addr, align 8
  %arrayidx48 = getelementptr inbounds i32, i32* %62, i64 %idxprom47
  store i32 -939524096, i32* %arrayidx48, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.46, %if.end.44
  br label %for.inc.50

for.inc.50:                                       ; preds = %if.end.49
  %63 = load i32, i32* %s, align 4
  %inc51 = add nsw i32 %63, 1
  store i32 %inc51, i32* %s, align 4
  br label %for.cond.19

for.end.52:                                       ; preds = %for.cond.19
  br label %if.end.53

if.end.53:                                        ; preds = %for.end.52, %for.end
  store i32 0, i32* %s, align 4
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.60, %if.end.53
  %64 = load i32, i32* %s, align 4
  %65 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %n_mgau55 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %65, i32 0, i32 0
  %66 = load i32, i32* %n_mgau55, align 4
  %cmp56 = icmp slt i32 %64, %66
  br i1 %cmp56, label %for.body.57, label %for.end.62

for.body.57:                                      ; preds = %for.cond.54
  %67 = load i32, i32* %best, align 4
  %68 = load i32, i32* %s, align 4
  %idxprom58 = sext i32 %68 to i64
  %69 = load i32*, i32** %senscr.addr, align 8
  %arrayidx59 = getelementptr inbounds i32, i32* %69, i64 %idxprom58
  %70 = load i32, i32* %arrayidx59, align 4
  %sub = sub nsw i32 %70, %67
  store i32 %sub, i32* %arrayidx59, align 4
  br label %for.inc.60

for.inc.60:                                       ; preds = %for.body.57
  %71 = load i32, i32* %s, align 4
  %inc61 = add nsw i32 %71, 1
  store i32 %inc61, i32* %s, align 4
  br label %for.cond.54

for.end.62:                                       ; preds = %for.cond.54
  %72 = load i32, i32* %ns, align 4
  %73 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %frm_sen_eval = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %73, i32 0, i32 5
  store i32 %72, i32* %frm_sen_eval, align 4
  %74 = load i32, i32* %ng, align 4
  %75 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %frm_gau_eval = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %75, i32 0, i32 6
  store i32 %74, i32* %frm_gau_eval, align 4
  %76 = load i32, i32* %best, align 4
  ret i32 %76
}

declare i32 @mgau_eval(%struct.mgau_model_t*, i32, i32*, float*) #1

; Function Attrs: nounwind uwtable
define i32 @subvq_mgau_eval(%struct.mgau_model_t* %g, %struct.subvq_t* %vq, i32 %m, i32 %n, i32* %active) #0 {
entry:
  %g.addr = alloca %struct.mgau_model_t*, align 8
  %vq.addr = alloca %struct.subvq_t*, align 8
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %active.addr = alloca i32*, align 8
  %mgau = alloca %struct.mgau_t*, align 8
  %map = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %v = alloca i32, align 4
  %sv_id = alloca i32, align 4
  %c = alloca i32, align 4
  %vqdist = alloca i32*, align 8
  %score = alloca i32, align 4
  %last_active = alloca i32, align 4
  %f = alloca double, align 8
  store %struct.mgau_model_t* %g, %struct.mgau_model_t** %g.addr, align 8
  store %struct.subvq_t* %vq, %struct.subvq_t** %vq.addr, align 8
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32* %active, i32** %active.addr, align 8
  %call = call double @log_to_logs3_factor()
  store double %call, double* %f, align 8
  %0 = load %struct.subvq_t*, %struct.subvq_t** %vq.addr, align 8
  %vqdist1 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %0, i32 0, i32 7
  %1 = load i32**, i32*** %vqdist1, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %1, i64 0
  %2 = load i32*, i32** %arrayidx, align 8
  store i32* %2, i32** %vqdist, align 8
  store i32 -939524096, i32* %score, align 4
  %3 = load i32, i32* %m.addr, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %mgau2 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %4, i32 0, i32 3
  %5 = load %struct.mgau_t*, %struct.mgau_t** %mgau2, align 8
  %arrayidx3 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %5, i64 %idxprom
  store %struct.mgau_t* %arrayidx3, %struct.mgau_t** %mgau, align 8
  %6 = load i32, i32* %m.addr, align 4
  %idxprom4 = sext i32 %6 to i64
  %7 = load %struct.subvq_t*, %struct.subvq_t** %vq.addr, align 8
  %map5 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %7, i32 0, i32 5
  %8 = load i32***, i32**** %map5, align 8
  %arrayidx6 = getelementptr inbounds i32**, i32*** %8, i64 %idxprom4
  %9 = load i32**, i32*** %arrayidx6, align 8
  %arrayidx7 = getelementptr inbounds i32*, i32** %9, i64 0
  %10 = load i32*, i32** %arrayidx7, align 8
  store i32* %10, i32** %map, align 8
  %11 = load i32*, i32** %active.addr, align 8
  %tobool = icmp ne i32* %11, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.17, %if.then
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %12, %13
  br i1 %cmp, label %for.body, label %for.end.19

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %v, align 4
  store i32 0, i32* %sv_id, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %for.body
  %14 = load i32, i32* %sv_id, align 4
  %15 = load %struct.subvq_t*, %struct.subvq_t** %vq.addr, align 8
  %n_sv = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %15, i32 0, i32 1
  %16 = load i32, i32* %n_sv, align 4
  %cmp9 = icmp slt i32 %14, %16
  br i1 %cmp9, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.8
  %17 = load i32*, i32** %map, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %17, i32 1
  store i32* %incdec.ptr, i32** %map, align 8
  %18 = load i32, i32* %17, align 4
  %idxprom11 = sext i32 %18 to i64
  %19 = load i32*, i32** %vqdist, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %19, i64 %idxprom11
  %20 = load i32, i32* %arrayidx12, align 4
  %21 = load i32, i32* %v, align 4
  %add = add nsw i32 %21, %20
  store i32 %add, i32* %v, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.10
  %22 = load i32, i32* %sv_id, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %sv_id, align 4
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  %23 = load i32, i32* %score, align 4
  %24 = load i32, i32* %v, align 4
  %25 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %25 to i64
  %26 = load %struct.mgau_t*, %struct.mgau_t** %mgau, align 8
  %mixw = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %26, i32 0, i32 4
  %27 = load i32*, i32** %mixw, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %27, i64 %idxprom13
  %28 = load i32, i32* %arrayidx14, align 4
  %add15 = add nsw i32 %24, %28
  %call16 = call i32 @logs3_add(i32 %23, i32 %add15)
  store i32 %call16, i32* %score, align 4
  br label %for.inc.17

for.inc.17:                                       ; preds = %for.end
  %29 = load i32, i32* %i, align 4
  %inc18 = add nsw i32 %29, 1
  store i32 %inc18, i32* %i, align 4
  br label %for.cond

for.end.19:                                       ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %last_active, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.27, %if.else
  %30 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %30 to i64
  %31 = load i32*, i32** %active.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %31, i64 %idxprom21
  %32 = load i32, i32* %arrayidx22, align 4
  %cmp23 = icmp sge i32 %32, 0
  br i1 %cmp23, label %for.body.24, label %for.end.29

for.body.24:                                      ; preds = %for.cond.20
  %33 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %33 to i64
  %34 = load i32*, i32** %active.addr, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %34, i64 %idxprom25
  %35 = load i32, i32* %arrayidx26, align 4
  store i32 %35, i32* %c, align 4
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.body.24
  %36 = load i32, i32* %i, align 4
  %inc28 = add nsw i32 %36, 1
  store i32 %inc28, i32* %i, align 4
  br label %for.cond.20

for.end.29:                                       ; preds = %for.cond.20
  store i32 0, i32* %i, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.55, %for.end.29
  %37 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %37 to i64
  %38 = load i32*, i32** %active.addr, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %38, i64 %idxprom31
  %39 = load i32, i32* %arrayidx32, align 4
  %cmp33 = icmp sge i32 %39, 0
  br i1 %cmp33, label %for.body.34, label %for.end.57

for.body.34:                                      ; preds = %for.cond.30
  %40 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %40 to i64
  %41 = load i32*, i32** %active.addr, align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %41, i64 %idxprom35
  %42 = load i32, i32* %arrayidx36, align 4
  store i32 %42, i32* %c, align 4
  %43 = load i32, i32* %c, align 4
  %44 = load i32, i32* %last_active, align 4
  %sub = sub nsw i32 %43, %44
  %45 = load %struct.subvq_t*, %struct.subvq_t** %vq.addr, align 8
  %n_sv37 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %45, i32 0, i32 1
  %46 = load i32, i32* %n_sv37, align 4
  %mul = mul nsw i32 %sub, %46
  %47 = load i32*, i32** %map, align 8
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %47, i64 %idx.ext
  store i32* %add.ptr, i32** %map, align 8
  store i32 0, i32* %v, align 4
  store i32 0, i32* %sv_id, align 4
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.46, %for.body.34
  %48 = load i32, i32* %sv_id, align 4
  %49 = load %struct.subvq_t*, %struct.subvq_t** %vq.addr, align 8
  %n_sv39 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %49, i32 0, i32 1
  %50 = load i32, i32* %n_sv39, align 4
  %cmp40 = icmp slt i32 %48, %50
  br i1 %cmp40, label %for.body.41, label %for.end.48

for.body.41:                                      ; preds = %for.cond.38
  %51 = load i32*, i32** %map, align 8
  %incdec.ptr42 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %incdec.ptr42, i32** %map, align 8
  %52 = load i32, i32* %51, align 4
  %idxprom43 = sext i32 %52 to i64
  %53 = load i32*, i32** %vqdist, align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %53, i64 %idxprom43
  %54 = load i32, i32* %arrayidx44, align 4
  %55 = load i32, i32* %v, align 4
  %add45 = add nsw i32 %55, %54
  store i32 %add45, i32* %v, align 4
  br label %for.inc.46

for.inc.46:                                       ; preds = %for.body.41
  %56 = load i32, i32* %sv_id, align 4
  %inc47 = add nsw i32 %56, 1
  store i32 %inc47, i32* %sv_id, align 4
  br label %for.cond.38

for.end.48:                                       ; preds = %for.cond.38
  %57 = load i32, i32* %c, align 4
  %add49 = add nsw i32 %57, 1
  store i32 %add49, i32* %last_active, align 4
  %58 = load i32, i32* %score, align 4
  %59 = load i32, i32* %v, align 4
  %60 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %60 to i64
  %61 = load %struct.mgau_t*, %struct.mgau_t** %mgau, align 8
  %mixw51 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %61, i32 0, i32 4
  %62 = load i32*, i32** %mixw51, align 8
  %arrayidx52 = getelementptr inbounds i32, i32* %62, i64 %idxprom50
  %63 = load i32, i32* %arrayidx52, align 4
  %add53 = add nsw i32 %59, %63
  %call54 = call i32 @logs3_add(i32 %58, i32 %add53)
  store i32 %call54, i32* %score, align 4
  br label %for.inc.55

for.inc.55:                                       ; preds = %for.end.48
  %64 = load i32, i32* %i, align 4
  %inc56 = add nsw i32 %64, 1
  store i32 %inc56, i32* %i, align 4
  br label %for.cond.30

for.end.57:                                       ; preds = %for.cond.30
  br label %if.end

if.end:                                           ; preds = %for.end.57, %for.end.19
  %65 = load i32, i32* %score, align 4
  %cmp58 = icmp eq i32 %65, -939524096
  br i1 %cmp58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.end
  call void @_E__pr_info_header(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i64 576, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0))
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.36, i32 0, i32 0))
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.59, %if.end
  %66 = load i32, i32* %score, align 4
  ret i32 %66
}

declare double @log_to_logs3_factor() #1

declare i32 @logs3_add(i32, i32) #1

; Function Attrs: nounwind uwtable
define void @subvq_free(%struct.subvq_t* %s) #0 {
entry:
  %s.addr = alloca %struct.subvq_t*, align 8
  %i = alloca i32, align 4
  store %struct.subvq_t* %s, %struct.subvq_t** %s.addr, align 8
  %0 = load %struct.subvq_t*, %struct.subvq_t** %s.addr, align 8
  %tobool = icmp ne %struct.subvq_t* %0, null
  br i1 %tobool, label %if.then, label %if.end.35

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.subvq_t*, %struct.subvq_t** %s.addr, align 8
  %n_sv = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %2, i32 0, i32 1
  %3 = load i32, i32* %n_sv, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.subvq_t*, %struct.subvq_t** %s.addr, align 8
  %featdim = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %5, i32 0, i32 3
  %6 = load i32**, i32*** %featdim, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %6, i64 %idxprom
  %7 = load i32*, i32** %arrayidx, align 8
  %tobool1 = icmp ne i32* %7, null
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %8 to i64
  %9 = load %struct.subvq_t*, %struct.subvq_t** %s.addr, align 8
  %featdim4 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %9, i32 0, i32 3
  %10 = load i32**, i32*** %featdim4, align 8
  %arrayidx5 = getelementptr inbounds i32*, i32** %10, i64 %idxprom3
  %11 = load i32*, i32** %arrayidx5, align 8
  %12 = bitcast i32* %11 to i8*
  call void @ckd_free(i8* %12)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct.subvq_t*, %struct.subvq_t** %s.addr, align 8
  %featdim6 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %14, i32 0, i32 3
  %15 = load i32**, i32*** %featdim6, align 8
  %tobool7 = icmp ne i32** %15, null
  br i1 %tobool7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %for.end
  %16 = load %struct.subvq_t*, %struct.subvq_t** %s.addr, align 8
  %featdim9 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %16, i32 0, i32 3
  %17 = load i32**, i32*** %featdim9, align 8
  %18 = bitcast i32** %17 to i8*
  call void @ckd_free(i8* %18)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %for.end
  %19 = load %struct.subvq_t*, %struct.subvq_t** %s.addr, align 8
  %gautbl = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %19, i32 0, i32 4
  %20 = load %struct.vector_gautbl_t*, %struct.vector_gautbl_t** %gautbl, align 8
  %tobool11 = icmp ne %struct.vector_gautbl_t* %20, null
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end.10
  %21 = load %struct.subvq_t*, %struct.subvq_t** %s.addr, align 8
  %gautbl13 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %21, i32 0, i32 4
  %22 = load %struct.vector_gautbl_t*, %struct.vector_gautbl_t** %gautbl13, align 8
  %23 = bitcast %struct.vector_gautbl_t* %22 to i8*
  call void @ckd_free(i8* %23)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end.10
  %24 = load %struct.subvq_t*, %struct.subvq_t** %s.addr, align 8
  %map = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %24, i32 0, i32 5
  %25 = load i32***, i32**** %map, align 8
  %tobool15 = icmp ne i32*** %25, null
  br i1 %tobool15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end.14
  %26 = load %struct.subvq_t*, %struct.subvq_t** %s.addr, align 8
  %map17 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %26, i32 0, i32 5
  %27 = load i32***, i32**** %map17, align 8
  %28 = bitcast i32*** %27 to i8***
  call void @ckd_free_3d(i8*** %28)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %if.end.14
  %29 = load %struct.subvq_t*, %struct.subvq_t** %s.addr, align 8
  %subvec = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %29, i32 0, i32 6
  %30 = load float*, float** %subvec, align 8
  %tobool19 = icmp ne float* %30, null
  br i1 %tobool19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end.18
  %31 = load %struct.subvq_t*, %struct.subvq_t** %s.addr, align 8
  %subvec21 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %31, i32 0, i32 6
  %32 = load float*, float** %subvec21, align 8
  %33 = bitcast float* %32 to i8*
  call void @ckd_free(i8* %33)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.end.18
  %34 = load %struct.subvq_t*, %struct.subvq_t** %s.addr, align 8
  %vqdist = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %34, i32 0, i32 7
  %35 = load i32**, i32*** %vqdist, align 8
  %tobool23 = icmp ne i32** %35, null
  br i1 %tobool23, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.end.22
  %36 = load %struct.subvq_t*, %struct.subvq_t** %s.addr, align 8
  %vqdist25 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %36, i32 0, i32 7
  %37 = load i32**, i32*** %vqdist25, align 8
  %38 = bitcast i32** %37 to i8**
  call void @ckd_free_2d(i8** %38)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %if.end.22
  %39 = load %struct.subvq_t*, %struct.subvq_t** %s.addr, align 8
  %gauscore = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %39, i32 0, i32 8
  %40 = load i32*, i32** %gauscore, align 8
  %tobool27 = icmp ne i32* %40, null
  br i1 %tobool27, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %if.end.26
  %41 = load %struct.subvq_t*, %struct.subvq_t** %s.addr, align 8
  %gauscore29 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %41, i32 0, i32 8
  %42 = load i32*, i32** %gauscore29, align 8
  %43 = bitcast i32* %42 to i8*
  call void @ckd_free(i8* %43)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %if.end.26
  %44 = load %struct.subvq_t*, %struct.subvq_t** %s.addr, align 8
  %mgau_sl = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %44, i32 0, i32 9
  %45 = load i32*, i32** %mgau_sl, align 8
  %tobool31 = icmp ne i32* %45, null
  br i1 %tobool31, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %if.end.30
  %46 = load %struct.subvq_t*, %struct.subvq_t** %s.addr, align 8
  %mgau_sl33 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %46, i32 0, i32 9
  %47 = load i32*, i32** %mgau_sl33, align 8
  %48 = bitcast i32* %47 to i8*
  call void @ckd_free(i8* %48)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %if.end.30
  %49 = load %struct.subvq_t*, %struct.subvq_t** %s.addr, align 8
  %50 = bitcast %struct.subvq_t* %49 to i8*
  call void @ckd_free(i8* %50)
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %entry
  ret void
}

declare void @ckd_free(i8*) #1

declare void @ckd_free_3d(i8***) #1

declare void @ckd_free_2d(i8**) #1

declare void @vector_gautbl_var_floor(%struct.vector_gautbl_t*, double) #1

declare void @vector_gautbl_maha_precomp(%struct.vector_gautbl_t*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
