; ModuleID = './app/file/file-save.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpCoreConfig = type { %struct._GimpBaseConfig, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct._GimpTemplate*, %struct._GimpGrid*, i32, i64, i32, i32, i8*, i32, i32, i32, i64, %struct._GimpColorConfig*, i32, i32, %struct._GimpRGB, i32 }
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GimpGrid = type opaque
%struct._GimpColorConfig = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
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
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpImagefile = type { %struct._GimpViewable }
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpProgress = type opaque
%struct._GimpPlugInProcedure = type { %struct._GimpProcedure, i8*, i32, i32, i8*, %struct._GList*, i8*, i32, i32, i8*, i8*, i32, i64, i32, i32, i8*, i8*, i8*, i8*, %struct._GSList*, %struct._GSList*, %struct._GSList*, i8* }
%struct._GimpProcedure = type { %struct._GimpObject, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GParamSpec**, i32, %struct._GParamSpec**, %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValueArray = type { i32, %struct._GValue*, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GError = type { i32, i32, i8* }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpDocumentList = type { %struct._GimpList, %struct._Gimp* }
%struct._GimpList = type { %struct._GimpContainer, %struct._GList*, i32, i32 (i8*, i8*)*, i32 }

@.str = private unnamed_addr constant [10 x i8] c"Gimp-File\00", align 1
@__func__.file_save = private unnamed_addr constant [10 x i8] c"file_save\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"progress == NULL || GIMP_IS_PROGRESS (progress)\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"uri != NULL\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"GIMP_IS_PLUG_IN_PROCEDURE (file_proc)\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"(export_backward && export_forward) == FALSE\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"error == NULL || *error == NULL\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"Not a regular file\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"%s plug-in could not save image\00", align 1

; Function Attrs: nounwind uwtable
define i32 @file_save(%struct._Gimp* %gimp, %struct._GimpImage* %image, %struct._GimpProgress* %progress, i8* %uri, %struct._GimpPlugInProcedure* %file_proc, i32 %run_mode, i32 %change_saved_state, i32 %export_backward, i32 %export_forward, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %gimp.addr = alloca %struct._Gimp*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %uri.addr = alloca i8*, align 8
  %file_proc.addr = alloca %struct._GimpPlugInProcedure*, align 8
  %run_mode.addr = alloca i32, align 4
  %change_saved_state.addr = alloca i32, align 4
  %export_backward.addr = alloca i32, align 4
  %export_forward.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %return_vals = alloca %struct._GValueArray*, align 8
  %status = alloca i32, align 4
  %filename = alloca i8*, align 8
  %image_ID = alloca i32, align 4
  %drawable_ID = alloca i32, align 4
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
  %__inst76 = alloca %struct._GTypeInstance*, align 8
  %__t78 = alloca i64, align 8
  %__r81 = alloca i32, align 4
  %tmp96 = alloca i32, align 4
  %documents = alloca %struct._GimpDocumentList*, align 8
  %imagefile = alloca %struct._GimpImagefile*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store i8* %uri, i8** %uri.addr, align 8
  store %struct._GimpPlugInProcedure* %file_proc, %struct._GimpPlugInProcedure** %file_proc.addr, align 8
  store i32 %run_mode, i32* %run_mode.addr, align 4
  store i32 %change_saved_state, i32* %change_saved_state.addr, align 4
  store i32 %export_backward, i32* %export_backward.addr, align 4
  store i32 %export_forward, i32* %export_forward.addr, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.file_save, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %14 = bitcast %struct._GimpImage* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_image_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.file_save, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0))
  store i32 1, i32* %retval
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.file_save, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.66:                                        ; preds = %if.then.64
  br label %do.end.67

do.end.67:                                        ; preds = %if.end.66
  br label %do.body.68

do.body.68:                                       ; preds = %do.end.67
  %40 = load i8*, i8** %uri.addr, align 8
  %cmp69 = icmp ne i8* %40, null
  br i1 %cmp69, label %if.then.70, label %if.else.71

if.then.70:                                       ; preds = %do.body.68
  br label %if.end.72

if.else.71:                                       ; preds = %do.body.68
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.file_save, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.72:                                        ; preds = %if.then.70
  br label %do.end.73

do.end.73:                                        ; preds = %if.end.72
  br label %do.body.74

do.body.74:                                       ; preds = %do.end.73
  %41 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc.addr, align 8
  %42 = bitcast %struct._GimpPlugInProcedure* %41 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %42, %struct._GTypeInstance** %__inst76, align 8
  %call79 = call i64 @gimp_plug_in_procedure_get_type() #5
  store i64 %call79, i64* %__t78, align 8
  %43 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst76, align 8
  %tobool82 = icmp ne %struct._GTypeInstance* %43, null
  br i1 %tobool82, label %if.else.84, label %if.then.83

if.then.83:                                       ; preds = %do.body.74
  store i32 0, i32* %__r81, align 4
  br label %if.end.95

if.else.84:                                       ; preds = %do.body.74
  %44 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst76, align 8
  %g_class85 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %44, i32 0, i32 0
  %45 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class85, align 8
  %tobool86 = icmp ne %struct._GTypeClass* %45, null
  br i1 %tobool86, label %land.lhs.true.87, label %if.else.92

land.lhs.true.87:                                 ; preds = %if.else.84
  %46 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst76, align 8
  %g_class88 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %46, i32 0, i32 0
  %47 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class88, align 8
  %g_type89 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %47, i32 0, i32 0
  %48 = load i64, i64* %g_type89, align 8
  %49 = load i64, i64* %__t78, align 8
  %cmp90 = icmp eq i64 %48, %49
  br i1 %cmp90, label %if.then.91, label %if.else.92

if.then.91:                                       ; preds = %land.lhs.true.87
  store i32 1, i32* %__r81, align 4
  br label %if.end.94

if.else.92:                                       ; preds = %land.lhs.true.87, %if.else.84
  %50 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst76, align 8
  %51 = load i64, i64* %__t78, align 8
  %call93 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %50, i64 %51) #6
  store i32 %call93, i32* %__r81, align 4
  br label %if.end.94

if.end.94:                                        ; preds = %if.else.92, %if.then.91
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.then.83
  %52 = load i32, i32* %__r81, align 4
  store i32 %52, i32* %tmp96
  %53 = load i32, i32* %tmp96
  %tobool97 = icmp ne i32 %53, 0
  br i1 %tobool97, label %if.then.98, label %if.else.99

if.then.98:                                       ; preds = %if.end.95
  br label %if.end.100

if.else.99:                                       ; preds = %if.end.95
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.file_save, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.100:                                       ; preds = %if.then.98
  br label %do.end.101

do.end.101:                                       ; preds = %if.end.100
  br label %do.body.102

do.body.102:                                      ; preds = %do.end.101
  %54 = load i32, i32* %export_backward.addr, align 4
  %tobool103 = icmp ne i32 %54, 0
  br i1 %tobool103, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.body.102
  %55 = load i32, i32* %export_forward.addr, align 4
  %tobool104 = icmp ne i32 %55, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.body.102
  %56 = phi i1 [ false, %do.body.102 ], [ %tobool104, %land.rhs ]
  %land.ext = zext i1 %56 to i32
  %cmp105 = icmp eq i32 %land.ext, 0
  br i1 %cmp105, label %if.then.106, label %if.else.107

if.then.106:                                      ; preds = %land.end
  br label %if.end.108

if.else.107:                                      ; preds = %land.end
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.file_save, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.108:                                       ; preds = %if.then.106
  br label %do.end.109

do.end.109:                                       ; preds = %if.end.108
  br label %do.body.110

do.body.110:                                      ; preds = %do.end.109
  %57 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp111 = icmp eq %struct._GError** %57, null
  br i1 %cmp111, label %if.then.114, label %lor.lhs.false.112

lor.lhs.false.112:                                ; preds = %do.body.110
  %58 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %59 = load %struct._GError*, %struct._GError** %58, align 8
  %cmp113 = icmp eq %struct._GError* %59, null
  br i1 %cmp113, label %if.then.114, label %if.else.115

if.then.114:                                      ; preds = %lor.lhs.false.112, %do.body.110
  br label %if.end.116

if.else.115:                                      ; preds = %lor.lhs.false.112
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.file_save, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.116:                                       ; preds = %if.then.114
  br label %do.end.117

do.end.117:                                       ; preds = %if.end.116
  %60 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call118 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %60)
  store %struct._GimpDrawable* %call118, %struct._GimpDrawable** %drawable, align 8
  %61 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool119 = icmp ne %struct._GimpDrawable* %61, null
  br i1 %tobool119, label %if.end.121, label %if.then.120

if.then.120:                                      ; preds = %do.end.117
  store i32 0, i32* %retval
  br label %return

if.end.121:                                       ; preds = %do.end.117
  %62 = load i8*, i8** %uri.addr, align 8
  %call122 = call i8* @file_utils_filename_from_uri(i8* %62)
  store i8* %call122, i8** %filename, align 8
  %63 = load i8*, i8** %filename, align 8
  %tobool123 = icmp ne i8* %63, null
  br i1 %tobool123, label %if.then.124, label %if.else.142

if.then.124:                                      ; preds = %if.end.121
  %64 = load i8*, i8** %filename, align 8
  %call125 = call i32 @g_file_test(i8* %64, i32 16)
  %tobool126 = icmp ne i32 %call125, 0
  br i1 %tobool126, label %if.then.127, label %if.end.141

if.then.127:                                      ; preds = %if.then.124
  %65 = load i8*, i8** %filename, align 8
  %call128 = call i32 @g_file_test(i8* %65, i32 1)
  %tobool129 = icmp ne i32 %call128, 0
  br i1 %tobool129, label %if.end.133, label %if.then.130

if.then.130:                                      ; preds = %if.then.127
  %66 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call131 = call i32 @g_file_error_quark()
  %call132 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0)) #7
  call void @g_set_error_literal(%struct._GError** %66, i32 %call131, i32 24, i8* %call132)
  store i32 0, i32* %status, align 4
  br label %out

if.end.133:                                       ; preds = %if.then.127
  %67 = load i8*, i8** %filename, align 8
  %call134 = call i32 @g_access(i8* %67, i32 2)
  %cmp135 = icmp ne i32 %call134, 0
  br i1 %cmp135, label %if.then.136, label %if.end.140

if.then.136:                                      ; preds = %if.end.133
  %68 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call137 = call i32 @g_file_error_quark()
  %call138 = call i32* @__errno_location() #5
  %69 = load i32, i32* %call138, align 4
  %call139 = call i8* @g_strerror(i32 %69) #5
  call void @g_set_error_literal(%struct._GError** %68, i32 %call137, i32 2, i8* %call139)
  store i32 0, i32* %status, align 4
  br label %out

if.end.140:                                       ; preds = %if.end.133
  br label %if.end.141

if.end.141:                                       ; preds = %if.end.140, %if.then.124
  br label %if.end.144

if.else.142:                                      ; preds = %if.end.121
  %70 = load i8*, i8** %uri.addr, align 8
  %call143 = call noalias i8* @g_strdup(i8* %70)
  store i8* %call143, i8** %filename, align 8
  br label %if.end.144

if.end.144:                                       ; preds = %if.else.142, %if.end.141
  %71 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %72 = bitcast %struct._GimpImage* %71 to i8*
  %call145 = call i8* @g_object_ref(i8* %72)
  %73 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call146 = call i32 @gimp_image_get_ID(%struct._GimpImage* %73)
  store i32 %call146, i32* %image_ID, align 4
  %74 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %75 = bitcast %struct._GimpDrawable* %74 to %struct._GTypeInstance*
  %call147 = call i64 @gimp_item_get_type() #5
  %call148 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %75, i64 %call147)
  %76 = bitcast %struct._GTypeInstance* %call148 to %struct._GimpItem*
  %call149 = call i32 @gimp_item_get_ID(%struct._GimpItem* %76)
  store i32 %call149, i32* %drawable_ID, align 4
  %77 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp150 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %77, i32 0, i32 1
  %78 = load %struct._Gimp*, %struct._Gimp** %gimp150, align 8
  %pdb = getelementptr inbounds %struct._Gimp, %struct._Gimp* %78, i32 0, i32 44
  %79 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb, align 8
  %80 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call151 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %80)
  %81 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %82 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %83 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc.addr, align 8
  %84 = bitcast %struct._GimpPlugInProcedure* %83 to i8*
  %call152 = call i8* @gimp_object_get_name(i8* %84)
  %call153 = call i64 @gimp_int32_get_type() #5
  %85 = load i32, i32* %run_mode.addr, align 4
  %call154 = call i64 @gimp_image_id_get_type() #5
  %86 = load i32, i32* %image_ID, align 4
  %call155 = call i64 @gimp_drawable_id_get_type() #5
  %87 = load i32, i32* %drawable_ID, align 4
  %88 = load i8*, i8** %filename, align 8
  %89 = load i8*, i8** %uri.addr, align 8
  %call156 = call %struct._GValueArray* (%struct._GimpPDB*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GError**, i8*, ...) @gimp_pdb_execute_procedure_by_name(%struct._GimpPDB* %79, %struct._GimpContext* %call151, %struct._GimpProgress* %81, %struct._GError** %82, i8* %call152, i64 %call153, i32 %85, i64 %call154, i32 %86, i64 %call155, i32 %87, i64 64, i8* %88, i64 64, i8* %89, i64 4)
  store %struct._GValueArray* %call156, %struct._GValueArray** %return_vals, align 8
  %90 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %90, i32 0, i32 1
  %91 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %91, i64 0
  %call157 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx)
  store i32 %call157, i32* %status, align 4
  %92 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  call void @g_value_array_free(%struct._GValueArray* %92)
  %93 = load i32, i32* %status, align 4
  %cmp158 = icmp eq i32 %93, 3
  br i1 %cmp158, label %if.then.159, label %if.else.193

if.then.159:                                      ; preds = %if.end.144
  %94 = load i32, i32* %change_saved_state.addr, align 4
  %tobool162 = icmp ne i32 %94, 0
  br i1 %tobool162, label %if.then.163, label %if.else.164

if.then.163:                                      ; preds = %if.then.159
  %95 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %96 = load i8*, i8** %uri.addr, align 8
  call void @gimp_image_set_uri(%struct._GimpImage* %95, i8* %96)
  %97 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %98 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc.addr, align 8
  call void @gimp_image_set_save_proc(%struct._GimpImage* %97, %struct._GimpPlugInProcedure* %98)
  %99 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_image_set_imported_uri(%struct._GimpImage* %99, i8* null)
  %100 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_image_clean_all(%struct._GimpImage* %100)
  br label %if.end.174

if.else.164:                                      ; preds = %if.then.159
  %101 = load i32, i32* %export_backward.addr, align 4
  %tobool165 = icmp ne i32 %101, 0
  br i1 %tobool165, label %if.then.166, label %if.else.169

if.then.166:                                      ; preds = %if.else.164
  %102 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_image_export_clean_all(%struct._GimpImage* %102)
  %103 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %104 = bitcast %struct._GimpImage* %103 to %struct._GTypeInstance*
  %call167 = call i64 @gimp_object_get_type() #5
  %call168 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %104, i64 %call167)
  %105 = bitcast %struct._GTypeInstance* %call168 to %struct._GimpObject*
  call void @gimp_object_name_changed(%struct._GimpObject* %105)
  br label %if.end.173

if.else.169:                                      ; preds = %if.else.164
  %106 = load i32, i32* %export_forward.addr, align 4
  %tobool170 = icmp ne i32 %106, 0
  br i1 %tobool170, label %if.then.171, label %if.end.172

if.then.171:                                      ; preds = %if.else.169
  %107 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %108 = load i8*, i8** %uri.addr, align 8
  call void @gimp_image_set_exported_uri(%struct._GimpImage* %107, i8* %108)
  %109 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %110 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc.addr, align 8
  call void @gimp_image_set_export_proc(%struct._GimpImage* %109, %struct._GimpPlugInProcedure* %110)
  %111 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_image_set_imported_uri(%struct._GimpImage* %111, i8* null)
  %112 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_image_export_clean_all(%struct._GimpImage* %112)
  br label %if.end.172

if.end.172:                                       ; preds = %if.then.171, %if.else.169
  br label %if.end.173

if.end.173:                                       ; preds = %if.end.172, %if.then.166
  br label %if.end.174

if.end.174:                                       ; preds = %if.end.173, %if.then.163
  %113 = load i32, i32* %export_backward.addr, align 4
  %tobool175 = icmp ne i32 %113, 0
  br i1 %tobool175, label %if.then.178, label %lor.lhs.false.176

lor.lhs.false.176:                                ; preds = %if.end.174
  %114 = load i32, i32* %export_forward.addr, align 4
  %tobool177 = icmp ne i32 %114, 0
  br i1 %tobool177, label %if.then.178, label %if.else.179

if.then.178:                                      ; preds = %lor.lhs.false.176, %if.end.174
  %115 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %116 = load i8*, i8** %uri.addr, align 8
  call void @gimp_image_exported(%struct._GimpImage* %115, i8* %116)
  br label %if.end.180

if.else.179:                                      ; preds = %lor.lhs.false.176
  %117 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %118 = load i8*, i8** %uri.addr, align 8
  call void @gimp_image_saved(%struct._GimpImage* %117, i8* %118)
  br label %if.end.180

if.end.180:                                       ; preds = %if.else.179, %if.then.178
  %119 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp181 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %119, i32 0, i32 1
  %120 = load %struct._Gimp*, %struct._Gimp** %gimp181, align 8
  %documents182 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %120, i32 0, i32 47
  %121 = load %struct._GimpContainer*, %struct._GimpContainer** %documents182, align 8
  %122 = bitcast %struct._GimpContainer* %121 to %struct._GTypeInstance*
  %call183 = call i64 @gimp_document_list_get_type() #5
  %call184 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %122, i64 %call183)
  %123 = bitcast %struct._GTypeInstance* %call184 to %struct._GimpDocumentList*
  store %struct._GimpDocumentList* %123, %struct._GimpDocumentList** %documents, align 8
  %124 = load %struct._GimpDocumentList*, %struct._GimpDocumentList** %documents, align 8
  %125 = load i8*, i8** %uri.addr, align 8
  %126 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc.addr, align 8
  %mime_type = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %126, i32 0, i32 18
  %127 = load i8*, i8** %mime_type, align 8
  %call185 = call %struct._GimpImagefile* @gimp_document_list_add_uri(%struct._GimpDocumentList* %124, i8* %125, i8* %127)
  store %struct._GimpImagefile* %call185, %struct._GimpImagefile** %imagefile, align 8
  %128 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc.addr, align 8
  %129 = bitcast %struct._GimpPlugInProcedure* %128 to %struct._GTypeInstance*
  %call186 = call i64 @gimp_procedure_get_type() #5
  %call187 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %129, i64 %call186)
  %130 = bitcast %struct._GTypeInstance* %call187 to %struct._GimpProcedure*
  %proc_type = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %130, i32 0, i32 1
  %131 = load i32, i32* %proc_type, align 4
  %cmp188 = icmp eq i32 %131, 0
  br i1 %cmp188, label %if.then.189, label %if.end.192

if.then.189:                                      ; preds = %if.end.180
  %132 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  %133 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc.addr, align 8
  %mime_type190 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %133, i32 0, i32 18
  %134 = load i8*, i8** %mime_type190, align 8
  %135 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call191 = call i32 @gimp_imagefile_save_thumbnail(%struct._GimpImagefile* %132, i8* %134, %struct._GimpImage* %135)
  br label %if.end.192

if.end.192:                                       ; preds = %if.then.189, %if.end.180
  br label %if.end.205

if.else.193:                                      ; preds = %if.end.144
  %136 = load i32, i32* %status, align 4
  %cmp194 = icmp ne i32 %136, 4
  br i1 %cmp194, label %if.then.195, label %if.end.204

if.then.195:                                      ; preds = %if.else.193
  %137 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool196 = icmp ne %struct._GError** %137, null
  br i1 %tobool196, label %land.lhs.true.197, label %if.end.203

land.lhs.true.197:                                ; preds = %if.then.195
  %138 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %139 = load %struct._GError*, %struct._GError** %138, align 8
  %cmp198 = icmp eq %struct._GError* %139, null
  br i1 %cmp198, label %if.then.199, label %if.end.203

if.then.199:                                      ; preds = %land.lhs.true.197
  %140 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call200 = call i32 @g_file_error_quark()
  %call201 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i32 0, i32 0)) #7
  %141 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc.addr, align 8
  %call202 = call i8* @gimp_plug_in_procedure_get_label(%struct._GimpPlugInProcedure* %141)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %140, i32 %call200, i32 24, i8* %call201, i8* %call202)
  br label %if.end.203

if.end.203:                                       ; preds = %if.then.199, %land.lhs.true.197, %if.then.195
  br label %if.end.204

if.end.204:                                       ; preds = %if.end.203, %if.else.193
  br label %if.end.205

if.end.205:                                       ; preds = %if.end.204, %if.end.192
  %142 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_image_flush(%struct._GimpImage* %142)
  %143 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %144 = bitcast %struct._GimpImage* %143 to i8*
  call void @g_object_unref(i8* %144)
  br label %out

out:                                              ; preds = %if.end.205, %if.then.136, %if.then.130
  %145 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %145)
  %146 = load i32, i32* %status, align 4
  store i32 %146, i32* %retval
  br label %return

return:                                           ; preds = %out, %if.then.120, %if.else.115, %if.else.107, %if.else.99, %if.else.71, %if.else.65, %if.else.36, %if.else.9
  %147 = load i32, i32* %retval
  ret i32 %147
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_progress_interface_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_plug_in_procedure_get_type() #1

declare %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage*) #3

declare i8* @file_utils_filename_from_uri(i8*) #3

declare i32 @g_file_test(i8*, i32) #3

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

declare i8* @g_object_ref(i8*) #3

declare i32 @gimp_image_get_ID(%struct._GimpImage*) #3

declare i32 @gimp_item_get_ID(%struct._GimpItem*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #1

declare %struct._GValueArray* @gimp_pdb_execute_procedure_by_name(%struct._GimpPDB*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GError**, i8*, ...) #3

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #3

declare i8* @gimp_object_get_name(i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_int32_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_id_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_id_get_type() #1

declare i32 @g_value_get_enum(%struct._GValue*) #3

declare void @g_value_array_free(%struct._GValueArray*) #3

declare void @gimp_image_set_uri(%struct._GimpImage*, i8*) #3

declare void @gimp_image_set_save_proc(%struct._GimpImage*, %struct._GimpPlugInProcedure*) #3

declare void @gimp_image_set_imported_uri(%struct._GimpImage*, i8*) #3

declare void @gimp_image_clean_all(%struct._GimpImage*) #3

declare void @gimp_image_export_clean_all(%struct._GimpImage*) #3

declare void @gimp_object_name_changed(%struct._GimpObject*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #1

declare void @gimp_image_set_exported_uri(%struct._GimpImage*, i8*) #3

declare void @gimp_image_set_export_proc(%struct._GimpImage*, %struct._GimpPlugInProcedure*) #3

declare void @gimp_image_exported(%struct._GimpImage*, i8*) #3

declare void @gimp_image_saved(%struct._GimpImage*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_document_list_get_type() #1

declare %struct._GimpImagefile* @gimp_document_list_add_uri(%struct._GimpDocumentList*, i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_procedure_get_type() #1

declare i32 @gimp_imagefile_save_thumbnail(%struct._GimpImagefile*, i8*, %struct._GimpImage*) #3

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #3

declare i8* @gimp_plug_in_procedure_get_label(%struct._GimpPlugInProcedure*) #3

declare void @gimp_image_flush(%struct._GimpImage*) #3

declare void @g_object_unref(i8*) #3

declare void @g_free(i8*) #3

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
