; ModuleID = './app/base/pixel-processor.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GThreadPool = type { void (i8*, i8*)*, i8*, i32 }
%struct._GCond = type { i8*, [2 x i32] }
%union._GMutex = type { i8* }
%struct._GError = type { i32, i32, i8* }
%struct._PixelProcessor = type { void ()*, i8*, %union._GMutex*, i32, i32, %struct._PixelRegionIterator*, i32, [4 x %struct._PixelRegion*], i64 }
%struct._PixelRegionIterator = type { %struct._GSList*, i32, i32, i32, i32, i32 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._PixelRegion = type { i8*, %struct._TileManager*, %struct._Tile*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._TileManager = type opaque
%struct._Tile = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GTimeVal = type { i64, i64 }

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Base\00", align 1
@__func__.pixel_processor_set_num_threads = private unnamed_addr constant [32 x i8] c"pixel_processor_set_num_threads\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"num_threads > 0 && num_threads <= GIMP_MAX_NUM_THREADS\00", align 1
@pool = internal global %struct._GThreadPool* null, align 8
@pool_cond = internal global %struct._GCond* null, align 8
@pool_mutex = internal global %union._GMutex* null, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"changing the number of threads to %d failed: %s\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"do_parallel_regions: Bad number of regions %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"pixel_regions_process_parallel: bad number of regions (%d)\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"thread creation failed: %s\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"do_parallel_regions_single: Bad number of regions %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @pixel_processor_init(i32 %num_threads) #0 {
entry:
  %num_threads.addr = alloca i32, align 4
  store i32 %num_threads, i32* %num_threads.addr, align 4
  %0 = load i32, i32* %num_threads.addr, align 4
  call void @pixel_processor_set_num_threads(i32 %0)
  ret void
}

; Function Attrs: nounwind uwtable
define void @pixel_processor_set_num_threads(i32 %num_threads) #0 {
entry:
  %num_threads.addr = alloca i32, align 4
  %error = alloca %struct._GError*, align 8
  store i32 %num_threads, i32* %num_threads.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %num_threads.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %1 = load i32, i32* %num_threads.addr, align 4
  %cmp1 = icmp sle i32 %1, 16
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.pixel_processor_set_num_threads, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.17

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %2 = load i32, i32* %num_threads.addr, align 4
  %cmp2 = icmp slt i32 %2, 2
  br i1 %cmp2, label %if.then.3, label %if.else.6

if.then.3:                                        ; preds = %do.end
  %3 = load %struct._GThreadPool*, %struct._GThreadPool** @pool, align 8
  %tobool = icmp ne %struct._GThreadPool* %3, null
  br i1 %tobool, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.then.3
  %4 = load %struct._GThreadPool*, %struct._GThreadPool** @pool, align 8
  call void @g_thread_pool_free(%struct._GThreadPool* %4, i32 1, i32 1)
  store %struct._GThreadPool* null, %struct._GThreadPool** @pool, align 8
  %5 = load %struct._GCond*, %struct._GCond** @pool_cond, align 8
  call void @g_cond_free(%struct._GCond* %5)
  store %struct._GCond* null, %struct._GCond** @pool_cond, align 8
  %6 = load %union._GMutex*, %union._GMutex** @pool_mutex, align 8
  call void @g_mutex_free(%union._GMutex* %6)
  store %union._GMutex* null, %union._GMutex** @pool_mutex, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.then.3
  br label %if.end.17

if.else.6:                                        ; preds = %do.end
  store %struct._GError* null, %struct._GError** %error, align 8
  %7 = load %struct._GThreadPool*, %struct._GThreadPool** @pool, align 8
  %tobool7 = icmp ne %struct._GThreadPool* %7, null
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.else.6
  %8 = load %struct._GThreadPool*, %struct._GThreadPool** @pool, align 8
  %9 = load i32, i32* %num_threads.addr, align 4
  %call = call i32 @g_thread_pool_set_max_threads(%struct._GThreadPool* %8, i32 %9, %struct._GError** %error)
  br label %if.end.13

if.else.9:                                        ; preds = %if.else.6
  %10 = load i32, i32* %num_threads.addr, align 4
  %call10 = call %struct._GThreadPool* @g_thread_pool_new(void (i8*, i8*)* bitcast (void (%struct._PixelProcessor*)* @do_parallel_regions to void (i8*, i8*)*), i8* null, i32 %10, i32 1, %struct._GError** %error)
  store %struct._GThreadPool* %call10, %struct._GThreadPool** @pool, align 8
  %call11 = call %union._GMutex* @g_mutex_new()
  store %union._GMutex* %call11, %union._GMutex** @pool_mutex, align 8
  %call12 = call %struct._GCond* @g_cond_new()
  store %struct._GCond* %call12, %struct._GCond** @pool_cond, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.9, %if.then.8
  %11 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool14 = icmp ne %struct._GError* %11, null
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.13
  %12 = load i32, i32* %num_threads.addr, align 4
  %13 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %13, i32 0, i32 2
  %14 = load i8*, i8** %message, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i32 0, i32 0), i32 %12, i8* %14)
  call void @g_clear_error(%struct._GError** %error)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end.13
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.end.16, %if.end.5
  ret void
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare void @g_thread_pool_free(%struct._GThreadPool*, i32, i32) #1

declare void @g_cond_free(%struct._GCond*) #1

declare void @g_mutex_free(%union._GMutex*) #1

declare i32 @g_thread_pool_set_max_threads(%struct._GThreadPool*, i32, %struct._GError**) #1

declare %struct._GThreadPool* @g_thread_pool_new(void (i8*, i8*)*, i8*, i32, i32, %struct._GError**) #1

; Function Attrs: nounwind uwtable
define internal void @do_parallel_regions(%struct._PixelProcessor* %processor) #0 {
entry:
  %processor.addr = alloca %struct._PixelProcessor*, align 8
  %tr = alloca [4 x %struct._PixelRegion], align 16
  %i = alloca i32, align 4
  %pixels = alloca i32, align 4
  store %struct._PixelProcessor* %processor, %struct._PixelProcessor** %processor.addr, align 8
  %0 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %mutex = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %0, i32 0, i32 2
  %1 = load %union._GMutex*, %union._GMutex** %mutex, align 8
  call void @g_mutex_lock(%union._GMutex* %1)
  %2 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %first = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %2, i32 0, i32 4
  %3 = load i32, i32* %first, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %PRI = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %4, i32 0, i32 5
  %5 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %PRI, align 8
  %tobool1 = icmp ne %struct._PixelRegionIterator* %5, null
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %PRI2 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %6, i32 0, i32 5
  %7 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %PRI2, align 8
  %call = call %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator* %7)
  %8 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %PRI3 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %8, i32 0, i32 5
  store %struct._PixelRegionIterator* %call, %struct._PixelRegionIterator** %PRI3, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %9 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %first4 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %9, i32 0, i32 4
  store i32 0, i32* %first4, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond

while.cond:                                       ; preds = %if.end.143, %if.end
  %10 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %PRI5 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %10, i32 0, i32 5
  %11 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %PRI5, align 8
  %tobool6 = icmp ne %struct._PixelRegionIterator* %11, null
  br i1 %tobool6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %PRI7 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %12, i32 0, i32 5
  %13 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %PRI7, align 8
  %portion_width = getelementptr inbounds %struct._PixelRegionIterator, %struct._PixelRegionIterator* %13, i32 0, i32 3
  %14 = load i32, i32* %portion_width, align 4
  %15 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %PRI8 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %15, i32 0, i32 5
  %16 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %PRI8, align 8
  %portion_height = getelementptr inbounds %struct._PixelRegionIterator, %struct._PixelRegionIterator* %16, i32 0, i32 4
  %17 = load i32, i32* %portion_height, align 4
  %mul = mul nsw i32 %14, %17
  store i32 %mul, i32* %pixels, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %18 = load i32, i32* %i, align 4
  %19 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %num_regions = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %19, i32 0, i32 6
  %20 = load i32, i32* %num_regions, align 4
  %cmp = icmp slt i32 %18, %20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %i, align 4
  %idxprom = sext i32 %21 to i64
  %22 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %regions = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %22, i32 0, i32 7
  %arrayidx = getelementptr inbounds [4 x %struct._PixelRegion*], [4 x %struct._PixelRegion*]* %regions, i32 0, i64 %idxprom
  %23 = load %struct._PixelRegion*, %struct._PixelRegion** %arrayidx, align 8
  %tobool9 = icmp ne %struct._PixelRegion* %23, null
  br i1 %tobool9, label %if.then.10, label %if.end.23

if.then.10:                                       ; preds = %for.body
  %24 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %24 to i64
  %arrayidx12 = getelementptr inbounds [4 x %struct._PixelRegion], [4 x %struct._PixelRegion]* %tr, i32 0, i64 %idxprom11
  %25 = bitcast %struct._PixelRegion* %arrayidx12 to i8*
  %26 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %26 to i64
  %27 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %regions14 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %27, i32 0, i32 7
  %arrayidx15 = getelementptr inbounds [4 x %struct._PixelRegion*], [4 x %struct._PixelRegion*]* %regions14, i32 0, i64 %idxprom13
  %28 = load %struct._PixelRegion*, %struct._PixelRegion** %arrayidx15, align 8
  %29 = bitcast %struct._PixelRegion* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %29, i64 64, i32 8, i1 false)
  %30 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %30 to i64
  %arrayidx17 = getelementptr inbounds [4 x %struct._PixelRegion], [4 x %struct._PixelRegion]* %tr, i32 0, i64 %idxprom16
  %tiles = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %arrayidx17, i32 0, i32 1
  %31 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %tobool18 = icmp ne %struct._TileManager* %31, null
  br i1 %tobool18, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %if.then.10
  %32 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %32 to i64
  %arrayidx21 = getelementptr inbounds [4 x %struct._PixelRegion], [4 x %struct._PixelRegion]* %tr, i32 0, i64 %idxprom20
  %curtile = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %arrayidx21, i32 0, i32 2
  %33 = load %struct._Tile*, %struct._Tile** %curtile, align 8
  call void @tile_lock(%struct._Tile* %33)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.19, %if.then.10
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %34 = load i32, i32* %i, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %35 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %mutex24 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %35, i32 0, i32 2
  %36 = load %union._GMutex*, %union._GMutex** %mutex24, align 8
  call void @g_mutex_unlock(%union._GMutex* %36)
  %37 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %num_regions25 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %37, i32 0, i32 6
  %38 = load i32, i32* %num_regions25, align 4
  switch i32 %38, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.30
    i32 3, label %sw.bb.49
    i32 4, label %sw.bb.76
  ]

sw.bb:                                            ; preds = %for.end
  %39 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %func = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %39, i32 0, i32 0
  %40 = load void ()*, void ()** %func, align 8
  %41 = bitcast void ()* %40 to void (i8*, %struct._PixelRegion*)*
  %42 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %data = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %42, i32 0, i32 1
  %43 = load i8*, i8** %data, align 8
  %44 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %regions26 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %44, i32 0, i32 7
  %arrayidx27 = getelementptr inbounds [4 x %struct._PixelRegion*], [4 x %struct._PixelRegion*]* %regions26, i32 0, i64 0
  %45 = load %struct._PixelRegion*, %struct._PixelRegion** %arrayidx27, align 8
  %tobool28 = icmp ne %struct._PixelRegion* %45, null
  br i1 %tobool28, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  %arrayidx29 = getelementptr inbounds [4 x %struct._PixelRegion], [4 x %struct._PixelRegion]* %tr, i32 0, i64 0
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._PixelRegion* [ %arrayidx29, %cond.true ], [ null, %cond.false ]
  call void %41(i8* %43, %struct._PixelRegion* %cond)
  br label %sw.epilog

sw.bb.30:                                         ; preds = %for.end
  %46 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %func31 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %46, i32 0, i32 0
  %47 = load void ()*, void ()** %func31, align 8
  %48 = bitcast void ()* %47 to void (i8*, %struct._PixelRegion*, %struct._PixelRegion*)*
  %49 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %data32 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %49, i32 0, i32 1
  %50 = load i8*, i8** %data32, align 8
  %51 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %regions33 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %51, i32 0, i32 7
  %arrayidx34 = getelementptr inbounds [4 x %struct._PixelRegion*], [4 x %struct._PixelRegion*]* %regions33, i32 0, i64 0
  %52 = load %struct._PixelRegion*, %struct._PixelRegion** %arrayidx34, align 8
  %tobool35 = icmp ne %struct._PixelRegion* %52, null
  br i1 %tobool35, label %cond.true.36, label %cond.false.38

cond.true.36:                                     ; preds = %sw.bb.30
  %arrayidx37 = getelementptr inbounds [4 x %struct._PixelRegion], [4 x %struct._PixelRegion]* %tr, i32 0, i64 0
  br label %cond.end.39

cond.false.38:                                    ; preds = %sw.bb.30
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.false.38, %cond.true.36
  %cond40 = phi %struct._PixelRegion* [ %arrayidx37, %cond.true.36 ], [ null, %cond.false.38 ]
  %53 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %regions41 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %53, i32 0, i32 7
  %arrayidx42 = getelementptr inbounds [4 x %struct._PixelRegion*], [4 x %struct._PixelRegion*]* %regions41, i32 0, i64 1
  %54 = load %struct._PixelRegion*, %struct._PixelRegion** %arrayidx42, align 8
  %tobool43 = icmp ne %struct._PixelRegion* %54, null
  br i1 %tobool43, label %cond.true.44, label %cond.false.46

cond.true.44:                                     ; preds = %cond.end.39
  %arrayidx45 = getelementptr inbounds [4 x %struct._PixelRegion], [4 x %struct._PixelRegion]* %tr, i32 0, i64 1
  br label %cond.end.47

cond.false.46:                                    ; preds = %cond.end.39
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.false.46, %cond.true.44
  %cond48 = phi %struct._PixelRegion* [ %arrayidx45, %cond.true.44 ], [ null, %cond.false.46 ]
  call void %48(i8* %50, %struct._PixelRegion* %cond40, %struct._PixelRegion* %cond48)
  br label %sw.epilog

sw.bb.49:                                         ; preds = %for.end
  %55 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %func50 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %55, i32 0, i32 0
  %56 = load void ()*, void ()** %func50, align 8
  %57 = bitcast void ()* %56 to void (i8*, %struct._PixelRegion*, %struct._PixelRegion*, %struct._PixelRegion*)*
  %58 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %data51 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %58, i32 0, i32 1
  %59 = load i8*, i8** %data51, align 8
  %60 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %regions52 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %60, i32 0, i32 7
  %arrayidx53 = getelementptr inbounds [4 x %struct._PixelRegion*], [4 x %struct._PixelRegion*]* %regions52, i32 0, i64 0
  %61 = load %struct._PixelRegion*, %struct._PixelRegion** %arrayidx53, align 8
  %tobool54 = icmp ne %struct._PixelRegion* %61, null
  br i1 %tobool54, label %cond.true.55, label %cond.false.57

cond.true.55:                                     ; preds = %sw.bb.49
  %arrayidx56 = getelementptr inbounds [4 x %struct._PixelRegion], [4 x %struct._PixelRegion]* %tr, i32 0, i64 0
  br label %cond.end.58

cond.false.57:                                    ; preds = %sw.bb.49
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.false.57, %cond.true.55
  %cond59 = phi %struct._PixelRegion* [ %arrayidx56, %cond.true.55 ], [ null, %cond.false.57 ]
  %62 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %regions60 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %62, i32 0, i32 7
  %arrayidx61 = getelementptr inbounds [4 x %struct._PixelRegion*], [4 x %struct._PixelRegion*]* %regions60, i32 0, i64 1
  %63 = load %struct._PixelRegion*, %struct._PixelRegion** %arrayidx61, align 8
  %tobool62 = icmp ne %struct._PixelRegion* %63, null
  br i1 %tobool62, label %cond.true.63, label %cond.false.65

cond.true.63:                                     ; preds = %cond.end.58
  %arrayidx64 = getelementptr inbounds [4 x %struct._PixelRegion], [4 x %struct._PixelRegion]* %tr, i32 0, i64 1
  br label %cond.end.66

cond.false.65:                                    ; preds = %cond.end.58
  br label %cond.end.66

cond.end.66:                                      ; preds = %cond.false.65, %cond.true.63
  %cond67 = phi %struct._PixelRegion* [ %arrayidx64, %cond.true.63 ], [ null, %cond.false.65 ]
  %64 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %regions68 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %64, i32 0, i32 7
  %arrayidx69 = getelementptr inbounds [4 x %struct._PixelRegion*], [4 x %struct._PixelRegion*]* %regions68, i32 0, i64 2
  %65 = load %struct._PixelRegion*, %struct._PixelRegion** %arrayidx69, align 8
  %tobool70 = icmp ne %struct._PixelRegion* %65, null
  br i1 %tobool70, label %cond.true.71, label %cond.false.73

cond.true.71:                                     ; preds = %cond.end.66
  %arrayidx72 = getelementptr inbounds [4 x %struct._PixelRegion], [4 x %struct._PixelRegion]* %tr, i32 0, i64 2
  br label %cond.end.74

cond.false.73:                                    ; preds = %cond.end.66
  br label %cond.end.74

cond.end.74:                                      ; preds = %cond.false.73, %cond.true.71
  %cond75 = phi %struct._PixelRegion* [ %arrayidx72, %cond.true.71 ], [ null, %cond.false.73 ]
  call void %57(i8* %59, %struct._PixelRegion* %cond59, %struct._PixelRegion* %cond67, %struct._PixelRegion* %cond75)
  br label %sw.epilog

sw.bb.76:                                         ; preds = %for.end
  %66 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %func77 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %66, i32 0, i32 0
  %67 = load void ()*, void ()** %func77, align 8
  %68 = bitcast void ()* %67 to void (i8*, %struct._PixelRegion*, %struct._PixelRegion*, %struct._PixelRegion*, %struct._PixelRegion*)*
  %69 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %data78 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %69, i32 0, i32 1
  %70 = load i8*, i8** %data78, align 8
  %71 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %regions79 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %71, i32 0, i32 7
  %arrayidx80 = getelementptr inbounds [4 x %struct._PixelRegion*], [4 x %struct._PixelRegion*]* %regions79, i32 0, i64 0
  %72 = load %struct._PixelRegion*, %struct._PixelRegion** %arrayidx80, align 8
  %tobool81 = icmp ne %struct._PixelRegion* %72, null
  br i1 %tobool81, label %cond.true.82, label %cond.false.84

cond.true.82:                                     ; preds = %sw.bb.76
  %arrayidx83 = getelementptr inbounds [4 x %struct._PixelRegion], [4 x %struct._PixelRegion]* %tr, i32 0, i64 0
  br label %cond.end.85

cond.false.84:                                    ; preds = %sw.bb.76
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.false.84, %cond.true.82
  %cond86 = phi %struct._PixelRegion* [ %arrayidx83, %cond.true.82 ], [ null, %cond.false.84 ]
  %73 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %regions87 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %73, i32 0, i32 7
  %arrayidx88 = getelementptr inbounds [4 x %struct._PixelRegion*], [4 x %struct._PixelRegion*]* %regions87, i32 0, i64 1
  %74 = load %struct._PixelRegion*, %struct._PixelRegion** %arrayidx88, align 8
  %tobool89 = icmp ne %struct._PixelRegion* %74, null
  br i1 %tobool89, label %cond.true.90, label %cond.false.92

cond.true.90:                                     ; preds = %cond.end.85
  %arrayidx91 = getelementptr inbounds [4 x %struct._PixelRegion], [4 x %struct._PixelRegion]* %tr, i32 0, i64 1
  br label %cond.end.93

cond.false.92:                                    ; preds = %cond.end.85
  br label %cond.end.93

cond.end.93:                                      ; preds = %cond.false.92, %cond.true.90
  %cond94 = phi %struct._PixelRegion* [ %arrayidx91, %cond.true.90 ], [ null, %cond.false.92 ]
  %75 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %regions95 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %75, i32 0, i32 7
  %arrayidx96 = getelementptr inbounds [4 x %struct._PixelRegion*], [4 x %struct._PixelRegion*]* %regions95, i32 0, i64 2
  %76 = load %struct._PixelRegion*, %struct._PixelRegion** %arrayidx96, align 8
  %tobool97 = icmp ne %struct._PixelRegion* %76, null
  br i1 %tobool97, label %cond.true.98, label %cond.false.100

cond.true.98:                                     ; preds = %cond.end.93
  %arrayidx99 = getelementptr inbounds [4 x %struct._PixelRegion], [4 x %struct._PixelRegion]* %tr, i32 0, i64 2
  br label %cond.end.101

cond.false.100:                                   ; preds = %cond.end.93
  br label %cond.end.101

cond.end.101:                                     ; preds = %cond.false.100, %cond.true.98
  %cond102 = phi %struct._PixelRegion* [ %arrayidx99, %cond.true.98 ], [ null, %cond.false.100 ]
  %77 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %regions103 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %77, i32 0, i32 7
  %arrayidx104 = getelementptr inbounds [4 x %struct._PixelRegion*], [4 x %struct._PixelRegion*]* %regions103, i32 0, i64 3
  %78 = load %struct._PixelRegion*, %struct._PixelRegion** %arrayidx104, align 8
  %tobool105 = icmp ne %struct._PixelRegion* %78, null
  br i1 %tobool105, label %cond.true.106, label %cond.false.108

cond.true.106:                                    ; preds = %cond.end.101
  %arrayidx107 = getelementptr inbounds [4 x %struct._PixelRegion], [4 x %struct._PixelRegion]* %tr, i32 0, i64 3
  br label %cond.end.109

cond.false.108:                                   ; preds = %cond.end.101
  br label %cond.end.109

cond.end.109:                                     ; preds = %cond.false.108, %cond.true.106
  %cond110 = phi %struct._PixelRegion* [ %arrayidx107, %cond.true.106 ], [ null, %cond.false.108 ]
  call void %68(i8* %70, %struct._PixelRegion* %cond86, %struct._PixelRegion* %cond94, %struct._PixelRegion* %cond102, %struct._PixelRegion* %cond110)
  br label %sw.epilog

sw.default:                                       ; preds = %for.end
  %79 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %num_regions111 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %79, i32 0, i32 6
  %80 = load i32, i32* %num_regions111, align 4
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i32 0, i32 0), i32 %80)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %cond.end.109, %cond.end.74, %cond.end.47, %cond.end
  %81 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %mutex112 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %81, i32 0, i32 2
  %82 = load %union._GMutex*, %union._GMutex** %mutex112, align 8
  call void @g_mutex_lock(%union._GMutex* %82)
  store i32 0, i32* %i, align 4
  br label %for.cond.113

for.cond.113:                                     ; preds = %for.inc.134, %sw.epilog
  %83 = load i32, i32* %i, align 4
  %84 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %num_regions114 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %84, i32 0, i32 6
  %85 = load i32, i32* %num_regions114, align 4
  %cmp115 = icmp slt i32 %83, %85
  br i1 %cmp115, label %for.body.116, label %for.end.136

for.body.116:                                     ; preds = %for.cond.113
  %86 = load i32, i32* %i, align 4
  %idxprom117 = sext i32 %86 to i64
  %87 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %regions118 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %87, i32 0, i32 7
  %arrayidx119 = getelementptr inbounds [4 x %struct._PixelRegion*], [4 x %struct._PixelRegion*]* %regions118, i32 0, i64 %idxprom117
  %88 = load %struct._PixelRegion*, %struct._PixelRegion** %arrayidx119, align 8
  %tobool120 = icmp ne %struct._PixelRegion* %88, null
  br i1 %tobool120, label %if.then.121, label %if.end.133

if.then.121:                                      ; preds = %for.body.116
  %89 = load i32, i32* %i, align 4
  %idxprom122 = sext i32 %89 to i64
  %arrayidx123 = getelementptr inbounds [4 x %struct._PixelRegion], [4 x %struct._PixelRegion]* %tr, i32 0, i64 %idxprom122
  %tiles124 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %arrayidx123, i32 0, i32 1
  %90 = load %struct._TileManager*, %struct._TileManager** %tiles124, align 8
  %tobool125 = icmp ne %struct._TileManager* %90, null
  br i1 %tobool125, label %if.then.126, label %if.end.132

if.then.126:                                      ; preds = %if.then.121
  %91 = load i32, i32* %i, align 4
  %idxprom127 = sext i32 %91 to i64
  %arrayidx128 = getelementptr inbounds [4 x %struct._PixelRegion], [4 x %struct._PixelRegion]* %tr, i32 0, i64 %idxprom127
  %curtile129 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %arrayidx128, i32 0, i32 2
  %92 = load %struct._Tile*, %struct._Tile** %curtile129, align 8
  %93 = load i32, i32* %i, align 4
  %idxprom130 = sext i32 %93 to i64
  %arrayidx131 = getelementptr inbounds [4 x %struct._PixelRegion], [4 x %struct._PixelRegion]* %tr, i32 0, i64 %idxprom130
  %dirty = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %arrayidx131, i32 0, i32 11
  %94 = load i32, i32* %dirty, align 4
  call void @tile_release(%struct._Tile* %92, i32 %94)
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.126, %if.then.121
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.132, %for.body.116
  br label %for.inc.134

for.inc.134:                                      ; preds = %if.end.133
  %95 = load i32, i32* %i, align 4
  %inc135 = add nsw i32 %95, 1
  store i32 %inc135, i32* %i, align 4
  br label %for.cond.113

for.end.136:                                      ; preds = %for.cond.113
  %96 = load i32, i32* %pixels, align 4
  %conv = zext i32 %96 to i64
  %97 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %progress = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %97, i32 0, i32 8
  %98 = load i64, i64* %progress, align 8
  %add = add i64 %98, %conv
  store i64 %add, i64* %progress, align 8
  %99 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %PRI137 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %99, i32 0, i32 5
  %100 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %PRI137, align 8
  %tobool138 = icmp ne %struct._PixelRegionIterator* %100, null
  br i1 %tobool138, label %if.then.139, label %if.end.143

if.then.139:                                      ; preds = %for.end.136
  %101 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %PRI140 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %101, i32 0, i32 5
  %102 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %PRI140, align 8
  %call141 = call %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator* %102)
  %103 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %PRI142 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %103, i32 0, i32 5
  store %struct._PixelRegionIterator* %call141, %struct._PixelRegionIterator** %PRI142, align 8
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.139, %for.end.136
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %104 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %threads = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %104, i32 0, i32 3
  %105 = load i32, i32* %threads, align 4
  %dec = add nsw i32 %105, -1
  store i32 %dec, i32* %threads, align 4
  %106 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %threads144 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %106, i32 0, i32 3
  %107 = load i32, i32* %threads144, align 4
  %cmp145 = icmp eq i32 %107, 0
  br i1 %cmp145, label %if.then.147, label %if.else.149

if.then.147:                                      ; preds = %while.end
  %108 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %mutex148 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %108, i32 0, i32 2
  %109 = load %union._GMutex*, %union._GMutex** %mutex148, align 8
  call void @g_mutex_unlock(%union._GMutex* %109)
  %110 = load %union._GMutex*, %union._GMutex** @pool_mutex, align 8
  call void @g_mutex_lock(%union._GMutex* %110)
  %111 = load %struct._GCond*, %struct._GCond** @pool_cond, align 8
  call void @g_cond_signal(%struct._GCond* %111)
  %112 = load %union._GMutex*, %union._GMutex** @pool_mutex, align 8
  call void @g_mutex_unlock(%union._GMutex* %112)
  br label %if.end.151

if.else.149:                                      ; preds = %while.end
  %113 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %mutex150 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %113, i32 0, i32 2
  %114 = load %union._GMutex*, %union._GMutex** %mutex150, align 8
  call void @g_mutex_unlock(%union._GMutex* %114)
  br label %if.end.151

if.end.151:                                       ; preds = %if.else.149, %if.then.147
  ret void
}

declare %union._GMutex* @g_mutex_new() #1

declare %struct._GCond* @g_cond_new() #1

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare void @g_clear_error(%struct._GError**) #1

; Function Attrs: nounwind uwtable
define void @pixel_processor_exit() #0 {
entry:
  call void @pixel_processor_set_num_threads(i32 1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @pixel_regions_process_parallel(void ()* %func, i8* %data, i32 %num_regions, ...) #0 {
entry:
  %func.addr = alloca void ()*, align 8
  %data.addr = alloca i8*, align 8
  %num_regions.addr = alloca i32, align 4
  %va = alloca [1 x %struct.__va_list_tag], align 16
  store void ()* %func, void ()** %func.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 %num_regions, i32* %num_regions.addr, align 4
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load void ()*, void ()** %func.addr, align 8
  %1 = load i8*, i8** %data.addr, align 8
  %2 = load i32, i32* %num_regions.addr, align 4
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  call void @pixel_regions_process_parallel_valist(void ()* %0, i8* %1, void (i8*, double)* null, i8* null, i32 %2, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @pixel_regions_process_parallel_valist(void ()* %func, i8* %data, void (i8*, double)* %progress_func, i8* %progress_data, i32 %num_regions, %struct.__va_list_tag* %ap) #0 {
entry:
  %func.addr = alloca void ()*, align 8
  %data.addr = alloca i8*, align 8
  %progress_func.addr = alloca void (i8*, double)*, align 8
  %progress_data.addr = alloca i8*, align 8
  %num_regions.addr = alloca i32, align 4
  %ap.addr = alloca %struct.__va_list_tag*, align 8
  %processor = alloca %struct._PixelProcessor, align 8
  %i = alloca i32, align 4
  store void ()* %func, void ()** %func.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store void (i8*, double)* %progress_func, void (i8*, double)** %progress_func.addr, align 8
  store i8* %progress_data, i8** %progress_data.addr, align 8
  store i32 %num_regions, i32* %num_regions.addr, align 4
  store %struct.__va_list_tag* %ap, %struct.__va_list_tag** %ap.addr, align 8
  %0 = bitcast %struct._PixelProcessor* %processor to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 88, i32 8, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %num_regions.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.__va_list_tag*, %struct.__va_list_tag** %ap.addr, align 8
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %3, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %for.body
  %4 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %3, i32 0, i32 3
  %reg_save_area = load i8*, i8** %4
  %5 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %6 = bitcast i8* %5 to %struct._PixelRegion**
  %7 = add i32 %gp_offset, 8
  store i32 %7, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %for.body
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %3, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %8 = bitcast i8* %overflow_arg_area to %struct._PixelRegion**
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi %struct._PixelRegion** [ %6, %vaarg.in_reg ], [ %8, %vaarg.in_mem ]
  %9 = load %struct._PixelRegion*, %struct._PixelRegion** %vaarg.addr
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %regions = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %processor, i32 0, i32 7
  %arrayidx = getelementptr inbounds [4 x %struct._PixelRegion*], [4 x %struct._PixelRegion*]* %regions, i32 0, i64 %idxprom
  store %struct._PixelRegion* %9, %struct._PixelRegion** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %vaarg.end
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %num_regions.addr, align 4
  switch i32 %12, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.10
    i32 4, label %sw.bb.19
  ]

sw.bb:                                            ; preds = %for.end
  %13 = load i32, i32* %num_regions.addr, align 4
  %regions1 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %processor, i32 0, i32 7
  %arrayidx2 = getelementptr inbounds [4 x %struct._PixelRegion*], [4 x %struct._PixelRegion*]* %regions1, i32 0, i64 0
  %14 = load %struct._PixelRegion*, %struct._PixelRegion** %arrayidx2, align 8
  %call = call %struct._PixelRegionIterator* (i32, ...) @pixel_regions_register(i32 %13, %struct._PixelRegion* %14)
  %PRI = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %processor, i32 0, i32 5
  store %struct._PixelRegionIterator* %call, %struct._PixelRegionIterator** %PRI, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %for.end
  %15 = load i32, i32* %num_regions.addr, align 4
  %regions4 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %processor, i32 0, i32 7
  %arrayidx5 = getelementptr inbounds [4 x %struct._PixelRegion*], [4 x %struct._PixelRegion*]* %regions4, i32 0, i64 0
  %16 = load %struct._PixelRegion*, %struct._PixelRegion** %arrayidx5, align 8
  %regions6 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %processor, i32 0, i32 7
  %arrayidx7 = getelementptr inbounds [4 x %struct._PixelRegion*], [4 x %struct._PixelRegion*]* %regions6, i32 0, i64 1
  %17 = load %struct._PixelRegion*, %struct._PixelRegion** %arrayidx7, align 8
  %call8 = call %struct._PixelRegionIterator* (i32, ...) @pixel_regions_register(i32 %15, %struct._PixelRegion* %16, %struct._PixelRegion* %17)
  %PRI9 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %processor, i32 0, i32 5
  store %struct._PixelRegionIterator* %call8, %struct._PixelRegionIterator** %PRI9, align 8
  br label %sw.epilog

sw.bb.10:                                         ; preds = %for.end
  %18 = load i32, i32* %num_regions.addr, align 4
  %regions11 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %processor, i32 0, i32 7
  %arrayidx12 = getelementptr inbounds [4 x %struct._PixelRegion*], [4 x %struct._PixelRegion*]* %regions11, i32 0, i64 0
  %19 = load %struct._PixelRegion*, %struct._PixelRegion** %arrayidx12, align 8
  %regions13 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %processor, i32 0, i32 7
  %arrayidx14 = getelementptr inbounds [4 x %struct._PixelRegion*], [4 x %struct._PixelRegion*]* %regions13, i32 0, i64 1
  %20 = load %struct._PixelRegion*, %struct._PixelRegion** %arrayidx14, align 8
  %regions15 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %processor, i32 0, i32 7
  %arrayidx16 = getelementptr inbounds [4 x %struct._PixelRegion*], [4 x %struct._PixelRegion*]* %regions15, i32 0, i64 2
  %21 = load %struct._PixelRegion*, %struct._PixelRegion** %arrayidx16, align 8
  %call17 = call %struct._PixelRegionIterator* (i32, ...) @pixel_regions_register(i32 %18, %struct._PixelRegion* %19, %struct._PixelRegion* %20, %struct._PixelRegion* %21)
  %PRI18 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %processor, i32 0, i32 5
  store %struct._PixelRegionIterator* %call17, %struct._PixelRegionIterator** %PRI18, align 8
  br label %sw.epilog

sw.bb.19:                                         ; preds = %for.end
  %22 = load i32, i32* %num_regions.addr, align 4
  %regions20 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %processor, i32 0, i32 7
  %arrayidx21 = getelementptr inbounds [4 x %struct._PixelRegion*], [4 x %struct._PixelRegion*]* %regions20, i32 0, i64 0
  %23 = load %struct._PixelRegion*, %struct._PixelRegion** %arrayidx21, align 8
  %regions22 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %processor, i32 0, i32 7
  %arrayidx23 = getelementptr inbounds [4 x %struct._PixelRegion*], [4 x %struct._PixelRegion*]* %regions22, i32 0, i64 1
  %24 = load %struct._PixelRegion*, %struct._PixelRegion** %arrayidx23, align 8
  %regions24 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %processor, i32 0, i32 7
  %arrayidx25 = getelementptr inbounds [4 x %struct._PixelRegion*], [4 x %struct._PixelRegion*]* %regions24, i32 0, i64 2
  %25 = load %struct._PixelRegion*, %struct._PixelRegion** %arrayidx25, align 8
  %regions26 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %processor, i32 0, i32 7
  %arrayidx27 = getelementptr inbounds [4 x %struct._PixelRegion*], [4 x %struct._PixelRegion*]* %regions26, i32 0, i64 3
  %26 = load %struct._PixelRegion*, %struct._PixelRegion** %arrayidx27, align 8
  %call28 = call %struct._PixelRegionIterator* (i32, ...) @pixel_regions_register(i32 %22, %struct._PixelRegion* %23, %struct._PixelRegion* %24, %struct._PixelRegion* %25, %struct._PixelRegion* %26)
  %PRI29 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %processor, i32 0, i32 5
  store %struct._PixelRegionIterator* %call28, %struct._PixelRegionIterator** %PRI29, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %for.end
  %num_regions30 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %processor, i32 0, i32 6
  %27 = load i32, i32* %num_regions30, align 4
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i32 0, i32 0), i32 %27)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.19, %sw.bb.10, %sw.bb.3, %sw.bb
  %PRI31 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %processor, i32 0, i32 5
  %28 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %PRI31, align 8
  %tobool = icmp ne %struct._PixelRegionIterator* %28, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.epilog
  br label %return

if.end:                                           ; preds = %sw.epilog
  %29 = load void ()*, void ()** %func.addr, align 8
  %func32 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %processor, i32 0, i32 0
  store void ()* %29, void ()** %func32, align 8
  %30 = load i8*, i8** %data.addr, align 8
  %data33 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %processor, i32 0, i32 1
  store i8* %30, i8** %data33, align 8
  %31 = load i32, i32* %num_regions.addr, align 4
  %num_regions34 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %processor, i32 0, i32 6
  store i32 %31, i32* %num_regions34, align 4
  %threads = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %processor, i32 0, i32 3
  store i32 0, i32* %threads, align 4
  %progress = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %processor, i32 0, i32 8
  store i64 0, i64* %progress, align 8
  %32 = load void (i8*, double)*, void (i8*, double)** %progress_func.addr, align 8
  %33 = load i8*, i8** %progress_data.addr, align 8
  call void @pixel_regions_do_parallel(%struct._PixelProcessor* %processor, void (i8*, double)* %32, i8* %33)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

; Function Attrs: nounwind uwtable
define void @pixel_regions_process_parallel_progress(void ()* %func, i8* %data, void (i8*, double)* %progress_func, i8* %progress_data, i32 %num_regions, ...) #0 {
entry:
  %func.addr = alloca void ()*, align 8
  %data.addr = alloca i8*, align 8
  %progress_func.addr = alloca void (i8*, double)*, align 8
  %progress_data.addr = alloca i8*, align 8
  %num_regions.addr = alloca i32, align 4
  %va = alloca [1 x %struct.__va_list_tag], align 16
  store void ()* %func, void ()** %func.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store void (i8*, double)* %progress_func, void (i8*, double)** %progress_func.addr, align 8
  store i8* %progress_data, i8** %progress_data.addr, align 8
  store i32 %num_regions, i32* %num_regions.addr, align 4
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load void ()*, void ()** %func.addr, align 8
  %1 = load i8*, i8** %data.addr, align 8
  %2 = load void (i8*, double)*, void (i8*, double)** %progress_func.addr, align 8
  %3 = load i8*, i8** %progress_data.addr, align 8
  %4 = load i32, i32* %num_regions.addr, align 4
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  call void @pixel_regions_process_parallel_valist(void ()* %0, i8* %1, void (i8*, double)* %2, i8* %3, i32 %4, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare void @g_mutex_lock(%union._GMutex*) #1

declare %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare void @tile_lock(%struct._Tile*) #1

declare void @g_mutex_unlock(%union._GMutex*) #1

declare void @tile_release(%struct._Tile*, i32) #1

declare void @g_cond_signal(%struct._GCond*) #1

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare %struct._PixelRegionIterator* @pixel_regions_register(i32, ...) #1

; Function Attrs: nounwind uwtable
define internal void @pixel_regions_do_parallel(%struct._PixelProcessor* %processor, void (i8*, double)* %progress_func, i8* %progress_data) #0 {
entry:
  %processor.addr = alloca %struct._PixelProcessor*, align 8
  %progress_func.addr = alloca void (i8*, double)*, align 8
  %progress_data.addr = alloca i8*, align 8
  %pixels = alloca i64, align 8
  %tiles = alloca i64, align 8
  %error = alloca %struct._GError*, align 8
  %tasks = alloca i32, align 4
  %timeout = alloca %struct._GTimeVal, align 8
  %progress = alloca i64, align 8
  store %struct._PixelProcessor* %processor, %struct._PixelProcessor** %processor.addr, align 8
  store void (i8*, double)* %progress_func, void (i8*, double)** %progress_func.addr, align 8
  store i8* %progress_data, i8** %progress_data.addr, align 8
  %0 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %PRI = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %0, i32 0, i32 5
  %1 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %PRI, align 8
  %region_width = getelementptr inbounds %struct._PixelRegionIterator, %struct._PixelRegionIterator* %1, i32 0, i32 1
  %2 = load i32, i32* %region_width, align 4
  %3 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %PRI1 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %3, i32 0, i32 5
  %4 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %PRI1, align 8
  %region_height = getelementptr inbounds %struct._PixelRegionIterator, %struct._PixelRegionIterator* %4, i32 0, i32 2
  %5 = load i32, i32* %region_height, align 4
  %mul = mul nsw i32 %2, %5
  %conv = sext i32 %mul to i64
  store i64 %conv, i64* %pixels, align 8
  %6 = load i64, i64* %pixels, align 8
  %div = udiv i64 %6, 4096
  store i64 %div, i64* %tiles, align 8
  %7 = load %struct._GThreadPool*, %struct._GThreadPool** @pool, align 8
  %tobool = icmp ne %struct._GThreadPool* %7, null
  br i1 %tobool, label %land.lhs.true, label %if.else.41

land.lhs.true:                                    ; preds = %entry
  %8 = load i64, i64* %tiles, align 8
  %cmp = icmp ugt i64 %8, 8
  br i1 %cmp, label %if.then, label %if.else.41

if.then:                                          ; preds = %land.lhs.true
  store %struct._GError* null, %struct._GError** %error, align 8
  %9 = load i64, i64* %tiles, align 8
  %div3 = udiv i64 %9, 8
  %10 = load %struct._GThreadPool*, %struct._GThreadPool** @pool, align 8
  %call = call i32 @g_thread_pool_get_max_threads(%struct._GThreadPool* %10)
  %conv4 = sext i32 %call to i64
  %cmp5 = icmp ult i64 %div3, %conv4
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %11 = load i64, i64* %tiles, align 8
  %div7 = udiv i64 %11, 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %12 = load %struct._GThreadPool*, %struct._GThreadPool** @pool, align 8
  %call8 = call i32 @g_thread_pool_get_max_threads(%struct._GThreadPool* %12)
  %conv9 = sext i32 %call8 to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %div7, %cond.true ], [ %conv9, %cond.false ]
  %conv10 = trunc i64 %cond to i32
  store i32 %conv10, i32* %tasks, align 4
  %13 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %first = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %13, i32 0, i32 4
  store i32 1, i32* %first, align 4
  %14 = load i32, i32* %tasks, align 4
  %15 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %threads = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %15, i32 0, i32 3
  store i32 %14, i32* %threads, align 4
  %call11 = call %union._GMutex* @g_mutex_new()
  %16 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %mutex = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %16, i32 0, i32 2
  store %union._GMutex* %call11, %union._GMutex** %mutex, align 8
  %17 = load %union._GMutex*, %union._GMutex** @pool_mutex, align 8
  call void @g_mutex_lock(%union._GMutex* %17)
  br label %while.cond

while.cond:                                       ; preds = %if.end, %cond.end
  %18 = load i32, i32* %tasks, align 4
  %dec = add nsw i32 %18, -1
  store i32 %dec, i32* %tasks, align 4
  %tobool12 = icmp ne i32 %18, 0
  br i1 %tobool12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load %struct._GThreadPool*, %struct._GThreadPool** @pool, align 8
  %20 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %21 = bitcast %struct._PixelProcessor* %20 to i8*
  %call13 = call i32 @g_thread_pool_push(%struct._GThreadPool* %19, i8* %21, %struct._GError** %error)
  %22 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool14 = icmp ne %struct._GError* %22, null
  br i1 %tobool14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %while.body
  %23 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %23, i32 0, i32 2
  %24 = load i8*, i8** %message, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0), i8* %24)
  call void @g_clear_error(%struct._GError** %error)
  %25 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %threads16 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %25, i32 0, i32 3
  %26 = load i32, i32* %threads16, align 4
  %dec17 = add nsw i32 %26, -1
  store i32 %dec17, i32* %threads16, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.15, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %27 = load void (i8*, double)*, void (i8*, double)** %progress_func.addr, align 8
  %tobool18 = icmp ne void (i8*, double)* %27, null
  br i1 %tobool18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %while.end
  br label %while.cond.20

while.cond.20:                                    ; preds = %while.body.24, %if.then.19
  %28 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %threads21 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %28, i32 0, i32 3
  %29 = load i32, i32* %threads21, align 4
  %cmp22 = icmp ne i32 %29, 0
  br i1 %cmp22, label %while.body.24, label %while.end.32

while.body.24:                                    ; preds = %while.cond.20
  call void @g_get_current_time(%struct._GTimeVal* %timeout)
  call void @g_time_val_add(%struct._GTimeVal* %timeout, i64 65536)
  %30 = load %struct._GCond*, %struct._GCond** @pool_cond, align 8
  %31 = load %union._GMutex*, %union._GMutex** @pool_mutex, align 8
  %call25 = call i32 @g_cond_timed_wait(%struct._GCond* %30, %union._GMutex* %31, %struct._GTimeVal* %timeout)
  %32 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %mutex26 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %32, i32 0, i32 2
  %33 = load %union._GMutex*, %union._GMutex** %mutex26, align 8
  call void @g_mutex_lock(%union._GMutex* %33)
  %34 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %progress27 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %34, i32 0, i32 8
  %35 = load i64, i64* %progress27, align 8
  store i64 %35, i64* %progress, align 8
  %36 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %mutex28 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %36, i32 0, i32 2
  %37 = load %union._GMutex*, %union._GMutex** %mutex28, align 8
  call void @g_mutex_unlock(%union._GMutex* %37)
  %38 = load void (i8*, double)*, void (i8*, double)** %progress_func.addr, align 8
  %39 = load i8*, i8** %progress_data.addr, align 8
  %40 = load i64, i64* %progress, align 8
  %conv29 = uitofp i64 %40 to double
  %41 = load i64, i64* %pixels, align 8
  %conv30 = uitofp i64 %41 to double
  %div31 = fdiv double %conv29, %conv30
  call void %38(i8* %39, double %div31)
  br label %while.cond.20

while.end.32:                                     ; preds = %while.cond.20
  br label %if.end.39

if.else:                                          ; preds = %while.end
  br label %while.cond.33

while.cond.33:                                    ; preds = %while.body.37, %if.else
  %42 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %threads34 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %42, i32 0, i32 3
  %43 = load i32, i32* %threads34, align 4
  %cmp35 = icmp ne i32 %43, 0
  br i1 %cmp35, label %while.body.37, label %while.end.38

while.body.37:                                    ; preds = %while.cond.33
  %44 = load %struct._GCond*, %struct._GCond** @pool_cond, align 8
  %45 = load %union._GMutex*, %union._GMutex** @pool_mutex, align 8
  call void @g_cond_wait(%struct._GCond* %44, %union._GMutex* %45)
  br label %while.cond.33

while.end.38:                                     ; preds = %while.cond.33
  br label %if.end.39

if.end.39:                                        ; preds = %while.end.38, %while.end.32
  %46 = load %union._GMutex*, %union._GMutex** @pool_mutex, align 8
  call void @g_mutex_unlock(%union._GMutex* %46)
  %47 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %mutex40 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %47, i32 0, i32 2
  %48 = load %union._GMutex*, %union._GMutex** %mutex40, align 8
  call void @g_mutex_free(%union._GMutex* %48)
  br label %if.end.43

if.else.41:                                       ; preds = %land.lhs.true, %entry
  %49 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %50 = load void (i8*, double)*, void (i8*, double)** %progress_func.addr, align 8
  %51 = load i8*, i8** %progress_data.addr, align 8
  %52 = load i64, i64* %pixels, align 8
  %call42 = call i8* @do_parallel_regions_single(%struct._PixelProcessor* %49, void (i8*, double)* %50, i8* %51, i64 %52)
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.41, %if.end.39
  %53 = load void (i8*, double)*, void (i8*, double)** %progress_func.addr, align 8
  %tobool44 = icmp ne void (i8*, double)* %53, null
  br i1 %tobool44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end.43
  %54 = load void (i8*, double)*, void (i8*, double)** %progress_func.addr, align 8
  %55 = load i8*, i8** %progress_data.addr, align 8
  call void %54(i8* %55, double 1.000000e+00)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %if.end.43
  ret void
}

declare i32 @g_thread_pool_get_max_threads(%struct._GThreadPool*) #1

declare i32 @g_thread_pool_push(%struct._GThreadPool*, i8*, %struct._GError**) #1

declare void @g_get_current_time(%struct._GTimeVal*) #1

declare void @g_time_val_add(%struct._GTimeVal*, i64) #1

declare i32 @g_cond_timed_wait(%struct._GCond*, %union._GMutex*, %struct._GTimeVal*) #1

declare void @g_cond_wait(%struct._GCond*, %union._GMutex*) #1

; Function Attrs: nounwind uwtable
define internal i8* @do_parallel_regions_single(%struct._PixelProcessor* %processor, void (i8*, double)* %progress_func, i8* %progress_data, i64 %total) #0 {
entry:
  %processor.addr = alloca %struct._PixelProcessor*, align 8
  %progress_func.addr = alloca void (i8*, double)*, align 8
  %progress_data.addr = alloca i8*, align 8
  %total.addr = alloca i64, align 8
  %last_time = alloca %struct._GTimeVal, align 8
  %now = alloca %struct._GTimeVal, align 8
  store %struct._PixelProcessor* %processor, %struct._PixelProcessor** %processor.addr, align 8
  store void (i8*, double)* %progress_func, void (i8*, double)** %progress_func.addr, align 8
  store i8* %progress_data, i8** %progress_data.addr, align 8
  store i64 %total, i64* %total.addr, align 8
  %0 = load void (i8*, double)*, void (i8*, double)** %progress_func.addr, align 8
  %tobool = icmp ne void (i8*, double)* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @g_get_current_time(%struct._GTimeVal* %last_time)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %land.end, %if.end
  %1 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %num_regions = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %1, i32 0, i32 6
  %2 = load i32, i32* %num_regions, align 4
  switch i32 %2, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.1
    i32 3, label %sw.bb.8
    i32 4, label %sw.bb.17
  ]

sw.bb:                                            ; preds = %do.body
  %3 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %func = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %3, i32 0, i32 0
  %4 = load void ()*, void ()** %func, align 8
  %5 = bitcast void ()* %4 to void (i8*, %struct._PixelRegion*)*
  %6 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %data = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %6, i32 0, i32 1
  %7 = load i8*, i8** %data, align 8
  %8 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %regions = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %8, i32 0, i32 7
  %arrayidx = getelementptr inbounds [4 x %struct._PixelRegion*], [4 x %struct._PixelRegion*]* %regions, i32 0, i64 0
  %9 = load %struct._PixelRegion*, %struct._PixelRegion** %arrayidx, align 8
  call void %5(i8* %7, %struct._PixelRegion* %9)
  br label %sw.epilog

sw.bb.1:                                          ; preds = %do.body
  %10 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %func2 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %10, i32 0, i32 0
  %11 = load void ()*, void ()** %func2, align 8
  %12 = bitcast void ()* %11 to void (i8*, %struct._PixelRegion*, %struct._PixelRegion*)*
  %13 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %data3 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %13, i32 0, i32 1
  %14 = load i8*, i8** %data3, align 8
  %15 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %regions4 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %15, i32 0, i32 7
  %arrayidx5 = getelementptr inbounds [4 x %struct._PixelRegion*], [4 x %struct._PixelRegion*]* %regions4, i32 0, i64 0
  %16 = load %struct._PixelRegion*, %struct._PixelRegion** %arrayidx5, align 8
  %17 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %regions6 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %17, i32 0, i32 7
  %arrayidx7 = getelementptr inbounds [4 x %struct._PixelRegion*], [4 x %struct._PixelRegion*]* %regions6, i32 0, i64 1
  %18 = load %struct._PixelRegion*, %struct._PixelRegion** %arrayidx7, align 8
  call void %12(i8* %14, %struct._PixelRegion* %16, %struct._PixelRegion* %18)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %do.body
  %19 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %func9 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %19, i32 0, i32 0
  %20 = load void ()*, void ()** %func9, align 8
  %21 = bitcast void ()* %20 to void (i8*, %struct._PixelRegion*, %struct._PixelRegion*, %struct._PixelRegion*)*
  %22 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %data10 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %22, i32 0, i32 1
  %23 = load i8*, i8** %data10, align 8
  %24 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %regions11 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %24, i32 0, i32 7
  %arrayidx12 = getelementptr inbounds [4 x %struct._PixelRegion*], [4 x %struct._PixelRegion*]* %regions11, i32 0, i64 0
  %25 = load %struct._PixelRegion*, %struct._PixelRegion** %arrayidx12, align 8
  %26 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %regions13 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %26, i32 0, i32 7
  %arrayidx14 = getelementptr inbounds [4 x %struct._PixelRegion*], [4 x %struct._PixelRegion*]* %regions13, i32 0, i64 1
  %27 = load %struct._PixelRegion*, %struct._PixelRegion** %arrayidx14, align 8
  %28 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %regions15 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %28, i32 0, i32 7
  %arrayidx16 = getelementptr inbounds [4 x %struct._PixelRegion*], [4 x %struct._PixelRegion*]* %regions15, i32 0, i64 2
  %29 = load %struct._PixelRegion*, %struct._PixelRegion** %arrayidx16, align 8
  call void %21(i8* %23, %struct._PixelRegion* %25, %struct._PixelRegion* %27, %struct._PixelRegion* %29)
  br label %sw.epilog

sw.bb.17:                                         ; preds = %do.body
  %30 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %func18 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %30, i32 0, i32 0
  %31 = load void ()*, void ()** %func18, align 8
  %32 = bitcast void ()* %31 to void (i8*, %struct._PixelRegion*, %struct._PixelRegion*, %struct._PixelRegion*, %struct._PixelRegion*)*
  %33 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %data19 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %33, i32 0, i32 1
  %34 = load i8*, i8** %data19, align 8
  %35 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %regions20 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %35, i32 0, i32 7
  %arrayidx21 = getelementptr inbounds [4 x %struct._PixelRegion*], [4 x %struct._PixelRegion*]* %regions20, i32 0, i64 0
  %36 = load %struct._PixelRegion*, %struct._PixelRegion** %arrayidx21, align 8
  %37 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %regions22 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %37, i32 0, i32 7
  %arrayidx23 = getelementptr inbounds [4 x %struct._PixelRegion*], [4 x %struct._PixelRegion*]* %regions22, i32 0, i64 1
  %38 = load %struct._PixelRegion*, %struct._PixelRegion** %arrayidx23, align 8
  %39 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %regions24 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %39, i32 0, i32 7
  %arrayidx25 = getelementptr inbounds [4 x %struct._PixelRegion*], [4 x %struct._PixelRegion*]* %regions24, i32 0, i64 2
  %40 = load %struct._PixelRegion*, %struct._PixelRegion** %arrayidx25, align 8
  %41 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %regions26 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %41, i32 0, i32 7
  %arrayidx27 = getelementptr inbounds [4 x %struct._PixelRegion*], [4 x %struct._PixelRegion*]* %regions26, i32 0, i64 3
  %42 = load %struct._PixelRegion*, %struct._PixelRegion** %arrayidx27, align 8
  call void %32(i8* %34, %struct._PixelRegion* %36, %struct._PixelRegion* %38, %struct._PixelRegion* %40, %struct._PixelRegion* %42)
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  %43 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %num_regions28 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %43, i32 0, i32 6
  %44 = load i32, i32* %num_regions28, align 4
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i32 0, i32 0), i32 %44)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.17, %sw.bb.8, %sw.bb.1, %sw.bb
  %45 = load void (i8*, double)*, void (i8*, double)** %progress_func.addr, align 8
  %tobool29 = icmp ne void (i8*, double)* %45, null
  br i1 %tobool29, label %if.then.30, label %if.end.44

if.then.30:                                       ; preds = %sw.epilog
  %46 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %PRI = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %46, i32 0, i32 5
  %47 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %PRI, align 8
  %portion_width = getelementptr inbounds %struct._PixelRegionIterator, %struct._PixelRegionIterator* %47, i32 0, i32 3
  %48 = load i32, i32* %portion_width, align 4
  %49 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %PRI31 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %49, i32 0, i32 5
  %50 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %PRI31, align 8
  %portion_height = getelementptr inbounds %struct._PixelRegionIterator, %struct._PixelRegionIterator* %50, i32 0, i32 4
  %51 = load i32, i32* %portion_height, align 4
  %mul = mul nsw i32 %48, %51
  %conv = sext i32 %mul to i64
  %52 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %progress = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %52, i32 0, i32 8
  %53 = load i64, i64* %progress, align 8
  %add = add i64 %53, %conv
  store i64 %add, i64* %progress, align 8
  call void @g_get_current_time(%struct._GTimeVal* %now)
  %tv_sec = getelementptr inbounds %struct._GTimeVal, %struct._GTimeVal* %now, i32 0, i32 0
  %54 = load i64, i64* %tv_sec, align 8
  %tv_sec32 = getelementptr inbounds %struct._GTimeVal, %struct._GTimeVal* %last_time, i32 0, i32 0
  %55 = load i64, i64* %tv_sec32, align 8
  %sub = sub nsw i64 %54, %55
  %mul33 = mul nsw i64 %sub, 1024
  %tv_usec = getelementptr inbounds %struct._GTimeVal, %struct._GTimeVal* %now, i32 0, i32 1
  %56 = load i64, i64* %tv_usec, align 8
  %tv_usec34 = getelementptr inbounds %struct._GTimeVal, %struct._GTimeVal* %last_time, i32 0, i32 1
  %57 = load i64, i64* %tv_usec34, align 8
  %sub35 = sub nsw i64 %56, %57
  %div = sdiv i64 %sub35, 1024
  %add36 = add nsw i64 %mul33, %div
  %cmp = icmp sgt i64 %add36, 64
  br i1 %cmp, label %if.then.38, label %if.end.43

if.then.38:                                       ; preds = %if.then.30
  %58 = load void (i8*, double)*, void (i8*, double)** %progress_func.addr, align 8
  %59 = load i8*, i8** %progress_data.addr, align 8
  %60 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %progress39 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %60, i32 0, i32 8
  %61 = load i64, i64* %progress39, align 8
  %conv40 = uitofp i64 %61 to double
  %62 = load i64, i64* %total.addr, align 8
  %conv41 = uitofp i64 %62 to double
  %div42 = fdiv double %conv40, %conv41
  call void %58(i8* %59, double %div42)
  %63 = bitcast %struct._GTimeVal* %last_time to i8*
  %64 = bitcast %struct._GTimeVal* %now to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %63, i8* %64, i64 16, i32 8, i1 false)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.38, %if.then.30
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %sw.epilog
  br label %do.cond

do.cond:                                          ; preds = %if.end.44
  %65 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %PRI45 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %65, i32 0, i32 5
  %66 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %PRI45, align 8
  %tobool46 = icmp ne %struct._PixelRegionIterator* %66, null
  br i1 %tobool46, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %67 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %PRI47 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %67, i32 0, i32 5
  %68 = load %struct._PixelRegionIterator*, %struct._PixelRegionIterator** %PRI47, align 8
  %call = call %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator* %68)
  %69 = load %struct._PixelProcessor*, %struct._PixelProcessor** %processor.addr, align 8
  %PRI48 = getelementptr inbounds %struct._PixelProcessor, %struct._PixelProcessor* %69, i32 0, i32 5
  store %struct._PixelRegionIterator* %call, %struct._PixelRegionIterator** %PRI48, align 8
  %tobool49 = icmp ne %struct._PixelRegionIterator* %call, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %70 = phi i1 [ false, %do.cond ], [ %tobool49, %land.rhs ]
  br i1 %70, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  ret i8* null
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
