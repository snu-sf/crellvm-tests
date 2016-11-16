; ModuleID = './app/core/gimpimage-flip.bc'
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
%struct._GimpGuide = type { %struct._GObject, i32, i32, i32 }
%struct._GimpSamplePoint = type { i32, i32, i32, i32 }
%struct._GimpChannel = type opaque

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_image_flip = private unnamed_addr constant [16 x i8] c"gimp_image_flip\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"progress == NULL || GIMP_IS_PROGRESS (progress)\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"%s: unknown flip_type\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_image_flip(%struct._GimpImage* %image, %struct._GimpContext* %context, i32 %flip_type, %struct._GimpProgress* %progress) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %flip_type.addr = alloca i32, align 4
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %list = alloca %struct._GList*, align 8
  %axis = alloca double, align 8
  %progress_max = alloca double, align 8
  %progress_current = alloca double, align 8
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
  %item96 = alloca %struct._GimpItem*, align 8
  %item124 = alloca %struct._GimpItem*, align 8
  %guide = alloca %struct._GimpGuide*, align 8
  %position = alloca i32, align 4
  %sample_point = alloca %struct._GimpSamplePoint*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %flip_type, i32* %flip_type.addr, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_image_flip, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_image_flip, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_image_flip, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.66:                                        ; preds = %if.then.64
  br label %do.end.67

do.end.67:                                        ; preds = %if.end.66
  %40 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %40, i32 0, i32 1
  %41 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  call void @gimp_set_busy(%struct._Gimp* %41)
  %42 = load i32, i32* %flip_type.addr, align 4
  switch i32 %42, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.69
  ]

sw.bb:                                            ; preds = %do.end.67
  %43 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call68 = call i32 @gimp_image_get_width(%struct._GimpImage* %43)
  %conv = sitofp i32 %call68 to double
  %div = fdiv double %conv, 2.000000e+00
  store double %div, double* %axis, align 8
  br label %sw.epilog

sw.bb.69:                                         ; preds = %do.end.67
  %44 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call70 = call i32 @gimp_image_get_height(%struct._GimpImage* %44)
  %conv71 = sitofp i32 %call70 to double
  %div72 = fdiv double %conv71, 2.000000e+00
  store double %div72, double* %axis, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %do.end.67
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_image_flip, i32 0, i32 0))
  br label %return

sw.epilog:                                        ; preds = %sw.bb.69, %sw.bb
  %45 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call73 = call %struct._GimpContainer* @gimp_image_get_channels(%struct._GimpImage* %45)
  %call74 = call i32 @gimp_container_get_n_children(%struct._GimpContainer* %call73)
  %46 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call75 = call %struct._GimpContainer* @gimp_image_get_layers(%struct._GimpImage* %46)
  %call76 = call i32 @gimp_container_get_n_children(%struct._GimpContainer* %call75)
  %add = add nsw i32 %call74, %call76
  %47 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call77 = call %struct._GimpContainer* @gimp_image_get_vectors(%struct._GimpImage* %47)
  %call78 = call i32 @gimp_container_get_n_children(%struct._GimpContainer* %call77)
  %add79 = add nsw i32 %add, %call78
  %add80 = add nsw i32 %add79, 1
  %conv81 = sitofp i32 %add80 to double
  store double %conv81, double* %progress_max, align 8
  %48 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call82 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %48, i32 3, i8* null)
  %49 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call83 = call %struct._GList* @gimp_image_get_channel_iter(%struct._GimpImage* %49)
  store %struct._GList* %call83, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %sw.epilog
  %50 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool84 = icmp ne %struct._GList* %50, null
  br i1 %tobool84, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %51 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %51, i32 0, i32 0
  %52 = load i8*, i8** %data, align 8
  %53 = bitcast i8* %52 to %struct._GimpItem*
  store %struct._GimpItem* %53, %struct._GimpItem** %item, align 8
  %54 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %55 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %56 = load i32, i32* %flip_type.addr, align 4
  %57 = load double, double* %axis, align 8
  call void @gimp_item_flip(%struct._GimpItem* %54, %struct._GimpContext* %55, i32 %56, double %57, i32 1)
  %58 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool86 = icmp ne %struct._GimpProgress* %58, null
  br i1 %tobool86, label %if.then.87, label %if.end.89

if.then.87:                                       ; preds = %for.body
  %59 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %60 = load double, double* %progress_current, align 8
  %inc = fadd double %60, 1.000000e+00
  store double %inc, double* %progress_current, align 8
  %61 = load double, double* %progress_max, align 8
  %div88 = fdiv double %60, %61
  call void @gimp_progress_set_value(%struct._GimpProgress* %59, double %div88)
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.87, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.89
  %62 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool90 = icmp ne %struct._GList* %62, null
  br i1 %tobool90, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %63 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %63, i32 0, i32 1
  %64 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %64, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %65 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call91 = call %struct._GList* @gimp_image_get_vectors_iter(%struct._GimpImage* %65)
  store %struct._GList* %call91, %struct._GList** %list, align 8
  br label %for.cond.92

for.cond.92:                                      ; preds = %cond.end.108, %for.end
  %66 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool93 = icmp ne %struct._GList* %66, null
  br i1 %tobool93, label %for.body.94, label %for.end.110

for.body.94:                                      ; preds = %for.cond.92
  %67 = load %struct._GList*, %struct._GList** %list, align 8
  %data97 = getelementptr inbounds %struct._GList, %struct._GList* %67, i32 0, i32 0
  %68 = load i8*, i8** %data97, align 8
  %69 = bitcast i8* %68 to %struct._GimpItem*
  store %struct._GimpItem* %69, %struct._GimpItem** %item96, align 8
  %70 = load %struct._GimpItem*, %struct._GimpItem** %item96, align 8
  %71 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %72 = load i32, i32* %flip_type.addr, align 4
  %73 = load double, double* %axis, align 8
  call void @gimp_item_flip(%struct._GimpItem* %70, %struct._GimpContext* %71, i32 %72, double %73, i32 0)
  %74 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool98 = icmp ne %struct._GimpProgress* %74, null
  br i1 %tobool98, label %if.then.99, label %if.end.102

if.then.99:                                       ; preds = %for.body.94
  %75 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %76 = load double, double* %progress_current, align 8
  %inc100 = fadd double %76, 1.000000e+00
  store double %inc100, double* %progress_current, align 8
  %77 = load double, double* %progress_max, align 8
  %div101 = fdiv double %76, %77
  call void @gimp_progress_set_value(%struct._GimpProgress* %75, double %div101)
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.99, %for.body.94
  br label %for.inc.103

for.inc.103:                                      ; preds = %if.end.102
  %78 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool104 = icmp ne %struct._GList* %78, null
  br i1 %tobool104, label %cond.true.105, label %cond.false.107

cond.true.105:                                    ; preds = %for.inc.103
  %79 = load %struct._GList*, %struct._GList** %list, align 8
  %next106 = getelementptr inbounds %struct._GList, %struct._GList* %79, i32 0, i32 1
  %80 = load %struct._GList*, %struct._GList** %next106, align 8
  br label %cond.end.108

cond.false.107:                                   ; preds = %for.inc.103
  br label %cond.end.108

cond.end.108:                                     ; preds = %cond.false.107, %cond.true.105
  %cond109 = phi %struct._GList* [ %80, %cond.true.105 ], [ null, %cond.false.107 ]
  store %struct._GList* %cond109, %struct._GList** %list, align 8
  br label %for.cond.92

for.end.110:                                      ; preds = %for.cond.92
  %81 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call111 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %81)
  %82 = bitcast %struct._GimpChannel* %call111 to %struct._GTypeInstance*
  %call112 = call i64 @gimp_item_get_type() #5
  %call113 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %82, i64 %call112)
  %83 = bitcast %struct._GTypeInstance* %call113 to %struct._GimpItem*
  %84 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %85 = load i32, i32* %flip_type.addr, align 4
  %86 = load double, double* %axis, align 8
  call void @gimp_item_flip(%struct._GimpItem* %83, %struct._GimpContext* %84, i32 %85, double %86, i32 1)
  %87 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool114 = icmp ne %struct._GimpProgress* %87, null
  br i1 %tobool114, label %if.then.115, label %if.end.118

if.then.115:                                      ; preds = %for.end.110
  %88 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %89 = load double, double* %progress_current, align 8
  %inc116 = fadd double %89, 1.000000e+00
  store double %inc116, double* %progress_current, align 8
  %90 = load double, double* %progress_max, align 8
  %div117 = fdiv double %89, %90
  call void @gimp_progress_set_value(%struct._GimpProgress* %88, double %div117)
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.115, %for.end.110
  %91 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call119 = call %struct._GList* @gimp_image_get_layer_iter(%struct._GimpImage* %91)
  store %struct._GList* %call119, %struct._GList** %list, align 8
  br label %for.cond.120

for.cond.120:                                     ; preds = %cond.end.136, %if.end.118
  %92 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool121 = icmp ne %struct._GList* %92, null
  br i1 %tobool121, label %for.body.122, label %for.end.138

for.body.122:                                     ; preds = %for.cond.120
  %93 = load %struct._GList*, %struct._GList** %list, align 8
  %data125 = getelementptr inbounds %struct._GList, %struct._GList* %93, i32 0, i32 0
  %94 = load i8*, i8** %data125, align 8
  %95 = bitcast i8* %94 to %struct._GimpItem*
  store %struct._GimpItem* %95, %struct._GimpItem** %item124, align 8
  %96 = load %struct._GimpItem*, %struct._GimpItem** %item124, align 8
  %97 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %98 = load i32, i32* %flip_type.addr, align 4
  %99 = load double, double* %axis, align 8
  call void @gimp_item_flip(%struct._GimpItem* %96, %struct._GimpContext* %97, i32 %98, double %99, i32 0)
  %100 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool126 = icmp ne %struct._GimpProgress* %100, null
  br i1 %tobool126, label %if.then.127, label %if.end.130

if.then.127:                                      ; preds = %for.body.122
  %101 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %102 = load double, double* %progress_current, align 8
  %inc128 = fadd double %102, 1.000000e+00
  store double %inc128, double* %progress_current, align 8
  %103 = load double, double* %progress_max, align 8
  %div129 = fdiv double %102, %103
  call void @gimp_progress_set_value(%struct._GimpProgress* %101, double %div129)
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.127, %for.body.122
  br label %for.inc.131

for.inc.131:                                      ; preds = %if.end.130
  %104 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool132 = icmp ne %struct._GList* %104, null
  br i1 %tobool132, label %cond.true.133, label %cond.false.135

cond.true.133:                                    ; preds = %for.inc.131
  %105 = load %struct._GList*, %struct._GList** %list, align 8
  %next134 = getelementptr inbounds %struct._GList, %struct._GList* %105, i32 0, i32 1
  %106 = load %struct._GList*, %struct._GList** %next134, align 8
  br label %cond.end.136

cond.false.135:                                   ; preds = %for.inc.131
  br label %cond.end.136

cond.end.136:                                     ; preds = %cond.false.135, %cond.true.133
  %cond137 = phi %struct._GList* [ %106, %cond.true.133 ], [ null, %cond.false.135 ]
  store %struct._GList* %cond137, %struct._GList** %list, align 8
  br label %for.cond.120

for.end.138:                                      ; preds = %for.cond.120
  %107 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call139 = call %struct._GList* @gimp_image_get_guides(%struct._GimpImage* %107)
  store %struct._GList* %call139, %struct._GList** %list, align 8
  br label %for.cond.140

for.cond.140:                                     ; preds = %cond.end.168, %for.end.138
  %108 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool141 = icmp ne %struct._GList* %108, null
  br i1 %tobool141, label %for.body.142, label %for.end.170

for.body.142:                                     ; preds = %for.cond.140
  %109 = load %struct._GList*, %struct._GList** %list, align 8
  %data144 = getelementptr inbounds %struct._GList, %struct._GList* %109, i32 0, i32 0
  %110 = load i8*, i8** %data144, align 8
  %111 = bitcast i8* %110 to %struct._GimpGuide*
  store %struct._GimpGuide* %111, %struct._GimpGuide** %guide, align 8
  %112 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %call146 = call i32 @gimp_guide_get_position(%struct._GimpGuide* %112)
  store i32 %call146, i32* %position, align 4
  %113 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %call147 = call i32 @gimp_guide_get_orientation(%struct._GimpGuide* %113)
  switch i32 %call147, label %sw.default.161 [
    i32 0, label %sw.bb.148
    i32 1, label %sw.bb.154
  ]

sw.bb.148:                                        ; preds = %for.body.142
  %114 = load i32, i32* %flip_type.addr, align 4
  %cmp149 = icmp eq i32 %114, 1
  br i1 %cmp149, label %if.then.151, label %if.end.153

if.then.151:                                      ; preds = %sw.bb.148
  %115 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %116 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %117 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call152 = call i32 @gimp_image_get_height(%struct._GimpImage* %117)
  %118 = load i32, i32* %position, align 4
  %sub = sub nsw i32 %call152, %118
  call void @gimp_image_move_guide(%struct._GimpImage* %115, %struct._GimpGuide* %116, i32 %sub, i32 1)
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.151, %sw.bb.148
  br label %sw.epilog.162

sw.bb.154:                                        ; preds = %for.body.142
  %119 = load i32, i32* %flip_type.addr, align 4
  %cmp155 = icmp eq i32 %119, 0
  br i1 %cmp155, label %if.then.157, label %if.end.160

if.then.157:                                      ; preds = %sw.bb.154
  %120 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %121 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %122 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call158 = call i32 @gimp_image_get_width(%struct._GimpImage* %122)
  %123 = load i32, i32* %position, align 4
  %sub159 = sub nsw i32 %call158, %123
  call void @gimp_image_move_guide(%struct._GimpImage* %120, %struct._GimpGuide* %121, i32 %sub159, i32 1)
  br label %if.end.160

if.end.160:                                       ; preds = %if.then.157, %sw.bb.154
  br label %sw.epilog.162

sw.default.161:                                   ; preds = %for.body.142
  br label %sw.epilog.162

sw.epilog.162:                                    ; preds = %sw.default.161, %if.end.160, %if.end.153
  br label %for.inc.163

for.inc.163:                                      ; preds = %sw.epilog.162
  %124 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool164 = icmp ne %struct._GList* %124, null
  br i1 %tobool164, label %cond.true.165, label %cond.false.167

cond.true.165:                                    ; preds = %for.inc.163
  %125 = load %struct._GList*, %struct._GList** %list, align 8
  %next166 = getelementptr inbounds %struct._GList, %struct._GList* %125, i32 0, i32 1
  %126 = load %struct._GList*, %struct._GList** %next166, align 8
  br label %cond.end.168

cond.false.167:                                   ; preds = %for.inc.163
  br label %cond.end.168

cond.end.168:                                     ; preds = %cond.false.167, %cond.true.165
  %cond169 = phi %struct._GList* [ %126, %cond.true.165 ], [ null, %cond.false.167 ]
  store %struct._GList* %cond169, %struct._GList** %list, align 8
  br label %for.cond.140

for.end.170:                                      ; preds = %for.cond.140
  %127 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call171 = call %struct._GList* @gimp_image_get_sample_points(%struct._GimpImage* %127)
  store %struct._GList* %call171, %struct._GList** %list, align 8
  br label %for.cond.172

for.cond.172:                                     ; preds = %cond.end.196, %for.end.170
  %128 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool173 = icmp ne %struct._GList* %128, null
  br i1 %tobool173, label %for.body.174, label %for.end.198

for.body.174:                                     ; preds = %for.cond.172
  %129 = load %struct._GList*, %struct._GList** %list, align 8
  %data176 = getelementptr inbounds %struct._GList, %struct._GList* %129, i32 0, i32 0
  %130 = load i8*, i8** %data176, align 8
  %131 = bitcast i8* %130 to %struct._GimpSamplePoint*
  store %struct._GimpSamplePoint* %131, %struct._GimpSamplePoint** %sample_point, align 8
  %132 = load i32, i32* %flip_type.addr, align 4
  %cmp177 = icmp eq i32 %132, 1
  br i1 %cmp177, label %if.then.179, label %if.end.182

if.then.179:                                      ; preds = %for.body.174
  %133 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %134 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %135 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %x = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %135, i32 0, i32 2
  %136 = load i32, i32* %x, align 4
  %137 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call180 = call i32 @gimp_image_get_height(%struct._GimpImage* %137)
  %138 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %y = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %138, i32 0, i32 3
  %139 = load i32, i32* %y, align 4
  %sub181 = sub nsw i32 %call180, %139
  call void @gimp_image_move_sample_point(%struct._GimpImage* %133, %struct._GimpSamplePoint* %134, i32 %136, i32 %sub181, i32 1)
  br label %if.end.182

if.end.182:                                       ; preds = %if.then.179, %for.body.174
  %140 = load i32, i32* %flip_type.addr, align 4
  %cmp183 = icmp eq i32 %140, 0
  br i1 %cmp183, label %if.then.185, label %if.end.190

if.then.185:                                      ; preds = %if.end.182
  %141 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %142 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %143 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call186 = call i32 @gimp_image_get_width(%struct._GimpImage* %143)
  %144 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %x187 = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %144, i32 0, i32 2
  %145 = load i32, i32* %x187, align 4
  %sub188 = sub nsw i32 %call186, %145
  %146 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %y189 = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %146, i32 0, i32 3
  %147 = load i32, i32* %y189, align 4
  call void @gimp_image_move_sample_point(%struct._GimpImage* %141, %struct._GimpSamplePoint* %142, i32 %sub188, i32 %147, i32 1)
  br label %if.end.190

if.end.190:                                       ; preds = %if.then.185, %if.end.182
  br label %for.inc.191

for.inc.191:                                      ; preds = %if.end.190
  %148 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool192 = icmp ne %struct._GList* %148, null
  br i1 %tobool192, label %cond.true.193, label %cond.false.195

cond.true.193:                                    ; preds = %for.inc.191
  %149 = load %struct._GList*, %struct._GList** %list, align 8
  %next194 = getelementptr inbounds %struct._GList, %struct._GList* %149, i32 0, i32 1
  %150 = load %struct._GList*, %struct._GList** %next194, align 8
  br label %cond.end.196

cond.false.195:                                   ; preds = %for.inc.191
  br label %cond.end.196

cond.end.196:                                     ; preds = %cond.false.195, %cond.true.193
  %cond197 = phi %struct._GList* [ %150, %cond.true.193 ], [ null, %cond.false.195 ]
  store %struct._GList* %cond197, %struct._GList** %list, align 8
  br label %for.cond.172

for.end.198:                                      ; preds = %for.cond.172
  %151 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call199 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %151)
  %152 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp200 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %152, i32 0, i32 1
  %153 = load %struct._Gimp*, %struct._Gimp** %gimp200, align 8
  call void @gimp_unset_busy(%struct._Gimp* %153)
  br label %return

return:                                           ; preds = %for.end.198, %sw.default, %if.else.65, %if.else.36, %if.else.9
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

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i32 @gimp_container_get_n_children(%struct._GimpContainer*) #3

declare %struct._GimpContainer* @gimp_image_get_channels(%struct._GimpImage*) #3

declare %struct._GimpContainer* @gimp_image_get_layers(%struct._GimpImage*) #3

declare %struct._GimpContainer* @gimp_image_get_vectors(%struct._GimpImage*) #3

declare i32 @gimp_image_undo_group_start(%struct._GimpImage*, i32, i8*) #3

declare %struct._GList* @gimp_image_get_channel_iter(%struct._GimpImage*) #3

declare void @gimp_item_flip(%struct._GimpItem*, %struct._GimpContext*, i32, double, i32) #3

declare void @gimp_progress_set_value(%struct._GimpProgress*, double) #3

declare %struct._GList* @gimp_image_get_vectors_iter(%struct._GimpImage*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

declare %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #1

declare %struct._GList* @gimp_image_get_layer_iter(%struct._GimpImage*) #3

declare %struct._GList* @gimp_image_get_guides(%struct._GimpImage*) #3

declare i32 @gimp_guide_get_position(%struct._GimpGuide*) #3

declare i32 @gimp_guide_get_orientation(%struct._GimpGuide*) #3

declare void @gimp_image_move_guide(%struct._GimpImage*, %struct._GimpGuide*, i32, i32) #3

declare %struct._GList* @gimp_image_get_sample_points(%struct._GimpImage*) #3

declare void @gimp_image_move_sample_point(%struct._GimpImage*, %struct._GimpSamplePoint*, i32, i32, i32) #3

declare i32 @gimp_image_undo_group_end(%struct._GimpImage*) #3

declare void @gimp_unset_busy(%struct._Gimp*) #3

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
