; ModuleID = './app/core/gimpdrawable-histogram.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpDrawablePrivate = type opaque
%struct._GimpHistogram = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._Gimp = type opaque
%struct._PixelRegion = type { i8*, %struct._TileManager*, %struct._Tile*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._TileManager = type opaque
%struct._Tile = type opaque
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpRGB = type { double, double, double, double }
%struct._GeglNode = type opaque
%struct._BoundSeg = type opaque

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_drawable_calculate_histogram = private unnamed_addr constant [34 x i8] c"gimp_drawable_calculate_histogram\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"GIMP_IS_DRAWABLE (drawable)\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"gimp_item_is_attached (GIMP_ITEM (drawable))\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"histogram != NULL\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_drawable_calculate_histogram(%struct._GimpDrawable* %drawable, %struct._GimpHistogram* %histogram) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %histogram.addr = alloca %struct._GimpHistogram*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %region = alloca %struct._PixelRegion, align 8
  %mask = alloca %struct._PixelRegion, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %sel_mask = alloca %struct._GimpChannel*, align 8
  %image42 = alloca %struct._GimpImage*, align 8
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpHistogram* %histogram, %struct._GimpHistogram** %histogram.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #4
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #5
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %12, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_drawable_calculate_histogram, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.56

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %14 = bitcast %struct._GimpDrawable* %13 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_item_get_type() #4
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call12)
  %15 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpItem*
  %call14 = call i32 @gimp_item_is_attached(%struct._GimpItem* %15)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body.11
  br label %if.end.18

if.else.17:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_drawable_calculate_histogram, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.56

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  br label %do.body.20

do.body.20:                                       ; preds = %do.end.19
  %16 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %cmp21 = icmp ne %struct._GimpHistogram* %16, null
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %do.body.20
  br label %if.end.24

if.else.23:                                       ; preds = %do.body.20
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_drawable_calculate_histogram, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.56

if.end.24:                                        ; preds = %if.then.22
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %18 = bitcast %struct._GimpDrawable* %17 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_item_get_type() #4
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call26)
  %19 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpItem*
  %call28 = call i32 @gimp_item_mask_intersect(%struct._GimpItem* %19, i32* %x, i32* %y, i32* %width, i32* %height)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.end.31, label %if.then.30

if.then.30:                                       ; preds = %do.end.25
  br label %if.end.56

if.end.31:                                        ; preds = %do.end.25
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call32 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %20)
  %21 = load i32, i32* %x, align 4
  %22 = load i32, i32* %y, align 4
  %23 = load i32, i32* %width, align 4
  %24 = load i32, i32* %height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %region, %struct._TileManager* %call32, i32 %21, i32 %22, i32 %23, i32 %24, i32 0)
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %26 = bitcast %struct._GimpDrawable* %25 to %struct._GTypeInstance*
  %call33 = call i64 @gimp_item_get_type() #4
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call33)
  %27 = bitcast %struct._GTypeInstance* %call34 to %struct._GimpItem*
  %call35 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %27)
  store %struct._GimpImage* %call35, %struct._GimpImage** %image, align 8
  %28 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call36 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %28)
  %call37 = call i32 @gimp_channel_is_empty(%struct._GimpChannel* %call36)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.else.55, label %if.then.39

if.then.39:                                       ; preds = %if.end.31
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %30 = bitcast %struct._GimpDrawable* %29 to %struct._GTypeInstance*
  %call45 = call i64 @gimp_item_get_type() #4
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call45)
  %31 = bitcast %struct._GTypeInstance* %call46 to %struct._GimpItem*
  %call47 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %31)
  store %struct._GimpImage* %call47, %struct._GimpImage** %image42, align 8
  %32 = load %struct._GimpImage*, %struct._GimpImage** %image42, align 8
  %call48 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %32)
  store %struct._GimpChannel* %call48, %struct._GimpChannel** %sel_mask, align 8
  %33 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %34 = bitcast %struct._GimpDrawable* %33 to %struct._GTypeInstance*
  %call49 = call i64 @gimp_item_get_type() #4
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call49)
  %35 = bitcast %struct._GTypeInstance* %call50 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %35, i32* %off_x, i32* %off_y)
  %36 = load %struct._GimpChannel*, %struct._GimpChannel** %sel_mask, align 8
  %37 = bitcast %struct._GimpChannel* %36 to %struct._GTypeInstance*
  %call51 = call i64 @gimp_drawable_get_type() #4
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call51)
  %38 = bitcast %struct._GTypeInstance* %call52 to %struct._GimpDrawable*
  %call53 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %38)
  %39 = load i32, i32* %x, align 4
  %40 = load i32, i32* %off_x, align 4
  %add = add nsw i32 %39, %40
  %41 = load i32, i32* %y, align 4
  %42 = load i32, i32* %off_y, align 4
  %add54 = add nsw i32 %41, %42
  %43 = load i32, i32* %width, align 4
  %44 = load i32, i32* %height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %mask, %struct._TileManager* %call53, i32 %add, i32 %add54, i32 %43, i32 %44, i32 0)
  %45 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  call void @gimp_histogram_calculate(%struct._GimpHistogram* %45, %struct._PixelRegion* %region, %struct._PixelRegion* %mask)
  br label %if.end.56

if.else.55:                                       ; preds = %if.end.31
  %46 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  call void @gimp_histogram_calculate(%struct._GimpHistogram* %46, %struct._PixelRegion* %region, %struct._PixelRegion* null)
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.9, %if.else.17, %if.else.23, %if.then.30, %if.else.55, %if.then.39
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare i32 @gimp_item_is_attached(%struct._GimpItem*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #1

declare i32 @gimp_item_mask_intersect(%struct._GimpItem*, i32*, i32*, i32*, i32*) #3

declare void @pixel_region_init(%struct._PixelRegion*, %struct._TileManager*, i32, i32, i32, i32, i32) #3

declare %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable*) #3

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #3

declare i32 @gimp_channel_is_empty(%struct._GimpChannel*) #3

declare %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage*) #3

declare void @gimp_item_get_offset(%struct._GimpItem*, i32*, i32*) #3

declare void @gimp_histogram_calculate(%struct._GimpHistogram*, %struct._PixelRegion*, %struct._PixelRegion*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
