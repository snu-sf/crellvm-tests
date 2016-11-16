; ModuleID = './app/core/gimpimagefile.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpImagefileClass = type { %struct._GimpViewableClass, void (%struct._GimpImagefile*)* }
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
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
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
%struct._GimpImagefile = type { %struct._GimpViewable }
%struct._GimpTemplate = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpImagefilePrivate = type { %struct._Gimp*, %struct._GimpThumbnail*, %struct._GIcon*, %struct._GCancellable*, i8*, i32 }
%struct._GimpThumbnail = type { %struct._GObject, i32, i8*, i8*, i64, i64, i32, i32, i32, i8*, i32, i32, i32, i8*, i64, i64, i8*, i8* }
%struct._GIcon = type opaque
%struct._GCancellable = type { %struct._GObject, %struct._GCancellablePrivate* }
%struct._GCancellablePrivate = type opaque
%struct._GFile = type opaque
%struct._GAsyncResult = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GFileInfo = type opaque
%struct._GimpPlugInProcedure = type opaque
%struct._GimpEnumDesc = type { i32, i8*, i8* }
%struct._GEnumClass = type { %struct._GTypeClass, i32, i32, i32, %struct._GEnumValue* }
%struct._GEnumValue = type { i32, i8*, i8* }
%struct._GimpProjection = type opaque
%struct._GimpPickable = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }

@gimp_imagefile_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"GimpImagefile\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_imagefile_new = private unnamed_addr constant [19 x i8] c"gimp_imagefile_new\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@__func__.gimp_imagefile_get_thumbnail = private unnamed_addr constant [29 x i8] c"gimp_imagefile_get_thumbnail\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"GIMP_IS_IMAGEFILE (imagefile)\00", align 1
@__func__.gimp_imagefile_get_gicon = private unnamed_addr constant [25 x i8] c"gimp_imagefile_get_gicon\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"standard::icon\00", align 1
@__func__.gimp_imagefile_set_mime_type = private unnamed_addr constant [29 x i8] c"gimp_imagefile_set_mime_type\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"image-mimetype\00", align 1
@__func__.gimp_imagefile_update = private unnamed_addr constant [22 x i8] c"gimp_imagefile_update\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"image-uri\00", align 1
@__func__.gimp_imagefile_create_thumbnail = private unnamed_addr constant [32 x i8] c"gimp_imagefile_create_thumbnail\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"progress == NULL || GIMP_IS_PROGRESS (progress)\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"GIMP 2.8.18\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"thumb-state\00", align 1
@__func__.gimp_imagefile_create_thumbnail_weak = private unnamed_addr constant [37 x i8] c"gimp_imagefile_create_thumbnail_weak\00", align 1
@__func__.gimp_imagefile_check_thumbnail = private unnamed_addr constant [31 x i8] c"gimp_imagefile_check_thumbnail\00", align 1
@__func__.gimp_imagefile_save_thumbnail = private unnamed_addr constant [30 x i8] c"gimp_imagefile_save_thumbnail\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@__func__.gimp_imagefile_get_desc_string = private unnamed_addr constant [31 x i8] c"gimp_imagefile_get_desc_string\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"Folder\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"Special File\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"Remote File\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"Click to create preview\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"Loading preview...\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"Preview is out of date\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"Cannot create preview\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"(Preview may be out of date)\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"%d \C3\97 %d pixel\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"%d \C3\97 %d pixels\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"%d layer\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"%d layers\00", align 1
@gimp_imagefile_parent_class = internal global i8* null, align 8
@GimpImagefile_private_offset = internal global i32 0, align 4
@.str.25 = private unnamed_addr constant [13 x i8] c"info-changed\00", align 1
@gimp_imagefile_signals = internal global [1 x i32] zeroinitializer, align 4
@.str.26 = private unnamed_addr constant [11 x i8] c"gimp-%d.%d\00", align 1
@.str.27 = private unnamed_addr constant [34 x i8] c"Could not open thumbnail '%s': %s\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"%s\0A%s\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"%s (%d \C3\97 %d)\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"notify\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"image-state\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"image-width\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"image-height\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"image-type\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"image-num-layers\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_imagefile_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_imagefile_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_imagefile_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_viewable_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 288, void (i8*, i8*)* bitcast (void (i8*)* @gimp_imagefile_class_intern_init to void (i8*, i8*)*), i32 32, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpImagefile*)* @gimp_imagefile_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_imagefile_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_imagefile_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_imagefile_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_imagefile_parent_class, align 8
  %1 = load i32, i32* @GimpImagefile_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpImagefile_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpImagefileClass*
  call void @gimp_imagefile_class_init(%struct._GimpImagefileClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_imagefile_init(%struct._GimpImagefile* %imagefile) #3 {
entry:
  %imagefile.addr = alloca %struct._GimpImagefile*, align 8
  %private = alloca %struct._GimpImagefilePrivate*, align 8
  store %struct._GimpImagefile* %imagefile, %struct._GimpImagefile** %imagefile.addr, align 8
  %0 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile.addr, align 8
  %1 = bitcast %struct._GimpImagefile* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_imagefile_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpImagefilePrivate*
  store %struct._GimpImagefilePrivate* %2, %struct._GimpImagefilePrivate** %private, align 8
  %call2 = call %struct._GimpThumbnail* @gimp_thumbnail_new()
  %3 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %thumbnail = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %3, i32 0, i32 1
  store %struct._GimpThumbnail* %call2, %struct._GimpThumbnail** %thumbnail, align 8
  %4 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %thumbnail3 = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %4, i32 0, i32 1
  %5 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail3, align 8
  %6 = bitcast %struct._GimpThumbnail* %5 to i8*
  %7 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile.addr, align 8
  %8 = bitcast %struct._GimpImagefile* %7 to i8*
  %call4 = call i64 @g_signal_connect_object(i8* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImagefile*, %struct._GParamSpec*)* @gimp_imagefile_notify_thumbnail to void ()*), i8* %8, i32 2)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpImagefile* @gimp_imagefile_new(%struct._Gimp* %gimp, i8* %uri) #3 {
entry:
  %retval = alloca %struct._GimpImagefile*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %uri.addr = alloca i8*, align 8
  %imagefile = alloca %struct._GimpImagefile*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i8* %uri, i8** %uri.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_imagefile_new, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpImagefile* null, %struct._GimpImagefile** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_imagefile_get_type() #7
  %call12 = call i8* (i64, i8*, ...) @g_object_new(i64 %call11, i8* null)
  %13 = bitcast i8* %call12 to %struct._GimpImagefile*
  store %struct._GimpImagefile* %13, %struct._GimpImagefile** %imagefile, align 8
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %15 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  %16 = bitcast %struct._GimpImagefile* %15 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_imagefile_get_type() #7
  %call14 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %16, i64 %call13)
  %17 = bitcast i8* %call14 to %struct._GimpImagefilePrivate*
  %gimp15 = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %17, i32 0, i32 0
  store %struct._Gimp* %14, %struct._Gimp** %gimp15, align 8
  %18 = load i8*, i8** %uri.addr, align 8
  %tobool16 = icmp ne i8* %18, null
  br i1 %tobool16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %do.end
  %19 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  %20 = bitcast %struct._GimpImagefile* %19 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_object_get_type() #7
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call18)
  %21 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpObject*
  %22 = load i8*, i8** %uri.addr, align 8
  call void @gimp_object_set_name(%struct._GimpObject* %21, i8* %22)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %do.end
  %23 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  store %struct._GimpImagefile* %23, %struct._GimpImagefile** %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.else.9
  %24 = load %struct._GimpImagefile*, %struct._GimpImagefile** %retval
  ret %struct._GimpImagefile* %24
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

declare void @gimp_object_set_name(%struct._GimpObject*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

; Function Attrs: nounwind uwtable
define %struct._GimpThumbnail* @gimp_imagefile_get_thumbnail(%struct._GimpImagefile* %imagefile) #3 {
entry:
  %retval = alloca %struct._GimpThumbnail*, align 8
  %imagefile.addr = alloca %struct._GimpImagefile*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpImagefile* %imagefile, %struct._GimpImagefile** %imagefile.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile.addr, align 8
  %1 = bitcast %struct._GimpImagefile* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_imagefile_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_imagefile_get_thumbnail, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpThumbnail* null, %struct._GimpThumbnail** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile.addr, align 8
  %14 = bitcast %struct._GimpImagefile* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_imagefile_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpImagefilePrivate*
  %thumbnail = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %15, i32 0, i32 1
  %16 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  store %struct._GimpThumbnail* %16, %struct._GimpThumbnail** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %retval
  ret %struct._GimpThumbnail* %17
}

; Function Attrs: nounwind uwtable
define %struct._GIcon* @gimp_imagefile_get_gicon(%struct._GimpImagefile* %imagefile) #3 {
entry:
  %retval = alloca %struct._GIcon*, align 8
  %imagefile.addr = alloca %struct._GimpImagefile*, align 8
  %private = alloca %struct._GimpImagefilePrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %file = alloca %struct._GFile*, align 8
  store %struct._GimpImagefile* %imagefile, %struct._GimpImagefile** %imagefile.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile.addr, align 8
  %1 = bitcast %struct._GimpImagefile* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_imagefile_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_imagefile_get_gicon, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GIcon* null, %struct._GIcon** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile.addr, align 8
  %14 = bitcast %struct._GimpImagefile* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_imagefile_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpImagefilePrivate*
  store %struct._GimpImagefilePrivate* %15, %struct._GimpImagefilePrivate** %private, align 8
  %16 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %icon = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %16, i32 0, i32 2
  %17 = load %struct._GIcon*, %struct._GIcon** %icon, align 8
  %tobool13 = icmp ne %struct._GIcon* %17, null
  br i1 %tobool13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %do.end
  %18 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %icon15 = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %18, i32 0, i32 2
  %19 = load %struct._GIcon*, %struct._GIcon** %icon15, align 8
  store %struct._GIcon* %19, %struct._GIcon** %retval
  br label %return

if.end.16:                                        ; preds = %do.end
  %20 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %icon_cancellable = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %20, i32 0, i32 3
  %21 = load %struct._GCancellable*, %struct._GCancellable** %icon_cancellable, align 8
  %tobool17 = icmp ne %struct._GCancellable* %21, null
  br i1 %tobool17, label %if.end.25, label %if.then.18

if.then.18:                                       ; preds = %if.end.16
  %22 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile.addr, align 8
  %23 = bitcast %struct._GimpImagefile* %22 to i8*
  %call20 = call i8* @gimp_object_get_name(i8* %23)
  %call21 = call %struct._GFile* @g_file_new_for_uri(i8* %call20)
  store %struct._GFile* %call21, %struct._GFile** %file, align 8
  %call22 = call %struct._GCancellable* @g_cancellable_new()
  %24 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %icon_cancellable23 = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %24, i32 0, i32 3
  store %struct._GCancellable* %call22, %struct._GCancellable** %icon_cancellable23, align 8
  %25 = load %struct._GFile*, %struct._GFile** %file, align 8
  %26 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %icon_cancellable24 = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %26, i32 0, i32 3
  %27 = load %struct._GCancellable*, %struct._GCancellable** %icon_cancellable24, align 8
  %28 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile.addr, align 8
  %29 = bitcast %struct._GimpImagefile* %28 to i8*
  call void @g_file_query_info_async(%struct._GFile* %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i32 0, i32 0, %struct._GCancellable* %27, void (%struct._GObject*, %struct._GAsyncResult*, i8*)* @gimp_imagefile_icon_callback, i8* %29)
  %30 = load %struct._GFile*, %struct._GFile** %file, align 8
  %31 = bitcast %struct._GFile* %30 to i8*
  call void @g_object_unref(i8* %31)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.18, %if.end.16
  store %struct._GIcon* null, %struct._GIcon** %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then.14, %if.else.9
  %32 = load %struct._GIcon*, %struct._GIcon** %retval
  ret %struct._GIcon* %32
}

declare %struct._GFile* @g_file_new_for_uri(i8*) #1

declare i8* @gimp_object_get_name(i8*) #1

declare %struct._GCancellable* @g_cancellable_new() #1

declare void @g_file_query_info_async(%struct._GFile*, i8*, i32, i32, %struct._GCancellable*, void (%struct._GObject*, %struct._GAsyncResult*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_imagefile_icon_callback(%struct._GObject* %source_object, %struct._GAsyncResult* %result, i8* %data) #3 {
entry:
  %source_object.addr = alloca %struct._GObject*, align 8
  %result.addr = alloca %struct._GAsyncResult*, align 8
  %data.addr = alloca i8*, align 8
  %imagefile = alloca %struct._GimpImagefile*, align 8
  %private = alloca %struct._GimpImagefilePrivate*, align 8
  %file = alloca %struct._GFile*, align 8
  %error = alloca %struct._GError*, align 8
  %file_info = alloca %struct._GFileInfo*, align 8
  store %struct._GObject* %source_object, %struct._GObject** %source_object.addr, align 8
  store %struct._GAsyncResult* %result, %struct._GAsyncResult** %result.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %source_object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @g_file_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GFile*
  store %struct._GFile* %2, %struct._GFile** %file, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  %3 = load %struct._GFile*, %struct._GFile** %file, align 8
  %4 = load %struct._GAsyncResult*, %struct._GAsyncResult** %result.addr, align 8
  %call2 = call %struct._GFileInfo* @g_file_query_info_finish(%struct._GFile* %3, %struct._GAsyncResult* %4, %struct._GError** %error)
  store %struct._GFileInfo* %call2, %struct._GFileInfo** %file_info, align 8
  %5 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool = icmp ne %struct._GError* %5, null
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %6 = load %struct._GError*, %struct._GError** %error, align 8
  %call3 = call i32 @g_io_error_quark()
  %call4 = call i32 @g_error_matches(%struct._GError* %6, i32 %call3, i32 19)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  call void @g_clear_error(%struct._GError** %error)
  br label %if.end.27

if.end:                                           ; preds = %if.then
  call void @g_clear_error(%struct._GError** %error)
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  %7 = load i8*, i8** %data.addr, align 8
  %8 = bitcast i8* %7 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_imagefile_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call8)
  %9 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpImagefile*
  store %struct._GimpImagefile* %9, %struct._GimpImagefile** %imagefile, align 8
  %10 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  %11 = bitcast %struct._GimpImagefile* %10 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_imagefile_get_type() #7
  %call11 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %11, i64 %call10)
  %12 = bitcast i8* %call11 to %struct._GimpImagefilePrivate*
  store %struct._GimpImagefilePrivate* %12, %struct._GimpImagefilePrivate** %private, align 8
  %13 = load %struct._GFileInfo*, %struct._GFileInfo** %file_info, align 8
  %tobool12 = icmp ne %struct._GFileInfo* %13, null
  br i1 %tobool12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %if.end.7
  %14 = load %struct._GFileInfo*, %struct._GFileInfo** %file_info, align 8
  %call14 = call %struct._GIcon* @g_file_info_get_icon(%struct._GFileInfo* %14)
  %15 = bitcast %struct._GIcon* %call14 to i8*
  %call15 = call i8* @g_object_ref(i8* %15)
  %16 = bitcast i8* %call15 to %struct._GIcon*
  %17 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %icon = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %17, i32 0, i32 2
  store %struct._GIcon* %16, %struct._GIcon** %icon, align 8
  %18 = load %struct._GFileInfo*, %struct._GFileInfo** %file_info, align 8
  %19 = bitcast %struct._GFileInfo* %18 to i8*
  call void @g_object_unref(i8* %19)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %if.end.7
  %20 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %icon_cancellable = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %20, i32 0, i32 3
  %21 = load %struct._GCancellable*, %struct._GCancellable** %icon_cancellable, align 8
  %tobool17 = icmp ne %struct._GCancellable* %21, null
  br i1 %tobool17, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %if.end.16
  %22 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %icon_cancellable19 = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %22, i32 0, i32 3
  %23 = load %struct._GCancellable*, %struct._GCancellable** %icon_cancellable19, align 8
  %24 = bitcast %struct._GCancellable* %23 to i8*
  call void @g_object_unref(i8* %24)
  %25 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %icon_cancellable20 = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %25, i32 0, i32 3
  store %struct._GCancellable* null, %struct._GCancellable** %icon_cancellable20, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.18, %if.end.16
  %26 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %icon22 = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %26, i32 0, i32 2
  %27 = load %struct._GIcon*, %struct._GIcon** %icon22, align 8
  %tobool23 = icmp ne %struct._GIcon* %27, null
  br i1 %tobool23, label %if.then.24, label %if.end.27

if.then.24:                                       ; preds = %if.end.21
  %28 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  %29 = bitcast %struct._GimpImagefile* %28 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_viewable_get_type() #7
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call25)
  %30 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpViewable*
  call void @gimp_viewable_invalidate_preview(%struct._GimpViewable* %30)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.6, %if.then.24, %if.end.21
  ret void
}

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_imagefile_set_mime_type(%struct._GimpImagefile* %imagefile, i8* %mime_type) #3 {
entry:
  %imagefile.addr = alloca %struct._GimpImagefile*, align 8
  %mime_type.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpImagefile* %imagefile, %struct._GimpImagefile** %imagefile.addr, align 8
  store i8* %mime_type, i8** %mime_type.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile.addr, align 8
  %1 = bitcast %struct._GimpImagefile* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_imagefile_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_imagefile_set_mime_type, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile.addr, align 8
  %14 = bitcast %struct._GimpImagefile* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_imagefile_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpImagefilePrivate*
  %thumbnail = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %15, i32 0, i32 1
  %16 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %17 = bitcast %struct._GimpThumbnail* %16 to i8*
  %18 = load i8*, i8** %mime_type.addr, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i8* %18, i8* null)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

declare void @g_object_set(i8*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_imagefile_update(%struct._GimpImagefile* %imagefile) #3 {
entry:
  %imagefile.addr = alloca %struct._GimpImagefile*, align 8
  %private = alloca %struct._GimpImagefilePrivate*, align 8
  %uri = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %documents_imagefile = alloca %struct._GimpImagefile*, align 8
  %__inst22 = alloca %struct._GTypeInstance*, align 8
  %__t24 = alloca i64, align 8
  %__r27 = alloca i32, align 4
  %tmp42 = alloca i32, align 4
  store %struct._GimpImagefile* %imagefile, %struct._GimpImagefile** %imagefile.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile.addr, align 8
  %1 = bitcast %struct._GimpImagefile* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_imagefile_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_imagefile_update, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.48

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile.addr, align 8
  %14 = bitcast %struct._GimpImagefile* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_imagefile_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpImagefilePrivate*
  store %struct._GimpImagefilePrivate* %15, %struct._GimpImagefilePrivate** %private, align 8
  %16 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile.addr, align 8
  %17 = bitcast %struct._GimpImagefile* %16 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_viewable_get_type() #7
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call13)
  %18 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpViewable*
  call void @gimp_viewable_invalidate_preview(%struct._GimpViewable* %18)
  %19 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %thumbnail = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %19, i32 0, i32 1
  %20 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %21 = bitcast %struct._GimpThumbnail* %20 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8** %uri, i8* null)
  %22 = load i8*, i8** %uri, align 8
  %tobool15 = icmp ne i8* %22, null
  br i1 %tobool15, label %if.then.16, label %if.end.48

if.then.16:                                       ; preds = %do.end
  %23 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %gimp = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %23, i32 0, i32 0
  %24 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %documents = getelementptr inbounds %struct._Gimp, %struct._Gimp* %24, i32 0, i32 47
  %25 = load %struct._GimpContainer*, %struct._GimpContainer** %documents, align 8
  %26 = load i8*, i8** %uri, align 8
  %call18 = call %struct._GimpObject* @gimp_container_get_child_by_name(%struct._GimpContainer* %25, i8* %26)
  %27 = bitcast %struct._GimpObject* %call18 to %struct._GimpImagefile*
  store %struct._GimpImagefile* %27, %struct._GimpImagefile** %documents_imagefile, align 8
  %28 = load %struct._GimpImagefile*, %struct._GimpImagefile** %documents_imagefile, align 8
  %29 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile.addr, align 8
  %cmp19 = icmp ne %struct._GimpImagefile* %28, %29
  br i1 %cmp19, label %land.lhs.true.20, label %if.end.47

land.lhs.true.20:                                 ; preds = %if.then.16
  %30 = load %struct._GimpImagefile*, %struct._GimpImagefile** %documents_imagefile, align 8
  %31 = bitcast %struct._GimpImagefile* %30 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %31, %struct._GTypeInstance** %__inst22, align 8
  %call25 = call i64 @gimp_imagefile_get_type() #7
  store i64 %call25, i64* %__t24, align 8
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %tobool28 = icmp ne %struct._GTypeInstance* %32, null
  br i1 %tobool28, label %if.else.30, label %if.then.29

if.then.29:                                       ; preds = %land.lhs.true.20
  store i32 0, i32* %__r27, align 4
  br label %if.end.41

if.else.30:                                       ; preds = %land.lhs.true.20
  %33 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %g_class31 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %33, i32 0, i32 0
  %34 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class31, align 8
  %tobool32 = icmp ne %struct._GTypeClass* %34, null
  br i1 %tobool32, label %land.lhs.true.33, label %if.else.38

land.lhs.true.33:                                 ; preds = %if.else.30
  %35 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %g_class34 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %35, i32 0, i32 0
  %36 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class34, align 8
  %g_type35 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %36, i32 0, i32 0
  %37 = load i64, i64* %g_type35, align 8
  %38 = load i64, i64* %__t24, align 8
  %cmp36 = icmp eq i64 %37, %38
  br i1 %cmp36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %land.lhs.true.33
  store i32 1, i32* %__r27, align 4
  br label %if.end.40

if.else.38:                                       ; preds = %land.lhs.true.33, %if.else.30
  %39 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %40 = load i64, i64* %__t24, align 8
  %call39 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %39, i64 %40) #8
  store i32 %call39, i32* %__r27, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.38, %if.then.37
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.29
  %41 = load i32, i32* %__r27, align 4
  store i32 %41, i32* %tmp42
  %42 = load i32, i32* %tmp42
  %tobool43 = icmp ne i32 %42, 0
  br i1 %tobool43, label %if.then.44, label %if.end.47

if.then.44:                                       ; preds = %if.end.41
  %43 = load %struct._GimpImagefile*, %struct._GimpImagefile** %documents_imagefile, align 8
  %44 = bitcast %struct._GimpImagefile* %43 to %struct._GTypeInstance*
  %call45 = call i64 @gimp_viewable_get_type() #7
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call45)
  %45 = bitcast %struct._GTypeInstance* %call46 to %struct._GimpViewable*
  call void @gimp_viewable_invalidate_preview(%struct._GimpViewable* %45)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.44, %if.end.41, %if.then.16
  %46 = load i8*, i8** %uri, align 8
  call void @g_free(i8* %46)
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.9, %if.end.47, %do.end
  ret void
}

declare void @gimp_viewable_invalidate_preview(%struct._GimpViewable*) #1

declare void @g_object_get(i8*, i8*, ...) #1

declare %struct._GimpObject* @gimp_container_get_child_by_name(%struct._GimpContainer*, i8*) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_imagefile_create_thumbnail(%struct._GimpImagefile* %imagefile, %struct._GimpContext* %context, %struct._GimpProgress* %progress, i32 %size, i32 %replace) #3 {
entry:
  %retval = alloca i32, align 4
  %imagefile.addr = alloca %struct._GimpImagefile*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %size.addr = alloca i32, align 4
  %replace.addr = alloca i32, align 4
  %private = alloca %struct._GimpImagefilePrivate*, align 8
  %thumbnail = alloca %struct._GimpThumbnail*, align 8
  %image_state = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %__inst42 = alloca %struct._GTypeInstance*, align 8
  %__t44 = alloca i64, align 8
  %__r47 = alloca i32, align 4
  %tmp62 = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %success = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %mime_type = alloca i8*, align 8
  %error = alloca %struct._GError*, align 8
  %type = alloca i32, align 4
  %num_layers = alloca i32, align 4
  %status = alloca i32, align 4
  store %struct._GimpImagefile* %imagefile, %struct._GimpImagefile** %imagefile.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 %replace, i32* %replace.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile.addr, align 8
  %1 = bitcast %struct._GimpImagefile* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_imagefile_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_imagefile_create_thumbnail, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_context_get_type() #7
  store i64 %call16, i64* %__t15, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type26, align 8
  %21 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %23 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #8
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %24 = load i32, i32* %__r18, align 4
  store i32 %24, i32* %tmp33
  %25 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_imagefile_create_thumbnail, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %cmp40 = icmp eq %struct._GimpProgress* %26, null
  br i1 %cmp40, label %if.then.64, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.39
  %27 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %28 = bitcast %struct._GimpProgress* %27 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %28, %struct._GTypeInstance** %__inst42, align 8
  %call45 = call i64 @gimp_progress_interface_get_type() #7
  store i64 %call45, i64* %__t44, align 8
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %tobool48 = icmp ne %struct._GTypeInstance* %29, null
  br i1 %tobool48, label %if.else.50, label %if.then.49

if.then.49:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r47, align 4
  br label %if.end.61

if.else.50:                                       ; preds = %lor.lhs.false
  %30 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %g_class51 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %30, i32 0, i32 0
  %31 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class51, align 8
  %tobool52 = icmp ne %struct._GTypeClass* %31, null
  br i1 %tobool52, label %land.lhs.true.53, label %if.else.58

land.lhs.true.53:                                 ; preds = %if.else.50
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %g_class54 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class54, align 8
  %g_type55 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %33, i32 0, i32 0
  %34 = load i64, i64* %g_type55, align 8
  %35 = load i64, i64* %__t44, align 8
  %cmp56 = icmp eq i64 %34, %35
  br i1 %cmp56, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %land.lhs.true.53
  store i32 1, i32* %__r47, align 4
  br label %if.end.60

if.else.58:                                       ; preds = %land.lhs.true.53, %if.else.50
  %36 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %37 = load i64, i64* %__t44, align 8
  %call59 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %36, i64 %37) #8
  store i32 %call59, i32* %__r47, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.58, %if.then.57
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.49
  %38 = load i32, i32* %__r47, align 4
  store i32 %38, i32* %tmp62
  %39 = load i32, i32* %tmp62
  %tobool63 = icmp ne i32 %39, 0
  br i1 %tobool63, label %if.then.64, label %if.else.65

if.then.64:                                       ; preds = %if.end.61, %do.body.39
  br label %if.end.66

if.else.65:                                       ; preds = %if.end.61
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_imagefile_create_thumbnail, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.66:                                        ; preds = %if.then.64
  br label %do.end.67

do.end.67:                                        ; preds = %if.end.66
  %40 = load i32, i32* %size.addr, align 4
  %cmp68 = icmp slt i32 %40, 1
  br i1 %cmp68, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %do.end.67
  store i32 1, i32* %retval
  br label %return

if.end.70:                                        ; preds = %do.end.67
  %41 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile.addr, align 8
  %42 = bitcast %struct._GimpImagefile* %41 to %struct._GTypeInstance*
  %call71 = call i64 @gimp_imagefile_get_type() #7
  %call72 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %42, i64 %call71)
  %43 = bitcast i8* %call72 to %struct._GimpImagefilePrivate*
  store %struct._GimpImagefilePrivate* %43, %struct._GimpImagefilePrivate** %private, align 8
  %44 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %thumbnail73 = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %44, i32 0, i32 1
  %45 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail73, align 8
  store %struct._GimpThumbnail* %45, %struct._GimpThumbnail** %thumbnail, align 8
  %46 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %47 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile.addr, align 8
  %48 = bitcast %struct._GimpImagefile* %47 to i8*
  %call74 = call i8* @gimp_object_get_name(i8* %48)
  call void @gimp_thumbnail_set_uri(%struct._GimpThumbnail* %46, i8* %call74)
  %49 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %call75 = call i32 @gimp_thumbnail_peek_image(%struct._GimpThumbnail* %49)
  store i32 %call75, i32* %image_state, align 4
  %50 = load i32, i32* %image_state, align 4
  %cmp76 = icmp eq i32 %50, 1
  br i1 %cmp76, label %if.then.79, label %lor.lhs.false.77

lor.lhs.false.77:                                 ; preds = %if.end.70
  %51 = load i32, i32* %image_state, align 4
  %cmp78 = icmp uge i32 %51, 5
  br i1 %cmp78, label %if.then.79, label %if.end.115

if.then.79:                                       ; preds = %lor.lhs.false.77, %if.end.70
  store i32 0, i32* %width, align 4
  store i32 0, i32* %height, align 4
  store i8* null, i8** %mime_type, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  store i32 -1, i32* %type, align 4
  store i32 -1, i32* %num_layers, align 4
  %52 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile.addr, align 8
  %53 = bitcast %struct._GimpImagefile* %52 to i8*
  %call88 = call i8* @g_object_ref(i8* %53)
  %54 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %gimp = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %54, i32 0, i32 0
  %55 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %56 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %57 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %58 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_uri = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %58, i32 0, i32 2
  %59 = load i8*, i8** %image_uri, align 8
  %60 = load i32, i32* %size.addr, align 4
  %call89 = call %struct._GimpImage* @file_open_thumbnail(%struct._Gimp* %55, %struct._GimpContext* %56, %struct._GimpProgress* %57, i8* %59, i32 %60, i8** %mime_type, i32* %width, i32* %height, i32* %type, i32* %num_layers, %struct._GError** null)
  store %struct._GimpImage* %call89, %struct._GimpImage** %image, align 8
  %61 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool90 = icmp ne %struct._GimpImage* %61, null
  br i1 %tobool90, label %if.then.91, label %if.else.93

if.then.91:                                       ; preds = %if.then.79
  %62 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %thumbnail92 = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %62, i32 0, i32 1
  %63 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail92, align 8
  %64 = load i8*, i8** %mime_type, align 8
  %65 = load i32, i32* %width, align 4
  %66 = load i32, i32* %height, align 4
  %67 = load i32, i32* %type, align 4
  %68 = load i32, i32* %num_layers, align 4
  call void @gimp_thumbnail_set_info(%struct._GimpThumbnail* %63, i8* %64, i32 %65, i32 %66, i32 %67, i32 %68)
  br label %if.end.103

if.else.93:                                       ; preds = %if.then.79
  %69 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %gimp95 = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %69, i32 0, i32 0
  %70 = load %struct._Gimp*, %struct._Gimp** %gimp95, align 8
  %71 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %72 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %73 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_uri96 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %73, i32 0, i32 2
  %74 = load i8*, i8** %image_uri96, align 8
  %75 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_uri97 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %75, i32 0, i32 2
  %76 = load i8*, i8** %image_uri97, align 8
  %call98 = call %struct._GimpImage* @file_open_image(%struct._Gimp* %70, %struct._GimpContext* %71, %struct._GimpProgress* %72, i8* %74, i8* %76, i32 0, %struct._GimpPlugInProcedure* null, i32 1, i32* %status, i8** %mime_type, %struct._GError** null)
  store %struct._GimpImage* %call98, %struct._GimpImage** %image, align 8
  %77 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool99 = icmp ne %struct._GimpImage* %77, null
  br i1 %tobool99, label %if.then.100, label %if.end.102

if.then.100:                                      ; preds = %if.else.93
  %78 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %thumbnail101 = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %78, i32 0, i32 1
  %79 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail101, align 8
  %80 = load i8*, i8** %mime_type, align 8
  %81 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_thumbnail_set_info_from_image(%struct._GimpThumbnail* %79, i8* %80, %struct._GimpImage* %81)
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.100, %if.else.93
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %if.then.91
  %82 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool104 = icmp ne %struct._GimpImage* %82, null
  br i1 %tobool104, label %if.then.105, label %if.else.107

if.then.105:                                      ; preds = %if.end.103
  %83 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile.addr, align 8
  %84 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %85 = load i32, i32* %size.addr, align 4
  %86 = load i32, i32* %replace.addr, align 4
  %call106 = call i32 @gimp_imagefile_save_thumb(%struct._GimpImagefile* %83, %struct._GimpImage* %84, i32 %85, i32 %86, %struct._GError** %error)
  store i32 %call106, i32* %success, align 4
  %87 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %88 = bitcast %struct._GimpImage* %87 to i8*
  call void @g_object_unref(i8* %88)
  br label %if.end.109

if.else.107:                                      ; preds = %if.end.103
  %89 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %call108 = call i32 @gimp_thumbnail_save_failure(%struct._GimpThumbnail* %89, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), %struct._GError** %error)
  store i32 %call108, i32* %success, align 4
  %90 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile.addr, align 8
  call void @gimp_imagefile_update(%struct._GimpImagefile* %90)
  br label %if.end.109

if.end.109:                                       ; preds = %if.else.107, %if.then.105
  %91 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile.addr, align 8
  %92 = bitcast %struct._GimpImagefile* %91 to i8*
  call void @g_object_unref(i8* %92)
  %93 = load i32, i32* %success, align 4
  %tobool110 = icmp ne i32 %93, 0
  br i1 %tobool110, label %if.end.114, label %if.then.111

if.then.111:                                      ; preds = %if.end.109
  %94 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %gimp112 = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %94, i32 0, i32 0
  %95 = load %struct._Gimp*, %struct._Gimp** %gimp112, align 8
  %96 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %97 = bitcast %struct._GimpProgress* %96 to %struct._GTypeInstance*
  %call113 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %97, i64 80)
  %98 = bitcast %struct._GTypeInstance* %call113 to %struct._GObject*
  %99 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %99, i32 0, i32 2
  %100 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %95, %struct._GObject* %98, i32 2, i8* %100)
  call void @g_clear_error(%struct._GError** %error)
  %101 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %102 = bitcast %struct._GimpThumbnail* %101 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %102, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i32 7, i8* null)
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.111, %if.end.109
  %103 = load i32, i32* %success, align 4
  store i32 %103, i32* %retval
  br label %return

if.end.115:                                       ; preds = %lor.lhs.false.77
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.115, %if.end.114, %if.then.69, %if.else.65, %if.else.36, %if.else.9
  %104 = load i32, i32* %retval
  ret i32 %104
}

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_progress_interface_get_type() #2

declare void @gimp_thumbnail_set_uri(%struct._GimpThumbnail*, i8*) #1

declare i32 @gimp_thumbnail_peek_image(%struct._GimpThumbnail*) #1

declare i8* @g_object_ref(i8*) #1

declare %struct._GimpImage* @file_open_thumbnail(%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, i8*, i32, i8**, i32*, i32*, i32*, i32*, %struct._GError**) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_thumbnail_set_info(%struct._GimpThumbnail* %thumbnail, i8* %mime_type, i32 %width, i32 %height, i32 %type, i32 %num_layers) #3 {
entry:
  %thumbnail.addr = alloca %struct._GimpThumbnail*, align 8
  %mime_type.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %num_layers.addr = alloca i32, align 4
  %desc = alloca %struct._GimpEnumDesc*, align 8
  store %struct._GimpThumbnail* %thumbnail, %struct._GimpThumbnail** %thumbnail.addr, align 8
  store i8* %mime_type, i8** %mime_type.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %type, i32* %type.addr, align 4
  store i32 %num_layers, i32* %num_layers.addr, align 4
  %0 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %call = call i32 @gimp_thumbnail_peek_image(%struct._GimpThumbnail* %0)
  %1 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %2 = bitcast %struct._GimpThumbnail* %1 to i8*
  %3 = load i8*, i8** %mime_type.addr, align 8
  %4 = load i32, i32* %width.addr, align 4
  %5 = load i32, i32* %height.addr, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i8* %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i32 0, i32 0), i32 %5, i8* null)
  %6 = load i32, i32* %type.addr, align 4
  %cmp = icmp ne i32 %6, -1
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %call1 = call i64 @gimp_image_type_get_type() #7
  %call2 = call i8* @g_type_class_peek(i64 %call1)
  %7 = bitcast i8* %call2 to %struct._GEnumClass*
  %8 = load i32, i32* %type.addr, align 4
  %call3 = call %struct._GimpEnumDesc* @gimp_enum_get_desc(%struct._GEnumClass* %7, i32 %8)
  store %struct._GimpEnumDesc* %call3, %struct._GimpEnumDesc** %desc, align 8
  %9 = load %struct._GimpEnumDesc*, %struct._GimpEnumDesc** %desc, align 8
  %tobool = icmp ne %struct._GimpEnumDesc* %9, null
  br i1 %tobool, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %10 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %11 = bitcast %struct._GimpThumbnail* %10 to i8*
  %12 = load %struct._GimpEnumDesc*, %struct._GimpEnumDesc** %desc, align 8
  %value_desc = getelementptr inbounds %struct._GimpEnumDesc, %struct._GimpEnumDesc* %12, i32 0, i32 1
  %13 = load i8*, i8** %value_desc, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0), i8* %13, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %14 = load i32, i32* %num_layers.addr, align 4
  %cmp6 = icmp ne i32 %14, -1
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.5
  %15 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %16 = bitcast %struct._GimpThumbnail* %15 to i8*
  %17 = load i32, i32* %num_layers.addr, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i32 0, i32 0), i32 %17, i8* null)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.5
  ret void
}

declare %struct._GimpImage* @file_open_image(%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, i8*, i8*, i32, %struct._GimpPlugInProcedure*, i32, i32*, i8**, %struct._GError**) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_thumbnail_set_info_from_image(%struct._GimpThumbnail* %thumbnail, i8* %mime_type, %struct._GimpImage* %image) #3 {
entry:
  %thumbnail.addr = alloca %struct._GimpThumbnail*, align 8
  %mime_type.addr = alloca i8*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %desc = alloca %struct._GimpEnumDesc*, align 8
  %type = alloca i32, align 4
  store %struct._GimpThumbnail* %thumbnail, %struct._GimpThumbnail** %thumbnail.addr, align 8
  store i8* %mime_type, i8** %mime_type.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  %0 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %call = call i32 @gimp_thumbnail_peek_image(%struct._GimpThumbnail* %0)
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call1 = call i32 @gimp_image_base_type(%struct._GimpImage* %1)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.9

cond.false:                                       ; preds = %entry
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call2 = call i32 @gimp_image_base_type(%struct._GimpImage* %2)
  %cmp3 = icmp eq i32 %call2, 1
  br i1 %cmp3, label %cond.true.4, label %cond.false.5

cond.true.4:                                      ; preds = %cond.false
  br label %cond.end

cond.false.5:                                     ; preds = %cond.false
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call6 = call i32 @gimp_image_base_type(%struct._GimpImage* %3)
  %cmp7 = icmp eq i32 %call6, 2
  %cond = select i1 %cmp7, i32 4, i32 -1
  br label %cond.end

cond.end:                                         ; preds = %cond.false.5, %cond.true.4
  %cond8 = phi i32 [ 2, %cond.true.4 ], [ %cond, %cond.false.5 ]
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.end, %cond.true
  %cond10 = phi i32 [ 0, %cond.true ], [ %cond8, %cond.end ]
  store i32 %cond10, i32* %type, align 4
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call11 = call i32 @gimp_image_has_alpha(%struct._GimpImage* %4)
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.9
  %5 = load i32, i32* %type, align 4
  %cmp12 = icmp eq i32 %5, 0
  br i1 %cmp12, label %cond.true.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %6 = load i32, i32* %type, align 4
  %cmp13 = icmp eq i32 %6, 1
  br i1 %cmp13, label %cond.true.14, label %cond.false.15

cond.true.14:                                     ; preds = %lor.lhs.false, %if.then
  br label %cond.end.26

cond.false.15:                                    ; preds = %lor.lhs.false
  %7 = load i32, i32* %type, align 4
  %cmp16 = icmp eq i32 %7, 2
  br i1 %cmp16, label %cond.true.19, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %cond.false.15
  %8 = load i32, i32* %type, align 4
  %cmp18 = icmp eq i32 %8, 3
  br i1 %cmp18, label %cond.true.19, label %cond.false.20

cond.true.19:                                     ; preds = %lor.lhs.false.17, %cond.false.15
  br label %cond.end.24

cond.false.20:                                    ; preds = %lor.lhs.false.17
  %9 = load i32, i32* %type, align 4
  %cmp21 = icmp eq i32 %9, 4
  br i1 %cmp21, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.false.20
  %10 = load i32, i32* %type, align 4
  %cmp22 = icmp eq i32 %10, 5
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.false.20
  %11 = phi i1 [ true, %cond.false.20 ], [ %cmp22, %lor.rhs ]
  %cond23 = select i1 %11, i32 5, i32 -1
  br label %cond.end.24

cond.end.24:                                      ; preds = %lor.end, %cond.true.19
  %cond25 = phi i32 [ 3, %cond.true.19 ], [ %cond23, %lor.end ]
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.end.24, %cond.true.14
  %cond27 = phi i32 [ 1, %cond.true.14 ], [ %cond25, %cond.end.24 ]
  store i32 %cond27, i32* %type, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end.26, %cond.end.9
  %call28 = call i64 @gimp_image_type_get_type() #7
  %call29 = call i8* @g_type_class_peek(i64 %call28)
  %12 = bitcast i8* %call29 to %struct._GEnumClass*
  %13 = load i32, i32* %type, align 4
  %call30 = call %struct._GimpEnumDesc* @gimp_enum_get_desc(%struct._GEnumClass* %12, i32 %13)
  store %struct._GimpEnumDesc* %call30, %struct._GimpEnumDesc** %desc, align 8
  %14 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %15 = bitcast %struct._GimpThumbnail* %14 to i8*
  %16 = load i8*, i8** %mime_type.addr, align 8
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call31 = call i32 @gimp_image_get_width(%struct._GimpImage* %17)
  %18 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call32 = call i32 @gimp_image_get_height(%struct._GimpImage* %18)
  %19 = load %struct._GimpEnumDesc*, %struct._GimpEnumDesc** %desc, align 8
  %value_desc = getelementptr inbounds %struct._GimpEnumDesc, %struct._GimpEnumDesc* %19, i32 0, i32 1
  %20 = load i8*, i8** %value_desc, align 8
  %21 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call33 = call i32 @gimp_image_get_n_layers(%struct._GimpImage* %21)
  call void (i8*, i8*, ...) @g_object_set(i8* %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i8* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 %call31, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i32 0, i32 0), i32 %call32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0), i8* %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i32 0, i32 0), i32 %call33, i8* null)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_imagefile_save_thumb(%struct._GimpImagefile* %imagefile, %struct._GimpImage* %image, i32 %size, i32 %replace, %struct._GError** %error) #3 {
entry:
  %retval = alloca i32, align 4
  %imagefile.addr = alloca %struct._GimpImagefile*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %size.addr = alloca i32, align 4
  %replace.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %private = alloca %struct._GimpImagefilePrivate*, align 8
  %thumbnail = alloca %struct._GimpThumbnail*, align 8
  %pixbuf = alloca %struct._GdkPixbuf*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %success = alloca i32, align 4
  store %struct._GimpImagefile* %imagefile, %struct._GimpImagefile** %imagefile.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 %replace, i32* %replace.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile.addr, align 8
  %1 = bitcast %struct._GimpImagefile* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_imagefile_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpImagefilePrivate*
  store %struct._GimpImagefilePrivate* %2, %struct._GimpImagefilePrivate** %private, align 8
  %3 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %thumbnail2 = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %3, i32 0, i32 1
  %4 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail2, align 8
  store %struct._GimpThumbnail* %4, %struct._GimpThumbnail** %thumbnail, align 8
  store i32 0, i32* %success, align 4
  %5 = load i32, i32* %size.addr, align 4
  %cmp = icmp slt i32 %5, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call3 = call i32 @gimp_image_get_width(%struct._GimpImage* %6)
  %7 = load i32, i32* %size.addr, align 4
  %cmp4 = icmp sle i32 %call3, %7
  br i1 %cmp4, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call5 = call i32 @gimp_image_get_height(%struct._GimpImage* %8)
  %9 = load i32, i32* %size.addr, align 4
  %cmp6 = icmp sle i32 %call5, %9
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %land.lhs.true
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call8 = call i32 @gimp_image_get_width(%struct._GimpImage* %10)
  store i32 %call8, i32* %width, align 4
  %11 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call9 = call i32 @gimp_image_get_height(%struct._GimpImage* %11)
  store i32 %call9, i32* %height, align 4
  %12 = load i32, i32* %width, align 4
  %13 = load i32, i32* %height, align 4
  %cmp10 = icmp sgt i32 %12, %13
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.7
  %14 = load i32, i32* %width, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.7
  %15 = load i32, i32* %height, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %14, %cond.true ], [ %15, %cond.false ]
  store i32 %cond, i32* %size.addr, align 4
  br label %if.end.41

if.else:                                          ; preds = %land.lhs.true, %if.end
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call11 = call i32 @gimp_image_get_width(%struct._GimpImage* %16)
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call12 = call i32 @gimp_image_get_height(%struct._GimpImage* %17)
  %cmp13 = icmp slt i32 %call11, %call12
  br i1 %cmp13, label %if.then.14, label %if.else.26

if.then.14:                                       ; preds = %if.else
  %18 = load i32, i32* %size.addr, align 4
  store i32 %18, i32* %height, align 4
  %19 = load i32, i32* %size.addr, align 4
  %20 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call15 = call i32 @gimp_image_get_width(%struct._GimpImage* %20)
  %mul = mul nsw i32 %19, %call15
  %21 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call16 = call i32 @gimp_image_get_height(%struct._GimpImage* %21)
  %div = sdiv i32 %mul, %call16
  %cmp17 = icmp sgt i32 1, %div
  br i1 %cmp17, label %cond.true.18, label %cond.false.19

cond.true.18:                                     ; preds = %if.then.14
  br label %cond.end.24

cond.false.19:                                    ; preds = %if.then.14
  %22 = load i32, i32* %size.addr, align 4
  %23 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call20 = call i32 @gimp_image_get_width(%struct._GimpImage* %23)
  %mul21 = mul nsw i32 %22, %call20
  %24 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call22 = call i32 @gimp_image_get_height(%struct._GimpImage* %24)
  %div23 = sdiv i32 %mul21, %call22
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.19, %cond.true.18
  %cond25 = phi i32 [ 1, %cond.true.18 ], [ %div23, %cond.false.19 ]
  store i32 %cond25, i32* %width, align 4
  br label %if.end.40

if.else.26:                                       ; preds = %if.else
  %25 = load i32, i32* %size.addr, align 4
  store i32 %25, i32* %width, align 4
  %26 = load i32, i32* %size.addr, align 4
  %27 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call27 = call i32 @gimp_image_get_height(%struct._GimpImage* %27)
  %mul28 = mul nsw i32 %26, %call27
  %28 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call29 = call i32 @gimp_image_get_width(%struct._GimpImage* %28)
  %div30 = sdiv i32 %mul28, %call29
  %cmp31 = icmp sgt i32 1, %div30
  br i1 %cmp31, label %cond.true.32, label %cond.false.33

cond.true.32:                                     ; preds = %if.else.26
  br label %cond.end.38

cond.false.33:                                    ; preds = %if.else.26
  %29 = load i32, i32* %size.addr, align 4
  %30 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call34 = call i32 @gimp_image_get_height(%struct._GimpImage* %30)
  %mul35 = mul nsw i32 %29, %call34
  %31 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call36 = call i32 @gimp_image_get_width(%struct._GimpImage* %31)
  %div37 = sdiv i32 %mul35, %call36
  br label %cond.end.38

cond.end.38:                                      ; preds = %cond.false.33, %cond.true.32
  %cond39 = phi i32 [ 1, %cond.true.32 ], [ %div37, %cond.false.33 ]
  store i32 %cond39, i32* %height, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %cond.end.38, %cond.end.24
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %cond.end
  %32 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call42 = call %struct._GimpProjection* @gimp_image_get_projection(%struct._GimpImage* %32)
  %33 = bitcast %struct._GimpProjection* %call42 to %struct._GTypeInstance*
  %call43 = call i64 @gimp_pickable_interface_get_type() #7
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call43)
  %34 = bitcast %struct._GTypeInstance* %call44 to %struct._GimpPickable*
  call void @gimp_pickable_flush(%struct._GimpPickable* %34)
  %35 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %36 = bitcast %struct._GimpImage* %35 to %struct._GTypeInstance*
  %call45 = call i64 @gimp_viewable_get_type() #7
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call45)
  %37 = bitcast %struct._GTypeInstance* %call46 to %struct._GimpViewable*
  %38 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %38, i32 0, i32 1
  %39 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call47 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %39)
  %40 = load i32, i32* %width, align 4
  %41 = load i32, i32* %height, align 4
  %call48 = call %struct._GdkPixbuf* @gimp_viewable_get_new_pixbuf(%struct._GimpViewable* %37, %struct._GimpContext* %call47, i32 %40, i32 %41)
  store %struct._GdkPixbuf* %call48, %struct._GdkPixbuf** %pixbuf, align 8
  %42 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %tobool = icmp ne %struct._GdkPixbuf* %42, null
  br i1 %tobool, label %if.end.50, label %if.then.49

if.then.49:                                       ; preds = %if.end.41
  store i32 1, i32* %retval
  br label %return

if.end.50:                                        ; preds = %if.end.41
  %43 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %44 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %45 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call51 = call i32 @gimp_thumbnail_save_thumb(%struct._GimpThumbnail* %43, %struct._GdkPixbuf* %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), %struct._GError** %45)
  store i32 %call51, i32* %success, align 4
  %46 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %47 = bitcast %struct._GdkPixbuf* %46 to i8*
  call void @g_object_unref(i8* %47)
  %48 = load i32, i32* %success, align 4
  %tobool52 = icmp ne i32 %48, 0
  br i1 %tobool52, label %if.then.53, label %if.end.58

if.then.53:                                       ; preds = %if.end.50
  %49 = load i32, i32* %replace.addr, align 4
  %tobool54 = icmp ne i32 %49, 0
  br i1 %tobool54, label %if.then.55, label %if.else.56

if.then.55:                                       ; preds = %if.then.53
  %50 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %51 = load i32, i32* %size.addr, align 4
  call void @gimp_thumbnail_delete_others(%struct._GimpThumbnail* %50, i32 %51)
  br label %if.end.57

if.else.56:                                       ; preds = %if.then.53
  %52 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  call void @gimp_thumbnail_delete_failure(%struct._GimpThumbnail* %52)
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.56, %if.then.55
  %53 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile.addr, align 8
  call void @gimp_imagefile_update(%struct._GimpImagefile* %53)
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.end.50
  %54 = load i32, i32* %success, align 4
  store i32 %54, i32* %retval
  br label %return

return:                                           ; preds = %if.end.58, %if.then.49, %if.then
  %55 = load i32, i32* %retval
  ret i32 %55
}

declare i32 @gimp_thumbnail_save_failure(%struct._GimpThumbnail*, i8*, %struct._GError**) #1

declare void @gimp_message_literal(%struct._Gimp*, %struct._GObject*, i32, i8*) #1

declare void @g_clear_error(%struct._GError**) #1

; Function Attrs: nounwind uwtable
define void @gimp_imagefile_create_thumbnail_weak(%struct._GimpImagefile* %imagefile, %struct._GimpContext* %context, %struct._GimpProgress* %progress, i32 %size, i32 %replace) #3 {
entry:
  %imagefile.addr = alloca %struct._GimpImagefile*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %size.addr = alloca i32, align 4
  %replace.addr = alloca i32, align 4
  %private = alloca %struct._GimpImagefilePrivate*, align 8
  %local = alloca %struct._GimpImagefile*, align 8
  %uri = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpImagefile* %imagefile, %struct._GimpImagefile** %imagefile.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 %replace, i32* %replace.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile.addr, align 8
  %1 = bitcast %struct._GimpImagefile* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_imagefile_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_imagefile_create_thumbnail_weak, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %size.addr, align 4
  %cmp11 = icmp slt i32 %13, 1
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %do.end
  br label %return

if.end.13:                                        ; preds = %do.end
  %14 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile.addr, align 8
  %15 = bitcast %struct._GimpImagefile* %14 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_imagefile_get_type() #7
  %call15 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %15, i64 %call14)
  %16 = bitcast i8* %call15 to %struct._GimpImagefilePrivate*
  store %struct._GimpImagefilePrivate* %16, %struct._GimpImagefilePrivate** %private, align 8
  %17 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile.addr, align 8
  %18 = bitcast %struct._GimpImagefile* %17 to i8*
  %call16 = call i8* @gimp_object_get_name(i8* %18)
  store i8* %call16, i8** %uri, align 8
  %19 = load i8*, i8** %uri, align 8
  %tobool17 = icmp ne i8* %19, null
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %if.end.13
  br label %return

if.end.19:                                        ; preds = %if.end.13
  %20 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %gimp = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %20, i32 0, i32 0
  %21 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %22 = load i8*, i8** %uri, align 8
  %call20 = call %struct._GimpImagefile* @gimp_imagefile_new(%struct._Gimp* %21, i8* %22)
  store %struct._GimpImagefile* %call20, %struct._GimpImagefile** %local, align 8
  %23 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile.addr, align 8
  %24 = bitcast %struct._GimpImagefile* %23 to %struct._GTypeInstance*
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 80)
  %25 = bitcast %struct._GTypeInstance* %call21 to %struct._GObject*
  %26 = bitcast %struct._GimpImagefile** %imagefile.addr to i8*
  %27 = bitcast i8* %26 to i8**
  call void @g_object_add_weak_pointer(%struct._GObject* %25, i8** %27)
  %28 = load %struct._GimpImagefile*, %struct._GimpImagefile** %local, align 8
  %29 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %30 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %31 = load i32, i32* %size.addr, align 4
  %32 = load i32, i32* %replace.addr, align 4
  %call22 = call i32 @gimp_imagefile_create_thumbnail(%struct._GimpImagefile* %28, %struct._GimpContext* %29, %struct._GimpProgress* %30, i32 %31, i32 %32)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %if.end.19
  %33 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %thumbnail = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %33, i32 0, i32 1
  %34 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %35 = bitcast %struct._GimpThumbnail* %34 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i32 7, i8* null)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.end.19
  %36 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile.addr, align 8
  %tobool26 = icmp ne %struct._GimpImagefile* %36, null
  br i1 %tobool26, label %if.then.27, label %if.end.37

if.then.27:                                       ; preds = %if.end.25
  %37 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile.addr, align 8
  %38 = bitcast %struct._GimpImagefile* %37 to i8*
  %call28 = call i8* @gimp_object_get_name(i8* %38)
  store i8* %call28, i8** %uri, align 8
  %39 = load i8*, i8** %uri, align 8
  %tobool29 = icmp ne i8* %39, null
  br i1 %tobool29, label %land.lhs.true.30, label %if.end.35

land.lhs.true.30:                                 ; preds = %if.then.27
  %40 = load i8*, i8** %uri, align 8
  %41 = load %struct._GimpImagefile*, %struct._GimpImagefile** %local, align 8
  %42 = bitcast %struct._GimpImagefile* %41 to i8*
  %call31 = call i8* @gimp_object_get_name(i8* %42)
  %call32 = call i32 @strcmp(i8* %40, i8* %call31) #8
  %cmp33 = icmp eq i32 %call32, 0
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %land.lhs.true.30
  %43 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile.addr, align 8
  call void @gimp_imagefile_update(%struct._GimpImagefile* %43)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %land.lhs.true.30, %if.then.27
  %44 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile.addr, align 8
  %45 = bitcast %struct._GimpImagefile* %44 to %struct._GTypeInstance*
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 80)
  %46 = bitcast %struct._GTypeInstance* %call36 to %struct._GObject*
  %47 = bitcast %struct._GimpImagefile** %imagefile.addr to i8*
  %48 = bitcast i8* %47 to i8**
  call void @g_object_remove_weak_pointer(%struct._GObject* %46, i8** %48)
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.35, %if.end.25
  %49 = load %struct._GimpImagefile*, %struct._GimpImagefile** %local, align 8
  %50 = bitcast %struct._GimpImagefile* %49 to i8*
  call void @g_object_unref(i8* %50)
  br label %return

return:                                           ; preds = %if.end.37, %if.then.18, %if.then.12, %if.else.9
  ret void
}

declare void @g_object_add_weak_pointer(%struct._GObject*, i8**) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare void @g_object_remove_weak_pointer(%struct._GObject*, i8**) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_imagefile_check_thumbnail(%struct._GimpImagefile* %imagefile) #3 {
entry:
  %retval = alloca i32, align 4
  %imagefile.addr = alloca %struct._GimpImagefile*, align 8
  %private = alloca %struct._GimpImagefilePrivate*, align 8
  %size = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %state = alloca i32, align 4
  store %struct._GimpImagefile* %imagefile, %struct._GimpImagefile** %imagefile.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile.addr, align 8
  %1 = bitcast %struct._GimpImagefile* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_imagefile_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_imagefile_check_thumbnail, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile.addr, align 8
  %14 = bitcast %struct._GimpImagefile* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_imagefile_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpImagefilePrivate*
  store %struct._GimpImagefilePrivate* %15, %struct._GimpImagefilePrivate** %private, align 8
  %16 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %gimp = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %16, i32 0, i32 0
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %17, i32 0, i32 1
  %18 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %thumbnail_size = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %18, i32 0, i32 44
  %19 = load i32, i32* %thumbnail_size, align 4
  store i32 %19, i32* %size, align 4
  %20 = load i32, i32* %size, align 4
  %cmp13 = icmp sgt i32 %20, 0
  br i1 %cmp13, label %if.then.14, label %if.end.18

if.then.14:                                       ; preds = %do.end
  %21 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %thumbnail = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %21, i32 0, i32 1
  %22 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %23 = load i32, i32* %size, align 4
  %call16 = call i32 @gimp_thumbnail_check_thumb(%struct._GimpThumbnail* %22, i32 %23)
  store i32 %call16, i32* %state, align 4
  %24 = load i32, i32* %state, align 4
  %cmp17 = icmp eq i32 %24, 8
  %conv = zext i1 %cmp17 to i32
  store i32 %conv, i32* %retval
  br label %return

if.end.18:                                        ; preds = %do.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.then.14, %if.else.9
  %25 = load i32, i32* %retval
  ret i32 %25
}

declare i32 @gimp_thumbnail_check_thumb(%struct._GimpThumbnail*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_imagefile_save_thumbnail(%struct._GimpImagefile* %imagefile, i8* %mime_type, %struct._GimpImage* %image) #3 {
entry:
  %retval = alloca i32, align 4
  %imagefile.addr = alloca %struct._GimpImagefile*, align 8
  %mime_type.addr = alloca i8*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %private = alloca %struct._GimpImagefilePrivate*, align 8
  %size = alloca i32, align 4
  %success = alloca i32, align 4
  %error = alloca %struct._GError*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpImagefile* %imagefile, %struct._GimpImagefile** %imagefile.addr, align 8
  store i8* %mime_type, i8** %mime_type.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 1, i32* %success, align 4
  store %struct._GError* null, %struct._GError** %error, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile.addr, align 8
  %1 = bitcast %struct._GimpImagefile* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_imagefile_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_imagefile_save_thumbnail, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %14 = bitcast %struct._GimpImage* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_image_get_type() #7
  store i64 %call16, i64* %__t15, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type26, align 8
  %21 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %23 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #8
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %24 = load i32, i32* %__r18, align 4
  store i32 %24, i32* %tmp33
  %25 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_imagefile_save_thumbnail, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile.addr, align 8
  %27 = bitcast %struct._GimpImagefile* %26 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_imagefile_get_type() #7
  %call40 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %27, i64 %call39)
  %28 = bitcast i8* %call40 to %struct._GimpImagefilePrivate*
  store %struct._GimpImagefilePrivate* %28, %struct._GimpImagefilePrivate** %private, align 8
  %29 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %gimp = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %29, i32 0, i32 0
  %30 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %30, i32 0, i32 1
  %31 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %thumbnail_size = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %31, i32 0, i32 44
  %32 = load i32, i32* %thumbnail_size, align 4
  store i32 %32, i32* %size, align 4
  %33 = load i32, i32* %size, align 4
  %cmp41 = icmp sgt i32 %33, 0
  br i1 %cmp41, label %if.then.42, label %if.end.48

if.then.42:                                       ; preds = %do.end.38
  %34 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %thumbnail = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %34, i32 0, i32 1
  %35 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %36 = load i8*, i8** %mime_type.addr, align 8
  %37 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_thumbnail_set_info_from_image(%struct._GimpThumbnail* %35, i8* %36, %struct._GimpImage* %37)
  %38 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile.addr, align 8
  %39 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %40 = load i32, i32* %size, align 4
  %call43 = call i32 @gimp_imagefile_save_thumb(%struct._GimpImagefile* %38, %struct._GimpImage* %39, i32 %40, i32 0, %struct._GError** %error)
  store i32 %call43, i32* %success, align 4
  %41 = load i32, i32* %success, align 4
  %tobool44 = icmp ne i32 %41, 0
  br i1 %tobool44, label %if.end.47, label %if.then.45

if.then.45:                                       ; preds = %if.then.42
  %42 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %gimp46 = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %42, i32 0, i32 0
  %43 = load %struct._Gimp*, %struct._Gimp** %gimp46, align 8
  %44 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %44, i32 0, i32 2
  %45 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %43, %struct._GObject* null, i32 2, i8* %45)
  call void @g_clear_error(%struct._GError** %error)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.45, %if.then.42
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %do.end.38
  %46 = load i32, i32* %success, align 4
  store i32 %46, i32* %retval
  br label %return

return:                                           ; preds = %if.end.48, %if.else.36, %if.else.9
  %47 = load i32, i32* %retval
  ret i32 %47
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #2

; Function Attrs: nounwind uwtable
define i8* @gimp_imagefile_get_desc_string(%struct._GimpImagefile* %imagefile) #3 {
entry:
  %retval = alloca i8*, align 8
  %imagefile.addr = alloca %struct._GimpImagefile*, align 8
  %private = alloca %struct._GimpImagefilePrivate*, align 8
  %thumbnail = alloca %struct._GimpThumbnail*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %str = alloca %struct._GString*, align 8
  %size = alloca i8*, align 8
  store %struct._GimpImagefile* %imagefile, %struct._GimpImagefile** %imagefile.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile.addr, align 8
  %1 = bitcast %struct._GimpImagefile* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_imagefile_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_imagefile_get_desc_string, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile.addr, align 8
  %14 = bitcast %struct._GimpImagefile* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_imagefile_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpImagefilePrivate*
  store %struct._GimpImagefilePrivate* %15, %struct._GimpImagefilePrivate** %private, align 8
  %16 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %description = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %16, i32 0, i32 4
  %17 = load i8*, i8** %description, align 8
  %tobool13 = icmp ne i8* %17, null
  br i1 %tobool13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %do.end
  %18 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %description15 = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %18, i32 0, i32 4
  %19 = load i8*, i8** %description15, align 8
  store i8* %19, i8** %retval
  br label %return

if.end.16:                                        ; preds = %do.end
  %20 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %thumbnail17 = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %20, i32 0, i32 1
  %21 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail17, align 8
  store %struct._GimpThumbnail* %21, %struct._GimpThumbnail** %thumbnail, align 8
  %22 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_state = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %22, i32 0, i32 1
  %23 = load i32, i32* %image_state, align 4
  switch i32 %23, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb.19
    i32 3, label %sw.bb.23
    i32 4, label %sw.bb.27
  ]

sw.bb:                                            ; preds = %if.end.16
  %24 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %description18 = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %24, i32 0, i32 4
  store i8* null, i8** %description18, align 8
  %25 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %static_desc = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %25, i32 0, i32 5
  store i32 1, i32* %static_desc, align 4
  br label %sw.epilog.144

sw.bb.19:                                         ; preds = %if.end.16
  %call20 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0)) #9
  %26 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %description21 = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %26, i32 0, i32 4
  store i8* %call20, i8** %description21, align 8
  %27 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %static_desc22 = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %27, i32 0, i32 5
  store i32 1, i32* %static_desc22, align 4
  br label %sw.epilog.144

sw.bb.23:                                         ; preds = %if.end.16
  %call24 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0)) #9
  %28 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %description25 = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %28, i32 0, i32 4
  store i8* %call24, i8** %description25, align 8
  %29 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %static_desc26 = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %29, i32 0, i32 5
  store i32 1, i32* %static_desc26, align 4
  br label %sw.epilog.144

sw.bb.27:                                         ; preds = %if.end.16
  %30 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_not_found_errno = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %30, i32 0, i32 6
  %31 = load i32, i32* %image_not_found_errno, align 4
  %call28 = call i8* @g_strerror(i32 %31) #7
  %32 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %description29 = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %32, i32 0, i32 4
  store i8* %call28, i8** %description29, align 8
  %33 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %static_desc30 = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %33, i32 0, i32 5
  store i32 1, i32* %static_desc30, align 4
  br label %sw.epilog.144

sw.default:                                       ; preds = %if.end.16
  %call32 = call %struct._GString* @g_string_new(i8* null)
  store %struct._GString* %call32, %struct._GString** %str, align 8
  %34 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_state33 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %34, i32 0, i32 1
  %35 = load i32, i32* %image_state33, align 4
  %cmp34 = icmp eq i32 %35, 1
  br i1 %cmp34, label %if.then.35, label %if.end.38

if.then.35:                                       ; preds = %sw.default
  %36 = load %struct._GString*, %struct._GString** %str, align 8
  %call36 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0)) #9
  %call37 = call %struct._GString* @g_string_append(%struct._GString* %36, i8* %call36)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.35, %sw.default
  %37 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_filesize = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %37, i32 0, i32 4
  %38 = load i64, i64* %image_filesize, align 8
  %cmp39 = icmp sgt i64 %38, 0
  br i1 %cmp39, label %if.then.40, label %if.end.49

if.then.40:                                       ; preds = %if.end.38
  %39 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_filesize42 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %39, i32 0, i32 4
  %40 = load i64, i64* %image_filesize42, align 8
  %call43 = call i8* @g_format_size(i64 %40)
  store i8* %call43, i8** %size, align 8
  %41 = load %struct._GString*, %struct._GString** %str, align 8
  %len = getelementptr inbounds %struct._GString, %struct._GString* %41, i32 0, i32 1
  %42 = load i64, i64* %len, align 8
  %cmp44 = icmp ugt i64 %42, 0
  br i1 %cmp44, label %if.then.45, label %if.end.47

if.then.45:                                       ; preds = %if.then.40
  %43 = load %struct._GString*, %struct._GString** %str, align 8
  %call46 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %43, i8 signext 10)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.45, %if.then.40
  %44 = load %struct._GString*, %struct._GString** %str, align 8
  %45 = load i8*, i8** %size, align 8
  %call48 = call %struct._GString* @g_string_append(%struct._GString* %44, i8* %45)
  %46 = load i8*, i8** %size, align 8
  call void @g_free(i8* %46)
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.47, %if.end.38
  %47 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %thumb_state = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %47, i32 0, i32 11
  %48 = load i32, i32* %thumb_state, align 4
  switch i32 %48, label %sw.default.140 [
    i32 4, label %sw.bb.50
    i32 5, label %sw.bb.58
    i32 6, label %sw.bb.66
    i32 7, label %sw.bb.74
    i32 8, label %sw.bb.82
  ]

sw.bb.50:                                         ; preds = %if.end.49
  %49 = load %struct._GString*, %struct._GString** %str, align 8
  %len51 = getelementptr inbounds %struct._GString, %struct._GString* %49, i32 0, i32 1
  %50 = load i64, i64* %len51, align 8
  %cmp52 = icmp ugt i64 %50, 0
  br i1 %cmp52, label %if.then.53, label %if.end.55

if.then.53:                                       ; preds = %sw.bb.50
  %51 = load %struct._GString*, %struct._GString** %str, align 8
  %call54 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %51, i8 signext 10)
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.53, %sw.bb.50
  %52 = load %struct._GString*, %struct._GString** %str, align 8
  %call56 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i32 0, i32 0)) #9
  %call57 = call %struct._GString* @g_string_append(%struct._GString* %52, i8* %call56)
  br label %sw.epilog

sw.bb.58:                                         ; preds = %if.end.49
  %53 = load %struct._GString*, %struct._GString** %str, align 8
  %len59 = getelementptr inbounds %struct._GString, %struct._GString* %53, i32 0, i32 1
  %54 = load i64, i64* %len59, align 8
  %cmp60 = icmp ugt i64 %54, 0
  br i1 %cmp60, label %if.then.61, label %if.end.63

if.then.61:                                       ; preds = %sw.bb.58
  %55 = load %struct._GString*, %struct._GString** %str, align 8
  %call62 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %55, i8 signext 10)
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.61, %sw.bb.58
  %56 = load %struct._GString*, %struct._GString** %str, align 8
  %call64 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0)) #9
  %call65 = call %struct._GString* @g_string_append(%struct._GString* %56, i8* %call64)
  br label %sw.epilog

sw.bb.66:                                         ; preds = %if.end.49
  %57 = load %struct._GString*, %struct._GString** %str, align 8
  %len67 = getelementptr inbounds %struct._GString, %struct._GString* %57, i32 0, i32 1
  %58 = load i64, i64* %len67, align 8
  %cmp68 = icmp ugt i64 %58, 0
  br i1 %cmp68, label %if.then.69, label %if.end.71

if.then.69:                                       ; preds = %sw.bb.66
  %59 = load %struct._GString*, %struct._GString** %str, align 8
  %call70 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %59, i8 signext 10)
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.69, %sw.bb.66
  %60 = load %struct._GString*, %struct._GString** %str, align 8
  %call72 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0)) #9
  %call73 = call %struct._GString* @g_string_append(%struct._GString* %60, i8* %call72)
  br label %sw.epilog

sw.bb.74:                                         ; preds = %if.end.49
  %61 = load %struct._GString*, %struct._GString** %str, align 8
  %len75 = getelementptr inbounds %struct._GString, %struct._GString* %61, i32 0, i32 1
  %62 = load i64, i64* %len75, align 8
  %cmp76 = icmp ugt i64 %62, 0
  br i1 %cmp76, label %if.then.77, label %if.end.79

if.then.77:                                       ; preds = %sw.bb.74
  %63 = load %struct._GString*, %struct._GString** %str, align 8
  %call78 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %63, i8 signext 10)
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.77, %sw.bb.74
  %64 = load %struct._GString*, %struct._GString** %str, align 8
  %call80 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i32 0, i32 0)) #9
  %call81 = call %struct._GString* @g_string_append(%struct._GString* %64, i8* %call80)
  br label %sw.epilog

sw.bb.82:                                         ; preds = %if.end.49
  %65 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_state83 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %65, i32 0, i32 1
  %66 = load i32, i32* %image_state83, align 4
  %cmp84 = icmp eq i32 %66, 1
  br i1 %cmp84, label %if.then.85, label %if.end.93

if.then.85:                                       ; preds = %sw.bb.82
  %67 = load %struct._GString*, %struct._GString** %str, align 8
  %len86 = getelementptr inbounds %struct._GString, %struct._GString* %67, i32 0, i32 1
  %68 = load i64, i64* %len86, align 8
  %cmp87 = icmp ugt i64 %68, 0
  br i1 %cmp87, label %if.then.88, label %if.end.90

if.then.88:                                       ; preds = %if.then.85
  %69 = load %struct._GString*, %struct._GString** %str, align 8
  %call89 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %69, i8 signext 10)
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.88, %if.then.85
  %70 = load %struct._GString*, %struct._GString** %str, align 8
  %call91 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i32 0, i32 0)) #9
  %call92 = call %struct._GString* @g_string_append(%struct._GString* %70, i8* %call91)
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.90, %sw.bb.82
  %71 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_width = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %71, i32 0, i32 7
  %72 = load i32, i32* %image_width, align 4
  %cmp94 = icmp sgt i32 %72, 0
  br i1 %cmp94, label %land.lhs.true.95, label %if.end.107

land.lhs.true.95:                                 ; preds = %if.end.93
  %73 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_height = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %73, i32 0, i32 8
  %74 = load i32, i32* %image_height, align 4
  %cmp96 = icmp sgt i32 %74, 0
  br i1 %cmp96, label %if.then.97, label %if.end.107

if.then.97:                                       ; preds = %land.lhs.true.95
  %75 = load %struct._GString*, %struct._GString** %str, align 8
  %len98 = getelementptr inbounds %struct._GString, %struct._GString* %75, i32 0, i32 1
  %76 = load i64, i64* %len98, align 8
  %cmp99 = icmp ugt i64 %76, 0
  br i1 %cmp99, label %if.then.100, label %if.end.102

if.then.100:                                      ; preds = %if.then.97
  %77 = load %struct._GString*, %struct._GString** %str, align 8
  %call101 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %77, i8 signext 10)
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.100, %if.then.97
  %78 = load %struct._GString*, %struct._GString** %str, align 8
  %79 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_height103 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %79, i32 0, i32 8
  %80 = load i32, i32* %image_height103, align 4
  %conv = sext i32 %80 to i64
  %call104 = call i8* @ngettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0), i64 %conv) #9
  %81 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_width105 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %81, i32 0, i32 7
  %82 = load i32, i32* %image_width105, align 4
  %83 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_height106 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %83, i32 0, i32 8
  %84 = load i32, i32* %image_height106, align 4
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %78, i8* %call104, i32 %82, i32 %84)
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.102, %land.lhs.true.95, %if.end.93
  %85 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_type = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %85, i32 0, i32 9
  %86 = load i8*, i8** %image_type, align 8
  %tobool108 = icmp ne i8* %86, null
  br i1 %tobool108, label %if.then.109, label %if.end.119

if.then.109:                                      ; preds = %if.end.107
  %87 = load %struct._GString*, %struct._GString** %str, align 8
  %len110 = getelementptr inbounds %struct._GString, %struct._GString* %87, i32 0, i32 1
  %88 = load i64, i64* %len110, align 8
  %cmp111 = icmp ugt i64 %88, 0
  br i1 %cmp111, label %if.then.113, label %if.end.115

if.then.113:                                      ; preds = %if.then.109
  %89 = load %struct._GString*, %struct._GString** %str, align 8
  %call114 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %89, i8 signext 10)
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.113, %if.then.109
  %90 = load %struct._GString*, %struct._GString** %str, align 8
  %91 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_type116 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %91, i32 0, i32 9
  %92 = load i8*, i8** %image_type116, align 8
  %call117 = call i8* @gettext(i8* %92) #9
  %call118 = call %struct._GString* @g_string_append(%struct._GString* %90, i8* %call117)
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.115, %if.end.107
  %93 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_num_layers = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %93, i32 0, i32 10
  %94 = load i32, i32* %image_num_layers, align 4
  %cmp120 = icmp sgt i32 %94, 0
  br i1 %cmp120, label %if.then.122, label %if.end.139

if.then.122:                                      ; preds = %if.end.119
  %95 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_type123 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %95, i32 0, i32 9
  %96 = load i8*, i8** %image_type123, align 8
  %tobool124 = icmp ne i8* %96, null
  br i1 %tobool124, label %if.then.125, label %if.else.127

if.then.125:                                      ; preds = %if.then.122
  %97 = load %struct._GString*, %struct._GString** %str, align 8
  %call126 = call %struct._GString* @g_string_append_len(%struct._GString* %97, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0), i64 2)
  br label %if.end.134

if.else.127:                                      ; preds = %if.then.122
  %98 = load %struct._GString*, %struct._GString** %str, align 8
  %len128 = getelementptr inbounds %struct._GString, %struct._GString* %98, i32 0, i32 1
  %99 = load i64, i64* %len128, align 8
  %cmp129 = icmp ugt i64 %99, 0
  br i1 %cmp129, label %if.then.131, label %if.end.133

if.then.131:                                      ; preds = %if.else.127
  %100 = load %struct._GString*, %struct._GString** %str, align 8
  %call132 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %100, i8 signext 10)
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.131, %if.else.127
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.133, %if.then.125
  %101 = load %struct._GString*, %struct._GString** %str, align 8
  %102 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_num_layers135 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %102, i32 0, i32 10
  %103 = load i32, i32* %image_num_layers135, align 4
  %conv136 = sext i32 %103 to i64
  %call137 = call i8* @ngettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i64 %conv136) #9
  %104 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_num_layers138 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %104, i32 0, i32 10
  %105 = load i32, i32* %image_num_layers138, align 4
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %101, i8* %call137, i32 %105)
  br label %if.end.139

if.end.139:                                       ; preds = %if.end.134, %if.end.119
  br label %sw.epilog

sw.default.140:                                   ; preds = %if.end.49
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default.140, %if.end.139, %if.end.79, %if.end.71, %if.end.63, %if.end.55
  %106 = load %struct._GString*, %struct._GString** %str, align 8
  %call141 = call i8* @g_string_free(%struct._GString* %106, i32 0)
  %107 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %description142 = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %107, i32 0, i32 4
  store i8* %call141, i8** %description142, align 8
  %108 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %static_desc143 = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %108, i32 0, i32 5
  store i32 0, i32* %static_desc143, align 4
  br label %sw.epilog.144

sw.epilog.144:                                    ; preds = %sw.epilog, %sw.bb.27, %sw.bb.23, %sw.bb.19, %sw.bb
  %109 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %description145 = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %109, i32 0, i32 4
  %110 = load i8*, i8** %description145, align 8
  store i8* %110, i8** %retval
  br label %return

return:                                           ; preds = %sw.epilog.144, %if.then.14, %if.else.9
  %111 = load i8*, i8** %retval
  ret i8* %111
}

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #2

declare %struct._GString* @g_string_new(i8*) #1

declare %struct._GString* @g_string_append(%struct._GString*, i8*) #1

declare i8* @g_format_size(i64) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._GString* @g_string_append_c_inline(%struct._GString* %gstring, i8 signext %c) #6 {
entry:
  %gstring.addr = alloca %struct._GString*, align 8
  %c.addr = alloca i8, align 1
  store %struct._GString* %gstring, %struct._GString** %gstring.addr, align 8
  store i8 %c, i8* %c.addr, align 1
  %0 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %len = getelementptr inbounds %struct._GString, %struct._GString* %0, i32 0, i32 1
  %1 = load i64, i64* %len, align 8
  %add = add i64 %1, 1
  %2 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %allocated_len = getelementptr inbounds %struct._GString, %struct._GString* %2, i32 0, i32 2
  %3 = load i64, i64* %allocated_len, align 8
  %cmp = icmp ult i64 %add, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i8, i8* %c.addr, align 1
  %5 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %len1 = getelementptr inbounds %struct._GString, %struct._GString* %5, i32 0, i32 1
  %6 = load i64, i64* %len1, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %len1, align 8
  %7 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %str = getelementptr inbounds %struct._GString, %struct._GString* %7, i32 0, i32 0
  %8 = load i8*, i8** %str, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %6
  store i8 %4, i8* %arrayidx, align 1
  %9 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %len2 = getelementptr inbounds %struct._GString, %struct._GString* %9, i32 0, i32 1
  %10 = load i64, i64* %len2, align 8
  %11 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %str3 = getelementptr inbounds %struct._GString, %struct._GString* %11, i32 0, i32 0
  %12 = load i8*, i8** %str3, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %12, i64 %10
  store i8 0, i8* %arrayidx4, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %14 = load i8, i8* %c.addr, align 1
  %call = call %struct._GString* @g_string_insert_c(%struct._GString* %13, i64 -1, i8 signext %14)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  ret %struct._GString* %15
}

declare void @g_string_append_printf(%struct._GString*, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @ngettext(i8*, i8*, i64) #5

declare %struct._GString* @g_string_append_len(%struct._GString*, i8*, i64) #1

declare i8* @g_string_free(%struct._GString*, i32) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_imagefile_class_init(%struct._GimpImagefileClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpImagefileClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %gimp_object_class = alloca %struct._GimpObjectClass*, align 8
  %viewable_class = alloca %struct._GimpViewableClass*, align 8
  %creator = alloca i8*, align 8
  store %struct._GimpImagefileClass* %klass, %struct._GimpImagefileClass** %klass.addr, align 8
  %0 = load %struct._GimpImagefileClass*, %struct._GimpImagefileClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpImagefileClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpImagefileClass*, %struct._GimpImagefileClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpImagefileClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_object_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpObjectClass*
  store %struct._GimpObjectClass* %5, %struct._GimpObjectClass** %gimp_object_class, align 8
  %6 = load %struct._GimpImagefileClass*, %struct._GimpImagefileClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpImagefileClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_viewable_get_type() #7
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpViewableClass*
  store %struct._GimpViewableClass* %8, %struct._GimpViewableClass** %viewable_class, align 8
  %9 = load %struct._GimpImagefileClass*, %struct._GimpImagefileClass** %klass.addr, align 8
  %10 = bitcast %struct._GimpImagefileClass* %9 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %10, i32 0, i32 0
  %11 = load i64, i64* %g_type, align 8
  %call5 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0), i64 %11, i32 1, i32 280, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call5, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @gimp_imagefile_signals, i32 0, i64 0), align 4
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_imagefile_dispose, void (%struct._GObject*)** %dispose, align 8
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %13, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_imagefile_finalize, void (%struct._GObject*)** %finalize, align 8
  %14 = load %struct._GimpObjectClass*, %struct._GimpObjectClass** %gimp_object_class, align 8
  %name_changed = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %14, i32 0, i32 2
  store void (%struct._GimpObject*)* @gimp_imagefile_name_changed, void (%struct._GimpObject*)** %name_changed, align 8
  %15 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %name_changed_signal = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %15, i32 0, i32 2
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0), i8** %name_changed_signal, align 8
  %16 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %get_new_pixbuf = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %16, i32 0, i32 11
  store %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)* @gimp_imagefile_get_new_pixbuf, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)** %get_new_pixbuf, align 8
  %17 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %get_description = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %17, i32 0, i32 12
  store i8* (%struct._GimpViewable*, i8**)* @gimp_imagefile_get_description, i8* (%struct._GimpViewable*, i8**)** %get_description, align 8
  %call6 = call i64 @gimp_image_type_get_type() #7
  %call7 = call i8* @g_type_class_ref(i64 %call6)
  %call8 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), i32 2, i32 8)
  store i8* %call8, i8** %creator, align 8
  %18 = load i8*, i8** %creator, align 8
  %call9 = call i32 @gimp_thumb_init(i8* %18, i8* null)
  %19 = load i8*, i8** %creator, align 8
  call void @g_free(i8* %19)
  %20 = load %struct._GimpImagefileClass*, %struct._GimpImagefileClass** %klass.addr, align 8
  %21 = bitcast %struct._GimpImagefileClass* %20 to i8*
  call void @g_type_class_add_private(i8* %21, i64 48)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @g_cclosure_marshal_VOID__VOID(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_imagefile_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %private = alloca %struct._GimpImagefilePrivate*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_imagefile_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpImagefilePrivate*
  store %struct._GimpImagefilePrivate* %2, %struct._GimpImagefilePrivate** %private, align 8
  %3 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %icon_cancellable = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %3, i32 0, i32 3
  %4 = load %struct._GCancellable*, %struct._GCancellable** %icon_cancellable, align 8
  %tobool = icmp ne %struct._GCancellable* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %icon_cancellable2 = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %5, i32 0, i32 3
  %6 = load %struct._GCancellable*, %struct._GCancellable** %icon_cancellable2, align 8
  call void @g_cancellable_cancel(%struct._GCancellable* %6)
  %7 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %icon_cancellable3 = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %7, i32 0, i32 3
  %8 = load %struct._GCancellable*, %struct._GCancellable** %icon_cancellable3, align 8
  %9 = bitcast %struct._GCancellable* %8 to i8*
  call void @g_object_unref(i8* %9)
  %10 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %icon_cancellable4 = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %10, i32 0, i32 3
  store %struct._GCancellable* null, %struct._GCancellable** %icon_cancellable4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i8*, i8** @gimp_imagefile_parent_class, align 8
  %12 = bitcast i8* %11 to %struct._GTypeClass*
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %12, i64 80)
  %13 = bitcast %struct._GTypeClass* %call5 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %13, i32 0, i32 5
  %14 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %15 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %14(%struct._GObject* %15)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_imagefile_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %private = alloca %struct._GimpImagefilePrivate*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_imagefile_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpImagefilePrivate*
  store %struct._GimpImagefilePrivate* %2, %struct._GimpImagefilePrivate** %private, align 8
  %3 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %description = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %3, i32 0, i32 4
  %4 = load i8*, i8** %description, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %static_desc = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %5, i32 0, i32 5
  %6 = load i32, i32* %static_desc, align 4
  %tobool2 = icmp ne i32 %6, 0
  br i1 %tobool2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  %7 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %description4 = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %7, i32 0, i32 4
  %8 = load i8*, i8** %description4, align 8
  call void @g_free(i8* %8)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %9 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %description5 = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %9, i32 0, i32 4
  store i8* null, i8** %description5, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %10 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %thumbnail = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %10, i32 0, i32 1
  %11 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %tobool7 = icmp ne %struct._GimpThumbnail* %11, null
  br i1 %tobool7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.end.6
  %12 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %thumbnail9 = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %12, i32 0, i32 1
  %13 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail9, align 8
  %14 = bitcast %struct._GimpThumbnail* %13 to i8*
  call void @g_object_unref(i8* %14)
  %15 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %thumbnail10 = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %15, i32 0, i32 1
  store %struct._GimpThumbnail* null, %struct._GimpThumbnail** %thumbnail10, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %if.end.6
  %16 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %icon = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %16, i32 0, i32 2
  %17 = load %struct._GIcon*, %struct._GIcon** %icon, align 8
  %tobool12 = icmp ne %struct._GIcon* %17, null
  br i1 %tobool12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %if.end.11
  %18 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %icon14 = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %18, i32 0, i32 2
  %19 = load %struct._GIcon*, %struct._GIcon** %icon14, align 8
  %20 = bitcast %struct._GIcon* %19 to i8*
  call void @g_object_unref(i8* %20)
  %21 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %icon15 = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %21, i32 0, i32 2
  store %struct._GIcon* null, %struct._GIcon** %icon15, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %if.end.11
  %22 = load i8*, i8** @gimp_imagefile_parent_class, align 8
  %23 = bitcast i8* %22 to %struct._GTypeClass*
  %call17 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %23, i64 80)
  %24 = bitcast %struct._GTypeClass* %call17 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %24, i32 0, i32 6
  %25 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %26 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %25(%struct._GObject* %26)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_imagefile_name_changed(%struct._GimpObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %private = alloca %struct._GimpImagefilePrivate*, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %1 = bitcast %struct._GimpObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_imagefile_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpImagefilePrivate*
  store %struct._GimpImagefilePrivate* %2, %struct._GimpImagefilePrivate** %private, align 8
  %3 = load i8*, i8** @gimp_imagefile_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call i64 @gimp_object_get_type() #7
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GimpObjectClass*
  %name_changed = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %5, i32 0, i32 2
  %6 = load void (%struct._GimpObject*)*, void (%struct._GimpObject*)** %name_changed, align 8
  %tobool = icmp ne void (%struct._GimpObject*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_imagefile_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call4 = call i64 @gimp_object_get_type() #7
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 %call4)
  %9 = bitcast %struct._GTypeClass* %call5 to %struct._GimpObjectClass*
  %name_changed6 = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %9, i32 0, i32 2
  %10 = load void (%struct._GimpObject*)*, void (%struct._GimpObject*)** %name_changed6, align 8
  %11 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  call void %10(%struct._GimpObject* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %thumbnail = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %12, i32 0, i32 1
  %13 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %14 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %15 = bitcast %struct._GimpObject* %14 to i8*
  %call7 = call i8* @gimp_object_get_name(i8* %15)
  call void @gimp_thumbnail_set_uri(%struct._GimpThumbnail* %13, i8* %call7)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GdkPixbuf* @gimp_imagefile_get_new_pixbuf(%struct._GimpViewable* %viewable, %struct._GimpContext* %context, i32 %width, i32 %height) #3 {
entry:
  %retval = alloca %struct._GdkPixbuf*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %imagefile = alloca %struct._GimpImagefile*, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %1 = bitcast %struct._GimpViewable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_imagefile_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImagefile*
  store %struct._GimpImagefile* %2, %struct._GimpImagefile** %imagefile, align 8
  %3 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  %4 = bitcast %struct._GimpImagefile* %3 to i8*
  %call2 = call i8* @gimp_object_get_name(i8* %4)
  %tobool = icmp ne i8* %call2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._GdkPixbuf* null, %struct._GdkPixbuf** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  %6 = load i32, i32* %width.addr, align 4
  %7 = load i32, i32* %height.addr, align 4
  %call3 = call %struct._GdkPixbuf* @gimp_imagefile_load_thumb(%struct._GimpImagefile* %5, i32 %6, i32 %7)
  store %struct._GdkPixbuf* %call3, %struct._GdkPixbuf** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %retval
  ret %struct._GdkPixbuf* %8
}

; Function Attrs: nounwind uwtable
define internal i8* @gimp_imagefile_get_description(%struct._GimpViewable* %viewable, i8** %tooltip) #3 {
entry:
  %retval = alloca i8*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %tooltip.addr = alloca i8**, align 8
  %imagefile = alloca %struct._GimpImagefile*, align 8
  %private = alloca %struct._GimpImagefilePrivate*, align 8
  %thumbnail = alloca %struct._GimpThumbnail*, align 8
  %basename = alloca i8*, align 8
  %filename = alloca i8*, align 8
  %desc = alloca i8*, align 8
  %tmp = alloca i8*, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i8** %tooltip, i8*** %tooltip.addr, align 8
  %0 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %1 = bitcast %struct._GimpViewable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_imagefile_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImagefile*
  store %struct._GimpImagefile* %2, %struct._GimpImagefile** %imagefile, align 8
  %3 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  %4 = bitcast %struct._GimpImagefile* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_imagefile_get_type() #7
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpImagefilePrivate*
  store %struct._GimpImagefilePrivate* %5, %struct._GimpImagefilePrivate** %private, align 8
  %6 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %thumbnail4 = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %6, i32 0, i32 1
  %7 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail4, align 8
  store %struct._GimpThumbnail* %7, %struct._GimpThumbnail** %thumbnail, align 8
  %8 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_uri = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %8, i32 0, i32 2
  %9 = load i8*, i8** %image_uri, align 8
  %tobool = icmp ne i8* %9, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %10 = load i8**, i8*** %tooltip.addr, align 8
  %tobool5 = icmp ne i8** %10, null
  br i1 %tobool5, label %if.then.6, label %if.end.14

if.then.6:                                        ; preds = %if.end
  %11 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_uri7 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %11, i32 0, i32 2
  %12 = load i8*, i8** %image_uri7, align 8
  %call8 = call i8* @file_utils_uri_display_name(i8* %12)
  store i8* %call8, i8** %filename, align 8
  %13 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  %call9 = call i8* @gimp_imagefile_get_desc_string(%struct._GimpImagefile* %13)
  store i8* %call9, i8** %desc, align 8
  %14 = load i8*, i8** %desc, align 8
  %tobool10 = icmp ne i8* %14, null
  br i1 %tobool10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.then.6
  %15 = load i8*, i8** %filename, align 8
  %16 = load i8*, i8** %desc, align 8
  %call12 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i8* %15, i8* %16)
  %17 = load i8**, i8*** %tooltip.addr, align 8
  store i8* %call12, i8** %17, align 8
  %18 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %18)
  br label %if.end.13

if.else:                                          ; preds = %if.then.6
  %19 = load i8*, i8** %filename, align 8
  %20 = load i8**, i8*** %tooltip.addr, align 8
  store i8* %19, i8** %20, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.11
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.end
  %21 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_uri15 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %21, i32 0, i32 2
  %22 = load i8*, i8** %image_uri15, align 8
  %call16 = call i8* @file_utils_uri_display_basename(i8* %22)
  store i8* %call16, i8** %basename, align 8
  %23 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_width = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %23, i32 0, i32 7
  %24 = load i32, i32* %image_width, align 4
  %cmp = icmp sgt i32 %24, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %if.end.14
  %25 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_height = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %25, i32 0, i32 8
  %26 = load i32, i32* %image_height, align 4
  %cmp17 = icmp sgt i32 %26, 0
  br i1 %cmp17, label %if.then.18, label %if.end.22

if.then.18:                                       ; preds = %land.lhs.true
  %27 = load i8*, i8** %basename, align 8
  store i8* %27, i8** %tmp, align 8
  %28 = load i8*, i8** %tmp, align 8
  %29 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_width19 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %29, i32 0, i32 7
  %30 = load i32, i32* %image_width19, align 4
  %31 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_height20 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %31, i32 0, i32 8
  %32 = load i32, i32* %image_height20, align 4
  %call21 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), i8* %28, i32 %30, i32 %32)
  store i8* %call21, i8** %basename, align 8
  %33 = load i8*, i8** %tmp, align 8
  call void @g_free(i8* %33)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.18, %land.lhs.true, %if.end.14
  %34 = load i8*, i8** %basename, align 8
  store i8* %34, i8** %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.then
  %35 = load i8*, i8** %retval
  ret i8* %35
}

declare i8* @g_type_class_ref(i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_type_get_type() #2

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare i32 @gimp_thumb_init(i8*, i8*) #1

declare void @g_type_class_add_private(i8*, i64) #1

declare void @g_cancellable_cancel(%struct._GCancellable*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GdkPixbuf* @gimp_imagefile_load_thumb(%struct._GimpImagefile* %imagefile, i32 %width, i32 %height) #3 {
entry:
  %retval = alloca %struct._GdkPixbuf*, align 8
  %imagefile.addr = alloca %struct._GimpImagefile*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %private = alloca %struct._GimpImagefilePrivate*, align 8
  %thumbnail = alloca %struct._GimpThumbnail*, align 8
  %pixbuf = alloca %struct._GdkPixbuf*, align 8
  %error = alloca %struct._GError*, align 8
  %size = alloca i32, align 4
  %pixbuf_width = alloca i32, align 4
  %pixbuf_height = alloca i32, align 4
  %preview_width = alloca i32, align 4
  %preview_height = alloca i32, align 4
  %scaled = alloca %struct._GdkPixbuf*, align 8
  %tmp = alloca %struct._GdkPixbuf*, align 8
  store %struct._GimpImagefile* %imagefile, %struct._GimpImagefile** %imagefile.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile.addr, align 8
  %1 = bitcast %struct._GimpImagefile* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_imagefile_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpImagefilePrivate*
  store %struct._GimpImagefilePrivate* %2, %struct._GimpImagefilePrivate** %private, align 8
  %3 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %thumbnail2 = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %3, i32 0, i32 1
  %4 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail2, align 8
  store %struct._GimpThumbnail* %4, %struct._GimpThumbnail** %thumbnail, align 8
  store %struct._GdkPixbuf* null, %struct._GdkPixbuf** %pixbuf, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  %5 = load i32, i32* %width.addr, align 4
  %6 = load i32, i32* %height.addr, align 4
  %cmp = icmp sgt i32 %5, %6
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load i32, i32* %width.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load i32, i32* %height.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ %8, %cond.false ]
  store i32 %cond, i32* %size, align 4
  %9 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %10 = load i32, i32* %size, align 4
  %call3 = call i32 @gimp_thumbnail_peek_thumb(%struct._GimpThumbnail* %9, i32 %10)
  %cmp4 = icmp ult i32 %call3, 5
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store %struct._GdkPixbuf* null, %struct._GdkPixbuf** %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %11 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_state = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %11, i32 0, i32 1
  %12 = load i32, i32* %image_state, align 4
  %cmp5 = icmp eq i32 %12, 4
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store %struct._GdkPixbuf* null, %struct._GdkPixbuf** %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %13 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %14 = load i32, i32* %size, align 4
  %call8 = call %struct._GdkPixbuf* @gimp_thumbnail_load_thumb(%struct._GimpThumbnail* %13, i32 %14, %struct._GError** %error)
  store %struct._GdkPixbuf* %call8, %struct._GdkPixbuf** %pixbuf, align 8
  %15 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %tobool = icmp ne %struct._GdkPixbuf* %15, null
  br i1 %tobool, label %if.end.14, label %if.then.9

if.then.9:                                        ; preds = %if.end.7
  %16 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool10 = icmp ne %struct._GError* %16, null
  br i1 %tobool10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.then.9
  %17 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %gimp = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %17, i32 0, i32 0
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.27, i32 0, i32 0)) #9
  %19 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %thumb_filename = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %19, i32 0, i32 13
  %20 = load i8*, i8** %thumb_filename, align 8
  %21 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %21, i32 0, i32 2
  %22 = load i8*, i8** %message, align 8
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %18, %struct._GObject* null, i32 2, i8* %call12, i8* %20, i8* %22)
  call void @g_clear_error(%struct._GError** %error)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.then.9
  store %struct._GdkPixbuf* null, %struct._GdkPixbuf** %retval
  br label %return

if.end.14:                                        ; preds = %if.end.7
  %23 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %call15 = call i32 @gdk_pixbuf_get_width(%struct._GdkPixbuf* %23)
  store i32 %call15, i32* %pixbuf_width, align 4
  %24 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %call16 = call i32 @gdk_pixbuf_get_height(%struct._GdkPixbuf* %24)
  store i32 %call16, i32* %pixbuf_height, align 4
  %25 = load i32, i32* %pixbuf_width, align 4
  %26 = load i32, i32* %pixbuf_height, align 4
  %27 = load i32, i32* %width.addr, align 4
  %28 = load i32, i32* %height.addr, align 4
  call void @gimp_viewable_calc_preview_size(i32 %25, i32 %26, i32 %27, i32 %28, i32 1, double 1.000000e+00, double 1.000000e+00, i32* %preview_width, i32* %preview_height, i32* null)
  %29 = load i32, i32* %preview_width, align 4
  %30 = load i32, i32* %pixbuf_width, align 4
  %cmp17 = icmp slt i32 %29, %30
  br i1 %cmp17, label %if.then.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.14
  %31 = load i32, i32* %preview_height, align 4
  %32 = load i32, i32* %pixbuf_height, align 4
  %cmp18 = icmp slt i32 %31, %32
  br i1 %cmp18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %lor.lhs.false, %if.end.14
  %33 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %34 = load i32, i32* %preview_width, align 4
  %35 = load i32, i32* %preview_height, align 4
  %call20 = call %struct._GdkPixbuf* @gdk_pixbuf_scale_simple(%struct._GdkPixbuf* %33, i32 %34, i32 %35, i32 2)
  store %struct._GdkPixbuf* %call20, %struct._GdkPixbuf** %scaled, align 8
  %36 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %37 = bitcast %struct._GdkPixbuf* %36 to i8*
  call void @g_object_unref(i8* %37)
  %38 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %scaled, align 8
  store %struct._GdkPixbuf* %38, %struct._GdkPixbuf** %pixbuf, align 8
  %39 = load i32, i32* %preview_width, align 4
  store i32 %39, i32* %pixbuf_width, align 4
  %40 = load i32, i32* %preview_height, align 4
  store i32 %40, i32* %pixbuf_height, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %lor.lhs.false
  %41 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %call22 = call i32 @gdk_pixbuf_get_n_channels(%struct._GdkPixbuf* %41)
  %cmp23 = icmp ne i32 %call22, 3
  br i1 %cmp23, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.end.21
  %42 = load i32, i32* %pixbuf_width, align 4
  %43 = load i32, i32* %pixbuf_height, align 4
  %call25 = call %struct._GdkPixbuf* @gdk_pixbuf_new(i32 0, i32 0, i32 8, i32 %42, i32 %43)
  store %struct._GdkPixbuf* %call25, %struct._GdkPixbuf** %tmp, align 8
  %44 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %45 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %tmp, align 8
  %46 = load i32, i32* %pixbuf_width, align 4
  %47 = load i32, i32* %pixbuf_height, align 4
  call void @gdk_pixbuf_composite_color(%struct._GdkPixbuf* %44, %struct._GdkPixbuf* %45, i32 0, i32 0, i32 %46, i32 %47, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00, double 1.000000e+00, i32 0, i32 255, i32 0, i32 0, i32 4, i32 1717986918, i32 -1717986919)
  %48 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %49 = bitcast %struct._GdkPixbuf* %48 to i8*
  call void @g_object_unref(i8* %49)
  %50 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %tmp, align 8
  store %struct._GdkPixbuf* %50, %struct._GdkPixbuf** %pixbuf, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %if.end.21
  %51 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  store %struct._GdkPixbuf* %51, %struct._GdkPixbuf** %retval
  br label %return

return:                                           ; preds = %if.end.26, %if.end.13, %if.then.6, %if.then
  %52 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %retval
  ret %struct._GdkPixbuf* %52
}

declare i32 @gimp_thumbnail_peek_thumb(%struct._GimpThumbnail*, i32) #1

declare %struct._GdkPixbuf* @gimp_thumbnail_load_thumb(%struct._GimpThumbnail*, i32, %struct._GError**) #1

declare void @gimp_message(%struct._Gimp*, %struct._GObject*, i32, i8*, ...) #1

declare i32 @gdk_pixbuf_get_width(%struct._GdkPixbuf*) #1

declare i32 @gdk_pixbuf_get_height(%struct._GdkPixbuf*) #1

declare void @gimp_viewable_calc_preview_size(i32, i32, i32, i32, i32, double, double, i32*, i32*, i32*) #1

declare %struct._GdkPixbuf* @gdk_pixbuf_scale_simple(%struct._GdkPixbuf*, i32, i32, i32) #1

declare i32 @gdk_pixbuf_get_n_channels(%struct._GdkPixbuf*) #1

declare %struct._GdkPixbuf* @gdk_pixbuf_new(i32, i32, i32, i32, i32) #1

declare void @gdk_pixbuf_composite_color(%struct._GdkPixbuf*, %struct._GdkPixbuf*, i32, i32, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, i32, i32) #1

declare i8* @file_utils_uri_display_name(i8*) #1

declare i8* @file_utils_uri_display_basename(i8*) #1

declare %struct._GimpThumbnail* @gimp_thumbnail_new() #1

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_imagefile_notify_thumbnail(%struct._GimpImagefile* %imagefile, %struct._GParamSpec* %pspec) #3 {
entry:
  %imagefile.addr = alloca %struct._GimpImagefile*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  store %struct._GimpImagefile* %imagefile, %struct._GimpImagefile** %imagefile.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %0, i32 0, i32 1
  %1 = load i8*, i8** %name, align 8
  %call = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i32 0, i32 0)) #8
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name1 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %2, i32 0, i32 1
  %3 = load i8*, i8** %name1, align 8
  %call2 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0)) #8
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile.addr, align 8
  call void @gimp_imagefile_info_changed(%struct._GimpImagefile* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_imagefile_info_changed(%struct._GimpImagefile* %imagefile) #3 {
entry:
  %imagefile.addr = alloca %struct._GimpImagefile*, align 8
  %private = alloca %struct._GimpImagefilePrivate*, align 8
  store %struct._GimpImagefile* %imagefile, %struct._GimpImagefile** %imagefile.addr, align 8
  %0 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile.addr, align 8
  %1 = bitcast %struct._GimpImagefile* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_imagefile_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpImagefilePrivate*
  store %struct._GimpImagefilePrivate* %2, %struct._GimpImagefilePrivate** %private, align 8
  %3 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %description = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %3, i32 0, i32 4
  %4 = load i8*, i8** %description, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %static_desc = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %5, i32 0, i32 5
  %6 = load i32, i32* %static_desc, align 4
  %tobool2 = icmp ne i32 %6, 0
  br i1 %tobool2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  %7 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %description4 = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %7, i32 0, i32 4
  %8 = load i8*, i8** %description4, align 8
  call void @g_free(i8* %8)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %9 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %description5 = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %9, i32 0, i32 4
  store i8* null, i8** %description5, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %10 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %icon = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %10, i32 0, i32 2
  %11 = load %struct._GIcon*, %struct._GIcon** %icon, align 8
  %tobool7 = icmp ne %struct._GIcon* %11, null
  br i1 %tobool7, label %if.then.8, label %if.end.13

if.then.8:                                        ; preds = %if.end.6
  %12 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile.addr, align 8
  %13 = bitcast %struct._GimpImagefile* %12 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_imagefile_get_type() #7
  %call10 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %13, i64 %call9)
  %14 = bitcast i8* %call10 to %struct._GimpImagefilePrivate*
  %icon11 = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %14, i32 0, i32 2
  %15 = load %struct._GIcon*, %struct._GIcon** %icon11, align 8
  %16 = bitcast %struct._GIcon* %15 to i8*
  call void @g_object_unref(i8* %16)
  %17 = load %struct._GimpImagefilePrivate*, %struct._GimpImagefilePrivate** %private, align 8
  %icon12 = getelementptr inbounds %struct._GimpImagefilePrivate, %struct._GimpImagefilePrivate* %17, i32 0, i32 2
  store %struct._GIcon* null, %struct._GIcon** %icon12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.8, %if.end.6
  %18 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile.addr, align 8
  %19 = bitcast %struct._GimpImagefile* %18 to i8*
  %20 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @gimp_imagefile_signals, i32 0, i64 0), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %19, i32 %20, i32 0)
  ret void
}

declare void @g_signal_emit(i8*, i32, i32, ...) #1

; Function Attrs: nounwind readnone
declare i64 @g_file_get_type() #2

declare %struct._GFileInfo* @g_file_query_info_finish(%struct._GFile*, %struct._GAsyncResult*, %struct._GError**) #1

declare i32 @g_error_matches(%struct._GError*, i32, i32) #1

declare i32 @g_io_error_quark() #1

declare %struct._GIcon* @g_file_info_get_icon(%struct._GFileInfo*) #1

declare %struct._GString* @g_string_insert_c(%struct._GString*, i64, i8 signext) #1

declare i32 @gimp_image_get_width(%struct._GimpImage*) #1

declare i32 @gimp_image_get_height(%struct._GimpImage*) #1

declare void @gimp_pickable_flush(%struct._GimpPickable*) #1

declare %struct._GimpProjection* @gimp_image_get_projection(%struct._GimpImage*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_pickable_interface_get_type() #2

declare %struct._GdkPixbuf* @gimp_viewable_get_new_pixbuf(%struct._GimpViewable*, %struct._GimpContext*, i32, i32) #1

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #1

declare i32 @gimp_thumbnail_save_thumb(%struct._GimpThumbnail*, %struct._GdkPixbuf*, i8*, %struct._GError**) #1

declare void @gimp_thumbnail_delete_others(%struct._GimpThumbnail*, i32) #1

declare void @gimp_thumbnail_delete_failure(%struct._GimpThumbnail*) #1

declare i32 @gimp_image_base_type(%struct._GimpImage*) #1

declare i32 @gimp_image_has_alpha(%struct._GimpImage*) #1

declare %struct._GimpEnumDesc* @gimp_enum_get_desc(%struct._GEnumClass*, i32) #1

declare i8* @g_type_class_peek(i64) #1

declare i32 @gimp_image_get_n_layers(%struct._GimpImage*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
