; ModuleID = './app/widgets/gimpoverlaychild.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpOverlayChild = type { %struct._GtkWidget*, %struct._GdkDrawable*, i32, double, double, double, double, double, double, %struct._cairo_matrix }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._cairo_matrix = type { double, double, double, double, double, double }
%struct._GimpOverlayBox = type { %struct._GtkContainer, %struct._GList* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
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
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GdkDisplay = type { %struct._GObject, %struct._GList*, %struct._GList*, [2 x i32], [2 x %struct._GdkDrawable*], [2 x i32], i32, %struct._GdkDevice*, %struct._GdkDisplayPointerHooks*, i8, i32, [2 x i32], [2 x i32], %struct._GList*, %struct.GdkKeyboardGrabInfo, %struct.GdkPointerWindowInfo, i32 }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
%struct._GdkDisplayPointerHooks = type { void (%struct._GdkDisplay*, %struct._GdkScreen**, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, %struct._GdkDrawable*, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, i32*, i32*)* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct.GdkKeyboardGrabInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, i64, i32, i32 }
%struct.GdkPointerWindowInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, double, double, i32, i32, i64 }
%struct._GdkWindowAttr = type { i8*, i32, i32, i32, i32, i32, i32, %struct._GdkVisual*, %struct._GdkColormap*, i32, %struct._GdkCursor*, i8*, i8*, i32, i32 }
%struct._GdkCursor = type { i32, i32 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GdkEventExpose = type { i32, %struct._GdkDrawable*, i8, %struct._GdkRectangle, %struct._GdkRegion*, i32 }
%struct._GdkRegion = type opaque
%struct._cairo = type opaque

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_overlay_child_new = private unnamed_addr constant [23 x i8] c"gimp_overlay_child_new\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"GIMP_IS_OVERLAY_BOX (box)\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"GTK_IS_WIDGET (widget)\00", align 1
@__func__.gimp_overlay_child_free = private unnamed_addr constant [24 x i8] c"gimp_overlay_child_free\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"child != NULL\00", align 1
@__func__.gimp_overlay_child_find = private unnamed_addr constant [24 x i8] c"gimp_overlay_child_find\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"gtk_widget_get_parent (widget) == GTK_WIDGET (box)\00", align 1
@__func__.gimp_overlay_child_realize = private unnamed_addr constant [27 x i8] c"gimp_overlay_child_realize\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"from-embedder\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"to-embedder\00", align 1
@__func__.gimp_overlay_child_unrealize = private unnamed_addr constant [29 x i8] c"gimp_overlay_child_unrealize\00", align 1
@__func__.gimp_overlay_child_size_request = private unnamed_addr constant [32 x i8] c"gimp_overlay_child_size_request\00", align 1
@__func__.gimp_overlay_child_size_allocate = private unnamed_addr constant [33 x i8] c"gimp_overlay_child_size_allocate\00", align 1
@__func__.gimp_overlay_child_expose = private unnamed_addr constant [26 x i8] c"gimp_overlay_child_expose\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"event != NULL\00", align 1
@__func__.gimp_overlay_child_damage = private unnamed_addr constant [26 x i8] c"gimp_overlay_child_damage\00", align 1
@__func__.gimp_overlay_child_invalidate = private unnamed_addr constant [30 x i8] c"gimp_overlay_child_invalidate\00", align 1
@__func__.gimp_overlay_child_pick = private unnamed_addr constant [24 x i8] c"gimp_overlay_child_pick\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GimpOverlayChild* @gimp_overlay_child_new(%struct._GimpOverlayBox* %box, %struct._GtkWidget* %widget, double %xalign, double %yalign, double %angle, double %opacity) #0 {
entry:
  %retval = alloca %struct._GimpOverlayChild*, align 8
  %box.addr = alloca %struct._GimpOverlayBox*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %xalign.addr = alloca double, align 8
  %yalign.addr = alloca double, align 8
  %angle.addr = alloca double, align 8
  %opacity.addr = alloca double, align 8
  %child = alloca %struct._GimpOverlayChild*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpOverlayBox* %box, %struct._GimpOverlayBox** %box.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store double %xalign, double* %xalign.addr, align 8
  store double %yalign, double* %yalign.addr, align 8
  store double %angle, double* %angle.addr, align 8
  store double %opacity, double* %opacity.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpOverlayBox*, %struct._GimpOverlayBox** %box.addr, align 8
  %1 = bitcast %struct._GimpOverlayBox* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_overlay_box_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_overlay_child_new, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpOverlayChild* null, %struct._GimpOverlayChild** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gtk_widget_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_overlay_child_new, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpOverlayChild* null, %struct._GimpOverlayChild** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %call39 = call noalias i8* @g_slice_alloc0(i64 120)
  %26 = bitcast i8* %call39 to %struct._GimpOverlayChild*
  store %struct._GimpOverlayChild* %26, %struct._GimpOverlayChild** %child, align 8
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %28 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child, align 8
  %widget40 = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %28, i32 0, i32 0
  store %struct._GtkWidget* %27, %struct._GtkWidget** %widget40, align 8
  %29 = load double, double* %xalign.addr, align 8
  %cmp41 = fcmp ogt double %29, 1.000000e+00
  br i1 %cmp41, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end.38
  br label %cond.end.45

cond.false:                                       ; preds = %do.end.38
  %30 = load double, double* %xalign.addr, align 8
  %cmp42 = fcmp olt double %30, 0.000000e+00
  br i1 %cmp42, label %cond.true.43, label %cond.false.44

cond.true.43:                                     ; preds = %cond.false
  br label %cond.end

cond.false.44:                                    ; preds = %cond.false
  %31 = load double, double* %xalign.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.44, %cond.true.43
  %cond = phi double [ 0.000000e+00, %cond.true.43 ], [ %31, %cond.false.44 ]
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.end, %cond.true
  %cond46 = phi double [ 1.000000e+00, %cond.true ], [ %cond, %cond.end ]
  %32 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child, align 8
  %xalign47 = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %32, i32 0, i32 3
  store double %cond46, double* %xalign47, align 8
  %33 = load double, double* %yalign.addr, align 8
  %cmp48 = fcmp ogt double %33, 1.000000e+00
  br i1 %cmp48, label %cond.true.49, label %cond.false.50

cond.true.49:                                     ; preds = %cond.end.45
  br label %cond.end.56

cond.false.50:                                    ; preds = %cond.end.45
  %34 = load double, double* %yalign.addr, align 8
  %cmp51 = fcmp olt double %34, 0.000000e+00
  br i1 %cmp51, label %cond.true.52, label %cond.false.53

cond.true.52:                                     ; preds = %cond.false.50
  br label %cond.end.54

cond.false.53:                                    ; preds = %cond.false.50
  %35 = load double, double* %yalign.addr, align 8
  br label %cond.end.54

cond.end.54:                                      ; preds = %cond.false.53, %cond.true.52
  %cond55 = phi double [ 0.000000e+00, %cond.true.52 ], [ %35, %cond.false.53 ]
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.end.54, %cond.true.49
  %cond57 = phi double [ 1.000000e+00, %cond.true.49 ], [ %cond55, %cond.end.54 ]
  %36 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child, align 8
  %yalign58 = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %36, i32 0, i32 4
  store double %cond57, double* %yalign58, align 8
  %37 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child, align 8
  %x = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %37, i32 0, i32 5
  store double 0.000000e+00, double* %x, align 8
  %38 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child, align 8
  %y = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %38, i32 0, i32 6
  store double 0.000000e+00, double* %y, align 8
  %39 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child, align 8
  %has_position = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %39, i32 0, i32 2
  store i32 0, i32* %has_position, align 4
  %40 = load double, double* %angle.addr, align 8
  %41 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child, align 8
  %angle59 = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %41, i32 0, i32 7
  store double %40, double* %angle59, align 8
  %42 = load double, double* %opacity.addr, align 8
  %cmp60 = fcmp ogt double %42, 1.000000e+00
  br i1 %cmp60, label %cond.true.61, label %cond.false.62

cond.true.61:                                     ; preds = %cond.end.56
  br label %cond.end.68

cond.false.62:                                    ; preds = %cond.end.56
  %43 = load double, double* %opacity.addr, align 8
  %cmp63 = fcmp olt double %43, 0.000000e+00
  br i1 %cmp63, label %cond.true.64, label %cond.false.65

cond.true.64:                                     ; preds = %cond.false.62
  br label %cond.end.66

cond.false.65:                                    ; preds = %cond.false.62
  %44 = load double, double* %opacity.addr, align 8
  br label %cond.end.66

cond.end.66:                                      ; preds = %cond.false.65, %cond.true.64
  %cond67 = phi double [ 0.000000e+00, %cond.true.64 ], [ %44, %cond.false.65 ]
  br label %cond.end.68

cond.end.68:                                      ; preds = %cond.end.66, %cond.true.61
  %cond69 = phi double [ 1.000000e+00, %cond.true.61 ], [ %cond67, %cond.end.66 ]
  %45 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child, align 8
  %opacity70 = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %45, i32 0, i32 8
  store double %cond69, double* %opacity70, align 8
  %46 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child, align 8
  %matrix = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %46, i32 0, i32 9
  call void @cairo_matrix_init_identity(%struct._cairo_matrix* %matrix)
  %47 = load %struct._GimpOverlayBox*, %struct._GimpOverlayBox** %box.addr, align 8
  %48 = bitcast %struct._GimpOverlayBox* %47 to %struct._GTypeInstance*
  %call71 = call i64 @gtk_widget_get_type() #5
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call71)
  %49 = bitcast %struct._GTypeInstance* %call72 to %struct._GtkWidget*
  %call73 = call i32 @gtk_widget_get_realized(%struct._GtkWidget* %49)
  %tobool74 = icmp ne i32 %call73, 0
  br i1 %tobool74, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %cond.end.68
  %50 = load %struct._GimpOverlayBox*, %struct._GimpOverlayBox** %box.addr, align 8
  %51 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child, align 8
  call void @gimp_overlay_child_realize(%struct._GimpOverlayBox* %50, %struct._GimpOverlayChild* %51)
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.75, %cond.end.68
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %53 = load %struct._GimpOverlayBox*, %struct._GimpOverlayBox** %box.addr, align 8
  %54 = bitcast %struct._GimpOverlayBox* %53 to %struct._GTypeInstance*
  %call77 = call i64 @gtk_widget_get_type() #5
  %call78 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call77)
  %55 = bitcast %struct._GTypeInstance* %call78 to %struct._GtkWidget*
  call void @gtk_widget_set_parent(%struct._GtkWidget* %52, %struct._GtkWidget* %55)
  %56 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child, align 8
  store %struct._GimpOverlayChild* %56, %struct._GimpOverlayChild** %retval
  br label %return

return:                                           ; preds = %if.end.76, %if.else.36, %if.else.9
  %57 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %retval
  ret %struct._GimpOverlayChild* %57
}

; Function Attrs: nounwind readnone
declare i64 @gimp_overlay_box_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #1

declare noalias i8* @g_slice_alloc0(i64) #3

declare void @cairo_matrix_init_identity(%struct._cairo_matrix*) #3

declare i32 @gtk_widget_get_realized(%struct._GtkWidget*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind uwtable
define void @gimp_overlay_child_realize(%struct._GimpOverlayBox* %box, %struct._GimpOverlayChild* %child) #0 {
entry:
  %box.addr = alloca %struct._GimpOverlayBox*, align 8
  %child.addr = alloca %struct._GimpOverlayChild*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %display = alloca %struct._GdkDisplay*, align 8
  %screen = alloca %struct._GdkScreen*, align 8
  %colormap = alloca %struct._GdkColormap*, align 8
  %child_allocation = alloca %struct._GdkRectangle, align 4
  %attributes = alloca %struct._GdkWindowAttr, align 8
  %attributes_mask = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpOverlayBox* %box, %struct._GimpOverlayBox** %box.addr, align 8
  store %struct._GimpOverlayChild* %child, %struct._GimpOverlayChild** %child.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpOverlayBox*, %struct._GimpOverlayBox** %box.addr, align 8
  %1 = bitcast %struct._GimpOverlayBox* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_overlay_box_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_overlay_child_realize, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %cmp12 = icmp ne %struct._GimpOverlayChild* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_overlay_child_realize, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpOverlayBox*, %struct._GimpOverlayBox** %box.addr, align 8
  %15 = bitcast %struct._GimpOverlayBox* %14 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_widget_get_type() #5
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call17)
  %16 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkWidget*
  store %struct._GtkWidget* %16, %struct._GtkWidget** %widget, align 8
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call19 = call %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget* %17)
  store %struct._GdkDisplay* %call19, %struct._GdkDisplay** %display, align 8
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call20 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %18)
  store %struct._GdkScreen* %call20, %struct._GdkScreen** %screen, align 8
  %19 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  %call21 = call %struct._GdkColormap* @gdk_screen_get_rgba_colormap(%struct._GdkScreen* %19)
  store %struct._GdkColormap* %call21, %struct._GdkColormap** %colormap, align 8
  %20 = load %struct._GdkColormap*, %struct._GdkColormap** %colormap, align 8
  %tobool22 = icmp ne %struct._GdkColormap* %20, null
  br i1 %tobool22, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %do.end.16
  %21 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %widget24 = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %21, i32 0, i32 0
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %widget24, align 8
  %23 = load %struct._GdkColormap*, %struct._GdkColormap** %colormap, align 8
  call void @gtk_widget_set_colormap(%struct._GtkWidget* %22, %struct._GdkColormap* %23)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %do.end.16
  %24 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %widget26 = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %24, i32 0, i32 0
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %widget26, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %25, %struct._GdkRectangle* %child_allocation)
  %26 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %widget27 = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %26, i32 0, i32 0
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %widget27, align 8
  %call28 = call i32 @gtk_widget_get_visible(%struct._GtkWidget* %27)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then.30, label %if.else.33

if.then.30:                                       ; preds = %if.end.25
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %child_allocation, i32 0, i32 2
  %28 = load i32, i32* %width, align 4
  %width31 = getelementptr inbounds %struct._GdkWindowAttr, %struct._GdkWindowAttr* %attributes, i32 0, i32 4
  store i32 %28, i32* %width31, align 4
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %child_allocation, i32 0, i32 3
  %29 = load i32, i32* %height, align 4
  %height32 = getelementptr inbounds %struct._GdkWindowAttr, %struct._GdkWindowAttr* %attributes, i32 0, i32 5
  store i32 %29, i32* %height32, align 4
  br label %if.end.36

if.else.33:                                       ; preds = %if.end.25
  %width34 = getelementptr inbounds %struct._GdkWindowAttr, %struct._GdkWindowAttr* %attributes, i32 0, i32 4
  store i32 1, i32* %width34, align 4
  %height35 = getelementptr inbounds %struct._GdkWindowAttr, %struct._GdkWindowAttr* %attributes, i32 0, i32 5
  store i32 1, i32* %height35, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.33, %if.then.30
  %x = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %child_allocation, i32 0, i32 0
  %30 = load i32, i32* %x, align 4
  %x37 = getelementptr inbounds %struct._GdkWindowAttr, %struct._GdkWindowAttr* %attributes, i32 0, i32 2
  store i32 %30, i32* %x37, align 4
  %y = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %child_allocation, i32 0, i32 1
  %31 = load i32, i32* %y, align 4
  %y38 = getelementptr inbounds %struct._GdkWindowAttr, %struct._GdkWindowAttr* %attributes, i32 0, i32 3
  store i32 %31, i32* %y38, align 4
  %window_type = getelementptr inbounds %struct._GdkWindowAttr, %struct._GdkWindowAttr* %attributes, i32 0, i32 9
  store i32 6, i32* %window_type, align 4
  %wclass = getelementptr inbounds %struct._GdkWindowAttr, %struct._GdkWindowAttr* %attributes, i32 0, i32 6
  store i32 0, i32* %wclass, align 4
  %32 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %widget39 = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %32, i32 0, i32 0
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %widget39, align 8
  %call40 = call %struct._GdkVisual* @gtk_widget_get_visual(%struct._GtkWidget* %33)
  %visual = getelementptr inbounds %struct._GdkWindowAttr, %struct._GdkWindowAttr* %attributes, i32 0, i32 7
  store %struct._GdkVisual* %call40, %struct._GdkVisual** %visual, align 8
  %34 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %widget41 = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %34, i32 0, i32 0
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %widget41, align 8
  %call42 = call %struct._GdkColormap* @gtk_widget_get_colormap(%struct._GtkWidget* %35)
  %colormap43 = getelementptr inbounds %struct._GdkWindowAttr, %struct._GdkWindowAttr* %attributes, i32 0, i32 8
  store %struct._GdkColormap* %call42, %struct._GdkColormap** %colormap43, align 8
  %event_mask = getelementptr inbounds %struct._GdkWindowAttr, %struct._GdkWindowAttr* %attributes, i32 0, i32 1
  store i32 2, i32* %event_mask, align 4
  %36 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  %call44 = call %struct._GdkCursor* @gdk_cursor_new_for_display(%struct._GdkDisplay* %36, i32 68)
  %cursor = getelementptr inbounds %struct._GdkWindowAttr, %struct._GdkWindowAttr* %attributes, i32 0, i32 10
  store %struct._GdkCursor* %call44, %struct._GdkCursor** %cursor, align 8
  store i32 124, i32* %attributes_mask, align 4
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call45 = call %struct._GdkDrawable* @gtk_widget_get_root_window(%struct._GtkWidget* %37)
  %38 = load i32, i32* %attributes_mask, align 4
  %call46 = call %struct._GdkDrawable* @gdk_window_new(%struct._GdkDrawable* %call45, %struct._GdkWindowAttr* %attributes, i32 %38)
  %39 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %window = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %39, i32 0, i32 1
  store %struct._GdkDrawable* %call46, %struct._GdkDrawable** %window, align 8
  %40 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %window47 = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %40, i32 0, i32 1
  %41 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window47, align 8
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %43 = bitcast %struct._GtkWidget* %42 to i8*
  call void @gdk_window_set_user_data(%struct._GdkDrawable* %41, i8* %43)
  %44 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %widget48 = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %44, i32 0, i32 0
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %widget48, align 8
  %46 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %window49 = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %46, i32 0, i32 1
  %47 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window49, align 8
  call void @gtk_widget_set_parent_window(%struct._GtkWidget* %45, %struct._GdkDrawable* %47)
  %48 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %window50 = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %48, i32 0, i32 1
  %49 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window50, align 8
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call51 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %50)
  call void @gdk_offscreen_window_set_embedder(%struct._GdkDrawable* %49, %struct._GdkDrawable* %call51)
  %cursor52 = getelementptr inbounds %struct._GdkWindowAttr, %struct._GdkWindowAttr* %attributes, i32 0, i32 10
  %51 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor52, align 8
  call void @gdk_cursor_unref(%struct._GdkCursor* %51)
  %52 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %window53 = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %52, i32 0, i32 1
  %53 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window53, align 8
  %54 = bitcast %struct._GdkDrawable* %53 to i8*
  %55 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %56 = bitcast %struct._GimpOverlayChild* %55 to i8*
  %call54 = call i64 @g_signal_connect_data(i8* %54, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GdkDrawable*, double, double, double*, double*, %struct._GimpOverlayChild*)* @gimp_overlay_child_from_embedder to void ()*), i8* %56, void (i8*, %struct._GClosure*)* null, i32 0)
  %57 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %window55 = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %57, i32 0, i32 1
  %58 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window55, align 8
  %59 = bitcast %struct._GdkDrawable* %58 to i8*
  %60 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %61 = bitcast %struct._GimpOverlayChild* %60 to i8*
  %call56 = call i64 @g_signal_connect_data(i8* %59, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (void (%struct._GdkDrawable*, double, double, double*, double*, %struct._GimpOverlayChild*)* @gimp_overlay_child_to_embedder to void ()*), i8* %61, void (i8*, %struct._GClosure*)* null, i32 0)
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call57 = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %62)
  %63 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %window58 = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %63, i32 0, i32 1
  %64 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window58, align 8
  call void @gtk_style_set_background(%struct._GtkStyle* %call57, %struct._GdkDrawable* %64, i32 0)
  %65 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %window59 = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %65, i32 0, i32 1
  %66 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window59, align 8
  call void @gdk_window_show(%struct._GdkDrawable* %66)
  br label %return

return:                                           ; preds = %if.end.36, %if.else.14, %if.else.9
  ret void
}

declare void @gtk_widget_set_parent(%struct._GtkWidget*, %struct._GtkWidget*) #3

; Function Attrs: nounwind uwtable
define void @gimp_overlay_child_free(%struct._GimpOverlayBox* %box, %struct._GimpOverlayChild* %child) #0 {
entry:
  %box.addr = alloca %struct._GimpOverlayBox*, align 8
  %child.addr = alloca %struct._GimpOverlayChild*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpOverlayBox* %box, %struct._GimpOverlayBox** %box.addr, align 8
  store %struct._GimpOverlayChild* %child, %struct._GimpOverlayChild** %child.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpOverlayBox*, %struct._GimpOverlayBox** %box.addr, align 8
  %1 = bitcast %struct._GimpOverlayBox* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_overlay_box_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_overlay_child_free, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0))
  br label %do.end.24

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %cmp12 = icmp ne %struct._GimpOverlayChild* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_overlay_child_free, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0))
  br label %do.end.24

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %widget = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %14, i32 0, i32 0
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void @gtk_widget_unparent(%struct._GtkWidget* %15)
  %16 = load %struct._GimpOverlayBox*, %struct._GimpOverlayBox** %box.addr, align 8
  %17 = bitcast %struct._GimpOverlayBox* %16 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_widget_get_type() #5
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call17)
  %18 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkWidget*
  %call19 = call i32 @gtk_widget_get_realized(%struct._GtkWidget* %18)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %do.end.16
  %19 = load %struct._GimpOverlayBox*, %struct._GimpOverlayBox** %box.addr, align 8
  %20 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  call void @gimp_overlay_child_unrealize(%struct._GimpOverlayBox* %19, %struct._GimpOverlayChild* %20)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %do.end.16
  br label %do.body.23

do.body.23:                                       ; preds = %if.end.22
  %21 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %22 = bitcast %struct._GimpOverlayChild* %21 to i8*
  call void @g_slice_free1(i64 120, i8* %22)
  br label %do.end.24

do.end.24:                                        ; preds = %if.else.9, %if.else.14, %do.body.23
  ret void
}

declare void @gtk_widget_unparent(%struct._GtkWidget*) #3

; Function Attrs: nounwind uwtable
define void @gimp_overlay_child_unrealize(%struct._GimpOverlayBox* %box, %struct._GimpOverlayChild* %child) #0 {
entry:
  %box.addr = alloca %struct._GimpOverlayBox*, align 8
  %child.addr = alloca %struct._GimpOverlayChild*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpOverlayBox* %box, %struct._GimpOverlayBox** %box.addr, align 8
  store %struct._GimpOverlayChild* %child, %struct._GimpOverlayChild** %child.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpOverlayBox*, %struct._GimpOverlayBox** %box.addr, align 8
  %1 = bitcast %struct._GimpOverlayBox* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_overlay_box_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_overlay_child_unrealize, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %cmp12 = icmp ne %struct._GimpOverlayChild* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_overlay_child_unrealize, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %window = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %14, i32 0, i32 1
  %15 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  call void @gdk_window_set_user_data(%struct._GdkDrawable* %15, i8* null)
  %16 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %window17 = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %16, i32 0, i32 1
  %17 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window17, align 8
  call void @gdk_window_destroy(%struct._GdkDrawable* %17)
  %18 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %window18 = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %18, i32 0, i32 1
  store %struct._GdkDrawable* null, %struct._GdkDrawable** %window18, align 8
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  ret void
}

declare void @g_slice_free1(i64, i8*) #3

; Function Attrs: nounwind uwtable
define %struct._GimpOverlayChild* @gimp_overlay_child_find(%struct._GimpOverlayBox* %box, %struct._GtkWidget* %widget) #0 {
entry:
  %retval = alloca %struct._GimpOverlayChild*, align 8
  %box.addr = alloca %struct._GimpOverlayBox*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %child = alloca %struct._GimpOverlayChild*, align 8
  store %struct._GimpOverlayBox* %box, %struct._GimpOverlayBox** %box.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpOverlayBox*, %struct._GimpOverlayBox** %box.addr, align 8
  %1 = bitcast %struct._GimpOverlayBox* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_overlay_box_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_overlay_child_find, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpOverlayChild* null, %struct._GimpOverlayChild** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gtk_widget_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_overlay_child_find, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpOverlayChild* null, %struct._GimpOverlayChild** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call40 = call %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget* %26)
  %27 = load %struct._GimpOverlayBox*, %struct._GimpOverlayBox** %box.addr, align 8
  %28 = bitcast %struct._GimpOverlayBox* %27 to %struct._GTypeInstance*
  %call41 = call i64 @gtk_widget_get_type() #5
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call41)
  %29 = bitcast %struct._GTypeInstance* %call42 to %struct._GtkWidget*
  %cmp43 = icmp eq %struct._GtkWidget* %call40, %29
  br i1 %cmp43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %do.body.39
  br label %if.end.46

if.else.45:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_overlay_child_find, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GimpOverlayChild* null, %struct._GimpOverlayChild** %retval
  br label %return

if.end.46:                                        ; preds = %if.then.44
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  %30 = load %struct._GimpOverlayBox*, %struct._GimpOverlayBox** %box.addr, align 8
  %children = getelementptr inbounds %struct._GimpOverlayBox, %struct._GimpOverlayBox* %30, i32 0, i32 1
  %31 = load %struct._GList*, %struct._GList** %children, align 8
  store %struct._GList* %31, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end.47
  %32 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool48 = icmp ne %struct._GList* %32, null
  br i1 %tobool48, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %33, i32 0, i32 0
  %34 = load i8*, i8** %data, align 8
  %35 = bitcast i8* %34 to %struct._GimpOverlayChild*
  store %struct._GimpOverlayChild* %35, %struct._GimpOverlayChild** %child, align 8
  %36 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child, align 8
  %widget50 = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %36, i32 0, i32 0
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %widget50, align 8
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %cmp51 = icmp eq %struct._GtkWidget* %37, %38
  br i1 %cmp51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %for.body
  %39 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child, align 8
  store %struct._GimpOverlayChild* %39, %struct._GimpOverlayChild** %retval
  br label %return

if.end.53:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.53
  %40 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool54 = icmp ne %struct._GList* %40, null
  br i1 %tobool54, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %41 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %41, i32 0, i32 1
  %42 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %42, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct._GimpOverlayChild* null, %struct._GimpOverlayChild** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.52, %if.else.45, %if.else.36, %if.else.9
  %43 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %retval
  ret %struct._GimpOverlayChild* %43
}

declare %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget*) #3

declare %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget*) #3

declare %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget*) #3

declare %struct._GdkColormap* @gdk_screen_get_rgba_colormap(%struct._GdkScreen*) #3

declare void @gtk_widget_set_colormap(%struct._GtkWidget*, %struct._GdkColormap*) #3

declare void @gtk_widget_get_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #3

declare i32 @gtk_widget_get_visible(%struct._GtkWidget*) #3

declare %struct._GdkVisual* @gtk_widget_get_visual(%struct._GtkWidget*) #3

declare %struct._GdkColormap* @gtk_widget_get_colormap(%struct._GtkWidget*) #3

declare %struct._GdkCursor* @gdk_cursor_new_for_display(%struct._GdkDisplay*, i32) #3

declare %struct._GdkDrawable* @gdk_window_new(%struct._GdkDrawable*, %struct._GdkWindowAttr*, i32) #3

declare %struct._GdkDrawable* @gtk_widget_get_root_window(%struct._GtkWidget*) #3

declare void @gdk_window_set_user_data(%struct._GdkDrawable*, i8*) #3

declare void @gtk_widget_set_parent_window(%struct._GtkWidget*, %struct._GdkDrawable*) #3

declare void @gdk_offscreen_window_set_embedder(%struct._GdkDrawable*, %struct._GdkDrawable*) #3

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #3

declare void @gdk_cursor_unref(%struct._GdkCursor*) #3

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_overlay_child_from_embedder(%struct._GdkDrawable* %child_window, double %box_x, double %box_y, double* %child_x, double* %child_y, %struct._GimpOverlayChild* %child) #0 {
entry:
  %child_window.addr = alloca %struct._GdkDrawable*, align 8
  %box_x.addr = alloca double, align 8
  %box_y.addr = alloca double, align 8
  %child_x.addr = alloca double*, align 8
  %child_y.addr = alloca double*, align 8
  %child.addr = alloca %struct._GimpOverlayChild*, align 8
  %inverse = alloca %struct._cairo_matrix, align 8
  store %struct._GdkDrawable* %child_window, %struct._GdkDrawable** %child_window.addr, align 8
  store double %box_x, double* %box_x.addr, align 8
  store double %box_y, double* %box_y.addr, align 8
  store double* %child_x, double** %child_x.addr, align 8
  store double* %child_y, double** %child_y.addr, align 8
  store %struct._GimpOverlayChild* %child, %struct._GimpOverlayChild** %child.addr, align 8
  %0 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %matrix = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %0, i32 0, i32 9
  %1 = bitcast %struct._cairo_matrix* %inverse to i8*
  %2 = bitcast %struct._cairo_matrix* %matrix to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 48, i32 8, i1 false)
  %3 = load double, double* %box_x.addr, align 8
  %4 = load double*, double** %child_x.addr, align 8
  store double %3, double* %4, align 8
  %5 = load double, double* %box_y.addr, align 8
  %6 = load double*, double** %child_y.addr, align 8
  store double %5, double* %6, align 8
  %call = call i32 @cairo_matrix_invert(%struct._cairo_matrix* %inverse)
  %7 = load double*, double** %child_x.addr, align 8
  %8 = load double*, double** %child_y.addr, align 8
  call void @cairo_matrix_transform_point(%struct._cairo_matrix* %inverse, double* %7, double* %8)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_overlay_child_to_embedder(%struct._GdkDrawable* %child_window, double %child_x, double %child_y, double* %box_x, double* %box_y, %struct._GimpOverlayChild* %child) #0 {
entry:
  %child_window.addr = alloca %struct._GdkDrawable*, align 8
  %child_x.addr = alloca double, align 8
  %child_y.addr = alloca double, align 8
  %box_x.addr = alloca double*, align 8
  %box_y.addr = alloca double*, align 8
  %child.addr = alloca %struct._GimpOverlayChild*, align 8
  store %struct._GdkDrawable* %child_window, %struct._GdkDrawable** %child_window.addr, align 8
  store double %child_x, double* %child_x.addr, align 8
  store double %child_y, double* %child_y.addr, align 8
  store double* %box_x, double** %box_x.addr, align 8
  store double* %box_y, double** %box_y.addr, align 8
  store %struct._GimpOverlayChild* %child, %struct._GimpOverlayChild** %child.addr, align 8
  %0 = load double, double* %child_x.addr, align 8
  %1 = load double*, double** %box_x.addr, align 8
  store double %0, double* %1, align 8
  %2 = load double, double* %child_y.addr, align 8
  %3 = load double*, double** %box_y.addr, align 8
  store double %2, double* %3, align 8
  %4 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %matrix = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %4, i32 0, i32 9
  %5 = load double*, double** %box_x.addr, align 8
  %6 = load double*, double** %box_y.addr, align 8
  call void @cairo_matrix_transform_point(%struct._cairo_matrix* %matrix, double* %5, double* %6)
  ret void
}

declare void @gtk_style_set_background(%struct._GtkStyle*, %struct._GdkDrawable*, i32) #3

declare %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget*) #3

declare void @gdk_window_show(%struct._GdkDrawable*) #3

declare void @gdk_window_destroy(%struct._GdkDrawable*) #3

; Function Attrs: nounwind uwtable
define void @gimp_overlay_child_size_request(%struct._GimpOverlayBox* %box, %struct._GimpOverlayChild* %child) #0 {
entry:
  %box.addr = alloca %struct._GimpOverlayBox*, align 8
  %child.addr = alloca %struct._GimpOverlayChild*, align 8
  %child_requisition = alloca %struct._GtkRequisition, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpOverlayBox* %box, %struct._GimpOverlayBox** %box.addr, align 8
  store %struct._GimpOverlayChild* %child, %struct._GimpOverlayChild** %child.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpOverlayBox*, %struct._GimpOverlayBox** %box.addr, align 8
  %1 = bitcast %struct._GimpOverlayBox* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_overlay_box_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_overlay_child_size_request, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %cmp12 = icmp ne %struct._GimpOverlayChild* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_overlay_child_size_request, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %widget = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %14, i32 0, i32 0
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void @gtk_widget_size_request(%struct._GtkWidget* %15, %struct._GtkRequisition* %child_requisition)
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  ret void
}

declare void @gtk_widget_size_request(%struct._GtkWidget*, %struct._GtkRequisition*) #3

; Function Attrs: nounwind uwtable
define void @gimp_overlay_child_size_allocate(%struct._GimpOverlayBox* %box, %struct._GimpOverlayChild* %child) #0 {
entry:
  %box.addr = alloca %struct._GimpOverlayBox*, align 8
  %child.addr = alloca %struct._GimpOverlayChild*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %child_requisition = alloca %struct._GtkRequisition, align 4
  %child_allocation = alloca %struct._GdkRectangle, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %old_allocation = alloca %struct._GdkRectangle, align 4
  %old_bounds = alloca %struct._GdkRectangle, align 4
  %bounds = alloca %struct._GdkRectangle, align 4
  %border = alloca i32, align 4
  %available_width = alloca i32, align 4
  %available_height = alloca i32, align 4
  store %struct._GimpOverlayBox* %box, %struct._GimpOverlayBox** %box.addr, align 8
  store %struct._GimpOverlayChild* %child, %struct._GimpOverlayChild** %child.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpOverlayBox*, %struct._GimpOverlayBox** %box.addr, align 8
  %1 = bitcast %struct._GimpOverlayBox* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_overlay_box_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_overlay_child_size_allocate, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %cmp12 = icmp ne %struct._GimpOverlayChild* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_overlay_child_size_allocate, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpOverlayBox*, %struct._GimpOverlayBox** %box.addr, align 8
  %15 = bitcast %struct._GimpOverlayBox* %14 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_widget_get_type() #5
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call17)
  %16 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkWidget*
  store %struct._GtkWidget* %16, %struct._GtkWidget** %widget, align 8
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %17, %struct._GdkRectangle* %allocation)
  %18 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %widget19 = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %18, i32 0, i32 0
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %widget19, align 8
  call void @gtk_widget_get_child_requisition(%struct._GtkWidget* %19, %struct._GtkRequisition* %child_requisition)
  %x20 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %child_allocation, i32 0, i32 0
  store i32 0, i32* %x20, align 4
  %y21 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %child_allocation, i32 0, i32 1
  store i32 0, i32* %y21, align 4
  %width = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition, i32 0, i32 0
  %20 = load i32, i32* %width, align 4
  %width22 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %child_allocation, i32 0, i32 2
  store i32 %20, i32* %width22, align 4
  %height = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition, i32 0, i32 1
  %21 = load i32, i32* %height, align 4
  %height23 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %child_allocation, i32 0, i32 3
  store i32 %21, i32* %height23, align 4
  %22 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %widget24 = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %22, i32 0, i32 0
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %widget24, align 8
  call void @gtk_widget_size_allocate(%struct._GtkWidget* %23, %struct._GdkRectangle* %child_allocation)
  %24 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %widget25 = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %24, i32 0, i32 0
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %widget25, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %25, %struct._GdkRectangle* %child_allocation)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_widget_get_type() #5
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call26)
  %28 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkWidget*
  %call28 = call i32 @gtk_widget_get_realized(%struct._GtkWidget* %28)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then.30, label %if.end.47

if.then.30:                                       ; preds = %do.end.16
  %29 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %window = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %29, i32 0, i32 1
  %30 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  %x33 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %old_allocation, i32 0, i32 0
  %y34 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %old_allocation, i32 0, i32 1
  call void @gdk_window_get_position(%struct._GdkDrawable* %30, i32* %x33, i32* %y34)
  %31 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %window35 = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %31, i32 0, i32 1
  %32 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window35, align 8
  %call36 = call i32 @gdk_window_get_width(%struct._GdkDrawable* %32)
  %width37 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %old_allocation, i32 0, i32 2
  store i32 %call36, i32* %width37, align 4
  %33 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %window38 = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %33, i32 0, i32 1
  %34 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window38, align 8
  %call39 = call i32 @gdk_window_get_height(%struct._GdkDrawable* %34)
  %height40 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %old_allocation, i32 0, i32 3
  store i32 %call39, i32* %height40, align 4
  %35 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  call void @gimp_overlay_child_transform_bounds(%struct._GimpOverlayChild* %35, %struct._GdkRectangle* %old_allocation, %struct._GdkRectangle* %old_bounds)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call41 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %36)
  call void @gdk_window_invalidate_rect(%struct._GdkDrawable* %call41, %struct._GdkRectangle* %old_bounds, i32 0)
  %37 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %window42 = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %37, i32 0, i32 1
  %38 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window42, align 8
  %x43 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %child_allocation, i32 0, i32 0
  %39 = load i32, i32* %x43, align 4
  %y44 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %child_allocation, i32 0, i32 1
  %40 = load i32, i32* %y44, align 4
  %width45 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %child_allocation, i32 0, i32 2
  %41 = load i32, i32* %width45, align 4
  %height46 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %child_allocation, i32 0, i32 3
  %42 = load i32, i32* %height46, align 4
  call void @gdk_window_move_resize(%struct._GdkDrawable* %38, i32 %39, i32 %40, i32 %41, i32 %42)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.30, %do.end.16
  %43 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %matrix = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %43, i32 0, i32 9
  call void @cairo_matrix_init_identity(%struct._cairo_matrix* %matrix)
  %44 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %matrix48 = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %44, i32 0, i32 9
  %45 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %angle = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %45, i32 0, i32 7
  %46 = load double, double* %angle, align 8
  call void @cairo_matrix_rotate(%struct._cairo_matrix* %matrix48, double %46)
  %47 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %has_position = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %47, i32 0, i32 2
  %48 = load i32, i32* %has_position, align 4
  %tobool49 = icmp ne i32 %48, 0
  br i1 %tobool49, label %if.then.50, label %if.else.54

if.then.50:                                       ; preds = %if.end.47
  %49 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %x51 = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %49, i32 0, i32 5
  %50 = load double, double* %x51, align 8
  %conv = fptosi double %50 to i32
  store i32 %conv, i32* %x, align 4
  %51 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %y52 = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %51, i32 0, i32 6
  %52 = load double, double* %y52, align 8
  %conv53 = fptosi double %52 to i32
  store i32 %conv53, i32* %y, align 4
  br label %if.end.95

if.else.54:                                       ; preds = %if.end.47
  %53 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  call void @gimp_overlay_child_transform_bounds(%struct._GimpOverlayChild* %53, %struct._GdkRectangle* %child_allocation, %struct._GdkRectangle* %bounds)
  %54 = load %struct._GimpOverlayBox*, %struct._GimpOverlayBox** %box.addr, align 8
  %55 = bitcast %struct._GimpOverlayBox* %54 to %struct._GTypeInstance*
  %call59 = call i64 @gtk_container_get_type() #5
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call59)
  %56 = bitcast %struct._GTypeInstance* %call60 to %struct._GtkContainer*
  %call61 = call i32 @gtk_container_get_border_width(%struct._GtkContainer* %56)
  store i32 %call61, i32* %border, align 4
  %width62 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %57 = load i32, i32* %width62, align 4
  %58 = load i32, i32* %border, align 4
  %mul = mul nsw i32 2, %58
  %sub = sub nsw i32 %57, %mul
  store i32 %sub, i32* %available_width, align 4
  %height63 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %59 = load i32, i32* %height63, align 4
  %60 = load i32, i32* %border, align 4
  %mul64 = mul nsw i32 2, %60
  %sub65 = sub nsw i32 %59, %mul64
  store i32 %sub65, i32* %available_height, align 4
  %61 = load i32, i32* %border, align 4
  store i32 %61, i32* %x, align 4
  %62 = load i32, i32* %border, align 4
  store i32 %62, i32* %y, align 4
  %63 = load i32, i32* %available_width, align 4
  %width66 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %bounds, i32 0, i32 2
  %64 = load i32, i32* %width66, align 4
  %cmp67 = icmp sgt i32 %63, %64
  br i1 %cmp67, label %if.then.69, label %if.end.79

if.then.69:                                       ; preds = %if.else.54
  %65 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %xalign = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %65, i32 0, i32 3
  %66 = load double, double* %xalign, align 8
  %67 = load i32, i32* %available_width, align 4
  %width70 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %bounds, i32 0, i32 2
  %68 = load i32, i32* %width70, align 4
  %sub71 = sub nsw i32 %67, %68
  %conv72 = sitofp i32 %sub71 to double
  %mul73 = fmul double %66, %conv72
  %x74 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %bounds, i32 0, i32 0
  %69 = load i32, i32* %x74, align 4
  %conv75 = sitofp i32 %69 to double
  %sub76 = fsub double %mul73, %conv75
  %70 = load i32, i32* %x, align 4
  %conv77 = sitofp i32 %70 to double
  %add = fadd double %conv77, %sub76
  %conv78 = fptosi double %add to i32
  store i32 %conv78, i32* %x, align 4
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.69, %if.else.54
  %71 = load i32, i32* %available_height, align 4
  %height80 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %bounds, i32 0, i32 3
  %72 = load i32, i32* %height80, align 4
  %cmp81 = icmp sgt i32 %71, %72
  br i1 %cmp81, label %if.then.83, label %if.end.94

if.then.83:                                       ; preds = %if.end.79
  %73 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %yalign = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %73, i32 0, i32 4
  %74 = load double, double* %yalign, align 8
  %75 = load i32, i32* %available_height, align 4
  %height84 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %bounds, i32 0, i32 3
  %76 = load i32, i32* %height84, align 4
  %sub85 = sub nsw i32 %75, %76
  %conv86 = sitofp i32 %sub85 to double
  %mul87 = fmul double %74, %conv86
  %y88 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %bounds, i32 0, i32 1
  %77 = load i32, i32* %y88, align 4
  %conv89 = sitofp i32 %77 to double
  %sub90 = fsub double %mul87, %conv89
  %78 = load i32, i32* %y, align 4
  %conv91 = sitofp i32 %78 to double
  %add92 = fadd double %conv91, %sub90
  %conv93 = fptosi double %add92 to i32
  store i32 %conv93, i32* %y, align 4
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.83, %if.end.79
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.then.50
  %79 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %matrix96 = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %79, i32 0, i32 9
  %80 = load i32, i32* %x, align 4
  %conv97 = sitofp i32 %80 to double
  %81 = load i32, i32* %y, align 4
  %conv98 = sitofp i32 %81 to double
  call void @cairo_matrix_init_translate(%struct._cairo_matrix* %matrix96, double %conv97, double %conv98)
  %82 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %matrix99 = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %82, i32 0, i32 9
  %83 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %angle100 = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %83, i32 0, i32 7
  %84 = load double, double* %angle100, align 8
  call void @cairo_matrix_rotate(%struct._cairo_matrix* %matrix99, double %84)
  br label %return

return:                                           ; preds = %if.end.95, %if.else.14, %if.else.9
  ret void
}

declare void @gtk_widget_get_child_requisition(%struct._GtkWidget*, %struct._GtkRequisition*) #3

declare void @gtk_widget_size_allocate(%struct._GtkWidget*, %struct._GdkRectangle*) #3

declare void @gdk_window_get_position(%struct._GdkDrawable*, i32*, i32*) #3

declare i32 @gdk_window_get_width(%struct._GdkDrawable*) #3

declare i32 @gdk_window_get_height(%struct._GdkDrawable*) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_overlay_child_transform_bounds(%struct._GimpOverlayChild* %child, %struct._GdkRectangle* %bounds_child, %struct._GdkRectangle* %bounds_box) #0 {
entry:
  %child.addr = alloca %struct._GimpOverlayChild*, align 8
  %bounds_child.addr = alloca %struct._GdkRectangle*, align 8
  %bounds_box.addr = alloca %struct._GdkRectangle*, align 8
  %x1 = alloca double, align 8
  %x2 = alloca double, align 8
  %x3 = alloca double, align 8
  %x4 = alloca double, align 8
  %y1 = alloca double, align 8
  %y2 = alloca double, align 8
  %y3 = alloca double, align 8
  %y4 = alloca double, align 8
  store %struct._GimpOverlayChild* %child, %struct._GimpOverlayChild** %child.addr, align 8
  store %struct._GdkRectangle* %bounds_child, %struct._GdkRectangle** %bounds_child.addr, align 8
  store %struct._GdkRectangle* %bounds_box, %struct._GdkRectangle** %bounds_box.addr, align 8
  %0 = load %struct._GdkRectangle*, %struct._GdkRectangle** %bounds_child.addr, align 8
  %x = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %0, i32 0, i32 0
  %1 = load i32, i32* %x, align 4
  %conv = sitofp i32 %1 to double
  store double %conv, double* %x1, align 8
  %2 = load %struct._GdkRectangle*, %struct._GdkRectangle** %bounds_child.addr, align 8
  %y = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %2, i32 0, i32 1
  %3 = load i32, i32* %y, align 4
  %conv1 = sitofp i32 %3 to double
  store double %conv1, double* %y1, align 8
  %4 = load %struct._GdkRectangle*, %struct._GdkRectangle** %bounds_child.addr, align 8
  %x5 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %4, i32 0, i32 0
  %5 = load i32, i32* %x5, align 4
  %6 = load %struct._GdkRectangle*, %struct._GdkRectangle** %bounds_child.addr, align 8
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %6, i32 0, i32 2
  %7 = load i32, i32* %width, align 4
  %add = add nsw i32 %5, %7
  %conv6 = sitofp i32 %add to double
  store double %conv6, double* %x2, align 8
  %8 = load %struct._GdkRectangle*, %struct._GdkRectangle** %bounds_child.addr, align 8
  %y7 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %8, i32 0, i32 1
  %9 = load i32, i32* %y7, align 4
  %conv8 = sitofp i32 %9 to double
  store double %conv8, double* %y2, align 8
  %10 = load %struct._GdkRectangle*, %struct._GdkRectangle** %bounds_child.addr, align 8
  %x9 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %10, i32 0, i32 0
  %11 = load i32, i32* %x9, align 4
  %conv10 = sitofp i32 %11 to double
  store double %conv10, double* %x3, align 8
  %12 = load %struct._GdkRectangle*, %struct._GdkRectangle** %bounds_child.addr, align 8
  %y11 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %12, i32 0, i32 1
  %13 = load i32, i32* %y11, align 4
  %14 = load %struct._GdkRectangle*, %struct._GdkRectangle** %bounds_child.addr, align 8
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %14, i32 0, i32 3
  %15 = load i32, i32* %height, align 4
  %add12 = add nsw i32 %13, %15
  %conv13 = sitofp i32 %add12 to double
  store double %conv13, double* %y3, align 8
  %16 = load %struct._GdkRectangle*, %struct._GdkRectangle** %bounds_child.addr, align 8
  %x14 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %16, i32 0, i32 0
  %17 = load i32, i32* %x14, align 4
  %18 = load %struct._GdkRectangle*, %struct._GdkRectangle** %bounds_child.addr, align 8
  %width15 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %18, i32 0, i32 2
  %19 = load i32, i32* %width15, align 4
  %add16 = add nsw i32 %17, %19
  %conv17 = sitofp i32 %add16 to double
  store double %conv17, double* %x4, align 8
  %20 = load %struct._GdkRectangle*, %struct._GdkRectangle** %bounds_child.addr, align 8
  %y18 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %20, i32 0, i32 1
  %21 = load i32, i32* %y18, align 4
  %22 = load %struct._GdkRectangle*, %struct._GdkRectangle** %bounds_child.addr, align 8
  %height19 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %22, i32 0, i32 3
  %23 = load i32, i32* %height19, align 4
  %add20 = add nsw i32 %21, %23
  %conv21 = sitofp i32 %add20 to double
  store double %conv21, double* %y4, align 8
  %24 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %matrix = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %24, i32 0, i32 9
  call void @cairo_matrix_transform_point(%struct._cairo_matrix* %matrix, double* %x1, double* %y1)
  %25 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %matrix22 = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %25, i32 0, i32 9
  call void @cairo_matrix_transform_point(%struct._cairo_matrix* %matrix22, double* %x2, double* %y2)
  %26 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %matrix23 = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %26, i32 0, i32 9
  call void @cairo_matrix_transform_point(%struct._cairo_matrix* %matrix23, double* %x3, double* %y3)
  %27 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %matrix24 = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %27, i32 0, i32 9
  call void @cairo_matrix_transform_point(%struct._cairo_matrix* %matrix24, double* %x4, double* %y4)
  %28 = load double, double* %x1, align 8
  %29 = load double, double* %x2, align 8
  %cmp = fcmp olt double %28, %29
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %30 = load double, double* %x1, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %31 = load double, double* %x2, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %30, %cond.true ], [ %31, %cond.false ]
  %32 = load double, double* %x3, align 8
  %33 = load double, double* %x4, align 8
  %cmp26 = fcmp olt double %32, %33
  br i1 %cmp26, label %cond.true.28, label %cond.false.29

cond.true.28:                                     ; preds = %cond.end
  %34 = load double, double* %x3, align 8
  br label %cond.end.30

cond.false.29:                                    ; preds = %cond.end
  %35 = load double, double* %x4, align 8
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.29, %cond.true.28
  %cond31 = phi double [ %34, %cond.true.28 ], [ %35, %cond.false.29 ]
  %cmp32 = fcmp olt double %cond, %cond31
  br i1 %cmp32, label %cond.true.34, label %cond.false.41

cond.true.34:                                     ; preds = %cond.end.30
  %36 = load double, double* %x1, align 8
  %37 = load double, double* %x2, align 8
  %cmp35 = fcmp olt double %36, %37
  br i1 %cmp35, label %cond.true.37, label %cond.false.38

cond.true.37:                                     ; preds = %cond.true.34
  %38 = load double, double* %x1, align 8
  br label %cond.end.39

cond.false.38:                                    ; preds = %cond.true.34
  %39 = load double, double* %x2, align 8
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.false.38, %cond.true.37
  %cond40 = phi double [ %38, %cond.true.37 ], [ %39, %cond.false.38 ]
  br label %cond.end.48

cond.false.41:                                    ; preds = %cond.end.30
  %40 = load double, double* %x3, align 8
  %41 = load double, double* %x4, align 8
  %cmp42 = fcmp olt double %40, %41
  br i1 %cmp42, label %cond.true.44, label %cond.false.45

cond.true.44:                                     ; preds = %cond.false.41
  %42 = load double, double* %x3, align 8
  br label %cond.end.46

cond.false.45:                                    ; preds = %cond.false.41
  %43 = load double, double* %x4, align 8
  br label %cond.end.46

cond.end.46:                                      ; preds = %cond.false.45, %cond.true.44
  %cond47 = phi double [ %42, %cond.true.44 ], [ %43, %cond.false.45 ]
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.end.46, %cond.end.39
  %cond49 = phi double [ %cond40, %cond.end.39 ], [ %cond47, %cond.end.46 ]
  %call = call double @floor(double %cond49) #5
  %conv50 = fptosi double %call to i32
  %44 = load %struct._GdkRectangle*, %struct._GdkRectangle** %bounds_box.addr, align 8
  %x51 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %44, i32 0, i32 0
  store i32 %conv50, i32* %x51, align 4
  %45 = load double, double* %y1, align 8
  %46 = load double, double* %y2, align 8
  %cmp52 = fcmp olt double %45, %46
  br i1 %cmp52, label %cond.true.54, label %cond.false.55

cond.true.54:                                     ; preds = %cond.end.48
  %47 = load double, double* %y1, align 8
  br label %cond.end.56

cond.false.55:                                    ; preds = %cond.end.48
  %48 = load double, double* %y2, align 8
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.false.55, %cond.true.54
  %cond57 = phi double [ %47, %cond.true.54 ], [ %48, %cond.false.55 ]
  %49 = load double, double* %y3, align 8
  %50 = load double, double* %y4, align 8
  %cmp58 = fcmp olt double %49, %50
  br i1 %cmp58, label %cond.true.60, label %cond.false.61

cond.true.60:                                     ; preds = %cond.end.56
  %51 = load double, double* %y3, align 8
  br label %cond.end.62

cond.false.61:                                    ; preds = %cond.end.56
  %52 = load double, double* %y4, align 8
  br label %cond.end.62

cond.end.62:                                      ; preds = %cond.false.61, %cond.true.60
  %cond63 = phi double [ %51, %cond.true.60 ], [ %52, %cond.false.61 ]
  %cmp64 = fcmp olt double %cond57, %cond63
  br i1 %cmp64, label %cond.true.66, label %cond.false.73

cond.true.66:                                     ; preds = %cond.end.62
  %53 = load double, double* %y1, align 8
  %54 = load double, double* %y2, align 8
  %cmp67 = fcmp olt double %53, %54
  br i1 %cmp67, label %cond.true.69, label %cond.false.70

cond.true.69:                                     ; preds = %cond.true.66
  %55 = load double, double* %y1, align 8
  br label %cond.end.71

cond.false.70:                                    ; preds = %cond.true.66
  %56 = load double, double* %y2, align 8
  br label %cond.end.71

cond.end.71:                                      ; preds = %cond.false.70, %cond.true.69
  %cond72 = phi double [ %55, %cond.true.69 ], [ %56, %cond.false.70 ]
  br label %cond.end.80

cond.false.73:                                    ; preds = %cond.end.62
  %57 = load double, double* %y3, align 8
  %58 = load double, double* %y4, align 8
  %cmp74 = fcmp olt double %57, %58
  br i1 %cmp74, label %cond.true.76, label %cond.false.77

cond.true.76:                                     ; preds = %cond.false.73
  %59 = load double, double* %y3, align 8
  br label %cond.end.78

cond.false.77:                                    ; preds = %cond.false.73
  %60 = load double, double* %y4, align 8
  br label %cond.end.78

cond.end.78:                                      ; preds = %cond.false.77, %cond.true.76
  %cond79 = phi double [ %59, %cond.true.76 ], [ %60, %cond.false.77 ]
  br label %cond.end.80

cond.end.80:                                      ; preds = %cond.end.78, %cond.end.71
  %cond81 = phi double [ %cond72, %cond.end.71 ], [ %cond79, %cond.end.78 ]
  %call82 = call double @floor(double %cond81) #5
  %conv83 = fptosi double %call82 to i32
  %61 = load %struct._GdkRectangle*, %struct._GdkRectangle** %bounds_box.addr, align 8
  %y84 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %61, i32 0, i32 1
  store i32 %conv83, i32* %y84, align 4
  %62 = load double, double* %x1, align 8
  %63 = load double, double* %x2, align 8
  %cmp85 = fcmp ogt double %62, %63
  br i1 %cmp85, label %cond.true.87, label %cond.false.88

cond.true.87:                                     ; preds = %cond.end.80
  %64 = load double, double* %x1, align 8
  br label %cond.end.89

cond.false.88:                                    ; preds = %cond.end.80
  %65 = load double, double* %x2, align 8
  br label %cond.end.89

cond.end.89:                                      ; preds = %cond.false.88, %cond.true.87
  %cond90 = phi double [ %64, %cond.true.87 ], [ %65, %cond.false.88 ]
  %66 = load double, double* %x3, align 8
  %67 = load double, double* %x4, align 8
  %cmp91 = fcmp ogt double %66, %67
  br i1 %cmp91, label %cond.true.93, label %cond.false.94

cond.true.93:                                     ; preds = %cond.end.89
  %68 = load double, double* %x3, align 8
  br label %cond.end.95

cond.false.94:                                    ; preds = %cond.end.89
  %69 = load double, double* %x4, align 8
  br label %cond.end.95

cond.end.95:                                      ; preds = %cond.false.94, %cond.true.93
  %cond96 = phi double [ %68, %cond.true.93 ], [ %69, %cond.false.94 ]
  %cmp97 = fcmp ogt double %cond90, %cond96
  br i1 %cmp97, label %cond.true.99, label %cond.false.106

cond.true.99:                                     ; preds = %cond.end.95
  %70 = load double, double* %x1, align 8
  %71 = load double, double* %x2, align 8
  %cmp100 = fcmp ogt double %70, %71
  br i1 %cmp100, label %cond.true.102, label %cond.false.103

cond.true.102:                                    ; preds = %cond.true.99
  %72 = load double, double* %x1, align 8
  br label %cond.end.104

cond.false.103:                                   ; preds = %cond.true.99
  %73 = load double, double* %x2, align 8
  br label %cond.end.104

cond.end.104:                                     ; preds = %cond.false.103, %cond.true.102
  %cond105 = phi double [ %72, %cond.true.102 ], [ %73, %cond.false.103 ]
  br label %cond.end.113

cond.false.106:                                   ; preds = %cond.end.95
  %74 = load double, double* %x3, align 8
  %75 = load double, double* %x4, align 8
  %cmp107 = fcmp ogt double %74, %75
  br i1 %cmp107, label %cond.true.109, label %cond.false.110

cond.true.109:                                    ; preds = %cond.false.106
  %76 = load double, double* %x3, align 8
  br label %cond.end.111

cond.false.110:                                   ; preds = %cond.false.106
  %77 = load double, double* %x4, align 8
  br label %cond.end.111

cond.end.111:                                     ; preds = %cond.false.110, %cond.true.109
  %cond112 = phi double [ %76, %cond.true.109 ], [ %77, %cond.false.110 ]
  br label %cond.end.113

cond.end.113:                                     ; preds = %cond.end.111, %cond.end.104
  %cond114 = phi double [ %cond105, %cond.end.104 ], [ %cond112, %cond.end.111 ]
  %call115 = call double @ceil(double %cond114) #5
  %conv116 = fptosi double %call115 to i32
  %78 = load %struct._GdkRectangle*, %struct._GdkRectangle** %bounds_box.addr, align 8
  %x117 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %78, i32 0, i32 0
  %79 = load i32, i32* %x117, align 4
  %sub = sub nsw i32 %conv116, %79
  %80 = load %struct._GdkRectangle*, %struct._GdkRectangle** %bounds_box.addr, align 8
  %width118 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %80, i32 0, i32 2
  store i32 %sub, i32* %width118, align 4
  %81 = load double, double* %y1, align 8
  %82 = load double, double* %y2, align 8
  %cmp119 = fcmp ogt double %81, %82
  br i1 %cmp119, label %cond.true.121, label %cond.false.122

cond.true.121:                                    ; preds = %cond.end.113
  %83 = load double, double* %y1, align 8
  br label %cond.end.123

cond.false.122:                                   ; preds = %cond.end.113
  %84 = load double, double* %y2, align 8
  br label %cond.end.123

cond.end.123:                                     ; preds = %cond.false.122, %cond.true.121
  %cond124 = phi double [ %83, %cond.true.121 ], [ %84, %cond.false.122 ]
  %85 = load double, double* %y3, align 8
  %86 = load double, double* %y4, align 8
  %cmp125 = fcmp ogt double %85, %86
  br i1 %cmp125, label %cond.true.127, label %cond.false.128

cond.true.127:                                    ; preds = %cond.end.123
  %87 = load double, double* %y3, align 8
  br label %cond.end.129

cond.false.128:                                   ; preds = %cond.end.123
  %88 = load double, double* %y4, align 8
  br label %cond.end.129

cond.end.129:                                     ; preds = %cond.false.128, %cond.true.127
  %cond130 = phi double [ %87, %cond.true.127 ], [ %88, %cond.false.128 ]
  %cmp131 = fcmp ogt double %cond124, %cond130
  br i1 %cmp131, label %cond.true.133, label %cond.false.140

cond.true.133:                                    ; preds = %cond.end.129
  %89 = load double, double* %y1, align 8
  %90 = load double, double* %y2, align 8
  %cmp134 = fcmp ogt double %89, %90
  br i1 %cmp134, label %cond.true.136, label %cond.false.137

cond.true.136:                                    ; preds = %cond.true.133
  %91 = load double, double* %y1, align 8
  br label %cond.end.138

cond.false.137:                                   ; preds = %cond.true.133
  %92 = load double, double* %y2, align 8
  br label %cond.end.138

cond.end.138:                                     ; preds = %cond.false.137, %cond.true.136
  %cond139 = phi double [ %91, %cond.true.136 ], [ %92, %cond.false.137 ]
  br label %cond.end.147

cond.false.140:                                   ; preds = %cond.end.129
  %93 = load double, double* %y3, align 8
  %94 = load double, double* %y4, align 8
  %cmp141 = fcmp ogt double %93, %94
  br i1 %cmp141, label %cond.true.143, label %cond.false.144

cond.true.143:                                    ; preds = %cond.false.140
  %95 = load double, double* %y3, align 8
  br label %cond.end.145

cond.false.144:                                   ; preds = %cond.false.140
  %96 = load double, double* %y4, align 8
  br label %cond.end.145

cond.end.145:                                     ; preds = %cond.false.144, %cond.true.143
  %cond146 = phi double [ %95, %cond.true.143 ], [ %96, %cond.false.144 ]
  br label %cond.end.147

cond.end.147:                                     ; preds = %cond.end.145, %cond.end.138
  %cond148 = phi double [ %cond139, %cond.end.138 ], [ %cond146, %cond.end.145 ]
  %call149 = call double @ceil(double %cond148) #5
  %conv150 = fptosi double %call149 to i32
  %97 = load %struct._GdkRectangle*, %struct._GdkRectangle** %bounds_box.addr, align 8
  %y151 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %97, i32 0, i32 1
  %98 = load i32, i32* %y151, align 4
  %sub152 = sub nsw i32 %conv150, %98
  %99 = load %struct._GdkRectangle*, %struct._GdkRectangle** %bounds_box.addr, align 8
  %height153 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %99, i32 0, i32 3
  store i32 %sub152, i32* %height153, align 4
  ret void
}

declare void @gdk_window_invalidate_rect(%struct._GdkDrawable*, %struct._GdkRectangle*, i32) #3

declare void @gdk_window_move_resize(%struct._GdkDrawable*, i32, i32, i32, i32) #3

declare void @cairo_matrix_rotate(%struct._cairo_matrix*, double) #3

declare i32 @gtk_container_get_border_width(%struct._GtkContainer*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #1

declare void @cairo_matrix_init_translate(%struct._cairo_matrix*, double, double) #3

; Function Attrs: nounwind uwtable
define i32 @gimp_overlay_child_expose(%struct._GimpOverlayBox* %box, %struct._GimpOverlayChild* %child, %struct._GdkEventExpose* %event) #0 {
entry:
  %retval = alloca i32, align 4
  %box.addr = alloca %struct._GimpOverlayBox*, align 8
  %child.addr = alloca %struct._GimpOverlayChild*, align 8
  %event.addr = alloca %struct._GdkEventExpose*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %child_allocation = alloca %struct._GdkRectangle, align 4
  %bounds = alloca %struct._GdkRectangle, align 4
  %pixmap = alloca %struct._GdkDrawable*, align 8
  %cr = alloca %struct._cairo*, align 8
  store %struct._GimpOverlayBox* %box, %struct._GimpOverlayBox** %box.addr, align 8
  store %struct._GimpOverlayChild* %child, %struct._GimpOverlayChild** %child.addr, align 8
  store %struct._GdkEventExpose* %event, %struct._GdkEventExpose** %event.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpOverlayBox*, %struct._GimpOverlayBox** %box.addr, align 8
  %1 = bitcast %struct._GimpOverlayBox* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_overlay_box_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_overlay_child_expose, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %cmp12 = icmp ne %struct._GimpOverlayChild* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_overlay_child_expose, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %cmp18 = icmp ne %struct._GdkEventExpose* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_overlay_child_expose, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %15 = load %struct._GimpOverlayBox*, %struct._GimpOverlayBox** %box.addr, align 8
  %16 = bitcast %struct._GimpOverlayBox* %15 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_widget_get_type() #5
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call23)
  %17 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkWidget*
  store %struct._GtkWidget* %17, %struct._GtkWidget** %widget, align 8
  %18 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %window = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %18, i32 0, i32 1
  %19 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call25 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %20)
  %cmp26 = icmp eq %struct._GdkDrawable* %19, %call25
  br i1 %cmp26, label %if.then.27, label %if.else.45

if.then.27:                                       ; preds = %do.end.22
  %21 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %widget30 = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %21, i32 0, i32 0
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %widget30, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %22, %struct._GdkRectangle* %child_allocation)
  %23 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  call void @gimp_overlay_child_transform_bounds(%struct._GimpOverlayChild* %23, %struct._GdkRectangle* %child_allocation, %struct._GdkRectangle* %bounds)
  %24 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %widget31 = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %24, i32 0, i32 0
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %widget31, align 8
  %call32 = call i32 @gtk_widget_get_visible(%struct._GtkWidget* %25)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %land.lhs.true.34, label %if.end.44

land.lhs.true.34:                                 ; preds = %if.then.27
  %26 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %area = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %26, i32 0, i32 3
  %call35 = call i32 @gdk_rectangle_intersect(%struct._GdkRectangle* %area, %struct._GdkRectangle* %bounds, %struct._GdkRectangle* null)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.then.37, label %if.end.44

if.then.37:                                       ; preds = %land.lhs.true.34
  %27 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %window39 = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %27, i32 0, i32 1
  %28 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window39, align 8
  %call40 = call %struct._GdkDrawable* @gdk_offscreen_window_get_pixmap(%struct._GdkDrawable* %28)
  store %struct._GdkDrawable* %call40, %struct._GdkDrawable** %pixmap, align 8
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call42 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %29)
  %call43 = call %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable* %call42)
  store %struct._cairo* %call43, %struct._cairo** %cr, align 8
  %30 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %31 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %region = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %31, i32 0, i32 4
  %32 = load %struct._GdkRegion*, %struct._GdkRegion** %region, align 8
  call void @gdk_cairo_region(%struct._cairo* %30, %struct._GdkRegion* %32)
  %33 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_clip(%struct._cairo* %33)
  %34 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %35 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %matrix = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %35, i32 0, i32 9
  call void @cairo_transform(%struct._cairo* %34, %struct._cairo_matrix* %matrix)
  %36 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %37 = load %struct._GdkDrawable*, %struct._GdkDrawable** %pixmap, align 8
  call void @gdk_cairo_set_source_pixmap(%struct._cairo* %36, %struct._GdkDrawable* %37, double 0.000000e+00, double 0.000000e+00)
  %38 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %39 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %opacity = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %39, i32 0, i32 8
  %40 = load double, double* %opacity, align 8
  call void @cairo_paint_with_alpha(%struct._cairo* %38, double %40)
  %41 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %41)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.37, %land.lhs.true.34, %if.then.27
  br label %if.end.63

if.else.45:                                       ; preds = %do.end.22
  %42 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %window46 = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %42, i32 0, i32 1
  %43 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window46, align 8
  %44 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %window47 = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %44, i32 0, i32 1
  %45 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window47, align 8
  %cmp48 = icmp eq %struct._GdkDrawable* %43, %45
  br i1 %cmp48, label %if.then.49, label %if.end.62

if.then.49:                                       ; preds = %if.else.45
  %46 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %widget50 = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %46, i32 0, i32 0
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %widget50, align 8
  %call51 = call i32 @gtk_widget_get_app_paintable(%struct._GtkWidget* %47)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.end.58, label %if.then.53

if.then.53:                                       ; preds = %if.then.49
  %48 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %widget54 = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %48, i32 0, i32 0
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %widget54, align 8
  %call55 = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %49)
  %50 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %window56 = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %50, i32 0, i32 1
  %51 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window56, align 8
  %52 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %area57 = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %52, i32 0, i32 3
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void @gtk_paint_flat_box(%struct._GtkStyle* %call55, %struct._GdkDrawable* %51, i32 0, i32 0, %struct._GdkRectangle* %area57, %struct._GtkWidget* %53, i8* null, i32 0, i32 0, i32 -1, i32 -1)
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.53, %if.then.49
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %55 = bitcast %struct._GtkWidget* %54 to %struct._GTypeInstance*
  %call59 = call i64 @gtk_container_get_type() #5
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call59)
  %56 = bitcast %struct._GTypeInstance* %call60 to %struct._GtkContainer*
  %57 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %widget61 = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %57, i32 0, i32 0
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %widget61, align 8
  %59 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  call void @gtk_container_propagate_expose(%struct._GtkContainer* %56, %struct._GtkWidget* %58, %struct._GdkEventExpose* %59)
  store i32 1, i32* %retval
  br label %return

if.end.62:                                        ; preds = %if.else.45
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.end.44
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.63, %if.end.58, %if.else.20, %if.else.14, %if.else.9
  %60 = load i32, i32* %retval
  ret i32 %60
}

declare i32 @gdk_rectangle_intersect(%struct._GdkRectangle*, %struct._GdkRectangle*, %struct._GdkRectangle*) #3

declare %struct._GdkDrawable* @gdk_offscreen_window_get_pixmap(%struct._GdkDrawable*) #3

declare %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable*) #3

declare void @gdk_cairo_region(%struct._cairo*, %struct._GdkRegion*) #3

declare void @cairo_clip(%struct._cairo*) #3

declare void @cairo_transform(%struct._cairo*, %struct._cairo_matrix*) #3

declare void @gdk_cairo_set_source_pixmap(%struct._cairo*, %struct._GdkDrawable*, double, double) #3

declare void @cairo_paint_with_alpha(%struct._cairo*, double) #3

declare void @cairo_destroy(%struct._cairo*) #3

declare i32 @gtk_widget_get_app_paintable(%struct._GtkWidget*) #3

declare void @gtk_paint_flat_box(%struct._GtkStyle*, %struct._GdkDrawable*, i32, i32, %struct._GdkRectangle*, %struct._GtkWidget*, i8*, i32, i32, i32, i32) #3

declare void @gtk_container_propagate_expose(%struct._GtkContainer*, %struct._GtkWidget*, %struct._GdkEventExpose*) #3

; Function Attrs: nounwind uwtable
define i32 @gimp_overlay_child_damage(%struct._GimpOverlayBox* %box, %struct._GimpOverlayChild* %child, %struct._GdkEventExpose* %event) #0 {
entry:
  %retval = alloca i32, align 4
  %box.addr = alloca %struct._GimpOverlayBox*, align 8
  %child.addr = alloca %struct._GimpOverlayChild*, align 8
  %event.addr = alloca %struct._GdkEventExpose*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %rects = alloca %struct._GdkRectangle*, align 8
  %n_rects = alloca i32, align 4
  %i = alloca i32, align 4
  %bounds = alloca %struct._GdkRectangle, align 4
  store %struct._GimpOverlayBox* %box, %struct._GimpOverlayBox** %box.addr, align 8
  store %struct._GimpOverlayChild* %child, %struct._GimpOverlayChild** %child.addr, align 8
  store %struct._GdkEventExpose* %event, %struct._GdkEventExpose** %event.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpOverlayBox*, %struct._GimpOverlayBox** %box.addr, align 8
  %1 = bitcast %struct._GimpOverlayBox* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_overlay_box_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_overlay_child_damage, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %cmp12 = icmp ne %struct._GimpOverlayChild* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_overlay_child_damage, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %cmp18 = icmp ne %struct._GdkEventExpose* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_overlay_child_damage, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %15 = load %struct._GimpOverlayBox*, %struct._GimpOverlayBox** %box.addr, align 8
  %16 = bitcast %struct._GimpOverlayBox* %15 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_widget_get_type() #5
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call23)
  %17 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkWidget*
  store %struct._GtkWidget* %17, %struct._GtkWidget** %widget, align 8
  %18 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %window = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %18, i32 0, i32 1
  %19 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  %20 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %window25 = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %20, i32 0, i32 1
  %21 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window25, align 8
  %cmp26 = icmp eq %struct._GdkDrawable* %19, %21
  br i1 %cmp26, label %if.then.27, label %if.end.34

if.then.27:                                       ; preds = %do.end.22
  %22 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %region = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %22, i32 0, i32 4
  %23 = load %struct._GdkRegion*, %struct._GdkRegion** %region, align 8
  call void @gdk_region_get_rectangles(%struct._GdkRegion* %23, %struct._GdkRectangle** %rects, i32* %n_rects)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.27
  %24 = load i32, i32* %i, align 4
  %25 = load i32, i32* %n_rects, align 4
  %cmp31 = icmp slt i32 %24, %25
  br i1 %cmp31, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom = sext i32 %27 to i64
  %28 = load %struct._GdkRectangle*, %struct._GdkRectangle** %rects, align 8
  %arrayidx = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %28, i64 %idxprom
  call void @gimp_overlay_child_transform_bounds(%struct._GimpOverlayChild* %26, %struct._GdkRectangle* %arrayidx, %struct._GdkRectangle* %bounds)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call33 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %29)
  call void @gdk_window_invalidate_rect(%struct._GdkDrawable* %call33, %struct._GdkRectangle* %bounds, i32 0)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %i, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %31 = load %struct._GdkRectangle*, %struct._GdkRectangle** %rects, align 8
  %32 = bitcast %struct._GdkRectangle* %31 to i8*
  call void @g_free(i8* %32)
  store i32 1, i32* %retval
  br label %return

if.end.34:                                        ; preds = %do.end.22
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.34, %for.end, %if.else.20, %if.else.14, %if.else.9
  %33 = load i32, i32* %retval
  ret i32 %33
}

declare void @gdk_region_get_rectangles(%struct._GdkRegion*, %struct._GdkRectangle**, i32*) #3

declare void @g_free(i8*) #3

; Function Attrs: nounwind uwtable
define void @gimp_overlay_child_invalidate(%struct._GimpOverlayBox* %box, %struct._GimpOverlayChild* %child) #0 {
entry:
  %box.addr = alloca %struct._GimpOverlayBox*, align 8
  %child.addr = alloca %struct._GimpOverlayChild*, align 8
  %window = alloca %struct._GdkDrawable*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %child_allocation = alloca %struct._GdkRectangle, align 4
  %bounds = alloca %struct._GdkRectangle, align 4
  store %struct._GimpOverlayBox* %box, %struct._GimpOverlayBox** %box.addr, align 8
  store %struct._GimpOverlayChild* %child, %struct._GimpOverlayChild** %child.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpOverlayBox*, %struct._GimpOverlayBox** %box.addr, align 8
  %1 = bitcast %struct._GimpOverlayBox* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_overlay_box_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_overlay_child_invalidate, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.28

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %cmp12 = icmp ne %struct._GimpOverlayChild* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_overlay_child_invalidate, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.28

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpOverlayBox*, %struct._GimpOverlayBox** %box.addr, align 8
  %15 = bitcast %struct._GimpOverlayBox* %14 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_widget_get_type() #5
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call17)
  %16 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkWidget*
  %call19 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %16)
  store %struct._GdkDrawable* %call19, %struct._GdkDrawable** %window, align 8
  %17 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  %tobool20 = icmp ne %struct._GdkDrawable* %17, null
  br i1 %tobool20, label %land.lhs.true.21, label %if.end.28

land.lhs.true.21:                                 ; preds = %do.end.16
  %18 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %widget = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %18, i32 0, i32 0
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call22 = call i32 @gtk_widget_get_visible(%struct._GtkWidget* %19)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then.24, label %if.end.28

if.then.24:                                       ; preds = %land.lhs.true.21
  %20 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %widget27 = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %20, i32 0, i32 0
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %widget27, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %21, %struct._GdkRectangle* %child_allocation)
  %22 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  call void @gimp_overlay_child_transform_bounds(%struct._GimpOverlayChild* %22, %struct._GdkRectangle* %child_allocation, %struct._GdkRectangle* %bounds)
  %23 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  call void @gdk_window_invalidate_rect(%struct._GdkDrawable* %23, %struct._GdkRectangle* %bounds, i32 0)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.9, %if.else.14, %if.then.24, %land.lhs.true.21, %do.end.16
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_overlay_child_pick(%struct._GimpOverlayBox* %box, %struct._GimpOverlayChild* %child, double %box_x, double %box_y) #0 {
entry:
  %retval = alloca i32, align 4
  %box.addr = alloca %struct._GimpOverlayBox*, align 8
  %child.addr = alloca %struct._GimpOverlayChild*, align 8
  %box_x.addr = alloca double, align 8
  %box_y.addr = alloca double, align 8
  %child_allocation = alloca %struct._GdkRectangle, align 4
  %child_x = alloca double, align 8
  %child_y = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpOverlayBox* %box, %struct._GimpOverlayBox** %box.addr, align 8
  store %struct._GimpOverlayChild* %child, %struct._GimpOverlayChild** %child.addr, align 8
  store double %box_x, double* %box_x.addr, align 8
  store double %box_y, double* %box_y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpOverlayBox*, %struct._GimpOverlayBox** %box.addr, align 8
  %1 = bitcast %struct._GimpOverlayBox* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_overlay_box_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_overlay_child_pick, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %cmp12 = icmp ne %struct._GimpOverlayChild* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_overlay_child_pick, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %window = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %14, i32 0, i32 1
  %15 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  %16 = load double, double* %box_x.addr, align 8
  %17 = load double, double* %box_y.addr, align 8
  %18 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  call void @gimp_overlay_child_from_embedder(%struct._GdkDrawable* %15, double %16, double %17, double* %child_x, double* %child_y, %struct._GimpOverlayChild* %18)
  %19 = load %struct._GimpOverlayChild*, %struct._GimpOverlayChild** %child.addr, align 8
  %widget = getelementptr inbounds %struct._GimpOverlayChild, %struct._GimpOverlayChild* %19, i32 0, i32 0
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %20, %struct._GdkRectangle* %child_allocation)
  %21 = load double, double* %child_x, align 8
  %cmp17 = fcmp oge double %21, 0.000000e+00
  br i1 %cmp17, label %land.lhs.true.18, label %if.end.29

land.lhs.true.18:                                 ; preds = %do.end.16
  %22 = load double, double* %child_x, align 8
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %child_allocation, i32 0, i32 2
  %23 = load i32, i32* %width, align 4
  %conv = sitofp i32 %23 to double
  %cmp19 = fcmp olt double %22, %conv
  br i1 %cmp19, label %land.lhs.true.21, label %if.end.29

land.lhs.true.21:                                 ; preds = %land.lhs.true.18
  %24 = load double, double* %child_y, align 8
  %cmp22 = fcmp oge double %24, 0.000000e+00
  br i1 %cmp22, label %land.lhs.true.24, label %if.end.29

land.lhs.true.24:                                 ; preds = %land.lhs.true.21
  %25 = load double, double* %child_y, align 8
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %child_allocation, i32 0, i32 3
  %26 = load i32, i32* %height, align 4
  %conv25 = sitofp i32 %26 to double
  %cmp26 = fcmp olt double %25, %conv25
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %retval
  br label %return

if.end.29:                                        ; preds = %land.lhs.true.24, %land.lhs.true.21, %land.lhs.true.18, %do.end.16
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.29, %if.then.28, %if.else.14, %if.else.9
  %27 = load i32, i32* %retval
  ret i32 %27
}

declare void @cairo_matrix_transform_point(%struct._cairo_matrix*, double*, double*) #3

; Function Attrs: nounwind readnone
declare double @floor(double) #1

; Function Attrs: nounwind readnone
declare double @ceil(double) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare i32 @cairo_matrix_invert(%struct._cairo_matrix*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
