; ModuleID = './app/base/gimphistogram.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpHistogram = type { i32, i32, %struct.GStaticMutex, [16 x i8], [16 x double*] }
%struct.GStaticMutex = type { %union._GMutex*, %union.pthread_mutex_t }
%union._GMutex = type { i8* }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i32, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%struct._PixelRegion = type { i8*, %struct._TileManager*, %struct._Tile*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._TileManager = type opaque
%struct._Tile = type opaque

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Base\00", align 1
@__func__.gimp_histogram_ref = private unnamed_addr constant [19 x i8] c"gimp_histogram_ref\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"histogram != NULL\00", align 1
@__func__.gimp_histogram_unref = private unnamed_addr constant [21 x i8] c"gimp_histogram_unref\00", align 1
@__func__.gimp_histogram_duplicate = private unnamed_addr constant [25 x i8] c"gimp_histogram_duplicate\00", align 1
@__func__.gimp_histogram_calculate = private unnamed_addr constant [25 x i8] c"gimp_histogram_calculate\00", align 1
@__func__.gimp_histogram_get_maximum = private unnamed_addr constant [27 x i8] c"gimp_histogram_get_maximum\00", align 1
@__func__.gimp_histogram_get_value = private unnamed_addr constant [25 x i8] c"gimp_histogram_get_value\00", align 1
@__func__.gimp_histogram_get_channel = private unnamed_addr constant [27 x i8] c"gimp_histogram_get_channel\00", align 1
@__func__.gimp_histogram_n_channels = private unnamed_addr constant [26 x i8] c"gimp_histogram_n_channels\00", align 1
@__func__.gimp_histogram_get_count = private unnamed_addr constant [25 x i8] c"gimp_histogram_get_count\00", align 1
@__func__.gimp_histogram_get_mean = private unnamed_addr constant [24 x i8] c"gimp_histogram_get_mean\00", align 1
@__func__.gimp_histogram_get_median = private unnamed_addr constant [26 x i8] c"gimp_histogram_get_median\00", align 1
@__func__.gimp_histogram_get_threshold = private unnamed_addr constant [29 x i8] c"gimp_histogram_get_threshold\00", align 1
@__func__.gimp_histogram_get_std_dev = private unnamed_addr constant [27 x i8] c"gimp_histogram_get_std_dev\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GimpHistogram* @gimp_histogram_new() #0 {
entry:
  %histogram = alloca %struct._GimpHistogram*, align 8
  %call = call noalias i8* @g_slice_alloc0(i64 200)
  %0 = bitcast i8* %call to %struct._GimpHistogram*
  store %struct._GimpHistogram* %0, %struct._GimpHistogram** %histogram, align 8
  %1 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram, align 8
  %ref_count = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %1, i32 0, i32 0
  store i32 1, i32* %ref_count, align 4
  %2 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram, align 8
  %mutex = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %2, i32 0, i32 2
  call void @g_static_mutex_init(%struct.GStaticMutex* %mutex)
  %3 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram, align 8
  ret %struct._GimpHistogram* %3
}

declare noalias i8* @g_slice_alloc0(i64) #1

declare void @g_static_mutex_init(%struct.GStaticMutex*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpHistogram* @gimp_histogram_ref(%struct._GimpHistogram* %histogram) #0 {
entry:
  %retval = alloca %struct._GimpHistogram*, align 8
  %histogram.addr = alloca %struct._GimpHistogram*, align 8
  store %struct._GimpHistogram* %histogram, %struct._GimpHistogram** %histogram.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %cmp = icmp ne %struct._GimpHistogram* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_histogram_ref, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpHistogram* null, %struct._GimpHistogram** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %ref_count = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %1, i32 0, i32 0
  %2 = load i32, i32* %ref_count, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %ref_count, align 4
  %3 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  store %struct._GimpHistogram* %3, %struct._GimpHistogram** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %4 = load %struct._GimpHistogram*, %struct._GimpHistogram** %retval
  ret %struct._GimpHistogram* %4
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_histogram_unref(%struct._GimpHistogram* %histogram) #0 {
entry:
  %histogram.addr = alloca %struct._GimpHistogram*, align 8
  store %struct._GimpHistogram* %histogram, %struct._GimpHistogram** %histogram.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %cmp = icmp ne %struct._GimpHistogram* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_histogram_unref, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.6

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %ref_count = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %1, i32 0, i32 0
  %2 = load i32, i32* %ref_count, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* %ref_count, align 4
  %3 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %ref_count1 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %3, i32 0, i32 0
  %4 = load i32, i32* %ref_count1, align 4
  %cmp2 = icmp eq i32 %4, 0
  br i1 %cmp2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %do.end
  %5 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  call void @gimp_histogram_free_values(%struct._GimpHistogram* %5)
  br label %do.body.4

do.body.4:                                        ; preds = %if.then.3
  %6 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %7 = bitcast %struct._GimpHistogram* %6 to i8*
  call void @g_slice_free1(i64 200, i8* %7)
  br label %do.end.5

do.end.5:                                         ; preds = %do.body.4
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %do.end.5, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_histogram_free_values(%struct._GimpHistogram* %histogram) #0 {
entry:
  %histogram.addr = alloca %struct._GimpHistogram*, align 8
  %i = alloca i32, align 4
  store %struct._GimpHistogram* %histogram, %struct._GimpHistogram** %histogram.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %values = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %2, i32 0, i32 4
  %arrayidx = getelementptr inbounds [16 x double*], [16 x double*]* %values, i32 0, i64 %idxprom
  %3 = load double*, double** %arrayidx, align 8
  %tobool = icmp ne double* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %values2 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %5, i32 0, i32 4
  %arrayidx3 = getelementptr inbounds [16 x double*], [16 x double*]* %values2, i32 0, i64 %idxprom1
  %6 = load double*, double** %arrayidx3, align 8
  %7 = bitcast double* %6 to i8*
  call void @g_free(i8* %7)
  %8 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %8 to i64
  %9 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %values5 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %9, i32 0, i32 4
  %arrayidx6 = getelementptr inbounds [16 x double*], [16 x double*]* %values5, i32 0, i64 %idxprom4
  store double* null, double** %arrayidx6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %n_channels = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %11, i32 0, i32 1
  store i32 0, i32* %n_channels, align 4
  ret void
}

declare void @g_slice_free1(i64, i8*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpHistogram* @gimp_histogram_duplicate(%struct._GimpHistogram* %histogram) #0 {
entry:
  %retval = alloca %struct._GimpHistogram*, align 8
  %histogram.addr = alloca %struct._GimpHistogram*, align 8
  %dup = alloca %struct._GimpHistogram*, align 8
  store %struct._GimpHistogram* %histogram, %struct._GimpHistogram** %histogram.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %cmp = icmp ne %struct._GimpHistogram* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_histogram_duplicate, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpHistogram* null, %struct._GimpHistogram** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %call = call %struct._GimpHistogram* @gimp_histogram_new()
  store %struct._GimpHistogram* %call, %struct._GimpHistogram** %dup, align 8
  %1 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %mutex = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %1, i32 0, i32 2
  %call1 = call %union._GMutex* @g_static_mutex_get_mutex_impl(%struct.GStaticMutex* %mutex)
  call void @g_mutex_lock(%union._GMutex* %call1)
  %2 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %n_channels = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %2, i32 0, i32 1
  %3 = load i32, i32* %n_channels, align 4
  %4 = load %struct._GimpHistogram*, %struct._GimpHistogram** %dup, align 8
  %n_channels2 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %4, i32 0, i32 1
  store i32 %3, i32* %n_channels2, align 4
  %5 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %values = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %5, i32 0, i32 4
  %arrayidx = getelementptr inbounds [16 x double*], [16 x double*]* %values, i32 0, i64 0
  %6 = load double*, double** %arrayidx, align 8
  %7 = bitcast double* %6 to i8*
  %8 = load %struct._GimpHistogram*, %struct._GimpHistogram** %dup, align 8
  %n_channels3 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %8, i32 0, i32 1
  %9 = load i32, i32* %n_channels3, align 4
  %conv = sext i32 %9 to i64
  %mul = mul i64 8, %conv
  %mul4 = mul i64 %mul, 256
  %conv5 = trunc i64 %mul4 to i32
  %call6 = call noalias i8* @g_memdup(i8* %7, i32 %conv5)
  %10 = bitcast i8* %call6 to double*
  %11 = load %struct._GimpHistogram*, %struct._GimpHistogram** %dup, align 8
  %values7 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %11, i32 0, i32 4
  %arrayidx8 = getelementptr inbounds [16 x double*], [16 x double*]* %values7, i32 0, i64 0
  store double* %10, double** %arrayidx8, align 8
  %12 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %mutex9 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %12, i32 0, i32 2
  %call10 = call %union._GMutex* @g_static_mutex_get_mutex_impl(%struct.GStaticMutex* %mutex9)
  call void @g_mutex_unlock(%union._GMutex* %call10)
  %13 = load %struct._GimpHistogram*, %struct._GimpHistogram** %dup, align 8
  store %struct._GimpHistogram* %13, %struct._GimpHistogram** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %14 = load %struct._GimpHistogram*, %struct._GimpHistogram** %retval
  ret %struct._GimpHistogram* %14
}

declare void @g_mutex_lock(%union._GMutex*) #1

declare %union._GMutex* @g_static_mutex_get_mutex_impl(%struct.GStaticMutex*) #1

declare noalias i8* @g_memdup(i8*, i32) #1

declare void @g_mutex_unlock(%union._GMutex*) #1

; Function Attrs: nounwind uwtable
define void @gimp_histogram_calculate(%struct._GimpHistogram* %histogram, %struct._PixelRegion* %region, %struct._PixelRegion* %mask) #0 {
entry:
  %histogram.addr = alloca %struct._GimpHistogram*, align 8
  %region.addr = alloca %struct._PixelRegion*, align 8
  %mask.addr = alloca %struct._PixelRegion*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct._GimpHistogram* %histogram, %struct._GimpHistogram** %histogram.addr, align 8
  store %struct._PixelRegion* %region, %struct._PixelRegion** %region.addr, align 8
  store %struct._PixelRegion* %mask, %struct._PixelRegion** %mask.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %cmp = icmp ne %struct._GimpHistogram* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_histogram_calculate, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  br label %for.end.41

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._PixelRegion*, %struct._PixelRegion** %region.addr, align 8
  %tobool = icmp ne %struct._PixelRegion* %1, null
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %do.end
  %2 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  call void @gimp_histogram_free_values(%struct._GimpHistogram* %2)
  br label %for.end.41

if.end.2:                                         ; preds = %do.end
  %3 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %4 = load %struct._PixelRegion*, %struct._PixelRegion** %region.addr, align 8
  %bytes = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %4, i32 0, i32 10
  %5 = load i32, i32* %bytes, align 4
  call void @gimp_histogram_alloc_values(%struct._GimpHistogram* %3, i32 %5)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.2
  %6 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %6, 16
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %values = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %8, i32 0, i32 4
  %arrayidx = getelementptr inbounds [16 x double*], [16 x double*]* %values, i32 0, i64 %idxprom
  %9 = load double*, double** %arrayidx, align 8
  %tobool4 = icmp ne double* %9, null
  br i1 %tobool4, label %if.then.5, label %if.end.10

if.then.5:                                        ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %values7 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %11, i32 0, i32 4
  %arrayidx8 = getelementptr inbounds [16 x double*], [16 x double*]* %values7, i32 0, i64 %idxprom6
  %12 = load double*, double** %arrayidx8, align 8
  %13 = bitcast double* %12 to i8*
  %14 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %n_channels = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %14, i32 0, i32 1
  %15 = load i32, i32* %n_channels, align 4
  %mul = mul nsw i32 %15, 256
  %conv = sext i32 %mul to i64
  %mul9 = mul i64 %conv, 8
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 %mul9, i32 8, i1 false)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.5, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.10
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %18 = bitcast %struct._GimpHistogram* %17 to i8*
  %19 = load %struct._PixelRegion*, %struct._PixelRegion** %region.addr, align 8
  %20 = load %struct._PixelRegion*, %struct._PixelRegion** %mask.addr, align 8
  call void (void ()*, i8*, i32, ...) @pixel_regions_process_parallel(void ()* bitcast (void (%struct._GimpHistogram*, %struct._PixelRegion*, %struct._PixelRegion*)* @gimp_histogram_calculate_sub_region to void ()*), i8* %18, i32 2, %struct._PixelRegion* %19, %struct._PixelRegion* %20)
  store i32 1, i32* %i, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.39, %for.end
  %21 = load i32, i32* %i, align 4
  %cmp12 = icmp slt i32 %21, 16
  br i1 %cmp12, label %for.body.14, label %for.end.41

for.body.14:                                      ; preds = %for.cond.11
  %22 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %22 to i64
  %23 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %values16 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %23, i32 0, i32 4
  %arrayidx17 = getelementptr inbounds [16 x double*], [16 x double*]* %values16, i32 0, i64 %idxprom15
  %24 = load double*, double** %arrayidx17, align 8
  %tobool18 = icmp ne double* %24, null
  br i1 %tobool18, label %if.then.19, label %if.end.38

if.then.19:                                       ; preds = %for.body.14
  store i32 0, i32* %j, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.35, %if.then.19
  %25 = load i32, i32* %j, align 4
  %26 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %n_channels21 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %26, i32 0, i32 1
  %27 = load i32, i32* %n_channels21, align 4
  %mul22 = mul nsw i32 %27, 256
  %cmp23 = icmp slt i32 %25, %mul22
  br i1 %cmp23, label %for.body.25, label %for.end.37

for.body.25:                                      ; preds = %for.cond.20
  %28 = load i32, i32* %j, align 4
  %idxprom26 = sext i32 %28 to i64
  %29 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %29 to i64
  %30 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %values28 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %30, i32 0, i32 4
  %arrayidx29 = getelementptr inbounds [16 x double*], [16 x double*]* %values28, i32 0, i64 %idxprom27
  %31 = load double*, double** %arrayidx29, align 8
  %arrayidx30 = getelementptr inbounds double, double* %31, i64 %idxprom26
  %32 = load double, double* %arrayidx30, align 8
  %33 = load i32, i32* %j, align 4
  %idxprom31 = sext i32 %33 to i64
  %34 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %values32 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %34, i32 0, i32 4
  %arrayidx33 = getelementptr inbounds [16 x double*], [16 x double*]* %values32, i32 0, i64 0
  %35 = load double*, double** %arrayidx33, align 8
  %arrayidx34 = getelementptr inbounds double, double* %35, i64 %idxprom31
  %36 = load double, double* %arrayidx34, align 8
  %add = fadd double %36, %32
  store double %add, double* %arrayidx34, align 8
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.body.25
  %37 = load i32, i32* %j, align 4
  %inc36 = add nsw i32 %37, 1
  store i32 %inc36, i32* %j, align 4
  br label %for.cond.20

for.end.37:                                       ; preds = %for.cond.20
  br label %if.end.38

if.end.38:                                        ; preds = %for.end.37, %for.body.14
  br label %for.inc.39

for.inc.39:                                       ; preds = %if.end.38
  %38 = load i32, i32* %i, align 4
  %inc40 = add nsw i32 %38, 1
  store i32 %inc40, i32* %i, align 4
  br label %for.cond.11

for.end.41:                                       ; preds = %if.else, %if.then.1, %for.cond.11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_histogram_alloc_values(%struct._GimpHistogram* %histogram, i32 %bytes) #0 {
entry:
  %histogram.addr = alloca %struct._GimpHistogram*, align 8
  %bytes.addr = alloca i32, align 4
  store %struct._GimpHistogram* %histogram, %struct._GimpHistogram** %histogram.addr, align 8
  store i32 %bytes, i32* %bytes.addr, align 4
  %0 = load i32, i32* %bytes.addr, align 4
  %add = add nsw i32 %0, 1
  %1 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %n_channels = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %1, i32 0, i32 1
  %2 = load i32, i32* %n_channels, align 4
  %cmp = icmp ne i32 %add, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  call void @gimp_histogram_free_values(%struct._GimpHistogram* %3)
  %4 = load i32, i32* %bytes.addr, align 4
  %add1 = add nsw i32 %4, 1
  %5 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %n_channels2 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %5, i32 0, i32 1
  store i32 %add1, i32* %n_channels2, align 4
  %6 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %n_channels3 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %6, i32 0, i32 1
  %7 = load i32, i32* %n_channels3, align 4
  %mul = mul nsw i32 %7, 256
  %conv = sext i32 %mul to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv, i64 8)
  %8 = bitcast i8* %call to double*
  %9 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %values = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %9, i32 0, i32 4
  %arrayidx = getelementptr inbounds [16 x double*], [16 x double*]* %values, i32 0, i64 0
  store double* %8, double** %arrayidx, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare void @pixel_regions_process_parallel(void ()*, i8*, i32, ...) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_histogram_calculate_sub_region(%struct._GimpHistogram* %histogram, %struct._PixelRegion* %region, %struct._PixelRegion* %mask) #0 {
entry:
  %histogram.addr = alloca %struct._GimpHistogram*, align 8
  %region.addr = alloca %struct._PixelRegion*, align 8
  %mask.addr = alloca %struct._PixelRegion*, align 8
  %src = alloca i8*, align 8
  %msrc = alloca i8*, align 8
  %m = alloca i8*, align 8
  %s = alloca i8*, align 8
  %values = alloca double*, align 8
  %h = alloca i32, align 4
  %w = alloca i32, align 4
  %max = alloca i32, align 4
  %slot = alloca i32, align 4
  %masked = alloca double, align 8
  %masked54 = alloca double, align 8
  %weight = alloca double, align 8
  %masked96 = alloca double, align 8
  %masked164 = alloca double, align 8
  %weight169 = alloca double, align 8
  %weight279 = alloca double, align 8
  %weight377 = alloca double, align 8
  store %struct._GimpHistogram* %histogram, %struct._GimpHistogram** %histogram.addr, align 8
  store %struct._PixelRegion* %region, %struct._PixelRegion** %region.addr, align 8
  store %struct._PixelRegion* %mask, %struct._PixelRegion** %mask.addr, align 8
  store i32 0, i32* %slot, align 4
  %0 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %mutex = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %0, i32 0, i32 2
  %call = call %union._GMutex* @g_static_mutex_get_mutex_impl(%struct.GStaticMutex* %mutex)
  call void @g_mutex_lock(%union._GMutex* %call)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, i32* %slot, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %slots = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %2, i32 0, i32 3
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* %slots, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %slot, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %slot, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load i32, i32* %slot, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %values2 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %6, i32 0, i32 4
  %arrayidx3 = getelementptr inbounds [16 x double*], [16 x double*]* %values2, i32 0, i64 %idxprom1
  %7 = load double*, double** %arrayidx3, align 8
  store double* %7, double** %values, align 8
  %8 = load i32, i32* %slot, align 4
  %idxprom4 = sext i32 %8 to i64
  %9 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %slots5 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %9, i32 0, i32 3
  %arrayidx6 = getelementptr inbounds [16 x i8], [16 x i8]* %slots5, i32 0, i64 %idxprom4
  store i8 1, i8* %arrayidx6, align 1
  %10 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %mutex7 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %10, i32 0, i32 2
  %call8 = call %union._GMutex* @g_static_mutex_get_mutex_impl(%struct.GStaticMutex* %mutex7)
  call void @g_mutex_unlock(%union._GMutex* %call8)
  %11 = load double*, double** %values, align 8
  %tobool9 = icmp ne double* %11, null
  br i1 %tobool9, label %if.end, label %if.then

if.then:                                          ; preds = %while.end
  %12 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %n_channels = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %12, i32 0, i32 1
  %13 = load i32, i32* %n_channels, align 4
  %mul = mul nsw i32 %13, 256
  %conv = sext i32 %mul to i64
  %call10 = call noalias i8* @g_malloc0_n(i64 %conv, i64 8)
  %14 = bitcast i8* %call10 to double*
  %15 = load i32, i32* %slot, align 4
  %idxprom11 = sext i32 %15 to i64
  %16 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %values12 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %16, i32 0, i32 4
  %arrayidx13 = getelementptr inbounds [16 x double*], [16 x double*]* %values12, i32 0, i64 %idxprom11
  store double* %14, double** %arrayidx13, align 8
  %17 = load i32, i32* %slot, align 4
  %idxprom14 = sext i32 %17 to i64
  %18 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %values15 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %18, i32 0, i32 4
  %arrayidx16 = getelementptr inbounds [16 x double*], [16 x double*]* %values15, i32 0, i64 %idxprom14
  %19 = load double*, double** %arrayidx16, align 8
  store double* %19, double** %values, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %20 = load %struct._PixelRegion*, %struct._PixelRegion** %region.addr, align 8
  %h17 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %20, i32 0, i32 9
  %21 = load i32, i32* %h17, align 4
  store i32 %21, i32* %h, align 4
  %22 = load %struct._PixelRegion*, %struct._PixelRegion** %mask.addr, align 8
  %tobool18 = icmp ne %struct._PixelRegion* %22, null
  br i1 %tobool18, label %if.then.19, label %if.else.244

if.then.19:                                       ; preds = %if.end
  %23 = load %struct._PixelRegion*, %struct._PixelRegion** %region.addr, align 8
  %data = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %23, i32 0, i32 0
  %24 = load i8*, i8** %data, align 8
  store i8* %24, i8** %src, align 8
  %25 = load %struct._PixelRegion*, %struct._PixelRegion** %mask.addr, align 8
  %data20 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %25, i32 0, i32 0
  %26 = load i8*, i8** %data20, align 8
  store i8* %26, i8** %msrc, align 8
  %27 = load %struct._PixelRegion*, %struct._PixelRegion** %region.addr, align 8
  %bytes = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %27, i32 0, i32 10
  %28 = load i32, i32* %bytes, align 4
  switch i32 %28, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.44
    i32 3, label %sw.bb.86
    i32 4, label %sw.bb.154
  ]

sw.bb:                                            ; preds = %if.then.19
  br label %while.cond.21

while.cond.21:                                    ; preds = %while.end.38, %sw.bb
  %29 = load i32, i32* %h, align 4
  %dec = add nsw i32 %29, -1
  store i32 %dec, i32* %h, align 4
  %tobool22 = icmp ne i32 %29, 0
  br i1 %tobool22, label %while.body.23, label %while.end.43

while.body.23:                                    ; preds = %while.cond.21
  %30 = load i8*, i8** %src, align 8
  store i8* %30, i8** %s, align 8
  %31 = load i8*, i8** %msrc, align 8
  store i8* %31, i8** %m, align 8
  %32 = load %struct._PixelRegion*, %struct._PixelRegion** %region.addr, align 8
  %w24 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %32, i32 0, i32 8
  %33 = load i32, i32* %w24, align 4
  store i32 %33, i32* %w, align 4
  br label %while.cond.25

while.cond.25:                                    ; preds = %while.body.28, %while.body.23
  %34 = load i32, i32* %w, align 4
  %dec26 = add nsw i32 %34, -1
  store i32 %dec26, i32* %w, align 4
  %tobool27 = icmp ne i32 %34, 0
  br i1 %tobool27, label %while.body.28, label %while.end.38

while.body.28:                                    ; preds = %while.cond.25
  %35 = load i8*, i8** %m, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %35, i64 0
  %36 = load i8, i8* %arrayidx29, align 1
  %conv30 = zext i8 %36 to i32
  %conv31 = sitofp i32 %conv30 to double
  %div = fdiv double %conv31, 2.550000e+02
  store double %div, double* %masked, align 8
  %37 = load double, double* %masked, align 8
  %38 = load i8*, i8** %s, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %38, i64 0
  %39 = load i8, i8* %arrayidx32, align 1
  %conv33 = zext i8 %39 to i32
  %add = add nsw i32 0, %conv33
  %idxprom34 = sext i32 %add to i64
  %40 = load double*, double** %values, align 8
  %arrayidx35 = getelementptr inbounds double, double* %40, i64 %idxprom34
  %41 = load double, double* %arrayidx35, align 8
  %add36 = fadd double %41, %37
  store double %add36, double* %arrayidx35, align 8
  %42 = load i8*, i8** %s, align 8
  %add.ptr = getelementptr inbounds i8, i8* %42, i64 1
  store i8* %add.ptr, i8** %s, align 8
  %43 = load i8*, i8** %m, align 8
  %add.ptr37 = getelementptr inbounds i8, i8* %43, i64 1
  store i8* %add.ptr37, i8** %m, align 8
  br label %while.cond.25

while.end.38:                                     ; preds = %while.cond.25
  %44 = load %struct._PixelRegion*, %struct._PixelRegion** %region.addr, align 8
  %rowstride = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %44, i32 0, i32 5
  %45 = load i32, i32* %rowstride, align 4
  %46 = load i8*, i8** %src, align 8
  %idx.ext = sext i32 %45 to i64
  %add.ptr39 = getelementptr inbounds i8, i8* %46, i64 %idx.ext
  store i8* %add.ptr39, i8** %src, align 8
  %47 = load %struct._PixelRegion*, %struct._PixelRegion** %mask.addr, align 8
  %rowstride40 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %47, i32 0, i32 5
  %48 = load i32, i32* %rowstride40, align 4
  %49 = load i8*, i8** %msrc, align 8
  %idx.ext41 = sext i32 %48 to i64
  %add.ptr42 = getelementptr inbounds i8, i8* %49, i64 %idx.ext41
  store i8* %add.ptr42, i8** %msrc, align 8
  br label %while.cond.21

while.end.43:                                     ; preds = %while.cond.21
  br label %sw.epilog

sw.bb.44:                                         ; preds = %if.then.19
  br label %while.cond.45

while.cond.45:                                    ; preds = %while.end.78, %sw.bb.44
  %50 = load i32, i32* %h, align 4
  %dec46 = add nsw i32 %50, -1
  store i32 %dec46, i32* %h, align 4
  %tobool47 = icmp ne i32 %50, 0
  br i1 %tobool47, label %while.body.48, label %while.end.85

while.body.48:                                    ; preds = %while.cond.45
  %51 = load i8*, i8** %src, align 8
  store i8* %51, i8** %s, align 8
  %52 = load i8*, i8** %msrc, align 8
  store i8* %52, i8** %m, align 8
  %53 = load %struct._PixelRegion*, %struct._PixelRegion** %region.addr, align 8
  %w49 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %53, i32 0, i32 8
  %54 = load i32, i32* %w49, align 4
  store i32 %54, i32* %w, align 4
  br label %while.cond.50

while.cond.50:                                    ; preds = %while.body.53, %while.body.48
  %55 = load i32, i32* %w, align 4
  %dec51 = add nsw i32 %55, -1
  store i32 %dec51, i32* %w, align 4
  %tobool52 = icmp ne i32 %55, 0
  br i1 %tobool52, label %while.body.53, label %while.end.78

while.body.53:                                    ; preds = %while.cond.50
  %56 = load i8*, i8** %m, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %56, i64 0
  %57 = load i8, i8* %arrayidx55, align 1
  %conv56 = zext i8 %57 to i32
  %conv57 = sitofp i32 %conv56 to double
  %div58 = fdiv double %conv57, 2.550000e+02
  store double %div58, double* %masked54, align 8
  %58 = load i8*, i8** %s, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %58, i64 1
  %59 = load i8, i8* %arrayidx59, align 1
  %conv60 = zext i8 %59 to i32
  %conv61 = sitofp i32 %conv60 to double
  %div62 = fdiv double %conv61, 2.550000e+02
  store double %div62, double* %weight, align 8
  %60 = load double, double* %weight, align 8
  %61 = load double, double* %masked54, align 8
  %mul63 = fmul double %60, %61
  %62 = load i8*, i8** %s, align 8
  %arrayidx64 = getelementptr inbounds i8, i8* %62, i64 0
  %63 = load i8, i8* %arrayidx64, align 1
  %conv65 = zext i8 %63 to i32
  %add66 = add nsw i32 0, %conv65
  %idxprom67 = sext i32 %add66 to i64
  %64 = load double*, double** %values, align 8
  %arrayidx68 = getelementptr inbounds double, double* %64, i64 %idxprom67
  %65 = load double, double* %arrayidx68, align 8
  %add69 = fadd double %65, %mul63
  store double %add69, double* %arrayidx68, align 8
  %66 = load double, double* %masked54, align 8
  %67 = load i8*, i8** %s, align 8
  %arrayidx70 = getelementptr inbounds i8, i8* %67, i64 1
  %68 = load i8, i8* %arrayidx70, align 1
  %conv71 = zext i8 %68 to i32
  %add72 = add nsw i32 256, %conv71
  %idxprom73 = sext i32 %add72 to i64
  %69 = load double*, double** %values, align 8
  %arrayidx74 = getelementptr inbounds double, double* %69, i64 %idxprom73
  %70 = load double, double* %arrayidx74, align 8
  %add75 = fadd double %70, %66
  store double %add75, double* %arrayidx74, align 8
  %71 = load i8*, i8** %s, align 8
  %add.ptr76 = getelementptr inbounds i8, i8* %71, i64 2
  store i8* %add.ptr76, i8** %s, align 8
  %72 = load i8*, i8** %m, align 8
  %add.ptr77 = getelementptr inbounds i8, i8* %72, i64 1
  store i8* %add.ptr77, i8** %m, align 8
  br label %while.cond.50

while.end.78:                                     ; preds = %while.cond.50
  %73 = load %struct._PixelRegion*, %struct._PixelRegion** %region.addr, align 8
  %rowstride79 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %73, i32 0, i32 5
  %74 = load i32, i32* %rowstride79, align 4
  %75 = load i8*, i8** %src, align 8
  %idx.ext80 = sext i32 %74 to i64
  %add.ptr81 = getelementptr inbounds i8, i8* %75, i64 %idx.ext80
  store i8* %add.ptr81, i8** %src, align 8
  %76 = load %struct._PixelRegion*, %struct._PixelRegion** %mask.addr, align 8
  %rowstride82 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %76, i32 0, i32 5
  %77 = load i32, i32* %rowstride82, align 4
  %78 = load i8*, i8** %msrc, align 8
  %idx.ext83 = sext i32 %77 to i64
  %add.ptr84 = getelementptr inbounds i8, i8* %78, i64 %idx.ext83
  store i8* %add.ptr84, i8** %msrc, align 8
  br label %while.cond.45

while.end.85:                                     ; preds = %while.cond.45
  br label %sw.epilog

sw.bb.86:                                         ; preds = %if.then.19
  br label %while.cond.87

while.cond.87:                                    ; preds = %while.end.146, %sw.bb.86
  %79 = load i32, i32* %h, align 4
  %dec88 = add nsw i32 %79, -1
  store i32 %dec88, i32* %h, align 4
  %tobool89 = icmp ne i32 %79, 0
  br i1 %tobool89, label %while.body.90, label %while.end.153

while.body.90:                                    ; preds = %while.cond.87
  %80 = load i8*, i8** %src, align 8
  store i8* %80, i8** %s, align 8
  %81 = load i8*, i8** %msrc, align 8
  store i8* %81, i8** %m, align 8
  %82 = load %struct._PixelRegion*, %struct._PixelRegion** %region.addr, align 8
  %w91 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %82, i32 0, i32 8
  %83 = load i32, i32* %w91, align 4
  store i32 %83, i32* %w, align 4
  br label %while.cond.92

while.cond.92:                                    ; preds = %if.end.143, %while.body.90
  %84 = load i32, i32* %w, align 4
  %dec93 = add nsw i32 %84, -1
  store i32 %dec93, i32* %w, align 4
  %tobool94 = icmp ne i32 %84, 0
  br i1 %tobool94, label %while.body.95, label %while.end.146

while.body.95:                                    ; preds = %while.cond.92
  %85 = load i8*, i8** %m, align 8
  %arrayidx97 = getelementptr inbounds i8, i8* %85, i64 0
  %86 = load i8, i8* %arrayidx97, align 1
  %conv98 = zext i8 %86 to i32
  %conv99 = sitofp i32 %conv98 to double
  %div100 = fdiv double %conv99, 2.550000e+02
  store double %div100, double* %masked96, align 8
  %87 = load double, double* %masked96, align 8
  %88 = load i8*, i8** %s, align 8
  %arrayidx101 = getelementptr inbounds i8, i8* %88, i64 0
  %89 = load i8, i8* %arrayidx101, align 1
  %conv102 = zext i8 %89 to i32
  %add103 = add nsw i32 256, %conv102
  %idxprom104 = sext i32 %add103 to i64
  %90 = load double*, double** %values, align 8
  %arrayidx105 = getelementptr inbounds double, double* %90, i64 %idxprom104
  %91 = load double, double* %arrayidx105, align 8
  %add106 = fadd double %91, %87
  store double %add106, double* %arrayidx105, align 8
  %92 = load double, double* %masked96, align 8
  %93 = load i8*, i8** %s, align 8
  %arrayidx107 = getelementptr inbounds i8, i8* %93, i64 1
  %94 = load i8, i8* %arrayidx107, align 1
  %conv108 = zext i8 %94 to i32
  %add109 = add nsw i32 512, %conv108
  %idxprom110 = sext i32 %add109 to i64
  %95 = load double*, double** %values, align 8
  %arrayidx111 = getelementptr inbounds double, double* %95, i64 %idxprom110
  %96 = load double, double* %arrayidx111, align 8
  %add112 = fadd double %96, %92
  store double %add112, double* %arrayidx111, align 8
  %97 = load double, double* %masked96, align 8
  %98 = load i8*, i8** %s, align 8
  %arrayidx113 = getelementptr inbounds i8, i8* %98, i64 2
  %99 = load i8, i8* %arrayidx113, align 1
  %conv114 = zext i8 %99 to i32
  %add115 = add nsw i32 768, %conv114
  %idxprom116 = sext i32 %add115 to i64
  %100 = load double*, double** %values, align 8
  %arrayidx117 = getelementptr inbounds double, double* %100, i64 %idxprom116
  %101 = load double, double* %arrayidx117, align 8
  %add118 = fadd double %101, %97
  store double %add118, double* %arrayidx117, align 8
  %102 = load i8*, i8** %s, align 8
  %arrayidx119 = getelementptr inbounds i8, i8* %102, i64 0
  %103 = load i8, i8* %arrayidx119, align 1
  %conv120 = zext i8 %103 to i32
  %104 = load i8*, i8** %s, align 8
  %arrayidx121 = getelementptr inbounds i8, i8* %104, i64 1
  %105 = load i8, i8* %arrayidx121, align 1
  %conv122 = zext i8 %105 to i32
  %cmp = icmp sgt i32 %conv120, %conv122
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body.95
  %106 = load i8*, i8** %s, align 8
  %arrayidx124 = getelementptr inbounds i8, i8* %106, i64 0
  %107 = load i8, i8* %arrayidx124, align 1
  %conv125 = zext i8 %107 to i32
  br label %cond.end

cond.false:                                       ; preds = %while.body.95
  %108 = load i8*, i8** %s, align 8
  %arrayidx126 = getelementptr inbounds i8, i8* %108, i64 1
  %109 = load i8, i8* %arrayidx126, align 1
  %conv127 = zext i8 %109 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv125, %cond.true ], [ %conv127, %cond.false ]
  store i32 %cond, i32* %max, align 4
  %110 = load i8*, i8** %s, align 8
  %arrayidx128 = getelementptr inbounds i8, i8* %110, i64 2
  %111 = load i8, i8* %arrayidx128, align 1
  %conv129 = zext i8 %111 to i32
  %112 = load i32, i32* %max, align 4
  %cmp130 = icmp sgt i32 %conv129, %112
  br i1 %cmp130, label %if.then.132, label %if.else

if.then.132:                                      ; preds = %cond.end
  %113 = load double, double* %masked96, align 8
  %114 = load i8*, i8** %s, align 8
  %arrayidx133 = getelementptr inbounds i8, i8* %114, i64 2
  %115 = load i8, i8* %arrayidx133, align 1
  %conv134 = zext i8 %115 to i32
  %add135 = add nsw i32 0, %conv134
  %idxprom136 = sext i32 %add135 to i64
  %116 = load double*, double** %values, align 8
  %arrayidx137 = getelementptr inbounds double, double* %116, i64 %idxprom136
  %117 = load double, double* %arrayidx137, align 8
  %add138 = fadd double %117, %113
  store double %add138, double* %arrayidx137, align 8
  br label %if.end.143

if.else:                                          ; preds = %cond.end
  %118 = load double, double* %masked96, align 8
  %119 = load i32, i32* %max, align 4
  %add139 = add nsw i32 0, %119
  %idxprom140 = sext i32 %add139 to i64
  %120 = load double*, double** %values, align 8
  %arrayidx141 = getelementptr inbounds double, double* %120, i64 %idxprom140
  %121 = load double, double* %arrayidx141, align 8
  %add142 = fadd double %121, %118
  store double %add142, double* %arrayidx141, align 8
  br label %if.end.143

if.end.143:                                       ; preds = %if.else, %if.then.132
  %122 = load i8*, i8** %s, align 8
  %add.ptr144 = getelementptr inbounds i8, i8* %122, i64 3
  store i8* %add.ptr144, i8** %s, align 8
  %123 = load i8*, i8** %m, align 8
  %add.ptr145 = getelementptr inbounds i8, i8* %123, i64 1
  store i8* %add.ptr145, i8** %m, align 8
  br label %while.cond.92

while.end.146:                                    ; preds = %while.cond.92
  %124 = load %struct._PixelRegion*, %struct._PixelRegion** %region.addr, align 8
  %rowstride147 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %124, i32 0, i32 5
  %125 = load i32, i32* %rowstride147, align 4
  %126 = load i8*, i8** %src, align 8
  %idx.ext148 = sext i32 %125 to i64
  %add.ptr149 = getelementptr inbounds i8, i8* %126, i64 %idx.ext148
  store i8* %add.ptr149, i8** %src, align 8
  %127 = load %struct._PixelRegion*, %struct._PixelRegion** %mask.addr, align 8
  %rowstride150 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %127, i32 0, i32 5
  %128 = load i32, i32* %rowstride150, align 4
  %129 = load i8*, i8** %msrc, align 8
  %idx.ext151 = sext i32 %128 to i64
  %add.ptr152 = getelementptr inbounds i8, i8* %129, i64 %idx.ext151
  store i8* %add.ptr152, i8** %msrc, align 8
  br label %while.cond.87

while.end.153:                                    ; preds = %while.cond.87
  br label %sw.epilog

sw.bb.154:                                        ; preds = %if.then.19
  br label %while.cond.155

while.cond.155:                                   ; preds = %while.end.236, %sw.bb.154
  %130 = load i32, i32* %h, align 4
  %dec156 = add nsw i32 %130, -1
  store i32 %dec156, i32* %h, align 4
  %tobool157 = icmp ne i32 %130, 0
  br i1 %tobool157, label %while.body.158, label %while.end.243

while.body.158:                                   ; preds = %while.cond.155
  %131 = load i8*, i8** %src, align 8
  store i8* %131, i8** %s, align 8
  %132 = load i8*, i8** %msrc, align 8
  store i8* %132, i8** %m, align 8
  %133 = load %struct._PixelRegion*, %struct._PixelRegion** %region.addr, align 8
  %w159 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %133, i32 0, i32 8
  %134 = load i32, i32* %w159, align 4
  store i32 %134, i32* %w, align 4
  br label %while.cond.160

while.cond.160:                                   ; preds = %if.end.233, %while.body.158
  %135 = load i32, i32* %w, align 4
  %dec161 = add nsw i32 %135, -1
  store i32 %dec161, i32* %w, align 4
  %tobool162 = icmp ne i32 %135, 0
  br i1 %tobool162, label %while.body.163, label %while.end.236

while.body.163:                                   ; preds = %while.cond.160
  %136 = load i8*, i8** %m, align 8
  %arrayidx165 = getelementptr inbounds i8, i8* %136, i64 0
  %137 = load i8, i8* %arrayidx165, align 1
  %conv166 = zext i8 %137 to i32
  %conv167 = sitofp i32 %conv166 to double
  %div168 = fdiv double %conv167, 2.550000e+02
  store double %div168, double* %masked164, align 8
  %138 = load i8*, i8** %s, align 8
  %arrayidx170 = getelementptr inbounds i8, i8* %138, i64 3
  %139 = load i8, i8* %arrayidx170, align 1
  %conv171 = zext i8 %139 to i32
  %conv172 = sitofp i32 %conv171 to double
  %div173 = fdiv double %conv172, 2.550000e+02
  store double %div173, double* %weight169, align 8
  %140 = load double, double* %weight169, align 8
  %141 = load double, double* %masked164, align 8
  %mul174 = fmul double %140, %141
  %142 = load i8*, i8** %s, align 8
  %arrayidx175 = getelementptr inbounds i8, i8* %142, i64 0
  %143 = load i8, i8* %arrayidx175, align 1
  %conv176 = zext i8 %143 to i32
  %add177 = add nsw i32 256, %conv176
  %idxprom178 = sext i32 %add177 to i64
  %144 = load double*, double** %values, align 8
  %arrayidx179 = getelementptr inbounds double, double* %144, i64 %idxprom178
  %145 = load double, double* %arrayidx179, align 8
  %add180 = fadd double %145, %mul174
  store double %add180, double* %arrayidx179, align 8
  %146 = load double, double* %weight169, align 8
  %147 = load double, double* %masked164, align 8
  %mul181 = fmul double %146, %147
  %148 = load i8*, i8** %s, align 8
  %arrayidx182 = getelementptr inbounds i8, i8* %148, i64 1
  %149 = load i8, i8* %arrayidx182, align 1
  %conv183 = zext i8 %149 to i32
  %add184 = add nsw i32 512, %conv183
  %idxprom185 = sext i32 %add184 to i64
  %150 = load double*, double** %values, align 8
  %arrayidx186 = getelementptr inbounds double, double* %150, i64 %idxprom185
  %151 = load double, double* %arrayidx186, align 8
  %add187 = fadd double %151, %mul181
  store double %add187, double* %arrayidx186, align 8
  %152 = load double, double* %weight169, align 8
  %153 = load double, double* %masked164, align 8
  %mul188 = fmul double %152, %153
  %154 = load i8*, i8** %s, align 8
  %arrayidx189 = getelementptr inbounds i8, i8* %154, i64 2
  %155 = load i8, i8* %arrayidx189, align 1
  %conv190 = zext i8 %155 to i32
  %add191 = add nsw i32 768, %conv190
  %idxprom192 = sext i32 %add191 to i64
  %156 = load double*, double** %values, align 8
  %arrayidx193 = getelementptr inbounds double, double* %156, i64 %idxprom192
  %157 = load double, double* %arrayidx193, align 8
  %add194 = fadd double %157, %mul188
  store double %add194, double* %arrayidx193, align 8
  %158 = load double, double* %masked164, align 8
  %159 = load i8*, i8** %s, align 8
  %arrayidx195 = getelementptr inbounds i8, i8* %159, i64 3
  %160 = load i8, i8* %arrayidx195, align 1
  %conv196 = zext i8 %160 to i32
  %add197 = add nsw i32 1024, %conv196
  %idxprom198 = sext i32 %add197 to i64
  %161 = load double*, double** %values, align 8
  %arrayidx199 = getelementptr inbounds double, double* %161, i64 %idxprom198
  %162 = load double, double* %arrayidx199, align 8
  %add200 = fadd double %162, %158
  store double %add200, double* %arrayidx199, align 8
  %163 = load i8*, i8** %s, align 8
  %arrayidx201 = getelementptr inbounds i8, i8* %163, i64 0
  %164 = load i8, i8* %arrayidx201, align 1
  %conv202 = zext i8 %164 to i32
  %165 = load i8*, i8** %s, align 8
  %arrayidx203 = getelementptr inbounds i8, i8* %165, i64 1
  %166 = load i8, i8* %arrayidx203, align 1
  %conv204 = zext i8 %166 to i32
  %cmp205 = icmp sgt i32 %conv202, %conv204
  br i1 %cmp205, label %cond.true.207, label %cond.false.210

cond.true.207:                                    ; preds = %while.body.163
  %167 = load i8*, i8** %s, align 8
  %arrayidx208 = getelementptr inbounds i8, i8* %167, i64 0
  %168 = load i8, i8* %arrayidx208, align 1
  %conv209 = zext i8 %168 to i32
  br label %cond.end.213

cond.false.210:                                   ; preds = %while.body.163
  %169 = load i8*, i8** %s, align 8
  %arrayidx211 = getelementptr inbounds i8, i8* %169, i64 1
  %170 = load i8, i8* %arrayidx211, align 1
  %conv212 = zext i8 %170 to i32
  br label %cond.end.213

cond.end.213:                                     ; preds = %cond.false.210, %cond.true.207
  %cond214 = phi i32 [ %conv209, %cond.true.207 ], [ %conv212, %cond.false.210 ]
  store i32 %cond214, i32* %max, align 4
  %171 = load i8*, i8** %s, align 8
  %arrayidx215 = getelementptr inbounds i8, i8* %171, i64 2
  %172 = load i8, i8* %arrayidx215, align 1
  %conv216 = zext i8 %172 to i32
  %173 = load i32, i32* %max, align 4
  %cmp217 = icmp sgt i32 %conv216, %173
  br i1 %cmp217, label %if.then.219, label %if.else.227

if.then.219:                                      ; preds = %cond.end.213
  %174 = load double, double* %weight169, align 8
  %175 = load double, double* %masked164, align 8
  %mul220 = fmul double %174, %175
  %176 = load i8*, i8** %s, align 8
  %arrayidx221 = getelementptr inbounds i8, i8* %176, i64 2
  %177 = load i8, i8* %arrayidx221, align 1
  %conv222 = zext i8 %177 to i32
  %add223 = add nsw i32 0, %conv222
  %idxprom224 = sext i32 %add223 to i64
  %178 = load double*, double** %values, align 8
  %arrayidx225 = getelementptr inbounds double, double* %178, i64 %idxprom224
  %179 = load double, double* %arrayidx225, align 8
  %add226 = fadd double %179, %mul220
  store double %add226, double* %arrayidx225, align 8
  br label %if.end.233

if.else.227:                                      ; preds = %cond.end.213
  %180 = load double, double* %weight169, align 8
  %181 = load double, double* %masked164, align 8
  %mul228 = fmul double %180, %181
  %182 = load i32, i32* %max, align 4
  %add229 = add nsw i32 0, %182
  %idxprom230 = sext i32 %add229 to i64
  %183 = load double*, double** %values, align 8
  %arrayidx231 = getelementptr inbounds double, double* %183, i64 %idxprom230
  %184 = load double, double* %arrayidx231, align 8
  %add232 = fadd double %184, %mul228
  store double %add232, double* %arrayidx231, align 8
  br label %if.end.233

if.end.233:                                       ; preds = %if.else.227, %if.then.219
  %185 = load i8*, i8** %s, align 8
  %add.ptr234 = getelementptr inbounds i8, i8* %185, i64 4
  store i8* %add.ptr234, i8** %s, align 8
  %186 = load i8*, i8** %m, align 8
  %add.ptr235 = getelementptr inbounds i8, i8* %186, i64 1
  store i8* %add.ptr235, i8** %m, align 8
  br label %while.cond.160

while.end.236:                                    ; preds = %while.cond.160
  %187 = load %struct._PixelRegion*, %struct._PixelRegion** %region.addr, align 8
  %rowstride237 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %187, i32 0, i32 5
  %188 = load i32, i32* %rowstride237, align 4
  %189 = load i8*, i8** %src, align 8
  %idx.ext238 = sext i32 %188 to i64
  %add.ptr239 = getelementptr inbounds i8, i8* %189, i64 %idx.ext238
  store i8* %add.ptr239, i8** %src, align 8
  %190 = load %struct._PixelRegion*, %struct._PixelRegion** %mask.addr, align 8
  %rowstride240 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %190, i32 0, i32 5
  %191 = load i32, i32* %rowstride240, align 4
  %192 = load i8*, i8** %msrc, align 8
  %idx.ext241 = sext i32 %191 to i64
  %add.ptr242 = getelementptr inbounds i8, i8* %192, i64 %idx.ext241
  store i8* %add.ptr242, i8** %msrc, align 8
  br label %while.cond.155

while.end.243:                                    ; preds = %while.cond.155
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.19, %while.end.243, %while.end.153, %while.end.85, %while.end.43
  br label %if.end.444

if.else.244:                                      ; preds = %if.end
  %193 = load %struct._PixelRegion*, %struct._PixelRegion** %region.addr, align 8
  %data245 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %193, i32 0, i32 0
  %194 = load i8*, i8** %data245, align 8
  store i8* %194, i8** %src, align 8
  %195 = load %struct._PixelRegion*, %struct._PixelRegion** %region.addr, align 8
  %bytes246 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %195, i32 0, i32 10
  %196 = load i32, i32* %bytes246, align 4
  switch i32 %196, label %sw.epilog.443 [
    i32 1, label %sw.bb.247
    i32 2, label %sw.bb.269
    i32 3, label %sw.bb.302
    i32 4, label %sw.bb.367
  ]

sw.bb.247:                                        ; preds = %if.else.244
  br label %while.cond.248

while.cond.248:                                   ; preds = %while.end.264, %sw.bb.247
  %197 = load i32, i32* %h, align 4
  %dec249 = add nsw i32 %197, -1
  store i32 %dec249, i32* %h, align 4
  %tobool250 = icmp ne i32 %197, 0
  br i1 %tobool250, label %while.body.251, label %while.end.268

while.body.251:                                   ; preds = %while.cond.248
  %198 = load i8*, i8** %src, align 8
  store i8* %198, i8** %s, align 8
  %199 = load %struct._PixelRegion*, %struct._PixelRegion** %region.addr, align 8
  %w252 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %199, i32 0, i32 8
  %200 = load i32, i32* %w252, align 4
  store i32 %200, i32* %w, align 4
  br label %while.cond.253

while.cond.253:                                   ; preds = %while.body.256, %while.body.251
  %201 = load i32, i32* %w, align 4
  %dec254 = add nsw i32 %201, -1
  store i32 %dec254, i32* %w, align 4
  %tobool255 = icmp ne i32 %201, 0
  br i1 %tobool255, label %while.body.256, label %while.end.264

while.body.256:                                   ; preds = %while.cond.253
  %202 = load i8*, i8** %s, align 8
  %arrayidx257 = getelementptr inbounds i8, i8* %202, i64 0
  %203 = load i8, i8* %arrayidx257, align 1
  %conv258 = zext i8 %203 to i32
  %add259 = add nsw i32 0, %conv258
  %idxprom260 = sext i32 %add259 to i64
  %204 = load double*, double** %values, align 8
  %arrayidx261 = getelementptr inbounds double, double* %204, i64 %idxprom260
  %205 = load double, double* %arrayidx261, align 8
  %add262 = fadd double %205, 1.000000e+00
  store double %add262, double* %arrayidx261, align 8
  %206 = load i8*, i8** %s, align 8
  %add.ptr263 = getelementptr inbounds i8, i8* %206, i64 1
  store i8* %add.ptr263, i8** %s, align 8
  br label %while.cond.253

while.end.264:                                    ; preds = %while.cond.253
  %207 = load %struct._PixelRegion*, %struct._PixelRegion** %region.addr, align 8
  %rowstride265 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %207, i32 0, i32 5
  %208 = load i32, i32* %rowstride265, align 4
  %209 = load i8*, i8** %src, align 8
  %idx.ext266 = sext i32 %208 to i64
  %add.ptr267 = getelementptr inbounds i8, i8* %209, i64 %idx.ext266
  store i8* %add.ptr267, i8** %src, align 8
  br label %while.cond.248

while.end.268:                                    ; preds = %while.cond.248
  br label %sw.epilog.443

sw.bb.269:                                        ; preds = %if.else.244
  br label %while.cond.270

while.cond.270:                                   ; preds = %while.end.297, %sw.bb.269
  %210 = load i32, i32* %h, align 4
  %dec271 = add nsw i32 %210, -1
  store i32 %dec271, i32* %h, align 4
  %tobool272 = icmp ne i32 %210, 0
  br i1 %tobool272, label %while.body.273, label %while.end.301

while.body.273:                                   ; preds = %while.cond.270
  %211 = load i8*, i8** %src, align 8
  store i8* %211, i8** %s, align 8
  %212 = load %struct._PixelRegion*, %struct._PixelRegion** %region.addr, align 8
  %w274 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %212, i32 0, i32 8
  %213 = load i32, i32* %w274, align 4
  store i32 %213, i32* %w, align 4
  br label %while.cond.275

while.cond.275:                                   ; preds = %while.body.278, %while.body.273
  %214 = load i32, i32* %w, align 4
  %dec276 = add nsw i32 %214, -1
  store i32 %dec276, i32* %w, align 4
  %tobool277 = icmp ne i32 %214, 0
  br i1 %tobool277, label %while.body.278, label %while.end.297

while.body.278:                                   ; preds = %while.cond.275
  %215 = load i8*, i8** %s, align 8
  %arrayidx280 = getelementptr inbounds i8, i8* %215, i64 1
  %216 = load i8, i8* %arrayidx280, align 1
  %conv281 = zext i8 %216 to i32
  %div282 = sdiv i32 %conv281, 255
  %conv283 = sitofp i32 %div282 to double
  store double %conv283, double* %weight279, align 8
  %217 = load double, double* %weight279, align 8
  %218 = load i8*, i8** %s, align 8
  %arrayidx284 = getelementptr inbounds i8, i8* %218, i64 0
  %219 = load i8, i8* %arrayidx284, align 1
  %conv285 = zext i8 %219 to i32
  %add286 = add nsw i32 0, %conv285
  %idxprom287 = sext i32 %add286 to i64
  %220 = load double*, double** %values, align 8
  %arrayidx288 = getelementptr inbounds double, double* %220, i64 %idxprom287
  %221 = load double, double* %arrayidx288, align 8
  %add289 = fadd double %221, %217
  store double %add289, double* %arrayidx288, align 8
  %222 = load i8*, i8** %s, align 8
  %arrayidx290 = getelementptr inbounds i8, i8* %222, i64 1
  %223 = load i8, i8* %arrayidx290, align 1
  %conv291 = zext i8 %223 to i32
  %add292 = add nsw i32 256, %conv291
  %idxprom293 = sext i32 %add292 to i64
  %224 = load double*, double** %values, align 8
  %arrayidx294 = getelementptr inbounds double, double* %224, i64 %idxprom293
  %225 = load double, double* %arrayidx294, align 8
  %add295 = fadd double %225, 1.000000e+00
  store double %add295, double* %arrayidx294, align 8
  %226 = load i8*, i8** %s, align 8
  %add.ptr296 = getelementptr inbounds i8, i8* %226, i64 2
  store i8* %add.ptr296, i8** %s, align 8
  br label %while.cond.275

while.end.297:                                    ; preds = %while.cond.275
  %227 = load %struct._PixelRegion*, %struct._PixelRegion** %region.addr, align 8
  %rowstride298 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %227, i32 0, i32 5
  %228 = load i32, i32* %rowstride298, align 4
  %229 = load i8*, i8** %src, align 8
  %idx.ext299 = sext i32 %228 to i64
  %add.ptr300 = getelementptr inbounds i8, i8* %229, i64 %idx.ext299
  store i8* %add.ptr300, i8** %src, align 8
  br label %while.cond.270

while.end.301:                                    ; preds = %while.cond.270
  br label %sw.epilog.443

sw.bb.302:                                        ; preds = %if.else.244
  br label %while.cond.303

while.cond.303:                                   ; preds = %while.end.362, %sw.bb.302
  %230 = load i32, i32* %h, align 4
  %dec304 = add nsw i32 %230, -1
  store i32 %dec304, i32* %h, align 4
  %tobool305 = icmp ne i32 %230, 0
  br i1 %tobool305, label %while.body.306, label %while.end.366

while.body.306:                                   ; preds = %while.cond.303
  %231 = load i8*, i8** %src, align 8
  store i8* %231, i8** %s, align 8
  %232 = load %struct._PixelRegion*, %struct._PixelRegion** %region.addr, align 8
  %w307 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %232, i32 0, i32 8
  %233 = load i32, i32* %w307, align 4
  store i32 %233, i32* %w, align 4
  br label %while.cond.308

while.cond.308:                                   ; preds = %if.end.360, %while.body.306
  %234 = load i32, i32* %w, align 4
  %dec309 = add nsw i32 %234, -1
  store i32 %dec309, i32* %w, align 4
  %tobool310 = icmp ne i32 %234, 0
  br i1 %tobool310, label %while.body.311, label %while.end.362

while.body.311:                                   ; preds = %while.cond.308
  %235 = load i8*, i8** %s, align 8
  %arrayidx312 = getelementptr inbounds i8, i8* %235, i64 0
  %236 = load i8, i8* %arrayidx312, align 1
  %conv313 = zext i8 %236 to i32
  %add314 = add nsw i32 256, %conv313
  %idxprom315 = sext i32 %add314 to i64
  %237 = load double*, double** %values, align 8
  %arrayidx316 = getelementptr inbounds double, double* %237, i64 %idxprom315
  %238 = load double, double* %arrayidx316, align 8
  %add317 = fadd double %238, 1.000000e+00
  store double %add317, double* %arrayidx316, align 8
  %239 = load i8*, i8** %s, align 8
  %arrayidx318 = getelementptr inbounds i8, i8* %239, i64 1
  %240 = load i8, i8* %arrayidx318, align 1
  %conv319 = zext i8 %240 to i32
  %add320 = add nsw i32 512, %conv319
  %idxprom321 = sext i32 %add320 to i64
  %241 = load double*, double** %values, align 8
  %arrayidx322 = getelementptr inbounds double, double* %241, i64 %idxprom321
  %242 = load double, double* %arrayidx322, align 8
  %add323 = fadd double %242, 1.000000e+00
  store double %add323, double* %arrayidx322, align 8
  %243 = load i8*, i8** %s, align 8
  %arrayidx324 = getelementptr inbounds i8, i8* %243, i64 2
  %244 = load i8, i8* %arrayidx324, align 1
  %conv325 = zext i8 %244 to i32
  %add326 = add nsw i32 768, %conv325
  %idxprom327 = sext i32 %add326 to i64
  %245 = load double*, double** %values, align 8
  %arrayidx328 = getelementptr inbounds double, double* %245, i64 %idxprom327
  %246 = load double, double* %arrayidx328, align 8
  %add329 = fadd double %246, 1.000000e+00
  store double %add329, double* %arrayidx328, align 8
  %247 = load i8*, i8** %s, align 8
  %arrayidx330 = getelementptr inbounds i8, i8* %247, i64 0
  %248 = load i8, i8* %arrayidx330, align 1
  %conv331 = zext i8 %248 to i32
  %249 = load i8*, i8** %s, align 8
  %arrayidx332 = getelementptr inbounds i8, i8* %249, i64 1
  %250 = load i8, i8* %arrayidx332, align 1
  %conv333 = zext i8 %250 to i32
  %cmp334 = icmp sgt i32 %conv331, %conv333
  br i1 %cmp334, label %cond.true.336, label %cond.false.339

cond.true.336:                                    ; preds = %while.body.311
  %251 = load i8*, i8** %s, align 8
  %arrayidx337 = getelementptr inbounds i8, i8* %251, i64 0
  %252 = load i8, i8* %arrayidx337, align 1
  %conv338 = zext i8 %252 to i32
  br label %cond.end.342

cond.false.339:                                   ; preds = %while.body.311
  %253 = load i8*, i8** %s, align 8
  %arrayidx340 = getelementptr inbounds i8, i8* %253, i64 1
  %254 = load i8, i8* %arrayidx340, align 1
  %conv341 = zext i8 %254 to i32
  br label %cond.end.342

cond.end.342:                                     ; preds = %cond.false.339, %cond.true.336
  %cond343 = phi i32 [ %conv338, %cond.true.336 ], [ %conv341, %cond.false.339 ]
  store i32 %cond343, i32* %max, align 4
  %255 = load i8*, i8** %s, align 8
  %arrayidx344 = getelementptr inbounds i8, i8* %255, i64 2
  %256 = load i8, i8* %arrayidx344, align 1
  %conv345 = zext i8 %256 to i32
  %257 = load i32, i32* %max, align 4
  %cmp346 = icmp sgt i32 %conv345, %257
  br i1 %cmp346, label %if.then.348, label %if.else.355

if.then.348:                                      ; preds = %cond.end.342
  %258 = load i8*, i8** %s, align 8
  %arrayidx349 = getelementptr inbounds i8, i8* %258, i64 2
  %259 = load i8, i8* %arrayidx349, align 1
  %conv350 = zext i8 %259 to i32
  %add351 = add nsw i32 0, %conv350
  %idxprom352 = sext i32 %add351 to i64
  %260 = load double*, double** %values, align 8
  %arrayidx353 = getelementptr inbounds double, double* %260, i64 %idxprom352
  %261 = load double, double* %arrayidx353, align 8
  %add354 = fadd double %261, 1.000000e+00
  store double %add354, double* %arrayidx353, align 8
  br label %if.end.360

if.else.355:                                      ; preds = %cond.end.342
  %262 = load i32, i32* %max, align 4
  %add356 = add nsw i32 0, %262
  %idxprom357 = sext i32 %add356 to i64
  %263 = load double*, double** %values, align 8
  %arrayidx358 = getelementptr inbounds double, double* %263, i64 %idxprom357
  %264 = load double, double* %arrayidx358, align 8
  %add359 = fadd double %264, 1.000000e+00
  store double %add359, double* %arrayidx358, align 8
  br label %if.end.360

if.end.360:                                       ; preds = %if.else.355, %if.then.348
  %265 = load i8*, i8** %s, align 8
  %add.ptr361 = getelementptr inbounds i8, i8* %265, i64 3
  store i8* %add.ptr361, i8** %s, align 8
  br label %while.cond.308

while.end.362:                                    ; preds = %while.cond.308
  %266 = load %struct._PixelRegion*, %struct._PixelRegion** %region.addr, align 8
  %rowstride363 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %266, i32 0, i32 5
  %267 = load i32, i32* %rowstride363, align 4
  %268 = load i8*, i8** %src, align 8
  %idx.ext364 = sext i32 %267 to i64
  %add.ptr365 = getelementptr inbounds i8, i8* %268, i64 %idx.ext364
  store i8* %add.ptr365, i8** %src, align 8
  br label %while.cond.303

while.end.366:                                    ; preds = %while.cond.303
  br label %sw.epilog.443

sw.bb.367:                                        ; preds = %if.else.244
  br label %while.cond.368

while.cond.368:                                   ; preds = %while.end.438, %sw.bb.367
  %269 = load i32, i32* %h, align 4
  %dec369 = add nsw i32 %269, -1
  store i32 %dec369, i32* %h, align 4
  %tobool370 = icmp ne i32 %269, 0
  br i1 %tobool370, label %while.body.371, label %while.end.442

while.body.371:                                   ; preds = %while.cond.368
  %270 = load i8*, i8** %src, align 8
  store i8* %270, i8** %s, align 8
  %271 = load %struct._PixelRegion*, %struct._PixelRegion** %region.addr, align 8
  %w372 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %271, i32 0, i32 8
  %272 = load i32, i32* %w372, align 4
  store i32 %272, i32* %w, align 4
  br label %while.cond.373

while.cond.373:                                   ; preds = %if.end.436, %while.body.371
  %273 = load i32, i32* %w, align 4
  %dec374 = add nsw i32 %273, -1
  store i32 %dec374, i32* %w, align 4
  %tobool375 = icmp ne i32 %273, 0
  br i1 %tobool375, label %while.body.376, label %while.end.438

while.body.376:                                   ; preds = %while.cond.373
  %274 = load i8*, i8** %s, align 8
  %arrayidx378 = getelementptr inbounds i8, i8* %274, i64 3
  %275 = load i8, i8* %arrayidx378, align 1
  %conv379 = zext i8 %275 to i32
  %div380 = sdiv i32 %conv379, 255
  %conv381 = sitofp i32 %div380 to double
  store double %conv381, double* %weight377, align 8
  %276 = load double, double* %weight377, align 8
  %277 = load i8*, i8** %s, align 8
  %arrayidx382 = getelementptr inbounds i8, i8* %277, i64 0
  %278 = load i8, i8* %arrayidx382, align 1
  %conv383 = zext i8 %278 to i32
  %add384 = add nsw i32 256, %conv383
  %idxprom385 = sext i32 %add384 to i64
  %279 = load double*, double** %values, align 8
  %arrayidx386 = getelementptr inbounds double, double* %279, i64 %idxprom385
  %280 = load double, double* %arrayidx386, align 8
  %add387 = fadd double %280, %276
  store double %add387, double* %arrayidx386, align 8
  %281 = load double, double* %weight377, align 8
  %282 = load i8*, i8** %s, align 8
  %arrayidx388 = getelementptr inbounds i8, i8* %282, i64 1
  %283 = load i8, i8* %arrayidx388, align 1
  %conv389 = zext i8 %283 to i32
  %add390 = add nsw i32 512, %conv389
  %idxprom391 = sext i32 %add390 to i64
  %284 = load double*, double** %values, align 8
  %arrayidx392 = getelementptr inbounds double, double* %284, i64 %idxprom391
  %285 = load double, double* %arrayidx392, align 8
  %add393 = fadd double %285, %281
  store double %add393, double* %arrayidx392, align 8
  %286 = load double, double* %weight377, align 8
  %287 = load i8*, i8** %s, align 8
  %arrayidx394 = getelementptr inbounds i8, i8* %287, i64 2
  %288 = load i8, i8* %arrayidx394, align 1
  %conv395 = zext i8 %288 to i32
  %add396 = add nsw i32 768, %conv395
  %idxprom397 = sext i32 %add396 to i64
  %289 = load double*, double** %values, align 8
  %arrayidx398 = getelementptr inbounds double, double* %289, i64 %idxprom397
  %290 = load double, double* %arrayidx398, align 8
  %add399 = fadd double %290, %286
  store double %add399, double* %arrayidx398, align 8
  %291 = load i8*, i8** %s, align 8
  %arrayidx400 = getelementptr inbounds i8, i8* %291, i64 3
  %292 = load i8, i8* %arrayidx400, align 1
  %conv401 = zext i8 %292 to i32
  %add402 = add nsw i32 1024, %conv401
  %idxprom403 = sext i32 %add402 to i64
  %293 = load double*, double** %values, align 8
  %arrayidx404 = getelementptr inbounds double, double* %293, i64 %idxprom403
  %294 = load double, double* %arrayidx404, align 8
  %add405 = fadd double %294, 1.000000e+00
  store double %add405, double* %arrayidx404, align 8
  %295 = load i8*, i8** %s, align 8
  %arrayidx406 = getelementptr inbounds i8, i8* %295, i64 0
  %296 = load i8, i8* %arrayidx406, align 1
  %conv407 = zext i8 %296 to i32
  %297 = load i8*, i8** %s, align 8
  %arrayidx408 = getelementptr inbounds i8, i8* %297, i64 1
  %298 = load i8, i8* %arrayidx408, align 1
  %conv409 = zext i8 %298 to i32
  %cmp410 = icmp sgt i32 %conv407, %conv409
  br i1 %cmp410, label %cond.true.412, label %cond.false.415

cond.true.412:                                    ; preds = %while.body.376
  %299 = load i8*, i8** %s, align 8
  %arrayidx413 = getelementptr inbounds i8, i8* %299, i64 0
  %300 = load i8, i8* %arrayidx413, align 1
  %conv414 = zext i8 %300 to i32
  br label %cond.end.418

cond.false.415:                                   ; preds = %while.body.376
  %301 = load i8*, i8** %s, align 8
  %arrayidx416 = getelementptr inbounds i8, i8* %301, i64 1
  %302 = load i8, i8* %arrayidx416, align 1
  %conv417 = zext i8 %302 to i32
  br label %cond.end.418

cond.end.418:                                     ; preds = %cond.false.415, %cond.true.412
  %cond419 = phi i32 [ %conv414, %cond.true.412 ], [ %conv417, %cond.false.415 ]
  store i32 %cond419, i32* %max, align 4
  %303 = load i8*, i8** %s, align 8
  %arrayidx420 = getelementptr inbounds i8, i8* %303, i64 2
  %304 = load i8, i8* %arrayidx420, align 1
  %conv421 = zext i8 %304 to i32
  %305 = load i32, i32* %max, align 4
  %cmp422 = icmp sgt i32 %conv421, %305
  br i1 %cmp422, label %if.then.424, label %if.else.431

if.then.424:                                      ; preds = %cond.end.418
  %306 = load double, double* %weight377, align 8
  %307 = load i8*, i8** %s, align 8
  %arrayidx425 = getelementptr inbounds i8, i8* %307, i64 2
  %308 = load i8, i8* %arrayidx425, align 1
  %conv426 = zext i8 %308 to i32
  %add427 = add nsw i32 0, %conv426
  %idxprom428 = sext i32 %add427 to i64
  %309 = load double*, double** %values, align 8
  %arrayidx429 = getelementptr inbounds double, double* %309, i64 %idxprom428
  %310 = load double, double* %arrayidx429, align 8
  %add430 = fadd double %310, %306
  store double %add430, double* %arrayidx429, align 8
  br label %if.end.436

if.else.431:                                      ; preds = %cond.end.418
  %311 = load double, double* %weight377, align 8
  %312 = load i32, i32* %max, align 4
  %add432 = add nsw i32 0, %312
  %idxprom433 = sext i32 %add432 to i64
  %313 = load double*, double** %values, align 8
  %arrayidx434 = getelementptr inbounds double, double* %313, i64 %idxprom433
  %314 = load double, double* %arrayidx434, align 8
  %add435 = fadd double %314, %311
  store double %add435, double* %arrayidx434, align 8
  br label %if.end.436

if.end.436:                                       ; preds = %if.else.431, %if.then.424
  %315 = load i8*, i8** %s, align 8
  %add.ptr437 = getelementptr inbounds i8, i8* %315, i64 4
  store i8* %add.ptr437, i8** %s, align 8
  br label %while.cond.373

while.end.438:                                    ; preds = %while.cond.373
  %316 = load %struct._PixelRegion*, %struct._PixelRegion** %region.addr, align 8
  %rowstride439 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %316, i32 0, i32 5
  %317 = load i32, i32* %rowstride439, align 4
  %318 = load i8*, i8** %src, align 8
  %idx.ext440 = sext i32 %317 to i64
  %add.ptr441 = getelementptr inbounds i8, i8* %318, i64 %idx.ext440
  store i8* %add.ptr441, i8** %src, align 8
  br label %while.cond.368

while.end.442:                                    ; preds = %while.cond.368
  br label %sw.epilog.443

sw.epilog.443:                                    ; preds = %if.else.244, %while.end.442, %while.end.366, %while.end.301, %while.end.268
  br label %if.end.444

if.end.444:                                       ; preds = %sw.epilog.443, %sw.epilog
  %319 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %mutex445 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %319, i32 0, i32 2
  %call446 = call %union._GMutex* @g_static_mutex_get_mutex_impl(%struct.GStaticMutex* %mutex445)
  call void @g_mutex_lock(%union._GMutex* %call446)
  %320 = load i32, i32* %slot, align 4
  %idxprom447 = sext i32 %320 to i64
  %321 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %slots448 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %321, i32 0, i32 3
  %arrayidx449 = getelementptr inbounds [16 x i8], [16 x i8]* %slots448, i32 0, i64 %idxprom447
  store i8 0, i8* %arrayidx449, align 1
  %322 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %mutex450 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %322, i32 0, i32 2
  %call451 = call %union._GMutex* @g_static_mutex_get_mutex_impl(%struct.GStaticMutex* %mutex450)
  call void @g_mutex_unlock(%union._GMutex* %call451)
  ret void
}

; Function Attrs: nounwind uwtable
define double @gimp_histogram_get_maximum(%struct._GimpHistogram* %histogram, i32 %channel) #0 {
entry:
  %retval = alloca double, align 8
  %histogram.addr = alloca %struct._GimpHistogram*, align 8
  %channel.addr = alloca i32, align 4
  %max = alloca double, align 8
  %x = alloca i32, align 4
  store %struct._GimpHistogram* %histogram, %struct._GimpHistogram** %histogram.addr, align 8
  store i32 %channel, i32* %channel.addr, align 4
  store double 0.000000e+00, double* %max, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %cmp = icmp ne %struct._GimpHistogram* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_histogram_get_maximum, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  store double 0.000000e+00, double* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %n_channels = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %1, i32 0, i32 1
  %2 = load i32, i32* %n_channels, align 4
  %cmp1 = icmp eq i32 %2, 3
  br i1 %cmp1, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %do.end
  %3 = load i32, i32* %channel.addr, align 4
  %cmp2 = icmp eq i32 %3, 4
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %channel.addr, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %land.lhs.true, %do.end
  %4 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %values = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %4, i32 0, i32 4
  %arrayidx = getelementptr inbounds [16 x double*], [16 x double*]* %values, i32 0, i64 0
  %5 = load double*, double** %arrayidx, align 8
  %tobool = icmp ne double* %5, null
  br i1 %tobool, label %lor.lhs.false, label %if.then.9

lor.lhs.false:                                    ; preds = %if.end.4
  %6 = load i32, i32* %channel.addr, align 4
  %cmp5 = icmp ne i32 %6, 5
  br i1 %cmp5, label %land.lhs.true.6, label %if.end.10

land.lhs.true.6:                                  ; preds = %lor.lhs.false
  %7 = load i32, i32* %channel.addr, align 4
  %8 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %n_channels7 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %8, i32 0, i32 1
  %9 = load i32, i32* %n_channels7, align 4
  %cmp8 = icmp uge i32 %7, %9
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %land.lhs.true.6, %if.end.4
  store double 0.000000e+00, double* %retval
  br label %return

if.end.10:                                        ; preds = %land.lhs.true.6, %lor.lhs.false
  %10 = load i32, i32* %channel.addr, align 4
  %cmp11 = icmp eq i32 %10, 5
  br i1 %cmp11, label %if.then.12, label %if.else.53

if.then.12:                                       ; preds = %if.end.10
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.12
  %11 = load i32, i32* %x, align 4
  %cmp13 = icmp slt i32 %11, 256
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load double, double* %max, align 8
  %13 = load i32, i32* %x, align 4
  %add = add nsw i32 256, %13
  %idxprom = sext i32 %add to i64
  %14 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %values14 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %14, i32 0, i32 4
  %arrayidx15 = getelementptr inbounds [16 x double*], [16 x double*]* %values14, i32 0, i64 0
  %15 = load double*, double** %arrayidx15, align 8
  %arrayidx16 = getelementptr inbounds double, double* %15, i64 %idxprom
  %16 = load double, double* %arrayidx16, align 8
  %cmp17 = fcmp ogt double %12, %16
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %17 = load double, double* %max, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %18 = load i32, i32* %x, align 4
  %add18 = add nsw i32 256, %18
  %idxprom19 = sext i32 %add18 to i64
  %19 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %values20 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %19, i32 0, i32 4
  %arrayidx21 = getelementptr inbounds [16 x double*], [16 x double*]* %values20, i32 0, i64 0
  %20 = load double*, double** %arrayidx21, align 8
  %arrayidx22 = getelementptr inbounds double, double* %20, i64 %idxprom19
  %21 = load double, double* %arrayidx22, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %17, %cond.true ], [ %21, %cond.false ]
  store double %cond, double* %max, align 8
  %22 = load double, double* %max, align 8
  %23 = load i32, i32* %x, align 4
  %add23 = add nsw i32 512, %23
  %idxprom24 = sext i32 %add23 to i64
  %24 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %values25 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %24, i32 0, i32 4
  %arrayidx26 = getelementptr inbounds [16 x double*], [16 x double*]* %values25, i32 0, i64 0
  %25 = load double*, double** %arrayidx26, align 8
  %arrayidx27 = getelementptr inbounds double, double* %25, i64 %idxprom24
  %26 = load double, double* %arrayidx27, align 8
  %cmp28 = fcmp ogt double %22, %26
  br i1 %cmp28, label %cond.true.29, label %cond.false.30

cond.true.29:                                     ; preds = %cond.end
  %27 = load double, double* %max, align 8
  br label %cond.end.36

cond.false.30:                                    ; preds = %cond.end
  %28 = load i32, i32* %x, align 4
  %add31 = add nsw i32 512, %28
  %idxprom32 = sext i32 %add31 to i64
  %29 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %values33 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %29, i32 0, i32 4
  %arrayidx34 = getelementptr inbounds [16 x double*], [16 x double*]* %values33, i32 0, i64 0
  %30 = load double*, double** %arrayidx34, align 8
  %arrayidx35 = getelementptr inbounds double, double* %30, i64 %idxprom32
  %31 = load double, double* %arrayidx35, align 8
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.false.30, %cond.true.29
  %cond37 = phi double [ %27, %cond.true.29 ], [ %31, %cond.false.30 ]
  store double %cond37, double* %max, align 8
  %32 = load double, double* %max, align 8
  %33 = load i32, i32* %x, align 4
  %add38 = add nsw i32 768, %33
  %idxprom39 = sext i32 %add38 to i64
  %34 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %values40 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %34, i32 0, i32 4
  %arrayidx41 = getelementptr inbounds [16 x double*], [16 x double*]* %values40, i32 0, i64 0
  %35 = load double*, double** %arrayidx41, align 8
  %arrayidx42 = getelementptr inbounds double, double* %35, i64 %idxprom39
  %36 = load double, double* %arrayidx42, align 8
  %cmp43 = fcmp ogt double %32, %36
  br i1 %cmp43, label %cond.true.44, label %cond.false.45

cond.true.44:                                     ; preds = %cond.end.36
  %37 = load double, double* %max, align 8
  br label %cond.end.51

cond.false.45:                                    ; preds = %cond.end.36
  %38 = load i32, i32* %x, align 4
  %add46 = add nsw i32 768, %38
  %idxprom47 = sext i32 %add46 to i64
  %39 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %values48 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %39, i32 0, i32 4
  %arrayidx49 = getelementptr inbounds [16 x double*], [16 x double*]* %values48, i32 0, i64 0
  %40 = load double*, double** %arrayidx49, align 8
  %arrayidx50 = getelementptr inbounds double, double* %40, i64 %idxprom47
  %41 = load double, double* %arrayidx50, align 8
  br label %cond.end.51

cond.end.51:                                      ; preds = %cond.false.45, %cond.true.44
  %cond52 = phi double [ %37, %cond.true.44 ], [ %41, %cond.false.45 ]
  store double %cond52, double* %max, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end.51
  %42 = load i32, i32* %x, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.76

if.else.53:                                       ; preds = %if.end.10
  store i32 0, i32* %x, align 4
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.73, %if.else.53
  %43 = load i32, i32* %x, align 4
  %cmp55 = icmp slt i32 %43, 256
  br i1 %cmp55, label %for.body.56, label %for.end.75

for.body.56:                                      ; preds = %for.cond.54
  %44 = load double, double* %max, align 8
  %45 = load i32, i32* %channel.addr, align 4
  %mul = mul i32 %45, 256
  %46 = load i32, i32* %x, align 4
  %add57 = add i32 %mul, %46
  %idxprom58 = zext i32 %add57 to i64
  %47 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %values59 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %47, i32 0, i32 4
  %arrayidx60 = getelementptr inbounds [16 x double*], [16 x double*]* %values59, i32 0, i64 0
  %48 = load double*, double** %arrayidx60, align 8
  %arrayidx61 = getelementptr inbounds double, double* %48, i64 %idxprom58
  %49 = load double, double* %arrayidx61, align 8
  %cmp62 = fcmp ogt double %44, %49
  br i1 %cmp62, label %cond.true.63, label %cond.false.64

cond.true.63:                                     ; preds = %for.body.56
  %50 = load double, double* %max, align 8
  br label %cond.end.71

cond.false.64:                                    ; preds = %for.body.56
  %51 = load i32, i32* %channel.addr, align 4
  %mul65 = mul i32 %51, 256
  %52 = load i32, i32* %x, align 4
  %add66 = add i32 %mul65, %52
  %idxprom67 = zext i32 %add66 to i64
  %53 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %values68 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %53, i32 0, i32 4
  %arrayidx69 = getelementptr inbounds [16 x double*], [16 x double*]* %values68, i32 0, i64 0
  %54 = load double*, double** %arrayidx69, align 8
  %arrayidx70 = getelementptr inbounds double, double* %54, i64 %idxprom67
  %55 = load double, double* %arrayidx70, align 8
  br label %cond.end.71

cond.end.71:                                      ; preds = %cond.false.64, %cond.true.63
  %cond72 = phi double [ %50, %cond.true.63 ], [ %55, %cond.false.64 ]
  store double %cond72, double* %max, align 8
  br label %for.inc.73

for.inc.73:                                       ; preds = %cond.end.71
  %56 = load i32, i32* %x, align 4
  %inc74 = add nsw i32 %56, 1
  store i32 %inc74, i32* %x, align 4
  br label %for.cond.54

for.end.75:                                       ; preds = %for.cond.54
  br label %if.end.76

if.end.76:                                        ; preds = %for.end.75, %for.end
  %57 = load double, double* %max, align 8
  store double %57, double* %retval
  br label %return

return:                                           ; preds = %if.end.76, %if.then.9, %if.else
  %58 = load double, double* %retval
  ret double %58
}

; Function Attrs: nounwind uwtable
define double @gimp_histogram_get_value(%struct._GimpHistogram* %histogram, i32 %channel, i32 %bin) #0 {
entry:
  %retval = alloca double, align 8
  %histogram.addr = alloca %struct._GimpHistogram*, align 8
  %channel.addr = alloca i32, align 4
  %bin.addr = alloca i32, align 4
  %min = alloca double, align 8
  store %struct._GimpHistogram* %histogram, %struct._GimpHistogram** %histogram.addr, align 8
  store i32 %channel, i32* %channel.addr, align 4
  store i32 %bin, i32* %bin.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %cmp = icmp ne %struct._GimpHistogram* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_histogram_get_value, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  store double 0.000000e+00, double* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %n_channels = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %1, i32 0, i32 1
  %2 = load i32, i32* %n_channels, align 4
  %cmp1 = icmp eq i32 %2, 3
  br i1 %cmp1, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %do.end
  %3 = load i32, i32* %channel.addr, align 4
  %cmp2 = icmp eq i32 %3, 4
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %channel.addr, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %land.lhs.true, %do.end
  %4 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %values = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %4, i32 0, i32 4
  %arrayidx = getelementptr inbounds [16 x double*], [16 x double*]* %values, i32 0, i64 0
  %5 = load double*, double** %arrayidx, align 8
  %tobool = icmp ne double* %5, null
  br i1 %tobool, label %lor.lhs.false, label %if.then.18

lor.lhs.false:                                    ; preds = %if.end.4
  %6 = load i32, i32* %bin.addr, align 4
  %cmp5 = icmp slt i32 %6, 0
  br i1 %cmp5, label %if.then.18, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %7 = load i32, i32* %bin.addr, align 4
  %cmp7 = icmp sge i32 %7, 256
  br i1 %cmp7, label %if.then.18, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false.6
  %8 = load i32, i32* %channel.addr, align 4
  %cmp9 = icmp eq i32 %8, 5
  br i1 %cmp9, label %land.lhs.true.10, label %lor.lhs.false.13

land.lhs.true.10:                                 ; preds = %lor.lhs.false.8
  %9 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %n_channels11 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %9, i32 0, i32 1
  %10 = load i32, i32* %n_channels11, align 4
  %cmp12 = icmp slt i32 %10, 4
  br i1 %cmp12, label %if.then.18, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %land.lhs.true.10, %lor.lhs.false.8
  %11 = load i32, i32* %channel.addr, align 4
  %cmp14 = icmp ne i32 %11, 5
  br i1 %cmp14, label %land.lhs.true.15, label %if.end.19

land.lhs.true.15:                                 ; preds = %lor.lhs.false.13
  %12 = load i32, i32* %channel.addr, align 4
  %13 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %n_channels16 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %13, i32 0, i32 1
  %14 = load i32, i32* %n_channels16, align 4
  %cmp17 = icmp uge i32 %12, %14
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %land.lhs.true.15, %land.lhs.true.10, %lor.lhs.false.6, %lor.lhs.false, %if.end.4
  store double 0.000000e+00, double* %retval
  br label %return

if.end.19:                                        ; preds = %land.lhs.true.15, %lor.lhs.false.13
  %15 = load i32, i32* %channel.addr, align 4
  %cmp20 = icmp eq i32 %15, 5
  br i1 %cmp20, label %if.then.21, label %if.else.51

if.then.21:                                       ; preds = %if.end.19
  %16 = load i32, i32* %bin.addr, align 4
  %add = add nsw i32 256, %16
  %idxprom = sext i32 %add to i64
  %17 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %values22 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %17, i32 0, i32 4
  %arrayidx23 = getelementptr inbounds [16 x double*], [16 x double*]* %values22, i32 0, i64 0
  %18 = load double*, double** %arrayidx23, align 8
  %arrayidx24 = getelementptr inbounds double, double* %18, i64 %idxprom
  %19 = load double, double* %arrayidx24, align 8
  store double %19, double* %min, align 8
  %20 = load double, double* %min, align 8
  %21 = load i32, i32* %bin.addr, align 4
  %add25 = add nsw i32 512, %21
  %idxprom26 = sext i32 %add25 to i64
  %22 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %values27 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %22, i32 0, i32 4
  %arrayidx28 = getelementptr inbounds [16 x double*], [16 x double*]* %values27, i32 0, i64 0
  %23 = load double*, double** %arrayidx28, align 8
  %arrayidx29 = getelementptr inbounds double, double* %23, i64 %idxprom26
  %24 = load double, double* %arrayidx29, align 8
  %cmp30 = fcmp olt double %20, %24
  br i1 %cmp30, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.21
  %25 = load double, double* %min, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.21
  %26 = load i32, i32* %bin.addr, align 4
  %add31 = add nsw i32 512, %26
  %idxprom32 = sext i32 %add31 to i64
  %27 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %values33 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %27, i32 0, i32 4
  %arrayidx34 = getelementptr inbounds [16 x double*], [16 x double*]* %values33, i32 0, i64 0
  %28 = load double*, double** %arrayidx34, align 8
  %arrayidx35 = getelementptr inbounds double, double* %28, i64 %idxprom32
  %29 = load double, double* %arrayidx35, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %25, %cond.true ], [ %29, %cond.false ]
  store double %cond, double* %min, align 8
  %30 = load double, double* %min, align 8
  %31 = load i32, i32* %bin.addr, align 4
  %add36 = add nsw i32 768, %31
  %idxprom37 = sext i32 %add36 to i64
  %32 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %values38 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %32, i32 0, i32 4
  %arrayidx39 = getelementptr inbounds [16 x double*], [16 x double*]* %values38, i32 0, i64 0
  %33 = load double*, double** %arrayidx39, align 8
  %arrayidx40 = getelementptr inbounds double, double* %33, i64 %idxprom37
  %34 = load double, double* %arrayidx40, align 8
  %cmp41 = fcmp olt double %30, %34
  br i1 %cmp41, label %cond.true.42, label %cond.false.43

cond.true.42:                                     ; preds = %cond.end
  %35 = load double, double* %min, align 8
  br label %cond.end.49

cond.false.43:                                    ; preds = %cond.end
  %36 = load i32, i32* %bin.addr, align 4
  %add44 = add nsw i32 768, %36
  %idxprom45 = sext i32 %add44 to i64
  %37 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %values46 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %37, i32 0, i32 4
  %arrayidx47 = getelementptr inbounds [16 x double*], [16 x double*]* %values46, i32 0, i64 0
  %38 = load double*, double** %arrayidx47, align 8
  %arrayidx48 = getelementptr inbounds double, double* %38, i64 %idxprom45
  %39 = load double, double* %arrayidx48, align 8
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.false.43, %cond.true.42
  %cond50 = phi double [ %35, %cond.true.42 ], [ %39, %cond.false.43 ]
  store double %cond50, double* %retval
  br label %return

if.else.51:                                       ; preds = %if.end.19
  %40 = load i32, i32* %channel.addr, align 4
  %mul = mul i32 %40, 256
  %41 = load i32, i32* %bin.addr, align 4
  %add52 = add i32 %mul, %41
  %idxprom53 = zext i32 %add52 to i64
  %42 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %values54 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %42, i32 0, i32 4
  %arrayidx55 = getelementptr inbounds [16 x double*], [16 x double*]* %values54, i32 0, i64 0
  %43 = load double*, double** %arrayidx55, align 8
  %arrayidx56 = getelementptr inbounds double, double* %43, i64 %idxprom53
  %44 = load double, double* %arrayidx56, align 8
  store double %44, double* %retval
  br label %return

return:                                           ; preds = %if.else.51, %cond.end.49, %if.then.18, %if.else
  %45 = load double, double* %retval
  ret double %45
}

; Function Attrs: nounwind uwtable
define double @gimp_histogram_get_channel(%struct._GimpHistogram* %histogram, i32 %channel, i32 %bin) #0 {
entry:
  %retval = alloca double, align 8
  %histogram.addr = alloca %struct._GimpHistogram*, align 8
  %channel.addr = alloca i32, align 4
  %bin.addr = alloca i32, align 4
  store %struct._GimpHistogram* %histogram, %struct._GimpHistogram** %histogram.addr, align 8
  store i32 %channel, i32* %channel.addr, align 4
  store i32 %bin, i32* %bin.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %cmp = icmp ne %struct._GimpHistogram* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_histogram_get_channel, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  store double 0.000000e+00, double* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %n_channels = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %1, i32 0, i32 1
  %2 = load i32, i32* %n_channels, align 4
  %cmp1 = icmp sgt i32 %2, 3
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %do.end
  %3 = load i32, i32* %channel.addr, align 4
  %inc = add i32 %3, 1
  store i32 %inc, i32* %channel.addr, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %do.end
  %4 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %5 = load i32, i32* %channel.addr, align 4
  %6 = load i32, i32* %bin.addr, align 4
  %call = call double @gimp_histogram_get_value(%struct._GimpHistogram* %4, i32 %5, i32 %6)
  store double %call, double* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.else
  %7 = load double, double* %retval
  ret double %7
}

; Function Attrs: nounwind uwtable
define i32 @gimp_histogram_n_channels(%struct._GimpHistogram* %histogram) #0 {
entry:
  %retval = alloca i32, align 4
  %histogram.addr = alloca %struct._GimpHistogram*, align 8
  store %struct._GimpHistogram* %histogram, %struct._GimpHistogram** %histogram.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %cmp = icmp ne %struct._GimpHistogram* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_histogram_n_channels, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %n_channels = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %1, i32 0, i32 1
  %2 = load i32, i32* %n_channels, align 4
  %sub = sub nsw i32 %2, 1
  store i32 %sub, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define double @gimp_histogram_get_count(%struct._GimpHistogram* %histogram, i32 %channel, i32 %start, i32 %end) #0 {
entry:
  %retval = alloca double, align 8
  %histogram.addr = alloca %struct._GimpHistogram*, align 8
  %channel.addr = alloca i32, align 4
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %count = alloca double, align 8
  store %struct._GimpHistogram* %histogram, %struct._GimpHistogram** %histogram.addr, align 8
  store i32 %channel, i32* %channel.addr, align 4
  store i32 %start, i32* %start.addr, align 4
  store i32 %end, i32* %end.addr, align 4
  store double 0.000000e+00, double* %count, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %cmp = icmp ne %struct._GimpHistogram* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_histogram_get_count, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  store double 0.000000e+00, double* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %n_channels = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %1, i32 0, i32 1
  %2 = load i32, i32* %n_channels, align 4
  %cmp1 = icmp eq i32 %2, 3
  br i1 %cmp1, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %do.end
  %3 = load i32, i32* %channel.addr, align 4
  %cmp2 = icmp eq i32 %3, 4
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %channel.addr, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %land.lhs.true, %do.end
  %4 = load i32, i32* %channel.addr, align 4
  %cmp5 = icmp eq i32 %4, 5
  br i1 %cmp5, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %if.end.4
  %5 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %6 = load i32, i32* %start.addr, align 4
  %7 = load i32, i32* %end.addr, align 4
  %call = call double @gimp_histogram_get_count(%struct._GimpHistogram* %5, i32 1, i32 %6, i32 %7)
  %8 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %9 = load i32, i32* %start.addr, align 4
  %10 = load i32, i32* %end.addr, align 4
  %call7 = call double @gimp_histogram_get_count(%struct._GimpHistogram* %8, i32 2, i32 %9, i32 %10)
  %add = fadd double %call, %call7
  %11 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %12 = load i32, i32* %start.addr, align 4
  %13 = load i32, i32* %end.addr, align 4
  %call8 = call double @gimp_histogram_get_count(%struct._GimpHistogram* %11, i32 3, i32 %12, i32 %13)
  %add9 = fadd double %add, %call8
  store double %add9, double* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.4
  %14 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %values = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %14, i32 0, i32 4
  %arrayidx = getelementptr inbounds [16 x double*], [16 x double*]* %values, i32 0, i64 0
  %15 = load double*, double** %arrayidx, align 8
  %tobool = icmp ne double* %15, null
  br i1 %tobool, label %lor.lhs.false, label %if.then.15

lor.lhs.false:                                    ; preds = %if.end.10
  %16 = load i32, i32* %start.addr, align 4
  %17 = load i32, i32* %end.addr, align 4
  %cmp11 = icmp sgt i32 %16, %17
  br i1 %cmp11, label %if.then.15, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false
  %18 = load i32, i32* %channel.addr, align 4
  %19 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %n_channels13 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %19, i32 0, i32 1
  %20 = load i32, i32* %n_channels13, align 4
  %cmp14 = icmp uge i32 %18, %20
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %lor.lhs.false.12, %lor.lhs.false, %if.end.10
  store double 0.000000e+00, double* %retval
  br label %return

if.end.16:                                        ; preds = %lor.lhs.false.12
  %21 = load i32, i32* %start.addr, align 4
  %cmp17 = icmp sgt i32 %21, 255
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.16
  br label %cond.end.21

cond.false:                                       ; preds = %if.end.16
  %22 = load i32, i32* %start.addr, align 4
  %cmp18 = icmp slt i32 %22, 0
  br i1 %cmp18, label %cond.true.19, label %cond.false.20

cond.true.19:                                     ; preds = %cond.false
  br label %cond.end

cond.false.20:                                    ; preds = %cond.false
  %23 = load i32, i32* %start.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.20, %cond.true.19
  %cond = phi i32 [ 0, %cond.true.19 ], [ %23, %cond.false.20 ]
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.end, %cond.true
  %cond22 = phi i32 [ 255, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond22, i32* %start.addr, align 4
  %24 = load i32, i32* %end.addr, align 4
  %cmp23 = icmp sgt i32 %24, 255
  br i1 %cmp23, label %cond.true.24, label %cond.false.25

cond.true.24:                                     ; preds = %cond.end.21
  br label %cond.end.31

cond.false.25:                                    ; preds = %cond.end.21
  %25 = load i32, i32* %end.addr, align 4
  %cmp26 = icmp slt i32 %25, 0
  br i1 %cmp26, label %cond.true.27, label %cond.false.28

cond.true.27:                                     ; preds = %cond.false.25
  br label %cond.end.29

cond.false.28:                                    ; preds = %cond.false.25
  %26 = load i32, i32* %end.addr, align 4
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.false.28, %cond.true.27
  %cond30 = phi i32 [ 0, %cond.true.27 ], [ %26, %cond.false.28 ]
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.end.29, %cond.true.24
  %cond32 = phi i32 [ 255, %cond.true.24 ], [ %cond30, %cond.end.29 ]
  store i32 %cond32, i32* %end.addr, align 4
  %27 = load i32, i32* %start.addr, align 4
  store i32 %27, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.31
  %28 = load i32, i32* %i, align 4
  %29 = load i32, i32* %end.addr, align 4
  %cmp33 = icmp sle i32 %28, %29
  br i1 %cmp33, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load i32, i32* %channel.addr, align 4
  %mul = mul i32 %30, 256
  %31 = load i32, i32* %i, align 4
  %add34 = add i32 %mul, %31
  %idxprom = zext i32 %add34 to i64
  %32 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %values35 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %32, i32 0, i32 4
  %arrayidx36 = getelementptr inbounds [16 x double*], [16 x double*]* %values35, i32 0, i64 0
  %33 = load double*, double** %arrayidx36, align 8
  %arrayidx37 = getelementptr inbounds double, double* %33, i64 %idxprom
  %34 = load double, double* %arrayidx37, align 8
  %35 = load double, double* %count, align 8
  %add38 = fadd double %35, %34
  store double %add38, double* %count, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load i32, i32* %i, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = load double, double* %count, align 8
  store double %37, double* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.15, %if.then.6, %if.else
  %38 = load double, double* %retval
  ret double %38
}

; Function Attrs: nounwind uwtable
define double @gimp_histogram_get_mean(%struct._GimpHistogram* %histogram, i32 %channel, i32 %start, i32 %end) #0 {
entry:
  %retval = alloca double, align 8
  %histogram.addr = alloca %struct._GimpHistogram*, align 8
  %channel.addr = alloca i32, align 4
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %mean = alloca double, align 8
  %count = alloca double, align 8
  store %struct._GimpHistogram* %histogram, %struct._GimpHistogram** %histogram.addr, align 8
  store i32 %channel, i32* %channel.addr, align 4
  store i32 %start, i32* %start.addr, align 4
  store i32 %end, i32* %end.addr, align 4
  store double 0.000000e+00, double* %mean, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %cmp = icmp ne %struct._GimpHistogram* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_histogram_get_mean, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  store double 0.000000e+00, double* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %n_channels = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %1, i32 0, i32 1
  %2 = load i32, i32* %n_channels, align 4
  %cmp1 = icmp eq i32 %2, 3
  br i1 %cmp1, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %do.end
  %3 = load i32, i32* %channel.addr, align 4
  %cmp2 = icmp eq i32 %3, 4
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %channel.addr, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %land.lhs.true, %do.end
  %4 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %values = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %4, i32 0, i32 4
  %arrayidx = getelementptr inbounds [16 x double*], [16 x double*]* %values, i32 0, i64 0
  %5 = load double*, double** %arrayidx, align 8
  %tobool = icmp ne double* %5, null
  br i1 %tobool, label %lor.lhs.false, label %if.then.16

lor.lhs.false:                                    ; preds = %if.end.4
  %6 = load i32, i32* %start.addr, align 4
  %7 = load i32, i32* %end.addr, align 4
  %cmp5 = icmp sgt i32 %6, %7
  br i1 %cmp5, label %if.then.16, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %8 = load i32, i32* %channel.addr, align 4
  %cmp7 = icmp eq i32 %8, 5
  br i1 %cmp7, label %land.lhs.true.8, label %lor.lhs.false.11

land.lhs.true.8:                                  ; preds = %lor.lhs.false.6
  %9 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %n_channels9 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %9, i32 0, i32 1
  %10 = load i32, i32* %n_channels9, align 4
  %cmp10 = icmp slt i32 %10, 4
  br i1 %cmp10, label %if.then.16, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %land.lhs.true.8, %lor.lhs.false.6
  %11 = load i32, i32* %channel.addr, align 4
  %cmp12 = icmp ne i32 %11, 5
  br i1 %cmp12, label %land.lhs.true.13, label %if.end.17

land.lhs.true.13:                                 ; preds = %lor.lhs.false.11
  %12 = load i32, i32* %channel.addr, align 4
  %13 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %n_channels14 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %13, i32 0, i32 1
  %14 = load i32, i32* %n_channels14, align 4
  %cmp15 = icmp uge i32 %12, %14
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %land.lhs.true.13, %land.lhs.true.8, %lor.lhs.false, %if.end.4
  store double 0.000000e+00, double* %retval
  br label %return

if.end.17:                                        ; preds = %land.lhs.true.13, %lor.lhs.false.11
  %15 = load i32, i32* %start.addr, align 4
  %cmp18 = icmp sgt i32 %15, 255
  br i1 %cmp18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.17
  br label %cond.end.22

cond.false:                                       ; preds = %if.end.17
  %16 = load i32, i32* %start.addr, align 4
  %cmp19 = icmp slt i32 %16, 0
  br i1 %cmp19, label %cond.true.20, label %cond.false.21

cond.true.20:                                     ; preds = %cond.false
  br label %cond.end

cond.false.21:                                    ; preds = %cond.false
  %17 = load i32, i32* %start.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.21, %cond.true.20
  %cond = phi i32 [ 0, %cond.true.20 ], [ %17, %cond.false.21 ]
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.end, %cond.true
  %cond23 = phi i32 [ 255, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond23, i32* %start.addr, align 4
  %18 = load i32, i32* %end.addr, align 4
  %cmp24 = icmp sgt i32 %18, 255
  br i1 %cmp24, label %cond.true.25, label %cond.false.26

cond.true.25:                                     ; preds = %cond.end.22
  br label %cond.end.32

cond.false.26:                                    ; preds = %cond.end.22
  %19 = load i32, i32* %end.addr, align 4
  %cmp27 = icmp slt i32 %19, 0
  br i1 %cmp27, label %cond.true.28, label %cond.false.29

cond.true.28:                                     ; preds = %cond.false.26
  br label %cond.end.30

cond.false.29:                                    ; preds = %cond.false.26
  %20 = load i32, i32* %end.addr, align 4
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.29, %cond.true.28
  %cond31 = phi i32 [ 0, %cond.true.28 ], [ %20, %cond.false.29 ]
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.end.30, %cond.true.25
  %cond33 = phi i32 [ 255, %cond.true.25 ], [ %cond31, %cond.end.30 ]
  store i32 %cond33, i32* %end.addr, align 4
  %21 = load i32, i32* %channel.addr, align 4
  %cmp34 = icmp eq i32 %21, 5
  br i1 %cmp34, label %if.then.35, label %if.else.57

if.then.35:                                       ; preds = %cond.end.32
  %22 = load i32, i32* %start.addr, align 4
  store i32 %22, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.35
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %end.addr, align 4
  %cmp36 = icmp sle i32 %23, %24
  br i1 %cmp36, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load i32, i32* %i, align 4
  %conv = sitofp i32 %25 to double
  %26 = load i32, i32* %i, align 4
  %add = add nsw i32 256, %26
  %idxprom = sext i32 %add to i64
  %27 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %values37 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %27, i32 0, i32 4
  %arrayidx38 = getelementptr inbounds [16 x double*], [16 x double*]* %values37, i32 0, i64 0
  %28 = load double*, double** %arrayidx38, align 8
  %arrayidx39 = getelementptr inbounds double, double* %28, i64 %idxprom
  %29 = load double, double* %arrayidx39, align 8
  %mul = fmul double %conv, %29
  %30 = load i32, i32* %i, align 4
  %conv40 = sitofp i32 %30 to double
  %31 = load i32, i32* %i, align 4
  %add41 = add nsw i32 512, %31
  %idxprom42 = sext i32 %add41 to i64
  %32 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %values43 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %32, i32 0, i32 4
  %arrayidx44 = getelementptr inbounds [16 x double*], [16 x double*]* %values43, i32 0, i64 0
  %33 = load double*, double** %arrayidx44, align 8
  %arrayidx45 = getelementptr inbounds double, double* %33, i64 %idxprom42
  %34 = load double, double* %arrayidx45, align 8
  %mul46 = fmul double %conv40, %34
  %add47 = fadd double %mul, %mul46
  %35 = load i32, i32* %i, align 4
  %conv48 = sitofp i32 %35 to double
  %36 = load i32, i32* %i, align 4
  %add49 = add nsw i32 768, %36
  %idxprom50 = sext i32 %add49 to i64
  %37 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %values51 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %37, i32 0, i32 4
  %arrayidx52 = getelementptr inbounds [16 x double*], [16 x double*]* %values51, i32 0, i64 0
  %38 = load double*, double** %arrayidx52, align 8
  %arrayidx53 = getelementptr inbounds double, double* %38, i64 %idxprom50
  %39 = load double, double* %arrayidx53, align 8
  %mul54 = fmul double %conv48, %39
  %add55 = fadd double %add47, %mul54
  %40 = load double, double* %mean, align 8
  %add56 = fadd double %40, %add55
  store double %add56, double* %mean, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %41 = load i32, i32* %i, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.74

if.else.57:                                       ; preds = %cond.end.32
  %42 = load i32, i32* %start.addr, align 4
  store i32 %42, i32* %i, align 4
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.71, %if.else.57
  %43 = load i32, i32* %i, align 4
  %44 = load i32, i32* %end.addr, align 4
  %cmp59 = icmp sle i32 %43, %44
  br i1 %cmp59, label %for.body.61, label %for.end.73

for.body.61:                                      ; preds = %for.cond.58
  %45 = load i32, i32* %i, align 4
  %conv62 = sitofp i32 %45 to double
  %46 = load i32, i32* %channel.addr, align 4
  %mul63 = mul i32 %46, 256
  %47 = load i32, i32* %i, align 4
  %add64 = add i32 %mul63, %47
  %idxprom65 = zext i32 %add64 to i64
  %48 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %values66 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %48, i32 0, i32 4
  %arrayidx67 = getelementptr inbounds [16 x double*], [16 x double*]* %values66, i32 0, i64 0
  %49 = load double*, double** %arrayidx67, align 8
  %arrayidx68 = getelementptr inbounds double, double* %49, i64 %idxprom65
  %50 = load double, double* %arrayidx68, align 8
  %mul69 = fmul double %conv62, %50
  %51 = load double, double* %mean, align 8
  %add70 = fadd double %51, %mul69
  store double %add70, double* %mean, align 8
  br label %for.inc.71

for.inc.71:                                       ; preds = %for.body.61
  %52 = load i32, i32* %i, align 4
  %inc72 = add nsw i32 %52, 1
  store i32 %inc72, i32* %i, align 4
  br label %for.cond.58

for.end.73:                                       ; preds = %for.cond.58
  br label %if.end.74

if.end.74:                                        ; preds = %for.end.73, %for.end
  %53 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %54 = load i32, i32* %channel.addr, align 4
  %55 = load i32, i32* %start.addr, align 4
  %56 = load i32, i32* %end.addr, align 4
  %call = call double @gimp_histogram_get_count(%struct._GimpHistogram* %53, i32 %54, i32 %55, i32 %56)
  store double %call, double* %count, align 8
  %57 = load double, double* %count, align 8
  %cmp75 = fcmp ogt double %57, 0.000000e+00
  br i1 %cmp75, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %if.end.74
  %58 = load double, double* %mean, align 8
  %59 = load double, double* %count, align 8
  %div = fdiv double %58, %59
  store double %div, double* %retval
  br label %return

if.end.78:                                        ; preds = %if.end.74
  %60 = load double, double* %mean, align 8
  store double %60, double* %retval
  br label %return

return:                                           ; preds = %if.end.78, %if.then.77, %if.then.16, %if.else
  %61 = load double, double* %retval
  ret double %61
}

; Function Attrs: nounwind uwtable
define i32 @gimp_histogram_get_median(%struct._GimpHistogram* %histogram, i32 %channel, i32 %start, i32 %end) #0 {
entry:
  %retval = alloca i32, align 4
  %histogram.addr = alloca %struct._GimpHistogram*, align 8
  %channel.addr = alloca i32, align 4
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %sum = alloca double, align 8
  %count = alloca double, align 8
  store %struct._GimpHistogram* %histogram, %struct._GimpHistogram** %histogram.addr, align 8
  store i32 %channel, i32* %channel.addr, align 4
  store i32 %start, i32* %start.addr, align 4
  store i32 %end, i32* %end.addr, align 4
  store double 0.000000e+00, double* %sum, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %cmp = icmp ne %struct._GimpHistogram* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_histogram_get_median, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %n_channels = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %1, i32 0, i32 1
  %2 = load i32, i32* %n_channels, align 4
  %cmp1 = icmp eq i32 %2, 3
  br i1 %cmp1, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %do.end
  %3 = load i32, i32* %channel.addr, align 4
  %cmp2 = icmp eq i32 %3, 4
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %channel.addr, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %land.lhs.true, %do.end
  %4 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %values = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %4, i32 0, i32 4
  %arrayidx = getelementptr inbounds [16 x double*], [16 x double*]* %values, i32 0, i64 0
  %5 = load double*, double** %arrayidx, align 8
  %tobool = icmp ne double* %5, null
  br i1 %tobool, label %lor.lhs.false, label %if.then.16

lor.lhs.false:                                    ; preds = %if.end.4
  %6 = load i32, i32* %start.addr, align 4
  %7 = load i32, i32* %end.addr, align 4
  %cmp5 = icmp sgt i32 %6, %7
  br i1 %cmp5, label %if.then.16, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %8 = load i32, i32* %channel.addr, align 4
  %cmp7 = icmp eq i32 %8, 5
  br i1 %cmp7, label %land.lhs.true.8, label %lor.lhs.false.11

land.lhs.true.8:                                  ; preds = %lor.lhs.false.6
  %9 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %n_channels9 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %9, i32 0, i32 1
  %10 = load i32, i32* %n_channels9, align 4
  %cmp10 = icmp slt i32 %10, 4
  br i1 %cmp10, label %if.then.16, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %land.lhs.true.8, %lor.lhs.false.6
  %11 = load i32, i32* %channel.addr, align 4
  %cmp12 = icmp ne i32 %11, 5
  br i1 %cmp12, label %land.lhs.true.13, label %if.end.17

land.lhs.true.13:                                 ; preds = %lor.lhs.false.11
  %12 = load i32, i32* %channel.addr, align 4
  %13 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %n_channels14 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %13, i32 0, i32 1
  %14 = load i32, i32* %n_channels14, align 4
  %cmp15 = icmp uge i32 %12, %14
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %land.lhs.true.13, %land.lhs.true.8, %lor.lhs.false, %if.end.4
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %land.lhs.true.13, %lor.lhs.false.11
  %15 = load i32, i32* %start.addr, align 4
  %cmp18 = icmp sgt i32 %15, 255
  br i1 %cmp18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.17
  br label %cond.end.22

cond.false:                                       ; preds = %if.end.17
  %16 = load i32, i32* %start.addr, align 4
  %cmp19 = icmp slt i32 %16, 0
  br i1 %cmp19, label %cond.true.20, label %cond.false.21

cond.true.20:                                     ; preds = %cond.false
  br label %cond.end

cond.false.21:                                    ; preds = %cond.false
  %17 = load i32, i32* %start.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.21, %cond.true.20
  %cond = phi i32 [ 0, %cond.true.20 ], [ %17, %cond.false.21 ]
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.end, %cond.true
  %cond23 = phi i32 [ 255, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond23, i32* %start.addr, align 4
  %18 = load i32, i32* %end.addr, align 4
  %cmp24 = icmp sgt i32 %18, 255
  br i1 %cmp24, label %cond.true.25, label %cond.false.26

cond.true.25:                                     ; preds = %cond.end.22
  br label %cond.end.32

cond.false.26:                                    ; preds = %cond.end.22
  %19 = load i32, i32* %end.addr, align 4
  %cmp27 = icmp slt i32 %19, 0
  br i1 %cmp27, label %cond.true.28, label %cond.false.29

cond.true.28:                                     ; preds = %cond.false.26
  br label %cond.end.30

cond.false.29:                                    ; preds = %cond.false.26
  %20 = load i32, i32* %end.addr, align 4
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.29, %cond.true.28
  %cond31 = phi i32 [ 0, %cond.true.28 ], [ %20, %cond.false.29 ]
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.end.30, %cond.true.25
  %cond33 = phi i32 [ 255, %cond.true.25 ], [ %cond31, %cond.end.30 ]
  store i32 %cond33, i32* %end.addr, align 4
  %21 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %22 = load i32, i32* %channel.addr, align 4
  %23 = load i32, i32* %start.addr, align 4
  %24 = load i32, i32* %end.addr, align 4
  %call = call double @gimp_histogram_get_count(%struct._GimpHistogram* %21, i32 %22, i32 %23, i32 %24)
  store double %call, double* %count, align 8
  %25 = load i32, i32* %channel.addr, align 4
  %cmp34 = icmp eq i32 %25, 5
  br i1 %cmp34, label %if.then.35, label %if.else.56

if.then.35:                                       ; preds = %cond.end.32
  %26 = load i32, i32* %start.addr, align 4
  store i32 %26, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.35
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* %end.addr, align 4
  %cmp36 = icmp sle i32 %27, %28
  br i1 %cmp36, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %i, align 4
  %add = add nsw i32 256, %29
  %idxprom = sext i32 %add to i64
  %30 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %values37 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %30, i32 0, i32 4
  %arrayidx38 = getelementptr inbounds [16 x double*], [16 x double*]* %values37, i32 0, i64 0
  %31 = load double*, double** %arrayidx38, align 8
  %arrayidx39 = getelementptr inbounds double, double* %31, i64 %idxprom
  %32 = load double, double* %arrayidx39, align 8
  %33 = load i32, i32* %i, align 4
  %add40 = add nsw i32 512, %33
  %idxprom41 = sext i32 %add40 to i64
  %34 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %values42 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %34, i32 0, i32 4
  %arrayidx43 = getelementptr inbounds [16 x double*], [16 x double*]* %values42, i32 0, i64 0
  %35 = load double*, double** %arrayidx43, align 8
  %arrayidx44 = getelementptr inbounds double, double* %35, i64 %idxprom41
  %36 = load double, double* %arrayidx44, align 8
  %add45 = fadd double %32, %36
  %37 = load i32, i32* %i, align 4
  %add46 = add nsw i32 768, %37
  %idxprom47 = sext i32 %add46 to i64
  %38 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %values48 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %38, i32 0, i32 4
  %arrayidx49 = getelementptr inbounds [16 x double*], [16 x double*]* %values48, i32 0, i64 0
  %39 = load double*, double** %arrayidx49, align 8
  %arrayidx50 = getelementptr inbounds double, double* %39, i64 %idxprom47
  %40 = load double, double* %arrayidx50, align 8
  %add51 = fadd double %add45, %40
  %41 = load double, double* %sum, align 8
  %add52 = fadd double %41, %add51
  store double %add52, double* %sum, align 8
  %42 = load double, double* %sum, align 8
  %mul = fmul double %42, 2.000000e+00
  %43 = load double, double* %count, align 8
  %cmp53 = fcmp ogt double %mul, %43
  br i1 %cmp53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %for.body
  %44 = load i32, i32* %i, align 4
  store i32 %44, i32* %retval
  br label %return

if.end.55:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.55
  %45 = load i32, i32* %i, align 4
  %inc = add nsw i32 %45, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.74

if.else.56:                                       ; preds = %cond.end.32
  %46 = load i32, i32* %start.addr, align 4
  store i32 %46, i32* %i, align 4
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.71, %if.else.56
  %47 = load i32, i32* %i, align 4
  %48 = load i32, i32* %end.addr, align 4
  %cmp58 = icmp sle i32 %47, %48
  br i1 %cmp58, label %for.body.59, label %for.end.73

for.body.59:                                      ; preds = %for.cond.57
  %49 = load i32, i32* %channel.addr, align 4
  %mul60 = mul i32 %49, 256
  %50 = load i32, i32* %i, align 4
  %add61 = add i32 %mul60, %50
  %idxprom62 = zext i32 %add61 to i64
  %51 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %values63 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %51, i32 0, i32 4
  %arrayidx64 = getelementptr inbounds [16 x double*], [16 x double*]* %values63, i32 0, i64 0
  %52 = load double*, double** %arrayidx64, align 8
  %arrayidx65 = getelementptr inbounds double, double* %52, i64 %idxprom62
  %53 = load double, double* %arrayidx65, align 8
  %54 = load double, double* %sum, align 8
  %add66 = fadd double %54, %53
  store double %add66, double* %sum, align 8
  %55 = load double, double* %sum, align 8
  %mul67 = fmul double %55, 2.000000e+00
  %56 = load double, double* %count, align 8
  %cmp68 = fcmp ogt double %mul67, %56
  br i1 %cmp68, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %for.body.59
  %57 = load i32, i32* %i, align 4
  store i32 %57, i32* %retval
  br label %return

if.end.70:                                        ; preds = %for.body.59
  br label %for.inc.71

for.inc.71:                                       ; preds = %if.end.70
  %58 = load i32, i32* %i, align 4
  %inc72 = add nsw i32 %58, 1
  store i32 %inc72, i32* %i, align 4
  br label %for.cond.57

for.end.73:                                       ; preds = %for.cond.57
  br label %if.end.74

if.end.74:                                        ; preds = %for.end.73, %for.end
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.74, %if.then.69, %if.then.54, %if.then.16, %if.else
  %59 = load i32, i32* %retval
  ret i32 %59
}

; Function Attrs: nounwind uwtable
define double @gimp_histogram_get_threshold(%struct._GimpHistogram* %histogram, i32 %channel, i32 %start, i32 %end) #0 {
entry:
  %retval = alloca double, align 8
  %histogram.addr = alloca %struct._GimpHistogram*, align 8
  %channel.addr = alloca i32, align 4
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %maxval = alloca i32, align 4
  %hist = alloca double*, align 8
  %chist = alloca double*, align 8
  %cmom = alloca double*, align 8
  %hist_max = alloca double, align 8
  %chist_max = alloca double, align 8
  %cmom_max = alloca double, align 8
  %bvar_max = alloca double, align 8
  %threshold = alloca i32, align 4
  %bvar = alloca double, align 8
  store %struct._GimpHistogram* %histogram, %struct._GimpHistogram** %histogram.addr, align 8
  store i32 %channel, i32* %channel.addr, align 4
  store i32 %start, i32* %start.addr, align 4
  store i32 %end, i32* %end.addr, align 4
  store double* null, double** %hist, align 8
  store double* null, double** %chist, align 8
  store double* null, double** %cmom, align 8
  store double 0.000000e+00, double* %hist_max, align 8
  store double 0.000000e+00, double* %chist_max, align 8
  store double 0.000000e+00, double* %cmom_max, align 8
  store double 0.000000e+00, double* %bvar_max, align 8
  store i32 127, i32* %threshold, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %cmp = icmp ne %struct._GimpHistogram* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_histogram_get_threshold, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  store double -1.000000e+00, double* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %n_channels = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %1, i32 0, i32 1
  %2 = load i32, i32* %n_channels, align 4
  %cmp1 = icmp eq i32 %2, 3
  br i1 %cmp1, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %do.end
  %3 = load i32, i32* %channel.addr, align 4
  %cmp2 = icmp eq i32 %3, 4
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %channel.addr, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %land.lhs.true, %do.end
  %4 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %values = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %4, i32 0, i32 4
  %arrayidx = getelementptr inbounds [16 x double*], [16 x double*]* %values, i32 0, i64 0
  %5 = load double*, double** %arrayidx, align 8
  %tobool = icmp ne double* %5, null
  br i1 %tobool, label %lor.lhs.false, label %if.then.16

lor.lhs.false:                                    ; preds = %if.end.4
  %6 = load i32, i32* %start.addr, align 4
  %7 = load i32, i32* %end.addr, align 4
  %cmp5 = icmp sgt i32 %6, %7
  br i1 %cmp5, label %if.then.16, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %8 = load i32, i32* %channel.addr, align 4
  %cmp7 = icmp eq i32 %8, 5
  br i1 %cmp7, label %land.lhs.true.8, label %lor.lhs.false.11

land.lhs.true.8:                                  ; preds = %lor.lhs.false.6
  %9 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %n_channels9 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %9, i32 0, i32 1
  %10 = load i32, i32* %n_channels9, align 4
  %cmp10 = icmp slt i32 %10, 4
  br i1 %cmp10, label %if.then.16, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %land.lhs.true.8, %lor.lhs.false.6
  %11 = load i32, i32* %channel.addr, align 4
  %cmp12 = icmp ne i32 %11, 5
  br i1 %cmp12, label %land.lhs.true.13, label %if.end.17

land.lhs.true.13:                                 ; preds = %lor.lhs.false.11
  %12 = load i32, i32* %channel.addr, align 4
  %13 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %n_channels14 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %13, i32 0, i32 1
  %14 = load i32, i32* %n_channels14, align 4
  %cmp15 = icmp uge i32 %12, %14
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %land.lhs.true.13, %land.lhs.true.8, %lor.lhs.false, %if.end.4
  store double 0.000000e+00, double* %retval
  br label %return

if.end.17:                                        ; preds = %land.lhs.true.13, %lor.lhs.false.11
  %15 = load i32, i32* %start.addr, align 4
  %cmp18 = icmp sgt i32 %15, 255
  br i1 %cmp18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.17
  br label %cond.end.22

cond.false:                                       ; preds = %if.end.17
  %16 = load i32, i32* %start.addr, align 4
  %cmp19 = icmp slt i32 %16, 0
  br i1 %cmp19, label %cond.true.20, label %cond.false.21

cond.true.20:                                     ; preds = %cond.false
  br label %cond.end

cond.false.21:                                    ; preds = %cond.false
  %17 = load i32, i32* %start.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.21, %cond.true.20
  %cond = phi i32 [ 0, %cond.true.20 ], [ %17, %cond.false.21 ]
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.end, %cond.true
  %cond23 = phi i32 [ 255, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond23, i32* %start.addr, align 4
  %18 = load i32, i32* %end.addr, align 4
  %cmp24 = icmp sgt i32 %18, 255
  br i1 %cmp24, label %cond.true.25, label %cond.false.26

cond.true.25:                                     ; preds = %cond.end.22
  br label %cond.end.32

cond.false.26:                                    ; preds = %cond.end.22
  %19 = load i32, i32* %end.addr, align 4
  %cmp27 = icmp slt i32 %19, 0
  br i1 %cmp27, label %cond.true.28, label %cond.false.29

cond.true.28:                                     ; preds = %cond.false.26
  br label %cond.end.30

cond.false.29:                                    ; preds = %cond.false.26
  %20 = load i32, i32* %end.addr, align 4
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.29, %cond.true.28
  %cond31 = phi i32 [ 0, %cond.true.28 ], [ %20, %cond.false.29 ]
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.end.30, %cond.true.25
  %cond33 = phi i32 [ 255, %cond.true.25 ], [ %cond31, %cond.end.30 ]
  store i32 %cond33, i32* %end.addr, align 4
  %21 = load i32, i32* %end.addr, align 4
  %22 = load i32, i32* %start.addr, align 4
  %sub = sub nsw i32 %21, %22
  store i32 %sub, i32* %maxval, align 4
  %23 = load i32, i32* %maxval, align 4
  %add = add nsw i32 %23, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 8, %conv
  %24 = alloca i8, i64 %mul
  %25 = bitcast i8* %24 to double*
  store double* %25, double** %hist, align 8
  %26 = load i32, i32* %maxval, align 4
  %add34 = add nsw i32 %26, 1
  %conv35 = sext i32 %add34 to i64
  %mul36 = mul i64 8, %conv35
  %27 = alloca i8, i64 %mul36
  %28 = bitcast i8* %27 to double*
  store double* %28, double** %chist, align 8
  %29 = load i32, i32* %maxval, align 4
  %add37 = add nsw i32 %29, 1
  %conv38 = sext i32 %add37 to i64
  %mul39 = mul i64 8, %conv38
  %30 = alloca i8, i64 %mul39
  %31 = bitcast i8* %30 to double*
  store double* %31, double** %cmom, align 8
  %32 = load i32, i32* %channel.addr, align 4
  %cmp40 = icmp eq i32 %32, 5
  br i1 %cmp40, label %if.then.42, label %if.else.64

if.then.42:                                       ; preds = %cond.end.32
  %33 = load i32, i32* %start.addr, align 4
  store i32 %33, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.42
  %34 = load i32, i32* %i, align 4
  %35 = load i32, i32* %end.addr, align 4
  %cmp43 = icmp sle i32 %34, %35
  br i1 %cmp43, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %36 = load i32, i32* %i, align 4
  %add45 = add nsw i32 256, %36
  %idxprom = sext i32 %add45 to i64
  %37 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %values46 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %37, i32 0, i32 4
  %arrayidx47 = getelementptr inbounds [16 x double*], [16 x double*]* %values46, i32 0, i64 0
  %38 = load double*, double** %arrayidx47, align 8
  %arrayidx48 = getelementptr inbounds double, double* %38, i64 %idxprom
  %39 = load double, double* %arrayidx48, align 8
  %40 = load i32, i32* %i, align 4
  %add49 = add nsw i32 512, %40
  %idxprom50 = sext i32 %add49 to i64
  %41 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %values51 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %41, i32 0, i32 4
  %arrayidx52 = getelementptr inbounds [16 x double*], [16 x double*]* %values51, i32 0, i64 0
  %42 = load double*, double** %arrayidx52, align 8
  %arrayidx53 = getelementptr inbounds double, double* %42, i64 %idxprom50
  %43 = load double, double* %arrayidx53, align 8
  %add54 = fadd double %39, %43
  %44 = load i32, i32* %i, align 4
  %add55 = add nsw i32 768, %44
  %idxprom56 = sext i32 %add55 to i64
  %45 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %values57 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %45, i32 0, i32 4
  %arrayidx58 = getelementptr inbounds [16 x double*], [16 x double*]* %values57, i32 0, i64 0
  %46 = load double*, double** %arrayidx58, align 8
  %arrayidx59 = getelementptr inbounds double, double* %46, i64 %idxprom56
  %47 = load double, double* %arrayidx59, align 8
  %add60 = fadd double %add54, %47
  %48 = load i32, i32* %i, align 4
  %49 = load i32, i32* %start.addr, align 4
  %sub61 = sub nsw i32 %48, %49
  %idxprom62 = sext i32 %sub61 to i64
  %50 = load double*, double** %hist, align 8
  %arrayidx63 = getelementptr inbounds double, double* %50, i64 %idxprom62
  store double %add60, double* %arrayidx63, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %51 = load i32, i32* %i, align 4
  %inc = add nsw i32 %51, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.81

if.else.64:                                       ; preds = %cond.end.32
  %52 = load i32, i32* %start.addr, align 4
  store i32 %52, i32* %i, align 4
  br label %for.cond.65

for.cond.65:                                      ; preds = %for.inc.78, %if.else.64
  %53 = load i32, i32* %i, align 4
  %54 = load i32, i32* %end.addr, align 4
  %cmp66 = icmp sle i32 %53, %54
  br i1 %cmp66, label %for.body.68, label %for.end.80

for.body.68:                                      ; preds = %for.cond.65
  %55 = load i32, i32* %channel.addr, align 4
  %mul69 = mul i32 %55, 256
  %56 = load i32, i32* %i, align 4
  %add70 = add i32 %mul69, %56
  %idxprom71 = zext i32 %add70 to i64
  %57 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %values72 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %57, i32 0, i32 4
  %arrayidx73 = getelementptr inbounds [16 x double*], [16 x double*]* %values72, i32 0, i64 0
  %58 = load double*, double** %arrayidx73, align 8
  %arrayidx74 = getelementptr inbounds double, double* %58, i64 %idxprom71
  %59 = load double, double* %arrayidx74, align 8
  %60 = load i32, i32* %i, align 4
  %61 = load i32, i32* %start.addr, align 4
  %sub75 = sub nsw i32 %60, %61
  %idxprom76 = sext i32 %sub75 to i64
  %62 = load double*, double** %hist, align 8
  %arrayidx77 = getelementptr inbounds double, double* %62, i64 %idxprom76
  store double %59, double* %arrayidx77, align 8
  br label %for.inc.78

for.inc.78:                                       ; preds = %for.body.68
  %63 = load i32, i32* %i, align 4
  %inc79 = add nsw i32 %63, 1
  store i32 %inc79, i32* %i, align 4
  br label %for.cond.65

for.end.80:                                       ; preds = %for.cond.65
  br label %if.end.81

if.end.81:                                        ; preds = %for.end.80, %for.end
  %64 = load double*, double** %hist, align 8
  %arrayidx82 = getelementptr inbounds double, double* %64, i64 0
  %65 = load double, double* %arrayidx82, align 8
  store double %65, double* %hist_max, align 8
  %66 = load double*, double** %hist, align 8
  %arrayidx83 = getelementptr inbounds double, double* %66, i64 0
  %67 = load double, double* %arrayidx83, align 8
  %68 = load double*, double** %chist, align 8
  %arrayidx84 = getelementptr inbounds double, double* %68, i64 0
  store double %67, double* %arrayidx84, align 8
  %69 = load double*, double** %cmom, align 8
  %arrayidx85 = getelementptr inbounds double, double* %69, i64 0
  store double 0.000000e+00, double* %arrayidx85, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond.86

for.cond.86:                                      ; preds = %for.inc.116, %if.end.81
  %70 = load i32, i32* %i, align 4
  %71 = load i32, i32* %maxval, align 4
  %cmp87 = icmp sle i32 %70, %71
  br i1 %cmp87, label %for.body.89, label %for.end.118

for.body.89:                                      ; preds = %for.cond.86
  %72 = load i32, i32* %i, align 4
  %idxprom90 = sext i32 %72 to i64
  %73 = load double*, double** %hist, align 8
  %arrayidx91 = getelementptr inbounds double, double* %73, i64 %idxprom90
  %74 = load double, double* %arrayidx91, align 8
  %75 = load double, double* %hist_max, align 8
  %cmp92 = fcmp ogt double %74, %75
  br i1 %cmp92, label %if.then.94, label %if.end.97

if.then.94:                                       ; preds = %for.body.89
  %76 = load i32, i32* %i, align 4
  %idxprom95 = sext i32 %76 to i64
  %77 = load double*, double** %hist, align 8
  %arrayidx96 = getelementptr inbounds double, double* %77, i64 %idxprom95
  %78 = load double, double* %arrayidx96, align 8
  store double %78, double* %hist_max, align 8
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.94, %for.body.89
  %79 = load i32, i32* %i, align 4
  %sub98 = sub nsw i32 %79, 1
  %idxprom99 = sext i32 %sub98 to i64
  %80 = load double*, double** %chist, align 8
  %arrayidx100 = getelementptr inbounds double, double* %80, i64 %idxprom99
  %81 = load double, double* %arrayidx100, align 8
  %82 = load i32, i32* %i, align 4
  %idxprom101 = sext i32 %82 to i64
  %83 = load double*, double** %hist, align 8
  %arrayidx102 = getelementptr inbounds double, double* %83, i64 %idxprom101
  %84 = load double, double* %arrayidx102, align 8
  %add103 = fadd double %81, %84
  %85 = load i32, i32* %i, align 4
  %idxprom104 = sext i32 %85 to i64
  %86 = load double*, double** %chist, align 8
  %arrayidx105 = getelementptr inbounds double, double* %86, i64 %idxprom104
  store double %add103, double* %arrayidx105, align 8
  %87 = load i32, i32* %i, align 4
  %sub106 = sub nsw i32 %87, 1
  %idxprom107 = sext i32 %sub106 to i64
  %88 = load double*, double** %cmom, align 8
  %arrayidx108 = getelementptr inbounds double, double* %88, i64 %idxprom107
  %89 = load double, double* %arrayidx108, align 8
  %90 = load i32, i32* %i, align 4
  %conv109 = sitofp i32 %90 to double
  %91 = load i32, i32* %i, align 4
  %idxprom110 = sext i32 %91 to i64
  %92 = load double*, double** %hist, align 8
  %arrayidx111 = getelementptr inbounds double, double* %92, i64 %idxprom110
  %93 = load double, double* %arrayidx111, align 8
  %mul112 = fmul double %conv109, %93
  %add113 = fadd double %89, %mul112
  %94 = load i32, i32* %i, align 4
  %idxprom114 = sext i32 %94 to i64
  %95 = load double*, double** %cmom, align 8
  %arrayidx115 = getelementptr inbounds double, double* %95, i64 %idxprom114
  store double %add113, double* %arrayidx115, align 8
  br label %for.inc.116

for.inc.116:                                      ; preds = %if.end.97
  %96 = load i32, i32* %i, align 4
  %inc117 = add nsw i32 %96, 1
  store i32 %inc117, i32* %i, align 4
  br label %for.cond.86

for.end.118:                                      ; preds = %for.cond.86
  %97 = load i32, i32* %maxval, align 4
  %idxprom119 = sext i32 %97 to i64
  %98 = load double*, double** %chist, align 8
  %arrayidx120 = getelementptr inbounds double, double* %98, i64 %idxprom119
  %99 = load double, double* %arrayidx120, align 8
  store double %99, double* %chist_max, align 8
  %100 = load i32, i32* %maxval, align 4
  %idxprom121 = sext i32 %100 to i64
  %101 = load double*, double** %cmom, align 8
  %arrayidx122 = getelementptr inbounds double, double* %101, i64 %idxprom121
  %102 = load double, double* %arrayidx122, align 8
  store double %102, double* %cmom_max, align 8
  store double 0.000000e+00, double* %bvar_max, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.123

for.cond.123:                                     ; preds = %for.inc.163, %for.end.118
  %103 = load i32, i32* %i, align 4
  %104 = load i32, i32* %maxval, align 4
  %cmp124 = icmp slt i32 %103, %104
  br i1 %cmp124, label %for.body.126, label %for.end.165

for.body.126:                                     ; preds = %for.cond.123
  %105 = load i32, i32* %i, align 4
  %idxprom127 = sext i32 %105 to i64
  %106 = load double*, double** %chist, align 8
  %arrayidx128 = getelementptr inbounds double, double* %106, i64 %idxprom127
  %107 = load double, double* %arrayidx128, align 8
  %cmp129 = fcmp ogt double %107, 0.000000e+00
  br i1 %cmp129, label %land.lhs.true.131, label %if.end.162

land.lhs.true.131:                                ; preds = %for.body.126
  %108 = load i32, i32* %i, align 4
  %idxprom132 = sext i32 %108 to i64
  %109 = load double*, double** %chist, align 8
  %arrayidx133 = getelementptr inbounds double, double* %109, i64 %idxprom132
  %110 = load double, double* %arrayidx133, align 8
  %111 = load double, double* %chist_max, align 8
  %cmp134 = fcmp olt double %110, %111
  br i1 %cmp134, label %if.then.136, label %if.end.162

if.then.136:                                      ; preds = %land.lhs.true.131
  %112 = load i32, i32* %i, align 4
  %idxprom137 = sext i32 %112 to i64
  %113 = load double*, double** %cmom, align 8
  %arrayidx138 = getelementptr inbounds double, double* %113, i64 %idxprom137
  %114 = load double, double* %arrayidx138, align 8
  %115 = load i32, i32* %i, align 4
  %idxprom139 = sext i32 %115 to i64
  %116 = load double*, double** %chist, align 8
  %arrayidx140 = getelementptr inbounds double, double* %116, i64 %idxprom139
  %117 = load double, double* %arrayidx140, align 8
  %div = fdiv double %114, %117
  store double %div, double* %bvar, align 8
  %118 = load double, double* %cmom_max, align 8
  %119 = load i32, i32* %i, align 4
  %idxprom141 = sext i32 %119 to i64
  %120 = load double*, double** %cmom, align 8
  %arrayidx142 = getelementptr inbounds double, double* %120, i64 %idxprom141
  %121 = load double, double* %arrayidx142, align 8
  %sub143 = fsub double %118, %121
  %122 = load double, double* %chist_max, align 8
  %123 = load i32, i32* %i, align 4
  %idxprom144 = sext i32 %123 to i64
  %124 = load double*, double** %chist, align 8
  %arrayidx145 = getelementptr inbounds double, double* %124, i64 %idxprom144
  %125 = load double, double* %arrayidx145, align 8
  %sub146 = fsub double %122, %125
  %div147 = fdiv double %sub143, %sub146
  %126 = load double, double* %bvar, align 8
  %sub148 = fsub double %126, %div147
  store double %sub148, double* %bvar, align 8
  %127 = load double, double* %bvar, align 8
  %128 = load double, double* %bvar, align 8
  %mul149 = fmul double %128, %127
  store double %mul149, double* %bvar, align 8
  %129 = load i32, i32* %i, align 4
  %idxprom150 = sext i32 %129 to i64
  %130 = load double*, double** %chist, align 8
  %arrayidx151 = getelementptr inbounds double, double* %130, i64 %idxprom150
  %131 = load double, double* %arrayidx151, align 8
  %132 = load double, double* %bvar, align 8
  %mul152 = fmul double %132, %131
  store double %mul152, double* %bvar, align 8
  %133 = load double, double* %chist_max, align 8
  %134 = load i32, i32* %i, align 4
  %idxprom153 = sext i32 %134 to i64
  %135 = load double*, double** %chist, align 8
  %arrayidx154 = getelementptr inbounds double, double* %135, i64 %idxprom153
  %136 = load double, double* %arrayidx154, align 8
  %sub155 = fsub double %133, %136
  %137 = load double, double* %bvar, align 8
  %mul156 = fmul double %137, %sub155
  store double %mul156, double* %bvar, align 8
  %138 = load double, double* %bvar, align 8
  %139 = load double, double* %bvar_max, align 8
  %cmp157 = fcmp ogt double %138, %139
  br i1 %cmp157, label %if.then.159, label %if.end.161

if.then.159:                                      ; preds = %if.then.136
  %140 = load double, double* %bvar, align 8
  store double %140, double* %bvar_max, align 8
  %141 = load i32, i32* %start.addr, align 4
  %142 = load i32, i32* %i, align 4
  %add160 = add nsw i32 %141, %142
  store i32 %add160, i32* %threshold, align 4
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.159, %if.then.136
  br label %if.end.162

if.end.162:                                       ; preds = %if.end.161, %land.lhs.true.131, %for.body.126
  br label %for.inc.163

for.inc.163:                                      ; preds = %if.end.162
  %143 = load i32, i32* %i, align 4
  %inc164 = add nsw i32 %143, 1
  store i32 %inc164, i32* %i, align 4
  br label %for.cond.123

for.end.165:                                      ; preds = %for.cond.123
  %144 = load i32, i32* %threshold, align 4
  %conv166 = sitofp i32 %144 to double
  store double %conv166, double* %retval
  br label %return

return:                                           ; preds = %for.end.165, %if.then.16, %if.else
  %145 = load double, double* %retval
  ret double %145
}

; Function Attrs: nounwind uwtable
define double @gimp_histogram_get_std_dev(%struct._GimpHistogram* %histogram, i32 %channel, i32 %start, i32 %end) #0 {
entry:
  %retval = alloca double, align 8
  %histogram.addr = alloca %struct._GimpHistogram*, align 8
  %channel.addr = alloca i32, align 4
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %dev = alloca double, align 8
  %count = alloca double, align 8
  %mean = alloca double, align 8
  %value = alloca double, align 8
  store %struct._GimpHistogram* %histogram, %struct._GimpHistogram** %histogram.addr, align 8
  store i32 %channel, i32* %channel.addr, align 4
  store i32 %start, i32* %start.addr, align 4
  store i32 %end, i32* %end.addr, align 4
  store double 0.000000e+00, double* %dev, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %cmp = icmp ne %struct._GimpHistogram* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_histogram_get_std_dev, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  store double 0.000000e+00, double* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %n_channels = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %1, i32 0, i32 1
  %2 = load i32, i32* %n_channels, align 4
  %cmp1 = icmp eq i32 %2, 3
  br i1 %cmp1, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %do.end
  %3 = load i32, i32* %channel.addr, align 4
  %cmp2 = icmp eq i32 %3, 4
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %channel.addr, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %land.lhs.true, %do.end
  %4 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %values = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %4, i32 0, i32 4
  %arrayidx = getelementptr inbounds [16 x double*], [16 x double*]* %values, i32 0, i64 0
  %5 = load double*, double** %arrayidx, align 8
  %tobool = icmp ne double* %5, null
  br i1 %tobool, label %lor.lhs.false, label %if.then.16

lor.lhs.false:                                    ; preds = %if.end.4
  %6 = load i32, i32* %start.addr, align 4
  %7 = load i32, i32* %end.addr, align 4
  %cmp5 = icmp sgt i32 %6, %7
  br i1 %cmp5, label %if.then.16, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %8 = load i32, i32* %channel.addr, align 4
  %cmp7 = icmp eq i32 %8, 5
  br i1 %cmp7, label %land.lhs.true.8, label %lor.lhs.false.11

land.lhs.true.8:                                  ; preds = %lor.lhs.false.6
  %9 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %n_channels9 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %9, i32 0, i32 1
  %10 = load i32, i32* %n_channels9, align 4
  %cmp10 = icmp slt i32 %10, 4
  br i1 %cmp10, label %if.then.16, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %land.lhs.true.8, %lor.lhs.false.6
  %11 = load i32, i32* %channel.addr, align 4
  %cmp12 = icmp ne i32 %11, 5
  br i1 %cmp12, label %land.lhs.true.13, label %if.end.17

land.lhs.true.13:                                 ; preds = %lor.lhs.false.11
  %12 = load i32, i32* %channel.addr, align 4
  %13 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %n_channels14 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %13, i32 0, i32 1
  %14 = load i32, i32* %n_channels14, align 4
  %cmp15 = icmp uge i32 %12, %14
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %land.lhs.true.13, %land.lhs.true.8, %lor.lhs.false, %if.end.4
  store double 0.000000e+00, double* %retval
  br label %return

if.end.17:                                        ; preds = %land.lhs.true.13, %lor.lhs.false.11
  %15 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %16 = load i32, i32* %channel.addr, align 4
  %17 = load i32, i32* %start.addr, align 4
  %18 = load i32, i32* %end.addr, align 4
  %call = call double @gimp_histogram_get_mean(%struct._GimpHistogram* %15, i32 %16, i32 %17, i32 %18)
  store double %call, double* %mean, align 8
  %19 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %20 = load i32, i32* %channel.addr, align 4
  %21 = load i32, i32* %start.addr, align 4
  %22 = load i32, i32* %end.addr, align 4
  %call18 = call double @gimp_histogram_get_count(%struct._GimpHistogram* %19, i32 %20, i32 %21, i32 %22)
  store double %call18, double* %count, align 8
  %23 = load double, double* %count, align 8
  %cmp19 = fcmp oeq double %23, 0.000000e+00
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.17
  store double 1.000000e+00, double* %count, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.end.17
  %24 = load i32, i32* %start.addr, align 4
  store i32 %24, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.21
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %end.addr, align 4
  %cmp22 = icmp sle i32 %25, %26
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %channel.addr, align 4
  %cmp23 = icmp eq i32 %27, 5
  br i1 %cmp23, label %if.then.24, label %if.else.40

if.then.24:                                       ; preds = %for.body
  %28 = load i32, i32* %i, align 4
  %add = add nsw i32 256, %28
  %idxprom = sext i32 %add to i64
  %29 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %values25 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %29, i32 0, i32 4
  %arrayidx26 = getelementptr inbounds [16 x double*], [16 x double*]* %values25, i32 0, i64 0
  %30 = load double*, double** %arrayidx26, align 8
  %arrayidx27 = getelementptr inbounds double, double* %30, i64 %idxprom
  %31 = load double, double* %arrayidx27, align 8
  %32 = load i32, i32* %i, align 4
  %add28 = add nsw i32 512, %32
  %idxprom29 = sext i32 %add28 to i64
  %33 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %values30 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %33, i32 0, i32 4
  %arrayidx31 = getelementptr inbounds [16 x double*], [16 x double*]* %values30, i32 0, i64 0
  %34 = load double*, double** %arrayidx31, align 8
  %arrayidx32 = getelementptr inbounds double, double* %34, i64 %idxprom29
  %35 = load double, double* %arrayidx32, align 8
  %add33 = fadd double %31, %35
  %36 = load i32, i32* %i, align 4
  %add34 = add nsw i32 768, %36
  %idxprom35 = sext i32 %add34 to i64
  %37 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %values36 = getelementptr inbounds %struct._GimpHistogram, %struct._GimpHistogram* %37, i32 0, i32 4
  %arrayidx37 = getelementptr inbounds [16 x double*], [16 x double*]* %values36, i32 0, i64 0
  %38 = load double*, double** %arrayidx37, align 8
  %arrayidx38 = getelementptr inbounds double, double* %38, i64 %idxprom35
  %39 = load double, double* %arrayidx38, align 8
  %add39 = fadd double %add33, %39
  store double %add39, double* %value, align 8
  br label %if.end.42

if.else.40:                                       ; preds = %for.body
  %40 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %41 = load i32, i32* %channel.addr, align 4
  %42 = load i32, i32* %i, align 4
  %call41 = call double @gimp_histogram_get_value(%struct._GimpHistogram* %40, i32 %41, i32 %42)
  store double %call41, double* %value, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.40, %if.then.24
  %43 = load double, double* %value, align 8
  %44 = load i32, i32* %i, align 4
  %conv = sitofp i32 %44 to double
  %45 = load double, double* %mean, align 8
  %sub = fsub double %conv, %45
  %46 = load i32, i32* %i, align 4
  %conv43 = sitofp i32 %46 to double
  %47 = load double, double* %mean, align 8
  %sub44 = fsub double %conv43, %47
  %mul = fmul double %sub, %sub44
  %mul45 = fmul double %43, %mul
  %48 = load double, double* %dev, align 8
  %add46 = fadd double %48, %mul45
  store double %add46, double* %dev, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.42
  %49 = load i32, i32* %i, align 4
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %50 = load double, double* %dev, align 8
  %51 = load double, double* %count, align 8
  %div = fdiv double %50, %51
  %call47 = call double @sqrt(double %div) #2
  store double %call47, double* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.16, %if.else
  %52 = load double, double* %retval
  ret double %52
}

; Function Attrs: nounwind
declare double @sqrt(double) #3

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @g_free(i8*) #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
