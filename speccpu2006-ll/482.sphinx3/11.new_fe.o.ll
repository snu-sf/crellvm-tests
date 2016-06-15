; ModuleID = 'new_fe.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.fe_t = type { float, i32, i32, float, i32, i32, i32, i32, float, i16*, i32, %struct.melfb_t*, i32, i16, double* }
%struct.melfb_t = type { float, i32, i32, i32, float, float, float**, float**, float*, i32*, i32 }
%struct.param_t = type { float, i32, float, i32, i32, i32, i32, float, float, float, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32 }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [45 x i8] c"memory alloc failed in fe_init()\0A...exiting\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"MEL SCALE IS CURRENTLY THE ONLY IMPLEMENTATION!\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"memory alloc failed in fe_process_utt()\0A...exiting\0A\00", align 1
@.str.3 = private unnamed_addr constant [85 x i8] c"memory alloc for cep failed in fe_process_utt()\0A\09fe_create_2d(%ld,%d,%d)\0A...exiting\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"memory alloc failed in fe_end_utt()\0A...exiting\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.fe_t* @fe_init(%struct.param_t* %P) #0 {
entry:
  %retval = alloca %struct.fe_t*, align 8
  %P.addr = alloca %struct.param_t*, align 8
  %FE = alloca %struct.fe_t*, align 8
  store %struct.param_t* %P, %struct.param_t** %P.addr, align 8
  %call = call noalias i8* @calloc(i64 1, i64 80) #3
  %0 = bitcast i8* %call to %struct.fe_t*
  store %struct.fe_t* %0, %struct.fe_t** %FE, align 8
  %1 = load %struct.fe_t*, %struct.fe_t** %FE, align 8
  %cmp = icmp eq %struct.fe_t* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i32 0, i32 0))
  store %struct.fe_t* null, %struct.fe_t** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.param_t*, %struct.param_t** %P.addr, align 8
  %4 = load %struct.fe_t*, %struct.fe_t** %FE, align 8
  call void @fe_parse_general_params(%struct.param_t* %3, %struct.fe_t* %4)
  %5 = load %struct.fe_t*, %struct.fe_t** %FE, align 8
  %SAMPLING_RATE = getelementptr inbounds %struct.fe_t, %struct.fe_t* %5, i32 0, i32 0
  %6 = load float, float* %SAMPLING_RATE, align 4
  %7 = load %struct.fe_t*, %struct.fe_t** %FE, align 8
  %FRAME_RATE = getelementptr inbounds %struct.fe_t, %struct.fe_t* %7, i32 0, i32 1
  %8 = load i32, i32* %FRAME_RATE, align 4
  %conv = sitofp i32 %8 to float
  %div = fdiv float %6, %conv
  %conv2 = fpext float %div to double
  %add = fadd double %conv2, 5.000000e-01
  %conv3 = fptosi double %add to i32
  %9 = load %struct.fe_t*, %struct.fe_t** %FE, align 8
  %FRAME_SHIFT = getelementptr inbounds %struct.fe_t, %struct.fe_t* %9, i32 0, i32 2
  store i32 %conv3, i32* %FRAME_SHIFT, align 4
  %10 = load %struct.fe_t*, %struct.fe_t** %FE, align 8
  %WINDOW_LENGTH = getelementptr inbounds %struct.fe_t, %struct.fe_t* %10, i32 0, i32 3
  %11 = load float, float* %WINDOW_LENGTH, align 4
  %12 = load %struct.fe_t*, %struct.fe_t** %FE, align 8
  %SAMPLING_RATE4 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %12, i32 0, i32 0
  %13 = load float, float* %SAMPLING_RATE4, align 4
  %mul = fmul float %11, %13
  %conv5 = fpext float %mul to double
  %add6 = fadd double %conv5, 5.000000e-01
  %conv7 = fptosi double %add6 to i32
  %14 = load %struct.fe_t*, %struct.fe_t** %FE, align 8
  %FRAME_SIZE = getelementptr inbounds %struct.fe_t, %struct.fe_t* %14, i32 0, i32 4
  store i32 %conv7, i32* %FRAME_SIZE, align 4
  %15 = load %struct.fe_t*, %struct.fe_t** %FE, align 8
  %PRIOR = getelementptr inbounds %struct.fe_t, %struct.fe_t* %15, i32 0, i32 13
  store i16 0, i16* %PRIOR, align 2
  %16 = load %struct.fe_t*, %struct.fe_t** %FE, align 8
  %FRAME_SIZE8 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %16, i32 0, i32 4
  %17 = load i32, i32* %FRAME_SIZE8, align 4
  %conv9 = sext i32 %17 to i64
  %call10 = call noalias i8* @calloc(i64 %conv9, i64 2) #3
  %18 = bitcast i8* %call10 to i16*
  %19 = load %struct.fe_t*, %struct.fe_t** %FE, align 8
  %OVERFLOW_SAMPS = getelementptr inbounds %struct.fe_t, %struct.fe_t* %19, i32 0, i32 9
  store i16* %18, i16** %OVERFLOW_SAMPS, align 8
  %20 = load %struct.fe_t*, %struct.fe_t** %FE, align 8
  %FRAME_SIZE11 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %20, i32 0, i32 4
  %21 = load i32, i32* %FRAME_SIZE11, align 4
  %conv12 = sext i32 %21 to i64
  %call13 = call noalias i8* @calloc(i64 %conv12, i64 8) #3
  %22 = bitcast i8* %call13 to double*
  %23 = load %struct.fe_t*, %struct.fe_t** %FE, align 8
  %HAMMING_WINDOW = getelementptr inbounds %struct.fe_t, %struct.fe_t* %23, i32 0, i32 14
  store double* %22, double** %HAMMING_WINDOW, align 8
  %24 = load %struct.fe_t*, %struct.fe_t** %FE, align 8
  %OVERFLOW_SAMPS14 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %24, i32 0, i32 9
  %25 = load i16*, i16** %OVERFLOW_SAMPS14, align 8
  %cmp15 = icmp eq i16* %25, null
  br i1 %cmp15, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %26 = load %struct.fe_t*, %struct.fe_t** %FE, align 8
  %HAMMING_WINDOW17 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %26, i32 0, i32 14
  %27 = load double*, double** %HAMMING_WINDOW17, align 8
  %cmp18 = icmp eq double* %27, null
  br i1 %cmp18, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %lor.lhs.false, %if.end
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i32 0, i32 0))
  store %struct.fe_t* null, %struct.fe_t** %retval
  br label %return

if.end.22:                                        ; preds = %lor.lhs.false
  %29 = load %struct.fe_t*, %struct.fe_t** %FE, align 8
  %HAMMING_WINDOW23 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %29, i32 0, i32 14
  %30 = load double*, double** %HAMMING_WINDOW23, align 8
  %31 = load %struct.fe_t*, %struct.fe_t** %FE, align 8
  %FRAME_SIZE24 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %31, i32 0, i32 4
  %32 = load i32, i32* %FRAME_SIZE24, align 4
  call void @fe_create_hamming(double* %30, i32 %32)
  %33 = load %struct.fe_t*, %struct.fe_t** %FE, align 8
  %FB_TYPE = getelementptr inbounds %struct.fe_t, %struct.fe_t* %33, i32 0, i32 6
  %34 = load i32, i32* %FB_TYPE, align 4
  %cmp25 = icmp eq i32 %34, 1
  br i1 %cmp25, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %if.end.22
  %call28 = call noalias i8* @calloc(i64 1, i64 64) #3
  %35 = bitcast i8* %call28 to %struct.melfb_t*
  %36 = load %struct.fe_t*, %struct.fe_t** %FE, align 8
  %MEL_FB = getelementptr inbounds %struct.fe_t, %struct.fe_t* %36, i32 0, i32 11
  store %struct.melfb_t* %35, %struct.melfb_t** %MEL_FB, align 8
  %cmp29 = icmp eq %struct.melfb_t* %35, null
  br i1 %cmp29, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %if.then.27
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i32 0, i32 0))
  store %struct.fe_t* null, %struct.fe_t** %retval
  br label %return

if.end.33:                                        ; preds = %if.then.27
  %38 = load %struct.param_t*, %struct.param_t** %P.addr, align 8
  %39 = load %struct.fe_t*, %struct.fe_t** %FE, align 8
  %MEL_FB34 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %39, i32 0, i32 11
  %40 = load %struct.melfb_t*, %struct.melfb_t** %MEL_FB34, align 8
  call void @fe_parse_melfb_params(%struct.param_t* %38, %struct.melfb_t* %40)
  %41 = load %struct.fe_t*, %struct.fe_t** %FE, align 8
  %MEL_FB35 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %41, i32 0, i32 11
  %42 = load %struct.melfb_t*, %struct.melfb_t** %MEL_FB35, align 8
  %call36 = call i32 @fe_build_melfilters(%struct.melfb_t* %42)
  %43 = load %struct.fe_t*, %struct.fe_t** %FE, align 8
  %MEL_FB37 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %43, i32 0, i32 11
  %44 = load %struct.melfb_t*, %struct.melfb_t** %MEL_FB37, align 8
  %call38 = call i32 @fe_compute_melcosine(%struct.melfb_t* %44)
  br label %if.end.40

if.else:                                          ; preds = %if.end.22
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i32 0, i32 0))
  store %struct.fe_t* null, %struct.fe_t** %retval
  br label %return

if.end.40:                                        ; preds = %if.end.33
  %46 = load %struct.fe_t*, %struct.fe_t** %FE, align 8
  store %struct.fe_t* %46, %struct.fe_t** %retval
  br label %return

return:                                           ; preds = %if.end.40, %if.else, %if.then.31, %if.then.20, %if.then
  %47 = load %struct.fe_t*, %struct.fe_t** %retval
  ret %struct.fe_t* %47
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare void @fe_parse_general_params(%struct.param_t*, %struct.fe_t*) #2

declare void @fe_create_hamming(double*, i32) #2

declare void @fe_parse_melfb_params(%struct.param_t*, %struct.melfb_t*) #2

declare i32 @fe_build_melfilters(%struct.melfb_t*) #2

declare i32 @fe_compute_melcosine(%struct.melfb_t*) #2

; Function Attrs: nounwind uwtable
define i32 @fe_start_utt(%struct.fe_t* %FE) #0 {
entry:
  %FE.addr = alloca %struct.fe_t*, align 8
  store %struct.fe_t* %FE, %struct.fe_t** %FE.addr, align 8
  %0 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %NUM_OVERFLOW_SAMPS = getelementptr inbounds %struct.fe_t, %struct.fe_t* %0, i32 0, i32 10
  store i32 0, i32* %NUM_OVERFLOW_SAMPS, align 4
  %1 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %OVERFLOW_SAMPS = getelementptr inbounds %struct.fe_t, %struct.fe_t* %1, i32 0, i32 9
  %2 = load i16*, i16** %OVERFLOW_SAMPS, align 8
  %3 = bitcast i16* %2 to i8*
  %4 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %FRAME_SIZE = getelementptr inbounds %struct.fe_t, %struct.fe_t* %4, i32 0, i32 4
  %5 = load i32, i32* %FRAME_SIZE, align 4
  %conv = sext i32 %5 to i64
  %mul = mul i64 %conv, 2
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 %mul, i32 2, i1 false)
  %6 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %START_FLAG = getelementptr inbounds %struct.fe_t, %struct.fe_t* %6, i32 0, i32 12
  store i32 1, i32* %START_FLAG, align 4
  %7 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %PRIOR = getelementptr inbounds %struct.fe_t, %struct.fe_t* %7, i32 0, i32 13
  store i16 0, i16* %PRIOR, align 2
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define i32 @fe_process_utt(%struct.fe_t* %FE, i16* %spch, i32 %nsamps, float*** %cep_block) #0 {
entry:
  %FE.addr = alloca %struct.fe_t*, align 8
  %spch.addr = alloca i16*, align 8
  %nsamps.addr = alloca i32, align 4
  %cep_block.addr = alloca float***, align 8
  %frame_start = alloca i32, align 4
  %frame_count = alloca i32, align 4
  %whichframe = alloca i32, align 4
  %i = alloca i32, align 4
  %spbuf_len = alloca i32, align 4
  %offset = alloca i32, align 4
  %spbuf = alloca double*, align 8
  %fr_data = alloca double*, align 8
  %fr_fea = alloca double*, align 8
  %tmp_spch = alloca i16*, align 8
  %cep = alloca float**, align 8
  store %struct.fe_t* %FE, %struct.fe_t** %FE.addr, align 8
  store i16* %spch, i16** %spch.addr, align 8
  store i32 %nsamps, i32* %nsamps.addr, align 4
  store float*** %cep_block, float**** %cep_block.addr, align 8
  store i32 0, i32* %frame_count, align 4
  store i32 0, i32* %whichframe, align 4
  store i32 0, i32* %offset, align 4
  %0 = load i16*, i16** %spch.addr, align 8
  store i16* %0, i16** %tmp_spch, align 8
  store float** null, float*** %cep, align 8
  %1 = load i32, i32* %nsamps.addr, align 4
  %2 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %NUM_OVERFLOW_SAMPS = getelementptr inbounds %struct.fe_t, %struct.fe_t* %2, i32 0, i32 10
  %3 = load i32, i32* %NUM_OVERFLOW_SAMPS, align 4
  %add = add nsw i32 %1, %3
  %4 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %FRAME_SIZE = getelementptr inbounds %struct.fe_t, %struct.fe_t* %4, i32 0, i32 4
  %5 = load i32, i32* %FRAME_SIZE, align 4
  %cmp = icmp sge i32 %add, %5
  br i1 %cmp, label %if.then, label %if.else.123

if.then:                                          ; preds = %entry
  %6 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %NUM_OVERFLOW_SAMPS1 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %6, i32 0, i32 10
  %7 = load i32, i32* %NUM_OVERFLOW_SAMPS1, align 4
  %cmp2 = icmp sgt i32 %7, 0
  br i1 %cmp2, label %if.then.3, label %if.end.19

if.then.3:                                        ; preds = %if.then
  %8 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %NUM_OVERFLOW_SAMPS4 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %8, i32 0, i32 10
  %9 = load i32, i32* %NUM_OVERFLOW_SAMPS4, align 4
  %10 = load i32, i32* %nsamps.addr, align 4
  %add5 = add nsw i32 %9, %10
  %conv = sext i32 %add5 to i64
  %mul = mul i64 2, %conv
  %call = call noalias i8* @malloc(i64 %mul) #3
  %11 = bitcast i8* %call to i16*
  store i16* %11, i16** %tmp_spch, align 8
  %cmp6 = icmp eq i16* %11, null
  br i1 %cmp6, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then.3
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 0) #5
  unreachable

if.end:                                           ; preds = %if.then.3
  %13 = load i16*, i16** %tmp_spch, align 8
  %14 = bitcast i16* %13 to i8*
  %15 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %OVERFLOW_SAMPS = getelementptr inbounds %struct.fe_t, %struct.fe_t* %15, i32 0, i32 9
  %16 = load i16*, i16** %OVERFLOW_SAMPS, align 8
  %17 = bitcast i16* %16 to i8*
  %18 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %NUM_OVERFLOW_SAMPS10 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %18, i32 0, i32 10
  %19 = load i32, i32* %NUM_OVERFLOW_SAMPS10, align 4
  %conv11 = sext i32 %19 to i64
  %mul12 = mul i64 %conv11, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %17, i64 %mul12, i32 2, i1 false)
  %20 = load i16*, i16** %tmp_spch, align 8
  %21 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %NUM_OVERFLOW_SAMPS13 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %21, i32 0, i32 10
  %22 = load i32, i32* %NUM_OVERFLOW_SAMPS13, align 4
  %idx.ext = sext i32 %22 to i64
  %add.ptr = getelementptr inbounds i16, i16* %20, i64 %idx.ext
  %23 = bitcast i16* %add.ptr to i8*
  %24 = load i16*, i16** %spch.addr, align 8
  %25 = bitcast i16* %24 to i8*
  %26 = load i32, i32* %nsamps.addr, align 4
  %conv14 = sext i32 %26 to i64
  %mul15 = mul i64 %conv14, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %25, i64 %mul15, i32 2, i1 false)
  %27 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %NUM_OVERFLOW_SAMPS16 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %27, i32 0, i32 10
  %28 = load i32, i32* %NUM_OVERFLOW_SAMPS16, align 4
  %29 = load i32, i32* %nsamps.addr, align 4
  %add17 = add nsw i32 %29, %28
  store i32 %add17, i32* %nsamps.addr, align 4
  %30 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %NUM_OVERFLOW_SAMPS18 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %30, i32 0, i32 10
  store i32 0, i32* %NUM_OVERFLOW_SAMPS18, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.end, %if.then
  store i32 0, i32* %frame_count, align 4
  store i32 0, i32* %frame_start, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.19
  %31 = load i32, i32* %frame_start, align 4
  %32 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %FRAME_SIZE20 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %32, i32 0, i32 4
  %33 = load i32, i32* %FRAME_SIZE20, align 4
  %add21 = add nsw i32 %31, %33
  %34 = load i32, i32* %nsamps.addr, align 4
  %cmp22 = icmp sle i32 %add21, %34
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load i32, i32* %frame_count, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %frame_count, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %FRAME_SHIFT = getelementptr inbounds %struct.fe_t, %struct.fe_t* %36, i32 0, i32 2
  %37 = load i32, i32* %FRAME_SHIFT, align 4
  %38 = load i32, i32* %frame_start, align 4
  %add24 = add nsw i32 %38, %37
  store i32 %add24, i32* %frame_start, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load i32, i32* %frame_count, align 4
  %add25 = add nsw i32 %39, 1
  %40 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %NUM_CEPSTRA = getelementptr inbounds %struct.fe_t, %struct.fe_t* %40, i32 0, i32 7
  %41 = load i32, i32* %NUM_CEPSTRA, align 4
  %call26 = call i8** @fe_create_2d(i32 %add25, i32 %41, i32 4)
  %42 = bitcast i8** %call26 to float**
  store float** %42, float*** %cep, align 8
  %cmp27 = icmp eq float** %42, null
  br i1 %cmp27, label %if.then.29, label %if.end.34

if.then.29:                                       ; preds = %for.end
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %44 = load i32, i32* %frame_count, align 4
  %add30 = add nsw i32 %44, 1
  %conv31 = sext i32 %add30 to i64
  %45 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %NUM_CEPSTRA32 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %45, i32 0, i32 7
  %46 = load i32, i32* %NUM_CEPSTRA32, align 4
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.3, i32 0, i32 0), i64 %conv31, i32 %46, i64 4)
  call void @exit(i32 0) #5
  unreachable

if.end.34:                                        ; preds = %for.end
  %47 = load i32, i32* %frame_count, align 4
  %sub = sub nsw i32 %47, 1
  %48 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %FRAME_SHIFT35 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %48, i32 0, i32 2
  %49 = load i32, i32* %FRAME_SHIFT35, align 4
  %mul36 = mul nsw i32 %sub, %49
  %50 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %FRAME_SIZE37 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %50, i32 0, i32 4
  %51 = load i32, i32* %FRAME_SIZE37, align 4
  %add38 = add nsw i32 %mul36, %51
  store i32 %add38, i32* %spbuf_len, align 4
  %52 = load i32, i32* %spbuf_len, align 4
  %conv39 = sext i32 %52 to i64
  %call40 = call noalias i8* @calloc(i64 %conv39, i64 8) #3
  %53 = bitcast i8* %call40 to double*
  store double* %53, double** %spbuf, align 8
  %cmp41 = icmp eq double* %53, null
  br i1 %cmp41, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %if.end.34
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 0) #5
  unreachable

if.end.45:                                        ; preds = %if.end.34
  %55 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %PRE_EMPHASIS_ALPHA = getelementptr inbounds %struct.fe_t, %struct.fe_t* %55, i32 0, i32 8
  %56 = load float, float* %PRE_EMPHASIS_ALPHA, align 4
  %conv46 = fpext float %56 to double
  %cmp47 = fcmp une double %conv46, 0.000000e+00
  br i1 %cmp47, label %if.then.49, label %if.else

if.then.49:                                       ; preds = %if.end.45
  %57 = load i16*, i16** %tmp_spch, align 8
  %58 = load double*, double** %spbuf, align 8
  %59 = load i32, i32* %spbuf_len, align 4
  %60 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %PRE_EMPHASIS_ALPHA50 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %60, i32 0, i32 8
  %61 = load float, float* %PRE_EMPHASIS_ALPHA50, align 4
  %62 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %PRIOR = getelementptr inbounds %struct.fe_t, %struct.fe_t* %62, i32 0, i32 13
  %63 = load i16, i16* %PRIOR, align 2
  call void @fe_pre_emphasis(i16* %57, double* %58, i32 %59, float %61, i16 signext %63)
  br label %if.end.51

if.else:                                          ; preds = %if.end.45
  %64 = load i16*, i16** %tmp_spch, align 8
  %65 = load double*, double** %spbuf, align 8
  %66 = load i32, i32* %spbuf_len, align 4
  call void @fe_short_to_double(i16* %64, double* %65, i32 %66)
  br label %if.end.51

if.end.51:                                        ; preds = %if.else, %if.then.49
  %67 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %FRAME_SIZE52 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %67, i32 0, i32 4
  %68 = load i32, i32* %FRAME_SIZE52, align 4
  %conv53 = sext i32 %68 to i64
  %call54 = call noalias i8* @calloc(i64 %conv53, i64 8) #3
  %69 = bitcast i8* %call54 to double*
  store double* %69, double** %fr_data, align 8
  %70 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %NUM_CEPSTRA55 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %70, i32 0, i32 7
  %71 = load i32, i32* %NUM_CEPSTRA55, align 4
  %conv56 = sext i32 %71 to i64
  %call57 = call noalias i8* @calloc(i64 %conv56, i64 8) #3
  %72 = bitcast i8* %call57 to double*
  store double* %72, double** %fr_fea, align 8
  %73 = load double*, double** %fr_data, align 8
  %cmp58 = icmp eq double* %73, null
  br i1 %cmp58, label %if.then.62, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.51
  %74 = load double*, double** %fr_fea, align 8
  %cmp60 = icmp eq double* %74, null
  br i1 %cmp60, label %if.then.62, label %if.end.64

if.then.62:                                       ; preds = %lor.lhs.false, %if.end.51
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %75, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 0) #5
  unreachable

if.end.64:                                        ; preds = %lor.lhs.false
  store i32 0, i32* %whichframe, align 4
  br label %for.cond.65

for.cond.65:                                      ; preds = %for.inc.98, %if.end.64
  %76 = load i32, i32* %whichframe, align 4
  %77 = load i32, i32* %frame_count, align 4
  %cmp66 = icmp slt i32 %76, %77
  br i1 %cmp66, label %for.body.68, label %for.end.100

for.body.68:                                      ; preds = %for.cond.65
  store i32 0, i32* %i, align 4
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.79, %for.body.68
  %78 = load i32, i32* %i, align 4
  %79 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %FRAME_SIZE70 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %79, i32 0, i32 4
  %80 = load i32, i32* %FRAME_SIZE70, align 4
  %cmp71 = icmp slt i32 %78, %80
  br i1 %cmp71, label %for.body.73, label %for.end.81

for.body.73:                                      ; preds = %for.cond.69
  %81 = load i32, i32* %whichframe, align 4
  %82 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %FRAME_SHIFT74 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %82, i32 0, i32 2
  %83 = load i32, i32* %FRAME_SHIFT74, align 4
  %mul75 = mul nsw i32 %81, %83
  %84 = load i32, i32* %i, align 4
  %add76 = add nsw i32 %mul75, %84
  %idxprom = sext i32 %add76 to i64
  %85 = load double*, double** %spbuf, align 8
  %arrayidx = getelementptr inbounds double, double* %85, i64 %idxprom
  %86 = load double, double* %arrayidx, align 8
  %87 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %87 to i64
  %88 = load double*, double** %fr_data, align 8
  %arrayidx78 = getelementptr inbounds double, double* %88, i64 %idxprom77
  store double %86, double* %arrayidx78, align 8
  br label %for.inc.79

for.inc.79:                                       ; preds = %for.body.73
  %89 = load i32, i32* %i, align 4
  %inc80 = add nsw i32 %89, 1
  store i32 %inc80, i32* %i, align 4
  br label %for.cond.69

for.end.81:                                       ; preds = %for.cond.69
  %90 = load double*, double** %fr_data, align 8
  %91 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %HAMMING_WINDOW = getelementptr inbounds %struct.fe_t, %struct.fe_t* %91, i32 0, i32 14
  %92 = load double*, double** %HAMMING_WINDOW, align 8
  %93 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %FRAME_SIZE82 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %93, i32 0, i32 4
  %94 = load i32, i32* %FRAME_SIZE82, align 4
  call void @fe_hamming_window(double* %90, double* %92, i32 %94)
  %95 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %96 = load double*, double** %fr_data, align 8
  %97 = load double*, double** %fr_fea, align 8
  call void @fe_frame_to_fea(%struct.fe_t* %95, double* %96, double* %97)
  store i32 0, i32* %i, align 4
  br label %for.cond.83

for.cond.83:                                      ; preds = %for.inc.95, %for.end.81
  %98 = load i32, i32* %i, align 4
  %99 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %NUM_CEPSTRA84 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %99, i32 0, i32 7
  %100 = load i32, i32* %NUM_CEPSTRA84, align 4
  %cmp85 = icmp slt i32 %98, %100
  br i1 %cmp85, label %for.body.87, label %for.end.97

for.body.87:                                      ; preds = %for.cond.83
  %101 = load i32, i32* %i, align 4
  %idxprom88 = sext i32 %101 to i64
  %102 = load double*, double** %fr_fea, align 8
  %arrayidx89 = getelementptr inbounds double, double* %102, i64 %idxprom88
  %103 = load double, double* %arrayidx89, align 8
  %conv90 = fptrunc double %103 to float
  %104 = load i32, i32* %i, align 4
  %idxprom91 = sext i32 %104 to i64
  %105 = load i32, i32* %whichframe, align 4
  %idxprom92 = sext i32 %105 to i64
  %106 = load float**, float*** %cep, align 8
  %arrayidx93 = getelementptr inbounds float*, float** %106, i64 %idxprom92
  %107 = load float*, float** %arrayidx93, align 8
  %arrayidx94 = getelementptr inbounds float, float* %107, i64 %idxprom91
  store float %conv90, float* %arrayidx94, align 4
  br label %for.inc.95

for.inc.95:                                       ; preds = %for.body.87
  %108 = load i32, i32* %i, align 4
  %inc96 = add nsw i32 %108, 1
  store i32 %inc96, i32* %i, align 4
  br label %for.cond.83

for.end.97:                                       ; preds = %for.cond.83
  br label %for.inc.98

for.inc.98:                                       ; preds = %for.end.97
  %109 = load i32, i32* %whichframe, align 4
  %inc99 = add nsw i32 %109, 1
  store i32 %inc99, i32* %whichframe, align 4
  br label %for.cond.65

for.end.100:                                      ; preds = %for.cond.65
  %110 = load i32, i32* %spbuf_len, align 4
  %111 = load i32, i32* %nsamps.addr, align 4
  %cmp101 = icmp slt i32 %110, %111
  br i1 %cmp101, label %if.then.103, label %if.end.118

if.then.103:                                      ; preds = %for.end.100
  %112 = load i32, i32* %frame_count, align 4
  %113 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %FRAME_SHIFT104 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %113, i32 0, i32 2
  %114 = load i32, i32* %FRAME_SHIFT104, align 4
  %mul105 = mul nsw i32 %112, %114
  store i32 %mul105, i32* %offset, align 4
  %115 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %OVERFLOW_SAMPS106 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %115, i32 0, i32 9
  %116 = load i16*, i16** %OVERFLOW_SAMPS106, align 8
  %117 = bitcast i16* %116 to i8*
  %118 = load i16*, i16** %tmp_spch, align 8
  %119 = load i32, i32* %offset, align 4
  %idx.ext107 = sext i32 %119 to i64
  %add.ptr108 = getelementptr inbounds i16, i16* %118, i64 %idx.ext107
  %120 = bitcast i16* %add.ptr108 to i8*
  %121 = load i32, i32* %nsamps.addr, align 4
  %122 = load i32, i32* %offset, align 4
  %sub109 = sub nsw i32 %121, %122
  %conv110 = sext i32 %sub109 to i64
  %mul111 = mul i64 %conv110, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %117, i8* %120, i64 %mul111, i32 2, i1 false)
  %123 = load i32, i32* %nsamps.addr, align 4
  %124 = load i32, i32* %offset, align 4
  %sub112 = sub nsw i32 %123, %124
  %125 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %NUM_OVERFLOW_SAMPS113 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %125, i32 0, i32 10
  store i32 %sub112, i32* %NUM_OVERFLOW_SAMPS113, align 4
  %126 = load i32, i32* %offset, align 4
  %sub114 = sub nsw i32 %126, 1
  %idxprom115 = sext i32 %sub114 to i64
  %127 = load i16*, i16** %tmp_spch, align 8
  %arrayidx116 = getelementptr inbounds i16, i16* %127, i64 %idxprom115
  %128 = load i16, i16* %arrayidx116, align 2
  %129 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %PRIOR117 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %129, i32 0, i32 13
  store i16 %128, i16* %PRIOR117, align 2
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.103, %for.end.100
  %130 = load i16*, i16** %spch.addr, align 8
  %131 = load i16*, i16** %tmp_spch, align 8
  %cmp119 = icmp ne i16* %130, %131
  br i1 %cmp119, label %if.then.121, label %if.end.122

if.then.121:                                      ; preds = %if.end.118
  %132 = load i16*, i16** %tmp_spch, align 8
  %133 = bitcast i16* %132 to i8*
  call void @free(i8* %133) #3
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.121, %if.end.118
  %134 = load double*, double** %spbuf, align 8
  %135 = bitcast double* %134 to i8*
  call void @free(i8* %135) #3
  %136 = load double*, double** %fr_data, align 8
  %137 = bitcast double* %136 to i8*
  call void @free(i8* %137) #3
  %138 = load double*, double** %fr_fea, align 8
  %139 = bitcast double* %138 to i8*
  call void @free(i8* %139) #3
  br label %if.end.132

if.else.123:                                      ; preds = %entry
  %140 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %OVERFLOW_SAMPS124 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %140, i32 0, i32 9
  %141 = load i16*, i16** %OVERFLOW_SAMPS124, align 8
  %142 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %NUM_OVERFLOW_SAMPS125 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %142, i32 0, i32 10
  %143 = load i32, i32* %NUM_OVERFLOW_SAMPS125, align 4
  %idx.ext126 = sext i32 %143 to i64
  %add.ptr127 = getelementptr inbounds i16, i16* %141, i64 %idx.ext126
  %144 = bitcast i16* %add.ptr127 to i8*
  %145 = load i16*, i16** %tmp_spch, align 8
  %146 = bitcast i16* %145 to i8*
  %147 = load i32, i32* %nsamps.addr, align 4
  %conv128 = sext i32 %147 to i64
  %mul129 = mul i64 %conv128, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %144, i8* %146, i64 %mul129, i32 2, i1 false)
  %148 = load i32, i32* %nsamps.addr, align 4
  %149 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %NUM_OVERFLOW_SAMPS130 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %149, i32 0, i32 10
  %150 = load i32, i32* %NUM_OVERFLOW_SAMPS130, align 4
  %add131 = add nsw i32 %150, %148
  store i32 %add131, i32* %NUM_OVERFLOW_SAMPS130, align 4
  store i32 0, i32* %frame_count, align 4
  br label %if.end.132

if.end.132:                                       ; preds = %if.else.123, %if.end.122
  %151 = load float**, float*** %cep, align 8
  %152 = load float***, float**** %cep_block.addr, align 8
  store float** %151, float*** %152, align 8
  %153 = load i32, i32* %frame_count, align 4
  ret i32 %153
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare i8** @fe_create_2d(i32, i32, i32) #2

declare void @fe_pre_emphasis(i16*, double*, i32, float, i16 signext) #2

declare void @fe_short_to_double(i16*, double*, i32) #2

declare void @fe_hamming_window(double*, double*, i32) #2

declare void @fe_frame_to_fea(%struct.fe_t*, double*, double*) #2

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @fe_end_utt(%struct.fe_t* %FE, float* %cepvector) #0 {
entry:
  %FE.addr = alloca %struct.fe_t*, align 8
  %cepvector.addr = alloca float*, align 8
  %pad_len = alloca i32, align 4
  %frame_count = alloca i32, align 4
  %i = alloca i32, align 4
  %spbuf = alloca double*, align 8
  %fr_fea = alloca double*, align 8
  store %struct.fe_t* %FE, %struct.fe_t** %FE.addr, align 8
  store float* %cepvector, float** %cepvector.addr, align 8
  store i32 0, i32* %pad_len, align 4
  store i32 0, i32* %frame_count, align 4
  store double* null, double** %fr_fea, align 8
  %0 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %NUM_OVERFLOW_SAMPS = getelementptr inbounds %struct.fe_t, %struct.fe_t* %0, i32 0, i32 10
  %1 = load i32, i32* %NUM_OVERFLOW_SAMPS, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else.34

if.then:                                          ; preds = %entry
  %2 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %FRAME_SIZE = getelementptr inbounds %struct.fe_t, %struct.fe_t* %2, i32 0, i32 4
  %3 = load i32, i32* %FRAME_SIZE, align 4
  %4 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %NUM_OVERFLOW_SAMPS1 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %4, i32 0, i32 10
  %5 = load i32, i32* %NUM_OVERFLOW_SAMPS1, align 4
  %sub = sub nsw i32 %3, %5
  store i32 %sub, i32* %pad_len, align 4
  %6 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %OVERFLOW_SAMPS = getelementptr inbounds %struct.fe_t, %struct.fe_t* %6, i32 0, i32 9
  %7 = load i16*, i16** %OVERFLOW_SAMPS, align 8
  %8 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %NUM_OVERFLOW_SAMPS2 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %8, i32 0, i32 10
  %9 = load i32, i32* %NUM_OVERFLOW_SAMPS2, align 4
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds i16, i16* %7, i64 %idx.ext
  %10 = bitcast i16* %add.ptr to i8*
  %11 = load i32, i32* %pad_len, align 4
  %conv = sext i32 %11 to i64
  %mul = mul i64 %conv, 2
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 %mul, i32 2, i1 false)
  %12 = load i32, i32* %pad_len, align 4
  %13 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %NUM_OVERFLOW_SAMPS3 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %13, i32 0, i32 10
  %14 = load i32, i32* %NUM_OVERFLOW_SAMPS3, align 4
  %add = add nsw i32 %14, %12
  store i32 %add, i32* %NUM_OVERFLOW_SAMPS3, align 4
  %15 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %FRAME_SIZE4 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %15, i32 0, i32 4
  %16 = load i32, i32* %FRAME_SIZE4, align 4
  %conv5 = sext i32 %16 to i64
  %call = call noalias i8* @calloc(i64 %conv5, i64 8) #3
  %17 = bitcast i8* %call to double*
  store double* %17, double** %spbuf, align 8
  %cmp6 = icmp eq double* %17, null
  br i1 %cmp6, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i32 0, i32 0))
  call void @exit(i32 0) #5
  unreachable

if.end:                                           ; preds = %if.then
  %19 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %PRE_EMPHASIS_ALPHA = getelementptr inbounds %struct.fe_t, %struct.fe_t* %19, i32 0, i32 8
  %20 = load float, float* %PRE_EMPHASIS_ALPHA, align 4
  %conv10 = fpext float %20 to double
  %cmp11 = fcmp une double %conv10, 0.000000e+00
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end
  %21 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %OVERFLOW_SAMPS14 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %21, i32 0, i32 9
  %22 = load i16*, i16** %OVERFLOW_SAMPS14, align 8
  %23 = load double*, double** %spbuf, align 8
  %24 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %FRAME_SIZE15 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %24, i32 0, i32 4
  %25 = load i32, i32* %FRAME_SIZE15, align 4
  %26 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %PRE_EMPHASIS_ALPHA16 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %26, i32 0, i32 8
  %27 = load float, float* %PRE_EMPHASIS_ALPHA16, align 4
  %28 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %PRIOR = getelementptr inbounds %struct.fe_t, %struct.fe_t* %28, i32 0, i32 13
  %29 = load i16, i16* %PRIOR, align 2
  call void @fe_pre_emphasis(i16* %22, double* %23, i32 %25, float %27, i16 signext %29)
  br label %if.end.19

if.else:                                          ; preds = %if.end
  %30 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %OVERFLOW_SAMPS17 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %30, i32 0, i32 9
  %31 = load i16*, i16** %OVERFLOW_SAMPS17, align 8
  %32 = load double*, double** %spbuf, align 8
  %33 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %FRAME_SIZE18 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %33, i32 0, i32 4
  %34 = load i32, i32* %FRAME_SIZE18, align 4
  call void @fe_short_to_double(i16* %31, double* %32, i32 %34)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.13
  %35 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %NUM_CEPSTRA = getelementptr inbounds %struct.fe_t, %struct.fe_t* %35, i32 0, i32 7
  %36 = load i32, i32* %NUM_CEPSTRA, align 4
  %conv20 = sext i32 %36 to i64
  %call21 = call noalias i8* @calloc(i64 %conv20, i64 8) #3
  %37 = bitcast i8* %call21 to double*
  store double* %37, double** %fr_fea, align 8
  %cmp22 = icmp eq double* %37, null
  br i1 %cmp22, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.end.19
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i32 0, i32 0))
  call void @exit(i32 0) #5
  unreachable

if.end.26:                                        ; preds = %if.end.19
  %39 = load double*, double** %spbuf, align 8
  %40 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %HAMMING_WINDOW = getelementptr inbounds %struct.fe_t, %struct.fe_t* %40, i32 0, i32 14
  %41 = load double*, double** %HAMMING_WINDOW, align 8
  %42 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %FRAME_SIZE27 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %42, i32 0, i32 4
  %43 = load i32, i32* %FRAME_SIZE27, align 4
  call void @fe_hamming_window(double* %39, double* %41, i32 %43)
  %44 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %45 = load double*, double** %spbuf, align 8
  %46 = load double*, double** %fr_fea, align 8
  call void @fe_frame_to_fea(%struct.fe_t* %44, double* %45, double* %46)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.26
  %47 = load i32, i32* %i, align 4
  %48 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %NUM_CEPSTRA28 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %48, i32 0, i32 7
  %49 = load i32, i32* %NUM_CEPSTRA28, align 4
  %cmp29 = icmp slt i32 %47, %49
  br i1 %cmp29, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %50 = load i32, i32* %i, align 4
  %idxprom = sext i32 %50 to i64
  %51 = load double*, double** %fr_fea, align 8
  %arrayidx = getelementptr inbounds double, double* %51, i64 %idxprom
  %52 = load double, double* %arrayidx, align 8
  %conv31 = fptrunc double %52 to float
  %53 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %53 to i64
  %54 = load float*, float** %cepvector.addr, align 8
  %arrayidx33 = getelementptr inbounds float, float* %54, i64 %idxprom32
  store float %conv31, float* %arrayidx33, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %55 = load i32, i32* %i, align 4
  %inc = add nsw i32 %55, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %frame_count, align 4
  %56 = load double*, double** %fr_fea, align 8
  %57 = bitcast double* %56 to i8*
  call void @free(i8* %57) #3
  %58 = load double*, double** %spbuf, align 8
  %59 = bitcast double* %58 to i8*
  call void @free(i8* %59) #3
  br label %if.end.35

if.else.34:                                       ; preds = %entry
  store i32 0, i32* %frame_count, align 4
  store float* null, float** %cepvector.addr, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.34, %for.end
  %60 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %NUM_OVERFLOW_SAMPS36 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %60, i32 0, i32 10
  store i32 0, i32* %NUM_OVERFLOW_SAMPS36, align 4
  %61 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %START_FLAG = getelementptr inbounds %struct.fe_t, %struct.fe_t* %61, i32 0, i32 12
  store i32 0, i32* %START_FLAG, align 4
  %62 = load i32, i32* %frame_count, align 4
  ret i32 %62
}

; Function Attrs: nounwind uwtable
define i32 @fe_close(%struct.fe_t* %FE) #0 {
entry:
  %FE.addr = alloca %struct.fe_t*, align 8
  store %struct.fe_t* %FE, %struct.fe_t** %FE.addr, align 8
  %0 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %FB_TYPE = getelementptr inbounds %struct.fe_t, %struct.fe_t* %0, i32 0, i32 6
  %1 = load i32, i32* %FB_TYPE, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %MEL_FB = getelementptr inbounds %struct.fe_t, %struct.fe_t* %2, i32 0, i32 11
  %3 = load %struct.melfb_t*, %struct.melfb_t** %MEL_FB, align 8
  %filter_coeffs = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %3, i32 0, i32 6
  %4 = load float**, float*** %filter_coeffs, align 8
  %5 = bitcast float** %4 to i8*
  %6 = bitcast i8* %5 to i8**
  call void @fe_free_2d(i8** %6)
  %7 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %MEL_FB1 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %7, i32 0, i32 11
  %8 = load %struct.melfb_t*, %struct.melfb_t** %MEL_FB1, align 8
  %mel_cosine = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %8, i32 0, i32 7
  %9 = load float**, float*** %mel_cosine, align 8
  %10 = bitcast float** %9 to i8*
  %11 = bitcast i8* %10 to i8**
  call void @fe_free_2d(i8** %11)
  %12 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %MEL_FB2 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %12, i32 0, i32 11
  %13 = load %struct.melfb_t*, %struct.melfb_t** %MEL_FB2, align 8
  %left_apex = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %13, i32 0, i32 8
  %14 = load float*, float** %left_apex, align 8
  %15 = bitcast float* %14 to i8*
  call void @free(i8* %15) #3
  %16 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %MEL_FB3 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %16, i32 0, i32 11
  %17 = load %struct.melfb_t*, %struct.melfb_t** %MEL_FB3, align 8
  %width = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %17, i32 0, i32 9
  %18 = load i32*, i32** %width, align 8
  %19 = bitcast i32* %18 to i8*
  call void @free(i8* %19) #3
  %20 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %MEL_FB4 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %20, i32 0, i32 11
  %21 = load %struct.melfb_t*, %struct.melfb_t** %MEL_FB4, align 8
  %22 = bitcast %struct.melfb_t* %21 to i8*
  call void @free(i8* %22) #3
  br label %if.end

if.else:                                          ; preds = %entry
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %24 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %OVERFLOW_SAMPS = getelementptr inbounds %struct.fe_t, %struct.fe_t* %24, i32 0, i32 9
  %25 = load i16*, i16** %OVERFLOW_SAMPS, align 8
  %26 = bitcast i16* %25 to i8*
  call void @free(i8* %26) #3
  %27 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %28 = bitcast %struct.fe_t* %27 to i8*
  call void @free(i8* %28) #3
  ret i32 0
}

declare void @fe_free_2d(i8**) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
