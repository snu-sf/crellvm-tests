; ModuleID = './app/core/gimp-gradients.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { {}*, {}*, {}*, {}*, {}*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, {}* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpDataFactory = type { %struct._GimpObject, %struct._GimpDataFactoryPriv* }
%struct._GimpDataFactoryPriv = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type { %struct._GimpData, %struct._GimpGradientSegment* }
%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpGradientSegment = type { double, double, double, i32, %struct._GimpRGB, i32, %struct._GimpRGB, i32, i32, %struct._GimpGradientSegment*, %struct._GimpGradientSegment* }
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpImagefile = type opaque

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_gradients_init = private unnamed_addr constant [20 x i8] c"gimp_gradients_init\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"FG to BG (RGB)\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"gimp-gradient-fg-bg-rgb\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"FG to BG (Hardedge)\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"gimp-gradient-fg-bg-rgb-hardedge\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"FG to BG (HSV counter-clockwise)\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"gimp-gradient-fg-bg-hsv-ccw\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"FG to BG (HSV clockwise hue)\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"gimp-gradient-fg-bg-hsv-cw\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"FG to Transparent\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"gimp-gradient-fg-transparent\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_gradients_init(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_gradients_init, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call11 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)) #7
  %call12 = call %struct._GimpGradient* @gimp_gradients_add_gradient(%struct._Gimp* %13, i8* %call11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpGradient* %call12, %struct._GimpGradient** %gradient, align 8
  %14 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %segments = getelementptr inbounds %struct._GimpGradient, %struct._GimpGradient* %14, i32 0, i32 1
  %15 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segments, align 8
  %left_color_type = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %15, i32 0, i32 3
  store i32 1, i32* %left_color_type, align 4
  %16 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %segments13 = getelementptr inbounds %struct._GimpGradient, %struct._GimpGradient* %16, i32 0, i32 1
  %17 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segments13, align 8
  %right_color_type = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %17, i32 0, i32 5
  store i32 3, i32* %right_color_type, align 4
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %user_context = getelementptr inbounds %struct._Gimp, %struct._Gimp* %18, i32 0, i32 52
  %19 = load %struct._GimpContext*, %struct._GimpContext** %user_context, align 8
  %20 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  call void @gimp_context_set_gradient(%struct._GimpContext* %19, %struct._GimpGradient* %20)
  %21 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call14 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0)) #7
  %call15 = call %struct._GimpGradient* @gimp_gradients_add_gradient(%struct._Gimp* %21, i8* %call14, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GimpGradient* %call15, %struct._GimpGradient** %gradient, align 8
  %22 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %segments16 = getelementptr inbounds %struct._GimpGradient, %struct._GimpGradient* %22, i32 0, i32 1
  %23 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segments16, align 8
  %left = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %23, i32 0, i32 0
  store double 0.000000e+00, double* %left, align 8
  %24 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %segments17 = getelementptr inbounds %struct._GimpGradient, %struct._GimpGradient* %24, i32 0, i32 1
  %25 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segments17, align 8
  %middle = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %25, i32 0, i32 1
  store double 2.500000e-01, double* %middle, align 8
  %26 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %segments18 = getelementptr inbounds %struct._GimpGradient, %struct._GimpGradient* %26, i32 0, i32 1
  %27 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segments18, align 8
  %right = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %27, i32 0, i32 2
  store double 5.000000e-01, double* %right, align 8
  %28 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %segments19 = getelementptr inbounds %struct._GimpGradient, %struct._GimpGradient* %28, i32 0, i32 1
  %29 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segments19, align 8
  %left_color_type20 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %29, i32 0, i32 3
  store i32 1, i32* %left_color_type20, align 4
  %30 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %segments21 = getelementptr inbounds %struct._GimpGradient, %struct._GimpGradient* %30, i32 0, i32 1
  %31 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segments21, align 8
  %right_color_type22 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %31, i32 0, i32 5
  store i32 1, i32* %right_color_type22, align 4
  %call23 = call %struct._GimpGradientSegment* @gimp_gradient_segment_new()
  %32 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %segments24 = getelementptr inbounds %struct._GimpGradient, %struct._GimpGradient* %32, i32 0, i32 1
  %33 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segments24, align 8
  %next = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %33, i32 0, i32 10
  store %struct._GimpGradientSegment* %call23, %struct._GimpGradientSegment** %next, align 8
  %34 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %segments25 = getelementptr inbounds %struct._GimpGradient, %struct._GimpGradient* %34, i32 0, i32 1
  %35 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segments25, align 8
  %36 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %segments26 = getelementptr inbounds %struct._GimpGradient, %struct._GimpGradient* %36, i32 0, i32 1
  %37 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segments26, align 8
  %next27 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %37, i32 0, i32 10
  %38 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next27, align 8
  %prev = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %38, i32 0, i32 9
  store %struct._GimpGradientSegment* %35, %struct._GimpGradientSegment** %prev, align 8
  %39 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %segments28 = getelementptr inbounds %struct._GimpGradient, %struct._GimpGradient* %39, i32 0, i32 1
  %40 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segments28, align 8
  %next29 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %40, i32 0, i32 10
  %41 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next29, align 8
  %left30 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %41, i32 0, i32 0
  store double 5.000000e-01, double* %left30, align 8
  %42 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %segments31 = getelementptr inbounds %struct._GimpGradient, %struct._GimpGradient* %42, i32 0, i32 1
  %43 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segments31, align 8
  %next32 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %43, i32 0, i32 10
  %44 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next32, align 8
  %middle33 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %44, i32 0, i32 1
  store double 7.500000e-01, double* %middle33, align 8
  %45 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %segments34 = getelementptr inbounds %struct._GimpGradient, %struct._GimpGradient* %45, i32 0, i32 1
  %46 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segments34, align 8
  %next35 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %46, i32 0, i32 10
  %47 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next35, align 8
  %right36 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %47, i32 0, i32 2
  store double 1.000000e+00, double* %right36, align 8
  %48 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %segments37 = getelementptr inbounds %struct._GimpGradient, %struct._GimpGradient* %48, i32 0, i32 1
  %49 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segments37, align 8
  %next38 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %49, i32 0, i32 10
  %50 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next38, align 8
  %left_color_type39 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %50, i32 0, i32 3
  store i32 3, i32* %left_color_type39, align 4
  %51 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %segments40 = getelementptr inbounds %struct._GimpGradient, %struct._GimpGradient* %51, i32 0, i32 1
  %52 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segments40, align 8
  %next41 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %52, i32 0, i32 10
  %53 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next41, align 8
  %right_color_type42 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %53, i32 0, i32 5
  store i32 3, i32* %right_color_type42, align 4
  %54 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call43 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0)) #7
  %call44 = call %struct._GimpGradient* @gimp_gradients_add_gradient(%struct._Gimp* %54, i8* %call43, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GimpGradient* %call44, %struct._GimpGradient** %gradient, align 8
  %55 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %segments45 = getelementptr inbounds %struct._GimpGradient, %struct._GimpGradient* %55, i32 0, i32 1
  %56 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segments45, align 8
  %left_color_type46 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %56, i32 0, i32 3
  store i32 1, i32* %left_color_type46, align 4
  %57 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %segments47 = getelementptr inbounds %struct._GimpGradient, %struct._GimpGradient* %57, i32 0, i32 1
  %58 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segments47, align 8
  %right_color_type48 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %58, i32 0, i32 5
  store i32 3, i32* %right_color_type48, align 4
  %59 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %segments49 = getelementptr inbounds %struct._GimpGradient, %struct._GimpGradient* %59, i32 0, i32 1
  %60 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segments49, align 8
  %color = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %60, i32 0, i32 8
  store i32 1, i32* %color, align 4
  %61 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call50 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0)) #7
  %call51 = call %struct._GimpGradient* @gimp_gradients_add_gradient(%struct._Gimp* %61, i8* %call50, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0))
  store %struct._GimpGradient* %call51, %struct._GimpGradient** %gradient, align 8
  %62 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %segments52 = getelementptr inbounds %struct._GimpGradient, %struct._GimpGradient* %62, i32 0, i32 1
  %63 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segments52, align 8
  %left_color_type53 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %63, i32 0, i32 3
  store i32 1, i32* %left_color_type53, align 4
  %64 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %segments54 = getelementptr inbounds %struct._GimpGradient, %struct._GimpGradient* %64, i32 0, i32 1
  %65 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segments54, align 8
  %right_color_type55 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %65, i32 0, i32 5
  store i32 3, i32* %right_color_type55, align 4
  %66 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %segments56 = getelementptr inbounds %struct._GimpGradient, %struct._GimpGradient* %66, i32 0, i32 1
  %67 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segments56, align 8
  %color57 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %67, i32 0, i32 8
  store i32 2, i32* %color57, align 4
  %68 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call58 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0)) #7
  %call59 = call %struct._GimpGradient* @gimp_gradients_add_gradient(%struct._Gimp* %68, i8* %call58, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i32 0, i32 0))
  store %struct._GimpGradient* %call59, %struct._GimpGradient** %gradient, align 8
  %69 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %segments60 = getelementptr inbounds %struct._GimpGradient, %struct._GimpGradient* %69, i32 0, i32 1
  %70 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segments60, align 8
  %left_color_type61 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %70, i32 0, i32 3
  store i32 1, i32* %left_color_type61, align 4
  %71 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %segments62 = getelementptr inbounds %struct._GimpGradient, %struct._GimpGradient* %71, i32 0, i32 1
  %72 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segments62, align 8
  %right_color_type63 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %72, i32 0, i32 5
  store i32 2, i32* %right_color_type63, align 4
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal %struct._GimpGradient* @gimp_gradients_add_gradient(%struct._Gimp* %gimp, i8* %name, i8* %id) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %name.addr = alloca i8*, align 8
  %id.addr = alloca i8*, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %id, i8** %id.addr, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %0)
  %1 = load i8*, i8** %name.addr, align 8
  %call1 = call %struct._GimpData* @gimp_gradient_new(%struct._GimpContext* %call, i8* %1)
  %2 = bitcast %struct._GimpData* %call1 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_gradient_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call2)
  %3 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpGradient*
  store %struct._GimpGradient* %3, %struct._GimpGradient** %gradient, align 8
  %4 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %5 = bitcast %struct._GimpGradient* %4 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_data_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call4)
  %6 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpData*
  %7 = load i8*, i8** %id.addr, align 8
  call void @gimp_data_make_internal(%struct._GimpData* %6, i8* %7)
  %8 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gradient_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %8, i32 0, i32 40
  %9 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %gradient_factory, align 8
  %call6 = call %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory* %9)
  %10 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %11 = bitcast %struct._GimpGradient* %10 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_object_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call7)
  %12 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpObject*
  %call9 = call i32 @gimp_container_add(%struct._GimpContainer* %call6, %struct._GimpObject* %12)
  %13 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %14 = bitcast %struct._GimpGradient* %13 to i8*
  call void @g_object_unref(i8* %14)
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %16 = bitcast %struct._Gimp* %15 to %struct._GTypeInstance*
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 80)
  %17 = bitcast %struct._GTypeInstance* %call10 to %struct._GObject*
  %18 = load i8*, i8** %id.addr, align 8
  %19 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %20 = bitcast %struct._GimpGradient* %19 to i8*
  call void @g_object_set_data(%struct._GObject* %17, i8* %18, i8* %20)
  %21 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  ret %struct._GimpGradient* %21
}

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare void @gimp_context_set_gradient(%struct._GimpContext*, %struct._GimpGradient*) #3

declare %struct._GimpGradientSegment* @gimp_gradient_segment_new() #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

declare %struct._GimpData* @gimp_gradient_new(%struct._GimpContext*, i8*) #3

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_gradient_get_type() #1

declare void @gimp_data_make_internal(%struct._GimpData*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_data_get_type() #1

declare i32 @gimp_container_add(%struct._GimpContainer*, %struct._GimpObject*) #3

declare %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #1

declare void @g_object_unref(i8*) #3

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #3

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
