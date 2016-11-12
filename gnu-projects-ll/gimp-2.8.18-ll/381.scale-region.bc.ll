; ModuleID = './app/paint-funcs/scale-region.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._PixelRegion = type { i8*, %struct._TileManager*, %struct._Tile*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._TileManager = type opaque
%struct._Tile = type opaque
%struct._PixelSurround = type opaque
%struct._PixelRegionIterator = type { %struct._GSList*, i32, i32, i32, i32, i32 }
%struct._GSList = type { i8*, %struct._GSList* }

@.str = private unnamed_addr constant [17 x i8] c"Gimp-Paint-Funcs\00", align 1
@__func__.scale_region = private unnamed_addr constant [13 x i8] c"scale_region\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"interpolation == GIMP_INTERPOLATION_LINEAR\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"progress_callback == NULL\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"scale-region.c\00", align 1
@gimp_log_flags = external global i32, align 4
@__func__.scale = private unnamed_addr constant [6 x i8] c"scale\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"scale: %dx%d -> %dx%d\00", align 1
@__func__.decimate_xy = private unnamed_addr constant [12 x i8] c"decimate_xy\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"decimate_xy: %dx%d -> %dx%d\0A\00", align 1
@__func__.decimate_x = private unnamed_addr constant [11 x i8] c"decimate_x\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"decimate_x: %dx%d -> %dx%d\0A\00", align 1
@__func__.decimate_y = private unnamed_addr constant [11 x i8] c"decimate_y\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"decimate_y: %dx%d -> %dx%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @scale_region(%struct._PixelRegion* %srcPR, %struct._PixelRegion* %dstPR, i32 %interpolation, void (i32, i32, i32, i8*)* %progress_callback, i8* %progress_data) #0 {
entry:
  %srcPR.addr = alloca %struct._PixelRegion*, align 8
  %dstPR.addr = alloca %struct._PixelRegion*, align 8
  %interpolation.addr = alloca i32, align 4
  %progress_callback.addr = alloca void (i32, i32, i32, i8*)*, align 8
  %progress_data.addr = alloca i8*, align 8
  store %struct._PixelRegion* %srcPR, %struct._PixelRegion** %srcPR.addr, align 8
  store %struct._PixelRegion* %dstPR, %struct._PixelRegion** %dstPR.addr, align 8
  store i32 %interpolation, i32* %interpolation.addr, align 4
  store void (i32, i32, i32, i8*)* %progress_callback, void (i32, i32, i32, i8*)** %progress_callback.addr, align 8
  store i8* %progress_data, i8** %progress_data.addr, align 8
  %0 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %0, i32 0, i32 9
  %1 = load i32, i32* %h, align 4
  %2 = load %struct._PixelRegion*, %struct._PixelRegion** %dstPR.addr, align 8
  %h1 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %2, i32 0, i32 9
  %3 = load i32, i32* %h1, align 4
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %4, i32 0, i32 8
  %5 = load i32, i32* %w, align 4
  %6 = load %struct._PixelRegion*, %struct._PixelRegion** %dstPR.addr, align 8
  %w2 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %6, i32 0, i32 8
  %7 = load i32, i32* %w2, align 4
  %cmp3 = icmp eq i32 %5, %7
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %9 = load %struct._PixelRegion*, %struct._PixelRegion** %dstPR.addr, align 8
  call void @copy_region(%struct._PixelRegion* %8, %struct._PixelRegion* %9)
  br label %do.end.26

if.end:                                           ; preds = %land.lhs.true, %entry
  %10 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %tiles = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %10, i32 0, i32 1
  %11 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %cmp4 = icmp eq %struct._TileManager* %11, null
  br i1 %cmp4, label %land.lhs.true.5, label %if.end.17

land.lhs.true.5:                                  ; preds = %if.end
  %12 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %data = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %12, i32 0, i32 0
  %13 = load i8*, i8** %data, align 8
  %cmp6 = icmp ne i8* %13, null
  br i1 %cmp6, label %if.then.7, label %if.end.17

if.then.7:                                        ; preds = %land.lhs.true.5
  br label %do.body

do.body:                                          ; preds = %if.then.7
  %14 = load i32, i32* %interpolation.addr, align 4
  %cmp8 = icmp eq i32 %14, 1
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %do.body
  br label %if.end.10

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.scale_region, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0))
  br label %do.end.26

if.end.10:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %15 = load void (i32, i32, i32, i8*)*, void (i32, i32, i32, i8*)** %progress_callback.addr, align 8
  %cmp12 = icmp eq void (i32, i32, i32, i8*)* %15, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.scale_region, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %do.end.26

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %16 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %17 = load %struct._PixelRegion*, %struct._PixelRegion** %dstPR.addr, align 8
  call void @scale_region_buffer(%struct._PixelRegion* %16, %struct._PixelRegion* %17)
  br label %do.end.26

if.end.17:                                        ; preds = %land.lhs.true.5, %if.end
  %18 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %tiles18 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %18, i32 0, i32 1
  %19 = load %struct._TileManager*, %struct._TileManager** %tiles18, align 8
  %cmp19 = icmp ne %struct._TileManager* %19, null
  br i1 %cmp19, label %land.lhs.true.20, label %if.end.24

land.lhs.true.20:                                 ; preds = %if.end.17
  %20 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %data21 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %20, i32 0, i32 0
  %21 = load i8*, i8** %data21, align 8
  %cmp22 = icmp eq i8* %21, null
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %land.lhs.true.20
  %22 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %23 = load %struct._PixelRegion*, %struct._PixelRegion** %dstPR.addr, align 8
  %24 = load i32, i32* %interpolation.addr, align 4
  %25 = load void (i32, i32, i32, i8*)*, void (i32, i32, i32, i8*)** %progress_callback.addr, align 8
  %26 = load i8*, i8** %progress_data.addr, align 8
  call void @scale_region_tile(%struct._PixelRegion* %22, %struct._PixelRegion* %23, i32 %24, void (i32, i32, i32, i8*)* %25, i8* %26)
  br label %do.end.26

if.end.24:                                        ; preds = %land.lhs.true.20, %if.end.17
  br label %do.body.25

do.body.25:                                       ; preds = %if.end.24
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i32 198, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.scale_region, i32 0, i32 0), i8* null) #6
  unreachable

do.end.26:                                        ; preds = %if.then, %if.else, %if.else.14, %do.end.16, %if.then.23
  ret void
}

declare void @copy_region(%struct._PixelRegion*, %struct._PixelRegion*) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @scale_region_buffer(%struct._PixelRegion* %srcPR, %struct._PixelRegion* %dstPR) #0 {
entry:
  %srcPR.addr = alloca %struct._PixelRegion*, align 8
  %dstPR.addr = alloca %struct._PixelRegion*, align 8
  %scalex = alloca double, align 8
  %scaley = alloca double, align 8
  %src_width = alloca i32, align 4
  %src_height = alloca i32, align 4
  %bytes = alloca i32, align 4
  %dst_width = alloca i32, align 4
  %dst_height = alloca i32, align 4
  %pixel = alloca i8*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %yfrac = alloca double, align 8
  %sy0 = alloca i32, align 4
  %sy1 = alloca i32, align 4
  %xfrac = alloca double, align 8
  %sx0 = alloca i32, align 4
  %sx1 = alloca i32, align 4
  store %struct._PixelRegion* %srcPR, %struct._PixelRegion** %srcPR.addr, align 8
  store %struct._PixelRegion* %dstPR, %struct._PixelRegion** %dstPR.addr, align 8
  %0 = load %struct._PixelRegion*, %struct._PixelRegion** %dstPR.addr, align 8
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %0, i32 0, i32 8
  %1 = load i32, i32* %w, align 4
  %conv = sitofp i32 %1 to double
  %2 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %w1 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %2, i32 0, i32 8
  %3 = load i32, i32* %w1, align 4
  %conv2 = sitofp i32 %3 to double
  %div = fdiv double %conv, %conv2
  store double %div, double* %scalex, align 8
  %4 = load %struct._PixelRegion*, %struct._PixelRegion** %dstPR.addr, align 8
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %4, i32 0, i32 9
  %5 = load i32, i32* %h, align 4
  %conv3 = sitofp i32 %5 to double
  %6 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %h4 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %6, i32 0, i32 9
  %7 = load i32, i32* %h4, align 4
  %conv5 = sitofp i32 %7 to double
  %div6 = fdiv double %conv3, %conv5
  store double %div6, double* %scaley, align 8
  %8 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %w7 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %8, i32 0, i32 8
  %9 = load i32, i32* %w7, align 4
  store i32 %9, i32* %src_width, align 4
  %10 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %h8 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %10, i32 0, i32 9
  %11 = load i32, i32* %h8, align 4
  store i32 %11, i32* %src_height, align 4
  %12 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %bytes9 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %12, i32 0, i32 10
  %13 = load i32, i32* %bytes9, align 4
  store i32 %13, i32* %bytes, align 4
  %14 = load %struct._PixelRegion*, %struct._PixelRegion** %dstPR.addr, align 8
  %w10 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %14, i32 0, i32 8
  %15 = load i32, i32* %w10, align 4
  store i32 %15, i32* %dst_width, align 4
  %16 = load %struct._PixelRegion*, %struct._PixelRegion** %dstPR.addr, align 8
  %h11 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %16, i32 0, i32 9
  %17 = load i32, i32* %h11, align 4
  store i32 %17, i32* %dst_height, align 4
  %18 = load %struct._PixelRegion*, %struct._PixelRegion** %dstPR.addr, align 8
  %data = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %18, i32 0, i32 0
  %19 = load i8*, i8** %data, align 8
  store i8* %19, i8** %pixel, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.39, %entry
  %20 = load i32, i32* %y, align 4
  %21 = load i32, i32* %dst_height, align 4
  %cmp = icmp slt i32 %20, %21
  br i1 %cmp, label %for.body, label %for.end.41

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %y, align 4
  %conv13 = sitofp i32 %22 to double
  %23 = load double, double* %scaley, align 8
  %div14 = fdiv double %conv13, %23
  store double %div14, double* %yfrac, align 8
  %24 = load double, double* %yfrac, align 8
  %conv15 = fptosi double %24 to i32
  store i32 %conv15, i32* %sy0, align 4
  %25 = load i32, i32* %sy0, align 4
  %add = add nsw i32 %25, 1
  store i32 %add, i32* %sy1, align 4
  %26 = load i32, i32* %sy1, align 4
  %27 = load i32, i32* %src_height, align 4
  %sub = sub nsw i32 %27, 1
  %cmp16 = icmp slt i32 %26, %sub
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %28 = load i32, i32* %sy1, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %29 = load i32, i32* %src_height, align 4
  %sub18 = sub nsw i32 %29, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %28, %cond.true ], [ %sub18, %cond.false ]
  store i32 %cond, i32* %sy1, align 4
  %30 = load double, double* %yfrac, align 8
  %31 = load i32, i32* %sy0, align 4
  %conv19 = sitofp i32 %31 to double
  %sub20 = fsub double %30, %conv19
  store double %sub20, double* %yfrac, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc, %cond.end
  %32 = load i32, i32* %x, align 4
  %33 = load i32, i32* %dst_width, align 4
  %cmp22 = icmp slt i32 %32, %33
  br i1 %cmp22, label %for.body.24, label %for.end

for.body.24:                                      ; preds = %for.cond.21
  %34 = load i32, i32* %x, align 4
  %conv25 = sitofp i32 %34 to double
  %35 = load double, double* %scalex, align 8
  %div26 = fdiv double %conv25, %35
  store double %div26, double* %xfrac, align 8
  %36 = load double, double* %xfrac, align 8
  %conv27 = fptosi double %36 to i32
  store i32 %conv27, i32* %sx0, align 4
  %37 = load i32, i32* %sx0, align 4
  %add28 = add nsw i32 %37, 1
  store i32 %add28, i32* %sx1, align 4
  %38 = load i32, i32* %sx1, align 4
  %39 = load i32, i32* %src_width, align 4
  %sub29 = sub nsw i32 %39, 1
  %cmp30 = icmp slt i32 %38, %sub29
  br i1 %cmp30, label %cond.true.32, label %cond.false.33

cond.true.32:                                     ; preds = %for.body.24
  %40 = load i32, i32* %sx1, align 4
  br label %cond.end.35

cond.false.33:                                    ; preds = %for.body.24
  %41 = load i32, i32* %src_width, align 4
  %sub34 = sub nsw i32 %41, 1
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.false.33, %cond.true.32
  %cond36 = phi i32 [ %40, %cond.true.32 ], [ %sub34, %cond.false.33 ]
  store i32 %cond36, i32* %sx1, align 4
  %42 = load double, double* %xfrac, align 8
  %43 = load i32, i32* %sx0, align 4
  %conv37 = sitofp i32 %43 to double
  %sub38 = fsub double %42, %conv37
  store double %sub38, double* %xfrac, align 8
  %44 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %45 = load i32, i32* %sx0, align 4
  %46 = load i32, i32* %sy0, align 4
  %47 = load i32, i32* %sx1, align 4
  %48 = load i32, i32* %sy1, align 4
  %49 = load double, double* %xfrac, align 8
  %50 = load double, double* %yfrac, align 8
  %51 = load i8*, i8** %pixel, align 8
  call void @interpolate_bilinear_pr(%struct._PixelRegion* %44, i32 %45, i32 %46, i32 %47, i32 %48, double %49, double %50, i8* %51)
  %52 = load i32, i32* %bytes, align 4
  %53 = load i8*, i8** %pixel, align 8
  %idx.ext = sext i32 %52 to i64
  %add.ptr = getelementptr inbounds i8, i8* %53, i64 %idx.ext
  store i8* %add.ptr, i8** %pixel, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end.35
  %54 = load i32, i32* %x, align 4
  %inc = add nsw i32 %54, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.21

for.end:                                          ; preds = %for.cond.21
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.end
  %55 = load i32, i32* %y, align 4
  %inc40 = add nsw i32 %55, 1
  store i32 %inc40, i32* %y, align 4
  br label %for.cond

for.end.41:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @scale_region_tile(%struct._PixelRegion* %srcPR, %struct._PixelRegion* %dstPR, i32 %interpolation, void (i32, i32, i32, i8*)* %progress_callback, i8* %progress_data) #0 {
entry:
  %srcPR.addr = alloca %struct._PixelRegion*, align 8
  %dstPR.addr = alloca %struct._PixelRegion*, align 8
  %interpolation.addr = alloca i32, align 4
  %progress_callback.addr = alloca void (i32, i32, i32, i8*)*, align 8
  %progress_data.addr = alloca i8*, align 8
  %tmpTM = alloca %struct._TileManager*, align 8
  %srcTM = alloca %struct._TileManager*, align 8
  %dstTM = alloca %struct._TileManager*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %bytes = alloca i32, align 4
  %max_progress = alloca i32, align 4
  %progress = alloca i32, align 4
  %levelx = alloca i32, align 4
  %levely = alloca i32, align 4
  %scalex = alloca double, align 8
  %scaley = alloca double, align 8
  store %struct._PixelRegion* %srcPR, %struct._PixelRegion** %srcPR.addr, align 8
  store %struct._PixelRegion* %dstPR, %struct._PixelRegion** %dstPR.addr, align 8
  store i32 %interpolation, i32* %interpolation.addr, align 4
  store void (i32, i32, i32, i8*)* %progress_callback, void (i32, i32, i32, i8*)** %progress_callback.addr, align 8
  store i8* %progress_data, i8** %progress_data.addr, align 8
  store %struct._TileManager* null, %struct._TileManager** %tmpTM, align 8
  %0 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %tiles = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %0, i32 0, i32 1
  %1 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  store %struct._TileManager* %1, %struct._TileManager** %srcTM, align 8
  %2 = load %struct._PixelRegion*, %struct._PixelRegion** %dstPR.addr, align 8
  %tiles1 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %2, i32 0, i32 1
  %3 = load %struct._TileManager*, %struct._TileManager** %tiles1, align 8
  store %struct._TileManager* %3, %struct._TileManager** %dstTM, align 8
  %4 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %4, i32 0, i32 8
  %5 = load i32, i32* %w, align 4
  store i32 %5, i32* %width, align 4
  %6 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %6, i32 0, i32 9
  %7 = load i32, i32* %h, align 4
  store i32 %7, i32* %height, align 4
  %8 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %bytes2 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %8, i32 0, i32 10
  %9 = load i32, i32* %bytes2, align 4
  store i32 %9, i32* %bytes, align 4
  store i32 0, i32* %max_progress, align 4
  store i32 0, i32* %progress, align 4
  store i32 0, i32* %levelx, align 4
  store i32 0, i32* %levely, align 4
  %10 = load i32, i32* %width, align 4
  %conv = sitofp i32 %10 to double
  %11 = load %struct._PixelRegion*, %struct._PixelRegion** %dstPR.addr, align 8
  %w3 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %11, i32 0, i32 8
  %12 = load i32, i32* %w3, align 4
  %conv4 = sitofp i32 %12 to double
  %div = fdiv double %conv, %conv4
  store double %div, double* %scalex, align 8
  %13 = load i32, i32* %height, align 4
  %conv5 = sitofp i32 %13 to double
  %14 = load %struct._PixelRegion*, %struct._PixelRegion** %dstPR.addr, align 8
  %h6 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %14, i32 0, i32 9
  %15 = load i32, i32* %h6, align 4
  %conv7 = sitofp i32 %15 to double
  %div8 = fdiv double %conv5, %conv7
  store double %div8, double* %scaley, align 8
  %16 = load i32, i32* %interpolation.addr, align 4
  %cmp = icmp ne i32 %16, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %17 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %18 = load %struct._PixelRegion*, %struct._PixelRegion** %dstPR.addr, align 8
  call void @scale_determine_levels(%struct._PixelRegion* %17, %struct._PixelRegion* %18, i32* %levelx, i32* %levely)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %19 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %20 = load %struct._PixelRegion*, %struct._PixelRegion** %dstPR.addr, align 8
  %21 = load i32, i32* %levelx, align 4
  %22 = load i32, i32* %levely, align 4
  %call = call i32 @scale_determine_progress(%struct._PixelRegion* %19, %struct._PixelRegion* %20, i32 %21, i32 %22)
  store i32 %call, i32* %max_progress, align 4
  %23 = load i32, i32* %levelx, align 4
  %cmp10 = icmp eq i32 %23, 0
  br i1 %cmp10, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %if.end
  %24 = load i32, i32* %levely, align 4
  %cmp12 = icmp eq i32 %24, 0
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %land.lhs.true
  %25 = load %struct._TileManager*, %struct._TileManager** %srcTM, align 8
  %26 = load %struct._TileManager*, %struct._TileManager** %dstTM, align 8
  %27 = load i32, i32* %interpolation.addr, align 4
  %28 = load void (i32, i32, i32, i8*)*, void (i32, i32, i32, i8*)** %progress_callback.addr, align 8
  %29 = load i8*, i8** %progress_data.addr, align 8
  %30 = load i32, i32* %max_progress, align 4
  %31 = load double, double* %scalex, align 8
  %32 = load double, double* %scaley, align 8
  call void @scale(%struct._TileManager* %25, %struct._TileManager* %26, i32 %27, void (i32, i32, i32, i8*)* %28, i8* %29, i32* %progress, i32 %30, double %31, double %32)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %land.lhs.true, %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.28, %if.end.15
  %33 = load i32, i32* %levelx, align 4
  %cmp16 = icmp sgt i32 %33, 0
  br i1 %cmp16, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %34 = load i32, i32* %levely, align 4
  %cmp18 = icmp sgt i32 %34, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %35 = phi i1 [ false, %while.cond ], [ %cmp18, %land.rhs ]
  br i1 %35, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %36 = load i32, i32* %width, align 4
  %add = add nsw i32 %36, 1
  %shr = ashr i32 %add, 1
  store i32 %shr, i32* %width, align 4
  %37 = load i32, i32* %height, align 4
  %add20 = add nsw i32 %37, 1
  %shr21 = ashr i32 %add20, 1
  store i32 %shr21, i32* %height, align 4
  %38 = load double, double* %scalex, align 8
  %mul = fmul double %38, 5.000000e-01
  store double %mul, double* %scalex, align 8
  %39 = load double, double* %scaley, align 8
  %mul22 = fmul double %39, 5.000000e-01
  store double %mul22, double* %scaley, align 8
  %40 = load i32, i32* %width, align 4
  %41 = load i32, i32* %height, align 4
  %42 = load i32, i32* %bytes, align 4
  %call23 = call %struct._TileManager* @tile_manager_new(i32 %40, i32 %41, i32 %42)
  store %struct._TileManager* %call23, %struct._TileManager** %tmpTM, align 8
  %43 = load %struct._TileManager*, %struct._TileManager** %srcTM, align 8
  %44 = load %struct._TileManager*, %struct._TileManager** %tmpTM, align 8
  %45 = load i32, i32* %interpolation.addr, align 4
  %46 = load void (i32, i32, i32, i8*)*, void (i32, i32, i32, i8*)** %progress_callback.addr, align 8
  %47 = load i8*, i8** %progress_data.addr, align 8
  %48 = load i32, i32* %max_progress, align 4
  call void @decimate_xy(%struct._TileManager* %43, %struct._TileManager* %44, i32 %45, void (i32, i32, i32, i8*)* %46, i8* %47, i32* %progress, i32 %48)
  %49 = load %struct._TileManager*, %struct._TileManager** %srcTM, align 8
  %50 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %tiles24 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %50, i32 0, i32 1
  %51 = load %struct._TileManager*, %struct._TileManager** %tiles24, align 8
  %cmp25 = icmp ne %struct._TileManager* %49, %51
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %while.body
  %52 = load %struct._TileManager*, %struct._TileManager** %srcTM, align 8
  call void @tile_manager_unref(%struct._TileManager* %52)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %while.body
  %53 = load %struct._TileManager*, %struct._TileManager** %tmpTM, align 8
  store %struct._TileManager* %53, %struct._TileManager** %srcTM, align 8
  %54 = load i32, i32* %levelx, align 4
  %dec = add nsw i32 %54, -1
  store i32 %dec, i32* %levelx, align 4
  %55 = load i32, i32* %levely, align 4
  %dec29 = add nsw i32 %55, -1
  store i32 %dec29, i32* %levely, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %while.cond.30

while.cond.30:                                    ; preds = %if.end.42, %while.end
  %56 = load i32, i32* %levelx, align 4
  %cmp31 = icmp sgt i32 %56, 0
  br i1 %cmp31, label %while.body.33, label %while.end.44

while.body.33:                                    ; preds = %while.cond.30
  %57 = load i32, i32* %width, align 4
  %add34 = add nsw i32 %57, 1
  %shr35 = ashr i32 %add34, 1
  store i32 %shr35, i32* %width, align 4
  %58 = load double, double* %scalex, align 8
  %mul36 = fmul double %58, 5.000000e-01
  store double %mul36, double* %scalex, align 8
  %59 = load i32, i32* %width, align 4
  %60 = load i32, i32* %height, align 4
  %61 = load i32, i32* %bytes, align 4
  %call37 = call %struct._TileManager* @tile_manager_new(i32 %59, i32 %60, i32 %61)
  store %struct._TileManager* %call37, %struct._TileManager** %tmpTM, align 8
  %62 = load %struct._TileManager*, %struct._TileManager** %srcTM, align 8
  %63 = load %struct._TileManager*, %struct._TileManager** %tmpTM, align 8
  %64 = load i32, i32* %interpolation.addr, align 4
  %65 = load void (i32, i32, i32, i8*)*, void (i32, i32, i32, i8*)** %progress_callback.addr, align 8
  %66 = load i8*, i8** %progress_data.addr, align 8
  %67 = load i32, i32* %max_progress, align 4
  call void @decimate_x(%struct._TileManager* %62, %struct._TileManager* %63, i32 %64, void (i32, i32, i32, i8*)* %65, i8* %66, i32* %progress, i32 %67)
  %68 = load %struct._TileManager*, %struct._TileManager** %srcTM, align 8
  %69 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %tiles38 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %69, i32 0, i32 1
  %70 = load %struct._TileManager*, %struct._TileManager** %tiles38, align 8
  %cmp39 = icmp ne %struct._TileManager* %68, %70
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %while.body.33
  %71 = load %struct._TileManager*, %struct._TileManager** %srcTM, align 8
  call void @tile_manager_unref(%struct._TileManager* %71)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %while.body.33
  %72 = load %struct._TileManager*, %struct._TileManager** %tmpTM, align 8
  store %struct._TileManager* %72, %struct._TileManager** %srcTM, align 8
  %73 = load i32, i32* %levelx, align 4
  %dec43 = add nsw i32 %73, -1
  store i32 %dec43, i32* %levelx, align 4
  br label %while.cond.30

while.end.44:                                     ; preds = %while.cond.30
  br label %while.cond.45

while.cond.45:                                    ; preds = %if.end.57, %while.end.44
  %74 = load i32, i32* %levely, align 4
  %cmp46 = icmp sgt i32 %74, 0
  br i1 %cmp46, label %while.body.48, label %while.end.59

while.body.48:                                    ; preds = %while.cond.45
  %75 = load i32, i32* %height, align 4
  %add49 = add nsw i32 %75, 1
  %shr50 = ashr i32 %add49, 1
  store i32 %shr50, i32* %height, align 4
  %76 = load double, double* %scaley, align 8
  %mul51 = fmul double %76, 5.000000e-01
  store double %mul51, double* %scaley, align 8
  %77 = load i32, i32* %width, align 4
  %78 = load i32, i32* %height, align 4
  %79 = load i32, i32* %bytes, align 4
  %call52 = call %struct._TileManager* @tile_manager_new(i32 %77, i32 %78, i32 %79)
  store %struct._TileManager* %call52, %struct._TileManager** %tmpTM, align 8
  %80 = load %struct._TileManager*, %struct._TileManager** %srcTM, align 8
  %81 = load %struct._TileManager*, %struct._TileManager** %tmpTM, align 8
  %82 = load i32, i32* %interpolation.addr, align 4
  %83 = load void (i32, i32, i32, i8*)*, void (i32, i32, i32, i8*)** %progress_callback.addr, align 8
  %84 = load i8*, i8** %progress_data.addr, align 8
  %85 = load i32, i32* %max_progress, align 4
  call void @decimate_y(%struct._TileManager* %80, %struct._TileManager* %81, i32 %82, void (i32, i32, i32, i8*)* %83, i8* %84, i32* %progress, i32 %85)
  %86 = load %struct._TileManager*, %struct._TileManager** %srcTM, align 8
  %87 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %tiles53 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %87, i32 0, i32 1
  %88 = load %struct._TileManager*, %struct._TileManager** %tiles53, align 8
  %cmp54 = icmp ne %struct._TileManager* %86, %88
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %while.body.48
  %89 = load %struct._TileManager*, %struct._TileManager** %srcTM, align 8
  call void @tile_manager_unref(%struct._TileManager* %89)
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.56, %while.body.48
  %90 = load %struct._TileManager*, %struct._TileManager** %tmpTM, align 8
  store %struct._TileManager* %90, %struct._TileManager** %srcTM, align 8
  %91 = load i32, i32* %levely, align 4
  %dec58 = add nsw i32 %91, -1
  store i32 %dec58, i32* %levely, align 4
  br label %while.cond.45

while.end.59:                                     ; preds = %while.cond.45
  %92 = load %struct._TileManager*, %struct._TileManager** %tmpTM, align 8
  %cmp60 = icmp ne %struct._TileManager* %92, null
  br i1 %cmp60, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %while.end.59
  %93 = load %struct._TileManager*, %struct._TileManager** %tmpTM, align 8
  %94 = load %struct._TileManager*, %struct._TileManager** %dstTM, align 8
  %95 = load i32, i32* %interpolation.addr, align 4
  %96 = load void (i32, i32, i32, i8*)*, void (i32, i32, i32, i8*)** %progress_callback.addr, align 8
  %97 = load i8*, i8** %progress_data.addr, align 8
  %98 = load i32, i32* %max_progress, align 4
  %99 = load double, double* %scalex, align 8
  %100 = load double, double* %scaley, align 8
  call void @scale(%struct._TileManager* %93, %struct._TileManager* %94, i32 %95, void (i32, i32, i32, i8*)* %96, i8* %97, i32* %progress, i32 %98, double %99, double %100)
  %101 = load %struct._TileManager*, %struct._TileManager** %tmpTM, align 8
  call void @tile_manager_unref(%struct._TileManager* %101)
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.62, %while.end.59
  %102 = load void (i32, i32, i32, i8*)*, void (i32, i32, i32, i8*)** %progress_callback.addr, align 8
  %tobool = icmp ne void (i32, i32, i32, i8*)* %102, null
  br i1 %tobool, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %if.end.63
  %103 = load void (i32, i32, i32, i8*)*, void (i32, i32, i32, i8*)** %progress_callback.addr, align 8
  %104 = load i32, i32* %max_progress, align 4
  %105 = load i32, i32* %max_progress, align 4
  %106 = load i8*, i8** %progress_data.addr, align 8
  call void %103(i32 0, i32 %104, i32 %105, i8* %106)
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.64, %if.end.63
  ret void
}

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define float* @create_lanczos_lookup() #0 {
entry:
  %dx = alloca double, align 8
  %lookup = alloca float*, align 8
  %x = alloca double, align 8
  %i = alloca i32, align 4
  store double 0x3F2893D967D49AF4, double* %dx, align 8
  %call = call noalias i8* @g_malloc_n(i64 16000, i64 4)
  %0 = bitcast i8* %call to float*
  store float* %0, float** %lookup, align 8
  store double 0.000000e+00, double* %x, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 16000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load double, double* %x, align 8
  %cmp1 = fcmp olt double %2, 0.000000e+00
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %3 = load double, double* %x, align 8
  %sub = fsub double -0.000000e+00, %3
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %4 = load double, double* %x, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %sub, %cond.true ], [ %4, %cond.false ]
  %cmp2 = fcmp olt double %cond, 3.000000e+00
  br i1 %cmp2, label %cond.true.3, label %cond.false.6

cond.true.3:                                      ; preds = %cond.end
  %5 = load double, double* %x, align 8
  %call4 = call double @sinc(double %5)
  %6 = load double, double* %x, align 8
  %div = fdiv double %6, 3.000000e+00
  %call5 = call double @sinc(double %div)
  %mul = fmul double %call4, %call5
  br label %cond.end.7

cond.false.6:                                     ; preds = %cond.end
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.false.6, %cond.true.3
  %cond8 = phi double [ %mul, %cond.true.3 ], [ 0.000000e+00, %cond.false.6 ]
  %conv = fptrunc double %cond8 to float
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load float*, float** %lookup, align 8
  %arrayidx = getelementptr inbounds float, float* %8, i64 %idxprom
  store float %conv, float* %arrayidx, align 4
  %9 = load double, double* %x, align 8
  %add = fadd double %9, 0x3F2893D967D49AF4
  store double %add, double* %x, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end.7
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load float*, float** %lookup, align 8
  ret float* %11
}

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: inlinehint nounwind uwtable
define internal double @sinc(double %x) #3 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %y = alloca double, align 8
  store double %x, double* %x.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %mul = fmul double %0, 0x400921FB54442D18
  store double %mul, double* %y, align 8
  %1 = load double, double* %x.addr, align 8
  %cmp = fcmp olt double %1, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load double, double* %x.addr, align 8
  %sub = fsub double -0.000000e+00, %2
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load double, double* %x.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %sub, %cond.true ], [ %3, %cond.false ]
  %cmp1 = fcmp olt double %cond, 2.500000e-04
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store double 1.000000e+00, double* %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %4 = load double, double* %y, align 8
  %call = call double @sin(double %4) #7
  %5 = load double, double* %y, align 8
  %div = fdiv double %call, %5
  store double %div, double* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load double, double* %retval
  ret double %6
}

; Function Attrs: nounwind uwtable
define internal void @scale_determine_levels(%struct._PixelRegion* %srcPR, %struct._PixelRegion* %dstPR, i32* %levelx, i32* %levely) #0 {
entry:
  %srcPR.addr = alloca %struct._PixelRegion*, align 8
  %dstPR.addr = alloca %struct._PixelRegion*, align 8
  %levelx.addr = alloca i32*, align 8
  %levely.addr = alloca i32*, align 8
  %scalex = alloca double, align 8
  %scaley = alloca double, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  store %struct._PixelRegion* %srcPR, %struct._PixelRegion** %srcPR.addr, align 8
  store %struct._PixelRegion* %dstPR, %struct._PixelRegion** %dstPR.addr, align 8
  store i32* %levelx, i32** %levelx.addr, align 8
  store i32* %levely, i32** %levely.addr, align 8
  %0 = load %struct._PixelRegion*, %struct._PixelRegion** %dstPR.addr, align 8
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %0, i32 0, i32 8
  %1 = load i32, i32* %w, align 4
  %conv = sitofp i32 %1 to double
  %2 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %w1 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %2, i32 0, i32 8
  %3 = load i32, i32* %w1, align 4
  %conv2 = sitofp i32 %3 to double
  %div = fdiv double %conv, %conv2
  store double %div, double* %scalex, align 8
  %4 = load %struct._PixelRegion*, %struct._PixelRegion** %dstPR.addr, align 8
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %4, i32 0, i32 9
  %5 = load i32, i32* %h, align 4
  %conv3 = sitofp i32 %5 to double
  %6 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %h4 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %6, i32 0, i32 9
  %7 = load i32, i32* %h4, align 4
  %conv5 = sitofp i32 %7 to double
  %div6 = fdiv double %conv3, %conv5
  store double %div6, double* %scaley, align 8
  %8 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %w7 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %8, i32 0, i32 8
  %9 = load i32, i32* %w7, align 4
  store i32 %9, i32* %width, align 4
  %10 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %h8 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %10, i32 0, i32 9
  %11 = load i32, i32* %h8, align 4
  store i32 %11, i32* %height, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %12 = load double, double* %scalex, align 8
  %cmp = fcmp olt double %12, 5.000000e-01
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %13 = load i32, i32* %width, align 4
  %cmp10 = icmp sgt i32 %13, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %14 = phi i1 [ false, %while.cond ], [ %cmp10, %land.rhs ]
  br i1 %14, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %15 = load double, double* %scalex, align 8
  %mul = fmul double %15, 2.000000e+00
  store double %mul, double* %scalex, align 8
  %16 = load i32, i32* %width, align 4
  %add = add nsw i32 %16, 1
  %div12 = sdiv i32 %add, 2
  store i32 %div12, i32* %width, align 4
  %17 = load i32*, i32** %levelx.addr, align 8
  %18 = load i32, i32* %17, align 4
  %add13 = add nsw i32 %18, 1
  store i32 %add13, i32* %17, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %while.cond.14

while.cond.14:                                    ; preds = %while.body.21, %while.end
  %19 = load double, double* %scaley, align 8
  %cmp15 = fcmp olt double %19, 5.000000e-01
  br i1 %cmp15, label %land.rhs.17, label %land.end.20

land.rhs.17:                                      ; preds = %while.cond.14
  %20 = load i32, i32* %height, align 4
  %cmp18 = icmp sgt i32 %20, 1
  br label %land.end.20

land.end.20:                                      ; preds = %land.rhs.17, %while.cond.14
  %21 = phi i1 [ false, %while.cond.14 ], [ %cmp18, %land.rhs.17 ]
  br i1 %21, label %while.body.21, label %while.end.26

while.body.21:                                    ; preds = %land.end.20
  %22 = load double, double* %scaley, align 8
  %mul22 = fmul double %22, 2.000000e+00
  store double %mul22, double* %scaley, align 8
  %23 = load i32, i32* %height, align 4
  %add23 = add nsw i32 %23, 1
  %div24 = sdiv i32 %add23, 2
  store i32 %div24, i32* %height, align 4
  %24 = load i32*, i32** %levely.addr, align 8
  %25 = load i32, i32* %24, align 4
  %add25 = add nsw i32 %25, 1
  store i32 %add25, i32* %24, align 4
  br label %while.cond.14

while.end.26:                                     ; preds = %land.end.20
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @scale_determine_progress(%struct._PixelRegion* %srcPR, %struct._PixelRegion* %dstPR, i32 %levelx, i32 %levely) #0 {
entry:
  %srcPR.addr = alloca %struct._PixelRegion*, align 8
  %dstPR.addr = alloca %struct._PixelRegion*, align 8
  %levelx.addr = alloca i32, align 4
  %levely.addr = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %tiles = alloca i32, align 4
  store %struct._PixelRegion* %srcPR, %struct._PixelRegion** %srcPR.addr, align 8
  store %struct._PixelRegion* %dstPR, %struct._PixelRegion** %dstPR.addr, align 8
  store i32 %levelx, i32* %levelx.addr, align 4
  store i32 %levely, i32* %levely.addr, align 4
  %0 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %0, i32 0, i32 8
  %1 = load i32, i32* %w, align 4
  store i32 %1, i32* %width, align 4
  %2 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %2, i32 0, i32 9
  %3 = load i32, i32* %h, align 4
  store i32 %3, i32* %height, align 4
  store i32 0, i32* %tiles, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %4 = load i32, i32* %levelx.addr, align 4
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load i32, i32* %levely.addr, align 4
  %cmp1 = icmp sgt i32 %5, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load i32, i32* %width, align 4
  %add = add nsw i32 %7, 1
  %shr = ashr i32 %add, 1
  store i32 %shr, i32* %width, align 4
  %8 = load i32, i32* %height, align 4
  %add2 = add nsw i32 %8, 1
  %shr3 = ashr i32 %add2, 1
  store i32 %shr3, i32* %height, align 4
  %9 = load i32, i32* %levelx.addr, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %levelx.addr, align 4
  %10 = load i32, i32* %levely.addr, align 4
  %dec4 = add nsw i32 %10, -1
  store i32 %dec4, i32* %levely.addr, align 4
  %11 = load i32, i32* %width, align 4
  %add5 = add nsw i32 %11, 63
  %div = sdiv i32 %add5, 64
  %12 = load i32, i32* %height, align 4
  %add6 = add nsw i32 %12, 63
  %div7 = sdiv i32 %add6, 64
  %mul = mul nsw i32 %div, %div7
  %13 = load i32, i32* %tiles, align 4
  %add8 = add nsw i32 %13, %mul
  store i32 %add8, i32* %tiles, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %while.cond.9

while.cond.9:                                     ; preds = %while.body.11, %while.end
  %14 = load i32, i32* %levelx.addr, align 4
  %cmp10 = icmp sgt i32 %14, 0
  br i1 %cmp10, label %while.body.11, label %while.end.21

while.body.11:                                    ; preds = %while.cond.9
  %15 = load i32, i32* %width, align 4
  %add12 = add nsw i32 %15, 1
  %shr13 = ashr i32 %add12, 1
  store i32 %shr13, i32* %width, align 4
  %16 = load i32, i32* %levelx.addr, align 4
  %dec14 = add nsw i32 %16, -1
  store i32 %dec14, i32* %levelx.addr, align 4
  %17 = load i32, i32* %width, align 4
  %add15 = add nsw i32 %17, 63
  %div16 = sdiv i32 %add15, 64
  %18 = load i32, i32* %height, align 4
  %add17 = add nsw i32 %18, 63
  %div18 = sdiv i32 %add17, 64
  %mul19 = mul nsw i32 %div16, %div18
  %19 = load i32, i32* %tiles, align 4
  %add20 = add nsw i32 %19, %mul19
  store i32 %add20, i32* %tiles, align 4
  br label %while.cond.9

while.end.21:                                     ; preds = %while.cond.9
  br label %while.cond.22

while.cond.22:                                    ; preds = %while.body.24, %while.end.21
  %20 = load i32, i32* %levely.addr, align 4
  %cmp23 = icmp sgt i32 %20, 0
  br i1 %cmp23, label %while.body.24, label %while.end.34

while.body.24:                                    ; preds = %while.cond.22
  %21 = load i32, i32* %height, align 4
  %add25 = add nsw i32 %21, 1
  %shr26 = ashr i32 %add25, 1
  store i32 %shr26, i32* %height, align 4
  %22 = load i32, i32* %levely.addr, align 4
  %dec27 = add nsw i32 %22, -1
  store i32 %dec27, i32* %levely.addr, align 4
  %23 = load i32, i32* %width, align 4
  %add28 = add nsw i32 %23, 63
  %div29 = sdiv i32 %add28, 64
  %24 = load i32, i32* %height, align 4
  %add30 = add nsw i32 %24, 63
  %div31 = sdiv i32 %add30, 64
  %mul32 = mul nsw i32 %div29, %div31
  %25 = load i32, i32* %tiles, align 4
  %add33 = add nsw i32 %25, %mul32
  store i32 %add33, i32* %tiles, align 4
  br label %while.cond.22

while.end.34:                                     ; preds = %while.cond.22
  %26 = load %struct._PixelRegion*, %struct._PixelRegion** %dstPR.addr, align 8
  %w35 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %26, i32 0, i32 8
  %27 = load i32, i32* %w35, align 4
  %add36 = add nsw i32 %27, 63
  %div37 = sdiv i32 %add36, 64
  %28 = load %struct._PixelRegion*, %struct._PixelRegion** %dstPR.addr, align 8
  %h38 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %28, i32 0, i32 9
  %29 = load i32, i32* %h38, align 4
  %add39 = add nsw i32 %29, 63
  %div40 = sdiv i32 %add39, 64
  %mul41 = mul nsw i32 %div37, %div40
  %30 = load i32, i32* %tiles, align 4
  %add42 = add nsw i32 %30, %mul41
  store i32 %add42, i32* %tiles, align 4
  %31 = load i32, i32* %tiles, align 4
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define internal void @scale(%struct._TileManager* %srcTM, %struct._TileManager* %dstTM, i32 %interpolation, void (i32, i32, i32, i8*)* %progress_callback, i8* %progress_data, i32* %progress, i32 %max_progress, double %scalex, double %scaley) #0 {
entry:
  %srcTM.addr = alloca %struct._TileManager*, align 8
  %dstTM.addr = alloca %struct._TileManager*, align 8
  %interpolation.addr = alloca i32, align 4
  %progress_callback.addr = alloca void (i32, i32, i32, i8*)*, align 8
  %progress_data.addr = alloca i8*, align 8
  %progress.addr = alloca i32*, align 8
  %max_progress.addr = alloca i32, align 4
  %scalex.addr = alloca double, align 8
  %scaley.addr = alloca double, align 8
  %region = alloca %struct._PixelRegion, align 8
  %surround = alloca %struct._PixelSurround*, align 8
  %src_width = alloca i32, align 4
  %src_height = alloca i32, align 4
  %bytes = alloca i32, align 4
  %dst_width = alloca i32, align 4
  %dst_height = alloca i32, align 4
  %pr = alloca i8*, align 8
  %kernel_lookup = alloca float*, align 8
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %row = alloca i8*, align 8
  %y34 = alloca i32, align 4
  %pixel = alloca i8*, align 8
  %yfrac = alloca double, align 8
  %sy = alloca i32, align 4
  %x42 = alloca i32, align 4
  %xfrac = alloca double, align 8
  %sx = alloca i32, align 4
  store %struct._TileManager* %srcTM, %struct._TileManager** %srcTM.addr, align 8
  store %struct._TileManager* %dstTM, %struct._TileManager** %dstTM.addr, align 8
  store i32 %interpolation, i32* %interpolation.addr, align 4
  store void (i32, i32, i32, i8*)* %progress_callback, void (i32, i32, i32, i8*)** %progress_callback.addr, align 8
  store i8* %progress_data, i8** %progress_data.addr, align 8
  store i32* %progress, i32** %progress.addr, align 8
  store i32 %max_progress, i32* %max_progress.addr, align 4
  store double %scalex, double* %scalex.addr, align 8
  store double %scaley, double* %scaley.addr, align 8
  store %struct._PixelSurround* null, %struct._PixelSurround** %surround, align 8
  %0 = load %struct._TileManager*, %struct._TileManager** %srcTM.addr, align 8
  %call = call i32 @tile_manager_width(%struct._TileManager* %0)
  store i32 %call, i32* %src_width, align 4
  %1 = load %struct._TileManager*, %struct._TileManager** %srcTM.addr, align 8
  %call1 = call i32 @tile_manager_height(%struct._TileManager* %1)
  store i32 %call1, i32* %src_height, align 4
  %2 = load %struct._TileManager*, %struct._TileManager** %dstTM.addr, align 8
  %call2 = call i32 @tile_manager_bpp(%struct._TileManager* %2)
  store i32 %call2, i32* %bytes, align 4
  %3 = load %struct._TileManager*, %struct._TileManager** %dstTM.addr, align 8
  %call3 = call i32 @tile_manager_width(%struct._TileManager* %3)
  store i32 %call3, i32* %dst_width, align 4
  %4 = load %struct._TileManager*, %struct._TileManager** %dstTM.addr, align 8
  %call4 = call i32 @tile_manager_height(%struct._TileManager* %4)
  store i32 %call4, i32* %dst_height, align 4
  store float* null, float** %kernel_lookup, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %5 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %5, 512
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %6 = load i32, i32* %src_width, align 4
  %7 = load i32, i32* %src_height, align 4
  %8 = load i32, i32* %dst_width, align 4
  %9 = load i32, i32* %dst_height, align 4
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 512, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @__func__.scale, i32 0, i32 0), i32 398, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0), i32 %6, i32 %7, i32 %8, i32 %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %10 = load i32, i32* %interpolation.addr, align 4
  %cmp = icmp ne i32 %10, 0
  br i1 %cmp, label %if.then.5, label %if.end.23

if.then.5:                                        ; preds = %do.end
  %11 = load i32, i32* %src_width, align 4
  %cmp6 = icmp ult i32 %11, 2
  br i1 %cmp6, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.5
  %12 = load i32, i32* %src_height, align 4
  %cmp7 = icmp ult i32 %12, 2
  br i1 %cmp7, label %if.then.12, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false
  %13 = load i32, i32* %dst_width, align 4
  %cmp9 = icmp ult i32 %13, 2
  br i1 %cmp9, label %if.then.12, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false.8
  %14 = load i32, i32* %dst_height, align 4
  %cmp11 = icmp ult i32 %14, 2
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %lor.lhs.false.10, %lor.lhs.false.8, %lor.lhs.false, %if.then.5
  store i32 0, i32* %interpolation.addr, align 4
  br label %if.end.22

if.else:                                          ; preds = %lor.lhs.false.10
  %15 = load i32, i32* %src_width, align 4
  %cmp13 = icmp ult i32 %15, 3
  br i1 %cmp13, label %if.then.20, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %if.else
  %16 = load i32, i32* %src_height, align 4
  %cmp15 = icmp ult i32 %16, 3
  br i1 %cmp15, label %if.then.20, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false.14
  %17 = load i32, i32* %dst_width, align 4
  %cmp17 = icmp ult i32 %17, 3
  br i1 %cmp17, label %if.then.20, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %lor.lhs.false.16
  %18 = load i32, i32* %dst_height, align 4
  %cmp19 = icmp ult i32 %18, 3
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %lor.lhs.false.18, %lor.lhs.false.16, %lor.lhs.false.14, %if.else
  store i32 1, i32* %interpolation.addr, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %lor.lhs.false.18
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.12
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %do.end
  %19 = load i32, i32* %interpolation.addr, align 4
  switch i32 %19, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.24
    i32 2, label %sw.bb.26
    i32 3, label %sw.bb.28
  ]

sw.bb:                                            ; preds = %if.end.23
  br label %sw.epilog

sw.bb.24:                                         ; preds = %if.end.23
  %20 = load %struct._TileManager*, %struct._TileManager** %srcTM.addr, align 8
  %call25 = call %struct._PixelSurround* @pixel_surround_new(%struct._TileManager* %20, i32 2, i32 2, i32 0)
  store %struct._PixelSurround* %call25, %struct._PixelSurround** %surround, align 8
  br label %sw.epilog

sw.bb.26:                                         ; preds = %if.end.23
  %21 = load %struct._TileManager*, %struct._TileManager** %srcTM.addr, align 8
  %call27 = call %struct._PixelSurround* @pixel_surround_new(%struct._TileManager* %21, i32 4, i32 4, i32 0)
  store %struct._PixelSurround* %call27, %struct._PixelSurround** %surround, align 8
  br label %sw.epilog

sw.bb.28:                                         ; preds = %if.end.23
  %22 = load %struct._TileManager*, %struct._TileManager** %srcTM.addr, align 8
  %call29 = call %struct._PixelSurround* @pixel_surround_new(%struct._TileManager* %22, i32 6, i32 6, i32 0)
  store %struct._PixelSurround* %call29, %struct._PixelSurround** %surround, align 8
  %call30 = call float* @create_lanczos3_lookup()
  store float* %call30, float** %kernel_lookup, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.23, %sw.bb.28, %sw.bb.26, %sw.bb.24, %sw.bb
  %23 = load %struct._TileManager*, %struct._TileManager** %dstTM.addr, align 8
  %24 = load i32, i32* %dst_width, align 4
  %25 = load i32, i32* %dst_height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %region, %struct._TileManager* %23, i32 0, i32 0, i32 %24, i32 %25, i32 1)
  %call31 = call %struct._PixelRegionIterator* (i32, ...) @pixel_regions_register(i32 1, %struct._PixelRegion* %region)
  %26 = bitcast %struct._PixelRegionIterator* %call31 to i8*
  store i8* %26, i8** %pr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.77, %sw.epilog
  %27 = load i8*, i8** %pr, align 8
  %cmp32 = icmp ne i8* %27, null
  br i1 %cmp32, label %for.body, label %for.end.79

for.body:                                         ; preds = %for.cond
  %x = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %region, i32 0, i32 6
  %28 = load i32, i32* %x, align 4
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %region, i32 0, i32 8
  %29 = load i32, i32* %w, align 4
  %add = add nsw i32 %28, %29
  store i32 %add, i32* %x1, align 4
  %y = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %region, i32 0, i32 7
  %30 = load i32, i32* %y, align 4
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %region, i32 0, i32 9
  %31 = load i32, i32* %h, align 4
  %add33 = add nsw i32 %30, %31
  store i32 %add33, i32* %y1, align 4
  %data = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %region, i32 0, i32 0
  %32 = load i8*, i8** %data, align 8
  store i8* %32, i8** %row, align 8
  %y35 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %region, i32 0, i32 7
  %33 = load i32, i32* %y35, align 4
  store i32 %33, i32* %y34, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.66, %for.body
  %34 = load i32, i32* %y34, align 4
  %35 = load i32, i32* %y1, align 4
  %cmp37 = icmp slt i32 %34, %35
  br i1 %cmp37, label %for.body.38, label %for.end.68

for.body.38:                                      ; preds = %for.cond.36
  %36 = load i8*, i8** %row, align 8
  store i8* %36, i8** %pixel, align 8
  %37 = load i32, i32* %y34, align 4
  %conv = sitofp i32 %37 to double
  %add39 = fadd double %conv, 5.000000e-01
  %38 = load double, double* %scaley.addr, align 8
  %mul = fmul double %add39, %38
  %sub = fsub double %mul, 5.000000e-01
  store double %sub, double* %yfrac, align 8
  %39 = load double, double* %yfrac, align 8
  %call40 = call double @floor(double %39) #8
  %conv41 = fptosi double %call40 to i32
  store i32 %conv41, i32* %sy, align 4
  %40 = load double, double* %yfrac, align 8
  %41 = load i32, i32* %sy, align 4
  %conv43 = sitofp i32 %41 to double
  %sub44 = fsub double %40, %conv43
  store double %sub44, double* %yfrac, align 8
  %x45 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %region, i32 0, i32 6
  %42 = load i32, i32* %x45, align 4
  store i32 %42, i32* %x42, align 4
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc, %for.body.38
  %43 = load i32, i32* %x42, align 4
  %44 = load i32, i32* %x1, align 4
  %cmp47 = icmp slt i32 %43, %44
  br i1 %cmp47, label %for.body.49, label %for.end

for.body.49:                                      ; preds = %for.cond.46
  %45 = load i32, i32* %x42, align 4
  %conv50 = sitofp i32 %45 to double
  %add51 = fadd double %conv50, 5.000000e-01
  %46 = load double, double* %scalex.addr, align 8
  %mul52 = fmul double %add51, %46
  %sub53 = fsub double %mul52, 5.000000e-01
  store double %sub53, double* %xfrac, align 8
  %47 = load double, double* %xfrac, align 8
  %call54 = call double @floor(double %47) #8
  %conv55 = fptosi double %call54 to i32
  store i32 %conv55, i32* %sx, align 4
  %48 = load double, double* %xfrac, align 8
  %49 = load i32, i32* %sx, align 4
  %conv56 = sitofp i32 %49 to double
  %sub57 = fsub double %48, %conv56
  store double %sub57, double* %xfrac, align 8
  %50 = load i32, i32* %interpolation.addr, align 4
  switch i32 %50, label %sw.epilog.62 [
    i32 0, label %sw.bb.58
    i32 1, label %sw.bb.59
    i32 2, label %sw.bb.60
    i32 3, label %sw.bb.61
  ]

sw.bb.58:                                         ; preds = %for.body.49
  %51 = load %struct._TileManager*, %struct._TileManager** %srcTM.addr, align 8
  %52 = load i32, i32* %sx, align 4
  %53 = load i32, i32* %sy, align 4
  %54 = load double, double* %xfrac, align 8
  %55 = load double, double* %yfrac, align 8
  %56 = load i8*, i8** %pixel, align 8
  call void @interpolate_nearest(%struct._TileManager* %51, i32 %52, i32 %53, double %54, double %55, i8* %56)
  br label %sw.epilog.62

sw.bb.59:                                         ; preds = %for.body.49
  %57 = load %struct._PixelSurround*, %struct._PixelSurround** %surround, align 8
  %58 = load i32, i32* %sx, align 4
  %59 = load i32, i32* %sy, align 4
  %60 = load double, double* %xfrac, align 8
  %61 = load double, double* %yfrac, align 8
  %62 = load i32, i32* %bytes, align 4
  %63 = load i8*, i8** %pixel, align 8
  call void @interpolate_bilinear(%struct._PixelSurround* %57, i32 %58, i32 %59, double %60, double %61, i32 %62, i8* %63)
  br label %sw.epilog.62

sw.bb.60:                                         ; preds = %for.body.49
  %64 = load %struct._PixelSurround*, %struct._PixelSurround** %surround, align 8
  %65 = load i32, i32* %sx, align 4
  %66 = load i32, i32* %sy, align 4
  %67 = load double, double* %xfrac, align 8
  %68 = load double, double* %yfrac, align 8
  %69 = load i32, i32* %bytes, align 4
  %70 = load i8*, i8** %pixel, align 8
  call void @interpolate_cubic(%struct._PixelSurround* %64, i32 %65, i32 %66, double %67, double %68, i32 %69, i8* %70)
  br label %sw.epilog.62

sw.bb.61:                                         ; preds = %for.body.49
  %71 = load %struct._PixelSurround*, %struct._PixelSurround** %surround, align 8
  %72 = load i32, i32* %sx, align 4
  %73 = load i32, i32* %sy, align 4
  %74 = load double, double* %xfrac, align 8
  %75 = load double, double* %yfrac, align 8
  %76 = load i32, i32* %bytes, align 4
  %77 = load i8*, i8** %pixel, align 8
  %78 = load float*, float** %kernel_lookup, align 8
  call void @interpolate_lanczos3(%struct._PixelSurround* %71, i32 %72, i32 %73, double %74, double %75, i32 %76, i8* %77, float* %78)
  br label %sw.epilog.62

sw.epilog.62:                                     ; preds = %for.body.49, %sw.bb.61, %sw.bb.60, %sw.bb.59, %sw.bb.58
  %bytes63 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %region, i32 0, i32 10
  %79 = load i32, i32* %bytes63, align 4
  %80 = load i8*, i8** %pixel, align 8
  %idx.ext = sext i32 %79 to i64
  %add.ptr = getelementptr inbounds i8, i8* %80, i64 %idx.ext
  store i8* %add.ptr, i8** %pixel, align 8
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog.62
  %81 = load i32, i32* %x42, align 4
  %inc = add nsw i32 %81, 1
  store i32 %inc, i32* %x42, align 4
  br label %for.cond.46

for.end:                                          ; preds = %for.cond.46
  %rowstride = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %region, i32 0, i32 5
  %82 = load i32, i32* %rowstride, align 4
  %83 = load i8*, i8** %row, align 8
  %idx.ext64 = sext i32 %82 to i64
  %add.ptr65 = getelementptr inbounds i8, i8* %83, i64 %idx.ext64
  store i8* %add.ptr65, i8** %row, align 8
  br label %for.inc.66

for.inc.66:                                       ; preds = %for.end
  %84 = load i32, i32* %y34, align 4
  %inc67 = add nsw i32 %84, 1
  store i32 %inc67, i32* %y34, align 4
  br label %for.cond.36

for.end.68:                                       ; preds = %for.cond.36
  %85 = load void (i32, i32, i32, i8*)*, void (i32, i32, i32, i8*)** %progress_callback.addr, align 8
  %tobool69 = icmp ne void (i32, i32, i32, i8*)* %85, null
  br i1 %tobool69, label %if.then.70, label %if.end.76

if.then.70:                                       ; preds = %for.end.68
  %86 = load i32*, i32** %progress.addr, align 8
  %87 = load i32, i32* %86, align 4
  %inc71 = add nsw i32 %87, 1
  store i32 %inc71, i32* %86, align 4
  %88 = load i32*, i32** %progress.addr, align 8
  %89 = load i32, i32* %88, align 4
  %rem = srem i32 %89, 8
  %cmp72 = icmp eq i32 %rem, 0
  br i1 %cmp72, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %if.then.70
  %90 = load void (i32, i32, i32, i8*)*, void (i32, i32, i32, i8*)** %progress_callback.addr, align 8
  %91 = load i32, i32* %max_progress.addr, align 4
  %92 = load i32*, i32** %progress.addr, align 8
  %93 = load i32, i32* %92, align 4
  %94 = load i8*, i8** %progress_data.addr, align 8
  call void %90(i32 0, i32 %91, i32 %93, i8* %94)
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.74, %if.then.70
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %for.end.68
  br label %for.inc.77

for.inc.77:                                       ; preds = %if.end.76
  %95 = load i8*, i8** %pr, align 8
  %96 = bitcast i8* %95 to %struct._PixelRegionIterator*
  %call78 = call %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator* %96)
  %97 = bitcast %struct._PixelRegionIterator* %call78 to i8*
  store i8* %97, i8** %pr, align 8
  br label %for.cond

for.end.79:                                       ; preds = %for.cond
  %98 = load float*, float** %kernel_lookup, align 8
  %tobool80 = icmp ne float* %98, null
  br i1 %tobool80, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %for.end.79
  %99 = load float*, float** %kernel_lookup, align 8
  %100 = bitcast float* %99 to i8*
  call void @g_free(i8* %100)
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.81, %for.end.79
  %101 = load %struct._PixelSurround*, %struct._PixelSurround** %surround, align 8
  %tobool83 = icmp ne %struct._PixelSurround* %101, null
  br i1 %tobool83, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %if.end.82
  %102 = load %struct._PixelSurround*, %struct._PixelSurround** %surround, align 8
  call void @pixel_surround_destroy(%struct._PixelSurround* %102)
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.84, %if.end.82
  ret void
}

declare %struct._TileManager* @tile_manager_new(i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @decimate_xy(%struct._TileManager* %srcTM, %struct._TileManager* %dstTM, i32 %interpolation, void (i32, i32, i32, i8*)* %progress_callback, i8* %progress_data, i32* %progress, i32 %max_progress) #0 {
entry:
  %srcTM.addr = alloca %struct._TileManager*, align 8
  %dstTM.addr = alloca %struct._TileManager*, align 8
  %interpolation.addr = alloca i32, align 4
  %progress_callback.addr = alloca void (i32, i32, i32, i8*)*, align 8
  %progress_data.addr = alloca i8*, align 8
  %progress.addr = alloca i32*, align 8
  %max_progress.addr = alloca i32, align 4
  %region = alloca %struct._PixelRegion, align 8
  %surround = alloca %struct._PixelSurround*, align 8
  %bytes = alloca i32, align 4
  %dst_width = alloca i32, align 4
  %dst_height = alloca i32, align 4
  %pr = alloca i8*, align 8
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %row = alloca i8*, align 8
  %y8 = alloca i32, align 4
  %sy = alloca i32, align 4
  %pixel = alloca i8*, align 8
  %x13 = alloca i32, align 4
  store %struct._TileManager* %srcTM, %struct._TileManager** %srcTM.addr, align 8
  store %struct._TileManager* %dstTM, %struct._TileManager** %dstTM.addr, align 8
  store i32 %interpolation, i32* %interpolation.addr, align 4
  store void (i32, i32, i32, i8*)* %progress_callback, void (i32, i32, i32, i8*)** %progress_callback.addr, align 8
  store i8* %progress_data, i8** %progress_data.addr, align 8
  store i32* %progress, i32** %progress.addr, align 8
  store i32 %max_progress, i32* %max_progress.addr, align 4
  store %struct._PixelSurround* null, %struct._PixelSurround** %surround, align 8
  %0 = load %struct._TileManager*, %struct._TileManager** %dstTM.addr, align 8
  %call = call i32 @tile_manager_bpp(%struct._TileManager* %0)
  store i32 %call, i32* %bytes, align 4
  %1 = load %struct._TileManager*, %struct._TileManager** %dstTM.addr, align 8
  %call1 = call i32 @tile_manager_width(%struct._TileManager* %1)
  store i32 %call1, i32* %dst_width, align 4
  %2 = load %struct._TileManager*, %struct._TileManager** %dstTM.addr, align 8
  %call2 = call i32 @tile_manager_height(%struct._TileManager* %2)
  store i32 %call2, i32* %dst_height, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %3, 512
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %4 = load %struct._TileManager*, %struct._TileManager** %srcTM.addr, align 8
  %call3 = call i32 @tile_manager_width(%struct._TileManager* %4)
  %5 = load %struct._TileManager*, %struct._TileManager** %srcTM.addr, align 8
  %call4 = call i32 @tile_manager_height(%struct._TileManager* %5)
  %6 = load i32, i32* %dst_width, align 4
  %7 = load i32, i32* %dst_height, align 4
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 512, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.decimate_xy, i32 0, i32 0), i32 524, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i32 0, i32 0), i32 %call3, i32 %call4, i32 %6, i32 %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %8 = load %struct._TileManager*, %struct._TileManager** %srcTM.addr, align 8
  %call5 = call %struct._PixelSurround* @pixel_surround_new(%struct._TileManager* %8, i32 2, i32 2, i32 0)
  store %struct._PixelSurround* %call5, %struct._PixelSurround** %surround, align 8
  %9 = load %struct._TileManager*, %struct._TileManager** %dstTM.addr, align 8
  %10 = load i32, i32* %dst_width, align 4
  %11 = load i32, i32* %dst_height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %region, %struct._TileManager* %9, i32 0, i32 0, i32 %10, i32 %11, i32 1)
  %call6 = call %struct._PixelRegionIterator* (i32, ...) @pixel_regions_register(i32 1, %struct._PixelRegion* %region)
  %12 = bitcast %struct._PixelRegionIterator* %call6 to i8*
  store i8* %12, i8** %pr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.32, %do.end
  %13 = load i8*, i8** %pr, align 8
  %cmp = icmp ne i8* %13, null
  br i1 %cmp, label %for.body, label %for.end.34

for.body:                                         ; preds = %for.cond
  %x = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %region, i32 0, i32 6
  %14 = load i32, i32* %x, align 4
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %region, i32 0, i32 8
  %15 = load i32, i32* %w, align 4
  %add = add nsw i32 %14, %15
  store i32 %add, i32* %x1, align 4
  %y = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %region, i32 0, i32 7
  %16 = load i32, i32* %y, align 4
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %region, i32 0, i32 9
  %17 = load i32, i32* %h, align 4
  %add7 = add nsw i32 %16, %17
  store i32 %add7, i32* %y1, align 4
  %data = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %region, i32 0, i32 0
  %18 = load i8*, i8** %data, align 8
  store i8* %18, i8** %row, align 8
  %y9 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %region, i32 0, i32 7
  %19 = load i32, i32* %y9, align 4
  store i32 %19, i32* %y8, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.22, %for.body
  %20 = load i32, i32* %y8, align 4
  %21 = load i32, i32* %y1, align 4
  %cmp11 = icmp slt i32 %20, %21
  br i1 %cmp11, label %for.body.12, label %for.end.24

for.body.12:                                      ; preds = %for.cond.10
  %22 = load i32, i32* %y8, align 4
  %mul = mul nsw i32 %22, 2
  store i32 %mul, i32* %sy, align 4
  %23 = load i8*, i8** %row, align 8
  store i8* %23, i8** %pixel, align 8
  %x14 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %region, i32 0, i32 6
  %24 = load i32, i32* %x14, align 4
  store i32 %24, i32* %x13, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc, %for.body.12
  %25 = load i32, i32* %x13, align 4
  %26 = load i32, i32* %x1, align 4
  %cmp16 = icmp slt i32 %25, %26
  br i1 %cmp16, label %for.body.17, label %for.end

for.body.17:                                      ; preds = %for.cond.15
  %27 = load %struct._PixelSurround*, %struct._PixelSurround** %surround, align 8
  %28 = load i32, i32* %x13, align 4
  %mul18 = mul nsw i32 %28, 2
  %29 = load i32, i32* %sy, align 4
  %30 = load i32, i32* %bytes, align 4
  %31 = load i8*, i8** %pixel, align 8
  call void @decimate_average_xy(%struct._PixelSurround* %27, i32 %mul18, i32 %29, i32 %30, i8* %31)
  %bytes19 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %region, i32 0, i32 10
  %32 = load i32, i32* %bytes19, align 4
  %33 = load i8*, i8** %pixel, align 8
  %idx.ext = sext i32 %32 to i64
  %add.ptr = getelementptr inbounds i8, i8* %33, i64 %idx.ext
  store i8* %add.ptr, i8** %pixel, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.17
  %34 = load i32, i32* %x13, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %x13, align 4
  br label %for.cond.15

for.end:                                          ; preds = %for.cond.15
  %rowstride = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %region, i32 0, i32 5
  %35 = load i32, i32* %rowstride, align 4
  %36 = load i8*, i8** %row, align 8
  %idx.ext20 = sext i32 %35 to i64
  %add.ptr21 = getelementptr inbounds i8, i8* %36, i64 %idx.ext20
  store i8* %add.ptr21, i8** %row, align 8
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.end
  %37 = load i32, i32* %y8, align 4
  %inc23 = add nsw i32 %37, 1
  store i32 %inc23, i32* %y8, align 4
  br label %for.cond.10

for.end.24:                                       ; preds = %for.cond.10
  %38 = load void (i32, i32, i32, i8*)*, void (i32, i32, i32, i8*)** %progress_callback.addr, align 8
  %tobool25 = icmp ne void (i32, i32, i32, i8*)* %38, null
  br i1 %tobool25, label %if.then.26, label %if.end.31

if.then.26:                                       ; preds = %for.end.24
  %39 = load i32*, i32** %progress.addr, align 8
  %40 = load i32, i32* %39, align 4
  %inc27 = add nsw i32 %40, 1
  store i32 %inc27, i32* %39, align 4
  %41 = load i32*, i32** %progress.addr, align 8
  %42 = load i32, i32* %41, align 4
  %rem = srem i32 %42, 16
  %cmp28 = icmp eq i32 %rem, 0
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.then.26
  %43 = load void (i32, i32, i32, i8*)*, void (i32, i32, i32, i8*)** %progress_callback.addr, align 8
  %44 = load i32, i32* %max_progress.addr, align 4
  %45 = load i32*, i32** %progress.addr, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %progress_data.addr, align 8
  call void %43(i32 0, i32 %44, i32 %46, i8* %47)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.then.26
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %for.end.24
  br label %for.inc.32

for.inc.32:                                       ; preds = %if.end.31
  %48 = load i8*, i8** %pr, align 8
  %49 = bitcast i8* %48 to %struct._PixelRegionIterator*
  %call33 = call %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator* %49)
  %50 = bitcast %struct._PixelRegionIterator* %call33 to i8*
  store i8* %50, i8** %pr, align 8
  br label %for.cond

for.end.34:                                       ; preds = %for.cond
  %51 = load %struct._PixelSurround*, %struct._PixelSurround** %surround, align 8
  call void @pixel_surround_destroy(%struct._PixelSurround* %51)
  ret void
}

declare void @tile_manager_unref(%struct._TileManager*) #1

; Function Attrs: nounwind uwtable
define internal void @decimate_x(%struct._TileManager* %srcTM, %struct._TileManager* %dstTM, i32 %interpolation, void (i32, i32, i32, i8*)* %progress_callback, i8* %progress_data, i32* %progress, i32 %max_progress) #0 {
entry:
  %srcTM.addr = alloca %struct._TileManager*, align 8
  %dstTM.addr = alloca %struct._TileManager*, align 8
  %interpolation.addr = alloca i32, align 4
  %progress_callback.addr = alloca void (i32, i32, i32, i8*)*, align 8
  %progress_data.addr = alloca i8*, align 8
  %progress.addr = alloca i32*, align 8
  %max_progress.addr = alloca i32, align 4
  %region = alloca %struct._PixelRegion, align 8
  %surround = alloca %struct._PixelSurround*, align 8
  %bytes = alloca i32, align 4
  %dst_width = alloca i32, align 4
  %dst_height = alloca i32, align 4
  %pr = alloca i8*, align 8
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %row = alloca i8*, align 8
  %y8 = alloca i32, align 4
  %pixel = alloca i8*, align 8
  %x13 = alloca i32, align 4
  store %struct._TileManager* %srcTM, %struct._TileManager** %srcTM.addr, align 8
  store %struct._TileManager* %dstTM, %struct._TileManager** %dstTM.addr, align 8
  store i32 %interpolation, i32* %interpolation.addr, align 4
  store void (i32, i32, i32, i8*)* %progress_callback, void (i32, i32, i32, i8*)** %progress_callback.addr, align 8
  store i8* %progress_data, i8** %progress_data.addr, align 8
  store i32* %progress, i32** %progress.addr, align 8
  store i32 %max_progress, i32* %max_progress.addr, align 4
  store %struct._PixelSurround* null, %struct._PixelSurround** %surround, align 8
  %0 = load %struct._TileManager*, %struct._TileManager** %dstTM.addr, align 8
  %call = call i32 @tile_manager_bpp(%struct._TileManager* %0)
  store i32 %call, i32* %bytes, align 4
  %1 = load %struct._TileManager*, %struct._TileManager** %dstTM.addr, align 8
  %call1 = call i32 @tile_manager_width(%struct._TileManager* %1)
  store i32 %call1, i32* %dst_width, align 4
  %2 = load %struct._TileManager*, %struct._TileManager** %dstTM.addr, align 8
  %call2 = call i32 @tile_manager_height(%struct._TileManager* %2)
  store i32 %call2, i32* %dst_height, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %3, 512
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %4 = load %struct._TileManager*, %struct._TileManager** %srcTM.addr, align 8
  %call3 = call i32 @tile_manager_width(%struct._TileManager* %4)
  %5 = load %struct._TileManager*, %struct._TileManager** %srcTM.addr, align 8
  %call4 = call i32 @tile_manager_height(%struct._TileManager* %5)
  %6 = load i32, i32* %dst_width, align 4
  %7 = load i32, i32* %dst_height, align 4
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 512, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.decimate_x, i32 0, i32 0), i32 585, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i32 0, i32 0), i32 %call3, i32 %call4, i32 %6, i32 %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %8 = load %struct._TileManager*, %struct._TileManager** %srcTM.addr, align 8
  %call5 = call %struct._PixelSurround* @pixel_surround_new(%struct._TileManager* %8, i32 2, i32 1, i32 0)
  store %struct._PixelSurround* %call5, %struct._PixelSurround** %surround, align 8
  %9 = load %struct._TileManager*, %struct._TileManager** %dstTM.addr, align 8
  %10 = load i32, i32* %dst_width, align 4
  %11 = load i32, i32* %dst_height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %region, %struct._TileManager* %9, i32 0, i32 0, i32 %10, i32 %11, i32 1)
  %call6 = call %struct._PixelRegionIterator* (i32, ...) @pixel_regions_register(i32 1, %struct._PixelRegion* %region)
  %12 = bitcast %struct._PixelRegionIterator* %call6 to i8*
  store i8* %12, i8** %pr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.31, %do.end
  %13 = load i8*, i8** %pr, align 8
  %cmp = icmp ne i8* %13, null
  br i1 %cmp, label %for.body, label %for.end.33

for.body:                                         ; preds = %for.cond
  %x = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %region, i32 0, i32 6
  %14 = load i32, i32* %x, align 4
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %region, i32 0, i32 8
  %15 = load i32, i32* %w, align 4
  %add = add nsw i32 %14, %15
  store i32 %add, i32* %x1, align 4
  %y = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %region, i32 0, i32 7
  %16 = load i32, i32* %y, align 4
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %region, i32 0, i32 9
  %17 = load i32, i32* %h, align 4
  %add7 = add nsw i32 %16, %17
  store i32 %add7, i32* %y1, align 4
  %data = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %region, i32 0, i32 0
  %18 = load i8*, i8** %data, align 8
  store i8* %18, i8** %row, align 8
  %y9 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %region, i32 0, i32 7
  %19 = load i32, i32* %y9, align 4
  store i32 %19, i32* %y8, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.21, %for.body
  %20 = load i32, i32* %y8, align 4
  %21 = load i32, i32* %y1, align 4
  %cmp11 = icmp slt i32 %20, %21
  br i1 %cmp11, label %for.body.12, label %for.end.23

for.body.12:                                      ; preds = %for.cond.10
  %22 = load i8*, i8** %row, align 8
  store i8* %22, i8** %pixel, align 8
  %x14 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %region, i32 0, i32 6
  %23 = load i32, i32* %x14, align 4
  store i32 %23, i32* %x13, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc, %for.body.12
  %24 = load i32, i32* %x13, align 4
  %25 = load i32, i32* %x1, align 4
  %cmp16 = icmp slt i32 %24, %25
  br i1 %cmp16, label %for.body.17, label %for.end

for.body.17:                                      ; preds = %for.cond.15
  %26 = load %struct._PixelSurround*, %struct._PixelSurround** %surround, align 8
  %27 = load i32, i32* %x13, align 4
  %mul = mul nsw i32 %27, 2
  %28 = load i32, i32* %y8, align 4
  %29 = load i32, i32* %bytes, align 4
  %30 = load i8*, i8** %pixel, align 8
  call void @decimate_average_x(%struct._PixelSurround* %26, i32 %mul, i32 %28, i32 %29, i8* %30)
  %bytes18 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %region, i32 0, i32 10
  %31 = load i32, i32* %bytes18, align 4
  %32 = load i8*, i8** %pixel, align 8
  %idx.ext = sext i32 %31 to i64
  %add.ptr = getelementptr inbounds i8, i8* %32, i64 %idx.ext
  store i8* %add.ptr, i8** %pixel, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.17
  %33 = load i32, i32* %x13, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %x13, align 4
  br label %for.cond.15

for.end:                                          ; preds = %for.cond.15
  %rowstride = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %region, i32 0, i32 5
  %34 = load i32, i32* %rowstride, align 4
  %35 = load i8*, i8** %row, align 8
  %idx.ext19 = sext i32 %34 to i64
  %add.ptr20 = getelementptr inbounds i8, i8* %35, i64 %idx.ext19
  store i8* %add.ptr20, i8** %row, align 8
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.end
  %36 = load i32, i32* %y8, align 4
  %inc22 = add nsw i32 %36, 1
  store i32 %inc22, i32* %y8, align 4
  br label %for.cond.10

for.end.23:                                       ; preds = %for.cond.10
  %37 = load void (i32, i32, i32, i8*)*, void (i32, i32, i32, i8*)** %progress_callback.addr, align 8
  %tobool24 = icmp ne void (i32, i32, i32, i8*)* %37, null
  br i1 %tobool24, label %if.then.25, label %if.end.30

if.then.25:                                       ; preds = %for.end.23
  %38 = load i32*, i32** %progress.addr, align 8
  %39 = load i32, i32* %38, align 4
  %inc26 = add nsw i32 %39, 1
  store i32 %inc26, i32* %38, align 4
  %40 = load i32*, i32** %progress.addr, align 8
  %41 = load i32, i32* %40, align 4
  %rem = srem i32 %41, 32
  %cmp27 = icmp eq i32 %rem, 0
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.then.25
  %42 = load void (i32, i32, i32, i8*)*, void (i32, i32, i32, i8*)** %progress_callback.addr, align 8
  %43 = load i32, i32* %max_progress.addr, align 4
  %44 = load i32*, i32** %progress.addr, align 8
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** %progress_data.addr, align 8
  call void %42(i32 0, i32 %43, i32 %45, i8* %46)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.then.25
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %for.end.23
  br label %for.inc.31

for.inc.31:                                       ; preds = %if.end.30
  %47 = load i8*, i8** %pr, align 8
  %48 = bitcast i8* %47 to %struct._PixelRegionIterator*
  %call32 = call %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator* %48)
  %49 = bitcast %struct._PixelRegionIterator* %call32 to i8*
  store i8* %49, i8** %pr, align 8
  br label %for.cond

for.end.33:                                       ; preds = %for.cond
  %50 = load %struct._PixelSurround*, %struct._PixelSurround** %surround, align 8
  call void @pixel_surround_destroy(%struct._PixelSurround* %50)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @decimate_y(%struct._TileManager* %srcTM, %struct._TileManager* %dstTM, i32 %interpolation, void (i32, i32, i32, i8*)* %progress_callback, i8* %progress_data, i32* %progress, i32 %max_progress) #0 {
entry:
  %srcTM.addr = alloca %struct._TileManager*, align 8
  %dstTM.addr = alloca %struct._TileManager*, align 8
  %interpolation.addr = alloca i32, align 4
  %progress_callback.addr = alloca void (i32, i32, i32, i8*)*, align 8
  %progress_data.addr = alloca i8*, align 8
  %progress.addr = alloca i32*, align 8
  %max_progress.addr = alloca i32, align 4
  %region = alloca %struct._PixelRegion, align 8
  %surround = alloca %struct._PixelSurround*, align 8
  %bytes = alloca i32, align 4
  %dst_width = alloca i32, align 4
  %dst_height = alloca i32, align 4
  %pr = alloca i8*, align 8
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %row = alloca i8*, align 8
  %y8 = alloca i32, align 4
  %sy = alloca i32, align 4
  %pixel = alloca i8*, align 8
  %x13 = alloca i32, align 4
  store %struct._TileManager* %srcTM, %struct._TileManager** %srcTM.addr, align 8
  store %struct._TileManager* %dstTM, %struct._TileManager** %dstTM.addr, align 8
  store i32 %interpolation, i32* %interpolation.addr, align 4
  store void (i32, i32, i32, i8*)* %progress_callback, void (i32, i32, i32, i8*)** %progress_callback.addr, align 8
  store i8* %progress_data, i8** %progress_data.addr, align 8
  store i32* %progress, i32** %progress.addr, align 8
  store i32 %max_progress, i32* %max_progress.addr, align 4
  store %struct._PixelSurround* null, %struct._PixelSurround** %surround, align 8
  %0 = load %struct._TileManager*, %struct._TileManager** %dstTM.addr, align 8
  %call = call i32 @tile_manager_bpp(%struct._TileManager* %0)
  store i32 %call, i32* %bytes, align 4
  %1 = load %struct._TileManager*, %struct._TileManager** %dstTM.addr, align 8
  %call1 = call i32 @tile_manager_width(%struct._TileManager* %1)
  store i32 %call1, i32* %dst_width, align 4
  %2 = load %struct._TileManager*, %struct._TileManager** %dstTM.addr, align 8
  %call2 = call i32 @tile_manager_height(%struct._TileManager* %2)
  store i32 %call2, i32* %dst_height, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %3, 512
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %4 = load %struct._TileManager*, %struct._TileManager** %srcTM.addr, align 8
  %call3 = call i32 @tile_manager_width(%struct._TileManager* %4)
  %5 = load %struct._TileManager*, %struct._TileManager** %srcTM.addr, align 8
  %call4 = call i32 @tile_manager_height(%struct._TileManager* %5)
  %6 = load i32, i32* %dst_width, align 4
  %7 = load i32, i32* %dst_height, align 4
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 512, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.decimate_y, i32 0, i32 0), i32 645, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0), i32 %call3, i32 %call4, i32 %6, i32 %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %8 = load %struct._TileManager*, %struct._TileManager** %srcTM.addr, align 8
  %call5 = call %struct._PixelSurround* @pixel_surround_new(%struct._TileManager* %8, i32 1, i32 2, i32 0)
  store %struct._PixelSurround* %call5, %struct._PixelSurround** %surround, align 8
  %9 = load %struct._TileManager*, %struct._TileManager** %dstTM.addr, align 8
  %10 = load i32, i32* %dst_width, align 4
  %11 = load i32, i32* %dst_height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %region, %struct._TileManager* %9, i32 0, i32 0, i32 %10, i32 %11, i32 1)
  %call6 = call %struct._PixelRegionIterator* (i32, ...) @pixel_regions_register(i32 1, %struct._PixelRegion* %region)
  %12 = bitcast %struct._PixelRegionIterator* %call6 to i8*
  store i8* %12, i8** %pr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.31, %do.end
  %13 = load i8*, i8** %pr, align 8
  %cmp = icmp ne i8* %13, null
  br i1 %cmp, label %for.body, label %for.end.33

for.body:                                         ; preds = %for.cond
  %x = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %region, i32 0, i32 6
  %14 = load i32, i32* %x, align 4
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %region, i32 0, i32 8
  %15 = load i32, i32* %w, align 4
  %add = add nsw i32 %14, %15
  store i32 %add, i32* %x1, align 4
  %y = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %region, i32 0, i32 7
  %16 = load i32, i32* %y, align 4
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %region, i32 0, i32 9
  %17 = load i32, i32* %h, align 4
  %add7 = add nsw i32 %16, %17
  store i32 %add7, i32* %y1, align 4
  %data = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %region, i32 0, i32 0
  %18 = load i8*, i8** %data, align 8
  store i8* %18, i8** %row, align 8
  %y9 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %region, i32 0, i32 7
  %19 = load i32, i32* %y9, align 4
  store i32 %19, i32* %y8, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.21, %for.body
  %20 = load i32, i32* %y8, align 4
  %21 = load i32, i32* %y1, align 4
  %cmp11 = icmp slt i32 %20, %21
  br i1 %cmp11, label %for.body.12, label %for.end.23

for.body.12:                                      ; preds = %for.cond.10
  %22 = load i32, i32* %y8, align 4
  %mul = mul nsw i32 %22, 2
  store i32 %mul, i32* %sy, align 4
  %23 = load i8*, i8** %row, align 8
  store i8* %23, i8** %pixel, align 8
  %x14 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %region, i32 0, i32 6
  %24 = load i32, i32* %x14, align 4
  store i32 %24, i32* %x13, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc, %for.body.12
  %25 = load i32, i32* %x13, align 4
  %26 = load i32, i32* %x1, align 4
  %cmp16 = icmp slt i32 %25, %26
  br i1 %cmp16, label %for.body.17, label %for.end

for.body.17:                                      ; preds = %for.cond.15
  %27 = load %struct._PixelSurround*, %struct._PixelSurround** %surround, align 8
  %28 = load i32, i32* %x13, align 4
  %29 = load i32, i32* %sy, align 4
  %30 = load i32, i32* %bytes, align 4
  %31 = load i8*, i8** %pixel, align 8
  call void @decimate_average_y(%struct._PixelSurround* %27, i32 %28, i32 %29, i32 %30, i8* %31)
  %bytes18 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %region, i32 0, i32 10
  %32 = load i32, i32* %bytes18, align 4
  %33 = load i8*, i8** %pixel, align 8
  %idx.ext = sext i32 %32 to i64
  %add.ptr = getelementptr inbounds i8, i8* %33, i64 %idx.ext
  store i8* %add.ptr, i8** %pixel, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.17
  %34 = load i32, i32* %x13, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %x13, align 4
  br label %for.cond.15

for.end:                                          ; preds = %for.cond.15
  %rowstride = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %region, i32 0, i32 5
  %35 = load i32, i32* %rowstride, align 4
  %36 = load i8*, i8** %row, align 8
  %idx.ext19 = sext i32 %35 to i64
  %add.ptr20 = getelementptr inbounds i8, i8* %36, i64 %idx.ext19
  store i8* %add.ptr20, i8** %row, align 8
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.end
  %37 = load i32, i32* %y8, align 4
  %inc22 = add nsw i32 %37, 1
  store i32 %inc22, i32* %y8, align 4
  br label %for.cond.10

for.end.23:                                       ; preds = %for.cond.10
  %38 = load void (i32, i32, i32, i8*)*, void (i32, i32, i32, i8*)** %progress_callback.addr, align 8
  %tobool24 = icmp ne void (i32, i32, i32, i8*)* %38, null
  br i1 %tobool24, label %if.then.25, label %if.end.30

if.then.25:                                       ; preds = %for.end.23
  %39 = load i32*, i32** %progress.addr, align 8
  %40 = load i32, i32* %39, align 4
  %inc26 = add nsw i32 %40, 1
  store i32 %inc26, i32* %39, align 4
  %41 = load i32*, i32** %progress.addr, align 8
  %42 = load i32, i32* %41, align 4
  %rem = srem i32 %42, 32
  %cmp27 = icmp eq i32 %rem, 0
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.then.25
  %43 = load void (i32, i32, i32, i8*)*, void (i32, i32, i32, i8*)** %progress_callback.addr, align 8
  %44 = load i32, i32* %max_progress.addr, align 4
  %45 = load i32*, i32** %progress.addr, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %progress_data.addr, align 8
  call void %43(i32 0, i32 %44, i32 %46, i8* %47)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.then.25
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %for.end.23
  br label %for.inc.31

for.inc.31:                                       ; preds = %if.end.30
  %48 = load i8*, i8** %pr, align 8
  %49 = bitcast i8* %48 to %struct._PixelRegionIterator*
  %call32 = call %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator* %49)
  %50 = bitcast %struct._PixelRegionIterator* %call32 to i8*
  store i8* %50, i8** %pr, align 8
  br label %for.cond

for.end.33:                                       ; preds = %for.cond
  %51 = load %struct._PixelSurround*, %struct._PixelSurround** %surround, align 8
  call void @pixel_surround_destroy(%struct._PixelSurround* %51)
  ret void
}

declare i32 @tile_manager_width(%struct._TileManager*) #1

declare i32 @tile_manager_height(%struct._TileManager*) #1

declare i32 @tile_manager_bpp(%struct._TileManager*) #1

declare void @gimp_log(i32, i8*, i32, i8*, ...) #1

declare %struct._PixelSurround* @pixel_surround_new(%struct._TileManager*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal float* @create_lanczos3_lookup() #0 {
entry:
  %dx = alloca double, align 8
  %lookup = alloca float*, align 8
  %x = alloca double, align 8
  %i = alloca i32, align 4
  store double 0x3F2893D967D49AF4, double* %dx, align 8
  %call = call noalias i8* @g_malloc_n(i64 16000, i64 4)
  %0 = bitcast i8* %call to float*
  store float* %0, float** %lookup, align 8
  store double 0.000000e+00, double* %x, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 16000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load double, double* %x, align 8
  %cmp1 = fcmp olt double %2, 0.000000e+00
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %3 = load double, double* %x, align 8
  %sub = fsub double -0.000000e+00, %3
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %4 = load double, double* %x, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %sub, %cond.true ], [ %4, %cond.false ]
  %cmp2 = fcmp olt double %cond, 3.000000e+00
  br i1 %cmp2, label %cond.true.3, label %cond.false.6

cond.true.3:                                      ; preds = %cond.end
  %5 = load double, double* %x, align 8
  %call4 = call double @sinc(double %5)
  %6 = load double, double* %x, align 8
  %div = fdiv double %6, 3.000000e+00
  %call5 = call double @sinc(double %div)
  %mul = fmul double %call4, %call5
  br label %cond.end.7

cond.false.6:                                     ; preds = %cond.end
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.false.6, %cond.true.3
  %cond8 = phi double [ %mul, %cond.true.3 ], [ 0.000000e+00, %cond.false.6 ]
  %conv = fptrunc double %cond8 to float
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load float*, float** %lookup, align 8
  %arrayidx = getelementptr inbounds float, float* %8, i64 %idxprom
  store float %conv, float* %arrayidx, align 4
  %9 = load double, double* %x, align 8
  %add = fadd double %9, 0x3F2893D967D49AF4
  store double %add, double* %x, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end.7
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load float*, float** %lookup, align 8
  ret float* %11
}

declare void @pixel_region_init(%struct._PixelRegion*, %struct._TileManager*, i32, i32, i32, i32, i32) #1

declare %struct._PixelRegionIterator* @pixel_regions_register(i32, ...) #1

; Function Attrs: nounwind readnone
declare double @floor(double) #4

; Function Attrs: nounwind uwtable
define internal void @interpolate_nearest(%struct._TileManager* %srcTM, i32 %x0, i32 %y0, double %xfrac, double %yfrac, i8* %pixel) #0 {
entry:
  %srcTM.addr = alloca %struct._TileManager*, align 8
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %xfrac.addr = alloca double, align 8
  %yfrac.addr = alloca double, align 8
  %pixel.addr = alloca i8*, align 8
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store %struct._TileManager* %srcTM, %struct._TileManager** %srcTM.addr, align 8
  store i32 %x0, i32* %x0.addr, align 4
  store i32 %y0, i32* %y0.addr, align 4
  store double %xfrac, double* %xfrac.addr, align 8
  store double %yfrac, double* %yfrac.addr, align 8
  store i8* %pixel, i8** %pixel.addr, align 8
  %0 = load %struct._TileManager*, %struct._TileManager** %srcTM.addr, align 8
  %call = call i32 @tile_manager_width(%struct._TileManager* %0)
  %sub = sub nsw i32 %call, 1
  store i32 %sub, i32* %w, align 4
  %1 = load %struct._TileManager*, %struct._TileManager** %srcTM.addr, align 8
  %call1 = call i32 @tile_manager_height(%struct._TileManager* %1)
  %sub2 = sub nsw i32 %call1, 1
  store i32 %sub2, i32* %h, align 4
  %2 = load double, double* %xfrac.addr, align 8
  %cmp = fcmp ole double %2, 5.000000e-01
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %x0.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load i32, i32* %x0.addr, align 4
  %add = add nsw i32 %4, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ %add, %cond.false ]
  store i32 %cond, i32* %x, align 4
  %5 = load double, double* %yfrac.addr, align 8
  %cmp3 = fcmp ole double %5, 5.000000e-01
  br i1 %cmp3, label %cond.true.4, label %cond.false.5

cond.true.4:                                      ; preds = %cond.end
  %6 = load i32, i32* %y0.addr, align 4
  br label %cond.end.7

cond.false.5:                                     ; preds = %cond.end
  %7 = load i32, i32* %y0.addr, align 4
  %add6 = add nsw i32 %7, 1
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.false.5, %cond.true.4
  %cond8 = phi i32 [ %6, %cond.true.4 ], [ %add6, %cond.false.5 ]
  store i32 %cond8, i32* %y, align 4
  %8 = load %struct._TileManager*, %struct._TileManager** %srcTM.addr, align 8
  %9 = load i32, i32* %x, align 4
  %10 = load i32, i32* %w, align 4
  %cmp9 = icmp sgt i32 %9, %10
  br i1 %cmp9, label %cond.true.10, label %cond.false.11

cond.true.10:                                     ; preds = %cond.end.7
  %11 = load i32, i32* %w, align 4
  br label %cond.end.17

cond.false.11:                                    ; preds = %cond.end.7
  %12 = load i32, i32* %x, align 4
  %cmp12 = icmp slt i32 %12, 0
  br i1 %cmp12, label %cond.true.13, label %cond.false.14

cond.true.13:                                     ; preds = %cond.false.11
  br label %cond.end.15

cond.false.14:                                    ; preds = %cond.false.11
  %13 = load i32, i32* %x, align 4
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.14, %cond.true.13
  %cond16 = phi i32 [ 0, %cond.true.13 ], [ %13, %cond.false.14 ]
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.end.15, %cond.true.10
  %cond18 = phi i32 [ %11, %cond.true.10 ], [ %cond16, %cond.end.15 ]
  %14 = load i32, i32* %y, align 4
  %15 = load i32, i32* %h, align 4
  %cmp19 = icmp sgt i32 %14, %15
  br i1 %cmp19, label %cond.true.20, label %cond.false.21

cond.true.20:                                     ; preds = %cond.end.17
  %16 = load i32, i32* %h, align 4
  br label %cond.end.27

cond.false.21:                                    ; preds = %cond.end.17
  %17 = load i32, i32* %y, align 4
  %cmp22 = icmp slt i32 %17, 0
  br i1 %cmp22, label %cond.true.23, label %cond.false.24

cond.true.23:                                     ; preds = %cond.false.21
  br label %cond.end.25

cond.false.24:                                    ; preds = %cond.false.21
  %18 = load i32, i32* %y, align 4
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.24, %cond.true.23
  %cond26 = phi i32 [ 0, %cond.true.23 ], [ %18, %cond.false.24 ]
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.end.25, %cond.true.20
  %cond28 = phi i32 [ %16, %cond.true.20 ], [ %cond26, %cond.end.25 ]
  %19 = load i8*, i8** %pixel.addr, align 8
  call void @tile_manager_read_pixel_data_1(%struct._TileManager* %8, i32 %cond18, i32 %cond28, i8* %19)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @interpolate_bilinear(%struct._PixelSurround* %surround, i32 %x0, i32 %y0, double %xfrac, double %yfrac, i32 %bytes, i8* %pixel) #0 {
entry:
  %surround.addr = alloca %struct._PixelSurround*, align 8
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %xfrac.addr = alloca double, align 8
  %yfrac.addr = alloca double, align 8
  %bytes.addr = alloca i32, align 4
  %pixel.addr = alloca i8*, align 8
  %stride = alloca i32, align 4
  %src = alloca i8*, align 8
  %p1 = alloca i8*, align 8
  %p2 = alloca i8*, align 8
  %p3 = alloca i8*, align 8
  %p4 = alloca i8*, align 8
  %sum = alloca double, align 8
  %alphasum = alloca double, align 8
  %b = alloca i32, align 4
  store %struct._PixelSurround* %surround, %struct._PixelSurround** %surround.addr, align 8
  store i32 %x0, i32* %x0.addr, align 4
  store i32 %y0, i32* %y0.addr, align 4
  store double %xfrac, double* %xfrac.addr, align 8
  store double %yfrac, double* %yfrac.addr, align 8
  store i32 %bytes, i32* %bytes.addr, align 4
  store i8* %pixel, i8** %pixel.addr, align 8
  %0 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %1 = load i32, i32* %x0.addr, align 4
  %2 = load i32, i32* %y0.addr, align 4
  %call = call i8* @pixel_surround_lock(%struct._PixelSurround* %0, i32 %1, i32 %2, i32* %stride)
  store i8* %call, i8** %src, align 8
  %3 = load i8*, i8** %src, align 8
  store i8* %3, i8** %p1, align 8
  %4 = load i8*, i8** %p1, align 8
  %5 = load i32, i32* %bytes.addr, align 4
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  store i8* %add.ptr, i8** %p2, align 8
  %6 = load i8*, i8** %src, align 8
  %7 = load i32, i32* %stride, align 4
  %idx.ext1 = sext i32 %7 to i64
  %add.ptr2 = getelementptr inbounds i8, i8* %6, i64 %idx.ext1
  store i8* %add.ptr2, i8** %p3, align 8
  %8 = load i8*, i8** %p3, align 8
  %9 = load i32, i32* %bytes.addr, align 4
  %idx.ext3 = sext i32 %9 to i64
  %add.ptr4 = getelementptr inbounds i8, i8* %8, i64 %idx.ext3
  store i8* %add.ptr4, i8** %p4, align 8
  %10 = load i32, i32* %bytes.addr, align 4
  switch i32 %10, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.22
    i32 3, label %sw.bb.86
    i32 4, label %sw.bb.117
  ]

sw.bb:                                            ; preds = %entry
  %11 = load double, double* %xfrac.addr, align 8
  %12 = load double, double* %yfrac.addr, align 8
  %13 = load i8*, i8** %p1, align 8
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 0
  %14 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %14 to i32
  %15 = load i8*, i8** %p2, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %15, i64 0
  %16 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %16 to i32
  %17 = load i8*, i8** %p3, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %17, i64 0
  %18 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %18 to i32
  %19 = load i8*, i8** %p4, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %19, i64 0
  %20 = load i8, i8* %arrayidx9, align 1
  %conv10 = zext i8 %20 to i32
  %call11 = call double @weighted_sum(double %11, double %12, i32 %conv, i32 %conv6, i32 %conv8, i32 %conv10)
  %call12 = call double @rint(double %call11) #8
  store double %call12, double* %sum, align 8
  %21 = load double, double* %sum, align 8
  %cmp = fcmp ogt double %21, 2.550000e+02
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  br label %cond.end.18

cond.false:                                       ; preds = %sw.bb
  %22 = load double, double* %sum, align 8
  %cmp14 = fcmp olt double %22, 0.000000e+00
  br i1 %cmp14, label %cond.true.16, label %cond.false.17

cond.true.16:                                     ; preds = %cond.false
  br label %cond.end

cond.false.17:                                    ; preds = %cond.false
  %23 = load double, double* %sum, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.17, %cond.true.16
  %cond = phi double [ 0.000000e+00, %cond.true.16 ], [ %23, %cond.false.17 ]
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.end, %cond.true
  %cond19 = phi double [ 2.550000e+02, %cond.true ], [ %cond, %cond.end ]
  %conv20 = fptoui double %cond19 to i8
  %24 = load i8*, i8** %pixel.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %24, i64 0
  store i8 %conv20, i8* %arrayidx21, align 1
  br label %sw.epilog

sw.bb.22:                                         ; preds = %entry
  %25 = load double, double* %xfrac.addr, align 8
  %26 = load double, double* %yfrac.addr, align 8
  %27 = load i8*, i8** %p1, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %27, i64 1
  %28 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %28 to i32
  %29 = load i8*, i8** %p2, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %29, i64 1
  %30 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %30 to i32
  %31 = load i8*, i8** %p3, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %31, i64 1
  %32 = load i8, i8* %arrayidx27, align 1
  %conv28 = zext i8 %32 to i32
  %33 = load i8*, i8** %p4, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %33, i64 1
  %34 = load i8, i8* %arrayidx29, align 1
  %conv30 = zext i8 %34 to i32
  %call31 = call double @weighted_sum(double %25, double %26, i32 %conv24, i32 %conv26, i32 %conv28, i32 %conv30)
  store double %call31, double* %alphasum, align 8
  %35 = load double, double* %alphasum, align 8
  %cmp32 = fcmp ogt double %35, 0.000000e+00
  br i1 %cmp32, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.22
  %36 = load double, double* %xfrac.addr, align 8
  %37 = load double, double* %yfrac.addr, align 8
  %38 = load i8*, i8** %p1, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %38, i64 0
  %39 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %39 to i32
  %40 = load i8*, i8** %p1, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %40, i64 1
  %41 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %41 to i32
  %mul = mul nsw i32 %conv35, %conv37
  %42 = load i8*, i8** %p2, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %42, i64 0
  %43 = load i8, i8* %arrayidx38, align 1
  %conv39 = zext i8 %43 to i32
  %44 = load i8*, i8** %p2, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %44, i64 1
  %45 = load i8, i8* %arrayidx40, align 1
  %conv41 = zext i8 %45 to i32
  %mul42 = mul nsw i32 %conv39, %conv41
  %46 = load i8*, i8** %p3, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %46, i64 0
  %47 = load i8, i8* %arrayidx43, align 1
  %conv44 = zext i8 %47 to i32
  %48 = load i8*, i8** %p3, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %48, i64 1
  %49 = load i8, i8* %arrayidx45, align 1
  %conv46 = zext i8 %49 to i32
  %mul47 = mul nsw i32 %conv44, %conv46
  %50 = load i8*, i8** %p4, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %50, i64 0
  %51 = load i8, i8* %arrayidx48, align 1
  %conv49 = zext i8 %51 to i32
  %52 = load i8*, i8** %p4, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %52, i64 1
  %53 = load i8, i8* %arrayidx50, align 1
  %conv51 = zext i8 %53 to i32
  %mul52 = mul nsw i32 %conv49, %conv51
  %call53 = call double @weighted_sum(double %36, double %37, i32 %mul, i32 %mul42, i32 %mul47, i32 %mul52)
  store double %call53, double* %sum, align 8
  %54 = load double, double* %sum, align 8
  %55 = load double, double* %alphasum, align 8
  %div = fdiv double %54, %55
  %call54 = call double @rint(double %div) #8
  store double %call54, double* %sum, align 8
  %56 = load double, double* %alphasum, align 8
  %call55 = call double @rint(double %56) #8
  store double %call55, double* %alphasum, align 8
  %57 = load double, double* %sum, align 8
  %cmp56 = fcmp ogt double %57, 2.550000e+02
  br i1 %cmp56, label %cond.true.58, label %cond.false.59

cond.true.58:                                     ; preds = %if.then
  br label %cond.end.66

cond.false.59:                                    ; preds = %if.then
  %58 = load double, double* %sum, align 8
  %cmp60 = fcmp olt double %58, 0.000000e+00
  br i1 %cmp60, label %cond.true.62, label %cond.false.63

cond.true.62:                                     ; preds = %cond.false.59
  br label %cond.end.64

cond.false.63:                                    ; preds = %cond.false.59
  %59 = load double, double* %sum, align 8
  br label %cond.end.64

cond.end.64:                                      ; preds = %cond.false.63, %cond.true.62
  %cond65 = phi double [ 0.000000e+00, %cond.true.62 ], [ %59, %cond.false.63 ]
  br label %cond.end.66

cond.end.66:                                      ; preds = %cond.end.64, %cond.true.58
  %cond67 = phi double [ 2.550000e+02, %cond.true.58 ], [ %cond65, %cond.end.64 ]
  %conv68 = fptoui double %cond67 to i8
  %60 = load i8*, i8** %pixel.addr, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %60, i64 0
  store i8 %conv68, i8* %arrayidx69, align 1
  %61 = load double, double* %alphasum, align 8
  %cmp70 = fcmp ogt double %61, 2.550000e+02
  br i1 %cmp70, label %cond.true.72, label %cond.false.73

cond.true.72:                                     ; preds = %cond.end.66
  br label %cond.end.80

cond.false.73:                                    ; preds = %cond.end.66
  %62 = load double, double* %alphasum, align 8
  %cmp74 = fcmp olt double %62, 0.000000e+00
  br i1 %cmp74, label %cond.true.76, label %cond.false.77

cond.true.76:                                     ; preds = %cond.false.73
  br label %cond.end.78

cond.false.77:                                    ; preds = %cond.false.73
  %63 = load double, double* %alphasum, align 8
  br label %cond.end.78

cond.end.78:                                      ; preds = %cond.false.77, %cond.true.76
  %cond79 = phi double [ 0.000000e+00, %cond.true.76 ], [ %63, %cond.false.77 ]
  br label %cond.end.80

cond.end.80:                                      ; preds = %cond.end.78, %cond.true.72
  %cond81 = phi double [ 2.550000e+02, %cond.true.72 ], [ %cond79, %cond.end.78 ]
  %conv82 = fptoui double %cond81 to i8
  %64 = load i8*, i8** %pixel.addr, align 8
  %arrayidx83 = getelementptr inbounds i8, i8* %64, i64 1
  store i8 %conv82, i8* %arrayidx83, align 1
  br label %if.end

if.else:                                          ; preds = %sw.bb.22
  %65 = load i8*, i8** %pixel.addr, align 8
  %arrayidx84 = getelementptr inbounds i8, i8* %65, i64 1
  store i8 0, i8* %arrayidx84, align 1
  %66 = load i8*, i8** %pixel.addr, align 8
  %arrayidx85 = getelementptr inbounds i8, i8* %66, i64 0
  store i8 0, i8* %arrayidx85, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end.80
  br label %sw.epilog

sw.bb.86:                                         ; preds = %entry
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.86
  %67 = load i32, i32* %b, align 4
  %cmp87 = icmp slt i32 %67, 3
  br i1 %cmp87, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %68 = load double, double* %xfrac.addr, align 8
  %69 = load double, double* %yfrac.addr, align 8
  %70 = load i32, i32* %b, align 4
  %idxprom = sext i32 %70 to i64
  %71 = load i8*, i8** %p1, align 8
  %arrayidx89 = getelementptr inbounds i8, i8* %71, i64 %idxprom
  %72 = load i8, i8* %arrayidx89, align 1
  %conv90 = zext i8 %72 to i32
  %73 = load i32, i32* %b, align 4
  %idxprom91 = sext i32 %73 to i64
  %74 = load i8*, i8** %p2, align 8
  %arrayidx92 = getelementptr inbounds i8, i8* %74, i64 %idxprom91
  %75 = load i8, i8* %arrayidx92, align 1
  %conv93 = zext i8 %75 to i32
  %76 = load i32, i32* %b, align 4
  %idxprom94 = sext i32 %76 to i64
  %77 = load i8*, i8** %p3, align 8
  %arrayidx95 = getelementptr inbounds i8, i8* %77, i64 %idxprom94
  %78 = load i8, i8* %arrayidx95, align 1
  %conv96 = zext i8 %78 to i32
  %79 = load i32, i32* %b, align 4
  %idxprom97 = sext i32 %79 to i64
  %80 = load i8*, i8** %p4, align 8
  %arrayidx98 = getelementptr inbounds i8, i8* %80, i64 %idxprom97
  %81 = load i8, i8* %arrayidx98, align 1
  %conv99 = zext i8 %81 to i32
  %call100 = call double @weighted_sum(double %68, double %69, i32 %conv90, i32 %conv93, i32 %conv96, i32 %conv99)
  %call101 = call double @rint(double %call100) #8
  store double %call101, double* %sum, align 8
  %82 = load double, double* %sum, align 8
  %cmp102 = fcmp ogt double %82, 2.550000e+02
  br i1 %cmp102, label %cond.true.104, label %cond.false.105

cond.true.104:                                    ; preds = %for.body
  br label %cond.end.112

cond.false.105:                                   ; preds = %for.body
  %83 = load double, double* %sum, align 8
  %cmp106 = fcmp olt double %83, 0.000000e+00
  br i1 %cmp106, label %cond.true.108, label %cond.false.109

cond.true.108:                                    ; preds = %cond.false.105
  br label %cond.end.110

cond.false.109:                                   ; preds = %cond.false.105
  %84 = load double, double* %sum, align 8
  br label %cond.end.110

cond.end.110:                                     ; preds = %cond.false.109, %cond.true.108
  %cond111 = phi double [ 0.000000e+00, %cond.true.108 ], [ %84, %cond.false.109 ]
  br label %cond.end.112

cond.end.112:                                     ; preds = %cond.end.110, %cond.true.104
  %cond113 = phi double [ 2.550000e+02, %cond.true.104 ], [ %cond111, %cond.end.110 ]
  %conv114 = fptoui double %cond113 to i8
  %85 = load i32, i32* %b, align 4
  %idxprom115 = sext i32 %85 to i64
  %86 = load i8*, i8** %pixel.addr, align 8
  %arrayidx116 = getelementptr inbounds i8, i8* %86, i64 %idxprom115
  store i8 %conv114, i8* %arrayidx116, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end.112
  %87 = load i32, i32* %b, align 4
  %inc = add nsw i32 %87, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.bb.117:                                        ; preds = %entry
  %88 = load double, double* %xfrac.addr, align 8
  %89 = load double, double* %yfrac.addr, align 8
  %90 = load i8*, i8** %p1, align 8
  %arrayidx118 = getelementptr inbounds i8, i8* %90, i64 3
  %91 = load i8, i8* %arrayidx118, align 1
  %conv119 = zext i8 %91 to i32
  %92 = load i8*, i8** %p2, align 8
  %arrayidx120 = getelementptr inbounds i8, i8* %92, i64 3
  %93 = load i8, i8* %arrayidx120, align 1
  %conv121 = zext i8 %93 to i32
  %94 = load i8*, i8** %p3, align 8
  %arrayidx122 = getelementptr inbounds i8, i8* %94, i64 3
  %95 = load i8, i8* %arrayidx122, align 1
  %conv123 = zext i8 %95 to i32
  %96 = load i8*, i8** %p4, align 8
  %arrayidx124 = getelementptr inbounds i8, i8* %96, i64 3
  %97 = load i8, i8* %arrayidx124, align 1
  %conv125 = zext i8 %97 to i32
  %call126 = call double @weighted_sum(double %88, double %89, i32 %conv119, i32 %conv121, i32 %conv123, i32 %conv125)
  store double %call126, double* %alphasum, align 8
  %98 = load double, double* %alphasum, align 8
  %cmp127 = fcmp ogt double %98, 0.000000e+00
  br i1 %cmp127, label %if.then.129, label %if.else.194

if.then.129:                                      ; preds = %sw.bb.117
  store i32 0, i32* %b, align 4
  br label %for.cond.130

for.cond.130:                                     ; preds = %for.inc.176, %if.then.129
  %99 = load i32, i32* %b, align 4
  %cmp131 = icmp slt i32 %99, 3
  br i1 %cmp131, label %for.body.133, label %for.end.178

for.body.133:                                     ; preds = %for.cond.130
  %100 = load double, double* %xfrac.addr, align 8
  %101 = load double, double* %yfrac.addr, align 8
  %102 = load i32, i32* %b, align 4
  %idxprom134 = sext i32 %102 to i64
  %103 = load i8*, i8** %p1, align 8
  %arrayidx135 = getelementptr inbounds i8, i8* %103, i64 %idxprom134
  %104 = load i8, i8* %arrayidx135, align 1
  %conv136 = zext i8 %104 to i32
  %105 = load i8*, i8** %p1, align 8
  %arrayidx137 = getelementptr inbounds i8, i8* %105, i64 3
  %106 = load i8, i8* %arrayidx137, align 1
  %conv138 = zext i8 %106 to i32
  %mul139 = mul nsw i32 %conv136, %conv138
  %107 = load i32, i32* %b, align 4
  %idxprom140 = sext i32 %107 to i64
  %108 = load i8*, i8** %p2, align 8
  %arrayidx141 = getelementptr inbounds i8, i8* %108, i64 %idxprom140
  %109 = load i8, i8* %arrayidx141, align 1
  %conv142 = zext i8 %109 to i32
  %110 = load i8*, i8** %p2, align 8
  %arrayidx143 = getelementptr inbounds i8, i8* %110, i64 3
  %111 = load i8, i8* %arrayidx143, align 1
  %conv144 = zext i8 %111 to i32
  %mul145 = mul nsw i32 %conv142, %conv144
  %112 = load i32, i32* %b, align 4
  %idxprom146 = sext i32 %112 to i64
  %113 = load i8*, i8** %p3, align 8
  %arrayidx147 = getelementptr inbounds i8, i8* %113, i64 %idxprom146
  %114 = load i8, i8* %arrayidx147, align 1
  %conv148 = zext i8 %114 to i32
  %115 = load i8*, i8** %p3, align 8
  %arrayidx149 = getelementptr inbounds i8, i8* %115, i64 3
  %116 = load i8, i8* %arrayidx149, align 1
  %conv150 = zext i8 %116 to i32
  %mul151 = mul nsw i32 %conv148, %conv150
  %117 = load i32, i32* %b, align 4
  %idxprom152 = sext i32 %117 to i64
  %118 = load i8*, i8** %p4, align 8
  %arrayidx153 = getelementptr inbounds i8, i8* %118, i64 %idxprom152
  %119 = load i8, i8* %arrayidx153, align 1
  %conv154 = zext i8 %119 to i32
  %120 = load i8*, i8** %p4, align 8
  %arrayidx155 = getelementptr inbounds i8, i8* %120, i64 3
  %121 = load i8, i8* %arrayidx155, align 1
  %conv156 = zext i8 %121 to i32
  %mul157 = mul nsw i32 %conv154, %conv156
  %call158 = call double @weighted_sum(double %100, double %101, i32 %mul139, i32 %mul145, i32 %mul151, i32 %mul157)
  store double %call158, double* %sum, align 8
  %122 = load double, double* %sum, align 8
  %123 = load double, double* %alphasum, align 8
  %div159 = fdiv double %122, %123
  %call160 = call double @rint(double %div159) #8
  store double %call160, double* %sum, align 8
  %124 = load double, double* %sum, align 8
  %cmp161 = fcmp ogt double %124, 2.550000e+02
  br i1 %cmp161, label %cond.true.163, label %cond.false.164

cond.true.163:                                    ; preds = %for.body.133
  br label %cond.end.171

cond.false.164:                                   ; preds = %for.body.133
  %125 = load double, double* %sum, align 8
  %cmp165 = fcmp olt double %125, 0.000000e+00
  br i1 %cmp165, label %cond.true.167, label %cond.false.168

cond.true.167:                                    ; preds = %cond.false.164
  br label %cond.end.169

cond.false.168:                                   ; preds = %cond.false.164
  %126 = load double, double* %sum, align 8
  br label %cond.end.169

cond.end.169:                                     ; preds = %cond.false.168, %cond.true.167
  %cond170 = phi double [ 0.000000e+00, %cond.true.167 ], [ %126, %cond.false.168 ]
  br label %cond.end.171

cond.end.171:                                     ; preds = %cond.end.169, %cond.true.163
  %cond172 = phi double [ 2.550000e+02, %cond.true.163 ], [ %cond170, %cond.end.169 ]
  %conv173 = fptoui double %cond172 to i8
  %127 = load i32, i32* %b, align 4
  %idxprom174 = sext i32 %127 to i64
  %128 = load i8*, i8** %pixel.addr, align 8
  %arrayidx175 = getelementptr inbounds i8, i8* %128, i64 %idxprom174
  store i8 %conv173, i8* %arrayidx175, align 1
  br label %for.inc.176

for.inc.176:                                      ; preds = %cond.end.171
  %129 = load i32, i32* %b, align 4
  %inc177 = add nsw i32 %129, 1
  store i32 %inc177, i32* %b, align 4
  br label %for.cond.130

for.end.178:                                      ; preds = %for.cond.130
  %130 = load double, double* %alphasum, align 8
  %call179 = call double @rint(double %130) #8
  store double %call179, double* %alphasum, align 8
  %131 = load double, double* %alphasum, align 8
  %cmp180 = fcmp ogt double %131, 2.550000e+02
  br i1 %cmp180, label %cond.true.182, label %cond.false.183

cond.true.182:                                    ; preds = %for.end.178
  br label %cond.end.190

cond.false.183:                                   ; preds = %for.end.178
  %132 = load double, double* %alphasum, align 8
  %cmp184 = fcmp olt double %132, 0.000000e+00
  br i1 %cmp184, label %cond.true.186, label %cond.false.187

cond.true.186:                                    ; preds = %cond.false.183
  br label %cond.end.188

cond.false.187:                                   ; preds = %cond.false.183
  %133 = load double, double* %alphasum, align 8
  br label %cond.end.188

cond.end.188:                                     ; preds = %cond.false.187, %cond.true.186
  %cond189 = phi double [ 0.000000e+00, %cond.true.186 ], [ %133, %cond.false.187 ]
  br label %cond.end.190

cond.end.190:                                     ; preds = %cond.end.188, %cond.true.182
  %cond191 = phi double [ 2.550000e+02, %cond.true.182 ], [ %cond189, %cond.end.188 ]
  %conv192 = fptoui double %cond191 to i8
  %134 = load i8*, i8** %pixel.addr, align 8
  %arrayidx193 = getelementptr inbounds i8, i8* %134, i64 3
  store i8 %conv192, i8* %arrayidx193, align 1
  br label %if.end.199

if.else.194:                                      ; preds = %sw.bb.117
  %135 = load i8*, i8** %pixel.addr, align 8
  %arrayidx195 = getelementptr inbounds i8, i8* %135, i64 3
  store i8 0, i8* %arrayidx195, align 1
  %136 = load i8*, i8** %pixel.addr, align 8
  %arrayidx196 = getelementptr inbounds i8, i8* %136, i64 2
  store i8 0, i8* %arrayidx196, align 1
  %137 = load i8*, i8** %pixel.addr, align 8
  %arrayidx197 = getelementptr inbounds i8, i8* %137, i64 1
  store i8 0, i8* %arrayidx197, align 1
  %138 = load i8*, i8** %pixel.addr, align 8
  %arrayidx198 = getelementptr inbounds i8, i8* %138, i64 0
  store i8 0, i8* %arrayidx198, align 1
  br label %if.end.199

if.end.199:                                       ; preds = %if.else.194, %cond.end.190
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end.199, %for.end, %if.end, %cond.end.18
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @interpolate_cubic(%struct._PixelSurround* %surround, i32 %x0, i32 %y0, double %xfrac, double %yfrac, i32 %bytes, i8* %pixel) #0 {
entry:
  %surround.addr = alloca %struct._PixelSurround*, align 8
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %xfrac.addr = alloca double, align 8
  %yfrac.addr = alloca double, align 8
  %bytes.addr = alloca i32, align 4
  %pixel.addr = alloca i8*, align 8
  %stride = alloca i32, align 4
  %src = alloca i8*, align 8
  %s0 = alloca i8*, align 8
  %s1 = alloca i8*, align 8
  %s2 = alloca i8*, align 8
  %s3 = alloca i8*, align 8
  %b = alloca i32, align 4
  %p0 = alloca double, align 8
  %p1 = alloca double, align 8
  %p2 = alloca double, align 8
  %p3 = alloca double, align 8
  %sum = alloca double, align 8
  %alphasum = alloca double, align 8
  store %struct._PixelSurround* %surround, %struct._PixelSurround** %surround.addr, align 8
  store i32 %x0, i32* %x0.addr, align 4
  store i32 %y0, i32* %y0.addr, align 4
  store double %xfrac, double* %xfrac.addr, align 8
  store double %yfrac, double* %yfrac.addr, align 8
  store i32 %bytes, i32* %bytes.addr, align 4
  store i8* %pixel, i8** %pixel.addr, align 8
  %0 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %1 = load i32, i32* %x0.addr, align 4
  %sub = sub nsw i32 %1, 1
  %2 = load i32, i32* %y0.addr, align 4
  %sub1 = sub nsw i32 %2, 1
  %call = call i8* @pixel_surround_lock(%struct._PixelSurround* %0, i32 %sub, i32 %sub1, i32* %stride)
  store i8* %call, i8** %src, align 8
  %3 = load i8*, i8** %src, align 8
  store i8* %3, i8** %s0, align 8
  %4 = load i8*, i8** %s0, align 8
  %5 = load i32, i32* %stride, align 4
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  store i8* %add.ptr, i8** %s1, align 8
  %6 = load i8*, i8** %s1, align 8
  %7 = load i32, i32* %stride, align 4
  %idx.ext2 = sext i32 %7 to i64
  %add.ptr3 = getelementptr inbounds i8, i8* %6, i64 %idx.ext2
  store i8* %add.ptr3, i8** %s2, align 8
  %8 = load i8*, i8** %s2, align 8
  %9 = load i32, i32* %stride, align 4
  %idx.ext4 = sext i32 %9 to i64
  %add.ptr5 = getelementptr inbounds i8, i8* %8, i64 %idx.ext4
  store i8* %add.ptr5, i8** %s3, align 8
  %10 = load i32, i32* %bytes.addr, align 4
  switch i32 %10, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.51
    i32 3, label %sw.bb.223
    i32 4, label %sw.bb.305
  ]

sw.bb:                                            ; preds = %entry
  %11 = load double, double* %xfrac.addr, align 8
  %12 = load i8*, i8** %s0, align 8
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 0
  %13 = load i8, i8* %arrayidx, align 1
  %conv = uitofp i8 %13 to double
  %14 = load i8*, i8** %s0, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %14, i64 1
  %15 = load i8, i8* %arrayidx6, align 1
  %conv7 = uitofp i8 %15 to double
  %16 = load i8*, i8** %s0, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %16, i64 2
  %17 = load i8, i8* %arrayidx8, align 1
  %conv9 = uitofp i8 %17 to double
  %18 = load i8*, i8** %s0, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %18, i64 3
  %19 = load i8, i8* %arrayidx10, align 1
  %conv11 = uitofp i8 %19 to double
  %call12 = call double @cubic_spline_fit(double %11, double %conv, double %conv7, double %conv9, double %conv11)
  store double %call12, double* %p0, align 8
  %20 = load double, double* %xfrac.addr, align 8
  %21 = load i8*, i8** %s1, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %21, i64 0
  %22 = load i8, i8* %arrayidx13, align 1
  %conv14 = uitofp i8 %22 to double
  %23 = load i8*, i8** %s1, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %23, i64 1
  %24 = load i8, i8* %arrayidx15, align 1
  %conv16 = uitofp i8 %24 to double
  %25 = load i8*, i8** %s1, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %25, i64 2
  %26 = load i8, i8* %arrayidx17, align 1
  %conv18 = uitofp i8 %26 to double
  %27 = load i8*, i8** %s1, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %27, i64 3
  %28 = load i8, i8* %arrayidx19, align 1
  %conv20 = uitofp i8 %28 to double
  %call21 = call double @cubic_spline_fit(double %20, double %conv14, double %conv16, double %conv18, double %conv20)
  store double %call21, double* %p1, align 8
  %29 = load double, double* %xfrac.addr, align 8
  %30 = load i8*, i8** %s2, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %30, i64 0
  %31 = load i8, i8* %arrayidx22, align 1
  %conv23 = uitofp i8 %31 to double
  %32 = load i8*, i8** %s2, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %32, i64 1
  %33 = load i8, i8* %arrayidx24, align 1
  %conv25 = uitofp i8 %33 to double
  %34 = load i8*, i8** %s2, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %34, i64 2
  %35 = load i8, i8* %arrayidx26, align 1
  %conv27 = uitofp i8 %35 to double
  %36 = load i8*, i8** %s2, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %36, i64 3
  %37 = load i8, i8* %arrayidx28, align 1
  %conv29 = uitofp i8 %37 to double
  %call30 = call double @cubic_spline_fit(double %29, double %conv23, double %conv25, double %conv27, double %conv29)
  store double %call30, double* %p2, align 8
  %38 = load double, double* %xfrac.addr, align 8
  %39 = load i8*, i8** %s3, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %39, i64 0
  %40 = load i8, i8* %arrayidx31, align 1
  %conv32 = uitofp i8 %40 to double
  %41 = load i8*, i8** %s3, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %41, i64 1
  %42 = load i8, i8* %arrayidx33, align 1
  %conv34 = uitofp i8 %42 to double
  %43 = load i8*, i8** %s3, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %43, i64 2
  %44 = load i8, i8* %arrayidx35, align 1
  %conv36 = uitofp i8 %44 to double
  %45 = load i8*, i8** %s3, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %45, i64 3
  %46 = load i8, i8* %arrayidx37, align 1
  %conv38 = uitofp i8 %46 to double
  %call39 = call double @cubic_spline_fit(double %38, double %conv32, double %conv34, double %conv36, double %conv38)
  store double %call39, double* %p3, align 8
  %47 = load double, double* %yfrac.addr, align 8
  %48 = load double, double* %p0, align 8
  %49 = load double, double* %p1, align 8
  %50 = load double, double* %p2, align 8
  %51 = load double, double* %p3, align 8
  %call40 = call double @cubic_spline_fit(double %47, double %48, double %49, double %50, double %51)
  %call41 = call double @rint(double %call40) #8
  store double %call41, double* %sum, align 8
  %52 = load double, double* %sum, align 8
  %cmp = fcmp ogt double %52, 2.550000e+02
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  br label %cond.end.47

cond.false:                                       ; preds = %sw.bb
  %53 = load double, double* %sum, align 8
  %cmp43 = fcmp olt double %53, 0.000000e+00
  br i1 %cmp43, label %cond.true.45, label %cond.false.46

cond.true.45:                                     ; preds = %cond.false
  br label %cond.end

cond.false.46:                                    ; preds = %cond.false
  %54 = load double, double* %sum, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.46, %cond.true.45
  %cond = phi double [ 0.000000e+00, %cond.true.45 ], [ %54, %cond.false.46 ]
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.end, %cond.true
  %cond48 = phi double [ 2.550000e+02, %cond.true ], [ %cond, %cond.end ]
  %conv49 = fptoui double %cond48 to i8
  %55 = load i8*, i8** %pixel.addr, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %55, i64 0
  store i8 %conv49, i8* %arrayidx50, align 1
  br label %sw.epilog

sw.bb.51:                                         ; preds = %entry
  %56 = load double, double* %xfrac.addr, align 8
  %57 = load i8*, i8** %s0, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %57, i64 1
  %58 = load i8, i8* %arrayidx52, align 1
  %conv53 = uitofp i8 %58 to double
  %59 = load i8*, i8** %s0, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %59, i64 3
  %60 = load i8, i8* %arrayidx54, align 1
  %conv55 = uitofp i8 %60 to double
  %61 = load i8*, i8** %s0, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %61, i64 5
  %62 = load i8, i8* %arrayidx56, align 1
  %conv57 = uitofp i8 %62 to double
  %63 = load i8*, i8** %s0, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %63, i64 7
  %64 = load i8, i8* %arrayidx58, align 1
  %conv59 = uitofp i8 %64 to double
  %call60 = call double @cubic_spline_fit(double %56, double %conv53, double %conv55, double %conv57, double %conv59)
  store double %call60, double* %p0, align 8
  %65 = load double, double* %xfrac.addr, align 8
  %66 = load i8*, i8** %s1, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %66, i64 1
  %67 = load i8, i8* %arrayidx61, align 1
  %conv62 = uitofp i8 %67 to double
  %68 = load i8*, i8** %s1, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %68, i64 3
  %69 = load i8, i8* %arrayidx63, align 1
  %conv64 = uitofp i8 %69 to double
  %70 = load i8*, i8** %s1, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %70, i64 5
  %71 = load i8, i8* %arrayidx65, align 1
  %conv66 = uitofp i8 %71 to double
  %72 = load i8*, i8** %s1, align 8
  %arrayidx67 = getelementptr inbounds i8, i8* %72, i64 7
  %73 = load i8, i8* %arrayidx67, align 1
  %conv68 = uitofp i8 %73 to double
  %call69 = call double @cubic_spline_fit(double %65, double %conv62, double %conv64, double %conv66, double %conv68)
  store double %call69, double* %p1, align 8
  %74 = load double, double* %xfrac.addr, align 8
  %75 = load i8*, i8** %s2, align 8
  %arrayidx70 = getelementptr inbounds i8, i8* %75, i64 1
  %76 = load i8, i8* %arrayidx70, align 1
  %conv71 = uitofp i8 %76 to double
  %77 = load i8*, i8** %s2, align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %77, i64 3
  %78 = load i8, i8* %arrayidx72, align 1
  %conv73 = uitofp i8 %78 to double
  %79 = load i8*, i8** %s2, align 8
  %arrayidx74 = getelementptr inbounds i8, i8* %79, i64 5
  %80 = load i8, i8* %arrayidx74, align 1
  %conv75 = uitofp i8 %80 to double
  %81 = load i8*, i8** %s2, align 8
  %arrayidx76 = getelementptr inbounds i8, i8* %81, i64 7
  %82 = load i8, i8* %arrayidx76, align 1
  %conv77 = uitofp i8 %82 to double
  %call78 = call double @cubic_spline_fit(double %74, double %conv71, double %conv73, double %conv75, double %conv77)
  store double %call78, double* %p2, align 8
  %83 = load double, double* %xfrac.addr, align 8
  %84 = load i8*, i8** %s3, align 8
  %arrayidx79 = getelementptr inbounds i8, i8* %84, i64 1
  %85 = load i8, i8* %arrayidx79, align 1
  %conv80 = uitofp i8 %85 to double
  %86 = load i8*, i8** %s3, align 8
  %arrayidx81 = getelementptr inbounds i8, i8* %86, i64 3
  %87 = load i8, i8* %arrayidx81, align 1
  %conv82 = uitofp i8 %87 to double
  %88 = load i8*, i8** %s3, align 8
  %arrayidx83 = getelementptr inbounds i8, i8* %88, i64 5
  %89 = load i8, i8* %arrayidx83, align 1
  %conv84 = uitofp i8 %89 to double
  %90 = load i8*, i8** %s3, align 8
  %arrayidx85 = getelementptr inbounds i8, i8* %90, i64 7
  %91 = load i8, i8* %arrayidx85, align 1
  %conv86 = uitofp i8 %91 to double
  %call87 = call double @cubic_spline_fit(double %83, double %conv80, double %conv82, double %conv84, double %conv86)
  store double %call87, double* %p3, align 8
  %92 = load double, double* %yfrac.addr, align 8
  %93 = load double, double* %p0, align 8
  %94 = load double, double* %p1, align 8
  %95 = load double, double* %p2, align 8
  %96 = load double, double* %p3, align 8
  %call88 = call double @cubic_spline_fit(double %92, double %93, double %94, double %95, double %96)
  store double %call88, double* %alphasum, align 8
  %97 = load double, double* %alphasum, align 8
  %cmp89 = fcmp ogt double %97, 0.000000e+00
  br i1 %cmp89, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.51
  %98 = load double, double* %xfrac.addr, align 8
  %99 = load i8*, i8** %s0, align 8
  %arrayidx91 = getelementptr inbounds i8, i8* %99, i64 0
  %100 = load i8, i8* %arrayidx91, align 1
  %conv92 = zext i8 %100 to i32
  %101 = load i8*, i8** %s0, align 8
  %arrayidx93 = getelementptr inbounds i8, i8* %101, i64 1
  %102 = load i8, i8* %arrayidx93, align 1
  %conv94 = zext i8 %102 to i32
  %mul = mul nsw i32 %conv92, %conv94
  %conv95 = sitofp i32 %mul to double
  %103 = load i8*, i8** %s0, align 8
  %arrayidx96 = getelementptr inbounds i8, i8* %103, i64 2
  %104 = load i8, i8* %arrayidx96, align 1
  %conv97 = zext i8 %104 to i32
  %105 = load i8*, i8** %s0, align 8
  %arrayidx98 = getelementptr inbounds i8, i8* %105, i64 3
  %106 = load i8, i8* %arrayidx98, align 1
  %conv99 = zext i8 %106 to i32
  %mul100 = mul nsw i32 %conv97, %conv99
  %conv101 = sitofp i32 %mul100 to double
  %107 = load i8*, i8** %s0, align 8
  %arrayidx102 = getelementptr inbounds i8, i8* %107, i64 4
  %108 = load i8, i8* %arrayidx102, align 1
  %conv103 = zext i8 %108 to i32
  %109 = load i8*, i8** %s0, align 8
  %arrayidx104 = getelementptr inbounds i8, i8* %109, i64 5
  %110 = load i8, i8* %arrayidx104, align 1
  %conv105 = zext i8 %110 to i32
  %mul106 = mul nsw i32 %conv103, %conv105
  %conv107 = sitofp i32 %mul106 to double
  %111 = load i8*, i8** %s0, align 8
  %arrayidx108 = getelementptr inbounds i8, i8* %111, i64 6
  %112 = load i8, i8* %arrayidx108, align 1
  %conv109 = zext i8 %112 to i32
  %113 = load i8*, i8** %s0, align 8
  %arrayidx110 = getelementptr inbounds i8, i8* %113, i64 7
  %114 = load i8, i8* %arrayidx110, align 1
  %conv111 = zext i8 %114 to i32
  %mul112 = mul nsw i32 %conv109, %conv111
  %conv113 = sitofp i32 %mul112 to double
  %call114 = call double @cubic_spline_fit(double %98, double %conv95, double %conv101, double %conv107, double %conv113)
  store double %call114, double* %p0, align 8
  %115 = load double, double* %xfrac.addr, align 8
  %116 = load i8*, i8** %s1, align 8
  %arrayidx115 = getelementptr inbounds i8, i8* %116, i64 0
  %117 = load i8, i8* %arrayidx115, align 1
  %conv116 = zext i8 %117 to i32
  %118 = load i8*, i8** %s1, align 8
  %arrayidx117 = getelementptr inbounds i8, i8* %118, i64 1
  %119 = load i8, i8* %arrayidx117, align 1
  %conv118 = zext i8 %119 to i32
  %mul119 = mul nsw i32 %conv116, %conv118
  %conv120 = sitofp i32 %mul119 to double
  %120 = load i8*, i8** %s1, align 8
  %arrayidx121 = getelementptr inbounds i8, i8* %120, i64 2
  %121 = load i8, i8* %arrayidx121, align 1
  %conv122 = zext i8 %121 to i32
  %122 = load i8*, i8** %s1, align 8
  %arrayidx123 = getelementptr inbounds i8, i8* %122, i64 3
  %123 = load i8, i8* %arrayidx123, align 1
  %conv124 = zext i8 %123 to i32
  %mul125 = mul nsw i32 %conv122, %conv124
  %conv126 = sitofp i32 %mul125 to double
  %124 = load i8*, i8** %s1, align 8
  %arrayidx127 = getelementptr inbounds i8, i8* %124, i64 4
  %125 = load i8, i8* %arrayidx127, align 1
  %conv128 = zext i8 %125 to i32
  %126 = load i8*, i8** %s1, align 8
  %arrayidx129 = getelementptr inbounds i8, i8* %126, i64 5
  %127 = load i8, i8* %arrayidx129, align 1
  %conv130 = zext i8 %127 to i32
  %mul131 = mul nsw i32 %conv128, %conv130
  %conv132 = sitofp i32 %mul131 to double
  %128 = load i8*, i8** %s1, align 8
  %arrayidx133 = getelementptr inbounds i8, i8* %128, i64 6
  %129 = load i8, i8* %arrayidx133, align 1
  %conv134 = zext i8 %129 to i32
  %130 = load i8*, i8** %s1, align 8
  %arrayidx135 = getelementptr inbounds i8, i8* %130, i64 7
  %131 = load i8, i8* %arrayidx135, align 1
  %conv136 = zext i8 %131 to i32
  %mul137 = mul nsw i32 %conv134, %conv136
  %conv138 = sitofp i32 %mul137 to double
  %call139 = call double @cubic_spline_fit(double %115, double %conv120, double %conv126, double %conv132, double %conv138)
  store double %call139, double* %p1, align 8
  %132 = load double, double* %xfrac.addr, align 8
  %133 = load i8*, i8** %s2, align 8
  %arrayidx140 = getelementptr inbounds i8, i8* %133, i64 0
  %134 = load i8, i8* %arrayidx140, align 1
  %conv141 = zext i8 %134 to i32
  %135 = load i8*, i8** %s2, align 8
  %arrayidx142 = getelementptr inbounds i8, i8* %135, i64 1
  %136 = load i8, i8* %arrayidx142, align 1
  %conv143 = zext i8 %136 to i32
  %mul144 = mul nsw i32 %conv141, %conv143
  %conv145 = sitofp i32 %mul144 to double
  %137 = load i8*, i8** %s2, align 8
  %arrayidx146 = getelementptr inbounds i8, i8* %137, i64 2
  %138 = load i8, i8* %arrayidx146, align 1
  %conv147 = zext i8 %138 to i32
  %139 = load i8*, i8** %s2, align 8
  %arrayidx148 = getelementptr inbounds i8, i8* %139, i64 3
  %140 = load i8, i8* %arrayidx148, align 1
  %conv149 = zext i8 %140 to i32
  %mul150 = mul nsw i32 %conv147, %conv149
  %conv151 = sitofp i32 %mul150 to double
  %141 = load i8*, i8** %s2, align 8
  %arrayidx152 = getelementptr inbounds i8, i8* %141, i64 4
  %142 = load i8, i8* %arrayidx152, align 1
  %conv153 = zext i8 %142 to i32
  %143 = load i8*, i8** %s2, align 8
  %arrayidx154 = getelementptr inbounds i8, i8* %143, i64 5
  %144 = load i8, i8* %arrayidx154, align 1
  %conv155 = zext i8 %144 to i32
  %mul156 = mul nsw i32 %conv153, %conv155
  %conv157 = sitofp i32 %mul156 to double
  %145 = load i8*, i8** %s2, align 8
  %arrayidx158 = getelementptr inbounds i8, i8* %145, i64 6
  %146 = load i8, i8* %arrayidx158, align 1
  %conv159 = zext i8 %146 to i32
  %147 = load i8*, i8** %s2, align 8
  %arrayidx160 = getelementptr inbounds i8, i8* %147, i64 7
  %148 = load i8, i8* %arrayidx160, align 1
  %conv161 = zext i8 %148 to i32
  %mul162 = mul nsw i32 %conv159, %conv161
  %conv163 = sitofp i32 %mul162 to double
  %call164 = call double @cubic_spline_fit(double %132, double %conv145, double %conv151, double %conv157, double %conv163)
  store double %call164, double* %p2, align 8
  %149 = load double, double* %xfrac.addr, align 8
  %150 = load i8*, i8** %s3, align 8
  %arrayidx165 = getelementptr inbounds i8, i8* %150, i64 0
  %151 = load i8, i8* %arrayidx165, align 1
  %conv166 = zext i8 %151 to i32
  %152 = load i8*, i8** %s3, align 8
  %arrayidx167 = getelementptr inbounds i8, i8* %152, i64 1
  %153 = load i8, i8* %arrayidx167, align 1
  %conv168 = zext i8 %153 to i32
  %mul169 = mul nsw i32 %conv166, %conv168
  %conv170 = sitofp i32 %mul169 to double
  %154 = load i8*, i8** %s3, align 8
  %arrayidx171 = getelementptr inbounds i8, i8* %154, i64 2
  %155 = load i8, i8* %arrayidx171, align 1
  %conv172 = zext i8 %155 to i32
  %156 = load i8*, i8** %s3, align 8
  %arrayidx173 = getelementptr inbounds i8, i8* %156, i64 3
  %157 = load i8, i8* %arrayidx173, align 1
  %conv174 = zext i8 %157 to i32
  %mul175 = mul nsw i32 %conv172, %conv174
  %conv176 = sitofp i32 %mul175 to double
  %158 = load i8*, i8** %s3, align 8
  %arrayidx177 = getelementptr inbounds i8, i8* %158, i64 4
  %159 = load i8, i8* %arrayidx177, align 1
  %conv178 = zext i8 %159 to i32
  %160 = load i8*, i8** %s3, align 8
  %arrayidx179 = getelementptr inbounds i8, i8* %160, i64 5
  %161 = load i8, i8* %arrayidx179, align 1
  %conv180 = zext i8 %161 to i32
  %mul181 = mul nsw i32 %conv178, %conv180
  %conv182 = sitofp i32 %mul181 to double
  %162 = load i8*, i8** %s3, align 8
  %arrayidx183 = getelementptr inbounds i8, i8* %162, i64 6
  %163 = load i8, i8* %arrayidx183, align 1
  %conv184 = zext i8 %163 to i32
  %164 = load i8*, i8** %s3, align 8
  %arrayidx185 = getelementptr inbounds i8, i8* %164, i64 7
  %165 = load i8, i8* %arrayidx185, align 1
  %conv186 = zext i8 %165 to i32
  %mul187 = mul nsw i32 %conv184, %conv186
  %conv188 = sitofp i32 %mul187 to double
  %call189 = call double @cubic_spline_fit(double %149, double %conv170, double %conv176, double %conv182, double %conv188)
  store double %call189, double* %p3, align 8
  %166 = load double, double* %yfrac.addr, align 8
  %167 = load double, double* %p0, align 8
  %168 = load double, double* %p1, align 8
  %169 = load double, double* %p2, align 8
  %170 = load double, double* %p3, align 8
  %call190 = call double @cubic_spline_fit(double %166, double %167, double %168, double %169, double %170)
  store double %call190, double* %sum, align 8
  %171 = load double, double* %sum, align 8
  %172 = load double, double* %alphasum, align 8
  %div = fdiv double %171, %172
  %call191 = call double @rint(double %div) #8
  store double %call191, double* %sum, align 8
  %173 = load double, double* %sum, align 8
  %cmp192 = fcmp ogt double %173, 2.550000e+02
  br i1 %cmp192, label %cond.true.194, label %cond.false.195

cond.true.194:                                    ; preds = %if.then
  br label %cond.end.202

cond.false.195:                                   ; preds = %if.then
  %174 = load double, double* %sum, align 8
  %cmp196 = fcmp olt double %174, 0.000000e+00
  br i1 %cmp196, label %cond.true.198, label %cond.false.199

cond.true.198:                                    ; preds = %cond.false.195
  br label %cond.end.200

cond.false.199:                                   ; preds = %cond.false.195
  %175 = load double, double* %sum, align 8
  br label %cond.end.200

cond.end.200:                                     ; preds = %cond.false.199, %cond.true.198
  %cond201 = phi double [ 0.000000e+00, %cond.true.198 ], [ %175, %cond.false.199 ]
  br label %cond.end.202

cond.end.202:                                     ; preds = %cond.end.200, %cond.true.194
  %cond203 = phi double [ 2.550000e+02, %cond.true.194 ], [ %cond201, %cond.end.200 ]
  %conv204 = fptoui double %cond203 to i8
  %176 = load i8*, i8** %pixel.addr, align 8
  %arrayidx205 = getelementptr inbounds i8, i8* %176, i64 0
  store i8 %conv204, i8* %arrayidx205, align 1
  %177 = load double, double* %alphasum, align 8
  %call206 = call double @rint(double %177) #8
  store double %call206, double* %alphasum, align 8
  %178 = load double, double* %alphasum, align 8
  %cmp207 = fcmp ogt double %178, 2.550000e+02
  br i1 %cmp207, label %cond.true.209, label %cond.false.210

cond.true.209:                                    ; preds = %cond.end.202
  br label %cond.end.217

cond.false.210:                                   ; preds = %cond.end.202
  %179 = load double, double* %alphasum, align 8
  %cmp211 = fcmp olt double %179, 0.000000e+00
  br i1 %cmp211, label %cond.true.213, label %cond.false.214

cond.true.213:                                    ; preds = %cond.false.210
  br label %cond.end.215

cond.false.214:                                   ; preds = %cond.false.210
  %180 = load double, double* %alphasum, align 8
  br label %cond.end.215

cond.end.215:                                     ; preds = %cond.false.214, %cond.true.213
  %cond216 = phi double [ 0.000000e+00, %cond.true.213 ], [ %180, %cond.false.214 ]
  br label %cond.end.217

cond.end.217:                                     ; preds = %cond.end.215, %cond.true.209
  %cond218 = phi double [ 2.550000e+02, %cond.true.209 ], [ %cond216, %cond.end.215 ]
  %conv219 = fptoui double %cond218 to i8
  %181 = load i8*, i8** %pixel.addr, align 8
  %arrayidx220 = getelementptr inbounds i8, i8* %181, i64 1
  store i8 %conv219, i8* %arrayidx220, align 1
  br label %if.end

if.else:                                          ; preds = %sw.bb.51
  %182 = load i8*, i8** %pixel.addr, align 8
  %arrayidx221 = getelementptr inbounds i8, i8* %182, i64 1
  store i8 0, i8* %arrayidx221, align 1
  %183 = load i8*, i8** %pixel.addr, align 8
  %arrayidx222 = getelementptr inbounds i8, i8* %183, i64 0
  store i8 0, i8* %arrayidx222, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end.217
  br label %sw.epilog

sw.bb.223:                                        ; preds = %entry
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.223
  %184 = load i32, i32* %b, align 4
  %cmp224 = icmp slt i32 %184, 3
  br i1 %cmp224, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %185 = load double, double* %xfrac.addr, align 8
  %186 = load i32, i32* %b, align 4
  %idxprom = sext i32 %186 to i64
  %187 = load i8*, i8** %s0, align 8
  %arrayidx226 = getelementptr inbounds i8, i8* %187, i64 %idxprom
  %188 = load i8, i8* %arrayidx226, align 1
  %conv227 = uitofp i8 %188 to double
  %189 = load i32, i32* %b, align 4
  %add = add nsw i32 3, %189
  %idxprom228 = sext i32 %add to i64
  %190 = load i8*, i8** %s0, align 8
  %arrayidx229 = getelementptr inbounds i8, i8* %190, i64 %idxprom228
  %191 = load i8, i8* %arrayidx229, align 1
  %conv230 = uitofp i8 %191 to double
  %192 = load i32, i32* %b, align 4
  %add231 = add nsw i32 6, %192
  %idxprom232 = sext i32 %add231 to i64
  %193 = load i8*, i8** %s0, align 8
  %arrayidx233 = getelementptr inbounds i8, i8* %193, i64 %idxprom232
  %194 = load i8, i8* %arrayidx233, align 1
  %conv234 = uitofp i8 %194 to double
  %195 = load i32, i32* %b, align 4
  %add235 = add nsw i32 9, %195
  %idxprom236 = sext i32 %add235 to i64
  %196 = load i8*, i8** %s0, align 8
  %arrayidx237 = getelementptr inbounds i8, i8* %196, i64 %idxprom236
  %197 = load i8, i8* %arrayidx237, align 1
  %conv238 = uitofp i8 %197 to double
  %call239 = call double @cubic_spline_fit(double %185, double %conv227, double %conv230, double %conv234, double %conv238)
  store double %call239, double* %p0, align 8
  %198 = load double, double* %xfrac.addr, align 8
  %199 = load i32, i32* %b, align 4
  %idxprom240 = sext i32 %199 to i64
  %200 = load i8*, i8** %s1, align 8
  %arrayidx241 = getelementptr inbounds i8, i8* %200, i64 %idxprom240
  %201 = load i8, i8* %arrayidx241, align 1
  %conv242 = uitofp i8 %201 to double
  %202 = load i32, i32* %b, align 4
  %add243 = add nsw i32 3, %202
  %idxprom244 = sext i32 %add243 to i64
  %203 = load i8*, i8** %s1, align 8
  %arrayidx245 = getelementptr inbounds i8, i8* %203, i64 %idxprom244
  %204 = load i8, i8* %arrayidx245, align 1
  %conv246 = uitofp i8 %204 to double
  %205 = load i32, i32* %b, align 4
  %add247 = add nsw i32 6, %205
  %idxprom248 = sext i32 %add247 to i64
  %206 = load i8*, i8** %s1, align 8
  %arrayidx249 = getelementptr inbounds i8, i8* %206, i64 %idxprom248
  %207 = load i8, i8* %arrayidx249, align 1
  %conv250 = uitofp i8 %207 to double
  %208 = load i32, i32* %b, align 4
  %add251 = add nsw i32 9, %208
  %idxprom252 = sext i32 %add251 to i64
  %209 = load i8*, i8** %s1, align 8
  %arrayidx253 = getelementptr inbounds i8, i8* %209, i64 %idxprom252
  %210 = load i8, i8* %arrayidx253, align 1
  %conv254 = uitofp i8 %210 to double
  %call255 = call double @cubic_spline_fit(double %198, double %conv242, double %conv246, double %conv250, double %conv254)
  store double %call255, double* %p1, align 8
  %211 = load double, double* %xfrac.addr, align 8
  %212 = load i32, i32* %b, align 4
  %idxprom256 = sext i32 %212 to i64
  %213 = load i8*, i8** %s2, align 8
  %arrayidx257 = getelementptr inbounds i8, i8* %213, i64 %idxprom256
  %214 = load i8, i8* %arrayidx257, align 1
  %conv258 = uitofp i8 %214 to double
  %215 = load i32, i32* %b, align 4
  %add259 = add nsw i32 3, %215
  %idxprom260 = sext i32 %add259 to i64
  %216 = load i8*, i8** %s2, align 8
  %arrayidx261 = getelementptr inbounds i8, i8* %216, i64 %idxprom260
  %217 = load i8, i8* %arrayidx261, align 1
  %conv262 = uitofp i8 %217 to double
  %218 = load i32, i32* %b, align 4
  %add263 = add nsw i32 6, %218
  %idxprom264 = sext i32 %add263 to i64
  %219 = load i8*, i8** %s2, align 8
  %arrayidx265 = getelementptr inbounds i8, i8* %219, i64 %idxprom264
  %220 = load i8, i8* %arrayidx265, align 1
  %conv266 = uitofp i8 %220 to double
  %221 = load i32, i32* %b, align 4
  %add267 = add nsw i32 9, %221
  %idxprom268 = sext i32 %add267 to i64
  %222 = load i8*, i8** %s2, align 8
  %arrayidx269 = getelementptr inbounds i8, i8* %222, i64 %idxprom268
  %223 = load i8, i8* %arrayidx269, align 1
  %conv270 = uitofp i8 %223 to double
  %call271 = call double @cubic_spline_fit(double %211, double %conv258, double %conv262, double %conv266, double %conv270)
  store double %call271, double* %p2, align 8
  %224 = load double, double* %xfrac.addr, align 8
  %225 = load i32, i32* %b, align 4
  %idxprom272 = sext i32 %225 to i64
  %226 = load i8*, i8** %s3, align 8
  %arrayidx273 = getelementptr inbounds i8, i8* %226, i64 %idxprom272
  %227 = load i8, i8* %arrayidx273, align 1
  %conv274 = uitofp i8 %227 to double
  %228 = load i32, i32* %b, align 4
  %add275 = add nsw i32 3, %228
  %idxprom276 = sext i32 %add275 to i64
  %229 = load i8*, i8** %s3, align 8
  %arrayidx277 = getelementptr inbounds i8, i8* %229, i64 %idxprom276
  %230 = load i8, i8* %arrayidx277, align 1
  %conv278 = uitofp i8 %230 to double
  %231 = load i32, i32* %b, align 4
  %add279 = add nsw i32 6, %231
  %idxprom280 = sext i32 %add279 to i64
  %232 = load i8*, i8** %s3, align 8
  %arrayidx281 = getelementptr inbounds i8, i8* %232, i64 %idxprom280
  %233 = load i8, i8* %arrayidx281, align 1
  %conv282 = uitofp i8 %233 to double
  %234 = load i32, i32* %b, align 4
  %add283 = add nsw i32 9, %234
  %idxprom284 = sext i32 %add283 to i64
  %235 = load i8*, i8** %s3, align 8
  %arrayidx285 = getelementptr inbounds i8, i8* %235, i64 %idxprom284
  %236 = load i8, i8* %arrayidx285, align 1
  %conv286 = uitofp i8 %236 to double
  %call287 = call double @cubic_spline_fit(double %224, double %conv274, double %conv278, double %conv282, double %conv286)
  store double %call287, double* %p3, align 8
  %237 = load double, double* %yfrac.addr, align 8
  %238 = load double, double* %p0, align 8
  %239 = load double, double* %p1, align 8
  %240 = load double, double* %p2, align 8
  %241 = load double, double* %p3, align 8
  %call288 = call double @cubic_spline_fit(double %237, double %238, double %239, double %240, double %241)
  %call289 = call double @rint(double %call288) #8
  store double %call289, double* %sum, align 8
  %242 = load double, double* %sum, align 8
  %cmp290 = fcmp ogt double %242, 2.550000e+02
  br i1 %cmp290, label %cond.true.292, label %cond.false.293

cond.true.292:                                    ; preds = %for.body
  br label %cond.end.300

cond.false.293:                                   ; preds = %for.body
  %243 = load double, double* %sum, align 8
  %cmp294 = fcmp olt double %243, 0.000000e+00
  br i1 %cmp294, label %cond.true.296, label %cond.false.297

cond.true.296:                                    ; preds = %cond.false.293
  br label %cond.end.298

cond.false.297:                                   ; preds = %cond.false.293
  %244 = load double, double* %sum, align 8
  br label %cond.end.298

cond.end.298:                                     ; preds = %cond.false.297, %cond.true.296
  %cond299 = phi double [ 0.000000e+00, %cond.true.296 ], [ %244, %cond.false.297 ]
  br label %cond.end.300

cond.end.300:                                     ; preds = %cond.end.298, %cond.true.292
  %cond301 = phi double [ 2.550000e+02, %cond.true.292 ], [ %cond299, %cond.end.298 ]
  %conv302 = fptoui double %cond301 to i8
  %245 = load i32, i32* %b, align 4
  %idxprom303 = sext i32 %245 to i64
  %246 = load i8*, i8** %pixel.addr, align 8
  %arrayidx304 = getelementptr inbounds i8, i8* %246, i64 %idxprom303
  store i8 %conv302, i8* %arrayidx304, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end.300
  %247 = load i32, i32* %b, align 4
  %inc = add nsw i32 %247, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.bb.305:                                        ; preds = %entry
  %248 = load double, double* %xfrac.addr, align 8
  %249 = load i8*, i8** %s0, align 8
  %arrayidx306 = getelementptr inbounds i8, i8* %249, i64 3
  %250 = load i8, i8* %arrayidx306, align 1
  %conv307 = uitofp i8 %250 to double
  %251 = load i8*, i8** %s0, align 8
  %arrayidx308 = getelementptr inbounds i8, i8* %251, i64 7
  %252 = load i8, i8* %arrayidx308, align 1
  %conv309 = uitofp i8 %252 to double
  %253 = load i8*, i8** %s0, align 8
  %arrayidx310 = getelementptr inbounds i8, i8* %253, i64 11
  %254 = load i8, i8* %arrayidx310, align 1
  %conv311 = uitofp i8 %254 to double
  %255 = load i8*, i8** %s0, align 8
  %arrayidx312 = getelementptr inbounds i8, i8* %255, i64 15
  %256 = load i8, i8* %arrayidx312, align 1
  %conv313 = uitofp i8 %256 to double
  %call314 = call double @cubic_spline_fit(double %248, double %conv307, double %conv309, double %conv311, double %conv313)
  store double %call314, double* %p0, align 8
  %257 = load double, double* %xfrac.addr, align 8
  %258 = load i8*, i8** %s1, align 8
  %arrayidx315 = getelementptr inbounds i8, i8* %258, i64 3
  %259 = load i8, i8* %arrayidx315, align 1
  %conv316 = uitofp i8 %259 to double
  %260 = load i8*, i8** %s1, align 8
  %arrayidx317 = getelementptr inbounds i8, i8* %260, i64 7
  %261 = load i8, i8* %arrayidx317, align 1
  %conv318 = uitofp i8 %261 to double
  %262 = load i8*, i8** %s1, align 8
  %arrayidx319 = getelementptr inbounds i8, i8* %262, i64 11
  %263 = load i8, i8* %arrayidx319, align 1
  %conv320 = uitofp i8 %263 to double
  %264 = load i8*, i8** %s1, align 8
  %arrayidx321 = getelementptr inbounds i8, i8* %264, i64 15
  %265 = load i8, i8* %arrayidx321, align 1
  %conv322 = uitofp i8 %265 to double
  %call323 = call double @cubic_spline_fit(double %257, double %conv316, double %conv318, double %conv320, double %conv322)
  store double %call323, double* %p1, align 8
  %266 = load double, double* %xfrac.addr, align 8
  %267 = load i8*, i8** %s2, align 8
  %arrayidx324 = getelementptr inbounds i8, i8* %267, i64 3
  %268 = load i8, i8* %arrayidx324, align 1
  %conv325 = uitofp i8 %268 to double
  %269 = load i8*, i8** %s2, align 8
  %arrayidx326 = getelementptr inbounds i8, i8* %269, i64 7
  %270 = load i8, i8* %arrayidx326, align 1
  %conv327 = uitofp i8 %270 to double
  %271 = load i8*, i8** %s2, align 8
  %arrayidx328 = getelementptr inbounds i8, i8* %271, i64 11
  %272 = load i8, i8* %arrayidx328, align 1
  %conv329 = uitofp i8 %272 to double
  %273 = load i8*, i8** %s2, align 8
  %arrayidx330 = getelementptr inbounds i8, i8* %273, i64 15
  %274 = load i8, i8* %arrayidx330, align 1
  %conv331 = uitofp i8 %274 to double
  %call332 = call double @cubic_spline_fit(double %266, double %conv325, double %conv327, double %conv329, double %conv331)
  store double %call332, double* %p2, align 8
  %275 = load double, double* %xfrac.addr, align 8
  %276 = load i8*, i8** %s3, align 8
  %arrayidx333 = getelementptr inbounds i8, i8* %276, i64 3
  %277 = load i8, i8* %arrayidx333, align 1
  %conv334 = uitofp i8 %277 to double
  %278 = load i8*, i8** %s3, align 8
  %arrayidx335 = getelementptr inbounds i8, i8* %278, i64 7
  %279 = load i8, i8* %arrayidx335, align 1
  %conv336 = uitofp i8 %279 to double
  %280 = load i8*, i8** %s3, align 8
  %arrayidx337 = getelementptr inbounds i8, i8* %280, i64 11
  %281 = load i8, i8* %arrayidx337, align 1
  %conv338 = uitofp i8 %281 to double
  %282 = load i8*, i8** %s3, align 8
  %arrayidx339 = getelementptr inbounds i8, i8* %282, i64 15
  %283 = load i8, i8* %arrayidx339, align 1
  %conv340 = uitofp i8 %283 to double
  %call341 = call double @cubic_spline_fit(double %275, double %conv334, double %conv336, double %conv338, double %conv340)
  store double %call341, double* %p3, align 8
  %284 = load double, double* %yfrac.addr, align 8
  %285 = load double, double* %p0, align 8
  %286 = load double, double* %p1, align 8
  %287 = load double, double* %p2, align 8
  %288 = load double, double* %p3, align 8
  %call342 = call double @cubic_spline_fit(double %284, double %285, double %286, double %287, double %288)
  store double %call342, double* %alphasum, align 8
  %289 = load double, double* %alphasum, align 8
  %cmp343 = fcmp ogt double %289, 0.000000e+00
  br i1 %cmp343, label %if.then.345, label %if.else.518

if.then.345:                                      ; preds = %sw.bb.305
  store i32 0, i32* %b, align 4
  br label %for.cond.346

for.cond.346:                                     ; preds = %for.inc.500, %if.then.345
  %290 = load i32, i32* %b, align 4
  %cmp347 = icmp slt i32 %290, 3
  br i1 %cmp347, label %for.body.349, label %for.end.502

for.body.349:                                     ; preds = %for.cond.346
  %291 = load double, double* %xfrac.addr, align 8
  %292 = load i32, i32* %b, align 4
  %add350 = add nsw i32 0, %292
  %idxprom351 = sext i32 %add350 to i64
  %293 = load i8*, i8** %s0, align 8
  %arrayidx352 = getelementptr inbounds i8, i8* %293, i64 %idxprom351
  %294 = load i8, i8* %arrayidx352, align 1
  %conv353 = zext i8 %294 to i32
  %295 = load i8*, i8** %s0, align 8
  %arrayidx354 = getelementptr inbounds i8, i8* %295, i64 3
  %296 = load i8, i8* %arrayidx354, align 1
  %conv355 = zext i8 %296 to i32
  %mul356 = mul nsw i32 %conv353, %conv355
  %conv357 = sitofp i32 %mul356 to double
  %297 = load i32, i32* %b, align 4
  %add358 = add nsw i32 4, %297
  %idxprom359 = sext i32 %add358 to i64
  %298 = load i8*, i8** %s0, align 8
  %arrayidx360 = getelementptr inbounds i8, i8* %298, i64 %idxprom359
  %299 = load i8, i8* %arrayidx360, align 1
  %conv361 = zext i8 %299 to i32
  %300 = load i8*, i8** %s0, align 8
  %arrayidx362 = getelementptr inbounds i8, i8* %300, i64 7
  %301 = load i8, i8* %arrayidx362, align 1
  %conv363 = zext i8 %301 to i32
  %mul364 = mul nsw i32 %conv361, %conv363
  %conv365 = sitofp i32 %mul364 to double
  %302 = load i32, i32* %b, align 4
  %add366 = add nsw i32 8, %302
  %idxprom367 = sext i32 %add366 to i64
  %303 = load i8*, i8** %s0, align 8
  %arrayidx368 = getelementptr inbounds i8, i8* %303, i64 %idxprom367
  %304 = load i8, i8* %arrayidx368, align 1
  %conv369 = zext i8 %304 to i32
  %305 = load i8*, i8** %s0, align 8
  %arrayidx370 = getelementptr inbounds i8, i8* %305, i64 11
  %306 = load i8, i8* %arrayidx370, align 1
  %conv371 = zext i8 %306 to i32
  %mul372 = mul nsw i32 %conv369, %conv371
  %conv373 = sitofp i32 %mul372 to double
  %307 = load i32, i32* %b, align 4
  %add374 = add nsw i32 12, %307
  %idxprom375 = sext i32 %add374 to i64
  %308 = load i8*, i8** %s0, align 8
  %arrayidx376 = getelementptr inbounds i8, i8* %308, i64 %idxprom375
  %309 = load i8, i8* %arrayidx376, align 1
  %conv377 = zext i8 %309 to i32
  %310 = load i8*, i8** %s0, align 8
  %arrayidx378 = getelementptr inbounds i8, i8* %310, i64 15
  %311 = load i8, i8* %arrayidx378, align 1
  %conv379 = zext i8 %311 to i32
  %mul380 = mul nsw i32 %conv377, %conv379
  %conv381 = sitofp i32 %mul380 to double
  %call382 = call double @cubic_spline_fit(double %291, double %conv357, double %conv365, double %conv373, double %conv381)
  store double %call382, double* %p0, align 8
  %312 = load double, double* %xfrac.addr, align 8
  %313 = load i32, i32* %b, align 4
  %add383 = add nsw i32 0, %313
  %idxprom384 = sext i32 %add383 to i64
  %314 = load i8*, i8** %s1, align 8
  %arrayidx385 = getelementptr inbounds i8, i8* %314, i64 %idxprom384
  %315 = load i8, i8* %arrayidx385, align 1
  %conv386 = zext i8 %315 to i32
  %316 = load i8*, i8** %s1, align 8
  %arrayidx387 = getelementptr inbounds i8, i8* %316, i64 3
  %317 = load i8, i8* %arrayidx387, align 1
  %conv388 = zext i8 %317 to i32
  %mul389 = mul nsw i32 %conv386, %conv388
  %conv390 = sitofp i32 %mul389 to double
  %318 = load i32, i32* %b, align 4
  %add391 = add nsw i32 4, %318
  %idxprom392 = sext i32 %add391 to i64
  %319 = load i8*, i8** %s1, align 8
  %arrayidx393 = getelementptr inbounds i8, i8* %319, i64 %idxprom392
  %320 = load i8, i8* %arrayidx393, align 1
  %conv394 = zext i8 %320 to i32
  %321 = load i8*, i8** %s1, align 8
  %arrayidx395 = getelementptr inbounds i8, i8* %321, i64 7
  %322 = load i8, i8* %arrayidx395, align 1
  %conv396 = zext i8 %322 to i32
  %mul397 = mul nsw i32 %conv394, %conv396
  %conv398 = sitofp i32 %mul397 to double
  %323 = load i32, i32* %b, align 4
  %add399 = add nsw i32 8, %323
  %idxprom400 = sext i32 %add399 to i64
  %324 = load i8*, i8** %s1, align 8
  %arrayidx401 = getelementptr inbounds i8, i8* %324, i64 %idxprom400
  %325 = load i8, i8* %arrayidx401, align 1
  %conv402 = zext i8 %325 to i32
  %326 = load i8*, i8** %s1, align 8
  %arrayidx403 = getelementptr inbounds i8, i8* %326, i64 11
  %327 = load i8, i8* %arrayidx403, align 1
  %conv404 = zext i8 %327 to i32
  %mul405 = mul nsw i32 %conv402, %conv404
  %conv406 = sitofp i32 %mul405 to double
  %328 = load i32, i32* %b, align 4
  %add407 = add nsw i32 12, %328
  %idxprom408 = sext i32 %add407 to i64
  %329 = load i8*, i8** %s1, align 8
  %arrayidx409 = getelementptr inbounds i8, i8* %329, i64 %idxprom408
  %330 = load i8, i8* %arrayidx409, align 1
  %conv410 = zext i8 %330 to i32
  %331 = load i8*, i8** %s1, align 8
  %arrayidx411 = getelementptr inbounds i8, i8* %331, i64 15
  %332 = load i8, i8* %arrayidx411, align 1
  %conv412 = zext i8 %332 to i32
  %mul413 = mul nsw i32 %conv410, %conv412
  %conv414 = sitofp i32 %mul413 to double
  %call415 = call double @cubic_spline_fit(double %312, double %conv390, double %conv398, double %conv406, double %conv414)
  store double %call415, double* %p1, align 8
  %333 = load double, double* %xfrac.addr, align 8
  %334 = load i32, i32* %b, align 4
  %add416 = add nsw i32 0, %334
  %idxprom417 = sext i32 %add416 to i64
  %335 = load i8*, i8** %s2, align 8
  %arrayidx418 = getelementptr inbounds i8, i8* %335, i64 %idxprom417
  %336 = load i8, i8* %arrayidx418, align 1
  %conv419 = zext i8 %336 to i32
  %337 = load i8*, i8** %s2, align 8
  %arrayidx420 = getelementptr inbounds i8, i8* %337, i64 3
  %338 = load i8, i8* %arrayidx420, align 1
  %conv421 = zext i8 %338 to i32
  %mul422 = mul nsw i32 %conv419, %conv421
  %conv423 = sitofp i32 %mul422 to double
  %339 = load i32, i32* %b, align 4
  %add424 = add nsw i32 4, %339
  %idxprom425 = sext i32 %add424 to i64
  %340 = load i8*, i8** %s2, align 8
  %arrayidx426 = getelementptr inbounds i8, i8* %340, i64 %idxprom425
  %341 = load i8, i8* %arrayidx426, align 1
  %conv427 = zext i8 %341 to i32
  %342 = load i8*, i8** %s2, align 8
  %arrayidx428 = getelementptr inbounds i8, i8* %342, i64 7
  %343 = load i8, i8* %arrayidx428, align 1
  %conv429 = zext i8 %343 to i32
  %mul430 = mul nsw i32 %conv427, %conv429
  %conv431 = sitofp i32 %mul430 to double
  %344 = load i32, i32* %b, align 4
  %add432 = add nsw i32 8, %344
  %idxprom433 = sext i32 %add432 to i64
  %345 = load i8*, i8** %s2, align 8
  %arrayidx434 = getelementptr inbounds i8, i8* %345, i64 %idxprom433
  %346 = load i8, i8* %arrayidx434, align 1
  %conv435 = zext i8 %346 to i32
  %347 = load i8*, i8** %s2, align 8
  %arrayidx436 = getelementptr inbounds i8, i8* %347, i64 11
  %348 = load i8, i8* %arrayidx436, align 1
  %conv437 = zext i8 %348 to i32
  %mul438 = mul nsw i32 %conv435, %conv437
  %conv439 = sitofp i32 %mul438 to double
  %349 = load i32, i32* %b, align 4
  %add440 = add nsw i32 12, %349
  %idxprom441 = sext i32 %add440 to i64
  %350 = load i8*, i8** %s2, align 8
  %arrayidx442 = getelementptr inbounds i8, i8* %350, i64 %idxprom441
  %351 = load i8, i8* %arrayidx442, align 1
  %conv443 = zext i8 %351 to i32
  %352 = load i8*, i8** %s2, align 8
  %arrayidx444 = getelementptr inbounds i8, i8* %352, i64 15
  %353 = load i8, i8* %arrayidx444, align 1
  %conv445 = zext i8 %353 to i32
  %mul446 = mul nsw i32 %conv443, %conv445
  %conv447 = sitofp i32 %mul446 to double
  %call448 = call double @cubic_spline_fit(double %333, double %conv423, double %conv431, double %conv439, double %conv447)
  store double %call448, double* %p2, align 8
  %354 = load double, double* %xfrac.addr, align 8
  %355 = load i32, i32* %b, align 4
  %add449 = add nsw i32 0, %355
  %idxprom450 = sext i32 %add449 to i64
  %356 = load i8*, i8** %s3, align 8
  %arrayidx451 = getelementptr inbounds i8, i8* %356, i64 %idxprom450
  %357 = load i8, i8* %arrayidx451, align 1
  %conv452 = zext i8 %357 to i32
  %358 = load i8*, i8** %s3, align 8
  %arrayidx453 = getelementptr inbounds i8, i8* %358, i64 3
  %359 = load i8, i8* %arrayidx453, align 1
  %conv454 = zext i8 %359 to i32
  %mul455 = mul nsw i32 %conv452, %conv454
  %conv456 = sitofp i32 %mul455 to double
  %360 = load i32, i32* %b, align 4
  %add457 = add nsw i32 4, %360
  %idxprom458 = sext i32 %add457 to i64
  %361 = load i8*, i8** %s3, align 8
  %arrayidx459 = getelementptr inbounds i8, i8* %361, i64 %idxprom458
  %362 = load i8, i8* %arrayidx459, align 1
  %conv460 = zext i8 %362 to i32
  %363 = load i8*, i8** %s3, align 8
  %arrayidx461 = getelementptr inbounds i8, i8* %363, i64 7
  %364 = load i8, i8* %arrayidx461, align 1
  %conv462 = zext i8 %364 to i32
  %mul463 = mul nsw i32 %conv460, %conv462
  %conv464 = sitofp i32 %mul463 to double
  %365 = load i32, i32* %b, align 4
  %add465 = add nsw i32 8, %365
  %idxprom466 = sext i32 %add465 to i64
  %366 = load i8*, i8** %s3, align 8
  %arrayidx467 = getelementptr inbounds i8, i8* %366, i64 %idxprom466
  %367 = load i8, i8* %arrayidx467, align 1
  %conv468 = zext i8 %367 to i32
  %368 = load i8*, i8** %s3, align 8
  %arrayidx469 = getelementptr inbounds i8, i8* %368, i64 11
  %369 = load i8, i8* %arrayidx469, align 1
  %conv470 = zext i8 %369 to i32
  %mul471 = mul nsw i32 %conv468, %conv470
  %conv472 = sitofp i32 %mul471 to double
  %370 = load i32, i32* %b, align 4
  %add473 = add nsw i32 12, %370
  %idxprom474 = sext i32 %add473 to i64
  %371 = load i8*, i8** %s3, align 8
  %arrayidx475 = getelementptr inbounds i8, i8* %371, i64 %idxprom474
  %372 = load i8, i8* %arrayidx475, align 1
  %conv476 = zext i8 %372 to i32
  %373 = load i8*, i8** %s3, align 8
  %arrayidx477 = getelementptr inbounds i8, i8* %373, i64 15
  %374 = load i8, i8* %arrayidx477, align 1
  %conv478 = zext i8 %374 to i32
  %mul479 = mul nsw i32 %conv476, %conv478
  %conv480 = sitofp i32 %mul479 to double
  %call481 = call double @cubic_spline_fit(double %354, double %conv456, double %conv464, double %conv472, double %conv480)
  store double %call481, double* %p3, align 8
  %375 = load double, double* %yfrac.addr, align 8
  %376 = load double, double* %p0, align 8
  %377 = load double, double* %p1, align 8
  %378 = load double, double* %p2, align 8
  %379 = load double, double* %p3, align 8
  %call482 = call double @cubic_spline_fit(double %375, double %376, double %377, double %378, double %379)
  store double %call482, double* %sum, align 8
  %380 = load double, double* %sum, align 8
  %381 = load double, double* %alphasum, align 8
  %div483 = fdiv double %380, %381
  %call484 = call double @rint(double %div483) #8
  store double %call484, double* %sum, align 8
  %382 = load double, double* %sum, align 8
  %cmp485 = fcmp ogt double %382, 2.550000e+02
  br i1 %cmp485, label %cond.true.487, label %cond.false.488

cond.true.487:                                    ; preds = %for.body.349
  br label %cond.end.495

cond.false.488:                                   ; preds = %for.body.349
  %383 = load double, double* %sum, align 8
  %cmp489 = fcmp olt double %383, 0.000000e+00
  br i1 %cmp489, label %cond.true.491, label %cond.false.492

cond.true.491:                                    ; preds = %cond.false.488
  br label %cond.end.493

cond.false.492:                                   ; preds = %cond.false.488
  %384 = load double, double* %sum, align 8
  br label %cond.end.493

cond.end.493:                                     ; preds = %cond.false.492, %cond.true.491
  %cond494 = phi double [ 0.000000e+00, %cond.true.491 ], [ %384, %cond.false.492 ]
  br label %cond.end.495

cond.end.495:                                     ; preds = %cond.end.493, %cond.true.487
  %cond496 = phi double [ 2.550000e+02, %cond.true.487 ], [ %cond494, %cond.end.493 ]
  %conv497 = fptoui double %cond496 to i8
  %385 = load i32, i32* %b, align 4
  %idxprom498 = sext i32 %385 to i64
  %386 = load i8*, i8** %pixel.addr, align 8
  %arrayidx499 = getelementptr inbounds i8, i8* %386, i64 %idxprom498
  store i8 %conv497, i8* %arrayidx499, align 1
  br label %for.inc.500

for.inc.500:                                      ; preds = %cond.end.495
  %387 = load i32, i32* %b, align 4
  %inc501 = add nsw i32 %387, 1
  store i32 %inc501, i32* %b, align 4
  br label %for.cond.346

for.end.502:                                      ; preds = %for.cond.346
  %388 = load double, double* %alphasum, align 8
  %call503 = call double @rint(double %388) #8
  store double %call503, double* %alphasum, align 8
  %389 = load double, double* %alphasum, align 8
  %cmp504 = fcmp ogt double %389, 2.550000e+02
  br i1 %cmp504, label %cond.true.506, label %cond.false.507

cond.true.506:                                    ; preds = %for.end.502
  br label %cond.end.514

cond.false.507:                                   ; preds = %for.end.502
  %390 = load double, double* %alphasum, align 8
  %cmp508 = fcmp olt double %390, 0.000000e+00
  br i1 %cmp508, label %cond.true.510, label %cond.false.511

cond.true.510:                                    ; preds = %cond.false.507
  br label %cond.end.512

cond.false.511:                                   ; preds = %cond.false.507
  %391 = load double, double* %alphasum, align 8
  br label %cond.end.512

cond.end.512:                                     ; preds = %cond.false.511, %cond.true.510
  %cond513 = phi double [ 0.000000e+00, %cond.true.510 ], [ %391, %cond.false.511 ]
  br label %cond.end.514

cond.end.514:                                     ; preds = %cond.end.512, %cond.true.506
  %cond515 = phi double [ 2.550000e+02, %cond.true.506 ], [ %cond513, %cond.end.512 ]
  %conv516 = fptoui double %cond515 to i8
  %392 = load i8*, i8** %pixel.addr, align 8
  %arrayidx517 = getelementptr inbounds i8, i8* %392, i64 3
  store i8 %conv516, i8* %arrayidx517, align 1
  br label %if.end.523

if.else.518:                                      ; preds = %sw.bb.305
  %393 = load i8*, i8** %pixel.addr, align 8
  %arrayidx519 = getelementptr inbounds i8, i8* %393, i64 3
  store i8 0, i8* %arrayidx519, align 1
  %394 = load i8*, i8** %pixel.addr, align 8
  %arrayidx520 = getelementptr inbounds i8, i8* %394, i64 2
  store i8 0, i8* %arrayidx520, align 1
  %395 = load i8*, i8** %pixel.addr, align 8
  %arrayidx521 = getelementptr inbounds i8, i8* %395, i64 1
  store i8 0, i8* %arrayidx521, align 1
  %396 = load i8*, i8** %pixel.addr, align 8
  %arrayidx522 = getelementptr inbounds i8, i8* %396, i64 0
  store i8 0, i8* %arrayidx522, align 1
  br label %if.end.523

if.end.523:                                       ; preds = %if.else.518, %cond.end.514
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end.523, %for.end, %if.end, %cond.end.47
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @interpolate_lanczos3(%struct._PixelSurround* %surround, i32 %x0, i32 %y0, double %xfrac, double %yfrac, i32 %bytes, i8* %pixel, float* %kernel_lookup) #0 {
entry:
  %surround.addr = alloca %struct._PixelSurround*, align 8
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %xfrac.addr = alloca double, align 8
  %yfrac.addr = alloca double, align 8
  %bytes.addr = alloca i32, align 4
  %pixel.addr = alloca i8*, align 8
  %kernel_lookup.addr = alloca float*, align 8
  %stride = alloca i32, align 4
  %src = alloca i8*, align 8
  %x_shift = alloca i32, align 4
  %y_shift = alloca i32, align 4
  %b = alloca i32, align 4
  %i = alloca i32, align 4
  %kx_sum = alloca double, align 8
  %ky_sum = alloca double, align 8
  %x_kernel = alloca [6 x double], align 16
  %y_kernel = alloca [6 x double], align 16
  %sum = alloca double, align 8
  %alphasum = alloca double, align 8
  %pos = alloca i32, align 4
  store %struct._PixelSurround* %surround, %struct._PixelSurround** %surround.addr, align 8
  store i32 %x0, i32* %x0.addr, align 4
  store i32 %y0, i32* %y0.addr, align 4
  store double %xfrac, double* %xfrac.addr, align 8
  store double %yfrac, double* %yfrac.addr, align 8
  store i32 %bytes, i32* %bytes.addr, align 4
  store i8* %pixel, i8** %pixel.addr, align 8
  store float* %kernel_lookup, float** %kernel_lookup.addr, align 8
  %0 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %1 = load i32, i32* %x0.addr, align 4
  %sub = sub nsw i32 %1, 2
  %2 = load i32, i32* %y0.addr, align 4
  %sub1 = sub nsw i32 %2, 2
  %call = call i8* @pixel_surround_lock(%struct._PixelSurround* %0, i32 %sub, i32 %sub1, i32* %stride)
  store i8* %call, i8** %src, align 8
  %3 = load double, double* %xfrac.addr, align 8
  %mul = fmul double %3, 4.000000e+03
  %add = fadd double %mul, 5.000000e-01
  %conv = fptosi double %add to i32
  store i32 %conv, i32* %x_shift, align 4
  %4 = load double, double* %yfrac.addr, align 8
  %mul2 = fmul double %4, 4.000000e+03
  %add3 = fadd double %mul2, 5.000000e-01
  %conv4 = fptosi double %add3 to i32
  store i32 %conv4, i32* %y_shift, align 4
  store double 0.000000e+00, double* %ky_sum, align 8
  store double 0.000000e+00, double* %kx_sum, align 8
  store i32 3, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %5, -2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %mul6 = mul nsw i32 %6, 4000
  store i32 %mul6, i32* %pos, align 4
  %7 = load i32, i32* %x_shift, align 4
  %8 = load i32, i32* %pos, align 4
  %sub7 = sub nsw i32 %7, %8
  %cmp8 = icmp slt i32 %sub7, 0
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %9 = load i32, i32* %x_shift, align 4
  %10 = load i32, i32* %pos, align 4
  %sub10 = sub nsw i32 %9, %10
  %sub11 = sub nsw i32 0, %sub10
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %11 = load i32, i32* %x_shift, align 4
  %12 = load i32, i32* %pos, align 4
  %sub12 = sub nsw i32 %11, %12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub11, %cond.true ], [ %sub12, %cond.false ]
  %idxprom = sext i32 %cond to i64
  %13 = load float*, float** %kernel_lookup.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %13, i64 %idxprom
  %14 = load float, float* %arrayidx, align 4
  %conv13 = fpext float %14 to double
  %15 = load i32, i32* %i, align 4
  %add14 = add nsw i32 2, %15
  %idxprom15 = sext i32 %add14 to i64
  %arrayidx16 = getelementptr inbounds [6 x double], [6 x double]* %x_kernel, i32 0, i64 %idxprom15
  store double %conv13, double* %arrayidx16, align 8
  %16 = load double, double* %kx_sum, align 8
  %add17 = fadd double %16, %conv13
  store double %add17, double* %kx_sum, align 8
  %17 = load i32, i32* %y_shift, align 4
  %18 = load i32, i32* %pos, align 4
  %sub18 = sub nsw i32 %17, %18
  %cmp19 = icmp slt i32 %sub18, 0
  br i1 %cmp19, label %cond.true.21, label %cond.false.24

cond.true.21:                                     ; preds = %cond.end
  %19 = load i32, i32* %y_shift, align 4
  %20 = load i32, i32* %pos, align 4
  %sub22 = sub nsw i32 %19, %20
  %sub23 = sub nsw i32 0, %sub22
  br label %cond.end.26

cond.false.24:                                    ; preds = %cond.end
  %21 = load i32, i32* %y_shift, align 4
  %22 = load i32, i32* %pos, align 4
  %sub25 = sub nsw i32 %21, %22
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.24, %cond.true.21
  %cond27 = phi i32 [ %sub23, %cond.true.21 ], [ %sub25, %cond.false.24 ]
  %idxprom28 = sext i32 %cond27 to i64
  %23 = load float*, float** %kernel_lookup.addr, align 8
  %arrayidx29 = getelementptr inbounds float, float* %23, i64 %idxprom28
  %24 = load float, float* %arrayidx29, align 4
  %conv30 = fpext float %24 to double
  %25 = load i32, i32* %i, align 4
  %add31 = add nsw i32 2, %25
  %idxprom32 = sext i32 %add31 to i64
  %arrayidx33 = getelementptr inbounds [6 x double], [6 x double]* %y_kernel, i32 0, i64 %idxprom32
  store double %conv30, double* %arrayidx33, align 8
  %26 = load double, double* %ky_sum, align 8
  %add34 = fadd double %26, %conv30
  store double %add34, double* %ky_sum, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end.26
  %27 = load i32, i32* %i, align 4
  %dec = add nsw i32 %27, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -2, i32* %i, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.46, %for.end
  %28 = load i32, i32* %i, align 4
  %cmp36 = icmp sle i32 %28, 3
  br i1 %cmp36, label %for.body.38, label %for.end.47

for.body.38:                                      ; preds = %for.cond.35
  %29 = load double, double* %kx_sum, align 8
  %30 = load i32, i32* %i, align 4
  %add39 = add nsw i32 2, %30
  %idxprom40 = sext i32 %add39 to i64
  %arrayidx41 = getelementptr inbounds [6 x double], [6 x double]* %x_kernel, i32 0, i64 %idxprom40
  %31 = load double, double* %arrayidx41, align 8
  %div = fdiv double %31, %29
  store double %div, double* %arrayidx41, align 8
  %32 = load double, double* %ky_sum, align 8
  %33 = load i32, i32* %i, align 4
  %add42 = add nsw i32 2, %33
  %idxprom43 = sext i32 %add42 to i64
  %arrayidx44 = getelementptr inbounds [6 x double], [6 x double]* %y_kernel, i32 0, i64 %idxprom43
  %34 = load double, double* %arrayidx44, align 8
  %div45 = fdiv double %34, %32
  store double %div45, double* %arrayidx44, align 8
  br label %for.inc.46

for.inc.46:                                       ; preds = %for.body.38
  %35 = load i32, i32* %i, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.35

for.end.47:                                       ; preds = %for.cond.35
  %36 = load i32, i32* %bytes.addr, align 4
  switch i32 %36, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.65
    i32 3, label %sw.bb.107
    i32 4, label %sw.bb.134
  ]

sw.bb:                                            ; preds = %for.end.47
  %37 = load i8*, i8** %src, align 8
  %arraydecay = getelementptr inbounds [6 x double], [6 x double]* %x_kernel, i32 0, i32 0
  %arraydecay48 = getelementptr inbounds [6 x double], [6 x double]* %y_kernel, i32 0, i32 0
  %38 = load i32, i32* %stride, align 4
  %call49 = call double @lanczos3_mul(i8* %37, double* %arraydecay, double* %arraydecay48, i32 %38, i32 1, i32 0)
  %call50 = call double @rint(double %call49) #8
  store double %call50, double* %sum, align 8
  %39 = load double, double* %sum, align 8
  %cmp51 = fcmp ogt double %39, 2.550000e+02
  br i1 %cmp51, label %cond.true.53, label %cond.false.54

cond.true.53:                                     ; preds = %sw.bb
  br label %cond.end.61

cond.false.54:                                    ; preds = %sw.bb
  %40 = load double, double* %sum, align 8
  %cmp55 = fcmp olt double %40, 0.000000e+00
  br i1 %cmp55, label %cond.true.57, label %cond.false.58

cond.true.57:                                     ; preds = %cond.false.54
  br label %cond.end.59

cond.false.58:                                    ; preds = %cond.false.54
  %41 = load double, double* %sum, align 8
  br label %cond.end.59

cond.end.59:                                      ; preds = %cond.false.58, %cond.true.57
  %cond60 = phi double [ 0.000000e+00, %cond.true.57 ], [ %41, %cond.false.58 ]
  br label %cond.end.61

cond.end.61:                                      ; preds = %cond.end.59, %cond.true.53
  %cond62 = phi double [ 2.550000e+02, %cond.true.53 ], [ %cond60, %cond.end.59 ]
  %conv63 = fptoui double %cond62 to i8
  %42 = load i8*, i8** %pixel.addr, align 8
  %arrayidx64 = getelementptr inbounds i8, i8* %42, i64 0
  store i8 %conv63, i8* %arrayidx64, align 1
  br label %sw.epilog

sw.bb.65:                                         ; preds = %for.end.47
  %43 = load i8*, i8** %src, align 8
  %arraydecay66 = getelementptr inbounds [6 x double], [6 x double]* %x_kernel, i32 0, i32 0
  %arraydecay67 = getelementptr inbounds [6 x double], [6 x double]* %y_kernel, i32 0, i32 0
  %44 = load i32, i32* %stride, align 4
  %call68 = call double @lanczos3_mul(i8* %43, double* %arraydecay66, double* %arraydecay67, i32 %44, i32 2, i32 1)
  store double %call68, double* %alphasum, align 8
  %45 = load double, double* %alphasum, align 8
  %cmp69 = fcmp ogt double %45, 0.000000e+00
  br i1 %cmp69, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.65
  %46 = load i8*, i8** %src, align 8
  %arraydecay71 = getelementptr inbounds [6 x double], [6 x double]* %x_kernel, i32 0, i32 0
  %arraydecay72 = getelementptr inbounds [6 x double], [6 x double]* %y_kernel, i32 0, i32 0
  %47 = load i32, i32* %stride, align 4
  %call73 = call double @lanczos3_mul_alpha(i8* %46, double* %arraydecay71, double* %arraydecay72, i32 %47, i32 2, i32 0)
  store double %call73, double* %sum, align 8
  %48 = load double, double* %sum, align 8
  %49 = load double, double* %alphasum, align 8
  %div74 = fdiv double %48, %49
  %call75 = call double @rint(double %div74) #8
  store double %call75, double* %sum, align 8
  %50 = load double, double* %sum, align 8
  %cmp76 = fcmp ogt double %50, 2.550000e+02
  br i1 %cmp76, label %cond.true.78, label %cond.false.79

cond.true.78:                                     ; preds = %if.then
  br label %cond.end.86

cond.false.79:                                    ; preds = %if.then
  %51 = load double, double* %sum, align 8
  %cmp80 = fcmp olt double %51, 0.000000e+00
  br i1 %cmp80, label %cond.true.82, label %cond.false.83

cond.true.82:                                     ; preds = %cond.false.79
  br label %cond.end.84

cond.false.83:                                    ; preds = %cond.false.79
  %52 = load double, double* %sum, align 8
  br label %cond.end.84

cond.end.84:                                      ; preds = %cond.false.83, %cond.true.82
  %cond85 = phi double [ 0.000000e+00, %cond.true.82 ], [ %52, %cond.false.83 ]
  br label %cond.end.86

cond.end.86:                                      ; preds = %cond.end.84, %cond.true.78
  %cond87 = phi double [ 2.550000e+02, %cond.true.78 ], [ %cond85, %cond.end.84 ]
  %conv88 = fptoui double %cond87 to i8
  %53 = load i8*, i8** %pixel.addr, align 8
  %arrayidx89 = getelementptr inbounds i8, i8* %53, i64 0
  store i8 %conv88, i8* %arrayidx89, align 1
  %54 = load double, double* %alphasum, align 8
  %call90 = call double @rint(double %54) #8
  store double %call90, double* %alphasum, align 8
  %55 = load double, double* %alphasum, align 8
  %cmp91 = fcmp ogt double %55, 2.550000e+02
  br i1 %cmp91, label %cond.true.93, label %cond.false.94

cond.true.93:                                     ; preds = %cond.end.86
  br label %cond.end.101

cond.false.94:                                    ; preds = %cond.end.86
  %56 = load double, double* %alphasum, align 8
  %cmp95 = fcmp olt double %56, 0.000000e+00
  br i1 %cmp95, label %cond.true.97, label %cond.false.98

cond.true.97:                                     ; preds = %cond.false.94
  br label %cond.end.99

cond.false.98:                                    ; preds = %cond.false.94
  %57 = load double, double* %alphasum, align 8
  br label %cond.end.99

cond.end.99:                                      ; preds = %cond.false.98, %cond.true.97
  %cond100 = phi double [ 0.000000e+00, %cond.true.97 ], [ %57, %cond.false.98 ]
  br label %cond.end.101

cond.end.101:                                     ; preds = %cond.end.99, %cond.true.93
  %cond102 = phi double [ 2.550000e+02, %cond.true.93 ], [ %cond100, %cond.end.99 ]
  %conv103 = fptoui double %cond102 to i8
  %58 = load i8*, i8** %pixel.addr, align 8
  %arrayidx104 = getelementptr inbounds i8, i8* %58, i64 1
  store i8 %conv103, i8* %arrayidx104, align 1
  br label %if.end

if.else:                                          ; preds = %sw.bb.65
  %59 = load i8*, i8** %pixel.addr, align 8
  %arrayidx105 = getelementptr inbounds i8, i8* %59, i64 1
  store i8 0, i8* %arrayidx105, align 1
  %60 = load i8*, i8** %pixel.addr, align 8
  %arrayidx106 = getelementptr inbounds i8, i8* %60, i64 0
  store i8 0, i8* %arrayidx106, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end.101
  br label %sw.epilog

sw.bb.107:                                        ; preds = %for.end.47
  store i32 0, i32* %b, align 4
  br label %for.cond.108

for.cond.108:                                     ; preds = %for.inc.131, %sw.bb.107
  %61 = load i32, i32* %b, align 4
  %cmp109 = icmp slt i32 %61, 3
  br i1 %cmp109, label %for.body.111, label %for.end.133

for.body.111:                                     ; preds = %for.cond.108
  %62 = load i8*, i8** %src, align 8
  %arraydecay112 = getelementptr inbounds [6 x double], [6 x double]* %x_kernel, i32 0, i32 0
  %arraydecay113 = getelementptr inbounds [6 x double], [6 x double]* %y_kernel, i32 0, i32 0
  %63 = load i32, i32* %stride, align 4
  %64 = load i32, i32* %b, align 4
  %call114 = call double @lanczos3_mul(i8* %62, double* %arraydecay112, double* %arraydecay113, i32 %63, i32 3, i32 %64)
  %call115 = call double @rint(double %call114) #8
  store double %call115, double* %sum, align 8
  %65 = load double, double* %sum, align 8
  %cmp116 = fcmp ogt double %65, 2.550000e+02
  br i1 %cmp116, label %cond.true.118, label %cond.false.119

cond.true.118:                                    ; preds = %for.body.111
  br label %cond.end.126

cond.false.119:                                   ; preds = %for.body.111
  %66 = load double, double* %sum, align 8
  %cmp120 = fcmp olt double %66, 0.000000e+00
  br i1 %cmp120, label %cond.true.122, label %cond.false.123

cond.true.122:                                    ; preds = %cond.false.119
  br label %cond.end.124

cond.false.123:                                   ; preds = %cond.false.119
  %67 = load double, double* %sum, align 8
  br label %cond.end.124

cond.end.124:                                     ; preds = %cond.false.123, %cond.true.122
  %cond125 = phi double [ 0.000000e+00, %cond.true.122 ], [ %67, %cond.false.123 ]
  br label %cond.end.126

cond.end.126:                                     ; preds = %cond.end.124, %cond.true.118
  %cond127 = phi double [ 2.550000e+02, %cond.true.118 ], [ %cond125, %cond.end.124 ]
  %conv128 = fptoui double %cond127 to i8
  %68 = load i32, i32* %b, align 4
  %idxprom129 = sext i32 %68 to i64
  %69 = load i8*, i8** %pixel.addr, align 8
  %arrayidx130 = getelementptr inbounds i8, i8* %69, i64 %idxprom129
  store i8 %conv128, i8* %arrayidx130, align 1
  br label %for.inc.131

for.inc.131:                                      ; preds = %cond.end.126
  %70 = load i32, i32* %b, align 4
  %inc132 = add nsw i32 %70, 1
  store i32 %inc132, i32* %b, align 4
  br label %for.cond.108

for.end.133:                                      ; preds = %for.cond.108
  br label %sw.epilog

sw.bb.134:                                        ; preds = %for.end.47
  %71 = load i8*, i8** %src, align 8
  %arraydecay135 = getelementptr inbounds [6 x double], [6 x double]* %x_kernel, i32 0, i32 0
  %arraydecay136 = getelementptr inbounds [6 x double], [6 x double]* %y_kernel, i32 0, i32 0
  %72 = load i32, i32* %stride, align 4
  %call137 = call double @lanczos3_mul(i8* %71, double* %arraydecay135, double* %arraydecay136, i32 %72, i32 4, i32 3)
  store double %call137, double* %alphasum, align 8
  %73 = load double, double* %alphasum, align 8
  %cmp138 = fcmp ogt double %73, 0.000000e+00
  br i1 %cmp138, label %if.then.140, label %if.else.183

if.then.140:                                      ; preds = %sw.bb.134
  store i32 0, i32* %b, align 4
  br label %for.cond.141

for.cond.141:                                     ; preds = %for.inc.165, %if.then.140
  %74 = load i32, i32* %b, align 4
  %cmp142 = icmp slt i32 %74, 3
  br i1 %cmp142, label %for.body.144, label %for.end.167

for.body.144:                                     ; preds = %for.cond.141
  %75 = load i8*, i8** %src, align 8
  %arraydecay145 = getelementptr inbounds [6 x double], [6 x double]* %x_kernel, i32 0, i32 0
  %arraydecay146 = getelementptr inbounds [6 x double], [6 x double]* %y_kernel, i32 0, i32 0
  %76 = load i32, i32* %stride, align 4
  %77 = load i32, i32* %b, align 4
  %call147 = call double @lanczos3_mul_alpha(i8* %75, double* %arraydecay145, double* %arraydecay146, i32 %76, i32 4, i32 %77)
  store double %call147, double* %sum, align 8
  %78 = load double, double* %sum, align 8
  %79 = load double, double* %alphasum, align 8
  %div148 = fdiv double %78, %79
  %call149 = call double @rint(double %div148) #8
  store double %call149, double* %sum, align 8
  %80 = load double, double* %sum, align 8
  %cmp150 = fcmp ogt double %80, 2.550000e+02
  br i1 %cmp150, label %cond.true.152, label %cond.false.153

cond.true.152:                                    ; preds = %for.body.144
  br label %cond.end.160

cond.false.153:                                   ; preds = %for.body.144
  %81 = load double, double* %sum, align 8
  %cmp154 = fcmp olt double %81, 0.000000e+00
  br i1 %cmp154, label %cond.true.156, label %cond.false.157

cond.true.156:                                    ; preds = %cond.false.153
  br label %cond.end.158

cond.false.157:                                   ; preds = %cond.false.153
  %82 = load double, double* %sum, align 8
  br label %cond.end.158

cond.end.158:                                     ; preds = %cond.false.157, %cond.true.156
  %cond159 = phi double [ 0.000000e+00, %cond.true.156 ], [ %82, %cond.false.157 ]
  br label %cond.end.160

cond.end.160:                                     ; preds = %cond.end.158, %cond.true.152
  %cond161 = phi double [ 2.550000e+02, %cond.true.152 ], [ %cond159, %cond.end.158 ]
  %conv162 = fptoui double %cond161 to i8
  %83 = load i32, i32* %b, align 4
  %idxprom163 = sext i32 %83 to i64
  %84 = load i8*, i8** %pixel.addr, align 8
  %arrayidx164 = getelementptr inbounds i8, i8* %84, i64 %idxprom163
  store i8 %conv162, i8* %arrayidx164, align 1
  br label %for.inc.165

for.inc.165:                                      ; preds = %cond.end.160
  %85 = load i32, i32* %b, align 4
  %inc166 = add nsw i32 %85, 1
  store i32 %inc166, i32* %b, align 4
  br label %for.cond.141

for.end.167:                                      ; preds = %for.cond.141
  %86 = load double, double* %alphasum, align 8
  %call168 = call double @rint(double %86) #8
  store double %call168, double* %alphasum, align 8
  %87 = load double, double* %alphasum, align 8
  %cmp169 = fcmp ogt double %87, 2.550000e+02
  br i1 %cmp169, label %cond.true.171, label %cond.false.172

cond.true.171:                                    ; preds = %for.end.167
  br label %cond.end.179

cond.false.172:                                   ; preds = %for.end.167
  %88 = load double, double* %alphasum, align 8
  %cmp173 = fcmp olt double %88, 0.000000e+00
  br i1 %cmp173, label %cond.true.175, label %cond.false.176

cond.true.175:                                    ; preds = %cond.false.172
  br label %cond.end.177

cond.false.176:                                   ; preds = %cond.false.172
  %89 = load double, double* %alphasum, align 8
  br label %cond.end.177

cond.end.177:                                     ; preds = %cond.false.176, %cond.true.175
  %cond178 = phi double [ 0.000000e+00, %cond.true.175 ], [ %89, %cond.false.176 ]
  br label %cond.end.179

cond.end.179:                                     ; preds = %cond.end.177, %cond.true.171
  %cond180 = phi double [ 2.550000e+02, %cond.true.171 ], [ %cond178, %cond.end.177 ]
  %conv181 = fptoui double %cond180 to i8
  %90 = load i8*, i8** %pixel.addr, align 8
  %arrayidx182 = getelementptr inbounds i8, i8* %90, i64 3
  store i8 %conv181, i8* %arrayidx182, align 1
  br label %if.end.188

if.else.183:                                      ; preds = %sw.bb.134
  %91 = load i8*, i8** %pixel.addr, align 8
  %arrayidx184 = getelementptr inbounds i8, i8* %91, i64 3
  store i8 0, i8* %arrayidx184, align 1
  %92 = load i8*, i8** %pixel.addr, align 8
  %arrayidx185 = getelementptr inbounds i8, i8* %92, i64 2
  store i8 0, i8* %arrayidx185, align 1
  %93 = load i8*, i8** %pixel.addr, align 8
  %arrayidx186 = getelementptr inbounds i8, i8* %93, i64 1
  store i8 0, i8* %arrayidx186, align 1
  %94 = load i8*, i8** %pixel.addr, align 8
  %arrayidx187 = getelementptr inbounds i8, i8* %94, i64 0
  store i8 0, i8* %arrayidx187, align 1
  br label %if.end.188

if.end.188:                                       ; preds = %if.else.183, %cond.end.179
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end.47, %if.end.188, %for.end.133, %if.end, %cond.end.61
  ret void
}

declare %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator*) #1

declare void @g_free(i8*) #1

declare void @pixel_surround_destroy(%struct._PixelSurround*) #1

declare void @tile_manager_read_pixel_data_1(%struct._TileManager*, i32, i32, i8*) #1

declare i8* @pixel_surround_lock(%struct._PixelSurround*, i32, i32, i32*) #1

; Function Attrs: nounwind readnone
declare double @rint(double) #4

; Function Attrs: inlinehint nounwind uwtable
define internal double @weighted_sum(double %dx, double %dy, i32 %s00, i32 %s10, i32 %s01, i32 %s11) #3 {
entry:
  %dx.addr = alloca double, align 8
  %dy.addr = alloca double, align 8
  %s00.addr = alloca i32, align 4
  %s10.addr = alloca i32, align 4
  %s01.addr = alloca i32, align 4
  %s11.addr = alloca i32, align 4
  store double %dx, double* %dx.addr, align 8
  store double %dy, double* %dy.addr, align 8
  store i32 %s00, i32* %s00.addr, align 4
  store i32 %s10, i32* %s10.addr, align 4
  store i32 %s01, i32* %s01.addr, align 4
  store i32 %s11, i32* %s11.addr, align 4
  %0 = load double, double* %dy.addr, align 8
  %sub = fsub double 1.000000e+00, %0
  %1 = load double, double* %dx.addr, align 8
  %sub1 = fsub double 1.000000e+00, %1
  %2 = load i32, i32* %s00.addr, align 4
  %conv = sitofp i32 %2 to double
  %mul = fmul double %sub1, %conv
  %3 = load double, double* %dx.addr, align 8
  %4 = load i32, i32* %s10.addr, align 4
  %conv2 = sitofp i32 %4 to double
  %mul3 = fmul double %3, %conv2
  %add = fadd double %mul, %mul3
  %mul4 = fmul double %sub, %add
  %5 = load double, double* %dy.addr, align 8
  %6 = load double, double* %dx.addr, align 8
  %sub5 = fsub double 1.000000e+00, %6
  %7 = load i32, i32* %s01.addr, align 4
  %conv6 = sitofp i32 %7 to double
  %mul7 = fmul double %sub5, %conv6
  %8 = load double, double* %dx.addr, align 8
  %9 = load i32, i32* %s11.addr, align 4
  %conv8 = sitofp i32 %9 to double
  %mul9 = fmul double %8, %conv8
  %add10 = fadd double %mul7, %mul9
  %mul11 = fmul double %5, %add10
  %add12 = fadd double %mul4, %mul11
  ret double %add12
}

; Function Attrs: inlinehint nounwind uwtable
define internal double @cubic_spline_fit(double %dx, double %pt0, double %pt1, double %pt2, double %pt3) #3 {
entry:
  %dx.addr = alloca double, align 8
  %pt0.addr = alloca double, align 8
  %pt1.addr = alloca double, align 8
  %pt2.addr = alloca double, align 8
  %pt3.addr = alloca double, align 8
  store double %dx, double* %dx.addr, align 8
  store double %pt0, double* %pt0.addr, align 8
  store double %pt1, double* %pt1.addr, align 8
  store double %pt2, double* %pt2.addr, align 8
  store double %pt3, double* %pt3.addr, align 8
  %0 = load double, double* %pt0.addr, align 8
  %sub = fsub double -0.000000e+00, %0
  %1 = load double, double* %pt1.addr, align 8
  %mul = fmul double 3.000000e+00, %1
  %add = fadd double %sub, %mul
  %2 = load double, double* %pt2.addr, align 8
  %mul1 = fmul double 3.000000e+00, %2
  %sub2 = fsub double %add, %mul1
  %3 = load double, double* %pt3.addr, align 8
  %add3 = fadd double %sub2, %3
  %4 = load double, double* %dx.addr, align 8
  %mul4 = fmul double %add3, %4
  %5 = load double, double* %pt0.addr, align 8
  %mul5 = fmul double 2.000000e+00, %5
  %6 = load double, double* %pt1.addr, align 8
  %mul6 = fmul double 5.000000e+00, %6
  %sub7 = fsub double %mul5, %mul6
  %7 = load double, double* %pt2.addr, align 8
  %mul8 = fmul double 4.000000e+00, %7
  %add9 = fadd double %sub7, %mul8
  %8 = load double, double* %pt3.addr, align 8
  %sub10 = fsub double %add9, %8
  %add11 = fadd double %mul4, %sub10
  %9 = load double, double* %dx.addr, align 8
  %mul12 = fmul double %add11, %9
  %10 = load double, double* %pt0.addr, align 8
  %sub13 = fsub double -0.000000e+00, %10
  %11 = load double, double* %pt2.addr, align 8
  %add14 = fadd double %sub13, %11
  %add15 = fadd double %mul12, %add14
  %12 = load double, double* %dx.addr, align 8
  %mul16 = fmul double %add15, %12
  %13 = load double, double* %pt1.addr, align 8
  %14 = load double, double* %pt1.addr, align 8
  %add17 = fadd double %13, %14
  %add18 = fadd double %mul16, %add17
  %div = fdiv double %add18, 2.000000e+00
  ret double %div
}

; Function Attrs: inlinehint nounwind uwtable
define internal double @lanczos3_mul(i8* %pixels, double* %x_kernel, double* %y_kernel, i32 %stride, i32 %bytes, i32 %byte) #3 {
entry:
  %pixels.addr = alloca i8*, align 8
  %x_kernel.addr = alloca double*, align 8
  %y_kernel.addr = alloca double*, align 8
  %stride.addr = alloca i32, align 4
  %bytes.addr = alloca i32, align 4
  %byte.addr = alloca i32, align 4
  %row = alloca i8*, align 8
  %sum = alloca double, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %p = alloca i8*, align 8
  %tmpsum = alloca double, align 8
  store i8* %pixels, i8** %pixels.addr, align 8
  store double* %x_kernel, double** %x_kernel.addr, align 8
  store double* %y_kernel, double** %y_kernel.addr, align 8
  store i32 %stride, i32* %stride.addr, align 4
  store i32 %bytes, i32* %bytes.addr, align 4
  store i32 %byte, i32* %byte.addr, align 4
  %0 = load i8*, i8** %pixels.addr, align 8
  store i8* %0, i8** %row, align 8
  store double 0.000000e+00, double* %sum, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.11, %entry
  %1 = load i32, i32* %y, align 4
  %cmp = icmp slt i32 %1, 6
  br i1 %cmp, label %for.body, label %for.end.15

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %row, align 8
  store i8* %2, i8** %p, align 8
  store double 0.000000e+00, double* %tmpsum, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %x, align 4
  %cmp2 = icmp slt i32 %3, 6
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i32, i32* %x, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load double*, double** %x_kernel.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %5, i64 %idxprom
  %6 = load double, double* %arrayidx, align 8
  %7 = load i32, i32* %byte.addr, align 4
  %idxprom4 = sext i32 %7 to i64
  %8 = load i8*, i8** %p, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %idxprom4
  %9 = load i8, i8* %arrayidx5, align 1
  %conv = zext i8 %9 to i32
  %conv6 = sitofp i32 %conv to double
  %mul = fmul double %6, %conv6
  %10 = load double, double* %tmpsum, align 8
  %add = fadd double %10, %mul
  store double %add, double* %tmpsum, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %11 = load i32, i32* %x, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %x, align 4
  %12 = load i32, i32* %bytes.addr, align 4
  %13 = load i8*, i8** %p, align 8
  %idx.ext = sext i32 %12 to i64
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %idx.ext
  store i8* %add.ptr, i8** %p, align 8
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %14 = load i32, i32* %y, align 4
  %idxprom7 = sext i32 %14 to i64
  %15 = load double*, double** %y_kernel.addr, align 8
  %arrayidx8 = getelementptr inbounds double, double* %15, i64 %idxprom7
  %16 = load double, double* %arrayidx8, align 8
  %17 = load double, double* %tmpsum, align 8
  %mul9 = fmul double %17, %16
  store double %mul9, double* %tmpsum, align 8
  %18 = load double, double* %tmpsum, align 8
  %19 = load double, double* %sum, align 8
  %add10 = fadd double %19, %18
  store double %add10, double* %sum, align 8
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.end
  %20 = load i32, i32* %y, align 4
  %inc12 = add nsw i32 %20, 1
  store i32 %inc12, i32* %y, align 4
  %21 = load i32, i32* %stride.addr, align 4
  %22 = load i8*, i8** %row, align 8
  %idx.ext13 = sext i32 %21 to i64
  %add.ptr14 = getelementptr inbounds i8, i8* %22, i64 %idx.ext13
  store i8* %add.ptr14, i8** %row, align 8
  br label %for.cond

for.end.15:                                       ; preds = %for.cond
  %23 = load double, double* %sum, align 8
  ret double %23
}

; Function Attrs: inlinehint nounwind uwtable
define internal double @lanczos3_mul_alpha(i8* %pixels, double* %x_kernel, double* %y_kernel, i32 %stride, i32 %bytes, i32 %byte) #3 {
entry:
  %pixels.addr = alloca i8*, align 8
  %x_kernel.addr = alloca double*, align 8
  %y_kernel.addr = alloca double*, align 8
  %stride.addr = alloca i32, align 4
  %bytes.addr = alloca i32, align 4
  %byte.addr = alloca i32, align 4
  %row = alloca i8*, align 8
  %alpha = alloca i8, align 1
  %sum = alloca double, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %p = alloca i8*, align 8
  %tmpsum = alloca double, align 8
  store i8* %pixels, i8** %pixels.addr, align 8
  store double* %x_kernel, double** %x_kernel.addr, align 8
  store double* %y_kernel, double** %y_kernel.addr, align 8
  store i32 %stride, i32* %stride.addr, align 4
  store i32 %bytes, i32* %bytes.addr, align 4
  store i32 %byte, i32* %byte.addr, align 4
  %0 = load i8*, i8** %pixels.addr, align 8
  store i8* %0, i8** %row, align 8
  %1 = load i32, i32* %bytes.addr, align 4
  %sub = sub nsw i32 %1, 1
  %conv = trunc i32 %sub to i8
  store i8 %conv, i8* %alpha, align 1
  store double 0.000000e+00, double* %sum, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.19, %entry
  %2 = load i32, i32* %y, align 4
  %cmp = icmp slt i32 %2, 6
  br i1 %cmp, label %for.body, label %for.end.23

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %row, align 8
  store i8* %3, i8** %p, align 8
  store double 0.000000e+00, double* %tmpsum, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %4 = load i32, i32* %x, align 4
  %cmp3 = icmp slt i32 %4, 6
  br i1 %cmp3, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.2
  %5 = load i32, i32* %x, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load double*, double** %x_kernel.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %6, i64 %idxprom
  %7 = load double, double* %arrayidx, align 8
  %8 = load i32, i32* %byte.addr, align 4
  %idxprom6 = sext i32 %8 to i64
  %9 = load i8*, i8** %p, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %9, i64 %idxprom6
  %10 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %10 to i32
  %conv9 = sitofp i32 %conv8 to double
  %mul = fmul double %7, %conv9
  %11 = load i8, i8* %alpha, align 1
  %idxprom10 = zext i8 %11 to i64
  %12 = load i8*, i8** %p, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %12, i64 %idxprom10
  %13 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %13 to i32
  %conv13 = sitofp i32 %conv12 to double
  %mul14 = fmul double %mul, %conv13
  %14 = load double, double* %tmpsum, align 8
  %add = fadd double %14, %mul14
  store double %add, double* %tmpsum, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.5
  %15 = load i32, i32* %x, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %x, align 4
  %16 = load i32, i32* %bytes.addr, align 4
  %17 = load i8*, i8** %p, align 8
  %idx.ext = sext i32 %16 to i64
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 %idx.ext
  store i8* %add.ptr, i8** %p, align 8
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  %18 = load i32, i32* %y, align 4
  %idxprom15 = sext i32 %18 to i64
  %19 = load double*, double** %y_kernel.addr, align 8
  %arrayidx16 = getelementptr inbounds double, double* %19, i64 %idxprom15
  %20 = load double, double* %arrayidx16, align 8
  %21 = load double, double* %tmpsum, align 8
  %mul17 = fmul double %21, %20
  store double %mul17, double* %tmpsum, align 8
  %22 = load double, double* %tmpsum, align 8
  %23 = load double, double* %sum, align 8
  %add18 = fadd double %23, %22
  store double %add18, double* %sum, align 8
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.end
  %24 = load i32, i32* %y, align 4
  %inc20 = add nsw i32 %24, 1
  store i32 %inc20, i32* %y, align 4
  %25 = load i32, i32* %stride.addr, align 4
  %26 = load i8*, i8** %row, align 8
  %idx.ext21 = sext i32 %25 to i64
  %add.ptr22 = getelementptr inbounds i8, i8* %26, i64 %idx.ext21
  store i8* %add.ptr22, i8** %row, align 8
  br label %for.cond

for.end.23:                                       ; preds = %for.cond
  %27 = load double, double* %sum, align 8
  ret double %27
}

; Function Attrs: nounwind uwtable
define internal void @decimate_average_xy(%struct._PixelSurround* %surround, i32 %x0, i32 %y0, i32 %bytes, i8* %pixel) #0 {
entry:
  %surround.addr = alloca %struct._PixelSurround*, align 8
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %bytes.addr = alloca i32, align 4
  %pixel.addr = alloca i8*, align 8
  %stride = alloca i32, align 4
  %src = alloca i8*, align 8
  store %struct._PixelSurround* %surround, %struct._PixelSurround** %surround.addr, align 8
  store i32 %x0, i32* %x0.addr, align 4
  store i32 %y0, i32* %y0.addr, align 4
  store i32 %bytes, i32* %bytes.addr, align 4
  store i8* %pixel, i8** %pixel.addr, align 8
  %0 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %1 = load i32, i32* %x0.addr, align 4
  %2 = load i32, i32* %y0.addr, align 4
  %call = call i8* @pixel_surround_lock(%struct._PixelSurround* %0, i32 %1, i32 %2, i32* %stride)
  store i8* %call, i8** %src, align 8
  %3 = load i8*, i8** %src, align 8
  %4 = load i8*, i8** %src, align 8
  %5 = load i32, i32* %bytes.addr, align 4
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  %6 = load i8*, i8** %src, align 8
  %7 = load i32, i32* %stride, align 4
  %idx.ext1 = sext i32 %7 to i64
  %add.ptr2 = getelementptr inbounds i8, i8* %6, i64 %idx.ext1
  %8 = load i8*, i8** %src, align 8
  %9 = load i32, i32* %stride, align 4
  %idx.ext3 = sext i32 %9 to i64
  %add.ptr4 = getelementptr inbounds i8, i8* %8, i64 %idx.ext3
  %10 = load i32, i32* %bytes.addr, align 4
  %idx.ext5 = sext i32 %10 to i64
  %add.ptr6 = getelementptr inbounds i8, i8* %add.ptr4, i64 %idx.ext5
  %11 = load i8*, i8** %pixel.addr, align 8
  %12 = load i32, i32* %bytes.addr, align 4
  call void @pixel_average4(i8* %3, i8* %add.ptr, i8* %add.ptr2, i8* %add.ptr6, i8* %11, i32 %12)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @pixel_average4(i8* %p1, i8* %p2, i8* %p3, i8* %p4, i8* %p, i32 %bytes) #3 {
entry:
  %p1.addr = alloca i8*, align 8
  %p2.addr = alloca i8*, align 8
  %p3.addr = alloca i8*, align 8
  %p4.addr = alloca i8*, align 8
  %p.addr = alloca i8*, align 8
  %bytes.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %a121 = alloca i32, align 4
  store i8* %p1, i8** %p1.addr, align 8
  store i8* %p2, i8** %p2.addr, align 8
  store i8* %p3, i8** %p3.addr, align 8
  store i8* %p4, i8** %p4.addr, align 8
  store i8* %p, i8** %p.addr, align 8
  store i32 %bytes, i32* %bytes.addr, align 4
  %0 = load i32, i32* %bytes.addr, align 4
  switch i32 %0, label %sw.epilog.275 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.12
    i32 3, label %sw.bb.74
    i32 4, label %sw.bb.120
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i8*, i8** %p1.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %3 = load i8*, i8** %p2.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %4 to i32
  %add = add nsw i32 %conv, %conv2
  %5 = load i8*, i8** %p3.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %5, i64 0
  %6 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %6 to i32
  %add5 = add nsw i32 %add, %conv4
  %7 = load i8*, i8** %p4.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %7, i64 0
  %8 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %8 to i32
  %add8 = add nsw i32 %add5, %conv7
  %add9 = add nsw i32 %add8, 2
  %shr = ashr i32 %add9, 2
  %conv10 = trunc i32 %shr to i8
  %9 = load i8*, i8** %p.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %9, i64 0
  store i8 %conv10, i8* %arrayidx11, align 1
  br label %sw.epilog.275

sw.bb.12:                                         ; preds = %entry
  %10 = load i8*, i8** %p1.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %11 to i32
  %12 = load i8*, i8** %p2.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %13 to i32
  %add17 = add nsw i32 %conv14, %conv16
  %14 = load i8*, i8** %p3.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %14, i64 1
  %15 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %15 to i32
  %add20 = add nsw i32 %add17, %conv19
  %16 = load i8*, i8** %p4.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %16, i64 1
  %17 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %17 to i32
  %add23 = add nsw i32 %add20, %conv22
  store i32 %add23, i32* %a, align 4
  %18 = load i32, i32* %a, align 4
  switch i32 %18, label %sw.default [
    i32 0, label %sw.bb.24
    i32 1020, label %sw.bb.27
  ]

sw.bb.24:                                         ; preds = %sw.bb.12
  %19 = load i8*, i8** %p.addr, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %19, i64 1
  store i8 0, i8* %arrayidx25, align 1
  %20 = load i8*, i8** %p.addr, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %20, i64 0
  store i8 0, i8* %arrayidx26, align 1
  br label %sw.epilog

sw.bb.27:                                         ; preds = %sw.bb.12
  %21 = load i8*, i8** %p1.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %21, i64 0
  %22 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %22 to i32
  %23 = load i8*, i8** %p2.addr, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %23, i64 0
  %24 = load i8, i8* %arrayidx30, align 1
  %conv31 = zext i8 %24 to i32
  %add32 = add nsw i32 %conv29, %conv31
  %25 = load i8*, i8** %p3.addr, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %25, i64 0
  %26 = load i8, i8* %arrayidx33, align 1
  %conv34 = zext i8 %26 to i32
  %add35 = add nsw i32 %add32, %conv34
  %27 = load i8*, i8** %p4.addr, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %27, i64 0
  %28 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %28 to i32
  %add38 = add nsw i32 %add35, %conv37
  %add39 = add nsw i32 %add38, 2
  %shr40 = ashr i32 %add39, 2
  %conv41 = trunc i32 %shr40 to i8
  %29 = load i8*, i8** %p.addr, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %29, i64 0
  store i8 %conv41, i8* %arrayidx42, align 1
  %30 = load i8*, i8** %p.addr, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %30, i64 1
  store i8 -1, i8* %arrayidx43, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb.12
  %31 = load i8*, i8** %p1.addr, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %31, i64 0
  %32 = load i8, i8* %arrayidx44, align 1
  %conv45 = zext i8 %32 to i32
  %33 = load i8*, i8** %p1.addr, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %33, i64 1
  %34 = load i8, i8* %arrayidx46, align 1
  %conv47 = zext i8 %34 to i32
  %mul = mul nsw i32 %conv45, %conv47
  %35 = load i8*, i8** %p2.addr, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %35, i64 0
  %36 = load i8, i8* %arrayidx48, align 1
  %conv49 = zext i8 %36 to i32
  %37 = load i8*, i8** %p2.addr, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %37, i64 1
  %38 = load i8, i8* %arrayidx50, align 1
  %conv51 = zext i8 %38 to i32
  %mul52 = mul nsw i32 %conv49, %conv51
  %add53 = add nsw i32 %mul, %mul52
  %39 = load i8*, i8** %p3.addr, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %39, i64 0
  %40 = load i8, i8* %arrayidx54, align 1
  %conv55 = zext i8 %40 to i32
  %41 = load i8*, i8** %p3.addr, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %41, i64 1
  %42 = load i8, i8* %arrayidx56, align 1
  %conv57 = zext i8 %42 to i32
  %mul58 = mul nsw i32 %conv55, %conv57
  %add59 = add nsw i32 %add53, %mul58
  %43 = load i8*, i8** %p4.addr, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %43, i64 0
  %44 = load i8, i8* %arrayidx60, align 1
  %conv61 = zext i8 %44 to i32
  %45 = load i8*, i8** %p4.addr, align 8
  %arrayidx62 = getelementptr inbounds i8, i8* %45, i64 1
  %46 = load i8, i8* %arrayidx62, align 1
  %conv63 = zext i8 %46 to i32
  %mul64 = mul nsw i32 %conv61, %conv63
  %add65 = add nsw i32 %add59, %mul64
  %47 = load i32, i32* %a, align 4
  %shr66 = lshr i32 %47, 1
  %add67 = add i32 %add65, %shr66
  %48 = load i32, i32* %a, align 4
  %div = udiv i32 %add67, %48
  %conv68 = trunc i32 %div to i8
  %49 = load i8*, i8** %p.addr, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %49, i64 0
  store i8 %conv68, i8* %arrayidx69, align 1
  %50 = load i32, i32* %a, align 4
  %add70 = add i32 %50, 2
  %shr71 = lshr i32 %add70, 2
  %conv72 = trunc i32 %shr71 to i8
  %51 = load i8*, i8** %p.addr, align 8
  %arrayidx73 = getelementptr inbounds i8, i8* %51, i64 1
  store i8 %conv72, i8* %arrayidx73, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.27, %sw.bb.24
  br label %sw.epilog.275

sw.bb.74:                                         ; preds = %entry
  %52 = load i8*, i8** %p1.addr, align 8
  %arrayidx75 = getelementptr inbounds i8, i8* %52, i64 0
  %53 = load i8, i8* %arrayidx75, align 1
  %conv76 = zext i8 %53 to i32
  %54 = load i8*, i8** %p2.addr, align 8
  %arrayidx77 = getelementptr inbounds i8, i8* %54, i64 0
  %55 = load i8, i8* %arrayidx77, align 1
  %conv78 = zext i8 %55 to i32
  %add79 = add nsw i32 %conv76, %conv78
  %56 = load i8*, i8** %p3.addr, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %56, i64 0
  %57 = load i8, i8* %arrayidx80, align 1
  %conv81 = zext i8 %57 to i32
  %add82 = add nsw i32 %add79, %conv81
  %58 = load i8*, i8** %p4.addr, align 8
  %arrayidx83 = getelementptr inbounds i8, i8* %58, i64 0
  %59 = load i8, i8* %arrayidx83, align 1
  %conv84 = zext i8 %59 to i32
  %add85 = add nsw i32 %add82, %conv84
  %add86 = add nsw i32 %add85, 2
  %shr87 = ashr i32 %add86, 2
  %conv88 = trunc i32 %shr87 to i8
  %60 = load i8*, i8** %p.addr, align 8
  %arrayidx89 = getelementptr inbounds i8, i8* %60, i64 0
  store i8 %conv88, i8* %arrayidx89, align 1
  %61 = load i8*, i8** %p1.addr, align 8
  %arrayidx90 = getelementptr inbounds i8, i8* %61, i64 1
  %62 = load i8, i8* %arrayidx90, align 1
  %conv91 = zext i8 %62 to i32
  %63 = load i8*, i8** %p2.addr, align 8
  %arrayidx92 = getelementptr inbounds i8, i8* %63, i64 1
  %64 = load i8, i8* %arrayidx92, align 1
  %conv93 = zext i8 %64 to i32
  %add94 = add nsw i32 %conv91, %conv93
  %65 = load i8*, i8** %p3.addr, align 8
  %arrayidx95 = getelementptr inbounds i8, i8* %65, i64 1
  %66 = load i8, i8* %arrayidx95, align 1
  %conv96 = zext i8 %66 to i32
  %add97 = add nsw i32 %add94, %conv96
  %67 = load i8*, i8** %p4.addr, align 8
  %arrayidx98 = getelementptr inbounds i8, i8* %67, i64 1
  %68 = load i8, i8* %arrayidx98, align 1
  %conv99 = zext i8 %68 to i32
  %add100 = add nsw i32 %add97, %conv99
  %add101 = add nsw i32 %add100, 2
  %shr102 = ashr i32 %add101, 2
  %conv103 = trunc i32 %shr102 to i8
  %69 = load i8*, i8** %p.addr, align 8
  %arrayidx104 = getelementptr inbounds i8, i8* %69, i64 1
  store i8 %conv103, i8* %arrayidx104, align 1
  %70 = load i8*, i8** %p1.addr, align 8
  %arrayidx105 = getelementptr inbounds i8, i8* %70, i64 2
  %71 = load i8, i8* %arrayidx105, align 1
  %conv106 = zext i8 %71 to i32
  %72 = load i8*, i8** %p2.addr, align 8
  %arrayidx107 = getelementptr inbounds i8, i8* %72, i64 2
  %73 = load i8, i8* %arrayidx107, align 1
  %conv108 = zext i8 %73 to i32
  %add109 = add nsw i32 %conv106, %conv108
  %74 = load i8*, i8** %p3.addr, align 8
  %arrayidx110 = getelementptr inbounds i8, i8* %74, i64 2
  %75 = load i8, i8* %arrayidx110, align 1
  %conv111 = zext i8 %75 to i32
  %add112 = add nsw i32 %add109, %conv111
  %76 = load i8*, i8** %p4.addr, align 8
  %arrayidx113 = getelementptr inbounds i8, i8* %76, i64 2
  %77 = load i8, i8* %arrayidx113, align 1
  %conv114 = zext i8 %77 to i32
  %add115 = add nsw i32 %add112, %conv114
  %add116 = add nsw i32 %add115, 2
  %shr117 = ashr i32 %add116, 2
  %conv118 = trunc i32 %shr117 to i8
  %78 = load i8*, i8** %p.addr, align 8
  %arrayidx119 = getelementptr inbounds i8, i8* %78, i64 2
  store i8 %conv118, i8* %arrayidx119, align 1
  br label %sw.epilog.275

sw.bb.120:                                        ; preds = %entry
  %79 = load i8*, i8** %p1.addr, align 8
  %arrayidx122 = getelementptr inbounds i8, i8* %79, i64 3
  %80 = load i8, i8* %arrayidx122, align 1
  %conv123 = zext i8 %80 to i32
  %81 = load i8*, i8** %p2.addr, align 8
  %arrayidx124 = getelementptr inbounds i8, i8* %81, i64 3
  %82 = load i8, i8* %arrayidx124, align 1
  %conv125 = zext i8 %82 to i32
  %add126 = add nsw i32 %conv123, %conv125
  %83 = load i8*, i8** %p3.addr, align 8
  %arrayidx127 = getelementptr inbounds i8, i8* %83, i64 3
  %84 = load i8, i8* %arrayidx127, align 1
  %conv128 = zext i8 %84 to i32
  %add129 = add nsw i32 %add126, %conv128
  %85 = load i8*, i8** %p4.addr, align 8
  %arrayidx130 = getelementptr inbounds i8, i8* %85, i64 3
  %86 = load i8, i8* %arrayidx130, align 1
  %conv131 = zext i8 %86 to i32
  %add132 = add nsw i32 %add129, %conv131
  store i32 %add132, i32* %a121, align 4
  %87 = load i32, i32* %a121, align 4
  switch i32 %87, label %sw.default.185 [
    i32 0, label %sw.bb.133
    i32 1020, label %sw.bb.138
  ]

sw.bb.133:                                        ; preds = %sw.bb.120
  %88 = load i8*, i8** %p.addr, align 8
  %arrayidx134 = getelementptr inbounds i8, i8* %88, i64 3
  store i8 0, i8* %arrayidx134, align 1
  %89 = load i8*, i8** %p.addr, align 8
  %arrayidx135 = getelementptr inbounds i8, i8* %89, i64 2
  store i8 0, i8* %arrayidx135, align 1
  %90 = load i8*, i8** %p.addr, align 8
  %arrayidx136 = getelementptr inbounds i8, i8* %90, i64 1
  store i8 0, i8* %arrayidx136, align 1
  %91 = load i8*, i8** %p.addr, align 8
  %arrayidx137 = getelementptr inbounds i8, i8* %91, i64 0
  store i8 0, i8* %arrayidx137, align 1
  br label %sw.epilog.274

sw.bb.138:                                        ; preds = %sw.bb.120
  %92 = load i8*, i8** %p1.addr, align 8
  %arrayidx139 = getelementptr inbounds i8, i8* %92, i64 0
  %93 = load i8, i8* %arrayidx139, align 1
  %conv140 = zext i8 %93 to i32
  %94 = load i8*, i8** %p2.addr, align 8
  %arrayidx141 = getelementptr inbounds i8, i8* %94, i64 0
  %95 = load i8, i8* %arrayidx141, align 1
  %conv142 = zext i8 %95 to i32
  %add143 = add nsw i32 %conv140, %conv142
  %96 = load i8*, i8** %p3.addr, align 8
  %arrayidx144 = getelementptr inbounds i8, i8* %96, i64 0
  %97 = load i8, i8* %arrayidx144, align 1
  %conv145 = zext i8 %97 to i32
  %add146 = add nsw i32 %add143, %conv145
  %98 = load i8*, i8** %p4.addr, align 8
  %arrayidx147 = getelementptr inbounds i8, i8* %98, i64 0
  %99 = load i8, i8* %arrayidx147, align 1
  %conv148 = zext i8 %99 to i32
  %add149 = add nsw i32 %add146, %conv148
  %add150 = add nsw i32 %add149, 2
  %shr151 = ashr i32 %add150, 2
  %conv152 = trunc i32 %shr151 to i8
  %100 = load i8*, i8** %p.addr, align 8
  %arrayidx153 = getelementptr inbounds i8, i8* %100, i64 0
  store i8 %conv152, i8* %arrayidx153, align 1
  %101 = load i8*, i8** %p1.addr, align 8
  %arrayidx154 = getelementptr inbounds i8, i8* %101, i64 1
  %102 = load i8, i8* %arrayidx154, align 1
  %conv155 = zext i8 %102 to i32
  %103 = load i8*, i8** %p2.addr, align 8
  %arrayidx156 = getelementptr inbounds i8, i8* %103, i64 1
  %104 = load i8, i8* %arrayidx156, align 1
  %conv157 = zext i8 %104 to i32
  %add158 = add nsw i32 %conv155, %conv157
  %105 = load i8*, i8** %p3.addr, align 8
  %arrayidx159 = getelementptr inbounds i8, i8* %105, i64 1
  %106 = load i8, i8* %arrayidx159, align 1
  %conv160 = zext i8 %106 to i32
  %add161 = add nsw i32 %add158, %conv160
  %107 = load i8*, i8** %p4.addr, align 8
  %arrayidx162 = getelementptr inbounds i8, i8* %107, i64 1
  %108 = load i8, i8* %arrayidx162, align 1
  %conv163 = zext i8 %108 to i32
  %add164 = add nsw i32 %add161, %conv163
  %add165 = add nsw i32 %add164, 2
  %shr166 = ashr i32 %add165, 2
  %conv167 = trunc i32 %shr166 to i8
  %109 = load i8*, i8** %p.addr, align 8
  %arrayidx168 = getelementptr inbounds i8, i8* %109, i64 1
  store i8 %conv167, i8* %arrayidx168, align 1
  %110 = load i8*, i8** %p1.addr, align 8
  %arrayidx169 = getelementptr inbounds i8, i8* %110, i64 2
  %111 = load i8, i8* %arrayidx169, align 1
  %conv170 = zext i8 %111 to i32
  %112 = load i8*, i8** %p2.addr, align 8
  %arrayidx171 = getelementptr inbounds i8, i8* %112, i64 2
  %113 = load i8, i8* %arrayidx171, align 1
  %conv172 = zext i8 %113 to i32
  %add173 = add nsw i32 %conv170, %conv172
  %114 = load i8*, i8** %p3.addr, align 8
  %arrayidx174 = getelementptr inbounds i8, i8* %114, i64 2
  %115 = load i8, i8* %arrayidx174, align 1
  %conv175 = zext i8 %115 to i32
  %add176 = add nsw i32 %add173, %conv175
  %116 = load i8*, i8** %p4.addr, align 8
  %arrayidx177 = getelementptr inbounds i8, i8* %116, i64 2
  %117 = load i8, i8* %arrayidx177, align 1
  %conv178 = zext i8 %117 to i32
  %add179 = add nsw i32 %add176, %conv178
  %add180 = add nsw i32 %add179, 2
  %shr181 = ashr i32 %add180, 2
  %conv182 = trunc i32 %shr181 to i8
  %118 = load i8*, i8** %p.addr, align 8
  %arrayidx183 = getelementptr inbounds i8, i8* %118, i64 2
  store i8 %conv182, i8* %arrayidx183, align 1
  %119 = load i8*, i8** %p.addr, align 8
  %arrayidx184 = getelementptr inbounds i8, i8* %119, i64 3
  store i8 -1, i8* %arrayidx184, align 1
  br label %sw.epilog.274

sw.default.185:                                   ; preds = %sw.bb.120
  %120 = load i8*, i8** %p1.addr, align 8
  %arrayidx186 = getelementptr inbounds i8, i8* %120, i64 0
  %121 = load i8, i8* %arrayidx186, align 1
  %conv187 = zext i8 %121 to i32
  %122 = load i8*, i8** %p1.addr, align 8
  %arrayidx188 = getelementptr inbounds i8, i8* %122, i64 3
  %123 = load i8, i8* %arrayidx188, align 1
  %conv189 = zext i8 %123 to i32
  %mul190 = mul nsw i32 %conv187, %conv189
  %124 = load i8*, i8** %p2.addr, align 8
  %arrayidx191 = getelementptr inbounds i8, i8* %124, i64 0
  %125 = load i8, i8* %arrayidx191, align 1
  %conv192 = zext i8 %125 to i32
  %126 = load i8*, i8** %p2.addr, align 8
  %arrayidx193 = getelementptr inbounds i8, i8* %126, i64 3
  %127 = load i8, i8* %arrayidx193, align 1
  %conv194 = zext i8 %127 to i32
  %mul195 = mul nsw i32 %conv192, %conv194
  %add196 = add nsw i32 %mul190, %mul195
  %128 = load i8*, i8** %p3.addr, align 8
  %arrayidx197 = getelementptr inbounds i8, i8* %128, i64 0
  %129 = load i8, i8* %arrayidx197, align 1
  %conv198 = zext i8 %129 to i32
  %130 = load i8*, i8** %p3.addr, align 8
  %arrayidx199 = getelementptr inbounds i8, i8* %130, i64 3
  %131 = load i8, i8* %arrayidx199, align 1
  %conv200 = zext i8 %131 to i32
  %mul201 = mul nsw i32 %conv198, %conv200
  %add202 = add nsw i32 %add196, %mul201
  %132 = load i8*, i8** %p4.addr, align 8
  %arrayidx203 = getelementptr inbounds i8, i8* %132, i64 0
  %133 = load i8, i8* %arrayidx203, align 1
  %conv204 = zext i8 %133 to i32
  %134 = load i8*, i8** %p4.addr, align 8
  %arrayidx205 = getelementptr inbounds i8, i8* %134, i64 3
  %135 = load i8, i8* %arrayidx205, align 1
  %conv206 = zext i8 %135 to i32
  %mul207 = mul nsw i32 %conv204, %conv206
  %add208 = add nsw i32 %add202, %mul207
  %136 = load i32, i32* %a121, align 4
  %shr209 = lshr i32 %136, 1
  %add210 = add i32 %add208, %shr209
  %137 = load i32, i32* %a121, align 4
  %div211 = udiv i32 %add210, %137
  %conv212 = trunc i32 %div211 to i8
  %138 = load i8*, i8** %p.addr, align 8
  %arrayidx213 = getelementptr inbounds i8, i8* %138, i64 0
  store i8 %conv212, i8* %arrayidx213, align 1
  %139 = load i8*, i8** %p1.addr, align 8
  %arrayidx214 = getelementptr inbounds i8, i8* %139, i64 1
  %140 = load i8, i8* %arrayidx214, align 1
  %conv215 = zext i8 %140 to i32
  %141 = load i8*, i8** %p1.addr, align 8
  %arrayidx216 = getelementptr inbounds i8, i8* %141, i64 3
  %142 = load i8, i8* %arrayidx216, align 1
  %conv217 = zext i8 %142 to i32
  %mul218 = mul nsw i32 %conv215, %conv217
  %143 = load i8*, i8** %p2.addr, align 8
  %arrayidx219 = getelementptr inbounds i8, i8* %143, i64 1
  %144 = load i8, i8* %arrayidx219, align 1
  %conv220 = zext i8 %144 to i32
  %145 = load i8*, i8** %p2.addr, align 8
  %arrayidx221 = getelementptr inbounds i8, i8* %145, i64 3
  %146 = load i8, i8* %arrayidx221, align 1
  %conv222 = zext i8 %146 to i32
  %mul223 = mul nsw i32 %conv220, %conv222
  %add224 = add nsw i32 %mul218, %mul223
  %147 = load i8*, i8** %p3.addr, align 8
  %arrayidx225 = getelementptr inbounds i8, i8* %147, i64 1
  %148 = load i8, i8* %arrayidx225, align 1
  %conv226 = zext i8 %148 to i32
  %149 = load i8*, i8** %p3.addr, align 8
  %arrayidx227 = getelementptr inbounds i8, i8* %149, i64 3
  %150 = load i8, i8* %arrayidx227, align 1
  %conv228 = zext i8 %150 to i32
  %mul229 = mul nsw i32 %conv226, %conv228
  %add230 = add nsw i32 %add224, %mul229
  %151 = load i8*, i8** %p4.addr, align 8
  %arrayidx231 = getelementptr inbounds i8, i8* %151, i64 1
  %152 = load i8, i8* %arrayidx231, align 1
  %conv232 = zext i8 %152 to i32
  %153 = load i8*, i8** %p4.addr, align 8
  %arrayidx233 = getelementptr inbounds i8, i8* %153, i64 3
  %154 = load i8, i8* %arrayidx233, align 1
  %conv234 = zext i8 %154 to i32
  %mul235 = mul nsw i32 %conv232, %conv234
  %add236 = add nsw i32 %add230, %mul235
  %155 = load i32, i32* %a121, align 4
  %shr237 = lshr i32 %155, 1
  %add238 = add i32 %add236, %shr237
  %156 = load i32, i32* %a121, align 4
  %div239 = udiv i32 %add238, %156
  %conv240 = trunc i32 %div239 to i8
  %157 = load i8*, i8** %p.addr, align 8
  %arrayidx241 = getelementptr inbounds i8, i8* %157, i64 1
  store i8 %conv240, i8* %arrayidx241, align 1
  %158 = load i8*, i8** %p1.addr, align 8
  %arrayidx242 = getelementptr inbounds i8, i8* %158, i64 2
  %159 = load i8, i8* %arrayidx242, align 1
  %conv243 = zext i8 %159 to i32
  %160 = load i8*, i8** %p1.addr, align 8
  %arrayidx244 = getelementptr inbounds i8, i8* %160, i64 3
  %161 = load i8, i8* %arrayidx244, align 1
  %conv245 = zext i8 %161 to i32
  %mul246 = mul nsw i32 %conv243, %conv245
  %162 = load i8*, i8** %p2.addr, align 8
  %arrayidx247 = getelementptr inbounds i8, i8* %162, i64 2
  %163 = load i8, i8* %arrayidx247, align 1
  %conv248 = zext i8 %163 to i32
  %164 = load i8*, i8** %p2.addr, align 8
  %arrayidx249 = getelementptr inbounds i8, i8* %164, i64 3
  %165 = load i8, i8* %arrayidx249, align 1
  %conv250 = zext i8 %165 to i32
  %mul251 = mul nsw i32 %conv248, %conv250
  %add252 = add nsw i32 %mul246, %mul251
  %166 = load i8*, i8** %p3.addr, align 8
  %arrayidx253 = getelementptr inbounds i8, i8* %166, i64 2
  %167 = load i8, i8* %arrayidx253, align 1
  %conv254 = zext i8 %167 to i32
  %168 = load i8*, i8** %p3.addr, align 8
  %arrayidx255 = getelementptr inbounds i8, i8* %168, i64 3
  %169 = load i8, i8* %arrayidx255, align 1
  %conv256 = zext i8 %169 to i32
  %mul257 = mul nsw i32 %conv254, %conv256
  %add258 = add nsw i32 %add252, %mul257
  %170 = load i8*, i8** %p4.addr, align 8
  %arrayidx259 = getelementptr inbounds i8, i8* %170, i64 2
  %171 = load i8, i8* %arrayidx259, align 1
  %conv260 = zext i8 %171 to i32
  %172 = load i8*, i8** %p4.addr, align 8
  %arrayidx261 = getelementptr inbounds i8, i8* %172, i64 3
  %173 = load i8, i8* %arrayidx261, align 1
  %conv262 = zext i8 %173 to i32
  %mul263 = mul nsw i32 %conv260, %conv262
  %add264 = add nsw i32 %add258, %mul263
  %174 = load i32, i32* %a121, align 4
  %shr265 = lshr i32 %174, 1
  %add266 = add i32 %add264, %shr265
  %175 = load i32, i32* %a121, align 4
  %div267 = udiv i32 %add266, %175
  %conv268 = trunc i32 %div267 to i8
  %176 = load i8*, i8** %p.addr, align 8
  %arrayidx269 = getelementptr inbounds i8, i8* %176, i64 2
  store i8 %conv268, i8* %arrayidx269, align 1
  %177 = load i32, i32* %a121, align 4
  %add270 = add i32 %177, 2
  %shr271 = lshr i32 %add270, 2
  %conv272 = trunc i32 %shr271 to i8
  %178 = load i8*, i8** %p.addr, align 8
  %arrayidx273 = getelementptr inbounds i8, i8* %178, i64 3
  store i8 %conv272, i8* %arrayidx273, align 1
  br label %sw.epilog.274

sw.epilog.274:                                    ; preds = %sw.default.185, %sw.bb.138, %sw.bb.133
  br label %sw.epilog.275

sw.epilog.275:                                    ; preds = %entry, %sw.epilog.274, %sw.bb.74, %sw.epilog, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @decimate_average_x(%struct._PixelSurround* %surround, i32 %x0, i32 %y0, i32 %bytes, i8* %pixel) #0 {
entry:
  %surround.addr = alloca %struct._PixelSurround*, align 8
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %bytes.addr = alloca i32, align 4
  %pixel.addr = alloca i8*, align 8
  %stride = alloca i32, align 4
  %src = alloca i8*, align 8
  store %struct._PixelSurround* %surround, %struct._PixelSurround** %surround.addr, align 8
  store i32 %x0, i32* %x0.addr, align 4
  store i32 %y0, i32* %y0.addr, align 4
  store i32 %bytes, i32* %bytes.addr, align 4
  store i8* %pixel, i8** %pixel.addr, align 8
  %0 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %1 = load i32, i32* %x0.addr, align 4
  %2 = load i32, i32* %y0.addr, align 4
  %call = call i8* @pixel_surround_lock(%struct._PixelSurround* %0, i32 %1, i32 %2, i32* %stride)
  store i8* %call, i8** %src, align 8
  %3 = load i8*, i8** %src, align 8
  %4 = load i8*, i8** %src, align 8
  %5 = load i32, i32* %bytes.addr, align 4
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  %6 = load i8*, i8** %pixel.addr, align 8
  %7 = load i32, i32* %bytes.addr, align 4
  call void @pixel_average2(i8* %3, i8* %add.ptr, i8* %6, i32 %7)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @pixel_average2(i8* %p1, i8* %p2, i8* %p, i32 %bytes) #3 {
entry:
  %p1.addr = alloca i8*, align 8
  %p2.addr = alloca i8*, align 8
  %p.addr = alloca i8*, align 8
  %bytes.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %a73 = alloca i32, align 4
  store i8* %p1, i8** %p1.addr, align 8
  store i8* %p2, i8** %p2.addr, align 8
  store i8* %p, i8** %p.addr, align 8
  store i32 %bytes, i32* %bytes.addr, align 4
  %0 = load i32, i32* %bytes.addr, align 4
  switch i32 %0, label %sw.epilog.167 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.6
    i32 3, label %sw.bb.44
    i32 4, label %sw.bb.72
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i8*, i8** %p1.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %3 = load i8*, i8** %p2.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %4 to i32
  %add = add nsw i32 %conv, %conv2
  %add3 = add nsw i32 %add, 1
  %shr = ashr i32 %add3, 1
  %conv4 = trunc i32 %shr to i8
  %5 = load i8*, i8** %p.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %5, i64 0
  store i8 %conv4, i8* %arrayidx5, align 1
  br label %sw.epilog.167

sw.bb.6:                                          ; preds = %entry
  %6 = load i8*, i8** %p1.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %7 to i32
  %8 = load i8*, i8** %p2.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx9, align 1
  %conv10 = zext i8 %9 to i32
  %add11 = add nsw i32 %conv8, %conv10
  store i32 %add11, i32* %a, align 4
  %10 = load i32, i32* %a, align 4
  switch i32 %10, label %sw.default [
    i32 0, label %sw.bb.12
    i32 510, label %sw.bb.15
  ]

sw.bb.12:                                         ; preds = %sw.bb.6
  %11 = load i8*, i8** %p.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %11, i64 1
  store i8 0, i8* %arrayidx13, align 1
  %12 = load i8*, i8** %p.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %12, i64 0
  store i8 0, i8* %arrayidx14, align 1
  br label %sw.epilog

sw.bb.15:                                         ; preds = %sw.bb.6
  %13 = load i8*, i8** %p1.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %13, i64 0
  %14 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %14 to i32
  %15 = load i8*, i8** %p2.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %15, i64 0
  %16 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %16 to i32
  %add20 = add nsw i32 %conv17, %conv19
  %add21 = add nsw i32 %add20, 1
  %shr22 = ashr i32 %add21, 1
  %conv23 = trunc i32 %shr22 to i8
  %17 = load i8*, i8** %p.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 %conv23, i8* %arrayidx24, align 1
  %18 = load i8*, i8** %p.addr, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %18, i64 1
  store i8 -1, i8* %arrayidx25, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb.6
  %19 = load i8*, i8** %p1.addr, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %19, i64 0
  %20 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %20 to i32
  %21 = load i8*, i8** %p1.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %21, i64 1
  %22 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %22 to i32
  %mul = mul nsw i32 %conv27, %conv29
  %23 = load i8*, i8** %p2.addr, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %23, i64 0
  %24 = load i8, i8* %arrayidx30, align 1
  %conv31 = zext i8 %24 to i32
  %25 = load i8*, i8** %p2.addr, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %25, i64 1
  %26 = load i8, i8* %arrayidx32, align 1
  %conv33 = zext i8 %26 to i32
  %mul34 = mul nsw i32 %conv31, %conv33
  %add35 = add nsw i32 %mul, %mul34
  %27 = load i32, i32* %a, align 4
  %shr36 = lshr i32 %27, 1
  %add37 = add i32 %add35, %shr36
  %28 = load i32, i32* %a, align 4
  %div = udiv i32 %add37, %28
  %conv38 = trunc i32 %div to i8
  %29 = load i8*, i8** %p.addr, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %29, i64 0
  store i8 %conv38, i8* %arrayidx39, align 1
  %30 = load i32, i32* %a, align 4
  %add40 = add i32 %30, 1
  %shr41 = lshr i32 %add40, 1
  %conv42 = trunc i32 %shr41 to i8
  %31 = load i8*, i8** %p.addr, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %31, i64 1
  store i8 %conv42, i8* %arrayidx43, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.15, %sw.bb.12
  br label %sw.epilog.167

sw.bb.44:                                         ; preds = %entry
  %32 = load i8*, i8** %p1.addr, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %32, i64 0
  %33 = load i8, i8* %arrayidx45, align 1
  %conv46 = zext i8 %33 to i32
  %34 = load i8*, i8** %p2.addr, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %34, i64 0
  %35 = load i8, i8* %arrayidx47, align 1
  %conv48 = zext i8 %35 to i32
  %add49 = add nsw i32 %conv46, %conv48
  %add50 = add nsw i32 %add49, 1
  %shr51 = ashr i32 %add50, 1
  %conv52 = trunc i32 %shr51 to i8
  %36 = load i8*, i8** %p.addr, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %36, i64 0
  store i8 %conv52, i8* %arrayidx53, align 1
  %37 = load i8*, i8** %p1.addr, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %37, i64 1
  %38 = load i8, i8* %arrayidx54, align 1
  %conv55 = zext i8 %38 to i32
  %39 = load i8*, i8** %p2.addr, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %39, i64 1
  %40 = load i8, i8* %arrayidx56, align 1
  %conv57 = zext i8 %40 to i32
  %add58 = add nsw i32 %conv55, %conv57
  %add59 = add nsw i32 %add58, 1
  %shr60 = ashr i32 %add59, 1
  %conv61 = trunc i32 %shr60 to i8
  %41 = load i8*, i8** %p.addr, align 8
  %arrayidx62 = getelementptr inbounds i8, i8* %41, i64 1
  store i8 %conv61, i8* %arrayidx62, align 1
  %42 = load i8*, i8** %p1.addr, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %42, i64 2
  %43 = load i8, i8* %arrayidx63, align 1
  %conv64 = zext i8 %43 to i32
  %44 = load i8*, i8** %p2.addr, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %44, i64 2
  %45 = load i8, i8* %arrayidx65, align 1
  %conv66 = zext i8 %45 to i32
  %add67 = add nsw i32 %conv64, %conv66
  %add68 = add nsw i32 %add67, 1
  %shr69 = ashr i32 %add68, 1
  %conv70 = trunc i32 %shr69 to i8
  %46 = load i8*, i8** %p.addr, align 8
  %arrayidx71 = getelementptr inbounds i8, i8* %46, i64 2
  store i8 %conv70, i8* %arrayidx71, align 1
  br label %sw.epilog.167

sw.bb.72:                                         ; preds = %entry
  %47 = load i8*, i8** %p1.addr, align 8
  %arrayidx74 = getelementptr inbounds i8, i8* %47, i64 3
  %48 = load i8, i8* %arrayidx74, align 1
  %conv75 = zext i8 %48 to i32
  %49 = load i8*, i8** %p2.addr, align 8
  %arrayidx76 = getelementptr inbounds i8, i8* %49, i64 3
  %50 = load i8, i8* %arrayidx76, align 1
  %conv77 = zext i8 %50 to i32
  %add78 = add nsw i32 %conv75, %conv77
  store i32 %add78, i32* %a73, align 4
  %51 = load i32, i32* %a73, align 4
  switch i32 %51, label %sw.default.113 [
    i32 0, label %sw.bb.79
    i32 510, label %sw.bb.84
  ]

sw.bb.79:                                         ; preds = %sw.bb.72
  %52 = load i8*, i8** %p.addr, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %52, i64 3
  store i8 0, i8* %arrayidx80, align 1
  %53 = load i8*, i8** %p.addr, align 8
  %arrayidx81 = getelementptr inbounds i8, i8* %53, i64 2
  store i8 0, i8* %arrayidx81, align 1
  %54 = load i8*, i8** %p.addr, align 8
  %arrayidx82 = getelementptr inbounds i8, i8* %54, i64 1
  store i8 0, i8* %arrayidx82, align 1
  %55 = load i8*, i8** %p.addr, align 8
  %arrayidx83 = getelementptr inbounds i8, i8* %55, i64 0
  store i8 0, i8* %arrayidx83, align 1
  br label %sw.epilog.166

sw.bb.84:                                         ; preds = %sw.bb.72
  %56 = load i8*, i8** %p1.addr, align 8
  %arrayidx85 = getelementptr inbounds i8, i8* %56, i64 0
  %57 = load i8, i8* %arrayidx85, align 1
  %conv86 = zext i8 %57 to i32
  %58 = load i8*, i8** %p2.addr, align 8
  %arrayidx87 = getelementptr inbounds i8, i8* %58, i64 0
  %59 = load i8, i8* %arrayidx87, align 1
  %conv88 = zext i8 %59 to i32
  %add89 = add nsw i32 %conv86, %conv88
  %add90 = add nsw i32 %add89, 1
  %shr91 = ashr i32 %add90, 1
  %conv92 = trunc i32 %shr91 to i8
  %60 = load i8*, i8** %p.addr, align 8
  %arrayidx93 = getelementptr inbounds i8, i8* %60, i64 0
  store i8 %conv92, i8* %arrayidx93, align 1
  %61 = load i8*, i8** %p1.addr, align 8
  %arrayidx94 = getelementptr inbounds i8, i8* %61, i64 1
  %62 = load i8, i8* %arrayidx94, align 1
  %conv95 = zext i8 %62 to i32
  %63 = load i8*, i8** %p2.addr, align 8
  %arrayidx96 = getelementptr inbounds i8, i8* %63, i64 1
  %64 = load i8, i8* %arrayidx96, align 1
  %conv97 = zext i8 %64 to i32
  %add98 = add nsw i32 %conv95, %conv97
  %add99 = add nsw i32 %add98, 1
  %shr100 = ashr i32 %add99, 1
  %conv101 = trunc i32 %shr100 to i8
  %65 = load i8*, i8** %p.addr, align 8
  %arrayidx102 = getelementptr inbounds i8, i8* %65, i64 1
  store i8 %conv101, i8* %arrayidx102, align 1
  %66 = load i8*, i8** %p1.addr, align 8
  %arrayidx103 = getelementptr inbounds i8, i8* %66, i64 2
  %67 = load i8, i8* %arrayidx103, align 1
  %conv104 = zext i8 %67 to i32
  %68 = load i8*, i8** %p2.addr, align 8
  %arrayidx105 = getelementptr inbounds i8, i8* %68, i64 2
  %69 = load i8, i8* %arrayidx105, align 1
  %conv106 = zext i8 %69 to i32
  %add107 = add nsw i32 %conv104, %conv106
  %add108 = add nsw i32 %add107, 1
  %shr109 = ashr i32 %add108, 1
  %conv110 = trunc i32 %shr109 to i8
  %70 = load i8*, i8** %p.addr, align 8
  %arrayidx111 = getelementptr inbounds i8, i8* %70, i64 2
  store i8 %conv110, i8* %arrayidx111, align 1
  %71 = load i8*, i8** %p.addr, align 8
  %arrayidx112 = getelementptr inbounds i8, i8* %71, i64 3
  store i8 -1, i8* %arrayidx112, align 1
  br label %sw.epilog.166

sw.default.113:                                   ; preds = %sw.bb.72
  %72 = load i8*, i8** %p1.addr, align 8
  %arrayidx114 = getelementptr inbounds i8, i8* %72, i64 0
  %73 = load i8, i8* %arrayidx114, align 1
  %conv115 = zext i8 %73 to i32
  %74 = load i8*, i8** %p1.addr, align 8
  %arrayidx116 = getelementptr inbounds i8, i8* %74, i64 3
  %75 = load i8, i8* %arrayidx116, align 1
  %conv117 = zext i8 %75 to i32
  %mul118 = mul nsw i32 %conv115, %conv117
  %76 = load i8*, i8** %p2.addr, align 8
  %arrayidx119 = getelementptr inbounds i8, i8* %76, i64 0
  %77 = load i8, i8* %arrayidx119, align 1
  %conv120 = zext i8 %77 to i32
  %78 = load i8*, i8** %p2.addr, align 8
  %arrayidx121 = getelementptr inbounds i8, i8* %78, i64 3
  %79 = load i8, i8* %arrayidx121, align 1
  %conv122 = zext i8 %79 to i32
  %mul123 = mul nsw i32 %conv120, %conv122
  %add124 = add nsw i32 %mul118, %mul123
  %80 = load i32, i32* %a73, align 4
  %shr125 = lshr i32 %80, 1
  %add126 = add i32 %add124, %shr125
  %81 = load i32, i32* %a73, align 4
  %div127 = udiv i32 %add126, %81
  %conv128 = trunc i32 %div127 to i8
  %82 = load i8*, i8** %p.addr, align 8
  %arrayidx129 = getelementptr inbounds i8, i8* %82, i64 0
  store i8 %conv128, i8* %arrayidx129, align 1
  %83 = load i8*, i8** %p1.addr, align 8
  %arrayidx130 = getelementptr inbounds i8, i8* %83, i64 1
  %84 = load i8, i8* %arrayidx130, align 1
  %conv131 = zext i8 %84 to i32
  %85 = load i8*, i8** %p1.addr, align 8
  %arrayidx132 = getelementptr inbounds i8, i8* %85, i64 3
  %86 = load i8, i8* %arrayidx132, align 1
  %conv133 = zext i8 %86 to i32
  %mul134 = mul nsw i32 %conv131, %conv133
  %87 = load i8*, i8** %p2.addr, align 8
  %arrayidx135 = getelementptr inbounds i8, i8* %87, i64 1
  %88 = load i8, i8* %arrayidx135, align 1
  %conv136 = zext i8 %88 to i32
  %89 = load i8*, i8** %p2.addr, align 8
  %arrayidx137 = getelementptr inbounds i8, i8* %89, i64 3
  %90 = load i8, i8* %arrayidx137, align 1
  %conv138 = zext i8 %90 to i32
  %mul139 = mul nsw i32 %conv136, %conv138
  %add140 = add nsw i32 %mul134, %mul139
  %91 = load i32, i32* %a73, align 4
  %shr141 = lshr i32 %91, 1
  %add142 = add i32 %add140, %shr141
  %92 = load i32, i32* %a73, align 4
  %div143 = udiv i32 %add142, %92
  %conv144 = trunc i32 %div143 to i8
  %93 = load i8*, i8** %p.addr, align 8
  %arrayidx145 = getelementptr inbounds i8, i8* %93, i64 1
  store i8 %conv144, i8* %arrayidx145, align 1
  %94 = load i8*, i8** %p1.addr, align 8
  %arrayidx146 = getelementptr inbounds i8, i8* %94, i64 2
  %95 = load i8, i8* %arrayidx146, align 1
  %conv147 = zext i8 %95 to i32
  %96 = load i8*, i8** %p1.addr, align 8
  %arrayidx148 = getelementptr inbounds i8, i8* %96, i64 3
  %97 = load i8, i8* %arrayidx148, align 1
  %conv149 = zext i8 %97 to i32
  %mul150 = mul nsw i32 %conv147, %conv149
  %98 = load i8*, i8** %p2.addr, align 8
  %arrayidx151 = getelementptr inbounds i8, i8* %98, i64 2
  %99 = load i8, i8* %arrayidx151, align 1
  %conv152 = zext i8 %99 to i32
  %100 = load i8*, i8** %p2.addr, align 8
  %arrayidx153 = getelementptr inbounds i8, i8* %100, i64 3
  %101 = load i8, i8* %arrayidx153, align 1
  %conv154 = zext i8 %101 to i32
  %mul155 = mul nsw i32 %conv152, %conv154
  %add156 = add nsw i32 %mul150, %mul155
  %102 = load i32, i32* %a73, align 4
  %shr157 = lshr i32 %102, 1
  %add158 = add i32 %add156, %shr157
  %103 = load i32, i32* %a73, align 4
  %div159 = udiv i32 %add158, %103
  %conv160 = trunc i32 %div159 to i8
  %104 = load i8*, i8** %p.addr, align 8
  %arrayidx161 = getelementptr inbounds i8, i8* %104, i64 2
  store i8 %conv160, i8* %arrayidx161, align 1
  %105 = load i32, i32* %a73, align 4
  %add162 = add i32 %105, 1
  %shr163 = lshr i32 %add162, 1
  %conv164 = trunc i32 %shr163 to i8
  %106 = load i8*, i8** %p.addr, align 8
  %arrayidx165 = getelementptr inbounds i8, i8* %106, i64 3
  store i8 %conv164, i8* %arrayidx165, align 1
  br label %sw.epilog.166

sw.epilog.166:                                    ; preds = %sw.default.113, %sw.bb.84, %sw.bb.79
  br label %sw.epilog.167

sw.epilog.167:                                    ; preds = %entry, %sw.epilog.166, %sw.bb.44, %sw.epilog, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @decimate_average_y(%struct._PixelSurround* %surround, i32 %x0, i32 %y0, i32 %bytes, i8* %pixel) #0 {
entry:
  %surround.addr = alloca %struct._PixelSurround*, align 8
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %bytes.addr = alloca i32, align 4
  %pixel.addr = alloca i8*, align 8
  %stride = alloca i32, align 4
  %src = alloca i8*, align 8
  store %struct._PixelSurround* %surround, %struct._PixelSurround** %surround.addr, align 8
  store i32 %x0, i32* %x0.addr, align 4
  store i32 %y0, i32* %y0.addr, align 4
  store i32 %bytes, i32* %bytes.addr, align 4
  store i8* %pixel, i8** %pixel.addr, align 8
  %0 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %1 = load i32, i32* %x0.addr, align 4
  %2 = load i32, i32* %y0.addr, align 4
  %call = call i8* @pixel_surround_lock(%struct._PixelSurround* %0, i32 %1, i32 %2, i32* %stride)
  store i8* %call, i8** %src, align 8
  %3 = load i8*, i8** %src, align 8
  %4 = load i8*, i8** %src, align 8
  %5 = load i32, i32* %stride, align 4
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  %6 = load i8*, i8** %pixel.addr, align 8
  %7 = load i32, i32* %bytes.addr, align 4
  call void @pixel_average2(i8* %3, i8* %add.ptr, i8* %6, i32 %7)
  ret void
}

; Function Attrs: nounwind
declare double @sin(double) #5

; Function Attrs: nounwind uwtable
define internal void @interpolate_bilinear_pr(%struct._PixelRegion* %srcPR, i32 %x0, i32 %y0, i32 %x1, i32 %y1, double %xfrac, double %yfrac, i8* %pixel) #0 {
entry:
  %srcPR.addr = alloca %struct._PixelRegion*, align 8
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %xfrac.addr = alloca double, align 8
  %yfrac.addr = alloca double, align 8
  %pixel.addr = alloca i8*, align 8
  %bytes = alloca i32, align 4
  %width = alloca i32, align 4
  %p1 = alloca i8*, align 8
  %p2 = alloca i8*, align 8
  %p3 = alloca i8*, align 8
  %p4 = alloca i8*, align 8
  %b = alloca i32, align 4
  %sum = alloca double, align 8
  %alphasum = alloca double, align 8
  store %struct._PixelRegion* %srcPR, %struct._PixelRegion** %srcPR.addr, align 8
  store i32 %x0, i32* %x0.addr, align 4
  store i32 %y0, i32* %y0.addr, align 4
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store double %xfrac, double* %xfrac.addr, align 8
  store double %yfrac, double* %yfrac.addr, align 8
  store i8* %pixel, i8** %pixel.addr, align 8
  %0 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %bytes1 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %0, i32 0, i32 10
  %1 = load i32, i32* %bytes1, align 4
  store i32 %1, i32* %bytes, align 4
  %2 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %2, i32 0, i32 8
  %3 = load i32, i32* %w, align 4
  store i32 %3, i32* %width, align 4
  %4 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %data = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %4, i32 0, i32 0
  %5 = load i8*, i8** %data, align 8
  %6 = load i32, i32* %y0.addr, align 4
  %7 = load i32, i32* %width, align 4
  %mul = mul nsw i32 %6, %7
  %8 = load i32, i32* %x0.addr, align 4
  %add = add nsw i32 %mul, %8
  %9 = load i32, i32* %bytes, align 4
  %mul2 = mul nsw i32 %add, %9
  %idx.ext = sext i32 %mul2 to i64
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %idx.ext
  store i8* %add.ptr, i8** %p1, align 8
  %10 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %data3 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %10, i32 0, i32 0
  %11 = load i8*, i8** %data3, align 8
  %12 = load i32, i32* %y0.addr, align 4
  %13 = load i32, i32* %width, align 4
  %mul4 = mul nsw i32 %12, %13
  %14 = load i32, i32* %x1.addr, align 4
  %add5 = add nsw i32 %mul4, %14
  %15 = load i32, i32* %bytes, align 4
  %mul6 = mul nsw i32 %add5, %15
  %idx.ext7 = sext i32 %mul6 to i64
  %add.ptr8 = getelementptr inbounds i8, i8* %11, i64 %idx.ext7
  store i8* %add.ptr8, i8** %p2, align 8
  %16 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %data9 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %16, i32 0, i32 0
  %17 = load i8*, i8** %data9, align 8
  %18 = load i32, i32* %y1.addr, align 4
  %19 = load i32, i32* %width, align 4
  %mul10 = mul nsw i32 %18, %19
  %20 = load i32, i32* %x0.addr, align 4
  %add11 = add nsw i32 %mul10, %20
  %21 = load i32, i32* %bytes, align 4
  %mul12 = mul nsw i32 %add11, %21
  %idx.ext13 = sext i32 %mul12 to i64
  %add.ptr14 = getelementptr inbounds i8, i8* %17, i64 %idx.ext13
  store i8* %add.ptr14, i8** %p3, align 8
  %22 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %data15 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %22, i32 0, i32 0
  %23 = load i8*, i8** %data15, align 8
  %24 = load i32, i32* %y1.addr, align 4
  %25 = load i32, i32* %width, align 4
  %mul16 = mul nsw i32 %24, %25
  %26 = load i32, i32* %x1.addr, align 4
  %add17 = add nsw i32 %mul16, %26
  %27 = load i32, i32* %bytes, align 4
  %mul18 = mul nsw i32 %add17, %27
  %idx.ext19 = sext i32 %mul18 to i64
  %add.ptr20 = getelementptr inbounds i8, i8* %23, i64 %idx.ext19
  store i8* %add.ptr20, i8** %p4, align 8
  %28 = load i32, i32* %bytes, align 4
  switch i32 %28, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.36
    i32 3, label %sw.bb.99
    i32 4, label %sw.bb.129
  ]

sw.bb:                                            ; preds = %entry
  %29 = load double, double* %xfrac.addr, align 8
  %30 = load double, double* %yfrac.addr, align 8
  %31 = load i8*, i8** %p1, align 8
  %arrayidx = getelementptr inbounds i8, i8* %31, i64 0
  %32 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %32 to i32
  %33 = load i8*, i8** %p2, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %33, i64 0
  %34 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %34 to i32
  %35 = load i8*, i8** %p3, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %35, i64 0
  %36 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %36 to i32
  %37 = load i8*, i8** %p4, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %37, i64 0
  %38 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %38 to i32
  %call = call double @weighted_sum(double %29, double %30, i32 %conv, i32 %conv22, i32 %conv24, i32 %conv26)
  store double %call, double* %sum, align 8
  %39 = load double, double* %sum, align 8
  %cmp = fcmp ogt double %39, 2.550000e+02
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  br label %cond.end.32

cond.false:                                       ; preds = %sw.bb
  %40 = load double, double* %sum, align 8
  %cmp28 = fcmp olt double %40, 0.000000e+00
  br i1 %cmp28, label %cond.true.30, label %cond.false.31

cond.true.30:                                     ; preds = %cond.false
  br label %cond.end

cond.false.31:                                    ; preds = %cond.false
  %41 = load double, double* %sum, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.31, %cond.true.30
  %cond = phi double [ 0.000000e+00, %cond.true.30 ], [ %41, %cond.false.31 ]
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.end, %cond.true
  %cond33 = phi double [ 2.550000e+02, %cond.true ], [ %cond, %cond.end ]
  %conv34 = fptoui double %cond33 to i8
  %42 = load i8*, i8** %pixel.addr, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %42, i64 0
  store i8 %conv34, i8* %arrayidx35, align 1
  br label %sw.epilog

sw.bb.36:                                         ; preds = %entry
  %43 = load double, double* %xfrac.addr, align 8
  %44 = load double, double* %yfrac.addr, align 8
  %45 = load i8*, i8** %p1, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %45, i64 1
  %46 = load i8, i8* %arrayidx37, align 1
  %conv38 = zext i8 %46 to i32
  %47 = load i8*, i8** %p2, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %47, i64 1
  %48 = load i8, i8* %arrayidx39, align 1
  %conv40 = zext i8 %48 to i32
  %49 = load i8*, i8** %p3, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %49, i64 1
  %50 = load i8, i8* %arrayidx41, align 1
  %conv42 = zext i8 %50 to i32
  %51 = load i8*, i8** %p4, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %51, i64 1
  %52 = load i8, i8* %arrayidx43, align 1
  %conv44 = zext i8 %52 to i32
  %call45 = call double @weighted_sum(double %43, double %44, i32 %conv38, i32 %conv40, i32 %conv42, i32 %conv44)
  store double %call45, double* %alphasum, align 8
  %53 = load double, double* %alphasum, align 8
  %cmp46 = fcmp ogt double %53, 0.000000e+00
  br i1 %cmp46, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.36
  %54 = load double, double* %xfrac.addr, align 8
  %55 = load double, double* %yfrac.addr, align 8
  %56 = load i8*, i8** %p1, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %56, i64 0
  %57 = load i8, i8* %arrayidx48, align 1
  %conv49 = zext i8 %57 to i32
  %58 = load i8*, i8** %p1, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %58, i64 1
  %59 = load i8, i8* %arrayidx50, align 1
  %conv51 = zext i8 %59 to i32
  %mul52 = mul nsw i32 %conv49, %conv51
  %60 = load i8*, i8** %p2, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %60, i64 0
  %61 = load i8, i8* %arrayidx53, align 1
  %conv54 = zext i8 %61 to i32
  %62 = load i8*, i8** %p2, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %62, i64 1
  %63 = load i8, i8* %arrayidx55, align 1
  %conv56 = zext i8 %63 to i32
  %mul57 = mul nsw i32 %conv54, %conv56
  %64 = load i8*, i8** %p3, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %64, i64 0
  %65 = load i8, i8* %arrayidx58, align 1
  %conv59 = zext i8 %65 to i32
  %66 = load i8*, i8** %p3, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %66, i64 1
  %67 = load i8, i8* %arrayidx60, align 1
  %conv61 = zext i8 %67 to i32
  %mul62 = mul nsw i32 %conv59, %conv61
  %68 = load i8*, i8** %p4, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %68, i64 0
  %69 = load i8, i8* %arrayidx63, align 1
  %conv64 = zext i8 %69 to i32
  %70 = load i8*, i8** %p4, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %70, i64 1
  %71 = load i8, i8* %arrayidx65, align 1
  %conv66 = zext i8 %71 to i32
  %mul67 = mul nsw i32 %conv64, %conv66
  %call68 = call double @weighted_sum(double %54, double %55, i32 %mul52, i32 %mul57, i32 %mul62, i32 %mul67)
  store double %call68, double* %sum, align 8
  %72 = load double, double* %alphasum, align 8
  %73 = load double, double* %sum, align 8
  %div = fdiv double %73, %72
  store double %div, double* %sum, align 8
  %74 = load double, double* %sum, align 8
  %cmp69 = fcmp ogt double %74, 2.550000e+02
  br i1 %cmp69, label %cond.true.71, label %cond.false.72

cond.true.71:                                     ; preds = %if.then
  br label %cond.end.79

cond.false.72:                                    ; preds = %if.then
  %75 = load double, double* %sum, align 8
  %cmp73 = fcmp olt double %75, 0.000000e+00
  br i1 %cmp73, label %cond.true.75, label %cond.false.76

cond.true.75:                                     ; preds = %cond.false.72
  br label %cond.end.77

cond.false.76:                                    ; preds = %cond.false.72
  %76 = load double, double* %sum, align 8
  br label %cond.end.77

cond.end.77:                                      ; preds = %cond.false.76, %cond.true.75
  %cond78 = phi double [ 0.000000e+00, %cond.true.75 ], [ %76, %cond.false.76 ]
  br label %cond.end.79

cond.end.79:                                      ; preds = %cond.end.77, %cond.true.71
  %cond80 = phi double [ 2.550000e+02, %cond.true.71 ], [ %cond78, %cond.end.77 ]
  %conv81 = fptoui double %cond80 to i8
  %77 = load i8*, i8** %pixel.addr, align 8
  %arrayidx82 = getelementptr inbounds i8, i8* %77, i64 0
  store i8 %conv81, i8* %arrayidx82, align 1
  %78 = load double, double* %alphasum, align 8
  %cmp83 = fcmp ogt double %78, 2.550000e+02
  br i1 %cmp83, label %cond.true.85, label %cond.false.86

cond.true.85:                                     ; preds = %cond.end.79
  br label %cond.end.93

cond.false.86:                                    ; preds = %cond.end.79
  %79 = load double, double* %alphasum, align 8
  %cmp87 = fcmp olt double %79, 0.000000e+00
  br i1 %cmp87, label %cond.true.89, label %cond.false.90

cond.true.89:                                     ; preds = %cond.false.86
  br label %cond.end.91

cond.false.90:                                    ; preds = %cond.false.86
  %80 = load double, double* %alphasum, align 8
  br label %cond.end.91

cond.end.91:                                      ; preds = %cond.false.90, %cond.true.89
  %cond92 = phi double [ 0.000000e+00, %cond.true.89 ], [ %80, %cond.false.90 ]
  br label %cond.end.93

cond.end.93:                                      ; preds = %cond.end.91, %cond.true.85
  %cond94 = phi double [ 2.550000e+02, %cond.true.85 ], [ %cond92, %cond.end.91 ]
  %conv95 = fptoui double %cond94 to i8
  %81 = load i8*, i8** %pixel.addr, align 8
  %arrayidx96 = getelementptr inbounds i8, i8* %81, i64 1
  store i8 %conv95, i8* %arrayidx96, align 1
  br label %if.end

if.else:                                          ; preds = %sw.bb.36
  %82 = load i8*, i8** %pixel.addr, align 8
  %arrayidx97 = getelementptr inbounds i8, i8* %82, i64 1
  store i8 0, i8* %arrayidx97, align 1
  %83 = load i8*, i8** %pixel.addr, align 8
  %arrayidx98 = getelementptr inbounds i8, i8* %83, i64 0
  store i8 0, i8* %arrayidx98, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end.93
  br label %sw.epilog

sw.bb.99:                                         ; preds = %entry
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.99
  %84 = load i32, i32* %b, align 4
  %cmp100 = icmp slt i32 %84, 3
  br i1 %cmp100, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %85 = load double, double* %xfrac.addr, align 8
  %86 = load double, double* %yfrac.addr, align 8
  %87 = load i32, i32* %b, align 4
  %idxprom = sext i32 %87 to i64
  %88 = load i8*, i8** %p1, align 8
  %arrayidx102 = getelementptr inbounds i8, i8* %88, i64 %idxprom
  %89 = load i8, i8* %arrayidx102, align 1
  %conv103 = zext i8 %89 to i32
  %90 = load i32, i32* %b, align 4
  %idxprom104 = sext i32 %90 to i64
  %91 = load i8*, i8** %p2, align 8
  %arrayidx105 = getelementptr inbounds i8, i8* %91, i64 %idxprom104
  %92 = load i8, i8* %arrayidx105, align 1
  %conv106 = zext i8 %92 to i32
  %93 = load i32, i32* %b, align 4
  %idxprom107 = sext i32 %93 to i64
  %94 = load i8*, i8** %p3, align 8
  %arrayidx108 = getelementptr inbounds i8, i8* %94, i64 %idxprom107
  %95 = load i8, i8* %arrayidx108, align 1
  %conv109 = zext i8 %95 to i32
  %96 = load i32, i32* %b, align 4
  %idxprom110 = sext i32 %96 to i64
  %97 = load i8*, i8** %p4, align 8
  %arrayidx111 = getelementptr inbounds i8, i8* %97, i64 %idxprom110
  %98 = load i8, i8* %arrayidx111, align 1
  %conv112 = zext i8 %98 to i32
  %call113 = call double @weighted_sum(double %85, double %86, i32 %conv103, i32 %conv106, i32 %conv109, i32 %conv112)
  store double %call113, double* %sum, align 8
  %99 = load double, double* %sum, align 8
  %cmp114 = fcmp ogt double %99, 2.550000e+02
  br i1 %cmp114, label %cond.true.116, label %cond.false.117

cond.true.116:                                    ; preds = %for.body
  br label %cond.end.124

cond.false.117:                                   ; preds = %for.body
  %100 = load double, double* %sum, align 8
  %cmp118 = fcmp olt double %100, 0.000000e+00
  br i1 %cmp118, label %cond.true.120, label %cond.false.121

cond.true.120:                                    ; preds = %cond.false.117
  br label %cond.end.122

cond.false.121:                                   ; preds = %cond.false.117
  %101 = load double, double* %sum, align 8
  br label %cond.end.122

cond.end.122:                                     ; preds = %cond.false.121, %cond.true.120
  %cond123 = phi double [ 0.000000e+00, %cond.true.120 ], [ %101, %cond.false.121 ]
  br label %cond.end.124

cond.end.124:                                     ; preds = %cond.end.122, %cond.true.116
  %cond125 = phi double [ 2.550000e+02, %cond.true.116 ], [ %cond123, %cond.end.122 ]
  %conv126 = fptoui double %cond125 to i8
  %102 = load i32, i32* %b, align 4
  %idxprom127 = sext i32 %102 to i64
  %103 = load i8*, i8** %pixel.addr, align 8
  %arrayidx128 = getelementptr inbounds i8, i8* %103, i64 %idxprom127
  store i8 %conv126, i8* %arrayidx128, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end.124
  %104 = load i32, i32* %b, align 4
  %inc = add nsw i32 %104, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.bb.129:                                        ; preds = %entry
  %105 = load double, double* %xfrac.addr, align 8
  %106 = load double, double* %yfrac.addr, align 8
  %107 = load i8*, i8** %p1, align 8
  %arrayidx130 = getelementptr inbounds i8, i8* %107, i64 3
  %108 = load i8, i8* %arrayidx130, align 1
  %conv131 = zext i8 %108 to i32
  %109 = load i8*, i8** %p2, align 8
  %arrayidx132 = getelementptr inbounds i8, i8* %109, i64 3
  %110 = load i8, i8* %arrayidx132, align 1
  %conv133 = zext i8 %110 to i32
  %111 = load i8*, i8** %p3, align 8
  %arrayidx134 = getelementptr inbounds i8, i8* %111, i64 3
  %112 = load i8, i8* %arrayidx134, align 1
  %conv135 = zext i8 %112 to i32
  %113 = load i8*, i8** %p4, align 8
  %arrayidx136 = getelementptr inbounds i8, i8* %113, i64 3
  %114 = load i8, i8* %arrayidx136, align 1
  %conv137 = zext i8 %114 to i32
  %call138 = call double @weighted_sum(double %105, double %106, i32 %conv131, i32 %conv133, i32 %conv135, i32 %conv137)
  store double %call138, double* %alphasum, align 8
  %115 = load double, double* %alphasum, align 8
  %cmp139 = fcmp ogt double %115, 0.000000e+00
  br i1 %cmp139, label %if.then.141, label %if.else.204

if.then.141:                                      ; preds = %sw.bb.129
  store i32 0, i32* %b, align 4
  br label %for.cond.142

for.cond.142:                                     ; preds = %for.inc.187, %if.then.141
  %116 = load i32, i32* %b, align 4
  %cmp143 = icmp slt i32 %116, 3
  br i1 %cmp143, label %for.body.145, label %for.end.189

for.body.145:                                     ; preds = %for.cond.142
  %117 = load double, double* %xfrac.addr, align 8
  %118 = load double, double* %yfrac.addr, align 8
  %119 = load i32, i32* %b, align 4
  %idxprom146 = sext i32 %119 to i64
  %120 = load i8*, i8** %p1, align 8
  %arrayidx147 = getelementptr inbounds i8, i8* %120, i64 %idxprom146
  %121 = load i8, i8* %arrayidx147, align 1
  %conv148 = zext i8 %121 to i32
  %122 = load i8*, i8** %p1, align 8
  %arrayidx149 = getelementptr inbounds i8, i8* %122, i64 3
  %123 = load i8, i8* %arrayidx149, align 1
  %conv150 = zext i8 %123 to i32
  %mul151 = mul nsw i32 %conv148, %conv150
  %124 = load i32, i32* %b, align 4
  %idxprom152 = sext i32 %124 to i64
  %125 = load i8*, i8** %p2, align 8
  %arrayidx153 = getelementptr inbounds i8, i8* %125, i64 %idxprom152
  %126 = load i8, i8* %arrayidx153, align 1
  %conv154 = zext i8 %126 to i32
  %127 = load i8*, i8** %p2, align 8
  %arrayidx155 = getelementptr inbounds i8, i8* %127, i64 3
  %128 = load i8, i8* %arrayidx155, align 1
  %conv156 = zext i8 %128 to i32
  %mul157 = mul nsw i32 %conv154, %conv156
  %129 = load i32, i32* %b, align 4
  %idxprom158 = sext i32 %129 to i64
  %130 = load i8*, i8** %p3, align 8
  %arrayidx159 = getelementptr inbounds i8, i8* %130, i64 %idxprom158
  %131 = load i8, i8* %arrayidx159, align 1
  %conv160 = zext i8 %131 to i32
  %132 = load i8*, i8** %p3, align 8
  %arrayidx161 = getelementptr inbounds i8, i8* %132, i64 3
  %133 = load i8, i8* %arrayidx161, align 1
  %conv162 = zext i8 %133 to i32
  %mul163 = mul nsw i32 %conv160, %conv162
  %134 = load i32, i32* %b, align 4
  %idxprom164 = sext i32 %134 to i64
  %135 = load i8*, i8** %p4, align 8
  %arrayidx165 = getelementptr inbounds i8, i8* %135, i64 %idxprom164
  %136 = load i8, i8* %arrayidx165, align 1
  %conv166 = zext i8 %136 to i32
  %137 = load i8*, i8** %p4, align 8
  %arrayidx167 = getelementptr inbounds i8, i8* %137, i64 3
  %138 = load i8, i8* %arrayidx167, align 1
  %conv168 = zext i8 %138 to i32
  %mul169 = mul nsw i32 %conv166, %conv168
  %call170 = call double @weighted_sum(double %117, double %118, i32 %mul151, i32 %mul157, i32 %mul163, i32 %mul169)
  store double %call170, double* %sum, align 8
  %139 = load double, double* %alphasum, align 8
  %140 = load double, double* %sum, align 8
  %div171 = fdiv double %140, %139
  store double %div171, double* %sum, align 8
  %141 = load double, double* %sum, align 8
  %cmp172 = fcmp ogt double %141, 2.550000e+02
  br i1 %cmp172, label %cond.true.174, label %cond.false.175

cond.true.174:                                    ; preds = %for.body.145
  br label %cond.end.182

cond.false.175:                                   ; preds = %for.body.145
  %142 = load double, double* %sum, align 8
  %cmp176 = fcmp olt double %142, 0.000000e+00
  br i1 %cmp176, label %cond.true.178, label %cond.false.179

cond.true.178:                                    ; preds = %cond.false.175
  br label %cond.end.180

cond.false.179:                                   ; preds = %cond.false.175
  %143 = load double, double* %sum, align 8
  br label %cond.end.180

cond.end.180:                                     ; preds = %cond.false.179, %cond.true.178
  %cond181 = phi double [ 0.000000e+00, %cond.true.178 ], [ %143, %cond.false.179 ]
  br label %cond.end.182

cond.end.182:                                     ; preds = %cond.end.180, %cond.true.174
  %cond183 = phi double [ 2.550000e+02, %cond.true.174 ], [ %cond181, %cond.end.180 ]
  %conv184 = fptoui double %cond183 to i8
  %144 = load i32, i32* %b, align 4
  %idxprom185 = sext i32 %144 to i64
  %145 = load i8*, i8** %pixel.addr, align 8
  %arrayidx186 = getelementptr inbounds i8, i8* %145, i64 %idxprom185
  store i8 %conv184, i8* %arrayidx186, align 1
  br label %for.inc.187

for.inc.187:                                      ; preds = %cond.end.182
  %146 = load i32, i32* %b, align 4
  %inc188 = add nsw i32 %146, 1
  store i32 %inc188, i32* %b, align 4
  br label %for.cond.142

for.end.189:                                      ; preds = %for.cond.142
  %147 = load double, double* %alphasum, align 8
  %cmp190 = fcmp ogt double %147, 2.550000e+02
  br i1 %cmp190, label %cond.true.192, label %cond.false.193

cond.true.192:                                    ; preds = %for.end.189
  br label %cond.end.200

cond.false.193:                                   ; preds = %for.end.189
  %148 = load double, double* %alphasum, align 8
  %cmp194 = fcmp olt double %148, 0.000000e+00
  br i1 %cmp194, label %cond.true.196, label %cond.false.197

cond.true.196:                                    ; preds = %cond.false.193
  br label %cond.end.198

cond.false.197:                                   ; preds = %cond.false.193
  %149 = load double, double* %alphasum, align 8
  br label %cond.end.198

cond.end.198:                                     ; preds = %cond.false.197, %cond.true.196
  %cond199 = phi double [ 0.000000e+00, %cond.true.196 ], [ %149, %cond.false.197 ]
  br label %cond.end.200

cond.end.200:                                     ; preds = %cond.end.198, %cond.true.192
  %cond201 = phi double [ 2.550000e+02, %cond.true.192 ], [ %cond199, %cond.end.198 ]
  %conv202 = fptoui double %cond201 to i8
  %150 = load i8*, i8** %pixel.addr, align 8
  %arrayidx203 = getelementptr inbounds i8, i8* %150, i64 3
  store i8 %conv202, i8* %arrayidx203, align 1
  br label %if.end.209

if.else.204:                                      ; preds = %sw.bb.129
  %151 = load i8*, i8** %pixel.addr, align 8
  %arrayidx205 = getelementptr inbounds i8, i8* %151, i64 3
  store i8 0, i8* %arrayidx205, align 1
  %152 = load i8*, i8** %pixel.addr, align 8
  %arrayidx206 = getelementptr inbounds i8, i8* %152, i64 2
  store i8 0, i8* %arrayidx206, align 1
  %153 = load i8*, i8** %pixel.addr, align 8
  %arrayidx207 = getelementptr inbounds i8, i8* %153, i64 1
  store i8 0, i8* %arrayidx207, align 1
  %154 = load i8*, i8** %pixel.addr, align 8
  %arrayidx208 = getelementptr inbounds i8, i8* %154, i64 0
  store i8 0, i8* %arrayidx208, align 1
  br label %if.end.209

if.end.209:                                       ; preds = %if.else.204, %cond.end.200
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end.209, %for.end, %if.end, %cond.end.32
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
