; ModuleID = './app/display/gimpcanvaslayerboundary.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpCanvasLayerBoundaryClass = type { %struct._GimpCanvasRectangleClass }
%struct._GimpCanvasRectangleClass = type { %struct._GimpCanvasItemClass }
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
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpMotionBuffer = type opaque
%struct._GQueue = type { %struct._GList*, %struct._GList*, i32 }
%struct._cairo = type opaque
%struct._GimpCanvasLayerBoundary = type { %struct._GimpCanvasRectangle }
%struct._GimpCanvasRectangle = type { %struct._GimpCanvasItem }
%struct._GimpLayer = type { %struct._GimpDrawable, double, i32, i32, %struct._GimpLayerMask*, %struct._GeglNode*, %struct.anon }
%struct._GimpLayerMask = type { %struct._GimpChannel, %struct._GimpLayer*, i32, i32, i32 }
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._BoundSeg = type opaque
%struct._GeglNode = type opaque
%struct.anon = type { %struct._GimpDrawable*, i32, %struct._BoundSeg*, i32 }
%struct._GimpCanvasLayerBoundaryPrivate = type { %struct._GimpLayer*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_canvas_layer_boundary_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"GimpCanvasLayerBoundary\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Display\00", align 1
@__func__.gimp_canvas_layer_boundary_new = private unnamed_addr constant [31 x i8] c"gimp_canvas_layer_boundary_new\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"GIMP_IS_DISPLAY_SHELL (shell)\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@__func__.gimp_canvas_layer_boundary_set_layer = private unnamed_addr constant [37 x i8] c"gimp_canvas_layer_boundary_set_layer\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"GIMP_IS_CANVAS_LAYER_BOUNDARY (boundary)\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"layer == NULL || GIMP_IS_LAYER (layer)\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"layer\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"edit-mask\00", align 1
@gimp_canvas_layer_boundary_parent_class = internal global i8* null, align 8
@GimpCanvasLayerBoundary_private_offset = internal global i32 0, align 4
@.str.12 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"gimpcanvaslayerboundary.c\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"property\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_canvas_layer_boundary_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_canvas_layer_boundary_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_canvas_layer_boundary_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_canvas_rectangle_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 208, void (i8*, i8*)* bitcast (void (i8*)* @gimp_canvas_layer_boundary_class_intern_init to void (i8*, i8*)*), i32 32, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpCanvasLayerBoundary*)* @gimp_canvas_layer_boundary_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_canvas_layer_boundary_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_canvas_layer_boundary_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_canvas_rectangle_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_layer_boundary_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_canvas_layer_boundary_parent_class, align 8
  %1 = load i32, i32* @GimpCanvasLayerBoundary_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpCanvasLayerBoundary_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpCanvasLayerBoundaryClass*
  call void @gimp_canvas_layer_boundary_class_init(%struct._GimpCanvasLayerBoundaryClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_layer_boundary_init(%struct._GimpCanvasLayerBoundary* %layer_boundary) #3 {
entry:
  %layer_boundary.addr = alloca %struct._GimpCanvasLayerBoundary*, align 8
  store %struct._GimpCanvasLayerBoundary* %layer_boundary, %struct._GimpCanvasLayerBoundary** %layer_boundary.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpCanvasItem* @gimp_canvas_layer_boundary_new(%struct._GimpDisplayShell* %shell) #3 {
entry:
  %retval = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_canvas_layer_boundary_new, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_canvas_layer_boundary_get_type() #6
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %call12 = call i8* (i64, i8*, ...) @g_object_new(i64 %call11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), %struct._GimpDisplayShell* %13, i8* null)
  %14 = bitcast i8* %call12 to %struct._GimpCanvasItem*
  store %struct._GimpCanvasItem* %14, %struct._GimpCanvasItem** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %retval
  ret %struct._GimpCanvasItem* %15
}

; Function Attrs: nounwind readnone
declare i64 @gimp_display_shell_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_canvas_layer_boundary_set_layer(%struct._GimpCanvasLayerBoundary* %boundary, %struct._GimpLayer* %layer) #3 {
entry:
  %boundary.addr = alloca %struct._GimpCanvasLayerBoundary*, align 8
  %layer.addr = alloca %struct._GimpLayer*, align 8
  %private = alloca %struct._GimpCanvasLayerBoundaryPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %__inst50 = alloca %struct._GTypeInstance*, align 8
  %__t52 = alloca i64, align 8
  %__r55 = alloca i32, align 4
  %tmp70 = alloca i32, align 4
  %edit_mask = alloca i32, align 4
  %item = alloca %struct._GimpItem*, align 8
  %mask = alloca %struct._GimpLayerMask*, align 8
  %item112 = alloca %struct._GimpItem*, align 8
  %mask116 = alloca %struct._GimpLayerMask*, align 8
  %lx = alloca i32, align 4
  %ly = alloca i32, align 4
  %lw = alloca i32, align 4
  %lh = alloca i32, align 4
  %x = alloca double, align 8
  %y = alloca double, align 8
  %w = alloca double, align 8
  %h = alloca double, align 8
  %edit_mask126 = alloca i32, align 4
  store %struct._GimpCanvasLayerBoundary* %boundary, %struct._GimpCanvasLayerBoundary** %boundary.addr, align 8
  store %struct._GimpLayer* %layer, %struct._GimpLayer** %layer.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCanvasLayerBoundary*, %struct._GimpCanvasLayerBoundary** %boundary.addr, align 8
  %1 = bitcast %struct._GimpCanvasLayerBoundary* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_canvas_layer_boundary_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_canvas_layer_boundary_set_layer, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.168

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %cmp12 = icmp eq %struct._GimpLayer* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %15 = bitcast %struct._GimpLayer* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_layer_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_canvas_layer_boundary_set_layer, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.168

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._GimpCanvasLayerBoundary*, %struct._GimpCanvasLayerBoundary** %boundary.addr, align 8
  %28 = bitcast %struct._GimpCanvasLayerBoundary* %27 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_canvas_layer_boundary_get_type() #6
  %call41 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %28, i64 %call40)
  %29 = bitcast i8* %call41 to %struct._GimpCanvasLayerBoundaryPrivate*
  store %struct._GimpCanvasLayerBoundaryPrivate* %29, %struct._GimpCanvasLayerBoundaryPrivate** %private, align 8
  %30 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %tobool42 = icmp ne %struct._GimpLayer* %30, null
  br i1 %tobool42, label %land.lhs.true.43, label %if.end.77

land.lhs.true.43:                                 ; preds = %do.end.39
  %31 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %call44 = call i32 @gimp_layer_is_floating_sel(%struct._GimpLayer* %31)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.then.46, label %if.end.77

if.then.46:                                       ; preds = %land.lhs.true.43
  %32 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %call48 = call %struct._GimpDrawable* @gimp_layer_get_floating_sel_drawable(%struct._GimpLayer* %32)
  store %struct._GimpDrawable* %call48, %struct._GimpDrawable** %drawable, align 8
  %33 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %34 = bitcast %struct._GimpDrawable* %33 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %34, %struct._GTypeInstance** %__inst50, align 8
  %call53 = call i64 @gimp_channel_get_type() #6
  store i64 %call53, i64* %__t52, align 8
  %35 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst50, align 8
  %tobool56 = icmp ne %struct._GTypeInstance* %35, null
  br i1 %tobool56, label %if.else.58, label %if.then.57

if.then.57:                                       ; preds = %if.then.46
  store i32 0, i32* %__r55, align 4
  br label %if.end.69

if.else.58:                                       ; preds = %if.then.46
  %36 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst50, align 8
  %g_class59 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %36, i32 0, i32 0
  %37 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class59, align 8
  %tobool60 = icmp ne %struct._GTypeClass* %37, null
  br i1 %tobool60, label %land.lhs.true.61, label %if.else.66

land.lhs.true.61:                                 ; preds = %if.else.58
  %38 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst50, align 8
  %g_class62 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %38, i32 0, i32 0
  %39 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class62, align 8
  %g_type63 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %39, i32 0, i32 0
  %40 = load i64, i64* %g_type63, align 8
  %41 = load i64, i64* %__t52, align 8
  %cmp64 = icmp eq i64 %40, %41
  br i1 %cmp64, label %if.then.65, label %if.else.66

if.then.65:                                       ; preds = %land.lhs.true.61
  store i32 1, i32* %__r55, align 4
  br label %if.end.68

if.else.66:                                       ; preds = %land.lhs.true.61, %if.else.58
  %42 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst50, align 8
  %43 = load i64, i64* %__t52, align 8
  %call67 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %42, i64 %43) #7
  store i32 %call67, i32* %__r55, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.66, %if.then.65
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.then.57
  %44 = load i32, i32* %__r55, align 4
  store i32 %44, i32* %tmp70
  %45 = load i32, i32* %tmp70
  %tobool71 = icmp ne i32 %45, 0
  br i1 %tobool71, label %if.then.72, label %if.else.73

if.then.72:                                       ; preds = %if.end.69
  store %struct._GimpLayer* null, %struct._GimpLayer** %layer.addr, align 8
  br label %if.end.76

if.else.73:                                       ; preds = %if.end.69
  %46 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %47 = bitcast %struct._GimpDrawable* %46 to %struct._GTypeInstance*
  %call74 = call i64 @gimp_layer_get_type() #6
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call74)
  %48 = bitcast %struct._GTypeInstance* %call75 to %struct._GimpLayer*
  store %struct._GimpLayer* %48, %struct._GimpLayer** %layer.addr, align 8
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.73, %if.then.72
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %land.lhs.true.43, %do.end.39
  %49 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %50 = load %struct._GimpCanvasLayerBoundaryPrivate*, %struct._GimpCanvasLayerBoundaryPrivate** %private, align 8
  %layer78 = getelementptr inbounds %struct._GimpCanvasLayerBoundaryPrivate, %struct._GimpCanvasLayerBoundaryPrivate* %50, i32 0, i32 0
  %51 = load %struct._GimpLayer*, %struct._GimpLayer** %layer78, align 8
  %cmp79 = icmp ne %struct._GimpLayer* %49, %51
  br i1 %cmp79, label %if.then.80, label %if.else.104

if.then.80:                                       ; preds = %if.end.77
  store i32 0, i32* %edit_mask, align 4
  %52 = load %struct._GimpCanvasLayerBoundary*, %struct._GimpCanvasLayerBoundary** %boundary.addr, align 8
  %53 = bitcast %struct._GimpCanvasLayerBoundary* %52 to %struct._GTypeInstance*
  %call82 = call i64 @gimp_canvas_item_get_type() #6
  %call83 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call82)
  %54 = bitcast %struct._GTypeInstance* %call83 to %struct._GimpCanvasItem*
  call void @gimp_canvas_item_begin_change(%struct._GimpCanvasItem* %54)
  %55 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %tobool84 = icmp ne %struct._GimpLayer* %55, null
  br i1 %tobool84, label %if.then.85, label %if.end.101

if.then.85:                                       ; preds = %if.then.80
  %56 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %57 = bitcast %struct._GimpLayer* %56 to %struct._GTypeInstance*
  %call87 = call i64 @gimp_item_get_type() #6
  %call88 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call87)
  %58 = bitcast %struct._GTypeInstance* %call88 to %struct._GimpItem*
  store %struct._GimpItem* %58, %struct._GimpItem** %item, align 8
  %59 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %call90 = call %struct._GimpLayerMask* @gimp_layer_get_mask(%struct._GimpLayer* %59)
  store %struct._GimpLayerMask* %call90, %struct._GimpLayerMask** %mask, align 8
  %60 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %tobool91 = icmp ne %struct._GimpLayerMask* %60, null
  br i1 %tobool91, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.85
  %61 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %call92 = call i32 @gimp_layer_mask_get_edit(%struct._GimpLayerMask* %61)
  %tobool93 = icmp ne i32 %call92, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.85
  %62 = phi i1 [ false, %if.then.85 ], [ %tobool93, %land.rhs ]
  %land.ext = zext i1 %62 to i32
  store i32 %land.ext, i32* %edit_mask, align 4
  %63 = load %struct._GimpCanvasLayerBoundary*, %struct._GimpCanvasLayerBoundary** %boundary.addr, align 8
  %64 = bitcast %struct._GimpCanvasLayerBoundary* %63 to i8*
  %65 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call94 = call i32 @gimp_item_get_offset_x(%struct._GimpItem* %65)
  %conv = sitofp i32 %call94 to double
  %66 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call95 = call i32 @gimp_item_get_offset_y(%struct._GimpItem* %66)
  %conv96 = sitofp i32 %call95 to double
  %67 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call97 = call i32 @gimp_item_get_width(%struct._GimpItem* %67)
  %conv98 = sitofp i32 %call97 to double
  %68 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call99 = call i32 @gimp_item_get_height(%struct._GimpItem* %68)
  %conv100 = sitofp i32 %call99 to double
  call void (i8*, i8*, ...) @g_object_set(i8* %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), double %conv, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), double %conv96, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), double %conv98, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), double %conv100, i8* null)
  br label %if.end.101

if.end.101:                                       ; preds = %land.end, %if.then.80
  %69 = load %struct._GimpCanvasLayerBoundary*, %struct._GimpCanvasLayerBoundary** %boundary.addr, align 8
  %70 = bitcast %struct._GimpCanvasLayerBoundary* %69 to i8*
  %71 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %72 = load i32, i32* %edit_mask, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), %struct._GimpLayer* %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i32 %72, i8* null)
  %73 = load %struct._GimpCanvasLayerBoundary*, %struct._GimpCanvasLayerBoundary** %boundary.addr, align 8
  %74 = bitcast %struct._GimpCanvasLayerBoundary* %73 to %struct._GTypeInstance*
  %call102 = call i64 @gimp_canvas_item_get_type() #6
  %call103 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %74, i64 %call102)
  %75 = bitcast %struct._GTypeInstance* %call103 to %struct._GimpCanvasItem*
  call void @gimp_canvas_item_end_change(%struct._GimpCanvasItem* %75)
  br label %if.end.168

if.else.104:                                      ; preds = %if.end.77
  %76 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %tobool105 = icmp ne %struct._GimpLayer* %76, null
  br i1 %tobool105, label %land.lhs.true.106, label %if.end.167

land.lhs.true.106:                                ; preds = %if.else.104
  %77 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %78 = load %struct._GimpCanvasLayerBoundaryPrivate*, %struct._GimpCanvasLayerBoundaryPrivate** %private, align 8
  %layer107 = getelementptr inbounds %struct._GimpCanvasLayerBoundaryPrivate, %struct._GimpCanvasLayerBoundaryPrivate* %78, i32 0, i32 0
  %79 = load %struct._GimpLayer*, %struct._GimpLayer** %layer107, align 8
  %cmp108 = icmp eq %struct._GimpLayer* %77, %79
  br i1 %cmp108, label %if.then.110, label %if.end.167

if.then.110:                                      ; preds = %land.lhs.true.106
  %80 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %81 = bitcast %struct._GimpLayer* %80 to %struct._GTypeInstance*
  %call113 = call i64 @gimp_item_get_type() #6
  %call114 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call113)
  %82 = bitcast %struct._GTypeInstance* %call114 to %struct._GimpItem*
  store %struct._GimpItem* %82, %struct._GimpItem** %item112, align 8
  %83 = load %struct._GimpItem*, %struct._GimpItem** %item112, align 8
  %call127 = call i32 @gimp_item_get_offset_x(%struct._GimpItem* %83)
  store i32 %call127, i32* %lx, align 4
  %84 = load %struct._GimpItem*, %struct._GimpItem** %item112, align 8
  %call128 = call i32 @gimp_item_get_offset_y(%struct._GimpItem* %84)
  store i32 %call128, i32* %ly, align 4
  %85 = load %struct._GimpItem*, %struct._GimpItem** %item112, align 8
  %call129 = call i32 @gimp_item_get_width(%struct._GimpItem* %85)
  store i32 %call129, i32* %lw, align 4
  %86 = load %struct._GimpItem*, %struct._GimpItem** %item112, align 8
  %call130 = call i32 @gimp_item_get_height(%struct._GimpItem* %86)
  store i32 %call130, i32* %lh, align 4
  %87 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %call131 = call %struct._GimpLayerMask* @gimp_layer_get_mask(%struct._GimpLayer* %87)
  store %struct._GimpLayerMask* %call131, %struct._GimpLayerMask** %mask116, align 8
  %88 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask116, align 8
  %tobool132 = icmp ne %struct._GimpLayerMask* %88, null
  br i1 %tobool132, label %land.rhs.133, label %land.end.136

land.rhs.133:                                     ; preds = %if.then.110
  %89 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask116, align 8
  %call134 = call i32 @gimp_layer_mask_get_edit(%struct._GimpLayerMask* %89)
  %tobool135 = icmp ne i32 %call134, 0
  br label %land.end.136

land.end.136:                                     ; preds = %land.rhs.133, %if.then.110
  %90 = phi i1 [ false, %if.then.110 ], [ %tobool135, %land.rhs.133 ]
  %land.ext137 = zext i1 %90 to i32
  store i32 %land.ext137, i32* %edit_mask126, align 4
  %91 = load %struct._GimpCanvasLayerBoundary*, %struct._GimpCanvasLayerBoundary** %boundary.addr, align 8
  %92 = bitcast %struct._GimpCanvasLayerBoundary* %91 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %92, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), double* %x, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), double* %y, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), double* %w, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), double* %h, i8* null)
  %93 = load i32, i32* %lx, align 4
  %94 = load double, double* %x, align 8
  %conv138 = fptosi double %94 to i32
  %cmp139 = icmp ne i32 %93, %conv138
  br i1 %cmp139, label %if.then.157, label %lor.lhs.false.141

lor.lhs.false.141:                                ; preds = %land.end.136
  %95 = load i32, i32* %ly, align 4
  %96 = load double, double* %y, align 8
  %conv142 = fptosi double %96 to i32
  %cmp143 = icmp ne i32 %95, %conv142
  br i1 %cmp143, label %if.then.157, label %lor.lhs.false.145

lor.lhs.false.145:                                ; preds = %lor.lhs.false.141
  %97 = load i32, i32* %lw, align 4
  %98 = load double, double* %w, align 8
  %conv146 = fptosi double %98 to i32
  %cmp147 = icmp ne i32 %97, %conv146
  br i1 %cmp147, label %if.then.157, label %lor.lhs.false.149

lor.lhs.false.149:                                ; preds = %lor.lhs.false.145
  %99 = load i32, i32* %lh, align 4
  %100 = load double, double* %h, align 8
  %conv150 = fptosi double %100 to i32
  %cmp151 = icmp ne i32 %99, %conv150
  br i1 %cmp151, label %if.then.157, label %lor.lhs.false.153

lor.lhs.false.153:                                ; preds = %lor.lhs.false.149
  %101 = load i32, i32* %edit_mask126, align 4
  %102 = load %struct._GimpCanvasLayerBoundaryPrivate*, %struct._GimpCanvasLayerBoundaryPrivate** %private, align 8
  %edit_mask154 = getelementptr inbounds %struct._GimpCanvasLayerBoundaryPrivate, %struct._GimpCanvasLayerBoundaryPrivate* %102, i32 0, i32 1
  %103 = load i32, i32* %edit_mask154, align 4
  %cmp155 = icmp ne i32 %101, %103
  br i1 %cmp155, label %if.then.157, label %if.end.166

if.then.157:                                      ; preds = %lor.lhs.false.153, %lor.lhs.false.149, %lor.lhs.false.145, %lor.lhs.false.141, %land.end.136
  %104 = load %struct._GimpCanvasLayerBoundary*, %struct._GimpCanvasLayerBoundary** %boundary.addr, align 8
  %105 = bitcast %struct._GimpCanvasLayerBoundary* %104 to %struct._GTypeInstance*
  %call158 = call i64 @gimp_canvas_item_get_type() #6
  %call159 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %105, i64 %call158)
  %106 = bitcast %struct._GTypeInstance* %call159 to %struct._GimpCanvasItem*
  call void @gimp_canvas_item_begin_change(%struct._GimpCanvasItem* %106)
  %107 = load %struct._GimpCanvasLayerBoundary*, %struct._GimpCanvasLayerBoundary** %boundary.addr, align 8
  %108 = bitcast %struct._GimpCanvasLayerBoundary* %107 to i8*
  %109 = load i32, i32* %lx, align 4
  %conv160 = sitofp i32 %109 to double
  %110 = load i32, i32* %ly, align 4
  %conv161 = sitofp i32 %110 to double
  %111 = load i32, i32* %lw, align 4
  %conv162 = sitofp i32 %111 to double
  %112 = load i32, i32* %lh, align 4
  %conv163 = sitofp i32 %112 to double
  %113 = load i32, i32* %edit_mask126, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), double %conv160, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), double %conv161, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), double %conv162, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), double %conv163, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i32 %113, i8* null)
  %114 = load %struct._GimpCanvasLayerBoundary*, %struct._GimpCanvasLayerBoundary** %boundary.addr, align 8
  %115 = bitcast %struct._GimpCanvasLayerBoundary* %114 to %struct._GTypeInstance*
  %call164 = call i64 @gimp_canvas_item_get_type() #6
  %call165 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %115, i64 %call164)
  %116 = bitcast %struct._GTypeInstance* %call165 to %struct._GimpCanvasItem*
  call void @gimp_canvas_item_end_change(%struct._GimpCanvasItem* %116)
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.157, %lor.lhs.false.153
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.166, %land.lhs.true.106, %if.else.104
  br label %if.end.168

if.end.168:                                       ; preds = %if.else.9, %if.else.37, %if.end.167, %if.end.101
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_get_type() #2

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

declare i32 @gimp_layer_is_floating_sel(%struct._GimpLayer*) #1

declare %struct._GimpDrawable* @gimp_layer_get_floating_sel_drawable(%struct._GimpLayer*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_channel_get_type() #2

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @gimp_canvas_item_begin_change(%struct._GimpCanvasItem*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_canvas_item_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare %struct._GimpLayerMask* @gimp_layer_get_mask(%struct._GimpLayer*) #1

declare i32 @gimp_layer_mask_get_edit(%struct._GimpLayerMask*) #1

declare void @g_object_set(i8*, i8*, ...) #1

declare i32 @gimp_item_get_offset_x(%struct._GimpItem*) #1

declare i32 @gimp_item_get_offset_y(%struct._GimpItem*) #1

declare i32 @gimp_item_get_width(%struct._GimpItem*) #1

declare i32 @gimp_item_get_height(%struct._GimpItem*) #1

declare void @gimp_canvas_item_end_change(%struct._GimpCanvasItem*) #1

declare void @g_object_get(i8*, i8*, ...) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_layer_boundary_class_init(%struct._GimpCanvasLayerBoundaryClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpCanvasLayerBoundaryClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %item_class = alloca %struct._GimpCanvasItemClass*, align 8
  store %struct._GimpCanvasLayerBoundaryClass* %klass, %struct._GimpCanvasLayerBoundaryClass** %klass.addr, align 8
  %0 = load %struct._GimpCanvasLayerBoundaryClass*, %struct._GimpCanvasLayerBoundaryClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpCanvasLayerBoundaryClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpCanvasLayerBoundaryClass*, %struct._GimpCanvasLayerBoundaryClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpCanvasLayerBoundaryClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_canvas_item_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpCanvasItemClass*
  store %struct._GimpCanvasItemClass* %5, %struct._GimpCanvasItemClass** %item_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_canvas_layer_boundary_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_canvas_layer_boundary_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_canvas_layer_boundary_finalize, void (%struct._GObject*)** %finalize, align 8
  %9 = load %struct._GimpCanvasItemClass*, %struct._GimpCanvasItemClass** %item_class, align 8
  %draw = getelementptr inbounds %struct._GimpCanvasItemClass, %struct._GimpCanvasItemClass* %9, i32 0, i32 2
  store void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)* @gimp_canvas_layer_boundary_draw, void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)** %draw, align 8
  %10 = load %struct._GimpCanvasItemClass*, %struct._GimpCanvasItemClass** %item_class, align 8
  %get_extents = getelementptr inbounds %struct._GimpCanvasItemClass, %struct._GimpCanvasItemClass* %10, i32 0, i32 3
  store %struct._cairo_region* (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*)* @gimp_canvas_layer_boundary_get_extents, %struct._cairo_region* (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*)** %get_extents, align 8
  %11 = load %struct._GimpCanvasItemClass*, %struct._GimpCanvasItemClass** %item_class, align 8
  %stroke = getelementptr inbounds %struct._GimpCanvasItemClass, %struct._GimpCanvasItemClass* %11, i32 0, i32 4
  store void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)* @gimp_canvas_layer_boundary_stroke, void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)** %stroke, align 8
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call i64 @gimp_layer_get_type() #6
  %call4 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8* null, i8* null, i64 %call3, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %12, i32 1, %struct._GParamSpec* %call4)
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* null, i8* null, i32 0, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %13, i32 2, %struct._GParamSpec* %call5)
  %14 = load %struct._GimpCanvasLayerBoundaryClass*, %struct._GimpCanvasLayerBoundaryClass** %klass.addr, align 8
  %15 = bitcast %struct._GimpCanvasLayerBoundaryClass* %14 to i8*
  call void @g_type_class_add_private(i8* %15, i64 16)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_layer_boundary_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpCanvasLayerBoundaryPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_layer_boundary_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasLayerBoundaryPrivate*
  store %struct._GimpCanvasLayerBoundaryPrivate* %2, %struct._GimpCanvasLayerBoundaryPrivate** %private, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.14
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GimpCanvasLayerBoundaryPrivate*, %struct._GimpCanvasLayerBoundaryPrivate** %private, align 8
  %layer = getelementptr inbounds %struct._GimpCanvasLayerBoundaryPrivate, %struct._GimpCanvasLayerBoundaryPrivate* %4, i32 0, i32 0
  %5 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool = icmp ne %struct._GimpLayer* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %6 = load %struct._GimpCanvasLayerBoundaryPrivate*, %struct._GimpCanvasLayerBoundaryPrivate** %private, align 8
  %layer2 = getelementptr inbounds %struct._GimpCanvasLayerBoundaryPrivate, %struct._GimpCanvasLayerBoundaryPrivate* %6, i32 0, i32 0
  %7 = load %struct._GimpLayer*, %struct._GimpLayer** %layer2, align 8
  %8 = bitcast %struct._GimpLayer* %7 to %struct._GTypeInstance*
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 80)
  %9 = bitcast %struct._GTypeInstance* %call3 to %struct._GObject*
  %10 = load %struct._GimpCanvasLayerBoundaryPrivate*, %struct._GimpCanvasLayerBoundaryPrivate** %private, align 8
  %layer4 = getelementptr inbounds %struct._GimpCanvasLayerBoundaryPrivate, %struct._GimpCanvasLayerBoundaryPrivate* %10, i32 0, i32 0
  %11 = bitcast %struct._GimpLayer** %layer4 to i8*
  %12 = bitcast i8* %11 to i8**
  call void @g_object_remove_weak_pointer(%struct._GObject* %9, i8** %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %13 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call5 = call i8* @g_value_get_object(%struct._GValue* %13)
  %14 = bitcast i8* %call5 to %struct._GimpLayer*
  %15 = load %struct._GimpCanvasLayerBoundaryPrivate*, %struct._GimpCanvasLayerBoundaryPrivate** %private, align 8
  %layer6 = getelementptr inbounds %struct._GimpCanvasLayerBoundaryPrivate, %struct._GimpCanvasLayerBoundaryPrivate* %15, i32 0, i32 0
  store %struct._GimpLayer* %14, %struct._GimpLayer** %layer6, align 8
  %16 = load %struct._GimpCanvasLayerBoundaryPrivate*, %struct._GimpCanvasLayerBoundaryPrivate** %private, align 8
  %layer7 = getelementptr inbounds %struct._GimpCanvasLayerBoundaryPrivate, %struct._GimpCanvasLayerBoundaryPrivate* %16, i32 0, i32 0
  %17 = load %struct._GimpLayer*, %struct._GimpLayer** %layer7, align 8
  %tobool8 = icmp ne %struct._GimpLayer* %17, null
  br i1 %tobool8, label %if.then.9, label %if.end.13

if.then.9:                                        ; preds = %if.end
  %18 = load %struct._GimpCanvasLayerBoundaryPrivate*, %struct._GimpCanvasLayerBoundaryPrivate** %private, align 8
  %layer10 = getelementptr inbounds %struct._GimpCanvasLayerBoundaryPrivate, %struct._GimpCanvasLayerBoundaryPrivate* %18, i32 0, i32 0
  %19 = load %struct._GimpLayer*, %struct._GimpLayer** %layer10, align 8
  %20 = bitcast %struct._GimpLayer* %19 to %struct._GTypeInstance*
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 80)
  %21 = bitcast %struct._GTypeInstance* %call11 to %struct._GObject*
  %22 = load %struct._GimpCanvasLayerBoundaryPrivate*, %struct._GimpCanvasLayerBoundaryPrivate** %private, align 8
  %layer12 = getelementptr inbounds %struct._GimpCanvasLayerBoundaryPrivate, %struct._GimpCanvasLayerBoundaryPrivate* %22, i32 0, i32 0
  %23 = bitcast %struct._GimpLayer** %layer12 to i8*
  %24 = bitcast i8* %23 to i8**
  call void @g_object_add_weak_pointer(%struct._GObject* %21, i8** %24)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.9, %if.end
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry
  %25 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call15 = call i32 @g_value_get_boolean(%struct._GValue* %25)
  %26 = load %struct._GimpCanvasLayerBoundaryPrivate*, %struct._GimpCanvasLayerBoundaryPrivate** %private, align 8
  %edit_mask = getelementptr inbounds %struct._GimpCanvasLayerBoundaryPrivate, %struct._GimpCanvasLayerBoundaryPrivate* %26, i32 0, i32 1
  store i32 %call15, i32* %edit_mask, align 4
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
  %call16 = call i8* @g_type_name(i64 %36)
  %37 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %38 = bitcast %struct._GObject* %37 to %struct._GTypeInstance*
  %g_class17 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %38, i32 0, i32 0
  %39 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class17, align 8
  %g_type18 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %39, i32 0, i32 0
  %40 = load i64, i64* %g_type18, align 8
  %call19 = call i8* @g_type_name(i64 %40)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i32 0, i32 0), i32 157, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i32 %30, i8* %32, i8* %call16, i8* %call19)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.14, %if.end.13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_layer_boundary_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpCanvasLayerBoundaryPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_layer_boundary_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasLayerBoundaryPrivate*
  store %struct._GimpCanvasLayerBoundaryPrivate* %2, %struct._GimpCanvasLayerBoundaryPrivate** %private, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpCanvasLayerBoundaryPrivate*, %struct._GimpCanvasLayerBoundaryPrivate** %private, align 8
  %layer = getelementptr inbounds %struct._GimpCanvasLayerBoundaryPrivate, %struct._GimpCanvasLayerBoundaryPrivate* %5, i32 0, i32 0
  %6 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %7 = bitcast %struct._GimpLayer* %6 to i8*
  call void @g_value_set_object(%struct._GValue* %4, i8* %7)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %9 = load %struct._GimpCanvasLayerBoundaryPrivate*, %struct._GimpCanvasLayerBoundaryPrivate** %private, align 8
  %edit_mask = getelementptr inbounds %struct._GimpCanvasLayerBoundaryPrivate, %struct._GimpCanvasLayerBoundaryPrivate* %9, i32 0, i32 1
  %10 = load i32, i32* %edit_mask, align 4
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
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i32 0, i32 0), i32 180, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i32 %14, i8* %16, i8* %call3, i8* %call6)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_layer_boundary_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %private = alloca %struct._GimpCanvasLayerBoundaryPrivate*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_layer_boundary_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasLayerBoundaryPrivate*
  store %struct._GimpCanvasLayerBoundaryPrivate* %2, %struct._GimpCanvasLayerBoundaryPrivate** %private, align 8
  %3 = load %struct._GimpCanvasLayerBoundaryPrivate*, %struct._GimpCanvasLayerBoundaryPrivate** %private, align 8
  %layer = getelementptr inbounds %struct._GimpCanvasLayerBoundaryPrivate, %struct._GimpCanvasLayerBoundaryPrivate* %3, i32 0, i32 0
  %4 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool = icmp ne %struct._GimpLayer* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpCanvasLayerBoundaryPrivate*, %struct._GimpCanvasLayerBoundaryPrivate** %private, align 8
  %layer2 = getelementptr inbounds %struct._GimpCanvasLayerBoundaryPrivate, %struct._GimpCanvasLayerBoundaryPrivate* %5, i32 0, i32 0
  %6 = load %struct._GimpLayer*, %struct._GimpLayer** %layer2, align 8
  %7 = bitcast %struct._GimpLayer* %6 to %struct._GTypeInstance*
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 80)
  %8 = bitcast %struct._GTypeInstance* %call3 to %struct._GObject*
  %9 = load %struct._GimpCanvasLayerBoundaryPrivate*, %struct._GimpCanvasLayerBoundaryPrivate** %private, align 8
  %layer4 = getelementptr inbounds %struct._GimpCanvasLayerBoundaryPrivate, %struct._GimpCanvasLayerBoundaryPrivate* %9, i32 0, i32 0
  %10 = bitcast %struct._GimpLayer** %layer4 to i8*
  %11 = bitcast i8* %10 to i8**
  call void @g_object_remove_weak_pointer(%struct._GObject* %8, i8** %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load i8*, i8** @gimp_canvas_layer_boundary_parent_class, align 8
  %13 = bitcast i8* %12 to %struct._GTypeClass*
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %13, i64 80)
  %14 = bitcast %struct._GTypeClass* %call5 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %14, i32 0, i32 6
  %15 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %16 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %15(%struct._GObject* %16)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_layer_boundary_draw(%struct._GimpCanvasItem* %item, %struct._GimpDisplayShell* %shell, %struct._cairo* %cr) #3 {
entry:
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %private = alloca %struct._GimpCanvasLayerBoundaryPrivate*, align 8
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_layer_boundary_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasLayerBoundaryPrivate*
  store %struct._GimpCanvasLayerBoundaryPrivate* %2, %struct._GimpCanvasLayerBoundaryPrivate** %private, align 8
  %3 = load %struct._GimpCanvasLayerBoundaryPrivate*, %struct._GimpCanvasLayerBoundaryPrivate** %private, align 8
  %layer = getelementptr inbounds %struct._GimpCanvasLayerBoundaryPrivate, %struct._GimpCanvasLayerBoundaryPrivate* %3, i32 0, i32 0
  %4 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool = icmp ne %struct._GimpLayer* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** @gimp_canvas_layer_boundary_parent_class, align 8
  %6 = bitcast i8* %5 to %struct._GTypeClass*
  %call2 = call i64 @gimp_canvas_item_get_type() #6
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %6, i64 %call2)
  %7 = bitcast %struct._GTypeClass* %call3 to %struct._GimpCanvasItemClass*
  %draw = getelementptr inbounds %struct._GimpCanvasItemClass, %struct._GimpCanvasItemClass* %7, i32 0, i32 2
  %8 = load void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)*, void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)** %draw, align 8
  %9 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %10 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %11 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void %8(%struct._GimpCanvasItem* %9, %struct._GimpDisplayShell* %10, %struct._cairo* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._cairo_region* @gimp_canvas_layer_boundary_get_extents(%struct._GimpCanvasItem* %item, %struct._GimpDisplayShell* %shell) #3 {
entry:
  %retval = alloca %struct._cairo_region*, align 8
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %private = alloca %struct._GimpCanvasLayerBoundaryPrivate*, align 8
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_layer_boundary_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasLayerBoundaryPrivate*
  store %struct._GimpCanvasLayerBoundaryPrivate* %2, %struct._GimpCanvasLayerBoundaryPrivate** %private, align 8
  %3 = load %struct._GimpCanvasLayerBoundaryPrivate*, %struct._GimpCanvasLayerBoundaryPrivate** %private, align 8
  %layer = getelementptr inbounds %struct._GimpCanvasLayerBoundaryPrivate, %struct._GimpCanvasLayerBoundaryPrivate* %3, i32 0, i32 0
  %4 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool = icmp ne %struct._GimpLayer* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** @gimp_canvas_layer_boundary_parent_class, align 8
  %6 = bitcast i8* %5 to %struct._GTypeClass*
  %call2 = call i64 @gimp_canvas_item_get_type() #6
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %6, i64 %call2)
  %7 = bitcast %struct._GTypeClass* %call3 to %struct._GimpCanvasItemClass*
  %get_extents = getelementptr inbounds %struct._GimpCanvasItemClass, %struct._GimpCanvasItemClass* %7, i32 0, i32 3
  %8 = load %struct._cairo_region* (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*)*, %struct._cairo_region* (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*)** %get_extents, align 8
  %9 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %10 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %call4 = call %struct._cairo_region* %8(%struct._GimpCanvasItem* %9, %struct._GimpDisplayShell* %10)
  store %struct._cairo_region* %call4, %struct._cairo_region** %retval
  br label %return

if.end:                                           ; preds = %entry
  store %struct._cairo_region* null, %struct._cairo_region** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load %struct._cairo_region*, %struct._cairo_region** %retval
  ret %struct._cairo_region* %11
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_layer_boundary_stroke(%struct._GimpCanvasItem* %item, %struct._GimpDisplayShell* %shell, %struct._cairo* %cr) #3 {
entry:
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %private = alloca %struct._GimpCanvasLayerBoundaryPrivate*, align 8
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_layer_boundary_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasLayerBoundaryPrivate*
  store %struct._GimpCanvasLayerBoundaryPrivate* %2, %struct._GimpCanvasLayerBoundaryPrivate** %private, align 8
  %3 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %4, i32 0, i32 11
  %5 = load i32, i32* %offset_x, align 4
  %sub = sub nsw i32 0, %5
  %conv = sitofp i32 %sub to double
  %6 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %6, i32 0, i32 12
  %7 = load i32, i32* %offset_y, align 4
  %sub2 = sub nsw i32 0, %7
  %conv3 = sitofp i32 %sub2 to double
  call void @cairo_translate(%struct._cairo* %3, double %conv, double %conv3)
  %8 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %9 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %10 = load %struct._GimpCanvasLayerBoundaryPrivate*, %struct._GimpCanvasLayerBoundaryPrivate** %private, align 8
  %layer = getelementptr inbounds %struct._GimpCanvasLayerBoundaryPrivate, %struct._GimpCanvasLayerBoundaryPrivate* %10, i32 0, i32 0
  %11 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  call void @gimp_display_shell_set_layer_style(%struct._GimpDisplayShell* %8, %struct._cairo* %9, %struct._GimpLayer* %11)
  %12 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_stroke(%struct._cairo* %12)
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

declare void @g_type_class_add_private(i8*, i64) #1

declare void @g_object_remove_weak_pointer(%struct._GObject*, i8**) #1

declare i8* @g_value_get_object(%struct._GValue*) #1

declare void @g_object_add_weak_pointer(%struct._GObject*, i8**) #1

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

declare void @cairo_translate(%struct._cairo*, double, double) #1

declare void @gimp_display_shell_set_layer_style(%struct._GimpDisplayShell*, %struct._cairo*, %struct._GimpLayer*) #1

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
