; ModuleID = './app/display/gimpcanvasarc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpCanvasArcClass = type { %struct._GimpCanvasItemClass }
%struct._GimpCanvasItemClass = type { %struct._GimpObjectClass, void (%struct._GimpCanvasItem*, %struct._cairo_region*)*, void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)*, %struct._cairo_region* (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*)*, void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)*, void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)*, i32 (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, double, double)* }
%struct._GimpObjectClass = type { %struct._GObjectClass, void (%struct._GimpObject*)*, void (%struct._GimpObject*)*, i64 (%struct._GimpObject*, i64*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpCanvasItem = type { %struct._GimpObject }
%struct._cairo_region = type opaque
%struct._GimpDisplayShell = type { %struct._GtkBox, %struct._GimpDisplay*, %struct._GimpUIManager*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct._GimpZoomModel*, double, i32, i32, i32, double, i32, i32, i32, %struct._Selection*, %struct._GList*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._cairo_surface*, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, i32, i8*, i8*, i32, i32, %struct._GdkPixbuf*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GimpColorDisplayStack*, i32, %struct._GtkWidget*, i32, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i8*, %struct._GimpDrawable*, %struct._GimpRGB, %struct._GimpMotionBuffer*, %struct._GQueue* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
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
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GimpDisplay = type opaque
%struct._GimpUIManager = type opaque
%struct._GimpDisplayOptions = type opaque
%struct._GimpZoomModel = type opaque
%struct._Selection = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpColorDisplayStack = type opaque
%struct._GimpTreeHandler = type opaque
%struct._GimpDrawable = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpMotionBuffer = type opaque
%struct._GQueue = type { %struct._GList*, %struct._GList*, i32 }
%struct._cairo = type opaque
%struct._GimpCanvasArc = type { %struct._GimpCanvasItem }
%struct._GimpCanvasArcPrivate = type { double, double, double, double, double, double, i32 }
%struct._cairo_rectangle_int = type { i32, i32, i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_canvas_arc_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"GimpCanvasArc\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Display\00", align 1
@__func__.gimp_canvas_arc_new = private unnamed_addr constant [20 x i8] c"gimp_canvas_arc_new\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"GIMP_IS_DISPLAY_SHELL (shell)\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"center-x\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"center-y\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"radius-x\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"radius-y\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"start-angle\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"slice-angle\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"filled\00", align 1
@gimp_canvas_arc_parent_class = internal global i8* null, align 8
@GimpCanvasArc_private_offset = internal global i32 0, align 4
@.str.11 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"gimpcanvasarc.c\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"property\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_canvas_arc_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_canvas_arc_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_canvas_arc_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_canvas_item_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 208, void (i8*, i8*)* bitcast (void (i8*)* @gimp_canvas_arc_class_intern_init to void (i8*, i8*)*), i32 32, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpCanvasArc*)* @gimp_canvas_arc_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_canvas_arc_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_canvas_arc_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_canvas_item_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_arc_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_canvas_arc_parent_class, align 8
  %1 = load i32, i32* @GimpCanvasArc_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpCanvasArc_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpCanvasArcClass*
  call void @gimp_canvas_arc_class_init(%struct._GimpCanvasArcClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_arc_init(%struct._GimpCanvasArc* %arc) #3 {
entry:
  %arc.addr = alloca %struct._GimpCanvasArc*, align 8
  store %struct._GimpCanvasArc* %arc, %struct._GimpCanvasArc** %arc.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpCanvasItem* @gimp_canvas_arc_new(%struct._GimpDisplayShell* %shell, double %center_x, double %center_y, double %radius_x, double %radius_y, double %start_angle, double %slice_angle, i32 %filled) #3 {
entry:
  %retval = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %center_x.addr = alloca double, align 8
  %center_y.addr = alloca double, align 8
  %radius_x.addr = alloca double, align 8
  %radius_y.addr = alloca double, align 8
  %start_angle.addr = alloca double, align 8
  %slice_angle.addr = alloca double, align 8
  %filled.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store double %center_x, double* %center_x.addr, align 8
  store double %center_y, double* %center_y.addr, align 8
  store double %radius_x, double* %radius_x.addr, align 8
  store double %radius_y, double* %radius_y.addr, align 8
  store double %start_angle, double* %start_angle.addr, align 8
  store double %slice_angle, double* %slice_angle.addr, align 8
  store i32 %filled, i32* %filled.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_shell_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_canvas_arc_new, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_canvas_arc_get_type() #6
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %14 = load double, double* %center_x.addr, align 8
  %15 = load double, double* %center_y.addr, align 8
  %16 = load double, double* %radius_x.addr, align 8
  %17 = load double, double* %radius_y.addr, align 8
  %18 = load double, double* %start_angle.addr, align 8
  %19 = load double, double* %slice_angle.addr, align 8
  %20 = load i32, i32* %filled.addr, align 4
  %call12 = call i8* (i64, i8*, ...) @g_object_new(i64 %call11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), %struct._GimpDisplayShell* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), double %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), double %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), double %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), double %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), double %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), double %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 %20, i8* null)
  %21 = bitcast i8* %call12 to %struct._GimpCanvasItem*
  store %struct._GimpCanvasItem* %21, %struct._GimpCanvasItem** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %22 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %retval
  ret %struct._GimpCanvasItem* %22
}

; Function Attrs: nounwind readnone
declare i64 @gimp_display_shell_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_arc_class_init(%struct._GimpCanvasArcClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpCanvasArcClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %item_class = alloca %struct._GimpCanvasItemClass*, align 8
  store %struct._GimpCanvasArcClass* %klass, %struct._GimpCanvasArcClass** %klass.addr, align 8
  %0 = load %struct._GimpCanvasArcClass*, %struct._GimpCanvasArcClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpCanvasArcClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpCanvasArcClass*, %struct._GimpCanvasArcClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpCanvasArcClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_canvas_item_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpCanvasItemClass*
  store %struct._GimpCanvasItemClass* %5, %struct._GimpCanvasItemClass** %item_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_canvas_arc_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_canvas_arc_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %8 = load %struct._GimpCanvasItemClass*, %struct._GimpCanvasItemClass** %item_class, align 8
  %draw = getelementptr inbounds %struct._GimpCanvasItemClass, %struct._GimpCanvasItemClass* %8, i32 0, i32 2
  store void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)* @gimp_canvas_arc_draw, void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)** %draw, align 8
  %9 = load %struct._GimpCanvasItemClass*, %struct._GimpCanvasItemClass** %item_class, align 8
  %get_extents = getelementptr inbounds %struct._GimpCanvasItemClass, %struct._GimpCanvasItemClass* %9, i32 0, i32 3
  store %struct._cairo_region* (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*)* @gimp_canvas_arc_get_extents, %struct._cairo_region* (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*)** %get_extents, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* null, double -2.621440e+05, double 2.621440e+05, double 0.000000e+00, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %10, i32 1, %struct._GParamSpec* %call3)
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call4 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null, double -2.621440e+05, double 2.621440e+05, double 0.000000e+00, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %11, i32 2, %struct._GParamSpec* %call4)
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null, double 0.000000e+00, double 2.621440e+05, double 0.000000e+00, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %12, i32 3, %struct._GParamSpec* %call5)
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null, double 0.000000e+00, double 2.621440e+05, double 0.000000e+00, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %13, i32 4, %struct._GParamSpec* %call6)
  %14 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call7 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* null, double -1.000000e+03, double 1.000000e+03, double 0.000000e+00, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %14, i32 5, %struct._GParamSpec* %call7)
  %15 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call8 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* null, double -1.000000e+03, double 1.000000e+03, double 0x401921FB54442D18, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %15, i32 6, %struct._GParamSpec* %call8)
  %16 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call9 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8* null, i8* null, i32 0, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %16, i32 7, %struct._GParamSpec* %call9)
  %17 = load %struct._GimpCanvasArcClass*, %struct._GimpCanvasArcClass** %klass.addr, align 8
  %18 = bitcast %struct._GimpCanvasArcClass* %17 to i8*
  call void @g_type_class_add_private(i8* %18, i64 56)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_arc_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpCanvasArcPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_arc_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasArcPrivate*
  store %struct._GimpCanvasArcPrivate* %2, %struct._GimpCanvasArcPrivate** %private, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.5
    i32 4, label %sw.bb.7
    i32 5, label %sw.bb.9
    i32 6, label %sw.bb.11
    i32 7, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call double @g_value_get_double(%struct._GValue* %4)
  %5 = load %struct._GimpCanvasArcPrivate*, %struct._GimpCanvasArcPrivate** %private, align 8
  %center_x = getelementptr inbounds %struct._GimpCanvasArcPrivate, %struct._GimpCanvasArcPrivate* %5, i32 0, i32 0
  store double %call2, double* %center_x, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %6 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call double @g_value_get_double(%struct._GValue* %6)
  %7 = load %struct._GimpCanvasArcPrivate*, %struct._GimpCanvasArcPrivate** %private, align 8
  %center_y = getelementptr inbounds %struct._GimpCanvasArcPrivate, %struct._GimpCanvasArcPrivate* %7, i32 0, i32 1
  store double %call4, double* %center_y, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call double @g_value_get_double(%struct._GValue* %8)
  %9 = load %struct._GimpCanvasArcPrivate*, %struct._GimpCanvasArcPrivate** %private, align 8
  %radius_x = getelementptr inbounds %struct._GimpCanvasArcPrivate, %struct._GimpCanvasArcPrivate* %9, i32 0, i32 2
  store double %call6, double* %radius_x, align 8
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call8 = call double @g_value_get_double(%struct._GValue* %10)
  %11 = load %struct._GimpCanvasArcPrivate*, %struct._GimpCanvasArcPrivate** %private, align 8
  %radius_y = getelementptr inbounds %struct._GimpCanvasArcPrivate, %struct._GimpCanvasArcPrivate* %11, i32 0, i32 3
  store double %call8, double* %radius_y, align 8
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %12 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call10 = call double @g_value_get_double(%struct._GValue* %12)
  %13 = load %struct._GimpCanvasArcPrivate*, %struct._GimpCanvasArcPrivate** %private, align 8
  %start_angle = getelementptr inbounds %struct._GimpCanvasArcPrivate, %struct._GimpCanvasArcPrivate* %13, i32 0, i32 4
  store double %call10, double* %start_angle, align 8
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %14 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call12 = call double @g_value_get_double(%struct._GValue* %14)
  %15 = load %struct._GimpCanvasArcPrivate*, %struct._GimpCanvasArcPrivate** %private, align 8
  %slice_angle = getelementptr inbounds %struct._GimpCanvasArcPrivate, %struct._GimpCanvasArcPrivate* %15, i32 0, i32 5
  store double %call12, double* %slice_angle, align 8
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call14 = call i32 @g_value_get_boolean(%struct._GValue* %16)
  %17 = load %struct._GimpCanvasArcPrivate*, %struct._GimpCanvasArcPrivate** %private, align 8
  %filled = getelementptr inbounds %struct._GimpCanvasArcPrivate, %struct._GimpCanvasArcPrivate* %17, i32 0, i32 6
  store i32 %call14, i32* %filled, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %18 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %18, %struct._GObject** %_glib__object, align 8
  %19 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %19, %struct._GParamSpec** %_glib__pspec, align 8
  %20 = load i32, i32* %property_id.addr, align 4
  store i32 %20, i32* %_glib__property_id, align 4
  %21 = load i32, i32* %_glib__property_id, align 4
  %22 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %22, i32 0, i32 1
  %23 = load i8*, i8** %name, align 8
  %24 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %25 = bitcast %struct._GParamSpec* %24 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %25, i32 0, i32 0
  %26 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %26, i32 0, i32 0
  %27 = load i64, i64* %g_type, align 8
  %call15 = call i8* @g_type_name(i64 %27)
  %28 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %29 = bitcast %struct._GObject* %28 to %struct._GTypeInstance*
  %g_class16 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %29, i32 0, i32 0
  %30 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class16, align 8
  %g_type17 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %30, i32 0, i32 0
  %31 = load i64, i64* %g_type17, align 8
  %call18 = call i8* @g_type_name(i64 %31)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0), i32 183, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 %21, i8* %23, i8* %call15, i8* %call18)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.13, %sw.bb.11, %sw.bb.9, %sw.bb.7, %sw.bb.5, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_arc_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpCanvasArcPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_arc_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasArcPrivate*
  store %struct._GimpCanvasArcPrivate* %2, %struct._GimpCanvasArcPrivate** %private, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.4
    i32 5, label %sw.bb.5
    i32 6, label %sw.bb.6
    i32 7, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpCanvasArcPrivate*, %struct._GimpCanvasArcPrivate** %private, align 8
  %center_x = getelementptr inbounds %struct._GimpCanvasArcPrivate, %struct._GimpCanvasArcPrivate* %5, i32 0, i32 0
  %6 = load double, double* %center_x, align 8
  call void @g_value_set_double(%struct._GValue* %4, double %6)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GimpCanvasArcPrivate*, %struct._GimpCanvasArcPrivate** %private, align 8
  %center_y = getelementptr inbounds %struct._GimpCanvasArcPrivate, %struct._GimpCanvasArcPrivate* %8, i32 0, i32 1
  %9 = load double, double* %center_y, align 8
  call void @g_value_set_double(%struct._GValue* %7, double %9)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %11 = load %struct._GimpCanvasArcPrivate*, %struct._GimpCanvasArcPrivate** %private, align 8
  %radius_x = getelementptr inbounds %struct._GimpCanvasArcPrivate, %struct._GimpCanvasArcPrivate* %11, i32 0, i32 2
  %12 = load double, double* %radius_x, align 8
  call void @g_value_set_double(%struct._GValue* %10, double %12)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %13 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %14 = load %struct._GimpCanvasArcPrivate*, %struct._GimpCanvasArcPrivate** %private, align 8
  %radius_y = getelementptr inbounds %struct._GimpCanvasArcPrivate, %struct._GimpCanvasArcPrivate* %14, i32 0, i32 3
  %15 = load double, double* %radius_y, align 8
  call void @g_value_set_double(%struct._GValue* %13, double %15)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %17 = load %struct._GimpCanvasArcPrivate*, %struct._GimpCanvasArcPrivate** %private, align 8
  %start_angle = getelementptr inbounds %struct._GimpCanvasArcPrivate, %struct._GimpCanvasArcPrivate* %17, i32 0, i32 4
  %18 = load double, double* %start_angle, align 8
  call void @g_value_set_double(%struct._GValue* %16, double %18)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %19 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %20 = load %struct._GimpCanvasArcPrivate*, %struct._GimpCanvasArcPrivate** %private, align 8
  %slice_angle = getelementptr inbounds %struct._GimpCanvasArcPrivate, %struct._GimpCanvasArcPrivate* %20, i32 0, i32 5
  %21 = load double, double* %slice_angle, align 8
  call void @g_value_set_double(%struct._GValue* %19, double %21)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %22 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %23 = load %struct._GimpCanvasArcPrivate*, %struct._GimpCanvasArcPrivate** %private, align 8
  %filled = getelementptr inbounds %struct._GimpCanvasArcPrivate, %struct._GimpCanvasArcPrivate* %23, i32 0, i32 6
  %24 = load i32, i32* %filled, align 4
  call void @g_value_set_boolean(%struct._GValue* %22, i32 %24)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %25 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %25, %struct._GObject** %_glib__object, align 8
  %26 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %26, %struct._GParamSpec** %_glib__pspec, align 8
  %27 = load i32, i32* %property_id.addr, align 4
  store i32 %27, i32* %_glib__property_id, align 4
  %28 = load i32, i32* %_glib__property_id, align 4
  %29 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %29, i32 0, i32 1
  %30 = load i8*, i8** %name, align 8
  %31 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %32 = bitcast %struct._GParamSpec* %31 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %33, i32 0, i32 0
  %34 = load i64, i64* %g_type, align 8
  %call8 = call i8* @g_type_name(i64 %34)
  %35 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %36 = bitcast %struct._GObject* %35 to %struct._GTypeInstance*
  %g_class9 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %36, i32 0, i32 0
  %37 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class9, align 8
  %g_type10 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %37, i32 0, i32 0
  %38 = load i64, i64* %g_type10, align 8
  %call11 = call i8* @g_type_name(i64 %38)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0), i32 221, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 %28, i8* %30, i8* %call8, i8* %call11)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_arc_draw(%struct._GimpCanvasItem* %item, %struct._GimpDisplayShell* %shell, %struct._cairo* %cr) #3 {
entry:
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %private = alloca %struct._GimpCanvasArcPrivate*, align 8
  %center_x = alloca double, align 8
  %center_y = alloca double, align 8
  %radius_x = alloca double, align 8
  %radius_y = alloca double, align 8
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_arc_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasArcPrivate*
  store %struct._GimpCanvasArcPrivate* %2, %struct._GimpCanvasArcPrivate** %private, align 8
  %3 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_canvas_arc_transform(%struct._GimpCanvasItem* %3, %struct._GimpDisplayShell* %4, double* %center_x, double* %center_y, double* %radius_x, double* %radius_y)
  %5 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_save(%struct._cairo* %5)
  %6 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %7 = load double, double* %center_x, align 8
  %8 = load double, double* %center_y, align 8
  call void @cairo_translate(%struct._cairo* %6, double %7, double %8)
  %9 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %10 = load double, double* %radius_x, align 8
  %11 = load double, double* %radius_y, align 8
  call void @cairo_scale(%struct._cairo* %9, double %10, double %11)
  %12 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %13 = load %struct._GimpCanvasArcPrivate*, %struct._GimpCanvasArcPrivate** %private, align 8
  %start_angle = getelementptr inbounds %struct._GimpCanvasArcPrivate, %struct._GimpCanvasArcPrivate* %13, i32 0, i32 4
  %14 = load double, double* %start_angle, align 8
  %15 = load %struct._GimpCanvasArcPrivate*, %struct._GimpCanvasArcPrivate** %private, align 8
  %slice_angle = getelementptr inbounds %struct._GimpCanvasArcPrivate, %struct._GimpCanvasArcPrivate* %15, i32 0, i32 5
  %16 = load double, double* %slice_angle, align 8
  call void @gimp_cairo_add_arc(%struct._cairo* %12, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00, double %14, double %16)
  %17 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_restore(%struct._cairo* %17)
  %18 = load %struct._GimpCanvasArcPrivate*, %struct._GimpCanvasArcPrivate** %private, align 8
  %filled = getelementptr inbounds %struct._GimpCanvasArcPrivate, %struct._GimpCanvasArcPrivate* %18, i32 0, i32 6
  %19 = load i32, i32* %filled, align 4
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %20 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %21 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @_gimp_canvas_item_fill(%struct._GimpCanvasItem* %20, %struct._cairo* %21)
  br label %if.end

if.else:                                          ; preds = %entry
  %22 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %23 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @_gimp_canvas_item_stroke(%struct._GimpCanvasItem* %22, %struct._cairo* %23)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._cairo_region* @gimp_canvas_arc_get_extents(%struct._GimpCanvasItem* %item, %struct._GimpDisplayShell* %shell) #3 {
entry:
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %private = alloca %struct._GimpCanvasArcPrivate*, align 8
  %region = alloca %struct._cairo_region*, align 8
  %rectangle = alloca %struct._cairo_rectangle_int, align 4
  %center_x = alloca double, align 8
  %center_y = alloca double, align 8
  %radius_x = alloca double, align 8
  %radius_y = alloca double, align 8
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_arc_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasArcPrivate*
  store %struct._GimpCanvasArcPrivate* %2, %struct._GimpCanvasArcPrivate** %private, align 8
  %3 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_canvas_arc_transform(%struct._GimpCanvasItem* %3, %struct._GimpDisplayShell* %4, double* %center_x, double* %center_y, double* %radius_x, double* %radius_y)
  %5 = load double, double* %center_x, align 8
  %6 = load double, double* %radius_x, align 8
  %sub = fsub double %5, %6
  %sub2 = fsub double %sub, 1.500000e+00
  %call3 = call double @floor(double %sub2) #6
  %conv = fptosi double %call3 to i32
  %x = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 0
  store i32 %conv, i32* %x, align 4
  %7 = load double, double* %center_y, align 8
  %8 = load double, double* %radius_y, align 8
  %sub4 = fsub double %7, %8
  %sub5 = fsub double %sub4, 1.500000e+00
  %call6 = call double @floor(double %sub5) #6
  %conv7 = fptosi double %call6 to i32
  %y = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 1
  store i32 %conv7, i32* %y, align 4
  %9 = load double, double* %center_x, align 8
  %10 = load double, double* %radius_x, align 8
  %add = fadd double %9, %10
  %add8 = fadd double %add, 1.500000e+00
  %call9 = call double @ceil(double %add8) #6
  %x10 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 0
  %11 = load i32, i32* %x10, align 4
  %conv11 = sitofp i32 %11 to double
  %sub12 = fsub double %call9, %conv11
  %conv13 = fptosi double %sub12 to i32
  %width = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 2
  store i32 %conv13, i32* %width, align 4
  %12 = load double, double* %center_y, align 8
  %13 = load double, double* %radius_y, align 8
  %add14 = fadd double %12, %13
  %add15 = fadd double %add14, 1.500000e+00
  %call16 = call double @ceil(double %add15) #6
  %y17 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 1
  %14 = load i32, i32* %y17, align 4
  %conv18 = sitofp i32 %14 to double
  %sub19 = fsub double %call16, %conv18
  %conv20 = fptosi double %sub19 to i32
  %height = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 3
  store i32 %conv20, i32* %height, align 4
  %call21 = call %struct._cairo_region* @cairo_region_create_rectangle(%struct._cairo_rectangle_int* %rectangle)
  store %struct._cairo_region* %call21, %struct._cairo_region** %region, align 8
  %15 = load %struct._GimpCanvasArcPrivate*, %struct._GimpCanvasArcPrivate** %private, align 8
  %filled = getelementptr inbounds %struct._GimpCanvasArcPrivate, %struct._GimpCanvasArcPrivate* %15, i32 0, i32 6
  %16 = load i32, i32* %filled, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %width22 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 2
  %17 = load i32, i32* %width22, align 4
  %conv23 = sitofp i32 %17 to double
  %cmp = fcmp ogt double %conv23, 9.152000e+01
  br i1 %cmp, label %land.lhs.true.25, label %if.end

land.lhs.true.25:                                 ; preds = %land.lhs.true
  %height26 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 3
  %18 = load i32, i32* %height26, align 4
  %conv27 = sitofp i32 %18 to double
  %cmp28 = fcmp ogt double %conv27, 9.152000e+01
  br i1 %cmp28, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.25
  %19 = load double, double* %radius_x, align 8
  %mul = fmul double %19, 7.000000e-01
  store double %mul, double* %radius_x, align 8
  %20 = load double, double* %radius_y, align 8
  %mul30 = fmul double %20, 7.000000e-01
  store double %mul30, double* %radius_y, align 8
  %21 = load double, double* %center_x, align 8
  %22 = load double, double* %radius_x, align 8
  %sub31 = fsub double %21, %22
  %add32 = fadd double %sub31, 1.500000e+00
  %call33 = call double @ceil(double %add32) #6
  %conv34 = fptosi double %call33 to i32
  %x35 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 0
  store i32 %conv34, i32* %x35, align 4
  %23 = load double, double* %center_y, align 8
  %24 = load double, double* %radius_y, align 8
  %sub36 = fsub double %23, %24
  %add37 = fadd double %sub36, 1.500000e+00
  %call38 = call double @ceil(double %add37) #6
  %conv39 = fptosi double %call38 to i32
  %y40 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 1
  store i32 %conv39, i32* %y40, align 4
  %25 = load double, double* %center_x, align 8
  %26 = load double, double* %radius_x, align 8
  %add41 = fadd double %25, %26
  %sub42 = fsub double %add41, 1.500000e+00
  %call43 = call double @floor(double %sub42) #6
  %x44 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 0
  %27 = load i32, i32* %x44, align 4
  %conv45 = sitofp i32 %27 to double
  %sub46 = fsub double %call43, %conv45
  %conv47 = fptosi double %sub46 to i32
  %width48 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 2
  store i32 %conv47, i32* %width48, align 4
  %28 = load double, double* %center_y, align 8
  %29 = load double, double* %radius_y, align 8
  %add49 = fadd double %28, %29
  %sub50 = fsub double %add49, 1.500000e+00
  %call51 = call double @floor(double %sub50) #6
  %y52 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 1
  %30 = load i32, i32* %y52, align 4
  %conv53 = sitofp i32 %30 to double
  %sub54 = fsub double %call51, %conv53
  %conv55 = fptosi double %sub54 to i32
  %height56 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 3
  store i32 %conv55, i32* %height56, align 4
  %31 = load %struct._cairo_region*, %struct._cairo_region** %region, align 8
  %call57 = call i32 @cairo_region_subtract_rectangle(%struct._cairo_region* %31, %struct._cairo_rectangle_int* %rectangle)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.25, %land.lhs.true, %entry
  %32 = load %struct._cairo_region*, %struct._cairo_region** %region, align 8
  ret %struct._cairo_region* %32
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

declare void @g_type_class_add_private(i8*, i64) #1

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

declare double @g_value_get_double(%struct._GValue*) #1

declare i32 @g_value_get_boolean(%struct._GValue*) #1

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #3 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_type_name(i64) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare void @g_value_set_double(%struct._GValue*, double) #1

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_arc_transform(%struct._GimpCanvasItem* %item, %struct._GimpDisplayShell* %shell, double* %center_x, double* %center_y, double* %radius_x, double* %radius_y) #3 {
entry:
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %center_x.addr = alloca double*, align 8
  %center_y.addr = alloca double*, align 8
  %radius_x.addr = alloca double*, align 8
  %radius_y.addr = alloca double*, align 8
  %private = alloca %struct._GimpCanvasArcPrivate*, align 8
  %x1 = alloca double, align 8
  %y1 = alloca double, align 8
  %x2 = alloca double, align 8
  %y2 = alloca double, align 8
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store double* %center_x, double** %center_x.addr, align 8
  store double* %center_y, double** %center_y.addr, align 8
  store double* %radius_x, double** %radius_x.addr, align 8
  store double* %radius_y, double** %radius_y.addr, align 8
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_arc_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasArcPrivate*
  store %struct._GimpCanvasArcPrivate* %2, %struct._GimpCanvasArcPrivate** %private, align 8
  %3 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %4 = load %struct._GimpCanvasArcPrivate*, %struct._GimpCanvasArcPrivate** %private, align 8
  %center_x2 = getelementptr inbounds %struct._GimpCanvasArcPrivate, %struct._GimpCanvasArcPrivate* %4, i32 0, i32 0
  %5 = load double, double* %center_x2, align 8
  %6 = load %struct._GimpCanvasArcPrivate*, %struct._GimpCanvasArcPrivate** %private, align 8
  %radius_x3 = getelementptr inbounds %struct._GimpCanvasArcPrivate, %struct._GimpCanvasArcPrivate* %6, i32 0, i32 2
  %7 = load double, double* %radius_x3, align 8
  %sub = fsub double %5, %7
  %8 = load %struct._GimpCanvasArcPrivate*, %struct._GimpCanvasArcPrivate** %private, align 8
  %center_y4 = getelementptr inbounds %struct._GimpCanvasArcPrivate, %struct._GimpCanvasArcPrivate* %8, i32 0, i32 1
  %9 = load double, double* %center_y4, align 8
  %10 = load %struct._GimpCanvasArcPrivate*, %struct._GimpCanvasArcPrivate** %private, align 8
  %radius_y5 = getelementptr inbounds %struct._GimpCanvasArcPrivate, %struct._GimpCanvasArcPrivate* %10, i32 0, i32 3
  %11 = load double, double* %radius_y5, align 8
  %sub6 = fsub double %9, %11
  call void @gimp_display_shell_transform_xy_f(%struct._GimpDisplayShell* %3, double %sub, double %sub6, double* %x1, double* %y1)
  %12 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %13 = load %struct._GimpCanvasArcPrivate*, %struct._GimpCanvasArcPrivate** %private, align 8
  %center_x7 = getelementptr inbounds %struct._GimpCanvasArcPrivate, %struct._GimpCanvasArcPrivate* %13, i32 0, i32 0
  %14 = load double, double* %center_x7, align 8
  %15 = load %struct._GimpCanvasArcPrivate*, %struct._GimpCanvasArcPrivate** %private, align 8
  %radius_x8 = getelementptr inbounds %struct._GimpCanvasArcPrivate, %struct._GimpCanvasArcPrivate* %15, i32 0, i32 2
  %16 = load double, double* %radius_x8, align 8
  %add = fadd double %14, %16
  %17 = load %struct._GimpCanvasArcPrivate*, %struct._GimpCanvasArcPrivate** %private, align 8
  %center_y9 = getelementptr inbounds %struct._GimpCanvasArcPrivate, %struct._GimpCanvasArcPrivate* %17, i32 0, i32 1
  %18 = load double, double* %center_y9, align 8
  %19 = load %struct._GimpCanvasArcPrivate*, %struct._GimpCanvasArcPrivate** %private, align 8
  %radius_y10 = getelementptr inbounds %struct._GimpCanvasArcPrivate, %struct._GimpCanvasArcPrivate* %19, i32 0, i32 3
  %20 = load double, double* %radius_y10, align 8
  %add11 = fadd double %18, %20
  call void @gimp_display_shell_transform_xy_f(%struct._GimpDisplayShell* %12, double %add, double %add11, double* %x2, double* %y2)
  %21 = load double, double* %x1, align 8
  %call12 = call double @floor(double %21) #6
  store double %call12, double* %x1, align 8
  %22 = load double, double* %y1, align 8
  %call13 = call double @floor(double %22) #6
  store double %call13, double* %y1, align 8
  %23 = load double, double* %x2, align 8
  %call14 = call double @ceil(double %23) #6
  store double %call14, double* %x2, align 8
  %24 = load double, double* %y2, align 8
  %call15 = call double @ceil(double %24) #6
  store double %call15, double* %y2, align 8
  %25 = load double, double* %x1, align 8
  %26 = load double, double* %x2, align 8
  %add16 = fadd double %25, %26
  %div = fdiv double %add16, 2.000000e+00
  %27 = load double*, double** %center_x.addr, align 8
  store double %div, double* %27, align 8
  %28 = load double, double* %y1, align 8
  %29 = load double, double* %y2, align 8
  %add17 = fadd double %28, %29
  %div18 = fdiv double %add17, 2.000000e+00
  %30 = load double*, double** %center_y.addr, align 8
  store double %div18, double* %30, align 8
  %31 = load double, double* %x2, align 8
  %32 = load double, double* %x1, align 8
  %sub19 = fsub double %31, %32
  %div20 = fdiv double %sub19, 2.000000e+00
  %33 = load double*, double** %radius_x.addr, align 8
  store double %div20, double* %33, align 8
  %34 = load double, double* %y2, align 8
  %35 = load double, double* %y1, align 8
  %sub21 = fsub double %34, %35
  %div22 = fdiv double %sub21, 2.000000e+00
  %36 = load double*, double** %radius_y.addr, align 8
  store double %div22, double* %36, align 8
  %37 = load %struct._GimpCanvasArcPrivate*, %struct._GimpCanvasArcPrivate** %private, align 8
  %filled = getelementptr inbounds %struct._GimpCanvasArcPrivate, %struct._GimpCanvasArcPrivate* %37, i32 0, i32 6
  %38 = load i32, i32* %filled, align 4
  %tobool = icmp ne i32 %38, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %39 = load double*, double** %radius_x.addr, align 8
  %40 = load double, double* %39, align 8
  %sub23 = fsub double %40, 5.000000e-01
  %cmp = fcmp ogt double %sub23, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %41 = load double*, double** %radius_x.addr, align 8
  %42 = load double, double* %41, align 8
  %sub24 = fsub double %42, 5.000000e-01
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %sub24, %cond.true ], [ 0.000000e+00, %cond.false ]
  %43 = load double*, double** %radius_x.addr, align 8
  store double %cond, double* %43, align 8
  %44 = load double*, double** %radius_y.addr, align 8
  %45 = load double, double* %44, align 8
  %sub25 = fsub double %45, 5.000000e-01
  %cmp26 = fcmp ogt double %sub25, 0.000000e+00
  br i1 %cmp26, label %cond.true.27, label %cond.false.29

cond.true.27:                                     ; preds = %cond.end
  %46 = load double*, double** %radius_y.addr, align 8
  %47 = load double, double* %46, align 8
  %sub28 = fsub double %47, 5.000000e-01
  br label %cond.end.30

cond.false.29:                                    ; preds = %cond.end
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.29, %cond.true.27
  %cond31 = phi double [ %sub28, %cond.true.27 ], [ 0.000000e+00, %cond.false.29 ]
  %48 = load double*, double** %radius_y.addr, align 8
  store double %cond31, double* %48, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end.30, %entry
  ret void
}

declare void @cairo_save(%struct._cairo*) #1

declare void @cairo_translate(%struct._cairo*, double, double) #1

declare void @cairo_scale(%struct._cairo*, double, double) #1

declare void @gimp_cairo_add_arc(%struct._cairo*, double, double, double, double, double) #1

declare void @cairo_restore(%struct._cairo*) #1

declare void @_gimp_canvas_item_fill(%struct._GimpCanvasItem*, %struct._cairo*) #1

declare void @_gimp_canvas_item_stroke(%struct._GimpCanvasItem*, %struct._cairo*) #1

declare void @gimp_display_shell_transform_xy_f(%struct._GimpDisplayShell*, double, double, double*, double*) #1

; Function Attrs: nounwind readnone
declare double @floor(double) #2

; Function Attrs: nounwind readnone
declare double @ceil(double) #2

declare %struct._cairo_region* @cairo_region_create_rectangle(%struct._cairo_rectangle_int*) #1

declare i32 @cairo_region_subtract_rectangle(%struct._cairo_region*, %struct._cairo_rectangle_int*) #1

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
