; ModuleID = './app/base/siox.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._SioxState = type { %struct._TileManager*, i8*, i32, i32, i32, i32, i32, i32, i32, %struct._GHashTable*, %struct.lab*, %struct.lab*, i32, i32, i32 }
%struct._GHashTable = type opaque
%struct.lab = type { float, float, float, i32 }
%struct._TileManager = type opaque
%struct._PixelRegion = type { i8*, %struct._TileManager*, %struct._Tile*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._Tile = type opaque
%struct.classresult = type { float, float }
%struct._PixelRegionIterator = type { %struct._GSList*, i32, i32, i32, i32, i32 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct.blob = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Base\00", align 1
@__func__.siox_init = private unnamed_addr constant [10 x i8] c"siox_init\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"pixels != NULL\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"x >= 0\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"y >= 0\00", align 1
@__func__.siox_foreground_extract = private unnamed_addr constant [24 x i8] c"siox_foreground_extract\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"state != NULL\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"mask != NULL && tile_manager_bpp (mask) == 1\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"x1 >= 0\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"x2 > x1 && x2 <= tile_manager_width (mask)\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"y1 >= 0\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"y2 > y1 && y2 <= tile_manager_height (mask)\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"smoothness >= 0\00", align 1
@.str.11 = private unnamed_addr constant [51 x i8] c"progress_data == NULL || progress_callback != NULL\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"x + width <= tile_manager_width (mask)\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"y + height <= tile_manager_height (mask)\00", align 1
@__func__.siox_drb = private unnamed_addr constant [9 x i8] c"siox_drb\00", align 1
@__func__.siox_done = private unnamed_addr constant [10 x i8] c"siox_done\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"file %s: line %d (%s): should not be reached\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"siox.c\00", align 1
@__func__.calc_lab = private unnamed_addr constant [9 x i8] c"calc_lab\00", align 1

; Function Attrs: nounwind uwtable
define %struct._SioxState* @siox_init(%struct._TileManager* %pixels, i8* %colormap, i32 %offset_x, i32 %offset_y, i32 %x, i32 %y, i32 %width, i32 %height) #0 {
entry:
  %retval = alloca %struct._SioxState*, align 8
  %pixels.addr = alloca %struct._TileManager*, align 8
  %colormap.addr = alloca i8*, align 8
  %offset_x.addr = alloca i32, align 4
  %offset_y.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %state = alloca %struct._SioxState*, align 8
  store %struct._TileManager* %pixels, %struct._TileManager** %pixels.addr, align 8
  store i8* %colormap, i8** %colormap.addr, align 8
  store i32 %offset_x, i32* %offset_x.addr, align 4
  store i32 %offset_y, i32* %offset_y.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._TileManager*, %struct._TileManager** %pixels.addr, align 8
  %cmp = icmp ne %struct._TileManager* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.siox_init, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0))
  store %struct._SioxState* null, %struct._SioxState** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i32, i32* %x.addr, align 4
  %cmp2 = icmp sge i32 %1, 0
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.siox_init, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0))
  store %struct._SioxState* null, %struct._SioxState** %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  %2 = load i32, i32* %y.addr, align 4
  %cmp8 = icmp sge i32 %2, 0
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %do.body.7
  br label %if.end.11

if.else.10:                                       ; preds = %do.body.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.siox_init, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0))
  store %struct._SioxState* null, %struct._SioxState** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  %call = call noalias i8* @g_slice_alloc(i64 88)
  %3 = bitcast i8* %call to %struct._SioxState*
  store %struct._SioxState* %3, %struct._SioxState** %state, align 8
  %4 = load %struct._TileManager*, %struct._TileManager** %pixels.addr, align 8
  %5 = load %struct._SioxState*, %struct._SioxState** %state, align 8
  %pixels13 = getelementptr inbounds %struct._SioxState, %struct._SioxState* %5, i32 0, i32 0
  store %struct._TileManager* %4, %struct._TileManager** %pixels13, align 8
  %6 = load i8*, i8** %colormap.addr, align 8
  %7 = load %struct._SioxState*, %struct._SioxState** %state, align 8
  %colormap14 = getelementptr inbounds %struct._SioxState, %struct._SioxState* %7, i32 0, i32 1
  store i8* %6, i8** %colormap14, align 8
  %8 = load i32, i32* %offset_x.addr, align 4
  %9 = load %struct._SioxState*, %struct._SioxState** %state, align 8
  %offset_x15 = getelementptr inbounds %struct._SioxState, %struct._SioxState* %9, i32 0, i32 3
  store i32 %8, i32* %offset_x15, align 4
  %10 = load i32, i32* %offset_y.addr, align 4
  %11 = load %struct._SioxState*, %struct._SioxState** %state, align 8
  %offset_y16 = getelementptr inbounds %struct._SioxState, %struct._SioxState* %11, i32 0, i32 4
  store i32 %10, i32* %offset_y16, align 4
  %12 = load i32, i32* %x.addr, align 4
  %13 = load %struct._SioxState*, %struct._SioxState** %state, align 8
  %x17 = getelementptr inbounds %struct._SioxState, %struct._SioxState* %13, i32 0, i32 5
  store i32 %12, i32* %x17, align 4
  %14 = load i32, i32* %y.addr, align 4
  %15 = load %struct._SioxState*, %struct._SioxState** %state, align 8
  %y18 = getelementptr inbounds %struct._SioxState, %struct._SioxState* %15, i32 0, i32 6
  store i32 %14, i32* %y18, align 4
  %16 = load i32, i32* %width.addr, align 4
  %17 = load %struct._SioxState*, %struct._SioxState** %state, align 8
  %width19 = getelementptr inbounds %struct._SioxState, %struct._SioxState* %17, i32 0, i32 7
  store i32 %16, i32* %width19, align 4
  %18 = load i32, i32* %height.addr, align 4
  %19 = load %struct._SioxState*, %struct._SioxState** %state, align 8
  %height20 = getelementptr inbounds %struct._SioxState, %struct._SioxState* %19, i32 0, i32 8
  store i32 %18, i32* %height20, align 4
  %20 = load %struct._SioxState*, %struct._SioxState** %state, align 8
  %bgsig = getelementptr inbounds %struct._SioxState, %struct._SioxState* %20, i32 0, i32 10
  store %struct.lab* null, %struct.lab** %bgsig, align 8
  %21 = load %struct._SioxState*, %struct._SioxState** %state, align 8
  %fgsig = getelementptr inbounds %struct._SioxState, %struct._SioxState* %21, i32 0, i32 11
  store %struct.lab* null, %struct.lab** %fgsig, align 8
  %22 = load %struct._SioxState*, %struct._SioxState** %state, align 8
  %bgsiglen = getelementptr inbounds %struct._SioxState, %struct._SioxState* %22, i32 0, i32 12
  store i32 0, i32* %bgsiglen, align 4
  %23 = load %struct._SioxState*, %struct._SioxState** %state, align 8
  %fgsiglen = getelementptr inbounds %struct._SioxState, %struct._SioxState* %23, i32 0, i32 13
  store i32 0, i32* %fgsiglen, align 4
  %24 = load %struct._TileManager*, %struct._TileManager** %pixels.addr, align 8
  %call21 = call i32 @tile_manager_bpp(%struct._TileManager* %24)
  %25 = load %struct._SioxState*, %struct._SioxState** %state, align 8
  %bpp = getelementptr inbounds %struct._SioxState, %struct._SioxState* %25, i32 0, i32 2
  store i32 %call21, i32* %bpp, align 4
  %call22 = call %struct._GHashTable* @g_hash_table_new_full(i32 (i8*)* @g_direct_hash, i32 (i8*, i8*)* null, void (i8*)* null, void (i8*)* @siox_cache_entry_free)
  %26 = load %struct._SioxState*, %struct._SioxState** %state, align 8
  %cache = getelementptr inbounds %struct._SioxState, %struct._SioxState* %26, i32 0, i32 9
  store %struct._GHashTable* %call22, %struct._GHashTable** %cache, align 8
  call void @cpercep_init()
  %27 = load %struct._SioxState*, %struct._SioxState** %state, align 8
  store %struct._SioxState* %27, %struct._SioxState** %retval
  br label %return

return:                                           ; preds = %do.end.12, %if.else.10, %if.else.4, %if.else
  %28 = load %struct._SioxState*, %struct._SioxState** %retval
  ret %struct._SioxState* %28
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare noalias i8* @g_slice_alloc(i64) #1

declare i32 @tile_manager_bpp(%struct._TileManager*) #1

declare %struct._GHashTable* @g_hash_table_new_full(i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, void (i8*)*) #1

; Function Attrs: nounwind readnone
declare i32 @g_direct_hash(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @siox_cache_entry_free(i8* %entry1) #0 {
entry:
  %entry.addr = alloca i8*, align 8
  store i8* %entry1, i8** %entry.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %entry.addr, align 8
  call void @g_slice_free1(i64 8, i8* %0)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

declare void @cpercep_init() #1

; Function Attrs: nounwind uwtable
define void @siox_foreground_extract(%struct._SioxState* %state, i32 %refinement, %struct._TileManager* %mask, i32 %x1, i32 %y1, i32 %x2, i32 %y2, i32 %smoothness, double* %sensitivity, i32 %multiblob, void (i8*, double)* %progress_callback, i8* %progress_data) #0 {
entry:
  %state.addr = alloca %struct._SioxState*, align 8
  %refinement.addr = alloca i32, align 4
  %mask.addr = alloca %struct._TileManager*, align 8
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %smoothness.addr = alloca i32, align 4
  %sensitivity.addr = alloca double*, align 8
  %multiblob.addr = alloca i32, align 4
  %progress_callback.addr = alloca void (i8*, double)*, align 8
  %progress_data.addr = alloca i8*, align 8
  %srcPR = alloca %struct._PixelRegion, align 8
  %mapPR = alloca %struct._PixelRegion, align 8
  %pr = alloca i8*, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %clustersize = alloca float, align 4
  %surebg = alloca %struct.lab*, align 8
  %surefg = alloca %struct.lab*, align 8
  %surebgcount = alloca i32, align 4
  %surefgcount = alloca i32, align 4
  %n = alloca i32, align 4
  %pixels = alloca i32, align 4
  %total = alloca i32, align 4
  %limits = alloca [3 x float], align 4
  %map = alloca i8*, align 8
  %m = alloca i8*, align 8
  %i = alloca i32, align 4
  %src = alloca i8*, align 8
  %map166 = alloca i8*, align 8
  %s = alloca i8*, align 8
  %m173 = alloca i8*, align 8
  %i225 = alloca i32, align 4
  %src230 = alloca i8*, align 8
  %map232 = alloca i8*, align 8
  %s239 = alloca i8*, align 8
  %m240 = alloca i8*, align 8
  %i291 = alloca i32, align 4
  %j = alloca i32, align 4
  %src296 = alloca i8*, align 8
  %map298 = alloca i8*, align 8
  %s305 = alloca i8*, align 8
  %m306 = alloca i8*, align 8
  %src412 = alloca i8*, align 8
  %map414 = alloca i8*, align 8
  %s421 = alloca i8*, align 8
  %m422 = alloca i8*, align 8
  %labpixel = alloca %struct.lab, align 4
  %minbg = alloca float, align 4
  %minfg = alloca float, align 4
  %d = alloca float, align 4
  %cr = alloca %struct.classresult*, align 8
  %key = alloca i32, align 4
  %i428 = alloca i32, align 4
  store %struct._SioxState* %state, %struct._SioxState** %state.addr, align 8
  store i32 %refinement, i32* %refinement.addr, align 4
  store %struct._TileManager* %mask, %struct._TileManager** %mask.addr, align 8
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %x2, i32* %x2.addr, align 4
  store i32 %y2, i32* %y2.addr, align 4
  store i32 %smoothness, i32* %smoothness.addr, align 4
  store double* %sensitivity, double** %sensitivity.addr, align 8
  store i32 %multiblob, i32* %multiblob.addr, align 4
  store void (i8*, double)* %progress_callback, void (i8*, double)** %progress_callback.addr, align 8
  store i8* %progress_data, i8** %progress_data.addr, align 8
  store %struct.lab* null, %struct.lab** %surebg, align 8
  store %struct.lab* null, %struct.lab** %surefg, align 8
  store i32 0, i32* %surebgcount, align 4
  store i32 0, i32* %surefgcount, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %cmp = icmp ne %struct._SioxState* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.siox_foreground_extract, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._TileManager*, %struct._TileManager** %mask.addr, align 8
  %cmp2 = icmp ne %struct._TileManager* %1, null
  br i1 %cmp2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %do.body.1
  %2 = load %struct._TileManager*, %struct._TileManager** %mask.addr, align 8
  %call = call i32 @tile_manager_bpp(%struct._TileManager* %2)
  %cmp3 = icmp eq i32 %call, 1
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  br label %if.end.6

if.else.5:                                        ; preds = %land.lhs.true, %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.siox_foreground_extract, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.6:                                         ; preds = %if.then.4
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  br label %do.body.8

do.body.8:                                        ; preds = %do.end.7
  %3 = load i32, i32* %x1.addr, align 4
  %cmp9 = icmp sge i32 %3, 0
  br i1 %cmp9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %do.body.8
  br label %if.end.12

if.else.11:                                       ; preds = %do.body.8
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.siox_foreground_extract, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.12:                                        ; preds = %if.then.10
  br label %do.end.13

do.end.13:                                        ; preds = %if.end.12
  br label %do.body.14

do.body.14:                                       ; preds = %do.end.13
  %4 = load i32, i32* %x2.addr, align 4
  %5 = load i32, i32* %x1.addr, align 4
  %cmp15 = icmp sgt i32 %4, %5
  br i1 %cmp15, label %land.lhs.true.16, label %if.else.20

land.lhs.true.16:                                 ; preds = %do.body.14
  %6 = load i32, i32* %x2.addr, align 4
  %7 = load %struct._TileManager*, %struct._TileManager** %mask.addr, align 8
  %call17 = call i32 @tile_manager_width(%struct._TileManager* %7)
  %cmp18 = icmp sle i32 %6, %call17
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %land.lhs.true.16
  br label %if.end.21

if.else.20:                                       ; preds = %land.lhs.true.16, %do.body.14
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.siox_foreground_extract, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %do.body.23

do.body.23:                                       ; preds = %do.end.22
  %8 = load i32, i32* %y1.addr, align 4
  %cmp24 = icmp sge i32 %8, 0
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %do.body.23
  br label %if.end.27

if.else.26:                                       ; preds = %do.body.23
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.siox_foreground_extract, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.27:                                        ; preds = %if.then.25
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  br label %do.body.29

do.body.29:                                       ; preds = %do.end.28
  %9 = load i32, i32* %y2.addr, align 4
  %10 = load i32, i32* %y1.addr, align 4
  %cmp30 = icmp sgt i32 %9, %10
  br i1 %cmp30, label %land.lhs.true.31, label %if.else.35

land.lhs.true.31:                                 ; preds = %do.body.29
  %11 = load i32, i32* %y2.addr, align 4
  %12 = load %struct._TileManager*, %struct._TileManager** %mask.addr, align 8
  %call32 = call i32 @tile_manager_height(%struct._TileManager* %12)
  %cmp33 = icmp sle i32 %11, %call32
  br i1 %cmp33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %land.lhs.true.31
  br label %if.end.36

if.else.35:                                       ; preds = %land.lhs.true.31, %do.body.29
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.siox_foreground_extract, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.36:                                        ; preds = %if.then.34
  br label %do.end.37

do.end.37:                                        ; preds = %if.end.36
  br label %do.body.38

do.body.38:                                       ; preds = %do.end.37
  %13 = load i32, i32* %smoothness.addr, align 4
  %cmp39 = icmp sge i32 %13, 0
  br i1 %cmp39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %do.body.38
  br label %if.end.42

if.else.41:                                       ; preds = %do.body.38
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.siox_foreground_extract, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0))
  br label %return

if.end.42:                                        ; preds = %if.then.40
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  br label %do.body.44

do.body.44:                                       ; preds = %do.end.43
  %14 = load i8*, i8** %progress_data.addr, align 8
  %cmp45 = icmp eq i8* %14, null
  br i1 %cmp45, label %if.then.47, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.44
  %15 = load void (i8*, double)*, void (i8*, double)** %progress_callback.addr, align 8
  %cmp46 = icmp ne void (i8*, double)* %15, null
  br i1 %cmp46, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %lor.lhs.false, %do.body.44
  br label %if.end.49

if.else.48:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.siox_foreground_extract, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.11, i32 0, i32 0))
  br label %return

if.end.49:                                        ; preds = %if.then.47
  br label %do.end.50

do.end.50:                                        ; preds = %if.end.49
  %16 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %x51 = getelementptr inbounds %struct._SioxState, %struct._SioxState* %16, i32 0, i32 5
  %17 = load i32, i32* %x51, align 4
  store i32 %17, i32* %x, align 4
  %18 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %y52 = getelementptr inbounds %struct._SioxState, %struct._SioxState* %18, i32 0, i32 6
  %19 = load i32, i32* %y52, align 4
  store i32 %19, i32* %y, align 4
  %20 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %width53 = getelementptr inbounds %struct._SioxState, %struct._SioxState* %20, i32 0, i32 7
  %21 = load i32, i32* %width53, align 4
  store i32 %21, i32* %width, align 4
  %22 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %height54 = getelementptr inbounds %struct._SioxState, %struct._SioxState* %22, i32 0, i32 8
  %23 = load i32, i32* %height54, align 4
  store i32 %23, i32* %height, align 4
  br label %do.body.55

do.body.55:                                       ; preds = %do.end.50
  %24 = load i32, i32* %x, align 4
  %25 = load i32, i32* %width, align 4
  %add = add nsw i32 %24, %25
  %26 = load %struct._TileManager*, %struct._TileManager** %mask.addr, align 8
  %call56 = call i32 @tile_manager_width(%struct._TileManager* %26)
  %cmp57 = icmp sle i32 %add, %call56
  br i1 %cmp57, label %if.then.58, label %if.else.59

if.then.58:                                       ; preds = %do.body.55
  br label %if.end.60

if.else.59:                                       ; preds = %do.body.55
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.siox_foreground_extract, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i32 0, i32 0))
  br label %return

if.end.60:                                        ; preds = %if.then.58
  br label %do.end.61

do.end.61:                                        ; preds = %if.end.60
  br label %do.body.62

do.body.62:                                       ; preds = %do.end.61
  %27 = load i32, i32* %y, align 4
  %28 = load i32, i32* %height, align 4
  %add63 = add nsw i32 %27, %28
  %29 = load %struct._TileManager*, %struct._TileManager** %mask.addr, align 8
  %call64 = call i32 @tile_manager_height(%struct._TileManager* %29)
  %cmp65 = icmp sle i32 %add63, %call64
  br i1 %cmp65, label %if.then.66, label %if.else.67

if.then.66:                                       ; preds = %do.body.62
  br label %if.end.68

if.else.67:                                       ; preds = %do.body.62
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.siox_foreground_extract, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i32 0, i32 0))
  br label %return

if.end.68:                                        ; preds = %if.then.66
  br label %do.end.69

do.end.69:                                        ; preds = %if.end.68
  %30 = load double*, double** %sensitivity.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %30, i64 0
  %31 = load double, double* %arrayidx, align 8
  %conv = fptrunc double %31 to float
  %arrayidx70 = getelementptr inbounds [3 x float], [3 x float]* %limits, i32 0, i64 0
  store float %conv, float* %arrayidx70, align 4
  %32 = load double*, double** %sensitivity.addr, align 8
  %arrayidx71 = getelementptr inbounds double, double* %32, i64 1
  %33 = load double, double* %arrayidx71, align 8
  %conv72 = fptrunc double %33 to float
  %arrayidx73 = getelementptr inbounds [3 x float], [3 x float]* %limits, i32 0, i64 1
  store float %conv72, float* %arrayidx73, align 4
  %34 = load double*, double** %sensitivity.addr, align 8
  %arrayidx74 = getelementptr inbounds double, double* %34, i64 2
  %35 = load double, double* %arrayidx74, align 8
  %conv75 = fptrunc double %35 to float
  %arrayidx76 = getelementptr inbounds [3 x float], [3 x float]* %limits, i32 0, i64 2
  store float %conv75, float* %arrayidx76, align 4
  %arraydecay = getelementptr inbounds [3 x float], [3 x float]* %limits, i32 0, i32 0
  %call77 = call float @get_clustersize(float* %arraydecay)
  store float %call77, float* %clustersize, align 4
  %36 = load void (i8*, double)*, void (i8*, double)** %progress_callback.addr, align 8
  %37 = load i8*, i8** %progress_data.addr, align 8
  call void @siox_progress_update(void (i8*, double)* %36, i8* %37, double 0.000000e+00)
  %38 = load i32, i32* %refinement.addr, align 4
  %and = and i32 %38, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %do.end.69
  store i32 3, i32* %refinement.addr, align 4
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.78, %do.end.69
  %39 = load i32, i32* %refinement.addr, align 4
  %and80 = and i32 %39, 1
  %tobool81 = icmp ne i32 %and80, 0
  br i1 %tobool81, label %if.then.82, label %if.end.84

if.then.82:                                       ; preds = %if.end.79
  %40 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %cache = getelementptr inbounds %struct._SioxState, %struct._SioxState* %40, i32 0, i32 9
  %41 = load %struct._GHashTable*, %struct._GHashTable** %cache, align 8
  %call83 = call i32 @g_hash_table_foreach_remove(%struct._GHashTable* %41, i32 (i8*, i8*, i8*)* @siox_cache_remove_bg, i8* null)
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.82, %if.end.79
  %42 = load i32, i32* %refinement.addr, align 4
  %and85 = and i32 %42, 2
  %tobool86 = icmp ne i32 %and85, 0
  br i1 %tobool86, label %if.then.87, label %if.end.90

if.then.87:                                       ; preds = %if.end.84
  %43 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %cache88 = getelementptr inbounds %struct._SioxState, %struct._SioxState* %43, i32 0, i32 9
  %44 = load %struct._GHashTable*, %struct._GHashTable** %cache88, align 8
  %call89 = call i32 @g_hash_table_foreach_remove(%struct._GHashTable* %44, i32 (i8*, i8*, i8*)* @siox_cache_remove_fg, i8* null)
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.87, %if.end.84
  %45 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %bgsig = getelementptr inbounds %struct._SioxState, %struct._SioxState* %45, i32 0, i32 10
  %46 = load %struct.lab*, %struct.lab** %bgsig, align 8
  %tobool91 = icmp ne %struct.lab* %46, null
  br i1 %tobool91, label %if.end.93, label %if.then.92

if.then.92:                                       ; preds = %if.end.90
  %47 = load i32, i32* %refinement.addr, align 4
  %or = or i32 %47, 2
  store i32 %or, i32* %refinement.addr, align 4
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.92, %if.end.90
  %48 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %fgsig = getelementptr inbounds %struct._SioxState, %struct._SioxState* %48, i32 0, i32 11
  %49 = load %struct.lab*, %struct.lab** %fgsig, align 8
  %tobool94 = icmp ne %struct.lab* %49, null
  br i1 %tobool94, label %if.end.97, label %if.then.95

if.then.95:                                       ; preds = %if.end.93
  %50 = load i32, i32* %refinement.addr, align 4
  %or96 = or i32 %50, 1
  store i32 %or96, i32* %refinement.addr, align 4
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.95, %if.end.93
  %51 = load i32, i32* %refinement.addr, align 4
  %and98 = and i32 %51, 3
  %tobool99 = icmp ne i32 %and98, 0
  br i1 %tobool99, label %if.then.100, label %if.end.397

if.then.100:                                      ; preds = %if.end.97
  %52 = load %struct._TileManager*, %struct._TileManager** %mask.addr, align 8
  %53 = load i32, i32* %x, align 4
  %54 = load i32, i32* %y, align 4
  %55 = load i32, i32* %width, align 4
  %56 = load i32, i32* %height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %mapPR, %struct._TileManager* %52, i32 %53, i32 %54, i32 %55, i32 %56, i32 0)
  %57 = load i32, i32* %width, align 4
  %58 = load i32, i32* %height, align 4
  %mul = mul nsw i32 %57, %58
  store i32 %mul, i32* %total, align 4
  %call101 = call %struct._PixelRegionIterator* (i32, ...) @pixel_regions_register(i32 1, %struct._PixelRegion* %mapPR)
  %59 = bitcast %struct._PixelRegionIterator* %call101 to i8*
  store i8* %59, i8** %pr, align 8
  store i32 0, i32* %pixels, align 4
  store i32 0, i32* %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.139, %if.then.100
  %60 = load i8*, i8** %pr, align 8
  %cmp102 = icmp ne i8* %60, null
  br i1 %cmp102, label %for.body, label %for.end.142

for.body:                                         ; preds = %for.cond
  %data = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %mapPR, i32 0, i32 0
  %61 = load i8*, i8** %data, align 8
  store i8* %61, i8** %map, align 8
  store i32 0, i32* %row, align 4
  br label %for.cond.104

for.cond.104:                                     ; preds = %for.inc.125, %for.body
  %62 = load i32, i32* %row, align 4
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %mapPR, i32 0, i32 9
  %63 = load i32, i32* %h, align 4
  %cmp105 = icmp slt i32 %62, %63
  br i1 %cmp105, label %for.body.107, label %for.end.127

for.body.107:                                     ; preds = %for.cond.104
  %64 = load i8*, i8** %map, align 8
  store i8* %64, i8** %m, align 8
  store i32 0, i32* %col, align 4
  br label %for.cond.108

for.cond.108:                                     ; preds = %for.inc, %for.body.107
  %65 = load i32, i32* %col, align 4
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %mapPR, i32 0, i32 8
  %66 = load i32, i32* %w, align 4
  %cmp109 = icmp slt i32 %65, %66
  br i1 %cmp109, label %for.body.111, label %for.end

for.body.111:                                     ; preds = %for.cond.108
  %67 = load i8*, i8** %m, align 8
  %68 = load i8, i8* %67, align 1
  %conv112 = zext i8 %68 to i32
  %cmp113 = icmp slt i32 %conv112, 1
  br i1 %cmp113, label %if.then.115, label %if.else.116

if.then.115:                                      ; preds = %for.body.111
  %69 = load i32, i32* %surebgcount, align 4
  %inc = add nsw i32 %69, 1
  store i32 %inc, i32* %surebgcount, align 4
  br label %if.end.123

if.else.116:                                      ; preds = %for.body.111
  %70 = load i8*, i8** %m, align 8
  %71 = load i8, i8* %70, align 1
  %conv117 = zext i8 %71 to i32
  %cmp118 = icmp sgt i32 %conv117, 254
  br i1 %cmp118, label %if.then.120, label %if.end.122

if.then.120:                                      ; preds = %if.else.116
  %72 = load i32, i32* %surefgcount, align 4
  %inc121 = add nsw i32 %72, 1
  store i32 %inc121, i32* %surefgcount, align 4
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.120, %if.else.116
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.122, %if.then.115
  br label %for.inc

for.inc:                                          ; preds = %if.end.123
  %73 = load i32, i32* %col, align 4
  %inc124 = add nsw i32 %73, 1
  store i32 %inc124, i32* %col, align 4
  %74 = load i8*, i8** %m, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %incdec.ptr, i8** %m, align 8
  br label %for.cond.108

for.end:                                          ; preds = %for.cond.108
  %rowstride = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %mapPR, i32 0, i32 5
  %75 = load i32, i32* %rowstride, align 4
  %76 = load i8*, i8** %map, align 8
  %idx.ext = sext i32 %75 to i64
  %add.ptr = getelementptr inbounds i8, i8* %76, i64 %idx.ext
  store i8* %add.ptr, i8** %map, align 8
  br label %for.inc.125

for.inc.125:                                      ; preds = %for.end
  %77 = load i32, i32* %row, align 4
  %inc126 = add nsw i32 %77, 1
  store i32 %inc126, i32* %row, align 4
  br label %for.cond.104

for.end.127:                                      ; preds = %for.cond.104
  %w128 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %mapPR, i32 0, i32 8
  %78 = load i32, i32* %w128, align 4
  %h129 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %mapPR, i32 0, i32 9
  %79 = load i32, i32* %h129, align 4
  %mul130 = mul nsw i32 %78, %79
  %80 = load i32, i32* %pixels, align 4
  %add131 = add nsw i32 %80, %mul130
  store i32 %add131, i32* %pixels, align 4
  %81 = load i32, i32* %n, align 4
  %rem = srem i32 %81, 16
  %cmp132 = icmp eq i32 %rem, 0
  br i1 %cmp132, label %if.then.134, label %if.end.138

if.then.134:                                      ; preds = %for.end.127
  %82 = load void (i8*, double)*, void (i8*, double)** %progress_callback.addr, align 8
  %83 = load i8*, i8** %progress_data.addr, align 8
  %84 = load i32, i32* %pixels, align 4
  %conv135 = sitofp i32 %84 to double
  %85 = load i32, i32* %total, align 4
  %conv136 = sitofp i32 %85 to double
  %div = fdiv double %conv135, %conv136
  %mul137 = fmul double 1.000000e-01, %div
  call void @siox_progress_update(void (i8*, double)* %82, i8* %83, double %mul137)
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.134, %for.end.127
  br label %for.inc.139

for.inc.139:                                      ; preds = %if.end.138
  %86 = load i8*, i8** %pr, align 8
  %87 = bitcast i8* %86 to %struct._PixelRegionIterator*
  %call140 = call %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator* %87)
  %88 = bitcast %struct._PixelRegionIterator* %call140 to i8*
  store i8* %88, i8** %pr, align 8
  %89 = load i32, i32* %n, align 4
  %inc141 = add nsw i32 %89, 1
  store i32 %inc141, i32* %n, align 4
  br label %for.cond

for.end.142:                                      ; preds = %for.cond
  %90 = load i32, i32* %refinement.addr, align 4
  %and143 = and i32 %90, 1
  %tobool144 = icmp ne i32 %and143, 0
  br i1 %tobool144, label %if.then.145, label %if.end.148

if.then.145:                                      ; preds = %for.end.142
  %91 = load i32, i32* %surefgcount, align 4
  %conv146 = sext i32 %91 to i64
  %call147 = call noalias i8* @g_malloc_n(i64 %conv146, i64 16)
  %92 = bitcast i8* %call147 to %struct.lab*
  store %struct.lab* %92, %struct.lab** %surefg, align 8
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.145, %for.end.142
  %93 = load i32, i32* %refinement.addr, align 4
  %and149 = and i32 %93, 2
  %tobool150 = icmp ne i32 %and149, 0
  br i1 %tobool150, label %if.then.151, label %if.end.154

if.then.151:                                      ; preds = %if.end.148
  %94 = load i32, i32* %surebgcount, align 4
  %conv152 = sext i32 %94 to i64
  %call153 = call noalias i8* @g_malloc_n(i64 %conv152, i64 16)
  %95 = bitcast i8* %call153 to %struct.lab*
  store %struct.lab* %95, %struct.lab** %surebg, align 8
  br label %if.end.154

if.end.154:                                       ; preds = %if.then.151, %if.end.148
  %96 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %pixels155 = getelementptr inbounds %struct._SioxState, %struct._SioxState* %96, i32 0, i32 0
  %97 = load %struct._TileManager*, %struct._TileManager** %pixels155, align 8
  %98 = load i32, i32* %x, align 4
  %99 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %offset_x = getelementptr inbounds %struct._SioxState, %struct._SioxState* %99, i32 0, i32 3
  %100 = load i32, i32* %offset_x, align 4
  %sub = sub nsw i32 %98, %100
  %101 = load i32, i32* %y, align 4
  %102 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %offset_y = getelementptr inbounds %struct._SioxState, %struct._SioxState* %102, i32 0, i32 4
  %103 = load i32, i32* %offset_y, align 4
  %sub156 = sub nsw i32 %101, %103
  %104 = load i32, i32* %width, align 4
  %105 = load i32, i32* %height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %97, i32 %sub, i32 %sub156, i32 %104, i32 %105, i32 0)
  %106 = load %struct._TileManager*, %struct._TileManager** %mask.addr, align 8
  %107 = load i32, i32* %x, align 4
  %108 = load i32, i32* %y, align 4
  %109 = load i32, i32* %width, align 4
  %110 = load i32, i32* %height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %mapPR, %struct._TileManager* %106, i32 %107, i32 %108, i32 %109, i32 %110, i32 0)
  %call157 = call %struct._PixelRegionIterator* (i32, ...) @pixel_regions_register(i32 2, %struct._PixelRegion* %srcPR, %struct._PixelRegion* %mapPR)
  %111 = bitcast %struct._PixelRegionIterator* %call157 to i8*
  store i8* %111, i8** %pr, align 8
  %112 = load i32, i32* %refinement.addr, align 4
  %and158 = and i32 %112, 1
  %tobool159 = icmp ne i32 %and158, 0
  br i1 %tobool159, label %if.else.221, label %if.then.160

if.then.160:                                      ; preds = %if.end.154
  store i32 0, i32* %i, align 4
  store i32 0, i32* %pixels, align 4
  store i32 0, i32* %n, align 4
  br label %for.cond.161

for.cond.161:                                     ; preds = %for.inc.217, %if.then.160
  %113 = load i8*, i8** %pr, align 8
  %cmp162 = icmp ne i8* %113, null
  br i1 %cmp162, label %for.body.164, label %for.end.220

for.body.164:                                     ; preds = %for.cond.161
  %data165 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 0
  %114 = load i8*, i8** %data165, align 8
  store i8* %114, i8** %src, align 8
  %data167 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %mapPR, i32 0, i32 0
  %115 = load i8*, i8** %data167, align 8
  store i8* %115, i8** %map166, align 8
  store i32 0, i32* %row, align 4
  br label %for.cond.168

for.cond.168:                                     ; preds = %for.inc.200, %for.body.164
  %116 = load i32, i32* %row, align 4
  %h169 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 9
  %117 = load i32, i32* %h169, align 4
  %cmp170 = icmp slt i32 %116, %117
  br i1 %cmp170, label %for.body.172, label %for.end.202

for.body.172:                                     ; preds = %for.cond.168
  %118 = load i8*, i8** %src, align 8
  store i8* %118, i8** %s, align 8
  %119 = load i8*, i8** %map166, align 8
  store i8* %119, i8** %m173, align 8
  store i32 0, i32* %col, align 4
  br label %for.cond.174

for.cond.174:                                     ; preds = %for.inc.187, %for.body.172
  %120 = load i32, i32* %col, align 4
  %w175 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 8
  %121 = load i32, i32* %w175, align 4
  %cmp176 = icmp slt i32 %120, %121
  br i1 %cmp176, label %for.body.178, label %for.end.193

for.body.178:                                     ; preds = %for.cond.174
  %122 = load i8*, i8** %m173, align 8
  %123 = load i8, i8* %122, align 1
  %conv179 = zext i8 %123 to i32
  %cmp180 = icmp slt i32 %conv179, 1
  br i1 %cmp180, label %if.then.182, label %if.end.186

if.then.182:                                      ; preds = %for.body.178
  %124 = load i8*, i8** %s, align 8
  %125 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %bpp = getelementptr inbounds %struct._SioxState, %struct._SioxState* %125, i32 0, i32 2
  %126 = load i32, i32* %bpp, align 4
  %127 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %colormap = getelementptr inbounds %struct._SioxState, %struct._SioxState* %127, i32 0, i32 1
  %128 = load i8*, i8** %colormap, align 8
  %129 = load %struct.lab*, %struct.lab** %surebg, align 8
  %130 = load i32, i32* %i, align 4
  %idx.ext183 = sext i32 %130 to i64
  %add.ptr184 = getelementptr inbounds %struct.lab, %struct.lab* %129, i64 %idx.ext183
  call void @calc_lab(i8* %124, i32 %126, i8* %128, %struct.lab* %add.ptr184)
  %131 = load i32, i32* %i, align 4
  %inc185 = add nsw i32 %131, 1
  store i32 %inc185, i32* %i, align 4
  br label %if.end.186

if.end.186:                                       ; preds = %if.then.182, %for.body.178
  br label %for.inc.187

for.inc.187:                                      ; preds = %if.end.186
  %132 = load i32, i32* %col, align 4
  %inc188 = add nsw i32 %132, 1
  store i32 %inc188, i32* %col, align 4
  %133 = load i8*, i8** %m173, align 8
  %incdec.ptr189 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %incdec.ptr189, i8** %m173, align 8
  %134 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %bpp190 = getelementptr inbounds %struct._SioxState, %struct._SioxState* %134, i32 0, i32 2
  %135 = load i32, i32* %bpp190, align 4
  %136 = load i8*, i8** %s, align 8
  %idx.ext191 = sext i32 %135 to i64
  %add.ptr192 = getelementptr inbounds i8, i8* %136, i64 %idx.ext191
  store i8* %add.ptr192, i8** %s, align 8
  br label %for.cond.174

for.end.193:                                      ; preds = %for.cond.174
  %rowstride194 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 5
  %137 = load i32, i32* %rowstride194, align 4
  %138 = load i8*, i8** %src, align 8
  %idx.ext195 = sext i32 %137 to i64
  %add.ptr196 = getelementptr inbounds i8, i8* %138, i64 %idx.ext195
  store i8* %add.ptr196, i8** %src, align 8
  %rowstride197 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %mapPR, i32 0, i32 5
  %139 = load i32, i32* %rowstride197, align 4
  %140 = load i8*, i8** %map166, align 8
  %idx.ext198 = sext i32 %139 to i64
  %add.ptr199 = getelementptr inbounds i8, i8* %140, i64 %idx.ext198
  store i8* %add.ptr199, i8** %map166, align 8
  br label %for.inc.200

for.inc.200:                                      ; preds = %for.end.193
  %141 = load i32, i32* %row, align 4
  %inc201 = add nsw i32 %141, 1
  store i32 %inc201, i32* %row, align 4
  br label %for.cond.168

for.end.202:                                      ; preds = %for.cond.168
  %w203 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %mapPR, i32 0, i32 8
  %142 = load i32, i32* %w203, align 4
  %h204 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %mapPR, i32 0, i32 9
  %143 = load i32, i32* %h204, align 4
  %mul205 = mul nsw i32 %142, %143
  %144 = load i32, i32* %pixels, align 4
  %add206 = add nsw i32 %144, %mul205
  store i32 %add206, i32* %pixels, align 4
  %145 = load i32, i32* %n, align 4
  %rem207 = srem i32 %145, 16
  %cmp208 = icmp eq i32 %rem207, 0
  br i1 %cmp208, label %if.then.210, label %if.end.216

if.then.210:                                      ; preds = %for.end.202
  %146 = load void (i8*, double)*, void (i8*, double)** %progress_callback.addr, align 8
  %147 = load i8*, i8** %progress_data.addr, align 8
  %148 = load i32, i32* %pixels, align 4
  %conv211 = sitofp i32 %148 to double
  %149 = load i32, i32* %total, align 4
  %conv212 = sitofp i32 %149 to double
  %div213 = fdiv double %conv211, %conv212
  %mul214 = fmul double 1.000000e-01, %div213
  %add215 = fadd double 1.000000e-01, %mul214
  call void @siox_progress_update(void (i8*, double)* %146, i8* %147, double %add215)
  br label %if.end.216

if.end.216:                                       ; preds = %if.then.210, %for.end.202
  br label %for.inc.217

for.inc.217:                                      ; preds = %if.end.216
  %150 = load i8*, i8** %pr, align 8
  %151 = bitcast i8* %150 to %struct._PixelRegionIterator*
  %call218 = call %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator* %151)
  %152 = bitcast %struct._PixelRegionIterator* %call218 to i8*
  store i8* %152, i8** %pr, align 8
  %153 = load i32, i32* %n, align 4
  %inc219 = add nsw i32 %153, 1
  store i32 %inc219, i32* %n, align 4
  br label %for.cond.161

for.end.220:                                      ; preds = %for.cond.161
  br label %if.end.368

if.else.221:                                      ; preds = %if.end.154
  %154 = load i32, i32* %refinement.addr, align 4
  %and222 = and i32 %154, 2
  %tobool223 = icmp ne i32 %and222, 0
  br i1 %tobool223, label %if.else.290, label %if.then.224

if.then.224:                                      ; preds = %if.else.221
  store i32 0, i32* %i225, align 4
  store i32 0, i32* %pixels, align 4
  store i32 0, i32* %n, align 4
  br label %for.cond.226

for.cond.226:                                     ; preds = %for.inc.286, %if.then.224
  %155 = load i8*, i8** %pr, align 8
  %cmp227 = icmp ne i8* %155, null
  br i1 %cmp227, label %for.body.229, label %for.end.289

for.body.229:                                     ; preds = %for.cond.226
  %data231 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 0
  %156 = load i8*, i8** %data231, align 8
  store i8* %156, i8** %src230, align 8
  %data233 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %mapPR, i32 0, i32 0
  %157 = load i8*, i8** %data233, align 8
  store i8* %157, i8** %map232, align 8
  store i32 0, i32* %row, align 4
  br label %for.cond.234

for.cond.234:                                     ; preds = %for.inc.269, %for.body.229
  %158 = load i32, i32* %row, align 4
  %h235 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 9
  %159 = load i32, i32* %h235, align 4
  %cmp236 = icmp slt i32 %158, %159
  br i1 %cmp236, label %for.body.238, label %for.end.271

for.body.238:                                     ; preds = %for.cond.234
  %160 = load i8*, i8** %src230, align 8
  store i8* %160, i8** %s239, align 8
  %161 = load i8*, i8** %map232, align 8
  store i8* %161, i8** %m240, align 8
  store i32 0, i32* %col, align 4
  br label %for.cond.241

for.cond.241:                                     ; preds = %for.inc.256, %for.body.238
  %162 = load i32, i32* %col, align 4
  %w242 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 8
  %163 = load i32, i32* %w242, align 4
  %cmp243 = icmp slt i32 %162, %163
  br i1 %cmp243, label %for.body.245, label %for.end.262

for.body.245:                                     ; preds = %for.cond.241
  %164 = load i8*, i8** %m240, align 8
  %165 = load i8, i8* %164, align 1
  %conv246 = zext i8 %165 to i32
  %cmp247 = icmp sgt i32 %conv246, 254
  br i1 %cmp247, label %if.then.249, label %if.end.255

if.then.249:                                      ; preds = %for.body.245
  %166 = load i8*, i8** %s239, align 8
  %167 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %bpp250 = getelementptr inbounds %struct._SioxState, %struct._SioxState* %167, i32 0, i32 2
  %168 = load i32, i32* %bpp250, align 4
  %169 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %colormap251 = getelementptr inbounds %struct._SioxState, %struct._SioxState* %169, i32 0, i32 1
  %170 = load i8*, i8** %colormap251, align 8
  %171 = load %struct.lab*, %struct.lab** %surefg, align 8
  %172 = load i32, i32* %i225, align 4
  %idx.ext252 = sext i32 %172 to i64
  %add.ptr253 = getelementptr inbounds %struct.lab, %struct.lab* %171, i64 %idx.ext252
  call void @calc_lab(i8* %166, i32 %168, i8* %170, %struct.lab* %add.ptr253)
  %173 = load i32, i32* %i225, align 4
  %inc254 = add nsw i32 %173, 1
  store i32 %inc254, i32* %i225, align 4
  br label %if.end.255

if.end.255:                                       ; preds = %if.then.249, %for.body.245
  br label %for.inc.256

for.inc.256:                                      ; preds = %if.end.255
  %174 = load i32, i32* %col, align 4
  %inc257 = add nsw i32 %174, 1
  store i32 %inc257, i32* %col, align 4
  %175 = load i8*, i8** %m240, align 8
  %incdec.ptr258 = getelementptr inbounds i8, i8* %175, i32 1
  store i8* %incdec.ptr258, i8** %m240, align 8
  %176 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %bpp259 = getelementptr inbounds %struct._SioxState, %struct._SioxState* %176, i32 0, i32 2
  %177 = load i32, i32* %bpp259, align 4
  %178 = load i8*, i8** %s239, align 8
  %idx.ext260 = sext i32 %177 to i64
  %add.ptr261 = getelementptr inbounds i8, i8* %178, i64 %idx.ext260
  store i8* %add.ptr261, i8** %s239, align 8
  br label %for.cond.241

for.end.262:                                      ; preds = %for.cond.241
  %rowstride263 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 5
  %179 = load i32, i32* %rowstride263, align 4
  %180 = load i8*, i8** %src230, align 8
  %idx.ext264 = sext i32 %179 to i64
  %add.ptr265 = getelementptr inbounds i8, i8* %180, i64 %idx.ext264
  store i8* %add.ptr265, i8** %src230, align 8
  %rowstride266 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %mapPR, i32 0, i32 5
  %181 = load i32, i32* %rowstride266, align 4
  %182 = load i8*, i8** %map232, align 8
  %idx.ext267 = sext i32 %181 to i64
  %add.ptr268 = getelementptr inbounds i8, i8* %182, i64 %idx.ext267
  store i8* %add.ptr268, i8** %map232, align 8
  br label %for.inc.269

for.inc.269:                                      ; preds = %for.end.262
  %183 = load i32, i32* %row, align 4
  %inc270 = add nsw i32 %183, 1
  store i32 %inc270, i32* %row, align 4
  br label %for.cond.234

for.end.271:                                      ; preds = %for.cond.234
  %w272 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %mapPR, i32 0, i32 8
  %184 = load i32, i32* %w272, align 4
  %h273 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %mapPR, i32 0, i32 9
  %185 = load i32, i32* %h273, align 4
  %mul274 = mul nsw i32 %184, %185
  %186 = load i32, i32* %pixels, align 4
  %add275 = add nsw i32 %186, %mul274
  store i32 %add275, i32* %pixels, align 4
  %187 = load i32, i32* %n, align 4
  %rem276 = srem i32 %187, 16
  %cmp277 = icmp eq i32 %rem276, 0
  br i1 %cmp277, label %if.then.279, label %if.end.285

if.then.279:                                      ; preds = %for.end.271
  %188 = load void (i8*, double)*, void (i8*, double)** %progress_callback.addr, align 8
  %189 = load i8*, i8** %progress_data.addr, align 8
  %190 = load i32, i32* %pixels, align 4
  %conv280 = sitofp i32 %190 to double
  %191 = load i32, i32* %total, align 4
  %conv281 = sitofp i32 %191 to double
  %div282 = fdiv double %conv280, %conv281
  %mul283 = fmul double 1.000000e-01, %div282
  %add284 = fadd double 1.000000e-01, %mul283
  call void @siox_progress_update(void (i8*, double)* %188, i8* %189, double %add284)
  br label %if.end.285

if.end.285:                                       ; preds = %if.then.279, %for.end.271
  br label %for.inc.286

for.inc.286:                                      ; preds = %if.end.285
  %192 = load i8*, i8** %pr, align 8
  %193 = bitcast i8* %192 to %struct._PixelRegionIterator*
  %call287 = call %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator* %193)
  %194 = bitcast %struct._PixelRegionIterator* %call287 to i8*
  store i8* %194, i8** %pr, align 8
  %195 = load i32, i32* %n, align 4
  %inc288 = add nsw i32 %195, 1
  store i32 %inc288, i32* %n, align 4
  br label %for.cond.226

for.end.289:                                      ; preds = %for.cond.226
  br label %if.end.367

if.else.290:                                      ; preds = %if.else.221
  store i32 0, i32* %i291, align 4
  store i32 0, i32* %j, align 4
  store i32 0, i32* %pixels, align 4
  store i32 0, i32* %n, align 4
  br label %for.cond.292

for.cond.292:                                     ; preds = %for.inc.363, %if.else.290
  %196 = load i8*, i8** %pr, align 8
  %cmp293 = icmp ne i8* %196, null
  br i1 %cmp293, label %for.body.295, label %for.end.366

for.body.295:                                     ; preds = %for.cond.292
  %data297 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 0
  %197 = load i8*, i8** %data297, align 8
  store i8* %197, i8** %src296, align 8
  %data299 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %mapPR, i32 0, i32 0
  %198 = load i8*, i8** %data299, align 8
  store i8* %198, i8** %map298, align 8
  store i32 0, i32* %row, align 4
  br label %for.cond.300

for.cond.300:                                     ; preds = %for.inc.346, %for.body.295
  %199 = load i32, i32* %row, align 4
  %h301 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 9
  %200 = load i32, i32* %h301, align 4
  %cmp302 = icmp slt i32 %199, %200
  br i1 %cmp302, label %for.body.304, label %for.end.348

for.body.304:                                     ; preds = %for.cond.300
  %201 = load i8*, i8** %src296, align 8
  store i8* %201, i8** %s305, align 8
  %202 = load i8*, i8** %map298, align 8
  store i8* %202, i8** %m306, align 8
  store i32 0, i32* %col, align 4
  br label %for.cond.307

for.cond.307:                                     ; preds = %for.inc.333, %for.body.304
  %203 = load i32, i32* %col, align 4
  %w308 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 8
  %204 = load i32, i32* %w308, align 4
  %cmp309 = icmp slt i32 %203, %204
  br i1 %cmp309, label %for.body.311, label %for.end.339

for.body.311:                                     ; preds = %for.cond.307
  %205 = load i8*, i8** %m306, align 8
  %206 = load i8, i8* %205, align 1
  %conv312 = zext i8 %206 to i32
  %cmp313 = icmp slt i32 %conv312, 1
  br i1 %cmp313, label %if.then.315, label %if.else.321

if.then.315:                                      ; preds = %for.body.311
  %207 = load i8*, i8** %s305, align 8
  %208 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %bpp316 = getelementptr inbounds %struct._SioxState, %struct._SioxState* %208, i32 0, i32 2
  %209 = load i32, i32* %bpp316, align 4
  %210 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %colormap317 = getelementptr inbounds %struct._SioxState, %struct._SioxState* %210, i32 0, i32 1
  %211 = load i8*, i8** %colormap317, align 8
  %212 = load %struct.lab*, %struct.lab** %surebg, align 8
  %213 = load i32, i32* %i291, align 4
  %idx.ext318 = sext i32 %213 to i64
  %add.ptr319 = getelementptr inbounds %struct.lab, %struct.lab* %212, i64 %idx.ext318
  call void @calc_lab(i8* %207, i32 %209, i8* %211, %struct.lab* %add.ptr319)
  %214 = load i32, i32* %i291, align 4
  %inc320 = add nsw i32 %214, 1
  store i32 %inc320, i32* %i291, align 4
  br label %if.end.332

if.else.321:                                      ; preds = %for.body.311
  %215 = load i8*, i8** %m306, align 8
  %216 = load i8, i8* %215, align 1
  %conv322 = zext i8 %216 to i32
  %cmp323 = icmp sgt i32 %conv322, 254
  br i1 %cmp323, label %if.then.325, label %if.end.331

if.then.325:                                      ; preds = %if.else.321
  %217 = load i8*, i8** %s305, align 8
  %218 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %bpp326 = getelementptr inbounds %struct._SioxState, %struct._SioxState* %218, i32 0, i32 2
  %219 = load i32, i32* %bpp326, align 4
  %220 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %colormap327 = getelementptr inbounds %struct._SioxState, %struct._SioxState* %220, i32 0, i32 1
  %221 = load i8*, i8** %colormap327, align 8
  %222 = load %struct.lab*, %struct.lab** %surefg, align 8
  %223 = load i32, i32* %j, align 4
  %idx.ext328 = sext i32 %223 to i64
  %add.ptr329 = getelementptr inbounds %struct.lab, %struct.lab* %222, i64 %idx.ext328
  call void @calc_lab(i8* %217, i32 %219, i8* %221, %struct.lab* %add.ptr329)
  %224 = load i32, i32* %j, align 4
  %inc330 = add nsw i32 %224, 1
  store i32 %inc330, i32* %j, align 4
  br label %if.end.331

if.end.331:                                       ; preds = %if.then.325, %if.else.321
  br label %if.end.332

if.end.332:                                       ; preds = %if.end.331, %if.then.315
  br label %for.inc.333

for.inc.333:                                      ; preds = %if.end.332
  %225 = load i32, i32* %col, align 4
  %inc334 = add nsw i32 %225, 1
  store i32 %inc334, i32* %col, align 4
  %226 = load i8*, i8** %m306, align 8
  %incdec.ptr335 = getelementptr inbounds i8, i8* %226, i32 1
  store i8* %incdec.ptr335, i8** %m306, align 8
  %227 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %bpp336 = getelementptr inbounds %struct._SioxState, %struct._SioxState* %227, i32 0, i32 2
  %228 = load i32, i32* %bpp336, align 4
  %229 = load i8*, i8** %s305, align 8
  %idx.ext337 = sext i32 %228 to i64
  %add.ptr338 = getelementptr inbounds i8, i8* %229, i64 %idx.ext337
  store i8* %add.ptr338, i8** %s305, align 8
  br label %for.cond.307

for.end.339:                                      ; preds = %for.cond.307
  %rowstride340 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 5
  %230 = load i32, i32* %rowstride340, align 4
  %231 = load i8*, i8** %src296, align 8
  %idx.ext341 = sext i32 %230 to i64
  %add.ptr342 = getelementptr inbounds i8, i8* %231, i64 %idx.ext341
  store i8* %add.ptr342, i8** %src296, align 8
  %rowstride343 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %mapPR, i32 0, i32 5
  %232 = load i32, i32* %rowstride343, align 4
  %233 = load i8*, i8** %map298, align 8
  %idx.ext344 = sext i32 %232 to i64
  %add.ptr345 = getelementptr inbounds i8, i8* %233, i64 %idx.ext344
  store i8* %add.ptr345, i8** %map298, align 8
  br label %for.inc.346

for.inc.346:                                      ; preds = %for.end.339
  %234 = load i32, i32* %row, align 4
  %inc347 = add nsw i32 %234, 1
  store i32 %inc347, i32* %row, align 4
  br label %for.cond.300

for.end.348:                                      ; preds = %for.cond.300
  %w349 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %mapPR, i32 0, i32 8
  %235 = load i32, i32* %w349, align 4
  %h350 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %mapPR, i32 0, i32 9
  %236 = load i32, i32* %h350, align 4
  %mul351 = mul nsw i32 %235, %236
  %237 = load i32, i32* %pixels, align 4
  %add352 = add nsw i32 %237, %mul351
  store i32 %add352, i32* %pixels, align 4
  %238 = load i32, i32* %n, align 4
  %rem353 = srem i32 %238, 16
  %cmp354 = icmp eq i32 %rem353, 0
  br i1 %cmp354, label %if.then.356, label %if.end.362

if.then.356:                                      ; preds = %for.end.348
  %239 = load void (i8*, double)*, void (i8*, double)** %progress_callback.addr, align 8
  %240 = load i8*, i8** %progress_data.addr, align 8
  %241 = load i32, i32* %pixels, align 4
  %conv357 = sitofp i32 %241 to double
  %242 = load i32, i32* %total, align 4
  %conv358 = sitofp i32 %242 to double
  %div359 = fdiv double %conv357, %conv358
  %mul360 = fmul double 1.000000e-01, %div359
  %add361 = fadd double 1.000000e-01, %mul360
  call void @siox_progress_update(void (i8*, double)* %239, i8* %240, double %add361)
  br label %if.end.362

if.end.362:                                       ; preds = %if.then.356, %for.end.348
  br label %for.inc.363

for.inc.363:                                      ; preds = %if.end.362
  %243 = load i8*, i8** %pr, align 8
  %244 = bitcast i8* %243 to %struct._PixelRegionIterator*
  %call364 = call %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator* %244)
  %245 = bitcast %struct._PixelRegionIterator* %call364 to i8*
  store i8* %245, i8** %pr, align 8
  %246 = load i32, i32* %n, align 4
  %inc365 = add nsw i32 %246, 1
  store i32 %inc365, i32* %n, align 4
  br label %for.cond.292

for.end.366:                                      ; preds = %for.cond.292
  br label %if.end.367

if.end.367:                                       ; preds = %for.end.366, %for.end.289
  br label %if.end.368

if.end.368:                                       ; preds = %if.end.367, %for.end.220
  %247 = load i32, i32* %refinement.addr, align 4
  %and369 = and i32 %247, 2
  %tobool370 = icmp ne i32 %and369, 0
  br i1 %tobool370, label %if.then.371, label %if.end.384

if.then.371:                                      ; preds = %if.end.368
  %248 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %bgsig372 = getelementptr inbounds %struct._SioxState, %struct._SioxState* %248, i32 0, i32 10
  %249 = load %struct.lab*, %struct.lab** %bgsig372, align 8
  %250 = bitcast %struct.lab* %249 to i8*
  call void @g_free(i8* %250)
  %251 = load %struct.lab*, %struct.lab** %surebg, align 8
  %252 = load i32, i32* %surebgcount, align 4
  %253 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %bgsiglen = getelementptr inbounds %struct._SioxState, %struct._SioxState* %253, i32 0, i32 12
  %arraydecay373 = getelementptr inbounds [3 x float], [3 x float]* %limits, i32 0, i32 0
  %254 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %bpp374 = getelementptr inbounds %struct._SioxState, %struct._SioxState* %254, i32 0, i32 2
  %255 = load i32, i32* %bpp374, align 4
  %cmp375 = icmp eq i32 %255, 1
  %cond = select i1 %cmp375, i32 1, i32 3
  %256 = load void (i8*, double)*, void (i8*, double)** %progress_callback.addr, align 8
  %257 = load i8*, i8** %progress_data.addr, align 8
  %call377 = call %struct.lab* @create_signature(%struct.lab* %251, i32 %252, i32* %bgsiglen, float* %arraydecay373, i32 %cond, void (i8*, double)* %256, i8* %257, double 3.000000e-01)
  %258 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %bgsig378 = getelementptr inbounds %struct._SioxState, %struct._SioxState* %258, i32 0, i32 10
  store %struct.lab* %call377, %struct.lab** %bgsig378, align 8
  %259 = load %struct.lab*, %struct.lab** %surebg, align 8
  %260 = bitcast %struct.lab* %259 to i8*
  call void @g_free(i8* %260)
  %261 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %bgsiglen379 = getelementptr inbounds %struct._SioxState, %struct._SioxState* %261, i32 0, i32 12
  %262 = load i32, i32* %bgsiglen379, align 4
  %cmp380 = icmp slt i32 %262, 1
  br i1 %cmp380, label %if.then.382, label %if.end.383

if.then.382:                                      ; preds = %if.then.371
  %263 = load %struct.lab*, %struct.lab** %surefg, align 8
  %264 = bitcast %struct.lab* %263 to i8*
  call void @g_free(i8* %264)
  br label %return

if.end.383:                                       ; preds = %if.then.371
  br label %if.end.384

if.end.384:                                       ; preds = %if.end.383, %if.end.368
  %265 = load void (i8*, double)*, void (i8*, double)** %progress_callback.addr, align 8
  %266 = load i8*, i8** %progress_data.addr, align 8
  call void @siox_progress_update(void (i8*, double)* %265, i8* %266, double 4.000000e-01)
  %267 = load i32, i32* %refinement.addr, align 4
  %and385 = and i32 %267, 1
  %tobool386 = icmp ne i32 %and385, 0
  br i1 %tobool386, label %if.then.387, label %if.end.396

if.then.387:                                      ; preds = %if.end.384
  %268 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %fgsig388 = getelementptr inbounds %struct._SioxState, %struct._SioxState* %268, i32 0, i32 11
  %269 = load %struct.lab*, %struct.lab** %fgsig388, align 8
  %270 = bitcast %struct.lab* %269 to i8*
  call void @g_free(i8* %270)
  %271 = load %struct.lab*, %struct.lab** %surefg, align 8
  %272 = load i32, i32* %surefgcount, align 4
  %273 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %fgsiglen = getelementptr inbounds %struct._SioxState, %struct._SioxState* %273, i32 0, i32 13
  %arraydecay389 = getelementptr inbounds [3 x float], [3 x float]* %limits, i32 0, i32 0
  %274 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %bpp390 = getelementptr inbounds %struct._SioxState, %struct._SioxState* %274, i32 0, i32 2
  %275 = load i32, i32* %bpp390, align 4
  %cmp391 = icmp eq i32 %275, 1
  %cond393 = select i1 %cmp391, i32 1, i32 3
  %276 = load void (i8*, double)*, void (i8*, double)** %progress_callback.addr, align 8
  %277 = load i8*, i8** %progress_data.addr, align 8
  %call394 = call %struct.lab* @create_signature(%struct.lab* %271, i32 %272, i32* %fgsiglen, float* %arraydecay389, i32 %cond393, void (i8*, double)* %276, i8* %277, double 4.500000e-01)
  %278 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %fgsig395 = getelementptr inbounds %struct._SioxState, %struct._SioxState* %278, i32 0, i32 11
  store %struct.lab* %call394, %struct.lab** %fgsig395, align 8
  %279 = load %struct.lab*, %struct.lab** %surefg, align 8
  %280 = bitcast %struct.lab* %279 to i8*
  call void @g_free(i8* %280)
  br label %if.end.396

if.end.396:                                       ; preds = %if.then.387, %if.end.384
  br label %if.end.397

if.end.397:                                       ; preds = %if.end.396, %if.end.97
  %281 = load void (i8*, double)*, void (i8*, double)** %progress_callback.addr, align 8
  %282 = load i8*, i8** %progress_data.addr, align 8
  call void @siox_progress_update(void (i8*, double)* %281, i8* %282, double 5.000000e-01)
  %283 = load i32, i32* %x1.addr, align 4
  %284 = load i32, i32* %y1.addr, align 4
  %285 = load i32, i32* %x2.addr, align 4
  %286 = load i32, i32* %x1.addr, align 4
  %sub398 = sub nsw i32 %285, %286
  %287 = load i32, i32* %y2.addr, align 4
  %288 = load i32, i32* %y1.addr, align 4
  %sub399 = sub nsw i32 %287, %288
  %289 = load i32, i32* %x, align 4
  %290 = load i32, i32* %y, align 4
  %291 = load i32, i32* %width, align 4
  %292 = load i32, i32* %height, align 4
  %call400 = call i32 @gimp_rectangle_intersect(i32 %283, i32 %284, i32 %sub398, i32 %sub399, i32 %289, i32 %290, i32 %291, i32 %292, i32* %x, i32* %y, i32* %width, i32* %height)
  %293 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %pixels401 = getelementptr inbounds %struct._SioxState, %struct._SioxState* %293, i32 0, i32 0
  %294 = load %struct._TileManager*, %struct._TileManager** %pixels401, align 8
  %295 = load i32, i32* %x, align 4
  %296 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %offset_x402 = getelementptr inbounds %struct._SioxState, %struct._SioxState* %296, i32 0, i32 3
  %297 = load i32, i32* %offset_x402, align 4
  %sub403 = sub nsw i32 %295, %297
  %298 = load i32, i32* %y, align 4
  %299 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %offset_y404 = getelementptr inbounds %struct._SioxState, %struct._SioxState* %299, i32 0, i32 4
  %300 = load i32, i32* %offset_y404, align 4
  %sub405 = sub nsw i32 %298, %300
  %301 = load i32, i32* %width, align 4
  %302 = load i32, i32* %height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %294, i32 %sub403, i32 %sub405, i32 %301, i32 %302, i32 0)
  %303 = load %struct._TileManager*, %struct._TileManager** %mask.addr, align 8
  %304 = load i32, i32* %x, align 4
  %305 = load i32, i32* %y, align 4
  %306 = load i32, i32* %width, align 4
  %307 = load i32, i32* %height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %mapPR, %struct._TileManager* %303, i32 %304, i32 %305, i32 %306, i32 %307, i32 1)
  %308 = load i32, i32* %width, align 4
  %309 = load i32, i32* %height, align 4
  %mul406 = mul nsw i32 %308, %309
  store i32 %mul406, i32* %total, align 4
  %call407 = call %struct._PixelRegionIterator* (i32, ...) @pixel_regions_register(i32 2, %struct._PixelRegion* %srcPR, %struct._PixelRegion* %mapPR)
  %310 = bitcast %struct._PixelRegionIterator* %call407 to i8*
  store i8* %310, i8** %pr, align 8
  store i32 0, i32* %n, align 4
  store i32 0, i32* %pixels, align 4
  br label %for.cond.408

for.cond.408:                                     ; preds = %for.inc.543, %if.end.397
  %311 = load i8*, i8** %pr, align 8
  %cmp409 = icmp ne i8* %311, null
  br i1 %cmp409, label %for.body.411, label %for.end.546

for.body.411:                                     ; preds = %for.cond.408
  %data413 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 0
  %312 = load i8*, i8** %data413, align 8
  store i8* %312, i8** %src412, align 8
  %data415 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %mapPR, i32 0, i32 0
  %313 = load i8*, i8** %data415, align 8
  store i8* %313, i8** %map414, align 8
  store i32 0, i32* %row, align 4
  br label %for.cond.416

for.cond.416:                                     ; preds = %for.inc.526, %for.body.411
  %314 = load i32, i32* %row, align 4
  %h417 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 9
  %315 = load i32, i32* %h417, align 4
  %cmp418 = icmp slt i32 %314, %315
  br i1 %cmp418, label %for.body.420, label %for.end.528

for.body.420:                                     ; preds = %for.cond.416
  %316 = load i8*, i8** %src412, align 8
  store i8* %316, i8** %s421, align 8
  %317 = load i8*, i8** %map414, align 8
  store i8* %317, i8** %m422, align 8
  store i32 0, i32* %col, align 4
  br label %for.cond.423

for.cond.423:                                     ; preds = %for.inc.513, %for.body.420
  %318 = load i32, i32* %col, align 4
  %w424 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 8
  %319 = load i32, i32* %w424, align 4
  %cmp425 = icmp slt i32 %318, %319
  br i1 %cmp425, label %for.body.427, label %for.end.519

for.body.427:                                     ; preds = %for.cond.423
  %320 = load i8*, i8** %m422, align 8
  %321 = load i8, i8* %320, align 1
  %conv429 = zext i8 %321 to i32
  %cmp430 = icmp slt i32 %conv429, 1
  br i1 %cmp430, label %if.then.436, label %lor.lhs.false.432

lor.lhs.false.432:                                ; preds = %for.body.427
  %322 = load i8*, i8** %m422, align 8
  %323 = load i8, i8* %322, align 1
  %conv433 = zext i8 %323 to i32
  %cmp434 = icmp sgt i32 %conv433, 254
  br i1 %cmp434, label %if.then.436, label %if.end.437

if.then.436:                                      ; preds = %lor.lhs.false.432, %for.body.427
  br label %for.inc.513

if.end.437:                                       ; preds = %lor.lhs.false.432
  %324 = load i8*, i8** %s421, align 8
  %325 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %bpp438 = getelementptr inbounds %struct._SioxState, %struct._SioxState* %325, i32 0, i32 2
  %326 = load i32, i32* %bpp438, align 4
  %327 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %colormap439 = getelementptr inbounds %struct._SioxState, %struct._SioxState* %327, i32 0, i32 1
  %328 = load i8*, i8** %colormap439, align 8
  %call440 = call i32 @create_key(i8* %324, i32 %326, i8* %328)
  store i32 %call440, i32* %key, align 4
  %329 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %cache441 = getelementptr inbounds %struct._SioxState, %struct._SioxState* %329, i32 0, i32 9
  %330 = load %struct._GHashTable*, %struct._GHashTable** %cache441, align 8
  %331 = load i32, i32* %key, align 4
  %conv442 = sext i32 %331 to i64
  %332 = inttoptr i64 %conv442 to i8*
  %call443 = call i8* @g_hash_table_lookup(%struct._GHashTable* %330, i8* %332)
  %333 = bitcast i8* %call443 to %struct.classresult*
  store %struct.classresult* %333, %struct.classresult** %cr, align 8
  %334 = load %struct.classresult*, %struct.classresult** %cr, align 8
  %tobool444 = icmp ne %struct.classresult* %334, null
  br i1 %tobool444, label %if.then.445, label %if.end.450

if.then.445:                                      ; preds = %if.end.437
  %335 = load %struct.classresult*, %struct.classresult** %cr, align 8
  %bgdist = getelementptr inbounds %struct.classresult, %struct.classresult* %335, i32 0, i32 0
  %336 = load float, float* %bgdist, align 4
  %337 = load %struct.classresult*, %struct.classresult** %cr, align 8
  %fgdist = getelementptr inbounds %struct.classresult, %struct.classresult* %337, i32 0, i32 1
  %338 = load float, float* %fgdist, align 4
  %cmp446 = fcmp oge float %336, %338
  %cond448 = select i1 %cmp446, i32 254, i32 0
  %conv449 = trunc i32 %cond448 to i8
  %339 = load i8*, i8** %m422, align 8
  store i8 %conv449, i8* %339, align 1
  br label %for.inc.513

if.end.450:                                       ; preds = %if.end.437
  %call451 = call noalias i8* @g_slice_alloc0(i64 8)
  %340 = bitcast i8* %call451 to %struct.classresult*
  store %struct.classresult* %340, %struct.classresult** %cr, align 8
  %341 = load i8*, i8** %s421, align 8
  %342 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %bpp452 = getelementptr inbounds %struct._SioxState, %struct._SioxState* %342, i32 0, i32 2
  %343 = load i32, i32* %bpp452, align 4
  %344 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %colormap453 = getelementptr inbounds %struct._SioxState, %struct._SioxState* %344, i32 0, i32 1
  %345 = load i8*, i8** %colormap453, align 8
  call void @calc_lab(i8* %341, i32 %343, i8* %345, %struct.lab* %labpixel)
  %346 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %bgsig454 = getelementptr inbounds %struct._SioxState, %struct._SioxState* %346, i32 0, i32 10
  %347 = load %struct.lab*, %struct.lab** %bgsig454, align 8
  %add.ptr455 = getelementptr inbounds %struct.lab, %struct.lab* %347, i64 0
  %call456 = call float @euklid(%struct.lab* %labpixel, %struct.lab* %add.ptr455)
  store float %call456, float* %minbg, align 4
  store i32 1, i32* %i428, align 4
  br label %for.cond.457

for.cond.457:                                     ; preds = %for.inc.470, %if.end.450
  %348 = load i32, i32* %i428, align 4
  %349 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %bgsiglen458 = getelementptr inbounds %struct._SioxState, %struct._SioxState* %349, i32 0, i32 12
  %350 = load i32, i32* %bgsiglen458, align 4
  %cmp459 = icmp slt i32 %348, %350
  br i1 %cmp459, label %for.body.461, label %for.end.472

for.body.461:                                     ; preds = %for.cond.457
  %351 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %bgsig462 = getelementptr inbounds %struct._SioxState, %struct._SioxState* %351, i32 0, i32 10
  %352 = load %struct.lab*, %struct.lab** %bgsig462, align 8
  %353 = load i32, i32* %i428, align 4
  %idx.ext463 = sext i32 %353 to i64
  %add.ptr464 = getelementptr inbounds %struct.lab, %struct.lab* %352, i64 %idx.ext463
  %call465 = call float @euklid(%struct.lab* %labpixel, %struct.lab* %add.ptr464)
  store float %call465, float* %d, align 4
  %354 = load float, float* %d, align 4
  %355 = load float, float* %minbg, align 4
  %cmp466 = fcmp olt float %354, %355
  br i1 %cmp466, label %if.then.468, label %if.end.469

if.then.468:                                      ; preds = %for.body.461
  %356 = load float, float* %d, align 4
  store float %356, float* %minbg, align 4
  br label %if.end.469

if.end.469:                                       ; preds = %if.then.468, %for.body.461
  br label %for.inc.470

for.inc.470:                                      ; preds = %if.end.469
  %357 = load i32, i32* %i428, align 4
  %inc471 = add nsw i32 %357, 1
  store i32 %inc471, i32* %i428, align 4
  br label %for.cond.457

for.end.472:                                      ; preds = %for.cond.457
  %358 = load float, float* %minbg, align 4
  %359 = load %struct.classresult*, %struct.classresult** %cr, align 8
  %bgdist473 = getelementptr inbounds %struct.classresult, %struct.classresult* %359, i32 0, i32 0
  store float %358, float* %bgdist473, align 4
  %360 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %fgsiglen474 = getelementptr inbounds %struct._SioxState, %struct._SioxState* %360, i32 0, i32 13
  %361 = load i32, i32* %fgsiglen474, align 4
  %cmp475 = icmp eq i32 %361, 0
  br i1 %cmp475, label %if.then.477, label %if.else.484

if.then.477:                                      ; preds = %for.end.472
  %362 = load float, float* %minbg, align 4
  %363 = load float, float* %clustersize, align 4
  %cmp478 = fcmp olt float %362, %363
  br i1 %cmp478, label %if.then.480, label %if.else.482

if.then.480:                                      ; preds = %if.then.477
  %364 = load float, float* %minbg, align 4
  %365 = load float, float* %clustersize, align 4
  %add481 = fadd float %364, %365
  store float %add481, float* %minfg, align 4
  br label %if.end.483

if.else.482:                                      ; preds = %if.then.477
  store float 0x3EE4F8B580000000, float* %minfg, align 4
  br label %if.end.483

if.end.483:                                       ; preds = %if.else.482, %if.then.480
  br label %if.end.504

if.else.484:                                      ; preds = %for.end.472
  %366 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %fgsig485 = getelementptr inbounds %struct._SioxState, %struct._SioxState* %366, i32 0, i32 11
  %367 = load %struct.lab*, %struct.lab** %fgsig485, align 8
  %add.ptr486 = getelementptr inbounds %struct.lab, %struct.lab* %367, i64 0
  %call487 = call float @euklid(%struct.lab* %labpixel, %struct.lab* %add.ptr486)
  store float %call487, float* %minfg, align 4
  store i32 1, i32* %i428, align 4
  br label %for.cond.488

for.cond.488:                                     ; preds = %for.inc.501, %if.else.484
  %368 = load i32, i32* %i428, align 4
  %369 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %fgsiglen489 = getelementptr inbounds %struct._SioxState, %struct._SioxState* %369, i32 0, i32 13
  %370 = load i32, i32* %fgsiglen489, align 4
  %cmp490 = icmp slt i32 %368, %370
  br i1 %cmp490, label %for.body.492, label %for.end.503

for.body.492:                                     ; preds = %for.cond.488
  %371 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %fgsig493 = getelementptr inbounds %struct._SioxState, %struct._SioxState* %371, i32 0, i32 11
  %372 = load %struct.lab*, %struct.lab** %fgsig493, align 8
  %373 = load i32, i32* %i428, align 4
  %idx.ext494 = sext i32 %373 to i64
  %add.ptr495 = getelementptr inbounds %struct.lab, %struct.lab* %372, i64 %idx.ext494
  %call496 = call float @euklid(%struct.lab* %labpixel, %struct.lab* %add.ptr495)
  store float %call496, float* %d, align 4
  %374 = load float, float* %d, align 4
  %375 = load float, float* %minfg, align 4
  %cmp497 = fcmp olt float %374, %375
  br i1 %cmp497, label %if.then.499, label %if.end.500

if.then.499:                                      ; preds = %for.body.492
  %376 = load float, float* %d, align 4
  store float %376, float* %minfg, align 4
  br label %if.end.500

if.end.500:                                       ; preds = %if.then.499, %for.body.492
  br label %for.inc.501

for.inc.501:                                      ; preds = %if.end.500
  %377 = load i32, i32* %i428, align 4
  %inc502 = add nsw i32 %377, 1
  store i32 %inc502, i32* %i428, align 4
  br label %for.cond.488

for.end.503:                                      ; preds = %for.cond.488
  br label %if.end.504

if.end.504:                                       ; preds = %for.end.503, %if.end.483
  %378 = load float, float* %minfg, align 4
  %379 = load %struct.classresult*, %struct.classresult** %cr, align 8
  %fgdist505 = getelementptr inbounds %struct.classresult, %struct.classresult* %379, i32 0, i32 1
  store float %378, float* %fgdist505, align 4
  %380 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %cache506 = getelementptr inbounds %struct._SioxState, %struct._SioxState* %380, i32 0, i32 9
  %381 = load %struct._GHashTable*, %struct._GHashTable** %cache506, align 8
  %382 = load i32, i32* %key, align 4
  %conv507 = sext i32 %382 to i64
  %383 = inttoptr i64 %conv507 to i8*
  %384 = load %struct.classresult*, %struct.classresult** %cr, align 8
  %385 = bitcast %struct.classresult* %384 to i8*
  %call508 = call i32 @g_hash_table_insert(%struct._GHashTable* %381, i8* %383, i8* %385)
  %386 = load float, float* %minbg, align 4
  %387 = load float, float* %minfg, align 4
  %cmp509 = fcmp oge float %386, %387
  %cond511 = select i1 %cmp509, i32 254, i32 0
  %conv512 = trunc i32 %cond511 to i8
  %388 = load i8*, i8** %m422, align 8
  store i8 %conv512, i8* %388, align 1
  br label %for.inc.513

for.inc.513:                                      ; preds = %if.end.504, %if.then.445, %if.then.436
  %389 = load i32, i32* %col, align 4
  %inc514 = add nsw i32 %389, 1
  store i32 %inc514, i32* %col, align 4
  %390 = load i8*, i8** %m422, align 8
  %incdec.ptr515 = getelementptr inbounds i8, i8* %390, i32 1
  store i8* %incdec.ptr515, i8** %m422, align 8
  %391 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %bpp516 = getelementptr inbounds %struct._SioxState, %struct._SioxState* %391, i32 0, i32 2
  %392 = load i32, i32* %bpp516, align 4
  %393 = load i8*, i8** %s421, align 8
  %idx.ext517 = sext i32 %392 to i64
  %add.ptr518 = getelementptr inbounds i8, i8* %393, i64 %idx.ext517
  store i8* %add.ptr518, i8** %s421, align 8
  br label %for.cond.423

for.end.519:                                      ; preds = %for.cond.423
  %rowstride520 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 5
  %394 = load i32, i32* %rowstride520, align 4
  %395 = load i8*, i8** %src412, align 8
  %idx.ext521 = sext i32 %394 to i64
  %add.ptr522 = getelementptr inbounds i8, i8* %395, i64 %idx.ext521
  store i8* %add.ptr522, i8** %src412, align 8
  %rowstride523 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %mapPR, i32 0, i32 5
  %396 = load i32, i32* %rowstride523, align 4
  %397 = load i8*, i8** %map414, align 8
  %idx.ext524 = sext i32 %396 to i64
  %add.ptr525 = getelementptr inbounds i8, i8* %397, i64 %idx.ext524
  store i8* %add.ptr525, i8** %map414, align 8
  br label %for.inc.526

for.inc.526:                                      ; preds = %for.end.519
  %398 = load i32, i32* %row, align 4
  %inc527 = add nsw i32 %398, 1
  store i32 %inc527, i32* %row, align 4
  br label %for.cond.416

for.end.528:                                      ; preds = %for.cond.416
  %w529 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %mapPR, i32 0, i32 8
  %399 = load i32, i32* %w529, align 4
  %h530 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %mapPR, i32 0, i32 9
  %400 = load i32, i32* %h530, align 4
  %mul531 = mul nsw i32 %399, %400
  %401 = load i32, i32* %pixels, align 4
  %add532 = add nsw i32 %401, %mul531
  store i32 %add532, i32* %pixels, align 4
  %402 = load i32, i32* %n, align 4
  %rem533 = srem i32 %402, 8
  %cmp534 = icmp eq i32 %rem533, 0
  br i1 %cmp534, label %if.then.536, label %if.end.542

if.then.536:                                      ; preds = %for.end.528
  %403 = load void (i8*, double)*, void (i8*, double)** %progress_callback.addr, align 8
  %404 = load i8*, i8** %progress_data.addr, align 8
  %405 = load i32, i32* %pixels, align 4
  %conv537 = sitofp i32 %405 to double
  %406 = load i32, i32* %total, align 4
  %conv538 = sitofp i32 %406 to double
  %div539 = fdiv double %conv537, %conv538
  %mul540 = fmul double 3.000000e-01, %div539
  %add541 = fadd double 5.000000e-01, %mul540
  call void @siox_progress_update(void (i8*, double)* %403, i8* %404, double %add541)
  br label %if.end.542

if.end.542:                                       ; preds = %if.then.536, %for.end.528
  br label %for.inc.543

for.inc.543:                                      ; preds = %if.end.542
  %407 = load i8*, i8** %pr, align 8
  %408 = bitcast i8* %407 to %struct._PixelRegionIterator*
  %call544 = call %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator* %408)
  %409 = bitcast %struct._PixelRegionIterator* %call544 to i8*
  store i8* %409, i8** %pr, align 8
  %410 = load i32, i32* %n, align 4
  %inc545 = add nsw i32 %410, 1
  store i32 %inc545, i32* %n, align 4
  br label %for.cond.408

for.end.546:                                      ; preds = %for.cond.408
  %411 = load %struct._TileManager*, %struct._TileManager** %mask.addr, align 8
  %412 = load i32, i32* %x, align 4
  %413 = load i32, i32* %y, align 4
  %414 = load i32, i32* %width, align 4
  %415 = load i32, i32* %height, align 4
  call void @smooth_mask(%struct._TileManager* %411, i32 %412, i32 %413, i32 %414, i32 %415)
  %416 = load %struct._TileManager*, %struct._TileManager** %mask.addr, align 8
  %417 = load i32, i32* %x, align 4
  %418 = load i32, i32* %y, align 4
  %419 = load i32, i32* %width, align 4
  %420 = load i32, i32* %height, align 4
  call void @erode_mask(%struct._TileManager* %416, i32 %417, i32 %418, i32 %419, i32 %420)
  %421 = load %struct._TileManager*, %struct._TileManager** %mask.addr, align 8
  %422 = load i32, i32* %x, align 4
  %423 = load i32, i32* %y, align 4
  %424 = load i32, i32* %width, align 4
  %425 = load i32, i32* %height, align 4
  %426 = load i32, i32* %multiblob.addr, align 4
  %tobool547 = icmp ne i32 %426, 0
  %cond548 = select i1 %tobool547, i32 4, i32 0
  call void @find_max_blob(%struct._TileManager* %421, i32 %422, i32 %423, i32 %424, i32 %425, i32 %cond548)
  %427 = load void (i8*, double)*, void (i8*, double)** %progress_callback.addr, align 8
  %428 = load i8*, i8** %progress_data.addr, align 8
  call void @siox_progress_update(void (i8*, double)* %427, i8* %428, double 9.000000e-01)
  store i32 0, i32* %n, align 4
  br label %for.cond.549

for.cond.549:                                     ; preds = %for.inc.553, %for.end.546
  %429 = load i32, i32* %n, align 4
  %430 = load i32, i32* %smoothness.addr, align 4
  %cmp550 = icmp slt i32 %429, %430
  br i1 %cmp550, label %for.body.552, label %for.end.555

for.body.552:                                     ; preds = %for.cond.549
  %431 = load %struct._TileManager*, %struct._TileManager** %mask.addr, align 8
  %432 = load i32, i32* %x, align 4
  %433 = load i32, i32* %y, align 4
  %434 = load i32, i32* %width, align 4
  %435 = load i32, i32* %height, align 4
  call void @smooth_mask(%struct._TileManager* %431, i32 %432, i32 %433, i32 %434, i32 %435)
  br label %for.inc.553

for.inc.553:                                      ; preds = %for.body.552
  %436 = load i32, i32* %n, align 4
  %inc554 = add nsw i32 %436, 1
  store i32 %inc554, i32* %n, align 4
  br label %for.cond.549

for.end.555:                                      ; preds = %for.cond.549
  %437 = load %struct._TileManager*, %struct._TileManager** %mask.addr, align 8
  %438 = load i32, i32* %x, align 4
  %439 = load i32, i32* %y, align 4
  %440 = load i32, i32* %width, align 4
  %441 = load i32, i32* %height, align 4
  %442 = load i32, i32* %multiblob.addr, align 4
  %tobool556 = icmp ne i32 %442, 0
  %cond557 = select i1 %tobool556, i32 4, i32 0
  call void @find_max_blob(%struct._TileManager* %437, i32 %438, i32 %439, i32 %440, i32 %441, i32 %cond557)
  %443 = load %struct._TileManager*, %struct._TileManager** %mask.addr, align 8
  %444 = load i32, i32* %x, align 4
  %445 = load i32, i32* %y, align 4
  %446 = load i32, i32* %width, align 4
  %447 = load i32, i32* %height, align 4
  call void @dilate_mask(%struct._TileManager* %443, i32 %444, i32 %445, i32 %446, i32 %447)
  %448 = load void (i8*, double)*, void (i8*, double)** %progress_callback.addr, align 8
  %449 = load i8*, i8** %progress_data.addr, align 8
  call void @siox_progress_update(void (i8*, double)* %448, i8* %449, double 1.000000e+00)
  br label %return

return:                                           ; preds = %for.end.555, %if.then.382, %if.else.67, %if.else.59, %if.else.48, %if.else.41, %if.else.35, %if.else.26, %if.else.20, %if.else.11, %if.else.5, %if.else
  ret void
}

declare i32 @tile_manager_width(%struct._TileManager*) #1

declare i32 @tile_manager_height(%struct._TileManager*) #1

; Function Attrs: nounwind uwtable
define internal float @get_clustersize(float* %limits) #0 {
entry:
  %limits.addr = alloca float*, align 8
  store float* %limits, float** %limits.addr, align 8
  %0 = load float*, float** %limits.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %0, i64 0
  %1 = load float, float* %arrayidx, align 4
  %2 = load float*, float** %limits.addr, align 8
  %arrayidx1 = getelementptr inbounds float, float* %2, i64 0
  %3 = load float, float* %arrayidx1, align 4
  %sub = fsub float -0.000000e+00, %3
  %sub2 = fsub float %1, %sub
  %4 = load float*, float** %limits.addr, align 8
  %arrayidx3 = getelementptr inbounds float, float* %4, i64 0
  %5 = load float, float* %arrayidx3, align 4
  %6 = load float*, float** %limits.addr, align 8
  %arrayidx4 = getelementptr inbounds float, float* %6, i64 0
  %7 = load float, float* %arrayidx4, align 4
  %sub5 = fsub float -0.000000e+00, %7
  %sub6 = fsub float %5, %sub5
  %mul = fmul float %sub2, %sub6
  %8 = load float*, float** %limits.addr, align 8
  %arrayidx7 = getelementptr inbounds float, float* %8, i64 1
  %9 = load float, float* %arrayidx7, align 4
  %10 = load float*, float** %limits.addr, align 8
  %arrayidx8 = getelementptr inbounds float, float* %10, i64 1
  %11 = load float, float* %arrayidx8, align 4
  %sub9 = fsub float -0.000000e+00, %11
  %sub10 = fsub float %9, %sub9
  %12 = load float*, float** %limits.addr, align 8
  %arrayidx11 = getelementptr inbounds float, float* %12, i64 1
  %13 = load float, float* %arrayidx11, align 4
  %14 = load float*, float** %limits.addr, align 8
  %arrayidx12 = getelementptr inbounds float, float* %14, i64 1
  %15 = load float, float* %arrayidx12, align 4
  %sub13 = fsub float -0.000000e+00, %15
  %sub14 = fsub float %13, %sub13
  %mul15 = fmul float %sub10, %sub14
  %add = fadd float %mul, %mul15
  %16 = load float*, float** %limits.addr, align 8
  %arrayidx16 = getelementptr inbounds float, float* %16, i64 2
  %17 = load float, float* %arrayidx16, align 4
  %18 = load float*, float** %limits.addr, align 8
  %arrayidx17 = getelementptr inbounds float, float* %18, i64 2
  %19 = load float, float* %arrayidx17, align 4
  %sub18 = fsub float -0.000000e+00, %19
  %sub19 = fsub float %17, %sub18
  %20 = load float*, float** %limits.addr, align 8
  %arrayidx20 = getelementptr inbounds float, float* %20, i64 2
  %21 = load float, float* %arrayidx20, align 4
  %22 = load float*, float** %limits.addr, align 8
  %arrayidx21 = getelementptr inbounds float, float* %22, i64 2
  %23 = load float, float* %arrayidx21, align 4
  %sub22 = fsub float -0.000000e+00, %23
  %sub23 = fsub float %21, %sub22
  %mul24 = fmul float %sub19, %sub23
  %add25 = fadd float %add, %mul24
  ret float %add25
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @siox_progress_update(void (i8*, double)* %progress_callback, i8* %progress_data, double %value) #3 {
entry:
  %progress_callback.addr = alloca void (i8*, double)*, align 8
  %progress_data.addr = alloca i8*, align 8
  %value.addr = alloca double, align 8
  store void (i8*, double)* %progress_callback, void (i8*, double)** %progress_callback.addr, align 8
  store i8* %progress_data, i8** %progress_data.addr, align 8
  store double %value, double* %value.addr, align 8
  %0 = load i8*, i8** %progress_data.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load void (i8*, double)*, void (i8*, double)** %progress_callback.addr, align 8
  %2 = load i8*, i8** %progress_data.addr, align 8
  %3 = load double, double* %value.addr, align 8
  call void %1(i8* %2, double %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @g_hash_table_foreach_remove(%struct._GHashTable*, i32 (i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @siox_cache_remove_bg(i8* %key, i8* %value, i8* %user_data) #0 {
entry:
  %key.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %user_data.addr = alloca i8*, align 8
  %cr = alloca %struct.classresult*, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load i8*, i8** %value.addr, align 8
  %1 = bitcast i8* %0 to %struct.classresult*
  store %struct.classresult* %1, %struct.classresult** %cr, align 8
  %2 = load %struct.classresult*, %struct.classresult** %cr, align 8
  %bgdist = getelementptr inbounds %struct.classresult, %struct.classresult* %2, i32 0, i32 0
  %3 = load float, float* %bgdist, align 4
  %4 = load %struct.classresult*, %struct.classresult** %cr, align 8
  %fgdist = getelementptr inbounds %struct.classresult, %struct.classresult* %4, i32 0, i32 1
  %5 = load float, float* %fgdist, align 4
  %cmp = fcmp olt float %3, %5
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal i32 @siox_cache_remove_fg(i8* %key, i8* %value, i8* %user_data) #0 {
entry:
  %key.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %user_data.addr = alloca i8*, align 8
  %cr = alloca %struct.classresult*, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load i8*, i8** %value.addr, align 8
  %1 = bitcast i8* %0 to %struct.classresult*
  store %struct.classresult* %1, %struct.classresult** %cr, align 8
  %2 = load %struct.classresult*, %struct.classresult** %cr, align 8
  %bgdist = getelementptr inbounds %struct.classresult, %struct.classresult* %2, i32 0, i32 0
  %3 = load float, float* %bgdist, align 4
  %4 = load %struct.classresult*, %struct.classresult** %cr, align 8
  %fgdist = getelementptr inbounds %struct.classresult, %struct.classresult* %4, i32 0, i32 1
  %5 = load float, float* %fgdist, align 4
  %cmp = fcmp oge float %3, %5
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare void @pixel_region_init(%struct._PixelRegion*, %struct._TileManager*, i32, i32, i32, i32, i32) #1

declare %struct._PixelRegionIterator* @pixel_regions_register(i32, ...) #1

declare %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @calc_lab(i8* %src, i32 %bpp, i8* %colormap, %struct.lab* %pixel) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %colormap.addr = alloca i8*, align 8
  %pixel.addr = alloca %struct.lab*, align 8
  %l = alloca double, align 8
  %a = alloca double, align 8
  %b = alloca double, align 8
  %i = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i8* %colormap, i8** %colormap.addr, align 8
  store %struct.lab* %pixel, %struct.lab** %pixel.addr, align 8
  %0 = load i32, i32* %bpp.addr, align 4
  switch i32 %0, label %sw.default [
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 2, label %sw.bb.5
    i32 1, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry, %entry
  %1 = load i8*, i8** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = uitofp i8 %2 to double
  %3 = load i8*, i8** %src.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %3, i64 1
  %4 = load i8, i8* %arrayidx1, align 1
  %conv2 = uitofp i8 %4 to double
  %5 = load i8*, i8** %src.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %5, i64 2
  %6 = load i8, i8* %arrayidx3, align 1
  %conv4 = uitofp i8 %6 to double
  call void @cpercep_rgb_to_space(double %conv, double %conv2, double %conv4, double* %l, double* %a, double* %b)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry, %entry
  %7 = load i8*, i8** %colormap.addr, align 8
  %tobool = icmp ne i8* %7, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.5
  %8 = load i8*, i8** %src.addr, align 8
  %9 = load i8, i8* %8, align 1
  %conv6 = zext i8 %9 to i32
  %mul = mul nsw i32 %conv6, 3
  store i32 %mul, i32* %i, align 4
  %10 = load i32, i32* %i, align 4
  %add = add nsw i32 %10, 0
  %idxprom = sext i32 %add to i64
  %11 = load i8*, i8** %colormap.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %11, i64 %idxprom
  %12 = load i8, i8* %arrayidx7, align 1
  %conv8 = uitofp i8 %12 to double
  %13 = load i32, i32* %i, align 4
  %add9 = add nsw i32 %13, 1
  %idxprom10 = sext i32 %add9 to i64
  %14 = load i8*, i8** %colormap.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %14, i64 %idxprom10
  %15 = load i8, i8* %arrayidx11, align 1
  %conv12 = uitofp i8 %15 to double
  %16 = load i32, i32* %i, align 4
  %add13 = add nsw i32 %16, 2
  %idxprom14 = sext i32 %add13 to i64
  %17 = load i8*, i8** %colormap.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %17, i64 %idxprom14
  %18 = load i8, i8* %arrayidx15, align 1
  %conv16 = uitofp i8 %18 to double
  call void @cpercep_rgb_to_space(double %conv8, double %conv12, double %conv16, double* %l, double* %a, double* %b)
  br label %if.end

if.else:                                          ; preds = %sw.bb.5
  %19 = load i8*, i8** %src.addr, align 8
  %20 = load i8, i8* %19, align 1
  %conv17 = uitofp i8 %20 to double
  %21 = load i8*, i8** %src.addr, align 8
  %22 = load i8, i8* %21, align 1
  %conv18 = uitofp i8 %22 to double
  %23 = load i8*, i8** %src.addr, align 8
  %24 = load i8, i8* %23, align 1
  %conv19 = uitofp i8 %24 to double
  call void @cpercep_rgb_to_space(double %conv17, double %conv18, double %conv19, double* %l, double* %a, double* %b)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i32 167, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.calc_lab, i32 0, i32 0))
  br label %return

do.end:                                           ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.end, %sw.bb
  %25 = load double, double* %l, align 8
  %conv20 = fptrunc double %25 to float
  %26 = load %struct.lab*, %struct.lab** %pixel.addr, align 8
  %l21 = getelementptr inbounds %struct.lab, %struct.lab* %26, i32 0, i32 0
  store float %conv20, float* %l21, align 4
  %27 = load double, double* %a, align 8
  %conv22 = fptrunc double %27 to float
  %28 = load %struct.lab*, %struct.lab** %pixel.addr, align 8
  %a23 = getelementptr inbounds %struct.lab, %struct.lab* %28, i32 0, i32 1
  store float %conv22, float* %a23, align 4
  %29 = load double, double* %b, align 8
  %conv24 = fptrunc double %29 to float
  %30 = load %struct.lab*, %struct.lab** %pixel.addr, align 8
  %b25 = getelementptr inbounds %struct.lab, %struct.lab* %30, i32 0, i32 2
  store float %conv24, float* %b25, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %do.body
  ret void
}

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct.lab* @create_signature(%struct.lab* %input, i32 %length, i32* %returnlength, float* %limits, i32 %dims, void (i8*, double)* %progress_callback, i8* %progress_data, double %progress_value) #0 {
entry:
  %retval = alloca %struct.lab*, align 8
  %input.addr = alloca %struct.lab*, align 8
  %length.addr = alloca i32, align 4
  %returnlength.addr = alloca i32*, align 8
  %limits.addr = alloca float*, align 8
  %dims.addr = alloca i32, align 4
  %progress_callback.addr = alloca void (i8*, double)*, align 8
  %progress_data.addr = alloca i8*, align 8
  %progress_value.addr = alloca double, align 8
  %size1 = alloca i32, align 4
  %size2 = alloca i32, align 4
  store %struct.lab* %input, %struct.lab** %input.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  store i32* %returnlength, i32** %returnlength.addr, align 8
  store float* %limits, float** %limits.addr, align 8
  store i32 %dims, i32* %dims.addr, align 4
  store void (i8*, double)* %progress_callback, void (i8*, double)** %progress_callback.addr, align 8
  store i8* %progress_data, i8** %progress_data.addr, align 8
  store double %progress_value, double* %progress_value.addr, align 8
  store i32 0, i32* %size1, align 4
  store i32 0, i32* %size2, align 4
  %0 = load i32, i32* %length.addr, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %returnlength.addr, align 8
  store i32 0, i32* %1, align 4
  store %struct.lab* null, %struct.lab** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.lab*, %struct.lab** %input.addr, align 8
  %3 = load i32, i32* %length.addr, align 4
  %4 = load float*, float** %limits.addr, align 8
  %5 = load i32, i32* %dims.addr, align 4
  call void @stageone(%struct.lab* %2, i32 0, i32 %3, i32 0, i32* %size1, float* %4, i32 %5)
  %6 = load void (i8*, double)*, void (i8*, double)** %progress_callback.addr, align 8
  %7 = load i8*, i8** %progress_data.addr, align 8
  %8 = load double, double* %progress_value.addr, align 8
  call void @siox_progress_update(void (i8*, double)* %6, i8* %7, double %8)
  %9 = load %struct.lab*, %struct.lab** %input.addr, align 8
  %10 = load i32, i32* %size1, align 4
  %11 = load float*, float** %limits.addr, align 8
  %12 = load i32, i32* %length.addr, align 4
  %conv = sitofp i32 %12 to double
  %mul = fmul double %conv, 1.000000e-03
  %conv1 = fptrunc double %mul to float
  %13 = load i32, i32* %dims.addr, align 4
  call void @stagetwo(%struct.lab* %9, i32 0, i32 %10, i32 0, i32* %size2, float* %11, float %conv1, i32 %13)
  %14 = load i32, i32* %size2, align 4
  %15 = load i32*, i32** %returnlength.addr, align 8
  store i32 %14, i32* %15, align 4
  %16 = load %struct.lab*, %struct.lab** %input.addr, align 8
  %17 = bitcast %struct.lab* %16 to i8*
  %18 = load i32, i32* %size2, align 4
  %conv2 = sext i32 %18 to i64
  %mul3 = mul i64 %conv2, 16
  %conv4 = trunc i64 %mul3 to i32
  %call = call noalias i8* @g_memdup(i8* %17, i32 %conv4)
  %19 = bitcast i8* %call to %struct.lab*
  store %struct.lab* %19, %struct.lab** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %20 = load %struct.lab*, %struct.lab** %retval
  ret %struct.lab* %20
}

declare i32 @gimp_rectangle_intersect(i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @create_key(i8* %src, i32 %bpp, i8* %colormap) #3 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %colormap.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i8* %colormap, i8** %colormap.addr, align 8
  %0 = load i32, i32* %bpp.addr, align 4
  switch i32 %0, label %sw.default [
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 2, label %sw.bb.7
    i32 1, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %entry, %entry
  %1 = load i8*, i8** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %shl = shl i32 %conv, 16
  %3 = load i8*, i8** %src.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %3, i64 1
  %4 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %4 to i32
  %shl3 = shl i32 %conv2, 8
  %or = or i32 %shl, %shl3
  %5 = load i8*, i8** %src.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %5, i64 2
  %6 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %6 to i32
  %or6 = or i32 %or, %conv5
  store i32 %or6, i32* %retval
  br label %return

sw.bb.7:                                          ; preds = %entry, %entry
  %7 = load i8*, i8** %colormap.addr, align 8
  %tobool = icmp ne i8* %7, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.7
  %8 = load i8*, i8** %src.addr, align 8
  %9 = load i8, i8* %8, align 1
  %conv8 = zext i8 %9 to i32
  %mul = mul nsw i32 %conv8, 3
  store i32 %mul, i32* %i, align 4
  %10 = load i32, i32* %i, align 4
  %add = add nsw i32 %10, 0
  %idxprom = sext i32 %add to i64
  %11 = load i8*, i8** %colormap.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %11, i64 %idxprom
  %12 = load i8, i8* %arrayidx9, align 1
  %conv10 = zext i8 %12 to i32
  %shl11 = shl i32 %conv10, 16
  %13 = load i32, i32* %i, align 4
  %add12 = add nsw i32 %13, 1
  %idxprom13 = sext i32 %add12 to i64
  %14 = load i8*, i8** %colormap.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %14, i64 %idxprom13
  %15 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %15 to i32
  %shl16 = shl i32 %conv15, 8
  %or17 = or i32 %shl11, %shl16
  %16 = load i32, i32* %i, align 4
  %add18 = add nsw i32 %16, 2
  %idxprom19 = sext i32 %add18 to i64
  %17 = load i8*, i8** %colormap.addr, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %17, i64 %idxprom19
  %18 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %18 to i32
  %or22 = or i32 %or17, %conv21
  store i32 %or22, i32* %retval
  br label %return

if.else:                                          ; preds = %sw.bb.7
  %19 = load i8*, i8** %src.addr, align 8
  %20 = load i8, i8* %19, align 1
  %conv23 = zext i8 %20 to i32
  store i32 %conv23, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %if.else, %if.then, %sw.bb
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #1

declare noalias i8* @g_slice_alloc0(i64) #1

; Function Attrs: inlinehint nounwind uwtable
define internal float @euklid(%struct.lab* %p, %struct.lab* %q) #3 {
entry:
  %p.addr = alloca %struct.lab*, align 8
  %q.addr = alloca %struct.lab*, align 8
  store %struct.lab* %p, %struct.lab** %p.addr, align 8
  store %struct.lab* %q, %struct.lab** %q.addr, align 8
  %0 = load %struct.lab*, %struct.lab** %p.addr, align 8
  %l = getelementptr inbounds %struct.lab, %struct.lab* %0, i32 0, i32 0
  %1 = load float, float* %l, align 4
  %2 = load %struct.lab*, %struct.lab** %q.addr, align 8
  %l1 = getelementptr inbounds %struct.lab, %struct.lab* %2, i32 0, i32 0
  %3 = load float, float* %l1, align 4
  %sub = fsub float %1, %3
  %4 = load %struct.lab*, %struct.lab** %p.addr, align 8
  %l2 = getelementptr inbounds %struct.lab, %struct.lab* %4, i32 0, i32 0
  %5 = load float, float* %l2, align 4
  %6 = load %struct.lab*, %struct.lab** %q.addr, align 8
  %l3 = getelementptr inbounds %struct.lab, %struct.lab* %6, i32 0, i32 0
  %7 = load float, float* %l3, align 4
  %sub4 = fsub float %5, %7
  %mul = fmul float %sub, %sub4
  %8 = load %struct.lab*, %struct.lab** %p.addr, align 8
  %a = getelementptr inbounds %struct.lab, %struct.lab* %8, i32 0, i32 1
  %9 = load float, float* %a, align 4
  %10 = load %struct.lab*, %struct.lab** %q.addr, align 8
  %a5 = getelementptr inbounds %struct.lab, %struct.lab* %10, i32 0, i32 1
  %11 = load float, float* %a5, align 4
  %sub6 = fsub float %9, %11
  %12 = load %struct.lab*, %struct.lab** %p.addr, align 8
  %a7 = getelementptr inbounds %struct.lab, %struct.lab* %12, i32 0, i32 1
  %13 = load float, float* %a7, align 4
  %14 = load %struct.lab*, %struct.lab** %q.addr, align 8
  %a8 = getelementptr inbounds %struct.lab, %struct.lab* %14, i32 0, i32 1
  %15 = load float, float* %a8, align 4
  %sub9 = fsub float %13, %15
  %mul10 = fmul float %sub6, %sub9
  %add = fadd float %mul, %mul10
  %16 = load %struct.lab*, %struct.lab** %p.addr, align 8
  %b = getelementptr inbounds %struct.lab, %struct.lab* %16, i32 0, i32 2
  %17 = load float, float* %b, align 4
  %18 = load %struct.lab*, %struct.lab** %q.addr, align 8
  %b11 = getelementptr inbounds %struct.lab, %struct.lab* %18, i32 0, i32 2
  %19 = load float, float* %b11, align 4
  %sub12 = fsub float %17, %19
  %20 = load %struct.lab*, %struct.lab** %p.addr, align 8
  %b13 = getelementptr inbounds %struct.lab, %struct.lab* %20, i32 0, i32 2
  %21 = load float, float* %b13, align 4
  %22 = load %struct.lab*, %struct.lab** %q.addr, align 8
  %b14 = getelementptr inbounds %struct.lab, %struct.lab* %22, i32 0, i32 2
  %23 = load float, float* %b14, align 4
  %sub15 = fsub float %21, %23
  %mul16 = fmul float %sub12, %sub15
  %add17 = fadd float %add, %mul16
  ret float %add17
}

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @smooth_mask(%struct._TileManager* %mask, i32 %x, i32 %y, i32 %width, i32 %height) #0 {
entry:
  %mask.addr = alloca %struct._TileManager*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %region = alloca %struct._PixelRegion, align 8
  store %struct._TileManager* %mask, %struct._TileManager** %mask.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load %struct._TileManager*, %struct._TileManager** %mask.addr, align 8
  %1 = load i32, i32* %x.addr, align 4
  %2 = load i32, i32* %y.addr, align 4
  %3 = load i32, i32* %width.addr, align 4
  %4 = load i32, i32* %height.addr, align 4
  call void @pixel_region_init(%struct._PixelRegion* %region, %struct._TileManager* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 1)
  call void @smooth_region(%struct._PixelRegion* %region)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @erode_mask(%struct._TileManager* %mask, i32 %x, i32 %y, i32 %width, i32 %height) #0 {
entry:
  %mask.addr = alloca %struct._TileManager*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %region = alloca %struct._PixelRegion, align 8
  store %struct._TileManager* %mask, %struct._TileManager** %mask.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load %struct._TileManager*, %struct._TileManager** %mask.addr, align 8
  %1 = load i32, i32* %x.addr, align 4
  %2 = load i32, i32* %y.addr, align 4
  %3 = load i32, i32* %width.addr, align 4
  %4 = load i32, i32* %height.addr, align 4
  call void @pixel_region_init(%struct._PixelRegion* %region, %struct._TileManager* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 1)
  call void @erode_region(%struct._PixelRegion* %region)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @find_max_blob(%struct._TileManager* %mask, i32 %x, i32 %y, i32 %width, i32 %height, i32 %size_factor) #0 {
entry:
  %mask.addr = alloca %struct._TileManager*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %size_factor.addr = alloca i32, align 4
  %list = alloca %struct._GSList*, align 8
  %iter = alloca %struct._GSList*, align 8
  %region = alloca %struct._PixelRegion, align 8
  %pr = alloca i8*, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %maxsize = alloca i32, align 4
  %val = alloca i8, align 1
  %pos_y = alloca i32, align 4
  %data = alloca i8*, align 8
  %d = alloca i8*, align 8
  %b = alloca %struct.blob*, align 8
  %b33 = alloca %struct.blob*, align 8
  store %struct._TileManager* %mask, %struct._TileManager** %mask.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %size_factor, i32* %size_factor.addr, align 4
  store %struct._GSList* null, %struct._GSList** %list, align 8
  store i32 0, i32* %maxsize, align 4
  %0 = load %struct._TileManager*, %struct._TileManager** %mask.addr, align 8
  %1 = load i32, i32* %x.addr, align 4
  %2 = load i32, i32* %y.addr, align 4
  %3 = load i32, i32* %width.addr, align 4
  %4 = load i32, i32* %height.addr, align 4
  call void @threshold_mask(%struct._TileManager* %0, i32 %1, i32 %2, i32 %3, i32 %4)
  %5 = load %struct._TileManager*, %struct._TileManager** %mask.addr, align 8
  %6 = load i32, i32* %x.addr, align 4
  %7 = load i32, i32* %y.addr, align 4
  %8 = load i32, i32* %width.addr, align 4
  %9 = load i32, i32* %height.addr, align 4
  call void @pixel_region_init(%struct._PixelRegion* %region, %struct._TileManager* %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 1)
  %call = call %struct._PixelRegionIterator* (i32, ...) @pixel_regions_register(i32 1, %struct._PixelRegion* %region)
  %10 = bitcast %struct._PixelRegionIterator* %call to i8*
  store i8* %10, i8** %pr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.27, %entry
  %11 = load i8*, i8** %pr, align 8
  %cmp = icmp ne i8* %11, null
  br i1 %cmp, label %for.body, label %for.end.29

for.body:                                         ; preds = %for.cond
  %y1 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %region, i32 0, i32 7
  %12 = load i32, i32* %y1, align 4
  store i32 %12, i32* %pos_y, align 4
  %data2 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %region, i32 0, i32 0
  %13 = load i8*, i8** %data2, align 8
  store i8* %13, i8** %data, align 8
  store i32 0, i32* %row, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.23, %for.body
  %14 = load i32, i32* %row, align 4
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %region, i32 0, i32 9
  %15 = load i32, i32* %h, align 4
  %cmp4 = icmp slt i32 %14, %15
  br i1 %cmp4, label %for.body.5, label %for.end.26

for.body.5:                                       ; preds = %for.cond.3
  %16 = load i8*, i8** %data, align 8
  store i8* %16, i8** %d, align 8
  store i32 0, i32* %col, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body.5
  %17 = load i32, i32* %col, align 4
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %region, i32 0, i32 8
  %18 = load i32, i32* %w, align 4
  %cmp7 = icmp slt i32 %17, %18
  br i1 %cmp7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.6
  %19 = load i8*, i8** %d, align 8
  %20 = load i8, i8* %19, align 1
  store i8 %20, i8* %val, align 1
  %21 = load i8, i8* %val, align 1
  %conv = zext i8 %21 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %for.body.8
  %22 = load i8, i8* %val, align 1
  %conv9 = zext i8 %22 to i32
  %cmp10 = icmp ne i32 %conv9, 7
  br i1 %cmp10, label %if.then, label %if.end.22

if.then:                                          ; preds = %land.lhs.true
  %call12 = call noalias i8* @g_slice_alloc(i64 16)
  %23 = bitcast i8* %call12 to %struct.blob*
  store %struct.blob* %23, %struct.blob** %b, align 8
  %x13 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %region, i32 0, i32 6
  %24 = load i32, i32* %x13, align 4
  %25 = load i32, i32* %col, align 4
  %add = add nsw i32 %24, %25
  %26 = load %struct.blob*, %struct.blob** %b, align 8
  %seedx = getelementptr inbounds %struct.blob, %struct.blob* %26, i32 0, i32 0
  store i32 %add, i32* %seedx, align 4
  %27 = load i32, i32* %pos_y, align 4
  %28 = load %struct.blob*, %struct.blob** %b, align 8
  %seedy = getelementptr inbounds %struct.blob, %struct.blob* %28, i32 0, i32 1
  store i32 %27, i32* %seedy, align 4
  %29 = load %struct.blob*, %struct.blob** %b, align 8
  %size = getelementptr inbounds %struct.blob, %struct.blob* %29, i32 0, i32 2
  store i32 0, i32* %size, align 4
  %30 = load %struct.blob*, %struct.blob** %b, align 8
  %mustkeep = getelementptr inbounds %struct.blob, %struct.blob* %30, i32 0, i32 3
  store i32 0, i32* %mustkeep, align 4
  %31 = load %struct._TileManager*, %struct._TileManager** %mask.addr, align 8
  %32 = load i32, i32* %x.addr, align 4
  %33 = load i32, i32* %y.addr, align 4
  %34 = load i32, i32* %x.addr, align 4
  %35 = load i32, i32* %width.addr, align 4
  %add14 = add nsw i32 %34, %35
  %36 = load i32, i32* %y.addr, align 4
  %37 = load i32, i32* %height.addr, align 4
  %add15 = add nsw i32 %36, %37
  %38 = load %struct.blob*, %struct.blob** %b, align 8
  call void @depth_first_search(%struct._TileManager* %31, i32 %32, i32 %33, i32 %add14, i32 %add15, %struct.blob* %38, i8 zeroext 7)
  %39 = load %struct._GSList*, %struct._GSList** %list, align 8
  %40 = load %struct.blob*, %struct.blob** %b, align 8
  %41 = bitcast %struct.blob* %40 to i8*
  %call16 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %39, i8* %41)
  store %struct._GSList* %call16, %struct._GSList** %list, align 8
  %42 = load %struct.blob*, %struct.blob** %b, align 8
  %size17 = getelementptr inbounds %struct.blob, %struct.blob* %42, i32 0, i32 2
  %43 = load i32, i32* %size17, align 4
  %44 = load i32, i32* %maxsize, align 4
  %cmp18 = icmp sgt i32 %43, %44
  br i1 %cmp18, label %if.then.20, label %if.end

if.then.20:                                       ; preds = %if.then
  %45 = load %struct.blob*, %struct.blob** %b, align 8
  %size21 = getelementptr inbounds %struct.blob, %struct.blob* %45, i32 0, i32 2
  %46 = load i32, i32* %size21, align 4
  store i32 %46, i32* %maxsize, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.20, %if.then
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %land.lhs.true, %for.body.8
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %47 = load i32, i32* %col, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %col, align 4
  %48 = load i8*, i8** %d, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr, i8** %d, align 8
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  %rowstride = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %region, i32 0, i32 5
  %49 = load i32, i32* %rowstride, align 4
  %50 = load i8*, i8** %data, align 8
  %idx.ext = sext i32 %49 to i64
  %add.ptr = getelementptr inbounds i8, i8* %50, i64 %idx.ext
  store i8* %add.ptr, i8** %data, align 8
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.end
  %51 = load i32, i32* %row, align 4
  %inc24 = add nsw i32 %51, 1
  store i32 %inc24, i32* %row, align 4
  %52 = load i32, i32* %pos_y, align 4
  %inc25 = add nsw i32 %52, 1
  store i32 %inc25, i32* %pos_y, align 4
  br label %for.cond.3

for.end.26:                                       ; preds = %for.cond.3
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.end.26
  %53 = load i8*, i8** %pr, align 8
  %54 = bitcast i8* %53 to %struct._PixelRegionIterator*
  %call28 = call %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator* %54)
  %55 = bitcast %struct._PixelRegionIterator* %call28 to i8*
  store i8* %55, i8** %pr, align 8
  br label %for.cond

for.end.29:                                       ; preds = %for.cond
  %56 = load %struct._GSList*, %struct._GSList** %list, align 8
  store %struct._GSList* %56, %struct._GSList** %iter, align 8
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.43, %for.end.29
  %57 = load %struct._GSList*, %struct._GSList** %iter, align 8
  %tobool31 = icmp ne %struct._GSList* %57, null
  br i1 %tobool31, label %for.body.32, label %for.end.44

for.body.32:                                      ; preds = %for.cond.30
  %58 = load %struct._GSList*, %struct._GSList** %iter, align 8
  %data34 = getelementptr inbounds %struct._GSList, %struct._GSList* %58, i32 0, i32 0
  %59 = load i8*, i8** %data34, align 8
  %60 = bitcast i8* %59 to %struct.blob*
  store %struct.blob* %60, %struct.blob** %b33, align 8
  %61 = load %struct._TileManager*, %struct._TileManager** %mask.addr, align 8
  %62 = load i32, i32* %x.addr, align 4
  %63 = load i32, i32* %y.addr, align 4
  %64 = load i32, i32* %x.addr, align 4
  %65 = load i32, i32* %width.addr, align 4
  %add35 = add nsw i32 %64, %65
  %66 = load i32, i32* %y.addr, align 4
  %67 = load i32, i32* %height.addr, align 4
  %add36 = add nsw i32 %66, %67
  %68 = load %struct.blob*, %struct.blob** %b33, align 8
  %69 = load %struct.blob*, %struct.blob** %b33, align 8
  %mustkeep37 = getelementptr inbounds %struct.blob, %struct.blob* %69, i32 0, i32 3
  %70 = load i32, i32* %mustkeep37, align 4
  %tobool38 = icmp ne i32 %70, 0
  br i1 %tobool38, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.body.32
  %71 = load %struct.blob*, %struct.blob** %b33, align 8
  %size39 = getelementptr inbounds %struct.blob, %struct.blob* %71, i32 0, i32 2
  %72 = load i32, i32* %size39, align 4
  %73 = load i32, i32* %size_factor.addr, align 4
  %mul = mul nsw i32 %72, %73
  %74 = load i32, i32* %maxsize, align 4
  %cmp40 = icmp sge i32 %mul, %74
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.body.32
  %75 = phi i1 [ true, %for.body.32 ], [ %cmp40, %lor.rhs ]
  %cond = select i1 %75, i32 255, i32 0
  %conv42 = trunc i32 %cond to i8
  call void @depth_first_search(%struct._TileManager* %61, i32 %62, i32 %63, i32 %add35, i32 %add36, %struct.blob* %68, i8 zeroext %conv42)
  br label %do.body

do.body:                                          ; preds = %lor.end
  %76 = load %struct.blob*, %struct.blob** %b33, align 8
  %77 = bitcast %struct.blob* %76 to i8*
  call void @g_slice_free1(i64 16, i8* %77)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %for.inc.43

for.inc.43:                                       ; preds = %do.end
  %78 = load %struct._GSList*, %struct._GSList** %iter, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %78, i32 0, i32 1
  %79 = load %struct._GSList*, %struct._GSList** %next, align 8
  store %struct._GSList* %79, %struct._GSList** %iter, align 8
  br label %for.cond.30

for.end.44:                                       ; preds = %for.cond.30
  %80 = load %struct._GSList*, %struct._GSList** %list, align 8
  call void @g_slist_free(%struct._GSList* %80)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dilate_mask(%struct._TileManager* %mask, i32 %x, i32 %y, i32 %width, i32 %height) #0 {
entry:
  %mask.addr = alloca %struct._TileManager*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %region = alloca %struct._PixelRegion, align 8
  store %struct._TileManager* %mask, %struct._TileManager** %mask.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load %struct._TileManager*, %struct._TileManager** %mask.addr, align 8
  %1 = load i32, i32* %x.addr, align 4
  %2 = load i32, i32* %y.addr, align 4
  %3 = load i32, i32* %width.addr, align 4
  %4 = load i32, i32* %height.addr, align 4
  call void @pixel_region_init(%struct._PixelRegion* %region, %struct._TileManager* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 1)
  call void @dilate_region(%struct._PixelRegion* %region)
  ret void
}

; Function Attrs: nounwind uwtable
define void @siox_drb(%struct._SioxState* %state, %struct._TileManager* %mask, i32 %x, i32 %y, i32 %brush_radius, i32 %brush_mode, float %threshold) #0 {
entry:
  %state.addr = alloca %struct._SioxState*, align 8
  %mask.addr = alloca %struct._TileManager*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %brush_radius.addr = alloca i32, align 4
  %brush_mode.addr = alloca i32, align 4
  %threshold.addr = alloca float, align 4
  %srcPR = alloca %struct._PixelRegion, align 8
  %mapPR = alloca %struct._PixelRegion, align 8
  %pr = alloca i8*, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %src = alloca i8*, align 8
  %map = alloca i8*, align 8
  %s = alloca i8*, align 8
  %m = alloca i8*, align 8
  %key = alloca i32, align 4
  %cr = alloca %struct.classresult*, align 8
  %mindistbg = alloca float, align 4
  %mindistfg = alloca float, align 4
  %alpha = alloca float, align 4
  %d = alloca double, align 8
  %d62 = alloca double, align 8
  store %struct._SioxState* %state, %struct._SioxState** %state.addr, align 8
  store %struct._TileManager* %mask, %struct._TileManager** %mask.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %brush_radius, i32* %brush_radius.addr, align 4
  store i32 %brush_mode, i32* %brush_mode.addr, align 4
  store float %threshold, float* %threshold.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %cmp = icmp ne %struct._SioxState* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.siox_drb, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0))
  br label %for.end.95

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._TileManager*, %struct._TileManager** %mask.addr, align 8
  %cmp2 = icmp ne %struct._TileManager* %1, null
  br i1 %cmp2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %do.body.1
  %2 = load %struct._TileManager*, %struct._TileManager** %mask.addr, align 8
  %call = call i32 @tile_manager_bpp(%struct._TileManager* %2)
  %cmp3 = icmp eq i32 %call, 1
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  br label %if.end.6

if.else.5:                                        ; preds = %land.lhs.true, %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.siox_drb, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i32 0, i32 0))
  br label %for.end.95

if.end.6:                                         ; preds = %if.then.4
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  %3 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %pixels = getelementptr inbounds %struct._SioxState, %struct._SioxState* %3, i32 0, i32 0
  %4 = load %struct._TileManager*, %struct._TileManager** %pixels, align 8
  %5 = load i32, i32* %x.addr, align 4
  %6 = load i32, i32* %brush_radius.addr, align 4
  %sub = sub nsw i32 %5, %6
  %7 = load i32, i32* %y.addr, align 4
  %8 = load i32, i32* %brush_radius.addr, align 4
  %sub8 = sub nsw i32 %7, %8
  %9 = load i32, i32* %brush_radius.addr, align 4
  %mul = mul nsw i32 %9, 2
  %10 = load i32, i32* %brush_radius.addr, align 4
  %mul9 = mul nsw i32 %10, 2
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %4, i32 %sub, i32 %sub8, i32 %mul, i32 %mul9, i32 0)
  %11 = load %struct._TileManager*, %struct._TileManager** %mask.addr, align 8
  %12 = load i32, i32* %x.addr, align 4
  %13 = load i32, i32* %brush_radius.addr, align 4
  %sub10 = sub nsw i32 %12, %13
  %14 = load i32, i32* %y.addr, align 4
  %15 = load i32, i32* %brush_radius.addr, align 4
  %sub11 = sub nsw i32 %14, %15
  %16 = load i32, i32* %brush_radius.addr, align 4
  %mul12 = mul nsw i32 %16, 2
  %17 = load i32, i32* %brush_radius.addr, align 4
  %mul13 = mul nsw i32 %17, 2
  call void @pixel_region_init(%struct._PixelRegion* %mapPR, %struct._TileManager* %11, i32 %sub10, i32 %sub11, i32 %mul12, i32 %mul13, i32 1)
  %call14 = call %struct._PixelRegionIterator* (i32, ...) @pixel_regions_register(i32 2, %struct._PixelRegion* %srcPR, %struct._PixelRegion* %mapPR)
  %18 = bitcast %struct._PixelRegionIterator* %call14 to i8*
  store i8* %18, i8** %pr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.93, %do.end.7
  %19 = load i8*, i8** %pr, align 8
  %cmp15 = icmp ne i8* %19, null
  br i1 %cmp15, label %for.body, label %for.end.95

for.body:                                         ; preds = %for.cond
  %data = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 0
  %20 = load i8*, i8** %data, align 8
  store i8* %20, i8** %src, align 8
  %data16 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %mapPR, i32 0, i32 0
  %21 = load i8*, i8** %data16, align 8
  store i8* %21, i8** %map, align 8
  store i32 0, i32* %row, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.90, %for.body
  %22 = load i32, i32* %row, align 4
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 9
  %23 = load i32, i32* %h, align 4
  %cmp18 = icmp slt i32 %22, %23
  br i1 %cmp18, label %for.body.19, label %for.end.92

for.body.19:                                      ; preds = %for.cond.17
  %24 = load i8*, i8** %src, align 8
  store i8* %24, i8** %s, align 8
  %25 = load i8*, i8** %map, align 8
  store i8* %25, i8** %m, align 8
  store i32 0, i32* %col, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc, %for.body.19
  %26 = load i32, i32* %col, align 4
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 8
  %27 = load i32, i32* %w, align 4
  %cmp21 = icmp slt i32 %26, %27
  br i1 %cmp21, label %for.body.22, label %for.end

for.body.22:                                      ; preds = %for.cond.20
  %28 = load i8*, i8** %s, align 8
  %29 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %bpp = getelementptr inbounds %struct._SioxState, %struct._SioxState* %29, i32 0, i32 2
  %30 = load i32, i32* %bpp, align 4
  %31 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %colormap = getelementptr inbounds %struct._SioxState, %struct._SioxState* %31, i32 0, i32 1
  %32 = load i8*, i8** %colormap, align 8
  %call23 = call i32 @create_key(i8* %28, i32 %30, i8* %32)
  store i32 %call23, i32* %key, align 4
  %33 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %cache = getelementptr inbounds %struct._SioxState, %struct._SioxState* %33, i32 0, i32 9
  %34 = load %struct._GHashTable*, %struct._GHashTable** %cache, align 8
  %35 = load i32, i32* %key, align 4
  %conv = sext i32 %35 to i64
  %36 = inttoptr i64 %conv to i8*
  %call24 = call i8* @g_hash_table_lookup(%struct._GHashTable* %34, i8* %36)
  %37 = bitcast i8* %call24 to %struct.classresult*
  store %struct.classresult* %37, %struct.classresult** %cr, align 8
  %38 = load %struct.classresult*, %struct.classresult** %cr, align 8
  %tobool = icmp ne %struct.classresult* %38, null
  br i1 %tobool, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %for.body.22
  br label %for.inc

if.end.26:                                        ; preds = %for.body.22
  %39 = load %struct.classresult*, %struct.classresult** %cr, align 8
  %bgdist = getelementptr inbounds %struct.classresult, %struct.classresult* %39, i32 0, i32 0
  %40 = load float, float* %bgdist, align 4
  %conv27 = fpext float %40 to double
  %call28 = call double @sqrt(double %conv27) #5
  %conv29 = fptrunc double %call28 to float
  store float %conv29, float* %mindistbg, align 4
  %41 = load %struct.classresult*, %struct.classresult** %cr, align 8
  %fgdist = getelementptr inbounds %struct.classresult, %struct.classresult* %41, i32 0, i32 1
  %42 = load float, float* %fgdist, align 4
  %conv30 = fpext float %42 to double
  %call31 = call double @sqrt(double %conv30) #5
  %conv32 = fptrunc double %call31 to float
  store float %conv32, float* %mindistfg, align 4
  %43 = load i32, i32* %brush_mode.addr, align 4
  %cmp33 = icmp eq i32 %43, 0
  br i1 %cmp33, label %if.then.35, label %if.else.51

if.then.35:                                       ; preds = %if.end.26
  %44 = load i8*, i8** %m, align 8
  %45 = load i8, i8* %44, align 1
  %conv36 = zext i8 %45 to i32
  %cmp37 = icmp sgt i32 %conv36, 254
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.then.35
  br label %for.inc

if.end.40:                                        ; preds = %if.then.35
  %46 = load float, float* %mindistfg, align 4
  %conv41 = fpext float %46 to double
  %cmp42 = fcmp oeq double %conv41, 0.000000e+00
  br i1 %cmp42, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %if.end.40
  store float 1.000000e+00, float* %alpha, align 4
  br label %if.end.50

if.else.45:                                       ; preds = %if.end.40
  %47 = load float, float* %mindistbg, align 4
  %48 = load float, float* %mindistfg, align 4
  %div = fdiv float %47, %48
  %conv46 = fpext float %div to double
  store double %conv46, double* %d, align 8
  %49 = load double, double* %d, align 8
  %cmp47 = fcmp olt double %49, 1.000000e+00
  br i1 %cmp47, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.45
  %50 = load double, double* %d, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.else.45
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %50, %cond.true ], [ 1.000000e+00, %cond.false ]
  %conv49 = fptrunc double %cond to float
  store float %conv49, float* %alpha, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %cond.end, %if.then.44
  br label %if.end.74

if.else.51:                                       ; preds = %if.end.26
  %51 = load i8*, i8** %m, align 8
  %52 = load i8, i8* %51, align 1
  %conv52 = zext i8 %52 to i32
  %cmp53 = icmp slt i32 %conv52, 254
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.else.51
  br label %for.inc

if.end.56:                                        ; preds = %if.else.51
  %53 = load float, float* %mindistbg, align 4
  %conv57 = fpext float %53 to double
  %cmp58 = fcmp oeq double %conv57, 0.000000e+00
  br i1 %cmp58, label %if.then.60, label %if.else.61

if.then.60:                                       ; preds = %if.end.56
  store float 0.000000e+00, float* %alpha, align 4
  br label %if.end.73

if.else.61:                                       ; preds = %if.end.56
  %54 = load float, float* %mindistfg, align 4
  %55 = load float, float* %mindistbg, align 4
  %div63 = fdiv float %54, %55
  %conv64 = fpext float %div63 to double
  store double %conv64, double* %d62, align 8
  %56 = load double, double* %d62, align 8
  %cmp65 = fcmp olt double %56, 1.000000e+00
  br i1 %cmp65, label %cond.true.67, label %cond.false.68

cond.true.67:                                     ; preds = %if.else.61
  %57 = load double, double* %d62, align 8
  br label %cond.end.69

cond.false.68:                                    ; preds = %if.else.61
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.false.68, %cond.true.67
  %cond70 = phi double [ %57, %cond.true.67 ], [ 1.000000e+00, %cond.false.68 ]
  %sub71 = fsub double 1.000000e+00, %cond70
  %conv72 = fptrunc double %sub71 to float
  store float %conv72, float* %alpha, align 4
  br label %if.end.73

if.end.73:                                        ; preds = %cond.end.69, %if.then.60
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.end.50
  %58 = load float, float* %alpha, align 4
  %59 = load float, float* %threshold.addr, align 4
  %cmp75 = fcmp olt float %58, %59
  br i1 %cmp75, label %if.then.77, label %if.else.78

if.then.77:                                       ; preds = %if.end.74
  %60 = load i8*, i8** %m, align 8
  store i8 0, i8* %60, align 1
  br label %if.end.83

if.else.78:                                       ; preds = %if.end.74
  %61 = load float, float* %alpha, align 4
  %conv79 = fpext float %61 to double
  %mul80 = fmul double 2.559990e+02, %conv79
  %conv81 = fptosi double %mul80 to i32
  %conv82 = trunc i32 %conv81 to i8
  %62 = load i8*, i8** %m, align 8
  store i8 %conv82, i8* %62, align 1
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.78, %if.then.77
  br label %for.inc

for.inc:                                          ; preds = %if.end.83, %if.then.55, %if.then.39, %if.then.25
  %63 = load i32, i32* %col, align 4
  %inc = add nsw i32 %63, 1
  store i32 %inc, i32* %col, align 4
  %64 = load i8*, i8** %m, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %incdec.ptr, i8** %m, align 8
  %65 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %bpp84 = getelementptr inbounds %struct._SioxState, %struct._SioxState* %65, i32 0, i32 2
  %66 = load i32, i32* %bpp84, align 4
  %67 = load i8*, i8** %s, align 8
  %idx.ext = sext i32 %66 to i64
  %add.ptr = getelementptr inbounds i8, i8* %67, i64 %idx.ext
  store i8* %add.ptr, i8** %s, align 8
  br label %for.cond.20

for.end:                                          ; preds = %for.cond.20
  %rowstride = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 5
  %68 = load i32, i32* %rowstride, align 4
  %69 = load i8*, i8** %src, align 8
  %idx.ext85 = sext i32 %68 to i64
  %add.ptr86 = getelementptr inbounds i8, i8* %69, i64 %idx.ext85
  store i8* %add.ptr86, i8** %src, align 8
  %rowstride87 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %mapPR, i32 0, i32 5
  %70 = load i32, i32* %rowstride87, align 4
  %71 = load i8*, i8** %map, align 8
  %idx.ext88 = sext i32 %70 to i64
  %add.ptr89 = getelementptr inbounds i8, i8* %71, i64 %idx.ext88
  store i8* %add.ptr89, i8** %map, align 8
  br label %for.inc.90

for.inc.90:                                       ; preds = %for.end
  %72 = load i32, i32* %row, align 4
  %inc91 = add nsw i32 %72, 1
  store i32 %inc91, i32* %row, align 4
  br label %for.cond.17

for.end.92:                                       ; preds = %for.cond.17
  br label %for.inc.93

for.inc.93:                                       ; preds = %for.end.92
  %73 = load i8*, i8** %pr, align 8
  %74 = bitcast i8* %73 to %struct._PixelRegionIterator*
  %call94 = call %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator* %74)
  %75 = bitcast %struct._PixelRegionIterator* %call94 to i8*
  store i8* %75, i8** %pr, align 8
  br label %for.cond

for.end.95:                                       ; preds = %if.else, %if.else.5, %for.cond
  ret void
}

; Function Attrs: nounwind
declare double @sqrt(double) #4

; Function Attrs: nounwind uwtable
define void @siox_done(%struct._SioxState* %state) #0 {
entry:
  %state.addr = alloca %struct._SioxState*, align 8
  store %struct._SioxState* %state, %struct._SioxState** %state.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %cmp = icmp ne %struct._SioxState* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.siox_done, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0))
  br label %do.end.2

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %fgsig = getelementptr inbounds %struct._SioxState, %struct._SioxState* %1, i32 0, i32 11
  %2 = load %struct.lab*, %struct.lab** %fgsig, align 8
  %3 = bitcast %struct.lab* %2 to i8*
  call void @g_free(i8* %3)
  %4 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %bgsig = getelementptr inbounds %struct._SioxState, %struct._SioxState* %4, i32 0, i32 10
  %5 = load %struct.lab*, %struct.lab** %bgsig, align 8
  %6 = bitcast %struct.lab* %5 to i8*
  call void @g_free(i8* %6)
  %7 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %cache = getelementptr inbounds %struct._SioxState, %struct._SioxState* %7, i32 0, i32 9
  %8 = load %struct._GHashTable*, %struct._GHashTable** %cache, align 8
  call void @g_hash_table_destroy(%struct._GHashTable* %8)
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %9 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %10 = bitcast %struct._SioxState* %9 to i8*
  call void @g_slice_free1(i64 88, i8* %10)
  br label %do.end.2

do.end.2:                                         ; preds = %if.else, %do.body.1
  ret void
}

declare void @g_hash_table_destroy(%struct._GHashTable*) #1

declare void @g_slice_free1(i64, i8*) #1

declare void @cpercep_rgb_to_space(double, double, double, double*, double*, double*) #1

declare void @g_log(i8*, i32, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @stageone(%struct.lab* %points, i32 %left, i32 %right, i32 %depth, i32* %clusters, float* %limits, i32 %dims) #0 {
entry:
  %points.addr = alloca %struct.lab*, align 8
  %left.addr = alloca i32, align 4
  %right.addr = alloca i32, align 4
  %depth.addr = alloca i32, align 4
  %clusters.addr = alloca i32*, align 8
  %limits.addr = alloca float*, align 8
  %dims.addr = alloca i32, align 4
  %curdim = alloca i32, align 4
  %min = alloca float, align 4
  %max = alloca float, align 4
  %curval = alloca float, align 4
  %l = alloca float, align 4
  %a = alloca float, align 4
  %b = alloca float, align 4
  %i = alloca i32, align 4
  %pivot = alloca float, align 4
  %l18 = alloca i32, align 4
  %r = alloca i32, align 4
  %tmp = alloca %struct.lab, align 4
  store %struct.lab* %points, %struct.lab** %points.addr, align 8
  store i32 %left, i32* %left.addr, align 4
  store i32 %right, i32* %right.addr, align 4
  store i32 %depth, i32* %depth.addr, align 4
  store i32* %clusters, i32** %clusters.addr, align 8
  store float* %limits, float** %limits.addr, align 8
  store i32 %dims, i32* %dims.addr, align 4
  %0 = load i32, i32* %depth.addr, align 4
  %1 = load i32, i32* %dims.addr, align 4
  %rem = srem i32 %0, %1
  store i32 %rem, i32* %curdim, align 4
  store float 0.000000e+00, float* %l, align 4
  store float 0.000000e+00, float* %a, align 4
  store float 0.000000e+00, float* %b, align 4
  %2 = load i32, i32* %curdim, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.lab*, %struct.lab** %points.addr, align 8
  %4 = load i32, i32* %left.addr, align 4
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds %struct.lab, %struct.lab* %3, i64 %idx.ext
  %5 = bitcast %struct.lab* %add.ptr to float*
  %arrayidx = getelementptr inbounds float, float* %5, i64 %idxprom
  %6 = load float, float* %arrayidx, align 4
  store float %6, float* %min, align 4
  %7 = load float, float* %min, align 4
  store float %7, float* %max, align 4
  %8 = load i32, i32* %left.addr, align 4
  %add = add nsw i32 %8, 1
  store i32 %add, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %right.addr, align 4
  %cmp = icmp slt i32 %9, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %curdim, align 4
  %idxprom1 = sext i32 %11 to i64
  %12 = load %struct.lab*, %struct.lab** %points.addr, align 8
  %13 = load i32, i32* %i, align 4
  %idx.ext2 = sext i32 %13 to i64
  %add.ptr3 = getelementptr inbounds %struct.lab, %struct.lab* %12, i64 %idx.ext2
  %14 = bitcast %struct.lab* %add.ptr3 to float*
  %arrayidx4 = getelementptr inbounds float, float* %14, i64 %idxprom1
  %15 = load float, float* %arrayidx4, align 4
  store float %15, float* %curval, align 4
  %16 = load float, float* %min, align 4
  %17 = load float, float* %curval, align 4
  %cmp5 = fcmp ogt float %16, %17
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %18 = load float, float* %curval, align 4
  store float %18, float* %min, align 4
  br label %if.end.8

if.else:                                          ; preds = %for.body
  %19 = load float, float* %max, align 4
  %20 = load float, float* %curval, align 4
  %cmp6 = fcmp olt float %19, %20
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.else
  %21 = load float, float* %curval, align 4
  store float %21, float* %max, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end.8
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load float, float* %max, align 4
  %24 = load float, float* %min, align 4
  %sub = fsub float %23, %24
  %25 = load i32, i32* %curdim, align 4
  %idxprom9 = sext i32 %25 to i64
  %26 = load float*, float** %limits.addr, align 8
  %arrayidx10 = getelementptr inbounds float, float* %26, i64 %idxprom9
  %27 = load float, float* %arrayidx10, align 4
  %cmp11 = fcmp ogt float %sub, %27
  br i1 %cmp11, label %if.then.12, label %if.end.56

if.then.12:                                       ; preds = %for.end
  %28 = load float, float* %min, align 4
  %29 = load float, float* %max, align 4
  %add13 = fadd float %28, %29
  %conv = fpext float %add13 to double
  %div = fdiv double %conv, 2.000000e+00
  %conv14 = fptrunc double %div to float
  store float %conv14, float* %pivot, align 4
  %30 = load float, float* %pivot, align 4
  %31 = load float, float* %max, align 4
  %cmp15 = fcmp une float %30, %31
  br i1 %cmp15, label %if.then.17, label %if.end.55

if.then.17:                                       ; preds = %if.then.12
  %32 = load i32, i32* %left.addr, align 4
  store i32 %32, i32* %l18, align 4
  %33 = load i32, i32* %right.addr, align 4
  %sub19 = sub nsw i32 %33, 1
  store i32 %sub19, i32* %r, align 4
  br label %while.body

while.body:                                       ; preds = %if.then.17, %if.end.41
  br label %while.cond.20

while.cond.20:                                    ; preds = %while.body.27, %while.body
  %34 = load i32, i32* %curdim, align 4
  %idxprom21 = sext i32 %34 to i64
  %35 = load %struct.lab*, %struct.lab** %points.addr, align 8
  %36 = load i32, i32* %l18, align 4
  %idx.ext22 = sext i32 %36 to i64
  %add.ptr23 = getelementptr inbounds %struct.lab, %struct.lab* %35, i64 %idx.ext22
  %37 = bitcast %struct.lab* %add.ptr23 to float*
  %arrayidx24 = getelementptr inbounds float, float* %37, i64 %idxprom21
  %38 = load float, float* %arrayidx24, align 4
  %39 = load float, float* %pivot, align 4
  %cmp25 = fcmp ole float %38, %39
  br i1 %cmp25, label %while.body.27, label %while.end

while.body.27:                                    ; preds = %while.cond.20
  %40 = load i32, i32* %l18, align 4
  %inc28 = add nsw i32 %40, 1
  store i32 %inc28, i32* %l18, align 4
  br label %while.cond.20

while.end:                                        ; preds = %while.cond.20
  br label %while.cond.29

while.cond.29:                                    ; preds = %while.body.36, %while.end
  %41 = load i32, i32* %curdim, align 4
  %idxprom30 = sext i32 %41 to i64
  %42 = load %struct.lab*, %struct.lab** %points.addr, align 8
  %43 = load i32, i32* %r, align 4
  %idx.ext31 = sext i32 %43 to i64
  %add.ptr32 = getelementptr inbounds %struct.lab, %struct.lab* %42, i64 %idx.ext31
  %44 = bitcast %struct.lab* %add.ptr32 to float*
  %arrayidx33 = getelementptr inbounds float, float* %44, i64 %idxprom30
  %45 = load float, float* %arrayidx33, align 4
  %46 = load float, float* %pivot, align 4
  %cmp34 = fcmp ogt float %45, %46
  br i1 %cmp34, label %while.body.36, label %while.end.37

while.body.36:                                    ; preds = %while.cond.29
  %47 = load i32, i32* %r, align 4
  %dec = add nsw i32 %47, -1
  store i32 %dec, i32* %r, align 4
  br label %while.cond.29

while.end.37:                                     ; preds = %while.cond.29
  %48 = load i32, i32* %l18, align 4
  %49 = load i32, i32* %r, align 4
  %cmp38 = icmp sgt i32 %48, %49
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %while.end.37
  br label %while.end.52

if.end.41:                                        ; preds = %while.end.37
  %50 = load i32, i32* %l18, align 4
  %idxprom42 = sext i32 %50 to i64
  %51 = load %struct.lab*, %struct.lab** %points.addr, align 8
  %arrayidx43 = getelementptr inbounds %struct.lab, %struct.lab* %51, i64 %idxprom42
  %52 = bitcast %struct.lab* %tmp to i8*
  %53 = bitcast %struct.lab* %arrayidx43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %52, i8* %53, i64 16, i32 4, i1 false)
  %54 = load i32, i32* %l18, align 4
  %idxprom44 = sext i32 %54 to i64
  %55 = load %struct.lab*, %struct.lab** %points.addr, align 8
  %arrayidx45 = getelementptr inbounds %struct.lab, %struct.lab* %55, i64 %idxprom44
  %56 = load i32, i32* %r, align 4
  %idxprom46 = sext i32 %56 to i64
  %57 = load %struct.lab*, %struct.lab** %points.addr, align 8
  %arrayidx47 = getelementptr inbounds %struct.lab, %struct.lab* %57, i64 %idxprom46
  %58 = bitcast %struct.lab* %arrayidx45 to i8*
  %59 = bitcast %struct.lab* %arrayidx47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* %59, i64 16, i32 4, i1 false)
  %60 = load i32, i32* %r, align 4
  %idxprom48 = sext i32 %60 to i64
  %61 = load %struct.lab*, %struct.lab** %points.addr, align 8
  %arrayidx49 = getelementptr inbounds %struct.lab, %struct.lab* %61, i64 %idxprom48
  %62 = bitcast %struct.lab* %arrayidx49 to i8*
  %63 = bitcast %struct.lab* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %62, i8* %63, i64 16, i32 4, i1 false)
  %64 = load i32, i32* %l18, align 4
  %inc50 = add nsw i32 %64, 1
  store i32 %inc50, i32* %l18, align 4
  %65 = load i32, i32* %r, align 4
  %dec51 = add nsw i32 %65, -1
  store i32 %dec51, i32* %r, align 4
  br label %while.body

while.end.52:                                     ; preds = %if.then.40
  %66 = load %struct.lab*, %struct.lab** %points.addr, align 8
  %67 = load i32, i32* %left.addr, align 4
  %68 = load i32, i32* %l18, align 4
  %69 = load i32, i32* %depth.addr, align 4
  %add53 = add nsw i32 %69, 1
  %70 = load i32*, i32** %clusters.addr, align 8
  %71 = load float*, float** %limits.addr, align 8
  %72 = load i32, i32* %dims.addr, align 4
  call void @stageone(%struct.lab* %66, i32 %67, i32 %68, i32 %add53, i32* %70, float* %71, i32 %72)
  %73 = load %struct.lab*, %struct.lab** %points.addr, align 8
  %74 = load i32, i32* %l18, align 4
  %75 = load i32, i32* %right.addr, align 4
  %76 = load i32, i32* %depth.addr, align 4
  %add54 = add nsw i32 %76, 1
  %77 = load i32*, i32** %clusters.addr, align 8
  %78 = load float*, float** %limits.addr, align 8
  %79 = load i32, i32* %dims.addr, align 4
  call void @stageone(%struct.lab* %73, i32 %74, i32 %75, i32 %add54, i32* %77, float* %78, i32 %79)
  br label %return

if.end.55:                                        ; preds = %if.then.12
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %for.end
  %80 = load i32, i32* %right.addr, align 4
  %81 = load i32, i32* %left.addr, align 4
  %sub57 = sub nsw i32 %80, %81
  %82 = load i32*, i32** %clusters.addr, align 8
  %83 = load i32, i32* %82, align 4
  %idxprom58 = sext i32 %83 to i64
  %84 = load %struct.lab*, %struct.lab** %points.addr, align 8
  %arrayidx59 = getelementptr inbounds %struct.lab, %struct.lab* %84, i64 %idxprom58
  %cardinality = getelementptr inbounds %struct.lab, %struct.lab* %arrayidx59, i32 0, i32 3
  store i32 %sub57, i32* %cardinality, align 4
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc.76, %if.end.56
  %85 = load i32, i32* %left.addr, align 4
  %86 = load i32, i32* %right.addr, align 4
  %cmp61 = icmp slt i32 %85, %86
  br i1 %cmp61, label %for.body.63, label %for.end.78

for.body.63:                                      ; preds = %for.cond.60
  %87 = load i32, i32* %left.addr, align 4
  %idxprom64 = sext i32 %87 to i64
  %88 = load %struct.lab*, %struct.lab** %points.addr, align 8
  %arrayidx65 = getelementptr inbounds %struct.lab, %struct.lab* %88, i64 %idxprom64
  %l66 = getelementptr inbounds %struct.lab, %struct.lab* %arrayidx65, i32 0, i32 0
  %89 = load float, float* %l66, align 4
  %90 = load float, float* %l, align 4
  %add67 = fadd float %90, %89
  store float %add67, float* %l, align 4
  %91 = load i32, i32* %left.addr, align 4
  %idxprom68 = sext i32 %91 to i64
  %92 = load %struct.lab*, %struct.lab** %points.addr, align 8
  %arrayidx69 = getelementptr inbounds %struct.lab, %struct.lab* %92, i64 %idxprom68
  %a70 = getelementptr inbounds %struct.lab, %struct.lab* %arrayidx69, i32 0, i32 1
  %93 = load float, float* %a70, align 4
  %94 = load float, float* %a, align 4
  %add71 = fadd float %94, %93
  store float %add71, float* %a, align 4
  %95 = load i32, i32* %left.addr, align 4
  %idxprom72 = sext i32 %95 to i64
  %96 = load %struct.lab*, %struct.lab** %points.addr, align 8
  %arrayidx73 = getelementptr inbounds %struct.lab, %struct.lab* %96, i64 %idxprom72
  %b74 = getelementptr inbounds %struct.lab, %struct.lab* %arrayidx73, i32 0, i32 2
  %97 = load float, float* %b74, align 4
  %98 = load float, float* %b, align 4
  %add75 = fadd float %98, %97
  store float %add75, float* %b, align 4
  br label %for.inc.76

for.inc.76:                                       ; preds = %for.body.63
  %99 = load i32, i32* %left.addr, align 4
  %inc77 = add nsw i32 %99, 1
  store i32 %inc77, i32* %left.addr, align 4
  br label %for.cond.60

for.end.78:                                       ; preds = %for.cond.60
  %100 = load float, float* %l, align 4
  %101 = load i32*, i32** %clusters.addr, align 8
  %102 = load i32, i32* %101, align 4
  %idxprom79 = sext i32 %102 to i64
  %103 = load %struct.lab*, %struct.lab** %points.addr, align 8
  %arrayidx80 = getelementptr inbounds %struct.lab, %struct.lab* %103, i64 %idxprom79
  %cardinality81 = getelementptr inbounds %struct.lab, %struct.lab* %arrayidx80, i32 0, i32 3
  %104 = load i32, i32* %cardinality81, align 4
  %conv82 = sitofp i32 %104 to float
  %div83 = fdiv float %100, %conv82
  %105 = load i32*, i32** %clusters.addr, align 8
  %106 = load i32, i32* %105, align 4
  %idxprom84 = sext i32 %106 to i64
  %107 = load %struct.lab*, %struct.lab** %points.addr, align 8
  %arrayidx85 = getelementptr inbounds %struct.lab, %struct.lab* %107, i64 %idxprom84
  %l86 = getelementptr inbounds %struct.lab, %struct.lab* %arrayidx85, i32 0, i32 0
  store float %div83, float* %l86, align 4
  %108 = load float, float* %a, align 4
  %109 = load i32*, i32** %clusters.addr, align 8
  %110 = load i32, i32* %109, align 4
  %idxprom87 = sext i32 %110 to i64
  %111 = load %struct.lab*, %struct.lab** %points.addr, align 8
  %arrayidx88 = getelementptr inbounds %struct.lab, %struct.lab* %111, i64 %idxprom87
  %cardinality89 = getelementptr inbounds %struct.lab, %struct.lab* %arrayidx88, i32 0, i32 3
  %112 = load i32, i32* %cardinality89, align 4
  %conv90 = sitofp i32 %112 to float
  %div91 = fdiv float %108, %conv90
  %113 = load i32*, i32** %clusters.addr, align 8
  %114 = load i32, i32* %113, align 4
  %idxprom92 = sext i32 %114 to i64
  %115 = load %struct.lab*, %struct.lab** %points.addr, align 8
  %arrayidx93 = getelementptr inbounds %struct.lab, %struct.lab* %115, i64 %idxprom92
  %a94 = getelementptr inbounds %struct.lab, %struct.lab* %arrayidx93, i32 0, i32 1
  store float %div91, float* %a94, align 4
  %116 = load float, float* %b, align 4
  %117 = load i32*, i32** %clusters.addr, align 8
  %118 = load i32, i32* %117, align 4
  %idxprom95 = sext i32 %118 to i64
  %119 = load %struct.lab*, %struct.lab** %points.addr, align 8
  %arrayidx96 = getelementptr inbounds %struct.lab, %struct.lab* %119, i64 %idxprom95
  %cardinality97 = getelementptr inbounds %struct.lab, %struct.lab* %arrayidx96, i32 0, i32 3
  %120 = load i32, i32* %cardinality97, align 4
  %conv98 = sitofp i32 %120 to float
  %div99 = fdiv float %116, %conv98
  %121 = load i32*, i32** %clusters.addr, align 8
  %122 = load i32, i32* %121, align 4
  %idxprom100 = sext i32 %122 to i64
  %123 = load %struct.lab*, %struct.lab** %points.addr, align 8
  %arrayidx101 = getelementptr inbounds %struct.lab, %struct.lab* %123, i64 %idxprom100
  %b102 = getelementptr inbounds %struct.lab, %struct.lab* %arrayidx101, i32 0, i32 2
  store float %div99, float* %b102, align 4
  %124 = load i32*, i32** %clusters.addr, align 8
  %125 = load i32, i32* %124, align 4
  %inc103 = add nsw i32 %125, 1
  store i32 %inc103, i32* %124, align 4
  br label %return

return:                                           ; preds = %for.end.78, %while.end.52
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @stagetwo(%struct.lab* %points, i32 %left, i32 %right, i32 %depth, i32* %clusters, float* %limits, float %threshold, i32 %dims) #0 {
entry:
  %points.addr = alloca %struct.lab*, align 8
  %left.addr = alloca i32, align 4
  %right.addr = alloca i32, align 4
  %depth.addr = alloca i32, align 4
  %clusters.addr = alloca i32*, align 8
  %limits.addr = alloca float*, align 8
  %threshold.addr = alloca float, align 4
  %dims.addr = alloca i32, align 4
  %curdim = alloca i32, align 4
  %min = alloca float, align 4
  %max = alloca float, align 4
  %curval = alloca float, align 4
  %i = alloca i32, align 4
  %sum = alloca i32, align 4
  %pivot = alloca float, align 4
  %l = alloca i32, align 4
  %r = alloca i32, align 4
  %tmp = alloca %struct.lab, align 4
  %c = alloca i32, align 4
  %l73 = alloca float, align 4
  %a = alloca float, align 4
  %b = alloca float, align 4
  store %struct.lab* %points, %struct.lab** %points.addr, align 8
  store i32 %left, i32* %left.addr, align 4
  store i32 %right, i32* %right.addr, align 4
  store i32 %depth, i32* %depth.addr, align 4
  store i32* %clusters, i32** %clusters.addr, align 8
  store float* %limits, float** %limits.addr, align 8
  store float %threshold, float* %threshold.addr, align 4
  store i32 %dims, i32* %dims.addr, align 4
  %0 = load i32, i32* %depth.addr, align 4
  %1 = load i32, i32* %dims.addr, align 4
  %rem = srem i32 %0, %1
  store i32 %rem, i32* %curdim, align 4
  store i32 0, i32* %sum, align 4
  %2 = load i32, i32* %curdim, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.lab*, %struct.lab** %points.addr, align 8
  %4 = load i32, i32* %left.addr, align 4
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds %struct.lab, %struct.lab* %3, i64 %idx.ext
  %5 = bitcast %struct.lab* %add.ptr to float*
  %arrayidx = getelementptr inbounds float, float* %5, i64 %idxprom
  %6 = load float, float* %arrayidx, align 4
  store float %6, float* %min, align 4
  %7 = load float, float* %min, align 4
  store float %7, float* %max, align 4
  %8 = load i32, i32* %left.addr, align 4
  %add = add nsw i32 %8, 1
  store i32 %add, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %right.addr, align 4
  %cmp = icmp slt i32 %9, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %curdim, align 4
  %idxprom1 = sext i32 %11 to i64
  %12 = load %struct.lab*, %struct.lab** %points.addr, align 8
  %13 = load i32, i32* %i, align 4
  %idx.ext2 = sext i32 %13 to i64
  %add.ptr3 = getelementptr inbounds %struct.lab, %struct.lab* %12, i64 %idx.ext2
  %14 = bitcast %struct.lab* %add.ptr3 to float*
  %arrayidx4 = getelementptr inbounds float, float* %14, i64 %idxprom1
  %15 = load float, float* %arrayidx4, align 4
  store float %15, float* %curval, align 4
  %16 = load float, float* %min, align 4
  %17 = load float, float* %curval, align 4
  %cmp5 = fcmp ogt float %16, %17
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %18 = load float, float* %curval, align 4
  store float %18, float* %min, align 4
  br label %if.end.8

if.else:                                          ; preds = %for.body
  %19 = load float, float* %max, align 4
  %20 = load float, float* %curval, align 4
  %cmp6 = fcmp olt float %19, %20
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.else
  %21 = load float, float* %curval, align 4
  store float %21, float* %max, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end.8
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load float, float* %max, align 4
  %24 = load float, float* %min, align 4
  %sub = fsub float %23, %24
  %25 = load i32, i32* %curdim, align 4
  %idxprom9 = sext i32 %25 to i64
  %26 = load float*, float** %limits.addr, align 8
  %arrayidx10 = getelementptr inbounds float, float* %26, i64 %idxprom9
  %27 = load float, float* %arrayidx10, align 4
  %cmp11 = fcmp ogt float %sub, %27
  br i1 %cmp11, label %if.then.12, label %if.end.55

if.then.12:                                       ; preds = %for.end
  %28 = load float, float* %min, align 4
  %29 = load float, float* %max, align 4
  %add13 = fadd float %28, %29
  %conv = fpext float %add13 to double
  %div = fdiv double %conv, 2.000000e+00
  %conv14 = fptrunc double %div to float
  store float %conv14, float* %pivot, align 4
  %30 = load float, float* %pivot, align 4
  %31 = load float, float* %max, align 4
  %cmp15 = fcmp une float %30, %31
  br i1 %cmp15, label %if.then.17, label %if.end.54

if.then.17:                                       ; preds = %if.then.12
  %32 = load i32, i32* %left.addr, align 4
  store i32 %32, i32* %l, align 4
  %33 = load i32, i32* %right.addr, align 4
  %sub18 = sub nsw i32 %33, 1
  store i32 %sub18, i32* %r, align 4
  br label %while.body

while.body:                                       ; preds = %if.then.17, %if.end.40
  br label %while.cond.19

while.cond.19:                                    ; preds = %while.body.26, %while.body
  %34 = load i32, i32* %curdim, align 4
  %idxprom20 = sext i32 %34 to i64
  %35 = load %struct.lab*, %struct.lab** %points.addr, align 8
  %36 = load i32, i32* %l, align 4
  %idx.ext21 = sext i32 %36 to i64
  %add.ptr22 = getelementptr inbounds %struct.lab, %struct.lab* %35, i64 %idx.ext21
  %37 = bitcast %struct.lab* %add.ptr22 to float*
  %arrayidx23 = getelementptr inbounds float, float* %37, i64 %idxprom20
  %38 = load float, float* %arrayidx23, align 4
  %39 = load float, float* %pivot, align 4
  %cmp24 = fcmp ole float %38, %39
  br i1 %cmp24, label %while.body.26, label %while.end

while.body.26:                                    ; preds = %while.cond.19
  %40 = load i32, i32* %l, align 4
  %inc27 = add nsw i32 %40, 1
  store i32 %inc27, i32* %l, align 4
  br label %while.cond.19

while.end:                                        ; preds = %while.cond.19
  br label %while.cond.28

while.cond.28:                                    ; preds = %while.body.35, %while.end
  %41 = load i32, i32* %curdim, align 4
  %idxprom29 = sext i32 %41 to i64
  %42 = load %struct.lab*, %struct.lab** %points.addr, align 8
  %43 = load i32, i32* %r, align 4
  %idx.ext30 = sext i32 %43 to i64
  %add.ptr31 = getelementptr inbounds %struct.lab, %struct.lab* %42, i64 %idx.ext30
  %44 = bitcast %struct.lab* %add.ptr31 to float*
  %arrayidx32 = getelementptr inbounds float, float* %44, i64 %idxprom29
  %45 = load float, float* %arrayidx32, align 4
  %46 = load float, float* %pivot, align 4
  %cmp33 = fcmp ogt float %45, %46
  br i1 %cmp33, label %while.body.35, label %while.end.36

while.body.35:                                    ; preds = %while.cond.28
  %47 = load i32, i32* %r, align 4
  %dec = add nsw i32 %47, -1
  store i32 %dec, i32* %r, align 4
  br label %while.cond.28

while.end.36:                                     ; preds = %while.cond.28
  %48 = load i32, i32* %l, align 4
  %49 = load i32, i32* %r, align 4
  %cmp37 = icmp sgt i32 %48, %49
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %while.end.36
  br label %while.end.51

if.end.40:                                        ; preds = %while.end.36
  %50 = load i32, i32* %l, align 4
  %idxprom41 = sext i32 %50 to i64
  %51 = load %struct.lab*, %struct.lab** %points.addr, align 8
  %arrayidx42 = getelementptr inbounds %struct.lab, %struct.lab* %51, i64 %idxprom41
  %52 = bitcast %struct.lab* %tmp to i8*
  %53 = bitcast %struct.lab* %arrayidx42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %52, i8* %53, i64 16, i32 4, i1 false)
  %54 = load i32, i32* %l, align 4
  %idxprom43 = sext i32 %54 to i64
  %55 = load %struct.lab*, %struct.lab** %points.addr, align 8
  %arrayidx44 = getelementptr inbounds %struct.lab, %struct.lab* %55, i64 %idxprom43
  %56 = load i32, i32* %r, align 4
  %idxprom45 = sext i32 %56 to i64
  %57 = load %struct.lab*, %struct.lab** %points.addr, align 8
  %arrayidx46 = getelementptr inbounds %struct.lab, %struct.lab* %57, i64 %idxprom45
  %58 = bitcast %struct.lab* %arrayidx44 to i8*
  %59 = bitcast %struct.lab* %arrayidx46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* %59, i64 16, i32 4, i1 false)
  %60 = load i32, i32* %r, align 4
  %idxprom47 = sext i32 %60 to i64
  %61 = load %struct.lab*, %struct.lab** %points.addr, align 8
  %arrayidx48 = getelementptr inbounds %struct.lab, %struct.lab* %61, i64 %idxprom47
  %62 = bitcast %struct.lab* %arrayidx48 to i8*
  %63 = bitcast %struct.lab* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %62, i8* %63, i64 16, i32 4, i1 false)
  %64 = load i32, i32* %l, align 4
  %inc49 = add nsw i32 %64, 1
  store i32 %inc49, i32* %l, align 4
  %65 = load i32, i32* %r, align 4
  %dec50 = add nsw i32 %65, -1
  store i32 %dec50, i32* %r, align 4
  br label %while.body

while.end.51:                                     ; preds = %if.then.39
  %66 = load %struct.lab*, %struct.lab** %points.addr, align 8
  %67 = load i32, i32* %left.addr, align 4
  %68 = load i32, i32* %l, align 4
  %69 = load i32, i32* %depth.addr, align 4
  %add52 = add nsw i32 %69, 1
  %70 = load i32*, i32** %clusters.addr, align 8
  %71 = load float*, float** %limits.addr, align 8
  %72 = load float, float* %threshold.addr, align 4
  %73 = load i32, i32* %dims.addr, align 4
  call void @stagetwo(%struct.lab* %66, i32 %67, i32 %68, i32 %add52, i32* %70, float* %71, float %72, i32 %73)
  %74 = load %struct.lab*, %struct.lab** %points.addr, align 8
  %75 = load i32, i32* %l, align 4
  %76 = load i32, i32* %right.addr, align 4
  %77 = load i32, i32* %depth.addr, align 4
  %add53 = add nsw i32 %77, 1
  %78 = load i32*, i32** %clusters.addr, align 8
  %79 = load float*, float** %limits.addr, align 8
  %80 = load float, float* %threshold.addr, align 4
  %81 = load i32, i32* %dims.addr, align 4
  call void @stagetwo(%struct.lab* %74, i32 %75, i32 %76, i32 %add53, i32* %78, float* %79, float %80, i32 %81)
  br label %if.end.111

if.end.54:                                        ; preds = %if.then.12
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %for.end
  %82 = load i32, i32* %left.addr, align 4
  store i32 %82, i32* %i, align 4
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc.63, %if.end.55
  %83 = load i32, i32* %i, align 4
  %84 = load i32, i32* %right.addr, align 4
  %cmp57 = icmp slt i32 %83, %84
  br i1 %cmp57, label %for.body.59, label %for.end.65

for.body.59:                                      ; preds = %for.cond.56
  %85 = load i32, i32* %i, align 4
  %idxprom60 = sext i32 %85 to i64
  %86 = load %struct.lab*, %struct.lab** %points.addr, align 8
  %arrayidx61 = getelementptr inbounds %struct.lab, %struct.lab* %86, i64 %idxprom60
  %cardinality = getelementptr inbounds %struct.lab, %struct.lab* %arrayidx61, i32 0, i32 3
  %87 = load i32, i32* %cardinality, align 4
  %88 = load i32, i32* %sum, align 4
  %add62 = add nsw i32 %88, %87
  store i32 %add62, i32* %sum, align 4
  br label %for.inc.63

for.inc.63:                                       ; preds = %for.body.59
  %89 = load i32, i32* %i, align 4
  %inc64 = add nsw i32 %89, 1
  store i32 %inc64, i32* %i, align 4
  br label %for.cond.56

for.end.65:                                       ; preds = %for.cond.56
  %90 = load i32, i32* %sum, align 4
  %conv66 = sitofp i32 %90 to float
  %91 = load float, float* %threshold.addr, align 4
  %cmp67 = fcmp oge float %conv66, %91
  br i1 %cmp67, label %if.then.69, label %if.end.111

if.then.69:                                       ; preds = %for.end.65
  %92 = load i32, i32* %right.addr, align 4
  %93 = load i32, i32* %left.addr, align 4
  %sub71 = sub nsw i32 %92, %93
  store i32 %sub71, i32* %c, align 4
  store float 0.000000e+00, float* %l73, align 4
  store float 0.000000e+00, float* %a, align 4
  store float 0.000000e+00, float* %b, align 4
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.92, %if.then.69
  %94 = load i32, i32* %left.addr, align 4
  %95 = load i32, i32* %right.addr, align 4
  %cmp77 = icmp slt i32 %94, %95
  br i1 %cmp77, label %for.body.79, label %for.end.94

for.body.79:                                      ; preds = %for.cond.76
  %96 = load i32, i32* %left.addr, align 4
  %idxprom80 = sext i32 %96 to i64
  %97 = load %struct.lab*, %struct.lab** %points.addr, align 8
  %arrayidx81 = getelementptr inbounds %struct.lab, %struct.lab* %97, i64 %idxprom80
  %l82 = getelementptr inbounds %struct.lab, %struct.lab* %arrayidx81, i32 0, i32 0
  %98 = load float, float* %l82, align 4
  %99 = load float, float* %l73, align 4
  %add83 = fadd float %99, %98
  store float %add83, float* %l73, align 4
  %100 = load i32, i32* %left.addr, align 4
  %idxprom84 = sext i32 %100 to i64
  %101 = load %struct.lab*, %struct.lab** %points.addr, align 8
  %arrayidx85 = getelementptr inbounds %struct.lab, %struct.lab* %101, i64 %idxprom84
  %a86 = getelementptr inbounds %struct.lab, %struct.lab* %arrayidx85, i32 0, i32 1
  %102 = load float, float* %a86, align 4
  %103 = load float, float* %a, align 4
  %add87 = fadd float %103, %102
  store float %add87, float* %a, align 4
  %104 = load i32, i32* %left.addr, align 4
  %idxprom88 = sext i32 %104 to i64
  %105 = load %struct.lab*, %struct.lab** %points.addr, align 8
  %arrayidx89 = getelementptr inbounds %struct.lab, %struct.lab* %105, i64 %idxprom88
  %b90 = getelementptr inbounds %struct.lab, %struct.lab* %arrayidx89, i32 0, i32 2
  %106 = load float, float* %b90, align 4
  %107 = load float, float* %b, align 4
  %add91 = fadd float %107, %106
  store float %add91, float* %b, align 4
  br label %for.inc.92

for.inc.92:                                       ; preds = %for.body.79
  %108 = load i32, i32* %left.addr, align 4
  %inc93 = add nsw i32 %108, 1
  store i32 %inc93, i32* %left.addr, align 4
  br label %for.cond.76

for.end.94:                                       ; preds = %for.cond.76
  %109 = load float, float* %l73, align 4
  %110 = load i32, i32* %c, align 4
  %conv95 = sitofp i32 %110 to float
  %div96 = fdiv float %109, %conv95
  %111 = load i32*, i32** %clusters.addr, align 8
  %112 = load i32, i32* %111, align 4
  %idxprom97 = sext i32 %112 to i64
  %113 = load %struct.lab*, %struct.lab** %points.addr, align 8
  %arrayidx98 = getelementptr inbounds %struct.lab, %struct.lab* %113, i64 %idxprom97
  %l99 = getelementptr inbounds %struct.lab, %struct.lab* %arrayidx98, i32 0, i32 0
  store float %div96, float* %l99, align 4
  %114 = load float, float* %a, align 4
  %115 = load i32, i32* %c, align 4
  %conv100 = sitofp i32 %115 to float
  %div101 = fdiv float %114, %conv100
  %116 = load i32*, i32** %clusters.addr, align 8
  %117 = load i32, i32* %116, align 4
  %idxprom102 = sext i32 %117 to i64
  %118 = load %struct.lab*, %struct.lab** %points.addr, align 8
  %arrayidx103 = getelementptr inbounds %struct.lab, %struct.lab* %118, i64 %idxprom102
  %a104 = getelementptr inbounds %struct.lab, %struct.lab* %arrayidx103, i32 0, i32 1
  store float %div101, float* %a104, align 4
  %119 = load float, float* %b, align 4
  %120 = load i32, i32* %c, align 4
  %conv105 = sitofp i32 %120 to float
  %div106 = fdiv float %119, %conv105
  %121 = load i32*, i32** %clusters.addr, align 8
  %122 = load i32, i32* %121, align 4
  %idxprom107 = sext i32 %122 to i64
  %123 = load %struct.lab*, %struct.lab** %points.addr, align 8
  %arrayidx108 = getelementptr inbounds %struct.lab, %struct.lab* %123, i64 %idxprom107
  %b109 = getelementptr inbounds %struct.lab, %struct.lab* %arrayidx108, i32 0, i32 2
  store float %div106, float* %b109, align 4
  %124 = load i32*, i32** %clusters.addr, align 8
  %125 = load i32, i32* %124, align 4
  %inc110 = add nsw i32 %125, 1
  store i32 %inc110, i32* %124, align 4
  br label %if.end.111

if.end.111:                                       ; preds = %while.end.51, %for.end.94, %for.end.65
  ret void
}

declare noalias i8* @g_memdup(i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare void @smooth_region(%struct._PixelRegion*) #1

declare void @erode_region(%struct._PixelRegion*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @threshold_mask(%struct._TileManager* %mask, i32 %x, i32 %y, i32 %width, i32 %height) #3 {
entry:
  %mask.addr = alloca %struct._TileManager*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %region = alloca %struct._PixelRegion, align 8
  %pr = alloca i8*, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %data = alloca i8*, align 8
  %d = alloca i8*, align 8
  store %struct._TileManager* %mask, %struct._TileManager** %mask.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load %struct._TileManager*, %struct._TileManager** %mask.addr, align 8
  %1 = load i32, i32* %x.addr, align 4
  %2 = load i32, i32* %y.addr, align 4
  %3 = load i32, i32* %width.addr, align 4
  %4 = load i32, i32* %height.addr, align 4
  call void @pixel_region_init(%struct._PixelRegion* %region, %struct._TileManager* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 1)
  %call = call %struct._PixelRegionIterator* (i32, ...) @pixel_regions_register(i32 1, %struct._PixelRegion* %region)
  %5 = bitcast %struct._PixelRegionIterator* %call to i8*
  store i8* %5, i8** %pr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.19, %entry
  %6 = load i8*, i8** %pr, align 8
  %cmp = icmp ne i8* %6, null
  br i1 %cmp, label %for.body, label %for.end.21

for.body:                                         ; preds = %for.cond
  %data1 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %region, i32 0, i32 0
  %7 = load i8*, i8** %data1, align 8
  store i8* %7, i8** %data, align 8
  store i32 0, i32* %row, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.16, %for.body
  %8 = load i32, i32* %row, align 4
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %region, i32 0, i32 9
  %9 = load i32, i32* %h, align 4
  %cmp3 = icmp slt i32 %8, %9
  br i1 %cmp3, label %for.body.4, label %for.end.18

for.body.4:                                       ; preds = %for.cond.2
  %10 = load i8*, i8** %data, align 8
  store i8* %10, i8** %d, align 8
  store i32 0, i32* %col, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body.4
  %11 = load i32, i32* %col, align 4
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %region, i32 0, i32 8
  %12 = load i32, i32* %w, align 4
  %cmp6 = icmp slt i32 %11, %12
  br i1 %cmp6, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.5
  %13 = load i8*, i8** %d, align 8
  %14 = load i8, i8* %13, align 1
  %conv = zext i8 %14 to i32
  %cmp8 = icmp sgt i32 %conv, 254
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.7
  %15 = load i8*, i8** %d, align 8
  store i8 3, i8* %15, align 1
  br label %if.end.15

if.else:                                          ; preds = %for.body.7
  %16 = load i8*, i8** %d, align 8
  %17 = load i8, i8* %16, align 1
  %conv10 = zext i8 %17 to i32
  %cmp11 = icmp sge i32 %conv10, 128
  br i1 %cmp11, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.else
  %18 = load i8*, i8** %d, align 8
  store i8 1, i8* %18, align 1
  br label %if.end

if.else.14:                                       ; preds = %if.else
  %19 = load i8*, i8** %d, align 8
  store i8 0, i8* %19, align 1
  br label %if.end

if.end:                                           ; preds = %if.else.14, %if.then.13
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %20 = load i32, i32* %col, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %col, align 4
  %21 = load i8*, i8** %d, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr, i8** %d, align 8
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  %rowstride = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %region, i32 0, i32 5
  %22 = load i32, i32* %rowstride, align 4
  %23 = load i8*, i8** %data, align 8
  %idx.ext = sext i32 %22 to i64
  %add.ptr = getelementptr inbounds i8, i8* %23, i64 %idx.ext
  store i8* %add.ptr, i8** %data, align 8
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.end
  %24 = load i32, i32* %row, align 4
  %inc17 = add nsw i32 %24, 1
  store i32 %inc17, i32* %row, align 4
  br label %for.cond.2

for.end.18:                                       ; preds = %for.cond.2
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.end.18
  %25 = load i8*, i8** %pr, align 8
  %26 = bitcast i8* %25 to %struct._PixelRegionIterator*
  %call20 = call %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator* %26)
  %27 = bitcast %struct._PixelRegionIterator* %call20 to i8*
  store i8* %27, i8** %pr, align 8
  br label %for.cond

for.end.21:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @depth_first_search(%struct._TileManager* %mask, i32 %x, i32 %y, i32 %xwidth, i32 %yheight, %struct.blob* %b, i8 zeroext %mark) #0 {
entry:
  %mask.addr = alloca %struct._TileManager*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %xwidth.addr = alloca i32, align 4
  %yheight.addr = alloca i32, align 4
  %b.addr = alloca %struct.blob*, align 8
  %mark.addr = alloca i8, align 1
  %stack = alloca %struct._GSList*, align 8
  %xx = alloca i32, align 4
  %yy = alloca i32, align 4
  %oldx = alloca i32, align 4
  %val = alloca i8, align 1
  store %struct._TileManager* %mask, %struct._TileManager** %mask.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %xwidth, i32* %xwidth.addr, align 4
  store i32 %yheight, i32* %yheight.addr, align 4
  store %struct.blob* %b, %struct.blob** %b.addr, align 8
  store i8 %mark, i8* %mark.addr, align 1
  store %struct._GSList* null, %struct._GSList** %stack, align 8
  %0 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %seedx = getelementptr inbounds %struct.blob, %struct.blob* %0, i32 0, i32 0
  %1 = load i32, i32* %seedx, align 4
  store i32 %1, i32* %xx, align 4
  %2 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %seedy = getelementptr inbounds %struct.blob, %struct.blob* %2, i32 0, i32 1
  %3 = load i32, i32* %seedy, align 4
  store i32 %3, i32* %yy, align 4
  store i32 -1, i32* %oldx, align 4
  br label %while.body

while.body:                                       ; preds = %entry, %if.end.59
  %4 = load i32, i32* %oldx, align 4
  %5 = load i32, i32* %xx, align 4
  %cmp = icmp eq i32 %4, %5
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %while.body
  %6 = load %struct._GSList*, %struct._GSList** %stack, align 8
  %cmp1 = icmp eq %struct._GSList* %6, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  br label %while.end

if.end:                                           ; preds = %if.then
  %7 = load %struct._GSList*, %struct._GSList** %stack, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %7, i32 0, i32 0
  %8 = load i8*, i8** %data, align 8
  %9 = ptrtoint i8* %8 to i64
  %conv = trunc i64 %9 to i32
  store i32 %conv, i32* %xx, align 4
  %10 = load %struct._GSList*, %struct._GSList** %stack, align 8
  %11 = load %struct._GSList*, %struct._GSList** %stack, align 8
  %call = call %struct._GSList* @g_slist_delete_link(%struct._GSList* %10, %struct._GSList* %11)
  store %struct._GSList* %call, %struct._GSList** %stack, align 8
  %12 = load %struct._GSList*, %struct._GSList** %stack, align 8
  %data3 = getelementptr inbounds %struct._GSList, %struct._GSList* %12, i32 0, i32 0
  %13 = load i8*, i8** %data3, align 8
  %14 = ptrtoint i8* %13 to i64
  %conv4 = trunc i64 %14 to i32
  store i32 %conv4, i32* %yy, align 4
  %15 = load %struct._GSList*, %struct._GSList** %stack, align 8
  %16 = load %struct._GSList*, %struct._GSList** %stack, align 8
  %call5 = call %struct._GSList* @g_slist_delete_link(%struct._GSList* %15, %struct._GSList* %16)
  store %struct._GSList* %call5, %struct._GSList** %stack, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %while.body
  %17 = load i32, i32* %xx, align 4
  store i32 %17, i32* %oldx, align 4
  %18 = load %struct._TileManager*, %struct._TileManager** %mask.addr, align 8
  %19 = load i32, i32* %xx, align 4
  %20 = load i32, i32* %yy, align 4
  call void @tile_manager_read_pixel_data_1(%struct._TileManager* %18, i32 %19, i32 %20, i8* %val)
  %21 = load i8, i8* %val, align 1
  %conv7 = zext i8 %21 to i32
  %tobool = icmp ne i32 %conv7, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.59

land.lhs.true:                                    ; preds = %if.end.6
  %22 = load i8, i8* %val, align 1
  %conv8 = zext i8 %22 to i32
  %23 = load i8, i8* %mark.addr, align 1
  %conv9 = zext i8 %23 to i32
  %cmp10 = icmp ne i32 %conv8, %conv9
  br i1 %cmp10, label %if.then.12, label %if.end.59

if.then.12:                                       ; preds = %land.lhs.true
  %24 = load i8, i8* %mark.addr, align 1
  %conv13 = zext i8 %24 to i32
  %cmp14 = icmp eq i32 %conv13, 7
  br i1 %cmp14, label %if.then.16, label %if.end.22

if.then.16:                                       ; preds = %if.then.12
  %25 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %size = getelementptr inbounds %struct.blob, %struct.blob* %25, i32 0, i32 2
  %26 = load i32, i32* %size, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %size, align 4
  %27 = load i8, i8* %val, align 1
  %conv17 = zext i8 %27 to i32
  %cmp18 = icmp eq i32 %conv17, 3
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.then.16
  %28 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %mustkeep = getelementptr inbounds %struct.blob, %struct.blob* %28, i32 0, i32 3
  store i32 1, i32* %mustkeep, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.then.16
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.12
  %29 = load %struct._TileManager*, %struct._TileManager** %mask.addr, align 8
  %30 = load i32, i32* %xx, align 4
  %31 = load i32, i32* %yy, align 4
  call void @tile_manager_write_pixel_data_1(%struct._TileManager* %29, i32 %30, i32 %31, i8* %mark.addr)
  %32 = load i32, i32* %yy, align 4
  %33 = load i32, i32* %y.addr, align 4
  %cmp23 = icmp sgt i32 %32, %33
  br i1 %cmp23, label %if.then.25, label %if.end.30

if.then.25:                                       ; preds = %if.end.22
  %34 = load %struct._GSList*, %struct._GSList** %stack, align 8
  %35 = load i32, i32* %yy, align 4
  %sub = sub nsw i32 %35, 1
  %conv26 = sext i32 %sub to i64
  %36 = inttoptr i64 %conv26 to i8*
  %call27 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %34, i8* %36)
  %37 = load i32, i32* %xx, align 4
  %conv28 = sext i32 %37 to i64
  %38 = inttoptr i64 %conv28 to i8*
  %call29 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %call27, i8* %38)
  store %struct._GSList* %call29, %struct._GSList** %stack, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.25, %if.end.22
  %39 = load i32, i32* %yy, align 4
  %add = add nsw i32 %39, 1
  %40 = load i32, i32* %yheight.addr, align 4
  %cmp31 = icmp slt i32 %add, %40
  br i1 %cmp31, label %if.then.33, label %if.end.39

if.then.33:                                       ; preds = %if.end.30
  %41 = load %struct._GSList*, %struct._GSList** %stack, align 8
  %42 = load i32, i32* %yy, align 4
  %add34 = add nsw i32 %42, 1
  %conv35 = sext i32 %add34 to i64
  %43 = inttoptr i64 %conv35 to i8*
  %call36 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %41, i8* %43)
  %44 = load i32, i32* %xx, align 4
  %conv37 = sext i32 %44 to i64
  %45 = inttoptr i64 %conv37 to i8*
  %call38 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %call36, i8* %45)
  store %struct._GSList* %call38, %struct._GSList** %stack, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.33, %if.end.30
  %46 = load i32, i32* %xx, align 4
  %add40 = add nsw i32 %46, 1
  %47 = load i32, i32* %xwidth.addr, align 4
  %cmp41 = icmp slt i32 %add40, %47
  br i1 %cmp41, label %if.then.43, label %if.else

if.then.43:                                       ; preds = %if.end.39
  %48 = load i32, i32* %xx, align 4
  %49 = load i32, i32* %x.addr, align 4
  %cmp44 = icmp sgt i32 %48, %49
  br i1 %cmp44, label %if.then.46, label %if.end.52

if.then.46:                                       ; preds = %if.then.43
  %50 = load %struct._GSList*, %struct._GSList** %stack, align 8
  %51 = load i32, i32* %yy, align 4
  %conv47 = sext i32 %51 to i64
  %52 = inttoptr i64 %conv47 to i8*
  %call48 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %50, i8* %52)
  %53 = load i32, i32* %xx, align 4
  %sub49 = sub nsw i32 %53, 1
  %conv50 = sext i32 %sub49 to i64
  %54 = inttoptr i64 %conv50 to i8*
  %call51 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %call48, i8* %54)
  store %struct._GSList* %call51, %struct._GSList** %stack, align 8
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.46, %if.then.43
  %55 = load i32, i32* %xx, align 4
  %inc53 = add nsw i32 %55, 1
  store i32 %inc53, i32* %xx, align 4
  br label %if.end.58

if.else:                                          ; preds = %if.end.39
  %56 = load i32, i32* %xx, align 4
  %57 = load i32, i32* %x.addr, align 4
  %cmp54 = icmp sgt i32 %56, %57
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.else
  %58 = load i32, i32* %xx, align 4
  %dec = add nsw i32 %58, -1
  store i32 %dec, i32* %xx, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.56, %if.else
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.end.52
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %land.lhs.true, %if.end.6
  br label %while.body

while.end:                                        ; preds = %if.then.2
  ret void
}

declare %struct._GSList* @g_slist_prepend(%struct._GSList*, i8*) #1

declare void @g_slist_free(%struct._GSList*) #1

declare %struct._GSList* @g_slist_delete_link(%struct._GSList*, %struct._GSList*) #1

declare void @tile_manager_read_pixel_data_1(%struct._TileManager*, i32, i32, i8*) #1

declare void @tile_manager_write_pixel_data_1(%struct._TileManager*, i32, i32, i8*) #1

declare void @dilate_region(%struct._PixelRegion*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
