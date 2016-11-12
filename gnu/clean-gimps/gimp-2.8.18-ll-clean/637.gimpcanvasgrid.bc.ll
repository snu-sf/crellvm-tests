; ModuleID = './app/display/gimpcanvasgrid.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpCanvasGridClass = type { %struct._GimpCanvasItemClass }
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
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
%struct._Gimp = type opaque
%struct._GimpDisplayConfig = type opaque
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
%struct._GimpCanvasGrid = type { %struct._GimpCanvasItem }
%struct._GimpCanvasGridPrivate = type { %struct._GimpGrid*, i32 }
%struct._GimpGrid = type { %struct._GimpObject, i32, %struct._GimpRGB, %struct._GimpRGB, double, double, i32, double, double, i32 }
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._cairo_rectangle_int = type { i32, i32, i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_canvas_grid_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"GimpCanvasGrid\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Display\00", align 1
@__func__.gimp_canvas_grid_new = private unnamed_addr constant [21 x i8] c"gimp_canvas_grid_new\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"GIMP_IS_DISPLAY_SHELL (shell)\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"grid == NULL || GIMP_IS_GRID (grid)\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"grid\00", align 1
@gimp_canvas_grid_parent_class = internal global i8* null, align 8
@GimpCanvasGrid_private_offset = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"grid-style\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"gimpcanvasgrid.c\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@__func__.gimp_canvas_grid_draw = private unnamed_addr constant [22 x i8] c"gimp_canvas_grid_draw\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"xspacing > 0.0 && yspacing > 0.0\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_canvas_grid_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_canvas_grid_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_canvas_grid_get_type.g_define_type_id__volatile to i8*))
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
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 208, void (i8*, i8*)* bitcast (void (i8*)* @gimp_canvas_grid_class_intern_init to void (i8*, i8*)*), i32 32, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpCanvasGrid*)* @gimp_canvas_grid_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_canvas_grid_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_canvas_grid_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_canvas_item_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_grid_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_canvas_grid_parent_class, align 8
  %1 = load i32, i32* @GimpCanvasGrid_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpCanvasGrid_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpCanvasGridClass*
  call void @gimp_canvas_grid_class_init(%struct._GimpCanvasGridClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_grid_init(%struct._GimpCanvasGrid* %grid) #3 {
entry:
  %grid.addr = alloca %struct._GimpCanvasGrid*, align 8
  %private = alloca %struct._GimpCanvasGridPrivate*, align 8
  store %struct._GimpCanvasGrid* %grid, %struct._GimpCanvasGrid** %grid.addr, align 8
  %0 = load %struct._GimpCanvasGrid*, %struct._GimpCanvasGrid** %grid.addr, align 8
  %1 = bitcast %struct._GimpCanvasGrid* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_grid_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasGridPrivate*
  store %struct._GimpCanvasGridPrivate* %2, %struct._GimpCanvasGridPrivate** %private, align 8
  %call2 = call i64 @gimp_grid_get_type() #6
  %call3 = call i8* (i64, i8*, ...) @g_object_new(i64 %call2, i8* null)
  %3 = bitcast i8* %call3 to %struct._GimpGrid*
  %4 = load %struct._GimpCanvasGridPrivate*, %struct._GimpCanvasGridPrivate** %private, align 8
  %grid4 = getelementptr inbounds %struct._GimpCanvasGridPrivate, %struct._GimpCanvasGridPrivate* %4, i32 0, i32 0
  store %struct._GimpGrid* %3, %struct._GimpGrid** %grid4, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpCanvasItem* @gimp_canvas_grid_new(%struct._GimpDisplayShell* %shell, %struct._GimpGrid* %grid) #3 {
entry:
  %retval = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %grid.addr = alloca %struct._GimpGrid*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._GimpGrid* %grid, %struct._GimpGrid** %grid.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_canvas_grid_new, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpGrid*, %struct._GimpGrid** %grid.addr, align 8
  %cmp12 = icmp eq %struct._GimpGrid* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpGrid*, %struct._GimpGrid** %grid.addr, align 8
  %15 = bitcast %struct._GimpGrid* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_grid_get_type() #6
  store i64 %call17, i64* %__t16, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %lor.lhs.false
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %tobool24 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.else.30

land.lhs.true.25:                                 ; preds = %if.else.22
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type27, align 8
  %22 = load i64, i64* %__t16, align 8
  %cmp28 = icmp eq i64 %21, %22
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %land.lhs.true.25
  store i32 1, i32* %__r19, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %land.lhs.true.25, %if.else.22
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %24 = load i64, i64* %__t16, align 8
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #7
  store i32 %call31, i32* %__r19, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.21
  %25 = load i32, i32* %__r19, align 4
  store i32 %25, i32* %tmp34
  %26 = load i32, i32* %tmp34
  %tobool35 = icmp ne i32 %26, 0
  br i1 %tobool35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.end.33, %do.body.11
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_canvas_grid_new, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %retval
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %call40 = call i64 @gimp_canvas_grid_get_type() #6
  %27 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %28 = load %struct._GimpGrid*, %struct._GimpGrid** %grid.addr, align 8
  %call41 = call i8* (i64, i8*, ...) @g_object_new(i64 %call40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), %struct._GimpDisplayShell* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), %struct._GimpGrid* %28, i8* null)
  %29 = bitcast i8* %call41 to %struct._GimpCanvasItem*
  store %struct._GimpCanvasItem* %29, %struct._GimpCanvasItem** %retval
  br label %return

return:                                           ; preds = %do.end.39, %if.else.37, %if.else.9
  %30 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %retval
  ret %struct._GimpCanvasItem* %30
}

; Function Attrs: nounwind readnone
declare i64 @gimp_display_shell_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_grid_get_type() #2

declare i8* @g_object_new(i64, i8*, ...) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_grid_class_init(%struct._GimpCanvasGridClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpCanvasGridClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %item_class = alloca %struct._GimpCanvasItemClass*, align 8
  store %struct._GimpCanvasGridClass* %klass, %struct._GimpCanvasGridClass** %klass.addr, align 8
  %0 = load %struct._GimpCanvasGridClass*, %struct._GimpCanvasGridClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpCanvasGridClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpCanvasGridClass*, %struct._GimpCanvasGridClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpCanvasGridClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_canvas_item_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpCanvasItemClass*
  store %struct._GimpCanvasItemClass* %5, %struct._GimpCanvasItemClass** %item_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_canvas_grid_finalize, void (%struct._GObject*)** %finalize, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_canvas_grid_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_canvas_grid_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %9 = load %struct._GimpCanvasItemClass*, %struct._GimpCanvasItemClass** %item_class, align 8
  %draw = getelementptr inbounds %struct._GimpCanvasItemClass, %struct._GimpCanvasItemClass* %9, i32 0, i32 2
  store void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)* @gimp_canvas_grid_draw, void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)** %draw, align 8
  %10 = load %struct._GimpCanvasItemClass*, %struct._GimpCanvasItemClass** %item_class, align 8
  %get_extents = getelementptr inbounds %struct._GimpCanvasItemClass, %struct._GimpCanvasItemClass* %10, i32 0, i32 3
  store %struct._cairo_region* (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*)* @gimp_canvas_grid_get_extents, %struct._cairo_region* (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*)** %get_extents, align 8
  %11 = load %struct._GimpCanvasItemClass*, %struct._GimpCanvasItemClass** %item_class, align 8
  %stroke = getelementptr inbounds %struct._GimpCanvasItemClass, %struct._GimpCanvasItemClass* %11, i32 0, i32 4
  store void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)* @gimp_canvas_grid_stroke, void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)** %stroke, align 8
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call i64 @gimp_grid_get_type() #6
  %call4 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null, i64 %call3, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %12, i32 1, %struct._GParamSpec* %call4)
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null, i32 0, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %13, i32 2, %struct._GParamSpec* %call5)
  %14 = load %struct._GimpCanvasGridClass*, %struct._GimpCanvasGridClass** %klass.addr, align 8
  %15 = bitcast %struct._GimpCanvasGridClass* %14 to i8*
  call void @g_type_class_add_private(i8* %15, i64 16)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_grid_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %private = alloca %struct._GimpCanvasGridPrivate*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_grid_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasGridPrivate*
  store %struct._GimpCanvasGridPrivate* %2, %struct._GimpCanvasGridPrivate** %private, align 8
  %3 = load %struct._GimpCanvasGridPrivate*, %struct._GimpCanvasGridPrivate** %private, align 8
  %grid = getelementptr inbounds %struct._GimpCanvasGridPrivate, %struct._GimpCanvasGridPrivate* %3, i32 0, i32 0
  %4 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  %tobool = icmp ne %struct._GimpGrid* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpCanvasGridPrivate*, %struct._GimpCanvasGridPrivate** %private, align 8
  %grid2 = getelementptr inbounds %struct._GimpCanvasGridPrivate, %struct._GimpCanvasGridPrivate* %5, i32 0, i32 0
  %6 = load %struct._GimpGrid*, %struct._GimpGrid** %grid2, align 8
  %7 = bitcast %struct._GimpGrid* %6 to i8*
  call void @g_object_unref(i8* %7)
  %8 = load %struct._GimpCanvasGridPrivate*, %struct._GimpCanvasGridPrivate** %private, align 8
  %grid3 = getelementptr inbounds %struct._GimpCanvasGridPrivate, %struct._GimpCanvasGridPrivate* %8, i32 0, i32 0
  store %struct._GimpGrid* null, %struct._GimpGrid** %grid3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8*, i8** @gimp_canvas_grid_parent_class, align 8
  %10 = bitcast i8* %9 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 80)
  %11 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %11, i32 0, i32 6
  %12 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %13 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %12(%struct._GObject* %13)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_grid_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpCanvasGridPrivate*, align 8
  %grid = alloca %struct._GimpGrid*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_grid_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasGridPrivate*
  store %struct._GimpCanvasGridPrivate* %2, %struct._GimpCanvasGridPrivate** %private, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_get_object(%struct._GValue* %4)
  %5 = bitcast i8* %call2 to %struct._GimpGrid*
  store %struct._GimpGrid* %5, %struct._GimpGrid** %grid, align 8
  %6 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  %tobool = icmp ne %struct._GimpGrid* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %7 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  %8 = bitcast %struct._GimpGrid* %7 to %struct._GTypeInstance*
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 80)
  %9 = bitcast %struct._GTypeInstance* %call3 to %struct._GObject*
  %10 = load %struct._GimpCanvasGridPrivate*, %struct._GimpCanvasGridPrivate** %private, align 8
  %grid4 = getelementptr inbounds %struct._GimpCanvasGridPrivate, %struct._GimpCanvasGridPrivate* %10, i32 0, i32 0
  %11 = load %struct._GimpGrid*, %struct._GimpGrid** %grid4, align 8
  %12 = bitcast %struct._GimpGrid* %11 to %struct._GTypeInstance*
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 80)
  %13 = bitcast %struct._GTypeInstance* %call5 to %struct._GObject*
  %call6 = call i32 @gimp_config_sync(%struct._GObject* %9, %struct._GObject* %13, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %14 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call8 = call i32 @g_value_get_boolean(%struct._GValue* %14)
  %15 = load %struct._GimpCanvasGridPrivate*, %struct._GimpCanvasGridPrivate** %private, align 8
  %grid_style = getelementptr inbounds %struct._GimpCanvasGridPrivate, %struct._GimpCanvasGridPrivate* %15, i32 0, i32 1
  store i32 %call8, i32* %grid_style, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %16 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %16, %struct._GObject** %_glib__object, align 8
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %17, %struct._GParamSpec** %_glib__pspec, align 8
  %18 = load i32, i32* %property_id.addr, align 4
  store i32 %18, i32* %_glib__property_id, align 4
  %19 = load i32, i32* %_glib__property_id, align 4
  %20 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %20, i32 0, i32 1
  %21 = load i8*, i8** %name, align 8
  %22 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %23 = bitcast %struct._GParamSpec* %22 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %23, i32 0, i32 0
  %24 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %24, i32 0, i32 0
  %25 = load i64, i64* %g_type, align 8
  %call9 = call i8* @g_type_name(i64 %25)
  %26 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %27 = bitcast %struct._GObject* %26 to %struct._GTypeInstance*
  %g_class10 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %27, i32 0, i32 0
  %28 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class10, align 8
  %g_type11 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %28, i32 0, i32 0
  %29 = load i64, i64* %g_type11, align 8
  %call12 = call i8* @g_type_name(i64 %29)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), i32 162, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32 %19, i8* %21, i8* %call9, i8* %call12)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.7, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_grid_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpCanvasGridPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_grid_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasGridPrivate*
  store %struct._GimpCanvasGridPrivate* %2, %struct._GimpCanvasGridPrivate** %private, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpCanvasGridPrivate*, %struct._GimpCanvasGridPrivate** %private, align 8
  %grid = getelementptr inbounds %struct._GimpCanvasGridPrivate, %struct._GimpCanvasGridPrivate* %5, i32 0, i32 0
  %6 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  %7 = bitcast %struct._GimpGrid* %6 to i8*
  call void @g_value_set_object(%struct._GValue* %4, i8* %7)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %9 = load %struct._GimpCanvasGridPrivate*, %struct._GimpCanvasGridPrivate** %private, align 8
  %grid_style = getelementptr inbounds %struct._GimpCanvasGridPrivate, %struct._GimpCanvasGridPrivate* %9, i32 0, i32 1
  %10 = load i32, i32* %grid_style, align 4
  call void @g_value_set_boolean(%struct._GValue* %8, i32 %10)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %11 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %11, %struct._GObject** %_glib__object, align 8
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %12, %struct._GParamSpec** %_glib__pspec, align 8
  %13 = load i32, i32* %property_id.addr, align 4
  store i32 %13, i32* %_glib__property_id, align 4
  %14 = load i32, i32* %_glib__property_id, align 4
  %15 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %15, i32 0, i32 1
  %16 = load i8*, i8** %name, align 8
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %18 = bitcast %struct._GParamSpec* %17 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type, align 8
  %call3 = call i8* @g_type_name(i64 %20)
  %21 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %22 = bitcast %struct._GObject* %21 to %struct._GTypeInstance*
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type5 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %23, i32 0, i32 0
  %24 = load i64, i64* %g_type5, align 8
  %call6 = call i8* @g_type_name(i64 %24)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), i32 185, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32 %14, i8* %16, i8* %call3, i8* %call6)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_grid_draw(%struct._GimpCanvasItem* %item, %struct._GimpDisplayShell* %shell, %struct._cairo* %cr) #3 {
entry:
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %private = alloca %struct._GimpCanvasGridPrivate*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %xspacing = alloca double, align 8
  %yspacing = alloca double, align 8
  %xoffset = alloca double, align 8
  %yoffset = alloca double, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  %dx1 = alloca double, align 8
  %dy1 = alloca double, align 8
  %dx2 = alloca double, align 8
  %dy2 = alloca double, align 8
  %x0 = alloca i32, align 4
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %x3 = alloca i32, align 4
  %y0 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %y3 = alloca i32, align 4
  %x_real = alloca i32, align 4
  %y_real = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_grid_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasGridPrivate*
  store %struct._GimpCanvasGridPrivate* %2, %struct._GimpCanvasGridPrivate** %private, align 8
  %3 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %3, i32 0, i32 1
  %4 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call2 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %4)
  store %struct._GimpImage* %call2, %struct._GimpImage** %image, align 8
  %5 = load %struct._GimpCanvasGridPrivate*, %struct._GimpCanvasGridPrivate** %private, align 8
  %grid = getelementptr inbounds %struct._GimpCanvasGridPrivate, %struct._GimpCanvasGridPrivate* %5, i32 0, i32 0
  %6 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  call void @gimp_grid_get_spacing(%struct._GimpGrid* %6, double* %xspacing, double* %yspacing)
  %7 = load %struct._GimpCanvasGridPrivate*, %struct._GimpCanvasGridPrivate** %private, align 8
  %grid3 = getelementptr inbounds %struct._GimpCanvasGridPrivate, %struct._GimpCanvasGridPrivate* %7, i32 0, i32 0
  %8 = load %struct._GimpGrid*, %struct._GimpGrid** %grid3, align 8
  call void @gimp_grid_get_offset(%struct._GimpGrid* %8, double* %xoffset, double* %yoffset)
  br label %do.body

do.body:                                          ; preds = %entry
  %9 = load double, double* %xspacing, align 8
  %cmp = fcmp ogt double %9, 0.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %10 = load double, double* %yspacing, align 8
  %cmp4 = fcmp ogt double %10, 0.000000e+00
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_canvas_grid_draw, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %11 = load double, double* %xspacing, align 8
  %12 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %12, i32 0, i32 13
  %13 = load double, double* %scale_x, align 8
  %mul = fmul double %11, %13
  %cmp5 = fcmp olt double %mul, 2.000000e+00
  br i1 %cmp5, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %14 = load double, double* %yspacing, align 8
  %15 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %15, i32 0, i32 14
  %16 = load double, double* %scale_y, align 8
  %mul6 = fmul double %14, %16
  %cmp7 = fcmp olt double %mul6, 2.000000e+00
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %lor.lhs.false, %do.end
  br label %return

if.end.9:                                         ; preds = %lor.lhs.false
  %17 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_clip_extents(%struct._cairo* %17, double* %dx1, double* %dy1, double* %dx2, double* %dy2)
  %18 = load double, double* %dx1, align 8
  %call10 = call double @floor(double %18) #6
  %conv = fptosi double %call10 to i32
  store i32 %conv, i32* %x1, align 4
  %19 = load double, double* %dy1, align 8
  %call11 = call double @floor(double %19) #6
  %conv12 = fptosi double %call11 to i32
  store i32 %conv12, i32* %y1, align 4
  %20 = load double, double* %dx2, align 8
  %call13 = call double @ceil(double %20) #6
  %conv14 = fptosi double %call13 to i32
  store i32 %conv14, i32* %x2, align 4
  %21 = load double, double* %dy2, align 8
  %call15 = call double @ceil(double %21) #6
  %conv16 = fptosi double %call15 to i32
  store i32 %conv16, i32* %y2, align 4
  %22 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call17 = call i32 @gimp_image_get_width(%struct._GimpImage* %22)
  store i32 %call17, i32* %width, align 4
  %23 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call18 = call i32 @gimp_image_get_height(%struct._GimpImage* %23)
  store i32 %call18, i32* %height, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.9
  %24 = load double, double* %xoffset, align 8
  %cmp19 = fcmp ogt double %24, 0.000000e+00
  br i1 %cmp19, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %25 = load double, double* %xspacing, align 8
  %26 = load double, double* %xoffset, align 8
  %sub = fsub double %26, %25
  store double %sub, double* %xoffset, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.21

while.cond.21:                                    ; preds = %while.body.24, %while.end
  %27 = load double, double* %yoffset, align 8
  %cmp22 = fcmp ogt double %27, 0.000000e+00
  br i1 %cmp22, label %while.body.24, label %while.end.26

while.body.24:                                    ; preds = %while.cond.21
  %28 = load double, double* %yspacing, align 8
  %29 = load double, double* %yoffset, align 8
  %sub25 = fsub double %29, %28
  store double %sub25, double* %yoffset, align 8
  br label %while.cond.21

while.end.26:                                     ; preds = %while.cond.21
  %30 = load %struct._GimpCanvasGridPrivate*, %struct._GimpCanvasGridPrivate** %private, align 8
  %grid27 = getelementptr inbounds %struct._GimpCanvasGridPrivate, %struct._GimpCanvasGridPrivate* %30, i32 0, i32 0
  %31 = load %struct._GimpGrid*, %struct._GimpGrid** %grid27, align 8
  %style = getelementptr inbounds %struct._GimpGrid, %struct._GimpGrid* %31, i32 0, i32 1
  %32 = load i32, i32* %style, align 4
  switch i32 %32, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.68
    i32 2, label %sw.bb.203
    i32 3, label %sw.bb.203
    i32 4, label %sw.bb.203
  ]

sw.bb:                                            ; preds = %while.end.26
  %33 = load double, double* %xoffset, align 8
  store double %33, double* %x, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.65, %sw.bb
  %34 = load double, double* %x, align 8
  %35 = load i32, i32* %width, align 4
  %conv28 = sitofp i32 %35 to double
  %cmp29 = fcmp ole double %34, %conv28
  br i1 %cmp29, label %for.body, label %for.end.67

for.body:                                         ; preds = %for.cond
  %36 = load double, double* %x, align 8
  %cmp31 = fcmp olt double %36, 0.000000e+00
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %for.body
  br label %for.inc.65

if.end.34:                                        ; preds = %for.body
  %37 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %38 = load double, double* %x, align 8
  call void @gimp_display_shell_transform_xy(%struct._GimpDisplayShell* %37, double %38, double 0.000000e+00, i32* %x_real, i32* %y_real)
  %39 = load i32, i32* %x_real, align 4
  %40 = load i32, i32* %x1, align 4
  %cmp35 = icmp slt i32 %39, %40
  br i1 %cmp35, label %if.then.40, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %if.end.34
  %41 = load i32, i32* %x_real, align 4
  %42 = load i32, i32* %x2, align 4
  %cmp38 = icmp sge i32 %41, %42
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %lor.lhs.false.37, %if.end.34
  br label %for.inc.65

if.end.41:                                        ; preds = %lor.lhs.false.37
  %43 = load double, double* %yoffset, align 8
  store double %43, double* %y, align 8
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc, %if.end.41
  %44 = load double, double* %y, align 8
  %45 = load i32, i32* %height, align 4
  %conv43 = sitofp i32 %45 to double
  %cmp44 = fcmp ole double %44, %conv43
  br i1 %cmp44, label %for.body.46, label %for.end

for.body.46:                                      ; preds = %for.cond.42
  %46 = load double, double* %y, align 8
  %cmp47 = fcmp olt double %46, 0.000000e+00
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %for.body.46
  br label %for.inc

if.end.50:                                        ; preds = %for.body.46
  %47 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %48 = load double, double* %x, align 8
  %49 = load double, double* %y, align 8
  call void @gimp_display_shell_transform_xy(%struct._GimpDisplayShell* %47, double %48, double %49, i32* %x_real, i32* %y_real)
  %50 = load i32, i32* %y_real, align 4
  %51 = load i32, i32* %y1, align 4
  %cmp51 = icmp sge i32 %50, %51
  br i1 %cmp51, label %land.lhs.true.53, label %if.end.63

land.lhs.true.53:                                 ; preds = %if.end.50
  %52 = load i32, i32* %y_real, align 4
  %53 = load i32, i32* %y2, align 4
  %cmp54 = icmp slt i32 %52, %53
  br i1 %cmp54, label %if.then.56, label %if.end.63

if.then.56:                                       ; preds = %land.lhs.true.53
  %54 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %55 = load i32, i32* %x_real, align 4
  %conv57 = sitofp i32 %55 to double
  %56 = load i32, i32* %y_real, align 4
  %conv58 = sitofp i32 %56 to double
  %add = fadd double %conv58, 5.000000e-01
  call void @cairo_move_to(%struct._cairo* %54, double %conv57, double %add)
  %57 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %58 = load i32, i32* %x_real, align 4
  %add59 = add nsw i32 %58, 1
  %conv60 = sitofp i32 %add59 to double
  %59 = load i32, i32* %y_real, align 4
  %conv61 = sitofp i32 %59 to double
  %add62 = fadd double %conv61, 5.000000e-01
  call void @cairo_line_to(%struct._cairo* %57, double %conv60, double %add62)
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.56, %land.lhs.true.53, %if.end.50
  br label %for.inc

for.inc:                                          ; preds = %if.end.63, %if.then.49
  %60 = load double, double* %yspacing, align 8
  %61 = load double, double* %y, align 8
  %add64 = fadd double %61, %60
  store double %add64, double* %y, align 8
  br label %for.cond.42

for.end:                                          ; preds = %for.cond.42
  br label %for.inc.65

for.inc.65:                                       ; preds = %for.end, %if.then.40, %if.then.33
  %62 = load double, double* %xspacing, align 8
  %63 = load double, double* %x, align 8
  %add66 = fadd double %63, %62
  store double %add66, double* %x, align 8
  br label %for.cond

for.end.67:                                       ; preds = %for.cond
  br label %sw.epilog

sw.bb.68:                                         ; preds = %while.end.26
  %64 = load double, double* %xoffset, align 8
  store double %64, double* %x, align 8
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.200, %sw.bb.68
  %65 = load double, double* %x, align 8
  %66 = load i32, i32* %width, align 4
  %conv70 = sitofp i32 %66 to double
  %cmp71 = fcmp ole double %65, %conv70
  br i1 %cmp71, label %for.body.73, label %for.end.202

for.body.73:                                      ; preds = %for.cond.69
  %67 = load double, double* %x, align 8
  %cmp74 = fcmp olt double %67, 0.000000e+00
  br i1 %cmp74, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %for.body.73
  br label %for.inc.200

if.end.77:                                        ; preds = %for.body.73
  %68 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %69 = load double, double* %x, align 8
  call void @gimp_display_shell_transform_xy(%struct._GimpDisplayShell* %68, double %69, double 0.000000e+00, i32* %x_real, i32* %y_real)
  %70 = load i32, i32* %x_real, align 4
  %add78 = add nsw i32 %70, 2
  %71 = load i32, i32* %x1, align 4
  %cmp79 = icmp slt i32 %add78, %71
  br i1 %cmp79, label %if.then.85, label %lor.lhs.false.81

lor.lhs.false.81:                                 ; preds = %if.end.77
  %72 = load i32, i32* %x_real, align 4
  %sub82 = sub nsw i32 %72, 2
  %73 = load i32, i32* %x2, align 4
  %cmp83 = icmp sge i32 %sub82, %73
  br i1 %cmp83, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %lor.lhs.false.81, %if.end.77
  br label %for.inc.200

if.end.86:                                        ; preds = %lor.lhs.false.81
  %74 = load double, double* %yoffset, align 8
  store double %74, double* %y, align 8
  br label %for.cond.87

for.cond.87:                                      ; preds = %for.inc.197, %if.end.86
  %75 = load double, double* %y, align 8
  %76 = load i32, i32* %height, align 4
  %conv88 = sitofp i32 %76 to double
  %cmp89 = fcmp ole double %75, %conv88
  br i1 %cmp89, label %for.body.91, label %for.end.199

for.body.91:                                      ; preds = %for.cond.87
  %77 = load double, double* %y, align 8
  %cmp92 = fcmp olt double %77, 0.000000e+00
  br i1 %cmp92, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %for.body.91
  br label %for.inc.197

if.end.95:                                        ; preds = %for.body.91
  %78 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %79 = load double, double* %x, align 8
  %80 = load double, double* %y, align 8
  call void @gimp_display_shell_transform_xy(%struct._GimpDisplayShell* %78, double %79, double %80, i32* %x_real, i32* %y_real)
  %81 = load i32, i32* %y_real, align 4
  %add96 = add nsw i32 %81, 2
  %82 = load i32, i32* %y1, align 4
  %cmp97 = icmp slt i32 %add96, %82
  br i1 %cmp97, label %if.then.103, label %lor.lhs.false.99

lor.lhs.false.99:                                 ; preds = %if.end.95
  %83 = load i32, i32* %y_real, align 4
  %sub100 = sub nsw i32 %83, 2
  %84 = load i32, i32* %y2, align 4
  %cmp101 = icmp sge i32 %sub100, %84
  br i1 %cmp101, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %lor.lhs.false.99, %if.end.95
  br label %for.inc.197

if.end.104:                                       ; preds = %lor.lhs.false.99
  %85 = load i32, i32* %x_real, align 4
  %86 = load i32, i32* %x1, align 4
  %cmp105 = icmp sge i32 %85, %86
  br i1 %cmp105, label %land.lhs.true.107, label %if.end.148

land.lhs.true.107:                                ; preds = %if.end.104
  %87 = load i32, i32* %x_real, align 4
  %88 = load i32, i32* %x2, align 4
  %cmp108 = icmp slt i32 %87, %88
  br i1 %cmp108, label %if.then.110, label %if.end.148

if.then.110:                                      ; preds = %land.lhs.true.107
  %89 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %90 = load i32, i32* %x_real, align 4
  %conv111 = sitofp i32 %90 to double
  %add112 = fadd double %conv111, 5.000000e-01
  %91 = load i32, i32* %y_real, align 4
  %sub113 = sub nsw i32 %91, 2
  %92 = load i32, i32* %y2, align 4
  %sub114 = sub nsw i32 %92, 1
  %cmp115 = icmp sgt i32 %sub113, %sub114
  br i1 %cmp115, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.110
  %93 = load i32, i32* %y2, align 4
  %sub117 = sub nsw i32 %93, 1
  br label %cond.end.124

cond.false:                                       ; preds = %if.then.110
  %94 = load i32, i32* %y_real, align 4
  %sub118 = sub nsw i32 %94, 2
  %95 = load i32, i32* %y1, align 4
  %cmp119 = icmp slt i32 %sub118, %95
  br i1 %cmp119, label %cond.true.121, label %cond.false.122

cond.true.121:                                    ; preds = %cond.false
  %96 = load i32, i32* %y1, align 4
  br label %cond.end

cond.false.122:                                   ; preds = %cond.false
  %97 = load i32, i32* %y_real, align 4
  %sub123 = sub nsw i32 %97, 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false.122, %cond.true.121
  %cond = phi i32 [ %96, %cond.true.121 ], [ %sub123, %cond.false.122 ]
  br label %cond.end.124

cond.end.124:                                     ; preds = %cond.end, %cond.true
  %cond125 = phi i32 [ %sub117, %cond.true ], [ %cond, %cond.end ]
  %conv126 = sitofp i32 %cond125 to double
  call void @cairo_move_to(%struct._cairo* %89, double %add112, double %conv126)
  %98 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %99 = load i32, i32* %x_real, align 4
  %conv127 = sitofp i32 %99 to double
  %add128 = fadd double %conv127, 5.000000e-01
  %100 = load i32, i32* %y_real, align 4
  %add129 = add nsw i32 %100, 2
  %101 = load i32, i32* %y2, align 4
  %sub130 = sub nsw i32 %101, 1
  %cmp131 = icmp sgt i32 %add129, %sub130
  br i1 %cmp131, label %cond.true.133, label %cond.false.135

cond.true.133:                                    ; preds = %cond.end.124
  %102 = load i32, i32* %y2, align 4
  %sub134 = sub nsw i32 %102, 1
  br label %cond.end.144

cond.false.135:                                   ; preds = %cond.end.124
  %103 = load i32, i32* %y_real, align 4
  %add136 = add nsw i32 %103, 2
  %104 = load i32, i32* %y1, align 4
  %cmp137 = icmp slt i32 %add136, %104
  br i1 %cmp137, label %cond.true.139, label %cond.false.140

cond.true.139:                                    ; preds = %cond.false.135
  %105 = load i32, i32* %y1, align 4
  br label %cond.end.142

cond.false.140:                                   ; preds = %cond.false.135
  %106 = load i32, i32* %y_real, align 4
  %add141 = add nsw i32 %106, 2
  br label %cond.end.142

cond.end.142:                                     ; preds = %cond.false.140, %cond.true.139
  %cond143 = phi i32 [ %105, %cond.true.139 ], [ %add141, %cond.false.140 ]
  br label %cond.end.144

cond.end.144:                                     ; preds = %cond.end.142, %cond.true.133
  %cond145 = phi i32 [ %sub134, %cond.true.133 ], [ %cond143, %cond.end.142 ]
  %add146 = add nsw i32 %cond145, 1
  %conv147 = sitofp i32 %add146 to double
  call void @cairo_line_to(%struct._cairo* %98, double %add128, double %conv147)
  br label %if.end.148

if.end.148:                                       ; preds = %cond.end.144, %land.lhs.true.107, %if.end.104
  %107 = load i32, i32* %y_real, align 4
  %108 = load i32, i32* %y1, align 4
  %cmp149 = icmp sge i32 %107, %108
  br i1 %cmp149, label %land.lhs.true.151, label %if.end.196

land.lhs.true.151:                                ; preds = %if.end.148
  %109 = load i32, i32* %y_real, align 4
  %110 = load i32, i32* %y2, align 4
  %cmp152 = icmp slt i32 %109, %110
  br i1 %cmp152, label %if.then.154, label %if.end.196

if.then.154:                                      ; preds = %land.lhs.true.151
  %111 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %112 = load i32, i32* %x_real, align 4
  %sub155 = sub nsw i32 %112, 2
  %113 = load i32, i32* %x2, align 4
  %sub156 = sub nsw i32 %113, 1
  %cmp157 = icmp sgt i32 %sub155, %sub156
  br i1 %cmp157, label %cond.true.159, label %cond.false.161

cond.true.159:                                    ; preds = %if.then.154
  %114 = load i32, i32* %x2, align 4
  %sub160 = sub nsw i32 %114, 1
  br label %cond.end.170

cond.false.161:                                   ; preds = %if.then.154
  %115 = load i32, i32* %x_real, align 4
  %sub162 = sub nsw i32 %115, 2
  %116 = load i32, i32* %x1, align 4
  %cmp163 = icmp slt i32 %sub162, %116
  br i1 %cmp163, label %cond.true.165, label %cond.false.166

cond.true.165:                                    ; preds = %cond.false.161
  %117 = load i32, i32* %x1, align 4
  br label %cond.end.168

cond.false.166:                                   ; preds = %cond.false.161
  %118 = load i32, i32* %x_real, align 4
  %sub167 = sub nsw i32 %118, 2
  br label %cond.end.168

cond.end.168:                                     ; preds = %cond.false.166, %cond.true.165
  %cond169 = phi i32 [ %117, %cond.true.165 ], [ %sub167, %cond.false.166 ]
  br label %cond.end.170

cond.end.170:                                     ; preds = %cond.end.168, %cond.true.159
  %cond171 = phi i32 [ %sub160, %cond.true.159 ], [ %cond169, %cond.end.168 ]
  %conv172 = sitofp i32 %cond171 to double
  %119 = load i32, i32* %y_real, align 4
  %conv173 = sitofp i32 %119 to double
  %add174 = fadd double %conv173, 5.000000e-01
  call void @cairo_move_to(%struct._cairo* %111, double %conv172, double %add174)
  %120 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %121 = load i32, i32* %x_real, align 4
  %add175 = add nsw i32 %121, 2
  %122 = load i32, i32* %x2, align 4
  %sub176 = sub nsw i32 %122, 1
  %cmp177 = icmp sgt i32 %add175, %sub176
  br i1 %cmp177, label %cond.true.179, label %cond.false.181

cond.true.179:                                    ; preds = %cond.end.170
  %123 = load i32, i32* %x2, align 4
  %sub180 = sub nsw i32 %123, 1
  br label %cond.end.190

cond.false.181:                                   ; preds = %cond.end.170
  %124 = load i32, i32* %x_real, align 4
  %add182 = add nsw i32 %124, 2
  %125 = load i32, i32* %x1, align 4
  %cmp183 = icmp slt i32 %add182, %125
  br i1 %cmp183, label %cond.true.185, label %cond.false.186

cond.true.185:                                    ; preds = %cond.false.181
  %126 = load i32, i32* %x1, align 4
  br label %cond.end.188

cond.false.186:                                   ; preds = %cond.false.181
  %127 = load i32, i32* %x_real, align 4
  %add187 = add nsw i32 %127, 2
  br label %cond.end.188

cond.end.188:                                     ; preds = %cond.false.186, %cond.true.185
  %cond189 = phi i32 [ %126, %cond.true.185 ], [ %add187, %cond.false.186 ]
  br label %cond.end.190

cond.end.190:                                     ; preds = %cond.end.188, %cond.true.179
  %cond191 = phi i32 [ %sub180, %cond.true.179 ], [ %cond189, %cond.end.188 ]
  %add192 = add nsw i32 %cond191, 1
  %conv193 = sitofp i32 %add192 to double
  %128 = load i32, i32* %y_real, align 4
  %conv194 = sitofp i32 %128 to double
  %add195 = fadd double %conv194, 5.000000e-01
  call void @cairo_line_to(%struct._cairo* %120, double %conv193, double %add195)
  br label %if.end.196

if.end.196:                                       ; preds = %cond.end.190, %land.lhs.true.151, %if.end.148
  br label %for.inc.197

for.inc.197:                                      ; preds = %if.end.196, %if.then.103, %if.then.94
  %129 = load double, double* %yspacing, align 8
  %130 = load double, double* %y, align 8
  %add198 = fadd double %130, %129
  store double %add198, double* %y, align 8
  br label %for.cond.87

for.end.199:                                      ; preds = %for.cond.87
  br label %for.inc.200

for.inc.200:                                      ; preds = %for.end.199, %if.then.85, %if.then.76
  %131 = load double, double* %xspacing, align 8
  %132 = load double, double* %x, align 8
  %add201 = fadd double %132, %131
  store double %add201, double* %x, align 8
  br label %for.cond.69

for.end.202:                                      ; preds = %for.cond.69
  br label %sw.epilog

sw.bb.203:                                        ; preds = %while.end.26, %while.end.26, %while.end.26
  %133 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_transform_xy(%struct._GimpDisplayShell* %133, double 0.000000e+00, double 0.000000e+00, i32* %x0, i32* %y0)
  %134 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %135 = load i32, i32* %width, align 4
  %conv204 = sitofp i32 %135 to double
  %136 = load i32, i32* %height, align 4
  %conv205 = sitofp i32 %136 to double
  call void @gimp_display_shell_transform_xy(%struct._GimpDisplayShell* %134, double %conv204, double %conv205, i32* %x3, i32* %y3)
  %137 = load double, double* %xoffset, align 8
  store double %137, double* %x, align 8
  br label %for.cond.206

for.cond.206:                                     ; preds = %for.inc.229, %sw.bb.203
  %138 = load double, double* %x, align 8
  %139 = load i32, i32* %width, align 4
  %conv207 = sitofp i32 %139 to double
  %cmp208 = fcmp olt double %138, %conv207
  br i1 %cmp208, label %for.body.210, label %for.end.231

for.body.210:                                     ; preds = %for.cond.206
  %140 = load double, double* %x, align 8
  %cmp211 = fcmp olt double %140, 0.000000e+00
  br i1 %cmp211, label %if.then.213, label %if.end.214

if.then.213:                                      ; preds = %for.body.210
  br label %for.inc.229

if.end.214:                                       ; preds = %for.body.210
  %141 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %142 = load double, double* %x, align 8
  call void @gimp_display_shell_transform_xy(%struct._GimpDisplayShell* %141, double %142, double 0.000000e+00, i32* %x_real, i32* %y_real)
  %143 = load i32, i32* %x_real, align 4
  %144 = load i32, i32* %x1, align 4
  %cmp215 = icmp sge i32 %143, %144
  br i1 %cmp215, label %land.lhs.true.217, label %if.end.228

land.lhs.true.217:                                ; preds = %if.end.214
  %145 = load i32, i32* %x_real, align 4
  %146 = load i32, i32* %x2, align 4
  %cmp218 = icmp slt i32 %145, %146
  br i1 %cmp218, label %if.then.220, label %if.end.228

if.then.220:                                      ; preds = %land.lhs.true.217
  %147 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %148 = load i32, i32* %x_real, align 4
  %conv221 = sitofp i32 %148 to double
  %add222 = fadd double %conv221, 5.000000e-01
  %149 = load i32, i32* %y0, align 4
  %conv223 = sitofp i32 %149 to double
  call void @cairo_move_to(%struct._cairo* %147, double %add222, double %conv223)
  %150 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %151 = load i32, i32* %x_real, align 4
  %conv224 = sitofp i32 %151 to double
  %add225 = fadd double %conv224, 5.000000e-01
  %152 = load i32, i32* %y3, align 4
  %add226 = add nsw i32 %152, 1
  %conv227 = sitofp i32 %add226 to double
  call void @cairo_line_to(%struct._cairo* %150, double %add225, double %conv227)
  br label %if.end.228

if.end.228:                                       ; preds = %if.then.220, %land.lhs.true.217, %if.end.214
  br label %for.inc.229

for.inc.229:                                      ; preds = %if.end.228, %if.then.213
  %153 = load double, double* %xspacing, align 8
  %154 = load double, double* %x, align 8
  %add230 = fadd double %154, %153
  store double %add230, double* %x, align 8
  br label %for.cond.206

for.end.231:                                      ; preds = %for.cond.206
  %155 = load double, double* %yoffset, align 8
  store double %155, double* %y, align 8
  br label %for.cond.232

for.cond.232:                                     ; preds = %for.inc.255, %for.end.231
  %156 = load double, double* %y, align 8
  %157 = load i32, i32* %height, align 4
  %conv233 = sitofp i32 %157 to double
  %cmp234 = fcmp olt double %156, %conv233
  br i1 %cmp234, label %for.body.236, label %for.end.257

for.body.236:                                     ; preds = %for.cond.232
  %158 = load double, double* %y, align 8
  %cmp237 = fcmp olt double %158, 0.000000e+00
  br i1 %cmp237, label %if.then.239, label %if.end.240

if.then.239:                                      ; preds = %for.body.236
  br label %for.inc.255

if.end.240:                                       ; preds = %for.body.236
  %159 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %160 = load double, double* %y, align 8
  call void @gimp_display_shell_transform_xy(%struct._GimpDisplayShell* %159, double 0.000000e+00, double %160, i32* %x_real, i32* %y_real)
  %161 = load i32, i32* %y_real, align 4
  %162 = load i32, i32* %y1, align 4
  %cmp241 = icmp sge i32 %161, %162
  br i1 %cmp241, label %land.lhs.true.243, label %if.end.254

land.lhs.true.243:                                ; preds = %if.end.240
  %163 = load i32, i32* %y_real, align 4
  %164 = load i32, i32* %y2, align 4
  %cmp244 = icmp slt i32 %163, %164
  br i1 %cmp244, label %if.then.246, label %if.end.254

if.then.246:                                      ; preds = %land.lhs.true.243
  %165 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %166 = load i32, i32* %x0, align 4
  %conv247 = sitofp i32 %166 to double
  %167 = load i32, i32* %y_real, align 4
  %conv248 = sitofp i32 %167 to double
  %add249 = fadd double %conv248, 5.000000e-01
  call void @cairo_move_to(%struct._cairo* %165, double %conv247, double %add249)
  %168 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %169 = load i32, i32* %x3, align 4
  %add250 = add nsw i32 %169, 1
  %conv251 = sitofp i32 %add250 to double
  %170 = load i32, i32* %y_real, align 4
  %conv252 = sitofp i32 %170 to double
  %add253 = fadd double %conv252, 5.000000e-01
  call void @cairo_line_to(%struct._cairo* %168, double %conv251, double %add253)
  br label %if.end.254

if.end.254:                                       ; preds = %if.then.246, %land.lhs.true.243, %if.end.240
  br label %for.inc.255

for.inc.255:                                      ; preds = %if.end.254, %if.then.239
  %171 = load double, double* %yspacing, align 8
  %172 = load double, double* %y, align 8
  %add256 = fadd double %172, %171
  store double %add256, double* %y, align 8
  br label %for.cond.232

for.end.257:                                      ; preds = %for.cond.232
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.end.26, %for.end.257, %for.end.202, %for.end.67
  %173 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %174 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @_gimp_canvas_item_stroke(%struct._GimpCanvasItem* %173, %struct._cairo* %174)
  br label %return

return:                                           ; preds = %sw.epilog, %if.then.8, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._cairo_region* @gimp_canvas_grid_get_extents(%struct._GimpCanvasItem* %item, %struct._GimpDisplayShell* %shell) #3 {
entry:
  %retval = alloca %struct._cairo_region*, align 8
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %rectangle = alloca %struct._cairo_rectangle_int, align 4
  %x1 = alloca double, align 8
  %y1 = alloca double, align 8
  %x2 = alloca double, align 8
  %y2 = alloca double, align 8
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %0, i32 0, i32 1
  %1 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %1)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._cairo_region* null, %struct._cairo_region** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call i32 @gimp_image_get_width(%struct._GimpImage* %3)
  store i32 %call1, i32* %w, align 4
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call2 = call i32 @gimp_image_get_height(%struct._GimpImage* %4)
  store i32 %call2, i32* %h, align 4
  %5 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_transform_xy_f(%struct._GimpDisplayShell* %5, double 0.000000e+00, double 0.000000e+00, double* %x1, double* %y1)
  %6 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %7 = load i32, i32* %w, align 4
  %conv = sitofp i32 %7 to double
  %8 = load i32, i32* %h, align 4
  %conv3 = sitofp i32 %8 to double
  call void @gimp_display_shell_transform_xy_f(%struct._GimpDisplayShell* %6, double %conv, double %conv3, double* %x2, double* %y2)
  %9 = load double, double* %x1, align 8
  %call4 = call double @floor(double %9) #6
  %conv5 = fptosi double %call4 to i32
  %x = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 0
  store i32 %conv5, i32* %x, align 4
  %10 = load double, double* %y1, align 8
  %call6 = call double @floor(double %10) #6
  %conv7 = fptosi double %call6 to i32
  %y = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 1
  store i32 %conv7, i32* %y, align 4
  %11 = load double, double* %x2, align 8
  %call8 = call double @ceil(double %11) #6
  %x9 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 0
  %12 = load i32, i32* %x9, align 4
  %conv10 = sitofp i32 %12 to double
  %sub = fsub double %call8, %conv10
  %conv11 = fptosi double %sub to i32
  %width = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 2
  store i32 %conv11, i32* %width, align 4
  %13 = load double, double* %y2, align 8
  %call12 = call double @ceil(double %13) #6
  %y13 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 1
  %14 = load i32, i32* %y13, align 4
  %conv14 = sitofp i32 %14 to double
  %sub15 = fsub double %call12, %conv14
  %conv16 = fptosi double %sub15 to i32
  %height = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 3
  store i32 %conv16, i32* %height, align 4
  %call17 = call %struct._cairo_region* @cairo_region_create_rectangle(%struct._cairo_rectangle_int* %rectangle)
  store %struct._cairo_region* %call17, %struct._cairo_region** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %15 = load %struct._cairo_region*, %struct._cairo_region** %retval
  ret %struct._cairo_region* %15
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_grid_stroke(%struct._GimpCanvasItem* %item, %struct._GimpDisplayShell* %shell, %struct._cairo* %cr) #3 {
entry:
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %private = alloca %struct._GimpCanvasGridPrivate*, align 8
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_grid_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasGridPrivate*
  store %struct._GimpCanvasGridPrivate* %2, %struct._GimpCanvasGridPrivate** %private, align 8
  %3 = load %struct._GimpCanvasGridPrivate*, %struct._GimpCanvasGridPrivate** %private, align 8
  %grid_style = getelementptr inbounds %struct._GimpCanvasGridPrivate, %struct._GimpCanvasGridPrivate* %3, i32 0, i32 1
  %4 = load i32, i32* %grid_style, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %6 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %6, i32 0, i32 11
  %7 = load i32, i32* %offset_x, align 4
  %sub = sub nsw i32 0, %7
  %conv = sitofp i32 %sub to double
  %8 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %8, i32 0, i32 12
  %9 = load i32, i32* %offset_y, align 4
  %sub2 = sub nsw i32 0, %9
  %conv3 = sitofp i32 %sub2 to double
  call void @cairo_translate(%struct._cairo* %5, double %conv, double %conv3)
  %10 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %11 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %12 = load %struct._GimpCanvasGridPrivate*, %struct._GimpCanvasGridPrivate** %private, align 8
  %grid = getelementptr inbounds %struct._GimpCanvasGridPrivate, %struct._GimpCanvasGridPrivate* %12, i32 0, i32 0
  %13 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  call void @gimp_display_shell_set_grid_style(%struct._GimpDisplayShell* %10, %struct._cairo* %11, %struct._GimpGrid* %13)
  %14 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_stroke(%struct._cairo* %14)
  br label %if.end

if.else:                                          ; preds = %entry
  %15 = load i8*, i8** @gimp_canvas_grid_parent_class, align 8
  %16 = bitcast i8* %15 to %struct._GTypeClass*
  %call4 = call i64 @gimp_canvas_item_get_type() #6
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %16, i64 %call4)
  %17 = bitcast %struct._GTypeClass* %call5 to %struct._GimpCanvasItemClass*
  %stroke = getelementptr inbounds %struct._GimpCanvasItemClass, %struct._GimpCanvasItemClass* %17, i32 0, i32 4
  %18 = load void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)*, void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)** %stroke, align 8
  %19 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %20 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %21 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void %18(%struct._GimpCanvasItem* %19, %struct._GimpDisplayShell* %20, %struct._cairo* %21)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

declare void @g_type_class_add_private(i8*, i64) #1

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

declare void @g_object_unref(i8*) #1

declare i8* @g_value_get_object(%struct._GValue*) #1

declare i32 @gimp_config_sync(%struct._GObject*, %struct._GObject*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

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

declare void @g_value_set_object(%struct._GValue*, i8*) #1

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #1

declare void @gimp_grid_get_spacing(%struct._GimpGrid*, double*, double*) #1

declare void @gimp_grid_get_offset(%struct._GimpGrid*, double*, double*) #1

declare void @cairo_clip_extents(%struct._cairo*, double*, double*, double*, double*) #1

; Function Attrs: nounwind readnone
declare double @floor(double) #2

; Function Attrs: nounwind readnone
declare double @ceil(double) #2

declare i32 @gimp_image_get_width(%struct._GimpImage*) #1

declare i32 @gimp_image_get_height(%struct._GimpImage*) #1

declare void @gimp_display_shell_transform_xy(%struct._GimpDisplayShell*, double, double, i32*, i32*) #1

declare void @cairo_move_to(%struct._cairo*, double, double) #1

declare void @cairo_line_to(%struct._cairo*, double, double) #1

declare void @_gimp_canvas_item_stroke(%struct._GimpCanvasItem*, %struct._cairo*) #1

declare void @gimp_display_shell_transform_xy_f(%struct._GimpDisplayShell*, double, double, double*, double*) #1

declare %struct._cairo_region* @cairo_region_create_rectangle(%struct._cairo_rectangle_int*) #1

declare void @cairo_translate(%struct._cairo*, double, double) #1

declare void @gimp_display_shell_set_grid_style(%struct._GimpDisplayShell*, %struct._cairo*, %struct._GimpGrid*) #1

declare void @cairo_stroke(%struct._cairo*) #1

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
