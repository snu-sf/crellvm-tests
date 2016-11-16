; ModuleID = './app/core/gimpdrawable-curves.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpDrawablePrivate = type opaque
%struct._GimpProgress = type opaque
%struct._GimpCurvesConfig = type { %struct._GimpImageMapConfig, i32, [5 x %struct._GimpCurve*] }
%struct._GimpImageMapConfig = type { %struct._GimpViewable, i32 }
%struct._GimpCurve = type { %struct._GimpData, i32, i32, %struct._GimpVector2*, i32, double*, i32 }
%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpVector2 = type { double, double }
%struct._GeglNode = type opaque
%struct._GimpLut = type { i8**, i32 }
%struct._Curves = type { [5 x [256 x i8]] }
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
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
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type opaque

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_drawable_curves_spline = private unnamed_addr constant [28 x i8] c"gimp_drawable_curves_spline\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"GIMP_IS_DRAWABLE (drawable)\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"! gimp_drawable_is_indexed (drawable)\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"gimp_item_is_attached (GIMP_ITEM (drawable))\00", align 1
@.str.4 = private unnamed_addr constant [67 x i8] c"channel >= GIMP_HISTOGRAM_VALUE && channel <= GIMP_HISTOGRAM_ALPHA\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"gimp_drawable_has_alpha (drawable)\00", align 1
@.str.6 = private unnamed_addr constant [67 x i8] c"channel == GIMP_HISTOGRAM_VALUE || channel == GIMP_HISTOGRAM_ALPHA\00", align 1
@__func__.gimp_drawable_curves_explicit = private unnamed_addr constant [30 x i8] c"gimp_drawable_curves_explicit\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"operation\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"gimp:curves\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"undo-type\04Curves\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_drawable_curves_spline(%struct._GimpDrawable* %drawable, %struct._GimpProgress* %progress, i32 %channel, i8* %points, i32 %n_points) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %channel.addr = alloca i32, align 4
  %points.addr = alloca i8*, align 8
  %n_points.addr = alloca i32, align 4
  %config = alloca %struct._GimpCurvesConfig*, align 8
  %curve = alloca %struct._GimpCurve*, align 8
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store i32 %channel, i32* %channel.addr, align 4
  store i8* %points, i8** %points.addr, align 8
  store i32 %n_points, i32* %n_points.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #4
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_drawable_curves_spline, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call12 = call i32 @gimp_drawable_is_indexed(%struct._GimpDrawable* %13)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.else.15, label %if.then.14

if.then.14:                                       ; preds = %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_drawable_curves_spline, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  br label %do.body.18

do.body.18:                                       ; preds = %do.end.17
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %15 = bitcast %struct._GimpDrawable* %14 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_item_get_type() #4
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call19)
  %16 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpItem*
  %call21 = call i32 @gimp_item_is_attached(%struct._GimpItem* %16)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %do.body.18
  br label %if.end.25

if.else.24:                                       ; preds = %do.body.18
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_drawable_curves_spline, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.25:                                        ; preds = %if.then.23
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  br label %do.body.27

do.body.27:                                       ; preds = %do.end.26
  %17 = load i32, i32* %channel.addr, align 4
  %cmp28 = icmp sge i32 %17, 0
  br i1 %cmp28, label %land.lhs.true.29, label %if.else.32

land.lhs.true.29:                                 ; preds = %do.body.27
  %18 = load i32, i32* %channel.addr, align 4
  %cmp30 = icmp sle i32 %18, 4
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %land.lhs.true.29
  br label %if.end.33

if.else.32:                                       ; preds = %land.lhs.true.29, %do.body.27
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_drawable_curves_spline, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.33:                                        ; preds = %if.then.31
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  %19 = load i32, i32* %channel.addr, align 4
  %cmp35 = icmp eq i32 %19, 4
  br i1 %cmp35, label %if.then.36, label %if.end.44

if.then.36:                                       ; preds = %do.end.34
  br label %do.body.37

do.body.37:                                       ; preds = %if.then.36
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call38 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %20)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %do.body.37
  br label %if.end.42

if.else.41:                                       ; preds = %do.body.37
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_drawable_curves_spline, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.42:                                        ; preds = %if.then.40
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  br label %if.end.44

if.end.44:                                        ; preds = %do.end.43, %do.end.34
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call45 = call i32 @gimp_drawable_is_gray(%struct._GimpDrawable* %21)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then.47, label %if.end.55

if.then.47:                                       ; preds = %if.end.44
  br label %do.body.48

do.body.48:                                       ; preds = %if.then.47
  %22 = load i32, i32* %channel.addr, align 4
  %cmp49 = icmp eq i32 %22, 0
  br i1 %cmp49, label %if.then.51, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.48
  %23 = load i32, i32* %channel.addr, align 4
  %cmp50 = icmp eq i32 %23, 4
  br i1 %cmp50, label %if.then.51, label %if.else.52

if.then.51:                                       ; preds = %lor.lhs.false, %do.body.48
  br label %if.end.53

if.else.52:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_drawable_curves_spline, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.53:                                        ; preds = %if.then.51
  br label %do.end.54

do.end.54:                                        ; preds = %if.end.53
  br label %if.end.55

if.end.55:                                        ; preds = %do.end.54, %if.end.44
  %call56 = call i64 @gimp_curves_config_get_type() #4
  %call57 = call i8* (i64, i8*, ...) @g_object_new(i64 %call56, i8* null)
  %24 = bitcast i8* %call57 to %struct._GimpCurvesConfig*
  store %struct._GimpCurvesConfig* %24, %struct._GimpCurvesConfig** %config, align 8
  %25 = load i32, i32* %channel.addr, align 4
  %idxprom = sext i32 %25 to i64
  %26 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config, align 8
  %curve58 = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %26, i32 0, i32 2
  %arrayidx = getelementptr inbounds [5 x %struct._GimpCurve*], [5 x %struct._GimpCurve*]* %curve58, i32 0, i64 %idxprom
  %27 = load %struct._GimpCurve*, %struct._GimpCurve** %arrayidx, align 8
  store %struct._GimpCurve* %27, %struct._GimpCurve** %curve, align 8
  %28 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %29 = bitcast %struct._GimpCurve* %28 to %struct._GTypeInstance*
  %call59 = call i64 @gimp_data_get_type() #4
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call59)
  %30 = bitcast %struct._GTypeInstance* %call60 to %struct._GimpData*
  call void @gimp_data_freeze(%struct._GimpData* %30)
  %31 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %32 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %n_points61 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %32, i32 0, i32 2
  %33 = load i32, i32* %n_points61, align 4
  %sub = sub nsw i32 %33, 1
  call void @gimp_curve_set_point(%struct._GimpCurve* %31, i32 %sub, double -1.000000e+00, double -1.000000e+00)
  %34 = load i32, i32* %n_points.addr, align 4
  %div = sdiv i32 %34, 2
  %35 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %n_points62 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %35, i32 0, i32 2
  %36 = load i32, i32* %n_points62, align 4
  %cmp63 = icmp slt i32 %div, %36
  br i1 %cmp63, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.55
  %37 = load i32, i32* %n_points.addr, align 4
  %div64 = sdiv i32 %37, 2
  br label %cond.end

cond.false:                                       ; preds = %if.end.55
  %38 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %n_points65 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %38, i32 0, i32 2
  %39 = load i32, i32* %n_points65, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div64, %cond.true ], [ %39, %cond.false ]
  store i32 %cond, i32* %n_points.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %40 = load i32, i32* %i, align 4
  %41 = load i32, i32* %n_points.addr, align 4
  %cmp66 = icmp slt i32 %40, %41
  br i1 %cmp66, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %42 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %43 = load i32, i32* %i, align 4
  %44 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %44, 2
  %idxprom67 = sext i32 %mul to i64
  %45 = load i8*, i8** %points.addr, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %45, i64 %idxprom67
  %46 = load i8, i8* %arrayidx68, align 1
  %conv = uitofp i8 %46 to double
  %div69 = fdiv double %conv, 2.550000e+02
  %47 = load i32, i32* %i, align 4
  %mul70 = mul nsw i32 %47, 2
  %add = add nsw i32 %mul70, 1
  %idxprom71 = sext i32 %add to i64
  %48 = load i8*, i8** %points.addr, align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %48, i64 %idxprom71
  %49 = load i8, i8* %arrayidx72, align 1
  %conv73 = uitofp i8 %49 to double
  %div74 = fdiv double %conv73, 2.550000e+02
  call void @gimp_curve_set_point(%struct._GimpCurve* %42, i32 %43, double %div69, double %div74)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %50 = load i32, i32* %i, align 4
  %inc = add nsw i32 %50, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %51 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %52 = bitcast %struct._GimpCurve* %51 to %struct._GTypeInstance*
  %call75 = call i64 @gimp_data_get_type() #4
  %call76 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call75)
  %53 = bitcast %struct._GTypeInstance* %call76 to %struct._GimpData*
  call void @gimp_data_thaw(%struct._GimpData* %53)
  %54 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %55 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %56 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config, align 8
  call void @gimp_drawable_curves(%struct._GimpDrawable* %54, %struct._GimpProgress* %55, %struct._GimpCurvesConfig* %56)
  %57 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config, align 8
  %58 = bitcast %struct._GimpCurvesConfig* %57 to i8*
  call void @g_object_unref(i8* %58)
  br label %return

return:                                           ; preds = %for.end, %if.else.52, %if.else.41, %if.else.32, %if.else.24, %if.else.15, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare i32 @gimp_drawable_is_indexed(%struct._GimpDrawable*) #3

declare i32 @gimp_item_is_attached(%struct._GimpItem*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #1

declare i32 @gimp_drawable_has_alpha(%struct._GimpDrawable*) #3

declare i32 @gimp_drawable_is_gray(%struct._GimpDrawable*) #3

declare i8* @g_object_new(i64, i8*, ...) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_curves_config_get_type() #1

declare void @gimp_data_freeze(%struct._GimpData*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_data_get_type() #1

declare void @gimp_curve_set_point(%struct._GimpCurve*, i32, double, double) #3

declare void @gimp_data_thaw(%struct._GimpData*) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_curves(%struct._GimpDrawable* %drawable, %struct._GimpProgress* %progress, %struct._GimpCurvesConfig* %config) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %config.addr = alloca %struct._GimpCurvesConfig*, align 8
  %node = alloca %struct._GeglNode*, align 8
  %lut = alloca %struct._GimpLut*, align 8
  %cruft = alloca %struct._Curves, align 1
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GimpCurvesConfig* %config, %struct._GimpCurvesConfig** %config.addr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpItem*
  %call2 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %2)
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %call2, i32 0, i32 1
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call3 = call i32 @gimp_use_gegl(%struct._Gimp* %3)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call4 = call i64 @gegl_node_get_type() #4
  %call5 = call i8* (i64, i8*, ...) @g_object_new(i64 %call4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* null)
  %4 = bitcast i8* %call5 to %struct._GeglNode*
  store %struct._GeglNode* %4, %struct._GeglNode** %node, align 8
  %5 = load %struct._GeglNode*, %struct._GeglNode** %node, align 8
  %6 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config.addr, align 8
  call void (%struct._GeglNode*, i8*, ...) @gegl_node_set(%struct._GeglNode* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), %struct._GimpCurvesConfig* %6, i8* null)
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %8 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call6 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i64 10)
  %9 = load %struct._GeglNode*, %struct._GeglNode** %node, align 8
  call void @gimp_drawable_apply_operation(%struct._GimpDrawable* %7, %struct._GimpProgress* %8, i8* %call6, %struct._GeglNode* %9, i32 1)
  %10 = load %struct._GeglNode*, %struct._GeglNode** %node, align 8
  %11 = bitcast %struct._GeglNode* %10 to i8*
  call void @g_object_unref(i8* %11)
  br label %if.end

if.else:                                          ; preds = %entry
  %call7 = call %struct._GimpLut* @gimp_lut_new()
  store %struct._GimpLut* %call7, %struct._GimpLut** %lut, align 8
  %12 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config.addr, align 8
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call8 = call i32 @gimp_drawable_is_rgb(%struct._GimpDrawable* %13)
  call void @gimp_curves_config_to_cruft(%struct._GimpCurvesConfig* %12, %struct._Curves* %cruft, i32 %call8)
  %14 = load %struct._GimpLut*, %struct._GimpLut** %lut, align 8
  %15 = bitcast %struct._Curves* %cruft to i8*
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call9 = call i32 @gimp_drawable_bytes(%struct._GimpDrawable* %16)
  call void @gimp_lut_setup(%struct._GimpLut* %14, float (i8*, i32, i32, float)* bitcast (float (%struct._Curves*, i32, i32, float)* @curves_lut_func to float (i8*, i32, i32, float)*), i8* %15, i32 %call9)
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %18 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call10 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i64 10)
  %19 = load %struct._GimpLut*, %struct._GimpLut** %lut, align 8
  call void @gimp_drawable_process_lut(%struct._GimpDrawable* %17, %struct._GimpProgress* %18, i8* %call10, %struct._GimpLut* %19)
  %20 = load %struct._GimpLut*, %struct._GimpLut** %lut, align 8
  call void @gimp_lut_free(%struct._GimpLut* %20)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare void @g_object_unref(i8*) #3

; Function Attrs: nounwind uwtable
define void @gimp_drawable_curves_explicit(%struct._GimpDrawable* %drawable, %struct._GimpProgress* %progress, i32 %channel, i8* %points, i32 %n_points) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %channel.addr = alloca i32, align 4
  %points.addr = alloca i8*, align 8
  %n_points.addr = alloca i32, align 4
  %config = alloca %struct._GimpCurvesConfig*, align 8
  %curve = alloca %struct._GimpCurve*, align 8
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store i32 %channel, i32* %channel.addr, align 4
  store i8* %points, i8** %points.addr, align 8
  store i32 %n_points, i32* %n_points.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #4
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_drawable_curves_explicit, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call12 = call i32 @gimp_drawable_is_indexed(%struct._GimpDrawable* %13)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.else.15, label %if.then.14

if.then.14:                                       ; preds = %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_drawable_curves_explicit, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  br label %do.body.18

do.body.18:                                       ; preds = %do.end.17
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %15 = bitcast %struct._GimpDrawable* %14 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_item_get_type() #4
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call19)
  %16 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpItem*
  %call21 = call i32 @gimp_item_is_attached(%struct._GimpItem* %16)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %do.body.18
  br label %if.end.25

if.else.24:                                       ; preds = %do.body.18
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_drawable_curves_explicit, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.25:                                        ; preds = %if.then.23
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  br label %do.body.27

do.body.27:                                       ; preds = %do.end.26
  %17 = load i32, i32* %channel.addr, align 4
  %cmp28 = icmp sge i32 %17, 0
  br i1 %cmp28, label %land.lhs.true.29, label %if.else.32

land.lhs.true.29:                                 ; preds = %do.body.27
  %18 = load i32, i32* %channel.addr, align 4
  %cmp30 = icmp sle i32 %18, 4
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %land.lhs.true.29
  br label %if.end.33

if.else.32:                                       ; preds = %land.lhs.true.29, %do.body.27
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_drawable_curves_explicit, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.33:                                        ; preds = %if.then.31
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  %19 = load i32, i32* %channel.addr, align 4
  %cmp35 = icmp eq i32 %19, 4
  br i1 %cmp35, label %if.then.36, label %if.end.44

if.then.36:                                       ; preds = %do.end.34
  br label %do.body.37

do.body.37:                                       ; preds = %if.then.36
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call38 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %20)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %do.body.37
  br label %if.end.42

if.else.41:                                       ; preds = %do.body.37
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_drawable_curves_explicit, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.42:                                        ; preds = %if.then.40
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  br label %if.end.44

if.end.44:                                        ; preds = %do.end.43, %do.end.34
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call45 = call i32 @gimp_drawable_is_gray(%struct._GimpDrawable* %21)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then.47, label %if.end.55

if.then.47:                                       ; preds = %if.end.44
  br label %do.body.48

do.body.48:                                       ; preds = %if.then.47
  %22 = load i32, i32* %channel.addr, align 4
  %cmp49 = icmp eq i32 %22, 0
  br i1 %cmp49, label %if.then.51, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.48
  %23 = load i32, i32* %channel.addr, align 4
  %cmp50 = icmp eq i32 %23, 4
  br i1 %cmp50, label %if.then.51, label %if.else.52

if.then.51:                                       ; preds = %lor.lhs.false, %do.body.48
  br label %if.end.53

if.else.52:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_drawable_curves_explicit, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.53:                                        ; preds = %if.then.51
  br label %do.end.54

do.end.54:                                        ; preds = %if.end.53
  br label %if.end.55

if.end.55:                                        ; preds = %do.end.54, %if.end.44
  %call56 = call i64 @gimp_curves_config_get_type() #4
  %call57 = call i8* (i64, i8*, ...) @g_object_new(i64 %call56, i8* null)
  %24 = bitcast i8* %call57 to %struct._GimpCurvesConfig*
  store %struct._GimpCurvesConfig* %24, %struct._GimpCurvesConfig** %config, align 8
  %25 = load i32, i32* %channel.addr, align 4
  %idxprom = sext i32 %25 to i64
  %26 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config, align 8
  %curve58 = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %26, i32 0, i32 2
  %arrayidx = getelementptr inbounds [5 x %struct._GimpCurve*], [5 x %struct._GimpCurve*]* %curve58, i32 0, i64 %idxprom
  %27 = load %struct._GimpCurve*, %struct._GimpCurve** %arrayidx, align 8
  store %struct._GimpCurve* %27, %struct._GimpCurve** %curve, align 8
  %28 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %29 = bitcast %struct._GimpCurve* %28 to %struct._GTypeInstance*
  %call59 = call i64 @gimp_data_get_type() #4
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call59)
  %30 = bitcast %struct._GTypeInstance* %call60 to %struct._GimpData*
  call void @gimp_data_freeze(%struct._GimpData* %30)
  %31 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  call void @gimp_curve_set_curve_type(%struct._GimpCurve* %31, i32 1)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.55
  %32 = load i32, i32* %i, align 4
  %cmp61 = icmp slt i32 %32, 256
  br i1 %cmp61, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %34 = load i32, i32* %i, align 4
  %conv = sitofp i32 %34 to double
  %div = fdiv double %conv, 2.550000e+02
  %35 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %35 to i64
  %36 = load i8*, i8** %points.addr, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %36, i64 %idxprom62
  %37 = load i8, i8* %arrayidx63, align 1
  %conv64 = uitofp i8 %37 to double
  %div65 = fdiv double %conv64, 2.550000e+02
  call void @gimp_curve_set_curve(%struct._GimpCurve* %33, double %div, double %div65)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %38 = load i32, i32* %i, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %40 = bitcast %struct._GimpCurve* %39 to %struct._GTypeInstance*
  %call66 = call i64 @gimp_data_get_type() #4
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call66)
  %41 = bitcast %struct._GTypeInstance* %call67 to %struct._GimpData*
  call void @gimp_data_thaw(%struct._GimpData* %41)
  %42 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %43 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %44 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config, align 8
  call void @gimp_drawable_curves(%struct._GimpDrawable* %42, %struct._GimpProgress* %43, %struct._GimpCurvesConfig* %44)
  %45 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config, align 8
  %46 = bitcast %struct._GimpCurvesConfig* %45 to i8*
  call void @g_object_unref(i8* %46)
  br label %return

return:                                           ; preds = %for.end, %if.else.52, %if.else.41, %if.else.32, %if.else.24, %if.else.15, %if.else.9
  ret void
}

declare void @gimp_curve_set_curve_type(%struct._GimpCurve*, i32) #3

declare void @gimp_curve_set_curve(%struct._GimpCurve*, double, double) #3

declare i32 @gimp_use_gegl(%struct._Gimp*) #3

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #3

; Function Attrs: nounwind readnone
declare i64 @gegl_node_get_type() #1

declare void @gegl_node_set(%struct._GeglNode*, i8*, ...) #3

declare void @gimp_drawable_apply_operation(%struct._GimpDrawable*, %struct._GimpProgress*, i8*, %struct._GeglNode*, i32) #3

declare i8* @g_dpgettext(i8*, i8*, i64) #3

declare %struct._GimpLut* @gimp_lut_new() #3

declare void @gimp_curves_config_to_cruft(%struct._GimpCurvesConfig*, %struct._Curves*, i32) #3

declare i32 @gimp_drawable_is_rgb(%struct._GimpDrawable*) #3

declare void @gimp_lut_setup(%struct._GimpLut*, float (i8*, i32, i32, float)*, i8*, i32) #3

declare float @curves_lut_func(%struct._Curves*, i32, i32, float) #3

declare i32 @gimp_drawable_bytes(%struct._GimpDrawable*) #3

declare void @gimp_drawable_process_lut(%struct._GimpDrawable*, %struct._GimpProgress*, i8*, %struct._GimpLut*) #3

declare void @gimp_lut_free(%struct._GimpLut*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
