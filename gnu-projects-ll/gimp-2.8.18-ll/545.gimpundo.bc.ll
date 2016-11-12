; ModuleID = './app/core/gimpundo.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpUndoClass = type { %struct._GimpViewableClass, void (%struct._GimpUndo*, i32, %struct._GimpUndoAccumulator*)*, void (%struct._GimpUndo*, i32)* }
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
%struct._TempBuf = type { i32, i32, i32, i32, i32, i8* }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type { %struct._GimpBaseConfig, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct._GimpTemplate*, %struct._GimpGrid*, i32, i64, i32, i32, i8*, i32, i32, i32, i64, %struct._GimpColorConfig*, i32, i32, %struct._GimpRGB, i32 }
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GimpGrid = type opaque
%struct._GimpColorConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpContainer = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
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
%struct._GdkPixbuf = type opaque
%struct._GimpUndo = type { %struct._GimpViewable, %struct._GimpImage*, i32, i32, i32, %struct._TempBuf*, i32 }
%struct._GimpUndoAccumulator = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpUndoIdle = type { %struct._GimpUndo*, %struct._GimpContext* }
%struct._GimpChannel = type opaque
%struct._GimpUndoStack = type { %struct._GimpUndo, %struct._GimpContainer* }
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }

@gimp_undo_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"GimpUndo\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_undo_pop = private unnamed_addr constant [14 x i8] c"gimp_undo_pop\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"GIMP_IS_UNDO (undo)\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"accum != NULL\00", align 1
@undo_signals = internal global [2 x i32] zeroinitializer, align 4
@__func__.gimp_undo_free = private unnamed_addr constant [15 x i8] c"gimp_undo_free\00", align 1
@__func__.gimp_undo_create_preview = private unnamed_addr constant [25 x i8] c"gimp_undo_create_preview\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"context == NULL || GIMP_IS_CONTEXT (context)\00", align 1
@__func__.gimp_undo_refresh_preview = private unnamed_addr constant [26 x i8] c"gimp_undo_refresh_preview\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__func__.gimp_undo_get_age = private unnamed_addr constant [18 x i8] c"gimp_undo_get_age\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"now >= undo->time\00", align 1
@__func__.gimp_undo_reset_age = private unnamed_addr constant [20 x i8] c"gimp_undo_reset_age\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@gimp_undo_parent_class = internal global i8* null, align 8
@GimpUndo_private_offset = internal global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"pop\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"free\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"gtk-undo\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"undo-type\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"dirty-mask\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"gimpundo.c\00", align 1
@__func__.gimp_undo_constructed = private unnamed_addr constant [22 x i8] c"gimp_undo_constructed\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"GIMP_IS_IMAGE (undo->image)\00", align 1
@.str.16 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"property\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_undo_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_undo_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_undo_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_viewable_get_type() #8
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 296, void (i8*, i8*)* bitcast (void (i8*)* @gimp_undo_class_intern_init to void (i8*, i8*)*), i32 72, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpUndo*)* @gimp_undo_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_undo_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_undo_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_undo_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_undo_parent_class, align 8
  %1 = load i32, i32* @GimpUndo_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpUndo_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpUndoClass*
  call void @gimp_undo_class_init(%struct._GimpUndoClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_undo_init(%struct._GimpUndo* %undo) #3 {
entry:
  %undo.addr = alloca %struct._GimpUndo*, align 8
  store %struct._GimpUndo* %undo, %struct._GimpUndo** %undo.addr, align 8
  %call = call i64 @time(i64* null) #7
  %conv = trunc i64 %call to i32
  %0 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %time = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %0, i32 0, i32 2
  store i32 %conv, i32* %time, align 4
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_undo_pop(%struct._GimpUndo* %undo, i32 %undo_mode, %struct._GimpUndoAccumulator* %accum) #3 {
entry:
  %undo.addr = alloca %struct._GimpUndo*, align 8
  %undo_mode.addr = alloca i32, align 4
  %accum.addr = alloca %struct._GimpUndoAccumulator*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpUndo* %undo, %struct._GimpUndo** %undo.addr, align 8
  store i32 %undo_mode, i32* %undo_mode.addr, align 4
  store %struct._GimpUndoAccumulator* %accum, %struct._GimpUndoAccumulator** %accum.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %1 = bitcast %struct._GimpUndo* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_undo_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.gimp_undo_pop, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpUndoAccumulator*, %struct._GimpUndoAccumulator** %accum.addr, align 8
  %cmp12 = icmp ne %struct._GimpUndoAccumulator* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.gimp_undo_pop, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %dirty_mask = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %14, i32 0, i32 4
  %15 = load i32, i32* %dirty_mask, align 4
  %cmp17 = icmp ne i32 %15, 0
  br i1 %cmp17, label %if.then.18, label %if.end.25

if.then.18:                                       ; preds = %do.end.16
  %16 = load i32, i32* %undo_mode.addr, align 4
  switch i32 %16, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.21
  ]

sw.bb:                                            ; preds = %if.then.18
  %17 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %image = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %17, i32 0, i32 1
  %18 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %19 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %dirty_mask19 = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %19, i32 0, i32 4
  %20 = load i32, i32* %dirty_mask19, align 4
  %call20 = call i32 @gimp_image_clean(%struct._GimpImage* %18, i32 %20)
  br label %sw.epilog

sw.bb.21:                                         ; preds = %if.then.18
  %21 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %image22 = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %21, i32 0, i32 1
  %22 = load %struct._GimpImage*, %struct._GimpImage** %image22, align 8
  %23 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %dirty_mask23 = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %23, i32 0, i32 4
  %24 = load i32, i32* %dirty_mask23, align 4
  %call24 = call i32 @gimp_image_dirty(%struct._GimpImage* %22, i32 %24)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.18, %sw.bb.21, %sw.bb
  br label %if.end.25

if.end.25:                                        ; preds = %sw.epilog, %do.end.16
  %25 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %26 = bitcast %struct._GimpUndo* %25 to i8*
  %27 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @undo_signals, i32 0, i64 0), align 4
  %28 = load i32, i32* %undo_mode.addr, align 4
  %29 = load %struct._GimpUndoAccumulator*, %struct._GimpUndoAccumulator** %accum.addr, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %26, i32 %27, i32 0, i32 %28, %struct._GimpUndoAccumulator* %29)
  br label %return

return:                                           ; preds = %if.end.25, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i32 @gimp_image_clean(%struct._GimpImage*, i32) #1

declare i32 @gimp_image_dirty(%struct._GimpImage*, i32) #1

declare void @g_signal_emit(i8*, i32, i32, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_undo_free(%struct._GimpUndo* %undo, i32 %undo_mode) #3 {
entry:
  %undo.addr = alloca %struct._GimpUndo*, align 8
  %undo_mode.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpUndo* %undo, %struct._GimpUndo** %undo.addr, align 8
  store i32 %undo_mode, i32* %undo_mode.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %1 = bitcast %struct._GimpUndo* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_undo_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.gimp_undo_free, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %14 = bitcast %struct._GimpUndo* %13 to i8*
  %15 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @undo_signals, i32 0, i64 1), align 4
  %16 = load i32, i32* %undo_mode.addr, align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %14, i32 %15, i32 0, i32 %16)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_undo_create_preview(%struct._GimpUndo* %undo, %struct._GimpContext* %context, i32 %create_now) #3 {
entry:
  %undo.addr = alloca %struct._GimpUndo*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %create_now.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  %idle = alloca %struct._GimpUndoIdle*, align 8
  store %struct._GimpUndo* %undo, %struct._GimpUndo** %undo.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %create_now, i32* %create_now.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %1 = bitcast %struct._GimpUndo* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_undo_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_undo_create_preview, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.58

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %cmp12 = icmp eq %struct._GimpContext* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %15 = bitcast %struct._GimpContext* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_context_get_type() #8
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
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_undo_create_preview, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.58

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %preview = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %27, i32 0, i32 5
  %28 = load %struct._TempBuf*, %struct._TempBuf** %preview, align 8
  %tobool40 = icmp ne %struct._TempBuf* %28, null
  br i1 %tobool40, label %if.then.43, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %do.end.39
  %29 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %preview_idle_id = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %29, i32 0, i32 6
  %30 = load i32, i32* %preview_idle_id, align 4
  %tobool42 = icmp ne i32 %30, 0
  br i1 %tobool42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %lor.lhs.false.41, %do.end.39
  br label %if.end.58

if.end.44:                                        ; preds = %lor.lhs.false.41
  %31 = load i32, i32* %create_now.addr, align 4
  %tobool45 = icmp ne i32 %31, 0
  br i1 %tobool45, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %if.end.44
  %32 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %33 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_undo_create_preview_private(%struct._GimpUndo* %32, %struct._GimpContext* %33)
  br label %if.end.58

if.else.47:                                       ; preds = %if.end.44
  %call49 = call noalias i8* @g_slice_alloc0(i64 16)
  %34 = bitcast i8* %call49 to %struct._GimpUndoIdle*
  store %struct._GimpUndoIdle* %34, %struct._GimpUndoIdle** %idle, align 8
  %35 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %36 = load %struct._GimpUndoIdle*, %struct._GimpUndoIdle** %idle, align 8
  %undo50 = getelementptr inbounds %struct._GimpUndoIdle, %struct._GimpUndoIdle* %36, i32 0, i32 0
  store %struct._GimpUndo* %35, %struct._GimpUndo** %undo50, align 8
  %37 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %tobool51 = icmp ne %struct._GimpContext* %37, null
  br i1 %tobool51, label %if.then.52, label %if.end.55

if.then.52:                                       ; preds = %if.else.47
  %38 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %39 = bitcast %struct._GimpContext* %38 to i8*
  %call53 = call i8* @g_object_ref(i8* %39)
  %40 = bitcast i8* %call53 to %struct._GimpContext*
  %41 = load %struct._GimpUndoIdle*, %struct._GimpUndoIdle** %idle, align 8
  %context54 = getelementptr inbounds %struct._GimpUndoIdle, %struct._GimpUndoIdle* %41, i32 0, i32 1
  store %struct._GimpContext* %40, %struct._GimpContext** %context54, align 8
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.52, %if.else.47
  %42 = load %struct._GimpUndoIdle*, %struct._GimpUndoIdle** %idle, align 8
  %43 = bitcast %struct._GimpUndoIdle* %42 to i8*
  %call56 = call i32 @g_idle_add_full(i32 300, i32 (i8*)* @gimp_undo_create_preview_idle, i8* %43, void (i8*)* bitcast (void (%struct._GimpUndoIdle*)* @gimp_undo_idle_free to void (i8*)*))
  %44 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %preview_idle_id57 = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %44, i32 0, i32 6
  store i32 %call56, i32* %preview_idle_id57, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.9, %if.else.37, %if.then.43, %if.end.55, %if.then.46
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_undo_create_preview_private(%struct._GimpUndo* %undo, %struct._GimpContext* %context) #3 {
entry:
  %undo.addr = alloca %struct._GimpUndo*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %preview_viewable = alloca %struct._GimpViewable*, align 8
  %preview_size = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  store %struct._GimpUndo* %undo, %struct._GimpUndo** %undo.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %image1 = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %0, i32 0, i32 1
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image1, align 8
  store %struct._GimpImage* %1, %struct._GimpImage** %image, align 8
  %2 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %undo_type = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %2, i32 0, i32 3
  %3 = load i32, i32* %undo_type, align 4
  switch i32 %3, label %sw.default [
    i32 10, label %sw.bb
    i32 16, label %sw.bb
    i32 47, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %4)
  %5 = bitcast %struct._GimpChannel* %call to %struct._GTypeInstance*
  %call2 = call i64 @gimp_viewable_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpViewable*
  store %struct._GimpViewable* %6, %struct._GimpViewable** %preview_viewable, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %8 = bitcast %struct._GimpImage* %7 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_viewable_get_type() #8
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call4)
  %9 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpViewable*
  store %struct._GimpViewable* %9, %struct._GimpViewable** %preview_viewable, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %10, i32 0, i32 1
  %11 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %11, i32 0, i32 1
  %12 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %undo_preview_size = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %12, i32 0, i32 39
  %13 = load i32, i32* %undo_preview_size, align 4
  store i32 %13, i32* %preview_size, align 4
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call6 = call i32 @gimp_image_get_width(%struct._GimpImage* %14)
  %15 = load i32, i32* %preview_size, align 4
  %cmp = icmp ule i32 %call6, %15
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %sw.epilog
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call7 = call i32 @gimp_image_get_height(%struct._GimpImage* %16)
  %17 = load i32, i32* %preview_size, align 4
  %cmp8 = icmp ule i32 %call7, %17
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %18 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call9 = call i32 @gimp_image_get_width(%struct._GimpImage* %18)
  store i32 %call9, i32* %width, align 4
  %19 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call10 = call i32 @gimp_image_get_height(%struct._GimpImage* %19)
  store i32 %call10, i32* %height, align 4
  br label %if.end.36

if.else:                                          ; preds = %land.lhs.true, %sw.epilog
  %20 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call11 = call i32 @gimp_image_get_width(%struct._GimpImage* %20)
  %21 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call12 = call i32 @gimp_image_get_height(%struct._GimpImage* %21)
  %cmp13 = icmp sgt i32 %call11, %call12
  br i1 %cmp13, label %if.then.14, label %if.else.22

if.then.14:                                       ; preds = %if.else
  %22 = load i32, i32* %preview_size, align 4
  store i32 %22, i32* %width, align 4
  %23 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call15 = call i32 @gimp_image_get_height(%struct._GimpImage* %23)
  %24 = load i32, i32* %preview_size, align 4
  %mul = mul i32 %call15, %24
  %25 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call16 = call i32 @gimp_image_get_width(%struct._GimpImage* %25)
  %div = udiv i32 %mul, %call16
  %cmp17 = icmp ugt i32 1, %div
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.14
  br label %cond.end

cond.false:                                       ; preds = %if.then.14
  %26 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call18 = call i32 @gimp_image_get_height(%struct._GimpImage* %26)
  %27 = load i32, i32* %preview_size, align 4
  %mul19 = mul i32 %call18, %27
  %28 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call20 = call i32 @gimp_image_get_width(%struct._GimpImage* %28)
  %div21 = udiv i32 %mul19, %call20
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %div21, %cond.false ]
  store i32 %cond, i32* %height, align 4
  br label %if.end

if.else.22:                                       ; preds = %if.else
  %29 = load i32, i32* %preview_size, align 4
  store i32 %29, i32* %height, align 4
  %30 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call23 = call i32 @gimp_image_get_width(%struct._GimpImage* %30)
  %31 = load i32, i32* %preview_size, align 4
  %mul24 = mul i32 %call23, %31
  %32 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call25 = call i32 @gimp_image_get_height(%struct._GimpImage* %32)
  %div26 = udiv i32 %mul24, %call25
  %cmp27 = icmp ugt i32 1, %div26
  br i1 %cmp27, label %cond.true.28, label %cond.false.29

cond.true.28:                                     ; preds = %if.else.22
  br label %cond.end.34

cond.false.29:                                    ; preds = %if.else.22
  %33 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call30 = call i32 @gimp_image_get_width(%struct._GimpImage* %33)
  %34 = load i32, i32* %preview_size, align 4
  %mul31 = mul i32 %call30, %34
  %35 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call32 = call i32 @gimp_image_get_height(%struct._GimpImage* %35)
  %div33 = udiv i32 %mul31, %call32
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.false.29, %cond.true.28
  %cond35 = phi i32 [ 1, %cond.true.28 ], [ %div33, %cond.false.29 ]
  store i32 %cond35, i32* %width, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end.34, %cond.end
  br label %if.end.36

if.end.36:                                        ; preds = %if.end, %if.then
  %36 = load %struct._GimpViewable*, %struct._GimpViewable** %preview_viewable, align 8
  %37 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %38 = load i32, i32* %width, align 4
  %39 = load i32, i32* %height, align 4
  %call37 = call %struct._TempBuf* @gimp_viewable_get_new_preview(%struct._GimpViewable* %36, %struct._GimpContext* %37, i32 %38, i32 %39)
  %40 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %preview = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %40, i32 0, i32 5
  store %struct._TempBuf* %call37, %struct._TempBuf** %preview, align 8
  %41 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %42 = bitcast %struct._GimpUndo* %41 to %struct._GTypeInstance*
  %call38 = call i64 @gimp_viewable_get_type() #8
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call38)
  %43 = bitcast %struct._GTypeInstance* %call39 to %struct._GimpViewable*
  call void @gimp_viewable_invalidate_preview(%struct._GimpViewable* %43)
  ret void
}

declare noalias i8* @g_slice_alloc0(i64) #1

declare i8* @g_object_ref(i8*) #1

declare i32 @g_idle_add_full(i32, i32 (i8*)*, i8*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_undo_create_preview_idle(i8* %data) #3 {
entry:
  %data.addr = alloca i8*, align 8
  %idle = alloca %struct._GimpUndoIdle*, align 8
  %stack = alloca %struct._GimpUndoStack*, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GimpUndoIdle*
  store %struct._GimpUndoIdle* %1, %struct._GimpUndoIdle** %idle, align 8
  %2 = load %struct._GimpUndoIdle*, %struct._GimpUndoIdle** %idle, align 8
  %undo = getelementptr inbounds %struct._GimpUndoIdle, %struct._GimpUndoIdle* %2, i32 0, i32 0
  %3 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %image = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %3, i32 0, i32 1
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call = call %struct._GimpUndoStack* @gimp_image_get_undo_stack(%struct._GimpImage* %4)
  store %struct._GimpUndoStack* %call, %struct._GimpUndoStack** %stack, align 8
  %5 = load %struct._GimpUndoIdle*, %struct._GimpUndoIdle** %idle, align 8
  %undo1 = getelementptr inbounds %struct._GimpUndoIdle, %struct._GimpUndoIdle* %5, i32 0, i32 0
  %6 = load %struct._GimpUndo*, %struct._GimpUndo** %undo1, align 8
  %7 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %stack, align 8
  %call2 = call %struct._GimpUndo* @gimp_undo_stack_peek(%struct._GimpUndoStack* %7)
  %cmp = icmp eq %struct._GimpUndo* %6, %call2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpUndoIdle*, %struct._GimpUndoIdle** %idle, align 8
  %undo3 = getelementptr inbounds %struct._GimpUndoIdle, %struct._GimpUndoIdle* %8, i32 0, i32 0
  %9 = load %struct._GimpUndo*, %struct._GimpUndo** %undo3, align 8
  %10 = load %struct._GimpUndoIdle*, %struct._GimpUndoIdle** %idle, align 8
  %context = getelementptr inbounds %struct._GimpUndoIdle, %struct._GimpUndoIdle* %10, i32 0, i32 1
  %11 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_undo_create_preview_private(%struct._GimpUndo* %9, %struct._GimpContext* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct._GimpUndoIdle*, %struct._GimpUndoIdle** %idle, align 8
  %undo4 = getelementptr inbounds %struct._GimpUndoIdle, %struct._GimpUndoIdle* %12, i32 0, i32 0
  %13 = load %struct._GimpUndo*, %struct._GimpUndo** %undo4, align 8
  %preview_idle_id = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %13, i32 0, i32 6
  store i32 0, i32* %preview_idle_id, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @gimp_undo_idle_free(%struct._GimpUndoIdle* %idle) #3 {
entry:
  %idle.addr = alloca %struct._GimpUndoIdle*, align 8
  store %struct._GimpUndoIdle* %idle, %struct._GimpUndoIdle** %idle.addr, align 8
  %0 = load %struct._GimpUndoIdle*, %struct._GimpUndoIdle** %idle.addr, align 8
  %context = getelementptr inbounds %struct._GimpUndoIdle, %struct._GimpUndoIdle* %0, i32 0, i32 1
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpUndoIdle*, %struct._GimpUndoIdle** %idle.addr, align 8
  %context1 = getelementptr inbounds %struct._GimpUndoIdle, %struct._GimpUndoIdle* %2, i32 0, i32 1
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context1, align 8
  %4 = bitcast %struct._GimpContext* %3 to i8*
  call void @g_object_unref(i8* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %5 = load %struct._GimpUndoIdle*, %struct._GimpUndoIdle** %idle.addr, align 8
  %6 = bitcast %struct._GimpUndoIdle* %5 to i8*
  call void @g_slice_free1(i64 16, i8* %6)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_undo_refresh_preview(%struct._GimpUndo* %undo, %struct._GimpContext* %context) #3 {
entry:
  %undo.addr = alloca %struct._GimpUndo*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpUndo* %undo, %struct._GimpUndo** %undo.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %1 = bitcast %struct._GimpUndo* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_undo_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_undo_refresh_preview, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.47

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %cmp12 = icmp eq %struct._GimpContext* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %15 = bitcast %struct._GimpContext* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_context_get_type() #8
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
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_undo_refresh_preview, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.47

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %preview_idle_id = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %27, i32 0, i32 6
  %28 = load i32, i32* %preview_idle_id, align 4
  %tobool40 = icmp ne i32 %28, 0
  br i1 %tobool40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %do.end.39
  br label %if.end.47

if.end.42:                                        ; preds = %do.end.39
  %29 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %preview = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %29, i32 0, i32 5
  %30 = load %struct._TempBuf*, %struct._TempBuf** %preview, align 8
  %tobool43 = icmp ne %struct._TempBuf* %30, null
  br i1 %tobool43, label %if.then.44, label %if.end.47

if.then.44:                                       ; preds = %if.end.42
  %31 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %preview45 = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %31, i32 0, i32 5
  %32 = load %struct._TempBuf*, %struct._TempBuf** %preview45, align 8
  call void @temp_buf_free(%struct._TempBuf* %32)
  %33 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %preview46 = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %33, i32 0, i32 5
  store %struct._TempBuf* null, %struct._TempBuf** %preview46, align 8
  %34 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %35 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_undo_create_preview(%struct._GimpUndo* %34, %struct._GimpContext* %35, i32 0)
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.9, %if.else.37, %if.then.41, %if.then.44, %if.end.42
  ret void
}

declare void @temp_buf_free(%struct._TempBuf*) #1

; Function Attrs: nounwind uwtable
define i8* @gimp_undo_type_to_name(i32 %type) #3 {
entry:
  %retval = alloca i8*, align 8
  %type.addr = alloca i32, align 4
  %desc = alloca i8*, align 8
  store i32 %type, i32* %type.addr, align 4
  %call = call i64 @gimp_undo_type_get_type() #8
  %0 = load i32, i32* %type.addr, align 4
  %call1 = call i32 @gimp_enum_get_value(i64 %call, i32 %0, i8** null, i8** null, i8** %desc, i8** null)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %desc, align 8
  store i8* %1, i8** %retval
  br label %return

if.else:                                          ; preds = %entry
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0), i8** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %2 = load i8*, i8** %retval
  ret i8* %2
}

declare i32 @gimp_enum_get_value(i64, i32, i8**, i8**, i8**, i8**) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_undo_type_get_type() #2

; Function Attrs: nounwind uwtable
define i32 @gimp_undo_is_weak(%struct._GimpUndo* %undo) #3 {
entry:
  %retval = alloca i32, align 4
  %undo.addr = alloca %struct._GimpUndo*, align 8
  store %struct._GimpUndo* %undo, %struct._GimpUndo** %undo.addr, align 8
  %0 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %tobool = icmp ne %struct._GimpUndo* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %undo_type = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %1, i32 0, i32 3
  %2 = load i32, i32* %undo_type, align 4
  switch i32 %2, label %sw.default [
    i32 17, label %sw.bb
    i32 19, label %sw.bb
    i32 25, label %sw.bb
    i32 51, label %sw.bb
    i32 55, label %sw.bb
    i32 56, label %sw.bb
    i32 65, label %sw.bb
    i32 66, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  store i32 1, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i32 @gimp_undo_get_age(%struct._GimpUndo* %undo) #3 {
entry:
  %retval = alloca i32, align 4
  %undo.addr = alloca %struct._GimpUndo*, align 8
  %now = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpUndo* %undo, %struct._GimpUndo** %undo.addr, align 8
  %call = call i64 @time(i64* null) #7
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %now, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %1 = bitcast %struct._GimpUndo* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call1 = call i64 @gimp_undo_get_type() #8
  store i64 %call1, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.8

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool2 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool2, label %land.lhs.true, label %if.else.6

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.6:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call7 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
  store i32 %call7, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.6, %if.then.5
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool9 = icmp ne i32 %12, 0
  br i1 %tobool9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.end.8
  br label %if.end.12

if.else.11:                                       ; preds = %if.end.8
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_undo_get_age, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.12
  br label %do.body.13

do.body.13:                                       ; preds = %do.end
  %13 = load i32, i32* %now, align 4
  %14 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %time = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %14, i32 0, i32 2
  %15 = load i32, i32* %time, align 4
  %cmp14 = icmp uge i32 %13, %15
  br i1 %cmp14, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body.13
  br label %if.end.18

if.else.17:                                       ; preds = %do.body.13
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_undo_get_age, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  %16 = load i32, i32* %now, align 4
  %17 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %time20 = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %17, i32 0, i32 2
  %18 = load i32, i32* %time20, align 4
  %sub = sub i32 %16, %18
  store i32 %sub, i32* %retval
  br label %return

return:                                           ; preds = %do.end.19, %if.else.17, %if.else.11
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind
declare i64 @time(i64*) #5

; Function Attrs: nounwind uwtable
define void @gimp_undo_reset_age(%struct._GimpUndo* %undo) #3 {
entry:
  %undo.addr = alloca %struct._GimpUndo*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpUndo* %undo, %struct._GimpUndo** %undo.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %1 = bitcast %struct._GimpUndo* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_undo_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_undo_reset_age, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @time(i64* null) #7
  %conv = trunc i64 %call11 to i32
  %13 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %time = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %13, i32 0, i32 2
  store i32 %conv, i32* %time, align 4
  %14 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %15 = bitcast %struct._GimpUndo* %14 to %struct._GTypeInstance*
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 80)
  %16 = bitcast %struct._GTypeInstance* %call12 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0))
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

declare void @g_object_notify(%struct._GObject*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_undo_class_init(%struct._GimpUndoClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpUndoClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %gimp_object_class = alloca %struct._GimpObjectClass*, align 8
  %viewable_class = alloca %struct._GimpViewableClass*, align 8
  store %struct._GimpUndoClass* %klass, %struct._GimpUndoClass** %klass.addr, align 8
  %0 = load %struct._GimpUndoClass*, %struct._GimpUndoClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpUndoClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpUndoClass*, %struct._GimpUndoClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpUndoClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_object_get_type() #8
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpObjectClass*
  store %struct._GimpObjectClass* %5, %struct._GimpObjectClass** %gimp_object_class, align 8
  %6 = load %struct._GimpUndoClass*, %struct._GimpUndoClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpUndoClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_viewable_get_type() #8
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpViewableClass*
  store %struct._GimpViewableClass* %8, %struct._GimpViewableClass** %viewable_class, align 8
  %9 = load %struct._GimpUndoClass*, %struct._GimpUndoClass** %klass.addr, align 8
  %10 = bitcast %struct._GimpUndoClass* %9 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %10, i32 0, i32 0
  %11 = load i64, i64* %g_type, align 8
  %call5 = call i64 @gimp_undo_mode_get_type() #8
  %call6 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i64 %11, i32 1, i32 280, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @gimp_marshal_VOID__ENUM_POINTER, i64 4, i32 2, i64 %call5, i64 68)
  store i32 %call6, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @undo_signals, i32 0, i64 0), align 4
  %12 = load %struct._GimpUndoClass*, %struct._GimpUndoClass** %klass.addr, align 8
  %13 = bitcast %struct._GimpUndoClass* %12 to %struct._GTypeClass*
  %g_type7 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %13, i32 0, i32 0
  %14 = load i64, i64* %g_type7, align 8
  %call8 = call i64 @gimp_undo_mode_get_type() #8
  %call9 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i64 %14, i32 1, i32 288, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__ENUM, i64 4, i32 1, i64 %call8)
  store i32 %call9, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @undo_signals, i32 0, i64 1), align 4
  %15 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %15, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_undo_constructed, void (%struct._GObject*)** %constructed, align 8
  %16 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %16, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_undo_finalize, void (%struct._GObject*)** %finalize, align 8
  %17 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %17, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_undo_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %18 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %18, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_undo_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %19 = load %struct._GimpObjectClass*, %struct._GimpObjectClass** %gimp_object_class, align 8
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %19, i32 0, i32 3
  store i64 (%struct._GimpObject*, i64*)* @gimp_undo_get_memsize, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %20 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %default_stock_id = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %20, i32 0, i32 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i8** %default_stock_id, align 8
  %21 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %get_popup_size = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %21, i32 0, i32 7
  store i32 (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)* @gimp_undo_get_popup_size, i32 (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)** %get_popup_size, align 8
  %22 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %get_new_preview = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %22, i32 0, i32 9
  store %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)* @gimp_undo_get_new_preview, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)** %get_new_preview, align 8
  %23 = load %struct._GimpUndoClass*, %struct._GimpUndoClass** %klass.addr, align 8
  %pop = getelementptr inbounds %struct._GimpUndoClass, %struct._GimpUndoClass* %23, i32 0, i32 1
  store void (%struct._GimpUndo*, i32, %struct._GimpUndoAccumulator*)* @gimp_undo_real_pop, void (%struct._GimpUndo*, i32, %struct._GimpUndoAccumulator*)** %pop, align 8
  %24 = load %struct._GimpUndoClass*, %struct._GimpUndoClass** %klass.addr, align 8
  %free = getelementptr inbounds %struct._GimpUndoClass, %struct._GimpUndoClass* %24, i32 0, i32 2
  store void (%struct._GimpUndo*, i32)* @gimp_undo_real_free, void (%struct._GimpUndo*, i32)** %free, align 8
  %25 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call10 = call i64 @gimp_image_get_type() #8
  %call11 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i8* null, i8* null, i64 %call10, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %25, i32 1, %struct._GParamSpec* %call11)
  %26 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call12 = call %struct._GParamSpec* @g_param_spec_uint(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null, i32 0, i32 -1, i32 0, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %26, i32 2, %struct._GParamSpec* %call12)
  %27 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call13 = call i64 @gimp_undo_type_get_type() #8
  %call14 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* null, i64 %call13, i32 0, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %27, i32 3, %struct._GParamSpec* %call14)
  %28 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call15 = call i64 @gimp_dirty_mask_get_type() #8
  %call16 = call %struct._GParamSpec* @g_param_spec_flags(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i8* null, i8* null, i64 %call15, i32 0, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %28, i32 4, %struct._GParamSpec* %call16)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @gimp_marshal_VOID__ENUM_POINTER(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_undo_mode_get_type() #2

declare void @g_cclosure_marshal_VOID__ENUM(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_undo_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %undo = alloca %struct._GimpUndo*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_undo_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpUndo*
  store %struct._GimpUndo* %2, %struct._GimpUndo** %undo, align 8
  %3 = load i8*, i8** @gimp_undo_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 9
  %6 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_undo_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 80)
  %9 = bitcast %struct._GTypeClass* %call3 to %struct._GObjectClass*
  %constructed4 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  %10 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed4, align 8
  %11 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %10(%struct._GObject* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %12 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %image = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %12, i32 0, i32 1
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %14 = bitcast %struct._GimpImage* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst, align 8
  %call5 = call i64 @gimp_image_get_type() #8
  store i64 %call5, i64* %__t, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool6 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool6, label %if.else, label %if.then.7

if.then.7:                                        ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.14

if.else:                                          ; preds = %do.body
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool8 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool8, label %land.lhs.true, label %if.else.11

land.lhs.true:                                    ; preds = %if.else
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class9 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class9, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type, align 8
  %21 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %20, %21
  br i1 %cmp, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.13

if.else.11:                                       ; preds = %land.lhs.true, %if.else
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %23 = load i64, i64* %__t, align 8
  %call12 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #9
  store i32 %call12, i32* %__r, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.11, %if.then.10
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then.7
  %24 = load i32, i32* %__r, align 4
  store i32 %24, i32* %tmp
  %25 = load i32, i32* %tmp
  %tobool15 = icmp ne i32 %25, 0
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %if.end.14
  br label %if.end.18

if.else.17:                                       ; preds = %if.end.14
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i32 186, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_undo_constructed, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i32 0, i32 0)) #10
  unreachable

if.end.18:                                        ; preds = %if.then.16
  br label %do.end

do.end:                                           ; preds = %if.end.18
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_undo_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %undo = alloca %struct._GimpUndo*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_undo_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpUndo*
  store %struct._GimpUndo* %2, %struct._GimpUndo** %undo, align 8
  %3 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %preview_idle_id = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %3, i32 0, i32 6
  %4 = load i32, i32* %preview_idle_id, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %preview_idle_id2 = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %5, i32 0, i32 6
  %6 = load i32, i32* %preview_idle_id2, align 4
  %call3 = call i32 @g_source_remove(i32 %6)
  %7 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %preview_idle_id4 = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %7, i32 0, i32 6
  store i32 0, i32* %preview_idle_id4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %preview = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %8, i32 0, i32 5
  %9 = load %struct._TempBuf*, %struct._TempBuf** %preview, align 8
  %tobool5 = icmp ne %struct._TempBuf* %9, null
  br i1 %tobool5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.end
  %10 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %preview7 = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %10, i32 0, i32 5
  %11 = load %struct._TempBuf*, %struct._TempBuf** %preview7, align 8
  call void @temp_buf_free(%struct._TempBuf* %11)
  %12 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %preview8 = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %12, i32 0, i32 5
  store %struct._TempBuf* null, %struct._TempBuf** %preview8, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %if.end
  %13 = load i8*, i8** @gimp_undo_parent_class, align 8
  %14 = bitcast i8* %13 to %struct._GTypeClass*
  %call10 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %14, i64 80)
  %15 = bitcast %struct._GTypeClass* %call10 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %15, i32 0, i32 6
  %16 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %17 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %16(%struct._GObject* %17)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_undo_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %undo = alloca %struct._GimpUndo*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_undo_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpUndo*
  store %struct._GimpUndo* %2, %struct._GimpUndo** %undo, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.5
    i32 4, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_get_object(%struct._GValue* %4)
  %5 = bitcast i8* %call2 to %struct._GimpImage*
  %6 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %image = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %6, i32 0, i32 1
  store %struct._GimpImage* %5, %struct._GimpImage** %image, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i32 @g_value_get_uint(%struct._GValue* %7)
  %8 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %time = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %8, i32 0, i32 2
  store i32 %call4, i32* %time, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call i32 @g_value_get_enum(%struct._GValue* %9)
  %10 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %undo_type = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %10, i32 0, i32 3
  store i32 %call6, i32* %undo_type, align 4
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %11 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call8 = call i32 @g_value_get_flags(%struct._GValue* %11)
  %12 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %dirty_mask = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %12, i32 0, i32 4
  store i32 %call8, i32* %dirty_mask, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %13 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %13, %struct._GObject** %_glib__object, align 8
  %14 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %14, %struct._GParamSpec** %_glib__pspec, align 8
  %15 = load i32, i32* %property_id.addr, align 4
  store i32 %15, i32* %_glib__property_id, align 4
  %16 = load i32, i32* %_glib__property_id, align 4
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %17, i32 0, i32 1
  %18 = load i8*, i8** %name, align 8
  %19 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %20 = bitcast %struct._GParamSpec* %19 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type, align 8
  %call9 = call i8* @g_type_name(i64 %22)
  %23 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %24 = bitcast %struct._GObject* %23 to %struct._GTypeInstance*
  %g_class10 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %24, i32 0, i32 0
  %25 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class10, align 8
  %g_type11 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %25, i32 0, i32 0
  %26 = load i64, i64* %g_type11, align 8
  %call12 = call i8* @g_type_name(i64 %26)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i32 234, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i32 %16, i8* %18, i8* %call9, i8* %call12)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.7, %sw.bb.5, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_undo_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %undo = alloca %struct._GimpUndo*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_undo_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpUndo*
  store %struct._GimpUndo* %2, %struct._GimpUndo** %undo, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %image = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %5, i32 0, i32 1
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %7 = bitcast %struct._GimpImage* %6 to i8*
  call void @g_value_set_object(%struct._GValue* %4, i8* %7)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %9 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %time = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %9, i32 0, i32 2
  %10 = load i32, i32* %time, align 4
  call void @g_value_set_uint(%struct._GValue* %8, i32 %10)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %11 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %12 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %undo_type = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %12, i32 0, i32 3
  %13 = load i32, i32* %undo_type, align 4
  call void @g_value_set_enum(%struct._GValue* %11, i32 %13)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %14 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %15 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %dirty_mask = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %15, i32 0, i32 4
  %16 = load i32, i32* %dirty_mask, align 4
  call void @g_value_set_flags(%struct._GValue* %14, i32 %16)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %17 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %17, %struct._GObject** %_glib__object, align 8
  %18 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %18, %struct._GParamSpec** %_glib__pspec, align 8
  %19 = load i32, i32* %property_id.addr, align 4
  store i32 %19, i32* %_glib__property_id, align 4
  %20 = load i32, i32* %_glib__property_id, align 4
  %21 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %21, i32 0, i32 1
  %22 = load i8*, i8** %name, align 8
  %23 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %24 = bitcast %struct._GParamSpec* %23 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %24, i32 0, i32 0
  %25 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %25, i32 0, i32 0
  %26 = load i64, i64* %g_type, align 8
  %call5 = call i8* @g_type_name(i64 %26)
  %27 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %28 = bitcast %struct._GObject* %27 to %struct._GTypeInstance*
  %g_class6 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %28, i32 0, i32 0
  %29 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class6, align 8
  %g_type7 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %29, i32 0, i32 0
  %30 = load i64, i64* %g_type7, align 8
  %call8 = call i8* @g_type_name(i64 %30)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i32 263, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i32 %20, i8* %22, i8* %call5, i8* %call8)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @gimp_undo_get_memsize(%struct._GimpObject* %object, i64* %gui_size) #3 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %gui_size.addr = alloca i64*, align 8
  %undo = alloca %struct._GimpUndo*, align 8
  %memsize = alloca i64, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store i64* %gui_size, i64** %gui_size.addr, align 8
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %1 = bitcast %struct._GimpObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_undo_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpUndo*
  store %struct._GimpUndo* %2, %struct._GimpUndo** %undo, align 8
  store i64 0, i64* %memsize, align 8
  %3 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %preview = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %3, i32 0, i32 5
  %4 = load %struct._TempBuf*, %struct._TempBuf** %preview, align 8
  %call2 = call i64 @temp_buf_get_memsize(%struct._TempBuf* %4)
  %5 = load i64*, i64** %gui_size.addr, align 8
  %6 = load i64, i64* %5, align 8
  %add = add i64 %6, %call2
  store i64 %add, i64* %5, align 8
  %7 = load i64, i64* %memsize, align 8
  %8 = load i8*, i8** @gimp_undo_parent_class, align 8
  %9 = bitcast i8* %8 to %struct._GTypeClass*
  %call3 = call i64 @gimp_object_get_type() #8
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %9, i64 %call3)
  %10 = bitcast %struct._GTypeClass* %call4 to %struct._GimpObjectClass*
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %10, i32 0, i32 3
  %11 = load i64 (%struct._GimpObject*, i64*)*, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %12 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %13 = load i64*, i64** %gui_size.addr, align 8
  %call5 = call i64 %11(%struct._GimpObject* %12, i64* %13)
  %add6 = add nsw i64 %7, %call5
  ret i64 %add6
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_undo_get_popup_size(%struct._GimpViewable* %viewable, i32 %width, i32 %height, i32 %dot_for_dot, i32* %popup_width, i32* %popup_height) #3 {
entry:
  %retval = alloca i32, align 4
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %dot_for_dot.addr = alloca i32, align 4
  %popup_width.addr = alloca i32*, align 8
  %popup_height.addr = alloca i32*, align 8
  %undo = alloca %struct._GimpUndo*, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %dot_for_dot, i32* %dot_for_dot.addr, align 4
  store i32* %popup_width, i32** %popup_width.addr, align 8
  store i32* %popup_height, i32** %popup_height.addr, align 8
  %0 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %1 = bitcast %struct._GimpViewable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_undo_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpUndo*
  store %struct._GimpUndo* %2, %struct._GimpUndo** %undo, align 8
  %3 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %preview = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %3, i32 0, i32 5
  %4 = load %struct._TempBuf*, %struct._TempBuf** %preview, align 8
  %tobool = icmp ne %struct._TempBuf* %4, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %preview2 = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %5, i32 0, i32 5
  %6 = load %struct._TempBuf*, %struct._TempBuf** %preview2, align 8
  %width3 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %6, i32 0, i32 1
  %7 = load i32, i32* %width3, align 4
  %8 = load i32, i32* %width.addr, align 4
  %cmp = icmp sgt i32 %7, %8
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %9 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %preview4 = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %9, i32 0, i32 5
  %10 = load %struct._TempBuf*, %struct._TempBuf** %preview4, align 8
  %height5 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %10, i32 0, i32 2
  %11 = load i32, i32* %height5, align 4
  %12 = load i32, i32* %height.addr, align 4
  %cmp6 = icmp sgt i32 %11, %12
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %13 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %preview7 = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %13, i32 0, i32 5
  %14 = load %struct._TempBuf*, %struct._TempBuf** %preview7, align 8
  %width8 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %14, i32 0, i32 1
  %15 = load i32, i32* %width8, align 4
  %16 = load i32*, i32** %popup_width.addr, align 8
  store i32 %15, i32* %16, align 4
  %17 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %preview9 = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %17, i32 0, i32 5
  %18 = load %struct._TempBuf*, %struct._TempBuf** %preview9, align 8
  %height10 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %18, i32 0, i32 2
  %19 = load i32, i32* %height10, align 4
  %20 = load i32*, i32** %popup_height.addr, align 8
  store i32 %19, i32* %20, align 4
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal %struct._TempBuf* @gimp_undo_get_new_preview(%struct._GimpViewable* %viewable, %struct._GimpContext* %context, i32 %width, i32 %height) #3 {
entry:
  %retval = alloca %struct._TempBuf*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %undo = alloca %struct._GimpUndo*, align 8
  %preview_width = alloca i32, align 4
  %preview_height = alloca i32, align 4
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %1 = bitcast %struct._GimpViewable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_undo_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpUndo*
  store %struct._GimpUndo* %2, %struct._GimpUndo** %undo, align 8
  %3 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %preview = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %3, i32 0, i32 5
  %4 = load %struct._TempBuf*, %struct._TempBuf** %preview, align 8
  %tobool = icmp ne %struct._TempBuf* %4, null
  br i1 %tobool, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %preview2 = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %5, i32 0, i32 5
  %6 = load %struct._TempBuf*, %struct._TempBuf** %preview2, align 8
  %width3 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %6, i32 0, i32 1
  %7 = load i32, i32* %width3, align 4
  %8 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %preview4 = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %8, i32 0, i32 5
  %9 = load %struct._TempBuf*, %struct._TempBuf** %preview4, align 8
  %height5 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %9, i32 0, i32 2
  %10 = load i32, i32* %height5, align 4
  %11 = load i32, i32* %width.addr, align 4
  %12 = load i32, i32* %height.addr, align 4
  call void @gimp_viewable_calc_preview_size(i32 %7, i32 %10, i32 %11, i32 %12, i32 1, double 1.000000e+00, double 1.000000e+00, i32* %preview_width, i32* %preview_height, i32* null)
  %13 = load i32, i32* %preview_width, align 4
  %14 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %preview6 = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %14, i32 0, i32 5
  %15 = load %struct._TempBuf*, %struct._TempBuf** %preview6, align 8
  %width7 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %15, i32 0, i32 1
  %16 = load i32, i32* %width7, align 4
  %cmp = icmp slt i32 %13, %16
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %17 = load i32, i32* %preview_height, align 4
  %18 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %preview8 = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %18, i32 0, i32 5
  %19 = load %struct._TempBuf*, %struct._TempBuf** %preview8, align 8
  %height9 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %19, i32 0, i32 2
  %20 = load i32, i32* %height9, align 4
  %cmp10 = icmp slt i32 %17, %20
  br i1 %cmp10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %land.lhs.true
  %21 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %preview12 = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %21, i32 0, i32 5
  %22 = load %struct._TempBuf*, %struct._TempBuf** %preview12, align 8
  %23 = load i32, i32* %preview_width, align 4
  %24 = load i32, i32* %preview_height, align 4
  %call13 = call %struct._TempBuf* @temp_buf_scale(%struct._TempBuf* %22, i32 %23, i32 %24)
  store %struct._TempBuf* %call13, %struct._TempBuf** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %if.then
  %25 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %preview14 = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %25, i32 0, i32 5
  %26 = load %struct._TempBuf*, %struct._TempBuf** %preview14, align 8
  %call15 = call %struct._TempBuf* @temp_buf_copy(%struct._TempBuf* %26, %struct._TempBuf* null)
  store %struct._TempBuf* %call15, %struct._TempBuf** %retval
  br label %return

if.end.16:                                        ; preds = %entry
  store %struct._TempBuf* null, %struct._TempBuf** %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.end, %if.then.11
  %27 = load %struct._TempBuf*, %struct._TempBuf** %retval
  ret %struct._TempBuf* %27
}

; Function Attrs: nounwind uwtable
define internal void @gimp_undo_real_pop(%struct._GimpUndo* %undo, i32 %undo_mode, %struct._GimpUndoAccumulator* %accum) #3 {
entry:
  %undo.addr = alloca %struct._GimpUndo*, align 8
  %undo_mode.addr = alloca i32, align 4
  %accum.addr = alloca %struct._GimpUndoAccumulator*, align 8
  store %struct._GimpUndo* %undo, %struct._GimpUndo** %undo.addr, align 8
  store i32 %undo_mode, i32* %undo_mode.addr, align 4
  store %struct._GimpUndoAccumulator* %accum, %struct._GimpUndoAccumulator** %accum.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_undo_real_free(%struct._GimpUndo* %undo, i32 %undo_mode) #3 {
entry:
  %undo.addr = alloca %struct._GimpUndo*, align 8
  %undo_mode.addr = alloca i32, align 4
  store %struct._GimpUndo* %undo, %struct._GimpUndo** %undo.addr, align 8
  store i32 %undo_mode, i32* %undo_mode.addr, align 4
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #2

declare %struct._GParamSpec* @g_param_spec_uint(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_flags(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dirty_mask_get_type() #2

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #6

declare i32 @g_source_remove(i32) #1

declare i8* @g_value_get_object(%struct._GValue*) #1

declare i32 @g_value_get_uint(%struct._GValue*) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

declare i32 @g_value_get_flags(%struct._GValue*) #1

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #3 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_type_name(i64) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #7

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #7

declare void @g_value_set_object(%struct._GValue*, i8*) #1

declare void @g_value_set_uint(%struct._GValue*, i32) #1

declare void @g_value_set_enum(%struct._GValue*, i32) #1

declare void @g_value_set_flags(%struct._GValue*, i32) #1

declare i64 @temp_buf_get_memsize(%struct._TempBuf*) #1

declare void @gimp_viewable_calc_preview_size(i32, i32, i32, i32, i32, double, double, i32*, i32*, i32*) #1

declare %struct._TempBuf* @temp_buf_scale(%struct._TempBuf*, i32, i32) #1

declare %struct._TempBuf* @temp_buf_copy(%struct._TempBuf*, %struct._TempBuf*) #1

declare void @g_object_unref(i8*) #1

declare void @g_slice_free1(i64, i8*) #1

declare %struct._GimpUndoStack* @gimp_image_get_undo_stack(%struct._GimpImage*) #1

declare %struct._GimpUndo* @gimp_undo_stack_peek(%struct._GimpUndoStack*) #1

declare %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage*) #1

declare i32 @gimp_image_get_width(%struct._GimpImage*) #1

declare i32 @gimp_image_get_height(%struct._GimpImage*) #1

declare %struct._TempBuf* @gimp_viewable_get_new_preview(%struct._GimpViewable*, %struct._GimpContext*, i32, i32) #1

declare void @gimp_viewable_invalidate_preview(%struct._GimpViewable*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
