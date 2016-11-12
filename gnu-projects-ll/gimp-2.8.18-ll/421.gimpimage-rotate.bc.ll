; ModuleID = './app/core/gimpimage-rotate.bc'
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
%struct._GimpPDB = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
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
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpChannel = type opaque
%struct._GimpUndo = type opaque
%struct._GimpGuide = type { %struct._GObject, i32, i32, i32 }
%struct._GimpSamplePoint = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_image_rotate = private unnamed_addr constant [18 x i8] c"gimp_image_rotate\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"progress == NULL || GIMP_IS_PROGRESS (progress)\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"gimpimage-rotate.c\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"height\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_image_rotate(%struct._GimpImage* %image, %struct._GimpContext* %context, i32 %rotate_type, %struct._GimpProgress* %progress) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %rotate_type.addr = alloca i32, align 4
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %list = alloca %struct._GList*, align 8
  %center_x = alloca double, align 8
  %center_y = alloca double, align 8
  %progress_max = alloca double, align 8
  %progress_current = alloca double, align 8
  %new_image_width = alloca i32, align 4
  %new_image_height = alloca i32, align 4
  %previous_image_width = alloca i32, align 4
  %previous_image_height = alloca i32, align 4
  %offset_x = alloca i32, align 4
  %offset_y = alloca i32, align 4
  %size_changed = alloca i32, align 4
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
  %item = alloca %struct._GimpItem*, align 8
  %item108 = alloca %struct._GimpItem*, align 8
  %mask = alloca %struct._GimpChannel*, align 8
  %item145 = alloca %struct._GimpItem*, align 8
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %rotate_type, i32* %rotate_type.addr, align 4
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store double 1.000000e+00, double* %progress_current, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_image_rotate, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_image_rotate, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_image_rotate, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.66:                                        ; preds = %if.then.64
  br label %do.end.67

do.end.67:                                        ; preds = %if.end.66
  %40 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %40, i32 0, i32 1
  %41 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  call void @gimp_set_busy(%struct._Gimp* %41)
  %42 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call68 = call i32 @gimp_image_get_width(%struct._GimpImage* %42)
  store i32 %call68, i32* %previous_image_width, align 4
  %43 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call69 = call i32 @gimp_image_get_height(%struct._GimpImage* %43)
  store i32 %call69, i32* %previous_image_height, align 4
  %44 = load i32, i32* %previous_image_width, align 4
  %conv = sitofp i32 %44 to double
  %div = fdiv double %conv, 2.000000e+00
  store double %div, double* %center_x, align 8
  %45 = load i32, i32* %previous_image_height, align 4
  %conv70 = sitofp i32 %45 to double
  %div71 = fdiv double %conv70, 2.000000e+00
  store double %div71, double* %center_y, align 8
  %46 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call72 = call %struct._GimpContainer* @gimp_image_get_channels(%struct._GimpImage* %46)
  %call73 = call i32 @gimp_container_get_n_children(%struct._GimpContainer* %call72)
  %47 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call74 = call %struct._GimpContainer* @gimp_image_get_layers(%struct._GimpImage* %47)
  %call75 = call i32 @gimp_container_get_n_children(%struct._GimpContainer* %call74)
  %add = add nsw i32 %call73, %call75
  %48 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call76 = call %struct._GimpContainer* @gimp_image_get_vectors(%struct._GimpImage* %48)
  %call77 = call i32 @gimp_container_get_n_children(%struct._GimpContainer* %call76)
  %add78 = add nsw i32 %add, %call77
  %add79 = add nsw i32 %add78, 1
  %conv80 = sitofp i32 %add79 to double
  store double %conv80, double* %progress_max, align 8
  %49 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %50 = bitcast %struct._GimpImage* %49 to %struct._GTypeInstance*
  %call81 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 80)
  %51 = bitcast %struct._GTypeInstance* %call81 to %struct._GObject*
  call void @g_object_freeze_notify(%struct._GObject* %51)
  %52 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call82 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %52, i32 4, i8* null)
  %53 = load i32, i32* %rotate_type.addr, align 4
  switch i32 %53, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb
    i32 1, label %sw.bb.90
  ]

sw.bb:                                            ; preds = %do.end.67, %do.end.67
  %54 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call83 = call i32 @gimp_image_get_height(%struct._GimpImage* %54)
  store i32 %call83, i32* %new_image_width, align 4
  %55 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call84 = call i32 @gimp_image_get_width(%struct._GimpImage* %55)
  store i32 %call84, i32* %new_image_height, align 4
  store i32 1, i32* %size_changed, align 4
  %56 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call85 = call i32 @gimp_image_get_width(%struct._GimpImage* %56)
  %57 = load i32, i32* %new_image_width, align 4
  %sub = sub nsw i32 %call85, %57
  %div86 = sdiv i32 %sub, 2
  store i32 %div86, i32* %offset_x, align 4
  %58 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call87 = call i32 @gimp_image_get_height(%struct._GimpImage* %58)
  %59 = load i32, i32* %new_image_height, align 4
  %sub88 = sub nsw i32 %call87, %59
  %div89 = sdiv i32 %sub88, 2
  store i32 %div89, i32* %offset_y, align 4
  br label %sw.epilog

sw.bb.90:                                         ; preds = %do.end.67
  %60 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call91 = call i32 @gimp_image_get_width(%struct._GimpImage* %60)
  store i32 %call91, i32* %new_image_width, align 4
  %61 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call92 = call i32 @gimp_image_get_height(%struct._GimpImage* %61)
  store i32 %call92, i32* %new_image_height, align 4
  store i32 0, i32* %size_changed, align 4
  store i32 0, i32* %offset_x, align 4
  store i32 0, i32* %offset_y, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.end.67
  br label %do.body.93

do.body.93:                                       ; preds = %sw.default
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0), i32 111, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_image_rotate, i32 0, i32 0), i8* null) #7
  unreachable

do.end.94:                                        ; No predecessors!
  br label %return

sw.epilog:                                        ; preds = %sw.bb.90, %sw.bb
  %62 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call95 = call %struct._GList* @gimp_image_get_channel_iter(%struct._GimpImage* %62)
  store %struct._GList* %call95, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %sw.epilog
  %63 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool96 = icmp ne %struct._GList* %63, null
  br i1 %tobool96, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %64 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %64, i32 0, i32 0
  %65 = load i8*, i8** %data, align 8
  %66 = bitcast i8* %65 to %struct._GimpItem*
  store %struct._GimpItem* %66, %struct._GimpItem** %item, align 8
  %67 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %68 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %69 = load i32, i32* %rotate_type.addr, align 4
  %70 = load double, double* %center_x, align 8
  %71 = load double, double* %center_y, align 8
  call void @gimp_item_rotate(%struct._GimpItem* %67, %struct._GimpContext* %68, i32 %69, double %70, double %71, i32 0)
  %72 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  call void @gimp_item_set_offset(%struct._GimpItem* %72, i32 0, i32 0)
  %73 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool98 = icmp ne %struct._GimpProgress* %73, null
  br i1 %tobool98, label %if.then.99, label %if.end.101

if.then.99:                                       ; preds = %for.body
  %74 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %75 = load double, double* %progress_current, align 8
  %inc = fadd double %75, 1.000000e+00
  store double %inc, double* %progress_current, align 8
  %76 = load double, double* %progress_max, align 8
  %div100 = fdiv double %75, %76
  call void @gimp_progress_set_value(%struct._GimpProgress* %74, double %div100)
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.99, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.101
  %77 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool102 = icmp ne %struct._GList* %77, null
  br i1 %tobool102, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %78 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %78, i32 0, i32 1
  %79 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %79, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %80 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call103 = call %struct._GList* @gimp_image_get_vectors_iter(%struct._GimpImage* %80)
  store %struct._GList* %call103, %struct._GList** %list, align 8
  br label %for.cond.104

for.cond.104:                                     ; preds = %cond.end.126, %for.end
  %81 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool105 = icmp ne %struct._GList* %81, null
  br i1 %tobool105, label %for.body.106, label %for.end.128

for.body.106:                                     ; preds = %for.cond.104
  %82 = load %struct._GList*, %struct._GList** %list, align 8
  %data109 = getelementptr inbounds %struct._GList, %struct._GList* %82, i32 0, i32 0
  %83 = load i8*, i8** %data109, align 8
  %84 = bitcast i8* %83 to %struct._GimpItem*
  store %struct._GimpItem* %84, %struct._GimpItem** %item108, align 8
  %85 = load %struct._GimpItem*, %struct._GimpItem** %item108, align 8
  %86 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %87 = load i32, i32* %rotate_type.addr, align 4
  %88 = load double, double* %center_x, align 8
  %89 = load double, double* %center_y, align 8
  call void @gimp_item_rotate(%struct._GimpItem* %85, %struct._GimpContext* %86, i32 %87, double %88, double %89, i32 0)
  %90 = load %struct._GimpItem*, %struct._GimpItem** %item108, align 8
  call void @gimp_item_set_offset(%struct._GimpItem* %90, i32 0, i32 0)
  %91 = load %struct._GimpItem*, %struct._GimpItem** %item108, align 8
  %92 = load i32, i32* %new_image_width, align 4
  %93 = load i32, i32* %new_image_height, align 4
  call void @gimp_item_set_size(%struct._GimpItem* %91, i32 %92, i32 %93)
  %94 = load %struct._GimpItem*, %struct._GimpItem** %item108, align 8
  %95 = load i32, i32* %new_image_width, align 4
  %96 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call110 = call i32 @gimp_image_get_width(%struct._GimpImage* %96)
  %sub111 = sub nsw i32 %95, %call110
  %div112 = sdiv i32 %sub111, 2
  %97 = load i32, i32* %new_image_height, align 4
  %98 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call113 = call i32 @gimp_image_get_height(%struct._GimpImage* %98)
  %sub114 = sub nsw i32 %97, %call113
  %div115 = sdiv i32 %sub114, 2
  call void @gimp_item_translate(%struct._GimpItem* %94, i32 %div112, i32 %div115, i32 0)
  %99 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool116 = icmp ne %struct._GimpProgress* %99, null
  br i1 %tobool116, label %if.then.117, label %if.end.120

if.then.117:                                      ; preds = %for.body.106
  %100 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %101 = load double, double* %progress_current, align 8
  %inc118 = fadd double %101, 1.000000e+00
  store double %inc118, double* %progress_current, align 8
  %102 = load double, double* %progress_max, align 8
  %div119 = fdiv double %101, %102
  call void @gimp_progress_set_value(%struct._GimpProgress* %100, double %div119)
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.117, %for.body.106
  br label %for.inc.121

for.inc.121:                                      ; preds = %if.end.120
  %103 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool122 = icmp ne %struct._GList* %103, null
  br i1 %tobool122, label %cond.true.123, label %cond.false.125

cond.true.123:                                    ; preds = %for.inc.121
  %104 = load %struct._GList*, %struct._GList** %list, align 8
  %next124 = getelementptr inbounds %struct._GList, %struct._GList* %104, i32 0, i32 1
  %105 = load %struct._GList*, %struct._GList** %next124, align 8
  br label %cond.end.126

cond.false.125:                                   ; preds = %for.inc.121
  br label %cond.end.126

cond.end.126:                                     ; preds = %cond.false.125, %cond.true.123
  %cond127 = phi %struct._GList* [ %105, %cond.true.123 ], [ null, %cond.false.125 ]
  store %struct._GList* %cond127, %struct._GList** %list, align 8
  br label %for.cond.104

for.end.128:                                      ; preds = %for.cond.104
  %106 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call130 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %106)
  store %struct._GimpChannel* %call130, %struct._GimpChannel** %mask, align 8
  %107 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  %108 = bitcast %struct._GimpChannel* %107 to %struct._GTypeInstance*
  %call131 = call i64 @gimp_item_get_type() #5
  %call132 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %108, i64 %call131)
  %109 = bitcast %struct._GTypeInstance* %call132 to %struct._GimpItem*
  %110 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %111 = load i32, i32* %rotate_type.addr, align 4
  %112 = load double, double* %center_x, align 8
  %113 = load double, double* %center_y, align 8
  call void @gimp_item_rotate(%struct._GimpItem* %109, %struct._GimpContext* %110, i32 %111, double %112, double %113, i32 0)
  %114 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  %115 = bitcast %struct._GimpChannel* %114 to %struct._GTypeInstance*
  %call133 = call i64 @gimp_item_get_type() #5
  %call134 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %115, i64 %call133)
  %116 = bitcast %struct._GTypeInstance* %call134 to %struct._GimpItem*
  call void @gimp_item_set_offset(%struct._GimpItem* %116, i32 0, i32 0)
  %117 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool135 = icmp ne %struct._GimpProgress* %117, null
  br i1 %tobool135, label %if.then.136, label %if.end.139

if.then.136:                                      ; preds = %for.end.128
  %118 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %119 = load double, double* %progress_current, align 8
  %inc137 = fadd double %119, 1.000000e+00
  store double %inc137, double* %progress_current, align 8
  %120 = load double, double* %progress_max, align 8
  %div138 = fdiv double %119, %120
  call void @gimp_progress_set_value(%struct._GimpProgress* %118, double %div138)
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.136, %for.end.128
  %121 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call140 = call %struct._GList* @gimp_image_get_layer_iter(%struct._GimpImage* %121)
  store %struct._GList* %call140, %struct._GList** %list, align 8
  br label %for.cond.141

for.cond.141:                                     ; preds = %cond.end.159, %if.end.139
  %122 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool142 = icmp ne %struct._GList* %122, null
  br i1 %tobool142, label %for.body.143, label %for.end.161

for.body.143:                                     ; preds = %for.cond.141
  %123 = load %struct._GList*, %struct._GList** %list, align 8
  %data146 = getelementptr inbounds %struct._GList, %struct._GList* %123, i32 0, i32 0
  %124 = load i8*, i8** %data146, align 8
  %125 = bitcast i8* %124 to %struct._GimpItem*
  store %struct._GimpItem* %125, %struct._GimpItem** %item145, align 8
  %126 = load %struct._GimpItem*, %struct._GimpItem** %item145, align 8
  call void @gimp_item_get_offset(%struct._GimpItem* %126, i32* %off_x, i32* %off_y)
  %127 = load %struct._GimpItem*, %struct._GimpItem** %item145, align 8
  %128 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %129 = load i32, i32* %rotate_type.addr, align 4
  %130 = load double, double* %center_x, align 8
  %131 = load double, double* %center_y, align 8
  call void @gimp_item_rotate(%struct._GimpItem* %127, %struct._GimpContext* %128, i32 %129, double %130, double %131, i32 0)
  %132 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %133 = load i32, i32* %rotate_type.addr, align 4
  %134 = load %struct._GimpItem*, %struct._GimpItem** %item145, align 8
  %135 = load i32, i32* %off_x, align 4
  %136 = load i32, i32* %off_y, align 4
  call void @gimp_image_rotate_item_offset(%struct._GimpImage* %132, i32 %133, %struct._GimpItem* %134, i32 %135, i32 %136)
  %137 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool149 = icmp ne %struct._GimpProgress* %137, null
  br i1 %tobool149, label %if.then.150, label %if.end.153

if.then.150:                                      ; preds = %for.body.143
  %138 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %139 = load double, double* %progress_current, align 8
  %inc151 = fadd double %139, 1.000000e+00
  store double %inc151, double* %progress_current, align 8
  %140 = load double, double* %progress_max, align 8
  %div152 = fdiv double %139, %140
  call void @gimp_progress_set_value(%struct._GimpProgress* %138, double %div152)
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.150, %for.body.143
  br label %for.inc.154

for.inc.154:                                      ; preds = %if.end.153
  %141 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool155 = icmp ne %struct._GList* %141, null
  br i1 %tobool155, label %cond.true.156, label %cond.false.158

cond.true.156:                                    ; preds = %for.inc.154
  %142 = load %struct._GList*, %struct._GList** %list, align 8
  %next157 = getelementptr inbounds %struct._GList, %struct._GList* %142, i32 0, i32 1
  %143 = load %struct._GList*, %struct._GList** %next157, align 8
  br label %cond.end.159

cond.false.158:                                   ; preds = %for.inc.154
  br label %cond.end.159

cond.end.159:                                     ; preds = %cond.false.158, %cond.true.156
  %cond160 = phi %struct._GList* [ %143, %cond.true.156 ], [ null, %cond.false.158 ]
  store %struct._GList* %cond160, %struct._GList** %list, align 8
  br label %for.cond.141

for.end.161:                                      ; preds = %for.cond.141
  %144 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %145 = load i32, i32* %rotate_type.addr, align 4
  call void @gimp_image_rotate_guides(%struct._GimpImage* %144, i32 %145)
  %146 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %147 = load i32, i32* %rotate_type.addr, align 4
  call void @gimp_image_rotate_sample_points(%struct._GimpImage* %146, i32 %147)
  %148 = load i32, i32* %size_changed, align 4
  %tobool162 = icmp ne i32 %148, 0
  br i1 %tobool162, label %if.then.163, label %if.end.171

if.then.163:                                      ; preds = %for.end.161
  %149 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %150 = load i32, i32* %offset_x, align 4
  %151 = load i32, i32* %offset_y, align 4
  %152 = load i32, i32* %new_image_width, align 4
  %153 = load i32, i32* %new_image_height, align 4
  %call166 = call %struct._GimpUndo* @gimp_image_undo_push_image_size(%struct._GimpImage* %149, i8* null, i32 %150, i32 %151, i32 %152, i32 %153)
  %154 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %155 = bitcast %struct._GimpImage* %154 to i8*
  %156 = load i32, i32* %new_image_width, align 4
  %157 = load i32, i32* %new_image_height, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 %156, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 %157, i8* null)
  %158 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_image_get_resolution(%struct._GimpImage* %158, double* %xres, double* %yres)
  %159 = load double, double* %xres, align 8
  %160 = load double, double* %yres, align 8
  %cmp167 = fcmp une double %159, %160
  br i1 %cmp167, label %if.then.169, label %if.end.170

if.then.169:                                      ; preds = %if.then.163
  %161 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %162 = load double, double* %yres, align 8
  %163 = load double, double* %xres, align 8
  call void @gimp_image_set_resolution(%struct._GimpImage* %161, double %162, double %163)
  br label %if.end.170

if.end.170:                                       ; preds = %if.then.169, %if.then.163
  br label %if.end.171

if.end.171:                                       ; preds = %if.end.170, %for.end.161
  %164 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call172 = call %struct._GList* @gimp_image_get_guides(%struct._GimpImage* %164)
  store %struct._GList* %call172, %struct._GList** %list, align 8
  br label %for.cond.173

for.cond.173:                                     ; preds = %cond.end.182, %if.end.171
  %165 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool174 = icmp ne %struct._GList* %165, null
  br i1 %tobool174, label %for.body.175, label %for.end.184

for.body.175:                                     ; preds = %for.cond.173
  %166 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %167 = load %struct._GList*, %struct._GList** %list, align 8
  %data176 = getelementptr inbounds %struct._GList, %struct._GList* %167, i32 0, i32 0
  %168 = load i8*, i8** %data176, align 8
  %169 = bitcast i8* %168 to %struct._GimpGuide*
  call void @gimp_image_guide_moved(%struct._GimpImage* %166, %struct._GimpGuide* %169)
  br label %for.inc.177

for.inc.177:                                      ; preds = %for.body.175
  %170 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool178 = icmp ne %struct._GList* %170, null
  br i1 %tobool178, label %cond.true.179, label %cond.false.181

cond.true.179:                                    ; preds = %for.inc.177
  %171 = load %struct._GList*, %struct._GList** %list, align 8
  %next180 = getelementptr inbounds %struct._GList, %struct._GList* %171, i32 0, i32 1
  %172 = load %struct._GList*, %struct._GList** %next180, align 8
  br label %cond.end.182

cond.false.181:                                   ; preds = %for.inc.177
  br label %cond.end.182

cond.end.182:                                     ; preds = %cond.false.181, %cond.true.179
  %cond183 = phi %struct._GList* [ %172, %cond.true.179 ], [ null, %cond.false.181 ]
  store %struct._GList* %cond183, %struct._GList** %list, align 8
  br label %for.cond.173

for.end.184:                                      ; preds = %for.cond.173
  %173 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call185 = call %struct._GList* @gimp_image_get_sample_points(%struct._GimpImage* %173)
  store %struct._GList* %call185, %struct._GList** %list, align 8
  br label %for.cond.186

for.cond.186:                                     ; preds = %cond.end.195, %for.end.184
  %174 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool187 = icmp ne %struct._GList* %174, null
  br i1 %tobool187, label %for.body.188, label %for.end.197

for.body.188:                                     ; preds = %for.cond.186
  %175 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %176 = load %struct._GList*, %struct._GList** %list, align 8
  %data189 = getelementptr inbounds %struct._GList, %struct._GList* %176, i32 0, i32 0
  %177 = load i8*, i8** %data189, align 8
  %178 = bitcast i8* %177 to %struct._GimpSamplePoint*
  call void @gimp_image_sample_point_moved(%struct._GimpImage* %175, %struct._GimpSamplePoint* %178)
  br label %for.inc.190

for.inc.190:                                      ; preds = %for.body.188
  %179 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool191 = icmp ne %struct._GList* %179, null
  br i1 %tobool191, label %cond.true.192, label %cond.false.194

cond.true.192:                                    ; preds = %for.inc.190
  %180 = load %struct._GList*, %struct._GList** %list, align 8
  %next193 = getelementptr inbounds %struct._GList, %struct._GList* %180, i32 0, i32 1
  %181 = load %struct._GList*, %struct._GList** %next193, align 8
  br label %cond.end.195

cond.false.194:                                   ; preds = %for.inc.190
  br label %cond.end.195

cond.end.195:                                     ; preds = %cond.false.194, %cond.true.192
  %cond196 = phi %struct._GList* [ %181, %cond.true.192 ], [ null, %cond.false.194 ]
  store %struct._GList* %cond196, %struct._GList** %list, align 8
  br label %for.cond.186

for.end.197:                                      ; preds = %for.cond.186
  %182 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call198 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %182)
  %183 = load i32, i32* %size_changed, align 4
  %tobool199 = icmp ne i32 %183, 0
  br i1 %tobool199, label %if.then.200, label %if.end.203

if.then.200:                                      ; preds = %for.end.197
  %184 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %185 = load i32, i32* %offset_x, align 4
  %sub201 = sub nsw i32 0, %185
  %186 = load i32, i32* %offset_y, align 4
  %sub202 = sub nsw i32 0, %186
  %187 = load i32, i32* %previous_image_width, align 4
  %188 = load i32, i32* %previous_image_height, align 4
  call void @gimp_image_size_changed_detailed(%struct._GimpImage* %184, i32 %sub201, i32 %sub202, i32 %187, i32 %188)
  br label %if.end.203

if.end.203:                                       ; preds = %if.then.200, %for.end.197
  %189 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %190 = bitcast %struct._GimpImage* %189 to %struct._GTypeInstance*
  %call204 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %190, i64 80)
  %191 = bitcast %struct._GTypeInstance* %call204 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %191)
  %192 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp205 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %192, i32 0, i32 1
  %193 = load %struct._Gimp*, %struct._Gimp** %gimp205, align 8
  call void @gimp_unset_busy(%struct._Gimp* %193)
  br label %return

return:                                           ; preds = %if.end.203, %do.end.94, %if.else.65, %if.else.36, %if.else.9
  ret void
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

declare void @gimp_set_busy(%struct._Gimp*) #3

declare i32 @gimp_image_get_width(%struct._GimpImage*) #3

declare i32 @gimp_image_get_height(%struct._GimpImage*) #3

declare i32 @gimp_container_get_n_children(%struct._GimpContainer*) #3

declare %struct._GimpContainer* @gimp_image_get_channels(%struct._GimpImage*) #3

declare %struct._GimpContainer* @gimp_image_get_layers(%struct._GimpImage*) #3

declare %struct._GimpContainer* @gimp_image_get_vectors(%struct._GimpImage*) #3

declare void @g_object_freeze_notify(%struct._GObject*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

declare i32 @gimp_image_undo_group_start(%struct._GimpImage*, i32, i8*) #3

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #4

declare %struct._GList* @gimp_image_get_channel_iter(%struct._GimpImage*) #3

declare void @gimp_item_rotate(%struct._GimpItem*, %struct._GimpContext*, i32, double, double, i32) #3

declare void @gimp_item_set_offset(%struct._GimpItem*, i32, i32) #3

declare void @gimp_progress_set_value(%struct._GimpProgress*, double) #3

declare %struct._GList* @gimp_image_get_vectors_iter(%struct._GimpImage*) #3

declare void @gimp_item_set_size(%struct._GimpItem*, i32, i32) #3

declare void @gimp_item_translate(%struct._GimpItem*, i32, i32, i32) #3

declare %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #1

declare %struct._GList* @gimp_image_get_layer_iter(%struct._GimpImage*) #3

declare void @gimp_item_get_offset(%struct._GimpItem*, i32*, i32*) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_image_rotate_item_offset(%struct._GimpImage* %image, i32 %rotate_type, %struct._GimpItem* %item, i32 %off_x, i32 %off_y) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %rotate_type.addr = alloca i32, align 4
  %item.addr = alloca %struct._GimpItem*, align 8
  %off_x.addr = alloca i32, align 4
  %off_y.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %rotate_type, i32* %rotate_type.addr, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store i32 %off_x, i32* %off_x.addr, align 4
  store i32 %off_y, i32* %off_y.addr, align 4
  store i32 0, i32* %x, align 4
  store i32 0, i32* %y, align 4
  %0 = load i32, i32* %rotate_type.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb.3
    i32 1, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call = call i32 @gimp_image_get_height(%struct._GimpImage* %1)
  %2 = load i32, i32* %off_y.addr, align 4
  %sub = sub nsw i32 %call, %2
  %3 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call1 = call i32 @gimp_item_get_width(%struct._GimpItem* %3)
  %sub2 = sub nsw i32 %sub, %call1
  store i32 %sub2, i32* %x, align 4
  %4 = load i32, i32* %off_x.addr, align 4
  store i32 %4, i32* %y, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %5 = load i32, i32* %off_y.addr, align 4
  store i32 %5, i32* %x, align 4
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call4 = call i32 @gimp_image_get_width(%struct._GimpImage* %6)
  %7 = load i32, i32* %off_x.addr, align 4
  %sub5 = sub nsw i32 %call4, %7
  %8 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call6 = call i32 @gimp_item_get_height(%struct._GimpItem* %8)
  %sub7 = sub nsw i32 %sub5, %call6
  store i32 %sub7, i32* %y, align 4
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  br label %if.end

sw.epilog:                                        ; preds = %entry, %sw.bb.3, %sw.bb
  %9 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  call void @gimp_item_get_offset(%struct._GimpItem* %9, i32* %off_x.addr, i32* %off_y.addr)
  %10 = load i32, i32* %off_x.addr, align 4
  %11 = load i32, i32* %x, align 4
  %sub9 = sub nsw i32 %11, %10
  store i32 %sub9, i32* %x, align 4
  %12 = load i32, i32* %off_y.addr, align 4
  %13 = load i32, i32* %y, align 4
  %sub10 = sub nsw i32 %13, %12
  store i32 %sub10, i32* %y, align 4
  %14 = load i32, i32* %x, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.epilog
  %15 = load i32, i32* %y, align 4
  %tobool11 = icmp ne i32 %15, 0
  br i1 %tobool11, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %sw.epilog
  %16 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %17 = load i32, i32* %x, align 4
  %18 = load i32, i32* %y, align 4
  call void @gimp_item_translate(%struct._GimpItem* %16, i32 %17, i32 %18, i32 0)
  br label %if.end

if.end:                                           ; preds = %sw.bb.8, %if.then, %lor.lhs.false
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_image_rotate_guides(%struct._GimpImage* %image, i32 %rotate_type) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %rotate_type.addr = alloca i32, align 4
  %list = alloca %struct._GList*, align 8
  %guide = alloca %struct._GimpGuide*, align 8
  %orientation = alloca i32, align 4
  %position = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %rotate_type, i32* %rotate_type.addr, align 4
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call = call %struct._GList* @gimp_image_get_guides(%struct._GimpImage* %0)
  store %struct._GList* %call, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %1 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %2, i32 0, i32 0
  %3 = load i8*, i8** %data, align 8
  %4 = bitcast i8* %3 to %struct._GimpGuide*
  store %struct._GimpGuide* %4, %struct._GimpGuide** %guide, align 8
  %5 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %call1 = call i32 @gimp_guide_get_orientation(%struct._GimpGuide* %5)
  store i32 %call1, i32* %orientation, align 4
  %6 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %call2 = call i32 @gimp_guide_get_position(%struct._GimpGuide* %6)
  store i32 %call2, i32* %position, align 4
  %7 = load i32, i32* %rotate_type.addr, align 4
  switch i32 %7, label %sw.epilog.26 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.8
    i32 2, label %sw.bb.17
  ]

sw.bb:                                            ; preds = %for.body
  %8 = load i32, i32* %orientation, align 4
  switch i32 %8, label %sw.default [
    i32 0, label %sw.bb.3
    i32 1, label %sw.bb.6
  ]

sw.bb.3:                                          ; preds = %sw.bb
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %10 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %call4 = call %struct._GimpUndo* @gimp_image_undo_push_guide(%struct._GimpImage* %9, i8* null, %struct._GimpGuide* %10)
  %11 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  call void @gimp_guide_set_orientation(%struct._GimpGuide* %11, i32 1)
  %12 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call5 = call i32 @gimp_image_get_height(%struct._GimpImage* %13)
  %14 = load i32, i32* %position, align 4
  %sub = sub nsw i32 %call5, %14
  call void @gimp_guide_set_position(%struct._GimpGuide* %12, i32 %sub)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %sw.bb
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %16 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %call7 = call %struct._GimpUndo* @gimp_image_undo_push_guide(%struct._GimpImage* %15, i8* null, %struct._GimpGuide* %16)
  %17 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  call void @gimp_guide_set_orientation(%struct._GimpGuide* %17, i32 0)
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.6, %sw.bb.3
  br label %sw.epilog.26

sw.bb.8:                                          ; preds = %for.body
  %18 = load i32, i32* %orientation, align 4
  switch i32 %18, label %sw.default.15 [
    i32 0, label %sw.bb.9
    i32 1, label %sw.bb.12
  ]

sw.bb.9:                                          ; preds = %sw.bb.8
  %19 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %20 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %21 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call10 = call i32 @gimp_image_get_height(%struct._GimpImage* %21)
  %22 = load i32, i32* %position, align 4
  %sub11 = sub nsw i32 %call10, %22
  call void @gimp_image_move_guide(%struct._GimpImage* %19, %struct._GimpGuide* %20, i32 %sub11, i32 1)
  br label %sw.epilog.16

sw.bb.12:                                         ; preds = %sw.bb.8
  %23 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %24 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %25 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call13 = call i32 @gimp_image_get_width(%struct._GimpImage* %25)
  %26 = load i32, i32* %position, align 4
  %sub14 = sub nsw i32 %call13, %26
  call void @gimp_image_move_guide(%struct._GimpImage* %23, %struct._GimpGuide* %24, i32 %sub14, i32 1)
  br label %sw.epilog.16

sw.default.15:                                    ; preds = %sw.bb.8
  br label %sw.epilog.16

sw.epilog.16:                                     ; preds = %sw.default.15, %sw.bb.12, %sw.bb.9
  br label %sw.epilog.26

sw.bb.17:                                         ; preds = %for.body
  %27 = load i32, i32* %orientation, align 4
  switch i32 %27, label %sw.default.24 [
    i32 0, label %sw.bb.18
    i32 1, label %sw.bb.20
  ]

sw.bb.18:                                         ; preds = %sw.bb.17
  %28 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %29 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %call19 = call %struct._GimpUndo* @gimp_image_undo_push_guide(%struct._GimpImage* %28, i8* null, %struct._GimpGuide* %29)
  %30 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  call void @gimp_guide_set_orientation(%struct._GimpGuide* %30, i32 1)
  br label %sw.epilog.25

sw.bb.20:                                         ; preds = %sw.bb.17
  %31 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %32 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %call21 = call %struct._GimpUndo* @gimp_image_undo_push_guide(%struct._GimpImage* %31, i8* null, %struct._GimpGuide* %32)
  %33 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  call void @gimp_guide_set_orientation(%struct._GimpGuide* %33, i32 0)
  %34 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %35 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call22 = call i32 @gimp_image_get_width(%struct._GimpImage* %35)
  %36 = load i32, i32* %position, align 4
  %sub23 = sub nsw i32 %call22, %36
  call void @gimp_guide_set_position(%struct._GimpGuide* %34, i32 %sub23)
  br label %sw.epilog.25

sw.default.24:                                    ; preds = %sw.bb.17
  br label %sw.epilog.25

sw.epilog.25:                                     ; preds = %sw.default.24, %sw.bb.20, %sw.bb.18
  br label %sw.epilog.26

sw.epilog.26:                                     ; preds = %for.body, %sw.epilog.25, %sw.epilog.16, %sw.epilog
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog.26
  %37 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool27 = icmp ne %struct._GList* %37, null
  br i1 %tobool27, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %38 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %38, i32 0, i32 1
  %39 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %39, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_image_rotate_sample_points(%struct._GimpImage* %image, i32 %rotate_type) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %rotate_type.addr = alloca i32, align 4
  %list = alloca %struct._GList*, align 8
  %sample_point = alloca %struct._GimpSamplePoint*, align 8
  %old_x = alloca i32, align 4
  %old_y = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %rotate_type, i32* %rotate_type.addr, align 4
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call = call %struct._GList* @gimp_image_get_sample_points(%struct._GimpImage* %0)
  store %struct._GList* %call, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %1 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %2, i32 0, i32 0
  %3 = load i8*, i8** %data, align 8
  %4 = bitcast i8* %3 to %struct._GimpSamplePoint*
  store %struct._GimpSamplePoint* %4, %struct._GimpSamplePoint** %sample_point, align 8
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %6 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %call1 = call %struct._GimpUndo* @gimp_image_undo_push_sample_point(%struct._GimpImage* %5, i8* null, %struct._GimpSamplePoint* %6)
  %7 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %x = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %7, i32 0, i32 2
  %8 = load i32, i32* %x, align 4
  store i32 %8, i32* %old_x, align 4
  %9 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %y = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %9, i32 0, i32 3
  %10 = load i32, i32* %y, align 4
  store i32 %10, i32* %old_y, align 4
  %11 = load i32, i32* %rotate_type.addr, align 4
  switch i32 %11, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.5
    i32 2, label %sw.bb.12
  ]

sw.bb:                                            ; preds = %for.body
  %12 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call2 = call i32 @gimp_image_get_height(%struct._GimpImage* %12)
  %13 = load i32, i32* %old_y, align 4
  %sub = sub nsw i32 %call2, %13
  %14 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %x3 = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %14, i32 0, i32 2
  store i32 %sub, i32* %x3, align 4
  %15 = load i32, i32* %old_x, align 4
  %16 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %y4 = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %16, i32 0, i32 3
  store i32 %15, i32* %y4, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %for.body
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call6 = call i32 @gimp_image_get_width(%struct._GimpImage* %17)
  %18 = load i32, i32* %old_x, align 4
  %sub7 = sub nsw i32 %call6, %18
  %19 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %x8 = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %19, i32 0, i32 2
  store i32 %sub7, i32* %x8, align 4
  %20 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call9 = call i32 @gimp_image_get_height(%struct._GimpImage* %20)
  %21 = load i32, i32* %old_y, align 4
  %sub10 = sub nsw i32 %call9, %21
  %22 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %y11 = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %22, i32 0, i32 3
  store i32 %sub10, i32* %y11, align 4
  br label %sw.epilog

sw.bb.12:                                         ; preds = %for.body
  %23 = load i32, i32* %old_y, align 4
  %24 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %x13 = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %24, i32 0, i32 2
  store i32 %23, i32* %x13, align 4
  %25 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call14 = call i32 @gimp_image_get_width(%struct._GimpImage* %25)
  %26 = load i32, i32* %old_x, align 4
  %sub15 = sub nsw i32 %call14, %26
  %27 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %y16 = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %27, i32 0, i32 3
  store i32 %sub15, i32* %y16, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %sw.bb.12, %sw.bb.5, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %28 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool17 = icmp ne %struct._GList* %28, null
  br i1 %tobool17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %29 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %29, i32 0, i32 1
  %30 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %30, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare %struct._GimpUndo* @gimp_image_undo_push_image_size(%struct._GimpImage*, i8*, i32, i32, i32, i32) #3

declare void @g_object_set(i8*, i8*, ...) #3

declare void @gimp_image_get_resolution(%struct._GimpImage*, double*, double*) #3

declare void @gimp_image_set_resolution(%struct._GimpImage*, double, double) #3

declare %struct._GList* @gimp_image_get_guides(%struct._GimpImage*) #3

declare void @gimp_image_guide_moved(%struct._GimpImage*, %struct._GimpGuide*) #3

declare %struct._GList* @gimp_image_get_sample_points(%struct._GimpImage*) #3

declare void @gimp_image_sample_point_moved(%struct._GimpImage*, %struct._GimpSamplePoint*) #3

declare i32 @gimp_image_undo_group_end(%struct._GimpImage*) #3

declare void @gimp_image_size_changed_detailed(%struct._GimpImage*, i32, i32, i32, i32) #3

declare void @g_object_thaw_notify(%struct._GObject*) #3

declare void @gimp_unset_busy(%struct._Gimp*) #3

declare i32 @gimp_item_get_width(%struct._GimpItem*) #3

declare i32 @gimp_item_get_height(%struct._GimpItem*) #3

declare i32 @gimp_guide_get_orientation(%struct._GimpGuide*) #3

declare i32 @gimp_guide_get_position(%struct._GimpGuide*) #3

declare %struct._GimpUndo* @gimp_image_undo_push_guide(%struct._GimpImage*, i8*, %struct._GimpGuide*) #3

declare void @gimp_guide_set_orientation(%struct._GimpGuide*, i32) #3

declare void @gimp_guide_set_position(%struct._GimpGuide*, i32) #3

declare void @gimp_image_move_guide(%struct._GimpImage*, %struct._GimpGuide*, i32, i32) #3

declare %struct._GimpUndo* @gimp_image_undo_push_sample_point(%struct._GimpImage*, i8*, %struct._GimpSamplePoint*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }
attributes #7 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
