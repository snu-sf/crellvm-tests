; ModuleID = 'new_fe_sp.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.complex = type { double, double }
%struct.melfb_t = type { float, i32, i32, i32, float, float, float**, float**, float*, i32*, i32 }
%struct.fe_t = type { float, i32, i32, float, i32, i32, i32, i32, float, i16*, i32, %struct.melfb_t*, i32, i16, double* }
%struct.param_t = type { float, i32, float, i32, i32, i32, i32, float, float, float, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32 }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [58 x i8] c"memory alloc failed in fe_build_mel_filters()\0A...exiting\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"memory alloc failed in fe_compute_melcosine()\0A...exiting\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"memory alloc failed in fe_frame_to_fea()\0A...exiting\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"MEL SCALE IS CURRENTLY THE ONLY IMPLEMENTATION!\0A\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"memory alloc failed in fe_spec_magnitude()\0A...exiting\0A\00", align 1
@fe_fft.s = internal global i32 0, align 4
@fe_fft.k = internal global i32 0, align 4
@fe_fft.lgN = internal global i32 0, align 4
@fe_fft.w = internal global %struct.complex* null, align 8
@fe_fft.from = internal global %struct.complex* null, align 8
@fe_fft.to = internal global %struct.complex* null, align 8
@fe_fft.wwf2 = internal global %struct.complex zeroinitializer, align 8
@fe_fft.buffer = internal global %struct.complex* null, align 8
@fe_fft.exch = internal global %struct.complex* null, align 8
@fe_fft.wEnd = internal global %struct.complex* null, align 8
@fe_fft.div = internal global double 0.000000e+00, align 8
@fe_fft.x = internal global double 0.000000e+00, align 8
@.str.5 = private unnamed_addr constant [37 x i8] c"fft: N must be a power of 2 (is %d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"fft: invert must be either +1 or -1 (is %d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"fe_create_2d failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"Please define the number of MEL filters needed\0A\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"Modify include/new_fe.h and new_fe_sp.c\0A\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"Please define the upper filt frequency needed\0A\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"Please define the lower filt frequency needed\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"Current FE Parameters:\0A\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"\09Sampling Rate:             %f\0A\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"\09Frame Size:                %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"\09Frame Shift:               %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"\09FFT Size:                  %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"\09Number of Overflow Samps:  %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"\09Start Utt Status:          %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @fe_build_melfilters(%struct.melfb_t* %MEL_FB) #0 {
entry:
  %MEL_FB.addr = alloca %struct.melfb_t*, align 8
  %i = alloca i32, align 4
  %whichfilt = alloca i32, align 4
  %start_pt = alloca i32, align 4
  %leftfr = alloca float, align 4
  %centerfr = alloca float, align 4
  %rightfr = alloca float, align 4
  %fwidth = alloca float, align 4
  %height = alloca float, align 4
  %filt_edge = alloca float*, align 8
  %melmax = alloca float, align 4
  %melmin = alloca float, align 4
  %dmelbw = alloca float, align 4
  %freq = alloca float, align 4
  %dfreq = alloca float, align 4
  %leftslope = alloca float, align 4
  %rightslope = alloca float, align 4
  store %struct.melfb_t* %MEL_FB, %struct.melfb_t** %MEL_FB.addr, align 8
  %0 = load %struct.melfb_t*, %struct.melfb_t** %MEL_FB.addr, align 8
  %num_filters = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %0, i32 0, i32 2
  %1 = load i32, i32* %num_filters, align 4
  %2 = load %struct.melfb_t*, %struct.melfb_t** %MEL_FB.addr, align 8
  %fft_size = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %2, i32 0, i32 3
  %3 = load i32, i32* %fft_size, align 4
  %call = call i8** @fe_create_2d(i32 %1, i32 %3, i32 4)
  %4 = bitcast i8** %call to float**
  %5 = load %struct.melfb_t*, %struct.melfb_t** %MEL_FB.addr, align 8
  %filter_coeffs = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %5, i32 0, i32 6
  store float** %4, float*** %filter_coeffs, align 8
  %6 = load %struct.melfb_t*, %struct.melfb_t** %MEL_FB.addr, align 8
  %num_filters1 = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %6, i32 0, i32 2
  %7 = load i32, i32* %num_filters1, align 4
  %conv = sext i32 %7 to i64
  %call2 = call noalias i8* @calloc(i64 %conv, i64 4) #4
  %8 = bitcast i8* %call2 to float*
  %9 = load %struct.melfb_t*, %struct.melfb_t** %MEL_FB.addr, align 8
  %left_apex = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %9, i32 0, i32 8
  store float* %8, float** %left_apex, align 8
  %10 = load %struct.melfb_t*, %struct.melfb_t** %MEL_FB.addr, align 8
  %num_filters3 = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %10, i32 0, i32 2
  %11 = load i32, i32* %num_filters3, align 4
  %conv4 = sext i32 %11 to i64
  %call5 = call noalias i8* @calloc(i64 %conv4, i64 4) #4
  %12 = bitcast i8* %call5 to i32*
  %13 = load %struct.melfb_t*, %struct.melfb_t** %MEL_FB.addr, align 8
  %width = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %13, i32 0, i32 9
  store i32* %12, i32** %width, align 8
  %14 = load %struct.melfb_t*, %struct.melfb_t** %MEL_FB.addr, align 8
  %doublewide = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %14, i32 0, i32 10
  %15 = load i32, i32* %doublewide, align 4
  %cmp = icmp eq i32 %15, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %16 = load %struct.melfb_t*, %struct.melfb_t** %MEL_FB.addr, align 8
  %num_filters7 = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %16, i32 0, i32 2
  %17 = load i32, i32* %num_filters7, align 4
  %add = add nsw i32 %17, 4
  %conv8 = sext i32 %add to i64
  %call9 = call noalias i8* @calloc(i64 %conv8, i64 4) #4
  %18 = bitcast i8* %call9 to float*
  store float* %18, float** %filt_edge, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %19 = load %struct.melfb_t*, %struct.melfb_t** %MEL_FB.addr, align 8
  %num_filters10 = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %19, i32 0, i32 2
  %20 = load i32, i32* %num_filters10, align 4
  %add11 = add nsw i32 %20, 2
  %conv12 = sext i32 %add11 to i64
  %call13 = call noalias i8* @calloc(i64 %conv12, i64 4) #4
  %21 = bitcast i8* %call13 to float*
  store float* %21, float** %filt_edge, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %22 = load %struct.melfb_t*, %struct.melfb_t** %MEL_FB.addr, align 8
  %filter_coeffs14 = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %22, i32 0, i32 6
  %23 = load float**, float*** %filter_coeffs14, align 8
  %cmp15 = icmp eq float** %23, null
  br i1 %cmp15, label %if.then.27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %24 = load %struct.melfb_t*, %struct.melfb_t** %MEL_FB.addr, align 8
  %left_apex17 = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %24, i32 0, i32 8
  %25 = load float*, float** %left_apex17, align 8
  %cmp18 = icmp eq float* %25, null
  br i1 %cmp18, label %if.then.27, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %lor.lhs.false
  %26 = load %struct.melfb_t*, %struct.melfb_t** %MEL_FB.addr, align 8
  %width21 = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %26, i32 0, i32 9
  %27 = load i32*, i32** %width21, align 8
  %cmp22 = icmp eq i32* %27, null
  br i1 %cmp22, label %if.then.27, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %lor.lhs.false.20
  %28 = load float*, float** %filt_edge, align 8
  %cmp25 = icmp eq float* %28, null
  br i1 %cmp25, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %lor.lhs.false.24, %lor.lhs.false.20, %lor.lhs.false, %if.end
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 0) #5
  unreachable

if.end.29:                                        ; preds = %lor.lhs.false.24
  %30 = load %struct.melfb_t*, %struct.melfb_t** %MEL_FB.addr, align 8
  %sampling_rate = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %30, i32 0, i32 0
  %31 = load float, float* %sampling_rate, align 4
  %32 = load %struct.melfb_t*, %struct.melfb_t** %MEL_FB.addr, align 8
  %fft_size30 = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %32, i32 0, i32 3
  %33 = load i32, i32* %fft_size30, align 4
  %conv31 = sitofp i32 %33 to float
  %div = fdiv float %31, %conv31
  store float %div, float* %dfreq, align 4
  %34 = load %struct.melfb_t*, %struct.melfb_t** %MEL_FB.addr, align 8
  %upper_filt_freq = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %34, i32 0, i32 5
  %35 = load float, float* %upper_filt_freq, align 4
  %call32 = call float @fe_mel(float %35)
  store float %call32, float* %melmax, align 4
  %36 = load %struct.melfb_t*, %struct.melfb_t** %MEL_FB.addr, align 8
  %lower_filt_freq = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %36, i32 0, i32 4
  %37 = load float, float* %lower_filt_freq, align 4
  %call33 = call float @fe_mel(float %37)
  store float %call33, float* %melmin, align 4
  %38 = load float, float* %melmax, align 4
  %39 = load float, float* %melmin, align 4
  %sub = fsub float %38, %39
  %40 = load %struct.melfb_t*, %struct.melfb_t** %MEL_FB.addr, align 8
  %num_filters34 = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %40, i32 0, i32 2
  %41 = load i32, i32* %num_filters34, align 4
  %add35 = add nsw i32 %41, 1
  %conv36 = sitofp i32 %add35 to float
  %div37 = fdiv float %sub, %conv36
  store float %div37, float* %dmelbw, align 4
  %42 = load %struct.melfb_t*, %struct.melfb_t** %MEL_FB.addr, align 8
  %doublewide38 = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %42, i32 0, i32 10
  %43 = load i32, i32* %doublewide38, align 4
  %cmp39 = icmp eq i32 %43, 1
  br i1 %cmp39, label %if.then.41, label %if.else.49

if.then.41:                                       ; preds = %if.end.29
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.41
  %44 = load i32, i32* %i, align 4
  %45 = load %struct.melfb_t*, %struct.melfb_t** %MEL_FB.addr, align 8
  %num_filters42 = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %45, i32 0, i32 2
  %46 = load i32, i32* %num_filters42, align 4
  %add43 = add nsw i32 %46, 3
  %cmp44 = icmp sle i32 %44, %add43
  br i1 %cmp44, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %47 = load i32, i32* %i, align 4
  %conv46 = sitofp i32 %47 to float
  %48 = load float, float* %dmelbw, align 4
  %mul = fmul float %conv46, %48
  %49 = load float, float* %melmin, align 4
  %add47 = fadd float %mul, %49
  %call48 = call float @fe_melinv(float %add47)
  %50 = load i32, i32* %i, align 4
  %idxprom = sext i32 %50 to i64
  %51 = load float*, float** %filt_edge, align 8
  %arrayidx = getelementptr inbounds float, float* %51, i64 %idxprom
  store float %call48, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %52 = load i32, i32* %i, align 4
  %inc = add nsw i32 %52, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.65

if.else.49:                                       ; preds = %if.end.29
  store i32 0, i32* %i, align 4
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.62, %if.else.49
  %53 = load i32, i32* %i, align 4
  %54 = load %struct.melfb_t*, %struct.melfb_t** %MEL_FB.addr, align 8
  %num_filters51 = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %54, i32 0, i32 2
  %55 = load i32, i32* %num_filters51, align 4
  %add52 = add nsw i32 %55, 1
  %cmp53 = icmp sle i32 %53, %add52
  br i1 %cmp53, label %for.body.55, label %for.end.64

for.body.55:                                      ; preds = %for.cond.50
  %56 = load i32, i32* %i, align 4
  %conv56 = sitofp i32 %56 to float
  %57 = load float, float* %dmelbw, align 4
  %mul57 = fmul float %conv56, %57
  %58 = load float, float* %melmin, align 4
  %add58 = fadd float %mul57, %58
  %call59 = call float @fe_melinv(float %add58)
  %59 = load i32, i32* %i, align 4
  %idxprom60 = sext i32 %59 to i64
  %60 = load float*, float** %filt_edge, align 8
  %arrayidx61 = getelementptr inbounds float, float* %60, i64 %idxprom60
  store float %call59, float* %arrayidx61, align 4
  br label %for.inc.62

for.inc.62:                                       ; preds = %for.body.55
  %61 = load i32, i32* %i, align 4
  %inc63 = add nsw i32 %61, 1
  store i32 %inc63, i32* %i, align 4
  br label %for.cond.50

for.end.64:                                       ; preds = %for.cond.50
  br label %if.end.65

if.end.65:                                        ; preds = %for.end.64, %for.end
  store i32 0, i32* %whichfilt, align 4
  br label %for.cond.66

for.cond.66:                                      ; preds = %for.inc.191, %if.end.65
  %62 = load i32, i32* %whichfilt, align 4
  %63 = load %struct.melfb_t*, %struct.melfb_t** %MEL_FB.addr, align 8
  %num_filters67 = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %63, i32 0, i32 2
  %64 = load i32, i32* %num_filters67, align 4
  %cmp68 = icmp slt i32 %62, %64
  br i1 %cmp68, label %for.body.70, label %for.end.193

for.body.70:                                      ; preds = %for.cond.66
  %65 = load %struct.melfb_t*, %struct.melfb_t** %MEL_FB.addr, align 8
  %doublewide71 = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %65, i32 0, i32 10
  %66 = load i32, i32* %doublewide71, align 4
  %cmp72 = icmp eq i32 %66, 1
  br i1 %cmp72, label %if.then.74, label %if.else.101

if.then.74:                                       ; preds = %for.body.70
  %67 = load i32, i32* %whichfilt, align 4
  %idxprom75 = sext i32 %67 to i64
  %68 = load float*, float** %filt_edge, align 8
  %arrayidx76 = getelementptr inbounds float, float* %68, i64 %idxprom75
  %69 = load float, float* %arrayidx76, align 4
  %70 = load float, float* %dfreq, align 4
  %div77 = fdiv float %69, %70
  %conv78 = fpext float %div77 to double
  %add79 = fadd double %conv78, 5.000000e-01
  %conv80 = fptosi double %add79 to i32
  %conv81 = sitofp i32 %conv80 to float
  %71 = load float, float* %dfreq, align 4
  %mul82 = fmul float %conv81, %71
  store float %mul82, float* %leftfr, align 4
  %72 = load i32, i32* %whichfilt, align 4
  %add83 = add nsw i32 %72, 2
  %idxprom84 = sext i32 %add83 to i64
  %73 = load float*, float** %filt_edge, align 8
  %arrayidx85 = getelementptr inbounds float, float* %73, i64 %idxprom84
  %74 = load float, float* %arrayidx85, align 4
  %75 = load float, float* %dfreq, align 4
  %div86 = fdiv float %74, %75
  %conv87 = fpext float %div86 to double
  %add88 = fadd double %conv87, 5.000000e-01
  %conv89 = fptosi double %add88 to i32
  %conv90 = sitofp i32 %conv89 to float
  %76 = load float, float* %dfreq, align 4
  %mul91 = fmul float %conv90, %76
  store float %mul91, float* %centerfr, align 4
  %77 = load i32, i32* %whichfilt, align 4
  %add92 = add nsw i32 %77, 4
  %idxprom93 = sext i32 %add92 to i64
  %78 = load float*, float** %filt_edge, align 8
  %arrayidx94 = getelementptr inbounds float, float* %78, i64 %idxprom93
  %79 = load float, float* %arrayidx94, align 4
  %80 = load float, float* %dfreq, align 4
  %div95 = fdiv float %79, %80
  %conv96 = fpext float %div95 to double
  %add97 = fadd double %conv96, 5.000000e-01
  %conv98 = fptosi double %add97 to i32
  %conv99 = sitofp i32 %conv98 to float
  %81 = load float, float* %dfreq, align 4
  %mul100 = fmul float %conv99, %81
  store float %mul100, float* %rightfr, align 4
  br label %if.end.128

if.else.101:                                      ; preds = %for.body.70
  %82 = load i32, i32* %whichfilt, align 4
  %idxprom102 = sext i32 %82 to i64
  %83 = load float*, float** %filt_edge, align 8
  %arrayidx103 = getelementptr inbounds float, float* %83, i64 %idxprom102
  %84 = load float, float* %arrayidx103, align 4
  %85 = load float, float* %dfreq, align 4
  %div104 = fdiv float %84, %85
  %conv105 = fpext float %div104 to double
  %add106 = fadd double %conv105, 5.000000e-01
  %conv107 = fptosi double %add106 to i32
  %conv108 = sitofp i32 %conv107 to float
  %86 = load float, float* %dfreq, align 4
  %mul109 = fmul float %conv108, %86
  store float %mul109, float* %leftfr, align 4
  %87 = load i32, i32* %whichfilt, align 4
  %add110 = add nsw i32 %87, 1
  %idxprom111 = sext i32 %add110 to i64
  %88 = load float*, float** %filt_edge, align 8
  %arrayidx112 = getelementptr inbounds float, float* %88, i64 %idxprom111
  %89 = load float, float* %arrayidx112, align 4
  %90 = load float, float* %dfreq, align 4
  %div113 = fdiv float %89, %90
  %conv114 = fpext float %div113 to double
  %add115 = fadd double %conv114, 5.000000e-01
  %conv116 = fptosi double %add115 to i32
  %conv117 = sitofp i32 %conv116 to float
  %91 = load float, float* %dfreq, align 4
  %mul118 = fmul float %conv117, %91
  store float %mul118, float* %centerfr, align 4
  %92 = load i32, i32* %whichfilt, align 4
  %add119 = add nsw i32 %92, 2
  %idxprom120 = sext i32 %add119 to i64
  %93 = load float*, float** %filt_edge, align 8
  %arrayidx121 = getelementptr inbounds float, float* %93, i64 %idxprom120
  %94 = load float, float* %arrayidx121, align 4
  %95 = load float, float* %dfreq, align 4
  %div122 = fdiv float %94, %95
  %conv123 = fpext float %div122 to double
  %add124 = fadd double %conv123, 5.000000e-01
  %conv125 = fptosi double %add124 to i32
  %conv126 = sitofp i32 %conv125 to float
  %96 = load float, float* %dfreq, align 4
  %mul127 = fmul float %conv126, %96
  store float %mul127, float* %rightfr, align 4
  br label %if.end.128

if.end.128:                                       ; preds = %if.else.101, %if.then.74
  %97 = load float, float* %leftfr, align 4
  %98 = load i32, i32* %whichfilt, align 4
  %idxprom129 = sext i32 %98 to i64
  %99 = load %struct.melfb_t*, %struct.melfb_t** %MEL_FB.addr, align 8
  %left_apex130 = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %99, i32 0, i32 8
  %100 = load float*, float** %left_apex130, align 8
  %arrayidx131 = getelementptr inbounds float, float* %100, i64 %idxprom129
  store float %97, float* %arrayidx131, align 4
  %101 = load float, float* %rightfr, align 4
  %102 = load float, float* %leftfr, align 4
  %sub132 = fsub float %101, %102
  store float %sub132, float* %fwidth, align 4
  %103 = load float, float* %fwidth, align 4
  %div133 = fdiv float 2.000000e+00, %103
  store float %div133, float* %height, align 4
  %104 = load float, float* %centerfr, align 4
  %105 = load float, float* %leftfr, align 4
  %cmp134 = fcmp une float %104, %105
  br i1 %cmp134, label %if.then.136, label %if.end.139

if.then.136:                                      ; preds = %if.end.128
  %106 = load float, float* %height, align 4
  %107 = load float, float* %centerfr, align 4
  %108 = load float, float* %leftfr, align 4
  %sub137 = fsub float %107, %108
  %div138 = fdiv float %106, %sub137
  store float %div138, float* %leftslope, align 4
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.136, %if.end.128
  %109 = load float, float* %centerfr, align 4
  %110 = load float, float* %rightfr, align 4
  %cmp140 = fcmp une float %109, %110
  br i1 %cmp140, label %if.then.142, label %if.end.145

if.then.142:                                      ; preds = %if.end.139
  %111 = load float, float* %height, align 4
  %112 = load float, float* %centerfr, align 4
  %113 = load float, float* %rightfr, align 4
  %sub143 = fsub float %112, %113
  %div144 = fdiv float %111, %sub143
  store float %div144, float* %rightslope, align 4
  br label %if.end.145

if.end.145:                                       ; preds = %if.then.142, %if.end.139
  %114 = load float, float* %leftfr, align 4
  %115 = load float, float* %dfreq, align 4
  %div146 = fdiv float %114, %115
  %conv147 = fpext float %div146 to double
  %add148 = fadd double %conv147, 5.000000e-01
  %conv149 = fptosi double %add148 to i32
  store i32 %conv149, i32* %start_pt, align 4
  %116 = load i32, i32* %start_pt, align 4
  %conv150 = sitofp i32 %116 to float
  %117 = load float, float* %dfreq, align 4
  %mul151 = fmul float %conv150, %117
  store float %mul151, float* %freq, align 4
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.145
  %118 = load float, float* %freq, align 4
  %119 = load float, float* %centerfr, align 4
  %cmp152 = fcmp olt float %118, %119
  br i1 %cmp152, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %120 = load float, float* %freq, align 4
  %121 = load float, float* %leftfr, align 4
  %sub154 = fsub float %120, %121
  %122 = load float, float* %leftslope, align 4
  %mul155 = fmul float %sub154, %122
  %123 = load i32, i32* %i, align 4
  %idxprom156 = sext i32 %123 to i64
  %124 = load i32, i32* %whichfilt, align 4
  %idxprom157 = sext i32 %124 to i64
  %125 = load %struct.melfb_t*, %struct.melfb_t** %MEL_FB.addr, align 8
  %filter_coeffs158 = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %125, i32 0, i32 6
  %126 = load float**, float*** %filter_coeffs158, align 8
  %arrayidx159 = getelementptr inbounds float*, float** %126, i64 %idxprom157
  %127 = load float*, float** %arrayidx159, align 8
  %arrayidx160 = getelementptr inbounds float, float* %127, i64 %idxprom156
  store float %mul155, float* %arrayidx160, align 4
  %128 = load float, float* %dfreq, align 4
  %129 = load float, float* %freq, align 4
  %add161 = fadd float %129, %128
  store float %add161, float* %freq, align 4
  %130 = load i32, i32* %i, align 4
  %inc162 = add nsw i32 %130, 1
  store i32 %inc162, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %131 = load float, float* %freq, align 4
  %132 = load float, float* %centerfr, align 4
  %cmp163 = fcmp oeq float %131, %132
  br i1 %cmp163, label %if.then.165, label %if.end.173

if.then.165:                                      ; preds = %while.end
  %133 = load float, float* %height, align 4
  %134 = load i32, i32* %i, align 4
  %idxprom166 = sext i32 %134 to i64
  %135 = load i32, i32* %whichfilt, align 4
  %idxprom167 = sext i32 %135 to i64
  %136 = load %struct.melfb_t*, %struct.melfb_t** %MEL_FB.addr, align 8
  %filter_coeffs168 = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %136, i32 0, i32 6
  %137 = load float**, float*** %filter_coeffs168, align 8
  %arrayidx169 = getelementptr inbounds float*, float** %137, i64 %idxprom167
  %138 = load float*, float** %arrayidx169, align 8
  %arrayidx170 = getelementptr inbounds float, float* %138, i64 %idxprom166
  store float %133, float* %arrayidx170, align 4
  %139 = load float, float* %dfreq, align 4
  %140 = load float, float* %freq, align 4
  %add171 = fadd float %140, %139
  store float %add171, float* %freq, align 4
  %141 = load i32, i32* %i, align 4
  %inc172 = add nsw i32 %141, 1
  store i32 %inc172, i32* %i, align 4
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.165, %while.end
  br label %while.cond.174

while.cond.174:                                   ; preds = %while.body.177, %if.end.173
  %142 = load float, float* %freq, align 4
  %143 = load float, float* %rightfr, align 4
  %cmp175 = fcmp olt float %142, %143
  br i1 %cmp175, label %while.body.177, label %while.end.187

while.body.177:                                   ; preds = %while.cond.174
  %144 = load float, float* %freq, align 4
  %145 = load float, float* %rightfr, align 4
  %sub178 = fsub float %144, %145
  %146 = load float, float* %rightslope, align 4
  %mul179 = fmul float %sub178, %146
  %147 = load i32, i32* %i, align 4
  %idxprom180 = sext i32 %147 to i64
  %148 = load i32, i32* %whichfilt, align 4
  %idxprom181 = sext i32 %148 to i64
  %149 = load %struct.melfb_t*, %struct.melfb_t** %MEL_FB.addr, align 8
  %filter_coeffs182 = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %149, i32 0, i32 6
  %150 = load float**, float*** %filter_coeffs182, align 8
  %arrayidx183 = getelementptr inbounds float*, float** %150, i64 %idxprom181
  %151 = load float*, float** %arrayidx183, align 8
  %arrayidx184 = getelementptr inbounds float, float* %151, i64 %idxprom180
  store float %mul179, float* %arrayidx184, align 4
  %152 = load float, float* %dfreq, align 4
  %153 = load float, float* %freq, align 4
  %add185 = fadd float %153, %152
  store float %add185, float* %freq, align 4
  %154 = load i32, i32* %i, align 4
  %inc186 = add nsw i32 %154, 1
  store i32 %inc186, i32* %i, align 4
  br label %while.cond.174

while.end.187:                                    ; preds = %while.cond.174
  %155 = load i32, i32* %i, align 4
  %156 = load i32, i32* %whichfilt, align 4
  %idxprom188 = sext i32 %156 to i64
  %157 = load %struct.melfb_t*, %struct.melfb_t** %MEL_FB.addr, align 8
  %width189 = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %157, i32 0, i32 9
  %158 = load i32*, i32** %width189, align 8
  %arrayidx190 = getelementptr inbounds i32, i32* %158, i64 %idxprom188
  store i32 %155, i32* %arrayidx190, align 4
  br label %for.inc.191

for.inc.191:                                      ; preds = %while.end.187
  %159 = load i32, i32* %whichfilt, align 4
  %inc192 = add nsw i32 %159, 1
  store i32 %inc192, i32* %whichfilt, align 4
  br label %for.cond.66

for.end.193:                                      ; preds = %for.cond.66
  %160 = load float*, float** %filt_edge, align 8
  %161 = bitcast float* %160 to i8*
  call void @free(i8* %161) #4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i8** @fe_create_2d(i32 %d1, i32 %d2, i32 %elem_size) #0 {
entry:
  %retval = alloca i8**, align 8
  %d1.addr = alloca i32, align 4
  %d2.addr = alloca i32, align 4
  %elem_size.addr = alloca i32, align 4
  %store = alloca i8*, align 8
  %out = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %d1, i32* %d1.addr, align 4
  store i32 %d2, i32* %d2.addr, align 4
  store i32 %elem_size, i32* %elem_size.addr, align 4
  %0 = load i32, i32* %d1.addr, align 4
  %1 = load i32, i32* %d2.addr, align 4
  %mul = mul nsw i32 %0, %1
  %conv = sext i32 %mul to i64
  %2 = load i32, i32* %elem_size.addr, align 4
  %conv1 = sext i32 %2 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 %conv1) #4
  store i8* %call, i8** %store, align 8
  %3 = load i8*, i8** %store, align 8
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0))
  store i8** null, i8*** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %d1.addr, align 4
  %conv4 = sext i32 %5 to i64
  %call5 = call noalias i8* @calloc(i64 %conv4, i64 8) #4
  %6 = bitcast i8* %call5 to i8**
  store i8** %6, i8*** %out, align 8
  %7 = load i8**, i8*** %out, align 8
  %cmp6 = icmp eq i8** %7, null
  br i1 %cmp6, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0))
  %9 = load i8*, i8** %store, align 8
  call void @free(i8* %9) #4
  store i8** null, i8*** %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.10
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %d1.addr, align 4
  %cmp11 = icmp slt i32 %10, %11
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %j, align 4
  %13 = load i32, i32* %elem_size.addr, align 4
  %mul13 = mul nsw i32 %12, %13
  %idxprom = sext i32 %mul13 to i64
  %14 = load i8*, i8** %store, align 8
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 %idxprom
  %15 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %15 to i64
  %16 = load i8**, i8*** %out, align 8
  %arrayidx15 = getelementptr inbounds i8*, i8** %16, i64 %idxprom14
  store i8* %arrayidx, i8** %arrayidx15, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  %18 = load i32, i32* %d2.addr, align 4
  %19 = load i32, i32* %j, align 4
  %add = add nsw i32 %19, %18
  store i32 %add, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load i8**, i8*** %out, align 8
  store i8** %20, i8*** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.8, %if.then
  %21 = load i8**, i8*** %retval
  ret i8** %21
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind uwtable
define float @fe_mel(float %x) #0 {
entry:
  %x.addr = alloca float, align 4
  store float %x, float* %x.addr, align 4
  %0 = load float, float* %x.addr, align 4
  %conv = fpext float %0 to double
  %div = fdiv double %conv, 7.000000e+02
  %add = fadd double 1.000000e+00, %div
  %call = call double @log10(double %add) #4
  %conv1 = fptrunc double %call to float
  %conv2 = fpext float %conv1 to double
  %mul = fmul double 2.595000e+03, %conv2
  %conv3 = fptrunc double %mul to float
  ret float %conv3
}

; Function Attrs: nounwind uwtable
define float @fe_melinv(float %x) #0 {
entry:
  %x.addr = alloca float, align 4
  store float %x, float* %x.addr, align 4
  %0 = load float, float* %x.addr, align 4
  %conv = fpext float %0 to double
  %div = fdiv double %conv, 2.595000e+03
  %call = call double @pow(double 1.000000e+01, double %div) #4
  %conv1 = fptrunc double %call to float
  %conv2 = fpext float %conv1 to double
  %sub = fsub double %conv2, 1.000000e+00
  %mul = fmul double 7.000000e+02, %sub
  %conv3 = fptrunc double %mul to float
  ret float %conv3
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @fe_compute_melcosine(%struct.melfb_t* %MEL_FB) #0 {
entry:
  %MEL_FB.addr = alloca %struct.melfb_t*, align 8
  %period = alloca double, align 8
  %freq = alloca double, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.melfb_t* %MEL_FB, %struct.melfb_t** %MEL_FB.addr, align 8
  %0 = load %struct.melfb_t*, %struct.melfb_t** %MEL_FB.addr, align 8
  %num_filters = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %0, i32 0, i32 2
  %1 = load i32, i32* %num_filters, align 4
  %conv = sitofp i32 %1 to double
  %mul = fmul double 2.000000e+00, %conv
  store double %mul, double* %period, align 8
  %2 = load %struct.melfb_t*, %struct.melfb_t** %MEL_FB.addr, align 8
  %num_cepstra = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %2, i32 0, i32 1
  %3 = load i32, i32* %num_cepstra, align 4
  %4 = load %struct.melfb_t*, %struct.melfb_t** %MEL_FB.addr, align 8
  %num_filters1 = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %4, i32 0, i32 2
  %5 = load i32, i32* %num_filters1, align 4
  %call = call i8** @fe_create_2d(i32 %3, i32 %5, i32 4)
  %6 = bitcast i8** %call to float**
  %7 = load %struct.melfb_t*, %struct.melfb_t** %MEL_FB.addr, align 8
  %mel_cosine = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %7, i32 0, i32 7
  store float** %6, float*** %mel_cosine, align 8
  %cmp = icmp eq float** %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i32 0, i32 0))
  call void @exit(i32 0) #5
  unreachable

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.21, %if.end
  %9 = load i32, i32* %i, align 4
  %10 = load %struct.melfb_t*, %struct.melfb_t** %MEL_FB.addr, align 8
  %num_cepstra4 = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %10, i32 0, i32 1
  %11 = load i32, i32* %num_cepstra4, align 4
  %cmp5 = icmp slt i32 %9, %11
  br i1 %cmp5, label %for.body, label %for.end.23

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4
  %conv7 = sitofp i32 %12 to double
  %mul8 = fmul double 0x401921FB54442D18, %conv7
  %13 = load double, double* %period, align 8
  %div = fdiv double %mul8, %13
  store double %div, double* %freq, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %for.body
  %14 = load i32, i32* %j, align 4
  %15 = load %struct.melfb_t*, %struct.melfb_t** %MEL_FB.addr, align 8
  %num_filters10 = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %15, i32 0, i32 2
  %16 = load i32, i32* %num_filters10, align 4
  %cmp11 = icmp slt i32 %14, %16
  br i1 %cmp11, label %for.body.13, label %for.end

for.body.13:                                      ; preds = %for.cond.9
  %17 = load double, double* %freq, align 8
  %18 = load i32, i32* %j, align 4
  %conv14 = sitofp i32 %18 to double
  %add = fadd double %conv14, 5.000000e-01
  %mul15 = fmul double %17, %add
  %call16 = call double @cos(double %mul15) #4
  %conv17 = fptrunc double %call16 to float
  %19 = load i32, i32* %j, align 4
  %idxprom = sext i32 %19 to i64
  %20 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %20 to i64
  %21 = load %struct.melfb_t*, %struct.melfb_t** %MEL_FB.addr, align 8
  %mel_cosine19 = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %21, i32 0, i32 7
  %22 = load float**, float*** %mel_cosine19, align 8
  %arrayidx = getelementptr inbounds float*, float** %22, i64 %idxprom18
  %23 = load float*, float** %arrayidx, align 8
  %arrayidx20 = getelementptr inbounds float, float* %23, i64 %idxprom
  store float %conv17, float* %arrayidx20, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.13
  %24 = load i32, i32* %j, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.9

for.end:                                          ; preds = %for.cond.9
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.end
  %25 = load i32, i32* %i, align 4
  %inc22 = add nsw i32 %25, 1
  store i32 %inc22, i32* %i, align 4
  br label %for.cond

for.end.23:                                       ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nounwind
declare double @cos(double) #1

; Function Attrs: nounwind
declare double @log10(double) #1

; Function Attrs: nounwind
declare double @pow(double, double) #1

; Function Attrs: nounwind uwtable
define void @fe_pre_emphasis(i16* %in, double* %out, i32 %len, float %factor, i16 signext %prior) #0 {
entry:
  %in.addr = alloca i16*, align 8
  %out.addr = alloca double*, align 8
  %len.addr = alloca i32, align 4
  %factor.addr = alloca float, align 4
  %prior.addr = alloca i16, align 2
  %i = alloca i32, align 4
  store i16* %in, i16** %in.addr, align 8
  store double* %out, double** %out.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store float %factor, float* %factor.addr, align 4
  store i16 %prior, i16* %prior.addr, align 2
  %0 = load i16*, i16** %in.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 0
  %1 = load i16, i16* %arrayidx, align 2
  %conv = sitofp i16 %1 to double
  %2 = load float, float* %factor.addr, align 4
  %conv1 = fpext float %2 to double
  %3 = load i16, i16* %prior.addr, align 2
  %conv2 = sitofp i16 %3 to double
  %mul = fmul double %conv1, %conv2
  %sub = fsub double %conv, %mul
  %4 = load double*, double** %out.addr, align 8
  %arrayidx3 = getelementptr inbounds double, double* %4, i64 0
  store double %sub, double* %arrayidx3, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %len.addr, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i16*, i16** %in.addr, align 8
  %arrayidx5 = getelementptr inbounds i16, i16* %8, i64 %idxprom
  %9 = load i16, i16* %arrayidx5, align 2
  %conv6 = sitofp i16 %9 to double
  %10 = load float, float* %factor.addr, align 4
  %conv7 = fpext float %10 to double
  %11 = load i32, i32* %i, align 4
  %sub8 = sub nsw i32 %11, 1
  %idxprom9 = sext i32 %sub8 to i64
  %12 = load i16*, i16** %in.addr, align 8
  %arrayidx10 = getelementptr inbounds i16, i16* %12, i64 %idxprom9
  %13 = load i16, i16* %arrayidx10, align 2
  %conv11 = sitofp i16 %13 to double
  %mul12 = fmul double %conv7, %conv11
  %sub13 = fsub double %conv6, %mul12
  %14 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %14 to i64
  %15 = load double*, double** %out.addr, align 8
  %arrayidx15 = getelementptr inbounds double, double* %15, i64 %idxprom14
  store double %sub13, double* %arrayidx15, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @fe_short_to_double(i16* %in, double* %out, i32 %len) #0 {
entry:
  %in.addr = alloca i16*, align 8
  %out.addr = alloca double*, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i16* %in, i16** %in.addr, align 8
  store double* %out, double** %out.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %len.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i16*, i16** %in.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 %idxprom
  %4 = load i16, i16* %arrayidx, align 2
  %conv = sitofp i16 %4 to double
  %5 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load double*, double** %out.addr, align 8
  %arrayidx2 = getelementptr inbounds double, double* %6, i64 %idxprom1
  store double %conv, double* %arrayidx2, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @fe_create_hamming(double* %in, i32 %in_len) #0 {
entry:
  %in.addr = alloca double*, align 8
  %in_len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store double* %in, double** %in.addr, align 8
  store i32 %in_len, i32* %in_len.addr, align 4
  %0 = load i32, i32* %in_len.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %in_len.addr, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %conv = sitofp i32 %3 to double
  %mul = fmul double 0x401921FB54442D18, %conv
  %4 = load i32, i32* %in_len.addr, align 4
  %conv2 = sitofp i32 %4 to double
  %sub = fsub double %conv2, 1.000000e+00
  %div = fdiv double %mul, %sub
  %call = call double @cos(double %div) #4
  %mul3 = fmul double 4.600000e-01, %call
  %sub4 = fsub double 5.400000e-01, %mul3
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load double*, double** %in.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %6, i64 %idxprom
  store double %sub4, double* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @fe_hamming_window(double* %in, double* %window, i32 %in_len) #0 {
entry:
  %in.addr = alloca double*, align 8
  %window.addr = alloca double*, align 8
  %in_len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store double* %in, double** %in.addr, align 8
  store double* %window, double** %window.addr, align 8
  store i32 %in_len, i32* %in_len.addr, align 4
  %0 = load i32, i32* %in_len.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %in_len.addr, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load double*, double** %window.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %4, i64 %idxprom
  %5 = load double, double* %arrayidx, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %6 to i64
  %7 = load double*, double** %in.addr, align 8
  %arrayidx3 = getelementptr inbounds double, double* %7, i64 %idxprom2
  %8 = load double, double* %arrayidx3, align 8
  %mul = fmul double %8, %5
  store double %mul, double* %arrayidx3, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @fe_frame_to_fea(%struct.fe_t* %FE, double* %in, double* %fea) #0 {
entry:
  %FE.addr = alloca %struct.fe_t*, align 8
  %in.addr = alloca double*, align 8
  %fea.addr = alloca double*, align 8
  %spec = alloca double*, align 8
  %mfspec = alloca double*, align 8
  store %struct.fe_t* %FE, %struct.fe_t** %FE.addr, align 8
  store double* %in, double** %in.addr, align 8
  store double* %fea, double** %fea.addr, align 8
  %0 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %FB_TYPE = getelementptr inbounds %struct.fe_t, %struct.fe_t* %0, i32 0, i32 6
  %1 = load i32, i32* %FB_TYPE, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %FFT_SIZE = getelementptr inbounds %struct.fe_t, %struct.fe_t* %2, i32 0, i32 5
  %3 = load i32, i32* %FFT_SIZE, align 4
  %conv = sext i32 %3 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #4
  %4 = bitcast i8* %call to double*
  store double* %4, double** %spec, align 8
  %5 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %MEL_FB = getelementptr inbounds %struct.fe_t, %struct.fe_t* %5, i32 0, i32 11
  %6 = load %struct.melfb_t*, %struct.melfb_t** %MEL_FB, align 8
  %num_filters = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %6, i32 0, i32 2
  %7 = load i32, i32* %num_filters, align 4
  %conv1 = sext i32 %7 to i64
  %call2 = call noalias i8* @calloc(i64 %conv1, i64 8) #4
  %8 = bitcast i8* %call2 to double*
  store double* %8, double** %mfspec, align 8
  %9 = load double*, double** %spec, align 8
  %cmp3 = icmp eq double* %9, null
  br i1 %cmp3, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %10 = load double*, double** %mfspec, align 8
  %cmp5 = icmp eq double* %10, null
  br i1 %cmp5, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %lor.lhs.false, %if.then
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 0) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %12 = load double*, double** %in.addr, align 8
  %13 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %FRAME_SIZE = getelementptr inbounds %struct.fe_t, %struct.fe_t* %13, i32 0, i32 4
  %14 = load i32, i32* %FRAME_SIZE, align 4
  %15 = load double*, double** %spec, align 8
  %16 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %FFT_SIZE9 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %16, i32 0, i32 5
  %17 = load i32, i32* %FFT_SIZE9, align 4
  call void @fe_spec_magnitude(double* %12, i32 %14, double* %15, i32 %17)
  %18 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %19 = load double*, double** %spec, align 8
  %20 = load double*, double** %mfspec, align 8
  call void @fe_mel_spec(%struct.fe_t* %18, double* %19, double* %20)
  %21 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %22 = load double*, double** %mfspec, align 8
  %23 = load double*, double** %fea.addr, align 8
  call void @fe_mel_cep(%struct.fe_t* %21, double* %22, double* %23)
  %24 = load double*, double** %spec, align 8
  %25 = bitcast double* %24 to i8*
  call void @free(i8* %25) #4
  %26 = load double*, double** %mfspec, align 8
  %27 = bitcast double* %26 to i8*
  call void @free(i8* %27) #4
  br label %if.end.11

if.else:                                          ; preds = %entry
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i32 0, i32 0))
  call void @exit(i32 0) #5
  unreachable

if.end.11:                                        ; preds = %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @fe_spec_magnitude(double* %data, i32 %data_len, double* %spec, i32 %fftsize) #0 {
entry:
  %data.addr = alloca double*, align 8
  %data_len.addr = alloca i32, align 4
  %spec.addr = alloca double*, align 8
  %fftsize.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %wrap = alloca i32, align 4
  %FFT = alloca %struct.complex*, align 8
  %IN = alloca %struct.complex*, align 8
  store double* %data, double** %data.addr, align 8
  store i32 %data_len, i32* %data_len.addr, align 4
  store double* %spec, double** %spec.addr, align 8
  store i32 %fftsize, i32* %fftsize.addr, align 4
  %0 = load i32, i32* %fftsize.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 16) #4
  %1 = bitcast i8* %call to %struct.complex*
  store %struct.complex* %1, %struct.complex** %FFT, align 8
  %2 = load i32, i32* %fftsize.addr, align 4
  %conv1 = sext i32 %2 to i64
  %call2 = call noalias i8* @calloc(i64 %conv1, i64 16) #4
  %3 = bitcast i8* %call2 to %struct.complex*
  store %struct.complex* %3, %struct.complex** %IN, align 8
  %4 = load %struct.complex*, %struct.complex** %FFT, align 8
  %cmp = icmp eq %struct.complex* %4, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.complex*, %struct.complex** %IN, align 8
  %cmp4 = icmp eq %struct.complex* %5, null
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i32 0, i32 0))
  call void @exit(i32 0) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %7 = load i32, i32* %data_len.addr, align 4
  %8 = load i32, i32* %fftsize.addr, align 4
  %cmp7 = icmp sgt i32 %7, %8
  br i1 %cmp7, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.9
  %9 = load i32, i32* %j, align 4
  %10 = load i32, i32* %fftsize.addr, align 4
  %cmp10 = icmp slt i32 %9, %10
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %j, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load double*, double** %data.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %12, i64 %idxprom
  %13 = load double, double* %arrayidx, align 8
  %14 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %14 to i64
  %15 = load %struct.complex*, %struct.complex** %IN, align 8
  %arrayidx13 = getelementptr inbounds %struct.complex, %struct.complex* %15, i64 %idxprom12
  %r = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx13, i32 0, i32 0
  store double %13, double* %r, align 8
  %16 = load i32, i32* %j, align 4
  %idxprom14 = sext i32 %16 to i64
  %17 = load %struct.complex*, %struct.complex** %IN, align 8
  %arrayidx15 = getelementptr inbounds %struct.complex, %struct.complex* %17, i64 %idxprom14
  %i = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx15, i32 0, i32 1
  store double 0.000000e+00, double* %i, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %j, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %wrap, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.29, %for.end
  %19 = load i32, i32* %j, align 4
  %20 = load i32, i32* %data_len.addr, align 4
  %cmp17 = icmp slt i32 %19, %20
  br i1 %cmp17, label %for.body.19, label %for.end.32

for.body.19:                                      ; preds = %for.cond.16
  %21 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %21 to i64
  %22 = load double*, double** %data.addr, align 8
  %arrayidx21 = getelementptr inbounds double, double* %22, i64 %idxprom20
  %23 = load double, double* %arrayidx21, align 8
  %24 = load i32, i32* %wrap, align 4
  %idxprom22 = sext i32 %24 to i64
  %25 = load %struct.complex*, %struct.complex** %IN, align 8
  %arrayidx23 = getelementptr inbounds %struct.complex, %struct.complex* %25, i64 %idxprom22
  %r24 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx23, i32 0, i32 0
  %26 = load double, double* %r24, align 8
  %add = fadd double %26, %23
  store double %add, double* %r24, align 8
  %27 = load i32, i32* %wrap, align 4
  %idxprom25 = sext i32 %27 to i64
  %28 = load %struct.complex*, %struct.complex** %IN, align 8
  %arrayidx26 = getelementptr inbounds %struct.complex, %struct.complex* %28, i64 %idxprom25
  %i27 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx26, i32 0, i32 1
  %29 = load double, double* %i27, align 8
  %add28 = fadd double %29, 0.000000e+00
  store double %add28, double* %i27, align 8
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.body.19
  %30 = load i32, i32* %wrap, align 4
  %inc30 = add nsw i32 %30, 1
  store i32 %inc30, i32* %wrap, align 4
  %31 = load i32, i32* %j, align 4
  %inc31 = add nsw i32 %31, 1
  store i32 %inc31, i32* %j, align 4
  br label %for.cond.16

for.end.32:                                       ; preds = %for.cond.16
  br label %if.end.61

if.else:                                          ; preds = %if.end
  store i32 0, i32* %j, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.45, %if.else
  %32 = load i32, i32* %j, align 4
  %33 = load i32, i32* %data_len.addr, align 4
  %cmp34 = icmp slt i32 %32, %33
  br i1 %cmp34, label %for.body.36, label %for.end.47

for.body.36:                                      ; preds = %for.cond.33
  %34 = load i32, i32* %j, align 4
  %idxprom37 = sext i32 %34 to i64
  %35 = load double*, double** %data.addr, align 8
  %arrayidx38 = getelementptr inbounds double, double* %35, i64 %idxprom37
  %36 = load double, double* %arrayidx38, align 8
  %37 = load i32, i32* %j, align 4
  %idxprom39 = sext i32 %37 to i64
  %38 = load %struct.complex*, %struct.complex** %IN, align 8
  %arrayidx40 = getelementptr inbounds %struct.complex, %struct.complex* %38, i64 %idxprom39
  %r41 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx40, i32 0, i32 0
  store double %36, double* %r41, align 8
  %39 = load i32, i32* %j, align 4
  %idxprom42 = sext i32 %39 to i64
  %40 = load %struct.complex*, %struct.complex** %IN, align 8
  %arrayidx43 = getelementptr inbounds %struct.complex, %struct.complex* %40, i64 %idxprom42
  %i44 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx43, i32 0, i32 1
  store double 0.000000e+00, double* %i44, align 8
  br label %for.inc.45

for.inc.45:                                       ; preds = %for.body.36
  %41 = load i32, i32* %j, align 4
  %inc46 = add nsw i32 %41, 1
  store i32 %inc46, i32* %j, align 4
  br label %for.cond.33

for.end.47:                                       ; preds = %for.cond.33
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.58, %for.end.47
  %42 = load i32, i32* %j, align 4
  %43 = load i32, i32* %fftsize.addr, align 4
  %cmp49 = icmp slt i32 %42, %43
  br i1 %cmp49, label %for.body.51, label %for.end.60

for.body.51:                                      ; preds = %for.cond.48
  %44 = load i32, i32* %j, align 4
  %idxprom52 = sext i32 %44 to i64
  %45 = load %struct.complex*, %struct.complex** %IN, align 8
  %arrayidx53 = getelementptr inbounds %struct.complex, %struct.complex* %45, i64 %idxprom52
  %r54 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx53, i32 0, i32 0
  store double 0.000000e+00, double* %r54, align 8
  %46 = load i32, i32* %j, align 4
  %idxprom55 = sext i32 %46 to i64
  %47 = load %struct.complex*, %struct.complex** %IN, align 8
  %arrayidx56 = getelementptr inbounds %struct.complex, %struct.complex* %47, i64 %idxprom55
  %i57 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx56, i32 0, i32 1
  store double 0.000000e+00, double* %i57, align 8
  br label %for.inc.58

for.inc.58:                                       ; preds = %for.body.51
  %48 = load i32, i32* %j, align 4
  %inc59 = add nsw i32 %48, 1
  store i32 %inc59, i32* %j, align 4
  br label %for.cond.48

for.end.60:                                       ; preds = %for.cond.48
  br label %if.end.61

if.end.61:                                        ; preds = %for.end.60, %for.end.32
  %49 = load %struct.complex*, %struct.complex** %IN, align 8
  %50 = load %struct.complex*, %struct.complex** %FFT, align 8
  %51 = load i32, i32* %fftsize.addr, align 4
  %call62 = call i32 @fe_fft(%struct.complex* %49, %struct.complex* %50, i32 %51, i32 1)
  store i32 0, i32* %j, align 4
  br label %for.cond.63

for.cond.63:                                      ; preds = %for.inc.83, %if.end.61
  %52 = load i32, i32* %j, align 4
  %53 = load i32, i32* %fftsize.addr, align 4
  %div = sdiv i32 %53, 2
  %cmp64 = icmp sle i32 %52, %div
  br i1 %cmp64, label %for.body.66, label %for.end.85

for.body.66:                                      ; preds = %for.cond.63
  %54 = load i32, i32* %j, align 4
  %idxprom67 = sext i32 %54 to i64
  %55 = load %struct.complex*, %struct.complex** %FFT, align 8
  %arrayidx68 = getelementptr inbounds %struct.complex, %struct.complex* %55, i64 %idxprom67
  %r69 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx68, i32 0, i32 0
  %56 = load double, double* %r69, align 8
  %57 = load i32, i32* %j, align 4
  %idxprom70 = sext i32 %57 to i64
  %58 = load %struct.complex*, %struct.complex** %FFT, align 8
  %arrayidx71 = getelementptr inbounds %struct.complex, %struct.complex* %58, i64 %idxprom70
  %r72 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx71, i32 0, i32 0
  %59 = load double, double* %r72, align 8
  %mul = fmul double %56, %59
  %60 = load i32, i32* %j, align 4
  %idxprom73 = sext i32 %60 to i64
  %61 = load %struct.complex*, %struct.complex** %FFT, align 8
  %arrayidx74 = getelementptr inbounds %struct.complex, %struct.complex* %61, i64 %idxprom73
  %i75 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx74, i32 0, i32 1
  %62 = load double, double* %i75, align 8
  %63 = load i32, i32* %j, align 4
  %idxprom76 = sext i32 %63 to i64
  %64 = load %struct.complex*, %struct.complex** %FFT, align 8
  %arrayidx77 = getelementptr inbounds %struct.complex, %struct.complex* %64, i64 %idxprom76
  %i78 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx77, i32 0, i32 1
  %65 = load double, double* %i78, align 8
  %mul79 = fmul double %62, %65
  %add80 = fadd double %mul, %mul79
  %66 = load i32, i32* %j, align 4
  %idxprom81 = sext i32 %66 to i64
  %67 = load double*, double** %spec.addr, align 8
  %arrayidx82 = getelementptr inbounds double, double* %67, i64 %idxprom81
  store double %add80, double* %arrayidx82, align 8
  br label %for.inc.83

for.inc.83:                                       ; preds = %for.body.66
  %68 = load i32, i32* %j, align 4
  %inc84 = add nsw i32 %68, 1
  store i32 %inc84, i32* %j, align 4
  br label %for.cond.63

for.end.85:                                       ; preds = %for.cond.63
  %69 = load %struct.complex*, %struct.complex** %FFT, align 8
  %70 = bitcast %struct.complex* %69 to i8*
  call void @free(i8* %70) #4
  %71 = load %struct.complex*, %struct.complex** %IN, align 8
  %72 = bitcast %struct.complex* %71 to i8*
  call void @free(i8* %72) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @fe_mel_spec(%struct.fe_t* %FE, double* %spec, double* %mfspec) #0 {
entry:
  %FE.addr = alloca %struct.fe_t*, align 8
  %spec.addr = alloca double*, align 8
  %mfspec.addr = alloca double*, align 8
  %whichfilt = alloca i32, align 4
  %start = alloca i32, align 4
  %i = alloca i32, align 4
  %dfreq = alloca float, align 4
  store %struct.fe_t* %FE, %struct.fe_t** %FE.addr, align 8
  store double* %spec, double** %spec.addr, align 8
  store double* %mfspec, double** %mfspec.addr, align 8
  %0 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %SAMPLING_RATE = getelementptr inbounds %struct.fe_t, %struct.fe_t* %0, i32 0, i32 0
  %1 = load float, float* %SAMPLING_RATE, align 4
  %2 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %FFT_SIZE = getelementptr inbounds %struct.fe_t, %struct.fe_t* %2, i32 0, i32 5
  %3 = load i32, i32* %FFT_SIZE, align 4
  %conv = sitofp i32 %3 to float
  %div = fdiv float %1, %conv
  store float %div, float* %dfreq, align 4
  store i32 0, i32* %whichfilt, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.27, %entry
  %4 = load i32, i32* %whichfilt, align 4
  %5 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %MEL_FB = getelementptr inbounds %struct.fe_t, %struct.fe_t* %5, i32 0, i32 11
  %6 = load %struct.melfb_t*, %struct.melfb_t** %MEL_FB, align 8
  %num_filters = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %6, i32 0, i32 2
  %7 = load i32, i32* %num_filters, align 4
  %cmp = icmp slt i32 %4, %7
  br i1 %cmp, label %for.body, label %for.end.29

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %whichfilt, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %MEL_FB2 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %9, i32 0, i32 11
  %10 = load %struct.melfb_t*, %struct.melfb_t** %MEL_FB2, align 8
  %left_apex = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %10, i32 0, i32 8
  %11 = load float*, float** %left_apex, align 8
  %arrayidx = getelementptr inbounds float, float* %11, i64 %idxprom
  %12 = load float, float* %arrayidx, align 4
  %13 = load float, float* %dfreq, align 4
  %div3 = fdiv float %12, %13
  %conv4 = fpext float %div3 to double
  %add = fadd double %conv4, 5.000000e-01
  %conv5 = fptosi double %add to i32
  store i32 %conv5, i32* %start, align 4
  %14 = load i32, i32* %whichfilt, align 4
  %idxprom6 = sext i32 %14 to i64
  %15 = load double*, double** %mfspec.addr, align 8
  %arrayidx7 = getelementptr inbounds double, double* %15, i64 %idxprom6
  store double 0.000000e+00, double* %arrayidx7, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %for.body
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %whichfilt, align 4
  %idxprom9 = sext i32 %17 to i64
  %18 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %MEL_FB10 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %18, i32 0, i32 11
  %19 = load %struct.melfb_t*, %struct.melfb_t** %MEL_FB10, align 8
  %width = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %19, i32 0, i32 9
  %20 = load i32*, i32** %width, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %20, i64 %idxprom9
  %21 = load i32, i32* %arrayidx11, align 4
  %cmp12 = icmp slt i32 %16, %21
  br i1 %cmp12, label %for.body.14, label %for.end

for.body.14:                                      ; preds = %for.cond.8
  %22 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %22 to i64
  %23 = load i32, i32* %whichfilt, align 4
  %idxprom16 = sext i32 %23 to i64
  %24 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %MEL_FB17 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %24, i32 0, i32 11
  %25 = load %struct.melfb_t*, %struct.melfb_t** %MEL_FB17, align 8
  %filter_coeffs = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %25, i32 0, i32 6
  %26 = load float**, float*** %filter_coeffs, align 8
  %arrayidx18 = getelementptr inbounds float*, float** %26, i64 %idxprom16
  %27 = load float*, float** %arrayidx18, align 8
  %arrayidx19 = getelementptr inbounds float, float* %27, i64 %idxprom15
  %28 = load float, float* %arrayidx19, align 4
  %conv20 = fpext float %28 to double
  %29 = load i32, i32* %start, align 4
  %30 = load i32, i32* %i, align 4
  %add21 = add nsw i32 %29, %30
  %idxprom22 = sext i32 %add21 to i64
  %31 = load double*, double** %spec.addr, align 8
  %arrayidx23 = getelementptr inbounds double, double* %31, i64 %idxprom22
  %32 = load double, double* %arrayidx23, align 8
  %mul = fmul double %conv20, %32
  %33 = load i32, i32* %whichfilt, align 4
  %idxprom24 = sext i32 %33 to i64
  %34 = load double*, double** %mfspec.addr, align 8
  %arrayidx25 = getelementptr inbounds double, double* %34, i64 %idxprom24
  %35 = load double, double* %arrayidx25, align 8
  %add26 = fadd double %35, %mul
  store double %add26, double* %arrayidx25, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.14
  %36 = load i32, i32* %i, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.end
  %37 = load i32, i32* %whichfilt, align 4
  %inc28 = add nsw i32 %37, 1
  store i32 %inc28, i32* %whichfilt, align 4
  br label %for.cond

for.end.29:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @fe_mel_cep(%struct.fe_t* %FE, double* %mfspec, double* %mfcep) #0 {
entry:
  %FE.addr = alloca %struct.fe_t*, align 8
  %mfspec.addr = alloca double*, align 8
  %mfcep.addr = alloca double*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %period = alloca i32, align 4
  %beta = alloca float, align 4
  store %struct.fe_t* %FE, %struct.fe_t** %FE.addr, align 8
  store double* %mfspec, double** %mfspec.addr, align 8
  store double* %mfcep, double** %mfcep.addr, align 8
  %0 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %MEL_FB = getelementptr inbounds %struct.fe_t, %struct.fe_t* %0, i32 0, i32 11
  %1 = load %struct.melfb_t*, %struct.melfb_t** %MEL_FB, align 8
  %num_filters = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %1, i32 0, i32 2
  %2 = load i32, i32* %num_filters, align 4
  store i32 %2, i32* %period, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %MEL_FB1 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %4, i32 0, i32 11
  %5 = load %struct.melfb_t*, %struct.melfb_t** %MEL_FB1, align 8
  %num_filters2 = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %5, i32 0, i32 2
  %6 = load i32, i32* %num_filters2, align 4
  %cmp = icmp slt i32 %3, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load double*, double** %mfspec.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %8, i64 %idxprom
  %9 = load double, double* %arrayidx, align 8
  %cmp3 = fcmp ogt double %9, 0.000000e+00
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %10 to i64
  %11 = load double*, double** %mfspec.addr, align 8
  %arrayidx5 = getelementptr inbounds double, double* %11, i64 %idxprom4
  %12 = load double, double* %arrayidx5, align 8
  %call = call double @log(double %12) #4
  %13 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %13 to i64
  %14 = load double*, double** %mfspec.addr, align 8
  %arrayidx7 = getelementptr inbounds double, double* %14, i64 %idxprom6
  store double %call, double* %arrayidx7, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %15 to i64
  %16 = load double*, double** %mfspec.addr, align 8
  %arrayidx9 = getelementptr inbounds double, double* %16, i64 %idxprom8
  store double -1.000000e+05, double* %arrayidx9, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.42, %for.end
  %18 = load i32, i32* %i, align 4
  %19 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %NUM_CEPSTRA = getelementptr inbounds %struct.fe_t, %struct.fe_t* %19, i32 0, i32 7
  %20 = load i32, i32* %NUM_CEPSTRA, align 4
  %cmp11 = icmp slt i32 %18, %20
  br i1 %cmp11, label %for.body.12, label %for.end.44

for.body.12:                                      ; preds = %for.cond.10
  %21 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %21 to i64
  %22 = load double*, double** %mfcep.addr, align 8
  %arrayidx14 = getelementptr inbounds double, double* %22, i64 %idxprom13
  store double 0.000000e+00, double* %arrayidx14, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.35, %for.body.12
  %23 = load i32, i32* %j, align 4
  %24 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %MEL_FB16 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %24, i32 0, i32 11
  %25 = load %struct.melfb_t*, %struct.melfb_t** %MEL_FB16, align 8
  %num_filters17 = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %25, i32 0, i32 2
  %26 = load i32, i32* %num_filters17, align 4
  %cmp18 = icmp slt i32 %23, %26
  br i1 %cmp18, label %for.body.19, label %for.end.37

for.body.19:                                      ; preds = %for.cond.15
  %27 = load i32, i32* %j, align 4
  %cmp20 = icmp eq i32 %27, 0
  br i1 %cmp20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %for.body.19
  store float 5.000000e-01, float* %beta, align 4
  br label %if.end.23

if.else.22:                                       ; preds = %for.body.19
  store float 1.000000e+00, float* %beta, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.22, %if.then.21
  %28 = load float, float* %beta, align 4
  %conv = fpext float %28 to double
  %29 = load i32, i32* %j, align 4
  %idxprom24 = sext i32 %29 to i64
  %30 = load double*, double** %mfspec.addr, align 8
  %arrayidx25 = getelementptr inbounds double, double* %30, i64 %idxprom24
  %31 = load double, double* %arrayidx25, align 8
  %mul = fmul double %conv, %31
  %32 = load i32, i32* %j, align 4
  %idxprom26 = sext i32 %32 to i64
  %33 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %33 to i64
  %34 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %MEL_FB28 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %34, i32 0, i32 11
  %35 = load %struct.melfb_t*, %struct.melfb_t** %MEL_FB28, align 8
  %mel_cosine = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %35, i32 0, i32 7
  %36 = load float**, float*** %mel_cosine, align 8
  %arrayidx29 = getelementptr inbounds float*, float** %36, i64 %idxprom27
  %37 = load float*, float** %arrayidx29, align 8
  %arrayidx30 = getelementptr inbounds float, float* %37, i64 %idxprom26
  %38 = load float, float* %arrayidx30, align 4
  %conv31 = fpext float %38 to double
  %mul32 = fmul double %mul, %conv31
  %39 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %39 to i64
  %40 = load double*, double** %mfcep.addr, align 8
  %arrayidx34 = getelementptr inbounds double, double* %40, i64 %idxprom33
  %41 = load double, double* %arrayidx34, align 8
  %add = fadd double %41, %mul32
  store double %add, double* %arrayidx34, align 8
  br label %for.inc.35

for.inc.35:                                       ; preds = %if.end.23
  %42 = load i32, i32* %j, align 4
  %inc36 = add nsw i32 %42, 1
  store i32 %inc36, i32* %j, align 4
  br label %for.cond.15

for.end.37:                                       ; preds = %for.cond.15
  %43 = load i32, i32* %period, align 4
  %conv38 = sitofp i32 %43 to float
  %conv39 = fpext float %conv38 to double
  %44 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %44 to i64
  %45 = load double*, double** %mfcep.addr, align 8
  %arrayidx41 = getelementptr inbounds double, double* %45, i64 %idxprom40
  %46 = load double, double* %arrayidx41, align 8
  %div = fdiv double %46, %conv39
  store double %div, double* %arrayidx41, align 8
  br label %for.inc.42

for.inc.42:                                       ; preds = %for.end.37
  %47 = load i32, i32* %i, align 4
  %inc43 = add nsw i32 %47, 1
  store i32 %inc43, i32* %i, align 4
  br label %for.cond.10

for.end.44:                                       ; preds = %for.cond.10
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @fe_fft(%struct.complex* %in, %struct.complex* %out, i32 %N, i32 %invert) #0 {
entry:
  %retval = alloca i32, align 4
  %in.addr = alloca %struct.complex*, align 8
  %out.addr = alloca %struct.complex*, align 8
  %N.addr = alloca i32, align 4
  %invert.addr = alloca i32, align 4
  %f1 = alloca %struct.complex*, align 8
  %f2 = alloca %struct.complex*, align 8
  %t1 = alloca %struct.complex*, align 8
  %t2 = alloca %struct.complex*, align 8
  %ww = alloca %struct.complex*, align 8
  store %struct.complex* %in, %struct.complex** %in.addr, align 8
  store %struct.complex* %out, %struct.complex** %out.addr, align 8
  store i32 %N, i32* %N.addr, align 4
  store i32 %invert, i32* %invert.addr, align 4
  %0 = load i32, i32* %N.addr, align 4
  store i32 %0, i32* @fe_fft.k, align 4
  store i32 0, i32* @fe_fft.lgN, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* @fe_fft.k, align 4
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* @fe_fft.k, align 4
  %rem = srem i32 %2, 2
  %cmp1 = icmp ne i32 %rem, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %3 = load i32, i32* %N.addr, align 4
  %cmp2 = icmp slt i32 %3, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = load i32, i32* %N.addr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i32 0, i32 0), i32 %5)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* @fe_fft.k, align 4
  %div = sdiv i32 %6, 2
  store i32 %div, i32* @fe_fft.k, align 4
  %7 = load i32, i32* @fe_fft.lgN, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* @fe_fft.lgN, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %invert.addr, align 4
  %cmp3 = icmp eq i32 %8, 1
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %for.end
  store double 1.000000e+00, double* @fe_fft.div, align 8
  br label %if.end.10

if.else:                                          ; preds = %for.end
  %9 = load i32, i32* %invert.addr, align 4
  %cmp5 = icmp eq i32 %9, -1
  br i1 %cmp5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.else
  %10 = load i32, i32* %N.addr, align 4
  %conv = sitofp i32 %10 to double
  store double %conv, double* @fe_fft.div, align 8
  br label %if.end.9

if.else.7:                                        ; preds = %if.else
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = load i32, i32* %invert.addr, align 4
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i32 0, i32 0), i32 %12)
  store i32 -1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.then.6
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.then.4
  %13 = load i32, i32* %N.addr, align 4
  %conv11 = sext i32 %13 to i64
  %call12 = call noalias i8* @calloc(i64 %conv11, i64 16) #4
  %14 = bitcast i8* %call12 to %struct.complex*
  store %struct.complex* %14, %struct.complex** @fe_fft.buffer, align 8
  %15 = load i32, i32* @fe_fft.lgN, align 4
  %rem13 = srem i32 %15, 2
  %cmp14 = icmp eq i32 %rem13, 0
  br i1 %cmp14, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %if.end.10
  %16 = load %struct.complex*, %struct.complex** %out.addr, align 8
  store %struct.complex* %16, %struct.complex** @fe_fft.from, align 8
  %17 = load %struct.complex*, %struct.complex** @fe_fft.buffer, align 8
  store %struct.complex* %17, %struct.complex** @fe_fft.to, align 8
  br label %if.end.18

if.else.17:                                       ; preds = %if.end.10
  %18 = load %struct.complex*, %struct.complex** %out.addr, align 8
  store %struct.complex* %18, %struct.complex** @fe_fft.to, align 8
  %19 = load %struct.complex*, %struct.complex** @fe_fft.buffer, align 8
  store %struct.complex* %19, %struct.complex** @fe_fft.from, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.17, %if.then.16
  store i32 0, i32* @fe_fft.s, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.33, %if.end.18
  %20 = load i32, i32* @fe_fft.s, align 4
  %21 = load i32, i32* %N.addr, align 4
  %cmp20 = icmp slt i32 %20, %21
  br i1 %cmp20, label %for.body.22, label %for.end.35

for.body.22:                                      ; preds = %for.cond.19
  %22 = load i32, i32* @fe_fft.s, align 4
  %idxprom = sext i32 %22 to i64
  %23 = load %struct.complex*, %struct.complex** %in.addr, align 8
  %arrayidx = getelementptr inbounds %struct.complex, %struct.complex* %23, i64 %idxprom
  %r = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx, i32 0, i32 0
  %24 = load double, double* %r, align 8
  %25 = load double, double* @fe_fft.div, align 8
  %div23 = fdiv double %24, %25
  %26 = load i32, i32* @fe_fft.s, align 4
  %idxprom24 = sext i32 %26 to i64
  %27 = load %struct.complex*, %struct.complex** @fe_fft.from, align 8
  %arrayidx25 = getelementptr inbounds %struct.complex, %struct.complex* %27, i64 %idxprom24
  %r26 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx25, i32 0, i32 0
  store double %div23, double* %r26, align 8
  %28 = load i32, i32* @fe_fft.s, align 4
  %idxprom27 = sext i32 %28 to i64
  %29 = load %struct.complex*, %struct.complex** %in.addr, align 8
  %arrayidx28 = getelementptr inbounds %struct.complex, %struct.complex* %29, i64 %idxprom27
  %i = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx28, i32 0, i32 1
  %30 = load double, double* %i, align 8
  %31 = load double, double* @fe_fft.div, align 8
  %div29 = fdiv double %30, %31
  %32 = load i32, i32* @fe_fft.s, align 4
  %idxprom30 = sext i32 %32 to i64
  %33 = load %struct.complex*, %struct.complex** @fe_fft.from, align 8
  %arrayidx31 = getelementptr inbounds %struct.complex, %struct.complex* %33, i64 %idxprom30
  %i32 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx31, i32 0, i32 1
  store double %div29, double* %i32, align 8
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.body.22
  %34 = load i32, i32* @fe_fft.s, align 4
  %inc34 = add nsw i32 %34, 1
  store i32 %inc34, i32* @fe_fft.s, align 4
  br label %for.cond.19

for.end.35:                                       ; preds = %for.cond.19
  %35 = load i32, i32* %N.addr, align 4
  %div36 = sdiv i32 %35, 2
  %conv37 = sext i32 %div36 to i64
  %call38 = call noalias i8* @calloc(i64 %conv37, i64 16) #4
  %36 = bitcast i8* %call38 to %struct.complex*
  store %struct.complex* %36, %struct.complex** @fe_fft.w, align 8
  store i32 0, i32* @fe_fft.k, align 4
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.57, %for.end.35
  %37 = load i32, i32* @fe_fft.k, align 4
  %38 = load i32, i32* %N.addr, align 4
  %div40 = sdiv i32 %38, 2
  %cmp41 = icmp slt i32 %37, %div40
  br i1 %cmp41, label %for.body.43, label %for.end.59

for.body.43:                                      ; preds = %for.cond.39
  %39 = load i32, i32* %invert.addr, align 4
  %conv44 = sitofp i32 %39 to double
  %mul = fmul double 0xC01921FB54442D18, %conv44
  %40 = load i32, i32* @fe_fft.k, align 4
  %conv45 = sitofp i32 %40 to double
  %mul46 = fmul double %mul, %conv45
  %41 = load i32, i32* %N.addr, align 4
  %conv47 = sitofp i32 %41 to double
  %div48 = fdiv double %mul46, %conv47
  store double %div48, double* @fe_fft.x, align 8
  %42 = load double, double* @fe_fft.x, align 8
  %call49 = call double @cos(double %42) #4
  %43 = load i32, i32* @fe_fft.k, align 4
  %idxprom50 = sext i32 %43 to i64
  %44 = load %struct.complex*, %struct.complex** @fe_fft.w, align 8
  %arrayidx51 = getelementptr inbounds %struct.complex, %struct.complex* %44, i64 %idxprom50
  %r52 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx51, i32 0, i32 0
  store double %call49, double* %r52, align 8
  %45 = load double, double* @fe_fft.x, align 8
  %call53 = call double @sin(double %45) #4
  %46 = load i32, i32* @fe_fft.k, align 4
  %idxprom54 = sext i32 %46 to i64
  %47 = load %struct.complex*, %struct.complex** @fe_fft.w, align 8
  %arrayidx55 = getelementptr inbounds %struct.complex, %struct.complex* %47, i64 %idxprom54
  %i56 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx55, i32 0, i32 1
  store double %call53, double* %i56, align 8
  br label %for.inc.57

for.inc.57:                                       ; preds = %for.body.43
  %48 = load i32, i32* @fe_fft.k, align 4
  %inc58 = add nsw i32 %48, 1
  store i32 %inc58, i32* @fe_fft.k, align 4
  br label %for.cond.39

for.end.59:                                       ; preds = %for.cond.39
  %49 = load i32, i32* %N.addr, align 4
  %div60 = sdiv i32 %49, 2
  %idxprom61 = sext i32 %div60 to i64
  %50 = load %struct.complex*, %struct.complex** @fe_fft.w, align 8
  %arrayidx62 = getelementptr inbounds %struct.complex, %struct.complex* %50, i64 %idxprom61
  store %struct.complex* %arrayidx62, %struct.complex** @fe_fft.wEnd, align 8
  %51 = load i32, i32* %N.addr, align 4
  %div63 = sdiv i32 %51, 2
  store i32 %div63, i32* @fe_fft.k, align 4
  br label %for.cond.64

for.cond.64:                                      ; preds = %for.inc.123, %for.end.59
  %52 = load i32, i32* @fe_fft.k, align 4
  %cmp65 = icmp sgt i32 %52, 0
  br i1 %cmp65, label %for.body.67, label %for.end.125

for.body.67:                                      ; preds = %for.cond.64
  store i32 0, i32* @fe_fft.s, align 4
  br label %for.cond.68

for.cond.68:                                      ; preds = %for.inc.120, %for.body.67
  %53 = load i32, i32* @fe_fft.s, align 4
  %54 = load i32, i32* @fe_fft.k, align 4
  %cmp69 = icmp slt i32 %53, %54
  br i1 %cmp69, label %for.body.71, label %for.end.122

for.body.71:                                      ; preds = %for.cond.68
  %55 = load i32, i32* @fe_fft.s, align 4
  %idxprom72 = sext i32 %55 to i64
  %56 = load %struct.complex*, %struct.complex** @fe_fft.from, align 8
  %arrayidx73 = getelementptr inbounds %struct.complex, %struct.complex* %56, i64 %idxprom72
  store %struct.complex* %arrayidx73, %struct.complex** %f1, align 8
  %57 = load i32, i32* @fe_fft.s, align 4
  %58 = load i32, i32* @fe_fft.k, align 4
  %add = add nsw i32 %57, %58
  %idxprom74 = sext i32 %add to i64
  %59 = load %struct.complex*, %struct.complex** @fe_fft.from, align 8
  %arrayidx75 = getelementptr inbounds %struct.complex, %struct.complex* %59, i64 %idxprom74
  store %struct.complex* %arrayidx75, %struct.complex** %f2, align 8
  %60 = load i32, i32* @fe_fft.s, align 4
  %idxprom76 = sext i32 %60 to i64
  %61 = load %struct.complex*, %struct.complex** @fe_fft.to, align 8
  %arrayidx77 = getelementptr inbounds %struct.complex, %struct.complex* %61, i64 %idxprom76
  store %struct.complex* %arrayidx77, %struct.complex** %t1, align 8
  %62 = load i32, i32* @fe_fft.s, align 4
  %63 = load i32, i32* %N.addr, align 4
  %div78 = sdiv i32 %63, 2
  %add79 = add nsw i32 %62, %div78
  %idxprom80 = sext i32 %add79 to i64
  %64 = load %struct.complex*, %struct.complex** @fe_fft.to, align 8
  %arrayidx81 = getelementptr inbounds %struct.complex, %struct.complex* %64, i64 %idxprom80
  store %struct.complex* %arrayidx81, %struct.complex** %t2, align 8
  %65 = load %struct.complex*, %struct.complex** @fe_fft.w, align 8
  %arrayidx82 = getelementptr inbounds %struct.complex, %struct.complex* %65, i64 0
  store %struct.complex* %arrayidx82, %struct.complex** %ww, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body.71
  %66 = load %struct.complex*, %struct.complex** %ww, align 8
  %67 = load %struct.complex*, %struct.complex** @fe_fft.wEnd, align 8
  %cmp83 = icmp ult %struct.complex* %66, %67
  br i1 %cmp83, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %68 = load %struct.complex*, %struct.complex** %f2, align 8
  %r85 = getelementptr inbounds %struct.complex, %struct.complex* %68, i32 0, i32 0
  %69 = load double, double* %r85, align 8
  %70 = load %struct.complex*, %struct.complex** %ww, align 8
  %r86 = getelementptr inbounds %struct.complex, %struct.complex* %70, i32 0, i32 0
  %71 = load double, double* %r86, align 8
  %mul87 = fmul double %69, %71
  %72 = load %struct.complex*, %struct.complex** %f2, align 8
  %i88 = getelementptr inbounds %struct.complex, %struct.complex* %72, i32 0, i32 1
  %73 = load double, double* %i88, align 8
  %74 = load %struct.complex*, %struct.complex** %ww, align 8
  %i89 = getelementptr inbounds %struct.complex, %struct.complex* %74, i32 0, i32 1
  %75 = load double, double* %i89, align 8
  %mul90 = fmul double %73, %75
  %sub = fsub double %mul87, %mul90
  store double %sub, double* getelementptr inbounds (%struct.complex, %struct.complex* @fe_fft.wwf2, i32 0, i32 0), align 8
  %76 = load %struct.complex*, %struct.complex** %f2, align 8
  %r91 = getelementptr inbounds %struct.complex, %struct.complex* %76, i32 0, i32 0
  %77 = load double, double* %r91, align 8
  %78 = load %struct.complex*, %struct.complex** %ww, align 8
  %i92 = getelementptr inbounds %struct.complex, %struct.complex* %78, i32 0, i32 1
  %79 = load double, double* %i92, align 8
  %mul93 = fmul double %77, %79
  %80 = load %struct.complex*, %struct.complex** %f2, align 8
  %i94 = getelementptr inbounds %struct.complex, %struct.complex* %80, i32 0, i32 1
  %81 = load double, double* %i94, align 8
  %82 = load %struct.complex*, %struct.complex** %ww, align 8
  %r95 = getelementptr inbounds %struct.complex, %struct.complex* %82, i32 0, i32 0
  %83 = load double, double* %r95, align 8
  %mul96 = fmul double %81, %83
  %add97 = fadd double %mul93, %mul96
  store double %add97, double* getelementptr inbounds (%struct.complex, %struct.complex* @fe_fft.wwf2, i32 0, i32 1), align 8
  %84 = load %struct.complex*, %struct.complex** %f1, align 8
  %r98 = getelementptr inbounds %struct.complex, %struct.complex* %84, i32 0, i32 0
  %85 = load double, double* %r98, align 8
  %86 = load double, double* getelementptr inbounds (%struct.complex, %struct.complex* @fe_fft.wwf2, i32 0, i32 0), align 8
  %add99 = fadd double %85, %86
  %87 = load %struct.complex*, %struct.complex** %t1, align 8
  %r100 = getelementptr inbounds %struct.complex, %struct.complex* %87, i32 0, i32 0
  store double %add99, double* %r100, align 8
  %88 = load %struct.complex*, %struct.complex** %f1, align 8
  %i101 = getelementptr inbounds %struct.complex, %struct.complex* %88, i32 0, i32 1
  %89 = load double, double* %i101, align 8
  %90 = load double, double* getelementptr inbounds (%struct.complex, %struct.complex* @fe_fft.wwf2, i32 0, i32 1), align 8
  %add102 = fadd double %89, %90
  %91 = load %struct.complex*, %struct.complex** %t1, align 8
  %i103 = getelementptr inbounds %struct.complex, %struct.complex* %91, i32 0, i32 1
  store double %add102, double* %i103, align 8
  %92 = load %struct.complex*, %struct.complex** %f1, align 8
  %r104 = getelementptr inbounds %struct.complex, %struct.complex* %92, i32 0, i32 0
  %93 = load double, double* %r104, align 8
  %94 = load double, double* getelementptr inbounds (%struct.complex, %struct.complex* @fe_fft.wwf2, i32 0, i32 0), align 8
  %sub105 = fsub double %93, %94
  %95 = load %struct.complex*, %struct.complex** %t2, align 8
  %r106 = getelementptr inbounds %struct.complex, %struct.complex* %95, i32 0, i32 0
  store double %sub105, double* %r106, align 8
  %96 = load %struct.complex*, %struct.complex** %f1, align 8
  %i107 = getelementptr inbounds %struct.complex, %struct.complex* %96, i32 0, i32 1
  %97 = load double, double* %i107, align 8
  %98 = load double, double* getelementptr inbounds (%struct.complex, %struct.complex* @fe_fft.wwf2, i32 0, i32 1), align 8
  %sub108 = fsub double %97, %98
  %99 = load %struct.complex*, %struct.complex** %t2, align 8
  %i109 = getelementptr inbounds %struct.complex, %struct.complex* %99, i32 0, i32 1
  store double %sub108, double* %i109, align 8
  %100 = load i32, i32* @fe_fft.k, align 4
  %mul110 = mul nsw i32 2, %100
  %101 = load %struct.complex*, %struct.complex** %f1, align 8
  %idx.ext = sext i32 %mul110 to i64
  %add.ptr = getelementptr inbounds %struct.complex, %struct.complex* %101, i64 %idx.ext
  store %struct.complex* %add.ptr, %struct.complex** %f1, align 8
  %102 = load i32, i32* @fe_fft.k, align 4
  %mul111 = mul nsw i32 2, %102
  %103 = load %struct.complex*, %struct.complex** %f2, align 8
  %idx.ext112 = sext i32 %mul111 to i64
  %add.ptr113 = getelementptr inbounds %struct.complex, %struct.complex* %103, i64 %idx.ext112
  store %struct.complex* %add.ptr113, %struct.complex** %f2, align 8
  %104 = load i32, i32* @fe_fft.k, align 4
  %105 = load %struct.complex*, %struct.complex** %t1, align 8
  %idx.ext114 = sext i32 %104 to i64
  %add.ptr115 = getelementptr inbounds %struct.complex, %struct.complex* %105, i64 %idx.ext114
  store %struct.complex* %add.ptr115, %struct.complex** %t1, align 8
  %106 = load i32, i32* @fe_fft.k, align 4
  %107 = load %struct.complex*, %struct.complex** %t2, align 8
  %idx.ext116 = sext i32 %106 to i64
  %add.ptr117 = getelementptr inbounds %struct.complex, %struct.complex* %107, i64 %idx.ext116
  store %struct.complex* %add.ptr117, %struct.complex** %t2, align 8
  %108 = load i32, i32* @fe_fft.k, align 4
  %109 = load %struct.complex*, %struct.complex** %ww, align 8
  %idx.ext118 = sext i32 %108 to i64
  %add.ptr119 = getelementptr inbounds %struct.complex, %struct.complex* %109, i64 %idx.ext118
  store %struct.complex* %add.ptr119, %struct.complex** %ww, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc.120

for.inc.120:                                      ; preds = %while.end
  %110 = load i32, i32* @fe_fft.s, align 4
  %inc121 = add nsw i32 %110, 1
  store i32 %inc121, i32* @fe_fft.s, align 4
  br label %for.cond.68

for.end.122:                                      ; preds = %for.cond.68
  %111 = load %struct.complex*, %struct.complex** @fe_fft.from, align 8
  store %struct.complex* %111, %struct.complex** @fe_fft.exch, align 8
  %112 = load %struct.complex*, %struct.complex** @fe_fft.to, align 8
  store %struct.complex* %112, %struct.complex** @fe_fft.from, align 8
  %113 = load %struct.complex*, %struct.complex** @fe_fft.exch, align 8
  store %struct.complex* %113, %struct.complex** @fe_fft.to, align 8
  br label %for.inc.123

for.inc.123:                                      ; preds = %for.end.122
  %114 = load i32, i32* @fe_fft.k, align 4
  %div124 = sdiv i32 %114, 2
  store i32 %div124, i32* @fe_fft.k, align 4
  br label %for.cond.64

for.end.125:                                      ; preds = %for.cond.64
  %115 = load %struct.complex*, %struct.complex** @fe_fft.buffer, align 8
  %116 = bitcast %struct.complex* %115 to i8*
  call void @free(i8* %116) #4
  %117 = load %struct.complex*, %struct.complex** @fe_fft.w, align 8
  %118 = bitcast %struct.complex* %117 to i8*
  call void @free(i8* %118) #4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.125, %if.else.7, %if.then
  %119 = load i32, i32* %retval
  ret i32 %119
}

; Function Attrs: nounwind
declare double @log(double) #1

; Function Attrs: nounwind
declare double @sin(double) #1

; Function Attrs: nounwind uwtable
define void @fe_free_2d(i8** %arr) #0 {
entry:
  %arr.addr = alloca i8**, align 8
  store i8** %arr, i8*** %arr.addr, align 8
  %0 = load i8**, i8*** %arr.addr, align 8
  %cmp = icmp ne i8** %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8**, i8*** %arr.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx, align 8
  call void @free(i8* %2) #4
  %3 = load i8**, i8*** %arr.addr, align 8
  %4 = bitcast i8** %3 to i8*
  call void @free(i8* %4) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @fe_parse_general_params(%struct.param_t* %P, %struct.fe_t* %FE) #0 {
entry:
  %P.addr = alloca %struct.param_t*, align 8
  %FE.addr = alloca %struct.fe_t*, align 8
  store %struct.param_t* %P, %struct.param_t** %P.addr, align 8
  store %struct.fe_t* %FE, %struct.fe_t** %FE.addr, align 8
  %0 = load %struct.param_t*, %struct.param_t** %P.addr, align 8
  %SAMPLING_RATE = getelementptr inbounds %struct.param_t, %struct.param_t* %0, i32 0, i32 0
  %1 = load float, float* %SAMPLING_RATE, align 4
  %cmp = fcmp une float %1, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.param_t*, %struct.param_t** %P.addr, align 8
  %SAMPLING_RATE1 = getelementptr inbounds %struct.param_t, %struct.param_t* %2, i32 0, i32 0
  %3 = load float, float* %SAMPLING_RATE1, align 4
  %4 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %SAMPLING_RATE2 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %4, i32 0, i32 0
  store float %3, float* %SAMPLING_RATE2, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %SAMPLING_RATE3 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %5, i32 0, i32 0
  store float 1.600000e+04, float* %SAMPLING_RATE3, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load %struct.param_t*, %struct.param_t** %P.addr, align 8
  %FRAME_RATE = getelementptr inbounds %struct.param_t, %struct.param_t* %6, i32 0, i32 1
  %7 = load i32, i32* %FRAME_RATE, align 4
  %cmp4 = icmp ne i32 %7, 0
  br i1 %cmp4, label %if.then.5, label %if.else.8

if.then.5:                                        ; preds = %if.end
  %8 = load %struct.param_t*, %struct.param_t** %P.addr, align 8
  %FRAME_RATE6 = getelementptr inbounds %struct.param_t, %struct.param_t* %8, i32 0, i32 1
  %9 = load i32, i32* %FRAME_RATE6, align 4
  %10 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %FRAME_RATE7 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %10, i32 0, i32 1
  store i32 %9, i32* %FRAME_RATE7, align 4
  br label %if.end.10

if.else.8:                                        ; preds = %if.end
  %11 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %FRAME_RATE9 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %11, i32 0, i32 1
  store i32 100, i32* %FRAME_RATE9, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.8, %if.then.5
  %12 = load %struct.param_t*, %struct.param_t** %P.addr, align 8
  %WINDOW_LENGTH = getelementptr inbounds %struct.param_t, %struct.param_t* %12, i32 0, i32 2
  %13 = load float, float* %WINDOW_LENGTH, align 4
  %cmp11 = fcmp une float %13, 0.000000e+00
  br i1 %cmp11, label %if.then.12, label %if.else.15

if.then.12:                                       ; preds = %if.end.10
  %14 = load %struct.param_t*, %struct.param_t** %P.addr, align 8
  %WINDOW_LENGTH13 = getelementptr inbounds %struct.param_t, %struct.param_t* %14, i32 0, i32 2
  %15 = load float, float* %WINDOW_LENGTH13, align 4
  %16 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %WINDOW_LENGTH14 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %16, i32 0, i32 3
  store float %15, float* %WINDOW_LENGTH14, align 4
  br label %if.end.17

if.else.15:                                       ; preds = %if.end.10
  %17 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %WINDOW_LENGTH16 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %17, i32 0, i32 3
  store float 0x3F9A36E2E0000000, float* %WINDOW_LENGTH16, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.15, %if.then.12
  %18 = load %struct.param_t*, %struct.param_t** %P.addr, align 8
  %FB_TYPE = getelementptr inbounds %struct.param_t, %struct.param_t* %18, i32 0, i32 3
  %19 = load i32, i32* %FB_TYPE, align 4
  %cmp18 = icmp ne i32 %19, 0
  br i1 %cmp18, label %if.then.19, label %if.else.22

if.then.19:                                       ; preds = %if.end.17
  %20 = load %struct.param_t*, %struct.param_t** %P.addr, align 8
  %FB_TYPE20 = getelementptr inbounds %struct.param_t, %struct.param_t* %20, i32 0, i32 3
  %21 = load i32, i32* %FB_TYPE20, align 4
  %22 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %FB_TYPE21 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %22, i32 0, i32 6
  store i32 %21, i32* %FB_TYPE21, align 4
  br label %if.end.24

if.else.22:                                       ; preds = %if.end.17
  %23 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %FB_TYPE23 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %23, i32 0, i32 6
  store i32 1, i32* %FB_TYPE23, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.22, %if.then.19
  %24 = load %struct.param_t*, %struct.param_t** %P.addr, align 8
  %PRE_EMPHASIS_ALPHA = getelementptr inbounds %struct.param_t, %struct.param_t* %24, i32 0, i32 9
  %25 = load float, float* %PRE_EMPHASIS_ALPHA, align 4
  %cmp25 = fcmp une float %25, 0.000000e+00
  br i1 %cmp25, label %if.then.26, label %if.else.29

if.then.26:                                       ; preds = %if.end.24
  %26 = load %struct.param_t*, %struct.param_t** %P.addr, align 8
  %PRE_EMPHASIS_ALPHA27 = getelementptr inbounds %struct.param_t, %struct.param_t* %26, i32 0, i32 9
  %27 = load float, float* %PRE_EMPHASIS_ALPHA27, align 4
  %28 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %PRE_EMPHASIS_ALPHA28 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %28, i32 0, i32 8
  store float %27, float* %PRE_EMPHASIS_ALPHA28, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %if.end.24
  %29 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %PRE_EMPHASIS_ALPHA30 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %29, i32 0, i32 8
  store float 0x3FEF0A3D80000000, float* %PRE_EMPHASIS_ALPHA30, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.26
  %30 = load %struct.param_t*, %struct.param_t** %P.addr, align 8
  %NUM_CEPSTRA = getelementptr inbounds %struct.param_t, %struct.param_t* %30, i32 0, i32 4
  %31 = load i32, i32* %NUM_CEPSTRA, align 4
  %cmp32 = icmp ne i32 %31, 0
  br i1 %cmp32, label %if.then.33, label %if.else.36

if.then.33:                                       ; preds = %if.end.31
  %32 = load %struct.param_t*, %struct.param_t** %P.addr, align 8
  %NUM_CEPSTRA34 = getelementptr inbounds %struct.param_t, %struct.param_t* %32, i32 0, i32 4
  %33 = load i32, i32* %NUM_CEPSTRA34, align 4
  %34 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %NUM_CEPSTRA35 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %34, i32 0, i32 7
  store i32 %33, i32* %NUM_CEPSTRA35, align 4
  br label %if.end.38

if.else.36:                                       ; preds = %if.end.31
  %35 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %NUM_CEPSTRA37 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %35, i32 0, i32 7
  store i32 13, i32* %NUM_CEPSTRA37, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.36, %if.then.33
  %36 = load %struct.param_t*, %struct.param_t** %P.addr, align 8
  %FFT_SIZE = getelementptr inbounds %struct.param_t, %struct.param_t* %36, i32 0, i32 6
  %37 = load i32, i32* %FFT_SIZE, align 4
  %cmp39 = icmp ne i32 %37, 0
  br i1 %cmp39, label %if.then.40, label %if.else.43

if.then.40:                                       ; preds = %if.end.38
  %38 = load %struct.param_t*, %struct.param_t** %P.addr, align 8
  %FFT_SIZE41 = getelementptr inbounds %struct.param_t, %struct.param_t* %38, i32 0, i32 6
  %39 = load i32, i32* %FFT_SIZE41, align 4
  %40 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %FFT_SIZE42 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %40, i32 0, i32 5
  store i32 %39, i32* %FFT_SIZE42, align 4
  br label %if.end.45

if.else.43:                                       ; preds = %if.end.38
  %41 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %FFT_SIZE44 = getelementptr inbounds %struct.fe_t, %struct.fe_t* %41, i32 0, i32 5
  store i32 256, i32* %FFT_SIZE44, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.43, %if.then.40
  ret void
}

; Function Attrs: nounwind uwtable
define void @fe_parse_melfb_params(%struct.param_t* %P, %struct.melfb_t* %MEL) #0 {
entry:
  %P.addr = alloca %struct.param_t*, align 8
  %MEL.addr = alloca %struct.melfb_t*, align 8
  store %struct.param_t* %P, %struct.param_t** %P.addr, align 8
  store %struct.melfb_t* %MEL, %struct.melfb_t** %MEL.addr, align 8
  %0 = load %struct.param_t*, %struct.param_t** %P.addr, align 8
  %SAMPLING_RATE = getelementptr inbounds %struct.param_t, %struct.param_t* %0, i32 0, i32 0
  %1 = load float, float* %SAMPLING_RATE, align 4
  %cmp = fcmp une float %1, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.param_t*, %struct.param_t** %P.addr, align 8
  %SAMPLING_RATE1 = getelementptr inbounds %struct.param_t, %struct.param_t* %2, i32 0, i32 0
  %3 = load float, float* %SAMPLING_RATE1, align 4
  %4 = load %struct.melfb_t*, %struct.melfb_t** %MEL.addr, align 8
  %sampling_rate = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %4, i32 0, i32 0
  store float %3, float* %sampling_rate, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load %struct.melfb_t*, %struct.melfb_t** %MEL.addr, align 8
  %sampling_rate2 = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %5, i32 0, i32 0
  store float 1.600000e+04, float* %sampling_rate2, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load %struct.param_t*, %struct.param_t** %P.addr, align 8
  %FFT_SIZE = getelementptr inbounds %struct.param_t, %struct.param_t* %6, i32 0, i32 6
  %7 = load i32, i32* %FFT_SIZE, align 4
  %cmp3 = icmp ne i32 %7, 0
  br i1 %cmp3, label %if.then.4, label %if.else.6

if.then.4:                                        ; preds = %if.end
  %8 = load %struct.param_t*, %struct.param_t** %P.addr, align 8
  %FFT_SIZE5 = getelementptr inbounds %struct.param_t, %struct.param_t* %8, i32 0, i32 6
  %9 = load i32, i32* %FFT_SIZE5, align 4
  %10 = load %struct.melfb_t*, %struct.melfb_t** %MEL.addr, align 8
  %fft_size = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %10, i32 0, i32 3
  store i32 %9, i32* %fft_size, align 4
  br label %if.end.19

if.else.6:                                        ; preds = %if.end
  %11 = load %struct.melfb_t*, %struct.melfb_t** %MEL.addr, align 8
  %sampling_rate7 = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %11, i32 0, i32 0
  %12 = load float, float* %sampling_rate7, align 4
  %cmp8 = fcmp oeq float %12, 1.600000e+04
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.else.6
  %13 = load %struct.melfb_t*, %struct.melfb_t** %MEL.addr, align 8
  %fft_size10 = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %13, i32 0, i32 3
  store i32 512, i32* %fft_size10, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.else.6
  %14 = load %struct.melfb_t*, %struct.melfb_t** %MEL.addr, align 8
  %sampling_rate12 = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %14, i32 0, i32 0
  %15 = load float, float* %sampling_rate12, align 4
  %cmp13 = fcmp oeq float %15, 8.000000e+03
  br i1 %cmp13, label %if.then.14, label %if.else.16

if.then.14:                                       ; preds = %if.end.11
  %16 = load %struct.melfb_t*, %struct.melfb_t** %MEL.addr, align 8
  %fft_size15 = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %16, i32 0, i32 3
  store i32 256, i32* %fft_size15, align 4
  br label %if.end.18

if.else.16:                                       ; preds = %if.end.11
  %17 = load %struct.melfb_t*, %struct.melfb_t** %MEL.addr, align 8
  %fft_size17 = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %17, i32 0, i32 3
  store i32 256, i32* %fft_size17, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.16, %if.then.14
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.4
  %18 = load %struct.param_t*, %struct.param_t** %P.addr, align 8
  %NUM_CEPSTRA = getelementptr inbounds %struct.param_t, %struct.param_t* %18, i32 0, i32 4
  %19 = load i32, i32* %NUM_CEPSTRA, align 4
  %cmp20 = icmp ne i32 %19, 0
  br i1 %cmp20, label %if.then.21, label %if.else.23

if.then.21:                                       ; preds = %if.end.19
  %20 = load %struct.param_t*, %struct.param_t** %P.addr, align 8
  %NUM_CEPSTRA22 = getelementptr inbounds %struct.param_t, %struct.param_t* %20, i32 0, i32 4
  %21 = load i32, i32* %NUM_CEPSTRA22, align 4
  %22 = load %struct.melfb_t*, %struct.melfb_t** %MEL.addr, align 8
  %num_cepstra = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %22, i32 0, i32 1
  store i32 %21, i32* %num_cepstra, align 4
  br label %if.end.25

if.else.23:                                       ; preds = %if.end.19
  %23 = load %struct.melfb_t*, %struct.melfb_t** %MEL.addr, align 8
  %num_cepstra24 = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %23, i32 0, i32 1
  store i32 13, i32* %num_cepstra24, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.23, %if.then.21
  %24 = load %struct.param_t*, %struct.param_t** %P.addr, align 8
  %NUM_FILTERS = getelementptr inbounds %struct.param_t, %struct.param_t* %24, i32 0, i32 5
  %25 = load i32, i32* %NUM_FILTERS, align 4
  %cmp26 = icmp ne i32 %25, 0
  br i1 %cmp26, label %if.then.27, label %if.else.29

if.then.27:                                       ; preds = %if.end.25
  %26 = load %struct.param_t*, %struct.param_t** %P.addr, align 8
  %NUM_FILTERS28 = getelementptr inbounds %struct.param_t, %struct.param_t* %26, i32 0, i32 5
  %27 = load i32, i32* %NUM_FILTERS28, align 4
  %28 = load %struct.melfb_t*, %struct.melfb_t** %MEL.addr, align 8
  %num_filters = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %28, i32 0, i32 2
  store i32 %27, i32* %num_filters, align 4
  br label %if.end.44

if.else.29:                                       ; preds = %if.end.25
  %29 = load %struct.melfb_t*, %struct.melfb_t** %MEL.addr, align 8
  %sampling_rate30 = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %29, i32 0, i32 0
  %30 = load float, float* %sampling_rate30, align 4
  %cmp31 = fcmp oeq float %30, 1.600000e+04
  br i1 %cmp31, label %if.then.32, label %if.else.34

if.then.32:                                       ; preds = %if.else.29
  %31 = load %struct.melfb_t*, %struct.melfb_t** %MEL.addr, align 8
  %num_filters33 = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %31, i32 0, i32 2
  store i32 40, i32* %num_filters33, align 4
  br label %if.end.43

if.else.34:                                       ; preds = %if.else.29
  %32 = load %struct.melfb_t*, %struct.melfb_t** %MEL.addr, align 8
  %sampling_rate35 = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %32, i32 0, i32 0
  %33 = load float, float* %sampling_rate35, align 4
  %cmp36 = fcmp oeq float %33, 8.000000e+03
  br i1 %cmp36, label %if.then.37, label %if.else.39

if.then.37:                                       ; preds = %if.else.34
  %34 = load %struct.melfb_t*, %struct.melfb_t** %MEL.addr, align 8
  %num_filters38 = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %34, i32 0, i32 2
  store i32 31, i32* %num_filters38, align 4
  br label %if.end.42

if.else.39:                                       ; preds = %if.else.34
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i32 0, i32 0))
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i32 0, i32 0))
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call41 = call i32 @fflush(%struct._IO_FILE* %37)
  call void @exit(i32 0) #5
  unreachable

if.end.42:                                        ; preds = %if.then.37
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.then.32
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then.27
  %38 = load %struct.param_t*, %struct.param_t** %P.addr, align 8
  %UPPER_FILT_FREQ = getelementptr inbounds %struct.param_t, %struct.param_t* %38, i32 0, i32 8
  %39 = load float, float* %UPPER_FILT_FREQ, align 4
  %cmp45 = fcmp une float %39, 0.000000e+00
  br i1 %cmp45, label %if.then.46, label %if.else.48

if.then.46:                                       ; preds = %if.end.44
  %40 = load %struct.param_t*, %struct.param_t** %P.addr, align 8
  %UPPER_FILT_FREQ47 = getelementptr inbounds %struct.param_t, %struct.param_t* %40, i32 0, i32 8
  %41 = load float, float* %UPPER_FILT_FREQ47, align 4
  %42 = load %struct.melfb_t*, %struct.melfb_t** %MEL.addr, align 8
  %upper_filt_freq = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %42, i32 0, i32 5
  store float %41, float* %upper_filt_freq, align 4
  br label %if.end.64

if.else.48:                                       ; preds = %if.end.44
  %43 = load %struct.melfb_t*, %struct.melfb_t** %MEL.addr, align 8
  %sampling_rate49 = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %43, i32 0, i32 0
  %44 = load float, float* %sampling_rate49, align 4
  %cmp50 = fcmp oeq float %44, 1.600000e+04
  br i1 %cmp50, label %if.then.51, label %if.else.53

if.then.51:                                       ; preds = %if.else.48
  %45 = load %struct.melfb_t*, %struct.melfb_t** %MEL.addr, align 8
  %upper_filt_freq52 = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %45, i32 0, i32 5
  store float 0x40BAC77F60000000, float* %upper_filt_freq52, align 4
  br label %if.end.63

if.else.53:                                       ; preds = %if.else.48
  %46 = load %struct.melfb_t*, %struct.melfb_t** %MEL.addr, align 8
  %sampling_rate54 = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %46, i32 0, i32 0
  %47 = load float, float* %sampling_rate54, align 4
  %cmp55 = fcmp oeq float %47, 8.000000e+03
  br i1 %cmp55, label %if.then.56, label %if.else.58

if.then.56:                                       ; preds = %if.else.53
  %48 = load %struct.melfb_t*, %struct.melfb_t** %MEL.addr, align 8
  %upper_filt_freq57 = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %48, i32 0, i32 5
  store float 3.500000e+03, float* %upper_filt_freq57, align 4
  br label %if.end.62

if.else.58:                                       ; preds = %if.else.53
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i32 0, i32 0))
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i32 0, i32 0))
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call61 = call i32 @fflush(%struct._IO_FILE* %51)
  call void @exit(i32 0) #5
  unreachable

if.end.62:                                        ; preds = %if.then.56
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.then.51
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.then.46
  %52 = load %struct.param_t*, %struct.param_t** %P.addr, align 8
  %LOWER_FILT_FREQ = getelementptr inbounds %struct.param_t, %struct.param_t* %52, i32 0, i32 7
  %53 = load float, float* %LOWER_FILT_FREQ, align 4
  %cmp65 = fcmp une float %53, 0.000000e+00
  br i1 %cmp65, label %if.then.66, label %if.else.68

if.then.66:                                       ; preds = %if.end.64
  %54 = load %struct.param_t*, %struct.param_t** %P.addr, align 8
  %LOWER_FILT_FREQ67 = getelementptr inbounds %struct.param_t, %struct.param_t* %54, i32 0, i32 7
  %55 = load float, float* %LOWER_FILT_FREQ67, align 4
  %56 = load %struct.melfb_t*, %struct.melfb_t** %MEL.addr, align 8
  %lower_filt_freq = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %56, i32 0, i32 4
  store float %55, float* %lower_filt_freq, align 4
  br label %if.end.84

if.else.68:                                       ; preds = %if.end.64
  %57 = load %struct.melfb_t*, %struct.melfb_t** %MEL.addr, align 8
  %sampling_rate69 = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %57, i32 0, i32 0
  %58 = load float, float* %sampling_rate69, align 4
  %cmp70 = fcmp oeq float %58, 1.600000e+04
  br i1 %cmp70, label %if.then.71, label %if.else.73

if.then.71:                                       ; preds = %if.else.68
  %59 = load %struct.melfb_t*, %struct.melfb_t** %MEL.addr, align 8
  %lower_filt_freq72 = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %59, i32 0, i32 4
  store float 0x4060AAAAC0000000, float* %lower_filt_freq72, align 4
  br label %if.end.83

if.else.73:                                       ; preds = %if.else.68
  %60 = load %struct.melfb_t*, %struct.melfb_t** %MEL.addr, align 8
  %sampling_rate74 = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %60, i32 0, i32 0
  %61 = load float, float* %sampling_rate74, align 4
  %cmp75 = fcmp oeq float %61, 8.000000e+03
  br i1 %cmp75, label %if.then.76, label %if.else.78

if.then.76:                                       ; preds = %if.else.73
  %62 = load %struct.melfb_t*, %struct.melfb_t** %MEL.addr, align 8
  %lower_filt_freq77 = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %62, i32 0, i32 4
  store float 2.000000e+02, float* %lower_filt_freq77, align 4
  br label %if.end.82

if.else.78:                                       ; preds = %if.else.73
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call79 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i32 0, i32 0))
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call80 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %64, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i32 0, i32 0))
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call81 = call i32 @fflush(%struct._IO_FILE* %65)
  call void @exit(i32 0) #5
  unreachable

if.end.82:                                        ; preds = %if.then.76
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.then.71
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.then.66
  %66 = load %struct.param_t*, %struct.param_t** %P.addr, align 8
  %doublebw = getelementptr inbounds %struct.param_t, %struct.param_t* %66, i32 0, i32 22
  %67 = load i32, i32* %doublebw, align 4
  %cmp85 = icmp eq i32 %67, 1
  br i1 %cmp85, label %if.then.86, label %if.else.87

if.then.86:                                       ; preds = %if.end.84
  %68 = load %struct.melfb_t*, %struct.melfb_t** %MEL.addr, align 8
  %doublewide = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %68, i32 0, i32 10
  store i32 1, i32* %doublewide, align 4
  br label %if.end.89

if.else.87:                                       ; preds = %if.end.84
  %69 = load %struct.melfb_t*, %struct.melfb_t** %MEL.addr, align 8
  %doublewide88 = getelementptr inbounds %struct.melfb_t, %struct.melfb_t* %69, i32 0, i32 10
  store i32 0, i32* %doublewide88, align 4
  br label %if.end.89

if.end.89:                                        ; preds = %if.else.87, %if.then.86
  ret void
}

declare i32 @fflush(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define void @fe_print_current(%struct.fe_t* %FE) #0 {
entry:
  %FE.addr = alloca %struct.fe_t*, align 8
  store %struct.fe_t* %FE, %struct.fe_t** %FE.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i32 0, i32 0))
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %SAMPLING_RATE = getelementptr inbounds %struct.fe_t, %struct.fe_t* %2, i32 0, i32 0
  %3 = load float, float* %SAMPLING_RATE, align 4
  %conv = fpext float %3 to double
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i32 0, i32 0), double %conv)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %FRAME_SIZE = getelementptr inbounds %struct.fe_t, %struct.fe_t* %5, i32 0, i32 4
  %6 = load i32, i32* %FRAME_SIZE, align 4
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i32 0, i32 0), i32 %6)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %FRAME_SHIFT = getelementptr inbounds %struct.fe_t, %struct.fe_t* %8, i32 0, i32 2
  %9 = load i32, i32* %FRAME_SHIFT, align 4
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i32 0, i32 0), i32 %9)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %FFT_SIZE = getelementptr inbounds %struct.fe_t, %struct.fe_t* %11, i32 0, i32 5
  %12 = load i32, i32* %FFT_SIZE, align 4
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i32 0, i32 0), i32 %12)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %14 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %NUM_OVERFLOW_SAMPS = getelementptr inbounds %struct.fe_t, %struct.fe_t* %14, i32 0, i32 10
  %15 = load i32, i32* %NUM_OVERFLOW_SAMPS, align 4
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0), i32 %15)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = load %struct.fe_t*, %struct.fe_t** %FE.addr, align 8
  %START_FLAG = getelementptr inbounds %struct.fe_t, %struct.fe_t* %17, i32 0, i32 12
  %18 = load i32, i32* %START_FLAG, align 4
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i32 0, i32 0), i32 %18)
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
