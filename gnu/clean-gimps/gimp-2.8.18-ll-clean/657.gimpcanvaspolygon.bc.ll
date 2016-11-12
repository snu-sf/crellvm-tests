; ModuleID = './app/display/gimpcanvaspolygon.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpCanvasPolygonClass = type { %struct._GimpCanvasItemClass }
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
%struct._GimpCanvasPolygon = type { %struct._GimpCanvasItem }
%struct._GimpVector2 = type { double, double }
%struct._GimpArray = type { i8*, i64, i32 }
%struct._GimpCoords = type { double, double, double, double, double, double, double, double }
%struct._GimpCanvasPolygonPrivate = type { %struct._GimpVector2*, i32, i32 }
%struct._cairo_rectangle_int = type { i32, i32, i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_canvas_polygon_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"GimpCanvasPolygon\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Display\00", align 1
@__func__.gimp_canvas_polygon_new = private unnamed_addr constant [24 x i8] c"gimp_canvas_polygon_new\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"GIMP_IS_DISPLAY_SHELL (shell)\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"points != NULL && n_points > 1\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"filled\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"points\00", align 1
@__func__.gimp_canvas_polygon_new_from_coords = private unnamed_addr constant [36 x i8] c"gimp_canvas_polygon_new_from_coords\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"coords != NULL && n_coords > 1\00", align 1
@gimp_canvas_polygon_parent_class = internal global i8* null, align 8
@GimpCanvasPolygon_private_offset = internal global i32 0, align 4
@.str.8 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"gimpcanvaspolygon.c\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"property\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_canvas_polygon_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_canvas_polygon_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_canvas_polygon_get_type.g_define_type_id__volatile to i8*))
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
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 208, void (i8*, i8*)* bitcast (void (i8*)* @gimp_canvas_polygon_class_intern_init to void (i8*, i8*)*), i32 32, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpCanvasPolygon*)* @gimp_canvas_polygon_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_canvas_polygon_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_canvas_polygon_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_canvas_item_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_polygon_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_canvas_polygon_parent_class, align 8
  %1 = load i32, i32* @GimpCanvasPolygon_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpCanvasPolygon_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpCanvasPolygonClass*
  call void @gimp_canvas_polygon_class_init(%struct._GimpCanvasPolygonClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_polygon_init(%struct._GimpCanvasPolygon* %polygon) #3 {
entry:
  %polygon.addr = alloca %struct._GimpCanvasPolygon*, align 8
  store %struct._GimpCanvasPolygon* %polygon, %struct._GimpCanvasPolygon** %polygon.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpCanvasItem* @gimp_canvas_polygon_new(%struct._GimpDisplayShell* %shell, %struct._GimpVector2* %points, i32 %n_points, i32 %filled) #3 {
entry:
  %retval = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %points.addr = alloca %struct._GimpVector2*, align 8
  %n_points.addr = alloca i32, align 4
  %filled.addr = alloca i32, align 4
  %item = alloca %struct._GimpCanvasItem*, align 8
  %array = alloca %struct._GimpArray*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._GimpVector2* %points, %struct._GimpVector2** %points.addr, align 8
  store i32 %n_points, i32* %n_points.addr, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_canvas_polygon_new, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpVector2*, %struct._GimpVector2** %points.addr, align 8
  %cmp12 = icmp ne %struct._GimpVector2* %13, null
  br i1 %cmp12, label %land.lhs.true.13, label %if.else.16

land.lhs.true.13:                                 ; preds = %do.body.11
  %14 = load i32, i32* %n_points.addr, align 4
  %cmp14 = icmp sgt i32 %14, 1
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %land.lhs.true.13
  br label %if.end.17

if.else.16:                                       ; preds = %land.lhs.true.13, %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_canvas_polygon_new, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %retval
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %15 = load %struct._GimpVector2*, %struct._GimpVector2** %points.addr, align 8
  %16 = bitcast %struct._GimpVector2* %15 to i8*
  %17 = load i32, i32* %n_points.addr, align 4
  %conv = sext i32 %17 to i64
  %mul = mul i64 %conv, 16
  %call19 = call %struct._GimpArray* @gimp_array_new(i8* %16, i64 %mul, i32 1)
  store %struct._GimpArray* %call19, %struct._GimpArray** %array, align 8
  %call20 = call i64 @gimp_canvas_polygon_get_type() #6
  %18 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %19 = load i32, i32* %filled.addr, align 4
  %20 = load %struct._GimpArray*, %struct._GimpArray** %array, align 8
  %call21 = call i8* (i64, i8*, ...) @g_object_new(i64 %call20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), %struct._GimpDisplayShell* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), %struct._GimpArray* %20, i8* null)
  %21 = bitcast i8* %call21 to %struct._GimpCanvasItem*
  store %struct._GimpCanvasItem* %21, %struct._GimpCanvasItem** %item, align 8
  %22 = load %struct._GimpArray*, %struct._GimpArray** %array, align 8
  call void @gimp_array_free(%struct._GimpArray* %22)
  %23 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  store %struct._GimpCanvasItem* %23, %struct._GimpCanvasItem** %retval
  br label %return

return:                                           ; preds = %do.end.18, %if.else.16, %if.else.9
  %24 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %retval
  ret %struct._GimpCanvasItem* %24
}

; Function Attrs: nounwind readnone
declare i64 @gimp_display_shell_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare %struct._GimpArray* @gimp_array_new(i8*, i64, i32) #1

declare i8* @g_object_new(i64, i8*, ...) #1

declare void @gimp_array_free(%struct._GimpArray*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpCanvasItem* @gimp_canvas_polygon_new_from_coords(%struct._GimpDisplayShell* %shell, %struct._GimpCoords* %coords, i32 %n_coords, i32 %filled) #3 {
entry:
  %retval = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %n_coords.addr = alloca i32, align 4
  %filled.addr = alloca i32, align 4
  %item = alloca %struct._GimpCanvasItem*, align 8
  %points = alloca %struct._GimpVector2*, align 8
  %array = alloca %struct._GimpArray*, align 8
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %n_coords, i32* %n_coords.addr, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_canvas_polygon_new_from_coords, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %cmp12 = icmp ne %struct._GimpCoords* %13, null
  br i1 %cmp12, label %land.lhs.true.13, label %if.else.16

land.lhs.true.13:                                 ; preds = %do.body.11
  %14 = load i32, i32* %n_coords.addr, align 4
  %cmp14 = icmp sgt i32 %14, 1
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %land.lhs.true.13
  br label %if.end.17

if.else.16:                                       ; preds = %land.lhs.true.13, %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_canvas_polygon_new_from_coords, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %retval
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %15 = load i32, i32* %n_coords.addr, align 4
  %conv = sext i32 %15 to i64
  %call19 = call noalias i8* @g_malloc_n(i64 %conv, i64 16)
  %16 = bitcast i8* %call19 to %struct._GimpVector2*
  store %struct._GimpVector2* %16, %struct._GimpVector2** %points, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.18
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %n_coords.addr, align 4
  %cmp20 = icmp slt i32 %17, %18
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %i, align 4
  %idxprom = sext i32 %19 to i64
  %20 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %20, i64 %idxprom
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx, i32 0, i32 0
  %21 = load double, double* %x, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %22 to i64
  %23 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  %arrayidx23 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %23, i64 %idxprom22
  %x24 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx23, i32 0, i32 0
  store double %21, double* %x24, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %24 to i64
  %25 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %arrayidx26 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %25, i64 %idxprom25
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx26, i32 0, i32 1
  %26 = load double, double* %y, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %27 to i64
  %28 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  %arrayidx28 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %28, i64 %idxprom27
  %y29 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx28, i32 0, i32 1
  store double %26, double* %y29, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load i32, i32* %i, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %30 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  %31 = bitcast %struct._GimpVector2* %30 to i8*
  %32 = load i32, i32* %n_coords.addr, align 4
  %conv30 = sext i32 %32 to i64
  %mul = mul i64 %conv30, 16
  %call31 = call %struct._GimpArray* @gimp_array_new(i8* %31, i64 %mul, i32 1)
  store %struct._GimpArray* %call31, %struct._GimpArray** %array, align 8
  %call32 = call i64 @gimp_canvas_polygon_get_type() #6
  %33 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %34 = load i32, i32* %filled.addr, align 4
  %35 = load %struct._GimpArray*, %struct._GimpArray** %array, align 8
  %call33 = call i8* (i64, i8*, ...) @g_object_new(i64 %call32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), %struct._GimpDisplayShell* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), %struct._GimpArray* %35, i8* null)
  %36 = bitcast i8* %call33 to %struct._GimpCanvasItem*
  store %struct._GimpCanvasItem* %36, %struct._GimpCanvasItem** %item, align 8
  %37 = load %struct._GimpArray*, %struct._GimpArray** %array, align 8
  call void @gimp_array_free(%struct._GimpArray* %37)
  %38 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  %39 = bitcast %struct._GimpVector2* %38 to i8*
  call void @g_free(i8* %39)
  %40 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  store %struct._GimpCanvasItem* %40, %struct._GimpCanvasItem** %retval
  br label %return

return:                                           ; preds = %for.end, %if.else.16, %if.else.9
  %41 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %retval
  ret %struct._GimpCanvasItem* %41
}

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @g_free(i8*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_polygon_class_init(%struct._GimpCanvasPolygonClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpCanvasPolygonClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %item_class = alloca %struct._GimpCanvasItemClass*, align 8
  store %struct._GimpCanvasPolygonClass* %klass, %struct._GimpCanvasPolygonClass** %klass.addr, align 8
  %0 = load %struct._GimpCanvasPolygonClass*, %struct._GimpCanvasPolygonClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpCanvasPolygonClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpCanvasPolygonClass*, %struct._GimpCanvasPolygonClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpCanvasPolygonClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_canvas_item_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpCanvasItemClass*
  store %struct._GimpCanvasItemClass* %5, %struct._GimpCanvasItemClass** %item_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_canvas_polygon_finalize, void (%struct._GObject*)** %finalize, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_canvas_polygon_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_canvas_polygon_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %9 = load %struct._GimpCanvasItemClass*, %struct._GimpCanvasItemClass** %item_class, align 8
  %draw = getelementptr inbounds %struct._GimpCanvasItemClass, %struct._GimpCanvasItemClass* %9, i32 0, i32 2
  store void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)* @gimp_canvas_polygon_draw, void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)** %draw, align 8
  %10 = load %struct._GimpCanvasItemClass*, %struct._GimpCanvasItemClass** %item_class, align 8
  %get_extents = getelementptr inbounds %struct._GimpCanvasItemClass, %struct._GimpCanvasItemClass* %10, i32 0, i32 3
  store %struct._cairo_region* (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*)* @gimp_canvas_polygon_get_extents, %struct._cairo_region* (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*)** %get_extents, align 8
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call %struct._GParamSpec* @gimp_param_spec_array(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %11, i32 1, %struct._GParamSpec* %call3)
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call4 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null, i32 0, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %12, i32 2, %struct._GParamSpec* %call4)
  %13 = load %struct._GimpCanvasPolygonClass*, %struct._GimpCanvasPolygonClass** %klass.addr, align 8
  %14 = bitcast %struct._GimpCanvasPolygonClass* %13 to i8*
  call void @g_type_class_add_private(i8* %14, i64 16)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_polygon_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %private = alloca %struct._GimpCanvasPolygonPrivate*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_polygon_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasPolygonPrivate*
  store %struct._GimpCanvasPolygonPrivate* %2, %struct._GimpCanvasPolygonPrivate** %private, align 8
  %3 = load %struct._GimpCanvasPolygonPrivate*, %struct._GimpCanvasPolygonPrivate** %private, align 8
  %points = getelementptr inbounds %struct._GimpCanvasPolygonPrivate, %struct._GimpCanvasPolygonPrivate* %3, i32 0, i32 0
  %4 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  %tobool = icmp ne %struct._GimpVector2* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpCanvasPolygonPrivate*, %struct._GimpCanvasPolygonPrivate** %private, align 8
  %points2 = getelementptr inbounds %struct._GimpCanvasPolygonPrivate, %struct._GimpCanvasPolygonPrivate* %5, i32 0, i32 0
  %6 = load %struct._GimpVector2*, %struct._GimpVector2** %points2, align 8
  %7 = bitcast %struct._GimpVector2* %6 to i8*
  call void @g_free(i8* %7)
  %8 = load %struct._GimpCanvasPolygonPrivate*, %struct._GimpCanvasPolygonPrivate** %private, align 8
  %points3 = getelementptr inbounds %struct._GimpCanvasPolygonPrivate, %struct._GimpCanvasPolygonPrivate* %8, i32 0, i32 0
  store %struct._GimpVector2* null, %struct._GimpVector2** %points3, align 8
  %9 = load %struct._GimpCanvasPolygonPrivate*, %struct._GimpCanvasPolygonPrivate** %private, align 8
  %n_points = getelementptr inbounds %struct._GimpCanvasPolygonPrivate, %struct._GimpCanvasPolygonPrivate* %9, i32 0, i32 1
  store i32 0, i32* %n_points, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i8*, i8** @gimp_canvas_polygon_parent_class, align 8
  %11 = bitcast i8* %10 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %11, i64 80)
  %12 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 6
  %13 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %14 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %13(%struct._GObject* %14)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_polygon_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpCanvasPolygonPrivate*, align 8
  %array = alloca %struct._GimpArray*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_polygon_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasPolygonPrivate*
  store %struct._GimpCanvasPolygonPrivate* %2, %struct._GimpCanvasPolygonPrivate** %private, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_get_boxed(%struct._GValue* %4)
  %5 = bitcast i8* %call2 to %struct._GimpArray*
  store %struct._GimpArray* %5, %struct._GimpArray** %array, align 8
  %6 = load %struct._GimpCanvasPolygonPrivate*, %struct._GimpCanvasPolygonPrivate** %private, align 8
  %points = getelementptr inbounds %struct._GimpCanvasPolygonPrivate, %struct._GimpCanvasPolygonPrivate* %6, i32 0, i32 0
  %7 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  %8 = bitcast %struct._GimpVector2* %7 to i8*
  call void @g_free(i8* %8)
  %9 = load %struct._GimpCanvasPolygonPrivate*, %struct._GimpCanvasPolygonPrivate** %private, align 8
  %points3 = getelementptr inbounds %struct._GimpCanvasPolygonPrivate, %struct._GimpCanvasPolygonPrivate* %9, i32 0, i32 0
  store %struct._GimpVector2* null, %struct._GimpVector2** %points3, align 8
  %10 = load %struct._GimpCanvasPolygonPrivate*, %struct._GimpCanvasPolygonPrivate** %private, align 8
  %n_points = getelementptr inbounds %struct._GimpCanvasPolygonPrivate, %struct._GimpCanvasPolygonPrivate* %10, i32 0, i32 1
  store i32 0, i32* %n_points, align 4
  %11 = load %struct._GimpArray*, %struct._GimpArray** %array, align 8
  %tobool = icmp ne %struct._GimpArray* %11, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %12 = load %struct._GimpArray*, %struct._GimpArray** %array, align 8
  %data = getelementptr inbounds %struct._GimpArray, %struct._GimpArray* %12, i32 0, i32 0
  %13 = load i8*, i8** %data, align 8
  %14 = load %struct._GimpArray*, %struct._GimpArray** %array, align 8
  %length = getelementptr inbounds %struct._GimpArray, %struct._GimpArray* %14, i32 0, i32 1
  %15 = load i64, i64* %length, align 8
  %conv = trunc i64 %15 to i32
  %call4 = call noalias i8* @g_memdup(i8* %13, i32 %conv)
  %16 = bitcast i8* %call4 to %struct._GimpVector2*
  %17 = load %struct._GimpCanvasPolygonPrivate*, %struct._GimpCanvasPolygonPrivate** %private, align 8
  %points5 = getelementptr inbounds %struct._GimpCanvasPolygonPrivate, %struct._GimpCanvasPolygonPrivate* %17, i32 0, i32 0
  store %struct._GimpVector2* %16, %struct._GimpVector2** %points5, align 8
  %18 = load %struct._GimpArray*, %struct._GimpArray** %array, align 8
  %length6 = getelementptr inbounds %struct._GimpArray, %struct._GimpArray* %18, i32 0, i32 1
  %19 = load i64, i64* %length6, align 8
  %div = udiv i64 %19, 16
  %conv7 = trunc i64 %div to i32
  %20 = load %struct._GimpCanvasPolygonPrivate*, %struct._GimpCanvasPolygonPrivate** %private, align 8
  %n_points8 = getelementptr inbounds %struct._GimpCanvasPolygonPrivate, %struct._GimpCanvasPolygonPrivate* %20, i32 0, i32 1
  store i32 %conv7, i32* %n_points8, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %21 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call10 = call i32 @g_value_get_boolean(%struct._GValue* %21)
  %22 = load %struct._GimpCanvasPolygonPrivate*, %struct._GimpCanvasPolygonPrivate** %private, align 8
  %filled = getelementptr inbounds %struct._GimpCanvasPolygonPrivate, %struct._GimpCanvasPolygonPrivate* %22, i32 0, i32 2
  store i32 %call10, i32* %filled, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %23 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %23, %struct._GObject** %_glib__object, align 8
  %24 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %24, %struct._GParamSpec** %_glib__pspec, align 8
  %25 = load i32, i32* %property_id.addr, align 4
  store i32 %25, i32* %_glib__property_id, align 4
  %26 = load i32, i32* %_glib__property_id, align 4
  %27 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %27, i32 0, i32 1
  %28 = load i8*, i8** %name, align 8
  %29 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %30 = bitcast %struct._GParamSpec* %29 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %30, i32 0, i32 0
  %31 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %31, i32 0, i32 0
  %32 = load i64, i64* %g_type, align 8
  %call11 = call i8* @g_type_name(i64 %32)
  %33 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %34 = bitcast %struct._GObject* %33 to %struct._GTypeInstance*
  %g_class12 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %34, i32 0, i32 0
  %35 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class12, align 8
  %g_type13 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %35, i32 0, i32 0
  %36 = load i64, i64* %g_type13, align 8
  %call14 = call i8* @g_type_name(i64 %36)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0), i32 160, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 %26, i8* %28, i8* %call11, i8* %call14)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.9, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_polygon_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpCanvasPolygonPrivate*, align 8
  %array = alloca %struct._GimpArray*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_polygon_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasPolygonPrivate*
  store %struct._GimpCanvasPolygonPrivate* %2, %struct._GimpCanvasPolygonPrivate** %private, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GimpCanvasPolygonPrivate*, %struct._GimpCanvasPolygonPrivate** %private, align 8
  %points = getelementptr inbounds %struct._GimpCanvasPolygonPrivate, %struct._GimpCanvasPolygonPrivate* %4, i32 0, i32 0
  %5 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  %tobool = icmp ne %struct._GimpVector2* %5, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %6 = load %struct._GimpCanvasPolygonPrivate*, %struct._GimpCanvasPolygonPrivate** %private, align 8
  %points2 = getelementptr inbounds %struct._GimpCanvasPolygonPrivate, %struct._GimpCanvasPolygonPrivate* %6, i32 0, i32 0
  %7 = load %struct._GimpVector2*, %struct._GimpVector2** %points2, align 8
  %8 = bitcast %struct._GimpVector2* %7 to i8*
  %9 = load %struct._GimpCanvasPolygonPrivate*, %struct._GimpCanvasPolygonPrivate** %private, align 8
  %n_points = getelementptr inbounds %struct._GimpCanvasPolygonPrivate, %struct._GimpCanvasPolygonPrivate* %9, i32 0, i32 1
  %10 = load i32, i32* %n_points, align 4
  %conv = sext i32 %10 to i64
  %mul = mul i64 %conv, 16
  %call3 = call %struct._GimpArray* @gimp_array_new(i8* %8, i64 %mul, i32 0)
  store %struct._GimpArray* %call3, %struct._GimpArray** %array, align 8
  %11 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %12 = load %struct._GimpArray*, %struct._GimpArray** %array, align 8
  %13 = bitcast %struct._GimpArray* %12 to i8*
  call void @g_value_take_boxed(%struct._GValue* %11, i8* %13)
  br label %if.end

if.else:                                          ; preds = %sw.bb
  %14 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  call void @g_value_set_boxed(%struct._GValue* %14, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %15 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %16 = load %struct._GimpCanvasPolygonPrivate*, %struct._GimpCanvasPolygonPrivate** %private, align 8
  %filled = getelementptr inbounds %struct._GimpCanvasPolygonPrivate, %struct._GimpCanvasPolygonPrivate* %16, i32 0, i32 2
  %17 = load i32, i32* %filled, align 4
  call void @g_value_set_boolean(%struct._GValue* %15, i32 %17)
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
  %call5 = call i8* @g_type_name(i64 %27)
  %28 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %29 = bitcast %struct._GObject* %28 to %struct._GTypeInstance*
  %g_class6 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %29, i32 0, i32 0
  %30 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class6, align 8
  %g_type7 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %30, i32 0, i32 0
  %31 = load i64, i64* %g_type7, align 8
  %call8 = call i8* @g_type_name(i64 %31)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0), i32 195, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 %21, i8* %23, i8* %call5, i8* %call8)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.4, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_polygon_draw(%struct._GimpCanvasItem* %item, %struct._GimpDisplayShell* %shell, %struct._cairo* %cr) #3 {
entry:
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %private = alloca %struct._GimpCanvasPolygonPrivate*, align 8
  %points = alloca %struct._GimpVector2*, align 8
  %i = alloca i32, align 4
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_polygon_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasPolygonPrivate*
  store %struct._GimpCanvasPolygonPrivate* %2, %struct._GimpCanvasPolygonPrivate** %private, align 8
  %3 = load %struct._GimpCanvasPolygonPrivate*, %struct._GimpCanvasPolygonPrivate** %private, align 8
  %n_points = getelementptr inbounds %struct._GimpCanvasPolygonPrivate, %struct._GimpCanvasPolygonPrivate* %3, i32 0, i32 1
  %4 = load i32, i32* %n_points, align 4
  %conv = sext i32 %4 to i64
  %call2 = call noalias i8* @g_malloc0_n(i64 %conv, i64 16)
  %5 = bitcast i8* %call2 to %struct._GimpVector2*
  store %struct._GimpVector2* %5, %struct._GimpVector2** %points, align 8
  %6 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %7 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %8 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  call void @gimp_canvas_polygon_transform(%struct._GimpCanvasItem* %6, %struct._GimpDisplayShell* %7, %struct._GimpVector2* %8)
  %9 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %10 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  %arrayidx = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %10, i64 0
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx, i32 0, i32 0
  %11 = load double, double* %x, align 8
  %12 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  %arrayidx3 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %12, i64 0
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx3, i32 0, i32 1
  %13 = load double, double* %y, align 8
  call void @cairo_move_to(%struct._cairo* %9, double %11, double %13)
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %14 = load i32, i32* %i, align 4
  %15 = load %struct._GimpCanvasPolygonPrivate*, %struct._GimpCanvasPolygonPrivate** %private, align 8
  %n_points4 = getelementptr inbounds %struct._GimpCanvasPolygonPrivate, %struct._GimpCanvasPolygonPrivate* %15, i32 0, i32 1
  %16 = load i32, i32* %n_points4, align 4
  %cmp = icmp slt i32 %14, %16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom = sext i32 %18 to i64
  %19 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  %arrayidx6 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %19, i64 %idxprom
  %x7 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx6, i32 0, i32 0
  %20 = load double, double* %x7, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %21 to i64
  %22 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  %arrayidx9 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %22, i64 %idxprom8
  %y10 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx9, i32 0, i32 1
  %23 = load double, double* %y10, align 8
  call void @cairo_line_to(%struct._cairo* %17, double %20, double %23)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load %struct._GimpCanvasPolygonPrivate*, %struct._GimpCanvasPolygonPrivate** %private, align 8
  %filled = getelementptr inbounds %struct._GimpCanvasPolygonPrivate, %struct._GimpCanvasPolygonPrivate* %25, i32 0, i32 2
  %26 = load i32, i32* %filled, align 4
  %tobool = icmp ne i32 %26, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %27 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %28 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @_gimp_canvas_item_fill(%struct._GimpCanvasItem* %27, %struct._cairo* %28)
  br label %if.end

if.else:                                          ; preds = %for.end
  %29 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %30 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @_gimp_canvas_item_stroke(%struct._GimpCanvasItem* %29, %struct._cairo* %30)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %31 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  %32 = bitcast %struct._GimpVector2* %31 to i8*
  call void @g_free(i8* %32)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._cairo_region* @gimp_canvas_polygon_get_extents(%struct._GimpCanvasItem* %item, %struct._GimpDisplayShell* %shell) #3 {
entry:
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %private = alloca %struct._GimpCanvasPolygonPrivate*, align 8
  %rectangle = alloca %struct._cairo_rectangle_int, align 4
  %points = alloca %struct._GimpVector2*, align 8
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %i = alloca i32, align 4
  %x3 = alloca i32, align 4
  %y3 = alloca i32, align 4
  %x4 = alloca i32, align 4
  %y4 = alloca i32, align 4
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_polygon_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasPolygonPrivate*
  store %struct._GimpCanvasPolygonPrivate* %2, %struct._GimpCanvasPolygonPrivate** %private, align 8
  %3 = load %struct._GimpCanvasPolygonPrivate*, %struct._GimpCanvasPolygonPrivate** %private, align 8
  %n_points = getelementptr inbounds %struct._GimpCanvasPolygonPrivate, %struct._GimpCanvasPolygonPrivate* %3, i32 0, i32 1
  %4 = load i32, i32* %n_points, align 4
  %conv = sext i32 %4 to i64
  %call2 = call noalias i8* @g_malloc0_n(i64 %conv, i64 16)
  %5 = bitcast i8* %call2 to %struct._GimpVector2*
  store %struct._GimpVector2* %5, %struct._GimpVector2** %points, align 8
  %6 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %7 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %8 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  call void @gimp_canvas_polygon_transform(%struct._GimpCanvasItem* %6, %struct._GimpDisplayShell* %7, %struct._GimpVector2* %8)
  %9 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  %arrayidx = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %9, i64 0
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx, i32 0, i32 0
  %10 = load double, double* %x, align 8
  %sub = fsub double %10, 1.500000e+00
  %call3 = call double @floor(double %sub) #6
  %conv4 = fptosi double %call3 to i32
  store i32 %conv4, i32* %x1, align 4
  %11 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  %arrayidx5 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %11, i64 0
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx5, i32 0, i32 1
  %12 = load double, double* %y, align 8
  %sub6 = fsub double %12, 1.500000e+00
  %call7 = call double @floor(double %sub6) #6
  %conv8 = fptosi double %call7 to i32
  store i32 %conv8, i32* %y1, align 4
  %13 = load i32, i32* %x1, align 4
  %add = add nsw i32 %13, 3
  store i32 %add, i32* %x2, align 4
  %14 = load i32, i32* %y1, align 4
  %add9 = add nsw i32 %14, 3
  store i32 %add9, i32* %y2, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %15 = load i32, i32* %i, align 4
  %16 = load %struct._GimpCanvasPolygonPrivate*, %struct._GimpCanvasPolygonPrivate** %private, align 8
  %n_points10 = getelementptr inbounds %struct._GimpCanvasPolygonPrivate, %struct._GimpCanvasPolygonPrivate* %16, i32 0, i32 1
  %17 = load i32, i32* %n_points10, align 4
  %cmp = icmp slt i32 %15, %17
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %i, align 4
  %idxprom = sext i32 %18 to i64
  %19 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  %arrayidx12 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %19, i64 %idxprom
  %x13 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx12, i32 0, i32 0
  %20 = load double, double* %x13, align 8
  %sub14 = fsub double %20, 1.500000e+00
  %call15 = call double @floor(double %sub14) #6
  %conv16 = fptosi double %call15 to i32
  store i32 %conv16, i32* %x3, align 4
  %21 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %21 to i64
  %22 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  %arrayidx18 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %22, i64 %idxprom17
  %y19 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx18, i32 0, i32 1
  %23 = load double, double* %y19, align 8
  %sub20 = fsub double %23, 1.500000e+00
  %call21 = call double @floor(double %sub20) #6
  %conv22 = fptosi double %call21 to i32
  store i32 %conv22, i32* %y3, align 4
  %24 = load i32, i32* %x3, align 4
  %add23 = add nsw i32 %24, 3
  store i32 %add23, i32* %x4, align 4
  %25 = load i32, i32* %y3, align 4
  %add24 = add nsw i32 %25, 3
  store i32 %add24, i32* %y4, align 4
  %26 = load i32, i32* %x1, align 4
  %27 = load i32, i32* %x3, align 4
  %cmp25 = icmp slt i32 %26, %27
  br i1 %cmp25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %28 = load i32, i32* %x1, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %29 = load i32, i32* %x3, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %28, %cond.true ], [ %29, %cond.false ]
  store i32 %cond, i32* %x1, align 4
  %30 = load i32, i32* %y1, align 4
  %31 = load i32, i32* %y3, align 4
  %cmp27 = icmp slt i32 %30, %31
  br i1 %cmp27, label %cond.true.29, label %cond.false.30

cond.true.29:                                     ; preds = %cond.end
  %32 = load i32, i32* %y1, align 4
  br label %cond.end.31

cond.false.30:                                    ; preds = %cond.end
  %33 = load i32, i32* %y3, align 4
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.30, %cond.true.29
  %cond32 = phi i32 [ %32, %cond.true.29 ], [ %33, %cond.false.30 ]
  store i32 %cond32, i32* %y1, align 4
  %34 = load i32, i32* %x2, align 4
  %35 = load i32, i32* %x4, align 4
  %cmp33 = icmp sgt i32 %34, %35
  br i1 %cmp33, label %cond.true.35, label %cond.false.36

cond.true.35:                                     ; preds = %cond.end.31
  %36 = load i32, i32* %x2, align 4
  br label %cond.end.37

cond.false.36:                                    ; preds = %cond.end.31
  %37 = load i32, i32* %x4, align 4
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.36, %cond.true.35
  %cond38 = phi i32 [ %36, %cond.true.35 ], [ %37, %cond.false.36 ]
  store i32 %cond38, i32* %x2, align 4
  %38 = load i32, i32* %y2, align 4
  %39 = load i32, i32* %y4, align 4
  %cmp39 = icmp sgt i32 %38, %39
  br i1 %cmp39, label %cond.true.41, label %cond.false.42

cond.true.41:                                     ; preds = %cond.end.37
  %40 = load i32, i32* %y2, align 4
  br label %cond.end.43

cond.false.42:                                    ; preds = %cond.end.37
  %41 = load i32, i32* %y4, align 4
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.42, %cond.true.41
  %cond44 = phi i32 [ %40, %cond.true.41 ], [ %41, %cond.false.42 ]
  store i32 %cond44, i32* %y2, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end.43
  %42 = load i32, i32* %i, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %43 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  %44 = bitcast %struct._GimpVector2* %43 to i8*
  call void @g_free(i8* %44)
  %45 = load i32, i32* %x1, align 4
  %x45 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 0
  store i32 %45, i32* %x45, align 4
  %46 = load i32, i32* %y1, align 4
  %y46 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 1
  store i32 %46, i32* %y46, align 4
  %47 = load i32, i32* %x2, align 4
  %48 = load i32, i32* %x1, align 4
  %sub47 = sub nsw i32 %47, %48
  %width = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 2
  store i32 %sub47, i32* %width, align 4
  %49 = load i32, i32* %y2, align 4
  %50 = load i32, i32* %y1, align 4
  %sub48 = sub nsw i32 %49, %50
  %height = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 3
  store i32 %sub48, i32* %height, align 4
  %call49 = call %struct._cairo_region* @cairo_region_create_rectangle(%struct._cairo_rectangle_int* %rectangle)
  ret %struct._cairo_region* %call49
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @gimp_param_spec_array(i8*, i8*, i8*, i32) #1

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

declare void @g_type_class_add_private(i8*, i64) #1

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

declare i8* @g_value_get_boxed(%struct._GValue*) #1

declare noalias i8* @g_memdup(i8*, i32) #1

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

declare void @g_value_take_boxed(%struct._GValue*, i8*) #1

declare void @g_value_set_boxed(%struct._GValue*, i8*) #1

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_polygon_transform(%struct._GimpCanvasItem* %item, %struct._GimpDisplayShell* %shell, %struct._GimpVector2* %points) #3 {
entry:
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %points.addr = alloca %struct._GimpVector2*, align 8
  %private = alloca %struct._GimpCanvasPolygonPrivate*, align 8
  %i = alloca i32, align 4
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._GimpVector2* %points, %struct._GimpVector2** %points.addr, align 8
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_polygon_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasPolygonPrivate*
  store %struct._GimpCanvasPolygonPrivate* %2, %struct._GimpCanvasPolygonPrivate** %private, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load %struct._GimpCanvasPolygonPrivate*, %struct._GimpCanvasPolygonPrivate** %private, align 8
  %n_points = getelementptr inbounds %struct._GimpCanvasPolygonPrivate, %struct._GimpCanvasPolygonPrivate* %4, i32 0, i32 1
  %5 = load i32, i32* %n_points, align 4
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct._GimpCanvasPolygonPrivate*, %struct._GimpCanvasPolygonPrivate** %private, align 8
  %points2 = getelementptr inbounds %struct._GimpCanvasPolygonPrivate, %struct._GimpCanvasPolygonPrivate* %8, i32 0, i32 0
  %9 = load %struct._GimpVector2*, %struct._GimpVector2** %points2, align 8
  %arrayidx = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %9, i64 %idxprom
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx, i32 0, i32 0
  %10 = load double, double* %x, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %11 to i64
  %12 = load %struct._GimpCanvasPolygonPrivate*, %struct._GimpCanvasPolygonPrivate** %private, align 8
  %points4 = getelementptr inbounds %struct._GimpCanvasPolygonPrivate, %struct._GimpCanvasPolygonPrivate* %12, i32 0, i32 0
  %13 = load %struct._GimpVector2*, %struct._GimpVector2** %points4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %13, i64 %idxprom3
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx5, i32 0, i32 1
  %14 = load double, double* %y, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %15 to i64
  %16 = load %struct._GimpVector2*, %struct._GimpVector2** %points.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %16, i64 %idxprom6
  %x8 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx7, i32 0, i32 0
  %17 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %17 to i64
  %18 = load %struct._GimpVector2*, %struct._GimpVector2** %points.addr, align 8
  %arrayidx10 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %18, i64 %idxprom9
  %y11 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx10, i32 0, i32 1
  call void @gimp_display_shell_transform_xy_f(%struct._GimpDisplayShell* %6, double %10, double %14, double* %x8, double* %y11)
  %19 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %19 to i64
  %20 = load %struct._GimpVector2*, %struct._GimpVector2** %points.addr, align 8
  %arrayidx13 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %20, i64 %idxprom12
  %x14 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx13, i32 0, i32 0
  %21 = load double, double* %x14, align 8
  %call15 = call double @floor(double %21) #6
  %add = fadd double %call15, 5.000000e-01
  %22 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %22 to i64
  %23 = load %struct._GimpVector2*, %struct._GimpVector2** %points.addr, align 8
  %arrayidx17 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %23, i64 %idxprom16
  %x18 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx17, i32 0, i32 0
  store double %add, double* %x18, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %24 to i64
  %25 = load %struct._GimpVector2*, %struct._GimpVector2** %points.addr, align 8
  %arrayidx20 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %25, i64 %idxprom19
  %y21 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx20, i32 0, i32 1
  %26 = load double, double* %y21, align 8
  %call22 = call double @floor(double %26) #6
  %add23 = fadd double %call22, 5.000000e-01
  %27 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %27 to i64
  %28 = load %struct._GimpVector2*, %struct._GimpVector2** %points.addr, align 8
  %arrayidx25 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %28, i64 %idxprom24
  %y26 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx25, i32 0, i32 1
  store double %add23, double* %y26, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load i32, i32* %i, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @cairo_move_to(%struct._cairo*, double, double) #1

declare void @cairo_line_to(%struct._cairo*, double, double) #1

declare void @_gimp_canvas_item_fill(%struct._GimpCanvasItem*, %struct._cairo*) #1

declare void @_gimp_canvas_item_stroke(%struct._GimpCanvasItem*, %struct._cairo*) #1

declare void @gimp_display_shell_transform_xy_f(%struct._GimpDisplayShell*, double, double, double*, double*) #1

; Function Attrs: nounwind readnone
declare double @floor(double) #2

declare %struct._cairo_region* @cairo_region_create_rectangle(%struct._cairo_rectangle_int*) #1

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
