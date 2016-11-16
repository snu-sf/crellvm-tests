; ModuleID = './app/display/gimpcanvasrectangleguides.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpCanvasRectangleGuidesClass = type { %struct._GimpCanvasItemClass }
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
%struct._GimpCanvasRectangleGuides = type { %struct._GimpCanvasItem }
%struct._GimpCanvasRectangleGuidesPrivate = type { double, double, double, double, i32, i32 }
%struct._cairo_rectangle_int = type { i32, i32, i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_canvas_rectangle_guides_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"GimpCanvasRectangleGuides\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Display\00", align 1
@__func__.gimp_canvas_rectangle_guides_new = private unnamed_addr constant [33 x i8] c"gimp_canvas_rectangle_guides_new\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"GIMP_IS_DISPLAY_SHELL (shell)\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"n-guides\00", align 1
@__func__.gimp_canvas_rectangle_guides_set = private unnamed_addr constant [33 x i8] c"gimp_canvas_rectangle_guides_set\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"GIMP_IS_CANVAS_RECTANGLE_GUIDES (rectangle)\00", align 1
@gimp_canvas_rectangle_guides_parent_class = internal global i8* null, align 8
@GimpCanvasRectangleGuides_private_offset = internal global i32 0, align 4
@.str.11 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"gimpcanvasrectangleguides.c\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"property\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_canvas_rectangle_guides_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_canvas_rectangle_guides_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_canvas_rectangle_guides_get_type.g_define_type_id__volatile to i8*))
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
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 208, void (i8*, i8*)* bitcast (void (i8*)* @gimp_canvas_rectangle_guides_class_intern_init to void (i8*, i8*)*), i32 32, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpCanvasRectangleGuides*)* @gimp_canvas_rectangle_guides_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_canvas_rectangle_guides_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_canvas_rectangle_guides_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_canvas_item_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_rectangle_guides_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_canvas_rectangle_guides_parent_class, align 8
  %1 = load i32, i32* @GimpCanvasRectangleGuides_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpCanvasRectangleGuides_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpCanvasRectangleGuidesClass*
  call void @gimp_canvas_rectangle_guides_class_init(%struct._GimpCanvasRectangleGuidesClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_rectangle_guides_init(%struct._GimpCanvasRectangleGuides* %rectangle) #3 {
entry:
  %rectangle.addr = alloca %struct._GimpCanvasRectangleGuides*, align 8
  store %struct._GimpCanvasRectangleGuides* %rectangle, %struct._GimpCanvasRectangleGuides** %rectangle.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpCanvasItem* @gimp_canvas_rectangle_guides_new(%struct._GimpDisplayShell* %shell, double %x, double %y, double %width, double %height, i32 %type, i32 %n_guides) #3 {
entry:
  %retval = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %width.addr = alloca double, align 8
  %height.addr = alloca double, align 8
  %type.addr = alloca i32, align 4
  %n_guides.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store double %width, double* %width.addr, align 8
  store double %height, double* %height.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store i32 %n_guides, i32* %n_guides.addr, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_canvas_rectangle_guides_new, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_canvas_rectangle_guides_get_type() #6
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %14 = load double, double* %x.addr, align 8
  %15 = load double, double* %y.addr, align 8
  %16 = load double, double* %width.addr, align 8
  %17 = load double, double* %height.addr, align 8
  %18 = load i32, i32* %type.addr, align 4
  %19 = load i32, i32* %n_guides.addr, align 4
  %call12 = call i8* (i64, i8*, ...) @g_object_new(i64 %call11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), %struct._GimpDisplayShell* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), double %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), double %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), double %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), double %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32 %19, i8* null)
  %20 = bitcast i8* %call12 to %struct._GimpCanvasItem*
  store %struct._GimpCanvasItem* %20, %struct._GimpCanvasItem** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %21 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %retval
  ret %struct._GimpCanvasItem* %21
}

; Function Attrs: nounwind readnone
declare i64 @gimp_display_shell_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_canvas_rectangle_guides_set(%struct._GimpCanvasItem* %rectangle, double %x, double %y, double %width, double %height, i32 %type, i32 %n_guides) #3 {
entry:
  %rectangle.addr = alloca %struct._GimpCanvasItem*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %width.addr = alloca double, align 8
  %height.addr = alloca double, align 8
  %type.addr = alloca i32, align 4
  %n_guides.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCanvasItem* %rectangle, %struct._GimpCanvasItem** %rectangle.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store double %width, double* %width.addr, align 8
  store double %height, double* %height.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store i32 %n_guides, i32* %n_guides.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %rectangle.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_canvas_rectangle_guides_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_canvas_rectangle_guides_set, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %rectangle.addr, align 8
  call void @gimp_canvas_item_begin_change(%struct._GimpCanvasItem* %13)
  %14 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %rectangle.addr, align 8
  %15 = bitcast %struct._GimpCanvasItem* %14 to i8*
  %16 = load double, double* %x.addr, align 8
  %17 = load double, double* %y.addr, align 8
  %18 = load double, double* %width.addr, align 8
  %19 = load double, double* %height.addr, align 8
  %20 = load i32, i32* %type.addr, align 4
  %21 = load i32, i32* %n_guides.addr, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), double %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), double %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), double %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), double %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32 %21, i8* null)
  %22 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %rectangle.addr, align 8
  call void @gimp_canvas_item_end_change(%struct._GimpCanvasItem* %22)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

declare void @gimp_canvas_item_begin_change(%struct._GimpCanvasItem*) #1

declare void @g_object_set(i8*, i8*, ...) #1

declare void @gimp_canvas_item_end_change(%struct._GimpCanvasItem*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_rectangle_guides_class_init(%struct._GimpCanvasRectangleGuidesClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpCanvasRectangleGuidesClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %item_class = alloca %struct._GimpCanvasItemClass*, align 8
  store %struct._GimpCanvasRectangleGuidesClass* %klass, %struct._GimpCanvasRectangleGuidesClass** %klass.addr, align 8
  %0 = load %struct._GimpCanvasRectangleGuidesClass*, %struct._GimpCanvasRectangleGuidesClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpCanvasRectangleGuidesClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpCanvasRectangleGuidesClass*, %struct._GimpCanvasRectangleGuidesClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpCanvasRectangleGuidesClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_canvas_item_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpCanvasItemClass*
  store %struct._GimpCanvasItemClass* %5, %struct._GimpCanvasItemClass** %item_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_canvas_rectangle_guides_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_canvas_rectangle_guides_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %8 = load %struct._GimpCanvasItemClass*, %struct._GimpCanvasItemClass** %item_class, align 8
  %draw = getelementptr inbounds %struct._GimpCanvasItemClass, %struct._GimpCanvasItemClass* %8, i32 0, i32 2
  store void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)* @gimp_canvas_rectangle_guides_draw, void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)** %draw, align 8
  %9 = load %struct._GimpCanvasItemClass*, %struct._GimpCanvasItemClass** %item_class, align 8
  %get_extents = getelementptr inbounds %struct._GimpCanvasItemClass, %struct._GimpCanvasItemClass* %9, i32 0, i32 3
  store %struct._cairo_region* (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*)* @gimp_canvas_rectangle_guides_get_extents, %struct._cairo_region* (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*)** %get_extents, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* null, double -2.621440e+05, double 2.621440e+05, double 0.000000e+00, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %10, i32 1, %struct._GParamSpec* %call3)
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call4 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null, double -2.621440e+05, double 2.621440e+05, double 0.000000e+00, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %11, i32 2, %struct._GParamSpec* %call4)
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null, double -2.621440e+05, double 2.621440e+05, double 0.000000e+00, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %12, i32 3, %struct._GParamSpec* %call5)
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null, double -2.621440e+05, double 2.621440e+05, double 0.000000e+00, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %13, i32 4, %struct._GParamSpec* %call6)
  %14 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call7 = call i64 @gimp_guides_type_get_type() #6
  %call8 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* null, i64 %call7, i32 0, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %14, i32 5, %struct._GParamSpec* %call8)
  %15 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call9 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* null, i32 1, i32 128, i32 4, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %15, i32 6, %struct._GParamSpec* %call9)
  %16 = load %struct._GimpCanvasRectangleGuidesClass*, %struct._GimpCanvasRectangleGuidesClass** %klass.addr, align 8
  %17 = bitcast %struct._GimpCanvasRectangleGuidesClass* %16 to i8*
  call void @g_type_class_add_private(i8* %17, i64 40)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_rectangle_guides_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpCanvasRectangleGuidesPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_rectangle_guides_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasRectangleGuidesPrivate*
  store %struct._GimpCanvasRectangleGuidesPrivate* %2, %struct._GimpCanvasRectangleGuidesPrivate** %private, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.5
    i32 4, label %sw.bb.7
    i32 5, label %sw.bb.9
    i32 6, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call double @g_value_get_double(%struct._GValue* %4)
  %5 = load %struct._GimpCanvasRectangleGuidesPrivate*, %struct._GimpCanvasRectangleGuidesPrivate** %private, align 8
  %x = getelementptr inbounds %struct._GimpCanvasRectangleGuidesPrivate, %struct._GimpCanvasRectangleGuidesPrivate* %5, i32 0, i32 0
  store double %call2, double* %x, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %6 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call double @g_value_get_double(%struct._GValue* %6)
  %7 = load %struct._GimpCanvasRectangleGuidesPrivate*, %struct._GimpCanvasRectangleGuidesPrivate** %private, align 8
  %y = getelementptr inbounds %struct._GimpCanvasRectangleGuidesPrivate, %struct._GimpCanvasRectangleGuidesPrivate* %7, i32 0, i32 1
  store double %call4, double* %y, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call double @g_value_get_double(%struct._GValue* %8)
  %9 = load %struct._GimpCanvasRectangleGuidesPrivate*, %struct._GimpCanvasRectangleGuidesPrivate** %private, align 8
  %width = getelementptr inbounds %struct._GimpCanvasRectangleGuidesPrivate, %struct._GimpCanvasRectangleGuidesPrivate* %9, i32 0, i32 2
  store double %call6, double* %width, align 8
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call8 = call double @g_value_get_double(%struct._GValue* %10)
  %11 = load %struct._GimpCanvasRectangleGuidesPrivate*, %struct._GimpCanvasRectangleGuidesPrivate** %private, align 8
  %height = getelementptr inbounds %struct._GimpCanvasRectangleGuidesPrivate, %struct._GimpCanvasRectangleGuidesPrivate* %11, i32 0, i32 3
  store double %call8, double* %height, align 8
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %12 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call10 = call i32 @g_value_get_enum(%struct._GValue* %12)
  %13 = load %struct._GimpCanvasRectangleGuidesPrivate*, %struct._GimpCanvasRectangleGuidesPrivate** %private, align 8
  %type = getelementptr inbounds %struct._GimpCanvasRectangleGuidesPrivate, %struct._GimpCanvasRectangleGuidesPrivate* %13, i32 0, i32 4
  store i32 %call10, i32* %type, align 4
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %14 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call12 = call i32 @g_value_get_int(%struct._GValue* %14)
  %15 = load %struct._GimpCanvasRectangleGuidesPrivate*, %struct._GimpCanvasRectangleGuidesPrivate** %private, align 8
  %n_guides = getelementptr inbounds %struct._GimpCanvasRectangleGuidesPrivate, %struct._GimpCanvasRectangleGuidesPrivate* %15, i32 0, i32 5
  store i32 %call12, i32* %n_guides, align 4
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
  %call13 = call i8* @g_type_name(i64 %25)
  %26 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %27 = bitcast %struct._GObject* %26 to %struct._GTypeInstance*
  %g_class14 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %27, i32 0, i32 0
  %28 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class14, align 8
  %g_type15 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %28, i32 0, i32 0
  %29 = load i64, i64* %g_type15, align 8
  %call16 = call i8* @g_type_name(i64 %29)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i32 0, i32 0), i32 177, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 %19, i8* %21, i8* %call13, i8* %call16)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.11, %sw.bb.9, %sw.bb.7, %sw.bb.5, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_rectangle_guides_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpCanvasRectangleGuidesPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_rectangle_guides_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasRectangleGuidesPrivate*
  store %struct._GimpCanvasRectangleGuidesPrivate* %2, %struct._GimpCanvasRectangleGuidesPrivate** %private, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.4
    i32 5, label %sw.bb.5
    i32 6, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpCanvasRectangleGuidesPrivate*, %struct._GimpCanvasRectangleGuidesPrivate** %private, align 8
  %x = getelementptr inbounds %struct._GimpCanvasRectangleGuidesPrivate, %struct._GimpCanvasRectangleGuidesPrivate* %5, i32 0, i32 0
  %6 = load double, double* %x, align 8
  call void @g_value_set_double(%struct._GValue* %4, double %6)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GimpCanvasRectangleGuidesPrivate*, %struct._GimpCanvasRectangleGuidesPrivate** %private, align 8
  %y = getelementptr inbounds %struct._GimpCanvasRectangleGuidesPrivate, %struct._GimpCanvasRectangleGuidesPrivate* %8, i32 0, i32 1
  %9 = load double, double* %y, align 8
  call void @g_value_set_double(%struct._GValue* %7, double %9)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %11 = load %struct._GimpCanvasRectangleGuidesPrivate*, %struct._GimpCanvasRectangleGuidesPrivate** %private, align 8
  %width = getelementptr inbounds %struct._GimpCanvasRectangleGuidesPrivate, %struct._GimpCanvasRectangleGuidesPrivate* %11, i32 0, i32 2
  %12 = load double, double* %width, align 8
  call void @g_value_set_double(%struct._GValue* %10, double %12)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %13 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %14 = load %struct._GimpCanvasRectangleGuidesPrivate*, %struct._GimpCanvasRectangleGuidesPrivate** %private, align 8
  %height = getelementptr inbounds %struct._GimpCanvasRectangleGuidesPrivate, %struct._GimpCanvasRectangleGuidesPrivate* %14, i32 0, i32 3
  %15 = load double, double* %height, align 8
  call void @g_value_set_double(%struct._GValue* %13, double %15)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %17 = load %struct._GimpCanvasRectangleGuidesPrivate*, %struct._GimpCanvasRectangleGuidesPrivate** %private, align 8
  %type = getelementptr inbounds %struct._GimpCanvasRectangleGuidesPrivate, %struct._GimpCanvasRectangleGuidesPrivate* %17, i32 0, i32 4
  %18 = load i32, i32* %type, align 4
  call void @g_value_set_enum(%struct._GValue* %16, i32 %18)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %19 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %20 = load %struct._GimpCanvasRectangleGuidesPrivate*, %struct._GimpCanvasRectangleGuidesPrivate** %private, align 8
  %n_guides = getelementptr inbounds %struct._GimpCanvasRectangleGuidesPrivate, %struct._GimpCanvasRectangleGuidesPrivate* %20, i32 0, i32 5
  %21 = load i32, i32* %n_guides, align 4
  call void @g_value_set_int(%struct._GValue* %19, i32 %21)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %22 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %22, %struct._GObject** %_glib__object, align 8
  %23 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %23, %struct._GParamSpec** %_glib__pspec, align 8
  %24 = load i32, i32* %property_id.addr, align 4
  store i32 %24, i32* %_glib__property_id, align 4
  %25 = load i32, i32* %_glib__property_id, align 4
  %26 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %26, i32 0, i32 1
  %27 = load i8*, i8** %name, align 8
  %28 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %29 = bitcast %struct._GParamSpec* %28 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %29, i32 0, i32 0
  %30 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %30, i32 0, i32 0
  %31 = load i64, i64* %g_type, align 8
  %call7 = call i8* @g_type_name(i64 %31)
  %32 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %33 = bitcast %struct._GObject* %32 to %struct._GTypeInstance*
  %g_class8 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %33, i32 0, i32 0
  %34 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class8, align 8
  %g_type9 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %34, i32 0, i32 0
  %35 = load i64, i64* %g_type9, align 8
  %call10 = call i8* @g_type_name(i64 %35)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i32 0, i32 0), i32 212, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 %25, i8* %27, i8* %call7, i8* %call10)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_rectangle_guides_draw(%struct._GimpCanvasItem* %item, %struct._GimpDisplayShell* %shell, %struct._cairo* %cr) #3 {
entry:
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %private = alloca %struct._GimpCanvasRectangleGuidesPrivate*, align 8
  %x1 = alloca double, align 8
  %y1 = alloca double, align 8
  %x2 = alloca double, align 8
  %y2 = alloca double, align 8
  %i = alloca i32, align 4
  %square_side = alloca double, align 8
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_rectangle_guides_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasRectangleGuidesPrivate*
  store %struct._GimpCanvasRectangleGuidesPrivate* %2, %struct._GimpCanvasRectangleGuidesPrivate** %private, align 8
  %3 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_canvas_rectangle_guides_transform(%struct._GimpCanvasItem* %3, %struct._GimpDisplayShell* %4, double* %x1, double* %y1, double* %x2, double* %y2)
  %5 = load %struct._GimpCanvasRectangleGuidesPrivate*, %struct._GimpCanvasRectangleGuidesPrivate** %private, align 8
  %type = getelementptr inbounds %struct._GimpCanvasRectangleGuidesPrivate, %struct._GimpCanvasRectangleGuidesPrivate* %5, i32 0, i32 4
  %6 = load i32, i32* %type, align 4
  switch i32 %6, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.2
    i32 2, label %sw.bb.5
    i32 3, label %sw.bb.17
    i32 4, label %sw.bb.26
    i32 5, label %sw.bb.43
    i32 6, label %sw.bb.58
    i32 7, label %sw.bb.80
  ]

sw.bb:                                            ; preds = %entry
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %7 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %8 = load double, double* %x1, align 8
  %9 = load double, double* %x2, align 8
  %10 = load double, double* %y1, align 8
  %11 = load double, double* %y2, align 8
  %add = fadd double %10, %11
  %div = fdiv double %add, 2.000000e+00
  call void @draw_hline(%struct._cairo* %7, double %8, double %9, double %div)
  %12 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %13 = load double, double* %y1, align 8
  %14 = load double, double* %y2, align 8
  %15 = load double, double* %x1, align 8
  %16 = load double, double* %x2, align 8
  %add3 = fadd double %15, %16
  %div4 = fdiv double %add3, 2.000000e+00
  call void @draw_vline(%struct._cairo* %12, double %13, double %14, double %div4)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %17 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %18 = load double, double* %x1, align 8
  %19 = load double, double* %x2, align 8
  %20 = load double, double* %y1, align 8
  %mul = fmul double 2.000000e+00, %20
  %21 = load double, double* %y2, align 8
  %add6 = fadd double %mul, %21
  %div7 = fdiv double %add6, 3.000000e+00
  call void @draw_hline(%struct._cairo* %17, double %18, double %19, double %div7)
  %22 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %23 = load double, double* %x1, align 8
  %24 = load double, double* %x2, align 8
  %25 = load double, double* %y1, align 8
  %26 = load double, double* %y2, align 8
  %mul8 = fmul double 2.000000e+00, %26
  %add9 = fadd double %25, %mul8
  %div10 = fdiv double %add9, 3.000000e+00
  call void @draw_hline(%struct._cairo* %22, double %23, double %24, double %div10)
  %27 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %28 = load double, double* %y1, align 8
  %29 = load double, double* %y2, align 8
  %30 = load double, double* %x1, align 8
  %mul11 = fmul double 2.000000e+00, %30
  %31 = load double, double* %x2, align 8
  %add12 = fadd double %mul11, %31
  %div13 = fdiv double %add12, 3.000000e+00
  call void @draw_vline(%struct._cairo* %27, double %28, double %29, double %div13)
  %32 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %33 = load double, double* %y1, align 8
  %34 = load double, double* %y2, align 8
  %35 = load double, double* %x1, align 8
  %36 = load double, double* %x2, align 8
  %mul14 = fmul double 2.000000e+00, %36
  %add15 = fadd double %35, %mul14
  %div16 = fdiv double %add15, 3.000000e+00
  call void @draw_vline(%struct._cairo* %32, double %33, double %34, double %div16)
  br label %sw.epilog

sw.bb.17:                                         ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.17
  %37 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %37, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %39 = load double, double* %x1, align 8
  %40 = load double, double* %x2, align 8
  %41 = load double, double* %y1, align 8
  %42 = load i32, i32* %i, align 4
  %conv = sitofp i32 %42 to double
  %43 = load double, double* %y2, align 8
  %44 = load double, double* %y1, align 8
  %sub = fsub double %43, %44
  %mul18 = fmul double %conv, %sub
  %div19 = fdiv double %mul18, 5.000000e+00
  %add20 = fadd double %41, %div19
  call void @draw_hline(%struct._cairo* %38, double %39, double %40, double %add20)
  %45 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %46 = load double, double* %y1, align 8
  %47 = load double, double* %y2, align 8
  %48 = load double, double* %x1, align 8
  %49 = load i32, i32* %i, align 4
  %conv21 = sitofp i32 %49 to double
  %50 = load double, double* %x2, align 8
  %51 = load double, double* %x1, align 8
  %sub22 = fsub double %50, %51
  %mul23 = fmul double %conv21, %sub22
  %div24 = fdiv double %mul23, 5.000000e+00
  %add25 = fadd double %48, %div24
  call void @draw_vline(%struct._cairo* %45, double %46, double %47, double %add25)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %52 = load i32, i32* %i, align 4
  %inc = add nsw i32 %52, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.bb.26:                                         ; preds = %entry
  %53 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %54 = load double, double* %x1, align 8
  %55 = load double, double* %x2, align 8
  %56 = load double, double* %y1, align 8
  %mul27 = fmul double 2.000000e+00, %56
  %57 = load double, double* %y2, align 8
  %mul28 = fmul double 0x4009E3779B86C875, %57
  %add29 = fadd double %mul27, %mul28
  %div30 = fdiv double %add29, 0x4014F1BBCDC3643A
  call void @draw_hline(%struct._cairo* %53, double %54, double %55, double %div30)
  %58 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %59 = load double, double* %x1, align 8
  %60 = load double, double* %x2, align 8
  %61 = load double, double* %y1, align 8
  %mul31 = fmul double 0x4009E3779B86C875, %61
  %62 = load double, double* %y2, align 8
  %mul32 = fmul double 2.000000e+00, %62
  %add33 = fadd double %mul31, %mul32
  %div34 = fdiv double %add33, 0x4014F1BBCDC3643A
  call void @draw_hline(%struct._cairo* %58, double %59, double %60, double %div34)
  %63 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %64 = load double, double* %y1, align 8
  %65 = load double, double* %y2, align 8
  %66 = load double, double* %x1, align 8
  %mul35 = fmul double 2.000000e+00, %66
  %67 = load double, double* %x2, align 8
  %mul36 = fmul double 0x4009E3779B86C875, %67
  %add37 = fadd double %mul35, %mul36
  %div38 = fdiv double %add37, 0x4014F1BBCDC3643A
  call void @draw_vline(%struct._cairo* %63, double %64, double %65, double %div38)
  %68 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %69 = load double, double* %y1, align 8
  %70 = load double, double* %y2, align 8
  %71 = load double, double* %x1, align 8
  %mul39 = fmul double 0x4009E3779B86C875, %71
  %72 = load double, double* %x2, align 8
  %mul40 = fmul double 2.000000e+00, %72
  %add41 = fadd double %mul39, %mul40
  %div42 = fdiv double %add41, 0x4014F1BBCDC3643A
  call void @draw_vline(%struct._cairo* %68, double %69, double %70, double %div42)
  br label %sw.epilog

sw.bb.43:                                         ; preds = %entry
  %73 = load double, double* %x2, align 8
  %74 = load double, double* %x1, align 8
  %sub44 = fsub double %73, %74
  %75 = load double, double* %y2, align 8
  %76 = load double, double* %y1, align 8
  %sub45 = fsub double %75, %76
  %cmp46 = fcmp olt double %sub44, %sub45
  br i1 %cmp46, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.43
  %77 = load double, double* %x2, align 8
  %78 = load double, double* %x1, align 8
  %sub48 = fsub double %77, %78
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.43
  %79 = load double, double* %y2, align 8
  %80 = load double, double* %y1, align 8
  %sub49 = fsub double %79, %80
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %sub48, %cond.true ], [ %sub49, %cond.false ]
  store double %cond, double* %square_side, align 8
  %81 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %82 = load double, double* %x1, align 8
  %83 = load double, double* %y1, align 8
  call void @cairo_move_to(%struct._cairo* %81, double %82, double %83)
  %84 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %85 = load double, double* %x1, align 8
  %86 = load double, double* %square_side, align 8
  %add50 = fadd double %85, %86
  %87 = load double, double* %y1, align 8
  %88 = load double, double* %square_side, align 8
  %add51 = fadd double %87, %88
  call void @cairo_line_to(%struct._cairo* %84, double %add50, double %add51)
  %89 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %90 = load double, double* %x2, align 8
  %91 = load double, double* %y1, align 8
  call void @cairo_move_to(%struct._cairo* %89, double %90, double %91)
  %92 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %93 = load double, double* %x2, align 8
  %94 = load double, double* %square_side, align 8
  %sub52 = fsub double %93, %94
  %95 = load double, double* %y1, align 8
  %96 = load double, double* %square_side, align 8
  %add53 = fadd double %95, %96
  call void @cairo_line_to(%struct._cairo* %92, double %sub52, double %add53)
  %97 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %98 = load double, double* %x1, align 8
  %99 = load double, double* %y2, align 8
  call void @cairo_move_to(%struct._cairo* %97, double %98, double %99)
  %100 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %101 = load double, double* %x1, align 8
  %102 = load double, double* %square_side, align 8
  %add54 = fadd double %101, %102
  %103 = load double, double* %y2, align 8
  %104 = load double, double* %square_side, align 8
  %sub55 = fsub double %103, %104
  call void @cairo_line_to(%struct._cairo* %100, double %add54, double %sub55)
  %105 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %106 = load double, double* %x2, align 8
  %107 = load double, double* %y2, align 8
  call void @cairo_move_to(%struct._cairo* %105, double %106, double %107)
  %108 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %109 = load double, double* %x2, align 8
  %110 = load double, double* %square_side, align 8
  %sub56 = fsub double %109, %110
  %111 = load double, double* %y2, align 8
  %112 = load double, double* %square_side, align 8
  %sub57 = fsub double %111, %112
  call void @cairo_line_to(%struct._cairo* %108, double %sub56, double %sub57)
  br label %sw.epilog

sw.bb.58:                                         ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond.59

for.cond.59:                                      ; preds = %for.inc.77, %sw.bb.58
  %113 = load i32, i32* %i, align 4
  %114 = load %struct._GimpCanvasRectangleGuidesPrivate*, %struct._GimpCanvasRectangleGuidesPrivate** %private, align 8
  %n_guides = getelementptr inbounds %struct._GimpCanvasRectangleGuidesPrivate, %struct._GimpCanvasRectangleGuidesPrivate* %114, i32 0, i32 5
  %115 = load i32, i32* %n_guides, align 4
  %cmp60 = icmp slt i32 %113, %115
  br i1 %cmp60, label %for.body.62, label %for.end.79

for.body.62:                                      ; preds = %for.cond.59
  %116 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %117 = load double, double* %x1, align 8
  %118 = load double, double* %x2, align 8
  %119 = load double, double* %y1, align 8
  %120 = load i32, i32* %i, align 4
  %conv63 = sitofp i32 %120 to double
  %121 = load double, double* %y2, align 8
  %122 = load double, double* %y1, align 8
  %sub64 = fsub double %121, %122
  %mul65 = fmul double %conv63, %sub64
  %123 = load %struct._GimpCanvasRectangleGuidesPrivate*, %struct._GimpCanvasRectangleGuidesPrivate** %private, align 8
  %n_guides66 = getelementptr inbounds %struct._GimpCanvasRectangleGuidesPrivate, %struct._GimpCanvasRectangleGuidesPrivate* %123, i32 0, i32 5
  %124 = load i32, i32* %n_guides66, align 4
  %conv67 = sitofp i32 %124 to double
  %div68 = fdiv double %mul65, %conv67
  %add69 = fadd double %119, %div68
  call void @draw_hline(%struct._cairo* %116, double %117, double %118, double %add69)
  %125 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %126 = load double, double* %y1, align 8
  %127 = load double, double* %y2, align 8
  %128 = load double, double* %x1, align 8
  %129 = load i32, i32* %i, align 4
  %conv70 = sitofp i32 %129 to double
  %130 = load double, double* %x2, align 8
  %131 = load double, double* %x1, align 8
  %sub71 = fsub double %130, %131
  %mul72 = fmul double %conv70, %sub71
  %132 = load %struct._GimpCanvasRectangleGuidesPrivate*, %struct._GimpCanvasRectangleGuidesPrivate** %private, align 8
  %n_guides73 = getelementptr inbounds %struct._GimpCanvasRectangleGuidesPrivate, %struct._GimpCanvasRectangleGuidesPrivate* %132, i32 0, i32 5
  %133 = load i32, i32* %n_guides73, align 4
  %conv74 = sitofp i32 %133 to double
  %div75 = fdiv double %mul72, %conv74
  %add76 = fadd double %128, %div75
  call void @draw_vline(%struct._cairo* %125, double %126, double %127, double %add76)
  br label %for.inc.77

for.inc.77:                                       ; preds = %for.body.62
  %134 = load i32, i32* %i, align 4
  %inc78 = add nsw i32 %134, 1
  store i32 %inc78, i32* %i, align 4
  br label %for.cond.59

for.end.79:                                       ; preds = %for.cond.59
  br label %sw.epilog

sw.bb.80:                                         ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.80, %for.end.79, %cond.end, %sw.bb.26, %for.end, %sw.bb.5, %sw.bb.2, %sw.bb
  %135 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %136 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @_gimp_canvas_item_stroke(%struct._GimpCanvasItem* %135, %struct._cairo* %136)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._cairo_region* @gimp_canvas_rectangle_guides_get_extents(%struct._GimpCanvasItem* %item, %struct._GimpDisplayShell* %shell) #3 {
entry:
  %retval = alloca %struct._cairo_region*, align 8
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %private = alloca %struct._GimpCanvasRectangleGuidesPrivate*, align 8
  %rectangle = alloca %struct._cairo_rectangle_int, align 4
  %x1 = alloca double, align 8
  %y1 = alloca double, align 8
  %x2 = alloca double, align 8
  %y2 = alloca double, align 8
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_rectangle_guides_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasRectangleGuidesPrivate*
  store %struct._GimpCanvasRectangleGuidesPrivate* %2, %struct._GimpCanvasRectangleGuidesPrivate** %private, align 8
  %3 = load %struct._GimpCanvasRectangleGuidesPrivate*, %struct._GimpCanvasRectangleGuidesPrivate** %private, align 8
  %type = getelementptr inbounds %struct._GimpCanvasRectangleGuidesPrivate, %struct._GimpCanvasRectangleGuidesPrivate* %3, i32 0, i32 4
  %4 = load i32, i32* %type, align 4
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %6 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_canvas_rectangle_guides_transform(%struct._GimpCanvasItem* %5, %struct._GimpDisplayShell* %6, double* %x1, double* %y1, double* %x2, double* %y2)
  %7 = load double, double* %x1, align 8
  %sub = fsub double %7, 1.500000e+00
  %call2 = call double @floor(double %sub) #6
  %conv = fptosi double %call2 to i32
  %x = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 0
  store i32 %conv, i32* %x, align 4
  %8 = load double, double* %y1, align 8
  %sub3 = fsub double %8, 1.500000e+00
  %call4 = call double @floor(double %sub3) #6
  %conv5 = fptosi double %call4 to i32
  %y = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 1
  store i32 %conv5, i32* %y, align 4
  %9 = load double, double* %x2, align 8
  %10 = load double, double* %x1, align 8
  %sub6 = fsub double %9, %10
  %add = fadd double %sub6, 3.000000e+00
  %call7 = call double @ceil(double %add) #6
  %conv8 = fptosi double %call7 to i32
  %width = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 2
  store i32 %conv8, i32* %width, align 4
  %11 = load double, double* %y2, align 8
  %12 = load double, double* %y1, align 8
  %sub9 = fsub double %11, %12
  %add10 = fadd double %sub9, 3.000000e+00
  %call11 = call double @ceil(double %add10) #6
  %conv12 = fptosi double %call11 to i32
  %height = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 3
  store i32 %conv12, i32* %height, align 4
  %call13 = call %struct._cairo_region* @cairo_region_create_rectangle(%struct._cairo_rectangle_int* %rectangle)
  store %struct._cairo_region* %call13, %struct._cairo_region** %retval
  br label %return

if.end:                                           ; preds = %entry
  store %struct._cairo_region* null, %struct._cairo_region** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %13 = load %struct._cairo_region*, %struct._cairo_region** %retval
  ret %struct._cairo_region* %13
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_guides_type_get_type() #2

declare %struct._GParamSpec* @g_param_spec_int(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare void @g_type_class_add_private(i8*, i64) #1

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

declare double @g_value_get_double(%struct._GValue*) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

declare i32 @g_value_get_int(%struct._GValue*) #1

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

declare void @g_value_set_enum(%struct._GValue*, i32) #1

declare void @g_value_set_int(%struct._GValue*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_rectangle_guides_transform(%struct._GimpCanvasItem* %item, %struct._GimpDisplayShell* %shell, double* %x1, double* %y1, double* %x2, double* %y2) #3 {
entry:
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %x1.addr = alloca double*, align 8
  %y1.addr = alloca double*, align 8
  %x2.addr = alloca double*, align 8
  %y2.addr = alloca double*, align 8
  %private = alloca %struct._GimpCanvasRectangleGuidesPrivate*, align 8
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store double* %x1, double** %x1.addr, align 8
  store double* %y1, double** %y1.addr, align 8
  store double* %x2, double** %x2.addr, align 8
  store double* %y2, double** %y2.addr, align 8
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_rectangle_guides_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasRectangleGuidesPrivate*
  store %struct._GimpCanvasRectangleGuidesPrivate* %2, %struct._GimpCanvasRectangleGuidesPrivate** %private, align 8
  %3 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %4 = load %struct._GimpCanvasRectangleGuidesPrivate*, %struct._GimpCanvasRectangleGuidesPrivate** %private, align 8
  %x = getelementptr inbounds %struct._GimpCanvasRectangleGuidesPrivate, %struct._GimpCanvasRectangleGuidesPrivate* %4, i32 0, i32 0
  %5 = load double, double* %x, align 8
  %6 = load %struct._GimpCanvasRectangleGuidesPrivate*, %struct._GimpCanvasRectangleGuidesPrivate** %private, align 8
  %x3 = getelementptr inbounds %struct._GimpCanvasRectangleGuidesPrivate, %struct._GimpCanvasRectangleGuidesPrivate* %6, i32 0, i32 0
  %7 = load double, double* %x3, align 8
  %8 = load %struct._GimpCanvasRectangleGuidesPrivate*, %struct._GimpCanvasRectangleGuidesPrivate** %private, align 8
  %width = getelementptr inbounds %struct._GimpCanvasRectangleGuidesPrivate, %struct._GimpCanvasRectangleGuidesPrivate* %8, i32 0, i32 2
  %9 = load double, double* %width, align 8
  %add = fadd double %7, %9
  %cmp = fcmp olt double %5, %add
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %10 = load %struct._GimpCanvasRectangleGuidesPrivate*, %struct._GimpCanvasRectangleGuidesPrivate** %private, align 8
  %x4 = getelementptr inbounds %struct._GimpCanvasRectangleGuidesPrivate, %struct._GimpCanvasRectangleGuidesPrivate* %10, i32 0, i32 0
  %11 = load double, double* %x4, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %12 = load %struct._GimpCanvasRectangleGuidesPrivate*, %struct._GimpCanvasRectangleGuidesPrivate** %private, align 8
  %x5 = getelementptr inbounds %struct._GimpCanvasRectangleGuidesPrivate, %struct._GimpCanvasRectangleGuidesPrivate* %12, i32 0, i32 0
  %13 = load double, double* %x5, align 8
  %14 = load %struct._GimpCanvasRectangleGuidesPrivate*, %struct._GimpCanvasRectangleGuidesPrivate** %private, align 8
  %width6 = getelementptr inbounds %struct._GimpCanvasRectangleGuidesPrivate, %struct._GimpCanvasRectangleGuidesPrivate* %14, i32 0, i32 2
  %15 = load double, double* %width6, align 8
  %add7 = fadd double %13, %15
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %11, %cond.true ], [ %add7, %cond.false ]
  %16 = load %struct._GimpCanvasRectangleGuidesPrivate*, %struct._GimpCanvasRectangleGuidesPrivate** %private, align 8
  %y = getelementptr inbounds %struct._GimpCanvasRectangleGuidesPrivate, %struct._GimpCanvasRectangleGuidesPrivate* %16, i32 0, i32 1
  %17 = load double, double* %y, align 8
  %18 = load %struct._GimpCanvasRectangleGuidesPrivate*, %struct._GimpCanvasRectangleGuidesPrivate** %private, align 8
  %y8 = getelementptr inbounds %struct._GimpCanvasRectangleGuidesPrivate, %struct._GimpCanvasRectangleGuidesPrivate* %18, i32 0, i32 1
  %19 = load double, double* %y8, align 8
  %20 = load %struct._GimpCanvasRectangleGuidesPrivate*, %struct._GimpCanvasRectangleGuidesPrivate** %private, align 8
  %height = getelementptr inbounds %struct._GimpCanvasRectangleGuidesPrivate, %struct._GimpCanvasRectangleGuidesPrivate* %20, i32 0, i32 3
  %21 = load double, double* %height, align 8
  %add9 = fadd double %19, %21
  %cmp10 = fcmp olt double %17, %add9
  br i1 %cmp10, label %cond.true.11, label %cond.false.13

cond.true.11:                                     ; preds = %cond.end
  %22 = load %struct._GimpCanvasRectangleGuidesPrivate*, %struct._GimpCanvasRectangleGuidesPrivate** %private, align 8
  %y12 = getelementptr inbounds %struct._GimpCanvasRectangleGuidesPrivate, %struct._GimpCanvasRectangleGuidesPrivate* %22, i32 0, i32 1
  %23 = load double, double* %y12, align 8
  br label %cond.end.17

cond.false.13:                                    ; preds = %cond.end
  %24 = load %struct._GimpCanvasRectangleGuidesPrivate*, %struct._GimpCanvasRectangleGuidesPrivate** %private, align 8
  %y14 = getelementptr inbounds %struct._GimpCanvasRectangleGuidesPrivate, %struct._GimpCanvasRectangleGuidesPrivate* %24, i32 0, i32 1
  %25 = load double, double* %y14, align 8
  %26 = load %struct._GimpCanvasRectangleGuidesPrivate*, %struct._GimpCanvasRectangleGuidesPrivate** %private, align 8
  %height15 = getelementptr inbounds %struct._GimpCanvasRectangleGuidesPrivate, %struct._GimpCanvasRectangleGuidesPrivate* %26, i32 0, i32 3
  %27 = load double, double* %height15, align 8
  %add16 = fadd double %25, %27
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.false.13, %cond.true.11
  %cond18 = phi double [ %23, %cond.true.11 ], [ %add16, %cond.false.13 ]
  %28 = load double*, double** %x1.addr, align 8
  %29 = load double*, double** %y1.addr, align 8
  call void @gimp_display_shell_transform_xy_f(%struct._GimpDisplayShell* %3, double %cond, double %cond18, double* %28, double* %29)
  %30 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %31 = load %struct._GimpCanvasRectangleGuidesPrivate*, %struct._GimpCanvasRectangleGuidesPrivate** %private, align 8
  %x19 = getelementptr inbounds %struct._GimpCanvasRectangleGuidesPrivate, %struct._GimpCanvasRectangleGuidesPrivate* %31, i32 0, i32 0
  %32 = load double, double* %x19, align 8
  %33 = load %struct._GimpCanvasRectangleGuidesPrivate*, %struct._GimpCanvasRectangleGuidesPrivate** %private, align 8
  %x20 = getelementptr inbounds %struct._GimpCanvasRectangleGuidesPrivate, %struct._GimpCanvasRectangleGuidesPrivate* %33, i32 0, i32 0
  %34 = load double, double* %x20, align 8
  %35 = load %struct._GimpCanvasRectangleGuidesPrivate*, %struct._GimpCanvasRectangleGuidesPrivate** %private, align 8
  %width21 = getelementptr inbounds %struct._GimpCanvasRectangleGuidesPrivate, %struct._GimpCanvasRectangleGuidesPrivate* %35, i32 0, i32 2
  %36 = load double, double* %width21, align 8
  %add22 = fadd double %34, %36
  %cmp23 = fcmp ogt double %32, %add22
  br i1 %cmp23, label %cond.true.24, label %cond.false.26

cond.true.24:                                     ; preds = %cond.end.17
  %37 = load %struct._GimpCanvasRectangleGuidesPrivate*, %struct._GimpCanvasRectangleGuidesPrivate** %private, align 8
  %x25 = getelementptr inbounds %struct._GimpCanvasRectangleGuidesPrivate, %struct._GimpCanvasRectangleGuidesPrivate* %37, i32 0, i32 0
  %38 = load double, double* %x25, align 8
  br label %cond.end.30

cond.false.26:                                    ; preds = %cond.end.17
  %39 = load %struct._GimpCanvasRectangleGuidesPrivate*, %struct._GimpCanvasRectangleGuidesPrivate** %private, align 8
  %x27 = getelementptr inbounds %struct._GimpCanvasRectangleGuidesPrivate, %struct._GimpCanvasRectangleGuidesPrivate* %39, i32 0, i32 0
  %40 = load double, double* %x27, align 8
  %41 = load %struct._GimpCanvasRectangleGuidesPrivate*, %struct._GimpCanvasRectangleGuidesPrivate** %private, align 8
  %width28 = getelementptr inbounds %struct._GimpCanvasRectangleGuidesPrivate, %struct._GimpCanvasRectangleGuidesPrivate* %41, i32 0, i32 2
  %42 = load double, double* %width28, align 8
  %add29 = fadd double %40, %42
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.26, %cond.true.24
  %cond31 = phi double [ %38, %cond.true.24 ], [ %add29, %cond.false.26 ]
  %43 = load %struct._GimpCanvasRectangleGuidesPrivate*, %struct._GimpCanvasRectangleGuidesPrivate** %private, align 8
  %y32 = getelementptr inbounds %struct._GimpCanvasRectangleGuidesPrivate, %struct._GimpCanvasRectangleGuidesPrivate* %43, i32 0, i32 1
  %44 = load double, double* %y32, align 8
  %45 = load %struct._GimpCanvasRectangleGuidesPrivate*, %struct._GimpCanvasRectangleGuidesPrivate** %private, align 8
  %y33 = getelementptr inbounds %struct._GimpCanvasRectangleGuidesPrivate, %struct._GimpCanvasRectangleGuidesPrivate* %45, i32 0, i32 1
  %46 = load double, double* %y33, align 8
  %47 = load %struct._GimpCanvasRectangleGuidesPrivate*, %struct._GimpCanvasRectangleGuidesPrivate** %private, align 8
  %height34 = getelementptr inbounds %struct._GimpCanvasRectangleGuidesPrivate, %struct._GimpCanvasRectangleGuidesPrivate* %47, i32 0, i32 3
  %48 = load double, double* %height34, align 8
  %add35 = fadd double %46, %48
  %cmp36 = fcmp ogt double %44, %add35
  br i1 %cmp36, label %cond.true.37, label %cond.false.39

cond.true.37:                                     ; preds = %cond.end.30
  %49 = load %struct._GimpCanvasRectangleGuidesPrivate*, %struct._GimpCanvasRectangleGuidesPrivate** %private, align 8
  %y38 = getelementptr inbounds %struct._GimpCanvasRectangleGuidesPrivate, %struct._GimpCanvasRectangleGuidesPrivate* %49, i32 0, i32 1
  %50 = load double, double* %y38, align 8
  br label %cond.end.43

cond.false.39:                                    ; preds = %cond.end.30
  %51 = load %struct._GimpCanvasRectangleGuidesPrivate*, %struct._GimpCanvasRectangleGuidesPrivate** %private, align 8
  %y40 = getelementptr inbounds %struct._GimpCanvasRectangleGuidesPrivate, %struct._GimpCanvasRectangleGuidesPrivate* %51, i32 0, i32 1
  %52 = load double, double* %y40, align 8
  %53 = load %struct._GimpCanvasRectangleGuidesPrivate*, %struct._GimpCanvasRectangleGuidesPrivate** %private, align 8
  %height41 = getelementptr inbounds %struct._GimpCanvasRectangleGuidesPrivate, %struct._GimpCanvasRectangleGuidesPrivate* %53, i32 0, i32 3
  %54 = load double, double* %height41, align 8
  %add42 = fadd double %52, %54
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.39, %cond.true.37
  %cond44 = phi double [ %50, %cond.true.37 ], [ %add42, %cond.false.39 ]
  %55 = load double*, double** %x2.addr, align 8
  %56 = load double*, double** %y2.addr, align 8
  call void @gimp_display_shell_transform_xy_f(%struct._GimpDisplayShell* %30, double %cond31, double %cond44, double* %55, double* %56)
  %57 = load double*, double** %x1.addr, align 8
  %58 = load double, double* %57, align 8
  %call45 = call double @floor(double %58) #6
  %add46 = fadd double %call45, 5.000000e-01
  %59 = load double*, double** %x1.addr, align 8
  store double %add46, double* %59, align 8
  %60 = load double*, double** %y1.addr, align 8
  %61 = load double, double* %60, align 8
  %call47 = call double @floor(double %61) #6
  %add48 = fadd double %call47, 5.000000e-01
  %62 = load double*, double** %y1.addr, align 8
  store double %add48, double* %62, align 8
  %63 = load double*, double** %x2.addr, align 8
  %64 = load double, double* %63, align 8
  %call49 = call double @ceil(double %64) #6
  %sub = fsub double %call49, 5.000000e-01
  %65 = load double*, double** %x2.addr, align 8
  store double %sub, double* %65, align 8
  %66 = load double*, double** %y2.addr, align 8
  %67 = load double, double* %66, align 8
  %call50 = call double @ceil(double %67) #6
  %sub51 = fsub double %call50, 5.000000e-01
  %68 = load double*, double** %y2.addr, align 8
  store double %sub51, double* %68, align 8
  %69 = load double*, double** %x1.addr, align 8
  %70 = load double, double* %69, align 8
  %71 = load double*, double** %x2.addr, align 8
  %72 = load double, double* %71, align 8
  %cmp52 = fcmp ogt double %70, %72
  br i1 %cmp52, label %cond.true.53, label %cond.false.54

cond.true.53:                                     ; preds = %cond.end.43
  %73 = load double*, double** %x1.addr, align 8
  %74 = load double, double* %73, align 8
  br label %cond.end.55

cond.false.54:                                    ; preds = %cond.end.43
  %75 = load double*, double** %x2.addr, align 8
  %76 = load double, double* %75, align 8
  br label %cond.end.55

cond.end.55:                                      ; preds = %cond.false.54, %cond.true.53
  %cond56 = phi double [ %74, %cond.true.53 ], [ %76, %cond.false.54 ]
  %77 = load double*, double** %x2.addr, align 8
  store double %cond56, double* %77, align 8
  %78 = load double*, double** %y1.addr, align 8
  %79 = load double, double* %78, align 8
  %80 = load double*, double** %y2.addr, align 8
  %81 = load double, double* %80, align 8
  %cmp57 = fcmp ogt double %79, %81
  br i1 %cmp57, label %cond.true.58, label %cond.false.59

cond.true.58:                                     ; preds = %cond.end.55
  %82 = load double*, double** %y1.addr, align 8
  %83 = load double, double* %82, align 8
  br label %cond.end.60

cond.false.59:                                    ; preds = %cond.end.55
  %84 = load double*, double** %y2.addr, align 8
  %85 = load double, double* %84, align 8
  br label %cond.end.60

cond.end.60:                                      ; preds = %cond.false.59, %cond.true.58
  %cond61 = phi double [ %83, %cond.true.58 ], [ %85, %cond.false.59 ]
  %86 = load double*, double** %y2.addr, align 8
  store double %cond61, double* %86, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @draw_hline(%struct._cairo* %cr, double %x1, double %x2, double %y) #3 {
entry:
  %cr.addr = alloca %struct._cairo*, align 8
  %x1.addr = alloca double, align 8
  %x2.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store double %x1, double* %x1.addr, align 8
  store double %x2, double* %x2.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load double, double* %y.addr, align 8
  %call = call double @floor(double %0) #6
  %add = fadd double %call, 5.000000e-01
  store double %add, double* %y.addr, align 8
  %1 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %2 = load double, double* %x1.addr, align 8
  %3 = load double, double* %y.addr, align 8
  call void @cairo_move_to(%struct._cairo* %1, double %2, double %3)
  %4 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %5 = load double, double* %x2.addr, align 8
  %6 = load double, double* %y.addr, align 8
  call void @cairo_line_to(%struct._cairo* %4, double %5, double %6)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @draw_vline(%struct._cairo* %cr, double %y1, double %y2, double %x) #3 {
entry:
  %cr.addr = alloca %struct._cairo*, align 8
  %y1.addr = alloca double, align 8
  %y2.addr = alloca double, align 8
  %x.addr = alloca double, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store double %y1, double* %y1.addr, align 8
  store double %y2, double* %y2.addr, align 8
  store double %x, double* %x.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %call = call double @floor(double %0) #6
  %add = fadd double %call, 5.000000e-01
  store double %add, double* %x.addr, align 8
  %1 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %2 = load double, double* %x.addr, align 8
  %3 = load double, double* %y1.addr, align 8
  call void @cairo_move_to(%struct._cairo* %1, double %2, double %3)
  %4 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %5 = load double, double* %x.addr, align 8
  %6 = load double, double* %y2.addr, align 8
  call void @cairo_line_to(%struct._cairo* %4, double %5, double %6)
  ret void
}

declare void @cairo_move_to(%struct._cairo*, double, double) #1

declare void @cairo_line_to(%struct._cairo*, double, double) #1

declare void @_gimp_canvas_item_stroke(%struct._GimpCanvasItem*, %struct._cairo*) #1

declare void @gimp_display_shell_transform_xy_f(%struct._GimpDisplayShell*, double, double, double*, double*) #1

; Function Attrs: nounwind readnone
declare double @floor(double) #2

; Function Attrs: nounwind readnone
declare double @ceil(double) #2

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
