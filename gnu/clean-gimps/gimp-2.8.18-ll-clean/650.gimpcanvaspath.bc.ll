; ModuleID = './app/display/gimpcanvaspath.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpCanvasPathClass = type { %struct._GimpCanvasItemClass }
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
%struct._GimpCanvasPath = type { %struct._GimpCanvasItem }
%struct.cairo_path = type { i32, %union._cairo_path_data_t*, i32 }
%union._cairo_path_data_t = type { %struct.anon.0 }
%struct.anon.0 = type { double, double }
%struct._GimpCanvasPathPrivate = type { %struct.cairo_path*, double, double, i32, i32 }
%struct._cairo_rectangle_int = type { i32, i32, i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_canvas_path_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"GimpCanvasPath\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Display\00", align 1
@__func__.gimp_canvas_path_new = private unnamed_addr constant [21 x i8] c"gimp_canvas_path_new\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"GIMP_IS_DISPLAY_SHELL (shell)\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"filled\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"path-style\00", align 1
@__func__.gimp_canvas_path_set = private unnamed_addr constant [21 x i8] c"gimp_canvas_path_set\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"GIMP_IS_CANVAS_PATH (path)\00", align 1
@gimp_canvas_path_parent_class = internal global i8* null, align 8
@GimpCanvasPath_private_offset = internal global i32 0, align 4
@.str.10 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"gimpcanvaspath.c\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"property\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_canvas_path_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_canvas_path_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_canvas_path_get_type.g_define_type_id__volatile to i8*))
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
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 208, void (i8*, i8*)* bitcast (void (i8*)* @gimp_canvas_path_class_intern_init to void (i8*, i8*)*), i32 32, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpCanvasPath*)* @gimp_canvas_path_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_canvas_path_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_canvas_path_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_canvas_item_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_path_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_canvas_path_parent_class, align 8
  %1 = load i32, i32* @GimpCanvasPath_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpCanvasPath_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpCanvasPathClass*
  call void @gimp_canvas_path_class_init(%struct._GimpCanvasPathClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_path_init(%struct._GimpCanvasPath* %path) #3 {
entry:
  %path.addr = alloca %struct._GimpCanvasPath*, align 8
  store %struct._GimpCanvasPath* %path, %struct._GimpCanvasPath** %path.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpCanvasItem* @gimp_canvas_path_new(%struct._GimpDisplayShell* %shell, %struct.cairo_path* %bezier, double %x, double %y, i32 %filled, i32 %style) #3 {
entry:
  %retval = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %bezier.addr = alloca %struct.cairo_path*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %filled.addr = alloca i32, align 4
  %style.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct.cairo_path* %bezier, %struct.cairo_path** %bezier.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store i32 %filled, i32* %filled.addr, align 4
  store i32 %style, i32* %style.addr, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_canvas_path_new, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_canvas_path_get_type() #6
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %14 = load %struct.cairo_path*, %struct.cairo_path** %bezier.addr, align 8
  %15 = load double, double* %x.addr, align 8
  %16 = load double, double* %y.addr, align 8
  %17 = load i32, i32* %filled.addr, align 4
  %18 = load i32, i32* %style.addr, align 4
  %call12 = call i8* (i64, i8*, ...) @g_object_new(i64 %call11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), %struct._GimpDisplayShell* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), %struct.cairo_path* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), double %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), double %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i32 %18, i8* null)
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
define void @gimp_canvas_path_set(%struct._GimpCanvasItem* %path, %struct.cairo_path* %bezier) #3 {
entry:
  %path.addr = alloca %struct._GimpCanvasItem*, align 8
  %bezier.addr = alloca %struct.cairo_path*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCanvasItem* %path, %struct._GimpCanvasItem** %path.addr, align 8
  store %struct.cairo_path* %bezier, %struct.cairo_path** %bezier.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %path.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_canvas_path_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_canvas_path_set, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %path.addr, align 8
  call void @gimp_canvas_item_begin_change(%struct._GimpCanvasItem* %13)
  %14 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %path.addr, align 8
  %15 = bitcast %struct._GimpCanvasItem* %14 to i8*
  %16 = load %struct.cairo_path*, %struct.cairo_path** %bezier.addr, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), %struct.cairo_path* %16, i8* null)
  %17 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %path.addr, align 8
  call void @gimp_canvas_item_end_change(%struct._GimpCanvasItem* %17)
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
define internal void @gimp_canvas_path_class_init(%struct._GimpCanvasPathClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpCanvasPathClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %item_class = alloca %struct._GimpCanvasItemClass*, align 8
  store %struct._GimpCanvasPathClass* %klass, %struct._GimpCanvasPathClass** %klass.addr, align 8
  %0 = load %struct._GimpCanvasPathClass*, %struct._GimpCanvasPathClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpCanvasPathClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpCanvasPathClass*, %struct._GimpCanvasPathClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpCanvasPathClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_canvas_item_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpCanvasItemClass*
  store %struct._GimpCanvasItemClass* %5, %struct._GimpCanvasItemClass** %item_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_canvas_path_finalize, void (%struct._GObject*)** %finalize, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_canvas_path_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_canvas_path_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %9 = load %struct._GimpCanvasItemClass*, %struct._GimpCanvasItemClass** %item_class, align 8
  %draw = getelementptr inbounds %struct._GimpCanvasItemClass, %struct._GimpCanvasItemClass* %9, i32 0, i32 2
  store void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)* @gimp_canvas_path_draw, void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)** %draw, align 8
  %10 = load %struct._GimpCanvasItemClass*, %struct._GimpCanvasItemClass** %item_class, align 8
  %get_extents = getelementptr inbounds %struct._GimpCanvasItemClass, %struct._GimpCanvasItemClass* %10, i32 0, i32 3
  store %struct._cairo_region* (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*)* @gimp_canvas_path_get_extents, %struct._cairo_region* (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*)** %get_extents, align 8
  %11 = load %struct._GimpCanvasItemClass*, %struct._GimpCanvasItemClass** %item_class, align 8
  %stroke = getelementptr inbounds %struct._GimpCanvasItemClass, %struct._GimpCanvasItemClass* %11, i32 0, i32 4
  store void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)* @gimp_canvas_path_stroke, void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)** %stroke, align 8
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call i64 @gimp_bezier_desc_get_type() #6
  %call4 = call %struct._GParamSpec* @g_param_spec_boxed(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* null, i64 %call3, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %12, i32 1, %struct._GParamSpec* %call4)
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null, double -2.621440e+05, double 2.621440e+05, double 0.000000e+00, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %13, i32 2, %struct._GParamSpec* %call5)
  %14 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null, double -2.621440e+05, double 2.621440e+05, double 0.000000e+00, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %14, i32 3, %struct._GParamSpec* %call6)
  %15 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call7 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null, i32 0, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %15, i32 4, %struct._GParamSpec* %call7)
  %16 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call8 = call i64 @gimp_path_style_get_type() #6
  %call9 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* null, i64 %call8, i32 0, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %16, i32 5, %struct._GParamSpec* %call9)
  %17 = load %struct._GimpCanvasPathClass*, %struct._GimpCanvasPathClass** %klass.addr, align 8
  %18 = bitcast %struct._GimpCanvasPathClass* %17 to i8*
  call void @g_type_class_add_private(i8* %18, i64 32)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_path_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %private = alloca %struct._GimpCanvasPathPrivate*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_path_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasPathPrivate*
  store %struct._GimpCanvasPathPrivate* %2, %struct._GimpCanvasPathPrivate** %private, align 8
  %3 = load %struct._GimpCanvasPathPrivate*, %struct._GimpCanvasPathPrivate** %private, align 8
  %path = getelementptr inbounds %struct._GimpCanvasPathPrivate, %struct._GimpCanvasPathPrivate* %3, i32 0, i32 0
  %4 = load %struct.cairo_path*, %struct.cairo_path** %path, align 8
  %tobool = icmp ne %struct.cairo_path* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpCanvasPathPrivate*, %struct._GimpCanvasPathPrivate** %private, align 8
  %path2 = getelementptr inbounds %struct._GimpCanvasPathPrivate, %struct._GimpCanvasPathPrivate* %5, i32 0, i32 0
  %6 = load %struct.cairo_path*, %struct.cairo_path** %path2, align 8
  call void @gimp_bezier_desc_free(%struct.cairo_path* %6)
  %7 = load %struct._GimpCanvasPathPrivate*, %struct._GimpCanvasPathPrivate** %private, align 8
  %path3 = getelementptr inbounds %struct._GimpCanvasPathPrivate, %struct._GimpCanvasPathPrivate* %7, i32 0, i32 0
  store %struct.cairo_path* null, %struct.cairo_path** %path3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8*, i8** @gimp_canvas_path_parent_class, align 8
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
define internal void @gimp_canvas_path_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpCanvasPathPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_path_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasPathPrivate*
  store %struct._GimpCanvasPathPrivate* %2, %struct._GimpCanvasPathPrivate** %private, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.5
    i32 3, label %sw.bb.7
    i32 4, label %sw.bb.9
    i32 5, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GimpCanvasPathPrivate*, %struct._GimpCanvasPathPrivate** %private, align 8
  %path = getelementptr inbounds %struct._GimpCanvasPathPrivate, %struct._GimpCanvasPathPrivate* %4, i32 0, i32 0
  %5 = load %struct.cairo_path*, %struct.cairo_path** %path, align 8
  %tobool = icmp ne %struct.cairo_path* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %6 = load %struct._GimpCanvasPathPrivate*, %struct._GimpCanvasPathPrivate** %private, align 8
  %path2 = getelementptr inbounds %struct._GimpCanvasPathPrivate, %struct._GimpCanvasPathPrivate* %6, i32 0, i32 0
  %7 = load %struct.cairo_path*, %struct.cairo_path** %path2, align 8
  call void @gimp_bezier_desc_free(%struct.cairo_path* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call3 = call i8* @g_value_dup_boxed(%struct._GValue* %8)
  %9 = bitcast i8* %call3 to %struct.cairo_path*
  %10 = load %struct._GimpCanvasPathPrivate*, %struct._GimpCanvasPathPrivate** %private, align 8
  %path4 = getelementptr inbounds %struct._GimpCanvasPathPrivate, %struct._GimpCanvasPathPrivate* %10, i32 0, i32 0
  store %struct.cairo_path* %9, %struct.cairo_path** %path4, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %11 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call double @g_value_get_double(%struct._GValue* %11)
  %12 = load %struct._GimpCanvasPathPrivate*, %struct._GimpCanvasPathPrivate** %private, align 8
  %x = getelementptr inbounds %struct._GimpCanvasPathPrivate, %struct._GimpCanvasPathPrivate* %12, i32 0, i32 1
  store double %call6, double* %x, align 8
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %13 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call8 = call double @g_value_get_double(%struct._GValue* %13)
  %14 = load %struct._GimpCanvasPathPrivate*, %struct._GimpCanvasPathPrivate** %private, align 8
  %y = getelementptr inbounds %struct._GimpCanvasPathPrivate, %struct._GimpCanvasPathPrivate* %14, i32 0, i32 2
  store double %call8, double* %y, align 8
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %15 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call10 = call i32 @g_value_get_boolean(%struct._GValue* %15)
  %16 = load %struct._GimpCanvasPathPrivate*, %struct._GimpCanvasPathPrivate** %private, align 8
  %filled = getelementptr inbounds %struct._GimpCanvasPathPrivate, %struct._GimpCanvasPathPrivate* %16, i32 0, i32 3
  store i32 %call10, i32* %filled, align 4
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %17 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call12 = call i32 @g_value_get_enum(%struct._GValue* %17)
  %18 = load %struct._GimpCanvasPathPrivate*, %struct._GimpCanvasPathPrivate** %private, align 8
  %path_style = getelementptr inbounds %struct._GimpCanvasPathPrivate, %struct._GimpCanvasPathPrivate* %18, i32 0, i32 4
  store i32 %call12, i32* %path_style, align 4
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
  %call13 = call i8* @g_type_name(i64 %28)
  %29 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %30 = bitcast %struct._GObject* %29 to %struct._GTypeInstance*
  %g_class14 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %30, i32 0, i32 0
  %31 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class14, align 8
  %g_type15 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %31, i32 0, i32 0
  %32 = load i64, i64* %g_type15, align 8
  %call16 = call i8* @g_type_name(i64 %32)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i32 188, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i32 %22, i8* %24, i8* %call13, i8* %call16)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.11, %sw.bb.9, %sw.bb.7, %sw.bb.5, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_path_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpCanvasPathPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_path_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasPathPrivate*
  store %struct._GimpCanvasPathPrivate* %2, %struct._GimpCanvasPathPrivate** %private, align 8
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
  %5 = load %struct._GimpCanvasPathPrivate*, %struct._GimpCanvasPathPrivate** %private, align 8
  %path = getelementptr inbounds %struct._GimpCanvasPathPrivate, %struct._GimpCanvasPathPrivate* %5, i32 0, i32 0
  %6 = load %struct.cairo_path*, %struct.cairo_path** %path, align 8
  %7 = bitcast %struct.cairo_path* %6 to i8*
  call void @g_value_set_boxed(%struct._GValue* %4, i8* %7)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %9 = load %struct._GimpCanvasPathPrivate*, %struct._GimpCanvasPathPrivate** %private, align 8
  %x = getelementptr inbounds %struct._GimpCanvasPathPrivate, %struct._GimpCanvasPathPrivate* %9, i32 0, i32 1
  %10 = load double, double* %x, align 8
  call void @g_value_set_double(%struct._GValue* %8, double %10)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %11 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %12 = load %struct._GimpCanvasPathPrivate*, %struct._GimpCanvasPathPrivate** %private, align 8
  %y = getelementptr inbounds %struct._GimpCanvasPathPrivate, %struct._GimpCanvasPathPrivate* %12, i32 0, i32 2
  %13 = load double, double* %y, align 8
  call void @g_value_set_double(%struct._GValue* %11, double %13)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %14 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %15 = load %struct._GimpCanvasPathPrivate*, %struct._GimpCanvasPathPrivate** %private, align 8
  %filled = getelementptr inbounds %struct._GimpCanvasPathPrivate, %struct._GimpCanvasPathPrivate* %15, i32 0, i32 3
  %16 = load i32, i32* %filled, align 4
  call void @g_value_set_boolean(%struct._GValue* %14, i32 %16)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %17 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %18 = load %struct._GimpCanvasPathPrivate*, %struct._GimpCanvasPathPrivate** %private, align 8
  %path_style = getelementptr inbounds %struct._GimpCanvasPathPrivate, %struct._GimpCanvasPathPrivate* %18, i32 0, i32 4
  %19 = load i32, i32* %path_style, align 4
  call void @g_value_set_enum(%struct._GValue* %17, i32 %19)
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
  %call6 = call i8* @g_type_name(i64 %29)
  %30 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %31 = bitcast %struct._GObject* %30 to %struct._GTypeInstance*
  %g_class7 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class7, align 8
  %g_type8 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %32, i32 0, i32 0
  %33 = load i64, i64* %g_type8, align 8
  %call9 = call i8* @g_type_name(i64 %33)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i32 220, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i32 %23, i8* %25, i8* %call6, i8* %call9)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_path_draw(%struct._GimpCanvasItem* %item, %struct._GimpDisplayShell* %shell, %struct._cairo* %cr) #3 {
entry:
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %private = alloca %struct._GimpCanvasPathPrivate*, align 8
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_path_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasPathPrivate*
  store %struct._GimpCanvasPathPrivate* %2, %struct._GimpCanvasPathPrivate** %private, align 8
  %3 = load %struct._GimpCanvasPathPrivate*, %struct._GimpCanvasPathPrivate** %private, align 8
  %path = getelementptr inbounds %struct._GimpCanvasPathPrivate, %struct._GimpCanvasPathPrivate* %3, i32 0, i32 0
  %4 = load %struct.cairo_path*, %struct.cairo_path** %path, align 8
  %tobool = icmp ne %struct.cairo_path* %4, null
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %5 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_save(%struct._cairo* %5)
  %6 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %7 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %7, i32 0, i32 11
  %8 = load i32, i32* %offset_x, align 4
  %sub = sub nsw i32 0, %8
  %conv = sitofp i32 %sub to double
  %9 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %9, i32 0, i32 12
  %10 = load i32, i32* %offset_y, align 4
  %sub2 = sub nsw i32 0, %10
  %conv3 = sitofp i32 %sub2 to double
  call void @cairo_translate(%struct._cairo* %6, double %conv, double %conv3)
  %11 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %12 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %12, i32 0, i32 13
  %13 = load double, double* %scale_x, align 8
  %14 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %14, i32 0, i32 14
  %15 = load double, double* %scale_y, align 8
  call void @cairo_scale(%struct._cairo* %11, double %13, double %15)
  %16 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %17 = load %struct._GimpCanvasPathPrivate*, %struct._GimpCanvasPathPrivate** %private, align 8
  %x = getelementptr inbounds %struct._GimpCanvasPathPrivate, %struct._GimpCanvasPathPrivate* %17, i32 0, i32 1
  %18 = load double, double* %x, align 8
  %19 = load %struct._GimpCanvasPathPrivate*, %struct._GimpCanvasPathPrivate** %private, align 8
  %y = getelementptr inbounds %struct._GimpCanvasPathPrivate, %struct._GimpCanvasPathPrivate* %19, i32 0, i32 2
  %20 = load double, double* %y, align 8
  call void @cairo_translate(%struct._cairo* %16, double %18, double %20)
  %21 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %22 = load %struct._GimpCanvasPathPrivate*, %struct._GimpCanvasPathPrivate** %private, align 8
  %path4 = getelementptr inbounds %struct._GimpCanvasPathPrivate, %struct._GimpCanvasPathPrivate* %22, i32 0, i32 0
  %23 = load %struct.cairo_path*, %struct.cairo_path** %path4, align 8
  call void @cairo_append_path(%struct._cairo* %21, %struct.cairo_path* %23)
  %24 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_restore(%struct._cairo* %24)
  %25 = load %struct._GimpCanvasPathPrivate*, %struct._GimpCanvasPathPrivate** %private, align 8
  %filled = getelementptr inbounds %struct._GimpCanvasPathPrivate, %struct._GimpCanvasPathPrivate* %25, i32 0, i32 3
  %26 = load i32, i32* %filled, align 4
  %tobool5 = icmp ne i32 %26, 0
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %27 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %28 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @_gimp_canvas_item_fill(%struct._GimpCanvasItem* %27, %struct._cairo* %28)
  br label %if.end

if.else:                                          ; preds = %if.then
  %29 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %30 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @_gimp_canvas_item_stroke(%struct._GimpCanvasItem* %29, %struct._cairo* %30)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._cairo_region* @gimp_canvas_path_get_extents(%struct._GimpCanvasItem* %item, %struct._GimpDisplayShell* %shell) #3 {
entry:
  %retval = alloca %struct._cairo_region*, align 8
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %private = alloca %struct._GimpCanvasPathPrivate*, align 8
  %cr = alloca %struct._cairo*, align 8
  %rectangle = alloca %struct._cairo_rectangle_int, align 4
  %x1 = alloca double, align 8
  %y1 = alloca double, align 8
  %x2 = alloca double, align 8
  %y2 = alloca double, align 8
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_path_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasPathPrivate*
  store %struct._GimpCanvasPathPrivate* %2, %struct._GimpCanvasPathPrivate** %private, align 8
  %3 = load %struct._GimpCanvasPathPrivate*, %struct._GimpCanvasPathPrivate** %private, align 8
  %path = getelementptr inbounds %struct._GimpCanvasPathPrivate, %struct._GimpCanvasPathPrivate* %3, i32 0, i32 0
  %4 = load %struct.cairo_path*, %struct.cairo_path** %path, align 8
  %tobool = icmp ne %struct.cairo_path* %4, null
  br i1 %tobool, label %land.lhs.true, label %if.end.54

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %canvas = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %5, i32 0, i32 33
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas, align 8
  %call2 = call i32 @gtk_widget_get_realized(%struct._GtkWidget* %6)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.end.54

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %canvas4 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %7, i32 0, i32 33
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas4, align 8
  %call5 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %8)
  %call6 = call %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable* %call5)
  store %struct._cairo* %call6, %struct._cairo** %cr, align 8
  %9 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_save(%struct._cairo* %9)
  %10 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %11 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %11, i32 0, i32 11
  %12 = load i32, i32* %offset_x, align 4
  %sub = sub nsw i32 0, %12
  %conv = sitofp i32 %sub to double
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 12
  %14 = load i32, i32* %offset_y, align 4
  %sub7 = sub nsw i32 0, %14
  %conv8 = sitofp i32 %sub7 to double
  call void @cairo_translate(%struct._cairo* %10, double %conv, double %conv8)
  %15 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %16 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %16, i32 0, i32 13
  %17 = load double, double* %scale_x, align 8
  %18 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %18, i32 0, i32 14
  %19 = load double, double* %scale_y, align 8
  call void @cairo_scale(%struct._cairo* %15, double %17, double %19)
  %20 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %21 = load %struct._GimpCanvasPathPrivate*, %struct._GimpCanvasPathPrivate** %private, align 8
  %x = getelementptr inbounds %struct._GimpCanvasPathPrivate, %struct._GimpCanvasPathPrivate* %21, i32 0, i32 1
  %22 = load double, double* %x, align 8
  %23 = load %struct._GimpCanvasPathPrivate*, %struct._GimpCanvasPathPrivate** %private, align 8
  %y = getelementptr inbounds %struct._GimpCanvasPathPrivate, %struct._GimpCanvasPathPrivate* %23, i32 0, i32 2
  %24 = load double, double* %y, align 8
  call void @cairo_translate(%struct._cairo* %20, double %22, double %24)
  %25 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %26 = load %struct._GimpCanvasPathPrivate*, %struct._GimpCanvasPathPrivate** %private, align 8
  %path9 = getelementptr inbounds %struct._GimpCanvasPathPrivate, %struct._GimpCanvasPathPrivate* %26, i32 0, i32 0
  %27 = load %struct.cairo_path*, %struct.cairo_path** %path9, align 8
  call void @cairo_append_path(%struct._cairo* %25, %struct.cairo_path* %27)
  %28 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_restore(%struct._cairo* %28)
  %29 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_path_extents(%struct._cairo* %29, double* %x1, double* %y1, double* %x2, double* %y2)
  %30 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %30)
  %31 = load %struct._GimpCanvasPathPrivate*, %struct._GimpCanvasPathPrivate** %private, align 8
  %filled = getelementptr inbounds %struct._GimpCanvasPathPrivate, %struct._GimpCanvasPathPrivate* %31, i32 0, i32 3
  %32 = load i32, i32* %filled, align 4
  %tobool10 = icmp ne i32 %32, 0
  br i1 %tobool10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.then
  %33 = load double, double* %x1, align 8
  %sub12 = fsub double %33, 1.000000e+00
  %call13 = call double @floor(double %sub12) #6
  %conv14 = fptosi double %call13 to i32
  %x15 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 0
  store i32 %conv14, i32* %x15, align 4
  %34 = load double, double* %y1, align 8
  %sub16 = fsub double %34, 1.000000e+00
  %call17 = call double @floor(double %sub16) #6
  %conv18 = fptosi double %call17 to i32
  %y19 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 1
  store i32 %conv18, i32* %y19, align 4
  %35 = load double, double* %x2, align 8
  %add = fadd double %35, 1.000000e+00
  %call20 = call double @ceil(double %add) #6
  %x21 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 0
  %36 = load i32, i32* %x21, align 4
  %conv22 = sitofp i32 %36 to double
  %sub23 = fsub double %call20, %conv22
  %conv24 = fptosi double %sub23 to i32
  %width = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 2
  store i32 %conv24, i32* %width, align 4
  %37 = load double, double* %y2, align 8
  %add25 = fadd double %37, 1.000000e+00
  %call26 = call double @ceil(double %add25) #6
  %y27 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 1
  %38 = load i32, i32* %y27, align 4
  %conv28 = sitofp i32 %38 to double
  %sub29 = fsub double %call26, %conv28
  %conv30 = fptosi double %sub29 to i32
  %height = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 3
  store i32 %conv30, i32* %height, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %39 = load double, double* %x1, align 8
  %sub31 = fsub double %39, 1.500000e+00
  %call32 = call double @floor(double %sub31) #6
  %conv33 = fptosi double %call32 to i32
  %x34 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 0
  store i32 %conv33, i32* %x34, align 4
  %40 = load double, double* %y1, align 8
  %sub35 = fsub double %40, 1.500000e+00
  %call36 = call double @floor(double %sub35) #6
  %conv37 = fptosi double %call36 to i32
  %y38 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 1
  store i32 %conv37, i32* %y38, align 4
  %41 = load double, double* %x2, align 8
  %add39 = fadd double %41, 1.500000e+00
  %call40 = call double @ceil(double %add39) #6
  %x41 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 0
  %42 = load i32, i32* %x41, align 4
  %conv42 = sitofp i32 %42 to double
  %sub43 = fsub double %call40, %conv42
  %conv44 = fptosi double %sub43 to i32
  %width45 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 2
  store i32 %conv44, i32* %width45, align 4
  %43 = load double, double* %y2, align 8
  %add46 = fadd double %43, 1.500000e+00
  %call47 = call double @ceil(double %add46) #6
  %y48 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 1
  %44 = load i32, i32* %y48, align 4
  %conv49 = sitofp i32 %44 to double
  %sub50 = fsub double %call47, %conv49
  %conv51 = fptosi double %sub50 to i32
  %height52 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 3
  store i32 %conv51, i32* %height52, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.11
  %call53 = call %struct._cairo_region* @cairo_region_create_rectangle(%struct._cairo_rectangle_int* %rectangle)
  store %struct._cairo_region* %call53, %struct._cairo_region** %retval
  br label %return

if.end.54:                                        ; preds = %land.lhs.true, %entry
  store %struct._cairo_region* null, %struct._cairo_region** %retval
  br label %return

return:                                           ; preds = %if.end.54, %if.end
  %45 = load %struct._cairo_region*, %struct._cairo_region** %retval
  ret %struct._cairo_region* %45
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_path_stroke(%struct._GimpCanvasItem* %item, %struct._GimpDisplayShell* %shell, %struct._cairo* %cr) #3 {
entry:
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %private = alloca %struct._GimpCanvasPathPrivate*, align 8
  %active = alloca i32, align 4
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_path_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasPathPrivate*
  store %struct._GimpCanvasPathPrivate* %2, %struct._GimpCanvasPathPrivate** %private, align 8
  %3 = load %struct._GimpCanvasPathPrivate*, %struct._GimpCanvasPathPrivate** %private, align 8
  %path_style = getelementptr inbounds %struct._GimpCanvasPathPrivate, %struct._GimpCanvasPathPrivate* %3, i32 0, i32 4
  %4 = load i32, i32* %path_style, align 4
  switch i32 %4, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 0, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  %5 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %call2 = call i32 @gimp_canvas_item_get_highlight(%struct._GimpCanvasItem* %5)
  store i32 %call2, i32* %active, align 4
  %6 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %7 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %8 = load i32, i32* %active, align 4
  call void @gimp_display_shell_set_vectors_bg_style(%struct._GimpDisplayShell* %6, %struct._cairo* %7, i32 %8)
  %9 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_stroke_preserve(%struct._cairo* %9)
  %10 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %11 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %12 = load i32, i32* %active, align 4
  call void @gimp_display_shell_set_vectors_fg_style(%struct._GimpDisplayShell* %10, %struct._cairo* %11, i32 %12)
  %13 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_stroke(%struct._cairo* %13)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %14 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %15 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @gimp_display_shell_set_outline_bg_style(%struct._GimpDisplayShell* %14, %struct._cairo* %15)
  %16 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_stroke_preserve(%struct._cairo* %16)
  %17 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %18 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @gimp_display_shell_set_outline_fg_style(%struct._GimpDisplayShell* %17, %struct._cairo* %18)
  %19 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_stroke(%struct._cairo* %19)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %20 = load i8*, i8** @gimp_canvas_path_parent_class, align 8
  %21 = bitcast i8* %20 to %struct._GTypeClass*
  %call5 = call i64 @gimp_canvas_item_get_type() #6
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %21, i64 %call5)
  %22 = bitcast %struct._GTypeClass* %call6 to %struct._GimpCanvasItemClass*
  %stroke = getelementptr inbounds %struct._GimpCanvasItemClass, %struct._GimpCanvasItemClass* %22, i32 0, i32 4
  %23 = load void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)*, void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)** %stroke, align 8
  %24 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %25 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %26 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void %23(%struct._GimpCanvasItem* %24, %struct._GimpDisplayShell* %25, %struct._cairo* %26)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.4, %sw.bb.3, %sw.bb
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_boxed(i8*, i8*, i8*, i64, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_bezier_desc_get_type() #2

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_path_style_get_type() #2

declare void @g_type_class_add_private(i8*, i64) #1

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

declare void @gimp_bezier_desc_free(%struct.cairo_path*) #1

declare i8* @g_value_dup_boxed(%struct._GValue*) #1

declare double @g_value_get_double(%struct._GValue*) #1

declare i32 @g_value_get_boolean(%struct._GValue*) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

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

declare void @g_value_set_boxed(%struct._GValue*, i8*) #1

declare void @g_value_set_double(%struct._GValue*, double) #1

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

declare void @g_value_set_enum(%struct._GValue*, i32) #1

declare void @cairo_save(%struct._cairo*) #1

declare void @cairo_translate(%struct._cairo*, double, double) #1

declare void @cairo_scale(%struct._cairo*, double, double) #1

declare void @cairo_append_path(%struct._cairo*, %struct.cairo_path*) #1

declare void @cairo_restore(%struct._cairo*) #1

declare void @_gimp_canvas_item_fill(%struct._GimpCanvasItem*, %struct._cairo*) #1

declare void @_gimp_canvas_item_stroke(%struct._GimpCanvasItem*, %struct._cairo*) #1

declare i32 @gtk_widget_get_realized(%struct._GtkWidget*) #1

declare %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable*) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare void @cairo_path_extents(%struct._cairo*, double*, double*, double*, double*) #1

declare void @cairo_destroy(%struct._cairo*) #1

; Function Attrs: nounwind readnone
declare double @floor(double) #2

; Function Attrs: nounwind readnone
declare double @ceil(double) #2

declare %struct._cairo_region* @cairo_region_create_rectangle(%struct._cairo_rectangle_int*) #1

declare i32 @gimp_canvas_item_get_highlight(%struct._GimpCanvasItem*) #1

declare void @gimp_display_shell_set_vectors_bg_style(%struct._GimpDisplayShell*, %struct._cairo*, i32) #1

declare void @cairo_stroke_preserve(%struct._cairo*) #1

declare void @gimp_display_shell_set_vectors_fg_style(%struct._GimpDisplayShell*, %struct._cairo*, i32) #1

declare void @cairo_stroke(%struct._cairo*) #1

declare void @gimp_display_shell_set_outline_bg_style(%struct._GimpDisplayShell*, %struct._cairo*) #1

declare void @gimp_display_shell_set_outline_fg_style(%struct._GimpDisplayShell*, %struct._cairo*) #1

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
