; ModuleID = './app/text/gimptextlayer-transform.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpItemClass = type { %struct._GimpViewableClass, void (%struct._GimpItem*)*, void (%struct._GimpItem*)*, void (%struct._GimpItem*)*, void (%struct._GimpItem*)*, void (%struct._GimpItem*)*, i32 (%struct._GimpItem*)*, i32 (%struct._GimpItem*)*, %struct._GimpItemTree* (%struct._GimpItem*)*, %struct._GimpItem* (%struct._GimpItem*, i64)*, void (%struct._GimpItem*, %struct._GimpImage*)*, i32 (%struct._GimpItem*, i8*, i8*, %struct._GError**)*, void (%struct._GimpItem*, i32, i32, i32)*, void (%struct._GimpItem*, i32, i32, i32, i32, i32, %struct._GimpProgress*)*, void (%struct._GimpItem*, %struct._GimpContext*, i32, i32, i32, i32)*, void (%struct._GimpItem*, %struct._GimpContext*, i32, double, i32)*, void (%struct._GimpItem*, %struct._GimpContext*, i32, double, double, i32)*, void (%struct._GimpItem*, %struct._GimpContext*, %struct._GimpMatrix3*, i32, i32, i32, i32, %struct._GimpProgress*)*, i32 (%struct._GimpItem*, %struct._GimpDrawable*, %struct._GimpStrokeOptions*, i32, %struct._GimpProgress*, %struct._GError**)*, void (%struct._GimpItem*, i32, i32, i32, double, double)*, %struct._GeglNode* (%struct._GimpItem*)*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._GimpViewableClass = type { %struct._GimpObjectClass, i8*, i8*, void (%struct._GimpViewable*)*, void (%struct._GimpViewable*)*, i32 (%struct._GimpViewable*, i32*, i32*)*, void (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, i32 (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, i8* (%struct._GimpViewable*, i8**)*, %struct._GimpContainer* (%struct._GimpViewable*)*, void (%struct._GimpViewable*, i32)*, i32 (%struct._GimpViewable*)* }
%struct._GimpObjectClass = type { %struct._GObjectClass, void (%struct._GimpObject*)*, void (%struct._GimpObject*)*, i64 (%struct._GimpObject*, i64*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GTypeClass = type { i64 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpViewable = type { %struct._GimpObject }
%struct._TempBuf = type opaque
%struct._GimpContext = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpContainer = type opaque
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpItemTree = type opaque
%struct._GimpImage = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GimpProgress = type opaque
%struct._GimpMatrix3 = type { [3 x [3 x double]] }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpStrokeOptions = type opaque
%struct._GeglNode = type opaque
%struct._GimpTextLayer = type { %struct._GimpLayer, %struct._GimpText*, i8*, i32, i32 }
%struct._GimpLayer = type { %struct._GimpDrawable, double, i32, i32, %struct._GimpLayerMask*, %struct._GeglNode*, %struct.anon }
%struct._GimpLayerMask = type opaque
%struct.anon = type { %struct._GimpDrawable*, i32, %struct._BoundSeg*, i32 }
%struct._BoundSeg = type opaque
%struct._GimpText = type { %struct._GimpObject, i8*, i8*, i8*, i32, double, i32, i32, i32, i8*, i32, %struct._GimpRGB, i32, i32, double, double, double, i32, double, double, i32, %struct._GimpMatrix2, double, double, double }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpMatrix2 = type { [2 x [2 x double]] }

@.str = private unnamed_addr constant [15 x i8] c"transformation\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"offset-x\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"offset-y\00", align 1
@gimp_text_layer_parent_class.parent_class = internal global %struct._GimpItemClass* null, align 8

; Function Attrs: nounwind uwtable
define void @gimp_text_layer_scale(%struct._GimpItem* %item, i32 %new_width, i32 %new_height, i32 %new_offset_x, i32 %new_offset_y, i32 %interpolation_type, %struct._GimpProgress* %progress) #0 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %new_width.addr = alloca i32, align 4
  %new_height.addr = alloca i32, align 4
  %new_offset_x.addr = alloca i32, align 4
  %new_offset_y.addr = alloca i32, align 4
  %interpolation_type.addr = alloca i32, align 4
  %progress.addr = alloca %struct._GimpProgress*, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store i32 %new_width, i32* %new_width.addr, align 4
  store i32 %new_height, i32* %new_height.addr, align 4
  store i32 %new_offset_x, i32* %new_offset_x.addr, align 4
  store i32 %new_offset_y, i32* %new_offset_y.addr, align 4
  store i32 %interpolation_type, i32* %interpolation_type.addr, align 4
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_text_layer_flip(%struct._GimpItem* %item, %struct._GimpContext* %context, i32 %flip_type, double %axis, i32 %clip_result) #0 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %flip_type.addr = alloca i32, align 4
  %axis.addr = alloca double, align 8
  %clip_result.addr = alloca i32, align 4
  %layer = alloca %struct._GimpTextLayer*, align 8
  %mask = alloca %struct._GimpLayerMask*, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %flip_type, i32* %flip_type.addr, align 4
  store double %axis, double* %axis.addr, align 8
  store i32 %clip_result, i32* %clip_result.addr, align 4
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_text_layer_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTextLayer*
  store %struct._GimpTextLayer* %2, %struct._GimpTextLayer** %layer, align 8
  %3 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %4 = load i32, i32* %flip_type.addr, align 4
  %5 = load double, double* %axis.addr, align 8
  %call2 = call i32 @gimp_text_layer_transform_flip(%struct._GimpTextLayer* %3, i32 %4, double %5)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %7 = bitcast %struct._GimpTextLayer* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_layer_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpLayer*
  %call5 = call %struct._GimpLayerMask* @gimp_layer_get_mask(%struct._GimpLayer* %8)
  store %struct._GimpLayerMask* %call5, %struct._GimpLayerMask** %mask, align 8
  %9 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %tobool6 = icmp ne %struct._GimpLayerMask* %9, null
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %10 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %11 = bitcast %struct._GimpLayerMask* %10 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_item_get_type() #4
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call8)
  %12 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpItem*
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = load i32, i32* %flip_type.addr, align 4
  %15 = load double, double* %axis.addr, align 8
  %16 = load i32, i32* %clip_result.addr, align 4
  call void @gimp_item_flip(%struct._GimpItem* %12, %struct._GimpContext* %13, i32 %14, double %15, i32 %16)
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  br label %if.end.11

if.else:                                          ; preds = %entry
  %call10 = call %struct._GimpItemClass* @gimp_text_layer_parent_class() #4
  %flip = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %call10, i32 0, i32 15
  %17 = load void (%struct._GimpItem*, %struct._GimpContext*, i32, double, i32)*, void (%struct._GimpItem*, %struct._GimpContext*, i32, double, i32)** %flip, align 8
  %18 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %19 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %20 = load i32, i32* %flip_type.addr, align 4
  %21 = load double, double* %axis.addr, align 8
  %22 = load i32, i32* %clip_result.addr, align 4
  call void %17(%struct._GimpItem* %18, %struct._GimpContext* %19, i32 %20, double %21, i32 %22)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.end
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_text_layer_get_type() #2

; Function Attrs: nounwind uwtable
define internal i32 @gimp_text_layer_transform_flip(%struct._GimpTextLayer* %layer, i32 %flip_type, double %axis) #0 {
entry:
  %retval = alloca i32, align 4
  %layer.addr = alloca %struct._GimpTextLayer*, align 8
  %flip_type.addr = alloca i32, align 4
  %axis.addr = alloca double, align 8
  %matrix = alloca %struct._GimpMatrix3, align 8
  store %struct._GimpTextLayer* %layer, %struct._GimpTextLayer** %layer.addr, align 8
  store i32 %flip_type, i32* %flip_type.addr, align 4
  store double %axis, double* %axis.addr, align 8
  %0 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %call = call i32 @gimp_text_layer_get_transformation(%struct._GimpTextLayer* %0, %struct._GimpMatrix3* %matrix)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %flip_type.addr, align 4
  %2 = load double, double* %axis.addr, align 8
  call void @gimp_transform_matrix_flip(%struct._GimpMatrix3* %matrix, i32 %1, double %2)
  %3 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %call1 = call i32 @gimp_text_layer_set_transformation(%struct._GimpTextLayer* %3, %struct._GimpMatrix3* %matrix)
  store i32 %call1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

declare %struct._GimpLayerMask* @gimp_layer_get_mask(%struct._GimpLayer*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_get_type() #2

declare void @gimp_item_flip(%struct._GimpItem*, %struct._GimpContext*, i32, double, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

; Function Attrs: nounwind readnone uwtable
define internal %struct._GimpItemClass* @gimp_text_layer_parent_class() #3 {
entry:
  %klass = alloca i8*, align 8
  %0 = load %struct._GimpItemClass*, %struct._GimpItemClass** @gimp_text_layer_parent_class.parent_class, align 8
  %tobool = icmp ne %struct._GimpItemClass* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @gimp_text_layer_get_type() #4
  %call1 = call i8* @g_type_class_peek(i64 %call)
  store i8* %call1, i8** %klass, align 8
  %1 = load i8*, i8** %klass, align 8
  %call2 = call i8* @g_type_class_peek_parent(i8* %1)
  %2 = bitcast i8* %call2 to %struct._GimpItemClass*
  store %struct._GimpItemClass* %2, %struct._GimpItemClass** @gimp_text_layer_parent_class.parent_class, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct._GimpItemClass*, %struct._GimpItemClass** @gimp_text_layer_parent_class.parent_class, align 8
  ret %struct._GimpItemClass* %3
}

; Function Attrs: nounwind uwtable
define void @gimp_text_layer_rotate(%struct._GimpItem* %item, %struct._GimpContext* %context, i32 %rotate_type, double %center_x, double %center_y, i32 %clip_result) #0 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %rotate_type.addr = alloca i32, align 4
  %center_x.addr = alloca double, align 8
  %center_y.addr = alloca double, align 8
  %clip_result.addr = alloca i32, align 4
  %layer = alloca %struct._GimpTextLayer*, align 8
  %mask = alloca %struct._GimpLayerMask*, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %rotate_type, i32* %rotate_type.addr, align 4
  store double %center_x, double* %center_x.addr, align 8
  store double %center_y, double* %center_y.addr, align 8
  store i32 %clip_result, i32* %clip_result.addr, align 4
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_text_layer_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTextLayer*
  store %struct._GimpTextLayer* %2, %struct._GimpTextLayer** %layer, align 8
  %3 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %4 = load i32, i32* %rotate_type.addr, align 4
  %5 = load double, double* %center_x.addr, align 8
  %6 = load double, double* %center_y.addr, align 8
  %call2 = call i32 @gimp_text_layer_transform_rotate(%struct._GimpTextLayer* %3, i32 %4, double %5, double %6)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %8 = bitcast %struct._GimpTextLayer* %7 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_layer_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call3)
  %9 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpLayer*
  %call5 = call %struct._GimpLayerMask* @gimp_layer_get_mask(%struct._GimpLayer* %9)
  store %struct._GimpLayerMask* %call5, %struct._GimpLayerMask** %mask, align 8
  %10 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %tobool6 = icmp ne %struct._GimpLayerMask* %10, null
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %11 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %12 = bitcast %struct._GimpLayerMask* %11 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_item_get_type() #4
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call8)
  %13 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpItem*
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %15 = load i32, i32* %rotate_type.addr, align 4
  %16 = load double, double* %center_x.addr, align 8
  %17 = load double, double* %center_y.addr, align 8
  %18 = load i32, i32* %clip_result.addr, align 4
  call void @gimp_item_rotate(%struct._GimpItem* %13, %struct._GimpContext* %14, i32 %15, double %16, double %17, i32 %18)
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  br label %if.end.11

if.else:                                          ; preds = %entry
  %call10 = call %struct._GimpItemClass* @gimp_text_layer_parent_class() #4
  %rotate = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %call10, i32 0, i32 16
  %19 = load void (%struct._GimpItem*, %struct._GimpContext*, i32, double, double, i32)*, void (%struct._GimpItem*, %struct._GimpContext*, i32, double, double, i32)** %rotate, align 8
  %20 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %21 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %22 = load i32, i32* %rotate_type.addr, align 4
  %23 = load double, double* %center_x.addr, align 8
  %24 = load double, double* %center_y.addr, align 8
  %25 = load i32, i32* %clip_result.addr, align 4
  call void %19(%struct._GimpItem* %20, %struct._GimpContext* %21, i32 %22, double %23, double %24, i32 %25)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_text_layer_transform_rotate(%struct._GimpTextLayer* %layer, i32 %rotate_type, double %center_x, double %center_y) #0 {
entry:
  %retval = alloca i32, align 4
  %layer.addr = alloca %struct._GimpTextLayer*, align 8
  %rotate_type.addr = alloca i32, align 4
  %center_x.addr = alloca double, align 8
  %center_y.addr = alloca double, align 8
  %matrix = alloca %struct._GimpMatrix3, align 8
  store %struct._GimpTextLayer* %layer, %struct._GimpTextLayer** %layer.addr, align 8
  store i32 %rotate_type, i32* %rotate_type.addr, align 4
  store double %center_x, double* %center_x.addr, align 8
  store double %center_y, double* %center_y.addr, align 8
  %0 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %call = call i32 @gimp_text_layer_get_transformation(%struct._GimpTextLayer* %0, %struct._GimpMatrix3* %matrix)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %rotate_type.addr, align 4
  %2 = load double, double* %center_x.addr, align 8
  %3 = load double, double* %center_y.addr, align 8
  call void @gimp_transform_matrix_rotate(%struct._GimpMatrix3* %matrix, i32 %1, double %2, double %3)
  %4 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %call1 = call i32 @gimp_text_layer_set_transformation(%struct._GimpTextLayer* %4, %struct._GimpMatrix3* %matrix)
  store i32 %call1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

declare void @gimp_item_rotate(%struct._GimpItem*, %struct._GimpContext*, i32, double, double, i32) #1

; Function Attrs: nounwind uwtable
define void @gimp_text_layer_transform(%struct._GimpItem* %item, %struct._GimpContext* %context, %struct._GimpMatrix3* %matrix, i32 %direction, i32 %interpolation_type, i32 %supersample, i32 %recursion_level, i32 %clip_result, %struct._GimpProgress* %progress) #0 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %matrix.addr = alloca %struct._GimpMatrix3*, align 8
  %direction.addr = alloca i32, align 4
  %interpolation_type.addr = alloca i32, align 4
  %supersample.addr = alloca i32, align 4
  %recursion_level.addr = alloca i32, align 4
  %clip_result.addr = alloca i32, align 4
  %progress.addr = alloca %struct._GimpProgress*, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpMatrix3* %matrix, %struct._GimpMatrix3** %matrix.addr, align 8
  store i32 %direction, i32* %direction.addr, align 4
  store i32 %interpolation_type, i32* %interpolation_type.addr, align 4
  store i32 %supersample, i32* %supersample.addr, align 4
  store i32 %recursion_level, i32* %recursion_level.addr, align 4
  store i32 %clip_result, i32* %clip_result.addr, align 4
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_text_layer_get_transformation(%struct._GimpTextLayer* %layer, %struct._GimpMatrix3* %matrix) #0 {
entry:
  %retval = alloca i32, align 4
  %layer.addr = alloca %struct._GimpTextLayer*, align 8
  %matrix.addr = alloca %struct._GimpMatrix3*, align 8
  store %struct._GimpTextLayer* %layer, %struct._GimpTextLayer** %layer.addr, align 8
  store %struct._GimpMatrix3* %matrix, %struct._GimpMatrix3** %matrix.addr, align 8
  %0 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %text = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %0, i32 0, i32 1
  %1 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %tobool = icmp ne %struct._GimpText* %1, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %modified = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %2, i32 0, i32 4
  %3 = load i32, i32* %modified, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %text2 = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %4, i32 0, i32 1
  %5 = load %struct._GimpText*, %struct._GimpText** %text2, align 8
  %6 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  call void @gimp_text_get_transformation(%struct._GimpText* %5, %struct._GimpMatrix3* %6)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

declare void @gimp_transform_matrix_flip(%struct._GimpMatrix3*, i32, double) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_text_layer_set_transformation(%struct._GimpTextLayer* %layer, %struct._GimpMatrix3* %matrix) #0 {
entry:
  %retval = alloca i32, align 4
  %layer.addr = alloca %struct._GimpTextLayer*, align 8
  %matrix.addr = alloca %struct._GimpMatrix3*, align 8
  %trafo = alloca %struct._GimpMatrix2, align 8
  store %struct._GimpTextLayer* %layer, %struct._GimpTextLayer** %layer.addr, align 8
  store %struct._GimpMatrix3* %matrix, %struct._GimpMatrix3** %matrix.addr, align 8
  %0 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %call = call i32 @gimp_matrix3_is_affine(%struct._GimpMatrix3* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff, i32 0, i64 0
  %arrayidx1 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx, i32 0, i64 0
  %2 = load double, double* %arrayidx1, align 8
  %coeff2 = getelementptr inbounds %struct._GimpMatrix2, %struct._GimpMatrix2* %trafo, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %coeff2, i32 0, i64 0
  %arrayidx4 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx3, i32 0, i64 0
  store double %2, double* %arrayidx4, align 8
  %3 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff5 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %3, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff5, i32 0, i64 0
  %arrayidx7 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx6, i32 0, i64 1
  %4 = load double, double* %arrayidx7, align 8
  %coeff8 = getelementptr inbounds %struct._GimpMatrix2, %struct._GimpMatrix2* %trafo, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %coeff8, i32 0, i64 0
  %arrayidx10 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx9, i32 0, i64 1
  store double %4, double* %arrayidx10, align 8
  %5 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff11 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %5, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff11, i32 0, i64 1
  %arrayidx13 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx12, i32 0, i64 0
  %6 = load double, double* %arrayidx13, align 8
  %coeff14 = getelementptr inbounds %struct._GimpMatrix2, %struct._GimpMatrix2* %trafo, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %coeff14, i32 0, i64 1
  %arrayidx16 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx15, i32 0, i64 0
  store double %6, double* %arrayidx16, align 8
  %7 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff17 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %7, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff17, i32 0, i64 1
  %arrayidx19 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx18, i32 0, i64 1
  %8 = load double, double* %arrayidx19, align 8
  %coeff20 = getelementptr inbounds %struct._GimpMatrix2, %struct._GimpMatrix2* %trafo, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %coeff20, i32 0, i64 1
  %arrayidx22 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx21, i32 0, i64 1
  store double %8, double* %arrayidx22, align 8
  %9 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %10 = bitcast %struct._GimpTextLayer* %9 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_text_layer_get_type() #4
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call23)
  %11 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpTextLayer*
  %12 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff25 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %12, i32 0, i32 0
  %arrayidx26 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff25, i32 0, i64 0
  %arrayidx27 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx26, i32 0, i64 2
  %13 = load double, double* %arrayidx27, align 8
  %14 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff28 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %14, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff28, i32 0, i64 1
  %arrayidx30 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx29, i32 0, i64 2
  %15 = load double, double* %arrayidx30, align 8
  call void (%struct._GimpTextLayer*, i8*, i8*, ...) @gimp_text_layer_set(%struct._GimpTextLayer* %11, i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), %struct._GimpMatrix2* %trafo, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), double %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), double %15, i8* null)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

declare void @gimp_text_get_transformation(%struct._GimpText*, %struct._GimpMatrix3*) #1

declare i32 @gimp_matrix3_is_affine(%struct._GimpMatrix3*) #1

declare void @gimp_text_layer_set(%struct._GimpTextLayer*, i8*, i8*, ...) #1

declare void @gimp_transform_matrix_rotate(%struct._GimpMatrix3*, i32, double, double) #1

declare i8* @g_type_class_peek(i64) #1

declare i8* @g_type_class_peek_parent(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
