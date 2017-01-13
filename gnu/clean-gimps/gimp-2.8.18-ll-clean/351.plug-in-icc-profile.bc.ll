; ModuleID = './app/plug-in/plug-in-icc-profile.bc'
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
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpProgress = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GimpProcedure = type { %struct._GimpObject, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GParamSpec**, i32, %struct._GParamSpec**, %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValueArray = type { i32, %struct._GValue*, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Plug-In\00", align 1
@__func__.plug_in_icc_profile_apply_rgb = private unnamed_addr constant [30 x i8] c"plug_in_icc_profile_apply_rgb\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"progress == NULL || GIMP_IS_PROGRESS (progress)\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"error == NULL || *error == NULL\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"Can't apply color profile to grayscale image (%s)\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"plug-in-icc-profile-apply-rgb\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Error running '%s'\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"color-profile-policy\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"Plug-In missing (%s)\00", align 1
@__func__.plug_in_icc_profile_info = private unnamed_addr constant [25 x i8] c"plug_in_icc_profile_info\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"plug-in-icc-profile-info\00", align 1
@__func__.plug_in_icc_profile_file_info = private unnamed_addr constant [30 x i8] c"plug_in_icc_profile_file_info\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"filename != NULL\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"plug-in-icc-profile-file-info\00", align 1

; Function Attrs: nounwind uwtable
define i32 @plug_in_icc_profile_apply_rgb(%struct._GimpImage* %image, %struct._GimpContext* %context, %struct._GimpProgress* %progress, i32 %run_mode, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %image.addr = alloca %struct._GimpImage*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %run_mode.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %gimp = alloca %struct._Gimp*, align 8
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
  %__inst89 = alloca %struct._GTypeInstance*, align 8
  %__t91 = alloca i64, align 8
  %__r94 = alloca i32, align 4
  %tmp109 = alloca i32, align 4
  %__inst113 = alloca %struct._GTypeInstance*, align 8
  %__t117 = alloca i64, align 8
  %__r120 = alloca i32, align 4
  %tmp135 = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %status = alloca i32, align 4
  %policy = alloca i32, align 4
  %success = alloca i32, align 4
  %value = alloca %struct._GValue*, align 8
  %__val = alloca %struct._GValue*, align 8
  %__t164 = alloca i64, align 8
  %__r167 = alloca i32, align 4
  %tmp178 = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store i32 %run_mode, i32* %run_mode.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.plug_in_icc_profile_apply_rgb, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.plug_in_icc_profile_apply_rgb, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.plug_in_icc_profile_apply_rgb, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.66:                                        ; preds = %if.then.64
  br label %do.end.67

do.end.67:                                        ; preds = %if.end.66
  br label %do.body.68

do.body.68:                                       ; preds = %do.end.67
  %40 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp69 = icmp eq %struct._GError** %40, null
  br i1 %cmp69, label %if.then.72, label %lor.lhs.false.70

lor.lhs.false.70:                                 ; preds = %do.body.68
  %41 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %42 = load %struct._GError*, %struct._GError** %41, align 8
  %cmp71 = icmp eq %struct._GError* %42, null
  br i1 %cmp71, label %if.then.72, label %if.else.73

if.then.72:                                       ; preds = %lor.lhs.false.70, %do.body.68
  br label %if.end.74

if.else.73:                                       ; preds = %lor.lhs.false.70
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.plug_in_icc_profile_apply_rgb, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.74:                                        ; preds = %if.then.72
  br label %do.end.75

do.end.75:                                        ; preds = %if.end.74
  %43 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp76 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %43, i32 0, i32 1
  %44 = load %struct._Gimp*, %struct._Gimp** %gimp76, align 8
  store %struct._Gimp* %44, %struct._Gimp** %gimp, align 8
  %45 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call77 = call i32 @gimp_image_base_type(%struct._GimpImage* %45)
  %cmp78 = icmp eq i32 %call77, 1
  br i1 %cmp78, label %if.then.79, label %if.end.82

if.then.79:                                       ; preds = %do.end.75
  %46 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call80 = call i32 @gimp_plug_in_error_quark() #5
  %call81 = call i8* @gettext(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i32 0, i32 0)) #7
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %46, i32 %call80, i32 1, i8* %call81, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.82:                                        ; preds = %do.end.75
  %47 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %pdb = getelementptr inbounds %struct._Gimp, %struct._Gimp* %47, i32 0, i32 44
  %48 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb, align 8
  %call83 = call %struct._GimpProcedure* @gimp_pdb_lookup_procedure(%struct._GimpPDB* %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GimpProcedure* %call83, %struct._GimpProcedure** %procedure, align 8
  %49 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %tobool84 = icmp ne %struct._GimpProcedure* %49, null
  br i1 %tobool84, label %land.lhs.true.85, label %if.end.187

land.lhs.true.85:                                 ; preds = %if.end.82
  %50 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %num_args = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %50, i32 0, i32 10
  %51 = load i32, i32* %num_args, align 4
  %cmp86 = icmp sge i32 %51, 2
  br i1 %cmp86, label %land.lhs.true.87, label %if.end.187

land.lhs.true.87:                                 ; preds = %land.lhs.true.85
  %52 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %52, i32 0, i32 11
  %53 = load %struct._GParamSpec**, %struct._GParamSpec*** %args, align 8
  %arrayidx = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %53, i64 0
  %54 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx, align 8
  %55 = bitcast %struct._GParamSpec* %54 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %55, %struct._GTypeInstance** %__inst89, align 8
  %call92 = call i64 @gimp_param_int32_get_type() #5
  store i64 %call92, i64* %__t91, align 8
  %56 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst89, align 8
  %tobool95 = icmp ne %struct._GTypeInstance* %56, null
  br i1 %tobool95, label %if.else.97, label %if.then.96

if.then.96:                                       ; preds = %land.lhs.true.87
  store i32 0, i32* %__r94, align 4
  br label %if.end.108

if.else.97:                                       ; preds = %land.lhs.true.87
  %57 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst89, align 8
  %g_class98 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %57, i32 0, i32 0
  %58 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class98, align 8
  %tobool99 = icmp ne %struct._GTypeClass* %58, null
  br i1 %tobool99, label %land.lhs.true.100, label %if.else.105

land.lhs.true.100:                                ; preds = %if.else.97
  %59 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst89, align 8
  %g_class101 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %59, i32 0, i32 0
  %60 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class101, align 8
  %g_type102 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %60, i32 0, i32 0
  %61 = load i64, i64* %g_type102, align 8
  %62 = load i64, i64* %__t91, align 8
  %cmp103 = icmp eq i64 %61, %62
  br i1 %cmp103, label %if.then.104, label %if.else.105

if.then.104:                                      ; preds = %land.lhs.true.100
  store i32 1, i32* %__r94, align 4
  br label %if.end.107

if.else.105:                                      ; preds = %land.lhs.true.100, %if.else.97
  %63 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst89, align 8
  %64 = load i64, i64* %__t91, align 8
  %call106 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %63, i64 %64) #6
  store i32 %call106, i32* %__r94, align 4
  br label %if.end.107

if.end.107:                                       ; preds = %if.else.105, %if.then.104
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %if.then.96
  %65 = load i32, i32* %__r94, align 4
  store i32 %65, i32* %tmp109
  %66 = load i32, i32* %tmp109
  %tobool110 = icmp ne i32 %66, 0
  br i1 %tobool110, label %land.lhs.true.111, label %if.end.187

land.lhs.true.111:                                ; preds = %if.end.108
  %67 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args114 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %67, i32 0, i32 11
  %68 = load %struct._GParamSpec**, %struct._GParamSpec*** %args114, align 8
  %arrayidx115 = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %68, i64 1
  %69 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx115, align 8
  %70 = bitcast %struct._GParamSpec* %69 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %70, %struct._GTypeInstance** %__inst113, align 8
  %call118 = call i64 @gimp_param_image_id_get_type() #5
  store i64 %call118, i64* %__t117, align 8
  %71 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst113, align 8
  %tobool121 = icmp ne %struct._GTypeInstance* %71, null
  br i1 %tobool121, label %if.else.123, label %if.then.122

if.then.122:                                      ; preds = %land.lhs.true.111
  store i32 0, i32* %__r120, align 4
  br label %if.end.134

if.else.123:                                      ; preds = %land.lhs.true.111
  %72 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst113, align 8
  %g_class124 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %72, i32 0, i32 0
  %73 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class124, align 8
  %tobool125 = icmp ne %struct._GTypeClass* %73, null
  br i1 %tobool125, label %land.lhs.true.126, label %if.else.131

land.lhs.true.126:                                ; preds = %if.else.123
  %74 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst113, align 8
  %g_class127 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %74, i32 0, i32 0
  %75 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class127, align 8
  %g_type128 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %75, i32 0, i32 0
  %76 = load i64, i64* %g_type128, align 8
  %77 = load i64, i64* %__t117, align 8
  %cmp129 = icmp eq i64 %76, %77
  br i1 %cmp129, label %if.then.130, label %if.else.131

if.then.130:                                      ; preds = %land.lhs.true.126
  store i32 1, i32* %__r120, align 4
  br label %if.end.133

if.else.131:                                      ; preds = %land.lhs.true.126, %if.else.123
  %78 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst113, align 8
  %79 = load i64, i64* %__t117, align 8
  %call132 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %78, i64 %79) #6
  store i32 %call132, i32* %__r120, align 4
  br label %if.end.133

if.end.133:                                       ; preds = %if.else.131, %if.then.130
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.133, %if.then.122
  %80 = load i32, i32* %__r120, align 4
  store i32 %80, i32* %tmp135
  %81 = load i32, i32* %tmp135
  %tobool136 = icmp ne i32 %81, 0
  br i1 %tobool136, label %if.then.137, label %if.end.187

if.then.137:                                      ; preds = %if.end.134
  store i32 0, i32* %policy, align 4
  %82 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %pdb142 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %82, i32 0, i32 44
  %83 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb142, align 8
  %84 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %85 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %86 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call143 = call i64 @gimp_int32_get_type() #5
  %87 = load i32, i32* %run_mode.addr, align 4
  %call144 = call i64 @gimp_image_id_get_type() #5
  %88 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call145 = call i32 @gimp_image_get_ID(%struct._GimpImage* %88)
  %call146 = call %struct._GValueArray* (%struct._GimpPDB*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GError**, i8*, ...) @gimp_pdb_execute_procedure_by_name(%struct._GimpPDB* %83, %struct._GimpContext* %84, %struct._GimpProgress* %85, %struct._GError** %86, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0), i64 %call143, i32 %87, i64 %call144, i32 %call145, i64 4)
  store %struct._GValueArray* %call146, %struct._GValueArray** %return_vals, align 8
  %89 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %89, i32 0, i32 1
  %90 = load %struct._GValue*, %struct._GValue** %values, align 8
  %call147 = call i32 @g_value_get_enum(%struct._GValue* %90)
  store i32 %call147, i32* %status, align 4
  %91 = load i32, i32* %status, align 4
  switch i32 %91, label %sw.default [
    i32 3, label %sw.bb
    i32 4, label %sw.bb.148
  ]

sw.bb:                                            ; preds = %if.then.137
  store i32 2, i32* %policy, align 4
  store i32 1, i32* %success, align 4
  br label %sw.epilog

sw.bb.148:                                        ; preds = %if.then.137
  store i32 1, i32* %policy, align 4
  store i32 1, i32* %success, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.137
  %92 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool149 = icmp ne %struct._GError** %92, null
  br i1 %tobool149, label %land.lhs.true.150, label %if.end.155

land.lhs.true.150:                                ; preds = %sw.default
  %93 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %94 = load %struct._GError*, %struct._GError** %93, align 8
  %cmp151 = icmp eq %struct._GError* %94, null
  br i1 %cmp151, label %if.then.152, label %if.end.155

if.then.152:                                      ; preds = %land.lhs.true.150
  %95 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call153 = call i32 @gimp_plug_in_error_quark() #5
  %call154 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0)) #7
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %95, i32 %call153, i32 1, i8* %call154, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.155

if.end.155:                                       ; preds = %if.then.152, %land.lhs.true.150, %sw.default
  store i32 0, i32* %success, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.155, %sw.bb.148, %sw.bb
  %96 = load i32, i32* %success, align 4
  %tobool156 = icmp ne i32 %96, 0
  br i1 %tobool156, label %land.lhs.true.157, label %if.end.186

land.lhs.true.157:                                ; preds = %sw.epilog
  %97 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %n_values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %97, i32 0, i32 0
  %98 = load i32, i32* %n_values, align 4
  %cmp158 = icmp ugt i32 %98, 1
  br i1 %cmp158, label %if.then.159, label %if.end.186

if.then.159:                                      ; preds = %land.lhs.true.157
  %99 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %call161 = call %struct._GValue* @g_value_array_get_nth(%struct._GValueArray* %99, i32 1)
  store %struct._GValue* %call161, %struct._GValue** %value, align 8
  %100 = load %struct._GValue*, %struct._GValue** %value, align 8
  store %struct._GValue* %100, %struct._GValue** %__val, align 8
  %call165 = call i64 @gimp_int32_get_type() #5
  store i64 %call165, i64* %__t164, align 8
  %101 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool168 = icmp ne %struct._GValue* %101, null
  br i1 %tobool168, label %if.else.170, label %if.then.169

if.then.169:                                      ; preds = %if.then.159
  store i32 0, i32* %__r167, align 4
  br label %if.end.177

if.else.170:                                      ; preds = %if.then.159
  %102 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type171 = getelementptr inbounds %struct._GValue, %struct._GValue* %102, i32 0, i32 0
  %103 = load i64, i64* %g_type171, align 8
  %104 = load i64, i64* %__t164, align 8
  %cmp172 = icmp eq i64 %103, %104
  br i1 %cmp172, label %if.then.173, label %if.else.174

if.then.173:                                      ; preds = %if.else.170
  store i32 1, i32* %__r167, align 4
  br label %if.end.176

if.else.174:                                      ; preds = %if.else.170
  %105 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %106 = load i64, i64* %__t164, align 8
  %call175 = call i32 @g_type_check_value_holds(%struct._GValue* %105, i64 %106) #6
  store i32 %call175, i32* %__r167, align 4
  br label %if.end.176

if.end.176:                                       ; preds = %if.else.174, %if.then.173
  br label %if.end.177

if.end.177:                                       ; preds = %if.end.176, %if.then.169
  %107 = load i32, i32* %__r167, align 4
  store i32 %107, i32* %tmp178
  %108 = load i32, i32* %tmp178
  %tobool179 = icmp ne i32 %108, 0
  br i1 %tobool179, label %land.lhs.true.180, label %if.end.185

land.lhs.true.180:                                ; preds = %if.end.177
  %109 = load %struct._GValue*, %struct._GValue** %value, align 8
  %call181 = call i32 @g_value_get_int(%struct._GValue* %109)
  %tobool182 = icmp ne i32 %call181, 0
  br i1 %tobool182, label %if.then.183, label %if.end.185

if.then.183:                                      ; preds = %land.lhs.true.180
  %110 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %110, i32 0, i32 1
  %111 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %112 = bitcast %struct._GimpCoreConfig* %111 to %struct._GTypeInstance*
  %call184 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %112, i64 80)
  %113 = bitcast %struct._GTypeInstance* %call184 to %struct._GObject*
  %114 = bitcast %struct._GObject* %113 to i8*
  %115 = load i32, i32* %policy, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %114, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), i32 %115, i8* null)
  br label %if.end.185

if.end.185:                                       ; preds = %if.then.183, %land.lhs.true.180, %if.end.177
  br label %if.end.186

if.end.186:                                       ; preds = %if.end.185, %land.lhs.true.157, %sw.epilog
  %116 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  call void @g_value_array_free(%struct._GValueArray* %116)
  %117 = load i32, i32* %success, align 4
  store i32 %117, i32* %retval
  br label %return

if.end.187:                                       ; preds = %if.end.134, %if.end.108, %land.lhs.true.85, %if.end.82
  %118 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call188 = call i32 @gimp_plug_in_error_quark() #5
  %call189 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0)) #7
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %118, i32 %call188, i32 2, i8* %call189, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.187, %if.end.186, %if.then.79, %if.else.73, %if.else.65, %if.else.36, %if.else.9
  %119 = load i32, i32* %retval
  ret i32 %119
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_progress_interface_get_type() #1

declare i32 @gimp_image_base_type(%struct._GimpImage*) #3

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #3

; Function Attrs: nounwind readnone
declare i32 @gimp_plug_in_error_quark() #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare %struct._GimpProcedure* @gimp_pdb_lookup_procedure(%struct._GimpPDB*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_param_int32_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_param_image_id_get_type() #1

declare %struct._GValueArray* @gimp_pdb_execute_procedure_by_name(%struct._GimpPDB*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GError**, i8*, ...) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_int32_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_id_get_type() #1

declare i32 @gimp_image_get_ID(%struct._GimpImage*) #3

declare i32 @g_value_get_enum(%struct._GValue*) #3

declare %struct._GValue* @g_value_array_get_nth(%struct._GValueArray*, i32) #3

; Function Attrs: nounwind readonly
declare i32 @g_type_check_value_holds(%struct._GValue*, i64) #2

declare i32 @g_value_get_int(%struct._GValue*) #3

declare void @g_object_set(i8*, i8*, ...) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

declare void @g_value_array_free(%struct._GValueArray*) #3

; Function Attrs: nounwind uwtable
define i32 @plug_in_icc_profile_info(%struct._GimpImage* %image, %struct._GimpContext* %context, %struct._GimpProgress* %progress, i8** %name, i8** %desc, i8** %info, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %image.addr = alloca %struct._GimpImage*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %name.addr = alloca i8**, align 8
  %desc.addr = alloca i8**, align 8
  %info.addr = alloca i8**, align 8
  %error.addr = alloca %struct._GError**, align 8
  %gimp = alloca %struct._Gimp*, align 8
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
  %__inst83 = alloca %struct._GTypeInstance*, align 8
  %__t85 = alloca i64, align 8
  %__r88 = alloca i32, align 4
  %tmp103 = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %status = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store i8** %name, i8*** %name.addr, align 8
  store i8** %desc, i8*** %desc.addr, align 8
  store i8** %info, i8*** %info.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.plug_in_icc_profile_info, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.plug_in_icc_profile_info, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.plug_in_icc_profile_info, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.66:                                        ; preds = %if.then.64
  br label %do.end.67

do.end.67:                                        ; preds = %if.end.66
  br label %do.body.68

do.body.68:                                       ; preds = %do.end.67
  %40 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp69 = icmp eq %struct._GError** %40, null
  br i1 %cmp69, label %if.then.72, label %lor.lhs.false.70

lor.lhs.false.70:                                 ; preds = %do.body.68
  %41 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %42 = load %struct._GError*, %struct._GError** %41, align 8
  %cmp71 = icmp eq %struct._GError* %42, null
  br i1 %cmp71, label %if.then.72, label %if.else.73

if.then.72:                                       ; preds = %lor.lhs.false.70, %do.body.68
  br label %if.end.74

if.else.73:                                       ; preds = %lor.lhs.false.70
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.plug_in_icc_profile_info, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.74:                                        ; preds = %if.then.72
  br label %do.end.75

do.end.75:                                        ; preds = %if.end.74
  %43 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp76 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %43, i32 0, i32 1
  %44 = load %struct._Gimp*, %struct._Gimp** %gimp76, align 8
  store %struct._Gimp* %44, %struct._Gimp** %gimp, align 8
  %45 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %pdb = getelementptr inbounds %struct._Gimp, %struct._Gimp* %45, i32 0, i32 44
  %46 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb, align 8
  %call77 = call %struct._GimpProcedure* @gimp_pdb_lookup_procedure(%struct._GimpPDB* %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0))
  store %struct._GimpProcedure* %call77, %struct._GimpProcedure** %procedure, align 8
  %47 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %tobool78 = icmp ne %struct._GimpProcedure* %47, null
  br i1 %tobool78, label %land.lhs.true.79, label %if.end.121

land.lhs.true.79:                                 ; preds = %do.end.75
  %48 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %num_args = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %48, i32 0, i32 10
  %49 = load i32, i32* %num_args, align 4
  %cmp80 = icmp sge i32 %49, 1
  br i1 %cmp80, label %land.lhs.true.81, label %if.end.121

land.lhs.true.81:                                 ; preds = %land.lhs.true.79
  %50 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %50, i32 0, i32 11
  %51 = load %struct._GParamSpec**, %struct._GParamSpec*** %args, align 8
  %arrayidx = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %51, i64 0
  %52 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx, align 8
  %53 = bitcast %struct._GParamSpec* %52 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %53, %struct._GTypeInstance** %__inst83, align 8
  %call86 = call i64 @gimp_param_image_id_get_type() #5
  store i64 %call86, i64* %__t85, align 8
  %54 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst83, align 8
  %tobool89 = icmp ne %struct._GTypeInstance* %54, null
  br i1 %tobool89, label %if.else.91, label %if.then.90

if.then.90:                                       ; preds = %land.lhs.true.81
  store i32 0, i32* %__r88, align 4
  br label %if.end.102

if.else.91:                                       ; preds = %land.lhs.true.81
  %55 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst83, align 8
  %g_class92 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %55, i32 0, i32 0
  %56 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class92, align 8
  %tobool93 = icmp ne %struct._GTypeClass* %56, null
  br i1 %tobool93, label %land.lhs.true.94, label %if.else.99

land.lhs.true.94:                                 ; preds = %if.else.91
  %57 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst83, align 8
  %g_class95 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %57, i32 0, i32 0
  %58 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class95, align 8
  %g_type96 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %58, i32 0, i32 0
  %59 = load i64, i64* %g_type96, align 8
  %60 = load i64, i64* %__t85, align 8
  %cmp97 = icmp eq i64 %59, %60
  br i1 %cmp97, label %if.then.98, label %if.else.99

if.then.98:                                       ; preds = %land.lhs.true.94
  store i32 1, i32* %__r88, align 4
  br label %if.end.101

if.else.99:                                       ; preds = %land.lhs.true.94, %if.else.91
  %61 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst83, align 8
  %62 = load i64, i64* %__t85, align 8
  %call100 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %61, i64 %62) #6
  store i32 %call100, i32* %__r88, align 4
  br label %if.end.101

if.end.101:                                       ; preds = %if.else.99, %if.then.98
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %if.then.90
  %63 = load i32, i32* %__r88, align 4
  store i32 %63, i32* %tmp103
  %64 = load i32, i32* %tmp103
  %tobool104 = icmp ne i32 %64, 0
  br i1 %tobool104, label %if.then.105, label %if.end.121

if.then.105:                                      ; preds = %if.end.102
  %65 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %pdb108 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %65, i32 0, i32 44
  %66 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb108, align 8
  %67 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %68 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %69 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call109 = call i64 @gimp_image_id_get_type() #5
  %70 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call110 = call i32 @gimp_image_get_ID(%struct._GimpImage* %70)
  %call111 = call %struct._GValueArray* (%struct._GimpPDB*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GError**, i8*, ...) @gimp_pdb_execute_procedure_by_name(%struct._GimpPDB* %66, %struct._GimpContext* %67, %struct._GimpProgress* %68, %struct._GError** %69, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0), i64 %call109, i32 %call110, i64 4)
  store %struct._GValueArray* %call111, %struct._GValueArray** %return_vals, align 8
  %71 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %71, i32 0, i32 1
  %72 = load %struct._GValue*, %struct._GValue** %values, align 8
  %call112 = call i32 @g_value_get_enum(%struct._GValue* %72)
  store i32 %call112, i32* %status, align 4
  %73 = load i32, i32* %status, align 4
  switch i32 %73, label %sw.default [
    i32 3, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.then.105
  %74 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %75 = load i8**, i8*** %name.addr, align 8
  %76 = load i8**, i8*** %desc.addr, align 8
  %77 = load i8**, i8*** %info.addr, align 8
  call void @plug_in_icc_profile_info_return(%struct._GValueArray* %74, i8** %75, i8** %76, i8** %77)
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.105
  %78 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool113 = icmp ne %struct._GError** %78, null
  br i1 %tobool113, label %land.lhs.true.114, label %if.end.119

land.lhs.true.114:                                ; preds = %sw.default
  %79 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %80 = load %struct._GError*, %struct._GError** %79, align 8
  %cmp115 = icmp eq %struct._GError* %80, null
  br i1 %cmp115, label %if.then.116, label %if.end.119

if.then.116:                                      ; preds = %land.lhs.true.114
  %81 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call117 = call i32 @gimp_plug_in_error_quark() #5
  %call118 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0)) #7
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %81, i32 %call117, i32 0, i8* %call118, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.116, %land.lhs.true.114, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.119, %sw.bb
  %82 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  call void @g_value_array_free(%struct._GValueArray* %82)
  %83 = load i32, i32* %status, align 4
  %cmp120 = icmp eq i32 %83, 3
  %conv = zext i1 %cmp120 to i32
  store i32 %conv, i32* %retval
  br label %return

if.end.121:                                       ; preds = %if.end.102, %land.lhs.true.79, %do.end.75
  %84 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call122 = call i32 @gimp_plug_in_error_quark() #5
  %call123 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0)) #7
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %84, i32 %call122, i32 0, i8* %call123, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.121, %sw.epilog, %if.else.73, %if.else.65, %if.else.36, %if.else.9
  %85 = load i32, i32* %retval
  ret i32 %85
}

; Function Attrs: nounwind uwtable
define internal void @plug_in_icc_profile_info_return(%struct._GValueArray* %return_vals, i8** %name, i8** %desc, i8** %info) #0 {
entry:
  %return_vals.addr = alloca %struct._GValueArray*, align 8
  %name.addr = alloca i8**, align 8
  %desc.addr = alloca i8**, align 8
  %info.addr = alloca i8**, align 8
  %value = alloca %struct._GValue*, align 8
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %value13 = alloca %struct._GValue*, align 8
  %__val16 = alloca %struct._GValue*, align 8
  %__t18 = alloca i64, align 8
  %__r20 = alloca i32, align 4
  %tmp31 = alloca i32, align 4
  %value42 = alloca %struct._GValue*, align 8
  %__val45 = alloca %struct._GValue*, align 8
  %__t47 = alloca i64, align 8
  %__r49 = alloca i32, align 4
  %tmp60 = alloca i32, align 4
  store %struct._GValueArray* %return_vals, %struct._GValueArray** %return_vals.addr, align 8
  store i8** %name, i8*** %name.addr, align 8
  store i8** %desc, i8*** %desc.addr, align 8
  store i8** %info, i8*** %info.addr, align 8
  %0 = load i8**, i8*** %name.addr, align 8
  %tobool = icmp ne i8** %0, null
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %1 = load %struct._GValueArray*, %struct._GValueArray** %return_vals.addr, align 8
  %call = call %struct._GValue* @g_value_array_get_nth(%struct._GValueArray* %1, i32 1)
  store %struct._GValue* %call, %struct._GValue** %value, align 8
  %2 = load %struct._GValue*, %struct._GValue** %value, align 8
  store %struct._GValue* %2, %struct._GValue** %__val, align 8
  store i64 64, i64* %__t, align 8
  %3 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool1 = icmp ne %struct._GValue* %3, null
  br i1 %tobool1, label %if.else, label %if.then.2

if.then.2:                                        ; preds = %if.then
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %if.then
  %4 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i32 0, i32 0
  %5 = load i64, i64* %g_type, align 8
  %6 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %5, %6
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.else
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %if.else
  %7 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %8 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_value_holds(%struct._GValue* %7, i64 %8) #6
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then.2
  %9 = load i32, i32* %__r, align 4
  store i32 %9, i32* %tmp
  %10 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %10, 0
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.6
  %11 = load %struct._GValue*, %struct._GValue** %value, align 8
  %call8 = call i8* @g_value_dup_string(%struct._GValue* %11)
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call8, %cond.true ], [ null, %cond.false ]
  %12 = load i8**, i8*** %name.addr, align 8
  store i8* %cond, i8** %12, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %cond.end, %entry
  %13 = load i8**, i8*** %desc.addr, align 8
  %tobool10 = icmp ne i8** %13, null
  br i1 %tobool10, label %if.then.11, label %if.end.38

if.then.11:                                       ; preds = %if.end.9
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals.addr, align 8
  %call14 = call %struct._GValue* @g_value_array_get_nth(%struct._GValueArray* %14, i32 2)
  store %struct._GValue* %call14, %struct._GValue** %value13, align 8
  %15 = load %struct._GValue*, %struct._GValue** %value13, align 8
  store %struct._GValue* %15, %struct._GValue** %__val16, align 8
  store i64 64, i64* %__t18, align 8
  %16 = load %struct._GValue*, %struct._GValue** %__val16, align 8
  %tobool21 = icmp ne %struct._GValue* %16, null
  br i1 %tobool21, label %if.else.23, label %if.then.22

if.then.22:                                       ; preds = %if.then.11
  store i32 0, i32* %__r20, align 4
  br label %if.end.30

if.else.23:                                       ; preds = %if.then.11
  %17 = load %struct._GValue*, %struct._GValue** %__val16, align 8
  %g_type24 = getelementptr inbounds %struct._GValue, %struct._GValue* %17, i32 0, i32 0
  %18 = load i64, i64* %g_type24, align 8
  %19 = load i64, i64* %__t18, align 8
  %cmp25 = icmp eq i64 %18, %19
  br i1 %cmp25, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %if.else.23
  store i32 1, i32* %__r20, align 4
  br label %if.end.29

if.else.27:                                       ; preds = %if.else.23
  %20 = load %struct._GValue*, %struct._GValue** %__val16, align 8
  %21 = load i64, i64* %__t18, align 8
  %call28 = call i32 @g_type_check_value_holds(%struct._GValue* %20, i64 %21) #6
  store i32 %call28, i32* %__r20, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.27, %if.then.26
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.then.22
  %22 = load i32, i32* %__r20, align 4
  store i32 %22, i32* %tmp31
  %23 = load i32, i32* %tmp31
  %tobool32 = icmp ne i32 %23, 0
  br i1 %tobool32, label %cond.true.33, label %cond.false.35

cond.true.33:                                     ; preds = %if.end.30
  %24 = load %struct._GValue*, %struct._GValue** %value13, align 8
  %call34 = call i8* @g_value_dup_string(%struct._GValue* %24)
  br label %cond.end.36

cond.false.35:                                    ; preds = %if.end.30
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.false.35, %cond.true.33
  %cond37 = phi i8* [ %call34, %cond.true.33 ], [ null, %cond.false.35 ]
  %25 = load i8**, i8*** %desc.addr, align 8
  store i8* %cond37, i8** %25, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %cond.end.36, %if.end.9
  %26 = load i8**, i8*** %info.addr, align 8
  %tobool39 = icmp ne i8** %26, null
  br i1 %tobool39, label %if.then.40, label %if.end.67

if.then.40:                                       ; preds = %if.end.38
  %27 = load %struct._GValueArray*, %struct._GValueArray** %return_vals.addr, align 8
  %call43 = call %struct._GValue* @g_value_array_get_nth(%struct._GValueArray* %27, i32 3)
  store %struct._GValue* %call43, %struct._GValue** %value42, align 8
  %28 = load %struct._GValue*, %struct._GValue** %value42, align 8
  store %struct._GValue* %28, %struct._GValue** %__val45, align 8
  store i64 64, i64* %__t47, align 8
  %29 = load %struct._GValue*, %struct._GValue** %__val45, align 8
  %tobool50 = icmp ne %struct._GValue* %29, null
  br i1 %tobool50, label %if.else.52, label %if.then.51

if.then.51:                                       ; preds = %if.then.40
  store i32 0, i32* %__r49, align 4
  br label %if.end.59

if.else.52:                                       ; preds = %if.then.40
  %30 = load %struct._GValue*, %struct._GValue** %__val45, align 8
  %g_type53 = getelementptr inbounds %struct._GValue, %struct._GValue* %30, i32 0, i32 0
  %31 = load i64, i64* %g_type53, align 8
  %32 = load i64, i64* %__t47, align 8
  %cmp54 = icmp eq i64 %31, %32
  br i1 %cmp54, label %if.then.55, label %if.else.56

if.then.55:                                       ; preds = %if.else.52
  store i32 1, i32* %__r49, align 4
  br label %if.end.58

if.else.56:                                       ; preds = %if.else.52
  %33 = load %struct._GValue*, %struct._GValue** %__val45, align 8
  %34 = load i64, i64* %__t47, align 8
  %call57 = call i32 @g_type_check_value_holds(%struct._GValue* %33, i64 %34) #6
  store i32 %call57, i32* %__r49, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.56, %if.then.55
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.then.51
  %35 = load i32, i32* %__r49, align 4
  store i32 %35, i32* %tmp60
  %36 = load i32, i32* %tmp60
  %tobool61 = icmp ne i32 %36, 0
  br i1 %tobool61, label %cond.true.62, label %cond.false.64

cond.true.62:                                     ; preds = %if.end.59
  %37 = load %struct._GValue*, %struct._GValue** %value42, align 8
  %call63 = call i8* @g_value_dup_string(%struct._GValue* %37)
  br label %cond.end.65

cond.false.64:                                    ; preds = %if.end.59
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.false.64, %cond.true.62
  %cond66 = phi i8* [ %call63, %cond.true.62 ], [ null, %cond.false.64 ]
  %38 = load i8**, i8*** %info.addr, align 8
  store i8* %cond66, i8** %38, align 8
  br label %if.end.67

if.end.67:                                        ; preds = %cond.end.65, %if.end.38
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @plug_in_icc_profile_file_info(%struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, i8* %filename, i8** %name, i8** %desc, i8** %info, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %filename.addr = alloca i8*, align 8
  %name.addr = alloca i8**, align 8
  %desc.addr = alloca i8**, align 8
  %info.addr = alloca i8**, align 8
  %error.addr = alloca %struct._GError**, align 8
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
  %__inst88 = alloca %struct._GTypeInstance*, align 8
  %__t90 = alloca i64, align 8
  %__r93 = alloca i32, align 4
  %tmp108 = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %status = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i8** %name, i8*** %name.addr, align 8
  store i8** %desc, i8*** %desc.addr, align 8
  store i8** %info, i8*** %info.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.plug_in_icc_profile_file_info, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.plug_in_icc_profile_file_info, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.plug_in_icc_profile_file_info, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.66:                                        ; preds = %if.then.64
  br label %do.end.67

do.end.67:                                        ; preds = %if.end.66
  br label %do.body.68

do.body.68:                                       ; preds = %do.end.67
  %40 = load i8*, i8** %filename.addr, align 8
  %cmp69 = icmp ne i8* %40, null
  br i1 %cmp69, label %if.then.70, label %if.else.71

if.then.70:                                       ; preds = %do.body.68
  br label %if.end.72

if.else.71:                                       ; preds = %do.body.68
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.plug_in_icc_profile_file_info, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0))
  store i32 0, i32* %retval
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.plug_in_icc_profile_file_info, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.80:                                        ; preds = %if.then.78
  br label %do.end.81

do.end.81:                                        ; preds = %if.end.80
  %44 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %pdb = getelementptr inbounds %struct._Gimp, %struct._Gimp* %44, i32 0, i32 44
  %45 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb, align 8
  %call82 = call %struct._GimpProcedure* @gimp_pdb_lookup_procedure(%struct._GimpPDB* %45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i32 0, i32 0))
  store %struct._GimpProcedure* %call82, %struct._GimpProcedure** %procedure, align 8
  %46 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %tobool83 = icmp ne %struct._GimpProcedure* %46, null
  br i1 %tobool83, label %land.lhs.true.84, label %if.end.124

land.lhs.true.84:                                 ; preds = %do.end.81
  %47 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %num_args = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %47, i32 0, i32 10
  %48 = load i32, i32* %num_args, align 4
  %cmp85 = icmp sge i32 %48, 1
  br i1 %cmp85, label %land.lhs.true.86, label %if.end.124

land.lhs.true.86:                                 ; preds = %land.lhs.true.84
  %49 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %49, i32 0, i32 11
  %50 = load %struct._GParamSpec**, %struct._GParamSpec*** %args, align 8
  %arrayidx = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %50, i64 0
  %51 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx, align 8
  %52 = bitcast %struct._GParamSpec* %51 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %52, %struct._GTypeInstance** %__inst88, align 8
  %call91 = call i64 @gimp_param_string_get_type() #5
  store i64 %call91, i64* %__t90, align 8
  %53 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst88, align 8
  %tobool94 = icmp ne %struct._GTypeInstance* %53, null
  br i1 %tobool94, label %if.else.96, label %if.then.95

if.then.95:                                       ; preds = %land.lhs.true.86
  store i32 0, i32* %__r93, align 4
  br label %if.end.107

if.else.96:                                       ; preds = %land.lhs.true.86
  %54 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst88, align 8
  %g_class97 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %54, i32 0, i32 0
  %55 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class97, align 8
  %tobool98 = icmp ne %struct._GTypeClass* %55, null
  br i1 %tobool98, label %land.lhs.true.99, label %if.else.104

land.lhs.true.99:                                 ; preds = %if.else.96
  %56 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst88, align 8
  %g_class100 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %56, i32 0, i32 0
  %57 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class100, align 8
  %g_type101 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %57, i32 0, i32 0
  %58 = load i64, i64* %g_type101, align 8
  %59 = load i64, i64* %__t90, align 8
  %cmp102 = icmp eq i64 %58, %59
  br i1 %cmp102, label %if.then.103, label %if.else.104

if.then.103:                                      ; preds = %land.lhs.true.99
  store i32 1, i32* %__r93, align 4
  br label %if.end.106

if.else.104:                                      ; preds = %land.lhs.true.99, %if.else.96
  %60 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst88, align 8
  %61 = load i64, i64* %__t90, align 8
  %call105 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %60, i64 %61) #6
  store i32 %call105, i32* %__r93, align 4
  br label %if.end.106

if.end.106:                                       ; preds = %if.else.104, %if.then.103
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106, %if.then.95
  %62 = load i32, i32* %__r93, align 4
  store i32 %62, i32* %tmp108
  %63 = load i32, i32* %tmp108
  %tobool109 = icmp ne i32 %63, 0
  br i1 %tobool109, label %if.then.110, label %if.end.124

if.then.110:                                      ; preds = %if.end.107
  %64 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %pdb113 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %64, i32 0, i32 44
  %65 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb113, align 8
  %66 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %67 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %68 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %69 = load i8*, i8** %filename.addr, align 8
  %call114 = call %struct._GValueArray* (%struct._GimpPDB*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GError**, i8*, ...) @gimp_pdb_execute_procedure_by_name(%struct._GimpPDB* %65, %struct._GimpContext* %66, %struct._GimpProgress* %67, %struct._GError** %68, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i32 0, i32 0), i64 64, i8* %69, i64 4)
  store %struct._GValueArray* %call114, %struct._GValueArray** %return_vals, align 8
  %70 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %70, i32 0, i32 1
  %71 = load %struct._GValue*, %struct._GValue** %values, align 8
  %call115 = call i32 @g_value_get_enum(%struct._GValue* %71)
  store i32 %call115, i32* %status, align 4
  %72 = load i32, i32* %status, align 4
  switch i32 %72, label %sw.default [
    i32 3, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.then.110
  %73 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %74 = load i8**, i8*** %name.addr, align 8
  %75 = load i8**, i8*** %desc.addr, align 8
  %76 = load i8**, i8*** %info.addr, align 8
  call void @plug_in_icc_profile_info_return(%struct._GValueArray* %73, i8** %74, i8** %75, i8** %76)
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.110
  %77 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool116 = icmp ne %struct._GError** %77, null
  br i1 %tobool116, label %land.lhs.true.117, label %if.end.122

land.lhs.true.117:                                ; preds = %sw.default
  %78 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %79 = load %struct._GError*, %struct._GError** %78, align 8
  %cmp118 = icmp eq %struct._GError* %79, null
  br i1 %cmp118, label %if.then.119, label %if.end.122

if.then.119:                                      ; preds = %land.lhs.true.117
  %80 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call120 = call i32 @gimp_plug_in_error_quark() #5
  %call121 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0)) #7
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %80, i32 %call120, i32 0, i8* %call121, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.119, %land.lhs.true.117, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.122, %sw.bb
  %81 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  call void @g_value_array_free(%struct._GValueArray* %81)
  %82 = load i32, i32* %status, align 4
  %cmp123 = icmp eq i32 %82, 3
  %conv = zext i1 %cmp123 to i32
  store i32 %conv, i32* %retval
  br label %return

if.end.124:                                       ; preds = %if.end.107, %land.lhs.true.84, %do.end.81
  %83 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call125 = call i32 @gimp_plug_in_error_quark() #5
  %call126 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0)) #7
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %83, i32 %call125, i32 0, i8* %call126, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.124, %sw.epilog, %if.else.79, %if.else.71, %if.else.65, %if.else.36, %if.else.9
  %84 = load i32, i32* %retval
  ret i32 %84
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_param_string_get_type() #1

declare i8* @g_value_dup_string(%struct._GValue*) #3

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
