; ModuleID = './app/core/gimpprojection-construct.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpProjection = type { %struct._GimpObject, %struct._GimpProjectable*, %struct._TilePyramid*, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglProcessor*, %struct._GSList*, %struct._GimpProjectionIdleRender, i32, i32, i32 }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpProjectable = type opaque
%struct._TilePyramid = type opaque
%struct._GeglNode = type opaque
%struct._GeglProcessor = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GimpProjectionIdleRender = type { i32, i32, i32, i32, i32, i32, i32, %struct._GSList* }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpLayer = type { %struct._GimpDrawable, double, i32, i32, %struct._GimpLayerMask*, %struct._GeglNode*, %struct.anon }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpLayerMask = type opaque
%struct.anon = type { %struct._GimpDrawable*, i32, %struct._BoundSeg*, i32 }
%struct._BoundSeg = type opaque
%struct._PixelRegion = type { i8*, %struct._TileManager*, %struct._Tile*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._TileManager = type opaque
%struct._Tile = type opaque
%struct._GimpPickable = type opaque
%struct._GeglRectangle = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_projection_construct = private unnamed_addr constant [26 x i8] c"gimp_projection_construct\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"GIMP_IS_PROJECTION (proj)\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_projection_construct(%struct._GimpProjection* %proj, i32 %x, i32 %y, i32 %w, i32 %h) #0 {
entry:
  %proj.addr = alloca %struct._GimpProjection*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpProjection* %proj, %struct._GimpProjection** %proj.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %1 = bitcast %struct._GimpProjection* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_projection_get_type() #4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_projection_construct, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.14

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %14 = load i32, i32* %x.addr, align 4
  %15 = load i32, i32* %y.addr, align 4
  %16 = load i32, i32* %w.addr, align 4
  %17 = load i32, i32* %h.addr, align 4
  call void @gimp_projection_initialize(%struct._GimpProjection* %13, i32 %14, i32 %15, i32 %16, i32 %17)
  %18 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %use_gegl = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %18, i32 0, i32 10
  %19 = load i32, i32* %use_gegl, align 4
  %tobool11 = icmp ne i32 %19, 0
  br i1 %tobool11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %do.end
  %20 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %21 = load i32, i32* %x.addr, align 4
  %22 = load i32, i32* %y.addr, align 4
  %23 = load i32, i32* %w.addr, align 4
  %24 = load i32, i32* %h.addr, align 4
  call void @gimp_projection_construct_gegl(%struct._GimpProjection* %20, i32 %21, i32 %22, i32 %23, i32 %24)
  br label %if.end.14

if.else.13:                                       ; preds = %do.end
  %25 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %construct_flag = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %25, i32 0, i32 8
  store i32 0, i32* %construct_flag, align 4
  %26 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %27 = load i32, i32* %x.addr, align 4
  %28 = load i32, i32* %y.addr, align 4
  %29 = load i32, i32* %w.addr, align 4
  %30 = load i32, i32* %h.addr, align 4
  call void @gimp_projection_construct_legacy(%struct._GimpProjection* %26, i32 1, i32 %27, i32 %28, i32 %29, i32 %30)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.9, %if.else.13, %if.then.12
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_projection_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_projection_initialize(%struct._GimpProjection* %proj, i32 %x, i32 %y, i32 %w, i32 %h) #0 {
entry:
  %proj.addr = alloca %struct._GimpProjection*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %list = alloca %struct._GList*, align 8
  %proj_off_x = alloca i32, align 4
  %proj_off_y = alloca i32, align 4
  %coverage = alloca i32, align 4
  %layer = alloca %struct._GimpLayer*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  %region = alloca %struct._PixelRegion, align 8
  store %struct._GimpProjection* %proj, %struct._GimpProjection** %proj.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  store i32 0, i32* %coverage, align 4
  %0 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %projectable = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %0, i32 0, i32 1
  %1 = load %struct._GimpProjectable*, %struct._GimpProjectable** %projectable, align 8
  call void @gimp_projectable_get_offset(%struct._GimpProjectable* %1, i32* %proj_off_x, i32* %proj_off_y)
  %2 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %projectable1 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %2, i32 0, i32 1
  %3 = load %struct._GimpProjectable*, %struct._GimpProjectable** %projectable1, align 8
  %call = call %struct._GList* @gimp_projectable_get_layers(%struct._GimpProjectable* %3)
  store %struct._GList* %call, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %4 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %4, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %5, i32 0, i32 0
  %6 = load i8*, i8** %data, align 8
  %7 = bitcast i8* %6 to %struct._GimpLayer*
  store %struct._GimpLayer* %7, %struct._GimpLayer** %layer, align 8
  %8 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %9 = bitcast %struct._GimpLayer* %8 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_drawable_get_type() #4
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call2)
  %10 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDrawable*
  store %struct._GimpDrawable* %10, %struct._GimpDrawable** %drawable, align 8
  %11 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %12 = bitcast %struct._GimpLayer* %11 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_item_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call4)
  %13 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpItem*
  store %struct._GimpItem* %13, %struct._GimpItem** %item, align 8
  %14 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  call void @gimp_item_get_offset(%struct._GimpItem* %14, i32* %off_x, i32* %off_y)
  %15 = load i32, i32* %proj_off_x, align 4
  %16 = load i32, i32* %off_x, align 4
  %sub = sub nsw i32 %16, %15
  store i32 %sub, i32* %off_x, align 4
  %17 = load i32, i32* %proj_off_y, align 4
  %18 = load i32, i32* %off_y, align 4
  %sub6 = sub nsw i32 %18, %17
  store i32 %sub6, i32* %off_y, align 4
  %19 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call7 = call i32 @gimp_item_get_visible(%struct._GimpItem* %19)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call9 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %20)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end, label %land.lhs.true.11

land.lhs.true.11:                                 ; preds = %land.lhs.true
  %21 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call12 = call %struct._GimpLayerMask* @gimp_layer_get_mask(%struct._GimpLayer* %21)
  %tobool13 = icmp ne %struct._GimpLayerMask* %call12, null
  br i1 %tobool13, label %if.end, label %land.lhs.true.14

land.lhs.true.14:                                 ; preds = %land.lhs.true.11
  %22 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call15 = call i32 @gimp_layer_get_mode(%struct._GimpLayer* %22)
  %cmp = icmp eq i32 %call15, 0
  br i1 %cmp, label %land.lhs.true.16, label %if.end

land.lhs.true.16:                                 ; preds = %land.lhs.true.14
  %23 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call17 = call double @gimp_layer_get_opacity(%struct._GimpLayer* %23)
  %cmp18 = fcmp oeq double %call17, 1.000000e+00
  br i1 %cmp18, label %land.lhs.true.19, label %if.end

land.lhs.true.19:                                 ; preds = %land.lhs.true.16
  %24 = load i32, i32* %off_x, align 4
  %25 = load i32, i32* %x.addr, align 4
  %cmp20 = icmp sle i32 %24, %25
  br i1 %cmp20, label %land.lhs.true.21, label %if.end

land.lhs.true.21:                                 ; preds = %land.lhs.true.19
  %26 = load i32, i32* %off_y, align 4
  %27 = load i32, i32* %y.addr, align 4
  %cmp22 = icmp sle i32 %26, %27
  br i1 %cmp22, label %land.lhs.true.23, label %if.end

land.lhs.true.23:                                 ; preds = %land.lhs.true.21
  %28 = load i32, i32* %off_x, align 4
  %29 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call24 = call i32 @gimp_item_get_width(%struct._GimpItem* %29)
  %add = add nsw i32 %28, %call24
  %30 = load i32, i32* %x.addr, align 4
  %31 = load i32, i32* %w.addr, align 4
  %add25 = add nsw i32 %30, %31
  %cmp26 = icmp sge i32 %add, %add25
  br i1 %cmp26, label %land.lhs.true.27, label %if.end

land.lhs.true.27:                                 ; preds = %land.lhs.true.23
  %32 = load i32, i32* %off_y, align 4
  %33 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call28 = call i32 @gimp_item_get_height(%struct._GimpItem* %33)
  %add29 = add nsw i32 %32, %call28
  %34 = load i32, i32* %y.addr, align 4
  %35 = load i32, i32* %h.addr, align 4
  %add30 = add nsw i32 %34, %35
  %cmp31 = icmp sge i32 %add29, %add30
  br i1 %cmp31, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.27
  store i32 1, i32* %coverage, align 4
  br label %for.end

if.end:                                           ; preds = %land.lhs.true.27, %land.lhs.true.23, %land.lhs.true.21, %land.lhs.true.19, %land.lhs.true.16, %land.lhs.true.14, %land.lhs.true.11, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %36 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool32 = icmp ne %struct._GList* %36, null
  br i1 %tobool32, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %37 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %37, i32 0, i32 1
  %38 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %38, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %39 = load i32, i32* %coverage, align 4
  %tobool33 = icmp ne i32 %39, 0
  br i1 %tobool33, label %if.end.38, label %if.then.34

if.then.34:                                       ; preds = %for.end
  %40 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %41 = bitcast %struct._GimpProjection* %40 to %struct._GTypeInstance*
  %call35 = call i64 @gimp_pickable_interface_get_type() #4
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call35)
  %42 = bitcast %struct._GTypeInstance* %call36 to %struct._GimpPickable*
  %call37 = call %struct._TileManager* @gimp_pickable_get_tiles(%struct._GimpPickable* %42)
  %43 = load i32, i32* %x.addr, align 4
  %44 = load i32, i32* %y.addr, align 4
  %45 = load i32, i32* %w.addr, align 4
  %46 = load i32, i32* %h.addr, align 4
  call void @pixel_region_init(%struct._PixelRegion* %region, %struct._TileManager* %call37, i32 %43, i32 %44, i32 %45, i32 %46, i32 1)
  call void @clear_region(%struct._PixelRegion* %region)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.34, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_projection_construct_gegl(%struct._GimpProjection* %proj, i32 %x, i32 %y, i32 %w, i32 %h) #0 {
entry:
  %proj.addr = alloca %struct._GimpProjection*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %sink = alloca %struct._GeglNode*, align 8
  %rect = alloca %struct._GeglRectangle, align 4
  store %struct._GimpProjection* %proj, %struct._GimpProjection** %proj.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  %0 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %call = call %struct._GeglNode* @gimp_projection_get_sink_node(%struct._GimpProjection* %0)
  store %struct._GeglNode* %call, %struct._GeglNode** %sink, align 8
  %1 = load i32, i32* %x.addr, align 4
  %x1 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %rect, i32 0, i32 0
  store i32 %1, i32* %x1, align 4
  %2 = load i32, i32* %y.addr, align 4
  %y2 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %rect, i32 0, i32 1
  store i32 %2, i32* %y2, align 4
  %3 = load i32, i32* %w.addr, align 4
  %width = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %rect, i32 0, i32 2
  store i32 %3, i32* %width, align 4
  %4 = load i32, i32* %h.addr, align 4
  %height = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %rect, i32 0, i32 3
  store i32 %4, i32* %height, align 4
  %5 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %processor = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %5, i32 0, i32 5
  %6 = load %struct._GeglProcessor*, %struct._GeglProcessor** %processor, align 8
  %tobool = icmp ne %struct._GeglProcessor* %6, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct._GeglNode*, %struct._GeglNode** %sink, align 8
  %call3 = call %struct._GeglProcessor* @gegl_node_new_processor(%struct._GeglNode* %7, %struct._GeglRectangle* %rect)
  %8 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %processor4 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %8, i32 0, i32 5
  store %struct._GeglProcessor* %call3, %struct._GeglProcessor** %processor4, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %processor5 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %9, i32 0, i32 5
  %10 = load %struct._GeglProcessor*, %struct._GeglProcessor** %processor5, align 8
  call void @gegl_processor_set_rectangle(%struct._GeglProcessor* %10, %struct._GeglRectangle* %rect)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %11 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %processor6 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %11, i32 0, i32 5
  %12 = load %struct._GeglProcessor*, %struct._GeglProcessor** %processor6, align 8
  %call7 = call i32 @gegl_processor_work(%struct._GeglProcessor* %12, double* null)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %13 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %processor9 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %13, i32 0, i32 5
  %14 = load %struct._GeglProcessor*, %struct._GeglProcessor** %processor9, align 8
  %15 = bitcast %struct._GeglProcessor* %14 to i8*
  call void @g_object_unref(i8* %15)
  %16 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %processor10 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %16, i32 0, i32 5
  store %struct._GeglProcessor* null, %struct._GeglProcessor** %processor10, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_projection_construct_legacy(%struct._GimpProjection* %proj, i32 %with_layers, i32 %x, i32 %y, i32 %w, i32 %h) #0 {
entry:
  %proj.addr = alloca %struct._GimpProjection*, align 8
  %with_layers.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %list = alloca %struct._GList*, align 8
  %reverse_list = alloca %struct._GList*, align 8
  %proj_off_x = alloca i32, align 4
  %proj_off_y = alloca i32, align 4
  %layer = alloca %struct._GimpLayer*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %projPR = alloca %struct._PixelRegion, align 8
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  store %struct._GimpProjection* %proj, %struct._GimpProjection** %proj.addr, align 8
  store i32 %with_layers, i32* %with_layers.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  store %struct._GList* null, %struct._GList** %reverse_list, align 8
  %0 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %projectable = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %0, i32 0, i32 1
  %1 = load %struct._GimpProjectable*, %struct._GimpProjectable** %projectable, align 8
  %call = call %struct._GList* @gimp_projectable_get_channels(%struct._GimpProjectable* %1)
  store %struct._GList* %call, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %2 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_item_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call1)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpItem*
  %call3 = call i32 @gimp_item_get_visible(%struct._GimpItem* %6)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load %struct._GList*, %struct._GList** %reverse_list, align 8
  %8 = load %struct._GList*, %struct._GList** %list, align 8
  %data5 = getelementptr inbounds %struct._GList, %struct._GList* %8, i32 0, i32 0
  %9 = load i8*, i8** %data5, align 8
  %call6 = call %struct._GList* @g_list_prepend(%struct._GList* %7, i8* %9)
  store %struct._GList* %call6, %struct._GList** %reverse_list, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool7 = icmp ne %struct._GList* %10, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %11 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %11, i32 0, i32 1
  %12 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %12, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %with_layers.addr, align 4
  %tobool8 = icmp ne i32 %13, 0
  br i1 %tobool8, label %if.then.9, label %if.end.33

if.then.9:                                        ; preds = %for.end
  %14 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %projectable10 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %14, i32 0, i32 1
  %15 = load %struct._GimpProjectable*, %struct._GimpProjectable** %projectable10, align 8
  %call11 = call %struct._GList* @gimp_projectable_get_layers(%struct._GimpProjectable* %15)
  store %struct._GList* %call11, %struct._GList** %list, align 8
  br label %for.cond.12

for.cond.12:                                      ; preds = %cond.end.30, %if.then.9
  %16 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool13 = icmp ne %struct._GList* %16, null
  br i1 %tobool13, label %for.body.14, label %for.end.32

for.body.14:                                      ; preds = %for.cond.12
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %data15 = getelementptr inbounds %struct._GList, %struct._GList* %17, i32 0, i32 0
  %18 = load i8*, i8** %data15, align 8
  %19 = bitcast i8* %18 to %struct._GimpLayer*
  store %struct._GimpLayer* %19, %struct._GimpLayer** %layer, align 8
  %20 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call16 = call i32 @gimp_layer_is_floating_sel(%struct._GimpLayer* %20)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end.24, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body.14
  %21 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %22 = bitcast %struct._GimpLayer* %21 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_item_get_type() #4
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call18)
  %23 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpItem*
  %call20 = call i32 @gimp_item_get_visible(%struct._GimpItem* %23)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %land.lhs.true
  %24 = load %struct._GList*, %struct._GList** %reverse_list, align 8
  %25 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %26 = bitcast %struct._GimpLayer* %25 to i8*
  %call23 = call %struct._GList* @g_list_prepend(%struct._GList* %24, i8* %26)
  store %struct._GList* %call23, %struct._GList** %reverse_list, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %land.lhs.true, %for.body.14
  br label %for.inc.25

for.inc.25:                                       ; preds = %if.end.24
  %27 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool26 = icmp ne %struct._GList* %27, null
  br i1 %tobool26, label %cond.true.27, label %cond.false.29

cond.true.27:                                     ; preds = %for.inc.25
  %28 = load %struct._GList*, %struct._GList** %list, align 8
  %next28 = getelementptr inbounds %struct._GList, %struct._GList* %28, i32 0, i32 1
  %29 = load %struct._GList*, %struct._GList** %next28, align 8
  br label %cond.end.30

cond.false.29:                                    ; preds = %for.inc.25
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.29, %cond.true.27
  %cond31 = phi %struct._GList* [ %29, %cond.true.27 ], [ null, %cond.false.29 ]
  store %struct._GList* %cond31, %struct._GList** %list, align 8
  br label %for.cond.12

for.end.32:                                       ; preds = %for.cond.12
  br label %if.end.33

if.end.33:                                        ; preds = %for.end.32, %for.end
  %30 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %projectable34 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %30, i32 0, i32 1
  %31 = load %struct._GimpProjectable*, %struct._GimpProjectable** %projectable34, align 8
  call void @gimp_projectable_get_offset(%struct._GimpProjectable* %31, i32* %proj_off_x, i32* %proj_off_y)
  %32 = load %struct._GList*, %struct._GList** %reverse_list, align 8
  store %struct._GList* %32, %struct._GList** %list, align 8
  br label %for.cond.35

for.cond.35:                                      ; preds = %cond.end.115, %if.end.33
  %33 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool36 = icmp ne %struct._GList* %33, null
  br i1 %tobool36, label %for.body.37, label %for.end.117

for.body.37:                                      ; preds = %for.cond.35
  %34 = load %struct._GList*, %struct._GList** %list, align 8
  %data38 = getelementptr inbounds %struct._GList, %struct._GList* %34, i32 0, i32 0
  %35 = load i8*, i8** %data38, align 8
  %36 = bitcast i8* %35 to %struct._GimpItem*
  store %struct._GimpItem* %36, %struct._GimpItem** %item, align 8
  %37 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  call void @gimp_item_get_offset(%struct._GimpItem* %37, i32* %off_x, i32* %off_y)
  %38 = load i32, i32* %proj_off_x, align 4
  %39 = load i32, i32* %off_x, align 4
  %sub = sub nsw i32 %39, %38
  store i32 %sub, i32* %off_x, align 4
  %40 = load i32, i32* %proj_off_y, align 4
  %41 = load i32, i32* %off_y, align 4
  %sub39 = sub nsw i32 %41, %40
  store i32 %sub39, i32* %off_y, align 4
  %42 = load i32, i32* %off_x, align 4
  %43 = load i32, i32* %x.addr, align 4
  %44 = load i32, i32* %w.addr, align 4
  %add = add nsw i32 %43, %44
  %cmp = icmp sgt i32 %42, %add
  br i1 %cmp, label %cond.true.40, label %cond.false.42

cond.true.40:                                     ; preds = %for.body.37
  %45 = load i32, i32* %x.addr, align 4
  %46 = load i32, i32* %w.addr, align 4
  %add41 = add nsw i32 %45, %46
  br label %cond.end.48

cond.false.42:                                    ; preds = %for.body.37
  %47 = load i32, i32* %off_x, align 4
  %48 = load i32, i32* %x.addr, align 4
  %cmp43 = icmp slt i32 %47, %48
  br i1 %cmp43, label %cond.true.44, label %cond.false.45

cond.true.44:                                     ; preds = %cond.false.42
  %49 = load i32, i32* %x.addr, align 4
  br label %cond.end.46

cond.false.45:                                    ; preds = %cond.false.42
  %50 = load i32, i32* %off_x, align 4
  br label %cond.end.46

cond.end.46:                                      ; preds = %cond.false.45, %cond.true.44
  %cond47 = phi i32 [ %49, %cond.true.44 ], [ %50, %cond.false.45 ]
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.end.46, %cond.true.40
  %cond49 = phi i32 [ %add41, %cond.true.40 ], [ %cond47, %cond.end.46 ]
  store i32 %cond49, i32* %x1, align 4
  %51 = load i32, i32* %off_y, align 4
  %52 = load i32, i32* %y.addr, align 4
  %53 = load i32, i32* %h.addr, align 4
  %add50 = add nsw i32 %52, %53
  %cmp51 = icmp sgt i32 %51, %add50
  br i1 %cmp51, label %cond.true.52, label %cond.false.54

cond.true.52:                                     ; preds = %cond.end.48
  %54 = load i32, i32* %y.addr, align 4
  %55 = load i32, i32* %h.addr, align 4
  %add53 = add nsw i32 %54, %55
  br label %cond.end.60

cond.false.54:                                    ; preds = %cond.end.48
  %56 = load i32, i32* %off_y, align 4
  %57 = load i32, i32* %y.addr, align 4
  %cmp55 = icmp slt i32 %56, %57
  br i1 %cmp55, label %cond.true.56, label %cond.false.57

cond.true.56:                                     ; preds = %cond.false.54
  %58 = load i32, i32* %y.addr, align 4
  br label %cond.end.58

cond.false.57:                                    ; preds = %cond.false.54
  %59 = load i32, i32* %off_y, align 4
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.false.57, %cond.true.56
  %cond59 = phi i32 [ %58, %cond.true.56 ], [ %59, %cond.false.57 ]
  br label %cond.end.60

cond.end.60:                                      ; preds = %cond.end.58, %cond.true.52
  %cond61 = phi i32 [ %add53, %cond.true.52 ], [ %cond59, %cond.end.58 ]
  store i32 %cond61, i32* %y1, align 4
  %60 = load i32, i32* %off_x, align 4
  %61 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call62 = call i32 @gimp_item_get_width(%struct._GimpItem* %61)
  %add63 = add nsw i32 %60, %call62
  %62 = load i32, i32* %x.addr, align 4
  %63 = load i32, i32* %w.addr, align 4
  %add64 = add nsw i32 %62, %63
  %cmp65 = icmp sgt i32 %add63, %add64
  br i1 %cmp65, label %cond.true.66, label %cond.false.68

cond.true.66:                                     ; preds = %cond.end.60
  %64 = load i32, i32* %x.addr, align 4
  %65 = load i32, i32* %w.addr, align 4
  %add67 = add nsw i32 %64, %65
  br label %cond.end.78

cond.false.68:                                    ; preds = %cond.end.60
  %66 = load i32, i32* %off_x, align 4
  %67 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call69 = call i32 @gimp_item_get_width(%struct._GimpItem* %67)
  %add70 = add nsw i32 %66, %call69
  %68 = load i32, i32* %x.addr, align 4
  %cmp71 = icmp slt i32 %add70, %68
  br i1 %cmp71, label %cond.true.72, label %cond.false.73

cond.true.72:                                     ; preds = %cond.false.68
  %69 = load i32, i32* %x.addr, align 4
  br label %cond.end.76

cond.false.73:                                    ; preds = %cond.false.68
  %70 = load i32, i32* %off_x, align 4
  %71 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call74 = call i32 @gimp_item_get_width(%struct._GimpItem* %71)
  %add75 = add nsw i32 %70, %call74
  br label %cond.end.76

cond.end.76:                                      ; preds = %cond.false.73, %cond.true.72
  %cond77 = phi i32 [ %69, %cond.true.72 ], [ %add75, %cond.false.73 ]
  br label %cond.end.78

cond.end.78:                                      ; preds = %cond.end.76, %cond.true.66
  %cond79 = phi i32 [ %add67, %cond.true.66 ], [ %cond77, %cond.end.76 ]
  store i32 %cond79, i32* %x2, align 4
  %72 = load i32, i32* %off_y, align 4
  %73 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call80 = call i32 @gimp_item_get_height(%struct._GimpItem* %73)
  %add81 = add nsw i32 %72, %call80
  %74 = load i32, i32* %y.addr, align 4
  %75 = load i32, i32* %h.addr, align 4
  %add82 = add nsw i32 %74, %75
  %cmp83 = icmp sgt i32 %add81, %add82
  br i1 %cmp83, label %cond.true.84, label %cond.false.86

cond.true.84:                                     ; preds = %cond.end.78
  %76 = load i32, i32* %y.addr, align 4
  %77 = load i32, i32* %h.addr, align 4
  %add85 = add nsw i32 %76, %77
  br label %cond.end.96

cond.false.86:                                    ; preds = %cond.end.78
  %78 = load i32, i32* %off_y, align 4
  %79 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call87 = call i32 @gimp_item_get_height(%struct._GimpItem* %79)
  %add88 = add nsw i32 %78, %call87
  %80 = load i32, i32* %y.addr, align 4
  %cmp89 = icmp slt i32 %add88, %80
  br i1 %cmp89, label %cond.true.90, label %cond.false.91

cond.true.90:                                     ; preds = %cond.false.86
  %81 = load i32, i32* %y.addr, align 4
  br label %cond.end.94

cond.false.91:                                    ; preds = %cond.false.86
  %82 = load i32, i32* %off_y, align 4
  %83 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call92 = call i32 @gimp_item_get_height(%struct._GimpItem* %83)
  %add93 = add nsw i32 %82, %call92
  br label %cond.end.94

cond.end.94:                                      ; preds = %cond.false.91, %cond.true.90
  %cond95 = phi i32 [ %81, %cond.true.90 ], [ %add93, %cond.false.91 ]
  br label %cond.end.96

cond.end.96:                                      ; preds = %cond.end.94, %cond.true.84
  %cond97 = phi i32 [ %add85, %cond.true.84 ], [ %cond95, %cond.end.94 ]
  store i32 %cond97, i32* %y2, align 4
  %84 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %85 = bitcast %struct._GimpProjection* %84 to %struct._GTypeInstance*
  %call98 = call i64 @gimp_pickable_interface_get_type() #4
  %call99 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %85, i64 %call98)
  %86 = bitcast %struct._GTypeInstance* %call99 to %struct._GimpPickable*
  %call100 = call %struct._TileManager* @gimp_pickable_get_tiles(%struct._GimpPickable* %86)
  %87 = load i32, i32* %x1, align 4
  %88 = load i32, i32* %y1, align 4
  %89 = load i32, i32* %x2, align 4
  %90 = load i32, i32* %x1, align 4
  %sub101 = sub nsw i32 %89, %90
  %91 = load i32, i32* %y2, align 4
  %92 = load i32, i32* %y1, align 4
  %sub102 = sub nsw i32 %91, %92
  call void @pixel_region_init(%struct._PixelRegion* %projPR, %struct._TileManager* %call100, i32 %87, i32 %88, i32 %sub101, i32 %sub102, i32 1)
  %93 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %94 = bitcast %struct._GimpItem* %93 to %struct._GTypeInstance*
  %call103 = call i64 @gimp_drawable_get_type() #4
  %call104 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %94, i64 %call103)
  %95 = bitcast %struct._GTypeInstance* %call104 to %struct._GimpDrawable*
  %96 = load i32, i32* %x1, align 4
  %97 = load i32, i32* %off_x, align 4
  %sub105 = sub nsw i32 %96, %97
  %98 = load i32, i32* %y1, align 4
  %99 = load i32, i32* %off_y, align 4
  %sub106 = sub nsw i32 %98, %99
  %100 = load i32, i32* %x2, align 4
  %101 = load i32, i32* %x1, align 4
  %sub107 = sub nsw i32 %100, %101
  %102 = load i32, i32* %y2, align 4
  %103 = load i32, i32* %y1, align 4
  %sub108 = sub nsw i32 %102, %103
  %104 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %construct_flag = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %104, i32 0, i32 8
  %105 = load i32, i32* %construct_flag, align 4
  call void @gimp_drawable_project_region(%struct._GimpDrawable* %95, i32 %sub105, i32 %sub106, i32 %sub107, i32 %sub108, %struct._PixelRegion* %projPR, i32 %105)
  %106 = load %struct._GimpProjection*, %struct._GimpProjection** %proj.addr, align 8
  %construct_flag109 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %106, i32 0, i32 8
  store i32 1, i32* %construct_flag109, align 4
  br label %for.inc.110

for.inc.110:                                      ; preds = %cond.end.96
  %107 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool111 = icmp ne %struct._GList* %107, null
  br i1 %tobool111, label %cond.true.112, label %cond.false.114

cond.true.112:                                    ; preds = %for.inc.110
  %108 = load %struct._GList*, %struct._GList** %list, align 8
  %next113 = getelementptr inbounds %struct._GList, %struct._GList* %108, i32 0, i32 1
  %109 = load %struct._GList*, %struct._GList** %next113, align 8
  br label %cond.end.115

cond.false.114:                                   ; preds = %for.inc.110
  br label %cond.end.115

cond.end.115:                                     ; preds = %cond.false.114, %cond.true.112
  %cond116 = phi %struct._GList* [ %109, %cond.true.112 ], [ null, %cond.false.114 ]
  store %struct._GList* %cond116, %struct._GList** %list, align 8
  br label %for.cond.35

for.end.117:                                      ; preds = %for.cond.35
  %110 = load %struct._GList*, %struct._GList** %reverse_list, align 8
  call void @g_list_free(%struct._GList* %110)
  ret void
}

declare %struct._GeglNode* @gimp_projection_get_sink_node(%struct._GimpProjection*) #3

declare %struct._GeglProcessor* @gegl_node_new_processor(%struct._GeglNode*, %struct._GeglRectangle*) #3

declare void @gegl_processor_set_rectangle(%struct._GeglProcessor*, %struct._GeglRectangle*) #3

declare i32 @gegl_processor_work(%struct._GeglProcessor*, double*) #3

declare void @g_object_unref(i8*) #3

declare %struct._GList* @gimp_projectable_get_channels(%struct._GimpProjectable*) #3

declare i32 @gimp_item_get_visible(%struct._GimpItem*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #1

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #3

declare %struct._GList* @gimp_projectable_get_layers(%struct._GimpProjectable*) #3

declare i32 @gimp_layer_is_floating_sel(%struct._GimpLayer*) #3

declare void @gimp_projectable_get_offset(%struct._GimpProjectable*, i32*, i32*) #3

declare void @gimp_item_get_offset(%struct._GimpItem*, i32*, i32*) #3

declare i32 @gimp_item_get_width(%struct._GimpItem*) #3

declare i32 @gimp_item_get_height(%struct._GimpItem*) #3

declare void @pixel_region_init(%struct._PixelRegion*, %struct._TileManager*, i32, i32, i32, i32, i32) #3

declare %struct._TileManager* @gimp_pickable_get_tiles(%struct._GimpPickable*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_pickable_interface_get_type() #1

declare void @gimp_drawable_project_region(%struct._GimpDrawable*, i32, i32, i32, i32, %struct._PixelRegion*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #1

declare void @g_list_free(%struct._GList*) #3

declare i32 @gimp_drawable_has_alpha(%struct._GimpDrawable*) #3

declare %struct._GimpLayerMask* @gimp_layer_get_mask(%struct._GimpLayer*) #3

declare i32 @gimp_layer_get_mode(%struct._GimpLayer*) #3

declare double @gimp_layer_get_opacity(%struct._GimpLayer*) #3

declare void @clear_region(%struct._PixelRegion*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
