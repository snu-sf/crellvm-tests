; ModuleID = './app/core/gimpimage-quick-mask.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type opaque
%struct._GimpImagePrivate = type { i32, %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure*, i8*, i8*, i32, i32, double, double, i32, i32, i8*, i32, %struct._GimpPalette*, i32, i32, i32, i32, i32, i32, i32, %struct._GimpProjection*, %struct._GeglNode*, %struct._GList*, %struct._GimpGrid*, %struct._GList*, %struct._GimpItemTree*, %struct._GimpItemTree*, %struct._GimpItemTree*, %struct._GSList*, i32, i32, i32, %struct._GimpLayer*, %struct._GimpChannel*, %struct._GimpParasiteList*, [4 x i32], [4 x i32], i32, i32, %struct._GimpRGB, %struct._GimpUndoStack*, %struct._GimpUndoStack*, i32, i32, %struct._TempBuf*, %struct._GimpImageFlushAccumulator }
%struct._GimpPlugInProcedure = type opaque
%struct._GimpPalette = type opaque
%struct._GimpProjection = type opaque
%struct._GeglNode = type opaque
%struct._GimpGrid = type opaque
%struct._GimpItemTree = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GimpLayer = type { %struct._GimpDrawable, double, i32, i32, %struct._GimpLayerMask*, %struct._GeglNode*, %struct.anon }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpLayerMask = type opaque
%struct.anon = type { %struct._GimpDrawable*, i32, %struct._BoundSeg*, i32 }
%struct._BoundSeg = type opaque
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpUndoStack = type opaque
%struct._TempBuf = type opaque
%struct._GimpImageFlushAccumulator = type { i32, i32, i32, i32 }
%struct._GError = type { i32, i32, i8* }
%struct._GimpSelection = type { %struct._GimpChannel, i32 }

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_image_set_quick_mask_state = private unnamed_addr constant [32 x i8] c"gimp_image_set_quick_mask_state\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"undo-type\04Enable Quick Mask\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Qmask\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"undo-type\04Disable Quick Mask\00", align 1
@__func__.gimp_image_get_quick_mask_state = private unnamed_addr constant [32 x i8] c"gimp_image_get_quick_mask_state\00", align 1
@__func__.gimp_image_set_quick_mask_color = private unnamed_addr constant [32 x i8] c"gimp_image_set_quick_mask_color\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"color != NULL\00", align 1
@__func__.gimp_image_get_quick_mask_color = private unnamed_addr constant [32 x i8] c"gimp_image_get_quick_mask_color\00", align 1
@__func__.gimp_image_get_quick_mask = private unnamed_addr constant [26 x i8] c"gimp_image_get_quick_mask\00", align 1
@__func__.gimp_image_quick_mask_invert = private unnamed_addr constant [29 x i8] c"gimp_image_quick_mask_invert\00", align 1
@__func__.gimp_image_get_quick_mask_inverted = private unnamed_addr constant [35 x i8] c"gimp_image_get_quick_mask_inverted\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_image_set_quick_mask_state(%struct._GimpImage* %image, i32 %active) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %active.addr = alloca i32, align 4
  %private = alloca %struct._GimpImagePrivate*, align 8
  %selection = alloca %struct._GimpChannel*, align 8
  %mask = alloca %struct._GimpChannel*, align 8
  %channel_was_active = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %floating_sel = alloca %struct._GimpLayer*, align 8
  %floating_sel72 = alloca %struct._GimpLayer*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %active, i32* %active.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_image_set_quick_mask_state, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %active.addr, align 4
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call11 = call i32 @gimp_image_get_quick_mask_state(%struct._GimpImage* %14)
  %cmp12 = icmp eq i32 %13, %call11
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %do.end
  br label %return

if.end.14:                                        ; preds = %do.end
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %16 = bitcast %struct._GimpImage* %15 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_image_get_type() #5
  %call16 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %16, i64 %call15)
  %17 = bitcast i8* %call16 to %struct._GimpImagePrivate*
  store %struct._GimpImagePrivate* %17, %struct._GimpImagePrivate** %private, align 8
  %18 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %quick_mask_state = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %18, i32 0, i32 39
  %19 = load i32, i32* %quick_mask_state, align 4
  %tobool17 = icmp ne i32 %19, 0
  br i1 %tobool17, label %if.then.18, label %if.else.21

if.then.18:                                       ; preds = %if.end.14
  %20 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %quick_mask_state19 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %20, i32 0, i32 39
  %21 = load i32, i32* %quick_mask_state19, align 4
  %and = and i32 %21, 2
  %cmp20 = icmp ne i32 %and, 0
  %conv = zext i1 %cmp20 to i32
  store i32 %conv, i32* %channel_was_active, align 4
  br label %if.end.25

if.else.21:                                       ; preds = %if.end.14
  %22 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call22 = call %struct._GimpChannel* @gimp_image_get_active_channel(%struct._GimpImage* %22)
  %cmp23 = icmp ne %struct._GimpChannel* %call22, null
  %conv24 = zext i1 %cmp23 to i32
  store i32 %conv24, i32* %channel_was_active, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.21, %if.then.18
  %23 = load i32, i32* %active.addr, align 4
  %tobool26 = icmp ne i32 %23, 0
  br i1 %tobool26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.25
  %24 = load i32, i32* %channel_was_active, align 4
  %tobool27 = icmp ne i32 %24, 0
  %cond = select i1 %tobool27, i32 2, i32 0
  %or = or i32 1, %cond
  br label %cond.end

cond.false:                                       ; preds = %if.end.25
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond28 = phi i32 [ %or, %cond.true ], [ 0, %cond.false ]
  %25 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %quick_mask_state29 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %25, i32 0, i32 39
  store i32 %cond28, i32* %quick_mask_state29, align 4
  %26 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call30 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %26)
  store %struct._GimpChannel* %call30, %struct._GimpChannel** %selection, align 8
  %27 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call31 = call %struct._GimpChannel* @gimp_image_get_quick_mask(%struct._GimpImage* %27)
  store %struct._GimpChannel* %call31, %struct._GimpChannel** %mask, align 8
  %28 = load i32, i32* %active.addr, align 4
  %tobool32 = icmp ne i32 %28, 0
  br i1 %tobool32, label %if.then.33, label %if.else.68

if.then.33:                                       ; preds = %cond.end
  %29 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  %tobool34 = icmp ne %struct._GimpChannel* %29, null
  br i1 %tobool34, label %if.end.67, label %if.then.35

if.then.35:                                       ; preds = %if.then.33
  %30 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call36 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0), i64 10)
  %call37 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %30, i32 10, i8* %call36)
  %31 = load %struct._GimpChannel*, %struct._GimpChannel** %selection, align 8
  %call38 = call i32 @gimp_channel_is_empty(%struct._GimpChannel* %31)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then.40, label %if.else.50

if.then.40:                                       ; preds = %if.then.35
  %32 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call42 = call %struct._GimpLayer* @gimp_image_get_floating_selection(%struct._GimpImage* %32)
  store %struct._GimpLayer* %call42, %struct._GimpLayer** %floating_sel, align 8
  %33 = load %struct._GimpLayer*, %struct._GimpLayer** %floating_sel, align 8
  %tobool43 = icmp ne %struct._GimpLayer* %33, null
  br i1 %tobool43, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.then.40
  %34 = load %struct._GimpLayer*, %struct._GimpLayer** %floating_sel, align 8
  %call45 = call i32 @floating_sel_to_layer(%struct._GimpLayer* %34, %struct._GError** null)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %if.then.40
  %35 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %36 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call47 = call i32 @gimp_image_get_width(%struct._GimpImage* %36)
  %37 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call48 = call i32 @gimp_image_get_height(%struct._GimpImage* %37)
  %38 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %quick_mask_color = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %38, i32 0, i32 41
  %call49 = call %struct._GimpChannel* @gimp_channel_new(%struct._GimpImage* %35, i32 %call47, i32 %call48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), %struct._GimpRGB* %quick_mask_color)
  store %struct._GimpChannel* %call49, %struct._GimpChannel** %mask, align 8
  %39 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  call void @gimp_channel_clear(%struct._GimpChannel* %39, i8* null, i32 0)
  br label %if.end.61

if.else.50:                                       ; preds = %if.then.35
  %40 = load %struct._GimpChannel*, %struct._GimpChannel** %selection, align 8
  %41 = bitcast %struct._GimpChannel* %40 to %struct._GTypeInstance*
  %call51 = call i64 @gimp_item_get_type() #5
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call51)
  %42 = bitcast %struct._GTypeInstance* %call52 to %struct._GimpItem*
  %call53 = call i64 @gimp_channel_get_type() #5
  %call54 = call %struct._GimpItem* @gimp_item_duplicate(%struct._GimpItem* %42, i64 %call53)
  %43 = bitcast %struct._GimpItem* %call54 to %struct._GTypeInstance*
  %call55 = call i64 @gimp_channel_get_type() #5
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call55)
  %44 = bitcast %struct._GTypeInstance* %call56 to %struct._GimpChannel*
  store %struct._GimpChannel* %44, %struct._GimpChannel** %mask, align 8
  %45 = load %struct._GimpChannel*, %struct._GimpChannel** %selection, align 8
  call void @gimp_channel_clear(%struct._GimpChannel* %45, i8* null, i32 1)
  %46 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  %47 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %quick_mask_color57 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %47, i32 0, i32 41
  call void @gimp_channel_set_color(%struct._GimpChannel* %46, %struct._GimpRGB* %quick_mask_color57, i32 0)
  %48 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  %49 = bitcast %struct._GimpChannel* %48 to %struct._GTypeInstance*
  %call58 = call i64 @gimp_item_get_type() #5
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call58)
  %50 = bitcast %struct._GTypeInstance* %call59 to %struct._GimpItem*
  %call60 = call i32 @gimp_item_rename(%struct._GimpItem* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), %struct._GError** null)
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.50, %if.end.46
  %51 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %quick_mask_inverted = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %51, i32 0, i32 40
  %52 = load i32, i32* %quick_mask_inverted, align 4
  %tobool62 = icmp ne i32 %52, 0
  br i1 %tobool62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.end.61
  %53 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  call void @gimp_channel_invert(%struct._GimpChannel* %53, i32 0)
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.63, %if.end.61
  %54 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %55 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  %call65 = call i32 @gimp_image_add_channel(%struct._GimpImage* %54, %struct._GimpChannel* %55, %struct._GimpChannel* null, i32 0, i32 1)
  %56 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call66 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %56)
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.64, %if.then.33
  br label %if.end.98

if.else.68:                                       ; preds = %cond.end
  %57 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  %tobool69 = icmp ne %struct._GimpChannel* %57, null
  br i1 %tobool69, label %if.then.70, label %if.end.97

if.then.70:                                       ; preds = %if.else.68
  %58 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call73 = call %struct._GimpLayer* @gimp_image_get_floating_selection(%struct._GimpImage* %58)
  store %struct._GimpLayer* %call73, %struct._GimpLayer** %floating_sel72, align 8
  %59 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call74 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0), i64 10)
  %call75 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %59, i32 10, i8* %call74)
  %60 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %quick_mask_inverted76 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %60, i32 0, i32 40
  %61 = load i32, i32* %quick_mask_inverted76, align 4
  %tobool77 = icmp ne i32 %61, 0
  br i1 %tobool77, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.then.70
  %62 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  call void @gimp_channel_invert(%struct._GimpChannel* %62, i32 1)
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.78, %if.then.70
  %63 = load %struct._GimpLayer*, %struct._GimpLayer** %floating_sel72, align 8
  %tobool80 = icmp ne %struct._GimpLayer* %63, null
  br i1 %tobool80, label %land.lhs.true.81, label %if.end.88

land.lhs.true.81:                                 ; preds = %if.end.79
  %64 = load %struct._GimpLayer*, %struct._GimpLayer** %floating_sel72, align 8
  %call82 = call %struct._GimpDrawable* @gimp_layer_get_floating_sel_drawable(%struct._GimpLayer* %64)
  %65 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  %66 = bitcast %struct._GimpChannel* %65 to %struct._GTypeInstance*
  %call83 = call i64 @gimp_drawable_get_type() #5
  %call84 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call83)
  %67 = bitcast %struct._GTypeInstance* %call84 to %struct._GimpDrawable*
  %cmp85 = icmp eq %struct._GimpDrawable* %call82, %67
  br i1 %cmp85, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %land.lhs.true.81
  %68 = load %struct._GimpLayer*, %struct._GimpLayer** %floating_sel72, align 8
  call void @floating_sel_anchor(%struct._GimpLayer* %68)
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.87, %land.lhs.true.81, %if.end.79
  %69 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call89 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %69)
  %70 = bitcast %struct._GimpChannel* %call89 to %struct._GTypeInstance*
  %call90 = call i64 @gimp_selection_get_type() #5
  %call91 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %70, i64 %call90)
  %71 = bitcast %struct._GTypeInstance* %call91 to %struct._GimpSelection*
  %72 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  call void @gimp_selection_load(%struct._GimpSelection* %71, %struct._GimpChannel* %72)
  %73 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %74 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  call void @gimp_image_remove_channel(%struct._GimpImage* %73, %struct._GimpChannel* %74, i32 1, %struct._GimpChannel* null)
  %75 = load i32, i32* %channel_was_active, align 4
  %tobool92 = icmp ne i32 %75, 0
  br i1 %tobool92, label %if.end.95, label %if.then.93

if.then.93:                                       ; preds = %if.end.88
  %76 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call94 = call %struct._GimpChannel* @gimp_image_unset_active_channel(%struct._GimpImage* %76)
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.93, %if.end.88
  %77 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call96 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %77)
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.95, %if.else.68
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %if.end.67
  %78 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_image_quick_mask_changed(%struct._GimpImage* %78)
  br label %return

return:                                           ; preds = %if.end.98, %if.then.13, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind uwtable
define i32 @gimp_image_get_quick_mask_state(%struct._GimpImage* %image) #0 {
entry:
  %retval = alloca i32, align 4
  %image.addr = alloca %struct._GimpImage*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_image_get_quick_mask_state, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %14 = bitcast %struct._GimpImage* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_image_get_type() #5
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpImagePrivate*
  %quick_mask_state = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %15, i32 0, i32 39
  %16 = load i32, i32* %quick_mask_state, align 4
  store i32 %16, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load i32, i32* %retval
  ret i32 %17
}

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #3

declare %struct._GimpChannel* @gimp_image_get_active_channel(%struct._GimpImage*) #3

declare %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage*) #3

; Function Attrs: nounwind uwtable
define %struct._GimpChannel* @gimp_image_get_quick_mask(%struct._GimpImage* %image) #0 {
entry:
  %retval = alloca %struct._GimpChannel*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_image_get_quick_mask, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpChannel* null, %struct._GimpChannel** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call11 = call %struct._GimpChannel* @gimp_image_get_channel_by_name(%struct._GimpImage* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpChannel* %call11, %struct._GimpChannel** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %14 = load %struct._GimpChannel*, %struct._GimpChannel** %retval
  ret %struct._GimpChannel* %14
}

declare i32 @gimp_image_undo_group_start(%struct._GimpImage*, i32, i8*) #3

declare i8* @g_dpgettext(i8*, i8*, i64) #3

declare i32 @gimp_channel_is_empty(%struct._GimpChannel*) #3

declare %struct._GimpLayer* @gimp_image_get_floating_selection(%struct._GimpImage*) #3

declare i32 @floating_sel_to_layer(%struct._GimpLayer*, %struct._GError**) #3

declare %struct._GimpChannel* @gimp_channel_new(%struct._GimpImage*, i32, i32, i8*, %struct._GimpRGB*) #3

declare i32 @gimp_image_get_width(%struct._GimpImage*) #3

declare i32 @gimp_image_get_height(%struct._GimpImage*) #3

declare void @gimp_channel_clear(%struct._GimpChannel*, i8*, i32) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

declare %struct._GimpItem* @gimp_item_duplicate(%struct._GimpItem*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_channel_get_type() #1

declare void @gimp_channel_set_color(%struct._GimpChannel*, %struct._GimpRGB*, i32) #3

declare i32 @gimp_item_rename(%struct._GimpItem*, i8*, %struct._GError**) #3

declare void @gimp_channel_invert(%struct._GimpChannel*, i32) #3

declare i32 @gimp_image_add_channel(%struct._GimpImage*, %struct._GimpChannel*, %struct._GimpChannel*, i32, i32) #3

declare i32 @gimp_image_undo_group_end(%struct._GimpImage*) #3

declare %struct._GimpDrawable* @gimp_layer_get_floating_sel_drawable(%struct._GimpLayer*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #1

declare void @floating_sel_anchor(%struct._GimpLayer*) #3

declare void @gimp_selection_load(%struct._GimpSelection*, %struct._GimpChannel*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_selection_get_type() #1

declare void @gimp_image_remove_channel(%struct._GimpImage*, %struct._GimpChannel*, i32, %struct._GimpChannel*) #3

declare %struct._GimpChannel* @gimp_image_unset_active_channel(%struct._GimpImage*) #3

declare void @gimp_image_quick_mask_changed(%struct._GimpImage*) #3

; Function Attrs: nounwind uwtable
define void @gimp_image_set_quick_mask_color(%struct._GimpImage* %image, %struct._GimpRGB* %color) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %quick_mask = alloca %struct._GimpChannel*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_image_set_quick_mask_color, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.22

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %cmp12 = icmp ne %struct._GimpRGB* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_image_set_quick_mask_color, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.22

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %15 = bitcast %struct._GimpImage* %14 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_image_get_type() #5
  %call18 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %15, i64 %call17)
  %16 = bitcast i8* %call18 to %struct._GimpImagePrivate*
  %quick_mask_color = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %16, i32 0, i32 41
  %17 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %18 = bitcast %struct._GimpRGB* %quick_mask_color to i8*
  %19 = bitcast %struct._GimpRGB* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 32, i32 8, i1 false)
  %20 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call19 = call %struct._GimpChannel* @gimp_image_get_quick_mask(%struct._GimpImage* %20)
  store %struct._GimpChannel* %call19, %struct._GimpChannel** %quick_mask, align 8
  %21 = load %struct._GimpChannel*, %struct._GimpChannel** %quick_mask, align 8
  %tobool20 = icmp ne %struct._GimpChannel* %21, null
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %do.end.16
  %22 = load %struct._GimpChannel*, %struct._GimpChannel** %quick_mask, align 8
  %23 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  call void @gimp_channel_set_color(%struct._GimpChannel* %22, %struct._GimpRGB* %23, i32 1)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.9, %if.else.14, %if.then.21, %do.end.16
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define void @gimp_image_get_quick_mask_color(%struct._GimpImage* %image, %struct._GimpRGB* %color) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_image_get_quick_mask_color, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %cmp12 = icmp ne %struct._GimpRGB* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_image_get_quick_mask_color, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %16 = bitcast %struct._GimpImage* %15 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_image_get_type() #5
  %call18 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %16, i64 %call17)
  %17 = bitcast i8* %call18 to %struct._GimpImagePrivate*
  %quick_mask_color = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %17, i32 0, i32 41
  %18 = bitcast %struct._GimpRGB* %14 to i8*
  %19 = bitcast %struct._GimpRGB* %quick_mask_color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 32, i32 8, i1 false)
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  ret void
}

declare %struct._GimpChannel* @gimp_image_get_channel_by_name(%struct._GimpImage*, i8*) #3

; Function Attrs: nounwind uwtable
define void @gimp_image_quick_mask_invert(%struct._GimpImage* %image) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %private = alloca %struct._GimpImagePrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %quick_mask = alloca %struct._GimpChannel*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_image_quick_mask_invert, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %14 = bitcast %struct._GimpImage* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_image_get_type() #5
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpImagePrivate*
  store %struct._GimpImagePrivate* %15, %struct._GimpImagePrivate** %private, align 8
  %16 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %quick_mask_state = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %16, i32 0, i32 39
  %17 = load i32, i32* %quick_mask_state, align 4
  %tobool13 = icmp ne i32 %17, 0
  br i1 %tobool13, label %if.then.14, label %if.end.20

if.then.14:                                       ; preds = %do.end
  %18 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call16 = call %struct._GimpChannel* @gimp_image_get_quick_mask(%struct._GimpImage* %18)
  store %struct._GimpChannel* %call16, %struct._GimpChannel** %quick_mask, align 8
  %19 = load %struct._GimpChannel*, %struct._GimpChannel** %quick_mask, align 8
  %tobool17 = icmp ne %struct._GimpChannel* %19, null
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.then.14
  %20 = load %struct._GimpChannel*, %struct._GimpChannel** %quick_mask, align 8
  call void @gimp_channel_invert(%struct._GimpChannel* %20, i32 1)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.then.14
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %do.end
  %21 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %quick_mask_inverted = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %21, i32 0, i32 40
  %22 = load i32, i32* %quick_mask_inverted, align 4
  %tobool21 = icmp ne i32 %22, 0
  %lnot = xor i1 %tobool21, true
  %lnot.ext = zext i1 %lnot to i32
  %23 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %quick_mask_inverted22 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %23, i32 0, i32 40
  store i32 %lnot.ext, i32* %quick_mask_inverted22, align 4
  br label %return

return:                                           ; preds = %if.end.20, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_image_get_quick_mask_inverted(%struct._GimpImage* %image) #0 {
entry:
  %retval = alloca i32, align 4
  %image.addr = alloca %struct._GimpImage*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_image_get_quick_mask_inverted, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %14 = bitcast %struct._GimpImage* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_image_get_type() #5
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpImagePrivate*
  %quick_mask_inverted = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %15, i32 0, i32 40
  %16 = load i32, i32* %quick_mask_inverted, align 4
  store i32 %16, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load i32, i32* %retval
  ret i32 %17
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
