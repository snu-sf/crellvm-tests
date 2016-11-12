; ModuleID = './app/display/gimpcanvascorner.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpCanvasCornerClass = type { %struct._GimpCanvasItemClass }
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
%struct._GimpCanvasCorner = type { %struct._GimpCanvasItem }
%struct._GimpCanvasCornerPrivate = type { double, double, double, double, i32, i32, i32, i32 }
%struct._cairo_rectangle_int = type { i32, i32, i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_canvas_corner_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"GimpCanvasCorner\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Display\00", align 1
@__func__.gimp_canvas_corner_new = private unnamed_addr constant [23 x i8] c"gimp_canvas_corner_new\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"GIMP_IS_DISPLAY_SHELL (shell)\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"anchor\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"corner-width\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"corner-height\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"outside\00", align 1
@gimp_canvas_corner_parent_class = internal global i8* null, align 8
@GimpCanvasCorner_private_offset = internal global i32 0, align 4
@.str.12 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"gimpcanvascorner.c\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"property\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_canvas_corner_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_canvas_corner_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_canvas_corner_get_type.g_define_type_id__volatile to i8*))
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
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 208, void (i8*, i8*)* bitcast (void (i8*)* @gimp_canvas_corner_class_intern_init to void (i8*, i8*)*), i32 32, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpCanvasCorner*)* @gimp_canvas_corner_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_canvas_corner_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_canvas_corner_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_canvas_item_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_corner_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_canvas_corner_parent_class, align 8
  %1 = load i32, i32* @GimpCanvasCorner_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpCanvasCorner_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpCanvasCornerClass*
  call void @gimp_canvas_corner_class_init(%struct._GimpCanvasCornerClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_corner_init(%struct._GimpCanvasCorner* %corner) #3 {
entry:
  %corner.addr = alloca %struct._GimpCanvasCorner*, align 8
  store %struct._GimpCanvasCorner* %corner, %struct._GimpCanvasCorner** %corner.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpCanvasItem* @gimp_canvas_corner_new(%struct._GimpDisplayShell* %shell, double %x, double %y, double %width, double %height, i32 %anchor, i32 %corner_width, i32 %corner_height, i32 %outside) #3 {
entry:
  %retval = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %width.addr = alloca double, align 8
  %height.addr = alloca double, align 8
  %anchor.addr = alloca i32, align 4
  %corner_width.addr = alloca i32, align 4
  %corner_height.addr = alloca i32, align 4
  %outside.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store double %width, double* %width.addr, align 8
  store double %height, double* %height.addr, align 8
  store i32 %anchor, i32* %anchor.addr, align 4
  store i32 %corner_width, i32* %corner_width.addr, align 4
  store i32 %corner_height, i32* %corner_height.addr, align 4
  store i32 %outside, i32* %outside.addr, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_canvas_corner_new, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_canvas_corner_get_type() #6
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %14 = load double, double* %x.addr, align 8
  %15 = load double, double* %y.addr, align 8
  %16 = load double, double* %width.addr, align 8
  %17 = load double, double* %height.addr, align 8
  %18 = load i32, i32* %anchor.addr, align 4
  %19 = load i32, i32* %corner_width.addr, align 4
  %20 = load i32, i32* %corner_height.addr, align 4
  %21 = load i32, i32* %outside.addr, align 4
  %call12 = call i8* (i64, i8*, ...) @g_object_new(i64 %call11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), %struct._GimpDisplayShell* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), double %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), double %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), double %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), double %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32 %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i32 %21, i8* null)
  %22 = bitcast i8* %call12 to %struct._GimpCanvasItem*
  store %struct._GimpCanvasItem* %22, %struct._GimpCanvasItem** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %23 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %retval
  ret %struct._GimpCanvasItem* %23
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
define internal void @gimp_canvas_corner_class_init(%struct._GimpCanvasCornerClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpCanvasCornerClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %item_class = alloca %struct._GimpCanvasItemClass*, align 8
  store %struct._GimpCanvasCornerClass* %klass, %struct._GimpCanvasCornerClass** %klass.addr, align 8
  %0 = load %struct._GimpCanvasCornerClass*, %struct._GimpCanvasCornerClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpCanvasCornerClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpCanvasCornerClass*, %struct._GimpCanvasCornerClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpCanvasCornerClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_canvas_item_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpCanvasItemClass*
  store %struct._GimpCanvasItemClass* %5, %struct._GimpCanvasItemClass** %item_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_canvas_corner_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_canvas_corner_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %8 = load %struct._GimpCanvasItemClass*, %struct._GimpCanvasItemClass** %item_class, align 8
  %draw = getelementptr inbounds %struct._GimpCanvasItemClass, %struct._GimpCanvasItemClass* %8, i32 0, i32 2
  store void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)* @gimp_canvas_corner_draw, void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)** %draw, align 8
  %9 = load %struct._GimpCanvasItemClass*, %struct._GimpCanvasItemClass** %item_class, align 8
  %get_extents = getelementptr inbounds %struct._GimpCanvasItemClass, %struct._GimpCanvasItemClass* %9, i32 0, i32 3
  store %struct._cairo_region* (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*)* @gimp_canvas_corner_get_extents, %struct._cairo_region* (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*)** %get_extents, align 8
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
  %call7 = call i64 @gimp_handle_anchor_get_type() #6
  %call8 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* null, i64 %call7, i32 0, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %14, i32 5, %struct._GParamSpec* %call8)
  %15 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call9 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* null, i32 3, i32 262144, i32 3, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %15, i32 6, %struct._GParamSpec* %call9)
  %16 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call10 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i8* null, i8* null, i32 3, i32 262144, i32 3, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %16, i32 7, %struct._GParamSpec* %call10)
  %17 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call11 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i8* null, i8* null, i32 0, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %17, i32 8, %struct._GParamSpec* %call11)
  %18 = load %struct._GimpCanvasCornerClass*, %struct._GimpCanvasCornerClass** %klass.addr, align 8
  %19 = bitcast %struct._GimpCanvasCornerClass* %18 to i8*
  call void @g_type_class_add_private(i8* %19, i64 48)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_corner_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpCanvasCornerPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_corner_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasCornerPrivate*
  store %struct._GimpCanvasCornerPrivate* %2, %struct._GimpCanvasCornerPrivate** %private, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.5
    i32 4, label %sw.bb.7
    i32 5, label %sw.bb.9
    i32 6, label %sw.bb.11
    i32 7, label %sw.bb.13
    i32 8, label %sw.bb.15
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call double @g_value_get_double(%struct._GValue* %4)
  %5 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %x = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %5, i32 0, i32 0
  store double %call2, double* %x, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %6 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call double @g_value_get_double(%struct._GValue* %6)
  %7 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %y = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %7, i32 0, i32 1
  store double %call4, double* %y, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call double @g_value_get_double(%struct._GValue* %8)
  %9 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %width = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %9, i32 0, i32 2
  store double %call6, double* %width, align 8
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call8 = call double @g_value_get_double(%struct._GValue* %10)
  %11 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %height = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %11, i32 0, i32 3
  store double %call8, double* %height, align 8
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %12 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call10 = call i32 @g_value_get_enum(%struct._GValue* %12)
  %13 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %anchor = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %13, i32 0, i32 4
  store i32 %call10, i32* %anchor, align 4
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %14 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call12 = call i32 @g_value_get_int(%struct._GValue* %14)
  %15 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %corner_width = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %15, i32 0, i32 5
  store i32 %call12, i32* %corner_width, align 4
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call14 = call i32 @g_value_get_int(%struct._GValue* %16)
  %17 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %corner_height = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %17, i32 0, i32 6
  store i32 %call14, i32* %corner_height, align 4
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  %18 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call16 = call i32 @g_value_get_boolean(%struct._GValue* %18)
  %19 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %outside = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %19, i32 0, i32 7
  store i32 %call16, i32* %outside, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %20 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %20, %struct._GObject** %_glib__object, align 8
  %21 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %21, %struct._GParamSpec** %_glib__pspec, align 8
  %22 = load i32, i32* %property_id.addr, align 4
  store i32 %22, i32* %_glib__property_id, align 4
  %23 = load i32, i32* %_glib__property_id, align 4
  %24 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %24, i32 0, i32 1
  %25 = load i8*, i8** %name, align 8
  %26 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %27 = bitcast %struct._GParamSpec* %26 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %27, i32 0, i32 0
  %28 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %28, i32 0, i32 0
  %29 = load i64, i64* %g_type, align 8
  %call17 = call i8* @g_type_name(i64 %29)
  %30 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %31 = bitcast %struct._GObject* %30 to %struct._GTypeInstance*
  %g_class18 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class18, align 8
  %g_type19 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %32, i32 0, i32 0
  %33 = load i64, i64* %g_type19, align 8
  %call20 = call i8* @g_type_name(i64 %33)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0), i32 194, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i32 %23, i8* %25, i8* %call17, i8* %call20)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.15, %sw.bb.13, %sw.bb.11, %sw.bb.9, %sw.bb.7, %sw.bb.5, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_corner_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpCanvasCornerPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_corner_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasCornerPrivate*
  store %struct._GimpCanvasCornerPrivate* %2, %struct._GimpCanvasCornerPrivate** %private, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.4
    i32 5, label %sw.bb.5
    i32 6, label %sw.bb.6
    i32 7, label %sw.bb.7
    i32 8, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %x = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %5, i32 0, i32 0
  %6 = load double, double* %x, align 8
  call void @g_value_set_double(%struct._GValue* %4, double %6)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %y = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %8, i32 0, i32 1
  %9 = load double, double* %y, align 8
  call void @g_value_set_double(%struct._GValue* %7, double %9)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %11 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %width = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %11, i32 0, i32 2
  %12 = load double, double* %width, align 8
  call void @g_value_set_double(%struct._GValue* %10, double %12)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %13 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %14 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %height = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %14, i32 0, i32 3
  %15 = load double, double* %height, align 8
  call void @g_value_set_double(%struct._GValue* %13, double %15)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %17 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %anchor = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %17, i32 0, i32 4
  %18 = load i32, i32* %anchor, align 4
  call void @g_value_set_enum(%struct._GValue* %16, i32 %18)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %19 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %20 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %corner_width = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %20, i32 0, i32 5
  %21 = load i32, i32* %corner_width, align 4
  call void @g_value_set_int(%struct._GValue* %19, i32 %21)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %22 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %23 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %corner_height = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %23, i32 0, i32 6
  %24 = load i32, i32* %corner_height, align 4
  call void @g_value_set_int(%struct._GValue* %22, i32 %24)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %25 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %26 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %outside = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %26, i32 0, i32 7
  %27 = load i32, i32* %outside, align 4
  call void @g_value_set_boolean(%struct._GValue* %25, i32 %27)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %28 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %28, %struct._GObject** %_glib__object, align 8
  %29 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %29, %struct._GParamSpec** %_glib__pspec, align 8
  %30 = load i32, i32* %property_id.addr, align 4
  store i32 %30, i32* %_glib__property_id, align 4
  %31 = load i32, i32* %_glib__property_id, align 4
  %32 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %32, i32 0, i32 1
  %33 = load i8*, i8** %name, align 8
  %34 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %35 = bitcast %struct._GParamSpec* %34 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %35, i32 0, i32 0
  %36 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %36, i32 0, i32 0
  %37 = load i64, i64* %g_type, align 8
  %call9 = call i8* @g_type_name(i64 %37)
  %38 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %39 = bitcast %struct._GObject* %38 to %struct._GTypeInstance*
  %g_class10 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %39, i32 0, i32 0
  %40 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class10, align 8
  %g_type11 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %40, i32 0, i32 0
  %41 = load i64, i64* %g_type11, align 8
  %call12 = call i8* @g_type_name(i64 %41)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0), i32 235, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i32 %31, i8* %33, i8* %call9, i8* %call12)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_corner_draw(%struct._GimpCanvasItem* %item, %struct._GimpDisplayShell* %shell, %struct._cairo* %cr) #3 {
entry:
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  %w = alloca double, align 8
  %h = alloca double, align 8
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_canvas_corner_transform(%struct._GimpCanvasItem* %0, %struct._GimpDisplayShell* %1, double* %x, double* %y, double* %w, double* %h)
  %2 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %3 = load double, double* %x, align 8
  %4 = load double, double* %y, align 8
  %5 = load double, double* %w, align 8
  %6 = load double, double* %h, align 8
  call void @cairo_rectangle(%struct._cairo* %2, double %3, double %4, double %5, double %6)
  %7 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %8 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @_gimp_canvas_item_stroke(%struct._GimpCanvasItem* %7, %struct._cairo* %8)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._cairo_region* @gimp_canvas_corner_get_extents(%struct._GimpCanvasItem* %item, %struct._GimpDisplayShell* %shell) #3 {
entry:
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %rectangle = alloca %struct._cairo_rectangle_int, align 4
  %x = alloca double, align 8
  %y = alloca double, align 8
  %w = alloca double, align 8
  %h = alloca double, align 8
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_canvas_corner_transform(%struct._GimpCanvasItem* %0, %struct._GimpDisplayShell* %1, double* %x, double* %y, double* %w, double* %h)
  %2 = load double, double* %x, align 8
  %sub = fsub double %2, 1.500000e+00
  %call = call double @floor(double %sub) #6
  %conv = fptosi double %call to i32
  %x1 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 0
  store i32 %conv, i32* %x1, align 4
  %3 = load double, double* %y, align 8
  %sub2 = fsub double %3, 1.500000e+00
  %call3 = call double @floor(double %sub2) #6
  %conv4 = fptosi double %call3 to i32
  %y5 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 1
  store i32 %conv4, i32* %y5, align 4
  %4 = load double, double* %w, align 8
  %add = fadd double %4, 3.000000e+00
  %call6 = call double @ceil(double %add) #6
  %conv7 = fptosi double %call6 to i32
  %width = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 2
  store i32 %conv7, i32* %width, align 4
  %5 = load double, double* %h, align 8
  %add8 = fadd double %5, 3.000000e+00
  %call9 = call double @ceil(double %add8) #6
  %conv10 = fptosi double %call9 to i32
  %height = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 3
  store i32 %conv10, i32* %height, align 4
  %call11 = call %struct._cairo_region* @cairo_region_create_rectangle(%struct._cairo_rectangle_int* %rectangle)
  ret %struct._cairo_region* %call11
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_handle_anchor_get_type() #2

declare %struct._GParamSpec* @g_param_spec_int(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

declare void @g_type_class_add_private(i8*, i64) #1

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

declare double @g_value_get_double(%struct._GValue*) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

declare i32 @g_value_get_int(%struct._GValue*) #1

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

declare void @g_value_set_enum(%struct._GValue*, i32) #1

declare void @g_value_set_int(%struct._GValue*, i32) #1

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_corner_transform(%struct._GimpCanvasItem* %item, %struct._GimpDisplayShell* %shell, double* %x, double* %y, double* %w, double* %h) #3 {
entry:
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %x.addr = alloca double*, align 8
  %y.addr = alloca double*, align 8
  %w.addr = alloca double*, align 8
  %h.addr = alloca double*, align 8
  %private = alloca %struct._GimpCanvasCornerPrivate*, align 8
  %rx = alloca double, align 8
  %ry = alloca double, align 8
  %rw = alloca double, align 8
  %rh = alloca double, align 8
  %top_and_bottom_handle_x_offset = alloca i32, align 4
  %left_and_right_handle_y_offset = alloca i32, align 4
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store double* %x, double** %x.addr, align 8
  store double* %y, double** %y.addr, align 8
  store double* %w, double** %w.addr, align 8
  store double* %h, double** %h.addr, align 8
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_corner_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasCornerPrivate*
  store %struct._GimpCanvasCornerPrivate* %2, %struct._GimpCanvasCornerPrivate** %private, align 8
  %3 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %4 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %x2 = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %4, i32 0, i32 0
  %5 = load double, double* %x2, align 8
  %6 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %x3 = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %6, i32 0, i32 0
  %7 = load double, double* %x3, align 8
  %8 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %width = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %8, i32 0, i32 2
  %9 = load double, double* %width, align 8
  %add = fadd double %7, %9
  %cmp = fcmp olt double %5, %add
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %10 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %x4 = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %10, i32 0, i32 0
  %11 = load double, double* %x4, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %12 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %x5 = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %12, i32 0, i32 0
  %13 = load double, double* %x5, align 8
  %14 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %width6 = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %14, i32 0, i32 2
  %15 = load double, double* %width6, align 8
  %add7 = fadd double %13, %15
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %11, %cond.true ], [ %add7, %cond.false ]
  %16 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %y8 = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %16, i32 0, i32 1
  %17 = load double, double* %y8, align 8
  %18 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %y9 = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %18, i32 0, i32 1
  %19 = load double, double* %y9, align 8
  %20 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %height = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %20, i32 0, i32 3
  %21 = load double, double* %height, align 8
  %add10 = fadd double %19, %21
  %cmp11 = fcmp olt double %17, %add10
  br i1 %cmp11, label %cond.true.12, label %cond.false.14

cond.true.12:                                     ; preds = %cond.end
  %22 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %y13 = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %22, i32 0, i32 1
  %23 = load double, double* %y13, align 8
  br label %cond.end.18

cond.false.14:                                    ; preds = %cond.end
  %24 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %y15 = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %24, i32 0, i32 1
  %25 = load double, double* %y15, align 8
  %26 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %height16 = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %26, i32 0, i32 3
  %27 = load double, double* %height16, align 8
  %add17 = fadd double %25, %27
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.false.14, %cond.true.12
  %cond19 = phi double [ %23, %cond.true.12 ], [ %add17, %cond.false.14 ]
  call void @gimp_display_shell_transform_xy_f(%struct._GimpDisplayShell* %3, double %cond, double %cond19, double* %rx, double* %ry)
  %28 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %29 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %x20 = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %29, i32 0, i32 0
  %30 = load double, double* %x20, align 8
  %31 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %x21 = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %31, i32 0, i32 0
  %32 = load double, double* %x21, align 8
  %33 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %width22 = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %33, i32 0, i32 2
  %34 = load double, double* %width22, align 8
  %add23 = fadd double %32, %34
  %cmp24 = fcmp ogt double %30, %add23
  br i1 %cmp24, label %cond.true.25, label %cond.false.27

cond.true.25:                                     ; preds = %cond.end.18
  %35 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %x26 = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %35, i32 0, i32 0
  %36 = load double, double* %x26, align 8
  br label %cond.end.31

cond.false.27:                                    ; preds = %cond.end.18
  %37 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %x28 = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %37, i32 0, i32 0
  %38 = load double, double* %x28, align 8
  %39 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %width29 = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %39, i32 0, i32 2
  %40 = load double, double* %width29, align 8
  %add30 = fadd double %38, %40
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.27, %cond.true.25
  %cond32 = phi double [ %36, %cond.true.25 ], [ %add30, %cond.false.27 ]
  %41 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %y33 = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %41, i32 0, i32 1
  %42 = load double, double* %y33, align 8
  %43 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %y34 = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %43, i32 0, i32 1
  %44 = load double, double* %y34, align 8
  %45 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %height35 = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %45, i32 0, i32 3
  %46 = load double, double* %height35, align 8
  %add36 = fadd double %44, %46
  %cmp37 = fcmp ogt double %42, %add36
  br i1 %cmp37, label %cond.true.38, label %cond.false.40

cond.true.38:                                     ; preds = %cond.end.31
  %47 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %y39 = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %47, i32 0, i32 1
  %48 = load double, double* %y39, align 8
  br label %cond.end.44

cond.false.40:                                    ; preds = %cond.end.31
  %49 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %y41 = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %49, i32 0, i32 1
  %50 = load double, double* %y41, align 8
  %51 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %height42 = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %51, i32 0, i32 3
  %52 = load double, double* %height42, align 8
  %add43 = fadd double %50, %52
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.false.40, %cond.true.38
  %cond45 = phi double [ %48, %cond.true.38 ], [ %add43, %cond.false.40 ]
  call void @gimp_display_shell_transform_xy_f(%struct._GimpDisplayShell* %28, double %cond32, double %cond45, double* %rw, double* %rh)
  %53 = load double, double* %rx, align 8
  %54 = load double, double* %rw, align 8
  %sub = fsub double %54, %53
  store double %sub, double* %rw, align 8
  %55 = load double, double* %ry, align 8
  %56 = load double, double* %rh, align 8
  %sub46 = fsub double %56, %55
  store double %sub46, double* %rh, align 8
  %57 = load double, double* %rx, align 8
  %call47 = call double @floor(double %57) #6
  %add48 = fadd double %call47, 5.000000e-01
  store double %add48, double* %rx, align 8
  %58 = load double, double* %ry, align 8
  %call49 = call double @floor(double %58) #6
  %add50 = fadd double %call49, 5.000000e-01
  store double %add50, double* %ry, align 8
  %59 = load double, double* %rw, align 8
  %call51 = call double @ceil(double %59) #6
  %sub52 = fsub double %call51, 1.000000e+00
  store double %sub52, double* %rw, align 8
  %60 = load double, double* %rh, align 8
  %call53 = call double @ceil(double %60) #6
  %sub54 = fsub double %call53, 1.000000e+00
  store double %sub54, double* %rh, align 8
  %61 = load double, double* %rw, align 8
  %62 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %corner_width = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %62, i32 0, i32 5
  %63 = load i32, i32* %corner_width, align 4
  %conv = sitofp i32 %63 to double
  %sub55 = fsub double %61, %conv
  %div = fdiv double %sub55, 2.000000e+00
  %conv56 = fptosi double %div to i32
  store i32 %conv56, i32* %top_and_bottom_handle_x_offset, align 4
  %64 = load double, double* %rh, align 8
  %65 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %corner_height = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %65, i32 0, i32 6
  %66 = load i32, i32* %corner_height, align 4
  %conv57 = sitofp i32 %66 to double
  %sub58 = fsub double %64, %conv57
  %div59 = fdiv double %sub58, 2.000000e+00
  %conv60 = fptosi double %div59 to i32
  store i32 %conv60, i32* %left_and_right_handle_y_offset, align 4
  %67 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %corner_width61 = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %67, i32 0, i32 5
  %68 = load i32, i32* %corner_width61, align 4
  %conv62 = sitofp i32 %68 to double
  %69 = load double*, double** %w.addr, align 8
  store double %conv62, double* %69, align 8
  %70 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %corner_height63 = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %70, i32 0, i32 6
  %71 = load i32, i32* %corner_height63, align 4
  %conv64 = sitofp i32 %71 to double
  %72 = load double*, double** %h.addr, align 8
  store double %conv64, double* %72, align 8
  %73 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %anchor = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %73, i32 0, i32 4
  %74 = load i32, i32* %anchor, align 4
  switch i32 %74, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb.65
    i32 3, label %sw.bb.72
    i32 5, label %sw.bb.86
    i32 6, label %sw.bb.100
    i32 1, label %sw.bb.116
    i32 4, label %sw.bb.127
    i32 7, label %sw.bb.140
    i32 8, label %sw.bb.151
  ]

sw.bb:                                            ; preds = %cond.end.44
  br label %sw.epilog

sw.bb.65:                                         ; preds = %cond.end.44
  %75 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %outside = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %75, i32 0, i32 7
  %76 = load i32, i32* %outside, align 4
  %tobool = icmp ne i32 %76, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.65
  %77 = load double, double* %rx, align 8
  %78 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %corner_width66 = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %78, i32 0, i32 5
  %79 = load i32, i32* %corner_width66, align 4
  %conv67 = sitofp i32 %79 to double
  %sub68 = fsub double %77, %conv67
  %80 = load double*, double** %x.addr, align 8
  store double %sub68, double* %80, align 8
  %81 = load double, double* %ry, align 8
  %82 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %corner_height69 = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %82, i32 0, i32 6
  %83 = load i32, i32* %corner_height69, align 4
  %conv70 = sitofp i32 %83 to double
  %sub71 = fsub double %81, %conv70
  %84 = load double*, double** %y.addr, align 8
  store double %sub71, double* %84, align 8
  br label %if.end

if.else:                                          ; preds = %sw.bb.65
  %85 = load double, double* %rx, align 8
  %86 = load double*, double** %x.addr, align 8
  store double %85, double* %86, align 8
  %87 = load double, double* %ry, align 8
  %88 = load double*, double** %y.addr, align 8
  store double %87, double* %88, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb.72:                                         ; preds = %cond.end.44
  %89 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %outside73 = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %89, i32 0, i32 7
  %90 = load i32, i32* %outside73, align 4
  %tobool74 = icmp ne i32 %90, 0
  br i1 %tobool74, label %if.then.75, label %if.else.80

if.then.75:                                       ; preds = %sw.bb.72
  %91 = load double, double* %rx, align 8
  %92 = load double, double* %rw, align 8
  %add76 = fadd double %91, %92
  %93 = load double*, double** %x.addr, align 8
  store double %add76, double* %93, align 8
  %94 = load double, double* %ry, align 8
  %95 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %corner_height77 = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %95, i32 0, i32 6
  %96 = load i32, i32* %corner_height77, align 4
  %conv78 = sitofp i32 %96 to double
  %sub79 = fsub double %94, %conv78
  %97 = load double*, double** %y.addr, align 8
  store double %sub79, double* %97, align 8
  br label %if.end.85

if.else.80:                                       ; preds = %sw.bb.72
  %98 = load double, double* %rx, align 8
  %99 = load double, double* %rw, align 8
  %add81 = fadd double %98, %99
  %100 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %corner_width82 = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %100, i32 0, i32 5
  %101 = load i32, i32* %corner_width82, align 4
  %conv83 = sitofp i32 %101 to double
  %sub84 = fsub double %add81, %conv83
  %102 = load double*, double** %x.addr, align 8
  store double %sub84, double* %102, align 8
  %103 = load double, double* %ry, align 8
  %104 = load double*, double** %y.addr, align 8
  store double %103, double* %104, align 8
  br label %if.end.85

if.end.85:                                        ; preds = %if.else.80, %if.then.75
  br label %sw.epilog

sw.bb.86:                                         ; preds = %cond.end.44
  %105 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %outside87 = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %105, i32 0, i32 7
  %106 = load i32, i32* %outside87, align 4
  %tobool88 = icmp ne i32 %106, 0
  br i1 %tobool88, label %if.then.89, label %if.else.94

if.then.89:                                       ; preds = %sw.bb.86
  %107 = load double, double* %rx, align 8
  %108 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %corner_width90 = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %108, i32 0, i32 5
  %109 = load i32, i32* %corner_width90, align 4
  %conv91 = sitofp i32 %109 to double
  %sub92 = fsub double %107, %conv91
  %110 = load double*, double** %x.addr, align 8
  store double %sub92, double* %110, align 8
  %111 = load double, double* %ry, align 8
  %112 = load double, double* %rh, align 8
  %add93 = fadd double %111, %112
  %113 = load double*, double** %y.addr, align 8
  store double %add93, double* %113, align 8
  br label %if.end.99

if.else.94:                                       ; preds = %sw.bb.86
  %114 = load double, double* %rx, align 8
  %115 = load double*, double** %x.addr, align 8
  store double %114, double* %115, align 8
  %116 = load double, double* %ry, align 8
  %117 = load double, double* %rh, align 8
  %add95 = fadd double %116, %117
  %118 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %corner_height96 = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %118, i32 0, i32 6
  %119 = load i32, i32* %corner_height96, align 4
  %conv97 = sitofp i32 %119 to double
  %sub98 = fsub double %add95, %conv97
  %120 = load double*, double** %y.addr, align 8
  store double %sub98, double* %120, align 8
  br label %if.end.99

if.end.99:                                        ; preds = %if.else.94, %if.then.89
  br label %sw.epilog

sw.bb.100:                                        ; preds = %cond.end.44
  %121 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %outside101 = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %121, i32 0, i32 7
  %122 = load i32, i32* %outside101, align 4
  %tobool102 = icmp ne i32 %122, 0
  br i1 %tobool102, label %if.then.103, label %if.else.106

if.then.103:                                      ; preds = %sw.bb.100
  %123 = load double, double* %rx, align 8
  %124 = load double, double* %rw, align 8
  %add104 = fadd double %123, %124
  %125 = load double*, double** %x.addr, align 8
  store double %add104, double* %125, align 8
  %126 = load double, double* %ry, align 8
  %127 = load double, double* %rh, align 8
  %add105 = fadd double %126, %127
  %128 = load double*, double** %y.addr, align 8
  store double %add105, double* %128, align 8
  br label %if.end.115

if.else.106:                                      ; preds = %sw.bb.100
  %129 = load double, double* %rx, align 8
  %130 = load double, double* %rw, align 8
  %add107 = fadd double %129, %130
  %131 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %corner_width108 = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %131, i32 0, i32 5
  %132 = load i32, i32* %corner_width108, align 4
  %conv109 = sitofp i32 %132 to double
  %sub110 = fsub double %add107, %conv109
  %133 = load double*, double** %x.addr, align 8
  store double %sub110, double* %133, align 8
  %134 = load double, double* %ry, align 8
  %135 = load double, double* %rh, align 8
  %add111 = fadd double %134, %135
  %136 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %corner_height112 = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %136, i32 0, i32 6
  %137 = load i32, i32* %corner_height112, align 4
  %conv113 = sitofp i32 %137 to double
  %sub114 = fsub double %add111, %conv113
  %138 = load double*, double** %y.addr, align 8
  store double %sub114, double* %138, align 8
  br label %if.end.115

if.end.115:                                       ; preds = %if.else.106, %if.then.103
  br label %sw.epilog

sw.bb.116:                                        ; preds = %cond.end.44
  %139 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %outside117 = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %139, i32 0, i32 7
  %140 = load i32, i32* %outside117, align 4
  %tobool118 = icmp ne i32 %140, 0
  br i1 %tobool118, label %if.then.119, label %if.else.123

if.then.119:                                      ; preds = %sw.bb.116
  %141 = load double, double* %rx, align 8
  %142 = load double*, double** %x.addr, align 8
  store double %141, double* %142, align 8
  %143 = load double, double* %ry, align 8
  %144 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %corner_height120 = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %144, i32 0, i32 6
  %145 = load i32, i32* %corner_height120, align 4
  %conv121 = sitofp i32 %145 to double
  %sub122 = fsub double %143, %conv121
  %146 = load double*, double** %y.addr, align 8
  store double %sub122, double* %146, align 8
  %147 = load double, double* %rw, align 8
  %148 = load double*, double** %w.addr, align 8
  store double %147, double* %148, align 8
  br label %if.end.126

if.else.123:                                      ; preds = %sw.bb.116
  %149 = load double, double* %rx, align 8
  %150 = load i32, i32* %top_and_bottom_handle_x_offset, align 4
  %conv124 = sitofp i32 %150 to double
  %add125 = fadd double %149, %conv124
  %151 = load double*, double** %x.addr, align 8
  store double %add125, double* %151, align 8
  %152 = load double, double* %ry, align 8
  %153 = load double*, double** %y.addr, align 8
  store double %152, double* %153, align 8
  br label %if.end.126

if.end.126:                                       ; preds = %if.else.123, %if.then.119
  br label %sw.epilog

sw.bb.127:                                        ; preds = %cond.end.44
  %154 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %outside128 = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %154, i32 0, i32 7
  %155 = load i32, i32* %outside128, align 4
  %tobool129 = icmp ne i32 %155, 0
  br i1 %tobool129, label %if.then.130, label %if.else.132

if.then.130:                                      ; preds = %sw.bb.127
  %156 = load double, double* %rx, align 8
  %157 = load double*, double** %x.addr, align 8
  store double %156, double* %157, align 8
  %158 = load double, double* %ry, align 8
  %159 = load double, double* %rh, align 8
  %add131 = fadd double %158, %159
  %160 = load double*, double** %y.addr, align 8
  store double %add131, double* %160, align 8
  %161 = load double, double* %rw, align 8
  %162 = load double*, double** %w.addr, align 8
  store double %161, double* %162, align 8
  br label %if.end.139

if.else.132:                                      ; preds = %sw.bb.127
  %163 = load double, double* %rx, align 8
  %164 = load i32, i32* %top_and_bottom_handle_x_offset, align 4
  %conv133 = sitofp i32 %164 to double
  %add134 = fadd double %163, %conv133
  %165 = load double*, double** %x.addr, align 8
  store double %add134, double* %165, align 8
  %166 = load double, double* %ry, align 8
  %167 = load double, double* %rh, align 8
  %add135 = fadd double %166, %167
  %168 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %corner_height136 = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %168, i32 0, i32 6
  %169 = load i32, i32* %corner_height136, align 4
  %conv137 = sitofp i32 %169 to double
  %sub138 = fsub double %add135, %conv137
  %170 = load double*, double** %y.addr, align 8
  store double %sub138, double* %170, align 8
  br label %if.end.139

if.end.139:                                       ; preds = %if.else.132, %if.then.130
  br label %sw.epilog

sw.bb.140:                                        ; preds = %cond.end.44
  %171 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %outside141 = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %171, i32 0, i32 7
  %172 = load i32, i32* %outside141, align 4
  %tobool142 = icmp ne i32 %172, 0
  br i1 %tobool142, label %if.then.143, label %if.else.147

if.then.143:                                      ; preds = %sw.bb.140
  %173 = load double, double* %rx, align 8
  %174 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %corner_width144 = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %174, i32 0, i32 5
  %175 = load i32, i32* %corner_width144, align 4
  %conv145 = sitofp i32 %175 to double
  %sub146 = fsub double %173, %conv145
  %176 = load double*, double** %x.addr, align 8
  store double %sub146, double* %176, align 8
  %177 = load double, double* %ry, align 8
  %178 = load double*, double** %y.addr, align 8
  store double %177, double* %178, align 8
  %179 = load double, double* %rh, align 8
  %180 = load double*, double** %h.addr, align 8
  store double %179, double* %180, align 8
  br label %if.end.150

if.else.147:                                      ; preds = %sw.bb.140
  %181 = load double, double* %rx, align 8
  %182 = load double*, double** %x.addr, align 8
  store double %181, double* %182, align 8
  %183 = load double, double* %ry, align 8
  %184 = load i32, i32* %left_and_right_handle_y_offset, align 4
  %conv148 = sitofp i32 %184 to double
  %add149 = fadd double %183, %conv148
  %185 = load double*, double** %y.addr, align 8
  store double %add149, double* %185, align 8
  br label %if.end.150

if.end.150:                                       ; preds = %if.else.147, %if.then.143
  br label %sw.epilog

sw.bb.151:                                        ; preds = %cond.end.44
  %186 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %outside152 = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %186, i32 0, i32 7
  %187 = load i32, i32* %outside152, align 4
  %tobool153 = icmp ne i32 %187, 0
  br i1 %tobool153, label %if.then.154, label %if.else.156

if.then.154:                                      ; preds = %sw.bb.151
  %188 = load double, double* %rx, align 8
  %189 = load double, double* %rw, align 8
  %add155 = fadd double %188, %189
  %190 = load double*, double** %x.addr, align 8
  store double %add155, double* %190, align 8
  %191 = load double, double* %ry, align 8
  %192 = load double*, double** %y.addr, align 8
  store double %191, double* %192, align 8
  %193 = load double, double* %rh, align 8
  %194 = load double*, double** %h.addr, align 8
  store double %193, double* %194, align 8
  br label %if.end.163

if.else.156:                                      ; preds = %sw.bb.151
  %195 = load double, double* %rx, align 8
  %196 = load double, double* %rw, align 8
  %add157 = fadd double %195, %196
  %197 = load %struct._GimpCanvasCornerPrivate*, %struct._GimpCanvasCornerPrivate** %private, align 8
  %corner_width158 = getelementptr inbounds %struct._GimpCanvasCornerPrivate, %struct._GimpCanvasCornerPrivate* %197, i32 0, i32 5
  %198 = load i32, i32* %corner_width158, align 4
  %conv159 = sitofp i32 %198 to double
  %sub160 = fsub double %add157, %conv159
  %199 = load double*, double** %x.addr, align 8
  store double %sub160, double* %199, align 8
  %200 = load double, double* %ry, align 8
  %201 = load i32, i32* %left_and_right_handle_y_offset, align 4
  %conv161 = sitofp i32 %201 to double
  %add162 = fadd double %200, %conv161
  %202 = load double*, double** %y.addr, align 8
  store double %add162, double* %202, align 8
  br label %if.end.163

if.end.163:                                       ; preds = %if.else.156, %if.then.154
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end.44, %if.end.163, %if.end.150, %if.end.139, %if.end.126, %if.end.115, %if.end.99, %if.end.85, %if.end, %sw.bb
  ret void
}

declare void @cairo_rectangle(%struct._cairo*, double, double, double, double) #1

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
