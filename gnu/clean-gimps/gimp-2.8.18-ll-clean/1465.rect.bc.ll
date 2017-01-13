; ModuleID = './plug-ins/flame/rect.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.frame_spec = type { double, %struct.control_point*, i32, double }
%struct.control_point = type { [6 x %struct.xform], [256 x [3 x double]], double, i32, double, double, double, i32, i32, i32, [2 x double], double, double, double, double, i32, i32, i32, [2 x [2 x double]], [2 x [2 x double]] }
%struct.xform = type { [29 x double], [3 x [2 x double]], double, double }

@render_rectangle.last_block = internal global i8* null, align 8
@render_rectangle.last_block_size = internal global i32 0, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [43 x i8] c"render_rectangle: cannot malloc %d bytes.\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @render_rectangle(%struct.frame_spec* %spec, i8* %out, i32 %out_width, i32 %field, i32 %nchan, i32 (double)* %progress) #0 {
entry:
  %spec.addr = alloca %struct.frame_spec*, align 8
  %out.addr = alloca i8*, align 8
  %out_width.addr = alloca i32, align 4
  %field.addr = alloca i32, align 4
  %nchan.addr = alloca i32, align 4
  %progress.addr = alloca i32 (double)*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %nsamples = alloca i32, align 4
  %nbuckets = alloca i32, align 4
  %batch_size = alloca i32, align 4
  %batch_num = alloca i32, align 4
  %sub_batch = alloca i32, align 4
  %buckets = alloca [4 x i16]*, align 8
  %accumulate = alloca [4 x i16]*, align 8
  %points = alloca [3 x double]*, align 8
  %filter = alloca double*, align 8
  %temporal_filter = alloca double*, align 8
  %temporal_deltas = alloca double*, align 8
  %bounds = alloca [4 x double], align 16
  %size = alloca [2 x double], align 16
  %ppux = alloca double, align 8
  %ppuy = alloca double, align 8
  %image_width = alloca i32, align 4
  %image_height = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %filter_width = alloca i32, align 4
  %oversample = alloca i32, align 4
  %nbatches = alloca i32, align 4
  %cmap = alloca [256 x [4 x i16]], align 16
  %gutter_width = alloca i32, align 4
  %sbc = alloca i32, align 4
  %ii = alloca double, align 8
  %jj = alloca double, align 8
  %t = alloca double, align 8
  %memory_rqd = alloca i32, align 4
  %batch_time = alloca double, align 8
  %sample_density = alloca double, align 8
  %cp = alloca %struct.control_point, align 8
  %t0 = alloca double, align 8
  %t1 = alloca double, align 8
  %shift = alloca double, align 8
  %corner0 = alloca double, align 8
  %corner1 = alloca double, align 8
  %scale = alloca double, align 8
  %k271 = alloca i32, align 4
  %color_index = alloca i32, align 4
  %p = alloca double*, align 8
  %b = alloca [4 x i16]*, align 8
  %tt_ = alloca i16, align 2
  %k1 = alloca double, align 8
  %area = alloca double, align 8
  %k2 = alloca double, align 8
  %a = alloca [4 x i16]*, align 8
  %b398 = alloca [4 x i16]*, align 8
  %c = alloca [4 x double], align 16
  %ls = alloca double, align 8
  %tt_440 = alloca i16, align 2
  %tt_459 = alloca i16, align 2
  %tt_478 = alloca i16, align 2
  %tt_497 = alloca i16, align 2
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %t525 = alloca [4 x double], align 16
  %g = alloca double, align 8
  %ii550 = alloca i32, align 4
  %jj551 = alloca i32, align 4
  %a552 = alloca i32, align 4
  %p553 = alloca i8*, align 8
  %k566 = alloca double, align 8
  %a571 = alloca [4 x i16]*, align 8
  store %struct.frame_spec* %spec, %struct.frame_spec** %spec.addr, align 8
  store i8* %out, i8** %out.addr, align 8
  store i32 %out_width, i32* %out_width.addr, align 4
  store i32 %field, i32* %field.addr, align 4
  store i32 %nchan, i32* %nchan.addr, align 4
  store i32 (double)* %progress, i32 (double)** %progress.addr, align 8
  %0 = load %struct.frame_spec*, %struct.frame_spec** %spec.addr, align 8
  %cps = getelementptr inbounds %struct.frame_spec, %struct.frame_spec* %0, i32 0, i32 1
  %1 = load %struct.control_point*, %struct.control_point** %cps, align 8
  %arrayidx = getelementptr inbounds %struct.control_point, %struct.control_point* %1, i64 0
  %spatial_oversample = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx, i32 0, i32 9
  %2 = load i32, i32* %spatial_oversample, align 4
  store i32 %2, i32* %oversample, align 4
  %3 = load %struct.frame_spec*, %struct.frame_spec** %spec.addr, align 8
  %cps1 = getelementptr inbounds %struct.frame_spec, %struct.frame_spec* %3, i32 0, i32 1
  %4 = load %struct.control_point*, %struct.control_point** %cps1, align 8
  %arrayidx2 = getelementptr inbounds %struct.control_point, %struct.control_point* %4, i64 0
  %nbatches3 = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx2, i32 0, i32 15
  %5 = load i32, i32* %nbatches3, align 4
  store i32 %5, i32* %nbatches, align 4
  %6 = load %struct.frame_spec*, %struct.frame_spec** %spec.addr, align 8
  %cps4 = getelementptr inbounds %struct.frame_spec, %struct.frame_spec* %6, i32 0, i32 1
  %7 = load %struct.control_point*, %struct.control_point** %cps4, align 8
  %arrayidx5 = getelementptr inbounds %struct.control_point, %struct.control_point* %7, i64 0
  %width6 = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx5, i32 0, i32 7
  %8 = load i32, i32* %width6, align 4
  store i32 %8, i32* %image_width, align 4
  %9 = load i32, i32* %field.addr, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load %struct.frame_spec*, %struct.frame_spec** %spec.addr, align 8
  %cps7 = getelementptr inbounds %struct.frame_spec, %struct.frame_spec* %10, i32 0, i32 1
  %11 = load %struct.control_point*, %struct.control_point** %cps7, align 8
  %arrayidx8 = getelementptr inbounds %struct.control_point, %struct.control_point* %11, i64 0
  %height9 = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx8, i32 0, i32 8
  %12 = load i32, i32* %height9, align 4
  %div = sdiv i32 %12, 2
  store i32 %div, i32* %image_height, align 4
  %13 = load i32, i32* %field.addr, align 4
  %cmp = icmp eq i32 %13, 2
  br i1 %cmp, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then
  %14 = load i32, i32* %nchan.addr, align 4
  %15 = load i32, i32* %out_width.addr, align 4
  %mul = mul nsw i32 %14, %15
  %16 = load i8*, i8** %out.addr, align 8
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 %idx.ext
  store i8* %add.ptr, i8** %out.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.then
  %17 = load i32, i32* %out_width.addr, align 4
  %mul11 = mul nsw i32 %17, 2
  store i32 %mul11, i32* %out_width.addr, align 4
  br label %if.end.15

if.else:                                          ; preds = %entry
  %18 = load %struct.frame_spec*, %struct.frame_spec** %spec.addr, align 8
  %cps12 = getelementptr inbounds %struct.frame_spec, %struct.frame_spec* %18, i32 0, i32 1
  %19 = load %struct.control_point*, %struct.control_point** %cps12, align 8
  %arrayidx13 = getelementptr inbounds %struct.control_point, %struct.control_point* %19, i64 0
  %height14 = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx13, i32 0, i32 8
  %20 = load i32, i32* %height14, align 4
  store i32 %20, i32* %image_height, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.end
  %21 = load i32, i32* %oversample, align 4
  %conv = sitofp i32 %21 to double
  %mul16 = fmul double 5.000000e+00, %conv
  %22 = load %struct.frame_spec*, %struct.frame_spec** %spec.addr, align 8
  %cps17 = getelementptr inbounds %struct.frame_spec, %struct.frame_spec* %22, i32 0, i32 1
  %23 = load %struct.control_point*, %struct.control_point** %cps17, align 8
  %arrayidx18 = getelementptr inbounds %struct.control_point, %struct.control_point* %23, i64 0
  %spatial_filter_radius = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx18, i32 0, i32 13
  %24 = load double, double* %spatial_filter_radius, align 8
  %mul19 = fmul double %mul16, %24
  %conv20 = fptosi double %mul19 to i32
  store i32 %conv20, i32* %filter_width, align 4
  %25 = load i32, i32* %filter_width, align 4
  %26 = load i32, i32* %oversample, align 4
  %xor = xor i32 %25, %26
  %and = and i32 %xor, 1
  %tobool21 = icmp ne i32 %and, 0
  br i1 %tobool21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.15
  %27 = load i32, i32* %filter_width, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %filter_width, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.end.15
  %28 = load i32, i32* %filter_width, align 4
  %conv24 = sext i32 %28 to i64
  %mul25 = mul i64 8, %conv24
  %29 = load i32, i32* %filter_width, align 4
  %conv26 = sext i32 %29 to i64
  %mul27 = mul i64 %mul25, %conv26
  %call = call noalias i8* @malloc(i64 %mul27) #4
  %30 = bitcast i8* %call to double*
  store double* %30, double** %filter, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.59, %if.end.23
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* %filter_width, align 4
  %cmp28 = icmp slt i32 %31, %32
  br i1 %cmp28, label %for.body, label %for.end.61

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc, %for.body
  %33 = load i32, i32* %j, align 4
  %34 = load i32, i32* %filter_width, align 4
  %cmp31 = icmp slt i32 %33, %34
  br i1 %cmp31, label %for.body.33, label %for.end

for.body.33:                                      ; preds = %for.cond.30
  %35 = load i32, i32* %i, align 4
  %conv34 = sitofp i32 %35 to double
  %mul35 = fmul double 2.000000e+00, %conv34
  %add = fadd double %mul35, 1.000000e+00
  %36 = load i32, i32* %filter_width, align 4
  %conv36 = sitofp i32 %36 to double
  %div37 = fdiv double %add, %conv36
  %sub = fsub double %div37, 1.000000e+00
  %mul38 = fmul double %sub, 2.500000e+00
  store double %mul38, double* %ii, align 8
  %37 = load i32, i32* %j, align 4
  %conv39 = sitofp i32 %37 to double
  %mul40 = fmul double 2.000000e+00, %conv39
  %add41 = fadd double %mul40, 1.000000e+00
  %38 = load i32, i32* %filter_width, align 4
  %conv42 = sitofp i32 %38 to double
  %div43 = fdiv double %add41, %conv42
  %sub44 = fsub double %div43, 1.000000e+00
  %mul45 = fmul double %sub44, 2.500000e+00
  store double %mul45, double* %jj, align 8
  %39 = load i32, i32* %field.addr, align 4
  %tobool46 = icmp ne i32 %39, 0
  br i1 %tobool46, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %for.body.33
  %40 = load double, double* %jj, align 8
  %mul48 = fmul double %40, 2.000000e+00
  store double %mul48, double* %jj, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.47, %for.body.33
  %41 = load double, double* %ii, align 8
  %42 = load double, double* %ii, align 8
  %mul50 = fmul double %41, %42
  %43 = load double, double* %jj, align 8
  %44 = load double, double* %jj, align 8
  %mul51 = fmul double %43, %44
  %add52 = fadd double %mul50, %mul51
  %mul53 = fmul double -2.000000e+00, %add52
  %call54 = call double @exp(double %mul53) #4
  %45 = load i32, i32* %i, align 4
  %46 = load i32, i32* %j, align 4
  %47 = load i32, i32* %filter_width, align 4
  %mul55 = mul nsw i32 %46, %47
  %add56 = add nsw i32 %45, %mul55
  %idxprom = sext i32 %add56 to i64
  %48 = load double*, double** %filter, align 8
  %arrayidx57 = getelementptr inbounds double, double* %48, i64 %idxprom
  store double %call54, double* %arrayidx57, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.49
  %49 = load i32, i32* %j, align 4
  %inc58 = add nsw i32 %49, 1
  store i32 %inc58, i32* %j, align 4
  br label %for.cond.30

for.end:                                          ; preds = %for.cond.30
  br label %for.inc.59

for.inc.59:                                       ; preds = %for.end
  %50 = load i32, i32* %i, align 4
  %inc60 = add nsw i32 %50, 1
  store i32 %inc60, i32* %i, align 4
  br label %for.cond

for.end.61:                                       ; preds = %for.cond
  %51 = load double*, double** %filter, align 8
  %52 = load i32, i32* %filter_width, align 4
  %53 = load i32, i32* %filter_width, align 4
  %mul62 = mul nsw i32 %52, %53
  call void @normalize_vector(double* %51, i32 %mul62)
  %54 = load i32, i32* %nbatches, align 4
  %conv63 = sext i32 %54 to i64
  %mul64 = mul i64 8, %conv63
  %call65 = call noalias i8* @malloc(i64 %mul64) #4
  %55 = bitcast i8* %call65 to double*
  store double* %55, double** %temporal_filter, align 8
  %56 = load i32, i32* %nbatches, align 4
  %conv66 = sext i32 %56 to i64
  %mul67 = mul i64 8, %conv66
  %call68 = call noalias i8* @malloc(i64 %mul67) #4
  %57 = bitcast i8* %call68 to double*
  store double* %57, double** %temporal_deltas, align 8
  %58 = load i32, i32* %nbatches, align 4
  %cmp69 = icmp sgt i32 %58, 1
  br i1 %cmp69, label %if.then.71, label %if.else.93

if.then.71:                                       ; preds = %for.end.61
  store i32 0, i32* %i, align 4
  br label %for.cond.72

for.cond.72:                                      ; preds = %for.inc.90, %if.then.71
  %59 = load i32, i32* %i, align 4
  %60 = load i32, i32* %nbatches, align 4
  %cmp73 = icmp slt i32 %59, %60
  br i1 %cmp73, label %for.body.75, label %for.end.92

for.body.75:                                      ; preds = %for.cond.72
  %61 = load i32, i32* %i, align 4
  %conv76 = sitofp i32 %61 to double
  %62 = load i32, i32* %nbatches, align 4
  %sub77 = sub nsw i32 %62, 1
  %conv78 = sitofp i32 %sub77 to double
  %div79 = fdiv double %conv76, %conv78
  %mul80 = fmul double 2.000000e+00, %div79
  %sub81 = fsub double %mul80, 1.000000e+00
  %63 = load %struct.frame_spec*, %struct.frame_spec** %spec.addr, align 8
  %temporal_filter_radius = getelementptr inbounds %struct.frame_spec, %struct.frame_spec* %63, i32 0, i32 0
  %64 = load double, double* %temporal_filter_radius, align 8
  %mul82 = fmul double %sub81, %64
  %65 = load i32, i32* %i, align 4
  %idxprom83 = sext i32 %65 to i64
  %66 = load double*, double** %temporal_deltas, align 8
  %arrayidx84 = getelementptr inbounds double, double* %66, i64 %idxprom83
  store double %mul82, double* %arrayidx84, align 8
  store double %mul82, double* %t, align 8
  %67 = load double, double* %t, align 8
  %mul85 = fmul double -2.000000e+00, %67
  %68 = load double, double* %t, align 8
  %mul86 = fmul double %mul85, %68
  %call87 = call double @exp(double %mul86) #4
  %69 = load i32, i32* %i, align 4
  %idxprom88 = sext i32 %69 to i64
  %70 = load double*, double** %temporal_filter, align 8
  %arrayidx89 = getelementptr inbounds double, double* %70, i64 %idxprom88
  store double %call87, double* %arrayidx89, align 8
  br label %for.inc.90

for.inc.90:                                       ; preds = %for.body.75
  %71 = load i32, i32* %i, align 4
  %inc91 = add nsw i32 %71, 1
  store i32 %inc91, i32* %i, align 4
  br label %for.cond.72

for.end.92:                                       ; preds = %for.cond.72
  %72 = load double*, double** %temporal_filter, align 8
  %73 = load i32, i32* %nbatches, align 4
  call void @normalize_vector(double* %72, i32 %73)
  br label %if.end.96

if.else.93:                                       ; preds = %for.end.61
  %74 = load double*, double** %temporal_filter, align 8
  %arrayidx94 = getelementptr inbounds double, double* %74, i64 0
  store double 1.000000e+00, double* %arrayidx94, align 8
  %75 = load double*, double** %temporal_deltas, align 8
  %arrayidx95 = getelementptr inbounds double, double* %75, i64 0
  store double 0.000000e+00, double* %arrayidx95, align 8
  br label %if.end.96

if.end.96:                                        ; preds = %if.else.93, %for.end.92
  %76 = load i32, i32* %filter_width, align 4
  %77 = load i32, i32* %oversample, align 4
  %sub97 = sub nsw i32 %76, %77
  %div98 = sdiv i32 %sub97, 2
  store i32 %div98, i32* %gutter_width, align 4
  %78 = load i32, i32* %oversample, align 4
  %79 = load i32, i32* %image_height, align 4
  %mul99 = mul nsw i32 %78, %79
  %80 = load i32, i32* %gutter_width, align 4
  %mul100 = mul nsw i32 2, %80
  %add101 = add nsw i32 %mul99, %mul100
  store i32 %add101, i32* %height, align 4
  %81 = load i32, i32* %oversample, align 4
  %82 = load i32, i32* %image_width, align 4
  %mul102 = mul nsw i32 %81, %82
  %83 = load i32, i32* %gutter_width, align 4
  %mul103 = mul nsw i32 2, %83
  %add104 = add nsw i32 %mul102, %mul103
  store i32 %add104, i32* %width, align 4
  %84 = load i32, i32* %width, align 4
  %85 = load i32, i32* %height, align 4
  %mul105 = mul nsw i32 %84, %85
  store i32 %mul105, i32* %nbuckets, align 4
  %86 = load i32, i32* %nbuckets, align 4
  %conv106 = sext i32 %86 to i64
  %mul107 = mul i64 8, %conv106
  %87 = load i32, i32* %nbuckets, align 4
  %conv108 = sext i32 %87 to i64
  %mul109 = mul i64 8, %conv108
  %add110 = add i64 %mul107, %mul109
  %add111 = add i64 %add110, 240000
  %conv112 = trunc i64 %add111 to i32
  store i32 %conv112, i32* %memory_rqd, align 4
  %88 = load i32, i32* %memory_rqd, align 4
  %89 = load i32, i32* @render_rectangle.last_block_size, align 4
  %cmp113 = icmp sgt i32 %88, %89
  br i1 %cmp113, label %if.then.115, label %if.end.127

if.then.115:                                      ; preds = %if.end.96
  %90 = load i8*, i8** @render_rectangle.last_block, align 8
  %cmp116 = icmp ne i8* %90, null
  br i1 %cmp116, label %if.then.118, label %if.end.119

if.then.118:                                      ; preds = %if.then.115
  %91 = load i8*, i8** @render_rectangle.last_block, align 8
  call void @free(i8* %91) #4
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.118, %if.then.115
  %92 = load i32, i32* %memory_rqd, align 4
  %conv120 = sext i32 %92 to i64
  %call121 = call noalias i8* @malloc(i64 %conv120) #4
  store i8* %call121, i8** @render_rectangle.last_block, align 8
  %93 = load i8*, i8** @render_rectangle.last_block, align 8
  %cmp122 = icmp eq i8* %93, null
  br i1 %cmp122, label %if.then.124, label %if.end.126

if.then.124:                                      ; preds = %if.end.119
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %95 = load i32, i32* %memory_rqd, align 4
  %call125 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %94, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i32 0, i32 0), i32 %95)
  call void @exit(i32 1) #5
  unreachable

if.end.126:                                       ; preds = %if.end.119
  %96 = load i32, i32* %memory_rqd, align 4
  store i32 %96, i32* @render_rectangle.last_block_size, align 4
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.126, %if.end.96
  %97 = load i8*, i8** @render_rectangle.last_block, align 8
  %98 = bitcast i8* %97 to [4 x i16]*
  store [4 x i16]* %98, [4 x i16]** %buckets, align 8
  %99 = load i8*, i8** @render_rectangle.last_block, align 8
  %100 = load i32, i32* %nbuckets, align 4
  %conv128 = sext i32 %100 to i64
  %mul129 = mul i64 8, %conv128
  %add.ptr130 = getelementptr inbounds i8, i8* %99, i64 %mul129
  %101 = bitcast i8* %add.ptr130 to [4 x i16]*
  store [4 x i16]* %101, [4 x i16]** %accumulate, align 8
  %102 = load i8*, i8** @render_rectangle.last_block, align 8
  %103 = load i32, i32* %nbuckets, align 4
  %conv131 = sext i32 %103 to i64
  %mul132 = mul i64 16, %conv131
  %add.ptr133 = getelementptr inbounds i8, i8* %102, i64 %mul132
  %104 = bitcast i8* %add.ptr133 to [3 x double]*
  store [3 x double]* %104, [3 x double]** %points, align 8
  %105 = load [4 x i16]*, [4 x i16]** %accumulate, align 8
  %106 = bitcast [4 x i16]* %105 to i8*
  %107 = load i32, i32* %nbuckets, align 4
  %conv134 = sext i32 %107 to i64
  %mul135 = mul i64 8, %conv134
  call void @llvm.memset.p0i8.i64(i8* %106, i8 0, i64 %mul135, i32 1, i1 false)
  store i32 0, i32* %batch_num, align 4
  br label %for.cond.136

for.cond.136:                                     ; preds = %for.inc.522, %if.end.127
  %108 = load i32, i32* %batch_num, align 4
  %109 = load i32, i32* %nbatches, align 4
  %cmp137 = icmp slt i32 %108, %109
  br i1 %cmp137, label %for.body.139, label %for.end.524

for.body.139:                                     ; preds = %for.cond.136
  %110 = load [4 x i16]*, [4 x i16]** %buckets, align 8
  %111 = bitcast [4 x i16]* %110 to i8*
  %112 = load i32, i32* %nbuckets, align 4
  %conv140 = sext i32 %112 to i64
  %mul141 = mul i64 8, %conv140
  call void @llvm.memset.p0i8.i64(i8* %111, i8 0, i64 %mul141, i32 1, i1 false)
  %113 = load %struct.frame_spec*, %struct.frame_spec** %spec.addr, align 8
  %time = getelementptr inbounds %struct.frame_spec, %struct.frame_spec* %113, i32 0, i32 3
  %114 = load double, double* %time, align 8
  %115 = load i32, i32* %batch_num, align 4
  %idxprom142 = sext i32 %115 to i64
  %116 = load double*, double** %temporal_deltas, align 8
  %arrayidx143 = getelementptr inbounds double, double* %116, i64 %idxprom142
  %117 = load double, double* %arrayidx143, align 8
  %add144 = fadd double %114, %117
  store double %add144, double* %batch_time, align 8
  %118 = load %struct.frame_spec*, %struct.frame_spec** %spec.addr, align 8
  %cps145 = getelementptr inbounds %struct.frame_spec, %struct.frame_spec* %118, i32 0, i32 1
  %119 = load %struct.control_point*, %struct.control_point** %cps145, align 8
  %120 = load %struct.frame_spec*, %struct.frame_spec** %spec.addr, align 8
  %ncps = getelementptr inbounds %struct.frame_spec, %struct.frame_spec* %120, i32 0, i32 2
  %121 = load i32, i32* %ncps, align 4
  %122 = load double, double* %batch_time, align 8
  call void @interpolate(%struct.control_point* %119, i32 %121, double %122, %struct.control_point* %cp)
  store i32 0, i32* %j, align 4
  br label %for.cond.146

for.cond.146:                                     ; preds = %for.inc.177, %for.body.139
  %123 = load i32, i32* %j, align 4
  %cmp147 = icmp slt i32 %123, 256
  br i1 %cmp147, label %for.body.149, label %for.end.179

for.body.149:                                     ; preds = %for.cond.146
  store i32 0, i32* %k, align 4
  br label %for.cond.150

for.cond.150:                                     ; preds = %for.inc.169, %for.body.149
  %124 = load i32, i32* %k, align 4
  %cmp151 = icmp slt i32 %124, 3
  br i1 %cmp151, label %for.body.153, label %for.end.171

for.body.153:                                     ; preds = %for.cond.150
  %125 = load i32, i32* %k, align 4
  %idxprom154 = sext i32 %125 to i64
  %126 = load i32, i32* %j, align 4
  %mul155 = mul nsw i32 %126, 256
  %div156 = sdiv i32 %mul155, 256
  %idxprom157 = sext i32 %div156 to i64
  %cmap158 = getelementptr inbounds %struct.control_point, %struct.control_point* %cp, i32 0, i32 1
  %arrayidx159 = getelementptr inbounds [256 x [3 x double]], [256 x [3 x double]]* %cmap158, i32 0, i64 %idxprom157
  %arrayidx160 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx159, i32 0, i64 %idxprom154
  %127 = load double, double* %arrayidx160, align 8
  %white_level = getelementptr inbounds %struct.control_point, %struct.control_point* %cp, i32 0, i32 16
  %128 = load i32, i32* %white_level, align 4
  %conv161 = sitofp i32 %128 to double
  %mul162 = fmul double %127, %conv161
  %conv163 = fptosi double %mul162 to i32
  %conv164 = trunc i32 %conv163 to i16
  %129 = load i32, i32* %k, align 4
  %idxprom165 = sext i32 %129 to i64
  %130 = load i32, i32* %j, align 4
  %idxprom166 = sext i32 %130 to i64
  %arrayidx167 = getelementptr inbounds [256 x [4 x i16]], [256 x [4 x i16]]* %cmap, i32 0, i64 %idxprom166
  %arrayidx168 = getelementptr inbounds [4 x i16], [4 x i16]* %arrayidx167, i32 0, i64 %idxprom165
  store i16 %conv164, i16* %arrayidx168, align 2
  br label %for.inc.169

for.inc.169:                                      ; preds = %for.body.153
  %131 = load i32, i32* %k, align 4
  %inc170 = add nsw i32 %131, 1
  store i32 %inc170, i32* %k, align 4
  br label %for.cond.150

for.end.171:                                      ; preds = %for.cond.150
  %white_level172 = getelementptr inbounds %struct.control_point, %struct.control_point* %cp, i32 0, i32 16
  %132 = load i32, i32* %white_level172, align 4
  %conv173 = trunc i32 %132 to i16
  %133 = load i32, i32* %j, align 4
  %idxprom174 = sext i32 %133 to i64
  %arrayidx175 = getelementptr inbounds [256 x [4 x i16]], [256 x [4 x i16]]* %cmap, i32 0, i64 %idxprom174
  %arrayidx176 = getelementptr inbounds [4 x i16], [4 x i16]* %arrayidx175, i32 0, i64 3
  store i16 %conv173, i16* %arrayidx176, align 2
  br label %for.inc.177

for.inc.177:                                      ; preds = %for.end.171
  %134 = load i32, i32* %j, align 4
  %inc178 = add nsw i32 %134, 1
  store i32 %inc178, i32* %j, align 4
  br label %for.cond.146

for.end.179:                                      ; preds = %for.cond.146
  store double 0.000000e+00, double* %shift, align 8
  %zoom = getelementptr inbounds %struct.control_point, %struct.control_point* %cp, i32 0, i32 11
  %135 = load double, double* %zoom, align 8
  %call180 = call double @pow(double 2.000000e+00, double %135) #4
  store double %call180, double* %scale, align 8
  %sample_density181 = getelementptr inbounds %struct.control_point, %struct.control_point* %cp, i32 0, i32 14
  %136 = load double, double* %sample_density181, align 8
  %137 = load double, double* %scale, align 8
  %mul182 = fmul double %136, %137
  %138 = load double, double* %scale, align 8
  %mul183 = fmul double %mul182, %138
  store double %mul183, double* %sample_density, align 8
  %pixels_per_unit = getelementptr inbounds %struct.control_point, %struct.control_point* %cp, i32 0, i32 12
  %139 = load double, double* %pixels_per_unit, align 8
  %140 = load double, double* %scale, align 8
  %mul184 = fmul double %139, %140
  store double %mul184, double* %ppux, align 8
  %141 = load i32, i32* %field.addr, align 4
  %tobool185 = icmp ne i32 %141, 0
  br i1 %tobool185, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end.179
  %142 = load double, double* %ppux, align 8
  %div186 = fdiv double %142, 2.000000e+00
  br label %cond.end

cond.false:                                       ; preds = %for.end.179
  %143 = load double, double* %ppux, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %div186, %cond.true ], [ %143, %cond.false ]
  store double %cond, double* %ppuy, align 8
  %144 = load i32, i32* %field.addr, align 4
  switch i32 %144, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.187
    i32 2, label %sw.bb.188
  ]

sw.bb:                                            ; preds = %cond.end
  store double 0.000000e+00, double* %shift, align 8
  br label %sw.epilog

sw.bb.187:                                        ; preds = %cond.end
  store double -5.000000e-01, double* %shift, align 8
  br label %sw.epilog

sw.bb.188:                                        ; preds = %cond.end
  store double 5.000000e-01, double* %shift, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end, %sw.bb.188, %sw.bb.187, %sw.bb
  %145 = load double, double* %shift, align 8
  %146 = load double, double* %ppux, align 8
  %div189 = fdiv double %145, %146
  store double %div189, double* %shift, align 8
  %147 = load i32, i32* %gutter_width, align 4
  %conv190 = sitofp i32 %147 to double
  %148 = load i32, i32* %oversample, align 4
  %conv191 = sitofp i32 %148 to double
  %149 = load double, double* %ppux, align 8
  %mul192 = fmul double %conv191, %149
  %div193 = fdiv double %conv190, %mul192
  store double %div193, double* %t0, align 8
  %150 = load i32, i32* %gutter_width, align 4
  %conv194 = sitofp i32 %150 to double
  %151 = load i32, i32* %oversample, align 4
  %conv195 = sitofp i32 %151 to double
  %152 = load double, double* %ppuy, align 8
  %mul196 = fmul double %conv195, %152
  %div197 = fdiv double %conv194, %mul196
  store double %div197, double* %t1, align 8
  %center = getelementptr inbounds %struct.control_point, %struct.control_point* %cp, i32 0, i32 10
  %arrayidx198 = getelementptr inbounds [2 x double], [2 x double]* %center, i32 0, i64 0
  %153 = load double, double* %arrayidx198, align 8
  %154 = load i32, i32* %image_width, align 4
  %conv199 = sitofp i32 %154 to double
  %155 = load double, double* %ppux, align 8
  %div200 = fdiv double %conv199, %155
  %div201 = fdiv double %div200, 2.000000e+00
  %sub202 = fsub double %153, %div201
  store double %sub202, double* %corner0, align 8
  %center203 = getelementptr inbounds %struct.control_point, %struct.control_point* %cp, i32 0, i32 10
  %arrayidx204 = getelementptr inbounds [2 x double], [2 x double]* %center203, i32 0, i64 1
  %156 = load double, double* %arrayidx204, align 8
  %157 = load i32, i32* %image_height, align 4
  %conv205 = sitofp i32 %157 to double
  %158 = load double, double* %ppuy, align 8
  %div206 = fdiv double %conv205, %158
  %div207 = fdiv double %div206, 2.000000e+00
  %sub208 = fsub double %156, %div207
  store double %sub208, double* %corner1, align 8
  %159 = load double, double* %corner0, align 8
  %160 = load double, double* %t0, align 8
  %sub209 = fsub double %159, %160
  %arrayidx210 = getelementptr inbounds [4 x double], [4 x double]* %bounds, i32 0, i64 0
  store double %sub209, double* %arrayidx210, align 8
  %161 = load double, double* %corner1, align 8
  %162 = load double, double* %t1, align 8
  %sub211 = fsub double %161, %162
  %163 = load double, double* %shift, align 8
  %add212 = fadd double %sub211, %163
  %arrayidx213 = getelementptr inbounds [4 x double], [4 x double]* %bounds, i32 0, i64 1
  store double %add212, double* %arrayidx213, align 8
  %164 = load double, double* %corner0, align 8
  %165 = load i32, i32* %image_width, align 4
  %conv214 = sitofp i32 %165 to double
  %166 = load double, double* %ppux, align 8
  %div215 = fdiv double %conv214, %166
  %add216 = fadd double %164, %div215
  %167 = load double, double* %t0, align 8
  %add217 = fadd double %add216, %167
  %arrayidx218 = getelementptr inbounds [4 x double], [4 x double]* %bounds, i32 0, i64 2
  store double %add217, double* %arrayidx218, align 8
  %168 = load double, double* %corner1, align 8
  %169 = load i32, i32* %image_height, align 4
  %conv219 = sitofp i32 %169 to double
  %170 = load double, double* %ppuy, align 8
  %div220 = fdiv double %conv219, %170
  %add221 = fadd double %168, %div220
  %171 = load double, double* %t1, align 8
  %add222 = fadd double %add221, %171
  %172 = load double, double* %shift, align 8
  %add223 = fadd double %add222, %172
  %arrayidx224 = getelementptr inbounds [4 x double], [4 x double]* %bounds, i32 0, i64 3
  store double %add223, double* %arrayidx224, align 8
  %arrayidx225 = getelementptr inbounds [4 x double], [4 x double]* %bounds, i32 0, i64 2
  %173 = load double, double* %arrayidx225, align 8
  %arrayidx226 = getelementptr inbounds [4 x double], [4 x double]* %bounds, i32 0, i64 0
  %174 = load double, double* %arrayidx226, align 8
  %sub227 = fsub double %173, %174
  %div228 = fdiv double 1.000000e+00, %sub227
  %arrayidx229 = getelementptr inbounds [2 x double], [2 x double]* %size, i32 0, i64 0
  store double %div228, double* %arrayidx229, align 8
  %arrayidx230 = getelementptr inbounds [4 x double], [4 x double]* %bounds, i32 0, i64 3
  %175 = load double, double* %arrayidx230, align 8
  %arrayidx231 = getelementptr inbounds [4 x double], [4 x double]* %bounds, i32 0, i64 1
  %176 = load double, double* %arrayidx231, align 8
  %sub232 = fsub double %175, %176
  %div233 = fdiv double 1.000000e+00, %sub232
  %arrayidx234 = getelementptr inbounds [2 x double], [2 x double]* %size, i32 0, i64 1
  store double %div233, double* %arrayidx234, align 8
  %177 = load double, double* %sample_density, align 8
  %178 = load i32, i32* %nbuckets, align 4
  %conv235 = sitofp i32 %178 to double
  %mul236 = fmul double %177, %conv235
  %179 = load i32, i32* %oversample, align 4
  %180 = load i32, i32* %oversample, align 4
  %mul237 = mul nsw i32 %179, %180
  %conv238 = sitofp i32 %mul237 to double
  %div239 = fdiv double %mul236, %conv238
  %conv240 = fptosi double %div239 to i32
  store i32 %conv240, i32* %nsamples, align 4
  %181 = load i32, i32* %nsamples, align 4
  %nbatches241 = getelementptr inbounds %struct.control_point, %struct.control_point* %cp, i32 0, i32 15
  %182 = load i32, i32* %nbatches241, align 4
  %div242 = sdiv i32 %181, %182
  store i32 %div242, i32* %batch_size, align 4
  store i32 0, i32* %sbc, align 4
  store i32 0, i32* %sub_batch, align 4
  br label %for.cond.243

for.cond.243:                                     ; preds = %for.inc.361, %sw.epilog
  %183 = load i32, i32* %sub_batch, align 4
  %184 = load i32, i32* %batch_size, align 4
  %cmp244 = icmp slt i32 %183, %184
  br i1 %cmp244, label %for.body.246, label %for.end.363

for.body.246:                                     ; preds = %for.cond.243
  %185 = load i32 (double)*, i32 (double)** %progress.addr, align 8
  %tobool247 = icmp ne i32 (double)* %185, null
  br i1 %tobool247, label %land.lhs.true, label %if.end.257

land.lhs.true:                                    ; preds = %for.body.246
  %186 = load i32, i32* %sbc, align 4
  %inc248 = add nsw i32 %186, 1
  store i32 %inc248, i32* %sbc, align 4
  %rem = srem i32 %186, 32
  %cmp249 = icmp eq i32 %rem, 0
  br i1 %cmp249, label %if.then.251, label %if.end.257

if.then.251:                                      ; preds = %land.lhs.true
  %187 = load i32 (double)*, i32 (double)** %progress.addr, align 8
  %188 = load i32, i32* %sub_batch, align 4
  %conv252 = sitofp i32 %188 to double
  %mul253 = fmul double 5.000000e-01, %conv252
  %189 = load i32, i32* %batch_size, align 4
  %conv254 = sitofp i32 %189 to double
  %div255 = fdiv double %mul253, %conv254
  %call256 = call i32 %187(double %div255)
  br label %if.end.257

if.end.257:                                       ; preds = %if.then.251, %land.lhs.true, %for.body.246
  %call258 = call double @random_uniform11()
  %190 = load [3 x double]*, [3 x double]** %points, align 8
  %arrayidx259 = getelementptr inbounds [3 x double], [3 x double]* %190, i64 0
  %arrayidx260 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx259, i32 0, i64 0
  store double %call258, double* %arrayidx260, align 8
  %call261 = call double @random_uniform11()
  %191 = load [3 x double]*, [3 x double]** %points, align 8
  %arrayidx262 = getelementptr inbounds [3 x double], [3 x double]* %191, i64 0
  %arrayidx263 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx262, i32 0, i64 1
  store double %call261, double* %arrayidx263, align 8
  %call264 = call double @random_uniform01()
  %192 = load [3 x double]*, [3 x double]** %points, align 8
  %arrayidx265 = getelementptr inbounds [3 x double], [3 x double]* %192, i64 0
  %arrayidx266 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx265, i32 0, i64 2
  store double %call264, double* %arrayidx266, align 8
  %193 = load [3 x double]*, [3 x double]** %points, align 8
  call void @iterate(%struct.control_point* %cp, i32 10000, i32 15, [3 x double]* %193)
  store i32 0, i32* %j, align 4
  br label %for.cond.267

for.cond.267:                                     ; preds = %for.inc.358, %if.end.257
  %194 = load i32, i32* %j, align 4
  %cmp268 = icmp slt i32 %194, 10000
  br i1 %cmp268, label %for.body.270, label %for.end.360

for.body.270:                                     ; preds = %for.cond.267
  %195 = load i32, i32* %j, align 4
  %idxprom272 = sext i32 %195 to i64
  %196 = load [3 x double]*, [3 x double]** %points, align 8
  %arrayidx273 = getelementptr inbounds [3 x double], [3 x double]* %196, i64 %idxprom272
  %arraydecay = getelementptr inbounds [3 x double], [3 x double]* %arrayidx273, i32 0, i32 0
  store double* %arraydecay, double** %p, align 8
  %197 = load double*, double** %p, align 8
  %arrayidx274 = getelementptr inbounds double, double* %197, i64 0
  %198 = load double, double* %arrayidx274, align 8
  %arrayidx275 = getelementptr inbounds [4 x double], [4 x double]* %bounds, i32 0, i64 0
  %199 = load double, double* %arrayidx275, align 8
  %cmp276 = fcmp oge double %198, %199
  br i1 %cmp276, label %land.lhs.true.278, label %if.end.357

land.lhs.true.278:                                ; preds = %for.body.270
  %200 = load double*, double** %p, align 8
  %arrayidx279 = getelementptr inbounds double, double* %200, i64 1
  %201 = load double, double* %arrayidx279, align 8
  %arrayidx280 = getelementptr inbounds [4 x double], [4 x double]* %bounds, i32 0, i64 1
  %202 = load double, double* %arrayidx280, align 8
  %cmp281 = fcmp oge double %201, %202
  br i1 %cmp281, label %land.lhs.true.283, label %if.end.357

land.lhs.true.283:                                ; preds = %land.lhs.true.278
  %203 = load double*, double** %p, align 8
  %arrayidx284 = getelementptr inbounds double, double* %203, i64 0
  %204 = load double, double* %arrayidx284, align 8
  %arrayidx285 = getelementptr inbounds [4 x double], [4 x double]* %bounds, i32 0, i64 2
  %205 = load double, double* %arrayidx285, align 8
  %cmp286 = fcmp ole double %204, %205
  br i1 %cmp286, label %land.lhs.true.288, label %if.end.357

land.lhs.true.288:                                ; preds = %land.lhs.true.283
  %206 = load double*, double** %p, align 8
  %arrayidx289 = getelementptr inbounds double, double* %206, i64 1
  %207 = load double, double* %arrayidx289, align 8
  %arrayidx290 = getelementptr inbounds [4 x double], [4 x double]* %bounds, i32 0, i64 3
  %208 = load double, double* %arrayidx290, align 8
  %cmp291 = fcmp ole double %207, %208
  br i1 %cmp291, label %if.then.293, label %if.end.357

if.then.293:                                      ; preds = %land.lhs.true.288
  %209 = load double*, double** %p, align 8
  %arrayidx294 = getelementptr inbounds double, double* %209, i64 2
  %210 = load double, double* %arrayidx294, align 8
  %mul295 = fmul double %210, 2.560000e+02
  %conv296 = fptosi double %mul295 to i32
  store i32 %conv296, i32* %color_index, align 4
  %211 = load i32, i32* %color_index, align 4
  %cmp297 = icmp slt i32 %211, 0
  br i1 %cmp297, label %if.then.299, label %if.else.300

if.then.299:                                      ; preds = %if.then.293
  store i32 0, i32* %color_index, align 4
  br label %if.end.305

if.else.300:                                      ; preds = %if.then.293
  %212 = load i32, i32* %color_index, align 4
  %cmp301 = icmp sgt i32 %212, 255
  br i1 %cmp301, label %if.then.303, label %if.end.304

if.then.303:                                      ; preds = %if.else.300
  store i32 255, i32* %color_index, align 4
  br label %if.end.304

if.end.304:                                       ; preds = %if.then.303, %if.else.300
  br label %if.end.305

if.end.305:                                       ; preds = %if.end.304, %if.then.299
  %213 = load [4 x i16]*, [4 x i16]** %buckets, align 8
  %214 = load i32, i32* %width, align 4
  %conv306 = sitofp i32 %214 to double
  %215 = load double*, double** %p, align 8
  %arrayidx307 = getelementptr inbounds double, double* %215, i64 0
  %216 = load double, double* %arrayidx307, align 8
  %arrayidx308 = getelementptr inbounds [4 x double], [4 x double]* %bounds, i32 0, i64 0
  %217 = load double, double* %arrayidx308, align 8
  %sub309 = fsub double %216, %217
  %mul310 = fmul double %conv306, %sub309
  %arrayidx311 = getelementptr inbounds [2 x double], [2 x double]* %size, i32 0, i64 0
  %218 = load double, double* %arrayidx311, align 8
  %mul312 = fmul double %mul310, %218
  %conv313 = fptosi double %mul312 to i32
  %idx.ext314 = sext i32 %conv313 to i64
  %add.ptr315 = getelementptr inbounds [4 x i16], [4 x i16]* %213, i64 %idx.ext314
  %219 = load i32, i32* %width, align 4
  %220 = load i32, i32* %height, align 4
  %conv316 = sitofp i32 %220 to double
  %221 = load double*, double** %p, align 8
  %arrayidx317 = getelementptr inbounds double, double* %221, i64 1
  %222 = load double, double* %arrayidx317, align 8
  %arrayidx318 = getelementptr inbounds [4 x double], [4 x double]* %bounds, i32 0, i64 1
  %223 = load double, double* %arrayidx318, align 8
  %sub319 = fsub double %222, %223
  %mul320 = fmul double %conv316, %sub319
  %arrayidx321 = getelementptr inbounds [2 x double], [2 x double]* %size, i32 0, i64 1
  %224 = load double, double* %arrayidx321, align 8
  %mul322 = fmul double %mul320, %224
  %conv323 = fptosi double %mul322 to i32
  %mul324 = mul nsw i32 %219, %conv323
  %idx.ext325 = sext i32 %mul324 to i64
  %add.ptr326 = getelementptr inbounds [4 x i16], [4 x i16]* %add.ptr315, i64 %idx.ext325
  store [4 x i16]* %add.ptr326, [4 x i16]** %b, align 8
  store i32 0, i32* %k271, align 4
  br label %for.cond.327

for.cond.327:                                     ; preds = %for.inc.354, %if.end.305
  %225 = load i32, i32* %k271, align 4
  %cmp328 = icmp slt i32 %225, 4
  br i1 %cmp328, label %for.body.330, label %for.end.356

for.body.330:                                     ; preds = %for.cond.327
  %226 = load i32, i32* %k271, align 4
  %idxprom331 = sext i32 %226 to i64
  %227 = load [4 x i16]*, [4 x i16]** %b, align 8
  %arrayidx332 = getelementptr inbounds [4 x i16], [4 x i16]* %227, i64 0
  %arrayidx333 = getelementptr inbounds [4 x i16], [4 x i16]* %arrayidx332, i32 0, i64 %idxprom331
  %228 = load i16, i16* %arrayidx333, align 2
  %conv334 = sext i16 %228 to i32
  %229 = load i32, i32* %k271, align 4
  %idxprom335 = sext i32 %229 to i64
  %230 = load i32, i32* %color_index, align 4
  %idxprom336 = sext i32 %230 to i64
  %arrayidx337 = getelementptr inbounds [256 x [4 x i16]], [256 x [4 x i16]]* %cmap, i32 0, i64 %idxprom336
  %arrayidx338 = getelementptr inbounds [4 x i16], [4 x i16]* %arrayidx337, i32 0, i64 %idxprom335
  %231 = load i16, i16* %arrayidx338, align 2
  %conv339 = sext i16 %231 to i32
  %add340 = add nsw i32 %conv334, %conv339
  %conv341 = trunc i32 %add340 to i16
  store i16 %conv341, i16* %tt_, align 2
  %232 = load i16, i16* %tt_, align 2
  %conv342 = sext i16 %232 to i32
  %233 = load i32, i32* %k271, align 4
  %idxprom343 = sext i32 %233 to i64
  %234 = load [4 x i16]*, [4 x i16]** %b, align 8
  %arrayidx344 = getelementptr inbounds [4 x i16], [4 x i16]* %234, i64 0
  %arrayidx345 = getelementptr inbounds [4 x i16], [4 x i16]* %arrayidx344, i32 0, i64 %idxprom343
  %235 = load i16, i16* %arrayidx345, align 2
  %conv346 = sext i16 %235 to i32
  %cmp347 = icmp sgt i32 %conv342, %conv346
  br i1 %cmp347, label %if.then.349, label %if.end.353

if.then.349:                                      ; preds = %for.body.330
  %236 = load i16, i16* %tt_, align 2
  %237 = load i32, i32* %k271, align 4
  %idxprom350 = sext i32 %237 to i64
  %238 = load [4 x i16]*, [4 x i16]** %b, align 8
  %arrayidx351 = getelementptr inbounds [4 x i16], [4 x i16]* %238, i64 0
  %arrayidx352 = getelementptr inbounds [4 x i16], [4 x i16]* %arrayidx351, i32 0, i64 %idxprom350
  store i16 %236, i16* %arrayidx352, align 2
  br label %if.end.353

if.end.353:                                       ; preds = %if.then.349, %for.body.330
  br label %for.inc.354

for.inc.354:                                      ; preds = %if.end.353
  %239 = load i32, i32* %k271, align 4
  %inc355 = add nsw i32 %239, 1
  store i32 %inc355, i32* %k271, align 4
  br label %for.cond.327

for.end.356:                                      ; preds = %for.cond.327
  br label %if.end.357

if.end.357:                                       ; preds = %for.end.356, %land.lhs.true.288, %land.lhs.true.283, %land.lhs.true.278, %for.body.270
  br label %for.inc.358

for.inc.358:                                      ; preds = %if.end.357
  %240 = load i32, i32* %j, align 4
  %inc359 = add nsw i32 %240, 1
  store i32 %inc359, i32* %j, align 4
  br label %for.cond.267

for.end.360:                                      ; preds = %for.cond.267
  br label %for.inc.361

for.inc.361:                                      ; preds = %for.end.360
  %241 = load i32, i32* %sub_batch, align 4
  %add362 = add nsw i32 %241, 10000
  store i32 %add362, i32* %sub_batch, align 4
  br label %for.cond.243

for.end.363:                                      ; preds = %for.cond.243
  %contrast = getelementptr inbounds %struct.control_point, %struct.control_point* %cp, i32 0, i32 5
  %242 = load double, double* %contrast, align 8
  %brightness = getelementptr inbounds %struct.control_point, %struct.control_point* %cp, i32 0, i32 4
  %243 = load double, double* %brightness, align 8
  %mul364 = fmul double %242, %243
  %mul365 = fmul double %mul364, 1.024000e+03
  %mul366 = fmul double %mul365, 2.680000e+02
  %244 = load i32, i32* %batch_num, align 4
  %idxprom367 = sext i32 %244 to i64
  %245 = load double*, double** %temporal_filter, align 8
  %arrayidx368 = getelementptr inbounds double, double* %245, i64 %idxprom367
  %246 = load double, double* %arrayidx368, align 8
  %mul369 = fmul double %mul366, %246
  %div370 = fdiv double %mul369, 2.560000e+02
  store double %div370, double* %k1, align 8
  %247 = load i32, i32* %image_width, align 4
  %248 = load i32, i32* %image_height, align 4
  %mul371 = mul nsw i32 %247, %248
  %conv372 = sitofp i32 %mul371 to double
  %249 = load double, double* %ppux, align 8
  %250 = load double, double* %ppuy, align 8
  %mul373 = fmul double %249, %250
  %div374 = fdiv double %conv372, %mul373
  store double %div374, double* %area, align 8
  %251 = load i32, i32* %oversample, align 4
  %252 = load i32, i32* %oversample, align 4
  %mul375 = mul nsw i32 %251, %252
  %253 = load i32, i32* %nbatches, align 4
  %mul376 = mul nsw i32 %mul375, %253
  %conv377 = sitofp i32 %mul376 to double
  %contrast378 = getelementptr inbounds %struct.control_point, %struct.control_point* %cp, i32 0, i32 5
  %254 = load double, double* %contrast378, align 8
  %255 = load double, double* %area, align 8
  %mul379 = fmul double %254, %255
  %white_level380 = getelementptr inbounds %struct.control_point, %struct.control_point* %cp, i32 0, i32 16
  %256 = load i32, i32* %white_level380, align 4
  %conv381 = sitofp i32 %256 to double
  %mul382 = fmul double %mul379, %conv381
  %257 = load double, double* %sample_density, align 8
  %mul383 = fmul double %mul382, %257
  %div384 = fdiv double %conv377, %mul383
  store double %div384, double* %k2, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.385

for.cond.385:                                     ; preds = %for.inc.519, %for.end.363
  %258 = load i32, i32* %j, align 4
  %259 = load i32, i32* %height, align 4
  %cmp386 = icmp slt i32 %258, %259
  br i1 %cmp386, label %for.body.388, label %for.end.521

for.body.388:                                     ; preds = %for.cond.385
  store i32 0, i32* %i, align 4
  br label %for.cond.389

for.cond.389:                                     ; preds = %for.inc.516, %for.body.388
  %260 = load i32, i32* %i, align 4
  %261 = load i32, i32* %width, align 4
  %cmp390 = icmp slt i32 %260, %261
  br i1 %cmp390, label %for.body.392, label %for.end.518

for.body.392:                                     ; preds = %for.cond.389
  %262 = load [4 x i16]*, [4 x i16]** %accumulate, align 8
  %263 = load i32, i32* %i, align 4
  %idx.ext393 = sext i32 %263 to i64
  %add.ptr394 = getelementptr inbounds [4 x i16], [4 x i16]* %262, i64 %idx.ext393
  %264 = load i32, i32* %j, align 4
  %265 = load i32, i32* %width, align 4
  %mul395 = mul nsw i32 %264, %265
  %idx.ext396 = sext i32 %mul395 to i64
  %add.ptr397 = getelementptr inbounds [4 x i16], [4 x i16]* %add.ptr394, i64 %idx.ext396
  store [4 x i16]* %add.ptr397, [4 x i16]** %a, align 8
  %266 = load [4 x i16]*, [4 x i16]** %buckets, align 8
  %267 = load i32, i32* %i, align 4
  %idx.ext399 = sext i32 %267 to i64
  %add.ptr400 = getelementptr inbounds [4 x i16], [4 x i16]* %266, i64 %idx.ext399
  %268 = load i32, i32* %j, align 4
  %269 = load i32, i32* %width, align 4
  %mul401 = mul nsw i32 %268, %269
  %idx.ext402 = sext i32 %mul401 to i64
  %add.ptr403 = getelementptr inbounds [4 x i16], [4 x i16]* %add.ptr400, i64 %idx.ext402
  store [4 x i16]* %add.ptr403, [4 x i16]** %b398, align 8
  %270 = load [4 x i16]*, [4 x i16]** %b398, align 8
  %arrayidx404 = getelementptr inbounds [4 x i16], [4 x i16]* %270, i64 0
  %arrayidx405 = getelementptr inbounds [4 x i16], [4 x i16]* %arrayidx404, i32 0, i64 0
  %271 = load i16, i16* %arrayidx405, align 2
  %conv406 = sitofp i16 %271 to double
  %arrayidx407 = getelementptr inbounds [4 x double], [4 x double]* %c, i32 0, i64 0
  store double %conv406, double* %arrayidx407, align 8
  %272 = load [4 x i16]*, [4 x i16]** %b398, align 8
  %arrayidx408 = getelementptr inbounds [4 x i16], [4 x i16]* %272, i64 0
  %arrayidx409 = getelementptr inbounds [4 x i16], [4 x i16]* %arrayidx408, i32 0, i64 1
  %273 = load i16, i16* %arrayidx409, align 2
  %conv410 = sitofp i16 %273 to double
  %arrayidx411 = getelementptr inbounds [4 x double], [4 x double]* %c, i32 0, i64 1
  store double %conv410, double* %arrayidx411, align 8
  %274 = load [4 x i16]*, [4 x i16]** %b398, align 8
  %arrayidx412 = getelementptr inbounds [4 x i16], [4 x i16]* %274, i64 0
  %arrayidx413 = getelementptr inbounds [4 x i16], [4 x i16]* %arrayidx412, i32 0, i64 2
  %275 = load i16, i16* %arrayidx413, align 2
  %conv414 = sitofp i16 %275 to double
  %arrayidx415 = getelementptr inbounds [4 x double], [4 x double]* %c, i32 0, i64 2
  store double %conv414, double* %arrayidx415, align 8
  %276 = load [4 x i16]*, [4 x i16]** %b398, align 8
  %arrayidx416 = getelementptr inbounds [4 x i16], [4 x i16]* %276, i64 0
  %arrayidx417 = getelementptr inbounds [4 x i16], [4 x i16]* %arrayidx416, i32 0, i64 3
  %277 = load i16, i16* %arrayidx417, align 2
  %conv418 = sitofp i16 %277 to double
  %arrayidx419 = getelementptr inbounds [4 x double], [4 x double]* %c, i32 0, i64 3
  store double %conv418, double* %arrayidx419, align 8
  %arrayidx420 = getelementptr inbounds [4 x double], [4 x double]* %c, i32 0, i64 3
  %278 = load double, double* %arrayidx420, align 8
  %cmp421 = fcmp oeq double 0.000000e+00, %278
  br i1 %cmp421, label %if.then.423, label %if.end.424

if.then.423:                                      ; preds = %for.body.392
  br label %for.inc.516

if.end.424:                                       ; preds = %for.body.392
  %279 = load double, double* %k1, align 8
  %arrayidx425 = getelementptr inbounds [4 x double], [4 x double]* %c, i32 0, i64 3
  %280 = load double, double* %arrayidx425, align 8
  %281 = load double, double* %k2, align 8
  %mul426 = fmul double %280, %281
  %add427 = fadd double 1.000000e+00, %mul426
  %call428 = call double @log(double %add427) #4
  %mul429 = fmul double %279, %call428
  %arrayidx430 = getelementptr inbounds [4 x double], [4 x double]* %c, i32 0, i64 3
  %282 = load double, double* %arrayidx430, align 8
  %div431 = fdiv double %mul429, %282
  store double %div431, double* %ls, align 8
  %283 = load double, double* %ls, align 8
  %arrayidx432 = getelementptr inbounds [4 x double], [4 x double]* %c, i32 0, i64 0
  %284 = load double, double* %arrayidx432, align 8
  %mul433 = fmul double %284, %283
  store double %mul433, double* %arrayidx432, align 8
  %285 = load double, double* %ls, align 8
  %arrayidx434 = getelementptr inbounds [4 x double], [4 x double]* %c, i32 0, i64 1
  %286 = load double, double* %arrayidx434, align 8
  %mul435 = fmul double %286, %285
  store double %mul435, double* %arrayidx434, align 8
  %287 = load double, double* %ls, align 8
  %arrayidx436 = getelementptr inbounds [4 x double], [4 x double]* %c, i32 0, i64 2
  %288 = load double, double* %arrayidx436, align 8
  %mul437 = fmul double %288, %287
  store double %mul437, double* %arrayidx436, align 8
  %289 = load double, double* %ls, align 8
  %arrayidx438 = getelementptr inbounds [4 x double], [4 x double]* %c, i32 0, i64 3
  %290 = load double, double* %arrayidx438, align 8
  %mul439 = fmul double %290, %289
  store double %mul439, double* %arrayidx438, align 8
  %291 = load [4 x i16]*, [4 x i16]** %a, align 8
  %arrayidx441 = getelementptr inbounds [4 x i16], [4 x i16]* %291, i64 0
  %arrayidx442 = getelementptr inbounds [4 x i16], [4 x i16]* %arrayidx441, i32 0, i64 0
  %292 = load i16, i16* %arrayidx442, align 2
  %conv443 = sext i16 %292 to i32
  %conv444 = sitofp i32 %conv443 to double
  %arrayidx445 = getelementptr inbounds [4 x double], [4 x double]* %c, i32 0, i64 0
  %293 = load double, double* %arrayidx445, align 8
  %add446 = fadd double %conv444, %293
  %add447 = fadd double %add446, 5.000000e-01
  %conv448 = fptosi double %add447 to i16
  store i16 %conv448, i16* %tt_440, align 2
  %294 = load i16, i16* %tt_440, align 2
  %conv449 = sext i16 %294 to i32
  %295 = load [4 x i16]*, [4 x i16]** %a, align 8
  %arrayidx450 = getelementptr inbounds [4 x i16], [4 x i16]* %295, i64 0
  %arrayidx451 = getelementptr inbounds [4 x i16], [4 x i16]* %arrayidx450, i32 0, i64 0
  %296 = load i16, i16* %arrayidx451, align 2
  %conv452 = sext i16 %296 to i32
  %cmp453 = icmp sgt i32 %conv449, %conv452
  br i1 %cmp453, label %if.then.455, label %if.end.458

if.then.455:                                      ; preds = %if.end.424
  %297 = load i16, i16* %tt_440, align 2
  %298 = load [4 x i16]*, [4 x i16]** %a, align 8
  %arrayidx456 = getelementptr inbounds [4 x i16], [4 x i16]* %298, i64 0
  %arrayidx457 = getelementptr inbounds [4 x i16], [4 x i16]* %arrayidx456, i32 0, i64 0
  store i16 %297, i16* %arrayidx457, align 2
  br label %if.end.458

if.end.458:                                       ; preds = %if.then.455, %if.end.424
  %299 = load [4 x i16]*, [4 x i16]** %a, align 8
  %arrayidx460 = getelementptr inbounds [4 x i16], [4 x i16]* %299, i64 0
  %arrayidx461 = getelementptr inbounds [4 x i16], [4 x i16]* %arrayidx460, i32 0, i64 1
  %300 = load i16, i16* %arrayidx461, align 2
  %conv462 = sext i16 %300 to i32
  %conv463 = sitofp i32 %conv462 to double
  %arrayidx464 = getelementptr inbounds [4 x double], [4 x double]* %c, i32 0, i64 1
  %301 = load double, double* %arrayidx464, align 8
  %add465 = fadd double %conv463, %301
  %add466 = fadd double %add465, 5.000000e-01
  %conv467 = fptosi double %add466 to i16
  store i16 %conv467, i16* %tt_459, align 2
  %302 = load i16, i16* %tt_459, align 2
  %conv468 = sext i16 %302 to i32
  %303 = load [4 x i16]*, [4 x i16]** %a, align 8
  %arrayidx469 = getelementptr inbounds [4 x i16], [4 x i16]* %303, i64 0
  %arrayidx470 = getelementptr inbounds [4 x i16], [4 x i16]* %arrayidx469, i32 0, i64 1
  %304 = load i16, i16* %arrayidx470, align 2
  %conv471 = sext i16 %304 to i32
  %cmp472 = icmp sgt i32 %conv468, %conv471
  br i1 %cmp472, label %if.then.474, label %if.end.477

if.then.474:                                      ; preds = %if.end.458
  %305 = load i16, i16* %tt_459, align 2
  %306 = load [4 x i16]*, [4 x i16]** %a, align 8
  %arrayidx475 = getelementptr inbounds [4 x i16], [4 x i16]* %306, i64 0
  %arrayidx476 = getelementptr inbounds [4 x i16], [4 x i16]* %arrayidx475, i32 0, i64 1
  store i16 %305, i16* %arrayidx476, align 2
  br label %if.end.477

if.end.477:                                       ; preds = %if.then.474, %if.end.458
  %307 = load [4 x i16]*, [4 x i16]** %a, align 8
  %arrayidx479 = getelementptr inbounds [4 x i16], [4 x i16]* %307, i64 0
  %arrayidx480 = getelementptr inbounds [4 x i16], [4 x i16]* %arrayidx479, i32 0, i64 2
  %308 = load i16, i16* %arrayidx480, align 2
  %conv481 = sext i16 %308 to i32
  %conv482 = sitofp i32 %conv481 to double
  %arrayidx483 = getelementptr inbounds [4 x double], [4 x double]* %c, i32 0, i64 2
  %309 = load double, double* %arrayidx483, align 8
  %add484 = fadd double %conv482, %309
  %add485 = fadd double %add484, 5.000000e-01
  %conv486 = fptosi double %add485 to i16
  store i16 %conv486, i16* %tt_478, align 2
  %310 = load i16, i16* %tt_478, align 2
  %conv487 = sext i16 %310 to i32
  %311 = load [4 x i16]*, [4 x i16]** %a, align 8
  %arrayidx488 = getelementptr inbounds [4 x i16], [4 x i16]* %311, i64 0
  %arrayidx489 = getelementptr inbounds [4 x i16], [4 x i16]* %arrayidx488, i32 0, i64 2
  %312 = load i16, i16* %arrayidx489, align 2
  %conv490 = sext i16 %312 to i32
  %cmp491 = icmp sgt i32 %conv487, %conv490
  br i1 %cmp491, label %if.then.493, label %if.end.496

if.then.493:                                      ; preds = %if.end.477
  %313 = load i16, i16* %tt_478, align 2
  %314 = load [4 x i16]*, [4 x i16]** %a, align 8
  %arrayidx494 = getelementptr inbounds [4 x i16], [4 x i16]* %314, i64 0
  %arrayidx495 = getelementptr inbounds [4 x i16], [4 x i16]* %arrayidx494, i32 0, i64 2
  store i16 %313, i16* %arrayidx495, align 2
  br label %if.end.496

if.end.496:                                       ; preds = %if.then.493, %if.end.477
  %315 = load [4 x i16]*, [4 x i16]** %a, align 8
  %arrayidx498 = getelementptr inbounds [4 x i16], [4 x i16]* %315, i64 0
  %arrayidx499 = getelementptr inbounds [4 x i16], [4 x i16]* %arrayidx498, i32 0, i64 3
  %316 = load i16, i16* %arrayidx499, align 2
  %conv500 = sext i16 %316 to i32
  %conv501 = sitofp i32 %conv500 to double
  %arrayidx502 = getelementptr inbounds [4 x double], [4 x double]* %c, i32 0, i64 3
  %317 = load double, double* %arrayidx502, align 8
  %add503 = fadd double %conv501, %317
  %add504 = fadd double %add503, 5.000000e-01
  %conv505 = fptosi double %add504 to i16
  store i16 %conv505, i16* %tt_497, align 2
  %318 = load i16, i16* %tt_497, align 2
  %conv506 = sext i16 %318 to i32
  %319 = load [4 x i16]*, [4 x i16]** %a, align 8
  %arrayidx507 = getelementptr inbounds [4 x i16], [4 x i16]* %319, i64 0
  %arrayidx508 = getelementptr inbounds [4 x i16], [4 x i16]* %arrayidx507, i32 0, i64 3
  %320 = load i16, i16* %arrayidx508, align 2
  %conv509 = sext i16 %320 to i32
  %cmp510 = icmp sgt i32 %conv506, %conv509
  br i1 %cmp510, label %if.then.512, label %if.end.515

if.then.512:                                      ; preds = %if.end.496
  %321 = load i16, i16* %tt_497, align 2
  %322 = load [4 x i16]*, [4 x i16]** %a, align 8
  %arrayidx513 = getelementptr inbounds [4 x i16], [4 x i16]* %322, i64 0
  %arrayidx514 = getelementptr inbounds [4 x i16], [4 x i16]* %arrayidx513, i32 0, i64 3
  store i16 %321, i16* %arrayidx514, align 2
  br label %if.end.515

if.end.515:                                       ; preds = %if.then.512, %if.end.496
  br label %for.inc.516

for.inc.516:                                      ; preds = %if.end.515, %if.then.423
  %323 = load i32, i32* %i, align 4
  %inc517 = add nsw i32 %323, 1
  store i32 %inc517, i32* %i, align 4
  br label %for.cond.389

for.end.518:                                      ; preds = %for.cond.389
  br label %for.inc.519

for.inc.519:                                      ; preds = %for.end.518
  %324 = load i32, i32* %j, align 4
  %inc520 = add nsw i32 %324, 1
  store i32 %inc520, i32* %j, align 4
  br label %for.cond.385

for.end.521:                                      ; preds = %for.cond.385
  br label %for.inc.522

for.inc.522:                                      ; preds = %for.end.521
  %325 = load i32, i32* %batch_num, align 4
  %inc523 = add nsw i32 %325, 1
  store i32 %inc523, i32* %batch_num, align 4
  br label %for.cond.136

for.end.524:                                      ; preds = %for.cond.136
  %326 = load %struct.frame_spec*, %struct.frame_spec** %spec.addr, align 8
  %cps526 = getelementptr inbounds %struct.frame_spec, %struct.frame_spec* %326, i32 0, i32 1
  %327 = load %struct.control_point*, %struct.control_point** %cps526, align 8
  %arrayidx527 = getelementptr inbounds %struct.control_point, %struct.control_point* %327, i64 0
  %gamma = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx527, i32 0, i32 6
  %328 = load double, double* %gamma, align 8
  %div528 = fdiv double 1.000000e+00, %328
  store double %div528, double* %g, align 8
  store i32 0, i32* %y, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.529

for.cond.529:                                     ; preds = %for.inc.696, %for.end.524
  %329 = load i32, i32* %j, align 4
  %330 = load i32, i32* %image_height, align 4
  %cmp530 = icmp slt i32 %329, %330
  br i1 %cmp530, label %for.body.532, label %for.end.698

for.body.532:                                     ; preds = %for.cond.529
  %331 = load i32 (double)*, i32 (double)** %progress.addr, align 8
  %tobool533 = icmp ne i32 (double)* %331, null
  br i1 %tobool533, label %land.lhs.true.534, label %if.end.545

land.lhs.true.534:                                ; preds = %for.body.532
  %332 = load i32, i32* %j, align 4
  %rem535 = srem i32 %332, 32
  %cmp536 = icmp eq i32 %rem535, 0
  br i1 %cmp536, label %if.then.538, label %if.end.545

if.then.538:                                      ; preds = %land.lhs.true.534
  %333 = load i32 (double)*, i32 (double)** %progress.addr, align 8
  %334 = load i32, i32* %j, align 4
  %conv539 = sitofp i32 %334 to double
  %mul540 = fmul double 5.000000e-01, %conv539
  %335 = load i32, i32* %image_height, align 4
  %conv541 = sitofp i32 %335 to double
  %div542 = fdiv double %mul540, %conv541
  %add543 = fadd double 5.000000e-01, %div542
  %call544 = call i32 %333(double %add543)
  br label %if.end.545

if.end.545:                                       ; preds = %if.then.538, %land.lhs.true.534, %for.body.532
  store i32 0, i32* %x, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.546

for.cond.546:                                     ; preds = %for.inc.692, %if.end.545
  %336 = load i32, i32* %i, align 4
  %337 = load i32, i32* %image_width, align 4
  %cmp547 = icmp slt i32 %336, %337
  br i1 %cmp547, label %for.body.549, label %for.end.694

for.body.549:                                     ; preds = %for.cond.546
  %arrayidx554 = getelementptr inbounds [4 x double], [4 x double]* %t525, i32 0, i64 3
  store double 0.000000e+00, double* %arrayidx554, align 8
  %arrayidx555 = getelementptr inbounds [4 x double], [4 x double]* %t525, i32 0, i64 2
  store double 0.000000e+00, double* %arrayidx555, align 8
  %arrayidx556 = getelementptr inbounds [4 x double], [4 x double]* %t525, i32 0, i64 1
  store double 0.000000e+00, double* %arrayidx556, align 8
  %arrayidx557 = getelementptr inbounds [4 x double], [4 x double]* %t525, i32 0, i64 0
  store double 0.000000e+00, double* %arrayidx557, align 8
  store i32 0, i32* %ii550, align 4
  br label %for.cond.558

for.cond.558:                                     ; preds = %for.inc.611, %for.body.549
  %338 = load i32, i32* %ii550, align 4
  %339 = load i32, i32* %filter_width, align 4
  %cmp559 = icmp slt i32 %338, %339
  br i1 %cmp559, label %for.body.561, label %for.end.613

for.body.561:                                     ; preds = %for.cond.558
  store i32 0, i32* %jj551, align 4
  br label %for.cond.562

for.cond.562:                                     ; preds = %for.inc.608, %for.body.561
  %340 = load i32, i32* %jj551, align 4
  %341 = load i32, i32* %filter_width, align 4
  %cmp563 = icmp slt i32 %340, %341
  br i1 %cmp563, label %for.body.565, label %for.end.610

for.body.565:                                     ; preds = %for.cond.562
  %342 = load i32, i32* %ii550, align 4
  %343 = load i32, i32* %jj551, align 4
  %344 = load i32, i32* %filter_width, align 4
  %mul567 = mul nsw i32 %343, %344
  %add568 = add nsw i32 %342, %mul567
  %idxprom569 = sext i32 %add568 to i64
  %345 = load double*, double** %filter, align 8
  %arrayidx570 = getelementptr inbounds double, double* %345, i64 %idxprom569
  %346 = load double, double* %arrayidx570, align 8
  store double %346, double* %k566, align 8
  %347 = load [4 x i16]*, [4 x i16]** %accumulate, align 8
  %348 = load i32, i32* %x, align 4
  %idx.ext572 = sext i32 %348 to i64
  %add.ptr573 = getelementptr inbounds [4 x i16], [4 x i16]* %347, i64 %idx.ext572
  %349 = load i32, i32* %ii550, align 4
  %idx.ext574 = sext i32 %349 to i64
  %add.ptr575 = getelementptr inbounds [4 x i16], [4 x i16]* %add.ptr573, i64 %idx.ext574
  %350 = load i32, i32* %y, align 4
  %351 = load i32, i32* %jj551, align 4
  %add576 = add nsw i32 %350, %351
  %352 = load i32, i32* %width, align 4
  %mul577 = mul nsw i32 %add576, %352
  %idx.ext578 = sext i32 %mul577 to i64
  %add.ptr579 = getelementptr inbounds [4 x i16], [4 x i16]* %add.ptr575, i64 %idx.ext578
  store [4 x i16]* %add.ptr579, [4 x i16]** %a571, align 8
  %353 = load double, double* %k566, align 8
  %354 = load [4 x i16]*, [4 x i16]** %a571, align 8
  %arrayidx580 = getelementptr inbounds [4 x i16], [4 x i16]* %354, i64 0
  %arrayidx581 = getelementptr inbounds [4 x i16], [4 x i16]* %arrayidx580, i32 0, i64 0
  %355 = load i16, i16* %arrayidx581, align 2
  %conv582 = sext i16 %355 to i32
  %conv583 = sitofp i32 %conv582 to double
  %mul584 = fmul double %353, %conv583
  %arrayidx585 = getelementptr inbounds [4 x double], [4 x double]* %t525, i32 0, i64 0
  %356 = load double, double* %arrayidx585, align 8
  %add586 = fadd double %356, %mul584
  store double %add586, double* %arrayidx585, align 8
  %357 = load double, double* %k566, align 8
  %358 = load [4 x i16]*, [4 x i16]** %a571, align 8
  %arrayidx587 = getelementptr inbounds [4 x i16], [4 x i16]* %358, i64 0
  %arrayidx588 = getelementptr inbounds [4 x i16], [4 x i16]* %arrayidx587, i32 0, i64 1
  %359 = load i16, i16* %arrayidx588, align 2
  %conv589 = sext i16 %359 to i32
  %conv590 = sitofp i32 %conv589 to double
  %mul591 = fmul double %357, %conv590
  %arrayidx592 = getelementptr inbounds [4 x double], [4 x double]* %t525, i32 0, i64 1
  %360 = load double, double* %arrayidx592, align 8
  %add593 = fadd double %360, %mul591
  store double %add593, double* %arrayidx592, align 8
  %361 = load double, double* %k566, align 8
  %362 = load [4 x i16]*, [4 x i16]** %a571, align 8
  %arrayidx594 = getelementptr inbounds [4 x i16], [4 x i16]* %362, i64 0
  %arrayidx595 = getelementptr inbounds [4 x i16], [4 x i16]* %arrayidx594, i32 0, i64 2
  %363 = load i16, i16* %arrayidx595, align 2
  %conv596 = sext i16 %363 to i32
  %conv597 = sitofp i32 %conv596 to double
  %mul598 = fmul double %361, %conv597
  %arrayidx599 = getelementptr inbounds [4 x double], [4 x double]* %t525, i32 0, i64 2
  %364 = load double, double* %arrayidx599, align 8
  %add600 = fadd double %364, %mul598
  store double %add600, double* %arrayidx599, align 8
  %365 = load double, double* %k566, align 8
  %366 = load [4 x i16]*, [4 x i16]** %a571, align 8
  %arrayidx601 = getelementptr inbounds [4 x i16], [4 x i16]* %366, i64 0
  %arrayidx602 = getelementptr inbounds [4 x i16], [4 x i16]* %arrayidx601, i32 0, i64 3
  %367 = load i16, i16* %arrayidx602, align 2
  %conv603 = sext i16 %367 to i32
  %conv604 = sitofp i32 %conv603 to double
  %mul605 = fmul double %365, %conv604
  %arrayidx606 = getelementptr inbounds [4 x double], [4 x double]* %t525, i32 0, i64 3
  %368 = load double, double* %arrayidx606, align 8
  %add607 = fadd double %368, %mul605
  store double %add607, double* %arrayidx606, align 8
  br label %for.inc.608

for.inc.608:                                      ; preds = %for.body.565
  %369 = load i32, i32* %jj551, align 4
  %inc609 = add nsw i32 %369, 1
  store i32 %inc609, i32* %jj551, align 4
  br label %for.cond.562

for.end.610:                                      ; preds = %for.cond.562
  br label %for.inc.611

for.inc.611:                                      ; preds = %for.end.610
  %370 = load i32, i32* %ii550, align 4
  %inc612 = add nsw i32 %370, 1
  store i32 %inc612, i32* %ii550, align 4
  br label %for.cond.558

for.end.613:                                      ; preds = %for.cond.558
  %371 = load i8*, i8** %out.addr, align 8
  %372 = load i32, i32* %nchan.addr, align 4
  %373 = load i32, i32* %i, align 4
  %374 = load i32, i32* %j, align 4
  %375 = load i32, i32* %out_width.addr, align 4
  %mul614 = mul nsw i32 %374, %375
  %add615 = add nsw i32 %373, %mul614
  %mul616 = mul nsw i32 %372, %add615
  %idx.ext617 = sext i32 %mul616 to i64
  %add.ptr618 = getelementptr inbounds i8, i8* %371, i64 %idx.ext617
  store i8* %add.ptr618, i8** %p553, align 8
  %arrayidx619 = getelementptr inbounds [4 x double], [4 x double]* %t525, i32 0, i64 0
  %376 = load double, double* %arrayidx619, align 8
  %div620 = fdiv double %376, 1.024000e+03
  %377 = load double, double* %g, align 8
  %call621 = call double @pow(double %div620, double %377) #4
  %mul622 = fmul double 2.560000e+02, %call621
  %add623 = fadd double %mul622, 5.000000e-01
  %conv624 = fptosi double %add623 to i32
  store i32 %conv624, i32* %a552, align 4
  %378 = load i32, i32* %a552, align 4
  %cmp625 = icmp slt i32 %378, 0
  br i1 %cmp625, label %if.then.627, label %if.else.628

if.then.627:                                      ; preds = %for.end.613
  store i32 0, i32* %a552, align 4
  br label %if.end.633

if.else.628:                                      ; preds = %for.end.613
  %379 = load i32, i32* %a552, align 4
  %cmp629 = icmp sgt i32 %379, 255
  br i1 %cmp629, label %if.then.631, label %if.end.632

if.then.631:                                      ; preds = %if.else.628
  store i32 255, i32* %a552, align 4
  br label %if.end.632

if.end.632:                                       ; preds = %if.then.631, %if.else.628
  br label %if.end.633

if.end.633:                                       ; preds = %if.end.632, %if.then.627
  %380 = load i32, i32* %a552, align 4
  %conv634 = trunc i32 %380 to i8
  %381 = load i8*, i8** %p553, align 8
  %arrayidx635 = getelementptr inbounds i8, i8* %381, i64 0
  store i8 %conv634, i8* %arrayidx635, align 1
  %arrayidx636 = getelementptr inbounds [4 x double], [4 x double]* %t525, i32 0, i64 1
  %382 = load double, double* %arrayidx636, align 8
  %div637 = fdiv double %382, 1.024000e+03
  %383 = load double, double* %g, align 8
  %call638 = call double @pow(double %div637, double %383) #4
  %mul639 = fmul double 2.560000e+02, %call638
  %add640 = fadd double %mul639, 5.000000e-01
  %conv641 = fptosi double %add640 to i32
  store i32 %conv641, i32* %a552, align 4
  %384 = load i32, i32* %a552, align 4
  %cmp642 = icmp slt i32 %384, 0
  br i1 %cmp642, label %if.then.644, label %if.else.645

if.then.644:                                      ; preds = %if.end.633
  store i32 0, i32* %a552, align 4
  br label %if.end.650

if.else.645:                                      ; preds = %if.end.633
  %385 = load i32, i32* %a552, align 4
  %cmp646 = icmp sgt i32 %385, 255
  br i1 %cmp646, label %if.then.648, label %if.end.649

if.then.648:                                      ; preds = %if.else.645
  store i32 255, i32* %a552, align 4
  br label %if.end.649

if.end.649:                                       ; preds = %if.then.648, %if.else.645
  br label %if.end.650

if.end.650:                                       ; preds = %if.end.649, %if.then.644
  %386 = load i32, i32* %a552, align 4
  %conv651 = trunc i32 %386 to i8
  %387 = load i8*, i8** %p553, align 8
  %arrayidx652 = getelementptr inbounds i8, i8* %387, i64 1
  store i8 %conv651, i8* %arrayidx652, align 1
  %arrayidx653 = getelementptr inbounds [4 x double], [4 x double]* %t525, i32 0, i64 2
  %388 = load double, double* %arrayidx653, align 8
  %div654 = fdiv double %388, 1.024000e+03
  %389 = load double, double* %g, align 8
  %call655 = call double @pow(double %div654, double %389) #4
  %mul656 = fmul double 2.560000e+02, %call655
  %add657 = fadd double %mul656, 5.000000e-01
  %conv658 = fptosi double %add657 to i32
  store i32 %conv658, i32* %a552, align 4
  %390 = load i32, i32* %a552, align 4
  %cmp659 = icmp slt i32 %390, 0
  br i1 %cmp659, label %if.then.661, label %if.else.662

if.then.661:                                      ; preds = %if.end.650
  store i32 0, i32* %a552, align 4
  br label %if.end.667

if.else.662:                                      ; preds = %if.end.650
  %391 = load i32, i32* %a552, align 4
  %cmp663 = icmp sgt i32 %391, 255
  br i1 %cmp663, label %if.then.665, label %if.end.666

if.then.665:                                      ; preds = %if.else.662
  store i32 255, i32* %a552, align 4
  br label %if.end.666

if.end.666:                                       ; preds = %if.then.665, %if.else.662
  br label %if.end.667

if.end.667:                                       ; preds = %if.end.666, %if.then.661
  %392 = load i32, i32* %a552, align 4
  %conv668 = trunc i32 %392 to i8
  %393 = load i8*, i8** %p553, align 8
  %arrayidx669 = getelementptr inbounds i8, i8* %393, i64 2
  store i8 %conv668, i8* %arrayidx669, align 1
  %394 = load i32, i32* %nchan.addr, align 4
  %cmp670 = icmp sgt i32 %394, 3
  br i1 %cmp670, label %if.then.672, label %if.end.690

if.then.672:                                      ; preds = %if.end.667
  %arrayidx673 = getelementptr inbounds [4 x double], [4 x double]* %t525, i32 0, i64 3
  %395 = load double, double* %arrayidx673, align 8
  %div674 = fdiv double %395, 1.024000e+03
  %396 = load double, double* %g, align 8
  %call675 = call double @pow(double %div674, double %396) #4
  %mul676 = fmul double 2.560000e+02, %call675
  %add677 = fadd double %mul676, 5.000000e-01
  %conv678 = fptosi double %add677 to i32
  store i32 %conv678, i32* %a552, align 4
  %397 = load i32, i32* %a552, align 4
  %cmp679 = icmp slt i32 %397, 0
  br i1 %cmp679, label %if.then.681, label %if.else.682

if.then.681:                                      ; preds = %if.then.672
  store i32 0, i32* %a552, align 4
  br label %if.end.687

if.else.682:                                      ; preds = %if.then.672
  %398 = load i32, i32* %a552, align 4
  %cmp683 = icmp sgt i32 %398, 255
  br i1 %cmp683, label %if.then.685, label %if.end.686

if.then.685:                                      ; preds = %if.else.682
  store i32 255, i32* %a552, align 4
  br label %if.end.686

if.end.686:                                       ; preds = %if.then.685, %if.else.682
  br label %if.end.687

if.end.687:                                       ; preds = %if.end.686, %if.then.681
  %399 = load i32, i32* %a552, align 4
  %conv688 = trunc i32 %399 to i8
  %400 = load i8*, i8** %p553, align 8
  %arrayidx689 = getelementptr inbounds i8, i8* %400, i64 3
  store i8 %conv688, i8* %arrayidx689, align 1
  br label %if.end.690

if.end.690:                                       ; preds = %if.end.687, %if.end.667
  %401 = load i32, i32* %oversample, align 4
  %402 = load i32, i32* %x, align 4
  %add691 = add nsw i32 %402, %401
  store i32 %add691, i32* %x, align 4
  br label %for.inc.692

for.inc.692:                                      ; preds = %if.end.690
  %403 = load i32, i32* %i, align 4
  %inc693 = add nsw i32 %403, 1
  store i32 %inc693, i32* %i, align 4
  br label %for.cond.546

for.end.694:                                      ; preds = %for.cond.546
  %404 = load i32, i32* %oversample, align 4
  %405 = load i32, i32* %y, align 4
  %add695 = add nsw i32 %405, %404
  store i32 %add695, i32* %y, align 4
  br label %for.inc.696

for.inc.696:                                      ; preds = %for.end.694
  %406 = load i32, i32* %j, align 4
  %inc697 = add nsw i32 %406, 1
  store i32 %inc697, i32* %j, align 4
  br label %for.cond.529

for.end.698:                                      ; preds = %for.cond.529
  %407 = load double*, double** %filter, align 8
  %408 = bitcast double* %407 to i8*
  call void @free(i8* %408) #4
  %409 = load double*, double** %temporal_filter, align 8
  %410 = bitcast double* %409 to i8*
  call void @free(i8* %410) #4
  %411 = load double*, double** %temporal_deltas, align 8
  %412 = bitcast double* %411 to i8*
  call void @free(i8* %412) #4
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare double @exp(double) #1

; Function Attrs: nounwind uwtable
define internal void @normalize_vector(double* %v, i32 %n) #0 {
entry:
  %v.addr = alloca double*, align 8
  %n.addr = alloca i32, align 4
  %t = alloca double, align 8
  %i = alloca i32, align 4
  store double* %v, double** %v.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store double 0.000000e+00, double* %t, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load double*, double** %v.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %3, i64 %idxprom
  %4 = load double, double* %arrayidx, align 8
  %5 = load double, double* %t, align 8
  %add = fadd double %5, %4
  store double %add, double* %t, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load double, double* %t, align 8
  %div = fdiv double 1.000000e+00, %7
  store double %div, double* %t, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.6, %for.end
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp slt i32 %8, %9
  br i1 %cmp2, label %for.body.3, label %for.end.8

for.body.3:                                       ; preds = %for.cond.1
  %10 = load double, double* %t, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %11 to i64
  %12 = load double*, double** %v.addr, align 8
  %arrayidx5 = getelementptr inbounds double, double* %12, i64 %idxprom4
  %13 = load double, double* %arrayidx5, align 8
  %mul = fmul double %13, %10
  store double %mul, double* %arrayidx5, align 8
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.body.3
  %14 = load i32, i32* %i, align 4
  %inc7 = add nsw i32 %14, 1
  store i32 %inc7, i32* %i, align 4
  br label %for.cond.1

for.end.8:                                        ; preds = %for.cond.1
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

declare void @interpolate(%struct.control_point*, i32, double, %struct.control_point*) #2

; Function Attrs: nounwind
declare double @pow(double, double) #1

declare double @random_uniform11() #2

declare double @random_uniform01() #2

declare void @iterate(%struct.control_point*, i32, i32, [3 x double]*) #2

; Function Attrs: nounwind
declare double @log(double) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
