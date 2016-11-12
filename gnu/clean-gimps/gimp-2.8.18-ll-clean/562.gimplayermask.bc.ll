; ModuleID = './app/core/gimplayermask.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpLayerMaskClass = type { %struct._GimpChannelClass, void (%struct._GimpLayerMask*)*, void (%struct._GimpLayerMask*)*, void (%struct._GimpLayerMask*)* }
%struct._GimpChannelClass = type { %struct._GimpDrawableClass, void (%struct._GimpChannel*)*, i32 (%struct._GimpChannel*, %struct._BoundSeg**, %struct._BoundSeg**, i32*, i32*, i32, i32, i32, i32)*, i32 (%struct._GimpChannel*, i32*, i32*, i32*, i32*)*, i32 (%struct._GimpChannel*)*, void (%struct._GimpChannel*, double, double, i32)*, void (%struct._GimpChannel*, i32)*, void (%struct._GimpChannel*, i8*, i32)*, void (%struct._GimpChannel*, i32)*, void (%struct._GimpChannel*, i32)*, void (%struct._GimpChannel*, i32, i32, i32, i32, i32)*, void (%struct._GimpChannel*, i32, i32, i32)*, void (%struct._GimpChannel*, i32, i32, i32, i32)*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._GimpDrawableClass = type { %struct._GimpItemClass, void (%struct._GimpDrawable*, i32, i32, i32, i32)*, void (%struct._GimpDrawable*)*, i64 (%struct._GimpDrawable*, i32, i32)*, void (%struct._GimpDrawable*)*, void (%struct._GimpDrawable*, i32*)*, void (%struct._GimpDrawable*, %struct._GimpImage*, i32, i32)*, void (%struct._GimpDrawable*, %struct._PixelRegion*, i32, i8*, double, i32, %struct._TileManager*, %struct._PixelRegion*, i32, i32)*, void (%struct._GimpDrawable*, %struct._PixelRegion*, i32, i8*, double, %struct._PixelRegion*, i32, i32)*, void (%struct._GimpDrawable*, i32, i32, i32, i32, %struct._PixelRegion*, i32)*, %struct._TileManager* (%struct._GimpDrawable*)*, void (%struct._GimpDrawable*, i32, i8*, %struct._TileManager*, i32, i32, i32)*, void (%struct._GimpDrawable*, i8*, %struct._TileManager*, i32, i32, i32, i32, i32)*, void (%struct._GimpDrawable*, %struct._TileManager*, i32, i32, i32, i32, i32)* }
%struct._GimpItemClass = type { %struct._GimpViewableClass, void (%struct._GimpItem*)*, void (%struct._GimpItem*)*, void (%struct._GimpItem*)*, void (%struct._GimpItem*)*, void (%struct._GimpItem*)*, i32 (%struct._GimpItem*)*, i32 (%struct._GimpItem*)*, %struct._GimpItemTree* (%struct._GimpItem*)*, %struct._GimpItem* (%struct._GimpItem*, i64)*, void (%struct._GimpItem*, %struct._GimpImage*)*, i32 (%struct._GimpItem*, i8*, i8*, %struct._GError**)*, void (%struct._GimpItem*, i32, i32, i32)*, void (%struct._GimpItem*, i32, i32, i32, i32, i32, %struct._GimpProgress*)*, void (%struct._GimpItem*, %struct._GimpContext*, i32, i32, i32, i32)*, void (%struct._GimpItem*, %struct._GimpContext*, i32, double, i32)*, void (%struct._GimpItem*, %struct._GimpContext*, i32, double, double, i32)*, void (%struct._GimpItem*, %struct._GimpContext*, %struct._GimpMatrix3*, i32, i32, i32, i32, %struct._GimpProgress*)*, i32 (%struct._GimpItem*, %struct._GimpDrawable*, %struct._GimpStrokeOptions*, i32, %struct._GimpProgress*, %struct._GError**)*, void (%struct._GimpItem*, i32, i32, i32, double, double)*, %struct._GeglNode* (%struct._GimpItem*)*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._GimpViewableClass = type { %struct._GimpObjectClass, i8*, i8*, void (%struct._GimpViewable*)*, void (%struct._GimpViewable*)*, i32 (%struct._GimpViewable*, i32*, i32*)*, void (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, i32 (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, i8* (%struct._GimpViewable*, i8**)*, %struct._GimpContainer* (%struct._GimpViewable*)*, void (%struct._GimpViewable*, i32)*, i32 (%struct._GimpViewable*)* }
%struct._GimpObjectClass = type { %struct._GObjectClass, void (%struct._GimpObject*)*, void (%struct._GimpObject*)*, i64 (%struct._GimpObject*, i64*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
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
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._Gimp = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GimpProgress = type opaque
%struct._GimpMatrix3 = type { [3 x [3 x double]] }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpStrokeOptions = type opaque
%struct._GeglNode = type opaque
%struct._TileManager = type opaque
%struct._PixelRegion = type opaque
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpRGB = type { double, double, double, double }
%struct._BoundSeg = type opaque
%struct._GimpLayerMask = type { %struct._GimpChannel, %struct._GimpLayer*, i32, i32, i32 }
%struct._GimpLayer = type { %struct._GimpDrawable, double, i32, i32, %struct._GimpLayerMask*, %struct._GeglNode*, %struct.anon }
%struct.anon = type { %struct._GimpDrawable*, i32, %struct._BoundSeg*, i32 }
%struct._GimpUndo = type opaque
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }

@gimp_layer_mask_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"GimpLayerMask\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_layer_mask_new = private unnamed_addr constant [20 x i8] c"gimp_layer_mask_new\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"width > 0\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"height > 0\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"color != NULL\00", align 1
@__func__.gimp_layer_mask_set_layer = private unnamed_addr constant [26 x i8] c"gimp_layer_mask_set_layer\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"GIMP_IS_LAYER_MASK (layer_mask)\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"layer == NULL || GIMP_IS_LAYER (layer)\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"%s mask\00", align 1
@__func__.gimp_layer_mask_get_layer = private unnamed_addr constant [26 x i8] c"gimp_layer_mask_get_layer\00", align 1
@__func__.gimp_layer_mask_set_apply = private unnamed_addr constant [26 x i8] c"gimp_layer_mask_set_apply\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"undo-type\04Enable Layer Mask\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"undo-type\04Disable Layer Mask\00", align 1
@layer_mask_signals = internal global [3 x i32] zeroinitializer, align 4
@__func__.gimp_layer_mask_get_apply = private unnamed_addr constant [26 x i8] c"gimp_layer_mask_get_apply\00", align 1
@__func__.gimp_layer_mask_set_edit = private unnamed_addr constant [25 x i8] c"gimp_layer_mask_set_edit\00", align 1
@__func__.gimp_layer_mask_get_edit = private unnamed_addr constant [25 x i8] c"gimp_layer_mask_get_edit\00", align 1
@__func__.gimp_layer_mask_set_show = private unnamed_addr constant [25 x i8] c"gimp_layer_mask_set_show\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"undo-type\04Show Layer Mask\00", align 1
@__func__.gimp_layer_mask_get_show = private unnamed_addr constant [25 x i8] c"gimp_layer_mask_get_show\00", align 1
@gimp_layer_mask_parent_class = internal global i8* null, align 8
@GimpLayerMask_private_offset = internal global i32 0, align 4
@.str.12 = private unnamed_addr constant [14 x i8] c"apply-changed\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"edit-changed\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"show-changed\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"gimp-layer-mask\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"undo-type\04Move Layer Mask\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"undo-type\04Layer Mask to Selection\00", align 1
@__func__.gimp_layer_mask_duplicate = private unnamed_addr constant [26 x i8] c"gimp_layer_mask_duplicate\00", align 1
@.str.18 = private unnamed_addr constant [43 x i8] c"g_type_is_a (new_type, GIMP_TYPE_DRAWABLE)\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"Cannot rename layer masks.\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_layer_mask_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_layer_mask_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_layer_mask_get_type.g_define_type_id__volatile to i8*))
  %tobool2 = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ]
  %land.ext = zext i1 %3 to i32
  store i32 %land.ext, i32* %tmp
  %4 = load i32, i32* %tmp
  %tobool3 = icmp ne i32 %4, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  %call5 = call i64 @gimp_channel_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 864, void (i8*, i8*)* bitcast (void (i8*)* @gimp_layer_mask_class_intern_init to void (i8*, i8*)*), i32 184, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpLayerMask*)* @gimp_layer_mask_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_layer_mask_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_layer_mask_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_channel_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_mask_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_layer_mask_parent_class, align 8
  %1 = load i32, i32* @GimpLayerMask_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpLayerMask_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpLayerMaskClass*
  call void @gimp_layer_mask_class_init(%struct._GimpLayerMaskClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_mask_init(%struct._GimpLayerMask* %layer_mask) #3 {
entry:
  %layer_mask.addr = alloca %struct._GimpLayerMask*, align 8
  store %struct._GimpLayerMask* %layer_mask, %struct._GimpLayerMask** %layer_mask.addr, align 8
  %0 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %layer_mask.addr, align 8
  %layer = getelementptr inbounds %struct._GimpLayerMask, %struct._GimpLayerMask* %0, i32 0, i32 1
  store %struct._GimpLayer* null, %struct._GimpLayer** %layer, align 8
  %1 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %layer_mask.addr, align 8
  %apply_mask = getelementptr inbounds %struct._GimpLayerMask, %struct._GimpLayerMask* %1, i32 0, i32 2
  store i32 1, i32* %apply_mask, align 4
  %2 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %layer_mask.addr, align 8
  %edit_mask = getelementptr inbounds %struct._GimpLayerMask, %struct._GimpLayerMask* %2, i32 0, i32 3
  store i32 1, i32* %edit_mask, align 4
  %3 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %layer_mask.addr, align 8
  %show_mask = getelementptr inbounds %struct._GimpLayerMask, %struct._GimpLayerMask* %3, i32 0, i32 4
  store i32 0, i32* %show_mask, align 4
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpLayerMask* @gimp_layer_mask_new(%struct._GimpImage* %image, i32 %width, i32 %height, i8* %name, %struct._GimpRGB* %color) #3 {
entry:
  %retval = alloca %struct._GimpLayerMask*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %layer_mask = alloca %struct._GimpLayerMask*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_layer_mask_new, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpLayerMask* null, %struct._GimpLayerMask** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32, i32* %width.addr, align 4
  %cmp12 = icmp sgt i32 %13, 0
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_layer_mask_new, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpLayerMask* null, %struct._GimpLayerMask** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load i32, i32* %height.addr, align 4
  %cmp18 = icmp sgt i32 %14, 0
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_layer_mask_new, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GimpLayerMask* null, %struct._GimpLayerMask** %retval
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %do.body.23

do.body.23:                                       ; preds = %do.end.22
  %15 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %cmp24 = icmp ne %struct._GimpRGB* %15, null
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %do.body.23
  br label %if.end.27

if.else.26:                                       ; preds = %do.body.23
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_layer_mask_new, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GimpLayerMask* null, %struct._GimpLayerMask** %retval
  br label %return

if.end.27:                                        ; preds = %if.then.25
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  %call29 = call i64 @gimp_layer_mask_get_type() #6
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %17 = load i8*, i8** %name.addr, align 8
  %18 = load i32, i32* %width.addr, align 4
  %19 = load i32, i32* %height.addr, align 4
  %call30 = call %struct._GimpDrawable* @gimp_drawable_new(i64 %call29, %struct._GimpImage* %16, i8* %17, i32 0, i32 0, i32 %18, i32 %19, i32 2)
  %20 = bitcast %struct._GimpDrawable* %call30 to %struct._GTypeInstance*
  %call31 = call i64 @gimp_layer_mask_get_type() #6
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call31)
  %21 = bitcast %struct._GTypeInstance* %call32 to %struct._GimpLayerMask*
  store %struct._GimpLayerMask* %21, %struct._GimpLayerMask** %layer_mask, align 8
  %22 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %layer_mask, align 8
  %23 = bitcast %struct._GimpLayerMask* %22 to %struct._GTypeInstance*
  %call33 = call i64 @gimp_channel_get_type() #6
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call33)
  %24 = bitcast %struct._GTypeInstance* %call34 to %struct._GimpChannel*
  %25 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  call void @gimp_channel_set_color(%struct._GimpChannel* %24, %struct._GimpRGB* %25, i32 0)
  %26 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %layer_mask, align 8
  %27 = bitcast %struct._GimpLayerMask* %26 to %struct._GTypeInstance*
  %call35 = call i64 @gimp_channel_get_type() #6
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call35)
  %28 = bitcast %struct._GTypeInstance* %call36 to %struct._GimpChannel*
  call void @gimp_channel_set_show_masked(%struct._GimpChannel* %28, i32 1)
  %29 = load i32, i32* %width.addr, align 4
  %30 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %layer_mask, align 8
  %31 = bitcast %struct._GimpLayerMask* %30 to %struct._GTypeInstance*
  %call37 = call i64 @gimp_channel_get_type() #6
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call37)
  %32 = bitcast %struct._GTypeInstance* %call38 to %struct._GimpChannel*
  %x2 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %32, i32 0, i32 15
  store i32 %29, i32* %x2, align 4
  %33 = load i32, i32* %height.addr, align 4
  %34 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %layer_mask, align 8
  %35 = bitcast %struct._GimpLayerMask* %34 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_channel_get_type() #6
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call39)
  %36 = bitcast %struct._GTypeInstance* %call40 to %struct._GimpChannel*
  %y2 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %36, i32 0, i32 16
  store i32 %33, i32* %y2, align 4
  %37 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %layer_mask, align 8
  store %struct._GimpLayerMask* %37, %struct._GimpLayerMask** %retval
  br label %return

return:                                           ; preds = %do.end.28, %if.else.26, %if.else.20, %if.else.14, %if.else.9
  %38 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %retval
  ret %struct._GimpLayerMask* %38
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare %struct._GimpDrawable* @gimp_drawable_new(i64, %struct._GimpImage*, i8*, i32, i32, i32, i32, i32) #1

declare void @gimp_channel_set_color(%struct._GimpChannel*, %struct._GimpRGB*, i32) #1

declare void @gimp_channel_set_show_masked(%struct._GimpChannel*, i32) #1

; Function Attrs: nounwind uwtable
define void @gimp_layer_mask_set_layer(%struct._GimpLayerMask* %layer_mask, %struct._GimpLayer* %layer) #3 {
entry:
  %layer_mask.addr = alloca %struct._GimpLayerMask*, align 8
  %layer.addr = alloca %struct._GimpLayer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  %mask_name = alloca i8*, align 8
  %offset_x = alloca i32, align 4
  %offset_y = alloca i32, align 4
  store %struct._GimpLayerMask* %layer_mask, %struct._GimpLayerMask** %layer_mask.addr, align 8
  store %struct._GimpLayer* %layer, %struct._GimpLayer** %layer.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %layer_mask.addr, align 8
  %1 = bitcast %struct._GimpLayerMask* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_layer_mask_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_layer_mask_set_layer, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.55

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %cmp12 = icmp eq %struct._GimpLayer* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %15 = bitcast %struct._GimpLayer* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_layer_get_type() #6
  store i64 %call17, i64* %__t16, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %lor.lhs.false
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %tobool24 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.else.30

land.lhs.true.25:                                 ; preds = %if.else.22
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type27, align 8
  %22 = load i64, i64* %__t16, align 8
  %cmp28 = icmp eq i64 %21, %22
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %land.lhs.true.25
  store i32 1, i32* %__r19, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %land.lhs.true.25, %if.else.22
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %24 = load i64, i64* %__t16, align 8
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #7
  store i32 %call31, i32* %__r19, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.21
  %25 = load i32, i32* %__r19, align 4
  store i32 %25, i32* %tmp34
  %26 = load i32, i32* %tmp34
  %tobool35 = icmp ne i32 %26, 0
  br i1 %tobool35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.end.33, %do.body.11
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_layer_mask_set_layer, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.55

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %28 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %layer_mask.addr, align 8
  %layer40 = getelementptr inbounds %struct._GimpLayerMask, %struct._GimpLayerMask* %28, i32 0, i32 1
  store %struct._GimpLayer* %27, %struct._GimpLayer** %layer40, align 8
  %29 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %tobool41 = icmp ne %struct._GimpLayer* %29, null
  br i1 %tobool41, label %if.then.42, label %if.end.55

if.then.42:                                       ; preds = %do.end.39
  %30 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %31 = bitcast %struct._GimpLayer* %30 to %struct._GTypeInstance*
  %call46 = call i64 @gimp_item_get_type() #6
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call46)
  %32 = bitcast %struct._GTypeInstance* %call47 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %32, i32* %offset_x, i32* %offset_y)
  %33 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %layer_mask.addr, align 8
  %34 = bitcast %struct._GimpLayerMask* %33 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_item_get_type() #6
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call48)
  %35 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpItem*
  %36 = load i32, i32* %offset_x, align 4
  %37 = load i32, i32* %offset_y, align 4
  call void @gimp_item_set_offset(%struct._GimpItem* %35, i32 %36, i32 %37)
  %call50 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0)) #8
  %38 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %39 = bitcast %struct._GimpLayer* %38 to i8*
  %call51 = call i8* @gimp_object_get_name(i8* %39)
  %call52 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call50, i8* %call51)
  store i8* %call52, i8** %mask_name, align 8
  %40 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %layer_mask.addr, align 8
  %41 = bitcast %struct._GimpLayerMask* %40 to %struct._GTypeInstance*
  %call53 = call i64 @gimp_object_get_type() #6
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call53)
  %42 = bitcast %struct._GTypeInstance* %call54 to %struct._GimpObject*
  %43 = load i8*, i8** %mask_name, align 8
  call void @gimp_object_take_name(%struct._GimpObject* %42, i8* %43)
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.9, %if.else.37, %if.then.42, %do.end.39
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_get_type() #2

declare void @gimp_item_get_offset(%struct._GimpItem*, i32*, i32*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare void @gimp_item_set_offset(%struct._GimpItem*, i32, i32) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

declare i8* @gimp_object_get_name(i8*) #1

declare void @gimp_object_take_name(%struct._GimpObject*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

; Function Attrs: nounwind uwtable
define %struct._GimpLayer* @gimp_layer_mask_get_layer(%struct._GimpLayerMask* %layer_mask) #3 {
entry:
  %retval = alloca %struct._GimpLayer*, align 8
  %layer_mask.addr = alloca %struct._GimpLayerMask*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpLayerMask* %layer_mask, %struct._GimpLayerMask** %layer_mask.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %layer_mask.addr, align 8
  %1 = bitcast %struct._GimpLayerMask* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_layer_mask_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_layer_mask_get_layer, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %layer_mask.addr, align 8
  %layer = getelementptr inbounds %struct._GimpLayerMask, %struct._GimpLayerMask* %13, i32 0, i32 1
  %14 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  store %struct._GimpLayer* %14, %struct._GimpLayer** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load %struct._GimpLayer*, %struct._GimpLayer** %retval
  ret %struct._GimpLayer* %15
}

; Function Attrs: nounwind uwtable
define void @gimp_layer_mask_set_apply(%struct._GimpLayerMask* %layer_mask, i32 %apply, i32 %push_undo) #3 {
entry:
  %layer_mask.addr = alloca %struct._GimpLayerMask*, align 8
  %apply.addr = alloca i32, align 4
  %push_undo.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  store %struct._GimpLayerMask* %layer_mask, %struct._GimpLayerMask** %layer_mask.addr, align 8
  store i32 %apply, i32* %apply.addr, align 4
  store i32 %push_undo, i32* %push_undo.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %layer_mask.addr, align 8
  %1 = bitcast %struct._GimpLayerMask* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_layer_mask_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_layer_mask_set_apply, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.40

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %layer_mask.addr, align 8
  %apply_mask = getelementptr inbounds %struct._GimpLayerMask, %struct._GimpLayerMask* %13, i32 0, i32 2
  %14 = load i32, i32* %apply_mask, align 4
  %15 = load i32, i32* %apply.addr, align 4
  %cmp11 = icmp ne i32 %14, %15
  br i1 %cmp11, label %if.then.12, label %if.end.40

if.then.12:                                       ; preds = %do.end
  %16 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %layer_mask.addr, align 8
  %17 = bitcast %struct._GimpLayerMask* %16 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_item_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call14)
  %18 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpItem*
  %call16 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %18)
  store %struct._GimpImage* %call16, %struct._GimpImage** %image, align 8
  %19 = load i32, i32* %push_undo.addr, align 4
  %tobool17 = icmp ne i32 %19, 0
  br i1 %tobool17, label %if.then.18, label %if.end.23

if.then.18:                                       ; preds = %if.then.12
  %20 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %21 = load i32, i32* %apply.addr, align 4
  %tobool19 = icmp ne i32 %21, 0
  br i1 %tobool19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.18
  %call20 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i32 0, i32 0), i64 10)
  br label %cond.end

cond.false:                                       ; preds = %if.then.18
  %call21 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i32 0, i32 0), i64 10)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call20, %cond.true ], [ %call21, %cond.false ]
  %22 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %layer_mask.addr, align 8
  %call22 = call %struct._GimpUndo* @gimp_image_undo_push_layer_mask_apply(%struct._GimpImage* %20, i8* %cond, %struct._GimpLayerMask* %22)
  br label %if.end.23

if.end.23:                                        ; preds = %cond.end, %if.then.12
  %23 = load i32, i32* %apply.addr, align 4
  %tobool24 = icmp ne i32 %23, 0
  %cond25 = select i1 %tobool24, i32 1, i32 0
  %24 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %layer_mask.addr, align 8
  %apply_mask26 = getelementptr inbounds %struct._GimpLayerMask, %struct._GimpLayerMask* %24, i32 0, i32 2
  store i32 %cond25, i32* %apply_mask26, align 4
  %25 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %layer_mask.addr, align 8
  %layer = getelementptr inbounds %struct._GimpLayerMask, %struct._GimpLayerMask* %25, i32 0, i32 1
  %26 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool27 = icmp ne %struct._GimpLayer* %26, null
  br i1 %tobool27, label %if.then.28, label %if.end.39

if.then.28:                                       ; preds = %if.end.23
  %27 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %layer_mask.addr, align 8
  %layer30 = getelementptr inbounds %struct._GimpLayerMask, %struct._GimpLayerMask* %27, i32 0, i32 1
  %28 = load %struct._GimpLayer*, %struct._GimpLayer** %layer30, align 8
  %29 = bitcast %struct._GimpLayer* %28 to %struct._GTypeInstance*
  %call31 = call i64 @gimp_drawable_get_type() #6
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call31)
  %30 = bitcast %struct._GTypeInstance* %call32 to %struct._GimpDrawable*
  store %struct._GimpDrawable* %30, %struct._GimpDrawable** %drawable, align 8
  %31 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %32 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %33 = bitcast %struct._GimpDrawable* %32 to %struct._GTypeInstance*
  %call33 = call i64 @gimp_item_get_type() #6
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call33)
  %34 = bitcast %struct._GTypeInstance* %call34 to %struct._GimpItem*
  %call35 = call i32 @gimp_item_get_width(%struct._GimpItem* %34)
  %35 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %36 = bitcast %struct._GimpDrawable* %35 to %struct._GTypeInstance*
  %call36 = call i64 @gimp_item_get_type() #6
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call36)
  %37 = bitcast %struct._GTypeInstance* %call37 to %struct._GimpItem*
  %call38 = call i32 @gimp_item_get_height(%struct._GimpItem* %37)
  call void @gimp_drawable_update(%struct._GimpDrawable* %31, i32 0, i32 0, i32 %call35, i32 %call38)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.28, %if.end.23
  %38 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %layer_mask.addr, align 8
  %39 = bitcast %struct._GimpLayerMask* %38 to i8*
  %40 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @layer_mask_signals, i32 0, i64 0), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %39, i32 %40, i32 0)
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.9, %if.end.39, %do.end
  ret void
}

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #1

declare %struct._GimpUndo* @gimp_image_undo_push_layer_mask_apply(%struct._GimpImage*, i8*, %struct._GimpLayerMask*) #1

declare i8* @g_dpgettext(i8*, i8*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #2

declare void @gimp_drawable_update(%struct._GimpDrawable*, i32, i32, i32, i32) #1

declare i32 @gimp_item_get_width(%struct._GimpItem*) #1

declare i32 @gimp_item_get_height(%struct._GimpItem*) #1

declare void @g_signal_emit(i8*, i32, i32, ...) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_layer_mask_get_apply(%struct._GimpLayerMask* %layer_mask) #3 {
entry:
  %retval = alloca i32, align 4
  %layer_mask.addr = alloca %struct._GimpLayerMask*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpLayerMask* %layer_mask, %struct._GimpLayerMask** %layer_mask.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %layer_mask.addr, align 8
  %1 = bitcast %struct._GimpLayerMask* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_layer_mask_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_layer_mask_get_apply, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %layer_mask.addr, align 8
  %apply_mask = getelementptr inbounds %struct._GimpLayerMask, %struct._GimpLayerMask* %13, i32 0, i32 2
  %14 = load i32, i32* %apply_mask, align 4
  store i32 %14, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define void @gimp_layer_mask_set_edit(%struct._GimpLayerMask* %layer_mask, i32 %edit) #3 {
entry:
  %layer_mask.addr = alloca %struct._GimpLayerMask*, align 8
  %edit.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpLayerMask* %layer_mask, %struct._GimpLayerMask** %layer_mask.addr, align 8
  store i32 %edit, i32* %edit.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %layer_mask.addr, align 8
  %1 = bitcast %struct._GimpLayerMask* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_layer_mask_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_layer_mask_set_edit, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.15

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %layer_mask.addr, align 8
  %edit_mask = getelementptr inbounds %struct._GimpLayerMask, %struct._GimpLayerMask* %13, i32 0, i32 3
  %14 = load i32, i32* %edit_mask, align 4
  %15 = load i32, i32* %edit.addr, align 4
  %cmp11 = icmp ne i32 %14, %15
  br i1 %cmp11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %do.end
  %16 = load i32, i32* %edit.addr, align 4
  %tobool13 = icmp ne i32 %16, 0
  %cond = select i1 %tobool13, i32 1, i32 0
  %17 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %layer_mask.addr, align 8
  %edit_mask14 = getelementptr inbounds %struct._GimpLayerMask, %struct._GimpLayerMask* %17, i32 0, i32 3
  store i32 %cond, i32* %edit_mask14, align 4
  %18 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %layer_mask.addr, align 8
  %19 = bitcast %struct._GimpLayerMask* %18 to i8*
  %20 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @layer_mask_signals, i32 0, i64 1), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %19, i32 %20, i32 0)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.9, %if.then.12, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_layer_mask_get_edit(%struct._GimpLayerMask* %layer_mask) #3 {
entry:
  %retval = alloca i32, align 4
  %layer_mask.addr = alloca %struct._GimpLayerMask*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpLayerMask* %layer_mask, %struct._GimpLayerMask** %layer_mask.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %layer_mask.addr, align 8
  %1 = bitcast %struct._GimpLayerMask* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_layer_mask_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_layer_mask_get_edit, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %layer_mask.addr, align 8
  %edit_mask = getelementptr inbounds %struct._GimpLayerMask, %struct._GimpLayerMask* %13, i32 0, i32 3
  %14 = load i32, i32* %edit_mask, align 4
  store i32 %14, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define void @gimp_layer_mask_set_show(%struct._GimpLayerMask* %layer_mask, i32 %show, i32 %push_undo) #3 {
entry:
  %layer_mask.addr = alloca %struct._GimpLayerMask*, align 8
  %show.addr = alloca i32, align 4
  %push_undo.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  store %struct._GimpLayerMask* %layer_mask, %struct._GimpLayerMask** %layer_mask.addr, align 8
  store i32 %show, i32* %show.addr, align 4
  store i32 %push_undo, i32* %push_undo.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %layer_mask.addr, align 8
  %1 = bitcast %struct._GimpLayerMask* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_layer_mask_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_layer_mask_set_show, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.37

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %layer_mask.addr, align 8
  %show_mask = getelementptr inbounds %struct._GimpLayerMask, %struct._GimpLayerMask* %13, i32 0, i32 4
  %14 = load i32, i32* %show_mask, align 4
  %15 = load i32, i32* %show.addr, align 4
  %cmp11 = icmp ne i32 %14, %15
  br i1 %cmp11, label %if.then.12, label %if.end.37

if.then.12:                                       ; preds = %do.end
  %16 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %layer_mask.addr, align 8
  %17 = bitcast %struct._GimpLayerMask* %16 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_item_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call14)
  %18 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpItem*
  %call16 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %18)
  store %struct._GimpImage* %call16, %struct._GimpImage** %image, align 8
  %19 = load i32, i32* %push_undo.addr, align 4
  %tobool17 = icmp ne i32 %19, 0
  br i1 %tobool17, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %if.then.12
  %20 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call19 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i32 0, i32 0), i64 10)
  %21 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %layer_mask.addr, align 8
  %call20 = call %struct._GimpUndo* @gimp_image_undo_push_layer_mask_show(%struct._GimpImage* %20, i8* %call19, %struct._GimpLayerMask* %21)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.18, %if.then.12
  %22 = load i32, i32* %show.addr, align 4
  %tobool22 = icmp ne i32 %22, 0
  %cond = select i1 %tobool22, i32 1, i32 0
  %23 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %layer_mask.addr, align 8
  %show_mask23 = getelementptr inbounds %struct._GimpLayerMask, %struct._GimpLayerMask* %23, i32 0, i32 4
  store i32 %cond, i32* %show_mask23, align 4
  %24 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %layer_mask.addr, align 8
  %layer = getelementptr inbounds %struct._GimpLayerMask, %struct._GimpLayerMask* %24, i32 0, i32 1
  %25 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool24 = icmp ne %struct._GimpLayer* %25, null
  br i1 %tobool24, label %if.then.25, label %if.end.36

if.then.25:                                       ; preds = %if.end.21
  %26 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %layer_mask.addr, align 8
  %layer27 = getelementptr inbounds %struct._GimpLayerMask, %struct._GimpLayerMask* %26, i32 0, i32 1
  %27 = load %struct._GimpLayer*, %struct._GimpLayer** %layer27, align 8
  %28 = bitcast %struct._GimpLayer* %27 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_drawable_get_type() #6
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call28)
  %29 = bitcast %struct._GTypeInstance* %call29 to %struct._GimpDrawable*
  store %struct._GimpDrawable* %29, %struct._GimpDrawable** %drawable, align 8
  %30 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %31 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %32 = bitcast %struct._GimpDrawable* %31 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_item_get_type() #6
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call30)
  %33 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpItem*
  %call32 = call i32 @gimp_item_get_width(%struct._GimpItem* %33)
  %34 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %35 = bitcast %struct._GimpDrawable* %34 to %struct._GTypeInstance*
  %call33 = call i64 @gimp_item_get_type() #6
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call33)
  %36 = bitcast %struct._GTypeInstance* %call34 to %struct._GimpItem*
  %call35 = call i32 @gimp_item_get_height(%struct._GimpItem* %36)
  call void @gimp_drawable_update(%struct._GimpDrawable* %30, i32 0, i32 0, i32 %call32, i32 %call35)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.25, %if.end.21
  %37 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %layer_mask.addr, align 8
  %38 = bitcast %struct._GimpLayerMask* %37 to i8*
  %39 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @layer_mask_signals, i32 0, i64 2), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %38, i32 %39, i32 0)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.9, %if.end.36, %do.end
  ret void
}

declare %struct._GimpUndo* @gimp_image_undo_push_layer_mask_show(%struct._GimpImage*, i8*, %struct._GimpLayerMask*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_layer_mask_get_show(%struct._GimpLayerMask* %layer_mask) #3 {
entry:
  %retval = alloca i32, align 4
  %layer_mask.addr = alloca %struct._GimpLayerMask*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpLayerMask* %layer_mask, %struct._GimpLayerMask** %layer_mask.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %layer_mask.addr, align 8
  %1 = bitcast %struct._GimpLayerMask* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_layer_mask_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_layer_mask_get_show, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %layer_mask.addr, align 8
  %show_mask = getelementptr inbounds %struct._GimpLayerMask, %struct._GimpLayerMask* %13, i32 0, i32 4
  %14 = load i32, i32* %show_mask, align 4
  store i32 %14, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_mask_class_init(%struct._GimpLayerMaskClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpLayerMaskClass*, align 8
  %viewable_class = alloca %struct._GimpViewableClass*, align 8
  %item_class = alloca %struct._GimpItemClass*, align 8
  store %struct._GimpLayerMaskClass* %klass, %struct._GimpLayerMaskClass** %klass.addr, align 8
  %0 = load %struct._GimpLayerMaskClass*, %struct._GimpLayerMaskClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpLayerMaskClass* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_viewable_get_type() #6
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpViewableClass*
  store %struct._GimpViewableClass* %2, %struct._GimpViewableClass** %viewable_class, align 8
  %3 = load %struct._GimpLayerMaskClass*, %struct._GimpLayerMaskClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpLayerMaskClass* %3 to %struct._GTypeClass*
  %call2 = call i64 @gimp_item_get_type() #6
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GimpItemClass*
  store %struct._GimpItemClass* %5, %struct._GimpItemClass** %item_class, align 8
  %6 = load %struct._GimpLayerMaskClass*, %struct._GimpLayerMaskClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpLayerMaskClass* %6 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %call4 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i64 %8, i32 1, i32 840, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call4, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @layer_mask_signals, i32 0, i64 0), align 4
  %9 = load %struct._GimpLayerMaskClass*, %struct._GimpLayerMaskClass** %klass.addr, align 8
  %10 = bitcast %struct._GimpLayerMaskClass* %9 to %struct._GTypeClass*
  %g_type5 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %10, i32 0, i32 0
  %11 = load i64, i64* %g_type5, align 8
  %call6 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i64 %11, i32 1, i32 848, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call6, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @layer_mask_signals, i32 0, i64 1), align 4
  %12 = load %struct._GimpLayerMaskClass*, %struct._GimpLayerMaskClass** %klass.addr, align 8
  %13 = bitcast %struct._GimpLayerMaskClass* %12 to %struct._GTypeClass*
  %g_type7 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %13, i32 0, i32 0
  %14 = load i64, i64* %g_type7, align 8
  %call8 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i64 %14, i32 1, i32 856, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call8, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @layer_mask_signals, i32 0, i64 2), align 4
  %15 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %default_stock_id = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %15, i32 0, i32 1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0), i8** %default_stock_id, align 8
  %16 = load %struct._GimpLayerMaskClass*, %struct._GimpLayerMaskClass** %klass.addr, align 8
  %edit_changed = getelementptr inbounds %struct._GimpLayerMaskClass, %struct._GimpLayerMaskClass* %16, i32 0, i32 2
  store void (%struct._GimpLayerMask*)* null, void (%struct._GimpLayerMask*)** %edit_changed, align 8
  %17 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %is_attached = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %17, i32 0, i32 6
  store i32 (%struct._GimpItem*)* @gimp_layer_mask_is_attached, i32 (%struct._GimpItem*)** %is_attached, align 8
  %18 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %is_content_locked = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %18, i32 0, i32 7
  store i32 (%struct._GimpItem*)* @gimp_layer_mask_is_content_locked, i32 (%struct._GimpItem*)** %is_content_locked, align 8
  %19 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %get_tree = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %19, i32 0, i32 8
  store %struct._GimpItemTree* (%struct._GimpItem*)* @gimp_layer_mask_get_tree, %struct._GimpItemTree* (%struct._GimpItem*)** %get_tree, align 8
  %20 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %duplicate = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %20, i32 0, i32 9
  store %struct._GimpItem* (%struct._GimpItem*, i64)* @gimp_layer_mask_duplicate, %struct._GimpItem* (%struct._GimpItem*, i64)** %duplicate, align 8
  %21 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %rename = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %21, i32 0, i32 11
  store i32 (%struct._GimpItem*, i8*, i8*, %struct._GError**)* @gimp_layer_mask_rename, i32 (%struct._GimpItem*, i8*, i8*, %struct._GError**)** %rename, align 8
  %call9 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i32 0, i32 0), i64 10)
  %22 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %translate_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %22, i32 0, i32 23
  store i8* %call9, i8** %translate_desc, align 8
  %call10 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i32 0, i32 0), i64 10)
  %23 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %to_selection_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %23, i32 0, i32 29
  store i8* %call10, i8** %to_selection_desc, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @g_cclosure_marshal_VOID__VOID(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_layer_mask_is_attached(%struct._GimpItem* %item) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %mask = alloca %struct._GimpLayerMask*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_layer_mask_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpLayerMask*
  store %struct._GimpLayerMask* %2, %struct._GimpLayerMask** %mask, align 8
  %3 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %call2 = call %struct._GimpLayer* @gimp_layer_mask_get_layer(%struct._GimpLayerMask* %3)
  store %struct._GimpLayer* %call2, %struct._GimpLayer** %layer, align 8
  %4 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call3 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %4)
  %5 = bitcast %struct._GimpImage* %call3 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %5, %struct._GTypeInstance** %__inst, align 8
  %call4 = call i64 @gimp_image_get_type() #6
  store i64 %call4, i64* %__t, align 8
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %6, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %__r, align 4
  br label %if.end.10

if.else:                                          ; preds = %entry
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %7, i32 0, i32 0
  %8 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool5 = icmp ne %struct._GTypeClass* %8, null
  br i1 %tobool5, label %land.lhs.true, label %if.else.8

land.lhs.true:                                    ; preds = %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class6 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %9, i32 0, i32 0
  %10 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class6, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %10, i32 0, i32 0
  %11 = load i64, i64* %g_type, align 8
  %12 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %11, %12
  br i1 %cmp, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.8:                                        ; preds = %land.lhs.true, %if.else
  %13 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %14 = load i64, i64* %__t, align 8
  %call9 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %13, i64 %14) #7
  store i32 %call9, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.8, %if.then.7
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then
  %15 = load i32, i32* %__r, align 4
  store i32 %15, i32* %tmp
  %16 = load i32, i32* %tmp
  %tobool11 = icmp ne i32 %16, 0
  br i1 %tobool11, label %land.lhs.true.12, label %land.end

land.lhs.true.12:                                 ; preds = %if.end.10
  %17 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %18 = bitcast %struct._GimpLayer* %17 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %18, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_layer_get_type() #6
  store i64 %call17, i64* %__t16, align 8
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %19, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %land.lhs.true.12
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %land.lhs.true.12
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %tobool24 = icmp ne %struct._GTypeClass* %21, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.else.30

land.lhs.true.25:                                 ; preds = %if.else.22
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %23, i32 0, i32 0
  %24 = load i64, i64* %g_type27, align 8
  %25 = load i64, i64* %__t16, align 8
  %cmp28 = icmp eq i64 %24, %25
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %land.lhs.true.25
  store i32 1, i32* %__r19, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %land.lhs.true.25, %if.else.22
  %26 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %27 = load i64, i64* %__t16, align 8
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %26, i64 %27) #7
  store i32 %call31, i32* %__r19, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.21
  %28 = load i32, i32* %__r19, align 4
  store i32 %28, i32* %tmp34
  %29 = load i32, i32* %tmp34
  %tobool35 = icmp ne i32 %29, 0
  br i1 %tobool35, label %land.lhs.true.36, label %land.end

land.lhs.true.36:                                 ; preds = %if.end.33
  %30 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call37 = call %struct._GimpLayerMask* @gimp_layer_get_mask(%struct._GimpLayer* %30)
  %31 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %cmp38 = icmp eq %struct._GimpLayerMask* %call37, %31
  br i1 %cmp38, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.36
  %32 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %33 = bitcast %struct._GimpLayer* %32 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_item_get_type() #6
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call39)
  %34 = bitcast %struct._GTypeInstance* %call40 to %struct._GimpItem*
  %call41 = call i32 @gimp_item_is_attached(%struct._GimpItem* %34)
  %tobool42 = icmp ne i32 %call41, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.36, %if.end.33, %if.end.10
  %35 = phi i1 [ false, %land.lhs.true.36 ], [ false, %if.end.33 ], [ false, %if.end.10 ], [ %tobool42, %land.rhs ]
  %land.ext = zext i1 %35 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_layer_mask_is_content_locked(%struct._GimpItem* %item) #3 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca %struct._GimpItem*, align 8
  %mask = alloca %struct._GimpLayerMask*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_layer_mask_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpLayerMask*
  store %struct._GimpLayerMask* %2, %struct._GimpLayerMask** %mask, align 8
  %3 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %call2 = call %struct._GimpLayer* @gimp_layer_mask_get_layer(%struct._GimpLayerMask* %3)
  store %struct._GimpLayer* %call2, %struct._GimpLayer** %layer, align 8
  %4 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool = icmp ne %struct._GimpLayer* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %6 = bitcast %struct._GimpLayer* %5 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_item_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call3)
  %7 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpItem*
  %call5 = call i32 @gimp_item_is_content_locked(%struct._GimpItem* %7)
  store i32 %call5, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpItemTree* @gimp_layer_mask_get_tree(%struct._GimpItem* %item) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  ret %struct._GimpItemTree* null
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpItem* @gimp_layer_mask_duplicate(%struct._GimpItem* %item, i64 %new_type) #3 {
entry:
  %retval = alloca %struct._GimpItem*, align 8
  %item.addr = alloca %struct._GimpItem*, align 8
  %new_type.addr = alloca i64, align 8
  %new_item = alloca %struct._GimpItem*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %layer_mask = alloca %struct._GimpLayerMask*, align 8
  %new_layer_mask = alloca %struct._GimpLayerMask*, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store i64 %new_type, i64* %new_type.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, i64* %new_type.addr, align 8
  %call = call i64 @gimp_drawable_get_type() #6
  %call1 = call i32 @g_type_is_a(i64 %0, i64 %call)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_layer_mask_duplicate, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.18, i32 0, i32 0))
  store %struct._GimpItem* null, %struct._GimpItem** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i8*, i8** @gimp_layer_mask_parent_class, align 8
  %2 = bitcast i8* %1 to %struct._GTypeClass*
  %call2 = call i64 @gimp_item_get_type() #6
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %2, i64 %call2)
  %3 = bitcast %struct._GTypeClass* %call3 to %struct._GimpItemClass*
  %duplicate = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %3, i32 0, i32 9
  %4 = load %struct._GimpItem* (%struct._GimpItem*, i64)*, %struct._GimpItem* (%struct._GimpItem*, i64)** %duplicate, align 8
  %5 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %6 = load i64, i64* %new_type.addr, align 8
  %call4 = call %struct._GimpItem* %4(%struct._GimpItem* %5, i64 %6)
  store %struct._GimpItem* %call4, %struct._GimpItem** %new_item, align 8
  %7 = load %struct._GimpItem*, %struct._GimpItem** %new_item, align 8
  %8 = bitcast %struct._GimpItem* %7 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %8, %struct._GTypeInstance** %__inst, align 8
  %call5 = call i64 @gimp_layer_mask_get_type() #6
  store i64 %call5, i64* %__t, align 8
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool6 = icmp ne %struct._GTypeInstance* %9, null
  br i1 %tobool6, label %if.else.8, label %if.then.7

if.then.7:                                        ; preds = %do.end
  store i32 0, i32* %__r, align 4
  br label %if.end.15

if.else.8:                                        ; preds = %do.end
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %10, i32 0, i32 0
  %11 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool9 = icmp ne %struct._GTypeClass* %11, null
  br i1 %tobool9, label %land.lhs.true, label %if.else.12

land.lhs.true:                                    ; preds = %if.else.8
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class10 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %12, i32 0, i32 0
  %13 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class10, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %13, i32 0, i32 0
  %14 = load i64, i64* %g_type, align 8
  %15 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %14, %15
  br i1 %cmp, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.14

if.else.12:                                       ; preds = %land.lhs.true, %if.else.8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %17 = load i64, i64* %__t, align 8
  %call13 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %16, i64 %17) #7
  store i32 %call13, i32* %__r, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.12, %if.then.11
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.then.7
  %18 = load i32, i32* %__r, align 4
  store i32 %18, i32* %tmp
  %19 = load i32, i32* %tmp
  %tobool16 = icmp ne i32 %19, 0
  br i1 %tobool16, label %if.then.17, label %if.end.27

if.then.17:                                       ; preds = %if.end.15
  %20 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %21 = bitcast %struct._GimpItem* %20 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_layer_mask_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call19)
  %22 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpLayerMask*
  store %struct._GimpLayerMask* %22, %struct._GimpLayerMask** %layer_mask, align 8
  %23 = load %struct._GimpItem*, %struct._GimpItem** %new_item, align 8
  %24 = bitcast %struct._GimpItem* %23 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_layer_mask_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call22)
  %25 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpLayerMask*
  store %struct._GimpLayerMask* %25, %struct._GimpLayerMask** %new_layer_mask, align 8
  %26 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %layer_mask, align 8
  %apply_mask = getelementptr inbounds %struct._GimpLayerMask, %struct._GimpLayerMask* %26, i32 0, i32 2
  %27 = load i32, i32* %apply_mask, align 4
  %28 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %new_layer_mask, align 8
  %apply_mask24 = getelementptr inbounds %struct._GimpLayerMask, %struct._GimpLayerMask* %28, i32 0, i32 2
  store i32 %27, i32* %apply_mask24, align 4
  %29 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %layer_mask, align 8
  %edit_mask = getelementptr inbounds %struct._GimpLayerMask, %struct._GimpLayerMask* %29, i32 0, i32 3
  %30 = load i32, i32* %edit_mask, align 4
  %31 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %new_layer_mask, align 8
  %edit_mask25 = getelementptr inbounds %struct._GimpLayerMask, %struct._GimpLayerMask* %31, i32 0, i32 3
  store i32 %30, i32* %edit_mask25, align 4
  %32 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %layer_mask, align 8
  %show_mask = getelementptr inbounds %struct._GimpLayerMask, %struct._GimpLayerMask* %32, i32 0, i32 4
  %33 = load i32, i32* %show_mask, align 4
  %34 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %new_layer_mask, align 8
  %show_mask26 = getelementptr inbounds %struct._GimpLayerMask, %struct._GimpLayerMask* %34, i32 0, i32 4
  store i32 %33, i32* %show_mask26, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.17, %if.end.15
  %35 = load %struct._GimpItem*, %struct._GimpItem** %new_item, align 8
  store %struct._GimpItem* %35, %struct._GimpItem** %retval
  br label %return

return:                                           ; preds = %if.end.27, %if.else
  %36 = load %struct._GimpItem*, %struct._GimpItem** %retval
  ret %struct._GimpItem* %36
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_layer_mask_rename(%struct._GimpItem* %item, i8* %new_name, i8* %undo_desc, %struct._GError** %error) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %new_name.addr = alloca i8*, align 8
  %undo_desc.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store i8* %new_name, i8** %new_name.addr, align 8
  store i8* %undo_desc, i8** %undo_desc.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call = call i32 @gimp_error_quark() #6
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i32 0, i32 0)) #8
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %0, i32 %call, i32 0, i8* %call1)
  ret i32 0
}

declare %struct._GimpLayerMask* @gimp_layer_get_mask(%struct._GimpLayer*) #1

declare i32 @gimp_item_is_attached(%struct._GimpItem*) #1

declare i32 @gimp_item_is_content_locked(%struct._GimpItem*) #1

declare i32 @g_type_is_a(i64, i64) #1

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_error_quark() #2

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
