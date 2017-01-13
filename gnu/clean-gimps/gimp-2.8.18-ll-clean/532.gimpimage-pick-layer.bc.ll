; ModuleID = './app/core/gimpimage-pick-layer.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpLayer = type { %struct._GimpDrawable, double, i32, i32, %struct._GimpLayerMask*, %struct._GeglNode*, %struct.anon }
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
%struct._GimpLayerMask = type opaque
%struct._GeglNode = type opaque
%struct.anon = type { %struct._GimpDrawable*, i32, %struct._BoundSeg*, i32 }
%struct._BoundSeg = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._Gimp = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpPickable = type opaque
%struct._GimpTextLayer = type { %struct._GimpLayer, %struct._GimpText*, i8*, i32, i32 }
%struct._GimpText = type opaque

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_image_pick_layer = private unnamed_addr constant [22 x i8] c"gimp_image_pick_layer\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@__func__.gimp_image_pick_layer_by_bounds = private unnamed_addr constant [32 x i8] c"gimp_image_pick_layer_by_bounds\00", align 1
@__func__.gimp_image_pick_text_layer = private unnamed_addr constant [27 x i8] c"gimp_image_pick_text_layer\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GimpLayer* @gimp_image_pick_layer(%struct._GimpImage* %image, i32 %x, i32 %y) #0 {
entry:
  %retval = alloca %struct._GimpLayer*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %all_layers = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %layer = alloca %struct._GimpLayer*, align 8
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_image_pick_layer, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call11 = call %struct._GList* @gimp_image_get_layer_list(%struct._GimpImage* %13)
  store %struct._GList* %call11, %struct._GList** %all_layers, align 8
  %14 = load %struct._GList*, %struct._GList** %all_layers, align 8
  store %struct._GList* %14, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end
  %15 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool12 = icmp ne %struct._GList* %15, null
  br i1 %tobool12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %16, i32 0, i32 0
  %17 = load i8*, i8** %data, align 8
  %18 = bitcast i8* %17 to %struct._GimpLayer*
  store %struct._GimpLayer* %18, %struct._GimpLayer** %layer, align 8
  %19 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %20 = bitcast %struct._GimpLayer* %19 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_item_get_type() #4
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call16)
  %21 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %21, i32* %off_x, i32* %off_y)
  %22 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %23 = bitcast %struct._GimpLayer* %22 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_pickable_interface_get_type() #4
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call18)
  %24 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpPickable*
  %25 = load i32, i32* %x.addr, align 4
  %26 = load i32, i32* %off_x, align 4
  %sub = sub nsw i32 %25, %26
  %27 = load i32, i32* %y.addr, align 4
  %28 = load i32, i32* %off_y, align 4
  %sub20 = sub nsw i32 %27, %28
  %call21 = call i32 @gimp_pickable_get_opacity_at(%struct._GimpPickable* %24, i32 %sub, i32 %sub20)
  %cmp22 = icmp sgt i32 %call21, 63
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %for.body
  %29 = load %struct._GList*, %struct._GList** %all_layers, align 8
  call void @g_list_free(%struct._GList* %29)
  %30 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  store %struct._GimpLayer* %30, %struct._GimpLayer** %retval
  br label %return

if.end.24:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.24
  %31 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool25 = icmp ne %struct._GList* %31, null
  br i1 %tobool25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %32 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %32, i32 0, i32 1
  %33 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %33, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load %struct._GList*, %struct._GList** %all_layers, align 8
  call void @g_list_free(%struct._GList* %34)
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.23, %if.else.9
  %35 = load %struct._GimpLayer*, %struct._GimpLayer** %retval
  ret %struct._GimpLayer* %35
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare %struct._GList* @gimp_image_get_layer_list(%struct._GimpImage*) #3

declare void @gimp_item_get_offset(%struct._GimpItem*, i32*, i32*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #1

declare i32 @gimp_pickable_get_opacity_at(%struct._GimpPickable*, i32, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_pickable_interface_get_type() #1

declare void @g_list_free(%struct._GList*) #3

; Function Attrs: nounwind uwtable
define %struct._GimpLayer* @gimp_image_pick_layer_by_bounds(%struct._GimpImage* %image, i32 %x, i32 %y) #0 {
entry:
  %retval = alloca %struct._GimpLayer*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %all_layers = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %layer = alloca %struct._GimpLayer*, align 8
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_image_pick_layer_by_bounds, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call11 = call %struct._GList* @gimp_image_get_layer_list(%struct._GimpImage* %13)
  store %struct._GList* %call11, %struct._GList** %all_layers, align 8
  %14 = load %struct._GList*, %struct._GList** %all_layers, align 8
  store %struct._GList* %14, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end
  %15 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool12 = icmp ne %struct._GList* %15, null
  br i1 %tobool12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %16, i32 0, i32 0
  %17 = load i8*, i8** %data, align 8
  %18 = bitcast i8* %17 to %struct._GimpLayer*
  store %struct._GimpLayer* %18, %struct._GimpLayer** %layer, align 8
  %19 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %20 = bitcast %struct._GimpLayer* %19 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_item_get_type() #4
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call14)
  %21 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpItem*
  %call16 = call i32 @gimp_item_is_visible(%struct._GimpItem* %21)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.41

if.then.18:                                       ; preds = %for.body
  %22 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %23 = bitcast %struct._GimpLayer* %22 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_item_get_type() #4
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call23)
  %24 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %24, i32* %off_x, i32* %off_y)
  %25 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %26 = bitcast %struct._GimpLayer* %25 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_item_get_type() #4
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call25)
  %27 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpItem*
  %call27 = call i32 @gimp_item_get_width(%struct._GimpItem* %27)
  store i32 %call27, i32* %width, align 4
  %28 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %29 = bitcast %struct._GimpLayer* %28 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_item_get_type() #4
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call28)
  %30 = bitcast %struct._GTypeInstance* %call29 to %struct._GimpItem*
  %call30 = call i32 @gimp_item_get_height(%struct._GimpItem* %30)
  store i32 %call30, i32* %height, align 4
  %31 = load i32, i32* %x.addr, align 4
  %32 = load i32, i32* %off_x, align 4
  %cmp31 = icmp sge i32 %31, %32
  br i1 %cmp31, label %land.lhs.true.32, label %if.end.40

land.lhs.true.32:                                 ; preds = %if.then.18
  %33 = load i32, i32* %y.addr, align 4
  %34 = load i32, i32* %off_y, align 4
  %cmp33 = icmp sge i32 %33, %34
  br i1 %cmp33, label %land.lhs.true.34, label %if.end.40

land.lhs.true.34:                                 ; preds = %land.lhs.true.32
  %35 = load i32, i32* %x.addr, align 4
  %36 = load i32, i32* %off_x, align 4
  %37 = load i32, i32* %width, align 4
  %add = add nsw i32 %36, %37
  %cmp35 = icmp slt i32 %35, %add
  br i1 %cmp35, label %land.lhs.true.36, label %if.end.40

land.lhs.true.36:                                 ; preds = %land.lhs.true.34
  %38 = load i32, i32* %y.addr, align 4
  %39 = load i32, i32* %off_y, align 4
  %40 = load i32, i32* %height, align 4
  %add37 = add nsw i32 %39, %40
  %cmp38 = icmp slt i32 %38, %add37
  br i1 %cmp38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %land.lhs.true.36
  %41 = load %struct._GList*, %struct._GList** %all_layers, align 8
  call void @g_list_free(%struct._GList* %41)
  %42 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  store %struct._GimpLayer* %42, %struct._GimpLayer** %retval
  br label %return

if.end.40:                                        ; preds = %land.lhs.true.36, %land.lhs.true.34, %land.lhs.true.32, %if.then.18
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.41
  %43 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool42 = icmp ne %struct._GList* %43, null
  br i1 %tobool42, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %44 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %44, i32 0, i32 1
  %45 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %45, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %46 = load %struct._GList*, %struct._GList** %all_layers, align 8
  call void @g_list_free(%struct._GList* %46)
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.39, %if.else.9
  %47 = load %struct._GimpLayer*, %struct._GimpLayer** %retval
  ret %struct._GimpLayer* %47
}

declare i32 @gimp_item_is_visible(%struct._GimpItem*) #3

declare i32 @gimp_item_get_width(%struct._GimpItem*) #3

declare i32 @gimp_item_get_height(%struct._GimpItem*) #3

; Function Attrs: nounwind uwtable
define %struct._GimpTextLayer* @gimp_image_pick_text_layer(%struct._GimpImage* %image, i32 %x, i32 %y) #0 {
entry:
  %retval = alloca %struct._GimpTextLayer*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %all_layers = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %layer = alloca %struct._GimpLayer*, align 8
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  %__inst19 = alloca %struct._GTypeInstance*, align 8
  %__t21 = alloca i64, align 8
  %__r24 = alloca i32, align 4
  %tmp39 = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_image_pick_text_layer, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpTextLayer* null, %struct._GimpTextLayer** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call11 = call %struct._GList* @gimp_image_get_layer_list(%struct._GimpImage* %13)
  store %struct._GList* %call11, %struct._GList** %all_layers, align 8
  %14 = load %struct._GList*, %struct._GList** %all_layers, align 8
  store %struct._GList* %14, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end
  %15 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool12 = icmp ne %struct._GList* %15, null
  br i1 %tobool12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %16, i32 0, i32 0
  %17 = load i8*, i8** %data, align 8
  %18 = bitcast i8* %17 to %struct._GimpLayer*
  store %struct._GimpLayer* %18, %struct._GimpLayer** %layer, align 8
  %19 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %20 = bitcast %struct._GimpLayer* %19 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_item_get_type() #4
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call16)
  %21 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %21, i32* %off_x, i32* %off_y)
  %22 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %23 = bitcast %struct._GimpLayer* %22 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %23, %struct._GTypeInstance** %__inst19, align 8
  %call22 = call i64 @gimp_text_layer_get_type() #4
  store i64 %call22, i64* %__t21, align 8
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %tobool25 = icmp ne %struct._GTypeInstance* %24, null
  br i1 %tobool25, label %if.else.27, label %if.then.26

if.then.26:                                       ; preds = %for.body
  store i32 0, i32* %__r24, align 4
  br label %if.end.38

if.else.27:                                       ; preds = %for.body
  %25 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %g_class28 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %25, i32 0, i32 0
  %26 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class28, align 8
  %tobool29 = icmp ne %struct._GTypeClass* %26, null
  br i1 %tobool29, label %land.lhs.true.30, label %if.else.35

land.lhs.true.30:                                 ; preds = %if.else.27
  %27 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %g_class31 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %27, i32 0, i32 0
  %28 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class31, align 8
  %g_type32 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %28, i32 0, i32 0
  %29 = load i64, i64* %g_type32, align 8
  %30 = load i64, i64* %__t21, align 8
  %cmp33 = icmp eq i64 %29, %30
  br i1 %cmp33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %land.lhs.true.30
  store i32 1, i32* %__r24, align 4
  br label %if.end.37

if.else.35:                                       ; preds = %land.lhs.true.30, %if.else.27
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %32 = load i64, i64* %__t21, align 8
  %call36 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %31, i64 %32) #5
  store i32 %call36, i32* %__r24, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.35, %if.then.34
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.26
  %33 = load i32, i32* %__r24, align 4
  store i32 %33, i32* %tmp39
  %34 = load i32, i32* %tmp39
  %tobool40 = icmp ne i32 %34, 0
  br i1 %tobool40, label %land.lhs.true.41, label %if.else.64

land.lhs.true.41:                                 ; preds = %if.end.38
  %35 = load i32, i32* %x.addr, align 4
  %36 = load i32, i32* %off_x, align 4
  %cmp42 = icmp sge i32 %35, %36
  br i1 %cmp42, label %land.lhs.true.43, label %if.else.64

land.lhs.true.43:                                 ; preds = %land.lhs.true.41
  %37 = load i32, i32* %y.addr, align 4
  %38 = load i32, i32* %off_y, align 4
  %cmp44 = icmp sge i32 %37, %38
  br i1 %cmp44, label %land.lhs.true.45, label %if.else.64

land.lhs.true.45:                                 ; preds = %land.lhs.true.43
  %39 = load i32, i32* %x.addr, align 4
  %40 = load i32, i32* %off_x, align 4
  %41 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %42 = bitcast %struct._GimpLayer* %41 to %struct._GTypeInstance*
  %call46 = call i64 @gimp_item_get_type() #4
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call46)
  %43 = bitcast %struct._GTypeInstance* %call47 to %struct._GimpItem*
  %call48 = call i32 @gimp_item_get_width(%struct._GimpItem* %43)
  %add = add nsw i32 %40, %call48
  %cmp49 = icmp slt i32 %39, %add
  br i1 %cmp49, label %land.lhs.true.50, label %if.else.64

land.lhs.true.50:                                 ; preds = %land.lhs.true.45
  %44 = load i32, i32* %y.addr, align 4
  %45 = load i32, i32* %off_y, align 4
  %46 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %47 = bitcast %struct._GimpLayer* %46 to %struct._GTypeInstance*
  %call51 = call i64 @gimp_item_get_type() #4
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call51)
  %48 = bitcast %struct._GTypeInstance* %call52 to %struct._GimpItem*
  %call53 = call i32 @gimp_item_get_height(%struct._GimpItem* %48)
  %add54 = add nsw i32 %45, %call53
  %cmp55 = icmp slt i32 %44, %add54
  br i1 %cmp55, label %land.lhs.true.56, label %if.else.64

land.lhs.true.56:                                 ; preds = %land.lhs.true.50
  %49 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %50 = bitcast %struct._GimpLayer* %49 to %struct._GTypeInstance*
  %call57 = call i64 @gimp_item_get_type() #4
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call57)
  %51 = bitcast %struct._GTypeInstance* %call58 to %struct._GimpItem*
  %call59 = call i32 @gimp_item_is_visible(%struct._GimpItem* %51)
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %if.then.61, label %if.else.64

if.then.61:                                       ; preds = %land.lhs.true.56
  %52 = load %struct._GList*, %struct._GList** %all_layers, align 8
  call void @g_list_free(%struct._GList* %52)
  %53 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %54 = bitcast %struct._GimpLayer* %53 to %struct._GTypeInstance*
  %call62 = call i64 @gimp_text_layer_get_type() #4
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call62)
  %55 = bitcast %struct._GTypeInstance* %call63 to %struct._GimpTextLayer*
  store %struct._GimpTextLayer* %55, %struct._GimpTextLayer** %retval
  br label %return

if.else.64:                                       ; preds = %land.lhs.true.56, %land.lhs.true.50, %land.lhs.true.45, %land.lhs.true.43, %land.lhs.true.41, %if.end.38
  %56 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %57 = bitcast %struct._GimpLayer* %56 to %struct._GTypeInstance*
  %call65 = call i64 @gimp_pickable_interface_get_type() #4
  %call66 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call65)
  %58 = bitcast %struct._GTypeInstance* %call66 to %struct._GimpPickable*
  %59 = load i32, i32* %x.addr, align 4
  %60 = load i32, i32* %off_x, align 4
  %sub = sub nsw i32 %59, %60
  %61 = load i32, i32* %y.addr, align 4
  %62 = load i32, i32* %off_y, align 4
  %sub67 = sub nsw i32 %61, %62
  %call68 = call i32 @gimp_pickable_get_opacity_at(%struct._GimpPickable* %58, i32 %sub, i32 %sub67)
  %cmp69 = icmp sgt i32 %call68, 63
  br i1 %cmp69, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.else.64
  br label %for.end

if.end.71:                                        ; preds = %if.else.64
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71
  br label %for.inc

for.inc:                                          ; preds = %if.end.72
  %63 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool73 = icmp ne %struct._GList* %63, null
  br i1 %tobool73, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %64 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %64, i32 0, i32 1
  %65 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %65, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.70, %for.cond
  %66 = load %struct._GList*, %struct._GList** %all_layers, align 8
  call void @g_list_free(%struct._GList* %66)
  store %struct._GimpTextLayer* null, %struct._GimpTextLayer** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.61, %if.else.9
  %67 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %retval
  ret %struct._GimpTextLayer* %67
}

; Function Attrs: nounwind readnone
declare i64 @gimp_text_layer_get_type() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
