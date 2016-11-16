; ModuleID = './app/display/gimpcanvasprogress.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpCanvasProgressClass = type { %struct._GimpCanvasItemClass }
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
%struct._GimpCanvasProgress = type { %struct._GimpCanvasItem }
%struct._GimpProgressInterface = type { %struct._GTypeInterface, %struct._GimpProgress* (%struct._GimpProgress*, i8*, i32)*, void (%struct._GimpProgress*)*, i32 (%struct._GimpProgress*)*, void (%struct._GimpProgress*, i8*)*, void (%struct._GimpProgress*, double)*, double (%struct._GimpProgress*)*, void (%struct._GimpProgress*)*, i32 (%struct._GimpProgress*)*, i32 (%struct._GimpProgress*, %struct._Gimp*, i32, i8*, i8*)*, void (%struct._GimpProgress*)* }
%struct._GTypeInterface = type { i64, i64 }
%struct._GimpProgress = type opaque
%struct._Gimp = type opaque
%struct._GimpCanvasProgressPrivate = type { i32, double, double, i8*, double }
%struct._PangoLayout = type opaque
%struct._GimpCanvas = type { %struct._GimpOverlayBox, %struct._GimpDisplayConfig*, %struct._PangoLayout* }
%struct._GimpOverlayBox = type { %struct._GtkContainer, %struct._GList* }
%struct._GimpDisplayConfig = type opaque
%struct._cairo_rectangle_int = type { i32, i32, i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_canvas_progress_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"GimpCanvasProgress\00", align 1
@gimp_canvas_progress_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpProgressInterface*)* @gimp_canvas_progress_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Display\00", align 1
@__func__.gimp_canvas_progress_new = private unnamed_addr constant [25 x i8] c"gimp_canvas_progress_new\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"GIMP_IS_DISPLAY_SHELL (shell)\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"anchor\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@gimp_canvas_progress_parent_class = internal global i8* null, align 8
@GimpCanvasProgress_private_offset = internal global i32 0, align 4
@.str.7 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"gimpcanvasprogress.c\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_canvas_progress_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_canvas_progress_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_canvas_progress_get_type.g_define_type_id__volatile to i8*))
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
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 208, void (i8*, i8*)* bitcast (void (i8*)* @gimp_canvas_progress_class_intern_init to void (i8*, i8*)*), i32 32, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpCanvasProgress*)* @gimp_canvas_progress_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_progress_interface_get_type() #6
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_canvas_progress_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_canvas_progress_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_canvas_progress_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_canvas_item_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_progress_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_canvas_progress_parent_class, align 8
  %1 = load i32, i32* @GimpCanvasProgress_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpCanvasProgress_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpCanvasProgressClass*
  call void @gimp_canvas_progress_class_init(%struct._GimpCanvasProgressClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_progress_init(%struct._GimpCanvasProgress* %progress) #3 {
entry:
  %progress.addr = alloca %struct._GimpCanvasProgress*, align 8
  store %struct._GimpCanvasProgress* %progress, %struct._GimpCanvasProgress** %progress.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_progress_iface_init(%struct._GimpProgressInterface* %iface) #3 {
entry:
  %iface.addr = alloca %struct._GimpProgressInterface*, align 8
  store %struct._GimpProgressInterface* %iface, %struct._GimpProgressInterface** %iface.addr, align 8
  %0 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %start = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %0, i32 0, i32 1
  store %struct._GimpProgress* (%struct._GimpProgress*, i8*, i32)* @gimp_canvas_progress_start, %struct._GimpProgress* (%struct._GimpProgress*, i8*, i32)** %start, align 8
  %1 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %end = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %1, i32 0, i32 2
  store void (%struct._GimpProgress*)* @gimp_canvas_progress_end, void (%struct._GimpProgress*)** %end, align 8
  %2 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %is_active = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %2, i32 0, i32 3
  store i32 (%struct._GimpProgress*)* @gimp_canvas_progress_is_active, i32 (%struct._GimpProgress*)** %is_active, align 8
  %3 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %set_text = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %3, i32 0, i32 4
  store void (%struct._GimpProgress*, i8*)* @gimp_canvas_progress_set_text, void (%struct._GimpProgress*, i8*)** %set_text, align 8
  %4 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %set_value = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %4, i32 0, i32 5
  store void (%struct._GimpProgress*, double)* @gimp_canvas_progress_set_value, void (%struct._GimpProgress*, double)** %set_value, align 8
  %5 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %get_value = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %5, i32 0, i32 6
  store double (%struct._GimpProgress*)* @gimp_canvas_progress_get_value, double (%struct._GimpProgress*)** %get_value, align 8
  %6 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %pulse = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %6, i32 0, i32 7
  store void (%struct._GimpProgress*)* @gimp_canvas_progress_pulse, void (%struct._GimpProgress*)** %pulse, align 8
  %7 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %message = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %7, i32 0, i32 9
  store i32 (%struct._GimpProgress*, %struct._Gimp*, i32, i8*, i8*)* @gimp_canvas_progress_message, i32 (%struct._GimpProgress*, %struct._Gimp*, i32, i8*, i8*)** %message, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_progress_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpCanvasItem* @gimp_canvas_progress_new(%struct._GimpDisplayShell* %shell, i32 %anchor, double %x, double %y) #3 {
entry:
  %retval = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %anchor.addr = alloca i32, align 4
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store i32 %anchor, i32* %anchor.addr, align 4
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_canvas_progress_new, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_canvas_progress_get_type() #6
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %14 = load i32, i32* %anchor.addr, align 4
  %15 = load double, double* %x.addr, align 8
  %16 = load double, double* %y.addr, align 8
  %call12 = call i8* (i64, i8*, ...) @g_object_new(i64 %call11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), %struct._GimpDisplayShell* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), double %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), double %16, i8* null)
  %17 = bitcast i8* %call12 to %struct._GimpCanvasItem*
  store %struct._GimpCanvasItem* %17, %struct._GimpCanvasItem** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %18 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %retval
  ret %struct._GimpCanvasItem* %18
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
define internal void @gimp_canvas_progress_class_init(%struct._GimpCanvasProgressClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpCanvasProgressClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %item_class = alloca %struct._GimpCanvasItemClass*, align 8
  store %struct._GimpCanvasProgressClass* %klass, %struct._GimpCanvasProgressClass** %klass.addr, align 8
  %0 = load %struct._GimpCanvasProgressClass*, %struct._GimpCanvasProgressClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpCanvasProgressClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpCanvasProgressClass*, %struct._GimpCanvasProgressClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpCanvasProgressClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_canvas_item_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpCanvasItemClass*
  store %struct._GimpCanvasItemClass* %5, %struct._GimpCanvasItemClass** %item_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_canvas_progress_finalize, void (%struct._GObject*)** %finalize, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_canvas_progress_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_canvas_progress_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %9 = load %struct._GimpCanvasItemClass*, %struct._GimpCanvasItemClass** %item_class, align 8
  %draw = getelementptr inbounds %struct._GimpCanvasItemClass, %struct._GimpCanvasItemClass* %9, i32 0, i32 2
  store void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)* @gimp_canvas_progress_draw, void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)** %draw, align 8
  %10 = load %struct._GimpCanvasItemClass*, %struct._GimpCanvasItemClass** %item_class, align 8
  %get_extents = getelementptr inbounds %struct._GimpCanvasItemClass, %struct._GimpCanvasItemClass* %10, i32 0, i32 3
  store %struct._cairo_region* (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*)* @gimp_canvas_progress_get_extents, %struct._cairo_region* (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*)** %get_extents, align 8
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call i64 @gimp_handle_anchor_get_type() #6
  %call4 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* null, i64 %call3, i32 0, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %11, i32 1, %struct._GParamSpec* %call4)
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null, double -2.621440e+05, double 2.621440e+05, double 0.000000e+00, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %12, i32 2, %struct._GParamSpec* %call5)
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null, double -2.621440e+05, double 2.621440e+05, double 0.000000e+00, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %13, i32 3, %struct._GParamSpec* %call6)
  %14 = load %struct._GimpCanvasProgressClass*, %struct._GimpCanvasProgressClass** %klass.addr, align 8
  %15 = bitcast %struct._GimpCanvasProgressClass* %14 to i8*
  call void @g_type_class_add_private(i8* %15, i64 40)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_progress_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %private = alloca %struct._GimpCanvasProgressPrivate*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_progress_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasProgressPrivate*
  store %struct._GimpCanvasProgressPrivate* %2, %struct._GimpCanvasProgressPrivate** %private, align 8
  %3 = load %struct._GimpCanvasProgressPrivate*, %struct._GimpCanvasProgressPrivate** %private, align 8
  %text = getelementptr inbounds %struct._GimpCanvasProgressPrivate, %struct._GimpCanvasProgressPrivate* %3, i32 0, i32 3
  %4 = load i8*, i8** %text, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpCanvasProgressPrivate*, %struct._GimpCanvasProgressPrivate** %private, align 8
  %text2 = getelementptr inbounds %struct._GimpCanvasProgressPrivate, %struct._GimpCanvasProgressPrivate* %5, i32 0, i32 3
  %6 = load i8*, i8** %text2, align 8
  call void @g_free(i8* %6)
  %7 = load %struct._GimpCanvasProgressPrivate*, %struct._GimpCanvasProgressPrivate** %private, align 8
  %text3 = getelementptr inbounds %struct._GimpCanvasProgressPrivate, %struct._GimpCanvasProgressPrivate* %7, i32 0, i32 3
  store i8* null, i8** %text3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8*, i8** @gimp_canvas_progress_parent_class, align 8
  %9 = bitcast i8* %8 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %9, i64 80)
  %10 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 6
  %11 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %12 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %11(%struct._GObject* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_progress_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpCanvasProgressPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_progress_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasProgressPrivate*
  store %struct._GimpCanvasProgressPrivate* %2, %struct._GimpCanvasProgressPrivate** %private, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i32 @g_value_get_enum(%struct._GValue* %4)
  %5 = load %struct._GimpCanvasProgressPrivate*, %struct._GimpCanvasProgressPrivate** %private, align 8
  %anchor = getelementptr inbounds %struct._GimpCanvasProgressPrivate, %struct._GimpCanvasProgressPrivate* %5, i32 0, i32 0
  store i32 %call2, i32* %anchor, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %6 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call double @g_value_get_double(%struct._GValue* %6)
  %7 = load %struct._GimpCanvasProgressPrivate*, %struct._GimpCanvasProgressPrivate** %private, align 8
  %x = getelementptr inbounds %struct._GimpCanvasProgressPrivate, %struct._GimpCanvasProgressPrivate* %7, i32 0, i32 1
  store double %call4, double* %x, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call double @g_value_get_double(%struct._GValue* %8)
  %9 = load %struct._GimpCanvasProgressPrivate*, %struct._GimpCanvasProgressPrivate** %private, align 8
  %y = getelementptr inbounds %struct._GimpCanvasProgressPrivate, %struct._GimpCanvasProgressPrivate* %9, i32 0, i32 2
  store double %call6, double* %y, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %10 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %10, %struct._GObject** %_glib__object, align 8
  %11 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %11, %struct._GParamSpec** %_glib__pspec, align 8
  %12 = load i32, i32* %property_id.addr, align 4
  store i32 %12, i32* %_glib__property_id, align 4
  %13 = load i32, i32* %_glib__property_id, align 4
  %14 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %14, i32 0, i32 1
  %15 = load i8*, i8** %name, align 8
  %16 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %17 = bitcast %struct._GParamSpec* %16 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %18, i32 0, i32 0
  %19 = load i64, i64* %g_type, align 8
  %call7 = call i8* @g_type_name(i64 %19)
  %20 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %21 = bitcast %struct._GObject* %20 to %struct._GTypeInstance*
  %g_class8 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class8, align 8
  %g_type9 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type9, align 8
  %call10 = call i8* @g_type_name(i64 %23)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), i32 204, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32 %13, i8* %15, i8* %call7, i8* %call10)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.5, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_progress_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpCanvasProgressPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_progress_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasProgressPrivate*
  store %struct._GimpCanvasProgressPrivate* %2, %struct._GimpCanvasProgressPrivate** %private, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpCanvasProgressPrivate*, %struct._GimpCanvasProgressPrivate** %private, align 8
  %anchor = getelementptr inbounds %struct._GimpCanvasProgressPrivate, %struct._GimpCanvasProgressPrivate* %5, i32 0, i32 0
  %6 = load i32, i32* %anchor, align 4
  call void @g_value_set_enum(%struct._GValue* %4, i32 %6)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GimpCanvasProgressPrivate*, %struct._GimpCanvasProgressPrivate** %private, align 8
  %x = getelementptr inbounds %struct._GimpCanvasProgressPrivate, %struct._GimpCanvasProgressPrivate* %8, i32 0, i32 1
  %9 = load double, double* %x, align 8
  call void @g_value_set_double(%struct._GValue* %7, double %9)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %11 = load %struct._GimpCanvasProgressPrivate*, %struct._GimpCanvasProgressPrivate** %private, align 8
  %y = getelementptr inbounds %struct._GimpCanvasProgressPrivate, %struct._GimpCanvasProgressPrivate* %11, i32 0, i32 2
  %12 = load double, double* %y, align 8
  call void @g_value_set_double(%struct._GValue* %10, double %12)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %13 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %13, %struct._GObject** %_glib__object, align 8
  %14 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %14, %struct._GParamSpec** %_glib__pspec, align 8
  %15 = load i32, i32* %property_id.addr, align 4
  store i32 %15, i32* %_glib__property_id, align 4
  %16 = load i32, i32* %_glib__property_id, align 4
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %17, i32 0, i32 1
  %18 = load i8*, i8** %name, align 8
  %19 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %20 = bitcast %struct._GParamSpec* %19 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type, align 8
  %call4 = call i8* @g_type_name(i64 %22)
  %23 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %24 = bitcast %struct._GObject* %23 to %struct._GTypeInstance*
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %24, i32 0, i32 0
  %25 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type6 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %25, i32 0, i32 0
  %26 = load i64, i64* %g_type6, align 8
  %call7 = call i8* @g_type_name(i64 %26)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), i32 230, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32 %16, i8* %18, i8* %call4, i8* %call7)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.3, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_progress_draw(%struct._GimpCanvasItem* %item, %struct._GimpDisplayShell* %shell, %struct._cairo* %cr) #3 {
entry:
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %private = alloca %struct._GimpCanvasProgressPrivate*, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_progress_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasProgressPrivate*
  store %struct._GimpCanvasProgressPrivate* %2, %struct._GimpCanvasProgressPrivate** %private, align 8
  %3 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %call2 = call %struct._PangoLayout* @gimp_canvas_progress_transform(%struct._GimpCanvasItem* %3, %struct._GimpDisplayShell* %4, double* %x, double* %y, i32* %width, i32* %height)
  %5 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %6 = load double, double* %x, align 8
  %7 = load double, double* %y, align 8
  call void @cairo_move_to(%struct._cairo* %5, double %6, double %7)
  %8 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %9 = load double, double* %x, align 8
  %10 = load i32, i32* %width, align 4
  %conv = sitofp i32 %10 to double
  %add = fadd double %9, %conv
  %11 = load double, double* %y, align 8
  call void @cairo_line_to(%struct._cairo* %8, double %add, double %11)
  %12 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %13 = load double, double* %x, align 8
  %14 = load i32, i32* %width, align 4
  %conv3 = sitofp i32 %14 to double
  %add4 = fadd double %13, %conv3
  %15 = load double, double* %y, align 8
  %16 = load i32, i32* %height, align 4
  %conv5 = sitofp i32 %16 to double
  %add6 = fadd double %15, %conv5
  %sub = fsub double %add6, 5.000000e+00
  %sub7 = fsub double %sub, 4.000000e+01
  call void @cairo_line_to(%struct._cairo* %12, double %add4, double %sub7)
  %17 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %18 = load double, double* %x, align 8
  %add8 = fadd double %18, 1.000000e+01
  %add9 = fadd double %add8, 4.000000e+01
  %19 = load double, double* %y, align 8
  %20 = load i32, i32* %height, align 4
  %conv10 = sitofp i32 %20 to double
  %add11 = fadd double %19, %conv10
  %sub12 = fsub double %add11, 5.000000e+00
  %sub13 = fsub double %sub12, 4.000000e+01
  call void @cairo_line_to(%struct._cairo* %17, double %add9, double %sub13)
  %21 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %22 = load double, double* %x, align 8
  %add14 = fadd double %22, 5.000000e+00
  %add15 = fadd double %add14, 2.000000e+01
  %23 = load double, double* %y, align 8
  %24 = load i32, i32* %height, align 4
  %conv16 = sitofp i32 %24 to double
  %add17 = fadd double %23, %conv16
  %sub18 = fsub double %add17, 5.000000e+00
  %sub19 = fsub double %sub18, 2.000000e+01
  call void @cairo_arc(%struct._cairo* %21, double %add15, double %sub19, double 2.500000e+01, double 0.000000e+00, double 0x400921FB54442D18)
  %25 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_close_path(%struct._cairo* %25)
  %26 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %27 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @_gimp_canvas_item_fill(%struct._GimpCanvasItem* %26, %struct._cairo* %27)
  %28 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %29 = load double, double* %x, align 8
  %add20 = fadd double %29, 5.000000e+00
  %30 = load double, double* %y, align 8
  %add21 = fadd double %30, 5.000000e+00
  call void @cairo_move_to(%struct._cairo* %28, double %add20, double %add21)
  %31 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_set_source_rgba(%struct._cairo* %31, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  %32 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %33 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %canvas = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %33, i32 0, i32 33
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_canvas_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call22)
  %36 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpCanvas*
  %37 = load %struct._GimpCanvasProgressPrivate*, %struct._GimpCanvasProgressPrivate** %private, align 8
  %text = getelementptr inbounds %struct._GimpCanvasProgressPrivate, %struct._GimpCanvasProgressPrivate* %37, i32 0, i32 3
  %38 = load i8*, i8** %text, align 8
  %call24 = call %struct._PangoLayout* (%struct._GimpCanvas*, i8*, ...) @gimp_canvas_get_layout(%struct._GimpCanvas* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* %38)
  call void @pango_cairo_show_layout(%struct._cairo* %32, %struct._PangoLayout* %call24)
  %39 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %40 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @gimp_display_shell_set_tool_bg_style(%struct._GimpDisplayShell* %39, %struct._cairo* %40)
  %41 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %42 = load double, double* %x, align 8
  %add25 = fadd double %42, 5.000000e+00
  %add26 = fadd double %add25, 2.000000e+01
  %43 = load double, double* %y, align 8
  %44 = load i32, i32* %height, align 4
  %conv27 = sitofp i32 %44 to double
  %add28 = fadd double %43, %conv27
  %sub29 = fsub double %add28, 5.000000e+00
  %sub30 = fsub double %sub29, 2.000000e+01
  call void @cairo_arc(%struct._cairo* %41, double %add26, double %sub30, double 2.000000e+01, double 0xBFF921FB54442D18, double 0x4012D97C7F3321D2)
  %45 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_fill(%struct._cairo* %45)
  %46 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_set_source_rgba(%struct._cairo* %46, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, double 1.000000e+00)
  %47 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %48 = load double, double* %x, align 8
  %add31 = fadd double %48, 5.000000e+00
  %add32 = fadd double %add31, 2.000000e+01
  %49 = load double, double* %y, align 8
  %50 = load i32, i32* %height, align 4
  %conv33 = sitofp i32 %50 to double
  %add34 = fadd double %49, %conv33
  %sub35 = fsub double %add34, 5.000000e+00
  %sub36 = fsub double %sub35, 2.000000e+01
  call void @cairo_move_to(%struct._cairo* %47, double %add32, double %sub36)
  %51 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %52 = load double, double* %x, align 8
  %add37 = fadd double %52, 5.000000e+00
  %add38 = fadd double %add37, 2.000000e+01
  %53 = load double, double* %y, align 8
  %54 = load i32, i32* %height, align 4
  %conv39 = sitofp i32 %54 to double
  %add40 = fadd double %53, %conv39
  %sub41 = fsub double %add40, 5.000000e+00
  %sub42 = fsub double %sub41, 2.000000e+01
  %55 = load %struct._GimpCanvasProgressPrivate*, %struct._GimpCanvasProgressPrivate** %private, align 8
  %value = getelementptr inbounds %struct._GimpCanvasProgressPrivate, %struct._GimpCanvasProgressPrivate* %55, i32 0, i32 4
  %56 = load double, double* %value, align 8
  %mul = fmul double 0x401921FB54442D18, %56
  %sub43 = fsub double %mul, 0x3FF921FB54442D18
  call void @cairo_arc(%struct._cairo* %51, double %add38, double %sub42, double 2.000000e+01, double 0xBFF921FB54442D18, double %sub43)
  %57 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_fill(%struct._cairo* %57)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._cairo_region* @gimp_canvas_progress_get_extents(%struct._GimpCanvasItem* %item, %struct._GimpDisplayShell* %shell) #3 {
entry:
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %rectangle = alloca %struct._cairo_rectangle_int, align 4
  %x = alloca double, align 8
  %y = alloca double, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %call = call %struct._PangoLayout* @gimp_canvas_progress_transform(%struct._GimpCanvasItem* %0, %struct._GimpDisplayShell* %1, double* %x, double* %y, i32* %width, i32* %height)
  %2 = load double, double* %x, align 8
  %conv = fptosi double %2 to i32
  %sub = sub nsw i32 %conv, 1
  %x1 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 0
  store i32 %sub, i32* %x1, align 4
  %3 = load double, double* %y, align 8
  %conv2 = fptosi double %3 to i32
  %sub3 = sub nsw i32 %conv2, 1
  %y4 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 1
  store i32 %sub3, i32* %y4, align 4
  %4 = load i32, i32* %width, align 4
  %add = add nsw i32 %4, 2
  %width5 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 2
  store i32 %add, i32* %width5, align 4
  %5 = load i32, i32* %height, align 4
  %add6 = add nsw i32 %5, 2
  %height7 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 3
  store i32 %add6, i32* %height7, align 4
  %call8 = call %struct._cairo_region* @cairo_region_create_rectangle(%struct._cairo_rectangle_int* %rectangle)
  ret %struct._cairo_region* %call8
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_handle_anchor_get_type() #2

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

declare void @g_type_class_add_private(i8*, i64) #1

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

declare void @g_free(i8*) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

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

declare void @g_value_set_enum(%struct._GValue*, i32) #1

declare void @g_value_set_double(%struct._GValue*, double) #1

; Function Attrs: nounwind uwtable
define internal %struct._PangoLayout* @gimp_canvas_progress_transform(%struct._GimpCanvasItem* %item, %struct._GimpDisplayShell* %shell, double* %x, double* %y, i32* %width, i32* %height) #3 {
entry:
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %x.addr = alloca double*, align 8
  %y.addr = alloca double*, align 8
  %width.addr = alloca i32*, align 8
  %height.addr = alloca i32*, align 8
  %private = alloca %struct._GimpCanvasProgressPrivate*, align 8
  %layout = alloca %struct._PangoLayout*, align 8
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store double* %x, double** %x.addr, align 8
  store double* %y, double** %y.addr, align 8
  store i32* %width, i32** %width.addr, align 8
  store i32* %height, i32** %height.addr, align 8
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_progress_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasProgressPrivate*
  store %struct._GimpCanvasProgressPrivate* %2, %struct._GimpCanvasProgressPrivate** %private, align 8
  %3 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %canvas = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %3, i32 0, i32 33
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_canvas_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpCanvas*
  %7 = load %struct._GimpCanvasProgressPrivate*, %struct._GimpCanvasProgressPrivate** %private, align 8
  %text = getelementptr inbounds %struct._GimpCanvasProgressPrivate, %struct._GimpCanvasProgressPrivate* %7, i32 0, i32 3
  %8 = load i8*, i8** %text, align 8
  %call4 = call %struct._PangoLayout* (%struct._GimpCanvas*, i8*, ...) @gimp_canvas_get_layout(%struct._GimpCanvas* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* %8)
  store %struct._PangoLayout* %call4, %struct._PangoLayout** %layout, align 8
  %9 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  %10 = load i32*, i32** %width.addr, align 8
  %11 = load i32*, i32** %height.addr, align 8
  call void @pango_layout_get_pixel_size(%struct._PangoLayout* %9, i32* %10, i32* %11)
  %12 = load i32*, i32** %width.addr, align 8
  %13 = load i32, i32* %12, align 4
  %add = add nsw i32 %13, 10
  store i32 %add, i32* %12, align 4
  %14 = load i32*, i32** %height.addr, align 8
  %15 = load i32, i32* %14, align 4
  %add5 = add nsw i32 %15, 55
  store i32 %add5, i32* %14, align 4
  %16 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %17 = load %struct._GimpCanvasProgressPrivate*, %struct._GimpCanvasProgressPrivate** %private, align 8
  %x6 = getelementptr inbounds %struct._GimpCanvasProgressPrivate, %struct._GimpCanvasProgressPrivate* %17, i32 0, i32 1
  %18 = load double, double* %x6, align 8
  %19 = load %struct._GimpCanvasProgressPrivate*, %struct._GimpCanvasProgressPrivate** %private, align 8
  %y7 = getelementptr inbounds %struct._GimpCanvasProgressPrivate, %struct._GimpCanvasProgressPrivate* %19, i32 0, i32 2
  %20 = load double, double* %y7, align 8
  %21 = load double*, double** %x.addr, align 8
  %22 = load double*, double** %y.addr, align 8
  call void @gimp_display_shell_transform_xy_f(%struct._GimpDisplayShell* %16, double %18, double %20, double* %21, double* %22)
  %23 = load %struct._GimpCanvasProgressPrivate*, %struct._GimpCanvasProgressPrivate** %private, align 8
  %anchor = getelementptr inbounds %struct._GimpCanvasProgressPrivate, %struct._GimpCanvasProgressPrivate* %23, i32 0, i32 0
  %24 = load i32, i32* %anchor, align 4
  %25 = load double*, double** %x.addr, align 8
  %26 = load double, double* %25, align 8
  %27 = load double*, double** %y.addr, align 8
  %28 = load double, double* %27, align 8
  %29 = load i32*, i32** %width.addr, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %height.addr, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load double*, double** %x.addr, align 8
  %34 = load double*, double** %y.addr, align 8
  call void @gimp_canvas_item_shift_to_north_west(i32 %24, double %26, double %28, i32 %30, i32 %32, double* %33, double* %34)
  %35 = load double*, double** %x.addr, align 8
  %36 = load double, double* %35, align 8
  %call8 = call double @floor(double %36) #6
  %37 = load double*, double** %x.addr, align 8
  store double %call8, double* %37, align 8
  %38 = load double*, double** %y.addr, align 8
  %39 = load double, double* %38, align 8
  %call9 = call double @floor(double %39) #6
  %40 = load double*, double** %y.addr, align 8
  store double %call9, double* %40, align 8
  %41 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  ret %struct._PangoLayout* %41
}

declare void @cairo_move_to(%struct._cairo*, double, double) #1

declare void @cairo_line_to(%struct._cairo*, double, double) #1

declare void @cairo_arc(%struct._cairo*, double, double, double, double, double) #1

declare void @cairo_close_path(%struct._cairo*) #1

declare void @_gimp_canvas_item_fill(%struct._GimpCanvasItem*, %struct._cairo*) #1

declare void @cairo_set_source_rgba(%struct._cairo*, double, double, double, double) #1

declare void @pango_cairo_show_layout(%struct._cairo*, %struct._PangoLayout*) #1

declare %struct._PangoLayout* @gimp_canvas_get_layout(%struct._GimpCanvas*, i8*, ...) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_canvas_get_type() #2

declare void @gimp_display_shell_set_tool_bg_style(%struct._GimpDisplayShell*, %struct._cairo*) #1

declare void @cairo_fill(%struct._cairo*) #1

declare void @pango_layout_get_pixel_size(%struct._PangoLayout*, i32*, i32*) #1

declare void @gimp_display_shell_transform_xy_f(%struct._GimpDisplayShell*, double, double, double*, double*) #1

declare void @gimp_canvas_item_shift_to_north_west(i32, double, double, i32, i32, double*, double*) #1

; Function Attrs: nounwind readnone
declare double @floor(double) #2

declare %struct._cairo_region* @cairo_region_create_rectangle(%struct._cairo_rectangle_int*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GimpProgress* @gimp_canvas_progress_start(%struct._GimpProgress* %progress, i8* %message, i32 %cancelable) #3 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %message.addr = alloca i8*, align 8
  %cancelable.addr = alloca i32, align 4
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store i8* %message, i8** %message.addr, align 8
  store i32 %cancelable, i32* %cancelable.addr, align 4
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = load i8*, i8** %message.addr, align 8
  call void @gimp_canvas_progress_set_text(%struct._GimpProgress* %0, i8* %1)
  %2 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  ret %struct._GimpProgress* %2
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_progress_end(%struct._GimpProgress* %progress) #3 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_canvas_progress_is_active(%struct._GimpProgress* %progress) #3 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_progress_set_text(%struct._GimpProgress* %progress, i8* %message) #3 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %message.addr = alloca i8*, align 8
  %private = alloca %struct._GimpCanvasProgressPrivate*, align 8
  %old_region = alloca %struct._cairo_region*, align 8
  %new_region = alloca %struct._cairo_region*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store i8* %message, i8** %message.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_progress_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasProgressPrivate*
  store %struct._GimpCanvasProgressPrivate* %2, %struct._GimpCanvasProgressPrivate** %private, align 8
  %3 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %4 = bitcast %struct._GimpProgress* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_canvas_item_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpCanvasItem*
  %call4 = call %struct._cairo_region* @gimp_canvas_item_get_extents(%struct._GimpCanvasItem* %5)
  store %struct._cairo_region* %call4, %struct._cairo_region** %old_region, align 8
  %6 = load %struct._GimpCanvasProgressPrivate*, %struct._GimpCanvasProgressPrivate** %private, align 8
  %text = getelementptr inbounds %struct._GimpCanvasProgressPrivate, %struct._GimpCanvasProgressPrivate* %6, i32 0, i32 3
  %7 = load i8*, i8** %text, align 8
  %tobool = icmp ne i8* %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpCanvasProgressPrivate*, %struct._GimpCanvasProgressPrivate** %private, align 8
  %text5 = getelementptr inbounds %struct._GimpCanvasProgressPrivate, %struct._GimpCanvasProgressPrivate* %8, i32 0, i32 3
  %9 = load i8*, i8** %text5, align 8
  call void @g_free(i8* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i8*, i8** %message.addr, align 8
  %call6 = call noalias i8* @g_strdup(i8* %10)
  %11 = load %struct._GimpCanvasProgressPrivate*, %struct._GimpCanvasProgressPrivate** %private, align 8
  %text7 = getelementptr inbounds %struct._GimpCanvasProgressPrivate, %struct._GimpCanvasProgressPrivate* %11, i32 0, i32 3
  store i8* %call6, i8** %text7, align 8
  %12 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %13 = bitcast %struct._GimpProgress* %12 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_canvas_item_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call8)
  %14 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpCanvasItem*
  %call10 = call %struct._cairo_region* @gimp_canvas_item_get_extents(%struct._GimpCanvasItem* %14)
  store %struct._cairo_region* %call10, %struct._cairo_region** %new_region, align 8
  %15 = load %struct._cairo_region*, %struct._cairo_region** %new_region, align 8
  %16 = load %struct._cairo_region*, %struct._cairo_region** %old_region, align 8
  %call11 = call i32 @cairo_region_union(%struct._cairo_region* %15, %struct._cairo_region* %16)
  %17 = load %struct._cairo_region*, %struct._cairo_region** %old_region, align 8
  call void @cairo_region_destroy(%struct._cairo_region* %17)
  %18 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %19 = bitcast %struct._GimpProgress* %18 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_canvas_item_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call12)
  %20 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpCanvasItem*
  %21 = load %struct._cairo_region*, %struct._cairo_region** %new_region, align 8
  call void @_gimp_canvas_item_update(%struct._GimpCanvasItem* %20, %struct._cairo_region* %21)
  %22 = load %struct._cairo_region*, %struct._cairo_region** %new_region, align 8
  call void @cairo_region_destroy(%struct._cairo_region* %22)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_progress_set_value(%struct._GimpProgress* %progress, double %percentage) #3 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %percentage.addr = alloca double, align 8
  %private = alloca %struct._GimpCanvasProgressPrivate*, align 8
  %region = alloca %struct._cairo_region*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store double %percentage, double* %percentage.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_progress_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasProgressPrivate*
  store %struct._GimpCanvasProgressPrivate* %2, %struct._GimpCanvasProgressPrivate** %private, align 8
  %3 = load double, double* %percentage.addr, align 8
  %4 = load %struct._GimpCanvasProgressPrivate*, %struct._GimpCanvasProgressPrivate** %private, align 8
  %value = getelementptr inbounds %struct._GimpCanvasProgressPrivate, %struct._GimpCanvasProgressPrivate* %4, i32 0, i32 4
  %5 = load double, double* %value, align 8
  %cmp = fcmp une double %3, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load double, double* %percentage.addr, align 8
  %7 = load %struct._GimpCanvasProgressPrivate*, %struct._GimpCanvasProgressPrivate** %private, align 8
  %value2 = getelementptr inbounds %struct._GimpCanvasProgressPrivate, %struct._GimpCanvasProgressPrivate* %7, i32 0, i32 4
  store double %6, double* %value2, align 8
  %8 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %9 = bitcast %struct._GimpProgress* %8 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_canvas_item_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call3)
  %10 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpCanvasItem*
  %call5 = call %struct._cairo_region* @gimp_canvas_item_get_extents(%struct._GimpCanvasItem* %10)
  store %struct._cairo_region* %call5, %struct._cairo_region** %region, align 8
  %11 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %12 = bitcast %struct._GimpProgress* %11 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_canvas_item_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call6)
  %13 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpCanvasItem*
  %14 = load %struct._cairo_region*, %struct._cairo_region** %region, align 8
  call void @_gimp_canvas_item_update(%struct._GimpCanvasItem* %13, %struct._cairo_region* %14)
  %15 = load %struct._cairo_region*, %struct._cairo_region** %region, align 8
  call void @cairo_region_destroy(%struct._cairo_region* %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal double @gimp_canvas_progress_get_value(%struct._GimpProgress* %progress) #3 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %private = alloca %struct._GimpCanvasProgressPrivate*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_progress_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasProgressPrivate*
  store %struct._GimpCanvasProgressPrivate* %2, %struct._GimpCanvasProgressPrivate** %private, align 8
  %3 = load %struct._GimpCanvasProgressPrivate*, %struct._GimpCanvasProgressPrivate** %private, align 8
  %value = getelementptr inbounds %struct._GimpCanvasProgressPrivate, %struct._GimpCanvasProgressPrivate* %3, i32 0, i32 4
  %4 = load double, double* %value, align 8
  ret double %4
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_progress_pulse(%struct._GimpProgress* %progress) #3 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_canvas_progress_message(%struct._GimpProgress* %progress, %struct._Gimp* %gimp, i32 %severity, i8* %domain, i8* %message) #3 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %severity.addr = alloca i32, align 4
  %domain.addr = alloca i8*, align 8
  %message.addr = alloca i8*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i32 %severity, i32* %severity.addr, align 4
  store i8* %domain, i8** %domain.addr, align 8
  store i8* %message, i8** %message.addr, align 8
  ret i32 0
}

declare %struct._cairo_region* @gimp_canvas_item_get_extents(%struct._GimpCanvasItem*) #1

declare noalias i8* @g_strdup(i8*) #1

declare i32 @cairo_region_union(%struct._cairo_region*, %struct._cairo_region*) #1

declare void @cairo_region_destroy(%struct._cairo_region*) #1

declare void @_gimp_canvas_item_update(%struct._GimpCanvasItem*, %struct._cairo_region*) #1

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
