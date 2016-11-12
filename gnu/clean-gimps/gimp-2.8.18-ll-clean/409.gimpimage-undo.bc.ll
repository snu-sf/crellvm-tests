; ModuleID = './app/core/gimpimage-undo.bc'
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
%struct._GimpCoreConfig = type { %struct._GimpBaseConfig, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct._GimpTemplate*, %struct._GimpGrid*, i32, i64, i32, i32, i8*, i32, i32, i32, i64, %struct._GimpColorConfig*, i32, i32, %struct._GimpRGB, i32 }
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GimpGrid = type opaque
%struct._GimpColorConfig = type opaque
%struct._GimpRGB = type { double, double, double, double }
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
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type opaque
%struct._GimpImagePrivate = type { i32, %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure*, i8*, i8*, i32, i32, double, double, i32, i32, i8*, i32, %struct._GimpPalette*, i32, i32, i32, i32, i32, i32, i32, %struct._GimpProjection*, %struct._GeglNode*, %struct._GList*, %struct._GimpGrid*, %struct._GList*, %struct._GimpItemTree*, %struct._GimpItemTree*, %struct._GimpItemTree*, %struct._GSList*, i32, i32, i32, %struct._GimpLayer*, %struct._GimpChannel*, %struct._GimpParasiteList*, [4 x i32], [4 x i32], i32, i32, %struct._GimpRGB, %struct._GimpUndoStack*, %struct._GimpUndoStack*, i32, i32, %struct._TempBuf*, %struct._GimpImageFlushAccumulator }
%struct._GimpPlugInProcedure = type opaque
%struct._GimpPalette = type opaque
%struct._GimpProjection = type opaque
%struct._GeglNode = type opaque
%struct._GimpItemTree = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GimpLayer = type opaque
%struct._GimpChannel = type opaque
%struct._GimpUndoStack = type { %struct._GimpUndo, %struct._GimpContainer* }
%struct._GimpUndo = type { %struct._GimpViewable, %struct._GimpImage*, i32, i32, i32, %struct._TempBuf*, i32 }
%struct._TempBuf = type opaque
%struct._GimpImageFlushAccumulator = type { i32, i32, i32, i32 }
%struct._GimpUndoAccumulator = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpList = type { %struct._GimpContainer, %struct._GList*, i32, i32 (i8*, i8*)*, i32 }
%struct._GParameter = type { i8*, %struct._GValue }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_image_undo_is_enabled = private unnamed_addr constant [27 x i8] c"gimp_image_undo_is_enabled\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@__func__.gimp_image_undo_enable = private unnamed_addr constant [23 x i8] c"gimp_image_undo_enable\00", align 1
@__func__.gimp_image_undo_disable = private unnamed_addr constant [24 x i8] c"gimp_image_undo_disable\00", align 1
@__func__.gimp_image_undo_freeze = private unnamed_addr constant [23 x i8] c"gimp_image_undo_freeze\00", align 1
@__func__.gimp_image_undo_thaw = private unnamed_addr constant [21 x i8] c"gimp_image_undo_thaw\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"private->undo_freeze_count > 0\00", align 1
@__func__.gimp_image_undo = private unnamed_addr constant [16 x i8] c"gimp_image_undo\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"private->pushing_undo_group == GIMP_UNDO_GROUP_NONE\00", align 1
@__func__.gimp_image_redo = private unnamed_addr constant [16 x i8] c"gimp_image_redo\00", align 1
@__func__.gimp_image_strong_undo = private unnamed_addr constant [23 x i8] c"gimp_image_strong_undo\00", align 1
@__func__.gimp_image_strong_redo = private unnamed_addr constant [23 x i8] c"gimp_image_strong_redo\00", align 1
@__func__.gimp_image_get_undo_stack = private unnamed_addr constant [26 x i8] c"gimp_image_get_undo_stack\00", align 1
@__func__.gimp_image_get_redo_stack = private unnamed_addr constant [26 x i8] c"gimp_image_get_redo_stack\00", align 1
@__func__.gimp_image_undo_free = private unnamed_addr constant [21 x i8] c"gimp_image_undo_free\00", align 1
@__func__.gimp_image_get_undo_group_count = private unnamed_addr constant [32 x i8] c"gimp_image_get_undo_group_count\00", align 1
@__func__.gimp_image_undo_group_start = private unnamed_addr constant [28 x i8] c"gimp_image_undo_group_start\00", align 1
@.str.4 = private unnamed_addr constant [71 x i8] c"undo_type > GIMP_UNDO_GROUP_FIRST && undo_type <= GIMP_UNDO_GROUP_LAST\00", align 1
@__func__.gimp_image_undo_group_end = private unnamed_addr constant [26 x i8] c"gimp_image_undo_group_end\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"private->group_count > 0\00", align 1
@__func__.gimp_image_undo_push = private unnamed_addr constant [21 x i8] c"gimp_image_undo_push\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"g_type_is_a (object_type, GIMP_TYPE_UNDO)\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"undo_type > GIMP_UNDO_GROUP_LAST\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"undo-type\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"dirty-mask\00", align 1
@__func__.gimp_image_undo_can_compress = private unnamed_addr constant [29 x i8] c"gimp_image_undo_can_compress\00", align 1
@__func__.gimp_image_undo_get_fadeable = private unnamed_addr constant [29 x i8] c"gimp_image_undo_get_fadeable\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gimp_image_undo_is_enabled(%struct._GimpImage* %image) #0 {
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_image_undo_is_enabled, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
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
  %undo_freeze_count = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %15, i32 0, i32 18
  %16 = load i32, i32* %undo_freeze_count, align 4
  %cmp13 = icmp eq i32 %16, 0
  %conv = zext i1 %cmp13 to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind uwtable
define i32 @gimp_image_undo_enable(%struct._GimpImage* %image) #0 {
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_image_undo_enable, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_image_undo_free(%struct._GimpImage* %13)
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call11 = call i32 @gimp_image_undo_thaw(%struct._GimpImage* %14)
  store i32 %call11, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define void @gimp_image_undo_free(%struct._GimpImage* %image) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %private = alloca %struct._GimpImagePrivate*, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_image_undo_free, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.20

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %14 = bitcast %struct._GimpImage* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_image_get_type() #5
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpImagePrivate*
  store %struct._GimpImagePrivate* %15, %struct._GimpImagePrivate** %private, align 8
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_image_undo_event(%struct._GimpImage* %16, i32 5, %struct._GimpUndo* null)
  %17 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %undo_stack = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %17, i32 0, i32 42
  %18 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %undo_stack, align 8
  %19 = bitcast %struct._GimpUndoStack* %18 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_undo_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call13)
  %20 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpUndo*
  call void @gimp_undo_free(%struct._GimpUndo* %20, i32 0)
  %21 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %redo_stack = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %21, i32 0, i32 43
  %22 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %redo_stack, align 8
  %23 = bitcast %struct._GimpUndoStack* %22 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_undo_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call15)
  %24 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpUndo*
  call void @gimp_undo_free(%struct._GimpUndo* %24, i32 1)
  %25 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %dirty = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %25, i32 0, i32 15
  %26 = load i32, i32* %dirty, align 4
  %cmp17 = icmp slt i32 %26, 0
  br i1 %cmp17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %do.end
  %27 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %dirty19 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %27, i32 0, i32 15
  store i32 100000, i32* %dirty19, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.9, %if.then.18, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_image_undo_thaw(%struct._GimpImage* %image) #0 {
entry:
  %retval = alloca i32, align 4
  %image.addr = alloca %struct._GimpImage*, align 8
  %private = alloca %struct._GimpImagePrivate*, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_image_undo_thaw, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
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
  store %struct._GimpImagePrivate* %15, %struct._GimpImagePrivate** %private, align 8
  br label %do.body.13

do.body.13:                                       ; preds = %do.end
  %16 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %undo_freeze_count = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %16, i32 0, i32 18
  %17 = load i32, i32* %undo_freeze_count, align 4
  %cmp14 = icmp sgt i32 %17, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.13
  br label %if.end.17

if.else.16:                                       ; preds = %do.body.13
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_image_undo_thaw, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %18 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %undo_freeze_count19 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %18, i32 0, i32 18
  %19 = load i32, i32* %undo_freeze_count19, align 4
  %dec = add nsw i32 %19, -1
  store i32 %dec, i32* %undo_freeze_count19, align 4
  %20 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %undo_freeze_count20 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %20, i32 0, i32 18
  %21 = load i32, i32* %undo_freeze_count20, align 4
  %cmp21 = icmp eq i32 %21, 0
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %do.end.18
  %22 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_image_undo_event(%struct._GimpImage* %22, i32 7, %struct._GimpUndo* null)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %do.end.18
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.else.16, %if.else.9
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define i32 @gimp_image_undo_disable(%struct._GimpImage* %image) #0 {
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_image_undo_disable, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call11 = call i32 @gimp_image_undo_freeze(%struct._GimpImage* %13)
  store i32 %call11, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define i32 @gimp_image_undo_freeze(%struct._GimpImage* %image) #0 {
entry:
  %retval = alloca i32, align 4
  %image.addr = alloca %struct._GimpImage*, align 8
  %private = alloca %struct._GimpImagePrivate*, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_image_undo_freeze, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
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
  store %struct._GimpImagePrivate* %15, %struct._GimpImagePrivate** %private, align 8
  %16 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %undo_freeze_count = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %16, i32 0, i32 18
  %17 = load i32, i32* %undo_freeze_count, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %undo_freeze_count, align 4
  %18 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %undo_freeze_count13 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %18, i32 0, i32 18
  %19 = load i32, i32* %undo_freeze_count13, align 4
  %cmp14 = icmp eq i32 %19, 1
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %do.end
  %20 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_image_undo_event(%struct._GimpImage* %20, i32 6, %struct._GimpUndo* null)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %do.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.else.9
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare void @gimp_image_undo_event(%struct._GimpImage*, i32, %struct._GimpUndo*) #3

; Function Attrs: nounwind uwtable
define i32 @gimp_image_undo(%struct._GimpImage* %image) #0 {
entry:
  %retval = alloca i32, align 4
  %image.addr = alloca %struct._GimpImage*, align 8
  %private = alloca %struct._GimpImagePrivate*, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_image_undo, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
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
  store %struct._GimpImagePrivate* %15, %struct._GimpImagePrivate** %private, align 8
  br label %do.body.13

do.body.13:                                       ; preds = %do.end
  %16 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %pushing_undo_group = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %16, i32 0, i32 45
  %17 = load i32, i32* %pushing_undo_group, align 4
  %cmp14 = icmp eq i32 %17, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.13
  br label %if.end.17

if.else.16:                                       ; preds = %do.body.13
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_image_undo, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %18 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %19 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %undo_stack = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %19, i32 0, i32 42
  %20 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %undo_stack, align 8
  %21 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %redo_stack = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %21, i32 0, i32 43
  %22 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %redo_stack, align 8
  call void @gimp_image_undo_pop_stack(%struct._GimpImage* %18, %struct._GimpUndoStack* %20, %struct._GimpUndoStack* %22, i32 0)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %do.end.18, %if.else.16, %if.else.9
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal void @gimp_image_undo_pop_stack(%struct._GimpImage* %image, %struct._GimpUndoStack* %undo_stack, %struct._GimpUndoStack* %redo_stack, i32 %undo_mode) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %undo_stack.addr = alloca %struct._GimpUndoStack*, align 8
  %redo_stack.addr = alloca %struct._GimpUndoStack*, align 8
  %undo_mode.addr = alloca i32, align 4
  %undo = alloca %struct._GimpUndo*, align 8
  %accum = alloca %struct._GimpUndoAccumulator, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpUndoStack* %undo_stack, %struct._GimpUndoStack** %undo_stack.addr, align 8
  store %struct._GimpUndoStack* %redo_stack, %struct._GimpUndoStack** %redo_stack.addr, align 8
  store i32 %undo_mode, i32* %undo_mode.addr, align 4
  %0 = bitcast %struct._GimpUndoAccumulator* %accum to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 32, i32 4, i1 false)
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %2 = bitcast %struct._GimpImage* %1 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 80)
  %3 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  call void @g_object_freeze_notify(%struct._GObject* %3)
  %4 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %undo_stack.addr, align 8
  %5 = load i32, i32* %undo_mode.addr, align 4
  %call1 = call %struct._GimpUndo* @gimp_undo_stack_pop_undo(%struct._GimpUndoStack* %4, i32 %5, %struct._GimpUndoAccumulator* %accum)
  store %struct._GimpUndo* %call1, %struct._GimpUndo** %undo, align 8
  %6 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %tobool = icmp ne %struct._GimpUndo* %6, null
  br i1 %tobool, label %if.then, label %if.end.31

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %8 = bitcast %struct._GimpUndo* %7 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %8, %struct._GTypeInstance** %__inst, align 8
  %call2 = call i64 @gimp_undo_stack_get_type() #5
  store i64 %call2, i64* %__t, align 8
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool3 = icmp ne %struct._GTypeInstance* %9, null
  br i1 %tobool3, label %if.else, label %if.then.4

if.then.4:                                        ; preds = %if.then
  store i32 0, i32* %__r, align 4
  br label %if.end.10

if.else:                                          ; preds = %if.then
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %10, i32 0, i32 0
  %11 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool5 = icmp ne %struct._GTypeClass* %11, null
  br i1 %tobool5, label %land.lhs.true, label %if.else.8

land.lhs.true:                                    ; preds = %if.else
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class6 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %12, i32 0, i32 0
  %13 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class6, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %13, i32 0, i32 0
  %14 = load i64, i64* %g_type, align 8
  %15 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %14, %15
  br i1 %cmp, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.8:                                        ; preds = %land.lhs.true, %if.else
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %17 = load i64, i64* %__t, align 8
  %call9 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %16, i64 %17) #6
  store i32 %call9, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.8, %if.then.7
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then.4
  %18 = load i32, i32* %__r, align 4
  store i32 %18, i32* %tmp
  %19 = load i32, i32* %tmp
  %tobool11 = icmp ne i32 %19, 0
  br i1 %tobool11, label %if.then.12, label %if.end.17

if.then.12:                                       ; preds = %if.end.10
  %20 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %21 = bitcast %struct._GimpUndo* %20 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_undo_stack_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call13)
  %22 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpUndoStack*
  %undos = getelementptr inbounds %struct._GimpUndoStack, %struct._GimpUndoStack* %22, i32 0, i32 1
  %23 = load %struct._GimpContainer*, %struct._GimpContainer** %undos, align 8
  %24 = bitcast %struct._GimpContainer* %23 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_list_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call15)
  %25 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpList*
  call void @gimp_list_reverse(%struct._GimpList* %25)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.12, %if.end.10
  %26 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %redo_stack.addr, align 8
  %27 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  call void @gimp_undo_stack_push_undo(%struct._GimpUndoStack* %26, %struct._GimpUndo* %27)
  %mode_changed = getelementptr inbounds %struct._GimpUndoAccumulator, %struct._GimpUndoAccumulator* %accum, i32 0, i32 0
  %28 = load i32, i32* %mode_changed, align 4
  %tobool18 = icmp ne i32 %28, 0
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.17
  %29 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_image_mode_changed(%struct._GimpImage* %29)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.end.17
  %size_changed = getelementptr inbounds %struct._GimpUndoAccumulator, %struct._GimpUndoAccumulator* %accum, i32 0, i32 1
  %30 = load i32, i32* %size_changed, align 4
  %tobool21 = icmp ne i32 %30, 0
  br i1 %tobool21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.20
  %31 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %previous_origin_x = getelementptr inbounds %struct._GimpUndoAccumulator, %struct._GimpUndoAccumulator* %accum, i32 0, i32 2
  %32 = load i32, i32* %previous_origin_x, align 4
  %previous_origin_y = getelementptr inbounds %struct._GimpUndoAccumulator, %struct._GimpUndoAccumulator* %accum, i32 0, i32 3
  %33 = load i32, i32* %previous_origin_y, align 4
  %previous_width = getelementptr inbounds %struct._GimpUndoAccumulator, %struct._GimpUndoAccumulator* %accum, i32 0, i32 4
  %34 = load i32, i32* %previous_width, align 4
  %previous_height = getelementptr inbounds %struct._GimpUndoAccumulator, %struct._GimpUndoAccumulator* %accum, i32 0, i32 5
  %35 = load i32, i32* %previous_height, align 4
  call void @gimp_image_size_changed_detailed(%struct._GimpImage* %31, i32 %32, i32 %33, i32 %34, i32 %35)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.end.20
  %resolution_changed = getelementptr inbounds %struct._GimpUndoAccumulator, %struct._GimpUndoAccumulator* %accum, i32 0, i32 6
  %36 = load i32, i32* %resolution_changed, align 4
  %tobool24 = icmp ne i32 %36, 0
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.23
  %37 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_image_resolution_changed(%struct._GimpImage* %37)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.end.23
  %unit_changed = getelementptr inbounds %struct._GimpUndoAccumulator, %struct._GimpUndoAccumulator* %accum, i32 0, i32 7
  %38 = load i32, i32* %unit_changed, align 4
  %tobool27 = icmp ne i32 %38, 0
  br i1 %tobool27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.26
  %39 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_image_unit_changed(%struct._GimpImage* %39)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.end.26
  %40 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %41 = load i32, i32* %undo_mode.addr, align 4
  %cmp30 = icmp eq i32 %41, 0
  %cond = select i1 %cmp30, i32 3, i32 4
  %42 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  call void @gimp_image_undo_event(%struct._GimpImage* %40, i32 %cond, %struct._GimpUndo* %42)
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.29, %entry
  %43 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %44 = bitcast %struct._GimpImage* %43 to %struct._GTypeInstance*
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 80)
  %45 = bitcast %struct._GTypeInstance* %call32 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %45)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_image_redo(%struct._GimpImage* %image) #0 {
entry:
  %retval = alloca i32, align 4
  %image.addr = alloca %struct._GimpImage*, align 8
  %private = alloca %struct._GimpImagePrivate*, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_image_redo, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
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
  store %struct._GimpImagePrivate* %15, %struct._GimpImagePrivate** %private, align 8
  br label %do.body.13

do.body.13:                                       ; preds = %do.end
  %16 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %pushing_undo_group = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %16, i32 0, i32 45
  %17 = load i32, i32* %pushing_undo_group, align 4
  %cmp14 = icmp eq i32 %17, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.13
  br label %if.end.17

if.else.16:                                       ; preds = %do.body.13
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_image_redo, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %18 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %19 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %redo_stack = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %19, i32 0, i32 43
  %20 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %redo_stack, align 8
  %21 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %undo_stack = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %21, i32 0, i32 42
  %22 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %undo_stack, align 8
  call void @gimp_image_undo_pop_stack(%struct._GimpImage* %18, %struct._GimpUndoStack* %20, %struct._GimpUndoStack* %22, i32 1)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %do.end.18, %if.else.16, %if.else.9
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define i32 @gimp_image_strong_undo(%struct._GimpImage* %image) #0 {
entry:
  %retval = alloca i32, align 4
  %image.addr = alloca %struct._GimpImage*, align 8
  %private = alloca %struct._GimpImagePrivate*, align 8
  %undo = alloca %struct._GimpUndo*, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_image_strong_undo, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
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
  store %struct._GimpImagePrivate* %15, %struct._GimpImagePrivate** %private, align 8
  br label %do.body.13

do.body.13:                                       ; preds = %do.end
  %16 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %pushing_undo_group = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %16, i32 0, i32 45
  %17 = load i32, i32* %pushing_undo_group, align 4
  %cmp14 = icmp eq i32 %17, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.13
  br label %if.end.17

if.else.16:                                       ; preds = %do.body.13
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_image_strong_undo, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %18 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %undo_stack = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %18, i32 0, i32 42
  %19 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %undo_stack, align 8
  %call19 = call %struct._GimpUndo* @gimp_undo_stack_peek(%struct._GimpUndoStack* %19)
  store %struct._GimpUndo* %call19, %struct._GimpUndo** %undo, align 8
  %20 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call20 = call i32 @gimp_image_undo(%struct._GimpImage* %20)
  br label %while.cond

while.cond:                                       ; preds = %if.end.29, %do.end.18
  %21 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %call21 = call i32 @gimp_undo_is_weak(%struct._GimpUndo* %21)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %22 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %undo_stack23 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %22, i32 0, i32 42
  %23 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %undo_stack23, align 8
  %call24 = call %struct._GimpUndo* @gimp_undo_stack_peek(%struct._GimpUndoStack* %23)
  store %struct._GimpUndo* %call24, %struct._GimpUndo** %undo, align 8
  %24 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %call25 = call i32 @gimp_undo_is_weak(%struct._GimpUndo* %24)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %while.body
  %25 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call28 = call i32 @gimp_image_undo(%struct._GimpImage* %25)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.else.16, %if.else.9
  %26 = load i32, i32* %retval
  ret i32 %26
}

declare %struct._GimpUndo* @gimp_undo_stack_peek(%struct._GimpUndoStack*) #3

declare i32 @gimp_undo_is_weak(%struct._GimpUndo*) #3

; Function Attrs: nounwind uwtable
define i32 @gimp_image_strong_redo(%struct._GimpImage* %image) #0 {
entry:
  %retval = alloca i32, align 4
  %image.addr = alloca %struct._GimpImage*, align 8
  %private = alloca %struct._GimpImagePrivate*, align 8
  %undo = alloca %struct._GimpUndo*, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_image_strong_redo, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
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
  store %struct._GimpImagePrivate* %15, %struct._GimpImagePrivate** %private, align 8
  br label %do.body.13

do.body.13:                                       ; preds = %do.end
  %16 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %pushing_undo_group = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %16, i32 0, i32 45
  %17 = load i32, i32* %pushing_undo_group, align 4
  %cmp14 = icmp eq i32 %17, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.13
  br label %if.end.17

if.else.16:                                       ; preds = %do.body.13
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_image_strong_redo, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %18 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %redo_stack = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %18, i32 0, i32 43
  %19 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %redo_stack, align 8
  %call19 = call %struct._GimpUndo* @gimp_undo_stack_peek(%struct._GimpUndoStack* %19)
  store %struct._GimpUndo* %call19, %struct._GimpUndo** %undo, align 8
  %20 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call20 = call i32 @gimp_image_redo(%struct._GimpImage* %20)
  br label %while.cond

while.cond:                                       ; preds = %if.end.29, %do.end.18
  %21 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %call21 = call i32 @gimp_undo_is_weak(%struct._GimpUndo* %21)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %22 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %redo_stack23 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %22, i32 0, i32 43
  %23 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %redo_stack23, align 8
  %call24 = call %struct._GimpUndo* @gimp_undo_stack_peek(%struct._GimpUndoStack* %23)
  store %struct._GimpUndo* %call24, %struct._GimpUndo** %undo, align 8
  %24 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %call25 = call i32 @gimp_undo_is_weak(%struct._GimpUndo* %24)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %while.body
  %25 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call28 = call i32 @gimp_image_redo(%struct._GimpImage* %25)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.else.16, %if.else.9
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define %struct._GimpUndoStack* @gimp_image_get_undo_stack(%struct._GimpImage* %image) #0 {
entry:
  %retval = alloca %struct._GimpUndoStack*, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_image_get_undo_stack, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpUndoStack* null, %struct._GimpUndoStack** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %14 = bitcast %struct._GimpImage* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_image_get_type() #5
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpImagePrivate*
  %undo_stack = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %15, i32 0, i32 42
  %16 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %undo_stack, align 8
  store %struct._GimpUndoStack* %16, %struct._GimpUndoStack** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %retval
  ret %struct._GimpUndoStack* %17
}

; Function Attrs: nounwind uwtable
define %struct._GimpUndoStack* @gimp_image_get_redo_stack(%struct._GimpImage* %image) #0 {
entry:
  %retval = alloca %struct._GimpUndoStack*, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_image_get_redo_stack, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpUndoStack* null, %struct._GimpUndoStack** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %14 = bitcast %struct._GimpImage* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_image_get_type() #5
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpImagePrivate*
  %redo_stack = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %15, i32 0, i32 43
  %16 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %redo_stack, align 8
  store %struct._GimpUndoStack* %16, %struct._GimpUndoStack** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %retval
  ret %struct._GimpUndoStack* %17
}

declare void @gimp_undo_free(%struct._GimpUndo*, i32) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_undo_get_type() #1

; Function Attrs: nounwind uwtable
define i32 @gimp_image_get_undo_group_count(%struct._GimpImage* %image) #0 {
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_image_get_undo_group_count, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
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
  %group_count = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %15, i32 0, i32 44
  %16 = load i32, i32* %group_count, align 4
  store i32 %16, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define i32 @gimp_image_undo_group_start(%struct._GimpImage* %image, i32 %undo_type, i8* %name) #0 {
entry:
  %retval = alloca i32, align 4
  %image.addr = alloca %struct._GimpImage*, align 8
  %undo_type.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %private = alloca %struct._GimpImagePrivate*, align 8
  %undo_group = alloca %struct._GimpUndoStack*, align 8
  %dirty_mask = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %undo_type, i32* %undo_type.addr, align 4
  store i8* %name, i8** %name.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_image_undo_group_start, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32, i32* %undo_type.addr, align 4
  %cmp12 = icmp ugt i32 %13, 0
  br i1 %cmp12, label %land.lhs.true.13, label %if.else.16

land.lhs.true.13:                                 ; preds = %do.body.11
  %14 = load i32, i32* %undo_type.addr, align 4
  %cmp14 = icmp ule i32 %14, 37
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %land.lhs.true.13
  br label %if.end.17

if.else.16:                                       ; preds = %land.lhs.true.13, %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_image_undo_group_start, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %16 = bitcast %struct._GimpImage* %15 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_image_get_type() #5
  %call20 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %16, i64 %call19)
  %17 = bitcast i8* %call20 to %struct._GimpImagePrivate*
  store %struct._GimpImagePrivate* %17, %struct._GimpImagePrivate** %private, align 8
  %18 = load i8*, i8** %name.addr, align 8
  %tobool21 = icmp ne i8* %18, null
  br i1 %tobool21, label %if.end.24, label %if.then.22

if.then.22:                                       ; preds = %do.end.18
  %19 = load i32, i32* %undo_type.addr, align 4
  %call23 = call i8* @gimp_undo_type_to_name(i32 %19)
  store i8* %call23, i8** %name.addr, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %do.end.18
  %20 = load i32, i32* %undo_type.addr, align 4
  %call25 = call i32 @gimp_image_undo_dirty_from_type(i32 %20)
  store i32 %call25, i32* %dirty_mask, align 4
  %21 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %group_count = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %21, i32 0, i32 44
  %22 = load i32, i32* %group_count, align 4
  %cmp26 = icmp eq i32 %22, 0
  br i1 %cmp26, label %land.lhs.true.27, label %if.end.31

land.lhs.true.27:                                 ; preds = %if.end.24
  %23 = load i32, i32* %dirty_mask, align 4
  %cmp28 = icmp ne i32 %23, 0
  br i1 %cmp28, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %land.lhs.true.27
  %24 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %25 = load i32, i32* %dirty_mask, align 4
  %call30 = call i32 @gimp_image_dirty(%struct._GimpImage* %24, i32 %25)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %land.lhs.true.27, %if.end.24
  %26 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %undo_freeze_count = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %26, i32 0, i32 18
  %27 = load i32, i32* %undo_freeze_count, align 4
  %cmp32 = icmp sgt i32 %27, 0
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.31
  store i32 0, i32* %retval
  br label %return

if.end.34:                                        ; preds = %if.end.31
  %28 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %group_count35 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %28, i32 0, i32 44
  %29 = load i32, i32* %group_count35, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %group_count35, align 4
  %30 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %group_count36 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %30, i32 0, i32 44
  %31 = load i32, i32* %group_count36, align 4
  %cmp37 = icmp sgt i32 %31, 1
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.34
  store i32 1, i32* %retval
  br label %return

if.end.39:                                        ; preds = %if.end.34
  %32 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_image_undo_free_redo(%struct._GimpImage* %32)
  %33 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call40 = call %struct._GimpUndoStack* @gimp_undo_stack_new(%struct._GimpImage* %33)
  store %struct._GimpUndoStack* %call40, %struct._GimpUndoStack** %undo_group, align 8
  %34 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %undo_group, align 8
  %35 = bitcast %struct._GimpUndoStack* %34 to %struct._GTypeInstance*
  %call41 = call i64 @gimp_object_get_type() #5
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call41)
  %36 = bitcast %struct._GTypeInstance* %call42 to %struct._GimpObject*
  %37 = load i8*, i8** %name.addr, align 8
  call void @gimp_object_set_name(%struct._GimpObject* %36, i8* %37)
  %38 = load i32, i32* %undo_type.addr, align 4
  %39 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %undo_group, align 8
  %40 = bitcast %struct._GimpUndoStack* %39 to %struct._GTypeInstance*
  %call43 = call i64 @gimp_undo_get_type() #5
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call43)
  %41 = bitcast %struct._GTypeInstance* %call44 to %struct._GimpUndo*
  %undo_type45 = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %41, i32 0, i32 3
  store i32 %38, i32* %undo_type45, align 4
  %42 = load i32, i32* %dirty_mask, align 4
  %43 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %undo_group, align 8
  %44 = bitcast %struct._GimpUndoStack* %43 to %struct._GTypeInstance*
  %call46 = call i64 @gimp_undo_get_type() #5
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call46)
  %45 = bitcast %struct._GTypeInstance* %call47 to %struct._GimpUndo*
  %dirty_mask48 = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %45, i32 0, i32 4
  store i32 %42, i32* %dirty_mask48, align 4
  %46 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %undo_stack = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %46, i32 0, i32 42
  %47 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %undo_stack, align 8
  %48 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %undo_group, align 8
  %49 = bitcast %struct._GimpUndoStack* %48 to %struct._GTypeInstance*
  %call49 = call i64 @gimp_undo_get_type() #5
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call49)
  %50 = bitcast %struct._GTypeInstance* %call50 to %struct._GimpUndo*
  call void @gimp_undo_stack_push_undo(%struct._GimpUndoStack* %47, %struct._GimpUndo* %50)
  %51 = load i32, i32* %undo_type.addr, align 4
  %52 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %pushing_undo_group = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %52, i32 0, i32 45
  store i32 %51, i32* %pushing_undo_group, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.39, %if.then.38, %if.then.33, %if.else.16, %if.else.9
  %53 = load i32, i32* %retval
  ret i32 %53
}

declare i8* @gimp_undo_type_to_name(i32) #3

; Function Attrs: nounwind uwtable
define internal i32 @gimp_image_undo_dirty_from_type(i32 %undo_type) #0 {
entry:
  %retval = alloca i32, align 4
  %undo_type.addr = alloca i32, align 4
  store i32 %undo_type, i32* %undo_type.addr, align 4
  %0 = load i32, i32* %undo_type.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 5, label %sw.bb
    i32 6, label %sw.bb.1
    i32 8, label %sw.bb.2
    i32 9, label %sw.bb.3
    i32 10, label %sw.bb.4
    i32 11, label %sw.bb.5
    i32 12, label %sw.bb.5
    i32 14, label %sw.bb.6
    i32 15, label %sw.bb.6
    i32 16, label %sw.bb.7
    i32 17, label %sw.bb.8
    i32 18, label %sw.bb.8
    i32 19, label %sw.bb.8
    i32 20, label %sw.bb.9
    i32 21, label %sw.bb.10
    i32 22, label %sw.bb.10
    i32 24, label %sw.bb.11
    i32 25, label %sw.bb.11
    i32 26, label %sw.bb.12
    i32 27, label %sw.bb.12
    i32 28, label %sw.bb.12
    i32 29, label %sw.bb.13
    i32 30, label %sw.bb.14
    i32 31, label %sw.bb.15
    i32 32, label %sw.bb.16
    i32 33, label %sw.bb.17
    i32 34, label %sw.bb.18
    i32 35, label %sw.bb.18
    i32 36, label %sw.bb.19
    i32 37, label %sw.bb.20
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry
  store i32 3, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  store i32 65, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  store i32 72, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  store i32 136, i32* %retval
  br label %return

sw.bb.4:                                          ; preds = %entry
  store i32 264, i32* %retval
  br label %return

sw.bb.5:                                          ; preds = %entry, %entry
  store i32 4, i32* %retval
  br label %return

sw.bb.6:                                          ; preds = %entry, %entry
  store i32 80, i32* %retval
  br label %return

sw.bb.7:                                          ; preds = %entry
  store i32 256, i32* %retval
  br label %return

sw.bb.8:                                          ; preds = %entry, %entry, %entry
  store i32 32, i32* %retval
  br label %return

sw.bb.9:                                          ; preds = %entry
  store i32 208, i32* %retval
  br label %return

sw.bb.10:                                         ; preds = %entry, %entry
  store i32 208, i32* %retval
  br label %return

sw.bb.11:                                         ; preds = %entry, %entry
  store i32 8, i32* %retval
  br label %return

sw.bb.12:                                         ; preds = %entry, %entry, %entry
  store i32 8, i32* %retval
  br label %return

sw.bb.13:                                         ; preds = %entry
  store i32 8, i32* %retval
  br label %return

sw.bb.14:                                         ; preds = %entry
  store i32 80, i32* %retval
  br label %return

sw.bb.15:                                         ; preds = %entry
  store i32 80, i32* %retval
  br label %return

sw.bb.16:                                         ; preds = %entry
  store i32 208, i32* %retval
  br label %return

sw.bb.17:                                         ; preds = %entry
  store i32 80, i32* %retval
  br label %return

sw.bb.18:                                         ; preds = %entry, %entry
  store i32 36, i32* %retval
  br label %return

sw.bb.19:                                         ; preds = %entry
  store i32 136, i32* %retval
  br label %return

sw.bb.20:                                         ; preds = %entry
  store i32 65535, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  store i32 65535, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.20, %sw.bb.19, %sw.bb.18, %sw.bb.17, %sw.bb.16, %sw.bb.15, %sw.bb.14, %sw.bb.13, %sw.bb.12, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %1 = load i32, i32* %retval
  ret i32 %1
}

declare i32 @gimp_image_dirty(%struct._GimpImage*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_image_undo_free_redo(%struct._GimpImage* %image) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %private = alloca %struct._GimpImagePrivate*, align 8
  %container = alloca %struct._GimpContainer*, align 8
  %freed = alloca %struct._GimpUndo*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_get_type() #5
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpImagePrivate*
  store %struct._GimpImagePrivate* %2, %struct._GimpImagePrivate** %private, align 8
  %3 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %redo_stack = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %3, i32 0, i32 43
  %4 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %redo_stack, align 8
  %undos = getelementptr inbounds %struct._GimpUndoStack, %struct._GimpUndoStack* %4, i32 0, i32 1
  %5 = load %struct._GimpContainer*, %struct._GimpContainer** %undos, align 8
  store %struct._GimpContainer* %5, %struct._GimpContainer** %container, align 8
  %6 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %call2 = call i32 @gimp_container_is_empty(%struct._GimpContainer* %6)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.9

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %7 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %call3 = call i32 @gimp_container_get_n_children(%struct._GimpContainer* %7)
  %cmp = icmp sgt i32 %call3, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %redo_stack4 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %8, i32 0, i32 43
  %9 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %redo_stack4, align 8
  %call5 = call %struct._GimpUndo* @gimp_undo_stack_free_bottom(%struct._GimpUndoStack* %9, i32 1)
  store %struct._GimpUndo* %call5, %struct._GimpUndo** %freed, align 8
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %11 = load %struct._GimpUndo*, %struct._GimpUndo** %freed, align 8
  call void @gimp_image_undo_event(%struct._GimpImage* %10, i32 2, %struct._GimpUndo* %11)
  %12 = load %struct._GimpUndo*, %struct._GimpUndo** %freed, align 8
  %13 = bitcast %struct._GimpUndo* %12 to i8*
  call void @g_object_unref(i8* %13)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %14 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %dirty = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %14, i32 0, i32 15
  %15 = load i32, i32* %dirty, align 4
  %cmp6 = icmp sle i32 %15, 0
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %while.end
  %16 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %dirty8 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %16, i32 0, i32 15
  store i32 100000, i32* %dirty8, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then, %if.then.7, %while.end
  ret void
}

declare %struct._GimpUndoStack* @gimp_undo_stack_new(%struct._GimpImage*) #3

declare void @gimp_object_set_name(%struct._GimpObject*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #1

declare void @gimp_undo_stack_push_undo(%struct._GimpUndoStack*, %struct._GimpUndo*) #3

; Function Attrs: nounwind uwtable
define i32 @gimp_image_undo_group_end(%struct._GimpImage* %image) #0 {
entry:
  %retval = alloca i32, align 4
  %image.addr = alloca %struct._GimpImage*, align 8
  %private = alloca %struct._GimpImagePrivate*, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_image_undo_group_end, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
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
  store %struct._GimpImagePrivate* %15, %struct._GimpImagePrivate** %private, align 8
  %16 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %undo_freeze_count = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %16, i32 0, i32 18
  %17 = load i32, i32* %undo_freeze_count, align 4
  %cmp13 = icmp sgt i32 %17, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %do.end
  br label %do.body.16

do.body.16:                                       ; preds = %if.end.15
  %18 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %group_count = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %18, i32 0, i32 44
  %19 = load i32, i32* %group_count, align 4
  %cmp17 = icmp sgt i32 %19, 0
  br i1 %cmp17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %do.body.16
  br label %if.end.20

if.else.19:                                       ; preds = %do.body.16
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_image_undo_group_end, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.then.18
  br label %do.end.21

do.end.21:                                        ; preds = %if.end.20
  %20 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %group_count22 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %20, i32 0, i32 44
  %21 = load i32, i32* %group_count22, align 4
  %dec = add nsw i32 %21, -1
  store i32 %dec, i32* %group_count22, align 4
  %22 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %group_count23 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %22, i32 0, i32 44
  %23 = load i32, i32* %group_count23, align 4
  %cmp24 = icmp eq i32 %23, 0
  br i1 %cmp24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %do.end.21
  %24 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %pushing_undo_group = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %24, i32 0, i32 45
  store i32 0, i32* %pushing_undo_group, align 4
  %25 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %26 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %undo_stack = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %26, i32 0, i32 42
  %27 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %undo_stack, align 8
  %call26 = call %struct._GimpUndo* @gimp_undo_stack_peek(%struct._GimpUndoStack* %27)
  call void @gimp_image_undo_event(%struct._GimpImage* %25, i32 0, %struct._GimpUndo* %call26)
  %28 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_image_undo_free_space(%struct._GimpImage* %28)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %do.end.21
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.27, %if.else.19, %if.then.14, %if.else.9
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal void @gimp_image_undo_free_space(%struct._GimpImage* %image) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %private = alloca %struct._GimpImagePrivate*, align 8
  %container = alloca %struct._GimpContainer*, align 8
  %min_undo_levels = alloca i32, align 4
  %max_undo_levels = alloca i32, align 4
  %undo_size = alloca i64, align 8
  %freed = alloca %struct._GimpUndo*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_get_type() #5
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpImagePrivate*
  store %struct._GimpImagePrivate* %2, %struct._GimpImagePrivate** %private, align 8
  %3 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %undo_stack = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %3, i32 0, i32 42
  %4 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %undo_stack, align 8
  %undos = getelementptr inbounds %struct._GimpUndoStack, %struct._GimpUndoStack* %4, i32 0, i32 1
  %5 = load %struct._GimpContainer*, %struct._GimpContainer** %undos, align 8
  store %struct._GimpContainer* %5, %struct._GimpContainer** %container, align 8
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %6, i32 0, i32 1
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %7, i32 0, i32 1
  %8 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %levels_of_undo = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %8, i32 0, i32 37
  %9 = load i32, i32* %levels_of_undo, align 4
  store i32 %9, i32* %min_undo_levels, align 4
  store i32 1024, i32* %max_undo_levels, align 4
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp2 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %10, i32 0, i32 1
  %11 = load %struct._Gimp*, %struct._Gimp** %gimp2, align 8
  %config3 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %11, i32 0, i32 1
  %12 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config3, align 8
  %undo_size4 = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %12, i32 0, i32 38
  %13 = load i64, i64* %undo_size4, align 8
  store i64 %13, i64* %undo_size, align 8
  %14 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %call5 = call i32 @gimp_container_get_n_children(%struct._GimpContainer* %14)
  %15 = load i32, i32* %min_undo_levels, align 4
  %cmp = icmp sle i32 %call5, %15
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.end

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.17, %if.end
  %16 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %17 = bitcast %struct._GimpContainer* %16 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_object_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call6)
  %18 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpObject*
  %call8 = call i64 @gimp_object_get_memsize(%struct._GimpObject* %18, i64* null)
  %19 = load i64, i64* %undo_size, align 8
  %cmp9 = icmp sgt i64 %call8, %19
  br i1 %cmp9, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %20 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %call10 = call i32 @gimp_container_get_n_children(%struct._GimpContainer* %20)
  %21 = load i32, i32* %max_undo_levels, align 4
  %cmp11 = icmp sgt i32 %call10, %21
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %22 = phi i1 [ true, %while.cond ], [ %cmp11, %lor.rhs ]
  br i1 %22, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %23 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %undo_stack12 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %23, i32 0, i32 42
  %24 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %undo_stack12, align 8
  %call13 = call %struct._GimpUndo* @gimp_undo_stack_free_bottom(%struct._GimpUndoStack* %24, i32 0)
  store %struct._GimpUndo* %call13, %struct._GimpUndo** %freed, align 8
  %25 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %26 = load %struct._GimpUndo*, %struct._GimpUndo** %freed, align 8
  call void @gimp_image_undo_event(%struct._GimpImage* %25, i32 1, %struct._GimpUndo* %26)
  %27 = load %struct._GimpUndo*, %struct._GimpUndo** %freed, align 8
  %28 = bitcast %struct._GimpUndo* %27 to i8*
  call void @g_object_unref(i8* %28)
  %29 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %call14 = call i32 @gimp_container_get_n_children(%struct._GimpContainer* %29)
  %30 = load i32, i32* %min_undo_levels, align 4
  %cmp15 = icmp sle i32 %call14, %30
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %while.body
  br label %while.end

if.end.17:                                        ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %if.then, %if.then.16, %lor.end
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GimpUndo* @gimp_image_undo_push(%struct._GimpImage* %image, i64 %object_type, i32 %undo_type, i8* %name, i32 %dirty_mask, ...) #0 {
entry:
  %retval = alloca %struct._GimpUndo*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %object_type.addr = alloca i64, align 8
  %undo_type.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %dirty_mask.addr = alloca i32, align 4
  %private = alloca %struct._GimpImagePrivate*, align 8
  %params = alloca %struct._GParameter*, align 8
  %n_params = alloca i32, align 4
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %undo = alloca %struct._GimpUndo*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %undo_group = alloca %struct._GimpUndoStack*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i64 %object_type, i64* %object_type.addr, align 8
  store i32 %undo_type, i32* %undo_type.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %dirty_mask, i32* %dirty_mask.addr, align 4
  store %struct._GParameter* null, %struct._GParameter** %params, align 8
  store i32 0, i32* %n_params, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_image_undo_push, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpUndo* null, %struct._GimpUndo** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i64, i64* %object_type.addr, align 8
  %call12 = call i64 @gimp_undo_get_type() #5
  %call13 = call i32 @g_type_is_a(i64 %13, i64 %call12)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.11
  br label %if.end.17

if.else.16:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_image_undo_push, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GimpUndo* null, %struct._GimpUndo** %retval
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  br label %do.body.19

do.body.19:                                       ; preds = %do.end.18
  %14 = load i32, i32* %undo_type.addr, align 4
  %cmp20 = icmp ugt i32 %14, 37
  br i1 %cmp20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %do.body.19
  br label %if.end.23

if.else.22:                                       ; preds = %do.body.19
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_image_undo_push, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GimpUndo* null, %struct._GimpUndo** %retval
  br label %return

if.end.23:                                        ; preds = %if.then.21
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %16 = bitcast %struct._GimpImage* %15 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_image_get_type() #5
  %call26 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %16, i64 %call25)
  %17 = bitcast i8* %call26 to %struct._GimpImagePrivate*
  store %struct._GimpImagePrivate* %17, %struct._GimpImagePrivate** %private, align 8
  %18 = load i32, i32* %dirty_mask.addr, align 4
  %cmp27 = icmp ne i32 %18, 0
  br i1 %cmp27, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %do.end.24
  %19 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %20 = load i32, i32* %dirty_mask.addr, align 4
  %call29 = call i32 @gimp_image_dirty(%struct._GimpImage* %19, i32 %20)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %do.end.24
  %21 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %undo_freeze_count = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %21, i32 0, i32 18
  %22 = load i32, i32* %undo_freeze_count, align 4
  %cmp31 = icmp sgt i32 %22, 0
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.30
  store %struct._GimpUndo* null, %struct._GimpUndo** %retval
  br label %return

if.end.33:                                        ; preds = %if.end.30
  %23 = load i8*, i8** %name.addr, align 8
  %tobool34 = icmp ne i8* %23, null
  br i1 %tobool34, label %if.end.37, label %if.then.35

if.then.35:                                       ; preds = %if.end.33
  %24 = load i32, i32* %undo_type.addr, align 4
  %call36 = call i8* @gimp_undo_type_to_name(i32 %24)
  store i8* %call36, i8** %name.addr, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %if.end.33
  %25 = load i64, i64* %object_type.addr, align 8
  %26 = load %struct._GParameter*, %struct._GParameter** %params, align 8
  %27 = load i8*, i8** %name.addr, align 8
  %28 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %29 = load i32, i32* %undo_type.addr, align 4
  %30 = load i32, i32* %dirty_mask.addr, align 4
  %call38 = call %struct._GParameter* (i64, %struct._GParameter*, i32*, ...) @gimp_parameters_append(i64 %25, %struct._GParameter* %26, i32* %n_params, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), %struct._GimpImage* %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i32 %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i32 %30, i8* null)
  store %struct._GParameter* %call38, %struct._GParameter** %params, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay39 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay39)
  %31 = load i64, i64* %object_type.addr, align 8
  %32 = load %struct._GParameter*, %struct._GParameter** %params, align 8
  %arraydecay40 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %call41 = call %struct._GParameter* @gimp_parameters_append_valist(i64 %31, %struct._GParameter* %32, i32* %n_params, %struct.__va_list_tag* %arraydecay40)
  store %struct._GParameter* %call41, %struct._GParameter** %params, align 8
  %arraydecay42 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay4243 = bitcast %struct.__va_list_tag* %arraydecay42 to i8*
  call void @llvm.va_end(i8* %arraydecay4243)
  %33 = load i64, i64* %object_type.addr, align 8
  %34 = load i32, i32* %n_params, align 4
  %35 = load %struct._GParameter*, %struct._GParameter** %params, align 8
  %call44 = call i8* @g_object_newv(i64 %33, i32 %34, %struct._GParameter* %35)
  %36 = bitcast i8* %call44 to %struct._GimpUndo*
  store %struct._GimpUndo* %36, %struct._GimpUndo** %undo, align 8
  %37 = load %struct._GParameter*, %struct._GParameter** %params, align 8
  %38 = load i32, i32* %n_params, align 4
  call void @gimp_parameters_free(%struct._GParameter* %37, i32 %38)
  %39 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_image_undo_free_redo(%struct._GimpImage* %39)
  %40 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %pushing_undo_group = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %40, i32 0, i32 45
  %41 = load i32, i32* %pushing_undo_group, align 4
  %cmp45 = icmp eq i32 %41, 0
  br i1 %cmp45, label %if.then.46, label %if.else.52

if.then.46:                                       ; preds = %if.end.37
  %42 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %undo_stack = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %42, i32 0, i32 42
  %43 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %undo_stack, align 8
  %44 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  call void @gimp_undo_stack_push_undo(%struct._GimpUndoStack* %43, %struct._GimpUndo* %44)
  %45 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %46 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  call void @gimp_image_undo_event(%struct._GimpImage* %45, i32 0, %struct._GimpUndo* %46)
  %47 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_image_undo_free_space(%struct._GimpImage* %47)
  %48 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %undo_stack47 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %48, i32 0, i32 42
  %49 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %undo_stack47, align 8
  %call48 = call %struct._GimpUndo* @gimp_undo_stack_peek(%struct._GimpUndoStack* %49)
  %50 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %cmp49 = icmp eq %struct._GimpUndo* %call48, %50
  br i1 %cmp49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.then.46
  %51 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  store %struct._GimpUndo* %51, %struct._GimpUndo** %retval
  br label %return

if.end.51:                                        ; preds = %if.then.46
  br label %if.end.58

if.else.52:                                       ; preds = %if.end.37
  %52 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %undo_stack54 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %52, i32 0, i32 42
  %53 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %undo_stack54, align 8
  %call55 = call %struct._GimpUndo* @gimp_undo_stack_peek(%struct._GimpUndoStack* %53)
  %54 = bitcast %struct._GimpUndo* %call55 to %struct._GTypeInstance*
  %call56 = call i64 @gimp_undo_stack_get_type() #5
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call56)
  %55 = bitcast %struct._GTypeInstance* %call57 to %struct._GimpUndoStack*
  store %struct._GimpUndoStack* %55, %struct._GimpUndoStack** %undo_group, align 8
  %56 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %undo_group, align 8
  %57 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  call void @gimp_undo_stack_push_undo(%struct._GimpUndoStack* %56, %struct._GimpUndo* %57)
  %58 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  store %struct._GimpUndo* %58, %struct._GimpUndo** %retval
  br label %return

if.end.58:                                        ; preds = %if.end.51
  store %struct._GimpUndo* null, %struct._GimpUndo** %retval
  br label %return

return:                                           ; preds = %if.end.58, %if.else.52, %if.then.50, %if.then.32, %if.else.22, %if.else.16, %if.else.9
  %59 = load %struct._GimpUndo*, %struct._GimpUndo** %retval
  ret %struct._GimpUndo* %59
}

declare i32 @g_type_is_a(i64, i64) #3

declare %struct._GParameter* @gimp_parameters_append(i64, %struct._GParameter*, i32*, ...) #3

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare %struct._GParameter* @gimp_parameters_append_valist(i64, %struct._GParameter*, i32*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

declare i8* @g_object_newv(i64, i32, %struct._GParameter*) #3

declare void @gimp_parameters_free(%struct._GParameter*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_undo_stack_get_type() #1

; Function Attrs: nounwind uwtable
define %struct._GimpUndo* @gimp_image_undo_can_compress(%struct._GimpImage* %image, i64 %object_type, i32 %undo_type) #0 {
entry:
  %retval = alloca %struct._GimpUndo*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %object_type.addr = alloca i64, align 8
  %undo_type.addr = alloca i32, align 4
  %private = alloca %struct._GimpImagePrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %undo = alloca %struct._GimpUndo*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i64 %object_type, i64* %object_type.addr, align 8
  store i32 %undo_type, i32* %undo_type.addr, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_image_undo_can_compress, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpUndo* null, %struct._GimpUndo** %retval
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
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call13 = call i32 @gimp_image_is_dirty(%struct._GimpImage* %16)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %land.lhs.true.15, label %if.end.32

land.lhs.true.15:                                 ; preds = %do.end
  %17 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %redo_stack = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %17, i32 0, i32 43
  %18 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %redo_stack, align 8
  %call16 = call %struct._GimpUndo* @gimp_undo_stack_peek(%struct._GimpUndoStack* %18)
  %tobool17 = icmp ne %struct._GimpUndo* %call16, null
  br i1 %tobool17, label %if.end.32, label %if.then.18

if.then.18:                                       ; preds = %land.lhs.true.15
  %19 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %undo_stack = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %19, i32 0, i32 42
  %20 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %undo_stack, align 8
  %call20 = call %struct._GimpUndo* @gimp_undo_stack_peek(%struct._GimpUndoStack* %20)
  store %struct._GimpUndo* %call20, %struct._GimpUndo** %undo, align 8
  %21 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %tobool21 = icmp ne %struct._GimpUndo* %21, null
  br i1 %tobool21, label %land.lhs.true.22, label %if.end.31

land.lhs.true.22:                                 ; preds = %if.then.18
  %22 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %undo_type23 = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %22, i32 0, i32 3
  %23 = load i32, i32* %undo_type23, align 4
  %24 = load i32, i32* %undo_type.addr, align 4
  %cmp24 = icmp eq i32 %23, %24
  br i1 %cmp24, label %land.lhs.true.25, label %if.end.31

land.lhs.true.25:                                 ; preds = %land.lhs.true.22
  %25 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %26 = bitcast %struct._GimpUndo* %25 to %struct._GTypeInstance*
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %26, i32 0, i32 0
  %27 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %27, i32 0, i32 0
  %28 = load i64, i64* %g_type27, align 8
  %29 = load i64, i64* %object_type.addr, align 8
  %call28 = call i32 @g_type_is_a(i64 %28, i64 %29)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %land.lhs.true.25
  %30 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  store %struct._GimpUndo* %30, %struct._GimpUndo** %retval
  br label %return

if.end.31:                                        ; preds = %land.lhs.true.25, %land.lhs.true.22, %if.then.18
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %land.lhs.true.15, %do.end
  store %struct._GimpUndo* null, %struct._GimpUndo** %retval
  br label %return

return:                                           ; preds = %if.end.32, %if.then.30, %if.else.9
  %31 = load %struct._GimpUndo*, %struct._GimpUndo** %retval
  ret %struct._GimpUndo* %31
}

declare i32 @gimp_image_is_dirty(%struct._GimpImage*) #3

; Function Attrs: nounwind uwtable
define %struct._GimpUndo* @gimp_image_undo_get_fadeable(%struct._GimpImage* %image) #0 {
entry:
  %retval = alloca %struct._GimpUndo*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %private = alloca %struct._GimpImagePrivate*, align 8
  %undo = alloca %struct._GimpUndo*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst15 = alloca %struct._GTypeInstance*, align 8
  %__t17 = alloca i64, align 8
  %__r20 = alloca i32, align 4
  %tmp35 = alloca i32, align 4
  %stack = alloca %struct._GimpUndoStack*, align 8
  %__inst50 = alloca %struct._GTypeInstance*, align 8
  %__t52 = alloca i64, align 8
  %__r55 = alloca i32, align 4
  %tmp70 = alloca i32, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_image_undo_get_fadeable, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpUndo* null, %struct._GimpUndo** %retval
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
  %undo_stack = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %16, i32 0, i32 42
  %17 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %undo_stack, align 8
  %call13 = call %struct._GimpUndo* @gimp_undo_stack_peek(%struct._GimpUndoStack* %17)
  store %struct._GimpUndo* %call13, %struct._GimpUndo** %undo, align 8
  %18 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %19 = bitcast %struct._GimpUndo* %18 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %19, %struct._GTypeInstance** %__inst15, align 8
  %call18 = call i64 @gimp_undo_stack_get_type() #5
  store i64 %call18, i64* %__t17, align 8
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst15, align 8
  %tobool21 = icmp ne %struct._GTypeInstance* %20, null
  br i1 %tobool21, label %if.else.23, label %if.then.22

if.then.22:                                       ; preds = %do.end
  store i32 0, i32* %__r20, align 4
  br label %if.end.34

if.else.23:                                       ; preds = %do.end
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst15, align 8
  %g_class24 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class24, align 8
  %tobool25 = icmp ne %struct._GTypeClass* %22, null
  br i1 %tobool25, label %land.lhs.true.26, label %if.else.31

land.lhs.true.26:                                 ; preds = %if.else.23
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst15, align 8
  %g_class27 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %23, i32 0, i32 0
  %24 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class27, align 8
  %g_type28 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %24, i32 0, i32 0
  %25 = load i64, i64* %g_type28, align 8
  %26 = load i64, i64* %__t17, align 8
  %cmp29 = icmp eq i64 %25, %26
  br i1 %cmp29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %land.lhs.true.26
  store i32 1, i32* %__r20, align 4
  br label %if.end.33

if.else.31:                                       ; preds = %land.lhs.true.26, %if.else.23
  %27 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst15, align 8
  %28 = load i64, i64* %__t17, align 8
  %call32 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %27, i64 %28) #6
  store i32 %call32, i32* %__r20, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.31, %if.then.30
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then.22
  %29 = load i32, i32* %__r20, align 4
  store i32 %29, i32* %tmp35
  %30 = load i32, i32* %tmp35
  %tobool36 = icmp ne i32 %30, 0
  br i1 %tobool36, label %land.lhs.true.37, label %if.end.48

land.lhs.true.37:                                 ; preds = %if.end.34
  %31 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %undo_type = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %31, i32 0, i32 3
  %32 = load i32, i32* %undo_type, align 4
  %cmp38 = icmp eq i32 %32, 33
  br i1 %cmp38, label %if.then.39, label %if.end.48

if.then.39:                                       ; preds = %land.lhs.true.37
  %33 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %34 = bitcast %struct._GimpUndo* %33 to %struct._GTypeInstance*
  %call41 = call i64 @gimp_undo_stack_get_type() #5
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call41)
  %35 = bitcast %struct._GTypeInstance* %call42 to %struct._GimpUndoStack*
  store %struct._GimpUndoStack* %35, %struct._GimpUndoStack** %stack, align 8
  %36 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %stack, align 8
  %call43 = call i32 @gimp_undo_stack_get_depth(%struct._GimpUndoStack* %36)
  %cmp44 = icmp eq i32 %call43, 2
  br i1 %cmp44, label %if.then.45, label %if.end.47

if.then.45:                                       ; preds = %if.then.39
  %37 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %stack, align 8
  %call46 = call %struct._GimpUndo* @gimp_undo_stack_peek(%struct._GimpUndoStack* %37)
  store %struct._GimpUndo* %call46, %struct._GimpUndo** %undo, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.45, %if.then.39
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %land.lhs.true.37, %if.end.34
  %38 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %39 = bitcast %struct._GimpUndo* %38 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %39, %struct._GTypeInstance** %__inst50, align 8
  %call53 = call i64 @gimp_drawable_undo_get_type() #5
  store i64 %call53, i64* %__t52, align 8
  %40 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst50, align 8
  %tobool56 = icmp ne %struct._GTypeInstance* %40, null
  br i1 %tobool56, label %if.else.58, label %if.then.57

if.then.57:                                       ; preds = %if.end.48
  store i32 0, i32* %__r55, align 4
  br label %if.end.69

if.else.58:                                       ; preds = %if.end.48
  %41 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst50, align 8
  %g_class59 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %41, i32 0, i32 0
  %42 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class59, align 8
  %tobool60 = icmp ne %struct._GTypeClass* %42, null
  br i1 %tobool60, label %land.lhs.true.61, label %if.else.66

land.lhs.true.61:                                 ; preds = %if.else.58
  %43 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst50, align 8
  %g_class62 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %43, i32 0, i32 0
  %44 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class62, align 8
  %g_type63 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %44, i32 0, i32 0
  %45 = load i64, i64* %g_type63, align 8
  %46 = load i64, i64* %__t52, align 8
  %cmp64 = icmp eq i64 %45, %46
  br i1 %cmp64, label %if.then.65, label %if.else.66

if.then.65:                                       ; preds = %land.lhs.true.61
  store i32 1, i32* %__r55, align 4
  br label %if.end.68

if.else.66:                                       ; preds = %land.lhs.true.61, %if.else.58
  %47 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst50, align 8
  %48 = load i64, i64* %__t52, align 8
  %call67 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %47, i64 %48) #6
  store i32 %call67, i32* %__r55, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.66, %if.then.65
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.then.57
  %49 = load i32, i32* %__r55, align 4
  store i32 %49, i32* %tmp70
  %50 = load i32, i32* %tmp70
  %tobool71 = icmp ne i32 %50, 0
  br i1 %tobool71, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.end.69
  %51 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  store %struct._GimpUndo* %51, %struct._GimpUndo** %retval
  br label %return

if.end.73:                                        ; preds = %if.end.69
  store %struct._GimpUndo* null, %struct._GimpUndo** %retval
  br label %return

return:                                           ; preds = %if.end.73, %if.then.72, %if.else.9
  %52 = load %struct._GimpUndo*, %struct._GimpUndo** %retval
  ret %struct._GimpUndo* %52
}

declare i32 @gimp_undo_stack_get_depth(%struct._GimpUndoStack*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_undo_get_type() #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

declare void @g_object_freeze_notify(%struct._GObject*) #3

declare %struct._GimpUndo* @gimp_undo_stack_pop_undo(%struct._GimpUndoStack*, i32, %struct._GimpUndoAccumulator*) #3

declare void @gimp_list_reverse(%struct._GimpList*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_list_get_type() #1

declare void @gimp_image_mode_changed(%struct._GimpImage*) #3

declare void @gimp_image_size_changed_detailed(%struct._GimpImage*, i32, i32, i32, i32) #3

declare void @gimp_image_resolution_changed(%struct._GimpImage*) #3

declare void @gimp_image_unit_changed(%struct._GimpImage*) #3

declare void @g_object_thaw_notify(%struct._GObject*) #3

declare i32 @gimp_container_get_n_children(%struct._GimpContainer*) #3

declare i64 @gimp_object_get_memsize(%struct._GimpObject*, i64*) #3

declare %struct._GimpUndo* @gimp_undo_stack_free_bottom(%struct._GimpUndoStack*, i32) #3

declare void @g_object_unref(i8*) #3

declare i32 @gimp_container_is_empty(%struct._GimpContainer*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
