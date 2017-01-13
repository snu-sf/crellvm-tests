; ModuleID = './app/display/gimpcanvasrectangle.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
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
%struct._GimpDrawable = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpMotionBuffer = type opaque
%struct._GQueue = type { %struct._GList*, %struct._GList*, i32 }
%struct._cairo = type opaque
%struct._GimpCanvasRectangle = type { %struct._GimpCanvasItem }
%struct._GimpCanvasRectanglePrivate = type { double, double, double, double, i32 }
%struct._cairo_rectangle_int = type { i32, i32, i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_canvas_rectangle_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"GimpCanvasRectangle\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Display\00", align 1
@__func__.gimp_canvas_rectangle_new = private unnamed_addr constant [26 x i8] c"gimp_canvas_rectangle_new\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"GIMP_IS_DISPLAY_SHELL (shell)\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"filled\00", align 1
@__func__.gimp_canvas_rectangle_set = private unnamed_addr constant [26 x i8] c"gimp_canvas_rectangle_set\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"GIMP_IS_CANVAS_RECTANGLE (rectangle)\00", align 1
@gimp_canvas_rectangle_parent_class = internal global i8* null, align 8
@GimpCanvasRectangle_private_offset = internal global i32 0, align 4
@.str.10 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"gimpcanvasrectangle.c\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"property\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_canvas_rectangle_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_canvas_rectangle_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_canvas_rectangle_get_type.g_define_type_id__volatile to i8*))
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
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 208, void (i8*, i8*)* bitcast (void (i8*)* @gimp_canvas_rectangle_class_intern_init to void (i8*, i8*)*), i32 32, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpCanvasRectangle*)* @gimp_canvas_rectangle_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_canvas_rectangle_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_canvas_rectangle_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_canvas_item_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_rectangle_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_canvas_rectangle_parent_class, align 8
  %1 = load i32, i32* @GimpCanvasRectangle_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpCanvasRectangle_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpCanvasRectangleClass*
  call void @gimp_canvas_rectangle_class_init(%struct._GimpCanvasRectangleClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_rectangle_init(%struct._GimpCanvasRectangle* %rectangle) #3 {
entry:
  %rectangle.addr = alloca %struct._GimpCanvasRectangle*, align 8
  store %struct._GimpCanvasRectangle* %rectangle, %struct._GimpCanvasRectangle** %rectangle.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpCanvasItem* @gimp_canvas_rectangle_new(%struct._GimpDisplayShell* %shell, double %x, double %y, double %width, double %height, i32 %filled) #3 {
entry:
  %retval = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %width.addr = alloca double, align 8
  %height.addr = alloca double, align 8
  %filled.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store double %width, double* %width.addr, align 8
  store double %height, double* %height.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_canvas_rectangle_new, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_canvas_rectangle_get_type() #6
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %14 = load double, double* %x.addr, align 8
  %15 = load double, double* %y.addr, align 8
  %16 = load double, double* %width.addr, align 8
  %17 = load double, double* %height.addr, align 8
  %18 = load i32, i32* %filled.addr, align 4
  %call12 = call i8* (i64, i8*, ...) @g_object_new(i64 %call11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), %struct._GimpDisplayShell* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), double %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), double %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), double %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), double %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32 %18, i8* null)
  %19 = bitcast i8* %call12 to %struct._GimpCanvasItem*
  store %struct._GimpCanvasItem* %19, %struct._GimpCanvasItem** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %20 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %retval
  ret %struct._GimpCanvasItem* %20
}

; Function Attrs: nounwind readnone
declare i64 @gimp_display_shell_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_canvas_rectangle_set(%struct._GimpCanvasItem* %rectangle, double %x, double %y, double %width, double %height) #3 {
entry:
  %rectangle.addr = alloca %struct._GimpCanvasItem*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %width.addr = alloca double, align 8
  %height.addr = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCanvasItem* %rectangle, %struct._GimpCanvasItem** %rectangle.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store double %width, double* %width.addr, align 8
  store double %height, double* %height.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %rectangle.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_canvas_rectangle_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_canvas_rectangle_set, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0))
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
  call void (i8*, i8*, ...) @g_object_set(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), double %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), double %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), double %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), double %19, i8* null)
  %20 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %rectangle.addr, align 8
  call void @gimp_canvas_item_end_change(%struct._GimpCanvasItem* %20)
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
define internal void @gimp_canvas_rectangle_class_init(%struct._GimpCanvasRectangleClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpCanvasRectangleClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %item_class = alloca %struct._GimpCanvasItemClass*, align 8
  store %struct._GimpCanvasRectangleClass* %klass, %struct._GimpCanvasRectangleClass** %klass.addr, align 8
  %0 = load %struct._GimpCanvasRectangleClass*, %struct._GimpCanvasRectangleClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpCanvasRectangleClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpCanvasRectangleClass*, %struct._GimpCanvasRectangleClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpCanvasRectangleClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_canvas_item_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpCanvasItemClass*
  store %struct._GimpCanvasItemClass* %5, %struct._GimpCanvasItemClass** %item_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_canvas_rectangle_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_canvas_rectangle_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %8 = load %struct._GimpCanvasItemClass*, %struct._GimpCanvasItemClass** %item_class, align 8
  %draw = getelementptr inbounds %struct._GimpCanvasItemClass, %struct._GimpCanvasItemClass* %8, i32 0, i32 2
  store void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)* @gimp_canvas_rectangle_draw, void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)** %draw, align 8
  %9 = load %struct._GimpCanvasItemClass*, %struct._GimpCanvasItemClass** %item_class, align 8
  %get_extents = getelementptr inbounds %struct._GimpCanvasItemClass, %struct._GimpCanvasItemClass* %9, i32 0, i32 3
  store %struct._cairo_region* (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*)* @gimp_canvas_rectangle_get_extents, %struct._cairo_region* (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*)** %get_extents, align 8
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
  %call7 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* null, i32 0, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %14, i32 5, %struct._GParamSpec* %call7)
  %15 = load %struct._GimpCanvasRectangleClass*, %struct._GimpCanvasRectangleClass** %klass.addr, align 8
  %16 = bitcast %struct._GimpCanvasRectangleClass* %15 to i8*
  call void @g_type_class_add_private(i8* %16, i64 40)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_rectangle_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpCanvasRectanglePrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_rectangle_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasRectanglePrivate*
  store %struct._GimpCanvasRectanglePrivate* %2, %struct._GimpCanvasRectanglePrivate** %private, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.5
    i32 4, label %sw.bb.7
    i32 5, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call double @g_value_get_double(%struct._GValue* %4)
  %5 = load %struct._GimpCanvasRectanglePrivate*, %struct._GimpCanvasRectanglePrivate** %private, align 8
  %x = getelementptr inbounds %struct._GimpCanvasRectanglePrivate, %struct._GimpCanvasRectanglePrivate* %5, i32 0, i32 0
  store double %call2, double* %x, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %6 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call double @g_value_get_double(%struct._GValue* %6)
  %7 = load %struct._GimpCanvasRectanglePrivate*, %struct._GimpCanvasRectanglePrivate** %private, align 8
  %y = getelementptr inbounds %struct._GimpCanvasRectanglePrivate, %struct._GimpCanvasRectanglePrivate* %7, i32 0, i32 1
  store double %call4, double* %y, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call double @g_value_get_double(%struct._GValue* %8)
  %9 = load %struct._GimpCanvasRectanglePrivate*, %struct._GimpCanvasRectanglePrivate** %private, align 8
  %width = getelementptr inbounds %struct._GimpCanvasRectanglePrivate, %struct._GimpCanvasRectanglePrivate* %9, i32 0, i32 2
  store double %call6, double* %width, align 8
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call8 = call double @g_value_get_double(%struct._GValue* %10)
  %11 = load %struct._GimpCanvasRectanglePrivate*, %struct._GimpCanvasRectanglePrivate** %private, align 8
  %height = getelementptr inbounds %struct._GimpCanvasRectanglePrivate, %struct._GimpCanvasRectanglePrivate* %11, i32 0, i32 3
  store double %call8, double* %height, align 8
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %12 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call10 = call i32 @g_value_get_boolean(%struct._GValue* %12)
  %13 = load %struct._GimpCanvasRectanglePrivate*, %struct._GimpCanvasRectanglePrivate** %private, align 8
  %filled = getelementptr inbounds %struct._GimpCanvasRectanglePrivate, %struct._GimpCanvasRectanglePrivate* %13, i32 0, i32 4
  store i32 %call10, i32* %filled, align 4
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
  %call11 = call i8* @g_type_name(i64 %23)
  %24 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %25 = bitcast %struct._GObject* %24 to %struct._GTypeInstance*
  %g_class12 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %25, i32 0, i32 0
  %26 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class12, align 8
  %g_type13 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %26, i32 0, i32 0
  %27 = load i64, i64* %g_type13, align 8
  %call14 = call i8* @g_type_name(i64 %27)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0), i32 163, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i32 %17, i8* %19, i8* %call11, i8* %call14)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.9, %sw.bb.7, %sw.bb.5, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_rectangle_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpCanvasRectanglePrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_rectangle_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasRectanglePrivate*
  store %struct._GimpCanvasRectanglePrivate* %2, %struct._GimpCanvasRectanglePrivate** %private, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.4
    i32 5, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpCanvasRectanglePrivate*, %struct._GimpCanvasRectanglePrivate** %private, align 8
  %x = getelementptr inbounds %struct._GimpCanvasRectanglePrivate, %struct._GimpCanvasRectanglePrivate* %5, i32 0, i32 0
  %6 = load double, double* %x, align 8
  call void @g_value_set_double(%struct._GValue* %4, double %6)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GimpCanvasRectanglePrivate*, %struct._GimpCanvasRectanglePrivate** %private, align 8
  %y = getelementptr inbounds %struct._GimpCanvasRectanglePrivate, %struct._GimpCanvasRectanglePrivate* %8, i32 0, i32 1
  %9 = load double, double* %y, align 8
  call void @g_value_set_double(%struct._GValue* %7, double %9)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %11 = load %struct._GimpCanvasRectanglePrivate*, %struct._GimpCanvasRectanglePrivate** %private, align 8
  %width = getelementptr inbounds %struct._GimpCanvasRectanglePrivate, %struct._GimpCanvasRectanglePrivate* %11, i32 0, i32 2
  %12 = load double, double* %width, align 8
  call void @g_value_set_double(%struct._GValue* %10, double %12)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %13 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %14 = load %struct._GimpCanvasRectanglePrivate*, %struct._GimpCanvasRectanglePrivate** %private, align 8
  %height = getelementptr inbounds %struct._GimpCanvasRectanglePrivate, %struct._GimpCanvasRectanglePrivate* %14, i32 0, i32 3
  %15 = load double, double* %height, align 8
  call void @g_value_set_double(%struct._GValue* %13, double %15)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %17 = load %struct._GimpCanvasRectanglePrivate*, %struct._GimpCanvasRectanglePrivate** %private, align 8
  %filled = getelementptr inbounds %struct._GimpCanvasRectanglePrivate, %struct._GimpCanvasRectanglePrivate* %17, i32 0, i32 4
  %18 = load i32, i32* %filled, align 4
  call void @g_value_set_boolean(%struct._GValue* %16, i32 %18)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %19 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %19, %struct._GObject** %_glib__object, align 8
  %20 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %20, %struct._GParamSpec** %_glib__pspec, align 8
  %21 = load i32, i32* %property_id.addr, align 4
  store i32 %21, i32* %_glib__property_id, align 4
  %22 = load i32, i32* %_glib__property_id, align 4
  %23 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %23, i32 0, i32 1
  %24 = load i8*, i8** %name, align 8
  %25 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %26 = bitcast %struct._GParamSpec* %25 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %26, i32 0, i32 0
  %27 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %27, i32 0, i32 0
  %28 = load i64, i64* %g_type, align 8
  %call6 = call i8* @g_type_name(i64 %28)
  %29 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %30 = bitcast %struct._GObject* %29 to %struct._GTypeInstance*
  %g_class7 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %30, i32 0, i32 0
  %31 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class7, align 8
  %g_type8 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %31, i32 0, i32 0
  %32 = load i64, i64* %g_type8, align 8
  %call9 = call i8* @g_type_name(i64 %32)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0), i32 195, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i32 %22, i8* %24, i8* %call6, i8* %call9)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_rectangle_draw(%struct._GimpCanvasItem* %item, %struct._GimpDisplayShell* %shell, %struct._cairo* %cr) #3 {
entry:
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %private = alloca %struct._GimpCanvasRectanglePrivate*, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  %w = alloca double, align 8
  %h = alloca double, align 8
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_rectangle_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasRectanglePrivate*
  store %struct._GimpCanvasRectanglePrivate* %2, %struct._GimpCanvasRectanglePrivate** %private, align 8
  %3 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_canvas_rectangle_transform(%struct._GimpCanvasItem* %3, %struct._GimpDisplayShell* %4, double* %x, double* %y, double* %w, double* %h)
  %5 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %6 = load double, double* %x, align 8
  %7 = load double, double* %y, align 8
  %8 = load double, double* %w, align 8
  %9 = load double, double* %h, align 8
  call void @cairo_rectangle(%struct._cairo* %5, double %6, double %7, double %8, double %9)
  %10 = load %struct._GimpCanvasRectanglePrivate*, %struct._GimpCanvasRectanglePrivate** %private, align 8
  %filled = getelementptr inbounds %struct._GimpCanvasRectanglePrivate, %struct._GimpCanvasRectanglePrivate* %10, i32 0, i32 4
  %11 = load i32, i32* %filled, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %12 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %13 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @_gimp_canvas_item_fill(%struct._GimpCanvasItem* %12, %struct._cairo* %13)
  br label %if.end

if.else:                                          ; preds = %entry
  %14 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %15 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @_gimp_canvas_item_stroke(%struct._GimpCanvasItem* %14, %struct._cairo* %15)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._cairo_region* @gimp_canvas_rectangle_get_extents(%struct._GimpCanvasItem* %item, %struct._GimpDisplayShell* %shell) #3 {
entry:
  %retval = alloca %struct._cairo_region*, align 8
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %private = alloca %struct._GimpCanvasRectanglePrivate*, align 8
  %rectangle = alloca %struct._cairo_rectangle_int, align 4
  %x = alloca double, align 8
  %y = alloca double, align 8
  %w = alloca double, align 8
  %h = alloca double, align 8
  %region = alloca %struct._cairo_region*, align 8
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_rectangle_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasRectanglePrivate*
  store %struct._GimpCanvasRectanglePrivate* %2, %struct._GimpCanvasRectanglePrivate** %private, align 8
  %3 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_canvas_rectangle_transform(%struct._GimpCanvasItem* %3, %struct._GimpDisplayShell* %4, double* %x, double* %y, double* %w, double* %h)
  %5 = load %struct._GimpCanvasRectanglePrivate*, %struct._GimpCanvasRectanglePrivate** %private, align 8
  %filled = getelementptr inbounds %struct._GimpCanvasRectanglePrivate, %struct._GimpCanvasRectanglePrivate* %5, i32 0, i32 4
  %6 = load i32, i32* %filled, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load double, double* %x, align 8
  %sub = fsub double %7, 1.000000e+00
  %call2 = call double @floor(double %sub) #6
  %conv = fptosi double %call2 to i32
  %x3 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 0
  store i32 %conv, i32* %x3, align 4
  %8 = load double, double* %y, align 8
  %sub4 = fsub double %8, 1.000000e+00
  %call5 = call double @floor(double %sub4) #6
  %conv6 = fptosi double %call5 to i32
  %y7 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 1
  store i32 %conv6, i32* %y7, align 4
  %9 = load double, double* %w, align 8
  %add = fadd double %9, 2.000000e+00
  %call8 = call double @ceil(double %add) #6
  %conv9 = fptosi double %call8 to i32
  %width = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 2
  store i32 %conv9, i32* %width, align 4
  %10 = load double, double* %h, align 8
  %add10 = fadd double %10, 2.000000e+00
  %call11 = call double @ceil(double %add10) #6
  %conv12 = fptosi double %call11 to i32
  %height = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 3
  store i32 %conv12, i32* %height, align 4
  %call13 = call %struct._cairo_region* @cairo_region_create_rectangle(%struct._cairo_rectangle_int* %rectangle)
  store %struct._cairo_region* %call13, %struct._cairo_region** %retval
  br label %return

if.else:                                          ; preds = %entry
  %11 = load double, double* %w, align 8
  %cmp = fcmp ogt double %11, 6.400000e+01
  br i1 %cmp, label %land.lhs.true, label %if.else.58

land.lhs.true:                                    ; preds = %if.else
  %12 = load double, double* %h, align 8
  %cmp15 = fcmp ogt double %12, 6.400000e+01
  br i1 %cmp15, label %if.then.17, label %if.else.58

if.then.17:                                       ; preds = %land.lhs.true
  %13 = load double, double* %x, align 8
  %sub18 = fsub double %13, 1.500000e+00
  %call19 = call double @floor(double %sub18) #6
  %conv20 = fptosi double %call19 to i32
  %x21 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 0
  store i32 %conv20, i32* %x21, align 4
  %14 = load double, double* %y, align 8
  %sub22 = fsub double %14, 1.500000e+00
  %call23 = call double @floor(double %sub22) #6
  %conv24 = fptosi double %call23 to i32
  %y25 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 1
  store i32 %conv24, i32* %y25, align 4
  %width26 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 2
  store i32 3, i32* %width26, align 4
  %15 = load double, double* %h, align 8
  %add27 = fadd double %15, 3.000000e+00
  %call28 = call double @ceil(double %add27) #6
  %conv29 = fptosi double %call28 to i32
  %height30 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 3
  store i32 %conv29, i32* %height30, align 4
  %call31 = call %struct._cairo_region* @cairo_region_create_rectangle(%struct._cairo_rectangle_int* %rectangle)
  store %struct._cairo_region* %call31, %struct._cairo_region** %region, align 8
  %16 = load double, double* %x, align 8
  %17 = load double, double* %w, align 8
  %add32 = fadd double %16, %17
  %sub33 = fsub double %add32, 1.500000e+00
  %call34 = call double @floor(double %sub33) #6
  %conv35 = fptosi double %call34 to i32
  %x36 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 0
  store i32 %conv35, i32* %x36, align 4
  %18 = load %struct._cairo_region*, %struct._cairo_region** %region, align 8
  %call37 = call i32 @cairo_region_union_rectangle(%struct._cairo_region* %18, %struct._cairo_rectangle_int* %rectangle)
  %19 = load double, double* %x, align 8
  %sub38 = fsub double %19, 1.500000e+00
  %call39 = call double @floor(double %sub38) #6
  %conv40 = fptosi double %call39 to i32
  %x41 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 0
  store i32 %conv40, i32* %x41, align 4
  %20 = load double, double* %y, align 8
  %sub42 = fsub double %20, 1.500000e+00
  %call43 = call double @floor(double %sub42) #6
  %conv44 = fptosi double %call43 to i32
  %y45 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 1
  store i32 %conv44, i32* %y45, align 4
  %21 = load double, double* %w, align 8
  %add46 = fadd double %21, 3.000000e+00
  %call47 = call double @ceil(double %add46) #6
  %conv48 = fptosi double %call47 to i32
  %width49 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 2
  store i32 %conv48, i32* %width49, align 4
  %height50 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 3
  store i32 3, i32* %height50, align 4
  %22 = load %struct._cairo_region*, %struct._cairo_region** %region, align 8
  %call51 = call i32 @cairo_region_union_rectangle(%struct._cairo_region* %22, %struct._cairo_rectangle_int* %rectangle)
  %23 = load double, double* %y, align 8
  %24 = load double, double* %h, align 8
  %add52 = fadd double %23, %24
  %sub53 = fsub double %add52, 1.500000e+00
  %call54 = call double @floor(double %sub53) #6
  %conv55 = fptosi double %call54 to i32
  %y56 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 1
  store i32 %conv55, i32* %y56, align 4
  %25 = load %struct._cairo_region*, %struct._cairo_region** %region, align 8
  %call57 = call i32 @cairo_region_union_rectangle(%struct._cairo_region* %25, %struct._cairo_rectangle_int* %rectangle)
  %26 = load %struct._cairo_region*, %struct._cairo_region** %region, align 8
  store %struct._cairo_region* %26, %struct._cairo_region** %retval
  br label %return

if.else.58:                                       ; preds = %land.lhs.true, %if.else
  %27 = load double, double* %x, align 8
  %sub59 = fsub double %27, 1.500000e+00
  %call60 = call double @floor(double %sub59) #6
  %conv61 = fptosi double %call60 to i32
  %x62 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 0
  store i32 %conv61, i32* %x62, align 4
  %28 = load double, double* %y, align 8
  %sub63 = fsub double %28, 1.500000e+00
  %call64 = call double @floor(double %sub63) #6
  %conv65 = fptosi double %call64 to i32
  %y66 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 1
  store i32 %conv65, i32* %y66, align 4
  %29 = load double, double* %w, align 8
  %add67 = fadd double %29, 3.000000e+00
  %call68 = call double @ceil(double %add67) #6
  %conv69 = fptosi double %call68 to i32
  %width70 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 2
  store i32 %conv69, i32* %width70, align 4
  %30 = load double, double* %h, align 8
  %add71 = fadd double %30, 3.000000e+00
  %call72 = call double @ceil(double %add71) #6
  %conv73 = fptosi double %call72 to i32
  %height74 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 3
  store i32 %conv73, i32* %height74, align 4
  %call75 = call %struct._cairo_region* @cairo_region_create_rectangle(%struct._cairo_rectangle_int* %rectangle)
  store %struct._cairo_region* %call75, %struct._cairo_region** %retval
  br label %return

return:                                           ; preds = %if.else.58, %if.then.17, %if.then
  %31 = load %struct._cairo_region*, %struct._cairo_region** %retval
  ret %struct._cairo_region* %31
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
define internal void @gimp_canvas_rectangle_transform(%struct._GimpCanvasItem* %item, %struct._GimpDisplayShell* %shell, double* %x, double* %y, double* %w, double* %h) #3 {
entry:
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %x.addr = alloca double*, align 8
  %y.addr = alloca double*, align 8
  %w.addr = alloca double*, align 8
  %h.addr = alloca double*, align 8
  %private = alloca %struct._GimpCanvasRectanglePrivate*, align 8
  %x1 = alloca double, align 8
  %y1 = alloca double, align 8
  %x2 = alloca double, align 8
  %y2 = alloca double, align 8
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store double* %x, double** %x.addr, align 8
  store double* %y, double** %y.addr, align 8
  store double* %w, double** %w.addr, align 8
  store double* %h, double** %h.addr, align 8
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_rectangle_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasRectanglePrivate*
  store %struct._GimpCanvasRectanglePrivate* %2, %struct._GimpCanvasRectanglePrivate** %private, align 8
  %3 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %4 = load %struct._GimpCanvasRectanglePrivate*, %struct._GimpCanvasRectanglePrivate** %private, align 8
  %x3 = getelementptr inbounds %struct._GimpCanvasRectanglePrivate, %struct._GimpCanvasRectanglePrivate* %4, i32 0, i32 0
  %5 = load double, double* %x3, align 8
  %6 = load %struct._GimpCanvasRectanglePrivate*, %struct._GimpCanvasRectanglePrivate** %private, align 8
  %x4 = getelementptr inbounds %struct._GimpCanvasRectanglePrivate, %struct._GimpCanvasRectanglePrivate* %6, i32 0, i32 0
  %7 = load double, double* %x4, align 8
  %8 = load %struct._GimpCanvasRectanglePrivate*, %struct._GimpCanvasRectanglePrivate** %private, align 8
  %width = getelementptr inbounds %struct._GimpCanvasRectanglePrivate, %struct._GimpCanvasRectanglePrivate* %8, i32 0, i32 2
  %9 = load double, double* %width, align 8
  %add = fadd double %7, %9
  %cmp = fcmp olt double %5, %add
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %10 = load %struct._GimpCanvasRectanglePrivate*, %struct._GimpCanvasRectanglePrivate** %private, align 8
  %x5 = getelementptr inbounds %struct._GimpCanvasRectanglePrivate, %struct._GimpCanvasRectanglePrivate* %10, i32 0, i32 0
  %11 = load double, double* %x5, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %12 = load %struct._GimpCanvasRectanglePrivate*, %struct._GimpCanvasRectanglePrivate** %private, align 8
  %x6 = getelementptr inbounds %struct._GimpCanvasRectanglePrivate, %struct._GimpCanvasRectanglePrivate* %12, i32 0, i32 0
  %13 = load double, double* %x6, align 8
  %14 = load %struct._GimpCanvasRectanglePrivate*, %struct._GimpCanvasRectanglePrivate** %private, align 8
  %width7 = getelementptr inbounds %struct._GimpCanvasRectanglePrivate, %struct._GimpCanvasRectanglePrivate* %14, i32 0, i32 2
  %15 = load double, double* %width7, align 8
  %add8 = fadd double %13, %15
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %11, %cond.true ], [ %add8, %cond.false ]
  %16 = load %struct._GimpCanvasRectanglePrivate*, %struct._GimpCanvasRectanglePrivate** %private, align 8
  %y9 = getelementptr inbounds %struct._GimpCanvasRectanglePrivate, %struct._GimpCanvasRectanglePrivate* %16, i32 0, i32 1
  %17 = load double, double* %y9, align 8
  %18 = load %struct._GimpCanvasRectanglePrivate*, %struct._GimpCanvasRectanglePrivate** %private, align 8
  %y10 = getelementptr inbounds %struct._GimpCanvasRectanglePrivate, %struct._GimpCanvasRectanglePrivate* %18, i32 0, i32 1
  %19 = load double, double* %y10, align 8
  %20 = load %struct._GimpCanvasRectanglePrivate*, %struct._GimpCanvasRectanglePrivate** %private, align 8
  %height = getelementptr inbounds %struct._GimpCanvasRectanglePrivate, %struct._GimpCanvasRectanglePrivate* %20, i32 0, i32 3
  %21 = load double, double* %height, align 8
  %add11 = fadd double %19, %21
  %cmp12 = fcmp olt double %17, %add11
  br i1 %cmp12, label %cond.true.13, label %cond.false.15

cond.true.13:                                     ; preds = %cond.end
  %22 = load %struct._GimpCanvasRectanglePrivate*, %struct._GimpCanvasRectanglePrivate** %private, align 8
  %y14 = getelementptr inbounds %struct._GimpCanvasRectanglePrivate, %struct._GimpCanvasRectanglePrivate* %22, i32 0, i32 1
  %23 = load double, double* %y14, align 8
  br label %cond.end.19

cond.false.15:                                    ; preds = %cond.end
  %24 = load %struct._GimpCanvasRectanglePrivate*, %struct._GimpCanvasRectanglePrivate** %private, align 8
  %y16 = getelementptr inbounds %struct._GimpCanvasRectanglePrivate, %struct._GimpCanvasRectanglePrivate* %24, i32 0, i32 1
  %25 = load double, double* %y16, align 8
  %26 = load %struct._GimpCanvasRectanglePrivate*, %struct._GimpCanvasRectanglePrivate** %private, align 8
  %height17 = getelementptr inbounds %struct._GimpCanvasRectanglePrivate, %struct._GimpCanvasRectanglePrivate* %26, i32 0, i32 3
  %27 = load double, double* %height17, align 8
  %add18 = fadd double %25, %27
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.15, %cond.true.13
  %cond20 = phi double [ %23, %cond.true.13 ], [ %add18, %cond.false.15 ]
  call void @gimp_display_shell_transform_xy_f(%struct._GimpDisplayShell* %3, double %cond, double %cond20, double* %x1, double* %y1)
  %28 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %29 = load %struct._GimpCanvasRectanglePrivate*, %struct._GimpCanvasRectanglePrivate** %private, align 8
  %x21 = getelementptr inbounds %struct._GimpCanvasRectanglePrivate, %struct._GimpCanvasRectanglePrivate* %29, i32 0, i32 0
  %30 = load double, double* %x21, align 8
  %31 = load %struct._GimpCanvasRectanglePrivate*, %struct._GimpCanvasRectanglePrivate** %private, align 8
  %x22 = getelementptr inbounds %struct._GimpCanvasRectanglePrivate, %struct._GimpCanvasRectanglePrivate* %31, i32 0, i32 0
  %32 = load double, double* %x22, align 8
  %33 = load %struct._GimpCanvasRectanglePrivate*, %struct._GimpCanvasRectanglePrivate** %private, align 8
  %width23 = getelementptr inbounds %struct._GimpCanvasRectanglePrivate, %struct._GimpCanvasRectanglePrivate* %33, i32 0, i32 2
  %34 = load double, double* %width23, align 8
  %add24 = fadd double %32, %34
  %cmp25 = fcmp ogt double %30, %add24
  br i1 %cmp25, label %cond.true.26, label %cond.false.28

cond.true.26:                                     ; preds = %cond.end.19
  %35 = load %struct._GimpCanvasRectanglePrivate*, %struct._GimpCanvasRectanglePrivate** %private, align 8
  %x27 = getelementptr inbounds %struct._GimpCanvasRectanglePrivate, %struct._GimpCanvasRectanglePrivate* %35, i32 0, i32 0
  %36 = load double, double* %x27, align 8
  br label %cond.end.32

cond.false.28:                                    ; preds = %cond.end.19
  %37 = load %struct._GimpCanvasRectanglePrivate*, %struct._GimpCanvasRectanglePrivate** %private, align 8
  %x29 = getelementptr inbounds %struct._GimpCanvasRectanglePrivate, %struct._GimpCanvasRectanglePrivate* %37, i32 0, i32 0
  %38 = load double, double* %x29, align 8
  %39 = load %struct._GimpCanvasRectanglePrivate*, %struct._GimpCanvasRectanglePrivate** %private, align 8
  %width30 = getelementptr inbounds %struct._GimpCanvasRectanglePrivate, %struct._GimpCanvasRectanglePrivate* %39, i32 0, i32 2
  %40 = load double, double* %width30, align 8
  %add31 = fadd double %38, %40
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.28, %cond.true.26
  %cond33 = phi double [ %36, %cond.true.26 ], [ %add31, %cond.false.28 ]
  %41 = load %struct._GimpCanvasRectanglePrivate*, %struct._GimpCanvasRectanglePrivate** %private, align 8
  %y34 = getelementptr inbounds %struct._GimpCanvasRectanglePrivate, %struct._GimpCanvasRectanglePrivate* %41, i32 0, i32 1
  %42 = load double, double* %y34, align 8
  %43 = load %struct._GimpCanvasRectanglePrivate*, %struct._GimpCanvasRectanglePrivate** %private, align 8
  %y35 = getelementptr inbounds %struct._GimpCanvasRectanglePrivate, %struct._GimpCanvasRectanglePrivate* %43, i32 0, i32 1
  %44 = load double, double* %y35, align 8
  %45 = load %struct._GimpCanvasRectanglePrivate*, %struct._GimpCanvasRectanglePrivate** %private, align 8
  %height36 = getelementptr inbounds %struct._GimpCanvasRectanglePrivate, %struct._GimpCanvasRectanglePrivate* %45, i32 0, i32 3
  %46 = load double, double* %height36, align 8
  %add37 = fadd double %44, %46
  %cmp38 = fcmp ogt double %42, %add37
  br i1 %cmp38, label %cond.true.39, label %cond.false.41

cond.true.39:                                     ; preds = %cond.end.32
  %47 = load %struct._GimpCanvasRectanglePrivate*, %struct._GimpCanvasRectanglePrivate** %private, align 8
  %y40 = getelementptr inbounds %struct._GimpCanvasRectanglePrivate, %struct._GimpCanvasRectanglePrivate* %47, i32 0, i32 1
  %48 = load double, double* %y40, align 8
  br label %cond.end.45

cond.false.41:                                    ; preds = %cond.end.32
  %49 = load %struct._GimpCanvasRectanglePrivate*, %struct._GimpCanvasRectanglePrivate** %private, align 8
  %y42 = getelementptr inbounds %struct._GimpCanvasRectanglePrivate, %struct._GimpCanvasRectanglePrivate* %49, i32 0, i32 1
  %50 = load double, double* %y42, align 8
  %51 = load %struct._GimpCanvasRectanglePrivate*, %struct._GimpCanvasRectanglePrivate** %private, align 8
  %height43 = getelementptr inbounds %struct._GimpCanvasRectanglePrivate, %struct._GimpCanvasRectanglePrivate* %51, i32 0, i32 3
  %52 = load double, double* %height43, align 8
  %add44 = fadd double %50, %52
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.41, %cond.true.39
  %cond46 = phi double [ %48, %cond.true.39 ], [ %add44, %cond.false.41 ]
  call void @gimp_display_shell_transform_xy_f(%struct._GimpDisplayShell* %28, double %cond33, double %cond46, double* %x2, double* %y2)
  %53 = load double, double* %x1, align 8
  %call47 = call double @floor(double %53) #6
  store double %call47, double* %x1, align 8
  %54 = load double, double* %y1, align 8
  %call48 = call double @floor(double %54) #6
  store double %call48, double* %y1, align 8
  %55 = load double, double* %x2, align 8
  %call49 = call double @ceil(double %55) #6
  store double %call49, double* %x2, align 8
  %56 = load double, double* %y2, align 8
  %call50 = call double @ceil(double %56) #6
  store double %call50, double* %y2, align 8
  %57 = load %struct._GimpCanvasRectanglePrivate*, %struct._GimpCanvasRectanglePrivate** %private, align 8
  %filled = getelementptr inbounds %struct._GimpCanvasRectanglePrivate, %struct._GimpCanvasRectanglePrivate* %57, i32 0, i32 4
  %58 = load i32, i32* %filled, align 4
  %tobool = icmp ne i32 %58, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.45
  %59 = load double, double* %x1, align 8
  %60 = load double*, double** %x.addr, align 8
  store double %59, double* %60, align 8
  %61 = load double, double* %y1, align 8
  %62 = load double*, double** %y.addr, align 8
  store double %61, double* %62, align 8
  %63 = load double, double* %x2, align 8
  %64 = load double, double* %x1, align 8
  %sub = fsub double %63, %64
  %65 = load double*, double** %w.addr, align 8
  store double %sub, double* %65, align 8
  %66 = load double, double* %y2, align 8
  %67 = load double, double* %y1, align 8
  %sub51 = fsub double %66, %67
  %68 = load double*, double** %h.addr, align 8
  store double %sub51, double* %68, align 8
  br label %if.end

if.else:                                          ; preds = %cond.end.45
  %69 = load double, double* %x1, align 8
  %add52 = fadd double %69, 5.000000e-01
  %70 = load double*, double** %x.addr, align 8
  store double %add52, double* %70, align 8
  %71 = load double, double* %y1, align 8
  %add53 = fadd double %71, 5.000000e-01
  %72 = load double*, double** %y.addr, align 8
  store double %add53, double* %72, align 8
  %73 = load double, double* %x2, align 8
  %sub54 = fsub double %73, 5.000000e-01
  %74 = load double*, double** %x.addr, align 8
  %75 = load double, double* %74, align 8
  %sub55 = fsub double %sub54, %75
  %76 = load double*, double** %w.addr, align 8
  store double %sub55, double* %76, align 8
  %77 = load double, double* %y2, align 8
  %sub56 = fsub double %77, 5.000000e-01
  %78 = load double*, double** %y.addr, align 8
  %79 = load double, double* %78, align 8
  %sub57 = fsub double %sub56, %79
  %80 = load double*, double** %h.addr, align 8
  store double %sub57, double* %80, align 8
  %81 = load double*, double** %w.addr, align 8
  %82 = load double, double* %81, align 8
  %cmp58 = fcmp ogt double 0.000000e+00, %82
  br i1 %cmp58, label %cond.true.59, label %cond.false.60

cond.true.59:                                     ; preds = %if.else
  br label %cond.end.61

cond.false.60:                                    ; preds = %if.else
  %83 = load double*, double** %w.addr, align 8
  %84 = load double, double* %83, align 8
  br label %cond.end.61

cond.end.61:                                      ; preds = %cond.false.60, %cond.true.59
  %cond62 = phi double [ 0.000000e+00, %cond.true.59 ], [ %84, %cond.false.60 ]
  %85 = load double*, double** %w.addr, align 8
  store double %cond62, double* %85, align 8
  %86 = load double*, double** %h.addr, align 8
  %87 = load double, double* %86, align 8
  %cmp63 = fcmp ogt double 0.000000e+00, %87
  br i1 %cmp63, label %cond.true.64, label %cond.false.65

cond.true.64:                                     ; preds = %cond.end.61
  br label %cond.end.66

cond.false.65:                                    ; preds = %cond.end.61
  %88 = load double*, double** %h.addr, align 8
  %89 = load double, double* %88, align 8
  br label %cond.end.66

cond.end.66:                                      ; preds = %cond.false.65, %cond.true.64
  %cond67 = phi double [ 0.000000e+00, %cond.true.64 ], [ %89, %cond.false.65 ]
  %90 = load double*, double** %h.addr, align 8
  store double %cond67, double* %90, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end.66, %if.then
  ret void
}

declare void @cairo_rectangle(%struct._cairo*, double, double, double, double) #1

declare void @_gimp_canvas_item_fill(%struct._GimpCanvasItem*, %struct._cairo*) #1

declare void @_gimp_canvas_item_stroke(%struct._GimpCanvasItem*, %struct._cairo*) #1

declare void @gimp_display_shell_transform_xy_f(%struct._GimpDisplayShell*, double, double, double*, double*) #1

; Function Attrs: nounwind readnone
declare double @floor(double) #2

; Function Attrs: nounwind readnone
declare double @ceil(double) #2

declare %struct._cairo_region* @cairo_region_create_rectangle(%struct._cairo_rectangle_int*) #1

declare i32 @cairo_region_union_rectangle(%struct._cairo_region*, %struct._cairo_rectangle_int*) #1

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
