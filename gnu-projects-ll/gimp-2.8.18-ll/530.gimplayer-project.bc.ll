; ModuleID = './app/core/gimplayer-project.bc'
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
%struct._PixelRegion = type { i8*, %struct._TileManager*, %struct._Tile*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._TileManager = type opaque
%struct._Tile = type opaque
%struct._GimpLayer = type { %struct._GimpDrawable, double, i32, i32, %struct._GimpLayerMask*, %struct._GeglNode*, %struct.anon }
%struct._GimpLayerMask = type { %struct._GimpChannel, %struct._GimpLayer*, i32, i32, i32 }
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpRGB = type { double, double, double, double }
%struct._BoundSeg = type opaque
%struct._GeglNode = type opaque
%struct.anon = type { %struct._GimpDrawable*, i32, %struct._BoundSeg*, i32 }
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._Gimp = type opaque

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"gimplayer-project.c\00", align 1
@__func__.gimp_layer_project_region = private unnamed_addr constant [26 x i8] c"gimp_layer_project_region\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_layer_project_region(%struct._GimpDrawable* %drawable, i32 %x, i32 %y, i32 %width, i32 %height, %struct._PixelRegion* %projPR, i32 %combine) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %projPR.addr = alloca %struct._PixelRegion*, align 8
  %combine.addr = alloca i32, align 4
  %layer = alloca %struct._GimpLayer*, align 8
  %mask = alloca %struct._GimpLayerMask*, align 8
  %srcPR = alloca %struct._PixelRegion, align 8
  %temp_tiles = alloca %struct._TileManager*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %srcPR12 = alloca %struct._PixelRegion, align 8
  %maskPR = alloca %struct._PixelRegion, align 8
  %mask_pr = alloca %struct._PixelRegion*, align 8
  %colormap = alloca i8*, align 8
  %temp_mask_tiles = alloca %struct._TileManager*, align 8
  %temp_layer_tiles = alloca %struct._TileManager*, align 8
  %initial_mode = alloca i32, align 4
  %combination_mode = alloca i32, align 4
  %visible = alloca [4 x i32], align 16
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store %struct._PixelRegion* %projPR, %struct._PixelRegion** %projPR.addr, align 8
  store i32 %combine, i32* %combine.addr, align 4
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_layer_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpLayer*
  store %struct._GimpLayer* %2, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call2 = call %struct._GimpLayerMask* @gimp_layer_get_mask(%struct._GimpLayer* %3)
  store %struct._GimpLayerMask* %call2, %struct._GimpLayerMask** %mask, align 8
  %4 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %tobool = icmp ne %struct._GimpLayerMask* %4, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %call3 = call i32 @gimp_layer_mask_get_show(%struct._GimpLayerMask* %5)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %7 = bitcast %struct._GimpLayerMask* %6 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_drawable_get_type() #4
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call5)
  %8 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpDrawable*
  %9 = load i32, i32* %x.addr, align 4
  %10 = load i32, i32* %y.addr, align 4
  %11 = load i32, i32* %width.addr, align 4
  %12 = load i32, i32* %height.addr, align 4
  call void @gimp_drawable_init_src_region(%struct._GimpDrawable* %8, %struct._PixelRegion* %srcPR, i32 %9, i32 %10, i32 %11, i32 %12, %struct._TileManager** %temp_tiles)
  %13 = load %struct._PixelRegion*, %struct._PixelRegion** %projPR.addr, align 8
  call void @copy_gray_to_region(%struct._PixelRegion* %srcPR, %struct._PixelRegion* %13)
  %14 = load %struct._TileManager*, %struct._TileManager** %temp_tiles, align 8
  %tobool7 = icmp ne %struct._TileManager* %14, null
  br i1 %tobool7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %15 = load %struct._TileManager*, %struct._TileManager** %temp_tiles, align 8
  call void @tile_manager_unref(%struct._TileManager* %15)
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  br label %if.end.45

if.else:                                          ; preds = %land.lhs.true, %entry
  %16 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %17 = bitcast %struct._GimpLayer* %16 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_item_get_type() #4
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call9)
  %18 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpItem*
  %call11 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %18)
  store %struct._GimpImage* %call11, %struct._GimpImage** %image, align 8
  store %struct._PixelRegion* null, %struct._PixelRegion** %mask_pr, align 8
  store i8* null, i8** %colormap, align 8
  store %struct._TileManager* null, %struct._TileManager** %temp_mask_tiles, align 8
  store %struct._TileManager* null, %struct._TileManager** %temp_layer_tiles, align 8
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %20 = load i32, i32* %x.addr, align 4
  %21 = load i32, i32* %y.addr, align 4
  %22 = load i32, i32* %width.addr, align 4
  %23 = load i32, i32* %height.addr, align 4
  call void @gimp_drawable_init_src_region(%struct._GimpDrawable* %19, %struct._PixelRegion* %srcPR12, i32 %20, i32 %21, i32 %22, i32 %23, %struct._TileManager** %temp_layer_tiles)
  %24 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %tobool13 = icmp ne %struct._GimpLayerMask* %24, null
  br i1 %tobool13, label %land.lhs.true.14, label %if.end.20

land.lhs.true.14:                                 ; preds = %if.else
  %25 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %call15 = call i32 @gimp_layer_mask_get_apply(%struct._GimpLayerMask* %25)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %land.lhs.true.14
  %26 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %27 = bitcast %struct._GimpLayerMask* %26 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_drawable_get_type() #4
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call18)
  %28 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpDrawable*
  %29 = load i32, i32* %x.addr, align 4
  %30 = load i32, i32* %y.addr, align 4
  %31 = load i32, i32* %width.addr, align 4
  %32 = load i32, i32* %height.addr, align 4
  call void @gimp_drawable_init_src_region(%struct._GimpDrawable* %28, %struct._PixelRegion* %maskPR, i32 %29, i32 %30, i32 %31, i32 %32, %struct._TileManager** %temp_mask_tiles)
  store %struct._PixelRegion* %maskPR, %struct._PixelRegion** %mask_pr, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %land.lhs.true.14, %if.else
  %33 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call21 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %33)
  switch i32 %call21, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb
    i32 1, label %sw.bb.22
    i32 3, label %sw.bb.22
    i32 4, label %sw.bb.23
    i32 5, label %sw.bb.25
  ]

sw.bb:                                            ; preds = %if.end.20, %if.end.20
  store i32 4, i32* %initial_mode, align 4
  store i32 10, i32* %combination_mode, align 4
  br label %sw.epilog

sw.bb.22:                                         ; preds = %if.end.20, %if.end.20
  store i32 5, i32* %initial_mode, align 4
  store i32 11, i32* %combination_mode, align 4
  br label %sw.epilog

sw.bb.23:                                         ; preds = %if.end.20
  %34 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call24 = call i8* @gimp_drawable_get_colormap(%struct._GimpDrawable* %34)
  store i8* %call24, i8** %colormap, align 8
  store i32 2, i32* %initial_mode, align 4
  store i32 4, i32* %combination_mode, align 4
  br label %sw.epilog

sw.bb.25:                                         ; preds = %if.end.20
  %35 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call26 = call i8* @gimp_drawable_get_colormap(%struct._GimpDrawable* %35)
  store i8* %call26, i8** %colormap, align 8
  store i32 3, i32* %initial_mode, align 4
  store i32 5, i32* %combination_mode, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.20
  br label %do.body

do.body:                                          ; preds = %sw.default
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 122, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_layer_project_region, i32 0, i32 0), i8* null) #5
  unreachable

do.end:                                           ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.25, %sw.bb.23, %sw.bb.22, %sw.bb
  %36 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %visible, i32 0, i32 0
  call void @gimp_image_get_visible_array(%struct._GimpImage* %36, i32* %arraydecay)
  %37 = load i32, i32* %combine.addr, align 4
  %tobool27 = icmp ne i32 %37, 0
  br i1 %tobool27, label %if.then.28, label %if.else.32

if.then.28:                                       ; preds = %sw.epilog
  %38 = load %struct._PixelRegion*, %struct._PixelRegion** %projPR.addr, align 8
  %39 = load %struct._PixelRegion*, %struct._PixelRegion** %projPR.addr, align 8
  %40 = load %struct._PixelRegion*, %struct._PixelRegion** %mask_pr, align 8
  %41 = load i8*, i8** %colormap, align 8
  %42 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call29 = call double @gimp_layer_get_opacity(%struct._GimpLayer* %42)
  %mul = fmul double %call29, 2.559990e+02
  %conv = fptoui double %mul to i32
  %43 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call30 = call i32 @gimp_layer_get_mode(%struct._GimpLayer* %43)
  %arraydecay31 = getelementptr inbounds [4 x i32], [4 x i32]* %visible, i32 0, i32 0
  %44 = load i32, i32* %combination_mode, align 4
  call void @combine_regions(%struct._PixelRegion* %38, %struct._PixelRegion* %srcPR12, %struct._PixelRegion* %39, %struct._PixelRegion* %40, i8* %41, i32 %conv, i32 %call30, i32* %arraydecay31, i32 %44)
  br label %if.end.38

if.else.32:                                       ; preds = %sw.epilog
  %45 = load %struct._PixelRegion*, %struct._PixelRegion** %projPR.addr, align 8
  %46 = load %struct._PixelRegion*, %struct._PixelRegion** %mask_pr, align 8
  %47 = load i8*, i8** %colormap, align 8
  %48 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call33 = call double @gimp_layer_get_opacity(%struct._GimpLayer* %48)
  %mul34 = fmul double %call33, 2.559990e+02
  %conv35 = fptoui double %mul34 to i32
  %49 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call36 = call i32 @gimp_layer_get_mode(%struct._GimpLayer* %49)
  %arraydecay37 = getelementptr inbounds [4 x i32], [4 x i32]* %visible, i32 0, i32 0
  %50 = load i32, i32* %initial_mode, align 4
  call void @initial_region(%struct._PixelRegion* %srcPR12, %struct._PixelRegion* %45, %struct._PixelRegion* %46, i8* %47, i32 %conv35, i32 %call36, i32* %arraydecay37, i32 %50)
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.32, %if.then.28
  %51 = load %struct._TileManager*, %struct._TileManager** %temp_layer_tiles, align 8
  %tobool39 = icmp ne %struct._TileManager* %51, null
  br i1 %tobool39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.end.38
  %52 = load %struct._TileManager*, %struct._TileManager** %temp_layer_tiles, align 8
  call void @tile_manager_unref(%struct._TileManager* %52)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %if.end.38
  %53 = load %struct._TileManager*, %struct._TileManager** %temp_mask_tiles, align 8
  %tobool42 = icmp ne %struct._TileManager* %53, null
  br i1 %tobool42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.41
  %54 = load %struct._TileManager*, %struct._TileManager** %temp_mask_tiles, align 8
  call void @tile_manager_unref(%struct._TileManager* %54)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %if.end.41
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.end
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_get_type() #2

declare %struct._GimpLayerMask* @gimp_layer_get_mask(%struct._GimpLayer*) #1

declare i32 @gimp_layer_mask_get_show(%struct._GimpLayerMask*) #1

declare void @gimp_drawable_init_src_region(%struct._GimpDrawable*, %struct._PixelRegion*, i32, i32, i32, i32, %struct._TileManager**) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #2

declare void @copy_gray_to_region(%struct._PixelRegion*, %struct._PixelRegion*) #1

declare void @tile_manager_unref(%struct._TileManager*) #1

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare i32 @gimp_layer_mask_get_apply(%struct._GimpLayerMask*) #1

declare i32 @gimp_drawable_type(%struct._GimpDrawable*) #1

declare i8* @gimp_drawable_get_colormap(%struct._GimpDrawable*) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #3

declare void @gimp_image_get_visible_array(%struct._GimpImage*, i32*) #1

declare void @combine_regions(%struct._PixelRegion*, %struct._PixelRegion*, %struct._PixelRegion*, %struct._PixelRegion*, i8*, i32, i32, i32*, i32) #1

declare double @gimp_layer_get_opacity(%struct._GimpLayer*) #1

declare i32 @gimp_layer_get_mode(%struct._GimpLayer*) #1

declare void @initial_region(%struct._PixelRegion*, %struct._PixelRegion*, %struct._PixelRegion*, i8*, i32, i32, i32*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
