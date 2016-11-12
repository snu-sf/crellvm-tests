; ModuleID = './app/display/gimpcanvasboundary.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpCanvasBoundaryClass = type { %struct._GimpCanvasItemClass }
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
%struct._GimpCanvasBoundary = type { %struct._GimpCanvasItem }
%struct._BoundSeg = type { i32, i32, i32, i32, i8 }
%struct._GimpMatrix3 = type { [3 x [3 x double]] }
%struct._GimpCanvasBoundaryPrivate = type { %struct._BoundSeg*, i32, %struct._GimpMatrix3*, double, double }
%struct._GimpSegment = type { i32, i32, i32, i32 }
%struct._cairo_rectangle_int = type { i32, i32, i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_canvas_boundary_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"GimpCanvasBoundary\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Display\00", align 1
@__func__.gimp_canvas_boundary_new = private unnamed_addr constant [25 x i8] c"gimp_canvas_boundary_new\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"GIMP_IS_DISPLAY_SHELL (shell)\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"transform\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"offset-x\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"offset-y\00", align 1
@gimp_canvas_boundary_parent_class = internal global i8* null, align 8
@GimpCanvasBoundary_private_offset = internal global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"segs\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"gimpcanvasboundary.c\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"property\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_canvas_boundary_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_canvas_boundary_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_canvas_boundary_get_type.g_define_type_id__volatile to i8*))
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
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 208, void (i8*, i8*)* bitcast (void (i8*)* @gimp_canvas_boundary_class_intern_init to void (i8*, i8*)*), i32 32, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpCanvasBoundary*)* @gimp_canvas_boundary_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_canvas_boundary_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_canvas_boundary_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_canvas_item_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_boundary_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_canvas_boundary_parent_class, align 8
  %1 = load i32, i32* @GimpCanvasBoundary_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpCanvasBoundary_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpCanvasBoundaryClass*
  call void @gimp_canvas_boundary_class_init(%struct._GimpCanvasBoundaryClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_boundary_init(%struct._GimpCanvasBoundary* %boundary) #3 {
entry:
  %boundary.addr = alloca %struct._GimpCanvasBoundary*, align 8
  store %struct._GimpCanvasBoundary* %boundary, %struct._GimpCanvasBoundary** %boundary.addr, align 8
  %0 = load %struct._GimpCanvasBoundary*, %struct._GimpCanvasBoundary** %boundary.addr, align 8
  %1 = bitcast %struct._GimpCanvasBoundary* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_item_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCanvasItem*
  call void @gimp_canvas_item_set_line_cap(%struct._GimpCanvasItem* %2, i32 2)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpCanvasItem* @gimp_canvas_boundary_new(%struct._GimpDisplayShell* %shell, %struct._BoundSeg* %segs, i32 %n_segs, %struct._GimpMatrix3* %transform, double %offset_x, double %offset_y) #3 {
entry:
  %retval = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %segs.addr = alloca %struct._BoundSeg*, align 8
  %n_segs.addr = alloca i32, align 4
  %transform.addr = alloca %struct._GimpMatrix3*, align 8
  %offset_x.addr = alloca double, align 8
  %offset_y.addr = alloca double, align 8
  %item = alloca %struct._GimpCanvasItem*, align 8
  %private = alloca %struct._GimpCanvasBoundaryPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._BoundSeg* %segs, %struct._BoundSeg** %segs.addr, align 8
  store i32 %n_segs, i32* %n_segs.addr, align 4
  store %struct._GimpMatrix3* %transform, %struct._GimpMatrix3** %transform.addr, align 8
  store double %offset_x, double* %offset_x.addr, align 8
  store double %offset_y, double* %offset_y.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_canvas_boundary_new, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_canvas_boundary_get_type() #6
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %14 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %transform.addr, align 8
  %15 = load double, double* %offset_x.addr, align 8
  %16 = load double, double* %offset_y.addr, align 8
  %call12 = call i8* (i64, i8*, ...) @g_object_new(i64 %call11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), %struct._GimpDisplayShell* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), %struct._GimpMatrix3* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), double %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), double %16, i8* null)
  %17 = bitcast i8* %call12 to %struct._GimpCanvasItem*
  store %struct._GimpCanvasItem* %17, %struct._GimpCanvasItem** %item, align 8
  %18 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  %19 = bitcast %struct._GimpCanvasItem* %18 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_canvas_boundary_get_type() #6
  %call14 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %19, i64 %call13)
  %20 = bitcast i8* %call14 to %struct._GimpCanvasBoundaryPrivate*
  store %struct._GimpCanvasBoundaryPrivate* %20, %struct._GimpCanvasBoundaryPrivate** %private, align 8
  %21 = load %struct._BoundSeg*, %struct._BoundSeg** %segs.addr, align 8
  %22 = bitcast %struct._BoundSeg* %21 to i8*
  %23 = load i32, i32* %n_segs.addr, align 4
  %conv = sext i32 %23 to i64
  %mul = mul i64 %conv, 20
  %conv15 = trunc i64 %mul to i32
  %call16 = call noalias i8* @g_memdup(i8* %22, i32 %conv15)
  %24 = bitcast i8* %call16 to %struct._BoundSeg*
  %25 = load %struct._GimpCanvasBoundaryPrivate*, %struct._GimpCanvasBoundaryPrivate** %private, align 8
  %segs17 = getelementptr inbounds %struct._GimpCanvasBoundaryPrivate, %struct._GimpCanvasBoundaryPrivate* %25, i32 0, i32 0
  store %struct._BoundSeg* %24, %struct._BoundSeg** %segs17, align 8
  %26 = load i32, i32* %n_segs.addr, align 4
  %27 = load %struct._GimpCanvasBoundaryPrivate*, %struct._GimpCanvasBoundaryPrivate** %private, align 8
  %n_segs18 = getelementptr inbounds %struct._GimpCanvasBoundaryPrivate, %struct._GimpCanvasBoundaryPrivate* %27, i32 0, i32 1
  store i32 %26, i32* %n_segs18, align 4
  %28 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  store %struct._GimpCanvasItem* %28, %struct._GimpCanvasItem** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %29 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %retval
  ret %struct._GimpCanvasItem* %29
}

; Function Attrs: nounwind readnone
declare i64 @gimp_display_shell_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

declare noalias i8* @g_memdup(i8*, i32) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_boundary_class_init(%struct._GimpCanvasBoundaryClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpCanvasBoundaryClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %item_class = alloca %struct._GimpCanvasItemClass*, align 8
  store %struct._GimpCanvasBoundaryClass* %klass, %struct._GimpCanvasBoundaryClass** %klass.addr, align 8
  %0 = load %struct._GimpCanvasBoundaryClass*, %struct._GimpCanvasBoundaryClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpCanvasBoundaryClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpCanvasBoundaryClass*, %struct._GimpCanvasBoundaryClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpCanvasBoundaryClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_canvas_item_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpCanvasItemClass*
  store %struct._GimpCanvasItemClass* %5, %struct._GimpCanvasItemClass** %item_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_canvas_boundary_finalize, void (%struct._GObject*)** %finalize, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_canvas_boundary_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_canvas_boundary_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %9 = load %struct._GimpCanvasItemClass*, %struct._GimpCanvasItemClass** %item_class, align 8
  %draw = getelementptr inbounds %struct._GimpCanvasItemClass, %struct._GimpCanvasItemClass* %9, i32 0, i32 2
  store void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)* @gimp_canvas_boundary_draw, void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)** %draw, align 8
  %10 = load %struct._GimpCanvasItemClass*, %struct._GimpCanvasItemClass** %item_class, align 8
  %get_extents = getelementptr inbounds %struct._GimpCanvasItemClass, %struct._GimpCanvasItemClass* %10, i32 0, i32 3
  store %struct._cairo_region* (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*)* @gimp_canvas_boundary_get_extents, %struct._cairo_region* (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*)** %get_extents, align 8
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call %struct._GParamSpec* @gimp_param_spec_array(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %11, i32 1, %struct._GParamSpec* %call3)
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call4 = call %struct._GParamSpec* @g_param_spec_pointer(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* null, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %12, i32 2, %struct._GParamSpec* %call4)
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null, double -2.621440e+05, double 2.621440e+05, double 0.000000e+00, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %13, i32 3, %struct._GParamSpec* %call5)
  %14 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null, double -2.621440e+05, double 2.621440e+05, double 0.000000e+00, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %14, i32 4, %struct._GParamSpec* %call6)
  %15 = load %struct._GimpCanvasBoundaryClass*, %struct._GimpCanvasBoundaryClass** %klass.addr, align 8
  %16 = bitcast %struct._GimpCanvasBoundaryClass* %15 to i8*
  call void @g_type_class_add_private(i8* %16, i64 40)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_boundary_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %private = alloca %struct._GimpCanvasBoundaryPrivate*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_boundary_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasBoundaryPrivate*
  store %struct._GimpCanvasBoundaryPrivate* %2, %struct._GimpCanvasBoundaryPrivate** %private, align 8
  %3 = load %struct._GimpCanvasBoundaryPrivate*, %struct._GimpCanvasBoundaryPrivate** %private, align 8
  %segs = getelementptr inbounds %struct._GimpCanvasBoundaryPrivate, %struct._GimpCanvasBoundaryPrivate* %3, i32 0, i32 0
  %4 = load %struct._BoundSeg*, %struct._BoundSeg** %segs, align 8
  %tobool = icmp ne %struct._BoundSeg* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpCanvasBoundaryPrivate*, %struct._GimpCanvasBoundaryPrivate** %private, align 8
  %segs2 = getelementptr inbounds %struct._GimpCanvasBoundaryPrivate, %struct._GimpCanvasBoundaryPrivate* %5, i32 0, i32 0
  %6 = load %struct._BoundSeg*, %struct._BoundSeg** %segs2, align 8
  %7 = bitcast %struct._BoundSeg* %6 to i8*
  call void @g_free(i8* %7)
  %8 = load %struct._GimpCanvasBoundaryPrivate*, %struct._GimpCanvasBoundaryPrivate** %private, align 8
  %segs3 = getelementptr inbounds %struct._GimpCanvasBoundaryPrivate, %struct._GimpCanvasBoundaryPrivate* %8, i32 0, i32 0
  store %struct._BoundSeg* null, %struct._BoundSeg** %segs3, align 8
  %9 = load %struct._GimpCanvasBoundaryPrivate*, %struct._GimpCanvasBoundaryPrivate** %private, align 8
  %n_segs = getelementptr inbounds %struct._GimpCanvasBoundaryPrivate, %struct._GimpCanvasBoundaryPrivate* %9, i32 0, i32 1
  store i32 0, i32* %n_segs, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct._GimpCanvasBoundaryPrivate*, %struct._GimpCanvasBoundaryPrivate** %private, align 8
  %transform = getelementptr inbounds %struct._GimpCanvasBoundaryPrivate, %struct._GimpCanvasBoundaryPrivate* %10, i32 0, i32 2
  %11 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %transform, align 8
  %tobool4 = icmp ne %struct._GimpMatrix3* %11, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %12 = load %struct._GimpCanvasBoundaryPrivate*, %struct._GimpCanvasBoundaryPrivate** %private, align 8
  %transform6 = getelementptr inbounds %struct._GimpCanvasBoundaryPrivate, %struct._GimpCanvasBoundaryPrivate* %12, i32 0, i32 2
  %13 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %transform6, align 8
  %14 = bitcast %struct._GimpMatrix3* %13 to i8*
  call void @g_free(i8* %14)
  %15 = load %struct._GimpCanvasBoundaryPrivate*, %struct._GimpCanvasBoundaryPrivate** %private, align 8
  %transform7 = getelementptr inbounds %struct._GimpCanvasBoundaryPrivate, %struct._GimpCanvasBoundaryPrivate* %15, i32 0, i32 2
  store %struct._GimpMatrix3* null, %struct._GimpMatrix3** %transform7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %16 = load i8*, i8** @gimp_canvas_boundary_parent_class, align 8
  %17 = bitcast i8* %16 to %struct._GTypeClass*
  %call9 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %17, i64 80)
  %18 = bitcast %struct._GTypeClass* %call9 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %18, i32 0, i32 6
  %19 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %20 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %19(%struct._GObject* %20)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_boundary_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpCanvasBoundaryPrivate*, align 8
  %transform = alloca %struct._GimpMatrix3*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_boundary_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasBoundaryPrivate*
  store %struct._GimpCanvasBoundaryPrivate* %2, %struct._GimpCanvasBoundaryPrivate** %private, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.12
    i32 4, label %sw.bb.14
  ]

sw.bb:                                            ; preds = %entry
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call3 = call i8* @g_value_get_pointer(%struct._GValue* %4)
  %5 = bitcast i8* %call3 to %struct._GimpMatrix3*
  store %struct._GimpMatrix3* %5, %struct._GimpMatrix3** %transform, align 8
  %6 = load %struct._GimpCanvasBoundaryPrivate*, %struct._GimpCanvasBoundaryPrivate** %private, align 8
  %transform4 = getelementptr inbounds %struct._GimpCanvasBoundaryPrivate, %struct._GimpCanvasBoundaryPrivate* %6, i32 0, i32 2
  %7 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %transform4, align 8
  %tobool = icmp ne %struct._GimpMatrix3* %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.2
  %8 = load %struct._GimpCanvasBoundaryPrivate*, %struct._GimpCanvasBoundaryPrivate** %private, align 8
  %transform5 = getelementptr inbounds %struct._GimpCanvasBoundaryPrivate, %struct._GimpCanvasBoundaryPrivate* %8, i32 0, i32 2
  %9 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %transform5, align 8
  %10 = bitcast %struct._GimpMatrix3* %9 to i8*
  call void @g_free(i8* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.2
  %11 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %transform, align 8
  %tobool6 = icmp ne %struct._GimpMatrix3* %11, null
  br i1 %tobool6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end
  %12 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %transform, align 8
  %13 = bitcast %struct._GimpMatrix3* %12 to i8*
  %call8 = call noalias i8* @g_memdup(i8* %13, i32 72)
  %14 = bitcast i8* %call8 to %struct._GimpMatrix3*
  %15 = load %struct._GimpCanvasBoundaryPrivate*, %struct._GimpCanvasBoundaryPrivate** %private, align 8
  %transform9 = getelementptr inbounds %struct._GimpCanvasBoundaryPrivate, %struct._GimpCanvasBoundaryPrivate* %15, i32 0, i32 2
  store %struct._GimpMatrix3* %14, %struct._GimpMatrix3** %transform9, align 8
  br label %if.end.11

if.else:                                          ; preds = %if.end
  %16 = load %struct._GimpCanvasBoundaryPrivate*, %struct._GimpCanvasBoundaryPrivate** %private, align 8
  %transform10 = getelementptr inbounds %struct._GimpCanvasBoundaryPrivate, %struct._GimpCanvasBoundaryPrivate* %16, i32 0, i32 2
  store %struct._GimpMatrix3* null, %struct._GimpMatrix3** %transform10, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.7
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  %17 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call13 = call double @g_value_get_double(%struct._GValue* %17)
  %18 = load %struct._GimpCanvasBoundaryPrivate*, %struct._GimpCanvasBoundaryPrivate** %private, align 8
  %offset_x = getelementptr inbounds %struct._GimpCanvasBoundaryPrivate, %struct._GimpCanvasBoundaryPrivate* %18, i32 0, i32 3
  store double %call13, double* %offset_x, align 8
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry
  %19 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call15 = call double @g_value_get_double(%struct._GValue* %19)
  %20 = load %struct._GimpCanvasBoundaryPrivate*, %struct._GimpCanvasBoundaryPrivate** %private, align 8
  %offset_y = getelementptr inbounds %struct._GimpCanvasBoundaryPrivate, %struct._GimpCanvasBoundaryPrivate* %20, i32 0, i32 4
  store double %call15, double* %offset_y, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %21 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %21, %struct._GObject** %_glib__object, align 8
  %22 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %22, %struct._GParamSpec** %_glib__pspec, align 8
  %23 = load i32, i32* %property_id.addr, align 4
  store i32 %23, i32* %_glib__property_id, align 4
  %24 = load i32, i32* %_glib__property_id, align 4
  %25 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %25, i32 0, i32 1
  %26 = load i8*, i8** %name, align 8
  %27 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %28 = bitcast %struct._GParamSpec* %27 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %28, i32 0, i32 0
  %29 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %29, i32 0, i32 0
  %30 = load i64, i64* %g_type, align 8
  %call16 = call i8* @g_type_name(i64 %30)
  %31 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %32 = bitcast %struct._GObject* %31 to %struct._GTypeInstance*
  %g_class17 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class17, align 8
  %g_type18 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %33, i32 0, i32 0
  %34 = load i64, i64* %g_type18, align 8
  %call19 = call i8* @g_type_name(i64 %34)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0), i32 188, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 %24, i8* %26, i8* %call16, i8* %call19)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.14, %sw.bb.12, %if.end.11, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_boundary_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpCanvasBoundaryPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_boundary_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasBoundaryPrivate*
  store %struct._GimpCanvasBoundaryPrivate* %2, %struct._GimpCanvasBoundaryPrivate** %private, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpCanvasBoundaryPrivate*, %struct._GimpCanvasBoundaryPrivate** %private, align 8
  %transform = getelementptr inbounds %struct._GimpCanvasBoundaryPrivate, %struct._GimpCanvasBoundaryPrivate* %5, i32 0, i32 2
  %6 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %transform, align 8
  %7 = bitcast %struct._GimpMatrix3* %6 to i8*
  call void @g_value_set_pointer(%struct._GValue* %4, i8* %7)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %9 = load %struct._GimpCanvasBoundaryPrivate*, %struct._GimpCanvasBoundaryPrivate** %private, align 8
  %offset_x = getelementptr inbounds %struct._GimpCanvasBoundaryPrivate, %struct._GimpCanvasBoundaryPrivate* %9, i32 0, i32 3
  %10 = load double, double* %offset_x, align 8
  call void @g_value_set_double(%struct._GValue* %8, double %10)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %11 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %12 = load %struct._GimpCanvasBoundaryPrivate*, %struct._GimpCanvasBoundaryPrivate** %private, align 8
  %offset_y = getelementptr inbounds %struct._GimpCanvasBoundaryPrivate, %struct._GimpCanvasBoundaryPrivate* %12, i32 0, i32 4
  %13 = load double, double* %offset_y, align 8
  call void @g_value_set_double(%struct._GValue* %11, double %13)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %14 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %14, %struct._GObject** %_glib__object, align 8
  %15 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %15, %struct._GParamSpec** %_glib__pspec, align 8
  %16 = load i32, i32* %property_id.addr, align 4
  store i32 %16, i32* %_glib__property_id, align 4
  %17 = load i32, i32* %_glib__property_id, align 4
  %18 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %18, i32 0, i32 1
  %19 = load i8*, i8** %name, align 8
  %20 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %21 = bitcast %struct._GParamSpec* %20 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type, align 8
  %call5 = call i8* @g_type_name(i64 %23)
  %24 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %25 = bitcast %struct._GObject* %24 to %struct._GTypeInstance*
  %g_class6 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %25, i32 0, i32 0
  %26 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class6, align 8
  %g_type7 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %26, i32 0, i32 0
  %27 = load i64, i64* %g_type7, align 8
  %call8 = call i8* @g_type_name(i64 %27)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0), i32 216, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 %17, i8* %19, i8* %call5, i8* %call8)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_boundary_draw(%struct._GimpCanvasItem* %item, %struct._GimpDisplayShell* %shell, %struct._cairo* %cr) #3 {
entry:
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %private = alloca %struct._GimpCanvasBoundaryPrivate*, align 8
  %segs = alloca %struct._GimpSegment*, align 8
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_boundary_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasBoundaryPrivate*
  store %struct._GimpCanvasBoundaryPrivate* %2, %struct._GimpCanvasBoundaryPrivate** %private, align 8
  %3 = load %struct._GimpCanvasBoundaryPrivate*, %struct._GimpCanvasBoundaryPrivate** %private, align 8
  %n_segs = getelementptr inbounds %struct._GimpCanvasBoundaryPrivate, %struct._GimpCanvasBoundaryPrivate* %3, i32 0, i32 1
  %4 = load i32, i32* %n_segs, align 4
  %conv = sext i32 %4 to i64
  %call2 = call noalias i8* @g_malloc0_n(i64 %conv, i64 16)
  %5 = bitcast i8* %call2 to %struct._GimpSegment*
  store %struct._GimpSegment* %5, %struct._GimpSegment** %segs, align 8
  %6 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %7 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %8 = load %struct._GimpSegment*, %struct._GimpSegment** %segs, align 8
  call void @gimp_canvas_boundary_transform(%struct._GimpCanvasItem* %6, %struct._GimpDisplayShell* %7, %struct._GimpSegment* %8)
  %9 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %10 = load %struct._GimpSegment*, %struct._GimpSegment** %segs, align 8
  %11 = load %struct._GimpCanvasBoundaryPrivate*, %struct._GimpCanvasBoundaryPrivate** %private, align 8
  %n_segs3 = getelementptr inbounds %struct._GimpCanvasBoundaryPrivate, %struct._GimpCanvasBoundaryPrivate* %11, i32 0, i32 1
  %12 = load i32, i32* %n_segs3, align 4
  call void @gimp_cairo_add_segments(%struct._cairo* %9, %struct._GimpSegment* %10, i32 %12)
  %13 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %14 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @_gimp_canvas_item_stroke(%struct._GimpCanvasItem* %13, %struct._cairo* %14)
  %15 = load %struct._GimpSegment*, %struct._GimpSegment** %segs, align 8
  %16 = bitcast %struct._GimpSegment* %15 to i8*
  call void @g_free(i8* %16)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._cairo_region* @gimp_canvas_boundary_get_extents(%struct._GimpCanvasItem* %item, %struct._GimpDisplayShell* %shell) #3 {
entry:
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %private = alloca %struct._GimpCanvasBoundaryPrivate*, align 8
  %rectangle = alloca %struct._cairo_rectangle_int, align 4
  %segs = alloca %struct._GimpSegment*, align 8
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
  %call = call i64 @gimp_canvas_boundary_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasBoundaryPrivate*
  store %struct._GimpCanvasBoundaryPrivate* %2, %struct._GimpCanvasBoundaryPrivate** %private, align 8
  %3 = load %struct._GimpCanvasBoundaryPrivate*, %struct._GimpCanvasBoundaryPrivate** %private, align 8
  %n_segs = getelementptr inbounds %struct._GimpCanvasBoundaryPrivate, %struct._GimpCanvasBoundaryPrivate* %3, i32 0, i32 1
  %4 = load i32, i32* %n_segs, align 4
  %conv = sext i32 %4 to i64
  %call2 = call noalias i8* @g_malloc0_n(i64 %conv, i64 16)
  %5 = bitcast i8* %call2 to %struct._GimpSegment*
  store %struct._GimpSegment* %5, %struct._GimpSegment** %segs, align 8
  %6 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %7 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %8 = load %struct._GimpSegment*, %struct._GimpSegment** %segs, align 8
  call void @gimp_canvas_boundary_transform(%struct._GimpCanvasItem* %6, %struct._GimpDisplayShell* %7, %struct._GimpSegment* %8)
  %9 = load %struct._GimpSegment*, %struct._GimpSegment** %segs, align 8
  %arrayidx = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %9, i64 0
  %x13 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx, i32 0, i32 0
  %10 = load i32, i32* %x13, align 4
  %11 = load %struct._GimpSegment*, %struct._GimpSegment** %segs, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %11, i64 0
  %x25 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx4, i32 0, i32 2
  %12 = load i32, i32* %x25, align 4
  %cmp = icmp slt i32 %10, %12
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %13 = load %struct._GimpSegment*, %struct._GimpSegment** %segs, align 8
  %arrayidx7 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %13, i64 0
  %x18 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx7, i32 0, i32 0
  %14 = load i32, i32* %x18, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %15 = load %struct._GimpSegment*, %struct._GimpSegment** %segs, align 8
  %arrayidx9 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %15, i64 0
  %x210 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx9, i32 0, i32 2
  %16 = load i32, i32* %x210, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %14, %cond.true ], [ %16, %cond.false ]
  store i32 %cond, i32* %x1, align 4
  %17 = load %struct._GimpSegment*, %struct._GimpSegment** %segs, align 8
  %arrayidx11 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %17, i64 0
  %y112 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx11, i32 0, i32 1
  %18 = load i32, i32* %y112, align 4
  %19 = load %struct._GimpSegment*, %struct._GimpSegment** %segs, align 8
  %arrayidx13 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %19, i64 0
  %y214 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx13, i32 0, i32 3
  %20 = load i32, i32* %y214, align 4
  %cmp15 = icmp slt i32 %18, %20
  br i1 %cmp15, label %cond.true.17, label %cond.false.20

cond.true.17:                                     ; preds = %cond.end
  %21 = load %struct._GimpSegment*, %struct._GimpSegment** %segs, align 8
  %arrayidx18 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %21, i64 0
  %y119 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx18, i32 0, i32 1
  %22 = load i32, i32* %y119, align 4
  br label %cond.end.23

cond.false.20:                                    ; preds = %cond.end
  %23 = load %struct._GimpSegment*, %struct._GimpSegment** %segs, align 8
  %arrayidx21 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %23, i64 0
  %y222 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx21, i32 0, i32 3
  %24 = load i32, i32* %y222, align 4
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.20, %cond.true.17
  %cond24 = phi i32 [ %22, %cond.true.17 ], [ %24, %cond.false.20 ]
  store i32 %cond24, i32* %y1, align 4
  %25 = load %struct._GimpSegment*, %struct._GimpSegment** %segs, align 8
  %arrayidx25 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %25, i64 0
  %x126 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx25, i32 0, i32 0
  %26 = load i32, i32* %x126, align 4
  %27 = load %struct._GimpSegment*, %struct._GimpSegment** %segs, align 8
  %arrayidx27 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %27, i64 0
  %x228 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx27, i32 0, i32 2
  %28 = load i32, i32* %x228, align 4
  %cmp29 = icmp sgt i32 %26, %28
  br i1 %cmp29, label %cond.true.31, label %cond.false.34

cond.true.31:                                     ; preds = %cond.end.23
  %29 = load %struct._GimpSegment*, %struct._GimpSegment** %segs, align 8
  %arrayidx32 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %29, i64 0
  %x133 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx32, i32 0, i32 0
  %30 = load i32, i32* %x133, align 4
  br label %cond.end.37

cond.false.34:                                    ; preds = %cond.end.23
  %31 = load %struct._GimpSegment*, %struct._GimpSegment** %segs, align 8
  %arrayidx35 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %31, i64 0
  %x236 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx35, i32 0, i32 2
  %32 = load i32, i32* %x236, align 4
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.34, %cond.true.31
  %cond38 = phi i32 [ %30, %cond.true.31 ], [ %32, %cond.false.34 ]
  store i32 %cond38, i32* %x2, align 4
  %33 = load %struct._GimpSegment*, %struct._GimpSegment** %segs, align 8
  %arrayidx39 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %33, i64 0
  %y140 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx39, i32 0, i32 1
  %34 = load i32, i32* %y140, align 4
  %35 = load %struct._GimpSegment*, %struct._GimpSegment** %segs, align 8
  %arrayidx41 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %35, i64 0
  %y242 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx41, i32 0, i32 3
  %36 = load i32, i32* %y242, align 4
  %cmp43 = icmp sgt i32 %34, %36
  br i1 %cmp43, label %cond.true.45, label %cond.false.48

cond.true.45:                                     ; preds = %cond.end.37
  %37 = load %struct._GimpSegment*, %struct._GimpSegment** %segs, align 8
  %arrayidx46 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %37, i64 0
  %y147 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx46, i32 0, i32 1
  %38 = load i32, i32* %y147, align 4
  br label %cond.end.51

cond.false.48:                                    ; preds = %cond.end.37
  %39 = load %struct._GimpSegment*, %struct._GimpSegment** %segs, align 8
  %arrayidx49 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %39, i64 0
  %y250 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx49, i32 0, i32 3
  %40 = load i32, i32* %y250, align 4
  br label %cond.end.51

cond.end.51:                                      ; preds = %cond.false.48, %cond.true.45
  %cond52 = phi i32 [ %38, %cond.true.45 ], [ %40, %cond.false.48 ]
  store i32 %cond52, i32* %y2, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.51
  %41 = load i32, i32* %i, align 4
  %42 = load %struct._GimpCanvasBoundaryPrivate*, %struct._GimpCanvasBoundaryPrivate** %private, align 8
  %n_segs53 = getelementptr inbounds %struct._GimpCanvasBoundaryPrivate, %struct._GimpCanvasBoundaryPrivate* %42, i32 0, i32 1
  %43 = load i32, i32* %n_segs53, align 4
  %cmp54 = icmp slt i32 %41, %43
  br i1 %cmp54, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %44 = load i32, i32* %i, align 4
  %idxprom = sext i32 %44 to i64
  %45 = load %struct._GimpSegment*, %struct._GimpSegment** %segs, align 8
  %arrayidx56 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %45, i64 %idxprom
  %x157 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx56, i32 0, i32 0
  %46 = load i32, i32* %x157, align 4
  %47 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %47 to i64
  %48 = load %struct._GimpSegment*, %struct._GimpSegment** %segs, align 8
  %arrayidx59 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %48, i64 %idxprom58
  %x260 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx59, i32 0, i32 2
  %49 = load i32, i32* %x260, align 4
  %cmp61 = icmp slt i32 %46, %49
  br i1 %cmp61, label %cond.true.63, label %cond.false.67

cond.true.63:                                     ; preds = %for.body
  %50 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %50 to i64
  %51 = load %struct._GimpSegment*, %struct._GimpSegment** %segs, align 8
  %arrayidx65 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %51, i64 %idxprom64
  %x166 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx65, i32 0, i32 0
  %52 = load i32, i32* %x166, align 4
  br label %cond.end.71

cond.false.67:                                    ; preds = %for.body
  %53 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %53 to i64
  %54 = load %struct._GimpSegment*, %struct._GimpSegment** %segs, align 8
  %arrayidx69 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %54, i64 %idxprom68
  %x270 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx69, i32 0, i32 2
  %55 = load i32, i32* %x270, align 4
  br label %cond.end.71

cond.end.71:                                      ; preds = %cond.false.67, %cond.true.63
  %cond72 = phi i32 [ %52, %cond.true.63 ], [ %55, %cond.false.67 ]
  store i32 %cond72, i32* %x3, align 4
  %56 = load i32, i32* %i, align 4
  %idxprom73 = sext i32 %56 to i64
  %57 = load %struct._GimpSegment*, %struct._GimpSegment** %segs, align 8
  %arrayidx74 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %57, i64 %idxprom73
  %y175 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx74, i32 0, i32 1
  %58 = load i32, i32* %y175, align 4
  %59 = load i32, i32* %i, align 4
  %idxprom76 = sext i32 %59 to i64
  %60 = load %struct._GimpSegment*, %struct._GimpSegment** %segs, align 8
  %arrayidx77 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %60, i64 %idxprom76
  %y278 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx77, i32 0, i32 3
  %61 = load i32, i32* %y278, align 4
  %cmp79 = icmp slt i32 %58, %61
  br i1 %cmp79, label %cond.true.81, label %cond.false.85

cond.true.81:                                     ; preds = %cond.end.71
  %62 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %62 to i64
  %63 = load %struct._GimpSegment*, %struct._GimpSegment** %segs, align 8
  %arrayidx83 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %63, i64 %idxprom82
  %y184 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx83, i32 0, i32 1
  %64 = load i32, i32* %y184, align 4
  br label %cond.end.89

cond.false.85:                                    ; preds = %cond.end.71
  %65 = load i32, i32* %i, align 4
  %idxprom86 = sext i32 %65 to i64
  %66 = load %struct._GimpSegment*, %struct._GimpSegment** %segs, align 8
  %arrayidx87 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %66, i64 %idxprom86
  %y288 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx87, i32 0, i32 3
  %67 = load i32, i32* %y288, align 4
  br label %cond.end.89

cond.end.89:                                      ; preds = %cond.false.85, %cond.true.81
  %cond90 = phi i32 [ %64, %cond.true.81 ], [ %67, %cond.false.85 ]
  store i32 %cond90, i32* %y3, align 4
  %68 = load i32, i32* %i, align 4
  %idxprom91 = sext i32 %68 to i64
  %69 = load %struct._GimpSegment*, %struct._GimpSegment** %segs, align 8
  %arrayidx92 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %69, i64 %idxprom91
  %x193 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx92, i32 0, i32 0
  %70 = load i32, i32* %x193, align 4
  %71 = load i32, i32* %i, align 4
  %idxprom94 = sext i32 %71 to i64
  %72 = load %struct._GimpSegment*, %struct._GimpSegment** %segs, align 8
  %arrayidx95 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %72, i64 %idxprom94
  %x296 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx95, i32 0, i32 2
  %73 = load i32, i32* %x296, align 4
  %cmp97 = icmp sgt i32 %70, %73
  br i1 %cmp97, label %cond.true.99, label %cond.false.103

cond.true.99:                                     ; preds = %cond.end.89
  %74 = load i32, i32* %i, align 4
  %idxprom100 = sext i32 %74 to i64
  %75 = load %struct._GimpSegment*, %struct._GimpSegment** %segs, align 8
  %arrayidx101 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %75, i64 %idxprom100
  %x1102 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx101, i32 0, i32 0
  %76 = load i32, i32* %x1102, align 4
  br label %cond.end.107

cond.false.103:                                   ; preds = %cond.end.89
  %77 = load i32, i32* %i, align 4
  %idxprom104 = sext i32 %77 to i64
  %78 = load %struct._GimpSegment*, %struct._GimpSegment** %segs, align 8
  %arrayidx105 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %78, i64 %idxprom104
  %x2106 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx105, i32 0, i32 2
  %79 = load i32, i32* %x2106, align 4
  br label %cond.end.107

cond.end.107:                                     ; preds = %cond.false.103, %cond.true.99
  %cond108 = phi i32 [ %76, %cond.true.99 ], [ %79, %cond.false.103 ]
  store i32 %cond108, i32* %x4, align 4
  %80 = load i32, i32* %i, align 4
  %idxprom109 = sext i32 %80 to i64
  %81 = load %struct._GimpSegment*, %struct._GimpSegment** %segs, align 8
  %arrayidx110 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %81, i64 %idxprom109
  %y1111 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx110, i32 0, i32 1
  %82 = load i32, i32* %y1111, align 4
  %83 = load i32, i32* %i, align 4
  %idxprom112 = sext i32 %83 to i64
  %84 = load %struct._GimpSegment*, %struct._GimpSegment** %segs, align 8
  %arrayidx113 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %84, i64 %idxprom112
  %y2114 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx113, i32 0, i32 3
  %85 = load i32, i32* %y2114, align 4
  %cmp115 = icmp sgt i32 %82, %85
  br i1 %cmp115, label %cond.true.117, label %cond.false.121

cond.true.117:                                    ; preds = %cond.end.107
  %86 = load i32, i32* %i, align 4
  %idxprom118 = sext i32 %86 to i64
  %87 = load %struct._GimpSegment*, %struct._GimpSegment** %segs, align 8
  %arrayidx119 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %87, i64 %idxprom118
  %y1120 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx119, i32 0, i32 1
  %88 = load i32, i32* %y1120, align 4
  br label %cond.end.125

cond.false.121:                                   ; preds = %cond.end.107
  %89 = load i32, i32* %i, align 4
  %idxprom122 = sext i32 %89 to i64
  %90 = load %struct._GimpSegment*, %struct._GimpSegment** %segs, align 8
  %arrayidx123 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %90, i64 %idxprom122
  %y2124 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx123, i32 0, i32 3
  %91 = load i32, i32* %y2124, align 4
  br label %cond.end.125

cond.end.125:                                     ; preds = %cond.false.121, %cond.true.117
  %cond126 = phi i32 [ %88, %cond.true.117 ], [ %91, %cond.false.121 ]
  store i32 %cond126, i32* %y4, align 4
  %92 = load i32, i32* %x1, align 4
  %93 = load i32, i32* %x3, align 4
  %cmp127 = icmp slt i32 %92, %93
  br i1 %cmp127, label %cond.true.129, label %cond.false.130

cond.true.129:                                    ; preds = %cond.end.125
  %94 = load i32, i32* %x1, align 4
  br label %cond.end.131

cond.false.130:                                   ; preds = %cond.end.125
  %95 = load i32, i32* %x3, align 4
  br label %cond.end.131

cond.end.131:                                     ; preds = %cond.false.130, %cond.true.129
  %cond132 = phi i32 [ %94, %cond.true.129 ], [ %95, %cond.false.130 ]
  store i32 %cond132, i32* %x1, align 4
  %96 = load i32, i32* %y1, align 4
  %97 = load i32, i32* %y3, align 4
  %cmp133 = icmp slt i32 %96, %97
  br i1 %cmp133, label %cond.true.135, label %cond.false.136

cond.true.135:                                    ; preds = %cond.end.131
  %98 = load i32, i32* %y1, align 4
  br label %cond.end.137

cond.false.136:                                   ; preds = %cond.end.131
  %99 = load i32, i32* %y3, align 4
  br label %cond.end.137

cond.end.137:                                     ; preds = %cond.false.136, %cond.true.135
  %cond138 = phi i32 [ %98, %cond.true.135 ], [ %99, %cond.false.136 ]
  store i32 %cond138, i32* %y1, align 4
  %100 = load i32, i32* %x2, align 4
  %101 = load i32, i32* %x4, align 4
  %cmp139 = icmp sgt i32 %100, %101
  br i1 %cmp139, label %cond.true.141, label %cond.false.142

cond.true.141:                                    ; preds = %cond.end.137
  %102 = load i32, i32* %x2, align 4
  br label %cond.end.143

cond.false.142:                                   ; preds = %cond.end.137
  %103 = load i32, i32* %x4, align 4
  br label %cond.end.143

cond.end.143:                                     ; preds = %cond.false.142, %cond.true.141
  %cond144 = phi i32 [ %102, %cond.true.141 ], [ %103, %cond.false.142 ]
  store i32 %cond144, i32* %x2, align 4
  %104 = load i32, i32* %y2, align 4
  %105 = load i32, i32* %y4, align 4
  %cmp145 = icmp sgt i32 %104, %105
  br i1 %cmp145, label %cond.true.147, label %cond.false.148

cond.true.147:                                    ; preds = %cond.end.143
  %106 = load i32, i32* %y2, align 4
  br label %cond.end.149

cond.false.148:                                   ; preds = %cond.end.143
  %107 = load i32, i32* %y4, align 4
  br label %cond.end.149

cond.end.149:                                     ; preds = %cond.false.148, %cond.true.147
  %cond150 = phi i32 [ %106, %cond.true.147 ], [ %107, %cond.false.148 ]
  store i32 %cond150, i32* %y2, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end.149
  %108 = load i32, i32* %i, align 4
  %inc = add nsw i32 %108, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %109 = load %struct._GimpSegment*, %struct._GimpSegment** %segs, align 8
  %110 = bitcast %struct._GimpSegment* %109 to i8*
  call void @g_free(i8* %110)
  %111 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %111, 2
  %x = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 0
  store i32 %sub, i32* %x, align 4
  %112 = load i32, i32* %y1, align 4
  %sub151 = sub nsw i32 %112, 2
  %y = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 1
  store i32 %sub151, i32* %y, align 4
  %113 = load i32, i32* %x2, align 4
  %114 = load i32, i32* %x1, align 4
  %sub152 = sub nsw i32 %113, %114
  %add = add nsw i32 %sub152, 4
  %width = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 2
  store i32 %add, i32* %width, align 4
  %115 = load i32, i32* %y2, align 4
  %116 = load i32, i32* %y1, align 4
  %sub153 = sub nsw i32 %115, %116
  %add154 = add nsw i32 %sub153, 4
  %height = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 3
  store i32 %add154, i32* %height, align 4
  %call155 = call %struct._cairo_region* @cairo_region_create_rectangle(%struct._cairo_rectangle_int* %rectangle)
  ret %struct._cairo_region* %call155
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @gimp_param_spec_array(i8*, i8*, i8*, i32) #1

declare %struct._GParamSpec* @g_param_spec_pointer(i8*, i8*, i8*, i32) #1

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

declare void @g_type_class_add_private(i8*, i64) #1

declare void @g_free(i8*) #1

declare i8* @g_value_get_pointer(%struct._GValue*) #1

declare double @g_value_get_double(%struct._GValue*) #1

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

declare void @g_value_set_pointer(%struct._GValue*, i8*) #1

declare void @g_value_set_double(%struct._GValue*, double) #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_boundary_transform(%struct._GimpCanvasItem* %item, %struct._GimpDisplayShell* %shell, %struct._GimpSegment* %segs) #3 {
entry:
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %segs.addr = alloca %struct._GimpSegment*, align 8
  %private = alloca %struct._GimpCanvasBoundaryPrivate*, align 8
  %i = alloca i32, align 4
  %tx = alloca double, align 8
  %ty = alloca double, align 8
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._GimpSegment* %segs, %struct._GimpSegment** %segs.addr, align 8
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_boundary_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasBoundaryPrivate*
  store %struct._GimpCanvasBoundaryPrivate* %2, %struct._GimpCanvasBoundaryPrivate** %private, align 8
  %3 = load %struct._GimpCanvasBoundaryPrivate*, %struct._GimpCanvasBoundaryPrivate** %private, align 8
  %transform = getelementptr inbounds %struct._GimpCanvasBoundaryPrivate, %struct._GimpCanvasBoundaryPrivate* %3, i32 0, i32 2
  %4 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %transform, align 8
  %tobool = icmp ne %struct._GimpMatrix3* %4, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4
  %6 = load %struct._GimpCanvasBoundaryPrivate*, %struct._GimpCanvasBoundaryPrivate** %private, align 8
  %n_segs = getelementptr inbounds %struct._GimpCanvasBoundaryPrivate, %struct._GimpCanvasBoundaryPrivate* %6, i32 0, i32 1
  %7 = load i32, i32* %n_segs, align 4
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct._GimpCanvasBoundaryPrivate*, %struct._GimpCanvasBoundaryPrivate** %private, align 8
  %transform2 = getelementptr inbounds %struct._GimpCanvasBoundaryPrivate, %struct._GimpCanvasBoundaryPrivate* %8, i32 0, i32 2
  %9 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %transform2, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct._GimpCanvasBoundaryPrivate*, %struct._GimpCanvasBoundaryPrivate** %private, align 8
  %segs3 = getelementptr inbounds %struct._GimpCanvasBoundaryPrivate, %struct._GimpCanvasBoundaryPrivate* %11, i32 0, i32 0
  %12 = load %struct._BoundSeg*, %struct._BoundSeg** %segs3, align 8
  %arrayidx = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %12, i64 %idxprom
  %x1 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx, i32 0, i32 0
  %13 = load i32, i32* %x1, align 4
  %conv = sitofp i32 %13 to double
  %14 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %14 to i64
  %15 = load %struct._GimpCanvasBoundaryPrivate*, %struct._GimpCanvasBoundaryPrivate** %private, align 8
  %segs5 = getelementptr inbounds %struct._GimpCanvasBoundaryPrivate, %struct._GimpCanvasBoundaryPrivate* %15, i32 0, i32 0
  %16 = load %struct._BoundSeg*, %struct._BoundSeg** %segs5, align 8
  %arrayidx6 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %16, i64 %idxprom4
  %y1 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx6, i32 0, i32 1
  %17 = load i32, i32* %y1, align 4
  %conv7 = sitofp i32 %17 to double
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %9, double %conv, double %conv7, double* %tx, double* %ty)
  %18 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %19 = load double, double* %tx, align 8
  %20 = load %struct._GimpCanvasBoundaryPrivate*, %struct._GimpCanvasBoundaryPrivate** %private, align 8
  %offset_x = getelementptr inbounds %struct._GimpCanvasBoundaryPrivate, %struct._GimpCanvasBoundaryPrivate* %20, i32 0, i32 3
  %21 = load double, double* %offset_x, align 8
  %add = fadd double %19, %21
  %22 = load double, double* %ty, align 8
  %23 = load %struct._GimpCanvasBoundaryPrivate*, %struct._GimpCanvasBoundaryPrivate** %private, align 8
  %offset_y = getelementptr inbounds %struct._GimpCanvasBoundaryPrivate, %struct._GimpCanvasBoundaryPrivate* %23, i32 0, i32 4
  %24 = load double, double* %offset_y, align 8
  %add8 = fadd double %22, %24
  %25 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %25 to i64
  %26 = load %struct._GimpSegment*, %struct._GimpSegment** %segs.addr, align 8
  %arrayidx10 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %26, i64 %idxprom9
  %x111 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx10, i32 0, i32 0
  %27 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %27 to i64
  %28 = load %struct._GimpSegment*, %struct._GimpSegment** %segs.addr, align 8
  %arrayidx13 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %28, i64 %idxprom12
  %y114 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx13, i32 0, i32 1
  call void @gimp_display_shell_transform_xy(%struct._GimpDisplayShell* %18, double %add, double %add8, i32* %x111, i32* %y114)
  %29 = load %struct._GimpCanvasBoundaryPrivate*, %struct._GimpCanvasBoundaryPrivate** %private, align 8
  %transform15 = getelementptr inbounds %struct._GimpCanvasBoundaryPrivate, %struct._GimpCanvasBoundaryPrivate* %29, i32 0, i32 2
  %30 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %transform15, align 8
  %31 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %31 to i64
  %32 = load %struct._GimpCanvasBoundaryPrivate*, %struct._GimpCanvasBoundaryPrivate** %private, align 8
  %segs17 = getelementptr inbounds %struct._GimpCanvasBoundaryPrivate, %struct._GimpCanvasBoundaryPrivate* %32, i32 0, i32 0
  %33 = load %struct._BoundSeg*, %struct._BoundSeg** %segs17, align 8
  %arrayidx18 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %33, i64 %idxprom16
  %x2 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx18, i32 0, i32 2
  %34 = load i32, i32* %x2, align 4
  %conv19 = sitofp i32 %34 to double
  %35 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %35 to i64
  %36 = load %struct._GimpCanvasBoundaryPrivate*, %struct._GimpCanvasBoundaryPrivate** %private, align 8
  %segs21 = getelementptr inbounds %struct._GimpCanvasBoundaryPrivate, %struct._GimpCanvasBoundaryPrivate* %36, i32 0, i32 0
  %37 = load %struct._BoundSeg*, %struct._BoundSeg** %segs21, align 8
  %arrayidx22 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %37, i64 %idxprom20
  %y2 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx22, i32 0, i32 3
  %38 = load i32, i32* %y2, align 4
  %conv23 = sitofp i32 %38 to double
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %30, double %conv19, double %conv23, double* %tx, double* %ty)
  %39 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %40 = load double, double* %tx, align 8
  %41 = load %struct._GimpCanvasBoundaryPrivate*, %struct._GimpCanvasBoundaryPrivate** %private, align 8
  %offset_x24 = getelementptr inbounds %struct._GimpCanvasBoundaryPrivate, %struct._GimpCanvasBoundaryPrivate* %41, i32 0, i32 3
  %42 = load double, double* %offset_x24, align 8
  %add25 = fadd double %40, %42
  %43 = load double, double* %ty, align 8
  %44 = load %struct._GimpCanvasBoundaryPrivate*, %struct._GimpCanvasBoundaryPrivate** %private, align 8
  %offset_y26 = getelementptr inbounds %struct._GimpCanvasBoundaryPrivate, %struct._GimpCanvasBoundaryPrivate* %44, i32 0, i32 4
  %45 = load double, double* %offset_y26, align 8
  %add27 = fadd double %43, %45
  %46 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %46 to i64
  %47 = load %struct._GimpSegment*, %struct._GimpSegment** %segs.addr, align 8
  %arrayidx29 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %47, i64 %idxprom28
  %x230 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx29, i32 0, i32 2
  %48 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %48 to i64
  %49 = load %struct._GimpSegment*, %struct._GimpSegment** %segs.addr, align 8
  %arrayidx32 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %49, i64 %idxprom31
  %y233 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx32, i32 0, i32 3
  call void @gimp_display_shell_transform_xy(%struct._GimpDisplayShell* %39, double %add25, double %add27, i32* %x230, i32* %y233)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %50 = load i32, i32* %i, align 4
  %inc = add nsw i32 %50, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.77

if.else:                                          ; preds = %entry
  %51 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %52 = load %struct._GimpCanvasBoundaryPrivate*, %struct._GimpCanvasBoundaryPrivate** %private, align 8
  %segs34 = getelementptr inbounds %struct._GimpCanvasBoundaryPrivate, %struct._GimpCanvasBoundaryPrivate* %52, i32 0, i32 0
  %53 = load %struct._BoundSeg*, %struct._BoundSeg** %segs34, align 8
  %54 = load %struct._GimpSegment*, %struct._GimpSegment** %segs.addr, align 8
  %55 = load %struct._GimpCanvasBoundaryPrivate*, %struct._GimpCanvasBoundaryPrivate** %private, align 8
  %n_segs35 = getelementptr inbounds %struct._GimpCanvasBoundaryPrivate, %struct._GimpCanvasBoundaryPrivate* %55, i32 0, i32 1
  %56 = load i32, i32* %n_segs35, align 4
  %57 = load %struct._GimpCanvasBoundaryPrivate*, %struct._GimpCanvasBoundaryPrivate** %private, align 8
  %offset_x36 = getelementptr inbounds %struct._GimpCanvasBoundaryPrivate, %struct._GimpCanvasBoundaryPrivate* %57, i32 0, i32 3
  %58 = load double, double* %offset_x36, align 8
  %59 = load %struct._GimpCanvasBoundaryPrivate*, %struct._GimpCanvasBoundaryPrivate** %private, align 8
  %offset_y37 = getelementptr inbounds %struct._GimpCanvasBoundaryPrivate, %struct._GimpCanvasBoundaryPrivate* %59, i32 0, i32 4
  %60 = load double, double* %offset_y37, align 8
  call void @gimp_display_shell_transform_segments(%struct._GimpDisplayShell* %51, %struct._BoundSeg* %53, %struct._GimpSegment* %54, i32 %56, double %58, double %60)
  store i32 0, i32* %i, align 4
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.74, %if.else
  %61 = load i32, i32* %i, align 4
  %62 = load %struct._GimpCanvasBoundaryPrivate*, %struct._GimpCanvasBoundaryPrivate** %private, align 8
  %n_segs39 = getelementptr inbounds %struct._GimpCanvasBoundaryPrivate, %struct._GimpCanvasBoundaryPrivate* %62, i32 0, i32 1
  %63 = load i32, i32* %n_segs39, align 4
  %cmp40 = icmp slt i32 %61, %63
  br i1 %cmp40, label %for.body.42, label %for.end.76

for.body.42:                                      ; preds = %for.cond.38
  %64 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %64 to i64
  %65 = load %struct._GimpCanvasBoundaryPrivate*, %struct._GimpCanvasBoundaryPrivate** %private, align 8
  %segs44 = getelementptr inbounds %struct._GimpCanvasBoundaryPrivate, %struct._GimpCanvasBoundaryPrivate* %65, i32 0, i32 0
  %66 = load %struct._BoundSeg*, %struct._BoundSeg** %segs44, align 8
  %arrayidx45 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %66, i64 %idxprom43
  %open = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx45, i32 0, i32 4
  %bf.load = load i8, i8* %open, align 4
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool46 = icmp ne i32 %bf.cast, 0
  br i1 %tobool46, label %if.end.73, label %if.then.47

if.then.47:                                       ; preds = %for.body.42
  %67 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %67 to i64
  %68 = load %struct._GimpSegment*, %struct._GimpSegment** %segs.addr, align 8
  %arrayidx49 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %68, i64 %idxprom48
  %x150 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx49, i32 0, i32 0
  %69 = load i32, i32* %x150, align 4
  %70 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %70 to i64
  %71 = load %struct._GimpSegment*, %struct._GimpSegment** %segs.addr, align 8
  %arrayidx52 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %71, i64 %idxprom51
  %x253 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx52, i32 0, i32 2
  %72 = load i32, i32* %x253, align 4
  %cmp54 = icmp eq i32 %69, %72
  br i1 %cmp54, label %if.then.56, label %if.else.64

if.then.56:                                       ; preds = %if.then.47
  %73 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %73 to i64
  %74 = load %struct._GimpSegment*, %struct._GimpSegment** %segs.addr, align 8
  %arrayidx58 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %74, i64 %idxprom57
  %x159 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx58, i32 0, i32 0
  %75 = load i32, i32* %x159, align 4
  %sub = sub nsw i32 %75, 1
  store i32 %sub, i32* %x159, align 4
  %76 = load i32, i32* %i, align 4
  %idxprom60 = sext i32 %76 to i64
  %77 = load %struct._GimpSegment*, %struct._GimpSegment** %segs.addr, align 8
  %arrayidx61 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %77, i64 %idxprom60
  %x262 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx61, i32 0, i32 2
  %78 = load i32, i32* %x262, align 4
  %sub63 = sub nsw i32 %78, 1
  store i32 %sub63, i32* %x262, align 4
  br label %if.end

if.else.64:                                       ; preds = %if.then.47
  %79 = load i32, i32* %i, align 4
  %idxprom65 = sext i32 %79 to i64
  %80 = load %struct._GimpSegment*, %struct._GimpSegment** %segs.addr, align 8
  %arrayidx66 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %80, i64 %idxprom65
  %y167 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx66, i32 0, i32 1
  %81 = load i32, i32* %y167, align 4
  %sub68 = sub nsw i32 %81, 1
  store i32 %sub68, i32* %y167, align 4
  %82 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %82 to i64
  %83 = load %struct._GimpSegment*, %struct._GimpSegment** %segs.addr, align 8
  %arrayidx70 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %83, i64 %idxprom69
  %y271 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx70, i32 0, i32 3
  %84 = load i32, i32* %y271, align 4
  %sub72 = sub nsw i32 %84, 1
  store i32 %sub72, i32* %y271, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.64, %if.then.56
  br label %if.end.73

if.end.73:                                        ; preds = %if.end, %for.body.42
  br label %for.inc.74

for.inc.74:                                       ; preds = %if.end.73
  %85 = load i32, i32* %i, align 4
  %inc75 = add nsw i32 %85, 1
  store i32 %inc75, i32* %i, align 4
  br label %for.cond.38

for.end.76:                                       ; preds = %for.cond.38
  br label %if.end.77

if.end.77:                                        ; preds = %for.end.76, %for.end
  ret void
}

declare void @gimp_cairo_add_segments(%struct._cairo*, %struct._GimpSegment*, i32) #1

declare void @_gimp_canvas_item_stroke(%struct._GimpCanvasItem*, %struct._cairo*) #1

declare void @gimp_matrix3_transform_point(%struct._GimpMatrix3*, double, double, double*, double*) #1

declare void @gimp_display_shell_transform_xy(%struct._GimpDisplayShell*, double, double, i32*, i32*) #1

declare void @gimp_display_shell_transform_segments(%struct._GimpDisplayShell*, %struct._BoundSeg*, %struct._GimpSegment*, i32, double, double) #1

declare %struct._cairo_region* @cairo_region_create_rectangle(%struct._cairo_rectangle_int*) #1

declare void @gimp_canvas_item_set_line_cap(%struct._GimpCanvasItem*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

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
