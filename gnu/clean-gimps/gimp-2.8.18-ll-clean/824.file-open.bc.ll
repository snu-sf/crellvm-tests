; ModuleID = './app/file/file-open.bc'
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
%struct._GimpColorConfig = type { %struct._GObject, i32, i8*, i8*, i8*, i32, i8*, i32, i32, i8*, i32, %struct._GimpRGB, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()* }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type { %struct._GimpObject, %struct._Gimp*, %struct._GSList*, i32, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GimpPlugIn*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GimpPlugInShm*, %struct._GimpInterpreterDB*, %struct._GimpEnvironTable*, %struct._GimpPlugInDebug*, %struct._GList* }
%struct._GimpPlugIn = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GimpPlugInShm = type opaque
%struct._GimpInterpreterDB = type opaque
%struct._GimpEnvironTable = type opaque
%struct._GimpPlugInDebug = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type { %struct._GimpObject, %struct._Gimp*, %struct._GHashTable*, %struct._GHashTable* }
%struct._GHashTable = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpImagefile = type { %struct._GimpViewable }
%struct._GimpProgress = type opaque
%struct._GimpPlugInProcedure = type { %struct._GimpProcedure, i8*, i32, i32, i8*, %struct._GList*, i8*, i32, i32, i8*, i8*, i32, i64, i32, i32, i8*, i8*, i8*, i8*, %struct._GSList*, %struct._GSList*, %struct._GSList*, i8* }
%struct._GimpProcedure = type { %struct._GimpObject, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GParamSpec**, i32, %struct._GParamSpec**, %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValueArray = type { i32, %struct._GValue*, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GError = type { i32, i32, i8* }
%struct._GimpParasite = type { i8*, i32, i32, i8* }
%struct._GimpDocumentList = type { %struct._GimpList, %struct._Gimp* }
%struct._GimpList = type { %struct._GimpContainer, %struct._GList*, i32, i32 (i8*, i8*)*, i32 }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpLayer = type { %struct._GimpDrawable, double, i32, i32, %struct._GimpLayerMask*, %struct._GeglNode*, %struct.anon }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpLayerMask = type opaque
%struct._GeglNode = type opaque
%struct.anon = type { %struct._GimpDrawable*, i32, %struct._BoundSeg*, i32 }
%struct._BoundSeg = type opaque

@.str = private unnamed_addr constant [10 x i8] c"Gimp-File\00", align 1
@__func__.file_open_image = private unnamed_addr constant [16 x i8] c"file_open_image\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"progress == NULL || GIMP_IS_PROGRESS (progress)\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"status != NULL\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"error == NULL || *error == NULL\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Not a regular file\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"%s plug-in returned SUCCESS but did not return an image\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"%s plug-In could not open image\00", align 1
@__func__.file_open_thumbnail = private unnamed_addr constant [20 x i8] c"file_open_thumbnail\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"mime_type != NULL\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"image_width != NULL\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"image_height != NULL\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"type != NULL\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"num_layers != NULL\00", align 1
@__func__.file_open_with_proc_and_display = private unnamed_addr constant [32 x i8] c"file_open_with_proc_and_display\00", align 1
@__func__.file_open_layers = private unnamed_addr constant [17 x i8] c"file_open_layers\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"GIMP_IS_IMAGE (dest_image)\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"uri != NULL\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"Image doesn't contain any layers\00", align 1
@__func__.file_open_from_command_line = private unnamed_addr constant [28 x i8] c"file_open_from_command_line\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"filename != NULL\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"gimp-file-open-last-uri\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"Opening '%s' failed: %s\00", align 1
@.str.20 = private unnamed_addr constant [39 x i8] c"conversion filename -> uri failed: %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"icc-profile\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"%s\0A\0A%s\00", align 1
@.str.23 = private unnamed_addr constant [87 x i8] c"Color management has been disabled. It can be enabled again in the Preferences dialog.\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"image/xcf\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GimpImage* @file_open_image(%struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, i8* %uri, i8* %entered_filename, i32 %as_new, %struct._GimpPlugInProcedure* %file_proc, i32 %run_mode, i32* %status, i8** %mime_type, %struct._GError** %error) #0 {
entry:
  %retval = alloca %struct._GimpImage*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %uri.addr = alloca i8*, align 8
  %entered_filename.addr = alloca i8*, align 8
  %as_new.addr = alloca i32, align 4
  %file_proc.addr = alloca %struct._GimpPlugInProcedure*, align 8
  %run_mode.addr = alloca i32, align 4
  %status.addr = alloca i32*, align 8
  %mime_type.addr = alloca i8**, align 8
  %error.addr = alloca %struct._GError**, align 8
  %return_vals = alloca %struct._GValueArray*, align 8
  %filename = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
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
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store i8* %uri, i8** %uri.addr, align 8
  store i8* %entered_filename, i8** %entered_filename.addr, align 8
  store i32 %as_new, i32* %as_new.addr, align 4
  store %struct._GimpPlugInProcedure* %file_proc, %struct._GimpPlugInProcedure** %file_proc.addr, align 8
  store i32 %run_mode, i32* %run_mode.addr, align 4
  store i32* %status, i32** %status.addr, align 8
  store i8** %mime_type, i8*** %mime_type.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store %struct._GimpImage* null, %struct._GimpImage** %image, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.file_open_image, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpImage* null, %struct._GimpImage** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_context_get_type() #5
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.file_open_image, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpImage* null, %struct._GimpImage** %retval
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
  %call45 = call i64 @gimp_progress_interface_get_type() #5
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
  %call59 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %36, i64 %37) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.file_open_image, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpImage* null, %struct._GimpImage** %retval
  br label %return

if.end.66:                                        ; preds = %if.then.64
  br label %do.end.67

do.end.67:                                        ; preds = %if.end.66
  br label %do.body.68

do.body.68:                                       ; preds = %do.end.67
  %40 = load i32*, i32** %status.addr, align 8
  %cmp69 = icmp ne i32* %40, null
  br i1 %cmp69, label %if.then.70, label %if.else.71

if.then.70:                                       ; preds = %do.body.68
  br label %if.end.72

if.else.71:                                       ; preds = %do.body.68
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.file_open_image, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GimpImage* null, %struct._GimpImage** %retval
  br label %return

if.end.72:                                        ; preds = %if.then.70
  br label %do.end.73

do.end.73:                                        ; preds = %if.end.72
  br label %do.body.74

do.body.74:                                       ; preds = %do.end.73
  %41 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp75 = icmp eq %struct._GError** %41, null
  br i1 %cmp75, label %if.then.78, label %lor.lhs.false.76

lor.lhs.false.76:                                 ; preds = %do.body.74
  %42 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %43 = load %struct._GError*, %struct._GError** %42, align 8
  %cmp77 = icmp eq %struct._GError* %43, null
  br i1 %cmp77, label %if.then.78, label %if.else.79

if.then.78:                                       ; preds = %lor.lhs.false.76, %do.body.74
  br label %if.end.80

if.else.79:                                       ; preds = %lor.lhs.false.76
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.file_open_image, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GimpImage* null, %struct._GimpImage** %retval
  br label %return

if.end.80:                                        ; preds = %if.then.78
  br label %do.end.81

do.end.81:                                        ; preds = %if.end.80
  %44 = load i32*, i32** %status.addr, align 8
  store i32 0, i32* %44, align 4
  %45 = load i8*, i8** %uri.addr, align 8
  %call82 = call i8* @file_utils_filename_from_uri(i8* %45)
  store i8* %call82, i8** %filename, align 8
  %46 = load i8*, i8** %filename, align 8
  %tobool83 = icmp ne i8* %46, null
  br i1 %tobool83, label %if.then.84, label %if.else.102

if.then.84:                                       ; preds = %do.end.81
  %47 = load i8*, i8** %filename, align 8
  %call85 = call i32 @g_file_test(i8* %47, i32 16)
  %tobool86 = icmp ne i32 %call85, 0
  br i1 %tobool86, label %if.then.87, label %if.end.101

if.then.87:                                       ; preds = %if.then.84
  %48 = load i8*, i8** %filename, align 8
  %call88 = call i32 @g_file_test(i8* %48, i32 1)
  %tobool89 = icmp ne i32 %call88, 0
  br i1 %tobool89, label %if.end.93, label %if.then.90

if.then.90:                                       ; preds = %if.then.87
  %49 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %49)
  %50 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call91 = call i32 @g_file_error_quark()
  %call92 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0)) #7
  call void @g_set_error_literal(%struct._GError** %50, i32 %call91, i32 24, i8* %call92)
  store %struct._GimpImage* null, %struct._GimpImage** %retval
  br label %return

if.end.93:                                        ; preds = %if.then.87
  %51 = load i8*, i8** %filename, align 8
  %call94 = call i32 @g_access(i8* %51, i32 4)
  %cmp95 = icmp ne i32 %call94, 0
  br i1 %cmp95, label %if.then.96, label %if.end.100

if.then.96:                                       ; preds = %if.end.93
  %52 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %52)
  %53 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call97 = call i32 @g_file_error_quark()
  %call98 = call i32* @__errno_location() #5
  %54 = load i32, i32* %call98, align 4
  %call99 = call i8* @g_strerror(i32 %54) #5
  call void @g_set_error_literal(%struct._GError** %53, i32 %call97, i32 2, i8* %call99)
  store %struct._GimpImage* null, %struct._GimpImage** %retval
  br label %return

if.end.100:                                       ; preds = %if.end.93
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %if.then.84
  br label %if.end.104

if.else.102:                                      ; preds = %do.end.81
  %55 = load i8*, i8** %uri.addr, align 8
  %call103 = call noalias i8* @g_strdup(i8* %55)
  store i8* %call103, i8** %filename, align 8
  br label %if.end.104

if.end.104:                                       ; preds = %if.else.102, %if.end.101
  %56 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc.addr, align 8
  %tobool105 = icmp ne %struct._GimpPlugInProcedure* %56, null
  br i1 %tobool105, label %if.end.108, label %if.then.106

if.then.106:                                      ; preds = %if.end.104
  %57 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %plug_in_manager = getelementptr inbounds %struct._Gimp, %struct._Gimp* %57, i32 0, i32 25
  %58 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager, align 8
  %load_procs = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %58, i32 0, i32 5
  %59 = load %struct._GSList*, %struct._GSList** %load_procs, align 8
  %60 = load i8*, i8** %uri.addr, align 8
  %61 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call107 = call %struct._GimpPlugInProcedure* @file_procedure_find(%struct._GSList* %59, i8* %60, %struct._GError** %61)
  store %struct._GimpPlugInProcedure* %call107, %struct._GimpPlugInProcedure** %file_proc.addr, align 8
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.106, %if.end.104
  %62 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc.addr, align 8
  %tobool109 = icmp ne %struct._GimpPlugInProcedure* %62, null
  br i1 %tobool109, label %if.end.111, label %if.then.110

if.then.110:                                      ; preds = %if.end.108
  %63 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %63)
  store %struct._GimpImage* null, %struct._GimpImage** %retval
  br label %return

if.end.111:                                       ; preds = %if.end.108
  %64 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool112 = icmp ne %struct._GimpProgress* %64, null
  br i1 %tobool112, label %if.then.113, label %if.end.115

if.then.113:                                      ; preds = %if.end.111
  %65 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %66 = bitcast %struct._GimpProgress* %65 to %struct._GTypeInstance*
  %call114 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 80)
  %67 = bitcast %struct._GTypeInstance* %call114 to %struct._GObject*
  %68 = bitcast %struct._GimpProgress** %progress.addr to i8*
  %69 = bitcast i8* %68 to i8**
  call void @g_object_add_weak_pointer(%struct._GObject* %67, i8** %69)
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.113, %if.end.111
  %70 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %pdb = getelementptr inbounds %struct._Gimp, %struct._Gimp* %70, i32 0, i32 44
  %71 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb, align 8
  %72 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %73 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %74 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %75 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc.addr, align 8
  %76 = bitcast %struct._GimpPlugInProcedure* %75 to i8*
  %call116 = call i8* @gimp_object_get_name(i8* %76)
  %call117 = call i64 @gimp_int32_get_type() #5
  %77 = load i32, i32* %run_mode.addr, align 4
  %78 = load i8*, i8** %filename, align 8
  %79 = load i8*, i8** %entered_filename.addr, align 8
  %call118 = call %struct._GValueArray* (%struct._GimpPDB*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GError**, i8*, ...) @gimp_pdb_execute_procedure_by_name(%struct._GimpPDB* %71, %struct._GimpContext* %72, %struct._GimpProgress* %73, %struct._GError** %74, i8* %call116, i64 %call117, i32 %77, i64 64, i8* %78, i64 64, i8* %79, i64 4)
  store %struct._GValueArray* %call118, %struct._GValueArray** %return_vals, align 8
  %80 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool119 = icmp ne %struct._GimpProgress* %80, null
  br i1 %tobool119, label %if.then.120, label %if.end.122

if.then.120:                                      ; preds = %if.end.115
  %81 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %82 = bitcast %struct._GimpProgress* %81 to %struct._GTypeInstance*
  %call121 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %82, i64 80)
  %83 = bitcast %struct._GTypeInstance* %call121 to %struct._GObject*
  %84 = bitcast %struct._GimpProgress** %progress.addr to i8*
  %85 = bitcast i8* %84 to i8**
  call void @g_object_remove_weak_pointer(%struct._GObject* %83, i8** %85)
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.120, %if.end.115
  %86 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %86)
  %87 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %87, i32 0, i32 1
  %88 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %88, i64 0
  %call123 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx)
  %89 = load i32*, i32** %status.addr, align 8
  store i32 %call123, i32* %89, align 4
  %90 = load i32*, i32** %status.addr, align 8
  %91 = load i32, i32* %90, align 4
  %cmp124 = icmp eq i32 %91, 3
  br i1 %cmp124, label %if.then.125, label %if.else.150

if.then.125:                                      ; preds = %if.end.122
  %92 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values126 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %92, i32 0, i32 1
  %93 = load %struct._GValue*, %struct._GValue** %values126, align 8
  %arrayidx127 = getelementptr inbounds %struct._GValue, %struct._GValue* %93, i64 1
  %94 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call128 = call %struct._GimpImage* @gimp_value_get_image(%struct._GValue* %arrayidx127, %struct._Gimp* %94)
  store %struct._GimpImage* %call128, %struct._GimpImage** %image, align 8
  %95 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool129 = icmp ne %struct._GimpImage* %95, null
  br i1 %tobool129, label %if.then.130, label %if.else.140

if.then.130:                                      ; preds = %if.then.125
  %96 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %97 = load i32, i32* %as_new.addr, align 4
  call void @file_open_sanitize_image(%struct._GimpImage* %96, i32 %97)
  %98 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call131 = call %struct._GimpPlugInProcedure* @gimp_image_get_load_proc(%struct._GimpImage* %98)
  %tobool132 = icmp ne %struct._GimpPlugInProcedure* %call131, null
  br i1 %tobool132, label %if.end.134, label %if.then.133

if.then.133:                                      ; preds = %if.then.130
  %99 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %100 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc.addr, align 8
  call void @gimp_image_set_load_proc(%struct._GimpImage* %99, %struct._GimpPlugInProcedure* %100)
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.133, %if.then.130
  %101 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call135 = call %struct._GimpPlugInProcedure* @gimp_image_get_load_proc(%struct._GimpImage* %101)
  store %struct._GimpPlugInProcedure* %call135, %struct._GimpPlugInProcedure** %file_proc.addr, align 8
  %102 = load i8**, i8*** %mime_type.addr, align 8
  %tobool136 = icmp ne i8** %102, null
  br i1 %tobool136, label %if.then.137, label %if.end.139

if.then.137:                                      ; preds = %if.end.134
  %103 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc.addr, align 8
  %mime_type138 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %103, i32 0, i32 18
  %104 = load i8*, i8** %mime_type138, align 8
  %105 = load i8**, i8*** %mime_type.addr, align 8
  store i8* %104, i8** %105, align 8
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.137, %if.end.134
  br label %if.end.149

if.else.140:                                      ; preds = %if.then.125
  %106 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool141 = icmp ne %struct._GError** %106, null
  br i1 %tobool141, label %land.lhs.true.142, label %if.end.148

land.lhs.true.142:                                ; preds = %if.else.140
  %107 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %108 = load %struct._GError*, %struct._GError** %107, align 8
  %tobool143 = icmp ne %struct._GError* %108, null
  br i1 %tobool143, label %if.end.148, label %if.then.144

if.then.144:                                      ; preds = %land.lhs.true.142
  %109 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call145 = call i32 @g_file_error_quark()
  %call146 = call i8* @gettext(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i32 0, i32 0)) #7
  %110 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc.addr, align 8
  %call147 = call i8* @gimp_plug_in_procedure_get_label(%struct._GimpPlugInProcedure* %110)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %109, i32 %call145, i32 24, i8* %call146, i8* %call147)
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.144, %land.lhs.true.142, %if.else.140
  %111 = load i32*, i32** %status.addr, align 8
  store i32 0, i32* %111, align 4
  br label %if.end.149

if.end.149:                                       ; preds = %if.end.148, %if.end.139
  br label %if.end.162

if.else.150:                                      ; preds = %if.end.122
  %112 = load i32*, i32** %status.addr, align 8
  %113 = load i32, i32* %112, align 4
  %cmp151 = icmp ne i32 %113, 4
  br i1 %cmp151, label %if.then.152, label %if.end.161

if.then.152:                                      ; preds = %if.else.150
  %114 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool153 = icmp ne %struct._GError** %114, null
  br i1 %tobool153, label %land.lhs.true.154, label %if.end.160

land.lhs.true.154:                                ; preds = %if.then.152
  %115 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %116 = load %struct._GError*, %struct._GError** %115, align 8
  %tobool155 = icmp ne %struct._GError* %116, null
  br i1 %tobool155, label %if.end.160, label %if.then.156

if.then.156:                                      ; preds = %land.lhs.true.154
  %117 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call157 = call i32 @g_file_error_quark()
  %call158 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i32 0, i32 0)) #7
  %118 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc.addr, align 8
  %call159 = call i8* @gimp_plug_in_procedure_get_label(%struct._GimpPlugInProcedure* %118)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %117, i32 %call157, i32 24, i8* %call158, i8* %call159)
  br label %if.end.160

if.end.160:                                       ; preds = %if.then.156, %land.lhs.true.154, %if.then.152
  br label %if.end.161

if.end.161:                                       ; preds = %if.end.160, %if.else.150
  br label %if.end.162

if.end.162:                                       ; preds = %if.end.161, %if.end.149
  %119 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  call void @g_value_array_free(%struct._GValueArray* %119)
  %120 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool163 = icmp ne %struct._GimpImage* %120, null
  br i1 %tobool163, label %if.then.164, label %if.end.169

if.then.164:                                      ; preds = %if.end.162
  %121 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %122 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %123 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %124 = load i32, i32* %run_mode.addr, align 4
  call void @file_open_handle_color_profile(%struct._GimpImage* %121, %struct._GimpContext* %122, %struct._GimpProgress* %123, i32 %124)
  %125 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc.addr, align 8
  %call165 = call i32 @file_open_file_proc_is_import(%struct._GimpPlugInProcedure* %125)
  %tobool166 = icmp ne i32 %call165, 0
  br i1 %tobool166, label %if.then.167, label %if.end.168

if.then.167:                                      ; preds = %if.then.164
  %126 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %127 = load i8*, i8** %uri.addr, align 8
  call void @gimp_image_set_imported_uri(%struct._GimpImage* %126, i8* %127)
  %128 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_set_uri(%struct._GimpImage* %128, i8* null)
  br label %if.end.168

if.end.168:                                       ; preds = %if.then.167, %if.then.164
  br label %if.end.169

if.end.169:                                       ; preds = %if.end.168, %if.end.162
  %129 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  store %struct._GimpImage* %129, %struct._GimpImage** %retval
  br label %return

return:                                           ; preds = %if.end.169, %if.then.110, %if.then.96, %if.then.90, %if.else.79, %if.else.71, %if.else.65, %if.else.36, %if.else.9
  %130 = load %struct._GimpImage*, %struct._GimpImage** %retval
  ret %struct._GimpImage* %130
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_progress_interface_get_type() #1

declare i8* @file_utils_filename_from_uri(i8*) #3

declare i32 @g_file_test(i8*, i32) #3

declare void @g_free(i8*) #3

declare void @g_set_error_literal(%struct._GError**, i32, i32, i8*) #3

declare i32 @g_file_error_quark() #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare i32 @g_access(i8*, i32) #3

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #1

declare noalias i8* @g_strdup(i8*) #3

declare %struct._GimpPlugInProcedure* @file_procedure_find(%struct._GSList*, i8*, %struct._GError**) #3

declare void @g_object_add_weak_pointer(%struct._GObject*, i8**) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

declare %struct._GValueArray* @gimp_pdb_execute_procedure_by_name(%struct._GimpPDB*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GError**, i8*, ...) #3

declare i8* @gimp_object_get_name(i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_int32_get_type() #1

declare void @g_object_remove_weak_pointer(%struct._GObject*, i8**) #3

declare i32 @g_value_get_enum(%struct._GValue*) #3

declare %struct._GimpImage* @gimp_value_get_image(%struct._GValue*, %struct._Gimp*) #3

; Function Attrs: nounwind uwtable
define internal void @file_open_sanitize_image(%struct._GimpImage* %image, i32 %as_new) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %as_new.addr = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %as_new, i32* %as_new.addr, align 4
  %0 = load i32, i32* %as_new.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_image_set_uri(%struct._GimpImage* %1, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_image_undo_free(%struct._GimpImage* %2)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call = call i32 @gimp_image_undo_is_enabled(%struct._GimpImage* %3)
  %tobool1 = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool1, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call2 = call i32 @gimp_image_undo_thaw(%struct._GimpImage* %4)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_image_clean_all(%struct._GimpImage* %5)
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call3 = call i32 @gimp_image_get_width(%struct._GimpImage* %7)
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call4 = call i32 @gimp_image_get_height(%struct._GimpImage* %8)
  call void @gimp_image_invalidate(%struct._GimpImage* %6, i32 0, i32 0, i32 %call3, i32 %call4)
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_image_flush(%struct._GimpImage* %9)
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_image_invalidate_previews(%struct._GimpImage* %10)
  ret void
}

declare %struct._GimpPlugInProcedure* @gimp_image_get_load_proc(%struct._GimpImage*) #3

declare void @gimp_image_set_load_proc(%struct._GimpImage*, %struct._GimpPlugInProcedure*) #3

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #3

declare i8* @gimp_plug_in_procedure_get_label(%struct._GimpPlugInProcedure*) #3

declare void @g_value_array_free(%struct._GValueArray*) #3

; Function Attrs: nounwind uwtable
define internal void @file_open_handle_color_profile(%struct._GimpImage* %image, %struct._GimpContext* %context, %struct._GimpProgress* %progress, i32 %run_mode) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %run_mode.addr = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store i32 %run_mode, i32* %run_mode.addr, align 4
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call = call %struct._GimpParasite* @gimp_image_parasite_find(%struct._GimpImage* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0))
  %tobool = icmp ne %struct._GimpParasite* %call, null
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call1 = call i32 @gimp_image_undo_disable(%struct._GimpImage* %1)
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %2, i32 0, i32 1
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %3, i32 0, i32 1
  %4 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %color_profile_policy = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %4, i32 0, i32 47
  %5 = load i32, i32* %color_profile_policy, align 4
  switch i32 %5, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.3
    i32 2, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %if.then
  %6 = load i32, i32* %run_mode.addr, align 4
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %sw.bb
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %8 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %9 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @file_open_profile_apply_rgb(%struct._GimpImage* %7, %struct._GimpContext* %8, %struct._GimpProgress* %9, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %sw.bb
  br label %sw.epilog

sw.bb.3:                                          ; preds = %if.then
  br label %sw.epilog

sw.bb.4:                                          ; preds = %if.then
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %11 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %12 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @file_open_profile_apply_rgb(%struct._GimpImage* %10, %struct._GimpContext* %11, %struct._GimpProgress* %12, i32 1)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb.4, %sw.bb.3, %if.end
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_image_clean_all(%struct._GimpImage* %13)
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call5 = call i32 @gimp_image_undo_enable(%struct._GimpImage* %14)
  br label %if.end.6

if.end.6:                                         ; preds = %sw.epilog, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @file_open_file_proc_is_import(%struct._GimpPlugInProcedure* %file_proc) #0 {
entry:
  %file_proc.addr = alloca %struct._GimpPlugInProcedure*, align 8
  store %struct._GimpPlugInProcedure* %file_proc, %struct._GimpPlugInProcedure** %file_proc.addr, align 8
  %0 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc.addr, align 8
  %tobool = icmp ne %struct._GimpPlugInProcedure* %0, null
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc.addr, align 8
  %mime_type = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %1, i32 0, i32 18
  %2 = load i8*, i8** %mime_type, align 8
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %3 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc.addr, align 8
  %mime_type2 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %3, i32 0, i32 18
  %4 = load i8*, i8** %mime_type2, align 8
  %call = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0)) #6
  %cmp = icmp eq i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %5 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %cmp, %land.rhs ]
  %lnot = xor i1 %5, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

declare void @gimp_image_set_imported_uri(%struct._GimpImage*, i8*) #3

declare void @gimp_image_set_uri(%struct._GimpImage*, i8*) #3

; Function Attrs: nounwind uwtable
define %struct._GimpImage* @file_open_thumbnail(%struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, i8* %uri, i32 %size, i8** %mime_type, i32* %image_width, i32* %image_height, i32* %type, i32* %num_layers, %struct._GError** %error) #0 {
entry:
  %retval = alloca %struct._GimpImage*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %uri.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %mime_type.addr = alloca i8**, align 8
  %image_width.addr = alloca i32*, align 8
  %image_height.addr = alloca i32*, align 8
  %type.addr = alloca i32*, align 8
  %num_layers.addr = alloca i32*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %file_proc = alloca %struct._GimpPlugInProcedure*, align 8
  %procedure = alloca %struct._GimpProcedure*, align 8
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
  %status = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %filename = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %__val = alloca %struct._GValue*, align 8
  %__t140 = alloca i64, align 8
  %__r143 = alloca i32, align 4
  %tmp154 = alloca i32, align 4
  %__val163 = alloca %struct._GValue*, align 8
  %__t167 = alloca i64, align 8
  %__r169 = alloca i32, align 4
  %tmp180 = alloca i32, align 4
  %__val184 = alloca %struct._GValue*, align 8
  %__t188 = alloca i64, align 8
  %__r190 = alloca i32, align 4
  %tmp201 = alloca i32, align 4
  %__val226 = alloca %struct._GValue*, align 8
  %__t230 = alloca i64, align 8
  %__r232 = alloca i32, align 4
  %tmp243 = alloca i32, align 4
  %value = alloca i32, align 4
  %__val260 = alloca %struct._GValue*, align 8
  %__t264 = alloca i64, align 8
  %__r266 = alloca i32, align 4
  %tmp277 = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store i8* %uri, i8** %uri.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i8** %mime_type, i8*** %mime_type.addr, align 8
  store i32* %image_width, i32** %image_width.addr, align 8
  store i32* %image_height, i32** %image_height.addr, align 8
  store i32* %type, i32** %type.addr, align 8
  store i32* %num_layers, i32** %num_layers.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.file_open_thumbnail, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpImage* null, %struct._GimpImage** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_context_get_type() #5
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.file_open_thumbnail, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpImage* null, %struct._GimpImage** %retval
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
  %call45 = call i64 @gimp_progress_interface_get_type() #5
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
  %call59 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %36, i64 %37) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.file_open_thumbnail, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpImage* null, %struct._GimpImage** %retval
  br label %return

if.end.66:                                        ; preds = %if.then.64
  br label %do.end.67

do.end.67:                                        ; preds = %if.end.66
  br label %do.body.68

do.body.68:                                       ; preds = %do.end.67
  %40 = load i8**, i8*** %mime_type.addr, align 8
  %cmp69 = icmp ne i8** %40, null
  br i1 %cmp69, label %if.then.70, label %if.else.71

if.then.70:                                       ; preds = %do.body.68
  br label %if.end.72

if.else.71:                                       ; preds = %do.body.68
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.file_open_thumbnail, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0))
  store %struct._GimpImage* null, %struct._GimpImage** %retval
  br label %return

if.end.72:                                        ; preds = %if.then.70
  br label %do.end.73

do.end.73:                                        ; preds = %if.end.72
  br label %do.body.74

do.body.74:                                       ; preds = %do.end.73
  %41 = load i32*, i32** %image_width.addr, align 8
  %cmp75 = icmp ne i32* %41, null
  br i1 %cmp75, label %if.then.76, label %if.else.77

if.then.76:                                       ; preds = %do.body.74
  br label %if.end.78

if.else.77:                                       ; preds = %do.body.74
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.file_open_thumbnail, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0))
  store %struct._GimpImage* null, %struct._GimpImage** %retval
  br label %return

if.end.78:                                        ; preds = %if.then.76
  br label %do.end.79

do.end.79:                                        ; preds = %if.end.78
  br label %do.body.80

do.body.80:                                       ; preds = %do.end.79
  %42 = load i32*, i32** %image_height.addr, align 8
  %cmp81 = icmp ne i32* %42, null
  br i1 %cmp81, label %if.then.82, label %if.else.83

if.then.82:                                       ; preds = %do.body.80
  br label %if.end.84

if.else.83:                                       ; preds = %do.body.80
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.file_open_thumbnail, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0))
  store %struct._GimpImage* null, %struct._GimpImage** %retval
  br label %return

if.end.84:                                        ; preds = %if.then.82
  br label %do.end.85

do.end.85:                                        ; preds = %if.end.84
  br label %do.body.86

do.body.86:                                       ; preds = %do.end.85
  %43 = load i32*, i32** %type.addr, align 8
  %cmp87 = icmp ne i32* %43, null
  br i1 %cmp87, label %if.then.88, label %if.else.89

if.then.88:                                       ; preds = %do.body.86
  br label %if.end.90

if.else.89:                                       ; preds = %do.body.86
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.file_open_thumbnail, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0))
  store %struct._GimpImage* null, %struct._GimpImage** %retval
  br label %return

if.end.90:                                        ; preds = %if.then.88
  br label %do.end.91

do.end.91:                                        ; preds = %if.end.90
  br label %do.body.92

do.body.92:                                       ; preds = %do.end.91
  %44 = load i32*, i32** %num_layers.addr, align 8
  %cmp93 = icmp ne i32* %44, null
  br i1 %cmp93, label %if.then.94, label %if.else.95

if.then.94:                                       ; preds = %do.body.92
  br label %if.end.96

if.else.95:                                       ; preds = %do.body.92
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.file_open_thumbnail, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0))
  store %struct._GimpImage* null, %struct._GimpImage** %retval
  br label %return

if.end.96:                                        ; preds = %if.then.94
  br label %do.end.97

do.end.97:                                        ; preds = %if.end.96
  br label %do.body.98

do.body.98:                                       ; preds = %do.end.97
  %45 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp99 = icmp eq %struct._GError** %45, null
  br i1 %cmp99, label %if.then.102, label %lor.lhs.false.100

lor.lhs.false.100:                                ; preds = %do.body.98
  %46 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %47 = load %struct._GError*, %struct._GError** %46, align 8
  %cmp101 = icmp eq %struct._GError* %47, null
  br i1 %cmp101, label %if.then.102, label %if.else.103

if.then.102:                                      ; preds = %lor.lhs.false.100, %do.body.98
  br label %if.end.104

if.else.103:                                      ; preds = %lor.lhs.false.100
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.file_open_thumbnail, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GimpImage* null, %struct._GimpImage** %retval
  br label %return

if.end.104:                                       ; preds = %if.then.102
  br label %do.end.105

do.end.105:                                       ; preds = %if.end.104
  %48 = load i32*, i32** %image_width.addr, align 8
  store i32 0, i32* %48, align 4
  %49 = load i32*, i32** %image_height.addr, align 8
  store i32 0, i32* %49, align 4
  %50 = load i32*, i32** %type.addr, align 8
  store i32 -1, i32* %50, align 4
  %51 = load i32*, i32** %num_layers.addr, align 8
  store i32 -1, i32* %51, align 4
  %52 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %plug_in_manager = getelementptr inbounds %struct._Gimp, %struct._Gimp* %52, i32 0, i32 25
  %53 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager, align 8
  %load_procs = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %53, i32 0, i32 5
  %54 = load %struct._GSList*, %struct._GSList** %load_procs, align 8
  %55 = load i8*, i8** %uri.addr, align 8
  %call106 = call %struct._GimpPlugInProcedure* @file_procedure_find(%struct._GSList* %54, i8* %55, %struct._GError** null)
  store %struct._GimpPlugInProcedure* %call106, %struct._GimpPlugInProcedure** %file_proc, align 8
  %56 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc, align 8
  %tobool107 = icmp ne %struct._GimpPlugInProcedure* %56, null
  br i1 %tobool107, label %lor.lhs.false.108, label %if.then.110

lor.lhs.false.108:                                ; preds = %do.end.105
  %57 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc, align 8
  %thumb_loader = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %57, i32 0, i32 22
  %58 = load i8*, i8** %thumb_loader, align 8
  %tobool109 = icmp ne i8* %58, null
  br i1 %tobool109, label %if.end.111, label %if.then.110

if.then.110:                                      ; preds = %lor.lhs.false.108, %do.end.105
  store %struct._GimpImage* null, %struct._GimpImage** %retval
  br label %return

if.end.111:                                       ; preds = %lor.lhs.false.108
  %59 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %pdb = getelementptr inbounds %struct._Gimp, %struct._Gimp* %59, i32 0, i32 44
  %60 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb, align 8
  %61 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc, align 8
  %thumb_loader112 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %61, i32 0, i32 22
  %62 = load i8*, i8** %thumb_loader112, align 8
  %call113 = call %struct._GimpProcedure* @gimp_pdb_lookup_procedure(%struct._GimpPDB* %60, i8* %62)
  store %struct._GimpProcedure* %call113, %struct._GimpProcedure** %procedure, align 8
  %63 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %tobool114 = icmp ne %struct._GimpProcedure* %63, null
  br i1 %tobool114, label %land.lhs.true.115, label %if.end.298

land.lhs.true.115:                                ; preds = %if.end.111
  %64 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %num_args = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %64, i32 0, i32 10
  %65 = load i32, i32* %num_args, align 4
  %cmp116 = icmp sge i32 %65, 2
  br i1 %cmp116, label %land.lhs.true.117, label %if.end.298

land.lhs.true.117:                                ; preds = %land.lhs.true.115
  %66 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %num_values = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %66, i32 0, i32 12
  %67 = load i32, i32* %num_values, align 4
  %cmp118 = icmp sge i32 %67, 1
  br i1 %cmp118, label %if.then.119, label %if.end.298

if.then.119:                                      ; preds = %land.lhs.true.117
  store %struct._GimpImage* null, %struct._GimpImage** %image, align 8
  %68 = load i8*, i8** %uri.addr, align 8
  %call124 = call i8* @file_utils_filename_from_uri(i8* %68)
  store i8* %call124, i8** %filename, align 8
  %69 = load i8*, i8** %filename, align 8
  %tobool125 = icmp ne i8* %69, null
  br i1 %tobool125, label %if.end.128, label %if.then.126

if.then.126:                                      ; preds = %if.then.119
  %70 = load i8*, i8** %uri.addr, align 8
  %call127 = call noalias i8* @g_strdup(i8* %70)
  store i8* %call127, i8** %filename, align 8
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.126, %if.then.119
  %71 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %pdb129 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %71, i32 0, i32 44
  %72 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb129, align 8
  %73 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %74 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %75 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %76 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %77 = bitcast %struct._GimpProcedure* %76 to i8*
  %call130 = call i8* @gimp_object_get_name(i8* %77)
  %78 = load i8*, i8** %filename, align 8
  %call131 = call i64 @gimp_int32_get_type() #5
  %79 = load i32, i32* %size.addr, align 4
  %call132 = call %struct._GValueArray* (%struct._GimpPDB*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GError**, i8*, ...) @gimp_pdb_execute_procedure_by_name(%struct._GimpPDB* %72, %struct._GimpContext* %73, %struct._GimpProgress* %74, %struct._GError** %75, i8* %call130, i64 64, i8* %78, i64 %call131, i32 %79, i64 4)
  store %struct._GValueArray* %call132, %struct._GValueArray** %return_vals, align 8
  %80 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %80)
  %81 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %81, i32 0, i32 1
  %82 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %82, i64 0
  %call133 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx)
  store i32 %call133, i32* %status, align 4
  %83 = load i32, i32* %status, align 4
  %cmp134 = icmp eq i32 %83, 3
  br i1 %cmp134, label %land.lhs.true.135, label %if.end.297

land.lhs.true.135:                                ; preds = %if.end.128
  %84 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values137 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %84, i32 0, i32 1
  %85 = load %struct._GValue*, %struct._GValue** %values137, align 8
  %arrayidx138 = getelementptr inbounds %struct._GValue, %struct._GValue* %85, i64 1
  store %struct._GValue* %arrayidx138, %struct._GValue** %__val, align 8
  %call141 = call i64 @gimp_image_id_get_type() #5
  store i64 %call141, i64* %__t140, align 8
  %86 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool144 = icmp ne %struct._GValue* %86, null
  br i1 %tobool144, label %if.else.146, label %if.then.145

if.then.145:                                      ; preds = %land.lhs.true.135
  store i32 0, i32* %__r143, align 4
  br label %if.end.153

if.else.146:                                      ; preds = %land.lhs.true.135
  %87 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type147 = getelementptr inbounds %struct._GValue, %struct._GValue* %87, i32 0, i32 0
  %88 = load i64, i64* %g_type147, align 8
  %89 = load i64, i64* %__t140, align 8
  %cmp148 = icmp eq i64 %88, %89
  br i1 %cmp148, label %if.then.149, label %if.else.150

if.then.149:                                      ; preds = %if.else.146
  store i32 1, i32* %__r143, align 4
  br label %if.end.152

if.else.150:                                      ; preds = %if.else.146
  %90 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %91 = load i64, i64* %__t140, align 8
  %call151 = call i32 @g_type_check_value_holds(%struct._GValue* %90, i64 %91) #6
  store i32 %call151, i32* %__r143, align 4
  br label %if.end.152

if.end.152:                                       ; preds = %if.else.150, %if.then.149
  br label %if.end.153

if.end.153:                                       ; preds = %if.end.152, %if.then.145
  %92 = load i32, i32* %__r143, align 4
  store i32 %92, i32* %tmp154
  %93 = load i32, i32* %tmp154
  %tobool155 = icmp ne i32 %93, 0
  br i1 %tobool155, label %if.then.156, label %if.end.297

if.then.156:                                      ; preds = %if.end.153
  %94 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values157 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %94, i32 0, i32 1
  %95 = load %struct._GValue*, %struct._GValue** %values157, align 8
  %arrayidx158 = getelementptr inbounds %struct._GValue, %struct._GValue* %95, i64 1
  %96 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call159 = call %struct._GimpImage* @gimp_value_get_image(%struct._GValue* %arrayidx158, %struct._Gimp* %96)
  store %struct._GimpImage* %call159, %struct._GimpImage** %image, align 8
  %97 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %n_values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %97, i32 0, i32 0
  %98 = load i32, i32* %n_values, align 4
  %cmp160 = icmp uge i32 %98, 3
  br i1 %cmp160, label %land.lhs.true.161, label %if.end.292

land.lhs.true.161:                                ; preds = %if.then.156
  %99 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values164 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %99, i32 0, i32 1
  %100 = load %struct._GValue*, %struct._GValue** %values164, align 8
  %arrayidx165 = getelementptr inbounds %struct._GValue, %struct._GValue* %100, i64 2
  store %struct._GValue* %arrayidx165, %struct._GValue** %__val163, align 8
  store i64 24, i64* %__t167, align 8
  %101 = load %struct._GValue*, %struct._GValue** %__val163, align 8
  %tobool170 = icmp ne %struct._GValue* %101, null
  br i1 %tobool170, label %if.else.172, label %if.then.171

if.then.171:                                      ; preds = %land.lhs.true.161
  store i32 0, i32* %__r169, align 4
  br label %if.end.179

if.else.172:                                      ; preds = %land.lhs.true.161
  %102 = load %struct._GValue*, %struct._GValue** %__val163, align 8
  %g_type173 = getelementptr inbounds %struct._GValue, %struct._GValue* %102, i32 0, i32 0
  %103 = load i64, i64* %g_type173, align 8
  %104 = load i64, i64* %__t167, align 8
  %cmp174 = icmp eq i64 %103, %104
  br i1 %cmp174, label %if.then.175, label %if.else.176

if.then.175:                                      ; preds = %if.else.172
  store i32 1, i32* %__r169, align 4
  br label %if.end.178

if.else.176:                                      ; preds = %if.else.172
  %105 = load %struct._GValue*, %struct._GValue** %__val163, align 8
  %106 = load i64, i64* %__t167, align 8
  %call177 = call i32 @g_type_check_value_holds(%struct._GValue* %105, i64 %106) #6
  store i32 %call177, i32* %__r169, align 4
  br label %if.end.178

if.end.178:                                       ; preds = %if.else.176, %if.then.175
  br label %if.end.179

if.end.179:                                       ; preds = %if.end.178, %if.then.171
  %107 = load i32, i32* %__r169, align 4
  store i32 %107, i32* %tmp180
  %108 = load i32, i32* %tmp180
  %tobool181 = icmp ne i32 %108, 0
  br i1 %tobool181, label %land.lhs.true.182, label %if.end.292

land.lhs.true.182:                                ; preds = %if.end.179
  %109 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values185 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %109, i32 0, i32 1
  %110 = load %struct._GValue*, %struct._GValue** %values185, align 8
  %arrayidx186 = getelementptr inbounds %struct._GValue, %struct._GValue* %110, i64 3
  store %struct._GValue* %arrayidx186, %struct._GValue** %__val184, align 8
  store i64 24, i64* %__t188, align 8
  %111 = load %struct._GValue*, %struct._GValue** %__val184, align 8
  %tobool191 = icmp ne %struct._GValue* %111, null
  br i1 %tobool191, label %if.else.193, label %if.then.192

if.then.192:                                      ; preds = %land.lhs.true.182
  store i32 0, i32* %__r190, align 4
  br label %if.end.200

if.else.193:                                      ; preds = %land.lhs.true.182
  %112 = load %struct._GValue*, %struct._GValue** %__val184, align 8
  %g_type194 = getelementptr inbounds %struct._GValue, %struct._GValue* %112, i32 0, i32 0
  %113 = load i64, i64* %g_type194, align 8
  %114 = load i64, i64* %__t188, align 8
  %cmp195 = icmp eq i64 %113, %114
  br i1 %cmp195, label %if.then.196, label %if.else.197

if.then.196:                                      ; preds = %if.else.193
  store i32 1, i32* %__r190, align 4
  br label %if.end.199

if.else.197:                                      ; preds = %if.else.193
  %115 = load %struct._GValue*, %struct._GValue** %__val184, align 8
  %116 = load i64, i64* %__t188, align 8
  %call198 = call i32 @g_type_check_value_holds(%struct._GValue* %115, i64 %116) #6
  store i32 %call198, i32* %__r190, align 4
  br label %if.end.199

if.end.199:                                       ; preds = %if.else.197, %if.then.196
  br label %if.end.200

if.end.200:                                       ; preds = %if.end.199, %if.then.192
  %117 = load i32, i32* %__r190, align 4
  store i32 %117, i32* %tmp201
  %118 = load i32, i32* %tmp201
  %tobool202 = icmp ne i32 %118, 0
  br i1 %tobool202, label %if.then.203, label %if.end.292

if.then.203:                                      ; preds = %if.end.200
  %119 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values204 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %119, i32 0, i32 1
  %120 = load %struct._GValue*, %struct._GValue** %values204, align 8
  %arrayidx205 = getelementptr inbounds %struct._GValue, %struct._GValue* %120, i64 2
  %call206 = call i32 @g_value_get_int(%struct._GValue* %arrayidx205)
  %cmp207 = icmp sgt i32 0, %call206
  br i1 %cmp207, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.203
  br label %cond.end

cond.false:                                       ; preds = %if.then.203
  %121 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values208 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %121, i32 0, i32 1
  %122 = load %struct._GValue*, %struct._GValue** %values208, align 8
  %arrayidx209 = getelementptr inbounds %struct._GValue, %struct._GValue* %122, i64 2
  %call210 = call i32 @g_value_get_int(%struct._GValue* %arrayidx209)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call210, %cond.false ]
  %123 = load i32*, i32** %image_width.addr, align 8
  store i32 %cond, i32* %123, align 4
  %124 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values211 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %124, i32 0, i32 1
  %125 = load %struct._GValue*, %struct._GValue** %values211, align 8
  %arrayidx212 = getelementptr inbounds %struct._GValue, %struct._GValue* %125, i64 3
  %call213 = call i32 @g_value_get_int(%struct._GValue* %arrayidx212)
  %cmp214 = icmp sgt i32 0, %call213
  br i1 %cmp214, label %cond.true.215, label %cond.false.216

cond.true.215:                                    ; preds = %cond.end
  br label %cond.end.220

cond.false.216:                                   ; preds = %cond.end
  %126 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values217 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %126, i32 0, i32 1
  %127 = load %struct._GValue*, %struct._GValue** %values217, align 8
  %arrayidx218 = getelementptr inbounds %struct._GValue, %struct._GValue* %127, i64 3
  %call219 = call i32 @g_value_get_int(%struct._GValue* %arrayidx218)
  br label %cond.end.220

cond.end.220:                                     ; preds = %cond.false.216, %cond.true.215
  %cond221 = phi i32 [ 0, %cond.true.215 ], [ %call219, %cond.false.216 ]
  %128 = load i32*, i32** %image_height.addr, align 8
  store i32 %cond221, i32* %128, align 4
  %129 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %n_values222 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %129, i32 0, i32 0
  %130 = load i32, i32* %n_values222, align 4
  %cmp223 = icmp uge i32 %130, 5
  br i1 %cmp223, label %land.lhs.true.224, label %if.end.255

land.lhs.true.224:                                ; preds = %cond.end.220
  %131 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values227 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %131, i32 0, i32 1
  %132 = load %struct._GValue*, %struct._GValue** %values227, align 8
  %arrayidx228 = getelementptr inbounds %struct._GValue, %struct._GValue* %132, i64 4
  store %struct._GValue* %arrayidx228, %struct._GValue** %__val226, align 8
  store i64 24, i64* %__t230, align 8
  %133 = load %struct._GValue*, %struct._GValue** %__val226, align 8
  %tobool233 = icmp ne %struct._GValue* %133, null
  br i1 %tobool233, label %if.else.235, label %if.then.234

if.then.234:                                      ; preds = %land.lhs.true.224
  store i32 0, i32* %__r232, align 4
  br label %if.end.242

if.else.235:                                      ; preds = %land.lhs.true.224
  %134 = load %struct._GValue*, %struct._GValue** %__val226, align 8
  %g_type236 = getelementptr inbounds %struct._GValue, %struct._GValue* %134, i32 0, i32 0
  %135 = load i64, i64* %g_type236, align 8
  %136 = load i64, i64* %__t230, align 8
  %cmp237 = icmp eq i64 %135, %136
  br i1 %cmp237, label %if.then.238, label %if.else.239

if.then.238:                                      ; preds = %if.else.235
  store i32 1, i32* %__r232, align 4
  br label %if.end.241

if.else.239:                                      ; preds = %if.else.235
  %137 = load %struct._GValue*, %struct._GValue** %__val226, align 8
  %138 = load i64, i64* %__t230, align 8
  %call240 = call i32 @g_type_check_value_holds(%struct._GValue* %137, i64 %138) #6
  store i32 %call240, i32* %__r232, align 4
  br label %if.end.241

if.end.241:                                       ; preds = %if.else.239, %if.then.238
  br label %if.end.242

if.end.242:                                       ; preds = %if.end.241, %if.then.234
  %139 = load i32, i32* %__r232, align 4
  store i32 %139, i32* %tmp243
  %140 = load i32, i32* %tmp243
  %tobool244 = icmp ne i32 %140, 0
  br i1 %tobool244, label %if.then.245, label %if.end.255

if.then.245:                                      ; preds = %if.end.242
  %141 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values247 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %141, i32 0, i32 1
  %142 = load %struct._GValue*, %struct._GValue** %values247, align 8
  %arrayidx248 = getelementptr inbounds %struct._GValue, %struct._GValue* %142, i64 4
  %call249 = call i32 @g_value_get_int(%struct._GValue* %arrayidx248)
  store i32 %call249, i32* %value, align 4
  %call250 = call i64 @gimp_image_type_get_type() #5
  %143 = load i32, i32* %value, align 4
  %call251 = call i32 @gimp_enum_get_value(i64 %call250, i32 %143, i8** null, i8** null, i8** null, i8** null)
  %tobool252 = icmp ne i32 %call251, 0
  br i1 %tobool252, label %if.then.253, label %if.end.254

if.then.253:                                      ; preds = %if.then.245
  %144 = load i32, i32* %value, align 4
  %145 = load i32*, i32** %type.addr, align 8
  store i32 %144, i32* %145, align 4
  br label %if.end.254

if.end.254:                                       ; preds = %if.then.253, %if.then.245
  br label %if.end.255

if.end.255:                                       ; preds = %if.end.254, %if.end.242, %cond.end.220
  %146 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %n_values256 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %146, i32 0, i32 0
  %147 = load i32, i32* %n_values256, align 4
  %cmp257 = icmp uge i32 %147, 6
  br i1 %cmp257, label %land.lhs.true.258, label %if.end.291

land.lhs.true.258:                                ; preds = %if.end.255
  %148 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values261 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %148, i32 0, i32 1
  %149 = load %struct._GValue*, %struct._GValue** %values261, align 8
  %arrayidx262 = getelementptr inbounds %struct._GValue, %struct._GValue* %149, i64 5
  store %struct._GValue* %arrayidx262, %struct._GValue** %__val260, align 8
  store i64 24, i64* %__t264, align 8
  %150 = load %struct._GValue*, %struct._GValue** %__val260, align 8
  %tobool267 = icmp ne %struct._GValue* %150, null
  br i1 %tobool267, label %if.else.269, label %if.then.268

if.then.268:                                      ; preds = %land.lhs.true.258
  store i32 0, i32* %__r266, align 4
  br label %if.end.276

if.else.269:                                      ; preds = %land.lhs.true.258
  %151 = load %struct._GValue*, %struct._GValue** %__val260, align 8
  %g_type270 = getelementptr inbounds %struct._GValue, %struct._GValue* %151, i32 0, i32 0
  %152 = load i64, i64* %g_type270, align 8
  %153 = load i64, i64* %__t264, align 8
  %cmp271 = icmp eq i64 %152, %153
  br i1 %cmp271, label %if.then.272, label %if.else.273

if.then.272:                                      ; preds = %if.else.269
  store i32 1, i32* %__r266, align 4
  br label %if.end.275

if.else.273:                                      ; preds = %if.else.269
  %154 = load %struct._GValue*, %struct._GValue** %__val260, align 8
  %155 = load i64, i64* %__t264, align 8
  %call274 = call i32 @g_type_check_value_holds(%struct._GValue* %154, i64 %155) #6
  store i32 %call274, i32* %__r266, align 4
  br label %if.end.275

if.end.275:                                       ; preds = %if.else.273, %if.then.272
  br label %if.end.276

if.end.276:                                       ; preds = %if.end.275, %if.then.268
  %156 = load i32, i32* %__r266, align 4
  store i32 %156, i32* %tmp277
  %157 = load i32, i32* %tmp277
  %tobool278 = icmp ne i32 %157, 0
  br i1 %tobool278, label %if.then.279, label %if.end.291

if.then.279:                                      ; preds = %if.end.276
  %158 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values280 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %158, i32 0, i32 1
  %159 = load %struct._GValue*, %struct._GValue** %values280, align 8
  %arrayidx281 = getelementptr inbounds %struct._GValue, %struct._GValue* %159, i64 5
  %call282 = call i32 @g_value_get_int(%struct._GValue* %arrayidx281)
  %cmp283 = icmp sgt i32 0, %call282
  br i1 %cmp283, label %cond.true.284, label %cond.false.285

cond.true.284:                                    ; preds = %if.then.279
  br label %cond.end.289

cond.false.285:                                   ; preds = %if.then.279
  %160 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values286 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %160, i32 0, i32 1
  %161 = load %struct._GValue*, %struct._GValue** %values286, align 8
  %arrayidx287 = getelementptr inbounds %struct._GValue, %struct._GValue* %161, i64 5
  %call288 = call i32 @g_value_get_int(%struct._GValue* %arrayidx287)
  br label %cond.end.289

cond.end.289:                                     ; preds = %cond.false.285, %cond.true.284
  %cond290 = phi i32 [ 0, %cond.true.284 ], [ %call288, %cond.false.285 ]
  %162 = load i32*, i32** %num_layers.addr, align 8
  store i32 %cond290, i32* %162, align 4
  br label %if.end.291

if.end.291:                                       ; preds = %cond.end.289, %if.end.276, %if.end.255
  br label %if.end.292

if.end.292:                                       ; preds = %if.end.291, %if.end.200, %if.end.179, %if.then.156
  %163 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool293 = icmp ne %struct._GimpImage* %163, null
  br i1 %tobool293, label %if.then.294, label %if.end.296

if.then.294:                                      ; preds = %if.end.292
  %164 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @file_open_sanitize_image(%struct._GimpImage* %164, i32 0)
  %165 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc, align 8
  %mime_type295 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %165, i32 0, i32 18
  %166 = load i8*, i8** %mime_type295, align 8
  %167 = load i8**, i8*** %mime_type.addr, align 8
  store i8* %166, i8** %167, align 8
  br label %if.end.296

if.end.296:                                       ; preds = %if.then.294, %if.end.292
  br label %if.end.297

if.end.297:                                       ; preds = %if.end.296, %if.end.153, %if.end.128
  %168 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  call void @g_value_array_free(%struct._GValueArray* %168)
  %169 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  store %struct._GimpImage* %169, %struct._GimpImage** %retval
  br label %return

if.end.298:                                       ; preds = %land.lhs.true.117, %land.lhs.true.115, %if.end.111
  store %struct._GimpImage* null, %struct._GimpImage** %retval
  br label %return

return:                                           ; preds = %if.end.298, %if.end.297, %if.then.110, %if.else.103, %if.else.95, %if.else.89, %if.else.83, %if.else.77, %if.else.71, %if.else.65, %if.else.36, %if.else.9
  %170 = load %struct._GimpImage*, %struct._GimpImage** %retval
  ret %struct._GimpImage* %170
}

declare %struct._GimpProcedure* @gimp_pdb_lookup_procedure(%struct._GimpPDB*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_image_id_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_value_holds(%struct._GValue*, i64) #2

declare i32 @g_value_get_int(%struct._GValue*) #3

declare i32 @gimp_enum_get_value(i64, i32, i8**, i8**, i8**, i8**) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_image_type_get_type() #1

; Function Attrs: nounwind uwtable
define %struct._GimpImage* @file_open_with_display(%struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, i8* %uri, i32 %as_new, i32* %status, %struct._GError** %error) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %uri.addr = alloca i8*, align 8
  %as_new.addr = alloca i32, align 4
  %status.addr = alloca i32*, align 8
  %error.addr = alloca %struct._GError**, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store i8* %uri, i8** %uri.addr, align 8
  store i32 %as_new, i32* %as_new.addr, align 4
  store i32* %status, i32** %status.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %2 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %3 = load i8*, i8** %uri.addr, align 8
  %4 = load i8*, i8** %uri.addr, align 8
  %5 = load i32, i32* %as_new.addr, align 4
  %6 = load i32*, i32** %status.addr, align 8
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call = call %struct._GimpImage* @file_open_with_proc_and_display(%struct._Gimp* %0, %struct._GimpContext* %1, %struct._GimpProgress* %2, i8* %3, i8* %4, i32 %5, %struct._GimpPlugInProcedure* null, i32* %6, %struct._GError** %7)
  ret %struct._GimpImage* %call
}

; Function Attrs: nounwind uwtable
define %struct._GimpImage* @file_open_with_proc_and_display(%struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, i8* %uri, i8* %entered_filename, i32 %as_new, %struct._GimpPlugInProcedure* %file_proc, i32* %status, %struct._GError** %error) #0 {
entry:
  %retval = alloca %struct._GimpImage*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %uri.addr = alloca i8*, align 8
  %entered_filename.addr = alloca i8*, align 8
  %as_new.addr = alloca i32, align 4
  %file_proc.addr = alloca %struct._GimpPlugInProcedure*, align 8
  %status.addr = alloca i32*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %image = alloca %struct._GimpImage*, align 8
  %mime_type = alloca i8*, align 8
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
  %layer = alloca %struct._GimpObject*, align 8
  %basename = alloca i8*, align 8
  %documents = alloca %struct._GimpDocumentList*, align 8
  %imagefile = alloca %struct._GimpImagefile*, align 8
  %any_uri = alloca i8*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store i8* %uri, i8** %uri.addr, align 8
  store i8* %entered_filename, i8** %entered_filename.addr, align 8
  store i32 %as_new, i32* %as_new.addr, align 4
  store %struct._GimpPlugInProcedure* %file_proc, %struct._GimpPlugInProcedure** %file_proc.addr, align 8
  store i32* %status, i32** %status.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i8* null, i8** %mime_type, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.file_open_with_proc_and_display, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpImage* null, %struct._GimpImage** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_context_get_type() #5
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.file_open_with_proc_and_display, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpImage* null, %struct._GimpImage** %retval
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
  %call45 = call i64 @gimp_progress_interface_get_type() #5
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
  %call59 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %36, i64 %37) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.file_open_with_proc_and_display, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpImage* null, %struct._GimpImage** %retval
  br label %return

if.end.66:                                        ; preds = %if.then.64
  br label %do.end.67

do.end.67:                                        ; preds = %if.end.66
  br label %do.body.68

do.body.68:                                       ; preds = %do.end.67
  %40 = load i32*, i32** %status.addr, align 8
  %cmp69 = icmp ne i32* %40, null
  br i1 %cmp69, label %if.then.70, label %if.else.71

if.then.70:                                       ; preds = %do.body.68
  br label %if.end.72

if.else.71:                                       ; preds = %do.body.68
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.file_open_with_proc_and_display, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GimpImage* null, %struct._GimpImage** %retval
  br label %return

if.end.72:                                        ; preds = %if.then.70
  br label %do.end.73

do.end.73:                                        ; preds = %if.end.72
  %41 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %42 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %43 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %44 = load i8*, i8** %uri.addr, align 8
  %45 = load i8*, i8** %entered_filename.addr, align 8
  %46 = load i32, i32* %as_new.addr, align 4
  %47 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc.addr, align 8
  %48 = load i32*, i32** %status.addr, align 8
  %49 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call74 = call %struct._GimpImage* @file_open_image(%struct._Gimp* %41, %struct._GimpContext* %42, %struct._GimpProgress* %43, i8* %44, i8* %45, i32 %46, %struct._GimpPlugInProcedure* %47, i32 0, i32* %48, i8** %mime_type, %struct._GError** %49)
  store %struct._GimpImage* %call74, %struct._GimpImage** %image, align 8
  %50 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool75 = icmp ne %struct._GimpImage* %50, null
  br i1 %tobool75, label %if.then.76, label %if.end.123

if.then.76:                                       ; preds = %do.end.73
  %51 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc.addr, align 8
  %tobool77 = icmp ne %struct._GimpPlugInProcedure* %51, null
  br i1 %tobool77, label %if.end.80, label %if.then.78

if.then.78:                                       ; preds = %if.then.76
  %52 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call79 = call %struct._GimpPlugInProcedure* @gimp_image_get_load_proc(%struct._GimpImage* %52)
  store %struct._GimpPlugInProcedure* %call79, %struct._GimpPlugInProcedure** %file_proc.addr, align 8
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.78, %if.then.76
  %53 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc.addr, align 8
  %call81 = call i32 @file_open_file_proc_is_import(%struct._GimpPlugInProcedure* %53)
  %tobool82 = icmp ne i32 %call81, 0
  br i1 %tobool82, label %land.lhs.true.83, label %if.end.94

land.lhs.true.83:                                 ; preds = %if.end.80
  %54 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call84 = call i32 @gimp_image_get_n_layers(%struct._GimpImage* %54)
  %cmp85 = icmp eq i32 %call84, 1
  br i1 %cmp85, label %if.then.86, label %if.end.94

if.then.86:                                       ; preds = %land.lhs.true.83
  %55 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call88 = call %struct._GList* @gimp_image_get_layer_iter(%struct._GimpImage* %55)
  %data = getelementptr inbounds %struct._GList, %struct._GList* %call88, i32 0, i32 0
  %56 = load i8*, i8** %data, align 8
  %57 = bitcast i8* %56 to %struct._GimpObject*
  store %struct._GimpObject* %57, %struct._GimpObject** %layer, align 8
  %58 = load i8*, i8** %uri.addr, align 8
  %call90 = call i8* @file_utils_uri_display_basename(i8* %58)
  store i8* %call90, i8** %basename, align 8
  %59 = load %struct._GimpObject*, %struct._GimpObject** %layer, align 8
  %60 = bitcast %struct._GimpObject* %59 to %struct._GTypeInstance*
  %call91 = call i64 @gimp_item_get_type() #5
  %call92 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call91)
  %61 = bitcast %struct._GTypeInstance* %call92 to %struct._GimpItem*
  %62 = load i8*, i8** %basename, align 8
  %call93 = call i32 @gimp_item_rename(%struct._GimpItem* %61, i8* %62, %struct._GError** null)
  %63 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_undo_free(%struct._GimpImage* %63)
  %64 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_clean_all(%struct._GimpImage* %64)
  %65 = load i8*, i8** %basename, align 8
  call void @g_free(i8* %65)
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.86, %land.lhs.true.83, %if.end.80
  %66 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp95 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %66, i32 0, i32 1
  %67 = load %struct._Gimp*, %struct._Gimp** %gimp95, align 8
  %68 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call96 = call %struct._GimpObject* @gimp_create_display(%struct._Gimp* %67, %struct._GimpImage* %68, i32 0, double 1.000000e+00)
  %tobool97 = icmp ne %struct._GimpObject* %call96, null
  br i1 %tobool97, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %if.end.94
  %69 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %70 = bitcast %struct._GimpImage* %69 to i8*
  call void @g_object_unref(i8* %70)
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.98, %if.end.94
  %71 = load i32, i32* %as_new.addr, align 4
  %tobool100 = icmp ne i32 %71, 0
  br i1 %tobool100, label %if.end.121, label %if.then.101

if.then.101:                                      ; preds = %if.end.99
  %72 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %documents103 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %72, i32 0, i32 47
  %73 = load %struct._GimpContainer*, %struct._GimpContainer** %documents103, align 8
  %74 = bitcast %struct._GimpContainer* %73 to %struct._GTypeInstance*
  %call104 = call i64 @gimp_document_list_get_type() #5
  %call105 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %74, i64 %call104)
  %75 = bitcast %struct._GTypeInstance* %call105 to %struct._GimpDocumentList*
  store %struct._GimpDocumentList* %75, %struct._GimpDocumentList** %documents, align 8
  %76 = load %struct._GimpDocumentList*, %struct._GimpDocumentList** %documents, align 8
  %77 = load i8*, i8** %uri.addr, align 8
  %78 = load i8*, i8** %mime_type, align 8
  %call108 = call %struct._GimpImagefile* @gimp_document_list_add_uri(%struct._GimpDocumentList* %76, i8* %77, i8* %78)
  store %struct._GimpImagefile* %call108, %struct._GimpImagefile** %imagefile, align 8
  %79 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call109 = call i8* @gimp_image_get_any_uri(%struct._GimpImage* %79)
  store i8* %call109, i8** %any_uri, align 8
  %80 = load i8*, i8** %any_uri, align 8
  %tobool110 = icmp ne i8* %80, null
  br i1 %tobool110, label %land.lhs.true.111, label %if.end.120

land.lhs.true.111:                                ; preds = %if.then.101
  %81 = load i8*, i8** %uri.addr, align 8
  %82 = load i8*, i8** %any_uri, align 8
  %call112 = call i32 @strcmp(i8* %81, i8* %82) #6
  %tobool113 = icmp ne i32 %call112, 0
  br i1 %tobool113, label %if.end.120, label %if.then.114

if.then.114:                                      ; preds = %land.lhs.true.111
  %83 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  %call115 = call i32 @gimp_imagefile_check_thumbnail(%struct._GimpImagefile* %83)
  %tobool116 = icmp ne i32 %call115, 0
  br i1 %tobool116, label %if.end.119, label %if.then.117

if.then.117:                                      ; preds = %if.then.114
  %84 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  %85 = load i8*, i8** %mime_type, align 8
  %86 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call118 = call i32 @gimp_imagefile_save_thumbnail(%struct._GimpImagefile* %84, i8* %85, %struct._GimpImage* %86)
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.117, %if.then.114
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %land.lhs.true.111, %if.then.101
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.120, %if.end.99
  %87 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp122 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %87, i32 0, i32 1
  %88 = load %struct._Gimp*, %struct._Gimp** %gimp122, align 8
  %89 = load i8*, i8** %uri.addr, align 8
  call void @gimp_image_opened(%struct._Gimp* %88, i8* %89)
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.121, %do.end.73
  %90 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  store %struct._GimpImage* %90, %struct._GimpImage** %retval
  br label %return

return:                                           ; preds = %if.end.123, %if.else.71, %if.else.65, %if.else.36, %if.else.9
  %91 = load %struct._GimpImage*, %struct._GimpImage** %retval
  ret %struct._GimpImage* %91
}

declare i32 @gimp_image_get_n_layers(%struct._GimpImage*) #3

declare %struct._GList* @gimp_image_get_layer_iter(%struct._GimpImage*) #3

declare i8* @file_utils_uri_display_basename(i8*) #3

declare i32 @gimp_item_rename(%struct._GimpItem*, i8*, %struct._GError**) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #1

declare void @gimp_image_undo_free(%struct._GimpImage*) #3

declare void @gimp_image_clean_all(%struct._GimpImage*) #3

declare %struct._GimpObject* @gimp_create_display(%struct._Gimp*, %struct._GimpImage*, i32, double) #3

declare void @g_object_unref(i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_document_list_get_type() #1

declare %struct._GimpImagefile* @gimp_document_list_add_uri(%struct._GimpDocumentList*, i8*, i8*) #3

declare i8* @gimp_image_get_any_uri(%struct._GimpImage*) #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare i32 @gimp_imagefile_check_thumbnail(%struct._GimpImagefile*) #3

declare i32 @gimp_imagefile_save_thumbnail(%struct._GimpImagefile*, i8*, %struct._GimpImage*) #3

declare void @gimp_image_opened(%struct._Gimp*, i8*) #3

; Function Attrs: nounwind uwtable
define %struct._GList* @file_open_layers(%struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GimpImage* %dest_image, i32 %merge_visible, i8* %uri, i32 %run_mode, %struct._GimpPlugInProcedure* %file_proc, i32* %status, %struct._GError** %error) #0 {
entry:
  %retval = alloca %struct._GList*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %dest_image.addr = alloca %struct._GimpImage*, align 8
  %merge_visible.addr = alloca i32, align 4
  %uri.addr = alloca i8*, align 8
  %run_mode.addr = alloca i32, align 4
  %file_proc.addr = alloca %struct._GimpPlugInProcedure*, align 8
  %status.addr = alloca i32*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %new_image = alloca %struct._GimpImage*, align 8
  %layers = alloca %struct._GList*, align 8
  %mime_type = alloca i8*, align 8
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
  %__inst70 = alloca %struct._GTypeInstance*, align 8
  %__t72 = alloca i64, align 8
  %__r75 = alloca i32, align 4
  %tmp90 = alloca i32, align 4
  %n_visible = alloca i32, align 4
  %layer = alloca %struct._GimpLayer*, align 8
  %basename = alloca i8*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GimpImage* %dest_image, %struct._GimpImage** %dest_image.addr, align 8
  store i32 %merge_visible, i32* %merge_visible.addr, align 4
  store i8* %uri, i8** %uri.addr, align 8
  store i32 %run_mode, i32* %run_mode.addr, align 4
  store %struct._GimpPlugInProcedure* %file_proc, %struct._GimpPlugInProcedure** %file_proc.addr, align 8
  store i32* %status, i32** %status.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store %struct._GList* null, %struct._GList** %layers, align 8
  store i8* null, i8** %mime_type, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.file_open_layers, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_context_get_type() #5
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.file_open_layers, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
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
  %call45 = call i64 @gimp_progress_interface_get_type() #5
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
  %call59 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %36, i64 %37) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.file_open_layers, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.66:                                        ; preds = %if.then.64
  br label %do.end.67

do.end.67:                                        ; preds = %if.end.66
  br label %do.body.68

do.body.68:                                       ; preds = %do.end.67
  %40 = load %struct._GimpImage*, %struct._GimpImage** %dest_image.addr, align 8
  %41 = bitcast %struct._GimpImage* %40 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %41, %struct._GTypeInstance** %__inst70, align 8
  %call73 = call i64 @gimp_image_get_type() #5
  store i64 %call73, i64* %__t72, align 8
  %42 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst70, align 8
  %tobool76 = icmp ne %struct._GTypeInstance* %42, null
  br i1 %tobool76, label %if.else.78, label %if.then.77

if.then.77:                                       ; preds = %do.body.68
  store i32 0, i32* %__r75, align 4
  br label %if.end.89

if.else.78:                                       ; preds = %do.body.68
  %43 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst70, align 8
  %g_class79 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %43, i32 0, i32 0
  %44 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class79, align 8
  %tobool80 = icmp ne %struct._GTypeClass* %44, null
  br i1 %tobool80, label %land.lhs.true.81, label %if.else.86

land.lhs.true.81:                                 ; preds = %if.else.78
  %45 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst70, align 8
  %g_class82 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %45, i32 0, i32 0
  %46 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class82, align 8
  %g_type83 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %46, i32 0, i32 0
  %47 = load i64, i64* %g_type83, align 8
  %48 = load i64, i64* %__t72, align 8
  %cmp84 = icmp eq i64 %47, %48
  br i1 %cmp84, label %if.then.85, label %if.else.86

if.then.85:                                       ; preds = %land.lhs.true.81
  store i32 1, i32* %__r75, align 4
  br label %if.end.88

if.else.86:                                       ; preds = %land.lhs.true.81, %if.else.78
  %49 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst70, align 8
  %50 = load i64, i64* %__t72, align 8
  %call87 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %49, i64 %50) #6
  store i32 %call87, i32* %__r75, align 4
  br label %if.end.88

if.end.88:                                        ; preds = %if.else.86, %if.then.85
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.then.77
  %51 = load i32, i32* %__r75, align 4
  store i32 %51, i32* %tmp90
  %52 = load i32, i32* %tmp90
  %tobool91 = icmp ne i32 %52, 0
  br i1 %tobool91, label %if.then.92, label %if.else.93

if.then.92:                                       ; preds = %if.end.89
  br label %if.end.94

if.else.93:                                       ; preds = %if.end.89
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.file_open_layers, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.94:                                        ; preds = %if.then.92
  br label %do.end.95

do.end.95:                                        ; preds = %if.end.94
  br label %do.body.96

do.body.96:                                       ; preds = %do.end.95
  %53 = load i8*, i8** %uri.addr, align 8
  %cmp97 = icmp ne i8* %53, null
  br i1 %cmp97, label %if.then.98, label %if.else.99

if.then.98:                                       ; preds = %do.body.96
  br label %if.end.100

if.else.99:                                       ; preds = %do.body.96
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.file_open_layers, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.100:                                       ; preds = %if.then.98
  br label %do.end.101

do.end.101:                                       ; preds = %if.end.100
  br label %do.body.102

do.body.102:                                      ; preds = %do.end.101
  %54 = load i32*, i32** %status.addr, align 8
  %cmp103 = icmp ne i32* %54, null
  br i1 %cmp103, label %if.then.104, label %if.else.105

if.then.104:                                      ; preds = %do.body.102
  br label %if.end.106

if.else.105:                                      ; preds = %do.body.102
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.file_open_layers, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.106:                                       ; preds = %if.then.104
  br label %do.end.107

do.end.107:                                       ; preds = %if.end.106
  br label %do.body.108

do.body.108:                                      ; preds = %do.end.107
  %55 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp109 = icmp eq %struct._GError** %55, null
  br i1 %cmp109, label %if.then.112, label %lor.lhs.false.110

lor.lhs.false.110:                                ; preds = %do.body.108
  %56 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %57 = load %struct._GError*, %struct._GError** %56, align 8
  %cmp111 = icmp eq %struct._GError* %57, null
  br i1 %cmp111, label %if.then.112, label %if.else.113

if.then.112:                                      ; preds = %lor.lhs.false.110, %do.body.108
  br label %if.end.114

if.else.113:                                      ; preds = %lor.lhs.false.110
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.file_open_layers, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.114:                                       ; preds = %if.then.112
  br label %do.end.115

do.end.115:                                       ; preds = %if.end.114
  %58 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %59 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %60 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %61 = load i8*, i8** %uri.addr, align 8
  %62 = load i8*, i8** %uri.addr, align 8
  %63 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc.addr, align 8
  %64 = load i32, i32* %run_mode.addr, align 4
  %65 = load i32*, i32** %status.addr, align 8
  %66 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call116 = call %struct._GimpImage* @file_open_image(%struct._Gimp* %58, %struct._GimpContext* %59, %struct._GimpProgress* %60, i8* %61, i8* %62, i32 0, %struct._GimpPlugInProcedure* %63, i32 %64, i32* %65, i8** %mime_type, %struct._GError** %66)
  store %struct._GimpImage* %call116, %struct._GimpImage** %new_image, align 8
  %67 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  %tobool117 = icmp ne %struct._GimpImage* %67, null
  br i1 %tobool117, label %if.then.118, label %if.end.141

if.then.118:                                      ; preds = %do.end.115
  store i32 0, i32* %n_visible, align 4
  %68 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  %call120 = call i32 @gimp_image_undo_disable(%struct._GimpImage* %68)
  %69 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  %70 = load i32, i32* %merge_visible.addr, align 4
  %call121 = call %struct._GList* @file_open_get_layers(%struct._GimpImage* %69, i32 %70, i32* %n_visible)
  store %struct._GList* %call121, %struct._GList** %layers, align 8
  %71 = load i32, i32* %merge_visible.addr, align 4
  %tobool122 = icmp ne i32 %71, 0
  br i1 %tobool122, label %land.lhs.true.123, label %if.end.129

land.lhs.true.123:                                ; preds = %if.then.118
  %72 = load i32, i32* %n_visible, align 4
  %cmp124 = icmp sgt i32 %72, 1
  br i1 %cmp124, label %if.then.125, label %if.end.129

if.then.125:                                      ; preds = %land.lhs.true.123
  %73 = load %struct._GList*, %struct._GList** %layers, align 8
  call void @g_list_free(%struct._GList* %73)
  %74 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  %75 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call127 = call %struct._GimpLayer* @gimp_image_merge_visible_layers(%struct._GimpImage* %74, %struct._GimpContext* %75, i32 1, i32 0, i32 0)
  store %struct._GimpLayer* %call127, %struct._GimpLayer** %layer, align 8
  %76 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %77 = bitcast %struct._GimpLayer* %76 to i8*
  %call128 = call %struct._GList* @g_list_prepend(%struct._GList* null, i8* %77)
  store %struct._GList* %call128, %struct._GList** %layers, align 8
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.125, %land.lhs.true.123, %if.then.118
  %78 = load %struct._GList*, %struct._GList** %layers, align 8
  %tobool130 = icmp ne %struct._GList* %78, null
  br i1 %tobool130, label %if.then.131, label %if.else.137

if.then.131:                                      ; preds = %if.end.129
  %79 = load i8*, i8** %uri.addr, align 8
  %call133 = call i8* @file_utils_uri_display_basename(i8* %79)
  store i8* %call133, i8** %basename, align 8
  %80 = load %struct._GimpImage*, %struct._GimpImage** %dest_image.addr, align 8
  %81 = load i8*, i8** %basename, align 8
  %82 = load %struct._GList*, %struct._GList** %layers, align 8
  call void @file_open_convert_items(%struct._GimpImage* %80, i8* %81, %struct._GList* %82)
  %83 = load i8*, i8** %basename, align 8
  call void @g_free(i8* %83)
  %84 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %documents = getelementptr inbounds %struct._Gimp, %struct._Gimp* %84, i32 0, i32 47
  %85 = load %struct._GimpContainer*, %struct._GimpContainer** %documents, align 8
  %86 = bitcast %struct._GimpContainer* %85 to %struct._GTypeInstance*
  %call134 = call i64 @gimp_document_list_get_type() #5
  %call135 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %86, i64 %call134)
  %87 = bitcast %struct._GTypeInstance* %call135 to %struct._GimpDocumentList*
  %88 = load i8*, i8** %uri.addr, align 8
  %89 = load i8*, i8** %mime_type, align 8
  %call136 = call %struct._GimpImagefile* @gimp_document_list_add_uri(%struct._GimpDocumentList* %87, i8* %88, i8* %89)
  br label %if.end.140

if.else.137:                                      ; preds = %if.end.129
  %90 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call138 = call i32 @g_file_error_quark()
  %call139 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i32 0, i32 0)) #7
  call void @g_set_error_literal(%struct._GError** %90, i32 %call138, i32 24, i8* %call139)
  %91 = load i32*, i32** %status.addr, align 8
  store i32 0, i32* %91, align 4
  br label %if.end.140

if.end.140:                                       ; preds = %if.else.137, %if.then.131
  %92 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  %93 = bitcast %struct._GimpImage* %92 to i8*
  call void @g_object_unref(i8* %93)
  br label %if.end.141

if.end.141:                                       ; preds = %if.end.140, %do.end.115
  %94 = load %struct._GList*, %struct._GList** %layers, align 8
  %call142 = call %struct._GList* @g_list_reverse(%struct._GList* %94)
  store %struct._GList* %call142, %struct._GList** %retval
  br label %return

return:                                           ; preds = %if.end.141, %if.else.113, %if.else.105, %if.else.99, %if.else.93, %if.else.65, %if.else.36, %if.else.9
  %95 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %95
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #1

declare i32 @gimp_image_undo_disable(%struct._GimpImage*) #3

; Function Attrs: nounwind uwtable
define internal %struct._GList* @file_open_get_layers(%struct._GimpImage* %image, i32 %merge_visible, i32* %n_visible) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %merge_visible.addr = alloca i32, align 4
  %n_visible.addr = alloca i32*, align 8
  %iter = alloca %struct._GList*, align 8
  %layers = alloca %struct._GList*, align 8
  %item = alloca %struct._GimpItem*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %merge_visible, i32* %merge_visible.addr, align 4
  store i32* %n_visible, i32** %n_visible.addr, align 8
  store %struct._GList* null, %struct._GList** %iter, align 8
  store %struct._GList* null, %struct._GList** %layers, align 8
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call = call %struct._GList* @gimp_image_get_layer_iter(%struct._GimpImage* %0)
  store %struct._GList* %call, %struct._GList** %iter, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %1 = load %struct._GList*, %struct._GList** %iter, align 8
  %tobool = icmp ne %struct._GList* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._GList*, %struct._GList** %iter, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %2, i32 0, i32 0
  %3 = load i8*, i8** %data, align 8
  %4 = bitcast i8* %3 to %struct._GimpItem*
  store %struct._GimpItem* %4, %struct._GimpItem** %item, align 8
  %5 = load i32, i32* %merge_visible.addr, align 4
  %tobool1 = icmp ne i32 %5, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %6 = load %struct._GList*, %struct._GList** %layers, align 8
  %7 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %8 = bitcast %struct._GimpItem* %7 to i8*
  %call2 = call %struct._GList* @g_list_prepend(%struct._GList* %6, i8* %8)
  store %struct._GList* %call2, %struct._GList** %layers, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %9 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call3 = call i32 @gimp_item_get_visible(%struct._GimpItem* %9)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.end.13

if.then.5:                                        ; preds = %if.end
  %10 = load i32*, i32** %n_visible.addr, align 8
  %tobool6 = icmp ne i32* %10, null
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.5
  %11 = load i32*, i32** %n_visible.addr, align 8
  %12 = load i32, i32* %11, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %11, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.then.5
  %13 = load %struct._GList*, %struct._GList** %layers, align 8
  %tobool9 = icmp ne %struct._GList* %13, null
  br i1 %tobool9, label %if.end.12, label %if.then.10

if.then.10:                                       ; preds = %if.end.8
  %14 = load %struct._GList*, %struct._GList** %layers, align 8
  %15 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %16 = bitcast %struct._GimpItem* %15 to i8*
  %call11 = call %struct._GList* @g_list_prepend(%struct._GList* %14, i8* %16)
  store %struct._GList* %call11, %struct._GList** %layers, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end.8
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %17 = load %struct._GList*, %struct._GList** %iter, align 8
  %tobool14 = icmp ne %struct._GList* %17, null
  br i1 %tobool14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %18 = load %struct._GList*, %struct._GList** %iter, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %18, i32 0, i32 1
  %19 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %19, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %iter, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load %struct._GList*, %struct._GList** %layers, align 8
  ret %struct._GList* %20
}

declare void @g_list_free(%struct._GList*) #3

declare %struct._GimpLayer* @gimp_image_merge_visible_layers(%struct._GimpImage*, %struct._GimpContext*, i32, i32, i32) #3

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @file_open_convert_items(%struct._GimpImage* %dest_image, i8* %basename, %struct._GList* %items) #0 {
entry:
  %dest_image.addr = alloca %struct._GimpImage*, align 8
  %basename.addr = alloca i8*, align 8
  %items.addr = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %src = alloca %struct._GimpItem*, align 8
  %item = alloca %struct._GimpItem*, align 8
  store %struct._GimpImage* %dest_image, %struct._GimpImage** %dest_image.addr, align 8
  store i8* %basename, i8** %basename.addr, align 8
  store %struct._GList* %items, %struct._GList** %items.addr, align 8
  %0 = load %struct._GList*, %struct._GList** %items.addr, align 8
  store %struct._GList* %0, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %1 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %2, i32 0, i32 0
  %3 = load i8*, i8** %data, align 8
  %4 = bitcast i8* %3 to %struct._GimpItem*
  store %struct._GimpItem* %4, %struct._GimpItem** %src, align 8
  %5 = load %struct._GimpItem*, %struct._GimpItem** %src, align 8
  %6 = load %struct._GimpImage*, %struct._GimpImage** %dest_image.addr, align 8
  %7 = load %struct._GimpItem*, %struct._GimpItem** %src, align 8
  %8 = bitcast %struct._GimpItem* %7 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %9, i32 0, i32 0
  %10 = load i64, i64* %g_type, align 8
  %call = call %struct._GimpItem* @gimp_item_convert(%struct._GimpItem* %5, %struct._GimpImage* %6, i64 %10)
  store %struct._GimpItem* %call, %struct._GimpItem** %item, align 8
  %11 = load %struct._GList*, %struct._GList** %items.addr, align 8
  %call1 = call i32 @g_list_length(%struct._GList* %11)
  %cmp = icmp eq i32 %call1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %12 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %13 = bitcast %struct._GimpItem* %12 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_object_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call2)
  %14 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpObject*
  %15 = load i8*, i8** %basename.addr, align 8
  call void @gimp_object_set_name(%struct._GimpObject* %14, i8* %15)
  br label %if.end

if.else:                                          ; preds = %for.body
  %16 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %17 = bitcast %struct._GimpItem* %16 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_object_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call4)
  %18 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpObject*
  %19 = load %struct._GimpItem*, %struct._GimpItem** %src, align 8
  %20 = bitcast %struct._GimpItem* %19 to i8*
  %call6 = call i8* @gimp_object_get_name(i8* %20)
  call void @gimp_object_set_name(%struct._GimpObject* %18, i8* %call6)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %21 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %22 = bitcast %struct._GimpItem* %21 to i8*
  %23 = load %struct._GList*, %struct._GList** %list, align 8
  %data7 = getelementptr inbounds %struct._GList, %struct._GList* %23, i32 0, i32 0
  store i8* %22, i8** %data7, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %24 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool8 = icmp ne %struct._GList* %24, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %25 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %25, i32 0, i32 1
  %26 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %26, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare %struct._GList* @g_list_reverse(%struct._GList*) #3

; Function Attrs: nounwind uwtable
define i32 @file_open_from_command_line(%struct._Gimp* %gimp, i8* %filename, i32 %as_new) #0 {
entry:
  %retval = alloca i32, align 4
  %gimp.addr = alloca %struct._Gimp*, align 8
  %filename.addr = alloca i8*, align 8
  %as_new.addr = alloca i32, align 4
  %error = alloca %struct._GError*, align 8
  %uri = alloca i8*, align 8
  %success = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %display = alloca %struct._GimpObject*, align 8
  %status = alloca i32, align 4
  %filename46 = alloca i8*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %as_new, i32* %as_new.addr, align 4
  store %struct._GError* null, %struct._GError** %error, align 8
  store i32 0, i32* %success, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.file_open_from_command_line, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %filename.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.file_open_from_command_line, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %15 = load i8*, i8** %filename.addr, align 8
  %call17 = call i8* @file_utils_any_to_uri(%struct._Gimp* %14, i8* %15, %struct._GError** %error)
  store i8* %call17, i8** %uri, align 8
  %16 = load i8*, i8** %uri, align 8
  %tobool18 = icmp ne i8* %16, null
  br i1 %tobool18, label %if.then.19, label %if.else.56

if.then.19:                                       ; preds = %do.end.16
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call22 = call %struct._GimpObject* @gimp_get_empty_display(%struct._Gimp* %17)
  store %struct._GimpObject* %call22, %struct._GimpObject** %display, align 8
  %18 = load %struct._GimpObject*, %struct._GimpObject** %display, align 8
  %tobool24 = icmp ne %struct._GimpObject* %18, null
  br i1 %tobool24, label %if.end.28, label %if.then.25

if.then.25:                                       ; preds = %if.then.19
  %19 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call26 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %19)
  %call27 = call i8* @gimp_context_get_display(%struct._GimpContext* %call26)
  %20 = bitcast i8* %call27 to %struct._GimpObject*
  store %struct._GimpObject* %20, %struct._GimpObject** %display, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.25, %if.then.19
  %21 = load %struct._GimpObject*, %struct._GimpObject** %display, align 8
  %tobool29 = icmp ne %struct._GimpObject* %21, null
  br i1 %tobool29, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.end.28
  %22 = load %struct._GimpObject*, %struct._GimpObject** %display, align 8
  %23 = bitcast %struct._GimpObject* %22 to %struct._GTypeInstance*
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 80)
  %24 = bitcast %struct._GTypeInstance* %call31 to %struct._GObject*
  %25 = bitcast %struct._GimpObject** %display to i8*
  %26 = bitcast i8* %25 to i8**
  call void @g_object_add_weak_pointer(%struct._GObject* %24, i8** %26)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %if.end.28
  %27 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %28 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call33 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %28)
  %29 = load %struct._GimpObject*, %struct._GimpObject** %display, align 8
  %30 = bitcast %struct._GimpObject* %29 to %struct._GTypeInstance*
  %call34 = call i64 @gimp_progress_interface_get_type() #5
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call34)
  %31 = bitcast %struct._GTypeInstance* %call35 to %struct._GimpProgress*
  %32 = load i8*, i8** %uri, align 8
  %33 = load i32, i32* %as_new.addr, align 4
  %call36 = call %struct._GimpImage* @file_open_with_display(%struct._Gimp* %27, %struct._GimpContext* %call33, %struct._GimpProgress* %31, i8* %32, i32 %33, i32* %status, %struct._GError** %error)
  store %struct._GimpImage* %call36, %struct._GimpImage** %image, align 8
  %34 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool37 = icmp ne %struct._GimpImage* %34, null
  br i1 %tobool37, label %if.then.38, label %if.else.40

if.then.38:                                       ; preds = %if.end.32
  store i32 1, i32* %success, align 4
  %35 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %36 = bitcast %struct._Gimp* %35 to %struct._GTypeInstance*
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 80)
  %37 = bitcast %struct._GTypeInstance* %call39 to %struct._GObject*
  %38 = load i8*, i8** %uri, align 8
  call void @g_object_set_data_full(%struct._GObject* %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i32 0, i32 0), i8* %38, void (i8*)* @g_free)
  br label %if.end.51

if.else.40:                                       ; preds = %if.end.32
  %39 = load i32, i32* %status, align 4
  %cmp41 = icmp ne i32 %39, 4
  br i1 %cmp41, label %land.lhs.true.42, label %if.end.50

land.lhs.true.42:                                 ; preds = %if.else.40
  %40 = load %struct._GimpObject*, %struct._GimpObject** %display, align 8
  %tobool43 = icmp ne %struct._GimpObject* %40, null
  br i1 %tobool43, label %if.then.44, label %if.end.50

if.then.44:                                       ; preds = %land.lhs.true.42
  %41 = load i8*, i8** %uri, align 8
  %call47 = call i8* @file_utils_uri_display_name(i8* %41)
  store i8* %call47, i8** %filename46, align 8
  %42 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %43 = load %struct._GimpObject*, %struct._GimpObject** %display, align 8
  %44 = bitcast %struct._GimpObject* %43 to %struct._GTypeInstance*
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 80)
  %45 = bitcast %struct._GTypeInstance* %call48 to %struct._GObject*
  %call49 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i32 0, i32 0)) #7
  %46 = load i8*, i8** %filename46, align 8
  %47 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %47, i32 0, i32 2
  %48 = load i8*, i8** %message, align 8
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %42, %struct._GObject* %45, i32 2, i8* %call49, i8* %46, i8* %48)
  call void @g_clear_error(%struct._GError** %error)
  %49 = load i8*, i8** %filename46, align 8
  call void @g_free(i8* %49)
  %50 = load i8*, i8** %uri, align 8
  call void @g_free(i8* %50)
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.44, %land.lhs.true.42, %if.else.40
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.then.38
  %51 = load %struct._GimpObject*, %struct._GimpObject** %display, align 8
  %tobool52 = icmp ne %struct._GimpObject* %51, null
  br i1 %tobool52, label %if.then.53, label %if.end.55

if.then.53:                                       ; preds = %if.end.51
  %52 = load %struct._GimpObject*, %struct._GimpObject** %display, align 8
  %53 = bitcast %struct._GimpObject* %52 to %struct._GTypeInstance*
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 80)
  %54 = bitcast %struct._GTypeInstance* %call54 to %struct._GObject*
  %55 = bitcast %struct._GimpObject** %display to i8*
  %56 = bitcast i8* %55 to i8**
  call void @g_object_remove_weak_pointer(%struct._GObject* %54, i8** %56)
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.53, %if.end.51
  br label %if.end.58

if.else.56:                                       ; preds = %do.end.16
  %57 = load %struct._GError*, %struct._GError** %error, align 8
  %message57 = getelementptr inbounds %struct._GError, %struct._GError* %57, i32 0, i32 2
  %58 = load i8*, i8** %message57, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.20, i32 0, i32 0), i8* %58)
  call void @g_clear_error(%struct._GError** %error)
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.56, %if.end.55
  %59 = load i32, i32* %success, align 4
  store i32 %59, i32* %retval
  br label %return

return:                                           ; preds = %if.end.58, %if.else.14, %if.else.9
  %60 = load i32, i32* %retval
  ret i32 %60
}

declare i8* @file_utils_any_to_uri(%struct._Gimp*, i8*, %struct._GError**) #3

declare %struct._GimpObject* @gimp_get_empty_display(%struct._Gimp*) #3

declare i8* @gimp_context_get_display(%struct._GimpContext*) #3

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #3

declare void @g_object_set_data_full(%struct._GObject*, i8*, i8*, void (i8*)*) #3

declare i8* @file_utils_uri_display_name(i8*) #3

declare void @gimp_message(%struct._Gimp*, %struct._GObject*, i32, i8*, ...) #3

declare void @g_clear_error(%struct._GError**) #3

declare void @g_printerr(i8*, ...) #3

declare i32 @gimp_image_undo_is_enabled(%struct._GimpImage*) #3

declare i32 @gimp_image_undo_thaw(%struct._GimpImage*) #3

declare void @gimp_image_invalidate(%struct._GimpImage*, i32, i32, i32, i32) #3

declare i32 @gimp_image_get_width(%struct._GimpImage*) #3

declare i32 @gimp_image_get_height(%struct._GimpImage*) #3

declare void @gimp_image_flush(%struct._GimpImage*) #3

declare void @gimp_image_invalidate_previews(%struct._GimpImage*) #3

declare %struct._GimpItem* @gimp_item_convert(%struct._GimpItem*, %struct._GimpImage*, i64) #3

declare i32 @g_list_length(%struct._GList*) #3

declare void @gimp_object_set_name(%struct._GimpObject*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #1

declare %struct._GimpParasite* @gimp_image_parasite_find(%struct._GimpImage*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @file_open_profile_apply_rgb(%struct._GimpImage* %image, %struct._GimpContext* %context, %struct._GimpProgress* %progress, i32 %run_mode) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %run_mode.addr = alloca i32, align 4
  %config = alloca %struct._GimpColorConfig*, align 8
  %error = alloca %struct._GError*, align 8
  %msg = alloca i8*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store i32 %run_mode, i32* %run_mode.addr, align 4
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %0, i32 0, i32 1
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config1 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %1, i32 0, i32 1
  %2 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config1, align 8
  %color_management = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %2, i32 0, i32 46
  %3 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %color_management, align 8
  store %struct._GimpColorConfig* %3, %struct._GimpColorConfig** %config, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call = call i32 @gimp_image_base_type(%struct._GimpImage* %4)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.19

if.end:                                           ; preds = %entry
  %5 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %config, align 8
  %mode = getelementptr inbounds %struct._GimpColorConfig, %struct._GimpColorConfig* %5, i32 0, i32 1
  %6 = load i32, i32* %mode, align 4
  %cmp2 = icmp eq i32 %6, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  br label %if.end.19

if.end.4:                                         ; preds = %if.end
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %8 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %9 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %10 = load i32, i32* %run_mode.addr, align 4
  %call5 = call i32 @plug_in_icc_profile_apply_rgb(%struct._GimpImage* %7, %struct._GimpContext* %8, %struct._GimpProgress* %9, i32 %10, %struct._GError** %error)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.end.19, label %if.then.6

if.then.6:                                        ; preds = %if.end.4
  %11 = load %struct._GError*, %struct._GError** %error, align 8
  %domain = getelementptr inbounds %struct._GError, %struct._GError* %11, i32 0, i32 0
  %12 = load i32, i32* %domain, align 4
  %call7 = call i32 @gimp_plug_in_error_quark() #5
  %cmp8 = icmp eq i32 %12, %call7
  br i1 %cmp8, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.6
  %13 = load %struct._GError*, %struct._GError** %error, align 8
  %code = getelementptr inbounds %struct._GError, %struct._GError* %13, i32 0, i32 1
  %14 = load i32, i32* %code, align 4
  %cmp9 = icmp eq i32 %14, 2
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %land.lhs.true
  %15 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %15, i32 0, i32 2
  %16 = load i8*, i8** %message, align 8
  %call11 = call i8* @gettext(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.23, i32 0, i32 0)) #7
  %call12 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i8* %16, i8* %call11)
  store i8* %call12, i8** %msg, align 8
  %17 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %config, align 8
  %18 = bitcast %struct._GimpColorConfig* %17 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i32 0, i8* null)
  %19 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp13 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %19, i32 0, i32 1
  %20 = load %struct._Gimp*, %struct._Gimp** %gimp13, align 8
  %21 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %22 = bitcast %struct._GimpProgress* %21 to %struct._GTypeInstance*
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 80)
  %23 = bitcast %struct._GTypeInstance* %call14 to %struct._GObject*
  %24 = load i8*, i8** %msg, align 8
  call void @gimp_message_literal(%struct._Gimp* %20, %struct._GObject* %23, i32 1, i8* %24)
  %25 = load i8*, i8** %msg, align 8
  call void @g_free(i8* %25)
  br label %if.end.18

if.else:                                          ; preds = %land.lhs.true, %if.then.6
  %26 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp15 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %26, i32 0, i32 1
  %27 = load %struct._Gimp*, %struct._Gimp** %gimp15, align 8
  %28 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %29 = bitcast %struct._GimpProgress* %28 to %struct._GTypeInstance*
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 80)
  %30 = bitcast %struct._GTypeInstance* %call16 to %struct._GObject*
  %31 = load %struct._GError*, %struct._GError** %error, align 8
  %message17 = getelementptr inbounds %struct._GError, %struct._GError* %31, i32 0, i32 2
  %32 = load i8*, i8** %message17, align 8
  call void @gimp_message_literal(%struct._Gimp* %27, %struct._GObject* %30, i32 2, i8* %32)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.10
  %33 = load %struct._GError*, %struct._GError** %error, align 8
  call void @g_error_free(%struct._GError* %33)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then, %if.then.3, %if.end.18, %if.end.4
  ret void
}

declare i32 @gimp_image_undo_enable(%struct._GimpImage*) #3

declare i32 @gimp_image_base_type(%struct._GimpImage*) #3

declare i32 @plug_in_icc_profile_apply_rgb(%struct._GimpImage*, %struct._GimpContext*, %struct._GimpProgress*, i32, %struct._GError**) #3

; Function Attrs: nounwind readnone
declare i32 @gimp_plug_in_error_quark() #1

declare noalias i8* @g_strdup_printf(i8*, ...) #3

declare void @g_object_set(i8*, i8*, ...) #3

declare void @gimp_message_literal(%struct._Gimp*, %struct._GObject*, i32, i8*) #3

declare void @g_error_free(%struct._GError*) #3

declare i32 @gimp_item_get_visible(%struct._GimpItem*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
