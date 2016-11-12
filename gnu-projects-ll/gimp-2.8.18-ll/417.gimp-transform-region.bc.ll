; ModuleID = './app/core/gimp-transform-region.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPickable = type opaque
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpToolInfo = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpTemplate = type opaque
%struct._TileManager = type opaque
%struct._PixelRegion = type { i8*, %struct._TileManager*, %struct._Tile*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._Tile = type opaque
%struct._GimpMatrix3 = type { [3 x [3 x double]] }
%struct._GimpProgress = type opaque
%struct._PixelRegionIterator = type { %struct._GSList*, i32, i32, i32, i32, i32 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._PixelSurround = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_transform_region = private unnamed_addr constant [22 x i8] c"gimp_transform_region\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"GIMP_IS_PICKABLE (pickable)\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"gimp-transform-region.c\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"homogeneous coordinate = 0...\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_transform_region(%struct._GimpPickable* %pickable, %struct._GimpContext* %context, %struct._TileManager* %orig_tiles, i32 %orig_offset_x, i32 %orig_offset_y, %struct._PixelRegion* %destPR, i32 %dest_x1, i32 %dest_y1, i32 %dest_x2, i32 %dest_y2, %struct._GimpMatrix3* %matrix, i32 %interpolation_type, i32 %recursion_level, %struct._GimpProgress* %progress) #0 {
entry:
  %pickable.addr = alloca %struct._GimpPickable*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %orig_tiles.addr = alloca %struct._TileManager*, align 8
  %orig_offset_x.addr = alloca i32, align 4
  %orig_offset_y.addr = alloca i32, align 4
  %destPR.addr = alloca %struct._PixelRegion*, align 8
  %dest_x1.addr = alloca i32, align 4
  %dest_y1.addr = alloca i32, align 4
  %dest_x2.addr = alloca i32, align 4
  %dest_y2.addr = alloca i32, align 4
  %matrix.addr = alloca %struct._GimpMatrix3*, align 8
  %interpolation_type.addr = alloca i32, align 4
  %recursion_level.addr = alloca i32, align 4
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %pickable_type = alloca i32, align 4
  %m = alloca %struct._GimpMatrix3, align 8
  %u1 = alloca i32, align 4
  %v1 = alloca i32, align 4
  %u2 = alloca i32, align 4
  %v2 = alloca i32, align 4
  %alpha = alloca i32, align 4
  %bg_color = alloca [4 x i8], align 1
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst39 = alloca %struct._GTypeInstance*, align 8
  %__t41 = alloca i64, align 8
  %__r44 = alloca i32, align 4
  %tmp59 = alloca i32, align 4
  store %struct._GimpPickable* %pickable, %struct._GimpPickable** %pickable.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._TileManager* %orig_tiles, %struct._TileManager** %orig_tiles.addr, align 8
  store i32 %orig_offset_x, i32* %orig_offset_x.addr, align 4
  store i32 %orig_offset_y, i32* %orig_offset_y.addr, align 4
  store %struct._PixelRegion* %destPR, %struct._PixelRegion** %destPR.addr, align 8
  store i32 %dest_x1, i32* %dest_x1.addr, align 4
  store i32 %dest_y1, i32* %dest_y1.addr, align 4
  store i32 %dest_x2, i32* %dest_x2.addr, align 4
  store i32 %dest_y2, i32* %dest_y2.addr, align 4
  store %struct._GimpMatrix3* %matrix, %struct._GimpMatrix3** %matrix.addr, align 8
  store i32 %interpolation_type, i32* %interpolation_type.addr, align 4
  store i32 %recursion_level, i32* %recursion_level.addr, align 4
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %1 = bitcast %struct._GimpPickable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_pickable_interface_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_transform_region, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  br label %sw.epilog.76

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %orig_offset_x.addr, align 4
  store i32 %13, i32* %u1, align 4
  %14 = load i32, i32* %orig_offset_y.addr, align 4
  store i32 %14, i32* %v1, align 4
  %15 = load i32, i32* %u1, align 4
  %16 = load %struct._TileManager*, %struct._TileManager** %orig_tiles.addr, align 8
  %call11 = call i32 @tile_manager_width(%struct._TileManager* %16)
  %add = add nsw i32 %15, %call11
  store i32 %add, i32* %u2, align 4
  %17 = load i32, i32* %v1, align 4
  %18 = load %struct._TileManager*, %struct._TileManager** %orig_tiles.addr, align 8
  %call12 = call i32 @tile_manager_height(%struct._TileManager* %18)
  %add13 = add nsw i32 %17, %call12
  store i32 %add13, i32* %v2, align 4
  %19 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %20 = bitcast %struct._GimpMatrix3* %m to i8*
  %21 = bitcast %struct._GimpMatrix3* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 72, i32 8, i1 false)
  call void @gimp_matrix3_invert(%struct._GimpMatrix3* %m)
  %22 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %call14 = call i32 @gimp_matrix3_is_simple(%struct._GimpMatrix3* %22)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %do.end
  store i32 0, i32* %interpolation_type.addr, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %do.end
  %23 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %call18 = call i32 @gimp_pickable_get_image_type(%struct._GimpPickable* %23)
  store i32 %call18, i32* %pickable_type, align 4
  %24 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %call19 = call %struct._GimpImage* @gimp_pickable_get_image(%struct._GimpPickable* %24)
  %25 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %26 = load i32, i32* %pickable_type, align 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %bg_color, i32 0, i32 0
  call void @gimp_image_get_background(%struct._GimpImage* %call19, %struct._GimpContext* %25, i32 %26, i8* %arraydecay)
  %27 = load i32, i32* %pickable_type, align 4
  %cmp20 = icmp eq i32 %27, 0
  br i1 %cmp20, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.17
  %28 = load i32, i32* %pickable_type, align 4
  %cmp21 = icmp eq i32 %28, 1
  br i1 %cmp21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %if.end.17
  br label %cond.end.30

cond.false:                                       ; preds = %lor.lhs.false
  %29 = load i32, i32* %pickable_type, align 4
  %cmp22 = icmp eq i32 %29, 2
  br i1 %cmp22, label %cond.true.25, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %cond.false
  %30 = load i32, i32* %pickable_type, align 4
  %cmp24 = icmp eq i32 %30, 3
  br i1 %cmp24, label %cond.true.25, label %cond.false.26

cond.true.25:                                     ; preds = %lor.lhs.false.23, %cond.false
  br label %cond.end

cond.false.26:                                    ; preds = %lor.lhs.false.23
  %31 = load i32, i32* %pickable_type, align 4
  %cmp27 = icmp eq i32 %31, 4
  br i1 %cmp27, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.false.26
  %32 = load i32, i32* %pickable_type, align 4
  %cmp28 = icmp eq i32 %32, 5
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.false.26
  %33 = phi i1 [ true, %cond.false.26 ], [ %cmp28, %lor.rhs ]
  %cond = select i1 %33, i32 2, i32 -1
  br label %cond.end

cond.end:                                         ; preds = %lor.end, %cond.true.25
  %cond29 = phi i32 [ 1, %cond.true.25 ], [ %cond, %lor.end ]
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.end, %cond.true
  %cond31 = phi i32 [ 0, %cond.true ], [ %cond29, %cond.end ]
  switch i32 %cond31, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.32
    i32 2, label %sw.bb.34
  ]

sw.bb:                                            ; preds = %cond.end.30
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %bg_color, i32 0, i64 3
  store i8 0, i8* %arrayidx, align 1
  store i32 3, i32* %alpha, align 4
  br label %sw.epilog

sw.bb.32:                                         ; preds = %cond.end.30
  %arrayidx33 = getelementptr inbounds [4 x i8], [4 x i8]* %bg_color, i32 0, i64 1
  store i8 0, i8* %arrayidx33, align 1
  store i32 1, i32* %alpha, align 4
  br label %sw.epilog

sw.bb.34:                                         ; preds = %cond.end.30
  %arrayidx35 = getelementptr inbounds [4 x i8], [4 x i8]* %bg_color, i32 0, i64 1
  store i8 0, i8* %arrayidx35, align 1
  store i32 1, i32* %alpha, align 4
  store i32 0, i32* %interpolation_type.addr, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end.30
  br label %do.body.36

do.body.36:                                       ; preds = %sw.default
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0), i32 230, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_transform_region, i32 0, i32 0), i8* null) #9
  unreachable

do.end.37:                                        ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.37, %sw.bb.34, %sw.bb.32, %sw.bb
  %34 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %35 = bitcast %struct._GimpPickable* %34 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %35, %struct._GTypeInstance** %__inst39, align 8
  %call42 = call i64 @gimp_channel_get_type() #7
  store i64 %call42, i64* %__t41, align 8
  %36 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst39, align 8
  %tobool45 = icmp ne %struct._GTypeInstance* %36, null
  br i1 %tobool45, label %if.else.47, label %if.then.46

if.then.46:                                       ; preds = %sw.epilog
  store i32 0, i32* %__r44, align 4
  br label %if.end.58

if.else.47:                                       ; preds = %sw.epilog
  %37 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst39, align 8
  %g_class48 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %37, i32 0, i32 0
  %38 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class48, align 8
  %tobool49 = icmp ne %struct._GTypeClass* %38, null
  br i1 %tobool49, label %land.lhs.true.50, label %if.else.55

land.lhs.true.50:                                 ; preds = %if.else.47
  %39 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst39, align 8
  %g_class51 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %39, i32 0, i32 0
  %40 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class51, align 8
  %g_type52 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %40, i32 0, i32 0
  %41 = load i64, i64* %g_type52, align 8
  %42 = load i64, i64* %__t41, align 8
  %cmp53 = icmp eq i64 %41, %42
  br i1 %cmp53, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %land.lhs.true.50
  store i32 1, i32* %__r44, align 4
  br label %if.end.57

if.else.55:                                       ; preds = %land.lhs.true.50, %if.else.47
  %43 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst39, align 8
  %44 = load i64, i64* %__t41, align 8
  %call56 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %43, i64 %44) #8
  store i32 %call56, i32* %__r44, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.55, %if.then.54
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.then.46
  %45 = load i32, i32* %__r44, align 4
  store i32 %45, i32* %tmp59
  %46 = load i32, i32* %tmp59
  %tobool60 = icmp ne i32 %46, 0
  br i1 %tobool60, label %if.then.61, label %if.end.63

if.then.61:                                       ; preds = %if.end.58
  %arrayidx62 = getelementptr inbounds [4 x i8], [4 x i8]* %bg_color, i32 0, i64 0
  store i8 0, i8* %arrayidx62, align 1
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.61, %if.end.58
  %47 = load %struct._TileManager*, %struct._TileManager** %orig_tiles.addr, align 8
  %call64 = call i32 @tile_manager_bpp(%struct._TileManager* %47)
  %cmp65 = icmp eq i32 %call64, 1
  br i1 %cmp65, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.end.63
  store i32 0, i32* %alpha, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.66, %if.end.63
  %48 = load i32, i32* %interpolation_type.addr, align 4
  switch i32 %48, label %sw.epilog.76 [
    i32 0, label %sw.bb.68
    i32 1, label %sw.bb.70
    i32 2, label %sw.bb.72
    i32 3, label %sw.bb.74
  ]

sw.bb.68:                                         ; preds = %if.end.67
  %49 = load %struct._TileManager*, %struct._TileManager** %orig_tiles.addr, align 8
  %50 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %51 = load i32, i32* %dest_x1.addr, align 4
  %52 = load i32, i32* %dest_y1.addr, align 4
  %53 = load i32, i32* %dest_x2.addr, align 4
  %54 = load i32, i32* %dest_y2.addr, align 4
  %55 = load i32, i32* %u1, align 4
  %56 = load i32, i32* %v1, align 4
  %57 = load i32, i32* %u2, align 4
  %58 = load i32, i32* %v2, align 4
  %59 = load i32, i32* %alpha, align 4
  %arraydecay69 = getelementptr inbounds [4 x i8], [4 x i8]* %bg_color, i32 0, i32 0
  %60 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_transform_region_nearest(%struct._TileManager* %49, %struct._PixelRegion* %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56, i32 %57, i32 %58, %struct._GimpMatrix3* %m, i32 %59, i8* %arraydecay69, %struct._GimpProgress* %60)
  br label %sw.epilog.76

sw.bb.70:                                         ; preds = %if.end.67
  %61 = load %struct._TileManager*, %struct._TileManager** %orig_tiles.addr, align 8
  %62 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %63 = load i32, i32* %dest_x1.addr, align 4
  %64 = load i32, i32* %dest_y1.addr, align 4
  %65 = load i32, i32* %dest_x2.addr, align 4
  %66 = load i32, i32* %dest_y2.addr, align 4
  %67 = load i32, i32* %u1, align 4
  %68 = load i32, i32* %v1, align 4
  %69 = load i32, i32* %u2, align 4
  %70 = load i32, i32* %v2, align 4
  %71 = load i32, i32* %alpha, align 4
  %72 = load i32, i32* %recursion_level.addr, align 4
  %arraydecay71 = getelementptr inbounds [4 x i8], [4 x i8]* %bg_color, i32 0, i32 0
  %73 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_transform_region_linear(%struct._TileManager* %61, %struct._PixelRegion* %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 %67, i32 %68, i32 %69, i32 %70, %struct._GimpMatrix3* %m, i32 %71, i32 %72, i8* %arraydecay71, %struct._GimpProgress* %73)
  br label %sw.epilog.76

sw.bb.72:                                         ; preds = %if.end.67
  %74 = load %struct._TileManager*, %struct._TileManager** %orig_tiles.addr, align 8
  %75 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %76 = load i32, i32* %dest_x1.addr, align 4
  %77 = load i32, i32* %dest_y1.addr, align 4
  %78 = load i32, i32* %dest_x2.addr, align 4
  %79 = load i32, i32* %dest_y2.addr, align 4
  %80 = load i32, i32* %u1, align 4
  %81 = load i32, i32* %v1, align 4
  %82 = load i32, i32* %u2, align 4
  %83 = load i32, i32* %v2, align 4
  %84 = load i32, i32* %alpha, align 4
  %85 = load i32, i32* %recursion_level.addr, align 4
  %arraydecay73 = getelementptr inbounds [4 x i8], [4 x i8]* %bg_color, i32 0, i32 0
  %86 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_transform_region_cubic(%struct._TileManager* %74, %struct._PixelRegion* %75, i32 %76, i32 %77, i32 %78, i32 %79, i32 %80, i32 %81, i32 %82, i32 %83, %struct._GimpMatrix3* %m, i32 %84, i32 %85, i8* %arraydecay73, %struct._GimpProgress* %86)
  br label %sw.epilog.76

sw.bb.74:                                         ; preds = %if.end.67
  %87 = load %struct._TileManager*, %struct._TileManager** %orig_tiles.addr, align 8
  %88 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %89 = load i32, i32* %dest_x1.addr, align 4
  %90 = load i32, i32* %dest_y1.addr, align 4
  %91 = load i32, i32* %dest_x2.addr, align 4
  %92 = load i32, i32* %dest_y2.addr, align 4
  %93 = load i32, i32* %u1, align 4
  %94 = load i32, i32* %v1, align 4
  %95 = load i32, i32* %u2, align 4
  %96 = load i32, i32* %v2, align 4
  %97 = load i32, i32* %alpha, align 4
  %98 = load i32, i32* %recursion_level.addr, align 4
  %arraydecay75 = getelementptr inbounds [4 x i8], [4 x i8]* %bg_color, i32 0, i32 0
  %99 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_transform_region_lanczos(%struct._TileManager* %87, %struct._PixelRegion* %88, i32 %89, i32 %90, i32 %91, i32 %92, i32 %93, i32 %94, i32 %95, i32 %96, %struct._GimpMatrix3* %m, i32 %97, i32 %98, i8* %arraydecay75, %struct._GimpProgress* %99)
  br label %sw.epilog.76

sw.epilog.76:                                     ; preds = %if.else.9, %if.end.67, %sw.bb.74, %sw.bb.72, %sw.bb.70, %sw.bb.68
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_pickable_interface_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare i32 @tile_manager_width(%struct._TileManager*) #3

declare i32 @tile_manager_height(%struct._TileManager*) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare void @gimp_matrix3_invert(%struct._GimpMatrix3*) #3

declare i32 @gimp_matrix3_is_simple(%struct._GimpMatrix3*) #3

declare i32 @gimp_pickable_get_image_type(%struct._GimpPickable*) #3

declare void @gimp_image_get_background(%struct._GimpImage*, %struct._GimpContext*, i32, i8*) #3

declare %struct._GimpImage* @gimp_pickable_get_image(%struct._GimpPickable*) #3

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #5

; Function Attrs: nounwind readnone
declare i64 @gimp_channel_get_type() #1

declare i32 @tile_manager_bpp(%struct._TileManager*) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_transform_region_nearest(%struct._TileManager* %orig_tiles, %struct._PixelRegion* %destPR, i32 %dest_x1, i32 %dest_y1, i32 %dest_x2, i32 %dest_y2, i32 %u1, i32 %v1, i32 %u2, i32 %v2, %struct._GimpMatrix3* %m, i32 %alpha, i8* %bg_color, %struct._GimpProgress* %progress) #0 {
entry:
  %orig_tiles.addr = alloca %struct._TileManager*, align 8
  %destPR.addr = alloca %struct._PixelRegion*, align 8
  %dest_x1.addr = alloca i32, align 4
  %dest_y1.addr = alloca i32, align 4
  %dest_x2.addr = alloca i32, align 4
  %dest_y2.addr = alloca i32, align 4
  %u1.addr = alloca i32, align 4
  %v1.addr = alloca i32, align 4
  %u2.addr = alloca i32, align 4
  %v2.addr = alloca i32, align 4
  %m.addr = alloca %struct._GimpMatrix3*, align 8
  %alpha.addr = alloca i32, align 4
  %bg_color.addr = alloca i8*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %uinc = alloca double, align 8
  %vinc = alloca double, align 8
  %winc = alloca double, align 8
  %pixels = alloca i32, align 4
  %total = alloca i32, align 4
  %n = alloca i32, align 4
  %pr = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %y = alloca i32, align 4
  %x = alloca i32, align 4
  %width = alloca i32, align 4
  %d = alloca i8*, align 8
  %tu = alloca double, align 8
  %tv = alloca double, align 8
  %tw = alloca double, align 8
  %u = alloca double, align 8
  %v = alloca double, align 8
  %iu = alloca i32, align 4
  %iv = alloca i32, align 4
  %b = alloca i32, align 4
  store %struct._TileManager* %orig_tiles, %struct._TileManager** %orig_tiles.addr, align 8
  store %struct._PixelRegion* %destPR, %struct._PixelRegion** %destPR.addr, align 8
  store i32 %dest_x1, i32* %dest_x1.addr, align 4
  store i32 %dest_y1, i32* %dest_y1.addr, align 4
  store i32 %dest_x2, i32* %dest_x2.addr, align 4
  store i32 %dest_y2, i32* %dest_y2.addr, align 4
  store i32 %u1, i32* %u1.addr, align 4
  store i32 %v1, i32* %v1.addr, align 4
  store i32 %u2, i32* %u2.addr, align 4
  store i32 %v2, i32* %v2.addr, align 4
  store %struct._GimpMatrix3* %m, %struct._GimpMatrix3** %m.addr, align 8
  store i32 %alpha, i32* %alpha.addr, align 4
  store i8* %bg_color, i8** %bg_color.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff, i32 0, i64 0
  %arrayidx1 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx, i32 0, i64 0
  %1 = load double, double* %arrayidx1, align 8
  store double %1, double* %uinc, align 8
  %2 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff2 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %2, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff2, i32 0, i64 1
  %arrayidx4 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx3, i32 0, i64 0
  %3 = load double, double* %arrayidx4, align 8
  store double %3, double* %vinc, align 8
  %4 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff5 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %4, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff5, i32 0, i64 2
  %arrayidx7 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx6, i32 0, i64 0
  %5 = load double, double* %arrayidx7, align 8
  store double %5, double* %winc, align 8
  %6 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %6, i32 0, i32 8
  %7 = load i32, i32* %w, align 4
  %8 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %8, i32 0, i32 9
  %9 = load i32, i32* %h, align 4
  %mul = mul nsw i32 %7, %9
  store i32 %mul, i32* %total, align 4
  %10 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %call = call %struct._PixelRegionIterator* (i32, ...) @pixel_regions_register(i32 1, %struct._PixelRegion* %10)
  %11 = bitcast %struct._PixelRegionIterator* %call to i8*
  store i8* %11, i8** %pr, align 8
  store i32 0, i32* %pixels, align 4
  store i32 0, i32* %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.107, %entry
  %12 = load i8*, i8** %pr, align 8
  %cmp = icmp ne i8* %12, null
  br i1 %cmp, label %for.body, label %for.end.110

for.body:                                         ; preds = %for.cond
  %13 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %data = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %13, i32 0, i32 0
  %14 = load i8*, i8** %data, align 8
  store i8* %14, i8** %dest, align 8
  %15 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %y8 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %15, i32 0, i32 7
  %16 = load i32, i32* %y8, align 4
  store i32 %16, i32* %y, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.91, %for.body
  %17 = load i32, i32* %y, align 4
  %18 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %y10 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %18, i32 0, i32 7
  %19 = load i32, i32* %y10, align 4
  %20 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %h11 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %20, i32 0, i32 9
  %21 = load i32, i32* %h11, align 4
  %add = add nsw i32 %19, %21
  %cmp12 = icmp slt i32 %17, %add
  br i1 %cmp12, label %for.body.13, label %for.end.93

for.body.13:                                      ; preds = %for.cond.9
  %22 = load i32, i32* %dest_x1.addr, align 4
  %23 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %x14 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %23, i32 0, i32 6
  %24 = load i32, i32* %x14, align 4
  %add15 = add nsw i32 %22, %24
  store i32 %add15, i32* %x, align 4
  %25 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %w16 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %25, i32 0, i32 8
  %26 = load i32, i32* %w16, align 4
  store i32 %26, i32* %width, align 4
  %27 = load i8*, i8** %dest, align 8
  store i8* %27, i8** %d, align 8
  %28 = load double, double* %uinc, align 8
  %29 = load i32, i32* %x, align 4
  %conv = sitofp i32 %29 to double
  %add17 = fadd double %conv, 5.000000e-01
  %mul18 = fmul double %28, %add17
  %30 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff19 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %30, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff19, i32 0, i64 0
  %arrayidx21 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx20, i32 0, i64 1
  %31 = load double, double* %arrayidx21, align 8
  %32 = load i32, i32* %dest_y1.addr, align 4
  %33 = load i32, i32* %y, align 4
  %add22 = add nsw i32 %32, %33
  %conv23 = sitofp i32 %add22 to double
  %add24 = fadd double %conv23, 5.000000e-01
  %mul25 = fmul double %31, %add24
  %add26 = fadd double %mul18, %mul25
  %34 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff27 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %34, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff27, i32 0, i64 0
  %arrayidx29 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx28, i32 0, i64 2
  %35 = load double, double* %arrayidx29, align 8
  %add30 = fadd double %add26, %35
  store double %add30, double* %tu, align 8
  %36 = load double, double* %vinc, align 8
  %37 = load i32, i32* %x, align 4
  %conv31 = sitofp i32 %37 to double
  %add32 = fadd double %conv31, 5.000000e-01
  %mul33 = fmul double %36, %add32
  %38 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff34 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %38, i32 0, i32 0
  %arrayidx35 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff34, i32 0, i64 1
  %arrayidx36 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx35, i32 0, i64 1
  %39 = load double, double* %arrayidx36, align 8
  %40 = load i32, i32* %dest_y1.addr, align 4
  %41 = load i32, i32* %y, align 4
  %add37 = add nsw i32 %40, %41
  %conv38 = sitofp i32 %add37 to double
  %add39 = fadd double %conv38, 5.000000e-01
  %mul40 = fmul double %39, %add39
  %add41 = fadd double %mul33, %mul40
  %42 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff42 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %42, i32 0, i32 0
  %arrayidx43 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff42, i32 0, i64 1
  %arrayidx44 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx43, i32 0, i64 2
  %43 = load double, double* %arrayidx44, align 8
  %add45 = fadd double %add41, %43
  store double %add45, double* %tv, align 8
  %44 = load double, double* %winc, align 8
  %45 = load i32, i32* %x, align 4
  %conv46 = sitofp i32 %45 to double
  %add47 = fadd double %conv46, 5.000000e-01
  %mul48 = fmul double %44, %add47
  %46 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff49 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %46, i32 0, i32 0
  %arrayidx50 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff49, i32 0, i64 2
  %arrayidx51 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx50, i32 0, i64 1
  %47 = load double, double* %arrayidx51, align 8
  %48 = load i32, i32* %dest_y1.addr, align 4
  %49 = load i32, i32* %y, align 4
  %add52 = add nsw i32 %48, %49
  %conv53 = sitofp i32 %add52 to double
  %add54 = fadd double %conv53, 5.000000e-01
  %mul55 = fmul double %47, %add54
  %add56 = fadd double %mul48, %mul55
  %50 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff57 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %50, i32 0, i32 0
  %arrayidx58 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff57, i32 0, i64 2
  %arrayidx59 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx58, i32 0, i64 2
  %51 = load double, double* %arrayidx59, align 8
  %add60 = fadd double %add56, %51
  store double %add60, double* %tw, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %for.body.13
  %52 = load i32, i32* %width, align 4
  %dec = add nsw i32 %52, -1
  store i32 %dec, i32* %width, align 4
  %tobool = icmp ne i32 %52, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @normalize_coords(i32 1, double* %tu, double* %tv, double* %tw, double* %u, double* %v)
  %53 = load double, double* %u, align 8
  %add61 = fadd double %53, 5.000000e-01
  %add62 = fadd double %add61, 1.000000e-05
  %call63 = call double @floor(double %add62) #7
  %conv64 = fptosi double %call63 to i32
  store i32 %conv64, i32* %iu, align 4
  %54 = load double, double* %v, align 8
  %add65 = fadd double %54, 5.000000e-01
  %add66 = fadd double %add65, 1.000000e-05
  %call67 = call double @floor(double %add66) #7
  %conv68 = fptosi double %call67 to i32
  store i32 %conv68, i32* %iv, align 4
  %55 = load i32, i32* %iu, align 4
  %56 = load i32, i32* %u1.addr, align 4
  %cmp69 = icmp sge i32 %55, %56
  br i1 %cmp69, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %57 = load i32, i32* %iu, align 4
  %58 = load i32, i32* %u2.addr, align 4
  %cmp71 = icmp slt i32 %57, %58
  br i1 %cmp71, label %land.lhs.true.73, label %if.else

land.lhs.true.73:                                 ; preds = %land.lhs.true
  %59 = load i32, i32* %iv, align 4
  %60 = load i32, i32* %v1.addr, align 4
  %cmp74 = icmp sge i32 %59, %60
  br i1 %cmp74, label %land.lhs.true.76, label %if.else

land.lhs.true.76:                                 ; preds = %land.lhs.true.73
  %61 = load i32, i32* %iv, align 4
  %62 = load i32, i32* %v2.addr, align 4
  %cmp77 = icmp slt i32 %61, %62
  br i1 %cmp77, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.76
  %63 = load %struct._TileManager*, %struct._TileManager** %orig_tiles.addr, align 8
  %64 = load i32, i32* %iu, align 4
  %65 = load i32, i32* %u1.addr, align 4
  %sub = sub nsw i32 %64, %65
  %66 = load i32, i32* %iv, align 4
  %67 = load i32, i32* %v1.addr, align 4
  %sub79 = sub nsw i32 %66, %67
  %68 = load i8*, i8** %d, align 8
  call void @tile_manager_read_pixel_data_1(%struct._TileManager* %63, i32 %sub, i32 %sub79, i8* %68)
  %69 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %bytes = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %69, i32 0, i32 10
  %70 = load i32, i32* %bytes, align 4
  %71 = load i8*, i8** %d, align 8
  %idx.ext = sext i32 %70 to i64
  %add.ptr = getelementptr inbounds i8, i8* %71, i64 %idx.ext
  store i8* %add.ptr, i8** %d, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.76, %land.lhs.true.73, %land.lhs.true, %while.body
  store i32 0, i32* %b, align 4
  br label %for.cond.80

for.cond.80:                                      ; preds = %for.inc, %if.else
  %72 = load i32, i32* %b, align 4
  %73 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %bytes81 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %73, i32 0, i32 10
  %74 = load i32, i32* %bytes81, align 4
  %cmp82 = icmp slt i32 %72, %74
  br i1 %cmp82, label %for.body.84, label %for.end

for.body.84:                                      ; preds = %for.cond.80
  %75 = load i32, i32* %b, align 4
  %idxprom = sext i32 %75 to i64
  %76 = load i8*, i8** %bg_color.addr, align 8
  %arrayidx85 = getelementptr inbounds i8, i8* %76, i64 %idxprom
  %77 = load i8, i8* %arrayidx85, align 1
  %78 = load i8*, i8** %d, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %incdec.ptr, i8** %d, align 8
  store i8 %77, i8* %78, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.84
  %79 = load i32, i32* %b, align 4
  %inc = add nsw i32 %79, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond.80

for.end:                                          ; preds = %for.cond.80
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %80 = load double, double* %uinc, align 8
  %81 = load double, double* %tu, align 8
  %add86 = fadd double %81, %80
  store double %add86, double* %tu, align 8
  %82 = load double, double* %vinc, align 8
  %83 = load double, double* %tv, align 8
  %add87 = fadd double %83, %82
  store double %add87, double* %tv, align 8
  %84 = load double, double* %winc, align 8
  %85 = load double, double* %tw, align 8
  %add88 = fadd double %85, %84
  store double %add88, double* %tw, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %86 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %rowstride = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %86, i32 0, i32 5
  %87 = load i32, i32* %rowstride, align 4
  %88 = load i8*, i8** %dest, align 8
  %idx.ext89 = sext i32 %87 to i64
  %add.ptr90 = getelementptr inbounds i8, i8* %88, i64 %idx.ext89
  store i8* %add.ptr90, i8** %dest, align 8
  br label %for.inc.91

for.inc.91:                                       ; preds = %while.end
  %89 = load i32, i32* %y, align 4
  %inc92 = add nsw i32 %89, 1
  store i32 %inc92, i32* %y, align 4
  br label %for.cond.9

for.end.93:                                       ; preds = %for.cond.9
  %90 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool94 = icmp ne %struct._GimpProgress* %90, null
  br i1 %tobool94, label %if.then.95, label %if.end.106

if.then.95:                                       ; preds = %for.end.93
  %91 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %w96 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %91, i32 0, i32 8
  %92 = load i32, i32* %w96, align 4
  %93 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %h97 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %93, i32 0, i32 9
  %94 = load i32, i32* %h97, align 4
  %mul98 = mul nsw i32 %92, %94
  %95 = load i32, i32* %pixels, align 4
  %add99 = add nsw i32 %95, %mul98
  store i32 %add99, i32* %pixels, align 4
  %96 = load i32, i32* %n, align 4
  %rem = srem i32 %96, 16
  %cmp100 = icmp eq i32 %rem, 0
  br i1 %cmp100, label %if.then.102, label %if.end.105

if.then.102:                                      ; preds = %if.then.95
  %97 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %98 = load i32, i32* %pixels, align 4
  %conv103 = sitofp i32 %98 to double
  %99 = load i32, i32* %total, align 4
  %conv104 = sitofp i32 %99 to double
  %div = fdiv double %conv103, %conv104
  call void @gimp_progress_set_value(%struct._GimpProgress* %97, double %div)
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.102, %if.then.95
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %for.end.93
  br label %for.inc.107

for.inc.107:                                      ; preds = %if.end.106
  %100 = load i8*, i8** %pr, align 8
  %101 = bitcast i8* %100 to %struct._PixelRegionIterator*
  %call108 = call %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator* %101)
  %102 = bitcast %struct._PixelRegionIterator* %call108 to i8*
  store i8* %102, i8** %pr, align 8
  %103 = load i32, i32* %n, align 4
  %inc109 = add nsw i32 %103, 1
  store i32 %inc109, i32* %n, align 4
  br label %for.cond

for.end.110:                                      ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_transform_region_linear(%struct._TileManager* %orig_tiles, %struct._PixelRegion* %destPR, i32 %dest_x1, i32 %dest_y1, i32 %dest_x2, i32 %dest_y2, i32 %u1, i32 %v1, i32 %u2, i32 %v2, %struct._GimpMatrix3* %m, i32 %alpha, i32 %recursion_level, i8* %bg_color, %struct._GimpProgress* %progress) #0 {
entry:
  %orig_tiles.addr = alloca %struct._TileManager*, align 8
  %destPR.addr = alloca %struct._PixelRegion*, align 8
  %dest_x1.addr = alloca i32, align 4
  %dest_y1.addr = alloca i32, align 4
  %dest_x2.addr = alloca i32, align 4
  %dest_y2.addr = alloca i32, align 4
  %u1.addr = alloca i32, align 4
  %v1.addr = alloca i32, align 4
  %u2.addr = alloca i32, align 4
  %v2.addr = alloca i32, align 4
  %m.addr = alloca %struct._GimpMatrix3*, align 8
  %alpha.addr = alloca i32, align 4
  %recursion_level.addr = alloca i32, align 4
  %bg_color.addr = alloca i8*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %surround = alloca %struct._PixelSurround*, align 8
  %uinc = alloca double, align 8
  %vinc = alloca double, align 8
  %winc = alloca double, align 8
  %pixels = alloca i32, align 4
  %total = alloca i32, align 4
  %n = alloca i32, align 4
  %pr = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %y = alloca i32, align 4
  %d = alloca i8*, align 8
  %width = alloca i32, align 4
  %tu = alloca [5 x double], align 16
  %tv = alloca [5 x double], align 16
  %tw = alloca [5 x double], align 16
  %u = alloca [5 x double], align 16
  %v = alloca [5 x double], align 16
  %i = alloca i32, align 4
  store %struct._TileManager* %orig_tiles, %struct._TileManager** %orig_tiles.addr, align 8
  store %struct._PixelRegion* %destPR, %struct._PixelRegion** %destPR.addr, align 8
  store i32 %dest_x1, i32* %dest_x1.addr, align 4
  store i32 %dest_y1, i32* %dest_y1.addr, align 4
  store i32 %dest_x2, i32* %dest_x2.addr, align 4
  store i32 %dest_y2, i32* %dest_y2.addr, align 4
  store i32 %u1, i32* %u1.addr, align 4
  store i32 %v1, i32* %v1.addr, align 4
  store i32 %u2, i32* %u2.addr, align 4
  store i32 %v2, i32* %v2.addr, align 4
  store %struct._GimpMatrix3* %m, %struct._GimpMatrix3** %m.addr, align 8
  store i32 %alpha, i32* %alpha.addr, align 4
  store i32 %recursion_level, i32* %recursion_level.addr, align 4
  store i8* %bg_color, i8** %bg_color.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load %struct._TileManager*, %struct._TileManager** %orig_tiles.addr, align 8
  %call = call %struct._PixelSurround* @pixel_surround_new(%struct._TileManager* %0, i32 2, i32 2, i32 1)
  store %struct._PixelSurround* %call, %struct._PixelSurround** %surround, align 8
  %1 = load %struct._PixelSurround*, %struct._PixelSurround** %surround, align 8
  %2 = load i8*, i8** %bg_color.addr, align 8
  call void @pixel_surround_set_bg(%struct._PixelSurround* %1, i8* %2)
  %3 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %3, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff, i32 0, i64 0
  %arrayidx1 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx, i32 0, i64 0
  %4 = load double, double* %arrayidx1, align 8
  store double %4, double* %uinc, align 8
  %5 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff2 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %5, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff2, i32 0, i64 1
  %arrayidx4 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx3, i32 0, i64 0
  %6 = load double, double* %arrayidx4, align 8
  store double %6, double* %vinc, align 8
  %7 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff5 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %7, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff5, i32 0, i64 2
  %arrayidx7 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx6, i32 0, i64 0
  %8 = load double, double* %arrayidx7, align 8
  store double %8, double* %winc, align 8
  %9 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %9, i32 0, i32 8
  %10 = load i32, i32* %w, align 4
  %11 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %11, i32 0, i32 9
  %12 = load i32, i32* %h, align 4
  %mul = mul nsw i32 %10, %12
  store i32 %mul, i32* %total, align 4
  %13 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %call8 = call %struct._PixelRegionIterator* (i32, ...) @pixel_regions_register(i32 1, %struct._PixelRegion* %13)
  %14 = bitcast %struct._PixelRegionIterator* %call8 to i8*
  store i8* %14, i8** %pr, align 8
  store i32 0, i32* %pixels, align 4
  store i32 0, i32* %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.101, %entry
  %15 = load i8*, i8** %pr, align 8
  %cmp = icmp ne i8* %15, null
  br i1 %cmp, label %for.body, label %for.end.104

for.body:                                         ; preds = %for.cond
  %16 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %data = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %16, i32 0, i32 0
  %17 = load i8*, i8** %data, align 8
  store i8* %17, i8** %dest, align 8
  %18 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %y9 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %18, i32 0, i32 7
  %19 = load i32, i32* %y9, align 4
  store i32 %19, i32* %y, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.85, %for.body
  %20 = load i32, i32* %y, align 4
  %21 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %y11 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %21, i32 0, i32 7
  %22 = load i32, i32* %y11, align 4
  %23 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %h12 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %23, i32 0, i32 9
  %24 = load i32, i32* %h12, align 4
  %add = add nsw i32 %22, %24
  %cmp13 = icmp slt i32 %20, %add
  br i1 %cmp13, label %for.body.14, label %for.end.87

for.body.14:                                      ; preds = %for.cond.10
  %25 = load i8*, i8** %dest, align 8
  store i8* %25, i8** %d, align 8
  %26 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %w15 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %26, i32 0, i32 8
  %27 = load i32, i32* %w15, align 4
  store i32 %27, i32* %width, align 4
  %28 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %29 = load i32, i32* %dest_x1.addr, align 4
  %30 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %x = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %30, i32 0, i32 6
  %31 = load i32, i32* %x, align 4
  %add16 = add nsw i32 %29, %31
  %32 = load i32, i32* %dest_y1.addr, align 4
  %33 = load i32, i32* %y, align 4
  %add17 = add nsw i32 %32, %33
  %arraydecay = getelementptr inbounds [5 x double], [5 x double]* %tu, i32 0, i32 0
  %arraydecay18 = getelementptr inbounds [5 x double], [5 x double]* %tv, i32 0, i32 0
  %arraydecay19 = getelementptr inbounds [5 x double], [5 x double]* %tw, i32 0, i32 0
  call void @untransform_coords(%struct._GimpMatrix3* %28, i32 %add16, i32 %add17, double* %arraydecay, double* %arraydecay18, double* %arraydecay19)
  br label %while.cond

while.cond:                                       ; preds = %for.end, %for.body.14
  %34 = load i32, i32* %width, align 4
  %dec = add nsw i32 %34, -1
  store i32 %dec, i32* %width, align 4
  %tobool = icmp ne i32 %34, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay20 = getelementptr inbounds [5 x double], [5 x double]* %tu, i32 0, i32 0
  %arraydecay21 = getelementptr inbounds [5 x double], [5 x double]* %tv, i32 0, i32 0
  %arraydecay22 = getelementptr inbounds [5 x double], [5 x double]* %tw, i32 0, i32 0
  %arraydecay23 = getelementptr inbounds [5 x double], [5 x double]* %u, i32 0, i32 0
  %arraydecay24 = getelementptr inbounds [5 x double], [5 x double]* %v, i32 0, i32 0
  call void @normalize_coords(i32 5, double* %arraydecay20, double* %arraydecay21, double* %arraydecay22, double* %arraydecay23, double* %arraydecay24)
  %arrayidx25 = getelementptr inbounds [5 x double], [5 x double]* %u, i32 0, i64 1
  %35 = load double, double* %arrayidx25, align 8
  %arrayidx26 = getelementptr inbounds [5 x double], [5 x double]* %v, i32 0, i64 1
  %36 = load double, double* %arrayidx26, align 8
  %arrayidx27 = getelementptr inbounds [5 x double], [5 x double]* %u, i32 0, i64 2
  %37 = load double, double* %arrayidx27, align 8
  %arrayidx28 = getelementptr inbounds [5 x double], [5 x double]* %v, i32 0, i64 2
  %38 = load double, double* %arrayidx28, align 8
  %arrayidx29 = getelementptr inbounds [5 x double], [5 x double]* %u, i32 0, i64 3
  %39 = load double, double* %arrayidx29, align 8
  %arrayidx30 = getelementptr inbounds [5 x double], [5 x double]* %v, i32 0, i64 3
  %40 = load double, double* %arrayidx30, align 8
  %arrayidx31 = getelementptr inbounds [5 x double], [5 x double]* %u, i32 0, i64 4
  %41 = load double, double* %arrayidx31, align 8
  %arrayidx32 = getelementptr inbounds [5 x double], [5 x double]* %v, i32 0, i64 4
  %42 = load double, double* %arrayidx32, align 8
  %call33 = call i32 @supersample_dtest(double %35, double %36, double %37, double %38, double %39, double %40, double %41, double %42)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %43 = load %struct._TileManager*, %struct._TileManager** %orig_tiles.addr, align 8
  %arrayidx35 = getelementptr inbounds [5 x double], [5 x double]* %u, i32 0, i64 0
  %44 = load double, double* %arrayidx35, align 8
  %45 = load i32, i32* %u1.addr, align 4
  %conv = sitofp i32 %45 to double
  %sub = fsub double %44, %conv
  %arrayidx36 = getelementptr inbounds [5 x double], [5 x double]* %v, i32 0, i64 0
  %46 = load double, double* %arrayidx36, align 8
  %47 = load i32, i32* %v1.addr, align 4
  %conv37 = sitofp i32 %47 to double
  %sub38 = fsub double %46, %conv37
  %arrayidx39 = getelementptr inbounds [5 x double], [5 x double]* %u, i32 0, i64 1
  %48 = load double, double* %arrayidx39, align 8
  %49 = load i32, i32* %u1.addr, align 4
  %conv40 = sitofp i32 %49 to double
  %sub41 = fsub double %48, %conv40
  %arrayidx42 = getelementptr inbounds [5 x double], [5 x double]* %v, i32 0, i64 1
  %50 = load double, double* %arrayidx42, align 8
  %51 = load i32, i32* %v1.addr, align 4
  %conv43 = sitofp i32 %51 to double
  %sub44 = fsub double %50, %conv43
  %arrayidx45 = getelementptr inbounds [5 x double], [5 x double]* %u, i32 0, i64 2
  %52 = load double, double* %arrayidx45, align 8
  %53 = load i32, i32* %u1.addr, align 4
  %conv46 = sitofp i32 %53 to double
  %sub47 = fsub double %52, %conv46
  %arrayidx48 = getelementptr inbounds [5 x double], [5 x double]* %v, i32 0, i64 2
  %54 = load double, double* %arrayidx48, align 8
  %55 = load i32, i32* %v1.addr, align 4
  %conv49 = sitofp i32 %55 to double
  %sub50 = fsub double %54, %conv49
  %arrayidx51 = getelementptr inbounds [5 x double], [5 x double]* %u, i32 0, i64 3
  %56 = load double, double* %arrayidx51, align 8
  %57 = load i32, i32* %u1.addr, align 4
  %conv52 = sitofp i32 %57 to double
  %sub53 = fsub double %56, %conv52
  %arrayidx54 = getelementptr inbounds [5 x double], [5 x double]* %v, i32 0, i64 3
  %58 = load double, double* %arrayidx54, align 8
  %59 = load i32, i32* %v1.addr, align 4
  %conv55 = sitofp i32 %59 to double
  %sub56 = fsub double %58, %conv55
  %arrayidx57 = getelementptr inbounds [5 x double], [5 x double]* %u, i32 0, i64 4
  %60 = load double, double* %arrayidx57, align 8
  %61 = load i32, i32* %u1.addr, align 4
  %conv58 = sitofp i32 %61 to double
  %sub59 = fsub double %60, %conv58
  %arrayidx60 = getelementptr inbounds [5 x double], [5 x double]* %v, i32 0, i64 4
  %62 = load double, double* %arrayidx60, align 8
  %63 = load i32, i32* %v1.addr, align 4
  %conv61 = sitofp i32 %63 to double
  %sub62 = fsub double %62, %conv61
  %64 = load i32, i32* %recursion_level.addr, align 4
  %65 = load i8*, i8** %d, align 8
  %66 = load i8*, i8** %bg_color.addr, align 8
  %67 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %bytes = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %67, i32 0, i32 10
  %68 = load i32, i32* %bytes, align 4
  %69 = load i32, i32* %alpha.addr, align 4
  call void @sample_adapt(%struct._TileManager* %43, double %sub, double %sub38, double %sub41, double %sub44, double %sub47, double %sub50, double %sub53, double %sub56, double %sub59, double %sub62, i32 %64, i8* %65, i8* %66, i32 %68, i32 %69)
  br label %if.end

if.else:                                          ; preds = %while.body
  %70 = load %struct._PixelSurround*, %struct._PixelSurround** %surround, align 8
  %arrayidx63 = getelementptr inbounds [5 x double], [5 x double]* %u, i32 0, i64 0
  %71 = load double, double* %arrayidx63, align 8
  %72 = load i32, i32* %u1.addr, align 4
  %conv64 = sitofp i32 %72 to double
  %sub65 = fsub double %71, %conv64
  %arrayidx66 = getelementptr inbounds [5 x double], [5 x double]* %v, i32 0, i64 0
  %73 = load double, double* %arrayidx66, align 8
  %74 = load i32, i32* %v1.addr, align 4
  %conv67 = sitofp i32 %74 to double
  %sub68 = fsub double %73, %conv67
  %75 = load i8*, i8** %d, align 8
  %76 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %bytes69 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %76, i32 0, i32 10
  %77 = load i32, i32* %bytes69, align 4
  %78 = load i32, i32* %alpha.addr, align 4
  call void @sample_linear(%struct._PixelSurround* %70, double %sub65, double %sub68, i8* %75, i32 %77, i32 %78)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %79 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %bytes70 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %79, i32 0, i32 10
  %80 = load i32, i32* %bytes70, align 4
  %81 = load i8*, i8** %d, align 8
  %idx.ext = sext i32 %80 to i64
  %add.ptr = getelementptr inbounds i8, i8* %81, i64 %idx.ext
  store i8* %add.ptr, i8** %d, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc, %if.end
  %82 = load i32, i32* %i, align 4
  %cmp72 = icmp slt i32 %82, 5
  br i1 %cmp72, label %for.body.74, label %for.end

for.body.74:                                      ; preds = %for.cond.71
  %83 = load double, double* %uinc, align 8
  %84 = load i32, i32* %i, align 4
  %idxprom = sext i32 %84 to i64
  %arrayidx75 = getelementptr inbounds [5 x double], [5 x double]* %tu, i32 0, i64 %idxprom
  %85 = load double, double* %arrayidx75, align 8
  %add76 = fadd double %85, %83
  store double %add76, double* %arrayidx75, align 8
  %86 = load double, double* %vinc, align 8
  %87 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %87 to i64
  %arrayidx78 = getelementptr inbounds [5 x double], [5 x double]* %tv, i32 0, i64 %idxprom77
  %88 = load double, double* %arrayidx78, align 8
  %add79 = fadd double %88, %86
  store double %add79, double* %arrayidx78, align 8
  %89 = load double, double* %winc, align 8
  %90 = load i32, i32* %i, align 4
  %idxprom80 = sext i32 %90 to i64
  %arrayidx81 = getelementptr inbounds [5 x double], [5 x double]* %tw, i32 0, i64 %idxprom80
  %91 = load double, double* %arrayidx81, align 8
  %add82 = fadd double %91, %89
  store double %add82, double* %arrayidx81, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.74
  %92 = load i32, i32* %i, align 4
  %inc = add nsw i32 %92, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.71

for.end:                                          ; preds = %for.cond.71
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %93 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %rowstride = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %93, i32 0, i32 5
  %94 = load i32, i32* %rowstride, align 4
  %95 = load i8*, i8** %dest, align 8
  %idx.ext83 = sext i32 %94 to i64
  %add.ptr84 = getelementptr inbounds i8, i8* %95, i64 %idx.ext83
  store i8* %add.ptr84, i8** %dest, align 8
  br label %for.inc.85

for.inc.85:                                       ; preds = %while.end
  %96 = load i32, i32* %y, align 4
  %inc86 = add nsw i32 %96, 1
  store i32 %inc86, i32* %y, align 4
  br label %for.cond.10

for.end.87:                                       ; preds = %for.cond.10
  %97 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool88 = icmp ne %struct._GimpProgress* %97, null
  br i1 %tobool88, label %if.then.89, label %if.end.100

if.then.89:                                       ; preds = %for.end.87
  %98 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %w90 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %98, i32 0, i32 8
  %99 = load i32, i32* %w90, align 4
  %100 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %h91 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %100, i32 0, i32 9
  %101 = load i32, i32* %h91, align 4
  %mul92 = mul nsw i32 %99, %101
  %102 = load i32, i32* %pixels, align 4
  %add93 = add nsw i32 %102, %mul92
  store i32 %add93, i32* %pixels, align 4
  %103 = load i32, i32* %n, align 4
  %rem = srem i32 %103, 16
  %cmp94 = icmp eq i32 %rem, 0
  br i1 %cmp94, label %if.then.96, label %if.end.99

if.then.96:                                       ; preds = %if.then.89
  %104 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %105 = load i32, i32* %pixels, align 4
  %conv97 = sitofp i32 %105 to double
  %106 = load i32, i32* %total, align 4
  %conv98 = sitofp i32 %106 to double
  %div = fdiv double %conv97, %conv98
  call void @gimp_progress_set_value(%struct._GimpProgress* %104, double %div)
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.96, %if.then.89
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %for.end.87
  br label %for.inc.101

for.inc.101:                                      ; preds = %if.end.100
  %107 = load i8*, i8** %pr, align 8
  %108 = bitcast i8* %107 to %struct._PixelRegionIterator*
  %call102 = call %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator* %108)
  %109 = bitcast %struct._PixelRegionIterator* %call102 to i8*
  store i8* %109, i8** %pr, align 8
  %110 = load i32, i32* %n, align 4
  %inc103 = add nsw i32 %110, 1
  store i32 %inc103, i32* %n, align 4
  br label %for.cond

for.end.104:                                      ; preds = %for.cond
  %111 = load %struct._PixelSurround*, %struct._PixelSurround** %surround, align 8
  call void @pixel_surround_destroy(%struct._PixelSurround* %111)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_transform_region_cubic(%struct._TileManager* %orig_tiles, %struct._PixelRegion* %destPR, i32 %dest_x1, i32 %dest_y1, i32 %dest_x2, i32 %dest_y2, i32 %u1, i32 %v1, i32 %u2, i32 %v2, %struct._GimpMatrix3* %m, i32 %alpha, i32 %recursion_level, i8* %bg_color, %struct._GimpProgress* %progress) #0 {
entry:
  %orig_tiles.addr = alloca %struct._TileManager*, align 8
  %destPR.addr = alloca %struct._PixelRegion*, align 8
  %dest_x1.addr = alloca i32, align 4
  %dest_y1.addr = alloca i32, align 4
  %dest_x2.addr = alloca i32, align 4
  %dest_y2.addr = alloca i32, align 4
  %u1.addr = alloca i32, align 4
  %v1.addr = alloca i32, align 4
  %u2.addr = alloca i32, align 4
  %v2.addr = alloca i32, align 4
  %m.addr = alloca %struct._GimpMatrix3*, align 8
  %alpha.addr = alloca i32, align 4
  %recursion_level.addr = alloca i32, align 4
  %bg_color.addr = alloca i8*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %surround = alloca %struct._PixelSurround*, align 8
  %uinc = alloca double, align 8
  %vinc = alloca double, align 8
  %winc = alloca double, align 8
  %pixels = alloca i32, align 4
  %total = alloca i32, align 4
  %n = alloca i32, align 4
  %pr = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %y = alloca i32, align 4
  %d = alloca i8*, align 8
  %width = alloca i32, align 4
  %tu = alloca [5 x double], align 16
  %tv = alloca [5 x double], align 16
  %tw = alloca [5 x double], align 16
  %u = alloca [5 x double], align 16
  %v = alloca [5 x double], align 16
  %i = alloca i32, align 4
  store %struct._TileManager* %orig_tiles, %struct._TileManager** %orig_tiles.addr, align 8
  store %struct._PixelRegion* %destPR, %struct._PixelRegion** %destPR.addr, align 8
  store i32 %dest_x1, i32* %dest_x1.addr, align 4
  store i32 %dest_y1, i32* %dest_y1.addr, align 4
  store i32 %dest_x2, i32* %dest_x2.addr, align 4
  store i32 %dest_y2, i32* %dest_y2.addr, align 4
  store i32 %u1, i32* %u1.addr, align 4
  store i32 %v1, i32* %v1.addr, align 4
  store i32 %u2, i32* %u2.addr, align 4
  store i32 %v2, i32* %v2.addr, align 4
  store %struct._GimpMatrix3* %m, %struct._GimpMatrix3** %m.addr, align 8
  store i32 %alpha, i32* %alpha.addr, align 4
  store i32 %recursion_level, i32* %recursion_level.addr, align 4
  store i8* %bg_color, i8** %bg_color.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load %struct._TileManager*, %struct._TileManager** %orig_tiles.addr, align 8
  %call = call %struct._PixelSurround* @pixel_surround_new(%struct._TileManager* %0, i32 4, i32 4, i32 1)
  store %struct._PixelSurround* %call, %struct._PixelSurround** %surround, align 8
  %1 = load %struct._PixelSurround*, %struct._PixelSurround** %surround, align 8
  %2 = load i8*, i8** %bg_color.addr, align 8
  call void @pixel_surround_set_bg(%struct._PixelSurround* %1, i8* %2)
  %3 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %3, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff, i32 0, i64 0
  %arrayidx1 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx, i32 0, i64 0
  %4 = load double, double* %arrayidx1, align 8
  store double %4, double* %uinc, align 8
  %5 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff2 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %5, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff2, i32 0, i64 1
  %arrayidx4 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx3, i32 0, i64 0
  %6 = load double, double* %arrayidx4, align 8
  store double %6, double* %vinc, align 8
  %7 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff5 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %7, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff5, i32 0, i64 2
  %arrayidx7 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx6, i32 0, i64 0
  %8 = load double, double* %arrayidx7, align 8
  store double %8, double* %winc, align 8
  %9 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %9, i32 0, i32 8
  %10 = load i32, i32* %w, align 4
  %11 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %11, i32 0, i32 9
  %12 = load i32, i32* %h, align 4
  %mul = mul nsw i32 %10, %12
  store i32 %mul, i32* %total, align 4
  %13 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %call8 = call %struct._PixelRegionIterator* (i32, ...) @pixel_regions_register(i32 1, %struct._PixelRegion* %13)
  %14 = bitcast %struct._PixelRegionIterator* %call8 to i8*
  store i8* %14, i8** %pr, align 8
  store i32 0, i32* %pixels, align 4
  store i32 0, i32* %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.101, %entry
  %15 = load i8*, i8** %pr, align 8
  %cmp = icmp ne i8* %15, null
  br i1 %cmp, label %for.body, label %for.end.104

for.body:                                         ; preds = %for.cond
  %16 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %data = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %16, i32 0, i32 0
  %17 = load i8*, i8** %data, align 8
  store i8* %17, i8** %dest, align 8
  %18 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %y9 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %18, i32 0, i32 7
  %19 = load i32, i32* %y9, align 4
  store i32 %19, i32* %y, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.85, %for.body
  %20 = load i32, i32* %y, align 4
  %21 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %y11 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %21, i32 0, i32 7
  %22 = load i32, i32* %y11, align 4
  %23 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %h12 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %23, i32 0, i32 9
  %24 = load i32, i32* %h12, align 4
  %add = add nsw i32 %22, %24
  %cmp13 = icmp slt i32 %20, %add
  br i1 %cmp13, label %for.body.14, label %for.end.87

for.body.14:                                      ; preds = %for.cond.10
  %25 = load i8*, i8** %dest, align 8
  store i8* %25, i8** %d, align 8
  %26 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %w15 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %26, i32 0, i32 8
  %27 = load i32, i32* %w15, align 4
  store i32 %27, i32* %width, align 4
  %28 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %29 = load i32, i32* %dest_x1.addr, align 4
  %30 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %x = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %30, i32 0, i32 6
  %31 = load i32, i32* %x, align 4
  %add16 = add nsw i32 %29, %31
  %32 = load i32, i32* %dest_y1.addr, align 4
  %33 = load i32, i32* %y, align 4
  %add17 = add nsw i32 %32, %33
  %arraydecay = getelementptr inbounds [5 x double], [5 x double]* %tu, i32 0, i32 0
  %arraydecay18 = getelementptr inbounds [5 x double], [5 x double]* %tv, i32 0, i32 0
  %arraydecay19 = getelementptr inbounds [5 x double], [5 x double]* %tw, i32 0, i32 0
  call void @untransform_coords(%struct._GimpMatrix3* %28, i32 %add16, i32 %add17, double* %arraydecay, double* %arraydecay18, double* %arraydecay19)
  br label %while.cond

while.cond:                                       ; preds = %for.end, %for.body.14
  %34 = load i32, i32* %width, align 4
  %dec = add nsw i32 %34, -1
  store i32 %dec, i32* %width, align 4
  %tobool = icmp ne i32 %34, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay20 = getelementptr inbounds [5 x double], [5 x double]* %tu, i32 0, i32 0
  %arraydecay21 = getelementptr inbounds [5 x double], [5 x double]* %tv, i32 0, i32 0
  %arraydecay22 = getelementptr inbounds [5 x double], [5 x double]* %tw, i32 0, i32 0
  %arraydecay23 = getelementptr inbounds [5 x double], [5 x double]* %u, i32 0, i32 0
  %arraydecay24 = getelementptr inbounds [5 x double], [5 x double]* %v, i32 0, i32 0
  call void @normalize_coords(i32 5, double* %arraydecay20, double* %arraydecay21, double* %arraydecay22, double* %arraydecay23, double* %arraydecay24)
  %arrayidx25 = getelementptr inbounds [5 x double], [5 x double]* %u, i32 0, i64 1
  %35 = load double, double* %arrayidx25, align 8
  %arrayidx26 = getelementptr inbounds [5 x double], [5 x double]* %v, i32 0, i64 1
  %36 = load double, double* %arrayidx26, align 8
  %arrayidx27 = getelementptr inbounds [5 x double], [5 x double]* %u, i32 0, i64 2
  %37 = load double, double* %arrayidx27, align 8
  %arrayidx28 = getelementptr inbounds [5 x double], [5 x double]* %v, i32 0, i64 2
  %38 = load double, double* %arrayidx28, align 8
  %arrayidx29 = getelementptr inbounds [5 x double], [5 x double]* %u, i32 0, i64 3
  %39 = load double, double* %arrayidx29, align 8
  %arrayidx30 = getelementptr inbounds [5 x double], [5 x double]* %v, i32 0, i64 3
  %40 = load double, double* %arrayidx30, align 8
  %arrayidx31 = getelementptr inbounds [5 x double], [5 x double]* %u, i32 0, i64 4
  %41 = load double, double* %arrayidx31, align 8
  %arrayidx32 = getelementptr inbounds [5 x double], [5 x double]* %v, i32 0, i64 4
  %42 = load double, double* %arrayidx32, align 8
  %call33 = call i32 @supersample_dtest(double %35, double %36, double %37, double %38, double %39, double %40, double %41, double %42)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %43 = load %struct._TileManager*, %struct._TileManager** %orig_tiles.addr, align 8
  %arrayidx35 = getelementptr inbounds [5 x double], [5 x double]* %u, i32 0, i64 0
  %44 = load double, double* %arrayidx35, align 8
  %45 = load i32, i32* %u1.addr, align 4
  %conv = sitofp i32 %45 to double
  %sub = fsub double %44, %conv
  %arrayidx36 = getelementptr inbounds [5 x double], [5 x double]* %v, i32 0, i64 0
  %46 = load double, double* %arrayidx36, align 8
  %47 = load i32, i32* %v1.addr, align 4
  %conv37 = sitofp i32 %47 to double
  %sub38 = fsub double %46, %conv37
  %arrayidx39 = getelementptr inbounds [5 x double], [5 x double]* %u, i32 0, i64 1
  %48 = load double, double* %arrayidx39, align 8
  %49 = load i32, i32* %u1.addr, align 4
  %conv40 = sitofp i32 %49 to double
  %sub41 = fsub double %48, %conv40
  %arrayidx42 = getelementptr inbounds [5 x double], [5 x double]* %v, i32 0, i64 1
  %50 = load double, double* %arrayidx42, align 8
  %51 = load i32, i32* %v1.addr, align 4
  %conv43 = sitofp i32 %51 to double
  %sub44 = fsub double %50, %conv43
  %arrayidx45 = getelementptr inbounds [5 x double], [5 x double]* %u, i32 0, i64 2
  %52 = load double, double* %arrayidx45, align 8
  %53 = load i32, i32* %u1.addr, align 4
  %conv46 = sitofp i32 %53 to double
  %sub47 = fsub double %52, %conv46
  %arrayidx48 = getelementptr inbounds [5 x double], [5 x double]* %v, i32 0, i64 2
  %54 = load double, double* %arrayidx48, align 8
  %55 = load i32, i32* %v1.addr, align 4
  %conv49 = sitofp i32 %55 to double
  %sub50 = fsub double %54, %conv49
  %arrayidx51 = getelementptr inbounds [5 x double], [5 x double]* %u, i32 0, i64 3
  %56 = load double, double* %arrayidx51, align 8
  %57 = load i32, i32* %u1.addr, align 4
  %conv52 = sitofp i32 %57 to double
  %sub53 = fsub double %56, %conv52
  %arrayidx54 = getelementptr inbounds [5 x double], [5 x double]* %v, i32 0, i64 3
  %58 = load double, double* %arrayidx54, align 8
  %59 = load i32, i32* %v1.addr, align 4
  %conv55 = sitofp i32 %59 to double
  %sub56 = fsub double %58, %conv55
  %arrayidx57 = getelementptr inbounds [5 x double], [5 x double]* %u, i32 0, i64 4
  %60 = load double, double* %arrayidx57, align 8
  %61 = load i32, i32* %u1.addr, align 4
  %conv58 = sitofp i32 %61 to double
  %sub59 = fsub double %60, %conv58
  %arrayidx60 = getelementptr inbounds [5 x double], [5 x double]* %v, i32 0, i64 4
  %62 = load double, double* %arrayidx60, align 8
  %63 = load i32, i32* %v1.addr, align 4
  %conv61 = sitofp i32 %63 to double
  %sub62 = fsub double %62, %conv61
  %64 = load i32, i32* %recursion_level.addr, align 4
  %65 = load i8*, i8** %d, align 8
  %66 = load i8*, i8** %bg_color.addr, align 8
  %67 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %bytes = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %67, i32 0, i32 10
  %68 = load i32, i32* %bytes, align 4
  %69 = load i32, i32* %alpha.addr, align 4
  call void @sample_adapt(%struct._TileManager* %43, double %sub, double %sub38, double %sub41, double %sub44, double %sub47, double %sub50, double %sub53, double %sub56, double %sub59, double %sub62, i32 %64, i8* %65, i8* %66, i32 %68, i32 %69)
  br label %if.end

if.else:                                          ; preds = %while.body
  %70 = load %struct._PixelSurround*, %struct._PixelSurround** %surround, align 8
  %arrayidx63 = getelementptr inbounds [5 x double], [5 x double]* %u, i32 0, i64 0
  %71 = load double, double* %arrayidx63, align 8
  %72 = load i32, i32* %u1.addr, align 4
  %conv64 = sitofp i32 %72 to double
  %sub65 = fsub double %71, %conv64
  %arrayidx66 = getelementptr inbounds [5 x double], [5 x double]* %v, i32 0, i64 0
  %73 = load double, double* %arrayidx66, align 8
  %74 = load i32, i32* %v1.addr, align 4
  %conv67 = sitofp i32 %74 to double
  %sub68 = fsub double %73, %conv67
  %75 = load i8*, i8** %d, align 8
  %76 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %bytes69 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %76, i32 0, i32 10
  %77 = load i32, i32* %bytes69, align 4
  %78 = load i32, i32* %alpha.addr, align 4
  call void @sample_cubic(%struct._PixelSurround* %70, double %sub65, double %sub68, i8* %75, i32 %77, i32 %78)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %79 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %bytes70 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %79, i32 0, i32 10
  %80 = load i32, i32* %bytes70, align 4
  %81 = load i8*, i8** %d, align 8
  %idx.ext = sext i32 %80 to i64
  %add.ptr = getelementptr inbounds i8, i8* %81, i64 %idx.ext
  store i8* %add.ptr, i8** %d, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc, %if.end
  %82 = load i32, i32* %i, align 4
  %cmp72 = icmp slt i32 %82, 5
  br i1 %cmp72, label %for.body.74, label %for.end

for.body.74:                                      ; preds = %for.cond.71
  %83 = load double, double* %uinc, align 8
  %84 = load i32, i32* %i, align 4
  %idxprom = sext i32 %84 to i64
  %arrayidx75 = getelementptr inbounds [5 x double], [5 x double]* %tu, i32 0, i64 %idxprom
  %85 = load double, double* %arrayidx75, align 8
  %add76 = fadd double %85, %83
  store double %add76, double* %arrayidx75, align 8
  %86 = load double, double* %vinc, align 8
  %87 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %87 to i64
  %arrayidx78 = getelementptr inbounds [5 x double], [5 x double]* %tv, i32 0, i64 %idxprom77
  %88 = load double, double* %arrayidx78, align 8
  %add79 = fadd double %88, %86
  store double %add79, double* %arrayidx78, align 8
  %89 = load double, double* %winc, align 8
  %90 = load i32, i32* %i, align 4
  %idxprom80 = sext i32 %90 to i64
  %arrayidx81 = getelementptr inbounds [5 x double], [5 x double]* %tw, i32 0, i64 %idxprom80
  %91 = load double, double* %arrayidx81, align 8
  %add82 = fadd double %91, %89
  store double %add82, double* %arrayidx81, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.74
  %92 = load i32, i32* %i, align 4
  %inc = add nsw i32 %92, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.71

for.end:                                          ; preds = %for.cond.71
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %93 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %rowstride = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %93, i32 0, i32 5
  %94 = load i32, i32* %rowstride, align 4
  %95 = load i8*, i8** %dest, align 8
  %idx.ext83 = sext i32 %94 to i64
  %add.ptr84 = getelementptr inbounds i8, i8* %95, i64 %idx.ext83
  store i8* %add.ptr84, i8** %dest, align 8
  br label %for.inc.85

for.inc.85:                                       ; preds = %while.end
  %96 = load i32, i32* %y, align 4
  %inc86 = add nsw i32 %96, 1
  store i32 %inc86, i32* %y, align 4
  br label %for.cond.10

for.end.87:                                       ; preds = %for.cond.10
  %97 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool88 = icmp ne %struct._GimpProgress* %97, null
  br i1 %tobool88, label %if.then.89, label %if.end.100

if.then.89:                                       ; preds = %for.end.87
  %98 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %w90 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %98, i32 0, i32 8
  %99 = load i32, i32* %w90, align 4
  %100 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %h91 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %100, i32 0, i32 9
  %101 = load i32, i32* %h91, align 4
  %mul92 = mul nsw i32 %99, %101
  %102 = load i32, i32* %pixels, align 4
  %add93 = add nsw i32 %102, %mul92
  store i32 %add93, i32* %pixels, align 4
  %103 = load i32, i32* %n, align 4
  %rem = srem i32 %103, 16
  %cmp94 = icmp eq i32 %rem, 0
  br i1 %cmp94, label %if.then.96, label %if.end.99

if.then.96:                                       ; preds = %if.then.89
  %104 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %105 = load i32, i32* %pixels, align 4
  %conv97 = sitofp i32 %105 to double
  %106 = load i32, i32* %total, align 4
  %conv98 = sitofp i32 %106 to double
  %div = fdiv double %conv97, %conv98
  call void @gimp_progress_set_value(%struct._GimpProgress* %104, double %div)
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.96, %if.then.89
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %for.end.87
  br label %for.inc.101

for.inc.101:                                      ; preds = %if.end.100
  %107 = load i8*, i8** %pr, align 8
  %108 = bitcast i8* %107 to %struct._PixelRegionIterator*
  %call102 = call %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator* %108)
  %109 = bitcast %struct._PixelRegionIterator* %call102 to i8*
  store i8* %109, i8** %pr, align 8
  %110 = load i32, i32* %n, align 4
  %inc103 = add nsw i32 %110, 1
  store i32 %inc103, i32* %n, align 4
  br label %for.cond

for.end.104:                                      ; preds = %for.cond
  %111 = load %struct._PixelSurround*, %struct._PixelSurround** %surround, align 8
  call void @pixel_surround_destroy(%struct._PixelSurround* %111)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_transform_region_lanczos(%struct._TileManager* %orig_tiles, %struct._PixelRegion* %destPR, i32 %dest_x1, i32 %dest_y1, i32 %dest_x2, i32 %dest_y2, i32 %u1, i32 %v1, i32 %u2, i32 %v2, %struct._GimpMatrix3* %m, i32 %alpha, i32 %recursion_level, i8* %bg_color, %struct._GimpProgress* %progress) #0 {
entry:
  %orig_tiles.addr = alloca %struct._TileManager*, align 8
  %destPR.addr = alloca %struct._PixelRegion*, align 8
  %dest_x1.addr = alloca i32, align 4
  %dest_y1.addr = alloca i32, align 4
  %dest_x2.addr = alloca i32, align 4
  %dest_y2.addr = alloca i32, align 4
  %u1.addr = alloca i32, align 4
  %v1.addr = alloca i32, align 4
  %u2.addr = alloca i32, align 4
  %v2.addr = alloca i32, align 4
  %m.addr = alloca %struct._GimpMatrix3*, align 8
  %alpha.addr = alloca i32, align 4
  %recursion_level.addr = alloca i32, align 4
  %bg_color.addr = alloca i8*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %surround = alloca %struct._PixelSurround*, align 8
  %lanczos = alloca float*, align 8
  %uinc = alloca double, align 8
  %vinc = alloca double, align 8
  %winc = alloca double, align 8
  %pixels = alloca i32, align 4
  %total = alloca i32, align 4
  %n = alloca i32, align 4
  %pr = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %y = alloca i32, align 4
  %d = alloca i8*, align 8
  %width = alloca i32, align 4
  %tu = alloca [5 x double], align 16
  %tv = alloca [5 x double], align 16
  %tw = alloca [5 x double], align 16
  %u = alloca [5 x double], align 16
  %v = alloca [5 x double], align 16
  %i = alloca i32, align 4
  store %struct._TileManager* %orig_tiles, %struct._TileManager** %orig_tiles.addr, align 8
  store %struct._PixelRegion* %destPR, %struct._PixelRegion** %destPR.addr, align 8
  store i32 %dest_x1, i32* %dest_x1.addr, align 4
  store i32 %dest_y1, i32* %dest_y1.addr, align 4
  store i32 %dest_x2, i32* %dest_x2.addr, align 4
  store i32 %dest_y2, i32* %dest_y2.addr, align 4
  store i32 %u1, i32* %u1.addr, align 4
  store i32 %v1, i32* %v1.addr, align 4
  store i32 %u2, i32* %u2.addr, align 4
  store i32 %v2, i32* %v2.addr, align 4
  store %struct._GimpMatrix3* %m, %struct._GimpMatrix3** %m.addr, align 8
  store i32 %alpha, i32* %alpha.addr, align 4
  store i32 %recursion_level, i32* %recursion_level.addr, align 4
  store i8* %bg_color, i8** %bg_color.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load %struct._TileManager*, %struct._TileManager** %orig_tiles.addr, align 8
  %call = call %struct._PixelSurround* @pixel_surround_new(%struct._TileManager* %0, i32 7, i32 7, i32 1)
  store %struct._PixelSurround* %call, %struct._PixelSurround** %surround, align 8
  %1 = load %struct._PixelSurround*, %struct._PixelSurround** %surround, align 8
  %2 = load i8*, i8** %bg_color.addr, align 8
  call void @pixel_surround_set_bg(%struct._PixelSurround* %1, i8* %2)
  %call1 = call float* @create_lanczos_lookup()
  store float* %call1, float** %lanczos, align 8
  %3 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %3, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff, i32 0, i64 0
  %arrayidx2 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx, i32 0, i64 0
  %4 = load double, double* %arrayidx2, align 8
  store double %4, double* %uinc, align 8
  %5 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff3 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %5, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff3, i32 0, i64 1
  %arrayidx5 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx4, i32 0, i64 0
  %6 = load double, double* %arrayidx5, align 8
  store double %6, double* %vinc, align 8
  %7 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff6 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %7, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff6, i32 0, i64 2
  %arrayidx8 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx7, i32 0, i64 0
  %8 = load double, double* %arrayidx8, align 8
  store double %8, double* %winc, align 8
  %9 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %9, i32 0, i32 8
  %10 = load i32, i32* %w, align 4
  %11 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %11, i32 0, i32 9
  %12 = load i32, i32* %h, align 4
  %mul = mul nsw i32 %10, %12
  store i32 %mul, i32* %total, align 4
  %13 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %call9 = call %struct._PixelRegionIterator* (i32, ...) @pixel_regions_register(i32 1, %struct._PixelRegion* %13)
  %14 = bitcast %struct._PixelRegionIterator* %call9 to i8*
  store i8* %14, i8** %pr, align 8
  store i32 0, i32* %pixels, align 4
  store i32 0, i32* %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.102, %entry
  %15 = load i8*, i8** %pr, align 8
  %cmp = icmp ne i8* %15, null
  br i1 %cmp, label %for.body, label %for.end.105

for.body:                                         ; preds = %for.cond
  %16 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %data = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %16, i32 0, i32 0
  %17 = load i8*, i8** %data, align 8
  store i8* %17, i8** %dest, align 8
  %18 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %y10 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %18, i32 0, i32 7
  %19 = load i32, i32* %y10, align 4
  store i32 %19, i32* %y, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.86, %for.body
  %20 = load i32, i32* %y, align 4
  %21 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %y12 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %21, i32 0, i32 7
  %22 = load i32, i32* %y12, align 4
  %23 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %h13 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %23, i32 0, i32 9
  %24 = load i32, i32* %h13, align 4
  %add = add nsw i32 %22, %24
  %cmp14 = icmp slt i32 %20, %add
  br i1 %cmp14, label %for.body.15, label %for.end.88

for.body.15:                                      ; preds = %for.cond.11
  %25 = load i8*, i8** %dest, align 8
  store i8* %25, i8** %d, align 8
  %26 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %w16 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %26, i32 0, i32 8
  %27 = load i32, i32* %w16, align 4
  store i32 %27, i32* %width, align 4
  %28 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %29 = load i32, i32* %dest_x1.addr, align 4
  %30 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %x = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %30, i32 0, i32 6
  %31 = load i32, i32* %x, align 4
  %add17 = add nsw i32 %29, %31
  %32 = load i32, i32* %dest_y1.addr, align 4
  %33 = load i32, i32* %y, align 4
  %add18 = add nsw i32 %32, %33
  %arraydecay = getelementptr inbounds [5 x double], [5 x double]* %tu, i32 0, i32 0
  %arraydecay19 = getelementptr inbounds [5 x double], [5 x double]* %tv, i32 0, i32 0
  %arraydecay20 = getelementptr inbounds [5 x double], [5 x double]* %tw, i32 0, i32 0
  call void @untransform_coords(%struct._GimpMatrix3* %28, i32 %add17, i32 %add18, double* %arraydecay, double* %arraydecay19, double* %arraydecay20)
  br label %while.cond

while.cond:                                       ; preds = %for.end, %for.body.15
  %34 = load i32, i32* %width, align 4
  %dec = add nsw i32 %34, -1
  store i32 %dec, i32* %width, align 4
  %tobool = icmp ne i32 %34, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay21 = getelementptr inbounds [5 x double], [5 x double]* %tu, i32 0, i32 0
  %arraydecay22 = getelementptr inbounds [5 x double], [5 x double]* %tv, i32 0, i32 0
  %arraydecay23 = getelementptr inbounds [5 x double], [5 x double]* %tw, i32 0, i32 0
  %arraydecay24 = getelementptr inbounds [5 x double], [5 x double]* %u, i32 0, i32 0
  %arraydecay25 = getelementptr inbounds [5 x double], [5 x double]* %v, i32 0, i32 0
  call void @normalize_coords(i32 5, double* %arraydecay21, double* %arraydecay22, double* %arraydecay23, double* %arraydecay24, double* %arraydecay25)
  %arrayidx26 = getelementptr inbounds [5 x double], [5 x double]* %u, i32 0, i64 1
  %35 = load double, double* %arrayidx26, align 8
  %arrayidx27 = getelementptr inbounds [5 x double], [5 x double]* %v, i32 0, i64 1
  %36 = load double, double* %arrayidx27, align 8
  %arrayidx28 = getelementptr inbounds [5 x double], [5 x double]* %u, i32 0, i64 2
  %37 = load double, double* %arrayidx28, align 8
  %arrayidx29 = getelementptr inbounds [5 x double], [5 x double]* %v, i32 0, i64 2
  %38 = load double, double* %arrayidx29, align 8
  %arrayidx30 = getelementptr inbounds [5 x double], [5 x double]* %u, i32 0, i64 3
  %39 = load double, double* %arrayidx30, align 8
  %arrayidx31 = getelementptr inbounds [5 x double], [5 x double]* %v, i32 0, i64 3
  %40 = load double, double* %arrayidx31, align 8
  %arrayidx32 = getelementptr inbounds [5 x double], [5 x double]* %u, i32 0, i64 4
  %41 = load double, double* %arrayidx32, align 8
  %arrayidx33 = getelementptr inbounds [5 x double], [5 x double]* %v, i32 0, i64 4
  %42 = load double, double* %arrayidx33, align 8
  %call34 = call i32 @supersample_dtest(double %35, double %36, double %37, double %38, double %39, double %40, double %41, double %42)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %43 = load %struct._TileManager*, %struct._TileManager** %orig_tiles.addr, align 8
  %arrayidx36 = getelementptr inbounds [5 x double], [5 x double]* %u, i32 0, i64 0
  %44 = load double, double* %arrayidx36, align 8
  %45 = load i32, i32* %u1.addr, align 4
  %conv = sitofp i32 %45 to double
  %sub = fsub double %44, %conv
  %arrayidx37 = getelementptr inbounds [5 x double], [5 x double]* %v, i32 0, i64 0
  %46 = load double, double* %arrayidx37, align 8
  %47 = load i32, i32* %v1.addr, align 4
  %conv38 = sitofp i32 %47 to double
  %sub39 = fsub double %46, %conv38
  %arrayidx40 = getelementptr inbounds [5 x double], [5 x double]* %u, i32 0, i64 1
  %48 = load double, double* %arrayidx40, align 8
  %49 = load i32, i32* %u1.addr, align 4
  %conv41 = sitofp i32 %49 to double
  %sub42 = fsub double %48, %conv41
  %arrayidx43 = getelementptr inbounds [5 x double], [5 x double]* %v, i32 0, i64 1
  %50 = load double, double* %arrayidx43, align 8
  %51 = load i32, i32* %v1.addr, align 4
  %conv44 = sitofp i32 %51 to double
  %sub45 = fsub double %50, %conv44
  %arrayidx46 = getelementptr inbounds [5 x double], [5 x double]* %u, i32 0, i64 2
  %52 = load double, double* %arrayidx46, align 8
  %53 = load i32, i32* %u1.addr, align 4
  %conv47 = sitofp i32 %53 to double
  %sub48 = fsub double %52, %conv47
  %arrayidx49 = getelementptr inbounds [5 x double], [5 x double]* %v, i32 0, i64 2
  %54 = load double, double* %arrayidx49, align 8
  %55 = load i32, i32* %v1.addr, align 4
  %conv50 = sitofp i32 %55 to double
  %sub51 = fsub double %54, %conv50
  %arrayidx52 = getelementptr inbounds [5 x double], [5 x double]* %u, i32 0, i64 3
  %56 = load double, double* %arrayidx52, align 8
  %57 = load i32, i32* %u1.addr, align 4
  %conv53 = sitofp i32 %57 to double
  %sub54 = fsub double %56, %conv53
  %arrayidx55 = getelementptr inbounds [5 x double], [5 x double]* %v, i32 0, i64 3
  %58 = load double, double* %arrayidx55, align 8
  %59 = load i32, i32* %v1.addr, align 4
  %conv56 = sitofp i32 %59 to double
  %sub57 = fsub double %58, %conv56
  %arrayidx58 = getelementptr inbounds [5 x double], [5 x double]* %u, i32 0, i64 4
  %60 = load double, double* %arrayidx58, align 8
  %61 = load i32, i32* %u1.addr, align 4
  %conv59 = sitofp i32 %61 to double
  %sub60 = fsub double %60, %conv59
  %arrayidx61 = getelementptr inbounds [5 x double], [5 x double]* %v, i32 0, i64 4
  %62 = load double, double* %arrayidx61, align 8
  %63 = load i32, i32* %v1.addr, align 4
  %conv62 = sitofp i32 %63 to double
  %sub63 = fsub double %62, %conv62
  %64 = load i32, i32* %recursion_level.addr, align 4
  %65 = load i8*, i8** %d, align 8
  %66 = load i8*, i8** %bg_color.addr, align 8
  %67 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %bytes = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %67, i32 0, i32 10
  %68 = load i32, i32* %bytes, align 4
  %69 = load i32, i32* %alpha.addr, align 4
  call void @sample_adapt(%struct._TileManager* %43, double %sub, double %sub39, double %sub42, double %sub45, double %sub48, double %sub51, double %sub54, double %sub57, double %sub60, double %sub63, i32 %64, i8* %65, i8* %66, i32 %68, i32 %69)
  br label %if.end

if.else:                                          ; preds = %while.body
  %70 = load %struct._PixelSurround*, %struct._PixelSurround** %surround, align 8
  %71 = load float*, float** %lanczos, align 8
  %arrayidx64 = getelementptr inbounds [5 x double], [5 x double]* %u, i32 0, i64 0
  %72 = load double, double* %arrayidx64, align 8
  %73 = load i32, i32* %u1.addr, align 4
  %conv65 = sitofp i32 %73 to double
  %sub66 = fsub double %72, %conv65
  %arrayidx67 = getelementptr inbounds [5 x double], [5 x double]* %v, i32 0, i64 0
  %74 = load double, double* %arrayidx67, align 8
  %75 = load i32, i32* %v1.addr, align 4
  %conv68 = sitofp i32 %75 to double
  %sub69 = fsub double %74, %conv68
  %76 = load i8*, i8** %d, align 8
  %77 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %bytes70 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %77, i32 0, i32 10
  %78 = load i32, i32* %bytes70, align 4
  %79 = load i32, i32* %alpha.addr, align 4
  call void @sample_lanczos(%struct._PixelSurround* %70, float* %71, double %sub66, double %sub69, i8* %76, i32 %78, i32 %79)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %80 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %bytes71 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %80, i32 0, i32 10
  %81 = load i32, i32* %bytes71, align 4
  %82 = load i8*, i8** %d, align 8
  %idx.ext = sext i32 %81 to i64
  %add.ptr = getelementptr inbounds i8, i8* %82, i64 %idx.ext
  store i8* %add.ptr, i8** %d, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.72

for.cond.72:                                      ; preds = %for.inc, %if.end
  %83 = load i32, i32* %i, align 4
  %cmp73 = icmp slt i32 %83, 5
  br i1 %cmp73, label %for.body.75, label %for.end

for.body.75:                                      ; preds = %for.cond.72
  %84 = load double, double* %uinc, align 8
  %85 = load i32, i32* %i, align 4
  %idxprom = sext i32 %85 to i64
  %arrayidx76 = getelementptr inbounds [5 x double], [5 x double]* %tu, i32 0, i64 %idxprom
  %86 = load double, double* %arrayidx76, align 8
  %add77 = fadd double %86, %84
  store double %add77, double* %arrayidx76, align 8
  %87 = load double, double* %vinc, align 8
  %88 = load i32, i32* %i, align 4
  %idxprom78 = sext i32 %88 to i64
  %arrayidx79 = getelementptr inbounds [5 x double], [5 x double]* %tv, i32 0, i64 %idxprom78
  %89 = load double, double* %arrayidx79, align 8
  %add80 = fadd double %89, %87
  store double %add80, double* %arrayidx79, align 8
  %90 = load double, double* %winc, align 8
  %91 = load i32, i32* %i, align 4
  %idxprom81 = sext i32 %91 to i64
  %arrayidx82 = getelementptr inbounds [5 x double], [5 x double]* %tw, i32 0, i64 %idxprom81
  %92 = load double, double* %arrayidx82, align 8
  %add83 = fadd double %92, %90
  store double %add83, double* %arrayidx82, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.75
  %93 = load i32, i32* %i, align 4
  %inc = add nsw i32 %93, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.72

for.end:                                          ; preds = %for.cond.72
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %94 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %rowstride = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %94, i32 0, i32 5
  %95 = load i32, i32* %rowstride, align 4
  %96 = load i8*, i8** %dest, align 8
  %idx.ext84 = sext i32 %95 to i64
  %add.ptr85 = getelementptr inbounds i8, i8* %96, i64 %idx.ext84
  store i8* %add.ptr85, i8** %dest, align 8
  br label %for.inc.86

for.inc.86:                                       ; preds = %while.end
  %97 = load i32, i32* %y, align 4
  %inc87 = add nsw i32 %97, 1
  store i32 %inc87, i32* %y, align 4
  br label %for.cond.11

for.end.88:                                       ; preds = %for.cond.11
  %98 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool89 = icmp ne %struct._GimpProgress* %98, null
  br i1 %tobool89, label %if.then.90, label %if.end.101

if.then.90:                                       ; preds = %for.end.88
  %99 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %w91 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %99, i32 0, i32 8
  %100 = load i32, i32* %w91, align 4
  %101 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %h92 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %101, i32 0, i32 9
  %102 = load i32, i32* %h92, align 4
  %mul93 = mul nsw i32 %100, %102
  %103 = load i32, i32* %pixels, align 4
  %add94 = add nsw i32 %103, %mul93
  store i32 %add94, i32* %pixels, align 4
  %104 = load i32, i32* %n, align 4
  %rem = srem i32 %104, 16
  %cmp95 = icmp eq i32 %rem, 0
  br i1 %cmp95, label %if.then.97, label %if.end.100

if.then.97:                                       ; preds = %if.then.90
  %105 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %106 = load i32, i32* %pixels, align 4
  %conv98 = sitofp i32 %106 to double
  %107 = load i32, i32* %total, align 4
  %conv99 = sitofp i32 %107 to double
  %div = fdiv double %conv98, %conv99
  call void @gimp_progress_set_value(%struct._GimpProgress* %105, double %div)
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.97, %if.then.90
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %for.end.88
  br label %for.inc.102

for.inc.102:                                      ; preds = %if.end.101
  %108 = load i8*, i8** %pr, align 8
  %109 = bitcast i8* %108 to %struct._PixelRegionIterator*
  %call103 = call %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator* %109)
  %110 = bitcast %struct._PixelRegionIterator* %call103 to i8*
  store i8* %110, i8** %pr, align 8
  %111 = load i32, i32* %n, align 4
  %inc104 = add nsw i32 %111, 1
  store i32 %inc104, i32* %n, align 4
  br label %for.cond

for.end.105:                                      ; preds = %for.cond
  %112 = load float*, float** %lanczos, align 8
  %113 = bitcast float* %112 to i8*
  call void @g_free(i8* %113)
  %114 = load %struct._PixelSurround*, %struct._PixelSurround** %surround, align 8
  call void @pixel_surround_destroy(%struct._PixelSurround* %114)
  ret void
}

declare %struct._PixelRegionIterator* @pixel_regions_register(i32, ...) #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @normalize_coords(i32 %coords, double* %tu, double* %tv, double* %tw, double* %u, double* %v) #6 {
entry:
  %coords.addr = alloca i32, align 4
  %tu.addr = alloca double*, align 8
  %tv.addr = alloca double*, align 8
  %tw.addr = alloca double*, align 8
  %u.addr = alloca double*, align 8
  %v.addr = alloca double*, align 8
  %i = alloca i32, align 4
  store i32 %coords, i32* %coords.addr, align 4
  store double* %tu, double** %tu.addr, align 8
  store double* %tv, double** %tv.addr, align 8
  store double* %tw, double** %tw.addr, align 8
  store double* %u, double** %u.addr, align 8
  store double* %v, double** %v.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %coords.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load double*, double** %tw.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %3, i64 %idxprom
  %4 = load double, double* %arrayidx, align 8
  %cmp1 = fcmp une double %4, 0.000000e+00
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %5 to i64
  %6 = load double*, double** %tu.addr, align 8
  %arrayidx3 = getelementptr inbounds double, double* %6, i64 %idxprom2
  %7 = load double, double* %arrayidx3, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %8 to i64
  %9 = load double*, double** %tw.addr, align 8
  %arrayidx5 = getelementptr inbounds double, double* %9, i64 %idxprom4
  %10 = load double, double* %arrayidx5, align 8
  %div = fdiv double %7, %10
  %sub = fsub double %div, 5.000000e-01
  %11 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %11 to i64
  %12 = load double*, double** %u.addr, align 8
  %arrayidx7 = getelementptr inbounds double, double* %12, i64 %idxprom6
  store double %sub, double* %arrayidx7, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %13 to i64
  %14 = load double*, double** %tv.addr, align 8
  %arrayidx9 = getelementptr inbounds double, double* %14, i64 %idxprom8
  %15 = load double, double* %arrayidx9, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %16 to i64
  %17 = load double*, double** %tw.addr, align 8
  %arrayidx11 = getelementptr inbounds double, double* %17, i64 %idxprom10
  %18 = load double, double* %arrayidx11, align 8
  %div12 = fdiv double %15, %18
  %sub13 = fsub double %div12, 5.000000e-01
  %19 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %19 to i64
  %20 = load double*, double** %v.addr, align 8
  %arrayidx15 = getelementptr inbounds double, double* %20, i64 %idxprom14
  store double %sub13, double* %arrayidx15, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0))
  %21 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %21 to i64
  %22 = load double*, double** %tu.addr, align 8
  %arrayidx17 = getelementptr inbounds double, double* %22, i64 %idxprom16
  %23 = load double, double* %arrayidx17, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %24 to i64
  %25 = load double*, double** %u.addr, align 8
  %arrayidx19 = getelementptr inbounds double, double* %25, i64 %idxprom18
  store double %23, double* %arrayidx19, align 8
  %26 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %26 to i64
  %27 = load double*, double** %tv.addr, align 8
  %arrayidx21 = getelementptr inbounds double, double* %27, i64 %idxprom20
  %28 = load double, double* %arrayidx21, align 8
  %29 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %29 to i64
  %30 = load double*, double** %v.addr, align 8
  %arrayidx23 = getelementptr inbounds double, double* %30, i64 %idxprom22
  store double %28, double* %arrayidx23, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %31 = load i32, i32* %i, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind readnone
declare double @floor(double) #1

declare void @tile_manager_read_pixel_data_1(%struct._TileManager*, i32, i32, i8*) #3

declare void @gimp_progress_set_value(%struct._GimpProgress*, double) #3

declare %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator*) #3

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

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

declare %struct._PixelSurround* @pixel_surround_new(%struct._TileManager*, i32, i32, i32) #3

declare void @pixel_surround_set_bg(%struct._PixelSurround*, i8*) #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @untransform_coords(%struct._GimpMatrix3* %m, i32 %ix, i32 %iy, double* %tu, double* %tv, double* %tw) #6 {
entry:
  %m.addr = alloca %struct._GimpMatrix3*, align 8
  %ix.addr = alloca i32, align 4
  %iy.addr = alloca i32, align 4
  %tu.addr = alloca double*, align 8
  %tv.addr = alloca double*, align 8
  %tw.addr = alloca double*, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  store %struct._GimpMatrix3* %m, %struct._GimpMatrix3** %m.addr, align 8
  store i32 %ix, i32* %ix.addr, align 4
  store i32 %iy, i32* %iy.addr, align 4
  store double* %tu, double** %tu.addr, align 8
  store double* %tv, double** %tv.addr, align 8
  store double* %tw, double** %tw.addr, align 8
  %0 = load i32, i32* %ix.addr, align 4
  %conv = sitofp i32 %0 to double
  %add = fadd double %conv, 5.000000e-01
  store double %add, double* %x, align 8
  %1 = load i32, i32* %iy.addr, align 4
  %conv1 = sitofp i32 %1 to double
  %add2 = fadd double %conv1, 5.000000e-01
  store double %add2, double* %y, align 8
  %2 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %2, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff, i32 0, i64 0
  %arrayidx3 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx, i32 0, i64 0
  %3 = load double, double* %arrayidx3, align 8
  %4 = load double, double* %x, align 8
  %mul = fmul double %3, %4
  %5 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff4 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %5, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff4, i32 0, i64 0
  %arrayidx6 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx5, i32 0, i64 1
  %6 = load double, double* %arrayidx6, align 8
  %7 = load double, double* %y, align 8
  %mul7 = fmul double %6, %7
  %add8 = fadd double %mul, %mul7
  %8 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff9 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %8, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff9, i32 0, i64 0
  %arrayidx11 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx10, i32 0, i64 2
  %9 = load double, double* %arrayidx11, align 8
  %add12 = fadd double %add8, %9
  %10 = load double*, double** %tu.addr, align 8
  %arrayidx13 = getelementptr inbounds double, double* %10, i64 0
  store double %add12, double* %arrayidx13, align 8
  %11 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff14 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %11, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff14, i32 0, i64 1
  %arrayidx16 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx15, i32 0, i64 0
  %12 = load double, double* %arrayidx16, align 8
  %13 = load double, double* %x, align 8
  %mul17 = fmul double %12, %13
  %14 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff18 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %14, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff18, i32 0, i64 1
  %arrayidx20 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx19, i32 0, i64 1
  %15 = load double, double* %arrayidx20, align 8
  %16 = load double, double* %y, align 8
  %mul21 = fmul double %15, %16
  %add22 = fadd double %mul17, %mul21
  %17 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff23 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %17, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff23, i32 0, i64 1
  %arrayidx25 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx24, i32 0, i64 2
  %18 = load double, double* %arrayidx25, align 8
  %add26 = fadd double %add22, %18
  %19 = load double*, double** %tv.addr, align 8
  %arrayidx27 = getelementptr inbounds double, double* %19, i64 0
  store double %add26, double* %arrayidx27, align 8
  %20 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff28 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %20, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff28, i32 0, i64 2
  %arrayidx30 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx29, i32 0, i64 0
  %21 = load double, double* %arrayidx30, align 8
  %22 = load double, double* %x, align 8
  %mul31 = fmul double %21, %22
  %23 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff32 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %23, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff32, i32 0, i64 2
  %arrayidx34 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx33, i32 0, i64 1
  %24 = load double, double* %arrayidx34, align 8
  %25 = load double, double* %y, align 8
  %mul35 = fmul double %24, %25
  %add36 = fadd double %mul31, %mul35
  %26 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff37 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %26, i32 0, i32 0
  %arrayidx38 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff37, i32 0, i64 2
  %arrayidx39 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx38, i32 0, i64 2
  %27 = load double, double* %arrayidx39, align 8
  %add40 = fadd double %add36, %27
  %28 = load double*, double** %tw.addr, align 8
  %arrayidx41 = getelementptr inbounds double, double* %28, i64 0
  store double %add40, double* %arrayidx41, align 8
  %29 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff42 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %29, i32 0, i32 0
  %arrayidx43 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff42, i32 0, i64 0
  %arrayidx44 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx43, i32 0, i64 0
  %30 = load double, double* %arrayidx44, align 8
  %31 = load double, double* %x, align 8
  %sub = fsub double %31, 1.000000e+00
  %mul45 = fmul double %30, %sub
  %32 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff46 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %32, i32 0, i32 0
  %arrayidx47 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff46, i32 0, i64 0
  %arrayidx48 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx47, i32 0, i64 1
  %33 = load double, double* %arrayidx48, align 8
  %34 = load double, double* %y, align 8
  %mul49 = fmul double %33, %34
  %add50 = fadd double %mul45, %mul49
  %35 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff51 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %35, i32 0, i32 0
  %arrayidx52 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff51, i32 0, i64 0
  %arrayidx53 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx52, i32 0, i64 2
  %36 = load double, double* %arrayidx53, align 8
  %add54 = fadd double %add50, %36
  %37 = load double*, double** %tu.addr, align 8
  %arrayidx55 = getelementptr inbounds double, double* %37, i64 1
  store double %add54, double* %arrayidx55, align 8
  %38 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff56 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %38, i32 0, i32 0
  %arrayidx57 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff56, i32 0, i64 1
  %arrayidx58 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx57, i32 0, i64 0
  %39 = load double, double* %arrayidx58, align 8
  %40 = load double, double* %x, align 8
  %sub59 = fsub double %40, 1.000000e+00
  %mul60 = fmul double %39, %sub59
  %41 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff61 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %41, i32 0, i32 0
  %arrayidx62 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff61, i32 0, i64 1
  %arrayidx63 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx62, i32 0, i64 1
  %42 = load double, double* %arrayidx63, align 8
  %43 = load double, double* %y, align 8
  %mul64 = fmul double %42, %43
  %add65 = fadd double %mul60, %mul64
  %44 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff66 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %44, i32 0, i32 0
  %arrayidx67 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff66, i32 0, i64 1
  %arrayidx68 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx67, i32 0, i64 2
  %45 = load double, double* %arrayidx68, align 8
  %add69 = fadd double %add65, %45
  %46 = load double*, double** %tv.addr, align 8
  %arrayidx70 = getelementptr inbounds double, double* %46, i64 1
  store double %add69, double* %arrayidx70, align 8
  %47 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff71 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %47, i32 0, i32 0
  %arrayidx72 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff71, i32 0, i64 2
  %arrayidx73 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx72, i32 0, i64 0
  %48 = load double, double* %arrayidx73, align 8
  %49 = load double, double* %x, align 8
  %sub74 = fsub double %49, 1.000000e+00
  %mul75 = fmul double %48, %sub74
  %50 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff76 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %50, i32 0, i32 0
  %arrayidx77 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff76, i32 0, i64 2
  %arrayidx78 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx77, i32 0, i64 1
  %51 = load double, double* %arrayidx78, align 8
  %52 = load double, double* %y, align 8
  %mul79 = fmul double %51, %52
  %add80 = fadd double %mul75, %mul79
  %53 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff81 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %53, i32 0, i32 0
  %arrayidx82 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff81, i32 0, i64 2
  %arrayidx83 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx82, i32 0, i64 2
  %54 = load double, double* %arrayidx83, align 8
  %add84 = fadd double %add80, %54
  %55 = load double*, double** %tw.addr, align 8
  %arrayidx85 = getelementptr inbounds double, double* %55, i64 1
  store double %add84, double* %arrayidx85, align 8
  %56 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff86 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %56, i32 0, i32 0
  %arrayidx87 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff86, i32 0, i64 0
  %arrayidx88 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx87, i32 0, i64 0
  %57 = load double, double* %arrayidx88, align 8
  %58 = load double, double* %x, align 8
  %mul89 = fmul double %57, %58
  %59 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff90 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %59, i32 0, i32 0
  %arrayidx91 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff90, i32 0, i64 0
  %arrayidx92 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx91, i32 0, i64 1
  %60 = load double, double* %arrayidx92, align 8
  %61 = load double, double* %y, align 8
  %sub93 = fsub double %61, 1.000000e+00
  %mul94 = fmul double %60, %sub93
  %add95 = fadd double %mul89, %mul94
  %62 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff96 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %62, i32 0, i32 0
  %arrayidx97 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff96, i32 0, i64 0
  %arrayidx98 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx97, i32 0, i64 2
  %63 = load double, double* %arrayidx98, align 8
  %add99 = fadd double %add95, %63
  %64 = load double*, double** %tu.addr, align 8
  %arrayidx100 = getelementptr inbounds double, double* %64, i64 2
  store double %add99, double* %arrayidx100, align 8
  %65 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff101 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %65, i32 0, i32 0
  %arrayidx102 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff101, i32 0, i64 1
  %arrayidx103 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx102, i32 0, i64 0
  %66 = load double, double* %arrayidx103, align 8
  %67 = load double, double* %x, align 8
  %mul104 = fmul double %66, %67
  %68 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff105 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %68, i32 0, i32 0
  %arrayidx106 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff105, i32 0, i64 1
  %arrayidx107 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx106, i32 0, i64 1
  %69 = load double, double* %arrayidx107, align 8
  %70 = load double, double* %y, align 8
  %sub108 = fsub double %70, 1.000000e+00
  %mul109 = fmul double %69, %sub108
  %add110 = fadd double %mul104, %mul109
  %71 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff111 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %71, i32 0, i32 0
  %arrayidx112 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff111, i32 0, i64 1
  %arrayidx113 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx112, i32 0, i64 2
  %72 = load double, double* %arrayidx113, align 8
  %add114 = fadd double %add110, %72
  %73 = load double*, double** %tv.addr, align 8
  %arrayidx115 = getelementptr inbounds double, double* %73, i64 2
  store double %add114, double* %arrayidx115, align 8
  %74 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff116 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %74, i32 0, i32 0
  %arrayidx117 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff116, i32 0, i64 2
  %arrayidx118 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx117, i32 0, i64 0
  %75 = load double, double* %arrayidx118, align 8
  %76 = load double, double* %x, align 8
  %mul119 = fmul double %75, %76
  %77 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff120 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %77, i32 0, i32 0
  %arrayidx121 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff120, i32 0, i64 2
  %arrayidx122 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx121, i32 0, i64 1
  %78 = load double, double* %arrayidx122, align 8
  %79 = load double, double* %y, align 8
  %sub123 = fsub double %79, 1.000000e+00
  %mul124 = fmul double %78, %sub123
  %add125 = fadd double %mul119, %mul124
  %80 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff126 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %80, i32 0, i32 0
  %arrayidx127 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff126, i32 0, i64 2
  %arrayidx128 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx127, i32 0, i64 2
  %81 = load double, double* %arrayidx128, align 8
  %add129 = fadd double %add125, %81
  %82 = load double*, double** %tw.addr, align 8
  %arrayidx130 = getelementptr inbounds double, double* %82, i64 2
  store double %add129, double* %arrayidx130, align 8
  %83 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff131 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %83, i32 0, i32 0
  %arrayidx132 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff131, i32 0, i64 0
  %arrayidx133 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx132, i32 0, i64 0
  %84 = load double, double* %arrayidx133, align 8
  %85 = load double, double* %x, align 8
  %add134 = fadd double %85, 1.000000e+00
  %mul135 = fmul double %84, %add134
  %86 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff136 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %86, i32 0, i32 0
  %arrayidx137 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff136, i32 0, i64 0
  %arrayidx138 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx137, i32 0, i64 1
  %87 = load double, double* %arrayidx138, align 8
  %88 = load double, double* %y, align 8
  %mul139 = fmul double %87, %88
  %add140 = fadd double %mul135, %mul139
  %89 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff141 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %89, i32 0, i32 0
  %arrayidx142 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff141, i32 0, i64 0
  %arrayidx143 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx142, i32 0, i64 2
  %90 = load double, double* %arrayidx143, align 8
  %add144 = fadd double %add140, %90
  %91 = load double*, double** %tu.addr, align 8
  %arrayidx145 = getelementptr inbounds double, double* %91, i64 3
  store double %add144, double* %arrayidx145, align 8
  %92 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff146 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %92, i32 0, i32 0
  %arrayidx147 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff146, i32 0, i64 1
  %arrayidx148 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx147, i32 0, i64 0
  %93 = load double, double* %arrayidx148, align 8
  %94 = load double, double* %x, align 8
  %add149 = fadd double %94, 1.000000e+00
  %mul150 = fmul double %93, %add149
  %95 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff151 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %95, i32 0, i32 0
  %arrayidx152 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff151, i32 0, i64 1
  %arrayidx153 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx152, i32 0, i64 1
  %96 = load double, double* %arrayidx153, align 8
  %97 = load double, double* %y, align 8
  %mul154 = fmul double %96, %97
  %add155 = fadd double %mul150, %mul154
  %98 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff156 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %98, i32 0, i32 0
  %arrayidx157 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff156, i32 0, i64 1
  %arrayidx158 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx157, i32 0, i64 2
  %99 = load double, double* %arrayidx158, align 8
  %add159 = fadd double %add155, %99
  %100 = load double*, double** %tv.addr, align 8
  %arrayidx160 = getelementptr inbounds double, double* %100, i64 3
  store double %add159, double* %arrayidx160, align 8
  %101 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff161 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %101, i32 0, i32 0
  %arrayidx162 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff161, i32 0, i64 2
  %arrayidx163 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx162, i32 0, i64 0
  %102 = load double, double* %arrayidx163, align 8
  %103 = load double, double* %x, align 8
  %add164 = fadd double %103, 1.000000e+00
  %mul165 = fmul double %102, %add164
  %104 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff166 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %104, i32 0, i32 0
  %arrayidx167 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff166, i32 0, i64 2
  %arrayidx168 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx167, i32 0, i64 1
  %105 = load double, double* %arrayidx168, align 8
  %106 = load double, double* %y, align 8
  %mul169 = fmul double %105, %106
  %add170 = fadd double %mul165, %mul169
  %107 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff171 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %107, i32 0, i32 0
  %arrayidx172 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff171, i32 0, i64 2
  %arrayidx173 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx172, i32 0, i64 2
  %108 = load double, double* %arrayidx173, align 8
  %add174 = fadd double %add170, %108
  %109 = load double*, double** %tw.addr, align 8
  %arrayidx175 = getelementptr inbounds double, double* %109, i64 3
  store double %add174, double* %arrayidx175, align 8
  %110 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff176 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %110, i32 0, i32 0
  %arrayidx177 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff176, i32 0, i64 0
  %arrayidx178 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx177, i32 0, i64 0
  %111 = load double, double* %arrayidx178, align 8
  %112 = load double, double* %x, align 8
  %mul179 = fmul double %111, %112
  %113 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff180 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %113, i32 0, i32 0
  %arrayidx181 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff180, i32 0, i64 0
  %arrayidx182 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx181, i32 0, i64 1
  %114 = load double, double* %arrayidx182, align 8
  %115 = load double, double* %y, align 8
  %add183 = fadd double %115, 1.000000e+00
  %mul184 = fmul double %114, %add183
  %add185 = fadd double %mul179, %mul184
  %116 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff186 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %116, i32 0, i32 0
  %arrayidx187 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff186, i32 0, i64 0
  %arrayidx188 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx187, i32 0, i64 2
  %117 = load double, double* %arrayidx188, align 8
  %add189 = fadd double %add185, %117
  %118 = load double*, double** %tu.addr, align 8
  %arrayidx190 = getelementptr inbounds double, double* %118, i64 4
  store double %add189, double* %arrayidx190, align 8
  %119 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff191 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %119, i32 0, i32 0
  %arrayidx192 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff191, i32 0, i64 1
  %arrayidx193 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx192, i32 0, i64 0
  %120 = load double, double* %arrayidx193, align 8
  %121 = load double, double* %x, align 8
  %mul194 = fmul double %120, %121
  %122 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff195 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %122, i32 0, i32 0
  %arrayidx196 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff195, i32 0, i64 1
  %arrayidx197 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx196, i32 0, i64 1
  %123 = load double, double* %arrayidx197, align 8
  %124 = load double, double* %y, align 8
  %add198 = fadd double %124, 1.000000e+00
  %mul199 = fmul double %123, %add198
  %add200 = fadd double %mul194, %mul199
  %125 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff201 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %125, i32 0, i32 0
  %arrayidx202 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff201, i32 0, i64 1
  %arrayidx203 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx202, i32 0, i64 2
  %126 = load double, double* %arrayidx203, align 8
  %add204 = fadd double %add200, %126
  %127 = load double*, double** %tv.addr, align 8
  %arrayidx205 = getelementptr inbounds double, double* %127, i64 4
  store double %add204, double* %arrayidx205, align 8
  %128 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff206 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %128, i32 0, i32 0
  %arrayidx207 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff206, i32 0, i64 2
  %arrayidx208 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx207, i32 0, i64 0
  %129 = load double, double* %arrayidx208, align 8
  %130 = load double, double* %x, align 8
  %mul209 = fmul double %129, %130
  %131 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff210 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %131, i32 0, i32 0
  %arrayidx211 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff210, i32 0, i64 2
  %arrayidx212 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx211, i32 0, i64 1
  %132 = load double, double* %arrayidx212, align 8
  %133 = load double, double* %y, align 8
  %add213 = fadd double %133, 1.000000e+00
  %mul214 = fmul double %132, %add213
  %add215 = fadd double %mul209, %mul214
  %134 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %m.addr, align 8
  %coeff216 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %134, i32 0, i32 0
  %arrayidx217 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff216, i32 0, i64 2
  %arrayidx218 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx217, i32 0, i64 2
  %135 = load double, double* %arrayidx218, align 8
  %add219 = fadd double %add215, %135
  %136 = load double*, double** %tw.addr, align 8
  %arrayidx220 = getelementptr inbounds double, double* %136, i64 4
  store double %add219, double* %arrayidx220, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @supersample_dtest(double %x0, double %y0, double %x1, double %y1, double %x2, double %y2, double %x3, double %y3) #6 {
entry:
  %x0.addr = alloca double, align 8
  %y0.addr = alloca double, align 8
  %x1.addr = alloca double, align 8
  %y1.addr = alloca double, align 8
  %x2.addr = alloca double, align 8
  %y2.addr = alloca double, align 8
  %x3.addr = alloca double, align 8
  %y3.addr = alloca double, align 8
  store double %x0, double* %x0.addr, align 8
  store double %y0, double* %y0.addr, align 8
  store double %x1, double* %x1.addr, align 8
  store double %y1, double* %y1.addr, align 8
  store double %x2, double* %x2.addr, align 8
  store double %y2, double* %y2.addr, align 8
  store double %x3, double* %x3.addr, align 8
  store double %y3, double* %y3.addr, align 8
  %0 = load double, double* %x0.addr, align 8
  %1 = load double, double* %x1.addr, align 8
  %sub = fsub double %0, %1
  %call = call double @fabs(double %sub) #7
  %cmp = fcmp ogt double %call, 0x3FF6A09E667F3BCD
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load double, double* %x1.addr, align 8
  %3 = load double, double* %x2.addr, align 8
  %sub1 = fsub double %2, %3
  %call2 = call double @fabs(double %sub1) #7
  %cmp3 = fcmp ogt double %call2, 0x3FF6A09E667F3BCD
  br i1 %cmp3, label %lor.end, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %4 = load double, double* %x2.addr, align 8
  %5 = load double, double* %x3.addr, align 8
  %sub5 = fsub double %4, %5
  %call6 = call double @fabs(double %sub5) #7
  %cmp7 = fcmp ogt double %call6, 0x3FF6A09E667F3BCD
  br i1 %cmp7, label %lor.end, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false.4
  %6 = load double, double* %x3.addr, align 8
  %7 = load double, double* %x0.addr, align 8
  %sub9 = fsub double %6, %7
  %call10 = call double @fabs(double %sub9) #7
  %cmp11 = fcmp ogt double %call10, 0x3FF6A09E667F3BCD
  br i1 %cmp11, label %lor.end, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false.8
  %8 = load double, double* %y0.addr, align 8
  %9 = load double, double* %y1.addr, align 8
  %sub13 = fsub double %8, %9
  %call14 = call double @fabs(double %sub13) #7
  %cmp15 = fcmp ogt double %call14, 0x3FF6A09E667F3BCD
  br i1 %cmp15, label %lor.end, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false.12
  %10 = load double, double* %y1.addr, align 8
  %11 = load double, double* %y2.addr, align 8
  %sub17 = fsub double %10, %11
  %call18 = call double @fabs(double %sub17) #7
  %cmp19 = fcmp ogt double %call18, 0x3FF6A09E667F3BCD
  br i1 %cmp19, label %lor.end, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %lor.lhs.false.16
  %12 = load double, double* %y2.addr, align 8
  %13 = load double, double* %y3.addr, align 8
  %sub21 = fsub double %12, %13
  %call22 = call double @fabs(double %sub21) #7
  %cmp23 = fcmp ogt double %call22, 0x3FF6A09E667F3BCD
  br i1 %cmp23, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.20
  %14 = load double, double* %y3.addr, align 8
  %15 = load double, double* %y0.addr, align 8
  %sub24 = fsub double %14, %15
  %call25 = call double @fabs(double %sub24) #7
  %cmp26 = fcmp ogt double %call25, 0x3FF6A09E667F3BCD
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.20, %lor.lhs.false.16, %lor.lhs.false.12, %lor.lhs.false.8, %lor.lhs.false.4, %lor.lhs.false, %entry
  %16 = phi i1 [ true, %lor.lhs.false.20 ], [ true, %lor.lhs.false.16 ], [ true, %lor.lhs.false.12 ], [ true, %lor.lhs.false.8 ], [ true, %lor.lhs.false.4 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp26, %lor.rhs ]
  %lor.ext = zext i1 %16 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define internal void @sample_adapt(%struct._TileManager* %tm, double %xc, double %yc, double %x0, double %y0, double %x1, double %y1, double %x2, double %y2, double %x3, double %y3, i32 %level, i8* %color, i8* %bg_color, i32 %bpp, i32 %alpha) #0 {
entry:
  %tm.addr = alloca %struct._TileManager*, align 8
  %xc.addr = alloca double, align 8
  %yc.addr = alloca double, align 8
  %x0.addr = alloca double, align 8
  %y0.addr = alloca double, align 8
  %x1.addr = alloca double, align 8
  %y1.addr = alloca double, align 8
  %x2.addr = alloca double, align 8
  %y2.addr = alloca double, align 8
  %x3.addr = alloca double, align 8
  %y3.addr = alloca double, align 8
  %level.addr = alloca i32, align 4
  %color.addr = alloca i8*, align 8
  %bg_color.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %alpha.addr = alloca i32, align 4
  %cc = alloca i32, align 4
  %i = alloca i32, align 4
  %C = alloca [4 x i32], align 16
  store %struct._TileManager* %tm, %struct._TileManager** %tm.addr, align 8
  store double %xc, double* %xc.addr, align 8
  store double %yc, double* %yc.addr, align 8
  store double %x0, double* %x0.addr, align 8
  store double %y0, double* %y0.addr, align 8
  store double %x1, double* %x1.addr, align 8
  store double %y1, double* %y1.addr, align 8
  store double %x2, double* %x2.addr, align 8
  store double %y2, double* %y2.addr, align 8
  store double %x3, double* %x3.addr, align 8
  store double %y3, double* %y3.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  store i8* %color, i8** %color.addr, align 8
  store i8* %bg_color, i8** %bg_color.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i32 %alpha, i32* %alpha.addr, align 4
  store i32 0, i32* %cc, align 4
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %C, i32 0, i64 3
  store i32 0, i32* %arrayidx, align 4
  %arrayidx1 = getelementptr inbounds [4 x i32], [4 x i32]* %C, i32 0, i64 2
  store i32 0, i32* %arrayidx1, align 4
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* %C, i32 0, i64 1
  store i32 0, i32* %arrayidx2, align 4
  %arrayidx3 = getelementptr inbounds [4 x i32], [4 x i32]* %C, i32 0, i64 0
  store i32 0, i32* %arrayidx3, align 4
  %0 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %1 = load double, double* %xc.addr, align 8
  %mul = fmul double %1, 1.024000e+03
  %conv = fptosi double %mul to i32
  %2 = load double, double* %yc.addr, align 8
  %mul4 = fmul double %2, 1.024000e+03
  %conv5 = fptosi double %mul4 to i32
  %3 = load double, double* %x0.addr, align 8
  %mul6 = fmul double %3, 1.024000e+03
  %conv7 = fptosi double %mul6 to i32
  %4 = load double, double* %y0.addr, align 8
  %mul8 = fmul double %4, 1.024000e+03
  %conv9 = fptosi double %mul8 to i32
  %5 = load double, double* %x1.addr, align 8
  %mul10 = fmul double %5, 1.024000e+03
  %conv11 = fptosi double %mul10 to i32
  %6 = load double, double* %y1.addr, align 8
  %mul12 = fmul double %6, 1.024000e+03
  %conv13 = fptosi double %mul12 to i32
  %7 = load double, double* %x2.addr, align 8
  %mul14 = fmul double %7, 1.024000e+03
  %conv15 = fptosi double %mul14 to i32
  %8 = load double, double* %y2.addr, align 8
  %mul16 = fmul double %8, 1.024000e+03
  %conv17 = fptosi double %mul16 to i32
  %9 = load double, double* %x3.addr, align 8
  %mul18 = fmul double %9, 1.024000e+03
  %conv19 = fptosi double %mul18 to i32
  %10 = load double, double* %y3.addr, align 8
  %mul20 = fmul double %10, 1.024000e+03
  %conv21 = fptosi double %mul20 to i32
  %11 = load i32, i32* %level.addr, align 4
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %C, i32 0, i32 0
  %12 = load i8*, i8** %bg_color.addr, align 8
  %13 = load i32, i32* %bpp.addr, align 4
  %14 = load i32, i32* %alpha.addr, align 4
  call void @get_sample(%struct._TileManager* %0, i32 %conv, i32 %conv5, i32 %conv7, i32 %conv9, i32 %conv11, i32 %conv13, i32 %conv15, i32 %conv17, i32 %conv19, i32 %conv21, i32* %cc, i32 %11, i32* %arraydecay, i8* %12, i32 %13, i32 %14)
  %15 = load i32, i32* %cc, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %cc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load i32, i32* %alpha.addr, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx22 = getelementptr inbounds [4 x i32], [4 x i32]* %C, i32 0, i64 %idxprom
  %17 = load i32, i32* %arrayidx22, align 4
  %18 = load i32, i32* %cc, align 4
  %div = udiv i32 %17, %18
  %conv23 = trunc i32 %div to i8
  %19 = load i32, i32* %alpha.addr, align 4
  %idxprom24 = sext i32 %19 to i64
  %20 = load i8*, i8** %color.addr, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %20, i64 %idxprom24
  store i8 %conv23, i8* %arrayidx25, align 1
  %21 = load i32, i32* %alpha.addr, align 4
  %idxprom26 = sext i32 %21 to i64
  %22 = load i8*, i8** %color.addr, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %22, i64 %idxprom26
  %23 = load i8, i8* %arrayidx27, align 1
  %tobool28 = icmp ne i8 %23, 0
  br i1 %tobool28, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.29
  %24 = load i32, i32* %i, align 4
  %25 = load i32, i32* %alpha.addr, align 4
  %cmp = icmp slt i32 %24, %25
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %26 to i64
  %arrayidx32 = getelementptr inbounds [4 x i32], [4 x i32]* %C, i32 0, i64 %idxprom31
  %27 = load i32, i32* %arrayidx32, align 4
  %28 = load i32, i32* %cc, align 4
  %div33 = udiv i32 %27, %28
  %mul34 = mul i32 %div33, 255
  %29 = load i32, i32* %alpha.addr, align 4
  %idxprom35 = sext i32 %29 to i64
  %30 = load i8*, i8** %color.addr, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %30, i64 %idxprom35
  %31 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %31 to i32
  %div38 = udiv i32 %mul34, %conv37
  %conv39 = trunc i32 %div38 to i8
  %32 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %32 to i64
  %33 = load i8*, i8** %color.addr, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %33, i64 %idxprom40
  store i8 %conv39, i8* %arrayidx41, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load i32, i32* %i, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.51

if.else:                                          ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.48, %if.else
  %35 = load i32, i32* %i, align 4
  %36 = load i32, i32* %alpha.addr, align 4
  %cmp43 = icmp slt i32 %35, %36
  br i1 %cmp43, label %for.body.45, label %for.end.50

for.body.45:                                      ; preds = %for.cond.42
  %37 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %37 to i64
  %38 = load i8*, i8** %color.addr, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %38, i64 %idxprom46
  store i8 0, i8* %arrayidx47, align 1
  br label %for.inc.48

for.inc.48:                                       ; preds = %for.body.45
  %39 = load i32, i32* %i, align 4
  %inc49 = add nsw i32 %39, 1
  store i32 %inc49, i32* %i, align 4
  br label %for.cond.42

for.end.50:                                       ; preds = %for.cond.42
  br label %if.end.51

if.end.51:                                        ; preds = %for.end.50, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sample_linear(%struct._PixelSurround* %surround, double %u, double %v, i8* %color, i32 %bytes, i32 %alpha) #0 {
entry:
  %surround.addr = alloca %struct._PixelSurround*, align 8
  %u.addr = alloca double, align 8
  %v.addr = alloca double, align 8
  %color.addr = alloca i8*, align 8
  %bytes.addr = alloca i32, align 4
  %alpha.addr = alloca i32, align 4
  %a_val = alloca double, align 8
  %a_recip = alloca double, align 8
  %i = alloca i32, align 4
  %iu = alloca i32, align 4
  %iv = alloca i32, align 4
  %rowstride = alloca i32, align 4
  %du = alloca double, align 8
  %dv = alloca double, align 8
  %alphachan = alloca i8*, align 8
  %data = alloca i8*, align 8
  %newval = alloca i32, align 4
  store %struct._PixelSurround* %surround, %struct._PixelSurround** %surround.addr, align 8
  store double %u, double* %u.addr, align 8
  store double %v, double* %v.addr, align 8
  store i8* %color, i8** %color.addr, align 8
  store i32 %bytes, i32* %bytes.addr, align 4
  store i32 %alpha, i32* %alpha.addr, align 4
  %0 = load double, double* %u.addr, align 8
  %call = call double @floor(double %0) #7
  %conv = fptosi double %call to i32
  store i32 %conv, i32* %iu, align 4
  %1 = load double, double* %v.addr, align 8
  %call1 = call double @floor(double %1) #7
  %conv2 = fptosi double %call1 to i32
  store i32 %conv2, i32* %iv, align 4
  %2 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %3 = load i32, i32* %iu, align 4
  %4 = load i32, i32* %iv, align 4
  %call3 = call i8* @pixel_surround_lock(%struct._PixelSurround* %2, i32 %3, i32 %4, i32* %rowstride)
  store i8* %call3, i8** %data, align 8
  %5 = load double, double* %u.addr, align 8
  %6 = load i32, i32* %iu, align 4
  %conv4 = sitofp i32 %6 to double
  %sub = fsub double %5, %conv4
  store double %sub, double* %du, align 8
  %7 = load double, double* %v.addr, align 8
  %8 = load i32, i32* %iv, align 4
  %conv5 = sitofp i32 %8 to double
  %sub6 = fsub double %7, %conv5
  store double %sub6, double* %dv, align 8
  %9 = load i32, i32* %alpha.addr, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load i8*, i8** %data, align 8
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %idxprom
  store i8* %arrayidx, i8** %alphachan, align 8
  %11 = load double, double* %dv, align 8
  %sub7 = fsub double 1.000000e+00, %11
  %12 = load i8*, i8** %alphachan, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 0
  %13 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %13 to i32
  %conv10 = sitofp i32 %conv9 to double
  %14 = load double, double* %du, align 8
  %15 = load i32, i32* %bytes.addr, align 4
  %idxprom11 = sext i32 %15 to i64
  %16 = load i8*, i8** %alphachan, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %16, i64 %idxprom11
  %17 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %17 to i32
  %18 = load i8*, i8** %alphachan, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %18, i64 0
  %19 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %19 to i32
  %sub16 = sub nsw i32 %conv13, %conv15
  %conv17 = sitofp i32 %sub16 to double
  %mul = fmul double %14, %conv17
  %add = fadd double %conv10, %mul
  %mul18 = fmul double %sub7, %add
  %20 = load double, double* %dv, align 8
  %21 = load i32, i32* %rowstride, align 4
  %idxprom19 = sext i32 %21 to i64
  %22 = load i8*, i8** %alphachan, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %22, i64 %idxprom19
  %23 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %23 to i32
  %conv22 = sitofp i32 %conv21 to double
  %24 = load double, double* %du, align 8
  %25 = load i32, i32* %rowstride, align 4
  %26 = load i32, i32* %bytes.addr, align 4
  %add23 = add nsw i32 %25, %26
  %idxprom24 = sext i32 %add23 to i64
  %27 = load i8*, i8** %alphachan, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %27, i64 %idxprom24
  %28 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %28 to i32
  %29 = load i32, i32* %rowstride, align 4
  %idxprom27 = sext i32 %29 to i64
  %30 = load i8*, i8** %alphachan, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %30, i64 %idxprom27
  %31 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %31 to i32
  %sub30 = sub nsw i32 %conv26, %conv29
  %conv31 = sitofp i32 %sub30 to double
  %mul32 = fmul double %24, %conv31
  %add33 = fadd double %conv22, %mul32
  %mul34 = fmul double %20, %add33
  %add35 = fadd double %mul18, %mul34
  store double %add35, double* %a_val, align 8
  %32 = load double, double* %a_val, align 8
  %cmp = fcmp ole double %32, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store double 0.000000e+00, double* %a_recip, align 8
  %33 = load i32, i32* %alpha.addr, align 4
  %idxprom37 = sext i32 %33 to i64
  %34 = load i8*, i8** %color.addr, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %34, i64 %idxprom37
  store i8 0, i8* %arrayidx38, align 1
  br label %if.end.50

if.else:                                          ; preds = %entry
  %35 = load double, double* %a_val, align 8
  %cmp39 = fcmp oge double %35, 2.550000e+02
  br i1 %cmp39, label %if.then.41, label %if.else.44

if.then.41:                                       ; preds = %if.else
  %36 = load double, double* %a_val, align 8
  %div = fdiv double 1.000000e+00, %36
  store double %div, double* %a_recip, align 8
  %37 = load i32, i32* %alpha.addr, align 4
  %idxprom42 = sext i32 %37 to i64
  %38 = load i8*, i8** %color.addr, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %38, i64 %idxprom42
  store i8 -1, i8* %arrayidx43, align 1
  br label %if.end

if.else.44:                                       ; preds = %if.else
  %39 = load double, double* %a_val, align 8
  %div45 = fdiv double 1.000000e+00, %39
  store double %div45, double* %a_recip, align 8
  %40 = load double, double* %a_val, align 8
  %call46 = call double @rint(double %40) #7
  %conv47 = fptoui double %call46 to i8
  %41 = load i32, i32* %alpha.addr, align 4
  %idxprom48 = sext i32 %41 to i64
  %42 = load i8*, i8** %color.addr, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %42, i64 %idxprom48
  store i8 %conv47, i8* %arrayidx49, align 1
  br label %if.end

if.end:                                           ; preds = %if.else.44, %if.then.41
  br label %if.end.50

if.end.50:                                        ; preds = %if.end, %if.then
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.50
  %43 = load i32, i32* %i, align 4
  %44 = load i32, i32* %alpha.addr, align 4
  %cmp51 = icmp slt i32 %43, %44
  br i1 %cmp51, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %45 = load double, double* %a_recip, align 8
  %46 = load double, double* %dv, align 8
  %sub53 = fsub double 1.000000e+00, %46
  %47 = load i8*, i8** %alphachan, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %47, i64 0
  %48 = load i8, i8* %arrayidx54, align 1
  %conv55 = zext i8 %48 to i32
  %49 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %49 to i64
  %50 = load i8*, i8** %data, align 8
  %arrayidx57 = getelementptr inbounds i8, i8* %50, i64 %idxprom56
  %51 = load i8, i8* %arrayidx57, align 1
  %conv58 = zext i8 %51 to i32
  %mul59 = mul nsw i32 %conv55, %conv58
  %conv60 = sitofp i32 %mul59 to double
  %52 = load double, double* %du, align 8
  %53 = load i32, i32* %bytes.addr, align 4
  %idxprom61 = sext i32 %53 to i64
  %54 = load i8*, i8** %alphachan, align 8
  %arrayidx62 = getelementptr inbounds i8, i8* %54, i64 %idxprom61
  %55 = load i8, i8* %arrayidx62, align 1
  %conv63 = zext i8 %55 to i32
  %56 = load i32, i32* %bytes.addr, align 4
  %57 = load i32, i32* %i, align 4
  %add64 = add nsw i32 %56, %57
  %idxprom65 = sext i32 %add64 to i64
  %58 = load i8*, i8** %data, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %58, i64 %idxprom65
  %59 = load i8, i8* %arrayidx66, align 1
  %conv67 = zext i8 %59 to i32
  %mul68 = mul nsw i32 %conv63, %conv67
  %60 = load i8*, i8** %alphachan, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %60, i64 0
  %61 = load i8, i8* %arrayidx69, align 1
  %conv70 = zext i8 %61 to i32
  %62 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %62 to i64
  %63 = load i8*, i8** %data, align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %63, i64 %idxprom71
  %64 = load i8, i8* %arrayidx72, align 1
  %conv73 = zext i8 %64 to i32
  %mul74 = mul nsw i32 %conv70, %conv73
  %sub75 = sub nsw i32 %mul68, %mul74
  %conv76 = sitofp i32 %sub75 to double
  %mul77 = fmul double %52, %conv76
  %add78 = fadd double %conv60, %mul77
  %mul79 = fmul double %sub53, %add78
  %65 = load double, double* %dv, align 8
  %66 = load i32, i32* %rowstride, align 4
  %idxprom80 = sext i32 %66 to i64
  %67 = load i8*, i8** %alphachan, align 8
  %arrayidx81 = getelementptr inbounds i8, i8* %67, i64 %idxprom80
  %68 = load i8, i8* %arrayidx81, align 1
  %conv82 = zext i8 %68 to i32
  %69 = load i32, i32* %rowstride, align 4
  %70 = load i32, i32* %i, align 4
  %add83 = add nsw i32 %69, %70
  %idxprom84 = sext i32 %add83 to i64
  %71 = load i8*, i8** %data, align 8
  %arrayidx85 = getelementptr inbounds i8, i8* %71, i64 %idxprom84
  %72 = load i8, i8* %arrayidx85, align 1
  %conv86 = zext i8 %72 to i32
  %mul87 = mul nsw i32 %conv82, %conv86
  %conv88 = sitofp i32 %mul87 to double
  %73 = load double, double* %du, align 8
  %74 = load i32, i32* %rowstride, align 4
  %75 = load i32, i32* %bytes.addr, align 4
  %add89 = add nsw i32 %74, %75
  %idxprom90 = sext i32 %add89 to i64
  %76 = load i8*, i8** %alphachan, align 8
  %arrayidx91 = getelementptr inbounds i8, i8* %76, i64 %idxprom90
  %77 = load i8, i8* %arrayidx91, align 1
  %conv92 = zext i8 %77 to i32
  %78 = load i32, i32* %rowstride, align 4
  %79 = load i32, i32* %bytes.addr, align 4
  %add93 = add nsw i32 %78, %79
  %80 = load i32, i32* %i, align 4
  %add94 = add nsw i32 %add93, %80
  %idxprom95 = sext i32 %add94 to i64
  %81 = load i8*, i8** %data, align 8
  %arrayidx96 = getelementptr inbounds i8, i8* %81, i64 %idxprom95
  %82 = load i8, i8* %arrayidx96, align 1
  %conv97 = zext i8 %82 to i32
  %mul98 = mul nsw i32 %conv92, %conv97
  %83 = load i32, i32* %rowstride, align 4
  %idxprom99 = sext i32 %83 to i64
  %84 = load i8*, i8** %alphachan, align 8
  %arrayidx100 = getelementptr inbounds i8, i8* %84, i64 %idxprom99
  %85 = load i8, i8* %arrayidx100, align 1
  %conv101 = zext i8 %85 to i32
  %86 = load i32, i32* %rowstride, align 4
  %87 = load i32, i32* %i, align 4
  %add102 = add nsw i32 %86, %87
  %idxprom103 = sext i32 %add102 to i64
  %88 = load i8*, i8** %data, align 8
  %arrayidx104 = getelementptr inbounds i8, i8* %88, i64 %idxprom103
  %89 = load i8, i8* %arrayidx104, align 1
  %conv105 = zext i8 %89 to i32
  %mul106 = mul nsw i32 %conv101, %conv105
  %sub107 = sub nsw i32 %mul98, %mul106
  %conv108 = sitofp i32 %sub107 to double
  %mul109 = fmul double %73, %conv108
  %add110 = fadd double %conv88, %mul109
  %mul111 = fmul double %65, %add110
  %add112 = fadd double %mul79, %mul111
  %mul113 = fmul double %45, %add112
  %add114 = fadd double %mul113, 5.000000e-01
  %conv115 = fptosi double %add114 to i32
  store i32 %conv115, i32* %newval, align 4
  %90 = load i32, i32* %newval, align 4
  %cmp116 = icmp sgt i32 %90, 255
  br i1 %cmp116, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end.122

cond.false:                                       ; preds = %for.body
  %91 = load i32, i32* %newval, align 4
  %cmp118 = icmp slt i32 %91, 0
  br i1 %cmp118, label %cond.true.120, label %cond.false.121

cond.true.120:                                    ; preds = %cond.false
  br label %cond.end

cond.false.121:                                   ; preds = %cond.false
  %92 = load i32, i32* %newval, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.121, %cond.true.120
  %cond = phi i32 [ 0, %cond.true.120 ], [ %92, %cond.false.121 ]
  br label %cond.end.122

cond.end.122:                                     ; preds = %cond.end, %cond.true
  %cond123 = phi i32 [ 255, %cond.true ], [ %cond, %cond.end ]
  %conv124 = trunc i32 %cond123 to i8
  %93 = load i32, i32* %i, align 4
  %idxprom125 = sext i32 %93 to i64
  %94 = load i8*, i8** %color.addr, align 8
  %arrayidx126 = getelementptr inbounds i8, i8* %94, i64 %idxprom125
  store i8 %conv124, i8* %arrayidx126, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end.122
  %95 = load i32, i32* %i, align 4
  %inc = add nsw i32 %95, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @pixel_surround_destroy(%struct._PixelSurround*) #3

; Function Attrs: nounwind readnone
declare double @fabs(double) #1

; Function Attrs: nounwind uwtable
define internal void @get_sample(%struct._TileManager* %tm, i32 %xc, i32 %yc, i32 %x0, i32 %y0, i32 %x1, i32 %y1, i32 %x2, i32 %y2, i32 %x3, i32 %y3, i32* %cc, i32 %level, i32* %color, i8* %bg_color, i32 %bpp, i32 %alpha) #0 {
entry:
  %tm.addr = alloca %struct._TileManager*, align 8
  %xc.addr = alloca i32, align 4
  %yc.addr = alloca i32, align 4
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %x3.addr = alloca i32, align 4
  %y3.addr = alloca i32, align 4
  %cc.addr = alloca i32*, align 8
  %level.addr = alloca i32, align 4
  %color.addr = alloca i32*, align 8
  %bg_color.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %alpha.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %C = alloca [4 x i8], align 1
  %tx = alloca i32, align 4
  %lx = alloca i32, align 4
  %rx = alloca i32, align 4
  %bx = alloca i32, align 4
  %tlx = alloca i32, align 4
  %trx = alloca i32, align 4
  %blx = alloca i32, align 4
  %brx = alloca i32, align 4
  %ty = alloca i32, align 4
  %ly = alloca i32, align 4
  %ry = alloca i32, align 4
  %by = alloca i32, align 4
  %tly = alloca i32, align 4
  %try = alloca i32, align 4
  %bly = alloca i32, align 4
  %bry = alloca i32, align 4
  store %struct._TileManager* %tm, %struct._TileManager** %tm.addr, align 8
  store i32 %xc, i32* %xc.addr, align 4
  store i32 %yc, i32* %yc.addr, align 4
  store i32 %x0, i32* %x0.addr, align 4
  store i32 %y0, i32* %y0.addr, align 4
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %x2, i32* %x2.addr, align 4
  store i32 %y2, i32* %y2.addr, align 4
  store i32 %x3, i32* %x3.addr, align 4
  store i32 %y3, i32* %y3.addr, align 4
  store i32* %cc, i32** %cc.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  store i32* %color, i32** %color.addr, align 8
  store i8* %bg_color, i8** %bg_color.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i32 %alpha, i32* %alpha.addr, align 4
  %0 = load i32, i32* %level.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %x0.addr, align 4
  %2 = load i32, i32* %y0.addr, align 4
  %3 = load i32, i32* %x1.addr, align 4
  %4 = load i32, i32* %y1.addr, align 4
  %5 = load i32, i32* %x2.addr, align 4
  %6 = load i32, i32* %y2.addr, align 4
  %7 = load i32, i32* %x3.addr, align 4
  %8 = load i32, i32* %y3.addr, align 4
  %call = call i32 @supersample_test(i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %9 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %10 = load i32, i32* %xc.addr, align 4
  %11 = load i32, i32* %yc.addr, align 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %C, i32 0, i32 0
  %12 = load i8*, i8** %bg_color.addr, align 8
  %13 = load i32, i32* %bpp.addr, align 4
  %14 = load i32, i32* %alpha.addr, align 4
  call void @sample_bi(%struct._TileManager* %9, i32 %10, i32 %11, i8* %arraydecay, i8* %12, i32 %13, i32 %14)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %bpp.addr, align 4
  %cmp = icmp slt i32 %15, %16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %C, i32 0, i64 %idxprom
  %18 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %18 to i32
  %19 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %19 to i64
  %20 = load i32*, i32** %color.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %20, i64 %idxprom2
  %21 = load i32, i32* %arrayidx3, align 4
  %add = add i32 %21, %conv
  store i32 %add, i32* %arrayidx3, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load i32*, i32** %cc.addr, align 8
  %24 = load i32, i32* %23, align 4
  %inc4 = add nsw i32 %24, 1
  store i32 %inc4, i32* %23, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %25 = load i32, i32* %x0.addr, align 4
  %26 = load i32, i32* %x1.addr, align 4
  %add5 = add nsw i32 %25, %26
  %div = sdiv i32 %add5, 2
  store i32 %div, i32* %tx, align 4
  %27 = load i32, i32* %x0.addr, align 4
  %28 = load i32, i32* %xc.addr, align 4
  %add6 = add nsw i32 %27, %28
  %div7 = sdiv i32 %add6, 2
  store i32 %div7, i32* %tlx, align 4
  %29 = load i32, i32* %x1.addr, align 4
  %30 = load i32, i32* %xc.addr, align 4
  %add8 = add nsw i32 %29, %30
  %div9 = sdiv i32 %add8, 2
  store i32 %div9, i32* %trx, align 4
  %31 = load i32, i32* %x0.addr, align 4
  %32 = load i32, i32* %x3.addr, align 4
  %add10 = add nsw i32 %31, %32
  %div11 = sdiv i32 %add10, 2
  store i32 %div11, i32* %lx, align 4
  %33 = load i32, i32* %x1.addr, align 4
  %34 = load i32, i32* %x2.addr, align 4
  %add12 = add nsw i32 %33, %34
  %div13 = sdiv i32 %add12, 2
  store i32 %div13, i32* %rx, align 4
  %35 = load i32, i32* %x3.addr, align 4
  %36 = load i32, i32* %xc.addr, align 4
  %add14 = add nsw i32 %35, %36
  %div15 = sdiv i32 %add14, 2
  store i32 %div15, i32* %blx, align 4
  %37 = load i32, i32* %x2.addr, align 4
  %38 = load i32, i32* %xc.addr, align 4
  %add16 = add nsw i32 %37, %38
  %div17 = sdiv i32 %add16, 2
  store i32 %div17, i32* %brx, align 4
  %39 = load i32, i32* %x3.addr, align 4
  %40 = load i32, i32* %x2.addr, align 4
  %add18 = add nsw i32 %39, %40
  %div19 = sdiv i32 %add18, 2
  store i32 %div19, i32* %bx, align 4
  %41 = load i32, i32* %y0.addr, align 4
  %42 = load i32, i32* %y1.addr, align 4
  %add20 = add nsw i32 %41, %42
  %div21 = sdiv i32 %add20, 2
  store i32 %div21, i32* %ty, align 4
  %43 = load i32, i32* %y0.addr, align 4
  %44 = load i32, i32* %yc.addr, align 4
  %add22 = add nsw i32 %43, %44
  %div23 = sdiv i32 %add22, 2
  store i32 %div23, i32* %tly, align 4
  %45 = load i32, i32* %y1.addr, align 4
  %46 = load i32, i32* %yc.addr, align 4
  %add24 = add nsw i32 %45, %46
  %div25 = sdiv i32 %add24, 2
  store i32 %div25, i32* %try, align 4
  %47 = load i32, i32* %y0.addr, align 4
  %48 = load i32, i32* %y3.addr, align 4
  %add26 = add nsw i32 %47, %48
  %div27 = sdiv i32 %add26, 2
  store i32 %div27, i32* %ly, align 4
  %49 = load i32, i32* %y1.addr, align 4
  %50 = load i32, i32* %y2.addr, align 4
  %add28 = add nsw i32 %49, %50
  %div29 = sdiv i32 %add28, 2
  store i32 %div29, i32* %ry, align 4
  %51 = load i32, i32* %y3.addr, align 4
  %52 = load i32, i32* %yc.addr, align 4
  %add30 = add nsw i32 %51, %52
  %div31 = sdiv i32 %add30, 2
  store i32 %div31, i32* %bly, align 4
  %53 = load i32, i32* %y2.addr, align 4
  %54 = load i32, i32* %yc.addr, align 4
  %add32 = add nsw i32 %53, %54
  %div33 = sdiv i32 %add32, 2
  store i32 %div33, i32* %bry, align 4
  %55 = load i32, i32* %y3.addr, align 4
  %56 = load i32, i32* %y2.addr, align 4
  %add34 = add nsw i32 %55, %56
  %div35 = sdiv i32 %add34, 2
  store i32 %div35, i32* %by, align 4
  %57 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %58 = load i32, i32* %tlx, align 4
  %59 = load i32, i32* %tly, align 4
  %60 = load i32, i32* %x0.addr, align 4
  %61 = load i32, i32* %y0.addr, align 4
  %62 = load i32, i32* %tx, align 4
  %63 = load i32, i32* %ty, align 4
  %64 = load i32, i32* %xc.addr, align 4
  %65 = load i32, i32* %yc.addr, align 4
  %66 = load i32, i32* %lx, align 4
  %67 = load i32, i32* %ly, align 4
  %68 = load i32*, i32** %cc.addr, align 8
  %69 = load i32, i32* %level.addr, align 4
  %sub = sub nsw i32 %69, 1
  %70 = load i32*, i32** %color.addr, align 8
  %71 = load i8*, i8** %bg_color.addr, align 8
  %72 = load i32, i32* %bpp.addr, align 4
  %73 = load i32, i32* %alpha.addr, align 4
  call void @get_sample(%struct._TileManager* %57, i32 %58, i32 %59, i32 %60, i32 %61, i32 %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 %67, i32* %68, i32 %sub, i32* %70, i8* %71, i32 %72, i32 %73)
  %74 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %75 = load i32, i32* %trx, align 4
  %76 = load i32, i32* %try, align 4
  %77 = load i32, i32* %tx, align 4
  %78 = load i32, i32* %ty, align 4
  %79 = load i32, i32* %x1.addr, align 4
  %80 = load i32, i32* %y1.addr, align 4
  %81 = load i32, i32* %rx, align 4
  %82 = load i32, i32* %ry, align 4
  %83 = load i32, i32* %xc.addr, align 4
  %84 = load i32, i32* %yc.addr, align 4
  %85 = load i32*, i32** %cc.addr, align 8
  %86 = load i32, i32* %level.addr, align 4
  %sub36 = sub nsw i32 %86, 1
  %87 = load i32*, i32** %color.addr, align 8
  %88 = load i8*, i8** %bg_color.addr, align 8
  %89 = load i32, i32* %bpp.addr, align 4
  %90 = load i32, i32* %alpha.addr, align 4
  call void @get_sample(%struct._TileManager* %74, i32 %75, i32 %76, i32 %77, i32 %78, i32 %79, i32 %80, i32 %81, i32 %82, i32 %83, i32 %84, i32* %85, i32 %sub36, i32* %87, i8* %88, i32 %89, i32 %90)
  %91 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %92 = load i32, i32* %brx, align 4
  %93 = load i32, i32* %bry, align 4
  %94 = load i32, i32* %xc.addr, align 4
  %95 = load i32, i32* %yc.addr, align 4
  %96 = load i32, i32* %rx, align 4
  %97 = load i32, i32* %ry, align 4
  %98 = load i32, i32* %x2.addr, align 4
  %99 = load i32, i32* %y2.addr, align 4
  %100 = load i32, i32* %bx, align 4
  %101 = load i32, i32* %by, align 4
  %102 = load i32*, i32** %cc.addr, align 8
  %103 = load i32, i32* %level.addr, align 4
  %sub37 = sub nsw i32 %103, 1
  %104 = load i32*, i32** %color.addr, align 8
  %105 = load i8*, i8** %bg_color.addr, align 8
  %106 = load i32, i32* %bpp.addr, align 4
  %107 = load i32, i32* %alpha.addr, align 4
  call void @get_sample(%struct._TileManager* %91, i32 %92, i32 %93, i32 %94, i32 %95, i32 %96, i32 %97, i32 %98, i32 %99, i32 %100, i32 %101, i32* %102, i32 %sub37, i32* %104, i8* %105, i32 %106, i32 %107)
  %108 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %109 = load i32, i32* %blx, align 4
  %110 = load i32, i32* %bly, align 4
  %111 = load i32, i32* %lx, align 4
  %112 = load i32, i32* %ly, align 4
  %113 = load i32, i32* %xc.addr, align 4
  %114 = load i32, i32* %yc.addr, align 4
  %115 = load i32, i32* %bx, align 4
  %116 = load i32, i32* %by, align 4
  %117 = load i32, i32* %x3.addr, align 4
  %118 = load i32, i32* %y3.addr, align 4
  %119 = load i32*, i32** %cc.addr, align 8
  %120 = load i32, i32* %level.addr, align 4
  %sub38 = sub nsw i32 %120, 1
  %121 = load i32*, i32** %color.addr, align 8
  %122 = load i8*, i8** %bg_color.addr, align 8
  %123 = load i32, i32* %bpp.addr, align 4
  %124 = load i32, i32* %alpha.addr, align 4
  call void @get_sample(%struct._TileManager* %108, i32 %109, i32 %110, i32 %111, i32 %112, i32 %113, i32 %114, i32 %115, i32 %116, i32 %117, i32 %118, i32* %119, i32 %sub38, i32* %121, i8* %122, i32 %123, i32 %124)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @supersample_test(i32 %x0, i32 %y0, i32 %x1, i32 %y1, i32 %x2, i32 %y2, i32 %x3, i32 %y3) #6 {
entry:
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %x3.addr = alloca i32, align 4
  %y3.addr = alloca i32, align 4
  store i32 %x0, i32* %x0.addr, align 4
  store i32 %y0, i32* %y0.addr, align 4
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %x2, i32* %x2.addr, align 4
  store i32 %y2, i32* %y2.addr, align 4
  store i32 %x3, i32* %x3.addr, align 4
  store i32 %y3, i32* %y3.addr, align 4
  %0 = load i32, i32* %x0.addr, align 4
  %1 = load i32, i32* %x1.addr, align 4
  %sub = sub nsw i32 %0, %1
  %call = call i32 @abs(i32 %sub) #7
  %cmp = icmp sgt i32 %call, 1024
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %x1.addr, align 4
  %3 = load i32, i32* %x2.addr, align 4
  %sub1 = sub nsw i32 %2, %3
  %call2 = call i32 @abs(i32 %sub1) #7
  %cmp3 = icmp sgt i32 %call2, 1024
  br i1 %cmp3, label %lor.end, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %4 = load i32, i32* %x2.addr, align 4
  %5 = load i32, i32* %x3.addr, align 4
  %sub5 = sub nsw i32 %4, %5
  %call6 = call i32 @abs(i32 %sub5) #7
  %cmp7 = icmp sgt i32 %call6, 1024
  br i1 %cmp7, label %lor.end, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false.4
  %6 = load i32, i32* %x3.addr, align 4
  %7 = load i32, i32* %x0.addr, align 4
  %sub9 = sub nsw i32 %6, %7
  %call10 = call i32 @abs(i32 %sub9) #7
  %cmp11 = icmp sgt i32 %call10, 1024
  br i1 %cmp11, label %lor.end, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false.8
  %8 = load i32, i32* %y0.addr, align 4
  %9 = load i32, i32* %y1.addr, align 4
  %sub13 = sub nsw i32 %8, %9
  %call14 = call i32 @abs(i32 %sub13) #7
  %cmp15 = icmp sgt i32 %call14, 1024
  br i1 %cmp15, label %lor.end, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false.12
  %10 = load i32, i32* %y1.addr, align 4
  %11 = load i32, i32* %y2.addr, align 4
  %sub17 = sub nsw i32 %10, %11
  %call18 = call i32 @abs(i32 %sub17) #7
  %cmp19 = icmp sgt i32 %call18, 1024
  br i1 %cmp19, label %lor.end, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %lor.lhs.false.16
  %12 = load i32, i32* %y2.addr, align 4
  %13 = load i32, i32* %y3.addr, align 4
  %sub21 = sub nsw i32 %12, %13
  %call22 = call i32 @abs(i32 %sub21) #7
  %cmp23 = icmp sgt i32 %call22, 1024
  br i1 %cmp23, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.20
  %14 = load i32, i32* %y3.addr, align 4
  %15 = load i32, i32* %y0.addr, align 4
  %sub24 = sub nsw i32 %14, %15
  %call25 = call i32 @abs(i32 %sub24) #7
  %cmp26 = icmp sgt i32 %call25, 1024
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.20, %lor.lhs.false.16, %lor.lhs.false.12, %lor.lhs.false.8, %lor.lhs.false.4, %lor.lhs.false, %entry
  %16 = phi i1 [ true, %lor.lhs.false.20 ], [ true, %lor.lhs.false.16 ], [ true, %lor.lhs.false.12 ], [ true, %lor.lhs.false.8 ], [ true, %lor.lhs.false.4 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp26, %lor.rhs ]
  %lor.ext = zext i1 %16 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define internal void @sample_bi(%struct._TileManager* %tm, i32 %x, i32 %y, i8* %color, i8* %bg_color, i32 %bpp, i32 %alpha) #0 {
entry:
  %tm.addr = alloca %struct._TileManager*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %color.addr = alloca i8*, align 8
  %bg_color.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %alpha.addr = alloca i32, align 4
  %xscale = alloca i32, align 4
  %yscale = alloca i32, align 4
  %x0 = alloca i32, align 4
  %y0 = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %C = alloca [4 x [4 x i8]], align 16
  %i = alloca i32, align 4
  %src = alloca i32*, align 8
  %dst = alloca i32*, align 8
  store %struct._TileManager* %tm, %struct._TileManager** %tm.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i8* %color, i8** %color.addr, align 8
  store i8* %bg_color, i8** %bg_color.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i32 %alpha, i32* %alpha.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %and = and i32 %0, 1023
  store i32 %and, i32* %xscale, align 4
  %1 = load i32, i32* %y.addr, align 4
  %and1 = and i32 %1, 1023
  store i32 %and1, i32* %yscale, align 4
  %2 = load i32, i32* %x.addr, align 4
  %shr = ashr i32 %2, 10
  store i32 %shr, i32* %x0, align 4
  %3 = load i32, i32* %y.addr, align 4
  %shr2 = ashr i32 %3, 10
  store i32 %shr2, i32* %y0, align 4
  %4 = load i32, i32* %x0, align 4
  %add = add nsw i32 %4, 1
  store i32 %add, i32* %x1, align 4
  %5 = load i32, i32* %y0, align 4
  %add3 = add nsw i32 %5, 1
  store i32 %add3, i32* %y1, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %6, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i8*, i8** %bg_color.addr, align 8
  %8 = bitcast i8* %7 to i32*
  store i32* %8, i32** %src, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %C, i32 0, i64 %idxprom
  %10 = bitcast [4 x i8]* %arrayidx to i32*
  store i32* %10, i32** %dst, align 8
  %11 = load i32*, i32** %src, align 8
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** %dst, align 8
  store i32 %12, i32* %13, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %16 = load i32, i32* %x0, align 4
  %17 = load i32, i32* %y0, align 4
  %arrayidx4 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %C, i32 0, i64 0
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx4, i32 0, i32 0
  call void @tile_manager_read_pixel_data_1(%struct._TileManager* %15, i32 %16, i32 %17, i8* %arraydecay)
  %18 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %19 = load i32, i32* %x1, align 4
  %20 = load i32, i32* %y0, align 4
  %arrayidx5 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %C, i32 0, i64 2
  %arraydecay6 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx5, i32 0, i32 0
  call void @tile_manager_read_pixel_data_1(%struct._TileManager* %18, i32 %19, i32 %20, i8* %arraydecay6)
  %21 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %22 = load i32, i32* %x0, align 4
  %23 = load i32, i32* %y1, align 4
  %arrayidx7 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %C, i32 0, i64 1
  %arraydecay8 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx7, i32 0, i32 0
  call void @tile_manager_read_pixel_data_1(%struct._TileManager* %21, i32 %22, i32 %23, i8* %arraydecay8)
  %24 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %25 = load i32, i32* %x1, align 4
  %26 = load i32, i32* %y1, align 4
  %arrayidx9 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %C, i32 0, i64 3
  %arraydecay10 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx9, i32 0, i32 0
  call void @tile_manager_read_pixel_data_1(%struct._TileManager* %24, i32 %25, i32 %26, i8* %arraydecay10)
  %27 = load i32, i32* %alpha.addr, align 4
  %idxprom11 = sext i32 %27 to i64
  %arrayidx12 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %C, i32 0, i64 0
  %arrayidx13 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx12, i32 0, i64 %idxprom11
  %28 = load i8, i8* %arrayidx13, align 1
  %conv = zext i8 %28 to i32
  %29 = load i32, i32* %yscale, align 4
  %sub = sub i32 1024, %29
  %mul = mul i32 %conv, %sub
  %30 = load i32, i32* %alpha.addr, align 4
  %idxprom14 = sext i32 %30 to i64
  %arrayidx15 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %C, i32 0, i64 1
  %arrayidx16 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx15, i32 0, i64 %idxprom14
  %31 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %31 to i32
  %32 = load i32, i32* %yscale, align 4
  %mul18 = mul i32 %conv17, %32
  %add19 = add i32 %mul, %mul18
  %shr20 = lshr i32 %add19, 10
  %33 = load i32, i32* %xscale, align 4
  %sub21 = sub i32 1024, %33
  %mul22 = mul i32 %shr20, %sub21
  %34 = load i32, i32* %alpha.addr, align 4
  %idxprom23 = sext i32 %34 to i64
  %arrayidx24 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %C, i32 0, i64 2
  %arrayidx25 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx24, i32 0, i64 %idxprom23
  %35 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %35 to i32
  %36 = load i32, i32* %yscale, align 4
  %sub27 = sub i32 1024, %36
  %mul28 = mul i32 %conv26, %sub27
  %37 = load i32, i32* %alpha.addr, align 4
  %idxprom29 = sext i32 %37 to i64
  %arrayidx30 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %C, i32 0, i64 3
  %arrayidx31 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx30, i32 0, i64 %idxprom29
  %38 = load i8, i8* %arrayidx31, align 1
  %conv32 = zext i8 %38 to i32
  %39 = load i32, i32* %yscale, align 4
  %mul33 = mul i32 %conv32, %39
  %add34 = add i32 %mul28, %mul33
  %shr35 = lshr i32 %add34, 10
  %40 = load i32, i32* %xscale, align 4
  %mul36 = mul i32 %shr35, %40
  %add37 = add i32 %mul22, %mul36
  %shr38 = lshr i32 %add37, 10
  %conv39 = trunc i32 %shr38 to i8
  %41 = load i32, i32* %alpha.addr, align 4
  %idxprom40 = sext i32 %41 to i64
  %42 = load i8*, i8** %color.addr, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %42, i64 %idxprom40
  store i8 %conv39, i8* %arrayidx41, align 1
  %43 = load i32, i32* %alpha.addr, align 4
  %idxprom42 = sext i32 %43 to i64
  %44 = load i8*, i8** %color.addr, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %44, i64 %idxprom42
  %45 = load i8, i8* %arrayidx43, align 1
  %tobool = icmp ne i8 %45, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  store i32 0, i32* %i, align 4
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.105, %if.then
  %46 = load i32, i32* %i, align 4
  %47 = load i32, i32* %alpha.addr, align 4
  %cmp45 = icmp slt i32 %46, %47
  br i1 %cmp45, label %for.body.47, label %for.end.107

for.body.47:                                      ; preds = %for.cond.44
  %48 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %48 to i64
  %arrayidx49 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %C, i32 0, i64 0
  %arrayidx50 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx49, i32 0, i64 %idxprom48
  %49 = load i8, i8* %arrayidx50, align 1
  %conv51 = zext i8 %49 to i32
  %50 = load i32, i32* %alpha.addr, align 4
  %idxprom52 = sext i32 %50 to i64
  %arrayidx53 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %C, i32 0, i64 0
  %arrayidx54 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx53, i32 0, i64 %idxprom52
  %51 = load i8, i8* %arrayidx54, align 1
  %conv55 = zext i8 %51 to i32
  %mul56 = mul nsw i32 %conv51, %conv55
  %div = sdiv i32 %mul56, 255
  %52 = load i32, i32* %yscale, align 4
  %sub57 = sub i32 1024, %52
  %mul58 = mul i32 %div, %sub57
  %53 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %53 to i64
  %arrayidx60 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %C, i32 0, i64 1
  %arrayidx61 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx60, i32 0, i64 %idxprom59
  %54 = load i8, i8* %arrayidx61, align 1
  %conv62 = zext i8 %54 to i32
  %55 = load i32, i32* %alpha.addr, align 4
  %idxprom63 = sext i32 %55 to i64
  %arrayidx64 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %C, i32 0, i64 1
  %arrayidx65 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx64, i32 0, i64 %idxprom63
  %56 = load i8, i8* %arrayidx65, align 1
  %conv66 = zext i8 %56 to i32
  %mul67 = mul nsw i32 %conv62, %conv66
  %div68 = sdiv i32 %mul67, 255
  %57 = load i32, i32* %yscale, align 4
  %mul69 = mul i32 %div68, %57
  %add70 = add i32 %mul58, %mul69
  %shr71 = lshr i32 %add70, 10
  %58 = load i32, i32* %xscale, align 4
  %sub72 = sub i32 1024, %58
  %mul73 = mul i32 %shr71, %sub72
  %59 = load i32, i32* %i, align 4
  %idxprom74 = sext i32 %59 to i64
  %arrayidx75 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %C, i32 0, i64 2
  %arrayidx76 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx75, i32 0, i64 %idxprom74
  %60 = load i8, i8* %arrayidx76, align 1
  %conv77 = zext i8 %60 to i32
  %61 = load i32, i32* %alpha.addr, align 4
  %idxprom78 = sext i32 %61 to i64
  %arrayidx79 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %C, i32 0, i64 2
  %arrayidx80 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx79, i32 0, i64 %idxprom78
  %62 = load i8, i8* %arrayidx80, align 1
  %conv81 = zext i8 %62 to i32
  %mul82 = mul nsw i32 %conv77, %conv81
  %div83 = sdiv i32 %mul82, 255
  %63 = load i32, i32* %yscale, align 4
  %sub84 = sub i32 1024, %63
  %mul85 = mul i32 %div83, %sub84
  %64 = load i32, i32* %i, align 4
  %idxprom86 = sext i32 %64 to i64
  %arrayidx87 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %C, i32 0, i64 3
  %arrayidx88 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx87, i32 0, i64 %idxprom86
  %65 = load i8, i8* %arrayidx88, align 1
  %conv89 = zext i8 %65 to i32
  %66 = load i32, i32* %alpha.addr, align 4
  %idxprom90 = sext i32 %66 to i64
  %arrayidx91 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %C, i32 0, i64 3
  %arrayidx92 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx91, i32 0, i64 %idxprom90
  %67 = load i8, i8* %arrayidx92, align 1
  %conv93 = zext i8 %67 to i32
  %mul94 = mul nsw i32 %conv89, %conv93
  %div95 = sdiv i32 %mul94, 255
  %68 = load i32, i32* %yscale, align 4
  %mul96 = mul i32 %div95, %68
  %add97 = add i32 %mul85, %mul96
  %shr98 = lshr i32 %add97, 10
  %69 = load i32, i32* %xscale, align 4
  %mul99 = mul i32 %shr98, %69
  %add100 = add i32 %mul73, %mul99
  %shr101 = lshr i32 %add100, 10
  %conv102 = trunc i32 %shr101 to i8
  %70 = load i32, i32* %i, align 4
  %idxprom103 = sext i32 %70 to i64
  %71 = load i8*, i8** %color.addr, align 8
  %arrayidx104 = getelementptr inbounds i8, i8* %71, i64 %idxprom103
  store i8 %conv102, i8* %arrayidx104, align 1
  br label %for.inc.105

for.inc.105:                                      ; preds = %for.body.47
  %72 = load i32, i32* %i, align 4
  %inc106 = add nsw i32 %72, 1
  store i32 %inc106, i32* %i, align 4
  br label %for.cond.44

for.end.107:                                      ; preds = %for.cond.44
  br label %if.end

if.else:                                          ; preds = %for.end
  store i32 0, i32* %i, align 4
  br label %for.cond.108

for.cond.108:                                     ; preds = %for.inc.114, %if.else
  %73 = load i32, i32* %i, align 4
  %74 = load i32, i32* %alpha.addr, align 4
  %cmp109 = icmp slt i32 %73, %74
  br i1 %cmp109, label %for.body.111, label %for.end.116

for.body.111:                                     ; preds = %for.cond.108
  %75 = load i32, i32* %i, align 4
  %idxprom112 = sext i32 %75 to i64
  %76 = load i8*, i8** %color.addr, align 8
  %arrayidx113 = getelementptr inbounds i8, i8* %76, i64 %idxprom112
  store i8 0, i8* %arrayidx113, align 1
  br label %for.inc.114

for.inc.114:                                      ; preds = %for.body.111
  %77 = load i32, i32* %i, align 4
  %inc115 = add nsw i32 %77, 1
  store i32 %inc115, i32* %i, align 4
  br label %for.cond.108

for.end.116:                                      ; preds = %for.cond.108
  br label %if.end

if.end:                                           ; preds = %for.end.116, %for.end.107
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #1

declare i8* @pixel_surround_lock(%struct._PixelSurround*, i32, i32, i32*) #3

; Function Attrs: nounwind readnone
declare double @rint(double) #1

; Function Attrs: nounwind uwtable
define internal void @sample_cubic(%struct._PixelSurround* %surround, double %u, double %v, i8* %color, i32 %bytes, i32 %alpha) #0 {
entry:
  %surround.addr = alloca %struct._PixelSurround*, align 8
  %u.addr = alloca double, align 8
  %v.addr = alloca double, align 8
  %color.addr = alloca i8*, align 8
  %bytes.addr = alloca i32, align 4
  %alpha.addr = alloca i32, align 4
  %a_val = alloca double, align 8
  %a_recip = alloca double, align 8
  %i = alloca i32, align 4
  %iu = alloca i32, align 4
  %iv = alloca i32, align 4
  %rowstride = alloca i32, align 4
  %du = alloca double, align 8
  %dv = alloca double, align 8
  %data = alloca i8*, align 8
  %newval = alloca i32, align 4
  store %struct._PixelSurround* %surround, %struct._PixelSurround** %surround.addr, align 8
  store double %u, double* %u.addr, align 8
  store double %v, double* %v.addr, align 8
  store i8* %color, i8** %color.addr, align 8
  store i32 %bytes, i32* %bytes.addr, align 4
  store i32 %alpha, i32* %alpha.addr, align 4
  %0 = load double, double* %u.addr, align 8
  %call = call double @floor(double %0) #7
  %conv = fptosi double %call to i32
  store i32 %conv, i32* %iu, align 4
  %1 = load double, double* %v.addr, align 8
  %call1 = call double @floor(double %1) #7
  %conv2 = fptosi double %call1 to i32
  store i32 %conv2, i32* %iv, align 4
  %2 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %3 = load i32, i32* %iu, align 4
  %sub = sub nsw i32 %3, 1
  %4 = load i32, i32* %iv, align 4
  %sub3 = sub nsw i32 %4, 1
  %call4 = call i8* @pixel_surround_lock(%struct._PixelSurround* %2, i32 %sub, i32 %sub3, i32* %rowstride)
  store i8* %call4, i8** %data, align 8
  %5 = load double, double* %u.addr, align 8
  %6 = load i32, i32* %iu, align 4
  %conv5 = sitofp i32 %6 to double
  %sub6 = fsub double %5, %conv5
  store double %sub6, double* %du, align 8
  %7 = load double, double* %v.addr, align 8
  %8 = load i32, i32* %iv, align 4
  %conv7 = sitofp i32 %8 to double
  %sub8 = fsub double %7, %conv7
  store double %sub8, double* %dv, align 8
  %9 = load double, double* %dv, align 8
  %10 = load double, double* %du, align 8
  %11 = load i8*, i8** %data, align 8
  %12 = load i32, i32* %alpha.addr, align 4
  %idx.ext = sext i32 %12 to i64
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %idx.ext
  %13 = load i32, i32* %rowstride, align 4
  %mul = mul nsw i32 %13, 0
  %idx.ext9 = sext i32 %mul to i64
  %add.ptr10 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext9
  %arrayidx = getelementptr inbounds i8, i8* %add.ptr10, i64 0
  %14 = load i8, i8* %arrayidx, align 1
  %conv11 = zext i8 %14 to i32
  %15 = load i32, i32* %bytes.addr, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load i8*, i8** %data, align 8
  %17 = load i32, i32* %alpha.addr, align 4
  %idx.ext12 = sext i32 %17 to i64
  %add.ptr13 = getelementptr inbounds i8, i8* %16, i64 %idx.ext12
  %18 = load i32, i32* %rowstride, align 4
  %mul14 = mul nsw i32 %18, 0
  %idx.ext15 = sext i32 %mul14 to i64
  %add.ptr16 = getelementptr inbounds i8, i8* %add.ptr13, i64 %idx.ext15
  %arrayidx17 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idxprom
  %19 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %19 to i32
  %20 = load i32, i32* %bytes.addr, align 4
  %21 = load i32, i32* %bytes.addr, align 4
  %add = add nsw i32 %20, %21
  %idxprom19 = sext i32 %add to i64
  %22 = load i8*, i8** %data, align 8
  %23 = load i32, i32* %alpha.addr, align 4
  %idx.ext20 = sext i32 %23 to i64
  %add.ptr21 = getelementptr inbounds i8, i8* %22, i64 %idx.ext20
  %24 = load i32, i32* %rowstride, align 4
  %mul22 = mul nsw i32 %24, 0
  %idx.ext23 = sext i32 %mul22 to i64
  %add.ptr24 = getelementptr inbounds i8, i8* %add.ptr21, i64 %idx.ext23
  %arrayidx25 = getelementptr inbounds i8, i8* %add.ptr24, i64 %idxprom19
  %25 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %25 to i32
  %26 = load i32, i32* %bytes.addr, align 4
  %27 = load i32, i32* %bytes.addr, align 4
  %add27 = add nsw i32 %26, %27
  %28 = load i32, i32* %bytes.addr, align 4
  %add28 = add nsw i32 %add27, %28
  %idxprom29 = sext i32 %add28 to i64
  %29 = load i8*, i8** %data, align 8
  %30 = load i32, i32* %alpha.addr, align 4
  %idx.ext30 = sext i32 %30 to i64
  %add.ptr31 = getelementptr inbounds i8, i8* %29, i64 %idx.ext30
  %31 = load i32, i32* %rowstride, align 4
  %mul32 = mul nsw i32 %31, 0
  %idx.ext33 = sext i32 %mul32 to i64
  %add.ptr34 = getelementptr inbounds i8, i8* %add.ptr31, i64 %idx.ext33
  %arrayidx35 = getelementptr inbounds i8, i8* %add.ptr34, i64 %idxprom29
  %32 = load i8, i8* %arrayidx35, align 1
  %conv36 = zext i8 %32 to i32
  %call37 = call double @gimp_drawable_transform_cubic(double %10, i32 %conv11, i32 %conv18, i32 %conv26, i32 %conv36)
  %conv38 = fptosi double %call37 to i32
  %33 = load double, double* %du, align 8
  %34 = load i8*, i8** %data, align 8
  %35 = load i32, i32* %alpha.addr, align 4
  %idx.ext39 = sext i32 %35 to i64
  %add.ptr40 = getelementptr inbounds i8, i8* %34, i64 %idx.ext39
  %36 = load i32, i32* %rowstride, align 4
  %mul41 = mul nsw i32 %36, 1
  %idx.ext42 = sext i32 %mul41 to i64
  %add.ptr43 = getelementptr inbounds i8, i8* %add.ptr40, i64 %idx.ext42
  %arrayidx44 = getelementptr inbounds i8, i8* %add.ptr43, i64 0
  %37 = load i8, i8* %arrayidx44, align 1
  %conv45 = zext i8 %37 to i32
  %38 = load i32, i32* %bytes.addr, align 4
  %idxprom46 = sext i32 %38 to i64
  %39 = load i8*, i8** %data, align 8
  %40 = load i32, i32* %alpha.addr, align 4
  %idx.ext47 = sext i32 %40 to i64
  %add.ptr48 = getelementptr inbounds i8, i8* %39, i64 %idx.ext47
  %41 = load i32, i32* %rowstride, align 4
  %mul49 = mul nsw i32 %41, 1
  %idx.ext50 = sext i32 %mul49 to i64
  %add.ptr51 = getelementptr inbounds i8, i8* %add.ptr48, i64 %idx.ext50
  %arrayidx52 = getelementptr inbounds i8, i8* %add.ptr51, i64 %idxprom46
  %42 = load i8, i8* %arrayidx52, align 1
  %conv53 = zext i8 %42 to i32
  %43 = load i32, i32* %bytes.addr, align 4
  %44 = load i32, i32* %bytes.addr, align 4
  %add54 = add nsw i32 %43, %44
  %idxprom55 = sext i32 %add54 to i64
  %45 = load i8*, i8** %data, align 8
  %46 = load i32, i32* %alpha.addr, align 4
  %idx.ext56 = sext i32 %46 to i64
  %add.ptr57 = getelementptr inbounds i8, i8* %45, i64 %idx.ext56
  %47 = load i32, i32* %rowstride, align 4
  %mul58 = mul nsw i32 %47, 1
  %idx.ext59 = sext i32 %mul58 to i64
  %add.ptr60 = getelementptr inbounds i8, i8* %add.ptr57, i64 %idx.ext59
  %arrayidx61 = getelementptr inbounds i8, i8* %add.ptr60, i64 %idxprom55
  %48 = load i8, i8* %arrayidx61, align 1
  %conv62 = zext i8 %48 to i32
  %49 = load i32, i32* %bytes.addr, align 4
  %50 = load i32, i32* %bytes.addr, align 4
  %add63 = add nsw i32 %49, %50
  %51 = load i32, i32* %bytes.addr, align 4
  %add64 = add nsw i32 %add63, %51
  %idxprom65 = sext i32 %add64 to i64
  %52 = load i8*, i8** %data, align 8
  %53 = load i32, i32* %alpha.addr, align 4
  %idx.ext66 = sext i32 %53 to i64
  %add.ptr67 = getelementptr inbounds i8, i8* %52, i64 %idx.ext66
  %54 = load i32, i32* %rowstride, align 4
  %mul68 = mul nsw i32 %54, 1
  %idx.ext69 = sext i32 %mul68 to i64
  %add.ptr70 = getelementptr inbounds i8, i8* %add.ptr67, i64 %idx.ext69
  %arrayidx71 = getelementptr inbounds i8, i8* %add.ptr70, i64 %idxprom65
  %55 = load i8, i8* %arrayidx71, align 1
  %conv72 = zext i8 %55 to i32
  %call73 = call double @gimp_drawable_transform_cubic(double %33, i32 %conv45, i32 %conv53, i32 %conv62, i32 %conv72)
  %conv74 = fptosi double %call73 to i32
  %56 = load double, double* %du, align 8
  %57 = load i8*, i8** %data, align 8
  %58 = load i32, i32* %alpha.addr, align 4
  %idx.ext75 = sext i32 %58 to i64
  %add.ptr76 = getelementptr inbounds i8, i8* %57, i64 %idx.ext75
  %59 = load i32, i32* %rowstride, align 4
  %mul77 = mul nsw i32 %59, 2
  %idx.ext78 = sext i32 %mul77 to i64
  %add.ptr79 = getelementptr inbounds i8, i8* %add.ptr76, i64 %idx.ext78
  %arrayidx80 = getelementptr inbounds i8, i8* %add.ptr79, i64 0
  %60 = load i8, i8* %arrayidx80, align 1
  %conv81 = zext i8 %60 to i32
  %61 = load i32, i32* %bytes.addr, align 4
  %idxprom82 = sext i32 %61 to i64
  %62 = load i8*, i8** %data, align 8
  %63 = load i32, i32* %alpha.addr, align 4
  %idx.ext83 = sext i32 %63 to i64
  %add.ptr84 = getelementptr inbounds i8, i8* %62, i64 %idx.ext83
  %64 = load i32, i32* %rowstride, align 4
  %mul85 = mul nsw i32 %64, 2
  %idx.ext86 = sext i32 %mul85 to i64
  %add.ptr87 = getelementptr inbounds i8, i8* %add.ptr84, i64 %idx.ext86
  %arrayidx88 = getelementptr inbounds i8, i8* %add.ptr87, i64 %idxprom82
  %65 = load i8, i8* %arrayidx88, align 1
  %conv89 = zext i8 %65 to i32
  %66 = load i32, i32* %bytes.addr, align 4
  %67 = load i32, i32* %bytes.addr, align 4
  %add90 = add nsw i32 %66, %67
  %idxprom91 = sext i32 %add90 to i64
  %68 = load i8*, i8** %data, align 8
  %69 = load i32, i32* %alpha.addr, align 4
  %idx.ext92 = sext i32 %69 to i64
  %add.ptr93 = getelementptr inbounds i8, i8* %68, i64 %idx.ext92
  %70 = load i32, i32* %rowstride, align 4
  %mul94 = mul nsw i32 %70, 2
  %idx.ext95 = sext i32 %mul94 to i64
  %add.ptr96 = getelementptr inbounds i8, i8* %add.ptr93, i64 %idx.ext95
  %arrayidx97 = getelementptr inbounds i8, i8* %add.ptr96, i64 %idxprom91
  %71 = load i8, i8* %arrayidx97, align 1
  %conv98 = zext i8 %71 to i32
  %72 = load i32, i32* %bytes.addr, align 4
  %73 = load i32, i32* %bytes.addr, align 4
  %add99 = add nsw i32 %72, %73
  %74 = load i32, i32* %bytes.addr, align 4
  %add100 = add nsw i32 %add99, %74
  %idxprom101 = sext i32 %add100 to i64
  %75 = load i8*, i8** %data, align 8
  %76 = load i32, i32* %alpha.addr, align 4
  %idx.ext102 = sext i32 %76 to i64
  %add.ptr103 = getelementptr inbounds i8, i8* %75, i64 %idx.ext102
  %77 = load i32, i32* %rowstride, align 4
  %mul104 = mul nsw i32 %77, 2
  %idx.ext105 = sext i32 %mul104 to i64
  %add.ptr106 = getelementptr inbounds i8, i8* %add.ptr103, i64 %idx.ext105
  %arrayidx107 = getelementptr inbounds i8, i8* %add.ptr106, i64 %idxprom101
  %78 = load i8, i8* %arrayidx107, align 1
  %conv108 = zext i8 %78 to i32
  %call109 = call double @gimp_drawable_transform_cubic(double %56, i32 %conv81, i32 %conv89, i32 %conv98, i32 %conv108)
  %conv110 = fptosi double %call109 to i32
  %79 = load double, double* %du, align 8
  %80 = load i8*, i8** %data, align 8
  %81 = load i32, i32* %alpha.addr, align 4
  %idx.ext111 = sext i32 %81 to i64
  %add.ptr112 = getelementptr inbounds i8, i8* %80, i64 %idx.ext111
  %82 = load i32, i32* %rowstride, align 4
  %mul113 = mul nsw i32 %82, 3
  %idx.ext114 = sext i32 %mul113 to i64
  %add.ptr115 = getelementptr inbounds i8, i8* %add.ptr112, i64 %idx.ext114
  %arrayidx116 = getelementptr inbounds i8, i8* %add.ptr115, i64 0
  %83 = load i8, i8* %arrayidx116, align 1
  %conv117 = zext i8 %83 to i32
  %84 = load i32, i32* %bytes.addr, align 4
  %idxprom118 = sext i32 %84 to i64
  %85 = load i8*, i8** %data, align 8
  %86 = load i32, i32* %alpha.addr, align 4
  %idx.ext119 = sext i32 %86 to i64
  %add.ptr120 = getelementptr inbounds i8, i8* %85, i64 %idx.ext119
  %87 = load i32, i32* %rowstride, align 4
  %mul121 = mul nsw i32 %87, 3
  %idx.ext122 = sext i32 %mul121 to i64
  %add.ptr123 = getelementptr inbounds i8, i8* %add.ptr120, i64 %idx.ext122
  %arrayidx124 = getelementptr inbounds i8, i8* %add.ptr123, i64 %idxprom118
  %88 = load i8, i8* %arrayidx124, align 1
  %conv125 = zext i8 %88 to i32
  %89 = load i32, i32* %bytes.addr, align 4
  %90 = load i32, i32* %bytes.addr, align 4
  %add126 = add nsw i32 %89, %90
  %idxprom127 = sext i32 %add126 to i64
  %91 = load i8*, i8** %data, align 8
  %92 = load i32, i32* %alpha.addr, align 4
  %idx.ext128 = sext i32 %92 to i64
  %add.ptr129 = getelementptr inbounds i8, i8* %91, i64 %idx.ext128
  %93 = load i32, i32* %rowstride, align 4
  %mul130 = mul nsw i32 %93, 3
  %idx.ext131 = sext i32 %mul130 to i64
  %add.ptr132 = getelementptr inbounds i8, i8* %add.ptr129, i64 %idx.ext131
  %arrayidx133 = getelementptr inbounds i8, i8* %add.ptr132, i64 %idxprom127
  %94 = load i8, i8* %arrayidx133, align 1
  %conv134 = zext i8 %94 to i32
  %95 = load i32, i32* %bytes.addr, align 4
  %96 = load i32, i32* %bytes.addr, align 4
  %add135 = add nsw i32 %95, %96
  %97 = load i32, i32* %bytes.addr, align 4
  %add136 = add nsw i32 %add135, %97
  %idxprom137 = sext i32 %add136 to i64
  %98 = load i8*, i8** %data, align 8
  %99 = load i32, i32* %alpha.addr, align 4
  %idx.ext138 = sext i32 %99 to i64
  %add.ptr139 = getelementptr inbounds i8, i8* %98, i64 %idx.ext138
  %100 = load i32, i32* %rowstride, align 4
  %mul140 = mul nsw i32 %100, 3
  %idx.ext141 = sext i32 %mul140 to i64
  %add.ptr142 = getelementptr inbounds i8, i8* %add.ptr139, i64 %idx.ext141
  %arrayidx143 = getelementptr inbounds i8, i8* %add.ptr142, i64 %idxprom137
  %101 = load i8, i8* %arrayidx143, align 1
  %conv144 = zext i8 %101 to i32
  %call145 = call double @gimp_drawable_transform_cubic(double %79, i32 %conv117, i32 %conv125, i32 %conv134, i32 %conv144)
  %conv146 = fptosi double %call145 to i32
  %call147 = call double @gimp_drawable_transform_cubic(double %9, i32 %conv38, i32 %conv74, i32 %conv110, i32 %conv146)
  store double %call147, double* %a_val, align 8
  %102 = load double, double* %a_val, align 8
  %cmp = fcmp ole double %102, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store double 0.000000e+00, double* %a_recip, align 8
  %103 = load i32, i32* %alpha.addr, align 4
  %idxprom149 = sext i32 %103 to i64
  %104 = load i8*, i8** %color.addr, align 8
  %arrayidx150 = getelementptr inbounds i8, i8* %104, i64 %idxprom149
  store i8 0, i8* %arrayidx150, align 1
  br label %if.end.162

if.else:                                          ; preds = %entry
  %105 = load double, double* %a_val, align 8
  %cmp151 = fcmp ogt double %105, 2.550000e+02
  br i1 %cmp151, label %if.then.153, label %if.else.156

if.then.153:                                      ; preds = %if.else
  %106 = load double, double* %a_val, align 8
  %div = fdiv double 1.000000e+00, %106
  store double %div, double* %a_recip, align 8
  %107 = load i32, i32* %alpha.addr, align 4
  %idxprom154 = sext i32 %107 to i64
  %108 = load i8*, i8** %color.addr, align 8
  %arrayidx155 = getelementptr inbounds i8, i8* %108, i64 %idxprom154
  store i8 -1, i8* %arrayidx155, align 1
  br label %if.end

if.else.156:                                      ; preds = %if.else
  %109 = load double, double* %a_val, align 8
  %div157 = fdiv double 1.000000e+00, %109
  store double %div157, double* %a_recip, align 8
  %110 = load double, double* %a_val, align 8
  %call158 = call double @rint(double %110) #7
  %conv159 = fptoui double %call158 to i8
  %111 = load i32, i32* %alpha.addr, align 4
  %idxprom160 = sext i32 %111 to i64
  %112 = load i8*, i8** %color.addr, align 8
  %arrayidx161 = getelementptr inbounds i8, i8* %112, i64 %idxprom160
  store i8 %conv159, i8* %arrayidx161, align 1
  br label %if.end

if.end:                                           ; preds = %if.else.156, %if.then.153
  br label %if.end.162

if.end.162:                                       ; preds = %if.end, %if.then
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.162
  %113 = load i32, i32* %i, align 4
  %114 = load i32, i32* %alpha.addr, align 4
  %cmp163 = icmp slt i32 %113, %114
  br i1 %cmp163, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %115 = load double, double* %a_recip, align 8
  %116 = load double, double* %dv, align 8
  %117 = load double, double* %du, align 8
  %118 = load i8*, i8** %data, align 8
  %119 = load i32, i32* %alpha.addr, align 4
  %idx.ext165 = sext i32 %119 to i64
  %add.ptr166 = getelementptr inbounds i8, i8* %118, i64 %idx.ext165
  %120 = load i32, i32* %rowstride, align 4
  %mul167 = mul nsw i32 %120, 0
  %idx.ext168 = sext i32 %mul167 to i64
  %add.ptr169 = getelementptr inbounds i8, i8* %add.ptr166, i64 %idx.ext168
  %arrayidx170 = getelementptr inbounds i8, i8* %add.ptr169, i64 0
  %121 = load i8, i8* %arrayidx170, align 1
  %conv171 = zext i8 %121 to i32
  %122 = load i32, i32* %i, align 4
  %123 = load i8*, i8** %data, align 8
  %idx.ext172 = sext i32 %122 to i64
  %add.ptr173 = getelementptr inbounds i8, i8* %123, i64 %idx.ext172
  %124 = load i32, i32* %rowstride, align 4
  %mul174 = mul nsw i32 %124, 0
  %idx.ext175 = sext i32 %mul174 to i64
  %add.ptr176 = getelementptr inbounds i8, i8* %add.ptr173, i64 %idx.ext175
  %arrayidx177 = getelementptr inbounds i8, i8* %add.ptr176, i64 0
  %125 = load i8, i8* %arrayidx177, align 1
  %conv178 = zext i8 %125 to i32
  %mul179 = mul nsw i32 %conv171, %conv178
  %126 = load i32, i32* %bytes.addr, align 4
  %idxprom180 = sext i32 %126 to i64
  %127 = load i8*, i8** %data, align 8
  %128 = load i32, i32* %alpha.addr, align 4
  %idx.ext181 = sext i32 %128 to i64
  %add.ptr182 = getelementptr inbounds i8, i8* %127, i64 %idx.ext181
  %129 = load i32, i32* %rowstride, align 4
  %mul183 = mul nsw i32 %129, 0
  %idx.ext184 = sext i32 %mul183 to i64
  %add.ptr185 = getelementptr inbounds i8, i8* %add.ptr182, i64 %idx.ext184
  %arrayidx186 = getelementptr inbounds i8, i8* %add.ptr185, i64 %idxprom180
  %130 = load i8, i8* %arrayidx186, align 1
  %conv187 = zext i8 %130 to i32
  %131 = load i32, i32* %bytes.addr, align 4
  %idxprom188 = sext i32 %131 to i64
  %132 = load i32, i32* %i, align 4
  %133 = load i8*, i8** %data, align 8
  %idx.ext189 = sext i32 %132 to i64
  %add.ptr190 = getelementptr inbounds i8, i8* %133, i64 %idx.ext189
  %134 = load i32, i32* %rowstride, align 4
  %mul191 = mul nsw i32 %134, 0
  %idx.ext192 = sext i32 %mul191 to i64
  %add.ptr193 = getelementptr inbounds i8, i8* %add.ptr190, i64 %idx.ext192
  %arrayidx194 = getelementptr inbounds i8, i8* %add.ptr193, i64 %idxprom188
  %135 = load i8, i8* %arrayidx194, align 1
  %conv195 = zext i8 %135 to i32
  %mul196 = mul nsw i32 %conv187, %conv195
  %136 = load i32, i32* %bytes.addr, align 4
  %137 = load i32, i32* %bytes.addr, align 4
  %add197 = add nsw i32 %136, %137
  %idxprom198 = sext i32 %add197 to i64
  %138 = load i8*, i8** %data, align 8
  %139 = load i32, i32* %alpha.addr, align 4
  %idx.ext199 = sext i32 %139 to i64
  %add.ptr200 = getelementptr inbounds i8, i8* %138, i64 %idx.ext199
  %140 = load i32, i32* %rowstride, align 4
  %mul201 = mul nsw i32 %140, 0
  %idx.ext202 = sext i32 %mul201 to i64
  %add.ptr203 = getelementptr inbounds i8, i8* %add.ptr200, i64 %idx.ext202
  %arrayidx204 = getelementptr inbounds i8, i8* %add.ptr203, i64 %idxprom198
  %141 = load i8, i8* %arrayidx204, align 1
  %conv205 = zext i8 %141 to i32
  %142 = load i32, i32* %bytes.addr, align 4
  %143 = load i32, i32* %bytes.addr, align 4
  %add206 = add nsw i32 %142, %143
  %idxprom207 = sext i32 %add206 to i64
  %144 = load i32, i32* %i, align 4
  %145 = load i8*, i8** %data, align 8
  %idx.ext208 = sext i32 %144 to i64
  %add.ptr209 = getelementptr inbounds i8, i8* %145, i64 %idx.ext208
  %146 = load i32, i32* %rowstride, align 4
  %mul210 = mul nsw i32 %146, 0
  %idx.ext211 = sext i32 %mul210 to i64
  %add.ptr212 = getelementptr inbounds i8, i8* %add.ptr209, i64 %idx.ext211
  %arrayidx213 = getelementptr inbounds i8, i8* %add.ptr212, i64 %idxprom207
  %147 = load i8, i8* %arrayidx213, align 1
  %conv214 = zext i8 %147 to i32
  %mul215 = mul nsw i32 %conv205, %conv214
  %148 = load i32, i32* %bytes.addr, align 4
  %149 = load i32, i32* %bytes.addr, align 4
  %add216 = add nsw i32 %148, %149
  %150 = load i32, i32* %bytes.addr, align 4
  %add217 = add nsw i32 %add216, %150
  %idxprom218 = sext i32 %add217 to i64
  %151 = load i8*, i8** %data, align 8
  %152 = load i32, i32* %alpha.addr, align 4
  %idx.ext219 = sext i32 %152 to i64
  %add.ptr220 = getelementptr inbounds i8, i8* %151, i64 %idx.ext219
  %153 = load i32, i32* %rowstride, align 4
  %mul221 = mul nsw i32 %153, 0
  %idx.ext222 = sext i32 %mul221 to i64
  %add.ptr223 = getelementptr inbounds i8, i8* %add.ptr220, i64 %idx.ext222
  %arrayidx224 = getelementptr inbounds i8, i8* %add.ptr223, i64 %idxprom218
  %154 = load i8, i8* %arrayidx224, align 1
  %conv225 = zext i8 %154 to i32
  %155 = load i32, i32* %bytes.addr, align 4
  %156 = load i32, i32* %bytes.addr, align 4
  %add226 = add nsw i32 %155, %156
  %157 = load i32, i32* %bytes.addr, align 4
  %add227 = add nsw i32 %add226, %157
  %idxprom228 = sext i32 %add227 to i64
  %158 = load i32, i32* %i, align 4
  %159 = load i8*, i8** %data, align 8
  %idx.ext229 = sext i32 %158 to i64
  %add.ptr230 = getelementptr inbounds i8, i8* %159, i64 %idx.ext229
  %160 = load i32, i32* %rowstride, align 4
  %mul231 = mul nsw i32 %160, 0
  %idx.ext232 = sext i32 %mul231 to i64
  %add.ptr233 = getelementptr inbounds i8, i8* %add.ptr230, i64 %idx.ext232
  %arrayidx234 = getelementptr inbounds i8, i8* %add.ptr233, i64 %idxprom228
  %161 = load i8, i8* %arrayidx234, align 1
  %conv235 = zext i8 %161 to i32
  %mul236 = mul nsw i32 %conv225, %conv235
  %call237 = call double @gimp_drawable_transform_cubic(double %117, i32 %mul179, i32 %mul196, i32 %mul215, i32 %mul236)
  %conv238 = fptosi double %call237 to i32
  %162 = load double, double* %du, align 8
  %163 = load i8*, i8** %data, align 8
  %164 = load i32, i32* %alpha.addr, align 4
  %idx.ext239 = sext i32 %164 to i64
  %add.ptr240 = getelementptr inbounds i8, i8* %163, i64 %idx.ext239
  %165 = load i32, i32* %rowstride, align 4
  %mul241 = mul nsw i32 %165, 1
  %idx.ext242 = sext i32 %mul241 to i64
  %add.ptr243 = getelementptr inbounds i8, i8* %add.ptr240, i64 %idx.ext242
  %arrayidx244 = getelementptr inbounds i8, i8* %add.ptr243, i64 0
  %166 = load i8, i8* %arrayidx244, align 1
  %conv245 = zext i8 %166 to i32
  %167 = load i32, i32* %i, align 4
  %168 = load i8*, i8** %data, align 8
  %idx.ext246 = sext i32 %167 to i64
  %add.ptr247 = getelementptr inbounds i8, i8* %168, i64 %idx.ext246
  %169 = load i32, i32* %rowstride, align 4
  %mul248 = mul nsw i32 %169, 1
  %idx.ext249 = sext i32 %mul248 to i64
  %add.ptr250 = getelementptr inbounds i8, i8* %add.ptr247, i64 %idx.ext249
  %arrayidx251 = getelementptr inbounds i8, i8* %add.ptr250, i64 0
  %170 = load i8, i8* %arrayidx251, align 1
  %conv252 = zext i8 %170 to i32
  %mul253 = mul nsw i32 %conv245, %conv252
  %171 = load i32, i32* %bytes.addr, align 4
  %idxprom254 = sext i32 %171 to i64
  %172 = load i8*, i8** %data, align 8
  %173 = load i32, i32* %alpha.addr, align 4
  %idx.ext255 = sext i32 %173 to i64
  %add.ptr256 = getelementptr inbounds i8, i8* %172, i64 %idx.ext255
  %174 = load i32, i32* %rowstride, align 4
  %mul257 = mul nsw i32 %174, 1
  %idx.ext258 = sext i32 %mul257 to i64
  %add.ptr259 = getelementptr inbounds i8, i8* %add.ptr256, i64 %idx.ext258
  %arrayidx260 = getelementptr inbounds i8, i8* %add.ptr259, i64 %idxprom254
  %175 = load i8, i8* %arrayidx260, align 1
  %conv261 = zext i8 %175 to i32
  %176 = load i32, i32* %bytes.addr, align 4
  %idxprom262 = sext i32 %176 to i64
  %177 = load i32, i32* %i, align 4
  %178 = load i8*, i8** %data, align 8
  %idx.ext263 = sext i32 %177 to i64
  %add.ptr264 = getelementptr inbounds i8, i8* %178, i64 %idx.ext263
  %179 = load i32, i32* %rowstride, align 4
  %mul265 = mul nsw i32 %179, 1
  %idx.ext266 = sext i32 %mul265 to i64
  %add.ptr267 = getelementptr inbounds i8, i8* %add.ptr264, i64 %idx.ext266
  %arrayidx268 = getelementptr inbounds i8, i8* %add.ptr267, i64 %idxprom262
  %180 = load i8, i8* %arrayidx268, align 1
  %conv269 = zext i8 %180 to i32
  %mul270 = mul nsw i32 %conv261, %conv269
  %181 = load i32, i32* %bytes.addr, align 4
  %182 = load i32, i32* %bytes.addr, align 4
  %add271 = add nsw i32 %181, %182
  %idxprom272 = sext i32 %add271 to i64
  %183 = load i8*, i8** %data, align 8
  %184 = load i32, i32* %alpha.addr, align 4
  %idx.ext273 = sext i32 %184 to i64
  %add.ptr274 = getelementptr inbounds i8, i8* %183, i64 %idx.ext273
  %185 = load i32, i32* %rowstride, align 4
  %mul275 = mul nsw i32 %185, 1
  %idx.ext276 = sext i32 %mul275 to i64
  %add.ptr277 = getelementptr inbounds i8, i8* %add.ptr274, i64 %idx.ext276
  %arrayidx278 = getelementptr inbounds i8, i8* %add.ptr277, i64 %idxprom272
  %186 = load i8, i8* %arrayidx278, align 1
  %conv279 = zext i8 %186 to i32
  %187 = load i32, i32* %bytes.addr, align 4
  %188 = load i32, i32* %bytes.addr, align 4
  %add280 = add nsw i32 %187, %188
  %idxprom281 = sext i32 %add280 to i64
  %189 = load i32, i32* %i, align 4
  %190 = load i8*, i8** %data, align 8
  %idx.ext282 = sext i32 %189 to i64
  %add.ptr283 = getelementptr inbounds i8, i8* %190, i64 %idx.ext282
  %191 = load i32, i32* %rowstride, align 4
  %mul284 = mul nsw i32 %191, 1
  %idx.ext285 = sext i32 %mul284 to i64
  %add.ptr286 = getelementptr inbounds i8, i8* %add.ptr283, i64 %idx.ext285
  %arrayidx287 = getelementptr inbounds i8, i8* %add.ptr286, i64 %idxprom281
  %192 = load i8, i8* %arrayidx287, align 1
  %conv288 = zext i8 %192 to i32
  %mul289 = mul nsw i32 %conv279, %conv288
  %193 = load i32, i32* %bytes.addr, align 4
  %194 = load i32, i32* %bytes.addr, align 4
  %add290 = add nsw i32 %193, %194
  %195 = load i32, i32* %bytes.addr, align 4
  %add291 = add nsw i32 %add290, %195
  %idxprom292 = sext i32 %add291 to i64
  %196 = load i8*, i8** %data, align 8
  %197 = load i32, i32* %alpha.addr, align 4
  %idx.ext293 = sext i32 %197 to i64
  %add.ptr294 = getelementptr inbounds i8, i8* %196, i64 %idx.ext293
  %198 = load i32, i32* %rowstride, align 4
  %mul295 = mul nsw i32 %198, 1
  %idx.ext296 = sext i32 %mul295 to i64
  %add.ptr297 = getelementptr inbounds i8, i8* %add.ptr294, i64 %idx.ext296
  %arrayidx298 = getelementptr inbounds i8, i8* %add.ptr297, i64 %idxprom292
  %199 = load i8, i8* %arrayidx298, align 1
  %conv299 = zext i8 %199 to i32
  %200 = load i32, i32* %bytes.addr, align 4
  %201 = load i32, i32* %bytes.addr, align 4
  %add300 = add nsw i32 %200, %201
  %202 = load i32, i32* %bytes.addr, align 4
  %add301 = add nsw i32 %add300, %202
  %idxprom302 = sext i32 %add301 to i64
  %203 = load i32, i32* %i, align 4
  %204 = load i8*, i8** %data, align 8
  %idx.ext303 = sext i32 %203 to i64
  %add.ptr304 = getelementptr inbounds i8, i8* %204, i64 %idx.ext303
  %205 = load i32, i32* %rowstride, align 4
  %mul305 = mul nsw i32 %205, 1
  %idx.ext306 = sext i32 %mul305 to i64
  %add.ptr307 = getelementptr inbounds i8, i8* %add.ptr304, i64 %idx.ext306
  %arrayidx308 = getelementptr inbounds i8, i8* %add.ptr307, i64 %idxprom302
  %206 = load i8, i8* %arrayidx308, align 1
  %conv309 = zext i8 %206 to i32
  %mul310 = mul nsw i32 %conv299, %conv309
  %call311 = call double @gimp_drawable_transform_cubic(double %162, i32 %mul253, i32 %mul270, i32 %mul289, i32 %mul310)
  %conv312 = fptosi double %call311 to i32
  %207 = load double, double* %du, align 8
  %208 = load i8*, i8** %data, align 8
  %209 = load i32, i32* %alpha.addr, align 4
  %idx.ext313 = sext i32 %209 to i64
  %add.ptr314 = getelementptr inbounds i8, i8* %208, i64 %idx.ext313
  %210 = load i32, i32* %rowstride, align 4
  %mul315 = mul nsw i32 %210, 2
  %idx.ext316 = sext i32 %mul315 to i64
  %add.ptr317 = getelementptr inbounds i8, i8* %add.ptr314, i64 %idx.ext316
  %arrayidx318 = getelementptr inbounds i8, i8* %add.ptr317, i64 0
  %211 = load i8, i8* %arrayidx318, align 1
  %conv319 = zext i8 %211 to i32
  %212 = load i32, i32* %i, align 4
  %213 = load i8*, i8** %data, align 8
  %idx.ext320 = sext i32 %212 to i64
  %add.ptr321 = getelementptr inbounds i8, i8* %213, i64 %idx.ext320
  %214 = load i32, i32* %rowstride, align 4
  %mul322 = mul nsw i32 %214, 2
  %idx.ext323 = sext i32 %mul322 to i64
  %add.ptr324 = getelementptr inbounds i8, i8* %add.ptr321, i64 %idx.ext323
  %arrayidx325 = getelementptr inbounds i8, i8* %add.ptr324, i64 0
  %215 = load i8, i8* %arrayidx325, align 1
  %conv326 = zext i8 %215 to i32
  %mul327 = mul nsw i32 %conv319, %conv326
  %216 = load i32, i32* %bytes.addr, align 4
  %idxprom328 = sext i32 %216 to i64
  %217 = load i8*, i8** %data, align 8
  %218 = load i32, i32* %alpha.addr, align 4
  %idx.ext329 = sext i32 %218 to i64
  %add.ptr330 = getelementptr inbounds i8, i8* %217, i64 %idx.ext329
  %219 = load i32, i32* %rowstride, align 4
  %mul331 = mul nsw i32 %219, 2
  %idx.ext332 = sext i32 %mul331 to i64
  %add.ptr333 = getelementptr inbounds i8, i8* %add.ptr330, i64 %idx.ext332
  %arrayidx334 = getelementptr inbounds i8, i8* %add.ptr333, i64 %idxprom328
  %220 = load i8, i8* %arrayidx334, align 1
  %conv335 = zext i8 %220 to i32
  %221 = load i32, i32* %bytes.addr, align 4
  %idxprom336 = sext i32 %221 to i64
  %222 = load i32, i32* %i, align 4
  %223 = load i8*, i8** %data, align 8
  %idx.ext337 = sext i32 %222 to i64
  %add.ptr338 = getelementptr inbounds i8, i8* %223, i64 %idx.ext337
  %224 = load i32, i32* %rowstride, align 4
  %mul339 = mul nsw i32 %224, 2
  %idx.ext340 = sext i32 %mul339 to i64
  %add.ptr341 = getelementptr inbounds i8, i8* %add.ptr338, i64 %idx.ext340
  %arrayidx342 = getelementptr inbounds i8, i8* %add.ptr341, i64 %idxprom336
  %225 = load i8, i8* %arrayidx342, align 1
  %conv343 = zext i8 %225 to i32
  %mul344 = mul nsw i32 %conv335, %conv343
  %226 = load i32, i32* %bytes.addr, align 4
  %227 = load i32, i32* %bytes.addr, align 4
  %add345 = add nsw i32 %226, %227
  %idxprom346 = sext i32 %add345 to i64
  %228 = load i8*, i8** %data, align 8
  %229 = load i32, i32* %alpha.addr, align 4
  %idx.ext347 = sext i32 %229 to i64
  %add.ptr348 = getelementptr inbounds i8, i8* %228, i64 %idx.ext347
  %230 = load i32, i32* %rowstride, align 4
  %mul349 = mul nsw i32 %230, 2
  %idx.ext350 = sext i32 %mul349 to i64
  %add.ptr351 = getelementptr inbounds i8, i8* %add.ptr348, i64 %idx.ext350
  %arrayidx352 = getelementptr inbounds i8, i8* %add.ptr351, i64 %idxprom346
  %231 = load i8, i8* %arrayidx352, align 1
  %conv353 = zext i8 %231 to i32
  %232 = load i32, i32* %bytes.addr, align 4
  %233 = load i32, i32* %bytes.addr, align 4
  %add354 = add nsw i32 %232, %233
  %idxprom355 = sext i32 %add354 to i64
  %234 = load i32, i32* %i, align 4
  %235 = load i8*, i8** %data, align 8
  %idx.ext356 = sext i32 %234 to i64
  %add.ptr357 = getelementptr inbounds i8, i8* %235, i64 %idx.ext356
  %236 = load i32, i32* %rowstride, align 4
  %mul358 = mul nsw i32 %236, 2
  %idx.ext359 = sext i32 %mul358 to i64
  %add.ptr360 = getelementptr inbounds i8, i8* %add.ptr357, i64 %idx.ext359
  %arrayidx361 = getelementptr inbounds i8, i8* %add.ptr360, i64 %idxprom355
  %237 = load i8, i8* %arrayidx361, align 1
  %conv362 = zext i8 %237 to i32
  %mul363 = mul nsw i32 %conv353, %conv362
  %238 = load i32, i32* %bytes.addr, align 4
  %239 = load i32, i32* %bytes.addr, align 4
  %add364 = add nsw i32 %238, %239
  %240 = load i32, i32* %bytes.addr, align 4
  %add365 = add nsw i32 %add364, %240
  %idxprom366 = sext i32 %add365 to i64
  %241 = load i8*, i8** %data, align 8
  %242 = load i32, i32* %alpha.addr, align 4
  %idx.ext367 = sext i32 %242 to i64
  %add.ptr368 = getelementptr inbounds i8, i8* %241, i64 %idx.ext367
  %243 = load i32, i32* %rowstride, align 4
  %mul369 = mul nsw i32 %243, 2
  %idx.ext370 = sext i32 %mul369 to i64
  %add.ptr371 = getelementptr inbounds i8, i8* %add.ptr368, i64 %idx.ext370
  %arrayidx372 = getelementptr inbounds i8, i8* %add.ptr371, i64 %idxprom366
  %244 = load i8, i8* %arrayidx372, align 1
  %conv373 = zext i8 %244 to i32
  %245 = load i32, i32* %bytes.addr, align 4
  %246 = load i32, i32* %bytes.addr, align 4
  %add374 = add nsw i32 %245, %246
  %247 = load i32, i32* %bytes.addr, align 4
  %add375 = add nsw i32 %add374, %247
  %idxprom376 = sext i32 %add375 to i64
  %248 = load i32, i32* %i, align 4
  %249 = load i8*, i8** %data, align 8
  %idx.ext377 = sext i32 %248 to i64
  %add.ptr378 = getelementptr inbounds i8, i8* %249, i64 %idx.ext377
  %250 = load i32, i32* %rowstride, align 4
  %mul379 = mul nsw i32 %250, 2
  %idx.ext380 = sext i32 %mul379 to i64
  %add.ptr381 = getelementptr inbounds i8, i8* %add.ptr378, i64 %idx.ext380
  %arrayidx382 = getelementptr inbounds i8, i8* %add.ptr381, i64 %idxprom376
  %251 = load i8, i8* %arrayidx382, align 1
  %conv383 = zext i8 %251 to i32
  %mul384 = mul nsw i32 %conv373, %conv383
  %call385 = call double @gimp_drawable_transform_cubic(double %207, i32 %mul327, i32 %mul344, i32 %mul363, i32 %mul384)
  %conv386 = fptosi double %call385 to i32
  %252 = load double, double* %du, align 8
  %253 = load i8*, i8** %data, align 8
  %254 = load i32, i32* %alpha.addr, align 4
  %idx.ext387 = sext i32 %254 to i64
  %add.ptr388 = getelementptr inbounds i8, i8* %253, i64 %idx.ext387
  %255 = load i32, i32* %rowstride, align 4
  %mul389 = mul nsw i32 %255, 3
  %idx.ext390 = sext i32 %mul389 to i64
  %add.ptr391 = getelementptr inbounds i8, i8* %add.ptr388, i64 %idx.ext390
  %arrayidx392 = getelementptr inbounds i8, i8* %add.ptr391, i64 0
  %256 = load i8, i8* %arrayidx392, align 1
  %conv393 = zext i8 %256 to i32
  %257 = load i32, i32* %i, align 4
  %258 = load i8*, i8** %data, align 8
  %idx.ext394 = sext i32 %257 to i64
  %add.ptr395 = getelementptr inbounds i8, i8* %258, i64 %idx.ext394
  %259 = load i32, i32* %rowstride, align 4
  %mul396 = mul nsw i32 %259, 3
  %idx.ext397 = sext i32 %mul396 to i64
  %add.ptr398 = getelementptr inbounds i8, i8* %add.ptr395, i64 %idx.ext397
  %arrayidx399 = getelementptr inbounds i8, i8* %add.ptr398, i64 0
  %260 = load i8, i8* %arrayidx399, align 1
  %conv400 = zext i8 %260 to i32
  %mul401 = mul nsw i32 %conv393, %conv400
  %261 = load i32, i32* %bytes.addr, align 4
  %idxprom402 = sext i32 %261 to i64
  %262 = load i8*, i8** %data, align 8
  %263 = load i32, i32* %alpha.addr, align 4
  %idx.ext403 = sext i32 %263 to i64
  %add.ptr404 = getelementptr inbounds i8, i8* %262, i64 %idx.ext403
  %264 = load i32, i32* %rowstride, align 4
  %mul405 = mul nsw i32 %264, 3
  %idx.ext406 = sext i32 %mul405 to i64
  %add.ptr407 = getelementptr inbounds i8, i8* %add.ptr404, i64 %idx.ext406
  %arrayidx408 = getelementptr inbounds i8, i8* %add.ptr407, i64 %idxprom402
  %265 = load i8, i8* %arrayidx408, align 1
  %conv409 = zext i8 %265 to i32
  %266 = load i32, i32* %bytes.addr, align 4
  %idxprom410 = sext i32 %266 to i64
  %267 = load i32, i32* %i, align 4
  %268 = load i8*, i8** %data, align 8
  %idx.ext411 = sext i32 %267 to i64
  %add.ptr412 = getelementptr inbounds i8, i8* %268, i64 %idx.ext411
  %269 = load i32, i32* %rowstride, align 4
  %mul413 = mul nsw i32 %269, 3
  %idx.ext414 = sext i32 %mul413 to i64
  %add.ptr415 = getelementptr inbounds i8, i8* %add.ptr412, i64 %idx.ext414
  %arrayidx416 = getelementptr inbounds i8, i8* %add.ptr415, i64 %idxprom410
  %270 = load i8, i8* %arrayidx416, align 1
  %conv417 = zext i8 %270 to i32
  %mul418 = mul nsw i32 %conv409, %conv417
  %271 = load i32, i32* %bytes.addr, align 4
  %272 = load i32, i32* %bytes.addr, align 4
  %add419 = add nsw i32 %271, %272
  %idxprom420 = sext i32 %add419 to i64
  %273 = load i8*, i8** %data, align 8
  %274 = load i32, i32* %alpha.addr, align 4
  %idx.ext421 = sext i32 %274 to i64
  %add.ptr422 = getelementptr inbounds i8, i8* %273, i64 %idx.ext421
  %275 = load i32, i32* %rowstride, align 4
  %mul423 = mul nsw i32 %275, 3
  %idx.ext424 = sext i32 %mul423 to i64
  %add.ptr425 = getelementptr inbounds i8, i8* %add.ptr422, i64 %idx.ext424
  %arrayidx426 = getelementptr inbounds i8, i8* %add.ptr425, i64 %idxprom420
  %276 = load i8, i8* %arrayidx426, align 1
  %conv427 = zext i8 %276 to i32
  %277 = load i32, i32* %bytes.addr, align 4
  %278 = load i32, i32* %bytes.addr, align 4
  %add428 = add nsw i32 %277, %278
  %idxprom429 = sext i32 %add428 to i64
  %279 = load i32, i32* %i, align 4
  %280 = load i8*, i8** %data, align 8
  %idx.ext430 = sext i32 %279 to i64
  %add.ptr431 = getelementptr inbounds i8, i8* %280, i64 %idx.ext430
  %281 = load i32, i32* %rowstride, align 4
  %mul432 = mul nsw i32 %281, 3
  %idx.ext433 = sext i32 %mul432 to i64
  %add.ptr434 = getelementptr inbounds i8, i8* %add.ptr431, i64 %idx.ext433
  %arrayidx435 = getelementptr inbounds i8, i8* %add.ptr434, i64 %idxprom429
  %282 = load i8, i8* %arrayidx435, align 1
  %conv436 = zext i8 %282 to i32
  %mul437 = mul nsw i32 %conv427, %conv436
  %283 = load i32, i32* %bytes.addr, align 4
  %284 = load i32, i32* %bytes.addr, align 4
  %add438 = add nsw i32 %283, %284
  %285 = load i32, i32* %bytes.addr, align 4
  %add439 = add nsw i32 %add438, %285
  %idxprom440 = sext i32 %add439 to i64
  %286 = load i8*, i8** %data, align 8
  %287 = load i32, i32* %alpha.addr, align 4
  %idx.ext441 = sext i32 %287 to i64
  %add.ptr442 = getelementptr inbounds i8, i8* %286, i64 %idx.ext441
  %288 = load i32, i32* %rowstride, align 4
  %mul443 = mul nsw i32 %288, 3
  %idx.ext444 = sext i32 %mul443 to i64
  %add.ptr445 = getelementptr inbounds i8, i8* %add.ptr442, i64 %idx.ext444
  %arrayidx446 = getelementptr inbounds i8, i8* %add.ptr445, i64 %idxprom440
  %289 = load i8, i8* %arrayidx446, align 1
  %conv447 = zext i8 %289 to i32
  %290 = load i32, i32* %bytes.addr, align 4
  %291 = load i32, i32* %bytes.addr, align 4
  %add448 = add nsw i32 %290, %291
  %292 = load i32, i32* %bytes.addr, align 4
  %add449 = add nsw i32 %add448, %292
  %idxprom450 = sext i32 %add449 to i64
  %293 = load i32, i32* %i, align 4
  %294 = load i8*, i8** %data, align 8
  %idx.ext451 = sext i32 %293 to i64
  %add.ptr452 = getelementptr inbounds i8, i8* %294, i64 %idx.ext451
  %295 = load i32, i32* %rowstride, align 4
  %mul453 = mul nsw i32 %295, 3
  %idx.ext454 = sext i32 %mul453 to i64
  %add.ptr455 = getelementptr inbounds i8, i8* %add.ptr452, i64 %idx.ext454
  %arrayidx456 = getelementptr inbounds i8, i8* %add.ptr455, i64 %idxprom450
  %296 = load i8, i8* %arrayidx456, align 1
  %conv457 = zext i8 %296 to i32
  %mul458 = mul nsw i32 %conv447, %conv457
  %call459 = call double @gimp_drawable_transform_cubic(double %252, i32 %mul401, i32 %mul418, i32 %mul437, i32 %mul458)
  %conv460 = fptosi double %call459 to i32
  %call461 = call double @gimp_drawable_transform_cubic(double %116, i32 %conv238, i32 %conv312, i32 %conv386, i32 %conv460)
  %mul462 = fmul double %115, %call461
  %add463 = fadd double %mul462, 5.000000e-01
  %conv464 = fptosi double %add463 to i32
  store i32 %conv464, i32* %newval, align 4
  %297 = load i32, i32* %newval, align 4
  %cmp465 = icmp sgt i32 %297, 255
  br i1 %cmp465, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end.471

cond.false:                                       ; preds = %for.body
  %298 = load i32, i32* %newval, align 4
  %cmp467 = icmp slt i32 %298, 0
  br i1 %cmp467, label %cond.true.469, label %cond.false.470

cond.true.469:                                    ; preds = %cond.false
  br label %cond.end

cond.false.470:                                   ; preds = %cond.false
  %299 = load i32, i32* %newval, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.470, %cond.true.469
  %cond = phi i32 [ 0, %cond.true.469 ], [ %299, %cond.false.470 ]
  br label %cond.end.471

cond.end.471:                                     ; preds = %cond.end, %cond.true
  %cond472 = phi i32 [ 255, %cond.true ], [ %cond, %cond.end ]
  %conv473 = trunc i32 %cond472 to i8
  %300 = load i32, i32* %i, align 4
  %idxprom474 = sext i32 %300 to i64
  %301 = load i8*, i8** %color.addr, align 8
  %arrayidx475 = getelementptr inbounds i8, i8* %301, i64 %idxprom474
  store i8 %conv473, i8* %arrayidx475, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end.471
  %302 = load i32, i32* %i, align 4
  %inc = add nsw i32 %302, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal double @gimp_drawable_transform_cubic(double %dx, i32 %jm1, i32 %j, i32 %jp1, i32 %jp2) #6 {
entry:
  %dx.addr = alloca double, align 8
  %jm1.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %jp1.addr = alloca i32, align 4
  %jp2.addr = alloca i32, align 4
  %result = alloca double, align 8
  store double %dx, double* %dx.addr, align 8
  store i32 %jm1, i32* %jm1.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  store i32 %jp1, i32* %jp1.addr, align 4
  store i32 %jp2, i32* %jp2.addr, align 4
  %0 = load i32, i32* %jm1.addr, align 4
  %sub = sub nsw i32 0, %0
  %1 = load i32, i32* %j.addr, align 4
  %mul = mul nsw i32 3, %1
  %add = add nsw i32 %sub, %mul
  %2 = load i32, i32* %jp1.addr, align 4
  %mul1 = mul nsw i32 3, %2
  %sub2 = sub nsw i32 %add, %mul1
  %3 = load i32, i32* %jp2.addr, align 4
  %add3 = add nsw i32 %sub2, %3
  %conv = sitofp i32 %add3 to double
  %4 = load double, double* %dx.addr, align 8
  %mul4 = fmul double %conv, %4
  %5 = load i32, i32* %jm1.addr, align 4
  %mul5 = mul nsw i32 2, %5
  %6 = load i32, i32* %j.addr, align 4
  %mul6 = mul nsw i32 5, %6
  %sub7 = sub nsw i32 %mul5, %mul6
  %7 = load i32, i32* %jp1.addr, align 4
  %mul8 = mul nsw i32 4, %7
  %add9 = add nsw i32 %sub7, %mul8
  %8 = load i32, i32* %jp2.addr, align 4
  %sub10 = sub nsw i32 %add9, %8
  %conv11 = sitofp i32 %sub10 to double
  %add12 = fadd double %mul4, %conv11
  %9 = load double, double* %dx.addr, align 8
  %mul13 = fmul double %add12, %9
  %10 = load i32, i32* %jm1.addr, align 4
  %sub14 = sub nsw i32 0, %10
  %11 = load i32, i32* %jp1.addr, align 4
  %add15 = add nsw i32 %sub14, %11
  %conv16 = sitofp i32 %add15 to double
  %add17 = fadd double %mul13, %conv16
  %12 = load double, double* %dx.addr, align 8
  %mul18 = fmul double %add17, %12
  %13 = load i32, i32* %j.addr, align 4
  %14 = load i32, i32* %j.addr, align 4
  %add19 = add nsw i32 %13, %14
  %conv20 = sitofp i32 %add19 to double
  %add21 = fadd double %mul18, %conv20
  %div = fdiv double %add21, 2.000000e+00
  store double %div, double* %result, align 8
  %15 = load double, double* %result, align 8
  ret double %15
}

declare float* @create_lanczos_lookup() #3

; Function Attrs: nounwind uwtable
define internal void @sample_lanczos(%struct._PixelSurround* %surround, float* %lanczos, double %u, double %v, i8* %color, i32 %bytes, i32 %alpha) #0 {
entry:
  %surround.addr = alloca %struct._PixelSurround*, align 8
  %lanczos.addr = alloca float*, align 8
  %u.addr = alloca double, align 8
  %v.addr = alloca double, align 8
  %color.addr = alloca i8*, align 8
  %bytes.addr = alloca i32, align 4
  %alpha.addr = alloca i32, align 4
  %x_kernel = alloca [7 x double], align 16
  %y_kernel = alloca [7 x double], align 16
  %x_sum = alloca double, align 8
  %y_sum = alloca double, align 8
  %arecip = alloca double, align 8
  %aval = alloca double, align 8
  %su = alloca i32, align 4
  %sv = alloca i32, align 4
  %b = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %iu = alloca i32, align 4
  %iv = alloca i32, align 4
  %rowstride = alloca i32, align 4
  %data = alloca i8*, align 8
  %src = alloca i8*, align 8
  %pos = alloca i32, align 4
  %asrc = alloca i8*, align 8
  %newval = alloca double, align 8
  store %struct._PixelSurround* %surround, %struct._PixelSurround** %surround.addr, align 8
  store float* %lanczos, float** %lanczos.addr, align 8
  store double %u, double* %u.addr, align 8
  store double %v, double* %v.addr, align 8
  store i8* %color, i8** %color.addr, align 8
  store i32 %bytes, i32* %bytes.addr, align 4
  store i32 %alpha, i32* %alpha.addr, align 4
  %0 = load double, double* %u.addr, align 8
  %conv = fptosi double %0 to i32
  store i32 %conv, i32* %iu, align 4
  %1 = load double, double* %v.addr, align 8
  %conv1 = fptosi double %1 to i32
  store i32 %conv1, i32* %iv, align 4
  %2 = load double, double* %u.addr, align 8
  %3 = load i32, i32* %iu, align 4
  %conv2 = sitofp i32 %3 to double
  %sub = fsub double %2, %conv2
  %mul = fmul double %sub, 4.000000e+03
  %conv3 = fptosi double %mul to i32
  store i32 %conv3, i32* %su, align 4
  %4 = load double, double* %v.addr, align 8
  %5 = load i32, i32* %iv, align 4
  %conv4 = sitofp i32 %5 to double
  %sub5 = fsub double %4, %conv4
  %mul6 = fmul double %sub5, 4.000000e+03
  %conv7 = fptosi double %mul6 to i32
  store i32 %conv7, i32* %sv, align 4
  store double 0.000000e+00, double* %y_sum, align 8
  store double 0.000000e+00, double* %x_sum, align 8
  store i32 3, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %6, -3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %mul9 = mul nsw i32 %7, 4000
  store i32 %mul9, i32* %pos, align 4
  %8 = load i32, i32* %su, align 4
  %9 = load i32, i32* %pos, align 4
  %sub10 = sub nsw i32 %8, %9
  %cmp11 = icmp slt i32 %sub10, 0
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %10 = load i32, i32* %su, align 4
  %11 = load i32, i32* %pos, align 4
  %sub13 = sub nsw i32 %10, %11
  %sub14 = sub nsw i32 0, %sub13
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %12 = load i32, i32* %su, align 4
  %13 = load i32, i32* %pos, align 4
  %sub15 = sub nsw i32 %12, %13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub14, %cond.true ], [ %sub15, %cond.false ]
  %idxprom = sext i32 %cond to i64
  %14 = load float*, float** %lanczos.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %14, i64 %idxprom
  %15 = load float, float* %arrayidx, align 4
  %conv16 = fpext float %15 to double
  %16 = load i32, i32* %i, align 4
  %add = add nsw i32 3, %16
  %idxprom17 = sext i32 %add to i64
  %arrayidx18 = getelementptr inbounds [7 x double], [7 x double]* %x_kernel, i32 0, i64 %idxprom17
  store double %conv16, double* %arrayidx18, align 8
  %17 = load double, double* %x_sum, align 8
  %add19 = fadd double %17, %conv16
  store double %add19, double* %x_sum, align 8
  %18 = load i32, i32* %sv, align 4
  %19 = load i32, i32* %pos, align 4
  %sub20 = sub nsw i32 %18, %19
  %cmp21 = icmp slt i32 %sub20, 0
  br i1 %cmp21, label %cond.true.23, label %cond.false.26

cond.true.23:                                     ; preds = %cond.end
  %20 = load i32, i32* %sv, align 4
  %21 = load i32, i32* %pos, align 4
  %sub24 = sub nsw i32 %20, %21
  %sub25 = sub nsw i32 0, %sub24
  br label %cond.end.28

cond.false.26:                                    ; preds = %cond.end
  %22 = load i32, i32* %sv, align 4
  %23 = load i32, i32* %pos, align 4
  %sub27 = sub nsw i32 %22, %23
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.false.26, %cond.true.23
  %cond29 = phi i32 [ %sub25, %cond.true.23 ], [ %sub27, %cond.false.26 ]
  %idxprom30 = sext i32 %cond29 to i64
  %24 = load float*, float** %lanczos.addr, align 8
  %arrayidx31 = getelementptr inbounds float, float* %24, i64 %idxprom30
  %25 = load float, float* %arrayidx31, align 4
  %conv32 = fpext float %25 to double
  %26 = load i32, i32* %i, align 4
  %add33 = add nsw i32 3, %26
  %idxprom34 = sext i32 %add33 to i64
  %arrayidx35 = getelementptr inbounds [7 x double], [7 x double]* %y_kernel, i32 0, i64 %idxprom34
  store double %conv32, double* %arrayidx35, align 8
  %27 = load double, double* %y_sum, align 8
  %add36 = fadd double %27, %conv32
  store double %add36, double* %y_sum, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end.28
  %28 = load i32, i32* %i, align 4
  %dec = add nsw i32 %28, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.46, %for.end
  %29 = load i32, i32* %i, align 4
  %cmp38 = icmp slt i32 %29, 7
  br i1 %cmp38, label %for.body.40, label %for.end.47

for.body.40:                                      ; preds = %for.cond.37
  %30 = load double, double* %x_sum, align 8
  %31 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %31 to i64
  %arrayidx42 = getelementptr inbounds [7 x double], [7 x double]* %x_kernel, i32 0, i64 %idxprom41
  %32 = load double, double* %arrayidx42, align 8
  %div = fdiv double %32, %30
  store double %div, double* %arrayidx42, align 8
  %33 = load double, double* %y_sum, align 8
  %34 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %34 to i64
  %arrayidx44 = getelementptr inbounds [7 x double], [7 x double]* %y_kernel, i32 0, i64 %idxprom43
  %35 = load double, double* %arrayidx44, align 8
  %div45 = fdiv double %35, %33
  store double %div45, double* %arrayidx44, align 8
  br label %for.inc.46

for.inc.46:                                       ; preds = %for.body.40
  %36 = load i32, i32* %i, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.37

for.end.47:                                       ; preds = %for.cond.37
  %37 = load %struct._PixelSurround*, %struct._PixelSurround** %surround.addr, align 8
  %38 = load i32, i32* %iu, align 4
  %sub48 = sub nsw i32 %38, 3
  %39 = load i32, i32* %iv, align 4
  %sub49 = sub nsw i32 %39, 3
  %call = call i8* @pixel_surround_lock(%struct._PixelSurround* %37, i32 %sub48, i32 %sub49, i32* %rowstride)
  store i8* %call, i8** %data, align 8
  %40 = load i8*, i8** %data, align 8
  %41 = load i32, i32* %alpha.addr, align 4
  %idx.ext = sext i32 %41 to i64
  %add.ptr = getelementptr inbounds i8, i8* %40, i64 %idx.ext
  store i8* %add.ptr, i8** %src, align 8
  store double 0.000000e+00, double* %aval, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.74, %for.end.47
  %42 = load i32, i32* %j, align 4
  %cmp51 = icmp slt i32 %42, 7
  br i1 %cmp51, label %for.body.53, label %for.end.76

for.body.53:                                      ; preds = %for.cond.50
  store i32 0, i32* %i, align 4
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.69, %for.body.53
  %43 = load i32, i32* %i, align 4
  %cmp55 = icmp slt i32 %43, 7
  br i1 %cmp55, label %for.body.57, label %for.end.71

for.body.57:                                      ; preds = %for.cond.54
  %44 = load i32, i32* %j, align 4
  %idxprom58 = sext i32 %44 to i64
  %arrayidx59 = getelementptr inbounds [7 x double], [7 x double]* %y_kernel, i32 0, i64 %idxprom58
  %45 = load double, double* %arrayidx59, align 8
  %46 = load i32, i32* %i, align 4
  %idxprom60 = sext i32 %46 to i64
  %arrayidx61 = getelementptr inbounds [7 x double], [7 x double]* %x_kernel, i32 0, i64 %idxprom60
  %47 = load double, double* %arrayidx61, align 8
  %mul62 = fmul double %45, %47
  %48 = load i32, i32* %i, align 4
  %49 = load i32, i32* %bytes.addr, align 4
  %mul63 = mul nsw i32 %48, %49
  %idxprom64 = sext i32 %mul63 to i64
  %50 = load i8*, i8** %src, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %50, i64 %idxprom64
  %51 = load i8, i8* %arrayidx65, align 1
  %conv66 = uitofp i8 %51 to double
  %mul67 = fmul double %mul62, %conv66
  %52 = load double, double* %aval, align 8
  %add68 = fadd double %52, %mul67
  store double %add68, double* %aval, align 8
  br label %for.inc.69

for.inc.69:                                       ; preds = %for.body.57
  %53 = load i32, i32* %i, align 4
  %inc70 = add nsw i32 %53, 1
  store i32 %inc70, i32* %i, align 4
  br label %for.cond.54

for.end.71:                                       ; preds = %for.cond.54
  %54 = load i32, i32* %rowstride, align 4
  %55 = load i8*, i8** %src, align 8
  %idx.ext72 = sext i32 %54 to i64
  %add.ptr73 = getelementptr inbounds i8, i8* %55, i64 %idx.ext72
  store i8* %add.ptr73, i8** %src, align 8
  br label %for.inc.74

for.inc.74:                                       ; preds = %for.end.71
  %56 = load i32, i32* %j, align 4
  %inc75 = add nsw i32 %56, 1
  store i32 %inc75, i32* %j, align 4
  br label %for.cond.50

for.end.76:                                       ; preds = %for.cond.50
  %57 = load double, double* %aval, align 8
  %cmp77 = fcmp ole double %57, 0.000000e+00
  br i1 %cmp77, label %if.then, label %if.else

if.then:                                          ; preds = %for.end.76
  store double 0.000000e+00, double* %arecip, align 8
  store double 0.000000e+00, double* %aval, align 8
  br label %if.end.85

if.else:                                          ; preds = %for.end.76
  %58 = load double, double* %aval, align 8
  %cmp79 = fcmp ogt double %58, 2.550000e+02
  br i1 %cmp79, label %if.then.81, label %if.else.83

if.then.81:                                       ; preds = %if.else
  %59 = load double, double* %aval, align 8
  %div82 = fdiv double 1.000000e+00, %59
  store double %div82, double* %arecip, align 8
  store double 2.550000e+02, double* %aval, align 8
  br label %if.end

if.else.83:                                       ; preds = %if.else
  %60 = load double, double* %aval, align 8
  %div84 = fdiv double 1.000000e+00, %60
  store double %div84, double* %arecip, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.83, %if.then.81
  br label %if.end.85

if.end.85:                                        ; preds = %if.end, %if.then
  store i32 0, i32* %b, align 4
  br label %for.cond.86

for.cond.86:                                      ; preds = %for.inc.150, %if.end.85
  %61 = load i32, i32* %b, align 4
  %62 = load i32, i32* %alpha.addr, align 4
  %cmp87 = icmp slt i32 %61, %62
  br i1 %cmp87, label %for.body.89, label %for.end.152

for.body.89:                                      ; preds = %for.cond.86
  store double 0.000000e+00, double* %newval, align 8
  %63 = load i8*, i8** %data, align 8
  %64 = load i32, i32* %b, align 4
  %idx.ext90 = sext i32 %64 to i64
  %add.ptr91 = getelementptr inbounds i8, i8* %63, i64 %idx.ext90
  store i8* %add.ptr91, i8** %src, align 8
  %65 = load i8*, i8** %data, align 8
  %66 = load i32, i32* %alpha.addr, align 4
  %idx.ext92 = sext i32 %66 to i64
  %add.ptr93 = getelementptr inbounds i8, i8* %65, i64 %idx.ext92
  store i8* %add.ptr93, i8** %asrc, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.94

for.cond.94:                                      ; preds = %for.inc.125, %for.body.89
  %67 = load i32, i32* %j, align 4
  %cmp95 = icmp slt i32 %67, 7
  br i1 %cmp95, label %for.body.97, label %for.end.127

for.body.97:                                      ; preds = %for.cond.94
  store i32 0, i32* %i, align 4
  br label %for.cond.98

for.cond.98:                                      ; preds = %for.inc.118, %for.body.97
  %68 = load i32, i32* %i, align 4
  %cmp99 = icmp slt i32 %68, 7
  br i1 %cmp99, label %for.body.101, label %for.end.120

for.body.101:                                     ; preds = %for.cond.98
  %69 = load i32, i32* %j, align 4
  %idxprom102 = sext i32 %69 to i64
  %arrayidx103 = getelementptr inbounds [7 x double], [7 x double]* %y_kernel, i32 0, i64 %idxprom102
  %70 = load double, double* %arrayidx103, align 8
  %71 = load i32, i32* %i, align 4
  %idxprom104 = sext i32 %71 to i64
  %arrayidx105 = getelementptr inbounds [7 x double], [7 x double]* %x_kernel, i32 0, i64 %idxprom104
  %72 = load double, double* %arrayidx105, align 8
  %mul106 = fmul double %70, %72
  %73 = load i32, i32* %i, align 4
  %74 = load i32, i32* %bytes.addr, align 4
  %mul107 = mul nsw i32 %73, %74
  %idxprom108 = sext i32 %mul107 to i64
  %75 = load i8*, i8** %src, align 8
  %arrayidx109 = getelementptr inbounds i8, i8* %75, i64 %idxprom108
  %76 = load i8, i8* %arrayidx109, align 1
  %conv110 = uitofp i8 %76 to double
  %mul111 = fmul double %mul106, %conv110
  %77 = load i32, i32* %i, align 4
  %78 = load i32, i32* %bytes.addr, align 4
  %mul112 = mul nsw i32 %77, %78
  %idxprom113 = sext i32 %mul112 to i64
  %79 = load i8*, i8** %asrc, align 8
  %arrayidx114 = getelementptr inbounds i8, i8* %79, i64 %idxprom113
  %80 = load i8, i8* %arrayidx114, align 1
  %conv115 = uitofp i8 %80 to double
  %mul116 = fmul double %mul111, %conv115
  %81 = load double, double* %newval, align 8
  %add117 = fadd double %81, %mul116
  store double %add117, double* %newval, align 8
  br label %for.inc.118

for.inc.118:                                      ; preds = %for.body.101
  %82 = load i32, i32* %i, align 4
  %inc119 = add nsw i32 %82, 1
  store i32 %inc119, i32* %i, align 4
  br label %for.cond.98

for.end.120:                                      ; preds = %for.cond.98
  %83 = load i32, i32* %rowstride, align 4
  %84 = load i8*, i8** %src, align 8
  %idx.ext121 = sext i32 %83 to i64
  %add.ptr122 = getelementptr inbounds i8, i8* %84, i64 %idx.ext121
  store i8* %add.ptr122, i8** %src, align 8
  %85 = load i32, i32* %rowstride, align 4
  %86 = load i8*, i8** %asrc, align 8
  %idx.ext123 = sext i32 %85 to i64
  %add.ptr124 = getelementptr inbounds i8, i8* %86, i64 %idx.ext123
  store i8* %add.ptr124, i8** %asrc, align 8
  br label %for.inc.125

for.inc.125:                                      ; preds = %for.end.120
  %87 = load i32, i32* %j, align 4
  %inc126 = add nsw i32 %87, 1
  store i32 %inc126, i32* %j, align 4
  br label %for.cond.94

for.end.127:                                      ; preds = %for.cond.94
  %88 = load double, double* %arecip, align 8
  %89 = load double, double* %newval, align 8
  %mul128 = fmul double %89, %88
  store double %mul128, double* %newval, align 8
  %90 = load double, double* %newval, align 8
  %add129 = fadd double %90, 5.000000e-01
  %conv130 = fptosi double %add129 to i32
  %cmp131 = icmp sgt i32 %conv130, 255
  br i1 %cmp131, label %cond.true.133, label %cond.false.134

cond.true.133:                                    ; preds = %for.end.127
  br label %cond.end.145

cond.false.134:                                   ; preds = %for.end.127
  %91 = load double, double* %newval, align 8
  %add135 = fadd double %91, 5.000000e-01
  %conv136 = fptosi double %add135 to i32
  %cmp137 = icmp slt i32 %conv136, 0
  br i1 %cmp137, label %cond.true.139, label %cond.false.140

cond.true.139:                                    ; preds = %cond.false.134
  br label %cond.end.143

cond.false.140:                                   ; preds = %cond.false.134
  %92 = load double, double* %newval, align 8
  %add141 = fadd double %92, 5.000000e-01
  %conv142 = fptosi double %add141 to i32
  br label %cond.end.143

cond.end.143:                                     ; preds = %cond.false.140, %cond.true.139
  %cond144 = phi i32 [ 0, %cond.true.139 ], [ %conv142, %cond.false.140 ]
  br label %cond.end.145

cond.end.145:                                     ; preds = %cond.end.143, %cond.true.133
  %cond146 = phi i32 [ 255, %cond.true.133 ], [ %cond144, %cond.end.143 ]
  %conv147 = trunc i32 %cond146 to i8
  %93 = load i32, i32* %b, align 4
  %idxprom148 = sext i32 %93 to i64
  %94 = load i8*, i8** %color.addr, align 8
  %arrayidx149 = getelementptr inbounds i8, i8* %94, i64 %idxprom148
  store i8 %conv147, i8* %arrayidx149, align 1
  br label %for.inc.150

for.inc.150:                                      ; preds = %cond.end.145
  %95 = load i32, i32* %b, align 4
  %inc151 = add nsw i32 %95, 1
  store i32 %inc151, i32* %b, align 4
  br label %for.cond.86

for.end.152:                                      ; preds = %for.cond.86
  %96 = load double, double* %aval, align 8
  %call153 = call double @rint(double %96) #7
  %conv154 = fptoui double %call153 to i8
  %97 = load i32, i32* %alpha.addr, align 4
  %idxprom155 = sext i32 %97 to i64
  %98 = load i8*, i8** %color.addr, align 8
  %arrayidx156 = getelementptr inbounds i8, i8* %98, i64 %idxprom155
  store i8 %conv154, i8* %arrayidx156, align 1
  ret void
}

declare void @g_free(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
