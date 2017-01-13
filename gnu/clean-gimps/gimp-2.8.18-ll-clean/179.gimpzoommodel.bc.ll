; ModuleID = './libgimpwidgets/gimpzoommodel.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpZoomModelClass = type { %struct._GObjectClass, void (%struct._GimpZoomModel*, double, double)*, void ()*, void ()*, void ()*, void ()* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GimpZoomModel = type { %struct._GObject, i8* }
%struct.GimpZoomModelPrivate = type { double, double, double }
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GtkStyle = type { %struct._GObject, [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], %struct._GdkColor, %struct._GdkColor, %struct._PangoFontDescription*, i32, i32, [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], %struct._GdkGC*, %struct._GdkGC*, [5 x %struct._GdkDrawable*], i32, i32, %struct._GdkColormap*, %struct._GdkFont*, %struct._PangoFontDescription*, %struct._GtkRcStyle*, %struct._GSList*, %struct._GArray*, %struct._GSList* }
%struct._GdkColor = type { i32, i16, i16, i16 }
%struct._GdkGC = type { %struct._GObject, i32, i32, i32, i32, %struct._GdkColormap* }
%struct._GdkColormap = type { %struct._GObject, i32, %struct._GdkColor*, %struct._GdkVisual*, i8* }
%struct._GdkVisual = type { %struct._GObject, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GdkFont = type opaque
%struct._PangoFontDescription = type opaque
%struct._GtkRcStyle = type { %struct._GObject, i8*, [5 x i8*], %struct._PangoFontDescription*, [5 x i32], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], i32, i32, %struct._GArray*, %struct._GSList*, %struct._GSList*, i8 }
%struct._GArray = type { i8*, i32 }
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GSignalInvocationHint = type { i32, i32, i32 }

@gimp_zoom_model_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"GimpZoomModel\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"LibGimpWidgets\00", align 1
@__func__.gimp_zoom_model_set_range = private unnamed_addr constant [26 x i8] c"gimp_zoom_model_set_range\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"GIMP_IS_ZOOM_MODEL (model)\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"min < max\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"min >= ZOOM_MIN\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"max <= ZOOM_MAX\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"minimum\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"maximum\00", align 1
@__func__.gimp_zoom_model_zoom = private unnamed_addr constant [21 x i8] c"gimp_zoom_model_zoom\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@__func__.gimp_zoom_model_get_factor = private unnamed_addr constant [27 x i8] c"gimp_zoom_model_get_factor\00", align 1
@__func__.gimp_zoom_model_get_fraction = private unnamed_addr constant [29 x i8] c"gimp_zoom_model_get_fraction\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"numerator != NULL && denominator != NULL\00", align 1
@__func__.gimp_zoom_button_new = private unnamed_addr constant [21 x i8] c"gimp_zoom_button_new\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"gtk-zoom-in\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"zoomed\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"gtk-zoom-out\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"sorry, no button for this zoom type (%d)\00", align 1
@zoom_model_signals = internal global [1 x i32] zeroinitializer, align 4
@gimp_zoom_model_zoom_step.presets = internal constant [33 x double] [double 3.906250e-03, double 0x3F76C16C16C16C17, double 7.812500e-03, double 0x3F86C16C16C16C17, double 1.562500e-02, double 0x3F96C16C16C16C17, double 3.125000e-02, double 0x3FA642C8590B2164, double 6.250000e-02, double 0x3FB745D1745D1746, double 1.250000e-01, double 0x3FC745D1745D1746, double 2.500000e-01, double 0x3FD5555555555555, double 5.000000e-01, double 0x3FE5555555555555, double 1.000000e+00, double 1.500000e+00, double 2.000000e+00, double 3.000000e+00, double 4.000000e+00, double 5.500000e+00, double 8.000000e+00, double 1.100000e+01, double 1.600000e+01, double 2.300000e+01, double 3.200000e+01, double 4.500000e+01, double 6.400000e+01, double 9.000000e+01, double 1.280000e+02, double 1.800000e+02, double 2.560000e+02], align 16
@gimp_zoom_model_parent_class = internal global i8* null, align 8
@GimpZoomModel_private_offset = internal global i32 0, align 4
@.str.15 = private unnamed_addr constant [12 x i8] c"Zoom factor\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"Lower limit for the zoom factor\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"Upper limit for the zoom factor\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"fraction\00", align 1
@.str.19 = private unnamed_addr constant [40 x i8] c"The zoom factor expressed as a fraction\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"1:1\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"percentage\00", align 1
@.str.22 = private unnamed_addr constant [42 x i8] c"The zoom factor expressed as a percentage\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"100%\00", align 1
@.str.24 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"gimpzoommodel.c\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"%d:%d\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"%.0f%%\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"%.2f%%\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_zoom_model_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_zoom_model_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_zoom_model_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  %call6 = call i64 @g_type_register_static_simple(i64 80, i8* %call5, i32 176, void (i8*, i8*)* bitcast (void (i8*)* @gimp_zoom_model_class_intern_init to void (i8*, i8*)*), i32 32, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpZoomModel*)* @gimp_zoom_model_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call6, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_zoom_model_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_zoom_model_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_zoom_model_class_intern_init(i8* %klass) #2 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_zoom_model_parent_class, align 8
  %1 = load i32, i32* @GimpZoomModel_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpZoomModel_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpZoomModelClass*
  call void @gimp_zoom_model_class_init(%struct._GimpZoomModelClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_zoom_model_init(%struct._GimpZoomModel* %model) #2 {
entry:
  %model.addr = alloca %struct._GimpZoomModel*, align 8
  %priv = alloca %struct.GimpZoomModelPrivate*, align 8
  store %struct._GimpZoomModel* %model, %struct._GimpZoomModel** %model.addr, align 8
  %0 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %model.addr, align 8
  %1 = bitcast %struct._GimpZoomModel* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_zoom_model_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct.GimpZoomModelPrivate*
  %3 = bitcast %struct.GimpZoomModelPrivate* %2 to i8*
  %4 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %model.addr, align 8
  %priv2 = getelementptr inbounds %struct._GimpZoomModel, %struct._GimpZoomModel* %4, i32 0, i32 1
  store i8* %3, i8** %priv2, align 8
  %5 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %model.addr, align 8
  %priv3 = getelementptr inbounds %struct._GimpZoomModel, %struct._GimpZoomModel* %5, i32 0, i32 1
  %6 = load i8*, i8** %priv3, align 8
  %7 = bitcast i8* %6 to %struct.GimpZoomModelPrivate*
  store %struct.GimpZoomModelPrivate* %7, %struct.GimpZoomModelPrivate** %priv, align 8
  %8 = load %struct.GimpZoomModelPrivate*, %struct.GimpZoomModelPrivate** %priv, align 8
  %value = getelementptr inbounds %struct.GimpZoomModelPrivate, %struct.GimpZoomModelPrivate* %8, i32 0, i32 0
  store double 1.000000e+00, double* %value, align 8
  %9 = load %struct.GimpZoomModelPrivate*, %struct.GimpZoomModelPrivate** %priv, align 8
  %minimum = getelementptr inbounds %struct.GimpZoomModelPrivate, %struct.GimpZoomModelPrivate* %9, i32 0, i32 1
  store double 3.906250e-03, double* %minimum, align 8
  %10 = load %struct.GimpZoomModelPrivate*, %struct.GimpZoomModelPrivate** %priv, align 8
  %maximum = getelementptr inbounds %struct.GimpZoomModelPrivate, %struct.GimpZoomModelPrivate* %10, i32 0, i32 2
  store double 2.560000e+02, double* %maximum, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpZoomModel* @gimp_zoom_model_new() #2 {
entry:
  %call = call i64 @gimp_zoom_model_get_type() #6
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %0 = bitcast i8* %call1 to %struct._GimpZoomModel*
  ret %struct._GimpZoomModel* %0
}

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_zoom_model_set_range(%struct._GimpZoomModel* %model, double %min, double %max) #2 {
entry:
  %model.addr = alloca %struct._GimpZoomModel*, align 8
  %min.addr = alloca double, align 8
  %max.addr = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpZoomModel* %model, %struct._GimpZoomModel** %model.addr, align 8
  store double %min, double* %min.addr, align 8
  store double %max, double* %max.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %model.addr, align 8
  %1 = bitcast %struct._GimpZoomModel* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_zoom_model_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_zoom_model_set_range, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load double, double* %min.addr, align 8
  %14 = load double, double* %max.addr, align 8
  %cmp12 = fcmp olt double %13, %14
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_zoom_model_set_range, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %15 = load double, double* %min.addr, align 8
  %cmp18 = fcmp oge double %15, 3.906250e-03
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_zoom_model_set_range, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %do.body.23

do.body.23:                                       ; preds = %do.end.22
  %16 = load double, double* %max.addr, align 8
  %cmp24 = fcmp ole double %16, 2.560000e+02
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %do.body.23
  br label %if.end.27

if.else.26:                                       ; preds = %do.body.23
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_zoom_model_set_range, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.27:                                        ; preds = %if.then.25
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  %17 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %model.addr, align 8
  %18 = bitcast %struct._GimpZoomModel* %17 to i8*
  %19 = load double, double* %min.addr, align 8
  %20 = load double, double* %max.addr, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), double %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), double %20, i8* null)
  br label %return

return:                                           ; preds = %do.end.28, %if.else.26, %if.else.20, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #3

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare void @g_object_set(i8*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_zoom_model_zoom(%struct._GimpZoomModel* %model, i32 %zoom_type, double %scale) #2 {
entry:
  %model.addr = alloca %struct._GimpZoomModel*, align 8
  %zoom_type.addr = alloca i32, align 4
  %scale.addr = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpZoomModel* %model, %struct._GimpZoomModel** %model.addr, align 8
  store i32 %zoom_type, i32* %zoom_type.addr, align 4
  store double %scale, double* %scale.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %model.addr, align 8
  %1 = bitcast %struct._GimpZoomModel* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_zoom_model_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_zoom_model_zoom, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %zoom_type.addr, align 4
  %cmp11 = icmp ne i32 %13, 6
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %do.end
  %14 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %model.addr, align 8
  %call13 = call double @gimp_zoom_model_get_factor(%struct._GimpZoomModel* %14)
  store double %call13, double* %scale.addr, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %do.end
  %15 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %model.addr, align 8
  %16 = bitcast %struct._GimpZoomModel* %15 to i8*
  %17 = load i32, i32* %zoom_type.addr, align 4
  %18 = load double, double* %scale.addr, align 8
  %call15 = call double @gimp_zoom_model_zoom_step(i32 %17, double %18)
  call void (i8*, i8*, ...) @g_object_set(i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), double %call15, i8* null)
  br label %return

return:                                           ; preds = %if.end.14, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define double @gimp_zoom_model_get_factor(%struct._GimpZoomModel* %model) #2 {
entry:
  %retval = alloca double, align 8
  %model.addr = alloca %struct._GimpZoomModel*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpZoomModel* %model, %struct._GimpZoomModel** %model.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %model.addr, align 8
  %1 = bitcast %struct._GimpZoomModel* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_zoom_model_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_zoom_model_get_factor, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0))
  store double 1.000000e+00, double* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %model.addr, align 8
  %priv = getelementptr inbounds %struct._GimpZoomModel, %struct._GimpZoomModel* %13, i32 0, i32 1
  %14 = load i8*, i8** %priv, align 8
  %15 = bitcast i8* %14 to %struct.GimpZoomModelPrivate*
  %value = getelementptr inbounds %struct.GimpZoomModelPrivate, %struct.GimpZoomModelPrivate* %15, i32 0, i32 0
  %16 = load double, double* %value, align 8
  store double %16, double* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load double, double* %retval
  ret double %17
}

; Function Attrs: nounwind uwtable
define double @gimp_zoom_model_zoom_step(i32 %zoom_type, double %scale) #2 {
entry:
  %zoom_type.addr = alloca i32, align 4
  %scale.addr = alloca double, align 8
  %i = alloca i32, align 4
  %n_presets = alloca i32, align 4
  %new_scale = alloca double, align 8
  store i32 %zoom_type, i32* %zoom_type.addr, align 4
  store double %scale, double* %scale.addr, align 8
  store double 1.000000e+00, double* %new_scale, align 8
  store i32 33, i32* %n_presets, align 4
  %0 = load i32, i32* %zoom_type.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.7
    i32 2, label %sw.bb.20
    i32 3, label %sw.bb.23
    i32 4, label %sw.bb.27
    i32 5, label %sw.bb.28
    i32 6, label %sw.bb.29
  ]

sw.bb:                                            ; preds = %entry
  %1 = load double, double* %scale.addr, align 8
  %mul = fmul double %1, 1.100000e+00
  store double %mul, double* %scale.addr, align 8
  %2 = load i32, i32* %n_presets, align 4
  %sub = sub nsw i32 %2, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [33 x double], [33 x double]* @gimp_zoom_model_zoom_step.presets, i32 0, i64 %idxprom
  %3 = load double, double* %arrayidx, align 8
  store double %3, double* %new_scale, align 8
  %4 = load i32, i32* %n_presets, align 4
  %sub1 = sub nsw i32 %4, 1
  store i32 %sub1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %5 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %5, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds [33 x double], [33 x double]* @gimp_zoom_model_zoom_step.presets, i32 0, i64 %idxprom2
  %7 = load double, double* %arrayidx3, align 8
  %8 = load double, double* %scale.addr, align 8
  %cmp4 = fcmp ogt double %7, %8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %9 = phi i1 [ false, %for.cond ], [ %cmp4, %land.rhs ]
  br i1 %9, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %10 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds [33 x double], [33 x double]* @gimp_zoom_model_zoom_step.presets, i32 0, i64 %idxprom5
  %11 = load double, double* %arrayidx6, align 8
  store double %11, double* %new_scale, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %dec = add nsw i32 %12, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %13 = load double, double* %scale.addr, align 8
  %div = fdiv double %13, 1.100000e+00
  store double %div, double* %scale.addr, align 8
  %14 = load double, double* getelementptr inbounds ([33 x double], [33 x double]* @gimp_zoom_model_zoom_step.presets, i32 0, i64 0), align 8
  store double %14, double* %new_scale, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.18, %sw.bb.7
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %n_presets, align 4
  %cmp9 = icmp slt i32 %15, %16
  br i1 %cmp9, label %land.rhs.10, label %land.end.14

land.rhs.10:                                      ; preds = %for.cond.8
  %17 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %17 to i64
  %arrayidx12 = getelementptr inbounds [33 x double], [33 x double]* @gimp_zoom_model_zoom_step.presets, i32 0, i64 %idxprom11
  %18 = load double, double* %arrayidx12, align 8
  %19 = load double, double* %scale.addr, align 8
  %cmp13 = fcmp olt double %18, %19
  br label %land.end.14

land.end.14:                                      ; preds = %land.rhs.10, %for.cond.8
  %20 = phi i1 [ false, %for.cond.8 ], [ %cmp13, %land.rhs.10 ]
  br i1 %20, label %for.body.15, label %for.end.19

for.body.15:                                      ; preds = %land.end.14
  %21 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %21 to i64
  %arrayidx17 = getelementptr inbounds [33 x double], [33 x double]* @gimp_zoom_model_zoom_step.presets, i32 0, i64 %idxprom16
  %22 = load double, double* %arrayidx17, align 8
  store double %22, double* %new_scale, align 8
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.body.15
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.8

for.end.19:                                       ; preds = %land.end.14
  br label %sw.epilog

sw.bb.20:                                         ; preds = %entry
  %24 = load double, double* %scale.addr, align 8
  %call = call double @gimp_zoom_model_zoom_step(i32 0, double %24)
  store double %call, double* %scale.addr, align 8
  %25 = load double, double* %scale.addr, align 8
  %call21 = call double @gimp_zoom_model_zoom_step(i32 0, double %25)
  store double %call21, double* %scale.addr, align 8
  %26 = load double, double* %scale.addr, align 8
  %call22 = call double @gimp_zoom_model_zoom_step(i32 0, double %26)
  store double %call22, double* %scale.addr, align 8
  %27 = load double, double* %scale.addr, align 8
  store double %27, double* %new_scale, align 8
  br label %sw.epilog

sw.bb.23:                                         ; preds = %entry
  %28 = load double, double* %scale.addr, align 8
  %call24 = call double @gimp_zoom_model_zoom_step(i32 1, double %28)
  store double %call24, double* %scale.addr, align 8
  %29 = load double, double* %scale.addr, align 8
  %call25 = call double @gimp_zoom_model_zoom_step(i32 1, double %29)
  store double %call25, double* %scale.addr, align 8
  %30 = load double, double* %scale.addr, align 8
  %call26 = call double @gimp_zoom_model_zoom_step(i32 1, double %30)
  store double %call26, double* %scale.addr, align 8
  %31 = load double, double* %scale.addr, align 8
  store double %31, double* %new_scale, align 8
  br label %sw.epilog

sw.bb.27:                                         ; preds = %entry
  store double 2.560000e+02, double* %new_scale, align 8
  br label %sw.epilog

sw.bb.28:                                         ; preds = %entry
  store double 3.906250e-03, double* %new_scale, align 8
  br label %sw.epilog

sw.bb.29:                                         ; preds = %entry
  %32 = load double, double* %scale.addr, align 8
  store double %32, double* %new_scale, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.29, %sw.bb.28, %sw.bb.27, %sw.bb.23, %sw.bb.20, %for.end.19, %for.end
  %33 = load double, double* %new_scale, align 8
  %cmp30 = fcmp ogt double %33, 2.560000e+02
  br i1 %cmp30, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.epilog
  br label %cond.end.34

cond.false:                                       ; preds = %sw.epilog
  %34 = load double, double* %new_scale, align 8
  %cmp31 = fcmp olt double %34, 3.906250e-03
  br i1 %cmp31, label %cond.true.32, label %cond.false.33

cond.true.32:                                     ; preds = %cond.false
  br label %cond.end

cond.false.33:                                    ; preds = %cond.false
  %35 = load double, double* %new_scale, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.33, %cond.true.32
  %cond = phi double [ 3.906250e-03, %cond.true.32 ], [ %35, %cond.false.33 ]
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.end, %cond.true
  %cond35 = phi double [ 2.560000e+02, %cond.true ], [ %cond, %cond.end ]
  ret double %cond35
}

; Function Attrs: nounwind uwtable
define void @gimp_zoom_model_get_fraction(%struct._GimpZoomModel* %model, i32* %numerator, i32* %denominator) #2 {
entry:
  %model.addr = alloca %struct._GimpZoomModel*, align 8
  %numerator.addr = alloca i32*, align 8
  %denominator.addr = alloca i32*, align 8
  %p0 = alloca i32, align 4
  %p1 = alloca i32, align 4
  %p2 = alloca i32, align 4
  %q0 = alloca i32, align 4
  %q1 = alloca i32, align 4
  %q2 = alloca i32, align 4
  %zoom_factor = alloca double, align 8
  %remainder = alloca double, align 8
  %next_cf = alloca double, align 8
  %swapped = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpZoomModel* %model, %struct._GimpZoomModel** %model.addr, align 8
  store i32* %numerator, i32** %numerator.addr, align 8
  store i32* %denominator, i32** %denominator.addr, align 8
  store i32 0, i32* %swapped, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %model.addr, align 8
  %1 = bitcast %struct._GimpZoomModel* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_zoom_model_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_zoom_model_get_fraction, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.77

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32*, i32** %numerator.addr, align 8
  %cmp12 = icmp ne i32* %13, null
  br i1 %cmp12, label %land.lhs.true.13, label %if.else.16

land.lhs.true.13:                                 ; preds = %do.body.11
  %14 = load i32*, i32** %denominator.addr, align 8
  %cmp14 = icmp ne i32* %14, null
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %land.lhs.true.13
  br label %if.end.17

if.else.16:                                       ; preds = %land.lhs.true.13, %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_zoom_model_get_fraction, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.77

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %15 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %model.addr, align 8
  %call19 = call double @gimp_zoom_model_get_factor(%struct._GimpZoomModel* %15)
  store double %call19, double* %zoom_factor, align 8
  %16 = load double, double* %zoom_factor, align 8
  %cmp20 = fcmp olt double %16, 1.000000e+00
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %do.end.18
  %17 = load double, double* %zoom_factor, align 8
  %div = fdiv double 1.000000e+00, %17
  store double %div, double* %zoom_factor, align 8
  store i32 1, i32* %swapped, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %do.end.18
  store i32 1, i32* %p0, align 4
  store i32 0, i32* %q0, align 4
  %18 = load double, double* %zoom_factor, align 8
  %call23 = call double @floor(double %18) #6
  %conv = fptosi double %call23 to i32
  store i32 %conv, i32* %p1, align 4
  store i32 1, i32* %q1, align 4
  %19 = load double, double* %zoom_factor, align 8
  %20 = load i32, i32* %p1, align 4
  %conv24 = sitofp i32 %20 to double
  %sub = fsub double %19, %conv24
  store double %sub, double* %remainder, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.60, %if.end.22
  %21 = load double, double* %remainder, align 8
  %call25 = call double @fabs(double %21) #6
  %cmp26 = fcmp oge double %call25, 1.000000e-04
  br i1 %cmp26, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %22 = load i32, i32* %p1, align 4
  %conv28 = sitofp i32 %22 to double
  %23 = load i32, i32* %q1, align 4
  %conv29 = sitofp i32 %23 to double
  %div30 = fdiv double %conv28, %conv29
  %24 = load double, double* %zoom_factor, align 8
  %sub31 = fsub double %div30, %24
  %call32 = call double @fabs(double %sub31) #6
  %cmp33 = fcmp ogt double %call32, 1.000000e-04
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %25 = phi i1 [ false, %while.cond ], [ %cmp33, %land.rhs ]
  br i1 %25, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %26 = load double, double* %remainder, align 8
  %div35 = fdiv double 1.000000e+00, %26
  store double %div35, double* %remainder, align 8
  %27 = load double, double* %remainder, align 8
  %call36 = call double @floor(double %27) #6
  store double %call36, double* %next_cf, align 8
  %28 = load double, double* %next_cf, align 8
  %29 = load i32, i32* %p1, align 4
  %conv37 = sitofp i32 %29 to double
  %mul = fmul double %28, %conv37
  %30 = load i32, i32* %p0, align 4
  %conv38 = sitofp i32 %30 to double
  %add = fadd double %mul, %conv38
  %conv39 = fptosi double %add to i32
  store i32 %conv39, i32* %p2, align 4
  %31 = load double, double* %next_cf, align 8
  %32 = load i32, i32* %q1, align 4
  %conv40 = sitofp i32 %32 to double
  %mul41 = fmul double %31, %conv40
  %33 = load i32, i32* %q0, align 4
  %conv42 = sitofp i32 %33 to double
  %add43 = fadd double %mul41, %conv42
  %conv44 = fptosi double %add43 to i32
  store i32 %conv44, i32* %q2, align 4
  %34 = load i32, i32* %p2, align 4
  %cmp45 = icmp sgt i32 %34, 256
  br i1 %cmp45, label %if.then.59, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %35 = load i32, i32* %q2, align 4
  %cmp47 = icmp sgt i32 %35, 256
  br i1 %cmp47, label %if.then.59, label %lor.lhs.false.49

lor.lhs.false.49:                                 ; preds = %lor.lhs.false
  %36 = load i32, i32* %p2, align 4
  %cmp50 = icmp sgt i32 %36, 1
  br i1 %cmp50, label %land.lhs.true.52, label %if.end.60

land.lhs.true.52:                                 ; preds = %lor.lhs.false.49
  %37 = load i32, i32* %q2, align 4
  %cmp53 = icmp sgt i32 %37, 1
  br i1 %cmp53, label %land.lhs.true.55, label %if.end.60

land.lhs.true.55:                                 ; preds = %land.lhs.true.52
  %38 = load i32, i32* %p2, align 4
  %39 = load i32, i32* %q2, align 4
  %mul56 = mul nsw i32 %38, %39
  %cmp57 = icmp sgt i32 %mul56, 200
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %land.lhs.true.55, %lor.lhs.false, %while.body
  br label %while.end

if.end.60:                                        ; preds = %land.lhs.true.55, %land.lhs.true.52, %lor.lhs.false.49
  %40 = load i32, i32* %p1, align 4
  store i32 %40, i32* %p0, align 4
  %41 = load i32, i32* %p2, align 4
  store i32 %41, i32* %p1, align 4
  %42 = load i32, i32* %q1, align 4
  store i32 %42, i32* %q0, align 4
  %43 = load i32, i32* %q2, align 4
  store i32 %43, i32* %q1, align 4
  %44 = load double, double* %remainder, align 8
  %45 = load double, double* %next_cf, align 8
  %sub61 = fsub double %44, %45
  store double %sub61, double* %remainder, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.59, %land.end
  %46 = load i32, i32* %p1, align 4
  %conv62 = sitofp i32 %46 to double
  %47 = load i32, i32* %q1, align 4
  %conv63 = sitofp i32 %47 to double
  %div64 = fdiv double %conv62, %conv63
  store double %div64, double* %zoom_factor, align 8
  %48 = load double, double* %zoom_factor, align 8
  %cmp65 = fcmp ogt double %48, 2.560000e+02
  br i1 %cmp65, label %if.then.67, label %if.else.68

if.then.67:                                       ; preds = %while.end
  store i32 256, i32* %p1, align 4
  store i32 1, i32* %q1, align 4
  br label %if.end.73

if.else.68:                                       ; preds = %while.end
  %49 = load double, double* %zoom_factor, align 8
  %cmp69 = fcmp olt double %49, 3.906250e-03
  br i1 %cmp69, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.else.68
  store i32 1, i32* %p1, align 4
  store i32 256, i32* %q1, align 4
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.71, %if.else.68
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.then.67
  %50 = load i32, i32* %swapped, align 4
  %tobool74 = icmp ne i32 %50, 0
  br i1 %tobool74, label %if.then.75, label %if.else.76

if.then.75:                                       ; preds = %if.end.73
  %51 = load i32, i32* %q1, align 4
  %52 = load i32*, i32** %numerator.addr, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* %p1, align 4
  %54 = load i32*, i32** %denominator.addr, align 8
  store i32 %53, i32* %54, align 4
  br label %if.end.77

if.else.76:                                       ; preds = %if.end.73
  %55 = load i32, i32* %p1, align 4
  %56 = load i32*, i32** %numerator.addr, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* %q1, align 4
  %58 = load i32*, i32** %denominator.addr, align 8
  store i32 %57, i32* %58, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.9, %if.else.16, %if.else.76, %if.then.75
  ret void
}

; Function Attrs: nounwind readnone
declare double @floor(double) #4

; Function Attrs: nounwind readnone
declare double @fabs(double) #4

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_zoom_button_new(%struct._GimpZoomModel* %model, i32 %zoom_type, i32 %icon_size) #2 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %model.addr = alloca %struct._GimpZoomModel*, align 8
  %zoom_type.addr = alloca i32, align 4
  %icon_size.addr = alloca i32, align 4
  %button = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %zoom = alloca double, align 8
  %desc = alloca i8*, align 8
  store %struct._GimpZoomModel* %model, %struct._GimpZoomModel** %model.addr, align 8
  store i32 %zoom_type, i32* %zoom_type.addr, align 4
  store i32 %icon_size, i32* %icon_size.addr, align 4
  store %struct._GtkWidget* null, %struct._GtkWidget** %button, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %model.addr, align 8
  %1 = bitcast %struct._GimpZoomModel* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_zoom_model_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_zoom_button_new, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %zoom_type.addr, align 4
  switch i32 %13, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.14
  ]

sw.bb:                                            ; preds = %do.end
  %14 = load i32, i32* %icon_size.addr, align 4
  %call11 = call %struct._GtkWidget* @zoom_button_new(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i32 %14)
  store %struct._GtkWidget* %call11, %struct._GtkWidget** %button, align 8
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %16 = bitcast %struct._GtkWidget* %15 to i8*
  %17 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %model.addr, align 8
  %18 = bitcast %struct._GimpZoomModel* %17 to i8*
  %call12 = call i64 @g_signal_connect_data(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), void ()* bitcast (void (%struct._GimpZoomModel*)* @gimp_zoom_model_zoom_in to void ()*), i8* %18, void (i8*, %struct._GClosure*)* null, i32 2)
  %19 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %model.addr, align 8
  %20 = bitcast %struct._GimpZoomModel* %19 to i8*
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %22 = bitcast %struct._GtkWidget* %21 to i8*
  %call13 = call i64 @g_signal_connect_object(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), void ()* bitcast (void (%struct._GimpZoomModel*, double, double, %struct._GtkWidget*)* @zoom_in_button_callback to void ()*), i8* %22, i32 0)
  br label %sw.epilog

sw.bb.14:                                         ; preds = %do.end
  %23 = load i32, i32* %icon_size.addr, align 4
  %call15 = call %struct._GtkWidget* @zoom_button_new(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 %23)
  store %struct._GtkWidget* %call15, %struct._GtkWidget** %button, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %25 = bitcast %struct._GtkWidget* %24 to i8*
  %26 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %model.addr, align 8
  %27 = bitcast %struct._GimpZoomModel* %26 to i8*
  %call16 = call i64 @g_signal_connect_data(i8* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), void ()* bitcast (void (%struct._GimpZoomModel*)* @gimp_zoom_model_zoom_out to void ()*), i8* %27, void (i8*, %struct._GClosure*)* null, i32 2)
  %28 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %model.addr, align 8
  %29 = bitcast %struct._GimpZoomModel* %28 to i8*
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %31 = bitcast %struct._GtkWidget* %30 to i8*
  %call17 = call i64 @g_signal_connect_object(i8* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), void ()* bitcast (void (%struct._GimpZoomModel*, double, double, %struct._GtkWidget*)* @zoom_out_button_callback to void ()*), i8* %31, i32 0)
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  %32 = load i32, i32* %zoom_type.addr, align 4
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i32 0, i32 0), i32 %32)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.14, %sw.bb
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %tobool18 = icmp ne %struct._GtkWidget* %33, null
  br i1 %tobool18, label %if.then.19, label %if.end.31

if.then.19:                                       ; preds = %sw.epilog
  %34 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %model.addr, align 8
  %call21 = call double @gimp_zoom_model_get_factor(%struct._GimpZoomModel* %34)
  store double %call21, double* %zoom, align 8
  %35 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %model.addr, align 8
  %36 = bitcast %struct._GimpZoomModel* %35 to i8*
  %37 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @zoom_model_signals, i32 0, i64 0), align 4
  %38 = load double, double* %zoom, align 8
  %39 = load double, double* %zoom, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %36, i32 %37, i32 0, double %38, double %39)
  %40 = load i32, i32* %icon_size.addr, align 4
  %cmp22 = icmp ugt i32 %40, 0
  br i1 %cmp22, label %if.then.23, label %if.end.30

if.then.23:                                       ; preds = %if.then.19
  %call25 = call i64 @gimp_zoom_type_get_type() #6
  %41 = load i32, i32* %zoom_type.addr, align 4
  %call26 = call i32 @gimp_enum_get_value(i64 %call25, i32 %41, i8** null, i8** null, i8** %desc, i8** null)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.then.23
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %43 = load i8*, i8** %desc, align 8
  call void @gimp_help_set_help_data(%struct._GtkWidget* %42, i8* %43, i8* null)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.then.23
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.then.19
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %sw.epilog
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  store %struct._GtkWidget* %44, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.31, %if.else.9
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %45
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @zoom_button_new(i8* %stock_id, i32 %icon_size) #2 {
entry:
  %stock_id.addr = alloca i8*, align 8
  %icon_size.addr = alloca i32, align 4
  %button = alloca %struct._GtkWidget*, align 8
  %image = alloca %struct._GtkWidget*, align 8
  store i8* %stock_id, i8** %stock_id.addr, align 8
  store i32 %icon_size, i32* %icon_size.addr, align 4
  %0 = load i32, i32* %icon_size.addr, align 4
  %cmp = icmp ugt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %stock_id.addr, align 8
  %2 = load i32, i32* %icon_size.addr, align 4
  %call = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* %1, i32 %2)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %image, align 8
  %call1 = call %struct._GtkWidget* @gtk_button_new()
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %button, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_container_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkContainer*
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_container_add(%struct._GtkContainer* %5, %struct._GtkWidget* %6)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %7)
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load i8*, i8** %stock_id.addr, align 8
  %call4 = call %struct._GtkWidget* @gtk_button_new_from_stock(i8* %8)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %button, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  ret %struct._GtkWidget* %9
}

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_zoom_model_zoom_in(%struct._GimpZoomModel* %model) #2 {
entry:
  %model.addr = alloca %struct._GimpZoomModel*, align 8
  %priv = alloca %struct.GimpZoomModelPrivate*, align 8
  store %struct._GimpZoomModel* %model, %struct._GimpZoomModel** %model.addr, align 8
  %0 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %model.addr, align 8
  %priv1 = getelementptr inbounds %struct._GimpZoomModel, %struct._GimpZoomModel* %0, i32 0, i32 1
  %1 = load i8*, i8** %priv1, align 8
  %2 = bitcast i8* %1 to %struct.GimpZoomModelPrivate*
  store %struct.GimpZoomModelPrivate* %2, %struct.GimpZoomModelPrivate** %priv, align 8
  %3 = load %struct.GimpZoomModelPrivate*, %struct.GimpZoomModelPrivate** %priv, align 8
  %value = getelementptr inbounds %struct.GimpZoomModelPrivate, %struct.GimpZoomModelPrivate* %3, i32 0, i32 0
  %4 = load double, double* %value, align 8
  %5 = load %struct.GimpZoomModelPrivate*, %struct.GimpZoomModelPrivate** %priv, align 8
  %maximum = getelementptr inbounds %struct.GimpZoomModelPrivate, %struct.GimpZoomModelPrivate* %5, i32 0, i32 2
  %6 = load double, double* %maximum, align 8
  %cmp = fcmp olt double %4, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %model.addr, align 8
  call void @gimp_zoom_model_zoom(%struct._GimpZoomModel* %7, i32 0, double 0.000000e+00)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @zoom_in_button_callback(%struct._GimpZoomModel* %model, double %old, double %new, %struct._GtkWidget* %button) #2 {
entry:
  %model.addr = alloca %struct._GimpZoomModel*, align 8
  %old.addr = alloca double, align 8
  %new.addr = alloca double, align 8
  %button.addr = alloca %struct._GtkWidget*, align 8
  %priv = alloca %struct.GimpZoomModelPrivate*, align 8
  store %struct._GimpZoomModel* %model, %struct._GimpZoomModel** %model.addr, align 8
  store double %old, double* %old.addr, align 8
  store double %new, double* %new.addr, align 8
  store %struct._GtkWidget* %button, %struct._GtkWidget** %button.addr, align 8
  %0 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %model.addr, align 8
  %priv1 = getelementptr inbounds %struct._GimpZoomModel, %struct._GimpZoomModel* %0, i32 0, i32 1
  %1 = load i8*, i8** %priv1, align 8
  %2 = bitcast i8* %1 to %struct.GimpZoomModelPrivate*
  store %struct.GimpZoomModelPrivate* %2, %struct.GimpZoomModelPrivate** %priv, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %4 = load %struct.GimpZoomModelPrivate*, %struct.GimpZoomModelPrivate** %priv, align 8
  %value = getelementptr inbounds %struct.GimpZoomModelPrivate, %struct.GimpZoomModelPrivate* %4, i32 0, i32 0
  %5 = load double, double* %value, align 8
  %6 = load %struct.GimpZoomModelPrivate*, %struct.GimpZoomModelPrivate** %priv, align 8
  %maximum = getelementptr inbounds %struct.GimpZoomModelPrivate, %struct.GimpZoomModelPrivate* %6, i32 0, i32 2
  %7 = load double, double* %maximum, align 8
  %cmp = fcmp une double %5, %7
  %conv = zext i1 %cmp to i32
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %3, i32 %conv)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_zoom_model_zoom_out(%struct._GimpZoomModel* %model) #2 {
entry:
  %model.addr = alloca %struct._GimpZoomModel*, align 8
  %priv = alloca %struct.GimpZoomModelPrivate*, align 8
  store %struct._GimpZoomModel* %model, %struct._GimpZoomModel** %model.addr, align 8
  %0 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %model.addr, align 8
  %priv1 = getelementptr inbounds %struct._GimpZoomModel, %struct._GimpZoomModel* %0, i32 0, i32 1
  %1 = load i8*, i8** %priv1, align 8
  %2 = bitcast i8* %1 to %struct.GimpZoomModelPrivate*
  store %struct.GimpZoomModelPrivate* %2, %struct.GimpZoomModelPrivate** %priv, align 8
  %3 = load %struct.GimpZoomModelPrivate*, %struct.GimpZoomModelPrivate** %priv, align 8
  %value = getelementptr inbounds %struct.GimpZoomModelPrivate, %struct.GimpZoomModelPrivate* %3, i32 0, i32 0
  %4 = load double, double* %value, align 8
  %5 = load %struct.GimpZoomModelPrivate*, %struct.GimpZoomModelPrivate** %priv, align 8
  %minimum = getelementptr inbounds %struct.GimpZoomModelPrivate, %struct.GimpZoomModelPrivate* %5, i32 0, i32 1
  %6 = load double, double* %minimum, align 8
  %cmp = fcmp ogt double %4, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %model.addr, align 8
  call void @gimp_zoom_model_zoom(%struct._GimpZoomModel* %7, i32 1, double 0.000000e+00)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @zoom_out_button_callback(%struct._GimpZoomModel* %model, double %old, double %new, %struct._GtkWidget* %button) #2 {
entry:
  %model.addr = alloca %struct._GimpZoomModel*, align 8
  %old.addr = alloca double, align 8
  %new.addr = alloca double, align 8
  %button.addr = alloca %struct._GtkWidget*, align 8
  %priv = alloca %struct.GimpZoomModelPrivate*, align 8
  store %struct._GimpZoomModel* %model, %struct._GimpZoomModel** %model.addr, align 8
  store double %old, double* %old.addr, align 8
  store double %new, double* %new.addr, align 8
  store %struct._GtkWidget* %button, %struct._GtkWidget** %button.addr, align 8
  %0 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %model.addr, align 8
  %priv1 = getelementptr inbounds %struct._GimpZoomModel, %struct._GimpZoomModel* %0, i32 0, i32 1
  %1 = load i8*, i8** %priv1, align 8
  %2 = bitcast i8* %1 to %struct.GimpZoomModelPrivate*
  store %struct.GimpZoomModelPrivate* %2, %struct.GimpZoomModelPrivate** %priv, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %4 = load %struct.GimpZoomModelPrivate*, %struct.GimpZoomModelPrivate** %priv, align 8
  %value = getelementptr inbounds %struct.GimpZoomModelPrivate, %struct.GimpZoomModelPrivate* %4, i32 0, i32 0
  %5 = load double, double* %value, align 8
  %6 = load %struct.GimpZoomModelPrivate*, %struct.GimpZoomModelPrivate** %priv, align 8
  %minimum = getelementptr inbounds %struct.GimpZoomModelPrivate, %struct.GimpZoomModelPrivate* %6, i32 0, i32 1
  %7 = load double, double* %minimum, align 8
  %cmp = fcmp une double %5, %7
  %conv = zext i1 %cmp to i32
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %3, i32 %conv)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #2 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare void @g_signal_emit(i8*, i32, i32, ...) #1

declare i32 @gimp_enum_get_value(i64, i32, i8**, i8**, i8**, i8**) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_zoom_type_get_type() #4

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_zoom_model_class_init(%struct._GimpZoomModelClass* %klass) #2 {
entry:
  %klass.addr = alloca %struct._GimpZoomModelClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpZoomModelClass* %klass, %struct._GimpZoomModelClass** %klass.addr, align 8
  %0 = load %struct._GimpZoomModelClass*, %struct._GimpZoomModelClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpZoomModelClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpZoomModelClass*, %struct._GimpZoomModelClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpZoomModelClass* %3 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %4, i32 0, i32 0
  %5 = load i64, i64* %g_type, align 8
  %call1 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i64 %5, i32 2, i32 136, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @_gimp_widgets_marshal_VOID__DOUBLE_DOUBLE, i64 4, i32 2, i64 60, i64 60)
  store i32 %call1, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @zoom_model_signals, i32 0, i64 0), align 4
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_zoom_model_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_zoom_model_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call2 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i8* null, double 3.906250e-03, double 2.560000e+02, double 1.000000e+00, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %8, i32 1, %struct._GParamSpec* %call2)
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i32 0, i32 0), i8* null, double 3.906250e-03, double 2.560000e+02, double 3.906250e-03, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %9, i32 2, %struct._GParamSpec* %call3)
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call4 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0), i8* null, double 3.906250e-03, double 2.560000e+02, double 2.560000e+02, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %10, i32 3, %struct._GParamSpec* %call4)
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.19, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i32 225)
  call void @g_object_class_install_property(%struct._GObjectClass* %11, i32 4, %struct._GParamSpec* %call5)
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.22, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i32 225)
  call void @g_object_class_install_property(%struct._GObjectClass* %12, i32 5, %struct._GParamSpec* %call6)
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %14 = bitcast %struct._GObjectClass* %13 to i8*
  call void @g_type_class_add_private(i8* %14, i64 24)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @_gimp_widgets_marshal_VOID__DOUBLE_DOUBLE(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_zoom_model_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #2 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %priv = alloca %struct.GimpZoomModelPrivate*, align 8
  %previous_value = alloca double, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GimpZoomModel*
  %priv1 = getelementptr inbounds %struct._GimpZoomModel, %struct._GimpZoomModel* %1, i32 0, i32 1
  %2 = load i8*, i8** %priv1, align 8
  %3 = bitcast i8* %2 to %struct.GimpZoomModelPrivate*
  store %struct.GimpZoomModelPrivate* %3, %struct.GimpZoomModelPrivate** %priv, align 8
  %4 = load %struct.GimpZoomModelPrivate*, %struct.GimpZoomModelPrivate** %priv, align 8
  %value2 = getelementptr inbounds %struct.GimpZoomModelPrivate, %struct.GimpZoomModelPrivate* %4, i32 0, i32 0
  %5 = load double, double* %value2, align 8
  store double %5, double* %previous_value, align 8
  %6 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void @g_object_freeze_notify(%struct._GObject* %6)
  %7 = load i32, i32* %property_id.addr, align 4
  switch i32 %7, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.4
    i32 3, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call = call double @g_value_get_double(%struct._GValue* %8)
  %9 = load %struct.GimpZoomModelPrivate*, %struct.GimpZoomModelPrivate** %priv, align 8
  %value3 = getelementptr inbounds %struct.GimpZoomModelPrivate, %struct.GimpZoomModelPrivate* %9, i32 0, i32 0
  store double %call, double* %value3, align 8
  %10 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void @g_object_notify(%struct._GObject* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0))
  %11 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void @g_object_notify(%struct._GObject* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0))
  %12 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void @g_object_notify(%struct._GObject* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0))
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %13 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call5 = call double @g_value_get_double(%struct._GValue* %13)
  %14 = load %struct.GimpZoomModelPrivate*, %struct.GimpZoomModelPrivate** %priv, align 8
  %maximum = getelementptr inbounds %struct.GimpZoomModelPrivate, %struct.GimpZoomModelPrivate* %14, i32 0, i32 2
  %15 = load double, double* %maximum, align 8
  %cmp = fcmp olt double %call5, %15
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.4
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call double @g_value_get_double(%struct._GValue* %16)
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.4
  %17 = load %struct.GimpZoomModelPrivate*, %struct.GimpZoomModelPrivate** %priv, align 8
  %maximum7 = getelementptr inbounds %struct.GimpZoomModelPrivate, %struct.GimpZoomModelPrivate* %17, i32 0, i32 2
  %18 = load double, double* %maximum7, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %call6, %cond.true ], [ %18, %cond.false ]
  %19 = load %struct.GimpZoomModelPrivate*, %struct.GimpZoomModelPrivate** %priv, align 8
  %minimum = getelementptr inbounds %struct.GimpZoomModelPrivate, %struct.GimpZoomModelPrivate* %19, i32 0, i32 1
  store double %cond, double* %minimum, align 8
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %20 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call9 = call double @g_value_get_double(%struct._GValue* %20)
  %21 = load %struct.GimpZoomModelPrivate*, %struct.GimpZoomModelPrivate** %priv, align 8
  %minimum10 = getelementptr inbounds %struct.GimpZoomModelPrivate, %struct.GimpZoomModelPrivate* %21, i32 0, i32 1
  %22 = load double, double* %minimum10, align 8
  %cmp11 = fcmp ogt double %call9, %22
  br i1 %cmp11, label %cond.true.12, label %cond.false.14

cond.true.12:                                     ; preds = %sw.bb.8
  %23 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call13 = call double @g_value_get_double(%struct._GValue* %23)
  br label %cond.end.16

cond.false.14:                                    ; preds = %sw.bb.8
  %24 = load %struct.GimpZoomModelPrivate*, %struct.GimpZoomModelPrivate** %priv, align 8
  %minimum15 = getelementptr inbounds %struct.GimpZoomModelPrivate, %struct.GimpZoomModelPrivate* %24, i32 0, i32 1
  %25 = load double, double* %minimum15, align 8
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.14, %cond.true.12
  %cond17 = phi double [ %call13, %cond.true.12 ], [ %25, %cond.false.14 ]
  %26 = load %struct.GimpZoomModelPrivate*, %struct.GimpZoomModelPrivate** %priv, align 8
  %maximum18 = getelementptr inbounds %struct.GimpZoomModelPrivate, %struct.GimpZoomModelPrivate* %26, i32 0, i32 2
  store double %cond17, double* %maximum18, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %27 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %27, %struct._GObject** %_glib__object, align 8
  %28 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %28, %struct._GParamSpec** %_glib__pspec, align 8
  %29 = load i32, i32* %property_id.addr, align 4
  store i32 %29, i32* %_glib__property_id, align 4
  %30 = load i32, i32* %_glib__property_id, align 4
  %31 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %31, i32 0, i32 1
  %32 = load i8*, i8** %name, align 8
  %33 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %34 = bitcast %struct._GParamSpec* %33 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %34, i32 0, i32 0
  %35 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %35, i32 0, i32 0
  %36 = load i64, i64* %g_type, align 8
  %call19 = call i8* @g_type_name(i64 %36)
  %37 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %38 = bitcast %struct._GObject* %37 to %struct._GTypeInstance*
  %g_class20 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %38, i32 0, i32 0
  %39 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class20, align 8
  %g_type21 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %39, i32 0, i32 0
  %40 = load i64, i64* %g_type21, align 8
  %call22 = call i8* @g_type_name(i64 %40)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0), i32 200, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i32 %30, i8* %32, i8* %call19, i8* %call22)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %cond.end.16, %cond.end, %sw.bb
  %41 = load %struct.GimpZoomModelPrivate*, %struct.GimpZoomModelPrivate** %priv, align 8
  %value23 = getelementptr inbounds %struct.GimpZoomModelPrivate, %struct.GimpZoomModelPrivate* %41, i32 0, i32 0
  %42 = load double, double* %value23, align 8
  %43 = load %struct.GimpZoomModelPrivate*, %struct.GimpZoomModelPrivate** %priv, align 8
  %maximum24 = getelementptr inbounds %struct.GimpZoomModelPrivate, %struct.GimpZoomModelPrivate* %43, i32 0, i32 2
  %44 = load double, double* %maximum24, align 8
  %cmp25 = fcmp ogt double %42, %44
  br i1 %cmp25, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.epilog
  %45 = load %struct.GimpZoomModelPrivate*, %struct.GimpZoomModelPrivate** %priv, align 8
  %value26 = getelementptr inbounds %struct.GimpZoomModelPrivate, %struct.GimpZoomModelPrivate* %45, i32 0, i32 0
  %46 = load double, double* %value26, align 8
  %47 = load %struct.GimpZoomModelPrivate*, %struct.GimpZoomModelPrivate** %priv, align 8
  %minimum27 = getelementptr inbounds %struct.GimpZoomModelPrivate, %struct.GimpZoomModelPrivate* %47, i32 0, i32 1
  %48 = load double, double* %minimum27, align 8
  %cmp28 = fcmp olt double %46, %48
  br i1 %cmp28, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %sw.epilog
  %49 = load %struct.GimpZoomModelPrivate*, %struct.GimpZoomModelPrivate** %priv, align 8
  %value29 = getelementptr inbounds %struct.GimpZoomModelPrivate, %struct.GimpZoomModelPrivate* %49, i32 0, i32 0
  %50 = load double, double* %value29, align 8
  %51 = load %struct.GimpZoomModelPrivate*, %struct.GimpZoomModelPrivate** %priv, align 8
  %maximum30 = getelementptr inbounds %struct.GimpZoomModelPrivate, %struct.GimpZoomModelPrivate* %51, i32 0, i32 2
  %52 = load double, double* %maximum30, align 8
  %cmp31 = fcmp ogt double %50, %52
  br i1 %cmp31, label %cond.true.32, label %cond.false.34

cond.true.32:                                     ; preds = %if.then
  %53 = load %struct.GimpZoomModelPrivate*, %struct.GimpZoomModelPrivate** %priv, align 8
  %maximum33 = getelementptr inbounds %struct.GimpZoomModelPrivate, %struct.GimpZoomModelPrivate* %53, i32 0, i32 2
  %54 = load double, double* %maximum33, align 8
  br label %cond.end.44

cond.false.34:                                    ; preds = %if.then
  %55 = load %struct.GimpZoomModelPrivate*, %struct.GimpZoomModelPrivate** %priv, align 8
  %value35 = getelementptr inbounds %struct.GimpZoomModelPrivate, %struct.GimpZoomModelPrivate* %55, i32 0, i32 0
  %56 = load double, double* %value35, align 8
  %57 = load %struct.GimpZoomModelPrivate*, %struct.GimpZoomModelPrivate** %priv, align 8
  %minimum36 = getelementptr inbounds %struct.GimpZoomModelPrivate, %struct.GimpZoomModelPrivate* %57, i32 0, i32 1
  %58 = load double, double* %minimum36, align 8
  %cmp37 = fcmp olt double %56, %58
  br i1 %cmp37, label %cond.true.38, label %cond.false.40

cond.true.38:                                     ; preds = %cond.false.34
  %59 = load %struct.GimpZoomModelPrivate*, %struct.GimpZoomModelPrivate** %priv, align 8
  %minimum39 = getelementptr inbounds %struct.GimpZoomModelPrivate, %struct.GimpZoomModelPrivate* %59, i32 0, i32 1
  %60 = load double, double* %minimum39, align 8
  br label %cond.end.42

cond.false.40:                                    ; preds = %cond.false.34
  %61 = load %struct.GimpZoomModelPrivate*, %struct.GimpZoomModelPrivate** %priv, align 8
  %value41 = getelementptr inbounds %struct.GimpZoomModelPrivate, %struct.GimpZoomModelPrivate* %61, i32 0, i32 0
  %62 = load double, double* %value41, align 8
  br label %cond.end.42

cond.end.42:                                      ; preds = %cond.false.40, %cond.true.38
  %cond43 = phi double [ %60, %cond.true.38 ], [ %62, %cond.false.40 ]
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.end.42, %cond.true.32
  %cond45 = phi double [ %54, %cond.true.32 ], [ %cond43, %cond.end.42 ]
  %63 = load %struct.GimpZoomModelPrivate*, %struct.GimpZoomModelPrivate** %priv, align 8
  %value46 = getelementptr inbounds %struct.GimpZoomModelPrivate, %struct.GimpZoomModelPrivate* %63, i32 0, i32 0
  store double %cond45, double* %value46, align 8
  %64 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void @g_object_notify(%struct._GObject* %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0))
  %65 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void @g_object_notify(%struct._GObject* %65, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0))
  %66 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void @g_object_notify(%struct._GObject* %66, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %cond.end.44, %lor.lhs.false
  %67 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void @g_object_thaw_notify(%struct._GObject* %67)
  %68 = load %struct.GimpZoomModelPrivate*, %struct.GimpZoomModelPrivate** %priv, align 8
  %value47 = getelementptr inbounds %struct.GimpZoomModelPrivate, %struct.GimpZoomModelPrivate* %68, i32 0, i32 0
  %69 = load double, double* %value47, align 8
  %70 = load double, double* %previous_value, align 8
  %cmp48 = fcmp une double %69, %70
  br i1 %cmp48, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %if.end
  %71 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %72 = bitcast %struct._GObject* %71 to i8*
  %73 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @zoom_model_signals, i32 0, i64 0), align 4
  %74 = load double, double* %previous_value, align 8
  %75 = load %struct.GimpZoomModelPrivate*, %struct.GimpZoomModelPrivate** %priv, align 8
  %value50 = getelementptr inbounds %struct.GimpZoomModelPrivate, %struct.GimpZoomModelPrivate* %75, i32 0, i32 0
  %76 = load double, double* %value50, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %72, i32 %73, i32 0, double %74, double %76)
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_zoom_model_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #2 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %priv = alloca %struct.GimpZoomModelPrivate*, align 8
  %tmp = alloca i8*, align 8
  %numerator = alloca i32, align 4
  %denominator = alloca i32, align 4
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GimpZoomModel*
  %priv1 = getelementptr inbounds %struct._GimpZoomModel, %struct._GimpZoomModel* %1, i32 0, i32 1
  %2 = load i8*, i8** %priv1, align 8
  %3 = bitcast i8* %2 to %struct.GimpZoomModelPrivate*
  store %struct.GimpZoomModelPrivate* %3, %struct.GimpZoomModelPrivate** %priv, align 8
  %4 = load i32, i32* %property_id.addr, align 4
  switch i32 %4, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.4
    i32 4, label %sw.bb.5
    i32 5, label %sw.bb.10
  ]

sw.bb:                                            ; preds = %entry
  %5 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %6 = load %struct.GimpZoomModelPrivate*, %struct.GimpZoomModelPrivate** %priv, align 8
  %value2 = getelementptr inbounds %struct.GimpZoomModelPrivate, %struct.GimpZoomModelPrivate* %6, i32 0, i32 0
  %7 = load double, double* %value2, align 8
  call void @g_value_set_double(%struct._GValue* %5, double %7)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %9 = load %struct.GimpZoomModelPrivate*, %struct.GimpZoomModelPrivate** %priv, align 8
  %minimum = getelementptr inbounds %struct.GimpZoomModelPrivate, %struct.GimpZoomModelPrivate* %9, i32 0, i32 1
  %10 = load double, double* %minimum, align 8
  call void @g_value_set_double(%struct._GValue* %8, double %10)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %11 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %12 = load %struct.GimpZoomModelPrivate*, %struct.GimpZoomModelPrivate** %priv, align 8
  %maximum = getelementptr inbounds %struct.GimpZoomModelPrivate, %struct.GimpZoomModelPrivate* %12, i32 0, i32 2
  %13 = load double, double* %maximum, align 8
  call void @g_value_set_double(%struct._GValue* %11, double %13)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %14 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %15 = bitcast %struct._GObject* %14 to %struct._GTypeInstance*
  %call = call i64 @gimp_zoom_model_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call)
  %16 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpZoomModel*
  call void @gimp_zoom_model_get_fraction(%struct._GimpZoomModel* %16, i32* %numerator, i32* %denominator)
  %17 = load i32, i32* %numerator, align 4
  %18 = load i32, i32* %denominator, align 4
  %call9 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %17, i32 %18)
  store i8* %call9, i8** %tmp, align 8
  %19 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %20 = load i8*, i8** %tmp, align 8
  call void @g_value_set_string(%struct._GValue* %19, i8* %20)
  %21 = load i8*, i8** %tmp, align 8
  call void @g_free(i8* %21)
  br label %sw.epilog

sw.bb.10:                                         ; preds = %entry
  %22 = load %struct.GimpZoomModelPrivate*, %struct.GimpZoomModelPrivate** %priv, align 8
  %value11 = getelementptr inbounds %struct.GimpZoomModelPrivate, %struct.GimpZoomModelPrivate* %22, i32 0, i32 0
  %23 = load double, double* %value11, align 8
  %cmp = fcmp oge double %23, 1.500000e-01
  %cond = select i1 %cmp, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0)
  %24 = load %struct.GimpZoomModelPrivate*, %struct.GimpZoomModelPrivate** %priv, align 8
  %value12 = getelementptr inbounds %struct.GimpZoomModelPrivate, %struct.GimpZoomModelPrivate* %24, i32 0, i32 0
  %25 = load double, double* %value12, align 8
  %mul = fmul double %25, 1.000000e+02
  %call13 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %cond, double %mul)
  store i8* %call13, i8** %tmp, align 8
  %26 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %27 = load i8*, i8** %tmp, align 8
  call void @g_value_set_string(%struct._GValue* %26, i8* %27)
  %28 = load i8*, i8** %tmp, align 8
  call void @g_free(i8* %28)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %29 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %29, %struct._GObject** %_glib__object, align 8
  %30 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %30, %struct._GParamSpec** %_glib__pspec, align 8
  %31 = load i32, i32* %property_id.addr, align 4
  store i32 %31, i32* %_glib__property_id, align 4
  %32 = load i32, i32* %_glib__property_id, align 4
  %33 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %33, i32 0, i32 1
  %34 = load i8*, i8** %name, align 8
  %35 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %36 = bitcast %struct._GParamSpec* %35 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %36, i32 0, i32 0
  %37 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %37, i32 0, i32 0
  %38 = load i64, i64* %g_type, align 8
  %call17 = call i8* @g_type_name(i64 %38)
  %39 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %40 = bitcast %struct._GObject* %39 to %struct._GTypeInstance*
  %g_class18 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %40, i32 0, i32 0
  %41 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class18, align 8
  %g_type19 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %41, i32 0, i32 0
  %42 = load i64, i64* %g_type19, align 8
  %call20 = call i8* @g_type_name(i64 %42)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0), i32 267, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i32 %32, i8* %34, i8* %call17, i8* %call20)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.10, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

declare %struct._GParamSpec* @g_param_spec_string(i8*, i8*, i8*, i8*, i32) #1

declare void @g_type_class_add_private(i8*, i64) #1

declare void @g_object_freeze_notify(%struct._GObject*) #1

declare double @g_value_get_double(%struct._GValue*) #1

declare void @g_object_notify(%struct._GObject*, i8*) #1

declare i8* @g_type_name(i64) #1

declare void @g_object_thaw_notify(%struct._GObject*) #1

declare void @g_value_set_double(%struct._GValue*, double) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare void @g_value_set_string(%struct._GValue*, i8*) #1

declare void @g_free(i8*) #1

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

declare %struct._GtkWidget* @gtk_image_new_from_stock(i8*, i32) #1

declare %struct._GtkWidget* @gtk_button_new() #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #4

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_button_new_from_stock(i8*) #1

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
