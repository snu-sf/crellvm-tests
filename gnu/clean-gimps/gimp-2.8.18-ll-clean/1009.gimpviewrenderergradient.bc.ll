; ModuleID = './app/widgets/gimpviewrenderergradient.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpViewRendererGradientClass = type { %struct._GimpViewRendererClass }
%struct._GimpViewRendererClass = type { %struct._GObjectClass, %struct._GdkPixbuf*, i32, i32, i32, i32, void (%struct._GimpViewRenderer*)*, void (%struct._GimpViewRenderer*, %struct._GimpContext*)*, void (%struct._GimpViewRenderer*)*, void (%struct._GimpViewRenderer*, %struct._GtkWidget*, %struct._cairo*, i32, i32)*, void (%struct._GimpViewRenderer*, %struct._GtkWidget*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GdkPixbuf = type opaque
%struct._GimpViewRenderer = type { %struct._GObject, %struct._GimpContext*, i64, %struct._GimpViewable*, i32, i32, i32, i8, i32, %struct._GimpRGB, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GdkPixbuf*, i8*, i32, i32, i32 }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GimpContext = type opaque
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
%struct._cairo = type opaque
%struct._GimpViewRendererGradient = type { %struct._GimpViewRenderer, double, double, i32, i32 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GimpGradient = type { %struct._GimpData, %struct._GimpGradientSegment* }
%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpGradientSegment = type { double, double, double, i32, %struct._GimpRGB, i32, %struct._GimpRGB, i32, i32, %struct._GimpGradientSegment*, %struct._GimpGradientSegment* }

@gimp_view_renderer_gradient_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"GimpViewRendererGradient\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_view_renderer_gradient_set_offsets = private unnamed_addr constant [40 x i8] c"gimp_view_renderer_gradient_set_offsets\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"GIMP_IS_VIEW_RENDERER_GRADIENT (renderer)\00", align 1
@__func__.gimp_view_renderer_gradient_set_reverse = private unnamed_addr constant [40 x i8] c"gimp_view_renderer_gradient_set_reverse\00", align 1
@gimp_view_renderer_gradient_parent_class = internal global i8* null, align 8
@GimpViewRendererGradient_private_offset = internal global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"foreground-changed\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"background-changed\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_view_renderer_gradient_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_view_renderer_gradient_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_view_renderer_gradient_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_view_renderer_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 200, void (i8*, i8*)* bitcast (void (i8*)* @gimp_view_renderer_gradient_class_intern_init to void (i8*, i8*)*), i32 176, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpViewRendererGradient*)* @gimp_view_renderer_gradient_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_view_renderer_gradient_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_view_renderer_gradient_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_view_renderer_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_view_renderer_gradient_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_view_renderer_gradient_parent_class, align 8
  %1 = load i32, i32* @GimpViewRendererGradient_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpViewRendererGradient_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpViewRendererGradientClass*
  call void @gimp_view_renderer_gradient_class_init(%struct._GimpViewRendererGradientClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_view_renderer_gradient_init(%struct._GimpViewRendererGradient* %renderer) #3 {
entry:
  %renderer.addr = alloca %struct._GimpViewRendererGradient*, align 8
  store %struct._GimpViewRendererGradient* %renderer, %struct._GimpViewRendererGradient** %renderer.addr, align 8
  %0 = load %struct._GimpViewRendererGradient*, %struct._GimpViewRendererGradient** %renderer.addr, align 8
  %left = getelementptr inbounds %struct._GimpViewRendererGradient, %struct._GimpViewRendererGradient* %0, i32 0, i32 1
  store double 0.000000e+00, double* %left, align 8
  %1 = load %struct._GimpViewRendererGradient*, %struct._GimpViewRendererGradient** %renderer.addr, align 8
  %right = getelementptr inbounds %struct._GimpViewRendererGradient, %struct._GimpViewRendererGradient* %1, i32 0, i32 2
  store double 1.000000e+00, double* %right, align 8
  %2 = load %struct._GimpViewRendererGradient*, %struct._GimpViewRendererGradient** %renderer.addr, align 8
  %reverse = getelementptr inbounds %struct._GimpViewRendererGradient, %struct._GimpViewRendererGradient* %2, i32 0, i32 3
  store i32 0, i32* %reverse, align 4
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_view_renderer_gradient_set_offsets(%struct._GimpViewRendererGradient* %renderer, double %left, double %right) #3 {
entry:
  %renderer.addr = alloca %struct._GimpViewRendererGradient*, align 8
  %left.addr = alloca double, align 8
  %right.addr = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpViewRendererGradient* %renderer, %struct._GimpViewRendererGradient** %renderer.addr, align 8
  store double %left, double* %left.addr, align 8
  store double %right, double* %right.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpViewRendererGradient*, %struct._GimpViewRendererGradient** %renderer.addr, align 8
  %1 = bitcast %struct._GimpViewRendererGradient* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_view_renderer_gradient_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_view_renderer_gradient_set_offsets, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.36

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load double, double* %left.addr, align 8
  %cmp11 = fcmp ogt double %13, 1.000000e+00
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  br label %cond.end.15

cond.false:                                       ; preds = %do.end
  %14 = load double, double* %left.addr, align 8
  %cmp12 = fcmp olt double %14, 0.000000e+00
  br i1 %cmp12, label %cond.true.13, label %cond.false.14

cond.true.13:                                     ; preds = %cond.false
  br label %cond.end

cond.false.14:                                    ; preds = %cond.false
  %15 = load double, double* %left.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.14, %cond.true.13
  %cond = phi double [ 0.000000e+00, %cond.true.13 ], [ %15, %cond.false.14 ]
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.end, %cond.true
  %cond16 = phi double [ 1.000000e+00, %cond.true ], [ %cond, %cond.end ]
  store double %cond16, double* %left.addr, align 8
  %16 = load double, double* %right.addr, align 8
  %cmp17 = fcmp ogt double %16, 1.000000e+00
  br i1 %cmp17, label %cond.true.18, label %cond.false.19

cond.true.18:                                     ; preds = %cond.end.15
  br label %cond.end.25

cond.false.19:                                    ; preds = %cond.end.15
  %17 = load double, double* %right.addr, align 8
  %18 = load double, double* %left.addr, align 8
  %cmp20 = fcmp olt double %17, %18
  br i1 %cmp20, label %cond.true.21, label %cond.false.22

cond.true.21:                                     ; preds = %cond.false.19
  %19 = load double, double* %left.addr, align 8
  br label %cond.end.23

cond.false.22:                                    ; preds = %cond.false.19
  %20 = load double, double* %right.addr, align 8
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.21
  %cond24 = phi double [ %19, %cond.true.21 ], [ %20, %cond.false.22 ]
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.end.23, %cond.true.18
  %cond26 = phi double [ 1.000000e+00, %cond.true.18 ], [ %cond24, %cond.end.23 ]
  store double %cond26, double* %right.addr, align 8
  %21 = load double, double* %left.addr, align 8
  %22 = load %struct._GimpViewRendererGradient*, %struct._GimpViewRendererGradient** %renderer.addr, align 8
  %left27 = getelementptr inbounds %struct._GimpViewRendererGradient, %struct._GimpViewRendererGradient* %22, i32 0, i32 1
  %23 = load double, double* %left27, align 8
  %cmp28 = fcmp une double %21, %23
  br i1 %cmp28, label %if.then.31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.25
  %24 = load double, double* %right.addr, align 8
  %25 = load %struct._GimpViewRendererGradient*, %struct._GimpViewRendererGradient** %renderer.addr, align 8
  %right29 = getelementptr inbounds %struct._GimpViewRendererGradient, %struct._GimpViewRendererGradient* %25, i32 0, i32 2
  %26 = load double, double* %right29, align 8
  %cmp30 = fcmp une double %24, %26
  br i1 %cmp30, label %if.then.31, label %if.end.36

if.then.31:                                       ; preds = %lor.lhs.false, %cond.end.25
  %27 = load double, double* %left.addr, align 8
  %28 = load %struct._GimpViewRendererGradient*, %struct._GimpViewRendererGradient** %renderer.addr, align 8
  %left32 = getelementptr inbounds %struct._GimpViewRendererGradient, %struct._GimpViewRendererGradient* %28, i32 0, i32 1
  store double %27, double* %left32, align 8
  %29 = load double, double* %right.addr, align 8
  %30 = load %struct._GimpViewRendererGradient*, %struct._GimpViewRendererGradient** %renderer.addr, align 8
  %right33 = getelementptr inbounds %struct._GimpViewRendererGradient, %struct._GimpViewRendererGradient* %30, i32 0, i32 2
  store double %29, double* %right33, align 8
  %31 = load %struct._GimpViewRendererGradient*, %struct._GimpViewRendererGradient** %renderer.addr, align 8
  %32 = bitcast %struct._GimpViewRendererGradient* %31 to %struct._GTypeInstance*
  %call34 = call i64 @gimp_view_renderer_get_type() #6
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call34)
  %33 = bitcast %struct._GTypeInstance* %call35 to %struct._GimpViewRenderer*
  call void @gimp_view_renderer_invalidate(%struct._GimpViewRenderer* %33)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.9, %if.then.31, %lor.lhs.false
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare void @gimp_view_renderer_invalidate(%struct._GimpViewRenderer*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_view_renderer_gradient_set_reverse(%struct._GimpViewRendererGradient* %renderer, i32 %reverse) #3 {
entry:
  %renderer.addr = alloca %struct._GimpViewRendererGradient*, align 8
  %reverse.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpViewRendererGradient* %renderer, %struct._GimpViewRendererGradient** %renderer.addr, align 8
  store i32 %reverse, i32* %reverse.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpViewRendererGradient*, %struct._GimpViewRendererGradient** %renderer.addr, align 8
  %1 = bitcast %struct._GimpViewRendererGradient* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_view_renderer_gradient_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_view_renderer_gradient_set_reverse, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.20

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %reverse.addr, align 4
  %14 = load %struct._GimpViewRendererGradient*, %struct._GimpViewRendererGradient** %renderer.addr, align 8
  %reverse11 = getelementptr inbounds %struct._GimpViewRendererGradient, %struct._GimpViewRendererGradient* %14, i32 0, i32 3
  %15 = load i32, i32* %reverse11, align 4
  %cmp12 = icmp ne i32 %13, %15
  br i1 %cmp12, label %if.then.13, label %if.end.20

if.then.13:                                       ; preds = %do.end
  %16 = load i32, i32* %reverse.addr, align 4
  %tobool14 = icmp ne i32 %16, 0
  %cond = select i1 %tobool14, i32 1, i32 0
  %17 = load %struct._GimpViewRendererGradient*, %struct._GimpViewRendererGradient** %renderer.addr, align 8
  %reverse15 = getelementptr inbounds %struct._GimpViewRendererGradient, %struct._GimpViewRendererGradient* %17, i32 0, i32 3
  store i32 %cond, i32* %reverse15, align 4
  %18 = load %struct._GimpViewRendererGradient*, %struct._GimpViewRendererGradient** %renderer.addr, align 8
  %19 = bitcast %struct._GimpViewRendererGradient* %18 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_view_renderer_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call16)
  %20 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpViewRenderer*
  call void @gimp_view_renderer_invalidate(%struct._GimpViewRenderer* %20)
  %21 = load %struct._GimpViewRendererGradient*, %struct._GimpViewRendererGradient** %renderer.addr, align 8
  %22 = bitcast %struct._GimpViewRendererGradient* %21 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_view_renderer_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call18)
  %23 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpViewRenderer*
  call void @gimp_view_renderer_update(%struct._GimpViewRenderer* %23)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.9, %if.then.13, %do.end
  ret void
}

declare void @gimp_view_renderer_update(%struct._GimpViewRenderer*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_view_renderer_gradient_class_init(%struct._GimpViewRendererGradientClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpViewRendererGradientClass*, align 8
  %renderer_class = alloca %struct._GimpViewRendererClass*, align 8
  store %struct._GimpViewRendererGradientClass* %klass, %struct._GimpViewRendererGradientClass** %klass.addr, align 8
  %0 = load %struct._GimpViewRendererGradientClass*, %struct._GimpViewRendererGradientClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpViewRendererGradientClass* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_view_renderer_get_type() #6
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpViewRendererClass*
  store %struct._GimpViewRendererClass* %2, %struct._GimpViewRendererClass** %renderer_class, align 8
  %3 = load %struct._GimpViewRendererClass*, %struct._GimpViewRendererClass** %renderer_class, align 8
  %set_context = getelementptr inbounds %struct._GimpViewRendererClass, %struct._GimpViewRendererClass* %3, i32 0, i32 7
  store void (%struct._GimpViewRenderer*, %struct._GimpContext*)* @gimp_view_renderer_gradient_set_context, void (%struct._GimpViewRenderer*, %struct._GimpContext*)** %set_context, align 8
  %4 = load %struct._GimpViewRendererClass*, %struct._GimpViewRendererClass** %renderer_class, align 8
  %invalidate = getelementptr inbounds %struct._GimpViewRendererClass, %struct._GimpViewRendererClass* %4, i32 0, i32 8
  store void (%struct._GimpViewRenderer*)* @gimp_view_renderer_gradient_invalidate, void (%struct._GimpViewRenderer*)** %invalidate, align 8
  %5 = load %struct._GimpViewRendererClass*, %struct._GimpViewRendererClass** %renderer_class, align 8
  %render = getelementptr inbounds %struct._GimpViewRendererClass, %struct._GimpViewRendererClass* %5, i32 0, i32 10
  store void (%struct._GimpViewRenderer*, %struct._GtkWidget*)* @gimp_view_renderer_gradient_render, void (%struct._GimpViewRenderer*, %struct._GtkWidget*)** %render, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_view_renderer_gradient_set_context(%struct._GimpViewRenderer* %renderer, %struct._GimpContext* %context) #3 {
entry:
  %renderer.addr = alloca %struct._GimpViewRenderer*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %rendergrad = alloca %struct._GimpViewRendererGradient*, align 8
  store %struct._GimpViewRenderer* %renderer, %struct._GimpViewRenderer** %renderer.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %1 = bitcast %struct._GimpViewRenderer* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_view_renderer_gradient_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpViewRendererGradient*
  store %struct._GimpViewRendererGradient* %2, %struct._GimpViewRendererGradient** %rendergrad, align 8
  %3 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %context2 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %3, i32 0, i32 1
  %4 = load %struct._GimpContext*, %struct._GimpContext** %context2, align 8
  %tobool = icmp ne %struct._GimpContext* %4, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct._GimpViewRendererGradient*, %struct._GimpViewRendererGradient** %rendergrad, align 8
  %has_fg_bg_segments = getelementptr inbounds %struct._GimpViewRendererGradient, %struct._GimpViewRendererGradient* %5, i32 0, i32 4
  %6 = load i32, i32* %has_fg_bg_segments, align 4
  %tobool3 = icmp ne i32 %6, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %context4 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %7, i32 0, i32 1
  %8 = load %struct._GimpContext*, %struct._GimpContext** %context4, align 8
  %9 = bitcast %struct._GimpContext* %8 to i8*
  %10 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %11 = bitcast %struct._GimpViewRenderer* %10 to i8*
  %call5 = call i32 @g_signal_handlers_disconnect_matched(i8* %9, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpContext*, %struct._GimpRGB*, %struct._GimpViewRenderer*)* @gimp_view_renderer_gradient_fg_bg_changed to i8*), i8* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %12 = load i8*, i8** @gimp_view_renderer_gradient_parent_class, align 8
  %13 = bitcast i8* %12 to %struct._GTypeClass*
  %call6 = call i64 @gimp_view_renderer_get_type() #6
  %call7 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %13, i64 %call6)
  %14 = bitcast %struct._GTypeClass* %call7 to %struct._GimpViewRendererClass*
  %set_context = getelementptr inbounds %struct._GimpViewRendererClass, %struct._GimpViewRendererClass* %14, i32 0, i32 7
  %15 = load void (%struct._GimpViewRenderer*, %struct._GimpContext*)*, void (%struct._GimpViewRenderer*, %struct._GimpContext*)** %set_context, align 8
  %16 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %17 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void %15(%struct._GimpViewRenderer* %16, %struct._GimpContext* %17)
  %18 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %context8 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %18, i32 0, i32 1
  %19 = load %struct._GimpContext*, %struct._GimpContext** %context8, align 8
  %tobool9 = icmp ne %struct._GimpContext* %19, null
  br i1 %tobool9, label %land.lhs.true.10, label %if.end.19

land.lhs.true.10:                                 ; preds = %if.end
  %20 = load %struct._GimpViewRendererGradient*, %struct._GimpViewRendererGradient** %rendergrad, align 8
  %has_fg_bg_segments11 = getelementptr inbounds %struct._GimpViewRendererGradient, %struct._GimpViewRendererGradient* %20, i32 0, i32 4
  %21 = load i32, i32* %has_fg_bg_segments11, align 4
  %tobool12 = icmp ne i32 %21, 0
  br i1 %tobool12, label %if.then.13, label %if.end.19

if.then.13:                                       ; preds = %land.lhs.true.10
  %22 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %context14 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %22, i32 0, i32 1
  %23 = load %struct._GimpContext*, %struct._GimpContext** %context14, align 8
  %24 = bitcast %struct._GimpContext* %23 to i8*
  %25 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %26 = bitcast %struct._GimpViewRenderer* %25 to i8*
  %call15 = call i64 @g_signal_connect_data(i8* %24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContext*, %struct._GimpRGB*, %struct._GimpViewRenderer*)* @gimp_view_renderer_gradient_fg_bg_changed to void ()*), i8* %26, void (i8*, %struct._GClosure*)* null, i32 0)
  %27 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %context16 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %27, i32 0, i32 1
  %28 = load %struct._GimpContext*, %struct._GimpContext** %context16, align 8
  %29 = bitcast %struct._GimpContext* %28 to i8*
  %30 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %31 = bitcast %struct._GimpViewRenderer* %30 to i8*
  %call17 = call i64 @g_signal_connect_data(i8* %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContext*, %struct._GimpRGB*, %struct._GimpViewRenderer*)* @gimp_view_renderer_gradient_fg_bg_changed to void ()*), i8* %31, void (i8*, %struct._GClosure*)* null, i32 0)
  %32 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %context18 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %32, i32 0, i32 1
  %33 = load %struct._GimpContext*, %struct._GimpContext** %context18, align 8
  %34 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  call void @gimp_view_renderer_gradient_fg_bg_changed(%struct._GimpContext* %33, %struct._GimpRGB* null, %struct._GimpViewRenderer* %34)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.13, %land.lhs.true.10, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_view_renderer_gradient_invalidate(%struct._GimpViewRenderer* %renderer) #3 {
entry:
  %renderer.addr = alloca %struct._GimpViewRenderer*, align 8
  %rendergrad = alloca %struct._GimpViewRendererGradient*, align 8
  %has_fg_bg_segments = alloca i32, align 4
  store %struct._GimpViewRenderer* %renderer, %struct._GimpViewRenderer** %renderer.addr, align 8
  store i32 0, i32* %has_fg_bg_segments, align 4
  %0 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %1 = bitcast %struct._GimpViewRenderer* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_view_renderer_gradient_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpViewRendererGradient*
  store %struct._GimpViewRendererGradient* %2, %struct._GimpViewRendererGradient** %rendergrad, align 8
  %3 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %viewable = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %3, i32 0, i32 3
  %4 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %tobool = icmp ne %struct._GimpViewable* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %viewable2 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %5, i32 0, i32 3
  %6 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable2, align 8
  %7 = bitcast %struct._GimpViewable* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_gradient_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpGradient*
  %call5 = call i32 @gimp_gradient_has_fg_bg_segments(%struct._GimpGradient* %8)
  store i32 %call5, i32* %has_fg_bg_segments, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GimpViewRendererGradient*, %struct._GimpViewRendererGradient** %rendergrad, align 8
  %has_fg_bg_segments6 = getelementptr inbounds %struct._GimpViewRendererGradient, %struct._GimpViewRendererGradient* %9, i32 0, i32 4
  %10 = load i32, i32* %has_fg_bg_segments6, align 4
  %11 = load i32, i32* %has_fg_bg_segments, align 4
  %cmp = icmp ne i32 %10, %11
  br i1 %cmp, label %if.then.7, label %if.end.22

if.then.7:                                        ; preds = %if.end
  %12 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %context = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %12, i32 0, i32 1
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool8 = icmp ne %struct._GimpContext* %13, null
  br i1 %tobool8, label %if.then.9, label %if.end.20

if.then.9:                                        ; preds = %if.then.7
  %14 = load %struct._GimpViewRendererGradient*, %struct._GimpViewRendererGradient** %rendergrad, align 8
  %has_fg_bg_segments10 = getelementptr inbounds %struct._GimpViewRendererGradient, %struct._GimpViewRendererGradient* %14, i32 0, i32 4
  %15 = load i32, i32* %has_fg_bg_segments10, align 4
  %tobool11 = icmp ne i32 %15, 0
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then.9
  %16 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %context13 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %16, i32 0, i32 1
  %17 = load %struct._GimpContext*, %struct._GimpContext** %context13, align 8
  %18 = bitcast %struct._GimpContext* %17 to i8*
  %19 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %20 = bitcast %struct._GimpViewRenderer* %19 to i8*
  %call14 = call i32 @g_signal_handlers_disconnect_matched(i8* %18, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpContext*, %struct._GimpRGB*, %struct._GimpViewRenderer*)* @gimp_view_renderer_gradient_fg_bg_changed to i8*), i8* %20)
  br label %if.end.19

if.else:                                          ; preds = %if.then.9
  %21 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %context15 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %21, i32 0, i32 1
  %22 = load %struct._GimpContext*, %struct._GimpContext** %context15, align 8
  %23 = bitcast %struct._GimpContext* %22 to i8*
  %24 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %25 = bitcast %struct._GimpViewRenderer* %24 to i8*
  %call16 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContext*, %struct._GimpRGB*, %struct._GimpViewRenderer*)* @gimp_view_renderer_gradient_fg_bg_changed to void ()*), i8* %25, void (i8*, %struct._GClosure*)* null, i32 0)
  %26 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %context17 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %26, i32 0, i32 1
  %27 = load %struct._GimpContext*, %struct._GimpContext** %context17, align 8
  %28 = bitcast %struct._GimpContext* %27 to i8*
  %29 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %30 = bitcast %struct._GimpViewRenderer* %29 to i8*
  %call18 = call i64 @g_signal_connect_data(i8* %28, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContext*, %struct._GimpRGB*, %struct._GimpViewRenderer*)* @gimp_view_renderer_gradient_fg_bg_changed to void ()*), i8* %30, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.12
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.then.7
  %31 = load i32, i32* %has_fg_bg_segments, align 4
  %32 = load %struct._GimpViewRendererGradient*, %struct._GimpViewRendererGradient** %rendergrad, align 8
  %has_fg_bg_segments21 = getelementptr inbounds %struct._GimpViewRendererGradient, %struct._GimpViewRendererGradient* %32, i32 0, i32 4
  store i32 %31, i32* %has_fg_bg_segments21, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.20, %if.end
  %33 = load i8*, i8** @gimp_view_renderer_gradient_parent_class, align 8
  %34 = bitcast i8* %33 to %struct._GTypeClass*
  %call23 = call i64 @gimp_view_renderer_get_type() #6
  %call24 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %34, i64 %call23)
  %35 = bitcast %struct._GTypeClass* %call24 to %struct._GimpViewRendererClass*
  %invalidate = getelementptr inbounds %struct._GimpViewRendererClass, %struct._GimpViewRendererClass* %35, i32 0, i32 8
  %36 = load void (%struct._GimpViewRenderer*)*, void (%struct._GimpViewRenderer*)** %invalidate, align 8
  %37 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  call void %36(%struct._GimpViewRenderer* %37)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_view_renderer_gradient_render(%struct._GimpViewRenderer* %renderer, %struct._GtkWidget* %widget) #3 {
entry:
  %renderer.addr = alloca %struct._GimpViewRenderer*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %rendergrad = alloca %struct._GimpViewRendererGradient*, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  %seg = alloca %struct._GimpGradientSegment*, align 8
  %buf = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %dest_stride = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %dx = alloca double, align 8
  %cur_x = alloca double, align 8
  %color = alloca %struct._GimpRGB, align 8
  %r = alloca i8, align 1
  %g = alloca i8, align 1
  %b = alloca i8, align 1
  %a = alloca i8, align 1
  %tr = alloca i32, align 4
  %tg = alloca i32, align 4
  %tb = alloca i32, align 4
  store %struct._GimpViewRenderer* %renderer, %struct._GimpViewRenderer** %renderer.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %1 = bitcast %struct._GimpViewRenderer* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_view_renderer_gradient_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpViewRendererGradient*
  store %struct._GimpViewRendererGradient* %2, %struct._GimpViewRendererGradient** %rendergrad, align 8
  %3 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %viewable = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %3, i32 0, i32 3
  %4 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %5 = bitcast %struct._GimpViewable* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_gradient_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpGradient*
  store %struct._GimpGradient* %6, %struct._GimpGradient** %gradient, align 8
  store %struct._GimpGradientSegment* null, %struct._GimpGradientSegment** %seg, align 8
  %7 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %width = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %7, i32 0, i32 4
  %8 = load i32, i32* %width, align 4
  %mul = mul nsw i32 4, %8
  %conv = sext i32 %mul to i64
  %9 = alloca i8, i64 %conv
  store i8* %9, i8** %buf, align 8
  %10 = load %struct._GimpViewRendererGradient*, %struct._GimpViewRendererGradient** %rendergrad, align 8
  %right = getelementptr inbounds %struct._GimpViewRendererGradient, %struct._GimpViewRendererGradient* %10, i32 0, i32 2
  %11 = load double, double* %right, align 8
  %12 = load %struct._GimpViewRendererGradient*, %struct._GimpViewRendererGradient** %rendergrad, align 8
  %left = getelementptr inbounds %struct._GimpViewRendererGradient, %struct._GimpViewRendererGradient* %12, i32 0, i32 1
  %13 = load double, double* %left, align 8
  %sub = fsub double %11, %13
  %14 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %width4 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %14, i32 0, i32 4
  %15 = load i32, i32* %width4, align 4
  %sub5 = sub nsw i32 %15, 1
  %conv6 = sitofp i32 %sub5 to double
  %div = fdiv double %sub, %conv6
  store double %div, double* %dx, align 8
  %16 = load %struct._GimpViewRendererGradient*, %struct._GimpViewRendererGradient** %rendergrad, align 8
  %left7 = getelementptr inbounds %struct._GimpViewRendererGradient, %struct._GimpViewRendererGradient* %16, i32 0, i32 1
  %17 = load double, double* %left7, align 8
  store double %17, double* %cur_x, align 8
  store i32 0, i32* %x, align 4
  %18 = load i8*, i8** %buf, align 8
  store i8* %18, i8** %dest, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %19 = load i32, i32* %x, align 4
  %20 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %width8 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %20, i32 0, i32 4
  %21 = load i32, i32* %width8, align 4
  %cmp = icmp slt i32 %19, %21
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %23 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %context = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %23, i32 0, i32 1
  %24 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %25 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %26 = load double, double* %cur_x, align 8
  %27 = load %struct._GimpViewRendererGradient*, %struct._GimpViewRendererGradient** %rendergrad, align 8
  %reverse = getelementptr inbounds %struct._GimpViewRendererGradient, %struct._GimpViewRendererGradient* %27, i32 0, i32 3
  %28 = load i32, i32* %reverse, align 4
  %call10 = call %struct._GimpGradientSegment* @gimp_gradient_get_color_at(%struct._GimpGradient* %22, %struct._GimpContext* %24, %struct._GimpGradientSegment* %25, double %26, i32 %28, %struct._GimpRGB* %color)
  store %struct._GimpGradientSegment* %call10, %struct._GimpGradientSegment** %seg, align 8
  %29 = load double, double* %dx, align 8
  %30 = load double, double* %cur_x, align 8
  %add = fadd double %30, %29
  store double %add, double* %cur_x, align 8
  call void @gimp_rgba_get_uchar(%struct._GimpRGB* %color, i8* %r, i8* %g, i8* %b, i8* %a)
  br label %do.body

do.body:                                          ; preds = %for.body
  %31 = load i8, i8* %a, align 1
  %conv11 = zext i8 %31 to i32
  %32 = load i8, i8* %r, align 1
  %conv12 = zext i8 %32 to i32
  %mul13 = mul nsw i32 %conv11, %conv12
  %add14 = add nsw i32 %mul13, 128
  store i32 %add14, i32* %tr, align 4
  %33 = load i8, i8* %a, align 1
  %conv15 = zext i8 %33 to i32
  %34 = load i8, i8* %g, align 1
  %conv16 = zext i8 %34 to i32
  %mul17 = mul nsw i32 %conv15, %conv16
  %add18 = add nsw i32 %mul17, 128
  store i32 %add18, i32* %tg, align 4
  %35 = load i8, i8* %a, align 1
  %conv19 = zext i8 %35 to i32
  %36 = load i8, i8* %b, align 1
  %conv20 = zext i8 %36 to i32
  %mul21 = mul nsw i32 %conv19, %conv20
  %add22 = add nsw i32 %mul21, 128
  store i32 %add22, i32* %tb, align 4
  %37 = load i32, i32* %tb, align 4
  %shr = lshr i32 %37, 8
  %38 = load i32, i32* %tb, align 4
  %add23 = add i32 %shr, %38
  %shr24 = lshr i32 %add23, 8
  %conv25 = trunc i32 %shr24 to i8
  %39 = load i8*, i8** %dest, align 8
  %arrayidx = getelementptr inbounds i8, i8* %39, i64 0
  store i8 %conv25, i8* %arrayidx, align 1
  %40 = load i32, i32* %tg, align 4
  %shr26 = lshr i32 %40, 8
  %41 = load i32, i32* %tg, align 4
  %add27 = add i32 %shr26, %41
  %shr28 = lshr i32 %add27, 8
  %conv29 = trunc i32 %shr28 to i8
  %42 = load i8*, i8** %dest, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %42, i64 1
  store i8 %conv29, i8* %arrayidx30, align 1
  %43 = load i32, i32* %tr, align 4
  %shr31 = lshr i32 %43, 8
  %44 = load i32, i32* %tr, align 4
  %add32 = add i32 %shr31, %44
  %shr33 = lshr i32 %add32, 8
  %conv34 = trunc i32 %shr33 to i8
  %45 = load i8*, i8** %dest, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %45, i64 2
  store i8 %conv34, i8* %arrayidx35, align 1
  %46 = load i8, i8* %a, align 1
  %47 = load i8*, i8** %dest, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %47, i64 3
  store i8 %46, i8* %arrayidx36, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %48 = load i32, i32* %x, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %x, align 4
  %49 = load i8*, i8** %dest, align 8
  %add.ptr = getelementptr inbounds i8, i8* %49, i64 4
  store i8* %add.ptr, i8** %dest, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %50 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %surface = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %50, i32 0, i32 10
  %51 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  %tobool = icmp ne %struct._cairo_surface* %51, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  %52 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %width37 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %52, i32 0, i32 4
  %53 = load i32, i32* %width37, align 4
  %54 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %height = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %54, i32 0, i32 5
  %55 = load i32, i32* %height, align 4
  %call38 = call %struct._cairo_surface* @cairo_image_surface_create(i32 0, i32 %53, i32 %55)
  %56 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %surface39 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %56, i32 0, i32 10
  store %struct._cairo_surface* %call38, %struct._cairo_surface** %surface39, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %57 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %surface40 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %57, i32 0, i32 10
  %58 = load %struct._cairo_surface*, %struct._cairo_surface** %surface40, align 8
  call void @cairo_surface_flush(%struct._cairo_surface* %58)
  %59 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %surface41 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %59, i32 0, i32 10
  %60 = load %struct._cairo_surface*, %struct._cairo_surface** %surface41, align 8
  %call42 = call i8* @cairo_image_surface_get_data(%struct._cairo_surface* %60)
  store i8* %call42, i8** %dest, align 8
  %61 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %surface43 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %61, i32 0, i32 10
  %62 = load %struct._cairo_surface*, %struct._cairo_surface** %surface43, align 8
  %call44 = call i32 @cairo_image_surface_get_stride(%struct._cairo_surface* %62)
  store i32 %call44, i32* %dest_stride, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.53, %if.end
  %63 = load i32, i32* %y, align 4
  %64 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %height46 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %64, i32 0, i32 5
  %65 = load i32, i32* %height46, align 4
  %cmp47 = icmp slt i32 %63, %65
  br i1 %cmp47, label %for.body.49, label %for.end.56

for.body.49:                                      ; preds = %for.cond.45
  %66 = load i8*, i8** %dest, align 8
  %67 = load i8*, i8** %buf, align 8
  %68 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %width50 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %68, i32 0, i32 4
  %69 = load i32, i32* %width50, align 4
  %mul51 = mul nsw i32 %69, 4
  %conv52 = sext i32 %mul51 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %66, i8* %67, i64 %conv52, i32 1, i1 false)
  br label %for.inc.53

for.inc.53:                                       ; preds = %for.body.49
  %70 = load i32, i32* %y, align 4
  %inc54 = add nsw i32 %70, 1
  store i32 %inc54, i32* %y, align 4
  %71 = load i32, i32* %dest_stride, align 4
  %72 = load i8*, i8** %dest, align 8
  %idx.ext = sext i32 %71 to i64
  %add.ptr55 = getelementptr inbounds i8, i8* %72, i64 %idx.ext
  store i8* %add.ptr55, i8** %dest, align 8
  br label %for.cond.45

for.end.56:                                       ; preds = %for.cond.45
  %73 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %surface57 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %73, i32 0, i32 10
  %74 = load %struct._cairo_surface*, %struct._cairo_surface** %surface57, align 8
  call void @cairo_surface_mark_dirty(%struct._cairo_surface* %74)
  %75 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %needs_render = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %75, i32 0, i32 15
  store i32 0, i32* %needs_render, align 4
  ret void
}

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_view_renderer_gradient_fg_bg_changed(%struct._GimpContext* %context, %struct._GimpRGB* %color, %struct._GimpViewRenderer* %renderer) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %renderer.addr = alloca %struct._GimpViewRenderer*, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store %struct._GimpViewRenderer* %renderer, %struct._GimpViewRenderer** %renderer.addr, align 8
  %0 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  call void @gimp_view_renderer_invalidate(%struct._GimpViewRenderer* %0)
  ret void
}

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare i32 @gimp_gradient_has_fg_bg_segments(%struct._GimpGradient*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_gradient_get_type() #2

declare %struct._GimpGradientSegment* @gimp_gradient_get_color_at(%struct._GimpGradient*, %struct._GimpContext*, %struct._GimpGradientSegment*, double, i32, %struct._GimpRGB*) #1

declare void @gimp_rgba_get_uchar(%struct._GimpRGB*, i8*, i8*, i8*, i8*) #1

declare %struct._cairo_surface* @cairo_image_surface_create(i32, i32, i32) #1

declare void @cairo_surface_flush(%struct._cairo_surface*) #1

declare i8* @cairo_image_surface_get_data(%struct._cairo_surface*) #1

declare i32 @cairo_image_surface_get_stride(%struct._cairo_surface*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare void @cairo_surface_mark_dirty(%struct._cairo_surface*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
