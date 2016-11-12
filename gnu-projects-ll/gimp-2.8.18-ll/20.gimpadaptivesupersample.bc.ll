; ModuleID = './libgimpcolor/gimpadaptivesupersample.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpRGB = type { double, double, double, double }
%struct._GimpSampleType = type { i8, %struct._GimpRGB }

@.str = private unnamed_addr constant [13 x i8] c"LibGimpColor\00", align 1
@__func__.gimp_adaptive_supersample_area = private unnamed_addr constant [31 x i8] c"gimp_adaptive_supersample_area\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"render_func != NULL\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"put_pixel_func != NULL\00", align 1
@__func__.gimp_render_sub_pixel = private unnamed_addr constant [22 x i8] c"gimp_render_sub_pixel\00", align 1

; Function Attrs: nounwind uwtable
define i64 @gimp_adaptive_supersample_area(i32 %x1, i32 %y1, i32 %x2, i32 %y2, i32 %max_depth, double %threshold, void (double, double, %struct._GimpRGB*, i8*)* %render_func, i8* %render_data, void (i32, i32, %struct._GimpRGB*, i8*)* %put_pixel_func, i8* %put_pixel_data, void (i32, i32, i32, i8*)* %progress_func, i8* %progress_data) #0 {
entry:
  %retval = alloca i64, align 8
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %max_depth.addr = alloca i32, align 4
  %threshold.addr = alloca double, align 8
  %render_func.addr = alloca void (double, double, %struct._GimpRGB*, i8*)*, align 8
  %render_data.addr = alloca i8*, align 8
  %put_pixel_func.addr = alloca void (i32, i32, %struct._GimpRGB*, i8*)*, align 8
  %put_pixel_data.addr = alloca i8*, align 8
  %progress_func.addr = alloca void (i32, i32, i32, i8*)*, align 8
  %progress_data.addr = alloca i8*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %xt = alloca i32, align 4
  %xtt = alloca i32, align 4
  %yt = alloca i32, align 4
  %sub_pixel_size = alloca i32, align 4
  %color = alloca %struct._GimpRGB, align 8
  %tmp_sample = alloca %struct._GimpSampleType, align 8
  %top_row = alloca %struct._GimpSampleType*, align 8
  %bot_row = alloca %struct._GimpSampleType*, align 8
  %tmp_row = alloca %struct._GimpSampleType*, align 8
  %block = alloca %struct._GimpSampleType**, align 8
  %num_samples = alloca i64, align 8
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %x2, i32* %x2.addr, align 4
  store i32 %y2, i32* %y2.addr, align 4
  store i32 %max_depth, i32* %max_depth.addr, align 4
  store double %threshold, double* %threshold.addr, align 8
  store void (double, double, %struct._GimpRGB*, i8*)* %render_func, void (double, double, %struct._GimpRGB*, i8*)** %render_func.addr, align 8
  store i8* %render_data, i8** %render_data.addr, align 8
  store void (i32, i32, %struct._GimpRGB*, i8*)* %put_pixel_func, void (i32, i32, %struct._GimpRGB*, i8*)** %put_pixel_func.addr, align 8
  store i8* %put_pixel_data, i8** %put_pixel_data.addr, align 8
  store void (i32, i32, i32, i8*)* %progress_func, void (i32, i32, i32, i8*)** %progress_func.addr, align 8
  store i8* %progress_data, i8** %progress_data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load void (double, double, %struct._GimpRGB*, i8*)*, void (double, double, %struct._GimpRGB*, i8*)** %render_func.addr, align 8
  %cmp = icmp ne void (double, double, %struct._GimpRGB*, i8*)* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_adaptive_supersample_area, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store i64 0, i64* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load void (i32, i32, %struct._GimpRGB*, i8*)*, void (i32, i32, %struct._GimpRGB*, i8*)** %put_pixel_func.addr, align 8
  %cmp2 = icmp ne void (i32, i32, %struct._GimpRGB*, i8*)* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_adaptive_supersample_area, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0))
  store i64 0, i64* %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  call void @gimp_rgba_set(%struct._GimpRGB* %color, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  %2 = load i32, i32* %max_depth.addr, align 4
  %shl = shl i32 1, %2
  store i32 %shl, i32* %sub_pixel_size, align 4
  %3 = load i32, i32* %x2.addr, align 4
  %4 = load i32, i32* %x1.addr, align 4
  %sub = sub nsw i32 %3, %4
  %add = add nsw i32 %sub, 1
  store i32 %add, i32* %width, align 4
  %5 = load i32, i32* %sub_pixel_size, align 4
  %6 = load i32, i32* %width, align 4
  %mul = mul nsw i32 %5, %6
  %add7 = add nsw i32 %mul, 1
  %conv = sext i32 %add7 to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv, i64 40)
  %7 = bitcast i8* %call to %struct._GimpSampleType*
  store %struct._GimpSampleType* %7, %struct._GimpSampleType** %top_row, align 8
  %8 = load i32, i32* %sub_pixel_size, align 4
  %9 = load i32, i32* %width, align 4
  %mul8 = mul nsw i32 %8, %9
  %add9 = add nsw i32 %mul8, 1
  %conv10 = sext i32 %add9 to i64
  %call11 = call noalias i8* @g_malloc_n(i64 %conv10, i64 40)
  %10 = bitcast i8* %call11 to %struct._GimpSampleType*
  store %struct._GimpSampleType* %10, %struct._GimpSampleType** %bot_row, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.6
  %11 = load i32, i32* %x, align 4
  %12 = load i32, i32* %sub_pixel_size, align 4
  %13 = load i32, i32* %width, align 4
  %mul12 = mul nsw i32 %12, %13
  %add13 = add nsw i32 %mul12, 1
  %cmp14 = icmp slt i32 %11, %add13
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %x, align 4
  %idxprom = sext i32 %14 to i64
  %15 = load %struct._GimpSampleType*, %struct._GimpSampleType** %top_row, align 8
  %arrayidx = getelementptr inbounds %struct._GimpSampleType, %struct._GimpSampleType* %15, i64 %idxprom
  %ready = getelementptr inbounds %struct._GimpSampleType, %struct._GimpSampleType* %arrayidx, i32 0, i32 0
  store i8 0, i8* %ready, align 1
  %16 = load i32, i32* %x, align 4
  %idxprom16 = sext i32 %16 to i64
  %17 = load %struct._GimpSampleType*, %struct._GimpSampleType** %top_row, align 8
  %arrayidx17 = getelementptr inbounds %struct._GimpSampleType, %struct._GimpSampleType* %17, i64 %idxprom16
  %color18 = getelementptr inbounds %struct._GimpSampleType, %struct._GimpSampleType* %arrayidx17, i32 0, i32 1
  call void @gimp_rgba_set(%struct._GimpRGB* %color18, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  %18 = load i32, i32* %x, align 4
  %idxprom19 = sext i32 %18 to i64
  %19 = load %struct._GimpSampleType*, %struct._GimpSampleType** %bot_row, align 8
  %arrayidx20 = getelementptr inbounds %struct._GimpSampleType, %struct._GimpSampleType* %19, i64 %idxprom19
  %ready21 = getelementptr inbounds %struct._GimpSampleType, %struct._GimpSampleType* %arrayidx20, i32 0, i32 0
  store i8 0, i8* %ready21, align 1
  %20 = load i32, i32* %x, align 4
  %idxprom22 = sext i32 %20 to i64
  %21 = load %struct._GimpSampleType*, %struct._GimpSampleType** %bot_row, align 8
  %arrayidx23 = getelementptr inbounds %struct._GimpSampleType, %struct._GimpSampleType* %21, i64 %idxprom22
  %color24 = getelementptr inbounds %struct._GimpSampleType, %struct._GimpSampleType* %arrayidx23, i32 0, i32 1
  call void @gimp_rgba_set(%struct._GimpRGB* %color24, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %x, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load i32, i32* %sub_pixel_size, align 4
  %add25 = add nsw i32 %23, 1
  %conv26 = sext i32 %add25 to i64
  %call27 = call noalias i8* @g_malloc_n(i64 %conv26, i64 8)
  %24 = bitcast i8* %call27 to %struct._GimpSampleType**
  store %struct._GimpSampleType** %24, %struct._GimpSampleType*** %block, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.56, %for.end
  %25 = load i32, i32* %y, align 4
  %26 = load i32, i32* %sub_pixel_size, align 4
  %add29 = add nsw i32 %26, 1
  %cmp30 = icmp slt i32 %25, %add29
  br i1 %cmp30, label %for.body.32, label %for.end.58

for.body.32:                                      ; preds = %for.cond.28
  %27 = load i32, i32* %sub_pixel_size, align 4
  %add33 = add nsw i32 %27, 1
  %conv34 = sext i32 %add33 to i64
  %call35 = call noalias i8* @g_malloc_n(i64 %conv34, i64 40)
  %28 = bitcast i8* %call35 to %struct._GimpSampleType*
  %29 = load i32, i32* %y, align 4
  %idxprom36 = sext i32 %29 to i64
  %30 = load %struct._GimpSampleType**, %struct._GimpSampleType*** %block, align 8
  %arrayidx37 = getelementptr inbounds %struct._GimpSampleType*, %struct._GimpSampleType** %30, i64 %idxprom36
  store %struct._GimpSampleType* %28, %struct._GimpSampleType** %arrayidx37, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.53, %for.body.32
  %31 = load i32, i32* %x, align 4
  %32 = load i32, i32* %sub_pixel_size, align 4
  %add39 = add nsw i32 %32, 1
  %cmp40 = icmp slt i32 %31, %add39
  br i1 %cmp40, label %for.body.42, label %for.end.55

for.body.42:                                      ; preds = %for.cond.38
  %33 = load i32, i32* %x, align 4
  %idxprom43 = sext i32 %33 to i64
  %34 = load i32, i32* %y, align 4
  %idxprom44 = sext i32 %34 to i64
  %35 = load %struct._GimpSampleType**, %struct._GimpSampleType*** %block, align 8
  %arrayidx45 = getelementptr inbounds %struct._GimpSampleType*, %struct._GimpSampleType** %35, i64 %idxprom44
  %36 = load %struct._GimpSampleType*, %struct._GimpSampleType** %arrayidx45, align 8
  %arrayidx46 = getelementptr inbounds %struct._GimpSampleType, %struct._GimpSampleType* %36, i64 %idxprom43
  %ready47 = getelementptr inbounds %struct._GimpSampleType, %struct._GimpSampleType* %arrayidx46, i32 0, i32 0
  store i8 0, i8* %ready47, align 1
  %37 = load i32, i32* %x, align 4
  %idxprom48 = sext i32 %37 to i64
  %38 = load i32, i32* %y, align 4
  %idxprom49 = sext i32 %38 to i64
  %39 = load %struct._GimpSampleType**, %struct._GimpSampleType*** %block, align 8
  %arrayidx50 = getelementptr inbounds %struct._GimpSampleType*, %struct._GimpSampleType** %39, i64 %idxprom49
  %40 = load %struct._GimpSampleType*, %struct._GimpSampleType** %arrayidx50, align 8
  %arrayidx51 = getelementptr inbounds %struct._GimpSampleType, %struct._GimpSampleType* %40, i64 %idxprom48
  %color52 = getelementptr inbounds %struct._GimpSampleType, %struct._GimpSampleType* %arrayidx51, i32 0, i32 1
  call void @gimp_rgba_set(%struct._GimpRGB* %color52, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  br label %for.inc.53

for.inc.53:                                       ; preds = %for.body.42
  %41 = load i32, i32* %x, align 4
  %inc54 = add nsw i32 %41, 1
  store i32 %inc54, i32* %x, align 4
  br label %for.cond.38

for.end.55:                                       ; preds = %for.cond.38
  br label %for.inc.56

for.inc.56:                                       ; preds = %for.end.55
  %42 = load i32, i32* %y, align 4
  %inc57 = add nsw i32 %42, 1
  store i32 %inc57, i32* %y, align 4
  br label %for.cond.28

for.end.58:                                       ; preds = %for.cond.28
  store i64 0, i64* %num_samples, align 8
  %43 = load i32, i32* %y1.addr, align 4
  store i32 %43, i32* %y, align 4
  br label %for.cond.59

for.cond.59:                                      ; preds = %for.inc.186, %for.end.58
  %44 = load i32, i32* %y, align 4
  %45 = load i32, i32* %y2.addr, align 4
  %cmp60 = icmp sle i32 %44, %45
  br i1 %cmp60, label %for.body.62, label %for.end.188

for.body.62:                                      ; preds = %for.cond.59
  store i32 0, i32* %xt, align 4
  br label %for.cond.63

for.cond.63:                                      ; preds = %for.inc.72, %for.body.62
  %46 = load i32, i32* %xt, align 4
  %47 = load i32, i32* %sub_pixel_size, align 4
  %48 = load i32, i32* %width, align 4
  %mul64 = mul nsw i32 %47, %48
  %add65 = add nsw i32 %mul64, 1
  %cmp66 = icmp slt i32 %46, %add65
  br i1 %cmp66, label %for.body.68, label %for.end.74

for.body.68:                                      ; preds = %for.cond.63
  %49 = load i32, i32* %xt, align 4
  %idxprom69 = sext i32 %49 to i64
  %50 = load %struct._GimpSampleType*, %struct._GimpSampleType** %bot_row, align 8
  %arrayidx70 = getelementptr inbounds %struct._GimpSampleType, %struct._GimpSampleType* %50, i64 %idxprom69
  %ready71 = getelementptr inbounds %struct._GimpSampleType, %struct._GimpSampleType* %arrayidx70, i32 0, i32 0
  store i8 0, i8* %ready71, align 1
  br label %for.inc.72

for.inc.72:                                       ; preds = %for.body.68
  %51 = load i32, i32* %xt, align 4
  %inc73 = add nsw i32 %51, 1
  store i32 %inc73, i32* %xt, align 4
  br label %for.cond.63

for.end.74:                                       ; preds = %for.cond.63
  store i32 0, i32* %yt, align 4
  br label %for.cond.75

for.cond.75:                                      ; preds = %for.inc.84, %for.end.74
  %52 = load i32, i32* %yt, align 4
  %53 = load i32, i32* %sub_pixel_size, align 4
  %add76 = add nsw i32 %53, 1
  %cmp77 = icmp slt i32 %52, %add76
  br i1 %cmp77, label %for.body.79, label %for.end.86

for.body.79:                                      ; preds = %for.cond.75
  %54 = load i32, i32* %yt, align 4
  %idxprom80 = sext i32 %54 to i64
  %55 = load %struct._GimpSampleType**, %struct._GimpSampleType*** %block, align 8
  %arrayidx81 = getelementptr inbounds %struct._GimpSampleType*, %struct._GimpSampleType** %55, i64 %idxprom80
  %56 = load %struct._GimpSampleType*, %struct._GimpSampleType** %arrayidx81, align 8
  %arrayidx82 = getelementptr inbounds %struct._GimpSampleType, %struct._GimpSampleType* %56, i64 0
  %ready83 = getelementptr inbounds %struct._GimpSampleType, %struct._GimpSampleType* %arrayidx82, i32 0, i32 0
  store i8 0, i8* %ready83, align 1
  br label %for.inc.84

for.inc.84:                                       ; preds = %for.body.79
  %57 = load i32, i32* %yt, align 4
  %inc85 = add nsw i32 %57, 1
  store i32 %inc85, i32* %yt, align 4
  br label %for.cond.75

for.end.86:                                       ; preds = %for.cond.75
  %58 = load i32, i32* %x1.addr, align 4
  store i32 %58, i32* %x, align 4
  br label %for.cond.87

for.cond.87:                                      ; preds = %for.inc.179, %for.end.86
  %59 = load i32, i32* %x, align 4
  %60 = load i32, i32* %x2.addr, align 4
  %cmp88 = icmp sle i32 %59, %60
  br i1 %cmp88, label %for.body.90, label %for.end.181

for.body.90:                                      ; preds = %for.cond.87
  store i32 1, i32* %yt, align 4
  br label %for.cond.91

for.cond.91:                                      ; preds = %for.inc.109, %for.body.90
  %61 = load i32, i32* %yt, align 4
  %62 = load i32, i32* %sub_pixel_size, align 4
  %add92 = add nsw i32 %62, 1
  %cmp93 = icmp slt i32 %61, %add92
  br i1 %cmp93, label %for.body.95, label %for.end.111

for.body.95:                                      ; preds = %for.cond.91
  store i32 1, i32* %xt, align 4
  br label %for.cond.96

for.cond.96:                                      ; preds = %for.inc.106, %for.body.95
  %63 = load i32, i32* %xt, align 4
  %64 = load i32, i32* %sub_pixel_size, align 4
  %add97 = add nsw i32 %64, 1
  %cmp98 = icmp slt i32 %63, %add97
  br i1 %cmp98, label %for.body.100, label %for.end.108

for.body.100:                                     ; preds = %for.cond.96
  %65 = load i32, i32* %xt, align 4
  %idxprom101 = sext i32 %65 to i64
  %66 = load i32, i32* %yt, align 4
  %idxprom102 = sext i32 %66 to i64
  %67 = load %struct._GimpSampleType**, %struct._GimpSampleType*** %block, align 8
  %arrayidx103 = getelementptr inbounds %struct._GimpSampleType*, %struct._GimpSampleType** %67, i64 %idxprom102
  %68 = load %struct._GimpSampleType*, %struct._GimpSampleType** %arrayidx103, align 8
  %arrayidx104 = getelementptr inbounds %struct._GimpSampleType, %struct._GimpSampleType* %68, i64 %idxprom101
  %ready105 = getelementptr inbounds %struct._GimpSampleType, %struct._GimpSampleType* %arrayidx104, i32 0, i32 0
  store i8 0, i8* %ready105, align 1
  br label %for.inc.106

for.inc.106:                                      ; preds = %for.body.100
  %69 = load i32, i32* %xt, align 4
  %inc107 = add nsw i32 %69, 1
  store i32 %inc107, i32* %xt, align 4
  br label %for.cond.96

for.end.108:                                      ; preds = %for.cond.96
  br label %for.inc.109

for.inc.109:                                      ; preds = %for.end.108
  %70 = load i32, i32* %yt, align 4
  %inc110 = add nsw i32 %70, 1
  store i32 %inc110, i32* %yt, align 4
  br label %for.cond.91

for.end.111:                                      ; preds = %for.cond.91
  store i32 0, i32* %xtt, align 4
  %71 = load i32, i32* %x, align 4
  %72 = load i32, i32* %x1.addr, align 4
  %sub112 = sub nsw i32 %71, %72
  %73 = load i32, i32* %sub_pixel_size, align 4
  %mul113 = mul nsw i32 %sub112, %73
  store i32 %mul113, i32* %xt, align 4
  br label %for.cond.114

for.cond.114:                                     ; preds = %for.inc.124, %for.end.111
  %74 = load i32, i32* %xtt, align 4
  %75 = load i32, i32* %sub_pixel_size, align 4
  %add115 = add nsw i32 %75, 1
  %cmp116 = icmp slt i32 %74, %add115
  br i1 %cmp116, label %for.body.118, label %for.end.127

for.body.118:                                     ; preds = %for.cond.114
  %76 = load i32, i32* %xtt, align 4
  %idxprom119 = sext i32 %76 to i64
  %77 = load %struct._GimpSampleType**, %struct._GimpSampleType*** %block, align 8
  %arrayidx120 = getelementptr inbounds %struct._GimpSampleType*, %struct._GimpSampleType** %77, i64 0
  %78 = load %struct._GimpSampleType*, %struct._GimpSampleType** %arrayidx120, align 8
  %arrayidx121 = getelementptr inbounds %struct._GimpSampleType, %struct._GimpSampleType* %78, i64 %idxprom119
  %79 = load i32, i32* %xt, align 4
  %idxprom122 = sext i32 %79 to i64
  %80 = load %struct._GimpSampleType*, %struct._GimpSampleType** %top_row, align 8
  %arrayidx123 = getelementptr inbounds %struct._GimpSampleType, %struct._GimpSampleType* %80, i64 %idxprom122
  %81 = bitcast %struct._GimpSampleType* %arrayidx121 to i8*
  %82 = bitcast %struct._GimpSampleType* %arrayidx123 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %81, i8* %82, i64 40, i32 8, i1 false)
  br label %for.inc.124

for.inc.124:                                      ; preds = %for.body.118
  %83 = load i32, i32* %xtt, align 4
  %inc125 = add nsw i32 %83, 1
  store i32 %inc125, i32* %xtt, align 4
  %84 = load i32, i32* %xt, align 4
  %inc126 = add nsw i32 %84, 1
  store i32 %inc126, i32* %xt, align 4
  br label %for.cond.114

for.end.127:                                      ; preds = %for.cond.114
  %85 = load i32, i32* %max_depth.addr, align 4
  %86 = load %struct._GimpSampleType**, %struct._GimpSampleType*** %block, align 8
  %87 = load i32, i32* %x, align 4
  %88 = load i32, i32* %y, align 4
  %89 = load i32, i32* %sub_pixel_size, align 4
  %90 = load i32, i32* %sub_pixel_size, align 4
  %91 = load double, double* %threshold.addr, align 8
  %92 = load i32, i32* %sub_pixel_size, align 4
  %93 = load void (double, double, %struct._GimpRGB*, i8*)*, void (double, double, %struct._GimpRGB*, i8*)** %render_func.addr, align 8
  %94 = load i8*, i8** %render_data.addr, align 8
  %call128 = call i64 @gimp_render_sub_pixel(i32 %85, i32 1, %struct._GimpSampleType** %86, i32 %87, i32 %88, i32 0, i32 0, i32 %89, i32 %90, double %91, i32 %92, %struct._GimpRGB* %color, void (double, double, %struct._GimpRGB*, i8*)* %93, i8* %94)
  %95 = load i64, i64* %num_samples, align 8
  %add129 = add i64 %95, %call128
  store i64 %add129, i64* %num_samples, align 8
  %96 = load void (i32, i32, %struct._GimpRGB*, i8*)*, void (i32, i32, %struct._GimpRGB*, i8*)** %put_pixel_func.addr, align 8
  %tobool = icmp ne void (i32, i32, %struct._GimpRGB*, i8*)* %96, null
  br i1 %tobool, label %if.then.130, label %if.end.131

if.then.130:                                      ; preds = %for.end.127
  %97 = load void (i32, i32, %struct._GimpRGB*, i8*)*, void (i32, i32, %struct._GimpRGB*, i8*)** %put_pixel_func.addr, align 8
  %98 = load i32, i32* %x, align 4
  %99 = load i32, i32* %y, align 4
  %100 = load i8*, i8** %put_pixel_data.addr, align 8
  call void %97(i32 %98, i32 %99, %struct._GimpRGB* %color, i8* %100)
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.130, %for.end.127
  %101 = load i32, i32* %x, align 4
  %102 = load i32, i32* %x1.addr, align 4
  %sub132 = sub nsw i32 %101, %102
  %add133 = add nsw i32 %sub132, 1
  %103 = load i32, i32* %sub_pixel_size, align 4
  %mul134 = mul nsw i32 %add133, %103
  %idxprom135 = sext i32 %mul134 to i64
  %104 = load %struct._GimpSampleType*, %struct._GimpSampleType** %top_row, align 8
  %arrayidx136 = getelementptr inbounds %struct._GimpSampleType, %struct._GimpSampleType* %104, i64 %idxprom135
  %105 = load i32, i32* %sub_pixel_size, align 4
  %idxprom137 = sext i32 %105 to i64
  %106 = load %struct._GimpSampleType**, %struct._GimpSampleType*** %block, align 8
  %arrayidx138 = getelementptr inbounds %struct._GimpSampleType*, %struct._GimpSampleType** %106, i64 0
  %107 = load %struct._GimpSampleType*, %struct._GimpSampleType** %arrayidx138, align 8
  %arrayidx139 = getelementptr inbounds %struct._GimpSampleType, %struct._GimpSampleType* %107, i64 %idxprom137
  %108 = bitcast %struct._GimpSampleType* %arrayidx136 to i8*
  %109 = bitcast %struct._GimpSampleType* %arrayidx139 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %108, i8* %109, i64 40, i32 8, i1 false)
  store i32 0, i32* %xtt, align 4
  %110 = load i32, i32* %x, align 4
  %111 = load i32, i32* %x1.addr, align 4
  %sub140 = sub nsw i32 %110, %111
  %112 = load i32, i32* %sub_pixel_size, align 4
  %mul141 = mul nsw i32 %sub140, %112
  store i32 %mul141, i32* %xt, align 4
  br label %for.cond.142

for.cond.142:                                     ; preds = %for.inc.153, %if.end.131
  %113 = load i32, i32* %xtt, align 4
  %114 = load i32, i32* %sub_pixel_size, align 4
  %add143 = add nsw i32 %114, 1
  %cmp144 = icmp slt i32 %113, %add143
  br i1 %cmp144, label %for.body.146, label %for.end.156

for.body.146:                                     ; preds = %for.cond.142
  %115 = load i32, i32* %xt, align 4
  %idxprom147 = sext i32 %115 to i64
  %116 = load %struct._GimpSampleType*, %struct._GimpSampleType** %bot_row, align 8
  %arrayidx148 = getelementptr inbounds %struct._GimpSampleType, %struct._GimpSampleType* %116, i64 %idxprom147
  %117 = load i32, i32* %xtt, align 4
  %idxprom149 = sext i32 %117 to i64
  %118 = load i32, i32* %sub_pixel_size, align 4
  %idxprom150 = sext i32 %118 to i64
  %119 = load %struct._GimpSampleType**, %struct._GimpSampleType*** %block, align 8
  %arrayidx151 = getelementptr inbounds %struct._GimpSampleType*, %struct._GimpSampleType** %119, i64 %idxprom150
  %120 = load %struct._GimpSampleType*, %struct._GimpSampleType** %arrayidx151, align 8
  %arrayidx152 = getelementptr inbounds %struct._GimpSampleType, %struct._GimpSampleType* %120, i64 %idxprom149
  %121 = bitcast %struct._GimpSampleType* %arrayidx148 to i8*
  %122 = bitcast %struct._GimpSampleType* %arrayidx152 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %121, i8* %122, i64 40, i32 8, i1 false)
  br label %for.inc.153

for.inc.153:                                      ; preds = %for.body.146
  %123 = load i32, i32* %xtt, align 4
  %inc154 = add nsw i32 %123, 1
  store i32 %inc154, i32* %xtt, align 4
  %124 = load i32, i32* %xt, align 4
  %inc155 = add nsw i32 %124, 1
  store i32 %inc155, i32* %xt, align 4
  br label %for.cond.142

for.end.156:                                      ; preds = %for.cond.142
  store i32 0, i32* %yt, align 4
  br label %for.cond.157

for.cond.157:                                     ; preds = %for.inc.176, %for.end.156
  %125 = load i32, i32* %yt, align 4
  %126 = load i32, i32* %sub_pixel_size, align 4
  %add158 = add nsw i32 %126, 1
  %cmp159 = icmp slt i32 %125, %add158
  br i1 %cmp159, label %for.body.161, label %for.end.178

for.body.161:                                     ; preds = %for.cond.157
  %127 = load i32, i32* %yt, align 4
  %idxprom162 = sext i32 %127 to i64
  %128 = load %struct._GimpSampleType**, %struct._GimpSampleType*** %block, align 8
  %arrayidx163 = getelementptr inbounds %struct._GimpSampleType*, %struct._GimpSampleType** %128, i64 %idxprom162
  %129 = load %struct._GimpSampleType*, %struct._GimpSampleType** %arrayidx163, align 8
  %arrayidx164 = getelementptr inbounds %struct._GimpSampleType, %struct._GimpSampleType* %129, i64 0
  %130 = bitcast %struct._GimpSampleType* %tmp_sample to i8*
  %131 = bitcast %struct._GimpSampleType* %arrayidx164 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %130, i8* %131, i64 40, i32 8, i1 false)
  %132 = load i32, i32* %yt, align 4
  %idxprom165 = sext i32 %132 to i64
  %133 = load %struct._GimpSampleType**, %struct._GimpSampleType*** %block, align 8
  %arrayidx166 = getelementptr inbounds %struct._GimpSampleType*, %struct._GimpSampleType** %133, i64 %idxprom165
  %134 = load %struct._GimpSampleType*, %struct._GimpSampleType** %arrayidx166, align 8
  %arrayidx167 = getelementptr inbounds %struct._GimpSampleType, %struct._GimpSampleType* %134, i64 0
  %135 = load i32, i32* %sub_pixel_size, align 4
  %idxprom168 = sext i32 %135 to i64
  %136 = load i32, i32* %yt, align 4
  %idxprom169 = sext i32 %136 to i64
  %137 = load %struct._GimpSampleType**, %struct._GimpSampleType*** %block, align 8
  %arrayidx170 = getelementptr inbounds %struct._GimpSampleType*, %struct._GimpSampleType** %137, i64 %idxprom169
  %138 = load %struct._GimpSampleType*, %struct._GimpSampleType** %arrayidx170, align 8
  %arrayidx171 = getelementptr inbounds %struct._GimpSampleType, %struct._GimpSampleType* %138, i64 %idxprom168
  %139 = bitcast %struct._GimpSampleType* %arrayidx167 to i8*
  %140 = bitcast %struct._GimpSampleType* %arrayidx171 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %139, i8* %140, i64 40, i32 8, i1 false)
  %141 = load i32, i32* %sub_pixel_size, align 4
  %idxprom172 = sext i32 %141 to i64
  %142 = load i32, i32* %yt, align 4
  %idxprom173 = sext i32 %142 to i64
  %143 = load %struct._GimpSampleType**, %struct._GimpSampleType*** %block, align 8
  %arrayidx174 = getelementptr inbounds %struct._GimpSampleType*, %struct._GimpSampleType** %143, i64 %idxprom173
  %144 = load %struct._GimpSampleType*, %struct._GimpSampleType** %arrayidx174, align 8
  %arrayidx175 = getelementptr inbounds %struct._GimpSampleType, %struct._GimpSampleType* %144, i64 %idxprom172
  %145 = bitcast %struct._GimpSampleType* %arrayidx175 to i8*
  %146 = bitcast %struct._GimpSampleType* %tmp_sample to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %145, i8* %146, i64 40, i32 8, i1 false)
  br label %for.inc.176

for.inc.176:                                      ; preds = %for.body.161
  %147 = load i32, i32* %yt, align 4
  %inc177 = add nsw i32 %147, 1
  store i32 %inc177, i32* %yt, align 4
  br label %for.cond.157

for.end.178:                                      ; preds = %for.cond.157
  br label %for.inc.179

for.inc.179:                                      ; preds = %for.end.178
  %148 = load i32, i32* %x, align 4
  %inc180 = add nsw i32 %148, 1
  store i32 %inc180, i32* %x, align 4
  br label %for.cond.87

for.end.181:                                      ; preds = %for.cond.87
  %149 = load %struct._GimpSampleType*, %struct._GimpSampleType** %top_row, align 8
  store %struct._GimpSampleType* %149, %struct._GimpSampleType** %tmp_row, align 8
  %150 = load %struct._GimpSampleType*, %struct._GimpSampleType** %bot_row, align 8
  store %struct._GimpSampleType* %150, %struct._GimpSampleType** %top_row, align 8
  %151 = load %struct._GimpSampleType*, %struct._GimpSampleType** %tmp_row, align 8
  store %struct._GimpSampleType* %151, %struct._GimpSampleType** %bot_row, align 8
  %152 = load void (i32, i32, i32, i8*)*, void (i32, i32, i32, i8*)** %progress_func.addr, align 8
  %cmp182 = icmp ne void (i32, i32, i32, i8*)* %152, null
  br i1 %cmp182, label %if.then.184, label %if.end.185

if.then.184:                                      ; preds = %for.end.181
  %153 = load void (i32, i32, i32, i8*)*, void (i32, i32, i32, i8*)** %progress_func.addr, align 8
  %154 = load i32, i32* %y1.addr, align 4
  %155 = load i32, i32* %y2.addr, align 4
  %156 = load i32, i32* %y, align 4
  %157 = load i8*, i8** %progress_data.addr, align 8
  call void %153(i32 %154, i32 %155, i32 %156, i8* %157)
  br label %if.end.185

if.end.185:                                       ; preds = %if.then.184, %for.end.181
  br label %for.inc.186

for.inc.186:                                      ; preds = %if.end.185
  %158 = load i32, i32* %y, align 4
  %inc187 = add nsw i32 %158, 1
  store i32 %inc187, i32* %y, align 4
  br label %for.cond.59

for.end.188:                                      ; preds = %for.cond.59
  store i32 0, i32* %y, align 4
  br label %for.cond.189

for.cond.189:                                     ; preds = %for.inc.196, %for.end.188
  %159 = load i32, i32* %y, align 4
  %160 = load i32, i32* %sub_pixel_size, align 4
  %add190 = add nsw i32 %160, 1
  %cmp191 = icmp slt i32 %159, %add190
  br i1 %cmp191, label %for.body.193, label %for.end.198

for.body.193:                                     ; preds = %for.cond.189
  %161 = load i32, i32* %y, align 4
  %idxprom194 = sext i32 %161 to i64
  %162 = load %struct._GimpSampleType**, %struct._GimpSampleType*** %block, align 8
  %arrayidx195 = getelementptr inbounds %struct._GimpSampleType*, %struct._GimpSampleType** %162, i64 %idxprom194
  %163 = load %struct._GimpSampleType*, %struct._GimpSampleType** %arrayidx195, align 8
  %164 = bitcast %struct._GimpSampleType* %163 to i8*
  call void @g_free(i8* %164)
  br label %for.inc.196

for.inc.196:                                      ; preds = %for.body.193
  %165 = load i32, i32* %y, align 4
  %inc197 = add nsw i32 %165, 1
  store i32 %inc197, i32* %y, align 4
  br label %for.cond.189

for.end.198:                                      ; preds = %for.cond.189
  %166 = load %struct._GimpSampleType**, %struct._GimpSampleType*** %block, align 8
  %167 = bitcast %struct._GimpSampleType** %166 to i8*
  call void @g_free(i8* %167)
  %168 = load %struct._GimpSampleType*, %struct._GimpSampleType** %top_row, align 8
  %169 = bitcast %struct._GimpSampleType* %168 to i8*
  call void @g_free(i8* %169)
  %170 = load %struct._GimpSampleType*, %struct._GimpSampleType** %bot_row, align 8
  %171 = bitcast %struct._GimpSampleType* %170 to i8*
  call void @g_free(i8* %171)
  %172 = load i64, i64* %num_samples, align 8
  store i64 %172, i64* %retval
  br label %return

return:                                           ; preds = %for.end.198, %if.else.4, %if.else
  %173 = load i64, i64* %retval
  ret i64 %173
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare void @gimp_rgba_set(%struct._GimpRGB*, double, double, double, double) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal i64 @gimp_render_sub_pixel(i32 %max_depth, i32 %depth, %struct._GimpSampleType** %block, i32 %x, i32 %y, i32 %x1, i32 %y1, i32 %x3, i32 %y3, double %threshold, i32 %sub_pixel_size, %struct._GimpRGB* %color, void (double, double, %struct._GimpRGB*, i8*)* %render_func, i8* %render_data) #0 {
entry:
  %retval = alloca i64, align 8
  %max_depth.addr = alloca i32, align 4
  %depth.addr = alloca i32, align 4
  %block.addr = alloca %struct._GimpSampleType**, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %x3.addr = alloca i32, align 4
  %y3.addr = alloca i32, align 4
  %threshold.addr = alloca double, align 8
  %sub_pixel_size.addr = alloca i32, align 4
  %color.addr = alloca %struct._GimpRGB*, align 8
  %render_func.addr = alloca void (double, double, %struct._GimpRGB*, i8*)*, align 8
  %render_data.addr = alloca i8*, align 8
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %dx1 = alloca double, align 8
  %dy1 = alloca double, align 8
  %dx3 = alloca double, align 8
  %dy3 = alloca double, align 8
  %c = alloca [4 x %struct._GimpRGB], align 16
  %num_samples = alloca i64, align 8
  %cnt = alloca i32, align 4
  %tmpcol = alloca %struct._GimpRGB, align 8
  %weight = alloca double, align 8
  store i32 %max_depth, i32* %max_depth.addr, align 4
  store i32 %depth, i32* %depth.addr, align 4
  store %struct._GimpSampleType** %block, %struct._GimpSampleType*** %block.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %x3, i32* %x3.addr, align 4
  store i32 %y3, i32* %y3.addr, align 4
  store double %threshold, double* %threshold.addr, align 8
  store i32 %sub_pixel_size, i32* %sub_pixel_size.addr, align 4
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store void (double, double, %struct._GimpRGB*, i8*)* %render_func, void (double, double, %struct._GimpRGB*, i8*)** %render_func.addr, align 8
  store i8* %render_data, i8** %render_data.addr, align 8
  store i64 0, i64* %num_samples, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load void (double, double, %struct._GimpRGB*, i8*)*, void (double, double, %struct._GimpRGB*, i8*)** %render_func.addr, align 8
  %cmp = icmp ne void (double, double, %struct._GimpRGB*, i8*)* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_render_sub_pixel, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store i64 0, i64* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i32, i32* %x1.addr, align 4
  %2 = load i32, i32* %sub_pixel_size.addr, align 4
  %div = sdiv i32 %2, 2
  %sub = sub nsw i32 %1, %div
  %conv = sitofp i32 %sub to double
  %3 = load i32, i32* %sub_pixel_size.addr, align 4
  %conv1 = sitofp i32 %3 to double
  %div2 = fdiv double %conv, %conv1
  store double %div2, double* %dx1, align 8
  %4 = load i32, i32* %x3.addr, align 4
  %5 = load i32, i32* %sub_pixel_size.addr, align 4
  %div3 = sdiv i32 %5, 2
  %sub4 = sub nsw i32 %4, %div3
  %conv5 = sitofp i32 %sub4 to double
  %6 = load i32, i32* %sub_pixel_size.addr, align 4
  %conv6 = sitofp i32 %6 to double
  %div7 = fdiv double %conv5, %conv6
  store double %div7, double* %dx3, align 8
  %7 = load i32, i32* %y1.addr, align 4
  %8 = load i32, i32* %sub_pixel_size.addr, align 4
  %div8 = sdiv i32 %8, 2
  %sub9 = sub nsw i32 %7, %div8
  %conv10 = sitofp i32 %sub9 to double
  %9 = load i32, i32* %sub_pixel_size.addr, align 4
  %conv11 = sitofp i32 %9 to double
  %div12 = fdiv double %conv10, %conv11
  store double %div12, double* %dy1, align 8
  %10 = load i32, i32* %y3.addr, align 4
  %11 = load i32, i32* %sub_pixel_size.addr, align 4
  %div13 = sdiv i32 %11, 2
  %sub14 = sub nsw i32 %10, %div13
  %conv15 = sitofp i32 %sub14 to double
  %12 = load i32, i32* %sub_pixel_size.addr, align 4
  %conv16 = sitofp i32 %12 to double
  %div17 = fdiv double %conv15, %conv16
  store double %div17, double* %dy3, align 8
  %13 = load i32, i32* %x1.addr, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load i32, i32* %y1.addr, align 4
  %idxprom18 = sext i32 %14 to i64
  %15 = load %struct._GimpSampleType**, %struct._GimpSampleType*** %block.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpSampleType*, %struct._GimpSampleType** %15, i64 %idxprom18
  %16 = load %struct._GimpSampleType*, %struct._GimpSampleType** %arrayidx, align 8
  %arrayidx19 = getelementptr inbounds %struct._GimpSampleType, %struct._GimpSampleType* %16, i64 %idxprom
  %ready = getelementptr inbounds %struct._GimpSampleType, %struct._GimpSampleType* %arrayidx19, i32 0, i32 0
  %17 = load i8, i8* %ready, align 1
  %tobool = icmp ne i8 %17, 0
  br i1 %tobool, label %if.else.36, label %if.then.20

if.then.20:                                       ; preds = %do.end
  %18 = load i64, i64* %num_samples, align 8
  %inc = add i64 %18, 1
  store i64 %inc, i64* %num_samples, align 8
  %19 = load void (double, double, %struct._GimpRGB*, i8*)*, void (double, double, %struct._GimpRGB*, i8*)** %render_func.addr, align 8
  %20 = load i32, i32* %x.addr, align 4
  %conv21 = sitofp i32 %20 to double
  %21 = load double, double* %dx1, align 8
  %add = fadd double %conv21, %21
  %22 = load i32, i32* %y.addr, align 4
  %conv22 = sitofp i32 %22 to double
  %23 = load double, double* %dy1, align 8
  %add23 = fadd double %conv22, %23
  %arrayidx24 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %c, i32 0, i64 0
  %24 = load i8*, i8** %render_data.addr, align 8
  call void %19(double %add, double %add23, %struct._GimpRGB* %arrayidx24, i8* %24)
  %25 = load i32, i32* %x1.addr, align 4
  %idxprom25 = sext i32 %25 to i64
  %26 = load i32, i32* %y1.addr, align 4
  %idxprom26 = sext i32 %26 to i64
  %27 = load %struct._GimpSampleType**, %struct._GimpSampleType*** %block.addr, align 8
  %arrayidx27 = getelementptr inbounds %struct._GimpSampleType*, %struct._GimpSampleType** %27, i64 %idxprom26
  %28 = load %struct._GimpSampleType*, %struct._GimpSampleType** %arrayidx27, align 8
  %arrayidx28 = getelementptr inbounds %struct._GimpSampleType, %struct._GimpSampleType* %28, i64 %idxprom25
  %ready29 = getelementptr inbounds %struct._GimpSampleType, %struct._GimpSampleType* %arrayidx28, i32 0, i32 0
  store i8 1, i8* %ready29, align 1
  %29 = load i32, i32* %x1.addr, align 4
  %idxprom30 = sext i32 %29 to i64
  %30 = load i32, i32* %y1.addr, align 4
  %idxprom31 = sext i32 %30 to i64
  %31 = load %struct._GimpSampleType**, %struct._GimpSampleType*** %block.addr, align 8
  %arrayidx32 = getelementptr inbounds %struct._GimpSampleType*, %struct._GimpSampleType** %31, i64 %idxprom31
  %32 = load %struct._GimpSampleType*, %struct._GimpSampleType** %arrayidx32, align 8
  %arrayidx33 = getelementptr inbounds %struct._GimpSampleType, %struct._GimpSampleType* %32, i64 %idxprom30
  %color34 = getelementptr inbounds %struct._GimpSampleType, %struct._GimpSampleType* %arrayidx33, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %c, i32 0, i64 0
  %33 = bitcast %struct._GimpRGB* %color34 to i8*
  %34 = bitcast %struct._GimpRGB* %arrayidx35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 32, i32 8, i1 false)
  br label %if.end.43

if.else.36:                                       ; preds = %do.end
  %arrayidx37 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %c, i32 0, i64 0
  %35 = load i32, i32* %x1.addr, align 4
  %idxprom38 = sext i32 %35 to i64
  %36 = load i32, i32* %y1.addr, align 4
  %idxprom39 = sext i32 %36 to i64
  %37 = load %struct._GimpSampleType**, %struct._GimpSampleType*** %block.addr, align 8
  %arrayidx40 = getelementptr inbounds %struct._GimpSampleType*, %struct._GimpSampleType** %37, i64 %idxprom39
  %38 = load %struct._GimpSampleType*, %struct._GimpSampleType** %arrayidx40, align 8
  %arrayidx41 = getelementptr inbounds %struct._GimpSampleType, %struct._GimpSampleType* %38, i64 %idxprom38
  %color42 = getelementptr inbounds %struct._GimpSampleType, %struct._GimpSampleType* %arrayidx41, i32 0, i32 1
  %39 = bitcast %struct._GimpRGB* %arrayidx37 to i8*
  %40 = bitcast %struct._GimpRGB* %color42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 32, i32 8, i1 false)
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.36, %if.then.20
  %41 = load i32, i32* %x3.addr, align 4
  %idxprom44 = sext i32 %41 to i64
  %42 = load i32, i32* %y1.addr, align 4
  %idxprom45 = sext i32 %42 to i64
  %43 = load %struct._GimpSampleType**, %struct._GimpSampleType*** %block.addr, align 8
  %arrayidx46 = getelementptr inbounds %struct._GimpSampleType*, %struct._GimpSampleType** %43, i64 %idxprom45
  %44 = load %struct._GimpSampleType*, %struct._GimpSampleType** %arrayidx46, align 8
  %arrayidx47 = getelementptr inbounds %struct._GimpSampleType, %struct._GimpSampleType* %44, i64 %idxprom44
  %ready48 = getelementptr inbounds %struct._GimpSampleType, %struct._GimpSampleType* %arrayidx47, i32 0, i32 0
  %45 = load i8, i8* %ready48, align 1
  %tobool49 = icmp ne i8 %45, 0
  br i1 %tobool49, label %if.else.68, label %if.then.50

if.then.50:                                       ; preds = %if.end.43
  %46 = load i64, i64* %num_samples, align 8
  %inc51 = add i64 %46, 1
  store i64 %inc51, i64* %num_samples, align 8
  %47 = load void (double, double, %struct._GimpRGB*, i8*)*, void (double, double, %struct._GimpRGB*, i8*)** %render_func.addr, align 8
  %48 = load i32, i32* %x.addr, align 4
  %conv52 = sitofp i32 %48 to double
  %49 = load double, double* %dx3, align 8
  %add53 = fadd double %conv52, %49
  %50 = load i32, i32* %y.addr, align 4
  %conv54 = sitofp i32 %50 to double
  %51 = load double, double* %dy1, align 8
  %add55 = fadd double %conv54, %51
  %arrayidx56 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %c, i32 0, i64 1
  %52 = load i8*, i8** %render_data.addr, align 8
  call void %47(double %add53, double %add55, %struct._GimpRGB* %arrayidx56, i8* %52)
  %53 = load i32, i32* %x3.addr, align 4
  %idxprom57 = sext i32 %53 to i64
  %54 = load i32, i32* %y1.addr, align 4
  %idxprom58 = sext i32 %54 to i64
  %55 = load %struct._GimpSampleType**, %struct._GimpSampleType*** %block.addr, align 8
  %arrayidx59 = getelementptr inbounds %struct._GimpSampleType*, %struct._GimpSampleType** %55, i64 %idxprom58
  %56 = load %struct._GimpSampleType*, %struct._GimpSampleType** %arrayidx59, align 8
  %arrayidx60 = getelementptr inbounds %struct._GimpSampleType, %struct._GimpSampleType* %56, i64 %idxprom57
  %ready61 = getelementptr inbounds %struct._GimpSampleType, %struct._GimpSampleType* %arrayidx60, i32 0, i32 0
  store i8 1, i8* %ready61, align 1
  %57 = load i32, i32* %x3.addr, align 4
  %idxprom62 = sext i32 %57 to i64
  %58 = load i32, i32* %y1.addr, align 4
  %idxprom63 = sext i32 %58 to i64
  %59 = load %struct._GimpSampleType**, %struct._GimpSampleType*** %block.addr, align 8
  %arrayidx64 = getelementptr inbounds %struct._GimpSampleType*, %struct._GimpSampleType** %59, i64 %idxprom63
  %60 = load %struct._GimpSampleType*, %struct._GimpSampleType** %arrayidx64, align 8
  %arrayidx65 = getelementptr inbounds %struct._GimpSampleType, %struct._GimpSampleType* %60, i64 %idxprom62
  %color66 = getelementptr inbounds %struct._GimpSampleType, %struct._GimpSampleType* %arrayidx65, i32 0, i32 1
  %arrayidx67 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %c, i32 0, i64 1
  %61 = bitcast %struct._GimpRGB* %color66 to i8*
  %62 = bitcast %struct._GimpRGB* %arrayidx67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %61, i8* %62, i64 32, i32 8, i1 false)
  br label %if.end.75

if.else.68:                                       ; preds = %if.end.43
  %arrayidx69 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %c, i32 0, i64 1
  %63 = load i32, i32* %x3.addr, align 4
  %idxprom70 = sext i32 %63 to i64
  %64 = load i32, i32* %y1.addr, align 4
  %idxprom71 = sext i32 %64 to i64
  %65 = load %struct._GimpSampleType**, %struct._GimpSampleType*** %block.addr, align 8
  %arrayidx72 = getelementptr inbounds %struct._GimpSampleType*, %struct._GimpSampleType** %65, i64 %idxprom71
  %66 = load %struct._GimpSampleType*, %struct._GimpSampleType** %arrayidx72, align 8
  %arrayidx73 = getelementptr inbounds %struct._GimpSampleType, %struct._GimpSampleType* %66, i64 %idxprom70
  %color74 = getelementptr inbounds %struct._GimpSampleType, %struct._GimpSampleType* %arrayidx73, i32 0, i32 1
  %67 = bitcast %struct._GimpRGB* %arrayidx69 to i8*
  %68 = bitcast %struct._GimpRGB* %color74 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %67, i8* %68, i64 32, i32 8, i1 false)
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.68, %if.then.50
  %69 = load i32, i32* %x1.addr, align 4
  %idxprom76 = sext i32 %69 to i64
  %70 = load i32, i32* %y3.addr, align 4
  %idxprom77 = sext i32 %70 to i64
  %71 = load %struct._GimpSampleType**, %struct._GimpSampleType*** %block.addr, align 8
  %arrayidx78 = getelementptr inbounds %struct._GimpSampleType*, %struct._GimpSampleType** %71, i64 %idxprom77
  %72 = load %struct._GimpSampleType*, %struct._GimpSampleType** %arrayidx78, align 8
  %arrayidx79 = getelementptr inbounds %struct._GimpSampleType, %struct._GimpSampleType* %72, i64 %idxprom76
  %ready80 = getelementptr inbounds %struct._GimpSampleType, %struct._GimpSampleType* %arrayidx79, i32 0, i32 0
  %73 = load i8, i8* %ready80, align 1
  %tobool81 = icmp ne i8 %73, 0
  br i1 %tobool81, label %if.else.100, label %if.then.82

if.then.82:                                       ; preds = %if.end.75
  %74 = load i64, i64* %num_samples, align 8
  %inc83 = add i64 %74, 1
  store i64 %inc83, i64* %num_samples, align 8
  %75 = load void (double, double, %struct._GimpRGB*, i8*)*, void (double, double, %struct._GimpRGB*, i8*)** %render_func.addr, align 8
  %76 = load i32, i32* %x.addr, align 4
  %conv84 = sitofp i32 %76 to double
  %77 = load double, double* %dx1, align 8
  %add85 = fadd double %conv84, %77
  %78 = load i32, i32* %y.addr, align 4
  %conv86 = sitofp i32 %78 to double
  %79 = load double, double* %dy3, align 8
  %add87 = fadd double %conv86, %79
  %arrayidx88 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %c, i32 0, i64 2
  %80 = load i8*, i8** %render_data.addr, align 8
  call void %75(double %add85, double %add87, %struct._GimpRGB* %arrayidx88, i8* %80)
  %81 = load i32, i32* %x1.addr, align 4
  %idxprom89 = sext i32 %81 to i64
  %82 = load i32, i32* %y3.addr, align 4
  %idxprom90 = sext i32 %82 to i64
  %83 = load %struct._GimpSampleType**, %struct._GimpSampleType*** %block.addr, align 8
  %arrayidx91 = getelementptr inbounds %struct._GimpSampleType*, %struct._GimpSampleType** %83, i64 %idxprom90
  %84 = load %struct._GimpSampleType*, %struct._GimpSampleType** %arrayidx91, align 8
  %arrayidx92 = getelementptr inbounds %struct._GimpSampleType, %struct._GimpSampleType* %84, i64 %idxprom89
  %ready93 = getelementptr inbounds %struct._GimpSampleType, %struct._GimpSampleType* %arrayidx92, i32 0, i32 0
  store i8 1, i8* %ready93, align 1
  %85 = load i32, i32* %x1.addr, align 4
  %idxprom94 = sext i32 %85 to i64
  %86 = load i32, i32* %y3.addr, align 4
  %idxprom95 = sext i32 %86 to i64
  %87 = load %struct._GimpSampleType**, %struct._GimpSampleType*** %block.addr, align 8
  %arrayidx96 = getelementptr inbounds %struct._GimpSampleType*, %struct._GimpSampleType** %87, i64 %idxprom95
  %88 = load %struct._GimpSampleType*, %struct._GimpSampleType** %arrayidx96, align 8
  %arrayidx97 = getelementptr inbounds %struct._GimpSampleType, %struct._GimpSampleType* %88, i64 %idxprom94
  %color98 = getelementptr inbounds %struct._GimpSampleType, %struct._GimpSampleType* %arrayidx97, i32 0, i32 1
  %arrayidx99 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %c, i32 0, i64 2
  %89 = bitcast %struct._GimpRGB* %color98 to i8*
  %90 = bitcast %struct._GimpRGB* %arrayidx99 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %89, i8* %90, i64 32, i32 8, i1 false)
  br label %if.end.107

if.else.100:                                      ; preds = %if.end.75
  %arrayidx101 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %c, i32 0, i64 2
  %91 = load i32, i32* %x1.addr, align 4
  %idxprom102 = sext i32 %91 to i64
  %92 = load i32, i32* %y3.addr, align 4
  %idxprom103 = sext i32 %92 to i64
  %93 = load %struct._GimpSampleType**, %struct._GimpSampleType*** %block.addr, align 8
  %arrayidx104 = getelementptr inbounds %struct._GimpSampleType*, %struct._GimpSampleType** %93, i64 %idxprom103
  %94 = load %struct._GimpSampleType*, %struct._GimpSampleType** %arrayidx104, align 8
  %arrayidx105 = getelementptr inbounds %struct._GimpSampleType, %struct._GimpSampleType* %94, i64 %idxprom102
  %color106 = getelementptr inbounds %struct._GimpSampleType, %struct._GimpSampleType* %arrayidx105, i32 0, i32 1
  %95 = bitcast %struct._GimpRGB* %arrayidx101 to i8*
  %96 = bitcast %struct._GimpRGB* %color106 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %95, i8* %96, i64 32, i32 8, i1 false)
  br label %if.end.107

if.end.107:                                       ; preds = %if.else.100, %if.then.82
  %97 = load i32, i32* %x3.addr, align 4
  %idxprom108 = sext i32 %97 to i64
  %98 = load i32, i32* %y3.addr, align 4
  %idxprom109 = sext i32 %98 to i64
  %99 = load %struct._GimpSampleType**, %struct._GimpSampleType*** %block.addr, align 8
  %arrayidx110 = getelementptr inbounds %struct._GimpSampleType*, %struct._GimpSampleType** %99, i64 %idxprom109
  %100 = load %struct._GimpSampleType*, %struct._GimpSampleType** %arrayidx110, align 8
  %arrayidx111 = getelementptr inbounds %struct._GimpSampleType, %struct._GimpSampleType* %100, i64 %idxprom108
  %ready112 = getelementptr inbounds %struct._GimpSampleType, %struct._GimpSampleType* %arrayidx111, i32 0, i32 0
  %101 = load i8, i8* %ready112, align 1
  %tobool113 = icmp ne i8 %101, 0
  br i1 %tobool113, label %if.else.132, label %if.then.114

if.then.114:                                      ; preds = %if.end.107
  %102 = load i64, i64* %num_samples, align 8
  %inc115 = add i64 %102, 1
  store i64 %inc115, i64* %num_samples, align 8
  %103 = load void (double, double, %struct._GimpRGB*, i8*)*, void (double, double, %struct._GimpRGB*, i8*)** %render_func.addr, align 8
  %104 = load i32, i32* %x.addr, align 4
  %conv116 = sitofp i32 %104 to double
  %105 = load double, double* %dx3, align 8
  %add117 = fadd double %conv116, %105
  %106 = load i32, i32* %y.addr, align 4
  %conv118 = sitofp i32 %106 to double
  %107 = load double, double* %dy3, align 8
  %add119 = fadd double %conv118, %107
  %arrayidx120 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %c, i32 0, i64 3
  %108 = load i8*, i8** %render_data.addr, align 8
  call void %103(double %add117, double %add119, %struct._GimpRGB* %arrayidx120, i8* %108)
  %109 = load i32, i32* %x3.addr, align 4
  %idxprom121 = sext i32 %109 to i64
  %110 = load i32, i32* %y3.addr, align 4
  %idxprom122 = sext i32 %110 to i64
  %111 = load %struct._GimpSampleType**, %struct._GimpSampleType*** %block.addr, align 8
  %arrayidx123 = getelementptr inbounds %struct._GimpSampleType*, %struct._GimpSampleType** %111, i64 %idxprom122
  %112 = load %struct._GimpSampleType*, %struct._GimpSampleType** %arrayidx123, align 8
  %arrayidx124 = getelementptr inbounds %struct._GimpSampleType, %struct._GimpSampleType* %112, i64 %idxprom121
  %ready125 = getelementptr inbounds %struct._GimpSampleType, %struct._GimpSampleType* %arrayidx124, i32 0, i32 0
  store i8 1, i8* %ready125, align 1
  %113 = load i32, i32* %x3.addr, align 4
  %idxprom126 = sext i32 %113 to i64
  %114 = load i32, i32* %y3.addr, align 4
  %idxprom127 = sext i32 %114 to i64
  %115 = load %struct._GimpSampleType**, %struct._GimpSampleType*** %block.addr, align 8
  %arrayidx128 = getelementptr inbounds %struct._GimpSampleType*, %struct._GimpSampleType** %115, i64 %idxprom127
  %116 = load %struct._GimpSampleType*, %struct._GimpSampleType** %arrayidx128, align 8
  %arrayidx129 = getelementptr inbounds %struct._GimpSampleType, %struct._GimpSampleType* %116, i64 %idxprom126
  %color130 = getelementptr inbounds %struct._GimpSampleType, %struct._GimpSampleType* %arrayidx129, i32 0, i32 1
  %arrayidx131 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %c, i32 0, i64 3
  %117 = bitcast %struct._GimpRGB* %color130 to i8*
  %118 = bitcast %struct._GimpRGB* %arrayidx131 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %117, i8* %118, i64 32, i32 8, i1 false)
  br label %if.end.139

if.else.132:                                      ; preds = %if.end.107
  %arrayidx133 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %c, i32 0, i64 3
  %119 = load i32, i32* %x3.addr, align 4
  %idxprom134 = sext i32 %119 to i64
  %120 = load i32, i32* %y3.addr, align 4
  %idxprom135 = sext i32 %120 to i64
  %121 = load %struct._GimpSampleType**, %struct._GimpSampleType*** %block.addr, align 8
  %arrayidx136 = getelementptr inbounds %struct._GimpSampleType*, %struct._GimpSampleType** %121, i64 %idxprom135
  %122 = load %struct._GimpSampleType*, %struct._GimpSampleType** %arrayidx136, align 8
  %arrayidx137 = getelementptr inbounds %struct._GimpSampleType, %struct._GimpSampleType* %122, i64 %idxprom134
  %color138 = getelementptr inbounds %struct._GimpSampleType, %struct._GimpSampleType* %arrayidx137, i32 0, i32 1
  %123 = bitcast %struct._GimpRGB* %arrayidx133 to i8*
  %124 = bitcast %struct._GimpRGB* %color138 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %123, i8* %124, i64 32, i32 8, i1 false)
  br label %if.end.139

if.end.139:                                       ; preds = %if.else.132, %if.then.114
  %125 = load i32, i32* %depth.addr, align 4
  %126 = load i32, i32* %max_depth.addr, align 4
  %cmp140 = icmp sle i32 %125, %126
  br i1 %cmp140, label %if.then.142, label %if.end.198

if.then.142:                                      ; preds = %if.end.139
  %arrayidx143 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %c, i32 0, i64 0
  %arrayidx144 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %c, i32 0, i64 1
  %call = call double @gimp_rgba_distance(%struct._GimpRGB* %arrayidx143, %struct._GimpRGB* %arrayidx144)
  %127 = load double, double* %threshold.addr, align 8
  %cmp145 = fcmp oge double %call, %127
  br i1 %cmp145, label %if.then.176, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.142
  %arrayidx147 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %c, i32 0, i64 0
  %arrayidx148 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %c, i32 0, i64 2
  %call149 = call double @gimp_rgba_distance(%struct._GimpRGB* %arrayidx147, %struct._GimpRGB* %arrayidx148)
  %128 = load double, double* %threshold.addr, align 8
  %cmp150 = fcmp oge double %call149, %128
  br i1 %cmp150, label %if.then.176, label %lor.lhs.false.152

lor.lhs.false.152:                                ; preds = %lor.lhs.false
  %arrayidx153 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %c, i32 0, i64 0
  %arrayidx154 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %c, i32 0, i64 3
  %call155 = call double @gimp_rgba_distance(%struct._GimpRGB* %arrayidx153, %struct._GimpRGB* %arrayidx154)
  %129 = load double, double* %threshold.addr, align 8
  %cmp156 = fcmp oge double %call155, %129
  br i1 %cmp156, label %if.then.176, label %lor.lhs.false.158

lor.lhs.false.158:                                ; preds = %lor.lhs.false.152
  %arrayidx159 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %c, i32 0, i64 1
  %arrayidx160 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %c, i32 0, i64 2
  %call161 = call double @gimp_rgba_distance(%struct._GimpRGB* %arrayidx159, %struct._GimpRGB* %arrayidx160)
  %130 = load double, double* %threshold.addr, align 8
  %cmp162 = fcmp oge double %call161, %130
  br i1 %cmp162, label %if.then.176, label %lor.lhs.false.164

lor.lhs.false.164:                                ; preds = %lor.lhs.false.158
  %arrayidx165 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %c, i32 0, i64 1
  %arrayidx166 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %c, i32 0, i64 3
  %call167 = call double @gimp_rgba_distance(%struct._GimpRGB* %arrayidx165, %struct._GimpRGB* %arrayidx166)
  %131 = load double, double* %threshold.addr, align 8
  %cmp168 = fcmp oge double %call167, %131
  br i1 %cmp168, label %if.then.176, label %lor.lhs.false.170

lor.lhs.false.170:                                ; preds = %lor.lhs.false.164
  %arrayidx171 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %c, i32 0, i64 2
  %arrayidx172 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %c, i32 0, i64 3
  %call173 = call double @gimp_rgba_distance(%struct._GimpRGB* %arrayidx171, %struct._GimpRGB* %arrayidx172)
  %132 = load double, double* %threshold.addr, align 8
  %cmp174 = fcmp oge double %call173, %132
  br i1 %cmp174, label %if.then.176, label %if.end.197

if.then.176:                                      ; preds = %lor.lhs.false.170, %lor.lhs.false.164, %lor.lhs.false.158, %lor.lhs.false.152, %lor.lhs.false, %if.then.142
  %133 = load i32, i32* %x1.addr, align 4
  %134 = load i32, i32* %x3.addr, align 4
  %add177 = add nsw i32 %133, %134
  %div178 = sdiv i32 %add177, 2
  store i32 %div178, i32* %x2, align 4
  %135 = load i32, i32* %y1.addr, align 4
  %136 = load i32, i32* %y3.addr, align 4
  %add179 = add nsw i32 %135, %136
  %div180 = sdiv i32 %add179, 2
  store i32 %div180, i32* %y2, align 4
  %137 = load i32, i32* %max_depth.addr, align 4
  %138 = load i32, i32* %depth.addr, align 4
  %add181 = add nsw i32 %138, 1
  %139 = load %struct._GimpSampleType**, %struct._GimpSampleType*** %block.addr, align 8
  %140 = load i32, i32* %x.addr, align 4
  %141 = load i32, i32* %y.addr, align 4
  %142 = load i32, i32* %x1.addr, align 4
  %143 = load i32, i32* %y1.addr, align 4
  %144 = load i32, i32* %x2, align 4
  %145 = load i32, i32* %y2, align 4
  %146 = load double, double* %threshold.addr, align 8
  %147 = load i32, i32* %sub_pixel_size.addr, align 4
  %arrayidx182 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %c, i32 0, i64 0
  %148 = load void (double, double, %struct._GimpRGB*, i8*)*, void (double, double, %struct._GimpRGB*, i8*)** %render_func.addr, align 8
  %149 = load i8*, i8** %render_data.addr, align 8
  %call183 = call i64 @gimp_render_sub_pixel(i32 %137, i32 %add181, %struct._GimpSampleType** %139, i32 %140, i32 %141, i32 %142, i32 %143, i32 %144, i32 %145, double %146, i32 %147, %struct._GimpRGB* %arrayidx182, void (double, double, %struct._GimpRGB*, i8*)* %148, i8* %149)
  %150 = load i64, i64* %num_samples, align 8
  %add184 = add i64 %150, %call183
  store i64 %add184, i64* %num_samples, align 8
  %151 = load i32, i32* %max_depth.addr, align 4
  %152 = load i32, i32* %depth.addr, align 4
  %add185 = add nsw i32 %152, 1
  %153 = load %struct._GimpSampleType**, %struct._GimpSampleType*** %block.addr, align 8
  %154 = load i32, i32* %x.addr, align 4
  %155 = load i32, i32* %y.addr, align 4
  %156 = load i32, i32* %x2, align 4
  %157 = load i32, i32* %y1.addr, align 4
  %158 = load i32, i32* %x3.addr, align 4
  %159 = load i32, i32* %y2, align 4
  %160 = load double, double* %threshold.addr, align 8
  %161 = load i32, i32* %sub_pixel_size.addr, align 4
  %arrayidx186 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %c, i32 0, i64 1
  %162 = load void (double, double, %struct._GimpRGB*, i8*)*, void (double, double, %struct._GimpRGB*, i8*)** %render_func.addr, align 8
  %163 = load i8*, i8** %render_data.addr, align 8
  %call187 = call i64 @gimp_render_sub_pixel(i32 %151, i32 %add185, %struct._GimpSampleType** %153, i32 %154, i32 %155, i32 %156, i32 %157, i32 %158, i32 %159, double %160, i32 %161, %struct._GimpRGB* %arrayidx186, void (double, double, %struct._GimpRGB*, i8*)* %162, i8* %163)
  %164 = load i64, i64* %num_samples, align 8
  %add188 = add i64 %164, %call187
  store i64 %add188, i64* %num_samples, align 8
  %165 = load i32, i32* %max_depth.addr, align 4
  %166 = load i32, i32* %depth.addr, align 4
  %add189 = add nsw i32 %166, 1
  %167 = load %struct._GimpSampleType**, %struct._GimpSampleType*** %block.addr, align 8
  %168 = load i32, i32* %x.addr, align 4
  %169 = load i32, i32* %y.addr, align 4
  %170 = load i32, i32* %x1.addr, align 4
  %171 = load i32, i32* %y2, align 4
  %172 = load i32, i32* %x2, align 4
  %173 = load i32, i32* %y3.addr, align 4
  %174 = load double, double* %threshold.addr, align 8
  %175 = load i32, i32* %sub_pixel_size.addr, align 4
  %arrayidx190 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %c, i32 0, i64 2
  %176 = load void (double, double, %struct._GimpRGB*, i8*)*, void (double, double, %struct._GimpRGB*, i8*)** %render_func.addr, align 8
  %177 = load i8*, i8** %render_data.addr, align 8
  %call191 = call i64 @gimp_render_sub_pixel(i32 %165, i32 %add189, %struct._GimpSampleType** %167, i32 %168, i32 %169, i32 %170, i32 %171, i32 %172, i32 %173, double %174, i32 %175, %struct._GimpRGB* %arrayidx190, void (double, double, %struct._GimpRGB*, i8*)* %176, i8* %177)
  %178 = load i64, i64* %num_samples, align 8
  %add192 = add i64 %178, %call191
  store i64 %add192, i64* %num_samples, align 8
  %179 = load i32, i32* %max_depth.addr, align 4
  %180 = load i32, i32* %depth.addr, align 4
  %add193 = add nsw i32 %180, 1
  %181 = load %struct._GimpSampleType**, %struct._GimpSampleType*** %block.addr, align 8
  %182 = load i32, i32* %x.addr, align 4
  %183 = load i32, i32* %y.addr, align 4
  %184 = load i32, i32* %x2, align 4
  %185 = load i32, i32* %y2, align 4
  %186 = load i32, i32* %x3.addr, align 4
  %187 = load i32, i32* %y3.addr, align 4
  %188 = load double, double* %threshold.addr, align 8
  %189 = load i32, i32* %sub_pixel_size.addr, align 4
  %arrayidx194 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %c, i32 0, i64 3
  %190 = load void (double, double, %struct._GimpRGB*, i8*)*, void (double, double, %struct._GimpRGB*, i8*)** %render_func.addr, align 8
  %191 = load i8*, i8** %render_data.addr, align 8
  %call195 = call i64 @gimp_render_sub_pixel(i32 %179, i32 %add193, %struct._GimpSampleType** %181, i32 %182, i32 %183, i32 %184, i32 %185, i32 %186, i32 %187, double %188, i32 %189, %struct._GimpRGB* %arrayidx194, void (double, double, %struct._GimpRGB*, i8*)* %190, i8* %191)
  %192 = load i64, i64* %num_samples, align 8
  %add196 = add i64 %192, %call195
  store i64 %add196, i64* %num_samples, align 8
  br label %if.end.197

if.end.197:                                       ; preds = %if.then.176, %lor.lhs.false.170
  br label %if.end.198

if.end.198:                                       ; preds = %if.end.197, %if.end.139
  %arrayidx199 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %c, i32 0, i64 0
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx199, i32 0, i32 3
  %193 = load double, double* %a, align 8
  %cmp200 = fcmp oeq double %193, 0.000000e+00
  br i1 %cmp200, label %if.then.217, label %lor.lhs.false.202

lor.lhs.false.202:                                ; preds = %if.end.198
  %arrayidx203 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %c, i32 0, i64 1
  %a204 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx203, i32 0, i32 3
  %194 = load double, double* %a204, align 8
  %cmp205 = fcmp oeq double %194, 0.000000e+00
  br i1 %cmp205, label %if.then.217, label %lor.lhs.false.207

lor.lhs.false.207:                                ; preds = %lor.lhs.false.202
  %arrayidx208 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %c, i32 0, i64 2
  %a209 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx208, i32 0, i32 3
  %195 = load double, double* %a209, align 8
  %cmp210 = fcmp oeq double %195, 0.000000e+00
  br i1 %cmp210, label %if.then.217, label %lor.lhs.false.212

lor.lhs.false.212:                                ; preds = %lor.lhs.false.207
  %arrayidx213 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %c, i32 0, i64 3
  %a214 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx213, i32 0, i32 3
  %196 = load double, double* %a214, align 8
  %cmp215 = fcmp oeq double %196, 0.000000e+00
  br i1 %cmp215, label %if.then.217, label %if.else.249

if.then.217:                                      ; preds = %lor.lhs.false.212, %lor.lhs.false.207, %lor.lhs.false.202, %if.end.198
  call void @gimp_rgb_set(%struct._GimpRGB* %tmpcol, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  store double 2.000000e+00, double* %weight, align 8
  store i32 0, i32* %cnt, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.217
  %197 = load i32, i32* %cnt, align 4
  %cmp218 = icmp slt i32 %197, 4
  br i1 %cmp218, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %198 = load i32, i32* %cnt, align 4
  %idxprom220 = sext i32 %198 to i64
  %arrayidx221 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %c, i32 0, i64 %idxprom220
  %a222 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx221, i32 0, i32 3
  %199 = load double, double* %a222, align 8
  %cmp223 = fcmp une double %199, 0.000000e+00
  br i1 %cmp223, label %if.then.225, label %if.end.239

if.then.225:                                      ; preds = %for.body
  %200 = load i32, i32* %cnt, align 4
  %idxprom226 = sext i32 %200 to i64
  %arrayidx227 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %c, i32 0, i64 %idxprom226
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx227, i32 0, i32 0
  %201 = load double, double* %r, align 8
  %r228 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %tmpcol, i32 0, i32 0
  %202 = load double, double* %r228, align 8
  %add229 = fadd double %202, %201
  store double %add229, double* %r228, align 8
  %203 = load i32, i32* %cnt, align 4
  %idxprom230 = sext i32 %203 to i64
  %arrayidx231 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %c, i32 0, i64 %idxprom230
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx231, i32 0, i32 1
  %204 = load double, double* %g, align 8
  %g232 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %tmpcol, i32 0, i32 1
  %205 = load double, double* %g232, align 8
  %add233 = fadd double %205, %204
  store double %add233, double* %g232, align 8
  %206 = load i32, i32* %cnt, align 4
  %idxprom234 = sext i32 %206 to i64
  %arrayidx235 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %c, i32 0, i64 %idxprom234
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx235, i32 0, i32 2
  %207 = load double, double* %b, align 8
  %b236 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %tmpcol, i32 0, i32 2
  %208 = load double, double* %b236, align 8
  %add237 = fadd double %208, %207
  store double %add237, double* %b236, align 8
  %209 = load double, double* %weight, align 8
  %div238 = fdiv double %209, 2.000000e+00
  store double %div238, double* %weight, align 8
  br label %if.end.239

if.end.239:                                       ; preds = %if.then.225, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.239
  %210 = load i32, i32* %cnt, align 4
  %inc240 = add nsw i32 %210, 1
  store i32 %inc240, i32* %cnt, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %211 = load double, double* %weight, align 8
  %r241 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %tmpcol, i32 0, i32 0
  %212 = load double, double* %r241, align 8
  %mul = fmul double %211, %212
  %213 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %r242 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %213, i32 0, i32 0
  store double %mul, double* %r242, align 8
  %214 = load double, double* %weight, align 8
  %g243 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %tmpcol, i32 0, i32 1
  %215 = load double, double* %g243, align 8
  %mul244 = fmul double %214, %215
  %216 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %g245 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %216, i32 0, i32 1
  store double %mul244, double* %g245, align 8
  %217 = load double, double* %weight, align 8
  %b246 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %tmpcol, i32 0, i32 2
  %218 = load double, double* %b246, align 8
  %mul247 = fmul double %217, %218
  %219 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %b248 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %219, i32 0, i32 2
  store double %mul247, double* %b248, align 8
  br label %if.end.289

if.else.249:                                      ; preds = %lor.lhs.false.212
  %arrayidx250 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %c, i32 0, i64 0
  %r251 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx250, i32 0, i32 0
  %220 = load double, double* %r251, align 8
  %arrayidx252 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %c, i32 0, i64 1
  %r253 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx252, i32 0, i32 0
  %221 = load double, double* %r253, align 8
  %add254 = fadd double %220, %221
  %arrayidx255 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %c, i32 0, i64 2
  %r256 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx255, i32 0, i32 0
  %222 = load double, double* %r256, align 8
  %add257 = fadd double %add254, %222
  %arrayidx258 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %c, i32 0, i64 3
  %r259 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx258, i32 0, i32 0
  %223 = load double, double* %r259, align 8
  %add260 = fadd double %add257, %223
  %mul261 = fmul double 2.500000e-01, %add260
  %224 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %r262 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %224, i32 0, i32 0
  store double %mul261, double* %r262, align 8
  %arrayidx263 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %c, i32 0, i64 0
  %g264 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx263, i32 0, i32 1
  %225 = load double, double* %g264, align 8
  %arrayidx265 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %c, i32 0, i64 1
  %g266 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx265, i32 0, i32 1
  %226 = load double, double* %g266, align 8
  %add267 = fadd double %225, %226
  %arrayidx268 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %c, i32 0, i64 2
  %g269 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx268, i32 0, i32 1
  %227 = load double, double* %g269, align 8
  %add270 = fadd double %add267, %227
  %arrayidx271 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %c, i32 0, i64 3
  %g272 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx271, i32 0, i32 1
  %228 = load double, double* %g272, align 8
  %add273 = fadd double %add270, %228
  %mul274 = fmul double 2.500000e-01, %add273
  %229 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %g275 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %229, i32 0, i32 1
  store double %mul274, double* %g275, align 8
  %arrayidx276 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %c, i32 0, i64 0
  %b277 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx276, i32 0, i32 2
  %230 = load double, double* %b277, align 8
  %arrayidx278 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %c, i32 0, i64 1
  %b279 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx278, i32 0, i32 2
  %231 = load double, double* %b279, align 8
  %add280 = fadd double %230, %231
  %arrayidx281 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %c, i32 0, i64 2
  %b282 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx281, i32 0, i32 2
  %232 = load double, double* %b282, align 8
  %add283 = fadd double %add280, %232
  %arrayidx284 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %c, i32 0, i64 3
  %b285 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx284, i32 0, i32 2
  %233 = load double, double* %b285, align 8
  %add286 = fadd double %add283, %233
  %mul287 = fmul double 2.500000e-01, %add286
  %234 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %b288 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %234, i32 0, i32 2
  store double %mul287, double* %b288, align 8
  br label %if.end.289

if.end.289:                                       ; preds = %if.else.249, %for.end
  %arrayidx290 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %c, i32 0, i64 0
  %a291 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx290, i32 0, i32 3
  %235 = load double, double* %a291, align 8
  %arrayidx292 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %c, i32 0, i64 1
  %a293 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx292, i32 0, i32 3
  %236 = load double, double* %a293, align 8
  %add294 = fadd double %235, %236
  %arrayidx295 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %c, i32 0, i64 2
  %a296 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx295, i32 0, i32 3
  %237 = load double, double* %a296, align 8
  %add297 = fadd double %add294, %237
  %arrayidx298 = getelementptr inbounds [4 x %struct._GimpRGB], [4 x %struct._GimpRGB]* %c, i32 0, i64 3
  %a299 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx298, i32 0, i32 3
  %238 = load double, double* %a299, align 8
  %add300 = fadd double %add297, %238
  %mul301 = fmul double 2.500000e-01, %add300
  %239 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %a302 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %239, i32 0, i32 3
  store double %mul301, double* %a302, align 8
  %240 = load i64, i64* %num_samples, align 8
  store i64 %240, i64* %retval
  br label %return

return:                                           ; preds = %if.end.289, %if.else
  %241 = load i64, i64* %retval
  ret i64 %241
}

declare void @g_free(i8*) #1

declare double @gimp_rgba_distance(%struct._GimpRGB*, %struct._GimpRGB*) #1

declare void @gimp_rgb_set(%struct._GimpRGB*, double, double, double) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
