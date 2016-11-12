; ModuleID = './app/display/gimpcanvashandle.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpCanvasHandleClass = type { %struct._GimpCanvasItemClass }
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
%struct._GimpCanvasHandle = type { %struct._GimpCanvasItem }
%struct._GimpCanvasHandlePrivate = type { i32, i32, double, double, i32, i32, double, double }
%struct._cairo_rectangle_int = type { i32, i32, i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_canvas_handle_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"GimpCanvasHandle\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Display\00", align 1
@__func__.gimp_canvas_handle_new = private unnamed_addr constant [23 x i8] c"gimp_canvas_handle_new\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"GIMP_IS_DISPLAY_SHELL (shell)\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"anchor\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@__func__.gimp_canvas_handle_get_position = private unnamed_addr constant [32 x i8] c"gimp_canvas_handle_get_position\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"GIMP_IS_CANVAS_HANDLE (handle)\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"x != NULL\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"y != NULL\00", align 1
@__func__.gimp_canvas_handle_set_position = private unnamed_addr constant [32 x i8] c"gimp_canvas_handle_set_position\00", align 1
@__func__.gimp_canvas_handle_set_angles = private unnamed_addr constant [30 x i8] c"gimp_canvas_handle_set_angles\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"start-angle\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"slice-angle\00", align 1
@gimp_canvas_handle_parent_class = internal global i8* null, align 8
@GimpCanvasHandle_private_offset = internal global i32 0, align 4
@.str.15 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"gimpcanvashandle.c\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"property\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_canvas_handle_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_canvas_handle_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_canvas_handle_get_type.g_define_type_id__volatile to i8*))
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
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 208, void (i8*, i8*)* bitcast (void (i8*)* @gimp_canvas_handle_class_intern_init to void (i8*, i8*)*), i32 32, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpCanvasHandle*)* @gimp_canvas_handle_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_canvas_handle_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_canvas_handle_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_canvas_item_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_handle_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_canvas_handle_parent_class, align 8
  %1 = load i32, i32* @GimpCanvasHandle_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpCanvasHandle_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpCanvasHandleClass*
  call void @gimp_canvas_handle_class_init(%struct._GimpCanvasHandleClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_handle_init(%struct._GimpCanvasHandle* %handle) #3 {
entry:
  %handle.addr = alloca %struct._GimpCanvasHandle*, align 8
  %private = alloca %struct._GimpCanvasHandlePrivate*, align 8
  store %struct._GimpCanvasHandle* %handle, %struct._GimpCanvasHandle** %handle.addr, align 8
  %0 = load %struct._GimpCanvasHandle*, %struct._GimpCanvasHandle** %handle.addr, align 8
  %1 = bitcast %struct._GimpCanvasHandle* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_handle_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasHandlePrivate*
  store %struct._GimpCanvasHandlePrivate* %2, %struct._GimpCanvasHandlePrivate** %private, align 8
  %3 = load %struct._GimpCanvasHandle*, %struct._GimpCanvasHandle** %handle.addr, align 8
  %4 = bitcast %struct._GimpCanvasHandle* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_canvas_item_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpCanvasItem*
  call void @gimp_canvas_item_set_line_cap(%struct._GimpCanvasItem* %5, i32 2)
  %6 = load %struct._GimpCanvasHandlePrivate*, %struct._GimpCanvasHandlePrivate** %private, align 8
  %start_angle = getelementptr inbounds %struct._GimpCanvasHandlePrivate, %struct._GimpCanvasHandlePrivate* %6, i32 0, i32 6
  store double 0.000000e+00, double* %start_angle, align 8
  %7 = load %struct._GimpCanvasHandlePrivate*, %struct._GimpCanvasHandlePrivate** %private, align 8
  %slice_angle = getelementptr inbounds %struct._GimpCanvasHandlePrivate, %struct._GimpCanvasHandlePrivate* %7, i32 0, i32 7
  store double 0x401921FB54442D18, double* %slice_angle, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpCanvasItem* @gimp_canvas_handle_new(%struct._GimpDisplayShell* %shell, i32 %type, i32 %anchor, double %x, double %y, i32 %width, i32 %height) #3 {
entry:
  %retval = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %type.addr = alloca i32, align 4
  %anchor.addr = alloca i32, align 4
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store i32 %anchor, i32* %anchor.addr, align 4
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_canvas_handle_new, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_canvas_handle_get_type() #6
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %14 = load i32, i32* %type.addr, align 4
  %15 = load i32, i32* %anchor.addr, align 4
  %16 = load double, double* %x.addr, align 8
  %17 = load double, double* %y.addr, align 8
  %18 = load i32, i32* %width.addr, align 4
  %19 = load i32, i32* %height.addr, align 4
  %call12 = call i8* (i64, i8*, ...) @g_object_new(i64 %call11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), %struct._GimpDisplayShell* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), double %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), double %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i32 %19, i8* null)
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
define void @gimp_canvas_handle_get_position(%struct._GimpCanvasItem* %handle, double* %x, double* %y) #3 {
entry:
  %handle.addr = alloca %struct._GimpCanvasItem*, align 8
  %x.addr = alloca double*, align 8
  %y.addr = alloca double*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCanvasItem* %handle, %struct._GimpCanvasItem** %handle.addr, align 8
  store double* %x, double** %x.addr, align 8
  store double* %y, double** %y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %handle.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_canvas_handle_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_canvas_handle_get_position, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load double*, double** %x.addr, align 8
  %cmp12 = icmp ne double* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_canvas_handle_get_position, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load double*, double** %y.addr, align 8
  %cmp18 = icmp ne double* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_canvas_handle_get_position, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0))
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %15 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %handle.addr, align 8
  %16 = bitcast %struct._GimpCanvasItem* %15 to i8*
  %17 = load double*, double** %x.addr, align 8
  %18 = load double*, double** %y.addr, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), double* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), double* %18, i8* null)
  br label %return

return:                                           ; preds = %do.end.22, %if.else.20, %if.else.14, %if.else.9
  ret void
}

declare void @g_object_get(i8*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_canvas_handle_set_position(%struct._GimpCanvasItem* %handle, double %x, double %y) #3 {
entry:
  %handle.addr = alloca %struct._GimpCanvasItem*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCanvasItem* %handle, %struct._GimpCanvasItem** %handle.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %handle.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_canvas_handle_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_canvas_handle_set_position, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %handle.addr, align 8
  call void @gimp_canvas_item_begin_change(%struct._GimpCanvasItem* %13)
  %14 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %handle.addr, align 8
  %15 = bitcast %struct._GimpCanvasItem* %14 to i8*
  %16 = load double, double* %x.addr, align 8
  %17 = load double, double* %y.addr, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), double %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), double %17, i8* null)
  %18 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %handle.addr, align 8
  call void @gimp_canvas_item_end_change(%struct._GimpCanvasItem* %18)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

declare void @gimp_canvas_item_begin_change(%struct._GimpCanvasItem*) #1

declare void @g_object_set(i8*, i8*, ...) #1

declare void @gimp_canvas_item_end_change(%struct._GimpCanvasItem*) #1

; Function Attrs: nounwind uwtable
define void @gimp_canvas_handle_set_angles(%struct._GimpCanvasItem* %handle, double %start_angle, double %slice_angle) #3 {
entry:
  %handle.addr = alloca %struct._GimpCanvasItem*, align 8
  %start_angle.addr = alloca double, align 8
  %slice_angle.addr = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCanvasItem* %handle, %struct._GimpCanvasItem** %handle.addr, align 8
  store double %start_angle, double* %start_angle.addr, align 8
  store double %slice_angle, double* %slice_angle.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %handle.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_canvas_handle_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_canvas_handle_set_angles, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %handle.addr, align 8
  call void @gimp_canvas_item_begin_change(%struct._GimpCanvasItem* %13)
  %14 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %handle.addr, align 8
  %15 = bitcast %struct._GimpCanvasItem* %14 to i8*
  %16 = load double, double* %start_angle.addr, align 8
  %17 = load double, double* %slice_angle.addr, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), double %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), double %17, i8* null)
  %18 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %handle.addr, align 8
  call void @gimp_canvas_item_end_change(%struct._GimpCanvasItem* %18)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_handle_class_init(%struct._GimpCanvasHandleClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpCanvasHandleClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %item_class = alloca %struct._GimpCanvasItemClass*, align 8
  store %struct._GimpCanvasHandleClass* %klass, %struct._GimpCanvasHandleClass** %klass.addr, align 8
  %0 = load %struct._GimpCanvasHandleClass*, %struct._GimpCanvasHandleClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpCanvasHandleClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpCanvasHandleClass*, %struct._GimpCanvasHandleClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpCanvasHandleClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_canvas_item_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpCanvasItemClass*
  store %struct._GimpCanvasItemClass* %5, %struct._GimpCanvasItemClass** %item_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_canvas_handle_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_canvas_handle_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %8 = load %struct._GimpCanvasItemClass*, %struct._GimpCanvasItemClass** %item_class, align 8
  %draw = getelementptr inbounds %struct._GimpCanvasItemClass, %struct._GimpCanvasItemClass* %8, i32 0, i32 2
  store void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)* @gimp_canvas_handle_draw, void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)** %draw, align 8
  %9 = load %struct._GimpCanvasItemClass*, %struct._GimpCanvasItemClass** %item_class, align 8
  %get_extents = getelementptr inbounds %struct._GimpCanvasItemClass, %struct._GimpCanvasItemClass* %9, i32 0, i32 3
  store %struct._cairo_region* (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*)* @gimp_canvas_handle_get_extents, %struct._cairo_region* (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*)** %get_extents, align 8
  %10 = load %struct._GimpCanvasItemClass*, %struct._GimpCanvasItemClass** %item_class, align 8
  %hit = getelementptr inbounds %struct._GimpCanvasItemClass, %struct._GimpCanvasItemClass* %10, i32 0, i32 6
  store i32 (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, double, double)* @gimp_canvas_handle_hit, i32 (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, double, double)** %hit, align 8
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call i64 @gimp_handle_type_get_type() #6
  %call4 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* null, i64 %call3, i32 4, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %11, i32 1, %struct._GParamSpec* %call4)
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call i64 @gimp_handle_anchor_get_type() #6
  %call6 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null, i64 %call5, i32 0, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %12, i32 2, %struct._GParamSpec* %call6)
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call7 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null, double -2.621440e+05, double 2.621440e+05, double 0.000000e+00, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %13, i32 3, %struct._GParamSpec* %call7)
  %14 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call8 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null, double -2.621440e+05, double 2.621440e+05, double 0.000000e+00, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %14, i32 4, %struct._GParamSpec* %call8)
  %15 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call9 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* null, i32 3, i32 1001, i32 7, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %15, i32 5, %struct._GParamSpec* %call9)
  %16 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call10 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* null, i32 3, i32 1001, i32 7, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %16, i32 6, %struct._GParamSpec* %call10)
  %17 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call11 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i8* null, i8* null, double -1.000000e+03, double 1.000000e+03, double 0.000000e+00, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %17, i32 7, %struct._GParamSpec* %call11)
  %18 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call12 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i8* null, i8* null, double -1.000000e+03, double 1.000000e+03, double 0x401921FB54442D18, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %18, i32 8, %struct._GParamSpec* %call12)
  %19 = load %struct._GimpCanvasHandleClass*, %struct._GimpCanvasHandleClass** %klass.addr, align 8
  %20 = bitcast %struct._GimpCanvasHandleClass* %19 to i8*
  call void @g_type_class_add_private(i8* %20, i64 48)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_handle_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpCanvasHandlePrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_handle_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasHandlePrivate*
  store %struct._GimpCanvasHandlePrivate* %2, %struct._GimpCanvasHandlePrivate** %private, align 8
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
  %call2 = call i32 @g_value_get_enum(%struct._GValue* %4)
  %5 = load %struct._GimpCanvasHandlePrivate*, %struct._GimpCanvasHandlePrivate** %private, align 8
  %type = getelementptr inbounds %struct._GimpCanvasHandlePrivate, %struct._GimpCanvasHandlePrivate* %5, i32 0, i32 0
  store i32 %call2, i32* %type, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %6 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i32 @g_value_get_enum(%struct._GValue* %6)
  %7 = load %struct._GimpCanvasHandlePrivate*, %struct._GimpCanvasHandlePrivate** %private, align 8
  %anchor = getelementptr inbounds %struct._GimpCanvasHandlePrivate, %struct._GimpCanvasHandlePrivate* %7, i32 0, i32 1
  store i32 %call4, i32* %anchor, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call double @g_value_get_double(%struct._GValue* %8)
  %9 = load %struct._GimpCanvasHandlePrivate*, %struct._GimpCanvasHandlePrivate** %private, align 8
  %x = getelementptr inbounds %struct._GimpCanvasHandlePrivate, %struct._GimpCanvasHandlePrivate* %9, i32 0, i32 2
  store double %call6, double* %x, align 8
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call8 = call double @g_value_get_double(%struct._GValue* %10)
  %11 = load %struct._GimpCanvasHandlePrivate*, %struct._GimpCanvasHandlePrivate** %private, align 8
  %y = getelementptr inbounds %struct._GimpCanvasHandlePrivate, %struct._GimpCanvasHandlePrivate* %11, i32 0, i32 3
  store double %call8, double* %y, align 8
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %12 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call10 = call i32 @g_value_get_int(%struct._GValue* %12)
  %13 = load %struct._GimpCanvasHandlePrivate*, %struct._GimpCanvasHandlePrivate** %private, align 8
  %width = getelementptr inbounds %struct._GimpCanvasHandlePrivate, %struct._GimpCanvasHandlePrivate* %13, i32 0, i32 4
  store i32 %call10, i32* %width, align 4
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %14 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call12 = call i32 @g_value_get_int(%struct._GValue* %14)
  %15 = load %struct._GimpCanvasHandlePrivate*, %struct._GimpCanvasHandlePrivate** %private, align 8
  %height = getelementptr inbounds %struct._GimpCanvasHandlePrivate, %struct._GimpCanvasHandlePrivate* %15, i32 0, i32 5
  store i32 %call12, i32* %height, align 4
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call14 = call double @g_value_get_double(%struct._GValue* %16)
  %17 = load %struct._GimpCanvasHandlePrivate*, %struct._GimpCanvasHandlePrivate** %private, align 8
  %start_angle = getelementptr inbounds %struct._GimpCanvasHandlePrivate, %struct._GimpCanvasHandlePrivate* %17, i32 0, i32 6
  store double %call14, double* %start_angle, align 8
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  %18 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call16 = call double @g_value_get_double(%struct._GValue* %18)
  %19 = load %struct._GimpCanvasHandlePrivate*, %struct._GimpCanvasHandlePrivate** %private, align 8
  %slice_angle = getelementptr inbounds %struct._GimpCanvasHandlePrivate, %struct._GimpCanvasHandlePrivate* %19, i32 0, i32 7
  store double %call16, double* %slice_angle, align 8
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
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0), i32 208, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i32 %23, i8* %25, i8* %call17, i8* %call20)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.15, %sw.bb.13, %sw.bb.11, %sw.bb.9, %sw.bb.7, %sw.bb.5, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_handle_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpCanvasHandlePrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_handle_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasHandlePrivate*
  store %struct._GimpCanvasHandlePrivate* %2, %struct._GimpCanvasHandlePrivate** %private, align 8
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
  %5 = load %struct._GimpCanvasHandlePrivate*, %struct._GimpCanvasHandlePrivate** %private, align 8
  %type = getelementptr inbounds %struct._GimpCanvasHandlePrivate, %struct._GimpCanvasHandlePrivate* %5, i32 0, i32 0
  %6 = load i32, i32* %type, align 4
  call void @g_value_set_enum(%struct._GValue* %4, i32 %6)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GimpCanvasHandlePrivate*, %struct._GimpCanvasHandlePrivate** %private, align 8
  %anchor = getelementptr inbounds %struct._GimpCanvasHandlePrivate, %struct._GimpCanvasHandlePrivate* %8, i32 0, i32 1
  %9 = load i32, i32* %anchor, align 4
  call void @g_value_set_enum(%struct._GValue* %7, i32 %9)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %11 = load %struct._GimpCanvasHandlePrivate*, %struct._GimpCanvasHandlePrivate** %private, align 8
  %x = getelementptr inbounds %struct._GimpCanvasHandlePrivate, %struct._GimpCanvasHandlePrivate* %11, i32 0, i32 2
  %12 = load double, double* %x, align 8
  call void @g_value_set_double(%struct._GValue* %10, double %12)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %13 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %14 = load %struct._GimpCanvasHandlePrivate*, %struct._GimpCanvasHandlePrivate** %private, align 8
  %y = getelementptr inbounds %struct._GimpCanvasHandlePrivate, %struct._GimpCanvasHandlePrivate* %14, i32 0, i32 3
  %15 = load double, double* %y, align 8
  call void @g_value_set_double(%struct._GValue* %13, double %15)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %17 = load %struct._GimpCanvasHandlePrivate*, %struct._GimpCanvasHandlePrivate** %private, align 8
  %width = getelementptr inbounds %struct._GimpCanvasHandlePrivate, %struct._GimpCanvasHandlePrivate* %17, i32 0, i32 4
  %18 = load i32, i32* %width, align 4
  call void @g_value_set_int(%struct._GValue* %16, i32 %18)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %19 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %20 = load %struct._GimpCanvasHandlePrivate*, %struct._GimpCanvasHandlePrivate** %private, align 8
  %height = getelementptr inbounds %struct._GimpCanvasHandlePrivate, %struct._GimpCanvasHandlePrivate* %20, i32 0, i32 5
  %21 = load i32, i32* %height, align 4
  call void @g_value_set_int(%struct._GValue* %19, i32 %21)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %22 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %23 = load %struct._GimpCanvasHandlePrivate*, %struct._GimpCanvasHandlePrivate** %private, align 8
  %start_angle = getelementptr inbounds %struct._GimpCanvasHandlePrivate, %struct._GimpCanvasHandlePrivate* %23, i32 0, i32 6
  %24 = load double, double* %start_angle, align 8
  call void @g_value_set_double(%struct._GValue* %22, double %24)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %25 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %26 = load %struct._GimpCanvasHandlePrivate*, %struct._GimpCanvasHandlePrivate** %private, align 8
  %slice_angle = getelementptr inbounds %struct._GimpCanvasHandlePrivate, %struct._GimpCanvasHandlePrivate* %26, i32 0, i32 7
  %27 = load double, double* %slice_angle, align 8
  call void @g_value_set_double(%struct._GValue* %25, double %27)
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
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0), i32 249, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i32 %31, i8* %33, i8* %call9, i8* %call12)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_handle_draw(%struct._GimpCanvasItem* %item, %struct._GimpDisplayShell* %shell, %struct._cairo* %cr) #3 {
entry:
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %private = alloca %struct._GimpCanvasHandlePrivate*, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_handle_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasHandlePrivate*
  store %struct._GimpCanvasHandlePrivate* %2, %struct._GimpCanvasHandlePrivate** %private, align 8
  %3 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_canvas_handle_transform(%struct._GimpCanvasItem* %3, %struct._GimpDisplayShell* %4, double* %x, double* %y)
  %5 = load %struct._GimpCanvasHandlePrivate*, %struct._GimpCanvasHandlePrivate** %private, align 8
  %type = getelementptr inbounds %struct._GimpCanvasHandlePrivate, %struct._GimpCanvasHandlePrivate* %5, i32 0, i32 0
  %6 = load i32, i32* %type, align 4
  switch i32 %6, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.4
    i32 2, label %sw.bb.11
    i32 3, label %sw.bb.14
    i32 4, label %sw.bb.20
  ]

sw.bb:                                            ; preds = %entry
  %7 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %8 = load double, double* %x, align 8
  %9 = load double, double* %y, align 8
  %10 = load %struct._GimpCanvasHandlePrivate*, %struct._GimpCanvasHandlePrivate** %private, align 8
  %width = getelementptr inbounds %struct._GimpCanvasHandlePrivate, %struct._GimpCanvasHandlePrivate* %10, i32 0, i32 4
  %11 = load i32, i32* %width, align 4
  %conv = sitofp i32 %11 to double
  %sub = fsub double %conv, 1.000000e+00
  %12 = load %struct._GimpCanvasHandlePrivate*, %struct._GimpCanvasHandlePrivate** %private, align 8
  %height = getelementptr inbounds %struct._GimpCanvasHandlePrivate, %struct._GimpCanvasHandlePrivate* %12, i32 0, i32 5
  %13 = load i32, i32* %height, align 4
  %conv2 = sitofp i32 %13 to double
  %sub3 = fsub double %conv2, 1.000000e+00
  call void @cairo_rectangle(%struct._cairo* %7, double %8, double %9, double %sub, double %sub3)
  %14 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %15 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @_gimp_canvas_item_stroke(%struct._GimpCanvasItem* %14, %struct._cairo* %15)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %16 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %17 = load double, double* %x, align 8
  %sub5 = fsub double %17, 5.000000e-01
  %18 = load double, double* %y, align 8
  %sub6 = fsub double %18, 5.000000e-01
  %19 = load %struct._GimpCanvasHandlePrivate*, %struct._GimpCanvasHandlePrivate** %private, align 8
  %width7 = getelementptr inbounds %struct._GimpCanvasHandlePrivate, %struct._GimpCanvasHandlePrivate* %19, i32 0, i32 4
  %20 = load i32, i32* %width7, align 4
  %conv8 = sitofp i32 %20 to double
  %21 = load %struct._GimpCanvasHandlePrivate*, %struct._GimpCanvasHandlePrivate** %private, align 8
  %height9 = getelementptr inbounds %struct._GimpCanvasHandlePrivate, %struct._GimpCanvasHandlePrivate* %21, i32 0, i32 5
  %22 = load i32, i32* %height9, align 4
  %conv10 = sitofp i32 %22 to double
  call void @cairo_rectangle(%struct._cairo* %16, double %sub5, double %sub6, double %conv8, double %conv10)
  %23 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %24 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @_gimp_canvas_item_fill(%struct._GimpCanvasItem* %23, %struct._cairo* %24)
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %25 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %26 = load double, double* %x, align 8
  %27 = load double, double* %y, align 8
  %28 = load %struct._GimpCanvasHandlePrivate*, %struct._GimpCanvasHandlePrivate** %private, align 8
  %width12 = getelementptr inbounds %struct._GimpCanvasHandlePrivate, %struct._GimpCanvasHandlePrivate* %28, i32 0, i32 4
  %29 = load i32, i32* %width12, align 4
  %div = sdiv i32 %29, 2
  %conv13 = sitofp i32 %div to double
  %30 = load %struct._GimpCanvasHandlePrivate*, %struct._GimpCanvasHandlePrivate** %private, align 8
  %start_angle = getelementptr inbounds %struct._GimpCanvasHandlePrivate, %struct._GimpCanvasHandlePrivate* %30, i32 0, i32 6
  %31 = load double, double* %start_angle, align 8
  %32 = load %struct._GimpCanvasHandlePrivate*, %struct._GimpCanvasHandlePrivate** %private, align 8
  %slice_angle = getelementptr inbounds %struct._GimpCanvasHandlePrivate, %struct._GimpCanvasHandlePrivate* %32, i32 0, i32 7
  %33 = load double, double* %slice_angle, align 8
  call void @gimp_cairo_add_arc(%struct._cairo* %25, double %26, double %27, double %conv13, double %31, double %33)
  %34 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %35 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @_gimp_canvas_item_stroke(%struct._GimpCanvasItem* %34, %struct._cairo* %35)
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry
  %36 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %37 = load double, double* %x, align 8
  %38 = load double, double* %y, align 8
  call void @cairo_move_to(%struct._cairo* %36, double %37, double %38)
  %39 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %40 = load double, double* %x, align 8
  %41 = load double, double* %y, align 8
  %42 = load %struct._GimpCanvasHandlePrivate*, %struct._GimpCanvasHandlePrivate** %private, align 8
  %width15 = getelementptr inbounds %struct._GimpCanvasHandlePrivate, %struct._GimpCanvasHandlePrivate* %42, i32 0, i32 4
  %43 = load i32, i32* %width15, align 4
  %conv16 = sitofp i32 %43 to double
  %div17 = fdiv double %conv16, 2.000000e+00
  %44 = load %struct._GimpCanvasHandlePrivate*, %struct._GimpCanvasHandlePrivate** %private, align 8
  %start_angle18 = getelementptr inbounds %struct._GimpCanvasHandlePrivate, %struct._GimpCanvasHandlePrivate* %44, i32 0, i32 6
  %45 = load double, double* %start_angle18, align 8
  %46 = load %struct._GimpCanvasHandlePrivate*, %struct._GimpCanvasHandlePrivate** %private, align 8
  %slice_angle19 = getelementptr inbounds %struct._GimpCanvasHandlePrivate, %struct._GimpCanvasHandlePrivate* %46, i32 0, i32 7
  %47 = load double, double* %slice_angle19, align 8
  call void @gimp_cairo_add_arc(%struct._cairo* %39, double %40, double %41, double %div17, double %45, double %47)
  %48 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %49 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @_gimp_canvas_item_fill(%struct._GimpCanvasItem* %48, %struct._cairo* %49)
  br label %sw.epilog

sw.bb.20:                                         ; preds = %entry
  %50 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %51 = load double, double* %x, align 8
  %52 = load %struct._GimpCanvasHandlePrivate*, %struct._GimpCanvasHandlePrivate** %private, align 8
  %width21 = getelementptr inbounds %struct._GimpCanvasHandlePrivate, %struct._GimpCanvasHandlePrivate* %52, i32 0, i32 4
  %53 = load i32, i32* %width21, align 4
  %div22 = sdiv i32 %53, 2
  %conv23 = sitofp i32 %div22 to double
  %sub24 = fsub double %51, %conv23
  %54 = load double, double* %y, align 8
  call void @cairo_move_to(%struct._cairo* %50, double %sub24, double %54)
  %55 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %56 = load double, double* %x, align 8
  %57 = load %struct._GimpCanvasHandlePrivate*, %struct._GimpCanvasHandlePrivate** %private, align 8
  %width25 = getelementptr inbounds %struct._GimpCanvasHandlePrivate, %struct._GimpCanvasHandlePrivate* %57, i32 0, i32 4
  %58 = load i32, i32* %width25, align 4
  %div26 = sdiv i32 %58, 2
  %conv27 = sitofp i32 %div26 to double
  %add = fadd double %56, %conv27
  %59 = load double, double* %y, align 8
  call void @cairo_line_to(%struct._cairo* %55, double %add, double %59)
  %60 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %61 = load double, double* %x, align 8
  %62 = load double, double* %y, align 8
  %63 = load %struct._GimpCanvasHandlePrivate*, %struct._GimpCanvasHandlePrivate** %private, align 8
  %height28 = getelementptr inbounds %struct._GimpCanvasHandlePrivate, %struct._GimpCanvasHandlePrivate* %63, i32 0, i32 5
  %64 = load i32, i32* %height28, align 4
  %div29 = sdiv i32 %64, 2
  %conv30 = sitofp i32 %div29 to double
  %sub31 = fsub double %62, %conv30
  call void @cairo_move_to(%struct._cairo* %60, double %61, double %sub31)
  %65 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %66 = load double, double* %x, align 8
  %67 = load double, double* %y, align 8
  %68 = load %struct._GimpCanvasHandlePrivate*, %struct._GimpCanvasHandlePrivate** %private, align 8
  %height32 = getelementptr inbounds %struct._GimpCanvasHandlePrivate, %struct._GimpCanvasHandlePrivate* %68, i32 0, i32 5
  %69 = load i32, i32* %height32, align 4
  %div33 = sdiv i32 %69, 2
  %conv34 = sitofp i32 %div33 to double
  %add35 = fadd double %67, %conv34
  call void @cairo_line_to(%struct._cairo* %65, double %66, double %add35)
  %70 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %71 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @_gimp_canvas_item_stroke(%struct._GimpCanvasItem* %70, %struct._cairo* %71)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.20, %sw.bb.14, %sw.bb.11, %sw.bb.4, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._cairo_region* @gimp_canvas_handle_get_extents(%struct._GimpCanvasItem* %item, %struct._GimpDisplayShell* %shell) #3 {
entry:
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %private = alloca %struct._GimpCanvasHandlePrivate*, align 8
  %rectangle = alloca %struct._cairo_rectangle_int, align 4
  %x = alloca double, align 8
  %y = alloca double, align 8
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_handle_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasHandlePrivate*
  store %struct._GimpCanvasHandlePrivate* %2, %struct._GimpCanvasHandlePrivate** %private, align 8
  %3 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_canvas_handle_transform(%struct._GimpCanvasItem* %3, %struct._GimpDisplayShell* %4, double* %x, double* %y)
  %5 = load %struct._GimpCanvasHandlePrivate*, %struct._GimpCanvasHandlePrivate** %private, align 8
  %type = getelementptr inbounds %struct._GimpCanvasHandlePrivate, %struct._GimpCanvasHandlePrivate* %5, i32 0, i32 0
  %6 = load i32, i32* %type, align 4
  switch i32 %6, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb.13
    i32 3, label %sw.bb.13
    i32 4, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %entry, %entry
  %7 = load double, double* %x, align 8
  %sub = fsub double %7, 1.500000e+00
  %conv = fptosi double %sub to i32
  %x2 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 0
  store i32 %conv, i32* %x2, align 4
  %8 = load double, double* %y, align 8
  %sub3 = fsub double %8, 1.500000e+00
  %conv4 = fptosi double %sub3 to i32
  %y5 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 1
  store i32 %conv4, i32* %y5, align 4
  %9 = load %struct._GimpCanvasHandlePrivate*, %struct._GimpCanvasHandlePrivate** %private, align 8
  %width = getelementptr inbounds %struct._GimpCanvasHandlePrivate, %struct._GimpCanvasHandlePrivate* %9, i32 0, i32 4
  %10 = load i32, i32* %width, align 4
  %conv6 = sitofp i32 %10 to double
  %add = fadd double %conv6, 3.000000e+00
  %conv7 = fptosi double %add to i32
  %width8 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 2
  store i32 %conv7, i32* %width8, align 4
  %11 = load %struct._GimpCanvasHandlePrivate*, %struct._GimpCanvasHandlePrivate** %private, align 8
  %height = getelementptr inbounds %struct._GimpCanvasHandlePrivate, %struct._GimpCanvasHandlePrivate* %11, i32 0, i32 5
  %12 = load i32, i32* %height, align 4
  %conv9 = sitofp i32 %12 to double
  %add10 = fadd double %conv9, 3.000000e+00
  %conv11 = fptosi double %add10 to i32
  %height12 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 3
  store i32 %conv11, i32* %height12, align 4
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry, %entry, %entry
  %13 = load double, double* %x, align 8
  %14 = load %struct._GimpCanvasHandlePrivate*, %struct._GimpCanvasHandlePrivate** %private, align 8
  %width14 = getelementptr inbounds %struct._GimpCanvasHandlePrivate, %struct._GimpCanvasHandlePrivate* %14, i32 0, i32 4
  %15 = load i32, i32* %width14, align 4
  %div = sdiv i32 %15, 2
  %conv15 = sitofp i32 %div to double
  %sub16 = fsub double %13, %conv15
  %sub17 = fsub double %sub16, 1.500000e+00
  %conv18 = fptosi double %sub17 to i32
  %x19 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 0
  store i32 %conv18, i32* %x19, align 4
  %16 = load double, double* %y, align 8
  %17 = load %struct._GimpCanvasHandlePrivate*, %struct._GimpCanvasHandlePrivate** %private, align 8
  %height20 = getelementptr inbounds %struct._GimpCanvasHandlePrivate, %struct._GimpCanvasHandlePrivate* %17, i32 0, i32 5
  %18 = load i32, i32* %height20, align 4
  %div21 = sdiv i32 %18, 2
  %conv22 = sitofp i32 %div21 to double
  %sub23 = fsub double %16, %conv22
  %sub24 = fsub double %sub23, 1.500000e+00
  %conv25 = fptosi double %sub24 to i32
  %y26 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 1
  store i32 %conv25, i32* %y26, align 4
  %19 = load %struct._GimpCanvasHandlePrivate*, %struct._GimpCanvasHandlePrivate** %private, align 8
  %width27 = getelementptr inbounds %struct._GimpCanvasHandlePrivate, %struct._GimpCanvasHandlePrivate* %19, i32 0, i32 4
  %20 = load i32, i32* %width27, align 4
  %conv28 = sitofp i32 %20 to double
  %add29 = fadd double %conv28, 3.000000e+00
  %conv30 = fptosi double %add29 to i32
  %width31 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 2
  store i32 %conv30, i32* %width31, align 4
  %21 = load %struct._GimpCanvasHandlePrivate*, %struct._GimpCanvasHandlePrivate** %private, align 8
  %height32 = getelementptr inbounds %struct._GimpCanvasHandlePrivate, %struct._GimpCanvasHandlePrivate* %21, i32 0, i32 5
  %22 = load i32, i32* %height32, align 4
  %conv33 = sitofp i32 %22 to double
  %add34 = fadd double %conv33, 3.000000e+00
  %conv35 = fptosi double %add34 to i32
  %height36 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 3
  store i32 %conv35, i32* %height36, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.13, %sw.bb
  %call37 = call %struct._cairo_region* @cairo_region_create_rectangle(%struct._cairo_rectangle_int* %rectangle)
  ret %struct._cairo_region* %call37
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_canvas_handle_hit(%struct._GimpCanvasItem* %item, %struct._GimpDisplayShell* %shell, double %x, double %y) #3 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %private = alloca %struct._GimpCanvasHandlePrivate*, align 8
  %handle_tx = alloca double, align 8
  %handle_ty = alloca double, align 8
  %tx = alloca double, align 8
  %ty = alloca double, align 8
  %width34 = alloca i32, align 4
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_handle_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasHandlePrivate*
  store %struct._GimpCanvasHandlePrivate* %2, %struct._GimpCanvasHandlePrivate** %private, align 8
  %3 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_canvas_handle_transform(%struct._GimpCanvasItem* %3, %struct._GimpDisplayShell* %4, double* %handle_tx, double* %handle_ty)
  %5 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %6 = load double, double* %x.addr, align 8
  %7 = load double, double* %y.addr, align 8
  call void @gimp_display_shell_transform_xy_f(%struct._GimpDisplayShell* %5, double %6, double %7, double* %tx, double* %ty)
  %8 = load %struct._GimpCanvasHandlePrivate*, %struct._GimpCanvasHandlePrivate** %private, align 8
  %type = getelementptr inbounds %struct._GimpCanvasHandlePrivate, %struct._GimpCanvasHandlePrivate* %8, i32 0, i32 0
  %9 = load i32, i32* %type, align 4
  switch i32 %9, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb.33
    i32 3, label %sw.bb.33
    i32 4, label %sw.bb.33
  ]

sw.bb:                                            ; preds = %entry, %entry
  %10 = load double, double* %tx, align 8
  %11 = load double, double* %tx, align 8
  %12 = load double, double* %handle_tx, align 8
  %13 = load %struct._GimpCanvasHandlePrivate*, %struct._GimpCanvasHandlePrivate** %private, align 8
  %width = getelementptr inbounds %struct._GimpCanvasHandlePrivate, %struct._GimpCanvasHandlePrivate* %13, i32 0, i32 4
  %14 = load i32, i32* %width, align 4
  %conv = sitofp i32 %14 to double
  %add = fadd double %12, %conv
  %cmp = fcmp ogt double %11, %add
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  %15 = load double, double* %handle_tx, align 8
  %16 = load %struct._GimpCanvasHandlePrivate*, %struct._GimpCanvasHandlePrivate** %private, align 8
  %width3 = getelementptr inbounds %struct._GimpCanvasHandlePrivate, %struct._GimpCanvasHandlePrivate* %16, i32 0, i32 4
  %17 = load i32, i32* %width3, align 4
  %conv4 = sitofp i32 %17 to double
  %add5 = fadd double %15, %conv4
  br label %cond.end.10

cond.false:                                       ; preds = %sw.bb
  %18 = load double, double* %tx, align 8
  %19 = load double, double* %handle_tx, align 8
  %cmp6 = fcmp olt double %18, %19
  br i1 %cmp6, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %cond.false
  %20 = load double, double* %handle_tx, align 8
  br label %cond.end

cond.false.9:                                     ; preds = %cond.false
  %21 = load double, double* %tx, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.9, %cond.true.8
  %cond = phi double [ %20, %cond.true.8 ], [ %21, %cond.false.9 ]
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.end, %cond.true
  %cond11 = phi double [ %add5, %cond.true ], [ %cond, %cond.end ]
  %cmp12 = fcmp oeq double %10, %cond11
  br i1 %cmp12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.end.10
  %22 = load double, double* %ty, align 8
  %23 = load double, double* %ty, align 8
  %24 = load double, double* %handle_ty, align 8
  %25 = load %struct._GimpCanvasHandlePrivate*, %struct._GimpCanvasHandlePrivate** %private, align 8
  %height = getelementptr inbounds %struct._GimpCanvasHandlePrivate, %struct._GimpCanvasHandlePrivate* %25, i32 0, i32 5
  %26 = load i32, i32* %height, align 4
  %conv14 = sitofp i32 %26 to double
  %add15 = fadd double %24, %conv14
  %cmp16 = fcmp ogt double %23, %add15
  br i1 %cmp16, label %cond.true.18, label %cond.false.22

cond.true.18:                                     ; preds = %land.rhs
  %27 = load double, double* %handle_ty, align 8
  %28 = load %struct._GimpCanvasHandlePrivate*, %struct._GimpCanvasHandlePrivate** %private, align 8
  %height19 = getelementptr inbounds %struct._GimpCanvasHandlePrivate, %struct._GimpCanvasHandlePrivate* %28, i32 0, i32 5
  %29 = load i32, i32* %height19, align 4
  %conv20 = sitofp i32 %29 to double
  %add21 = fadd double %27, %conv20
  br label %cond.end.29

cond.false.22:                                    ; preds = %land.rhs
  %30 = load double, double* %ty, align 8
  %31 = load double, double* %handle_ty, align 8
  %cmp23 = fcmp olt double %30, %31
  br i1 %cmp23, label %cond.true.25, label %cond.false.26

cond.true.25:                                     ; preds = %cond.false.22
  %32 = load double, double* %handle_ty, align 8
  br label %cond.end.27

cond.false.26:                                    ; preds = %cond.false.22
  %33 = load double, double* %ty, align 8
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.26, %cond.true.25
  %cond28 = phi double [ %32, %cond.true.25 ], [ %33, %cond.false.26 ]
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.end.27, %cond.true.18
  %cond30 = phi double [ %add21, %cond.true.18 ], [ %cond28, %cond.end.27 ]
  %cmp31 = fcmp oeq double %22, %cond30
  br label %land.end

land.end:                                         ; preds = %cond.end.29, %cond.end.10
  %34 = phi i1 [ false, %cond.end.10 ], [ %cmp31, %cond.end.29 ]
  %land.ext = zext i1 %34 to i32
  store i32 %land.ext, i32* %retval
  br label %return

sw.bb.33:                                         ; preds = %entry, %entry, %entry
  %35 = load %struct._GimpCanvasHandlePrivate*, %struct._GimpCanvasHandlePrivate** %private, align 8
  %width35 = getelementptr inbounds %struct._GimpCanvasHandlePrivate, %struct._GimpCanvasHandlePrivate* %35, i32 0, i32 4
  %36 = load i32, i32* %width35, align 4
  store i32 %36, i32* %width34, align 4
  %37 = load i32, i32* %width34, align 4
  %38 = load %struct._GimpCanvasHandlePrivate*, %struct._GimpCanvasHandlePrivate** %private, align 8
  %height36 = getelementptr inbounds %struct._GimpCanvasHandlePrivate, %struct._GimpCanvasHandlePrivate* %38, i32 0, i32 5
  %39 = load i32, i32* %height36, align 4
  %cmp37 = icmp ne i32 %37, %39
  br i1 %cmp37, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.33
  %40 = load i32, i32* %width34, align 4
  %41 = load %struct._GimpCanvasHandlePrivate*, %struct._GimpCanvasHandlePrivate** %private, align 8
  %height39 = getelementptr inbounds %struct._GimpCanvasHandlePrivate, %struct._GimpCanvasHandlePrivate* %41, i32 0, i32 5
  %42 = load i32, i32* %height39, align 4
  %add40 = add nsw i32 %40, %42
  %div = sdiv i32 %add40, 2
  store i32 %div, i32* %width34, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.33
  %43 = load i32, i32* %width34, align 4
  %div41 = sdiv i32 %43, 2
  store i32 %div41, i32* %width34, align 4
  %44 = load double, double* %handle_tx, align 8
  %45 = load double, double* %tx, align 8
  %sub = fsub double %44, %45
  %46 = load double, double* %handle_tx, align 8
  %47 = load double, double* %tx, align 8
  %sub42 = fsub double %46, %47
  %mul = fmul double %sub, %sub42
  %48 = load double, double* %handle_ty, align 8
  %49 = load double, double* %ty, align 8
  %sub43 = fsub double %48, %49
  %50 = load double, double* %handle_ty, align 8
  %51 = load double, double* %ty, align 8
  %sub44 = fsub double %50, %51
  %mul45 = fmul double %sub43, %sub44
  %add46 = fadd double %mul, %mul45
  %52 = load i32, i32* %width34, align 4
  %53 = load i32, i32* %width34, align 4
  %mul47 = mul nsw i32 %52, %53
  %conv48 = sitofp i32 %mul47 to double
  %cmp49 = fcmp olt double %add46, %conv48
  %conv50 = zext i1 %cmp49 to i32
  store i32 %conv50, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.end, %land.end
  %54 = load i32, i32* %retval
  ret i32 %54
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_handle_type_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_handle_anchor_get_type() #2

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

declare %struct._GParamSpec* @g_param_spec_int(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare void @g_type_class_add_private(i8*, i64) #1

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

declare double @g_value_get_double(%struct._GValue*) #1

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

declare void @g_value_set_enum(%struct._GValue*, i32) #1

declare void @g_value_set_double(%struct._GValue*, double) #1

declare void @g_value_set_int(%struct._GValue*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_handle_transform(%struct._GimpCanvasItem* %item, %struct._GimpDisplayShell* %shell, double* %x, double* %y) #3 {
entry:
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %x.addr = alloca double*, align 8
  %y.addr = alloca double*, align 8
  %private = alloca %struct._GimpCanvasHandlePrivate*, align 8
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store double* %x, double** %x.addr, align 8
  store double* %y, double** %y.addr, align 8
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_handle_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasHandlePrivate*
  store %struct._GimpCanvasHandlePrivate* %2, %struct._GimpCanvasHandlePrivate** %private, align 8
  %3 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %4 = load %struct._GimpCanvasHandlePrivate*, %struct._GimpCanvasHandlePrivate** %private, align 8
  %x2 = getelementptr inbounds %struct._GimpCanvasHandlePrivate, %struct._GimpCanvasHandlePrivate* %4, i32 0, i32 2
  %5 = load double, double* %x2, align 8
  %6 = load %struct._GimpCanvasHandlePrivate*, %struct._GimpCanvasHandlePrivate** %private, align 8
  %y3 = getelementptr inbounds %struct._GimpCanvasHandlePrivate, %struct._GimpCanvasHandlePrivate* %6, i32 0, i32 3
  %7 = load double, double* %y3, align 8
  %8 = load double*, double** %x.addr, align 8
  %9 = load double*, double** %y.addr, align 8
  call void @gimp_display_shell_transform_xy_f(%struct._GimpDisplayShell* %3, double %5, double %7, double* %8, double* %9)
  %10 = load %struct._GimpCanvasHandlePrivate*, %struct._GimpCanvasHandlePrivate** %private, align 8
  %type = getelementptr inbounds %struct._GimpCanvasHandlePrivate, %struct._GimpCanvasHandlePrivate* %10, i32 0, i32 0
  %11 = load i32, i32* %type, align 4
  switch i32 %11, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb.4
    i32 3, label %sw.bb.4
    i32 4, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry, %entry
  %12 = load %struct._GimpCanvasHandlePrivate*, %struct._GimpCanvasHandlePrivate** %private, align 8
  %anchor = getelementptr inbounds %struct._GimpCanvasHandlePrivate, %struct._GimpCanvasHandlePrivate* %12, i32 0, i32 1
  %13 = load i32, i32* %anchor, align 4
  %14 = load double*, double** %x.addr, align 8
  %15 = load double, double* %14, align 8
  %16 = load double*, double** %y.addr, align 8
  %17 = load double, double* %16, align 8
  %18 = load %struct._GimpCanvasHandlePrivate*, %struct._GimpCanvasHandlePrivate** %private, align 8
  %width = getelementptr inbounds %struct._GimpCanvasHandlePrivate, %struct._GimpCanvasHandlePrivate* %18, i32 0, i32 4
  %19 = load i32, i32* %width, align 4
  %20 = load %struct._GimpCanvasHandlePrivate*, %struct._GimpCanvasHandlePrivate** %private, align 8
  %height = getelementptr inbounds %struct._GimpCanvasHandlePrivate, %struct._GimpCanvasHandlePrivate* %20, i32 0, i32 5
  %21 = load i32, i32* %height, align 4
  %22 = load double*, double** %x.addr, align 8
  %23 = load double*, double** %y.addr, align 8
  call void @gimp_canvas_item_shift_to_north_west(i32 %13, double %15, double %17, i32 %19, i32 %21, double* %22, double* %23)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry, %entry, %entry
  %24 = load %struct._GimpCanvasHandlePrivate*, %struct._GimpCanvasHandlePrivate** %private, align 8
  %anchor5 = getelementptr inbounds %struct._GimpCanvasHandlePrivate, %struct._GimpCanvasHandlePrivate* %24, i32 0, i32 1
  %25 = load i32, i32* %anchor5, align 4
  %26 = load double*, double** %x.addr, align 8
  %27 = load double, double* %26, align 8
  %28 = load double*, double** %y.addr, align 8
  %29 = load double, double* %28, align 8
  %30 = load %struct._GimpCanvasHandlePrivate*, %struct._GimpCanvasHandlePrivate** %private, align 8
  %width6 = getelementptr inbounds %struct._GimpCanvasHandlePrivate, %struct._GimpCanvasHandlePrivate* %30, i32 0, i32 4
  %31 = load i32, i32* %width6, align 4
  %32 = load %struct._GimpCanvasHandlePrivate*, %struct._GimpCanvasHandlePrivate** %private, align 8
  %height7 = getelementptr inbounds %struct._GimpCanvasHandlePrivate, %struct._GimpCanvasHandlePrivate* %32, i32 0, i32 5
  %33 = load i32, i32* %height7, align 4
  %34 = load double*, double** %x.addr, align 8
  %35 = load double*, double** %y.addr, align 8
  call void @gimp_canvas_item_shift_to_center(i32 %25, double %27, double %29, i32 %31, i32 %33, double* %34, double* %35)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.4, %sw.bb
  %36 = load double*, double** %x.addr, align 8
  %37 = load double, double* %36, align 8
  %call8 = call double @floor(double %37) #6
  %add = fadd double %call8, 5.000000e-01
  %38 = load double*, double** %x.addr, align 8
  store double %add, double* %38, align 8
  %39 = load double*, double** %y.addr, align 8
  %40 = load double, double* %39, align 8
  %call9 = call double @floor(double %40) #6
  %add10 = fadd double %call9, 5.000000e-01
  %41 = load double*, double** %y.addr, align 8
  store double %add10, double* %41, align 8
  ret void
}

declare void @cairo_rectangle(%struct._cairo*, double, double, double, double) #1

declare void @_gimp_canvas_item_stroke(%struct._GimpCanvasItem*, %struct._cairo*) #1

declare void @_gimp_canvas_item_fill(%struct._GimpCanvasItem*, %struct._cairo*) #1

declare void @gimp_cairo_add_arc(%struct._cairo*, double, double, double, double, double) #1

declare void @cairo_move_to(%struct._cairo*, double, double) #1

declare void @cairo_line_to(%struct._cairo*, double, double) #1

declare void @gimp_display_shell_transform_xy_f(%struct._GimpDisplayShell*, double, double, double*, double*) #1

declare void @gimp_canvas_item_shift_to_north_west(i32, double, double, i32, i32, double*, double*) #1

declare void @gimp_canvas_item_shift_to_center(i32, double, double, i32, i32, double*, double*) #1

; Function Attrs: nounwind readnone
declare double @floor(double) #2

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
