; ModuleID = './app/display/gimpcanvasguide.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpCanvasGuideClass = type { %struct._GimpCanvasItemClass }
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
%struct._GimpCanvasGuide = type { %struct._GimpCanvasItem }
%struct._GimpCanvasGuidePrivate = type { i32, i32, i32 }
%struct._cairo_rectangle_int = type { i32, i32, i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_canvas_guide_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"GimpCanvasGuide\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Display\00", align 1
@__func__.gimp_canvas_guide_new = private unnamed_addr constant [22 x i8] c"gimp_canvas_guide_new\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"GIMP_IS_DISPLAY_SHELL (shell)\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"orientation\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"position\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"guide-style\00", align 1
@__func__.gimp_canvas_guide_set = private unnamed_addr constant [22 x i8] c"gimp_canvas_guide_set\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"GIMP_IS_CANVAS_GUIDE (guide)\00", align 1
@gimp_canvas_guide_parent_class = internal global i8* null, align 8
@GimpCanvasGuide_private_offset = internal global i32 0, align 4
@.str.8 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"gimpcanvasguide.c\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"property\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_canvas_guide_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_canvas_guide_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_canvas_guide_get_type.g_define_type_id__volatile to i8*))
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
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 208, void (i8*, i8*)* bitcast (void (i8*)* @gimp_canvas_guide_class_intern_init to void (i8*, i8*)*), i32 32, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpCanvasGuide*)* @gimp_canvas_guide_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_canvas_guide_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_canvas_guide_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_canvas_item_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_guide_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_canvas_guide_parent_class, align 8
  %1 = load i32, i32* @GimpCanvasGuide_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpCanvasGuide_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpCanvasGuideClass*
  call void @gimp_canvas_guide_class_init(%struct._GimpCanvasGuideClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_guide_init(%struct._GimpCanvasGuide* %guide) #3 {
entry:
  %guide.addr = alloca %struct._GimpCanvasGuide*, align 8
  store %struct._GimpCanvasGuide* %guide, %struct._GimpCanvasGuide** %guide.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpCanvasItem* @gimp_canvas_guide_new(%struct._GimpDisplayShell* %shell, i32 %orientation, i32 %position, i32 %guide_style) #3 {
entry:
  %retval = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %orientation.addr = alloca i32, align 4
  %position.addr = alloca i32, align 4
  %guide_style.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store i32 %orientation, i32* %orientation.addr, align 4
  store i32 %position, i32* %position.addr, align 4
  store i32 %guide_style, i32* %guide_style.addr, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_canvas_guide_new, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_canvas_guide_get_type() #6
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %14 = load i32, i32* %orientation.addr, align 4
  %15 = load i32, i32* %position.addr, align 4
  %16 = load i32, i32* %guide_style.addr, align 4
  %call12 = call i8* (i64, i8*, ...) @g_object_new(i64 %call11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), %struct._GimpDisplayShell* %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i32 %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i32 %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i32 %16, i8* null)
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

; Function Attrs: nounwind uwtable
define void @gimp_canvas_guide_set(%struct._GimpCanvasItem* %guide, i32 %orientation, i32 %position) #3 {
entry:
  %guide.addr = alloca %struct._GimpCanvasItem*, align 8
  %orientation.addr = alloca i32, align 4
  %position.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCanvasItem* %guide, %struct._GimpCanvasItem** %guide.addr, align 8
  store i32 %orientation, i32* %orientation.addr, align 4
  store i32 %position, i32* %position.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %guide.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_canvas_guide_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_canvas_guide_set, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %guide.addr, align 8
  call void @gimp_canvas_item_begin_change(%struct._GimpCanvasItem* %13)
  %14 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %guide.addr, align 8
  %15 = bitcast %struct._GimpCanvasItem* %14 to i8*
  %16 = load i32, i32* %orientation.addr, align 4
  %17 = load i32, i32* %position.addr, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i32 %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i32 %17, i8* null)
  %18 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %guide.addr, align 8
  call void @gimp_canvas_item_end_change(%struct._GimpCanvasItem* %18)
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
define internal void @gimp_canvas_guide_class_init(%struct._GimpCanvasGuideClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpCanvasGuideClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %item_class = alloca %struct._GimpCanvasItemClass*, align 8
  store %struct._GimpCanvasGuideClass* %klass, %struct._GimpCanvasGuideClass** %klass.addr, align 8
  %0 = load %struct._GimpCanvasGuideClass*, %struct._GimpCanvasGuideClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpCanvasGuideClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpCanvasGuideClass*, %struct._GimpCanvasGuideClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpCanvasGuideClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_canvas_item_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpCanvasItemClass*
  store %struct._GimpCanvasItemClass* %5, %struct._GimpCanvasItemClass** %item_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_canvas_guide_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_canvas_guide_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %8 = load %struct._GimpCanvasItemClass*, %struct._GimpCanvasItemClass** %item_class, align 8
  %draw = getelementptr inbounds %struct._GimpCanvasItemClass, %struct._GimpCanvasItemClass* %8, i32 0, i32 2
  store void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)* @gimp_canvas_guide_draw, void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)** %draw, align 8
  %9 = load %struct._GimpCanvasItemClass*, %struct._GimpCanvasItemClass** %item_class, align 8
  %get_extents = getelementptr inbounds %struct._GimpCanvasItemClass, %struct._GimpCanvasItemClass* %9, i32 0, i32 3
  store %struct._cairo_region* (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*)* @gimp_canvas_guide_get_extents, %struct._cairo_region* (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*)** %get_extents, align 8
  %10 = load %struct._GimpCanvasItemClass*, %struct._GimpCanvasItemClass** %item_class, align 8
  %stroke = getelementptr inbounds %struct._GimpCanvasItemClass, %struct._GimpCanvasItemClass* %10, i32 0, i32 4
  store void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)* @gimp_canvas_guide_stroke, void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)** %stroke, align 8
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call i64 @gimp_orientation_type_get_type() #6
  %call4 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* null, i64 %call3, i32 0, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %11, i32 1, %struct._GParamSpec* %call4)
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null, i32 -262144, i32 262144, i32 0, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %12, i32 2, %struct._GParamSpec* %call5)
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null, i32 0, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %13, i32 3, %struct._GParamSpec* %call6)
  %14 = load %struct._GimpCanvasGuideClass*, %struct._GimpCanvasGuideClass** %klass.addr, align 8
  %15 = bitcast %struct._GimpCanvasGuideClass* %14 to i8*
  call void @g_type_class_add_private(i8* %15, i64 12)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_guide_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpCanvasGuidePrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_guide_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasGuidePrivate*
  store %struct._GimpCanvasGuidePrivate* %2, %struct._GimpCanvasGuidePrivate** %private, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i32 @g_value_get_enum(%struct._GValue* %4)
  %5 = load %struct._GimpCanvasGuidePrivate*, %struct._GimpCanvasGuidePrivate** %private, align 8
  %orientation = getelementptr inbounds %struct._GimpCanvasGuidePrivate, %struct._GimpCanvasGuidePrivate* %5, i32 0, i32 0
  store i32 %call2, i32* %orientation, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %6 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i32 @g_value_get_int(%struct._GValue* %6)
  %7 = load %struct._GimpCanvasGuidePrivate*, %struct._GimpCanvasGuidePrivate** %private, align 8
  %position = getelementptr inbounds %struct._GimpCanvasGuidePrivate, %struct._GimpCanvasGuidePrivate* %7, i32 0, i32 1
  store i32 %call4, i32* %position, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call i32 @g_value_get_boolean(%struct._GValue* %8)
  %9 = load %struct._GimpCanvasGuidePrivate*, %struct._GimpCanvasGuidePrivate** %private, align 8
  %guide_style = getelementptr inbounds %struct._GimpCanvasGuidePrivate, %struct._GimpCanvasGuidePrivate* %9, i32 0, i32 2
  store i32 %call6, i32* %guide_style, align 4
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
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i32 146, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 %13, i8* %15, i8* %call7, i8* %call10)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.5, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_guide_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpCanvasGuidePrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_guide_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasGuidePrivate*
  store %struct._GimpCanvasGuidePrivate* %2, %struct._GimpCanvasGuidePrivate** %private, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpCanvasGuidePrivate*, %struct._GimpCanvasGuidePrivate** %private, align 8
  %orientation = getelementptr inbounds %struct._GimpCanvasGuidePrivate, %struct._GimpCanvasGuidePrivate* %5, i32 0, i32 0
  %6 = load i32, i32* %orientation, align 4
  call void @g_value_set_enum(%struct._GValue* %4, i32 %6)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GimpCanvasGuidePrivate*, %struct._GimpCanvasGuidePrivate** %private, align 8
  %position = getelementptr inbounds %struct._GimpCanvasGuidePrivate, %struct._GimpCanvasGuidePrivate* %8, i32 0, i32 1
  %9 = load i32, i32* %position, align 4
  call void @g_value_set_int(%struct._GValue* %7, i32 %9)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %11 = load %struct._GimpCanvasGuidePrivate*, %struct._GimpCanvasGuidePrivate** %private, align 8
  %guide_style = getelementptr inbounds %struct._GimpCanvasGuidePrivate, %struct._GimpCanvasGuidePrivate* %11, i32 0, i32 2
  %12 = load i32, i32* %guide_style, align 4
  call void @g_value_set_boolean(%struct._GValue* %10, i32 %12)
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
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i32 172, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 %16, i8* %18, i8* %call4, i8* %call7)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.3, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_guide_draw(%struct._GimpCanvasItem* %item, %struct._GimpDisplayShell* %shell, %struct._cairo* %cr) #3 {
entry:
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %x1 = alloca double, align 8
  %y1 = alloca double, align 8
  %x2 = alloca double, align 8
  %y2 = alloca double, align 8
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_canvas_guide_transform(%struct._GimpCanvasItem* %0, %struct._GimpDisplayShell* %1, double* %x1, double* %y1, double* %x2, double* %y2)
  %2 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %3 = load double, double* %x1, align 8
  %4 = load double, double* %y1, align 8
  call void @cairo_move_to(%struct._cairo* %2, double %3, double %4)
  %5 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %6 = load double, double* %x2, align 8
  %7 = load double, double* %y2, align 8
  call void @cairo_line_to(%struct._cairo* %5, double %6, double %7)
  %8 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %9 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @_gimp_canvas_item_stroke(%struct._GimpCanvasItem* %8, %struct._cairo* %9)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._cairo_region* @gimp_canvas_guide_get_extents(%struct._GimpCanvasItem* %item, %struct._GimpDisplayShell* %shell) #3 {
entry:
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %rectangle = alloca %struct._cairo_rectangle_int, align 4
  %x1 = alloca double, align 8
  %y1 = alloca double, align 8
  %x2 = alloca double, align 8
  %y2 = alloca double, align 8
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_canvas_guide_transform(%struct._GimpCanvasItem* %0, %struct._GimpDisplayShell* %1, double* %x1, double* %y1, double* %x2, double* %y2)
  %2 = load double, double* %x1, align 8
  %3 = load double, double* %x2, align 8
  %cmp = fcmp olt double %2, %3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load double, double* %x1, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load double, double* %x2, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %4, %cond.true ], [ %5, %cond.false ]
  %sub = fsub double %cond, 1.500000e+00
  %conv = fptosi double %sub to i32
  %x = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 0
  store i32 %conv, i32* %x, align 4
  %6 = load double, double* %y1, align 8
  %7 = load double, double* %y2, align 8
  %cmp1 = fcmp olt double %6, %7
  br i1 %cmp1, label %cond.true.3, label %cond.false.4

cond.true.3:                                      ; preds = %cond.end
  %8 = load double, double* %y1, align 8
  br label %cond.end.5

cond.false.4:                                     ; preds = %cond.end
  %9 = load double, double* %y2, align 8
  br label %cond.end.5

cond.end.5:                                       ; preds = %cond.false.4, %cond.true.3
  %cond6 = phi double [ %8, %cond.true.3 ], [ %9, %cond.false.4 ]
  %sub7 = fsub double %cond6, 1.500000e+00
  %conv8 = fptosi double %sub7 to i32
  %y = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 1
  store i32 %conv8, i32* %y, align 4
  %10 = load double, double* %x2, align 8
  %11 = load double, double* %x1, align 8
  %sub9 = fsub double %10, %11
  %cmp10 = fcmp olt double %sub9, 0.000000e+00
  br i1 %cmp10, label %cond.true.12, label %cond.false.15

cond.true.12:                                     ; preds = %cond.end.5
  %12 = load double, double* %x2, align 8
  %13 = load double, double* %x1, align 8
  %sub13 = fsub double %12, %13
  %sub14 = fsub double -0.000000e+00, %sub13
  br label %cond.end.17

cond.false.15:                                    ; preds = %cond.end.5
  %14 = load double, double* %x2, align 8
  %15 = load double, double* %x1, align 8
  %sub16 = fsub double %14, %15
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.false.15, %cond.true.12
  %cond18 = phi double [ %sub14, %cond.true.12 ], [ %sub16, %cond.false.15 ]
  %add = fadd double %cond18, 3.000000e+00
  %conv19 = fptosi double %add to i32
  %width = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 2
  store i32 %conv19, i32* %width, align 4
  %16 = load double, double* %y2, align 8
  %17 = load double, double* %y1, align 8
  %sub20 = fsub double %16, %17
  %cmp21 = fcmp olt double %sub20, 0.000000e+00
  br i1 %cmp21, label %cond.true.23, label %cond.false.26

cond.true.23:                                     ; preds = %cond.end.17
  %18 = load double, double* %y2, align 8
  %19 = load double, double* %y1, align 8
  %sub24 = fsub double %18, %19
  %sub25 = fsub double -0.000000e+00, %sub24
  br label %cond.end.28

cond.false.26:                                    ; preds = %cond.end.17
  %20 = load double, double* %y2, align 8
  %21 = load double, double* %y1, align 8
  %sub27 = fsub double %20, %21
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.false.26, %cond.true.23
  %cond29 = phi double [ %sub25, %cond.true.23 ], [ %sub27, %cond.false.26 ]
  %add30 = fadd double %cond29, 3.000000e+00
  %conv31 = fptosi double %add30 to i32
  %height = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 3
  store i32 %conv31, i32* %height, align 4
  %call = call %struct._cairo_region* @cairo_region_create_rectangle(%struct._cairo_rectangle_int* %rectangle)
  ret %struct._cairo_region* %call
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_guide_stroke(%struct._GimpCanvasItem* %item, %struct._GimpDisplayShell* %shell, %struct._cairo* %cr) #3 {
entry:
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %private = alloca %struct._GimpCanvasGuidePrivate*, align 8
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_guide_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasGuidePrivate*
  store %struct._GimpCanvasGuidePrivate* %2, %struct._GimpCanvasGuidePrivate** %private, align 8
  %3 = load %struct._GimpCanvasGuidePrivate*, %struct._GimpCanvasGuidePrivate** %private, align 8
  %guide_style = getelementptr inbounds %struct._GimpCanvasGuidePrivate, %struct._GimpCanvasGuidePrivate* %3, i32 0, i32 2
  %4 = load i32, i32* %guide_style, align 4
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
  %12 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %call4 = call i32 @gimp_canvas_item_get_highlight(%struct._GimpCanvasItem* %12)
  call void @gimp_display_shell_set_guide_style(%struct._GimpDisplayShell* %10, %struct._cairo* %11, i32 %call4)
  %13 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_stroke(%struct._cairo* %13)
  br label %if.end

if.else:                                          ; preds = %entry
  %14 = load i8*, i8** @gimp_canvas_guide_parent_class, align 8
  %15 = bitcast i8* %14 to %struct._GTypeClass*
  %call5 = call i64 @gimp_canvas_item_get_type() #6
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %15, i64 %call5)
  %16 = bitcast %struct._GTypeClass* %call6 to %struct._GimpCanvasItemClass*
  %stroke = getelementptr inbounds %struct._GimpCanvasItemClass, %struct._GimpCanvasItemClass* %16, i32 0, i32 4
  %17 = load void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)*, void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)** %stroke, align 8
  %18 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %19 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %20 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void %17(%struct._GimpCanvasItem* %18, %struct._GimpDisplayShell* %19, %struct._cairo* %20)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_orientation_type_get_type() #2

declare %struct._GParamSpec* @g_param_spec_int(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

declare void @g_type_class_add_private(i8*, i64) #1

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

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

declare void @g_value_set_enum(%struct._GValue*, i32) #1

declare void @g_value_set_int(%struct._GValue*, i32) #1

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_guide_transform(%struct._GimpCanvasItem* %item, %struct._GimpDisplayShell* %shell, double* %x1, double* %y1, double* %x2, double* %y2) #3 {
entry:
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %x1.addr = alloca double*, align 8
  %y1.addr = alloca double*, align 8
  %x2.addr = alloca double*, align 8
  %y2.addr = alloca double*, align 8
  %private = alloca %struct._GimpCanvasGuidePrivate*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store double* %x1, double** %x1.addr, align 8
  store double* %y1, double** %y1.addr, align 8
  store double* %x2, double** %x2.addr, align 8
  store double* %y2, double** %y2.addr, align 8
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_guide_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasGuidePrivate*
  store %struct._GimpCanvasGuidePrivate* %2, %struct._GimpCanvasGuidePrivate** %private, align 8
  %3 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %canvas = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %3, i32 0, i32 33
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %4, %struct._GdkRectangle* %allocation)
  %5 = load double*, double** %x1.addr, align 8
  store double 0.000000e+00, double* %5, align 8
  %6 = load double*, double** %y1.addr, align 8
  store double 0.000000e+00, double* %6, align 8
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %7 = load i32, i32* %width, align 4
  %conv = sitofp i32 %7 to double
  %8 = load double*, double** %x2.addr, align 8
  store double %conv, double* %8, align 8
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %9 = load i32, i32* %height, align 4
  %conv2 = sitofp i32 %9 to double
  %10 = load double*, double** %y2.addr, align 8
  store double %conv2, double* %10, align 8
  %11 = load %struct._GimpCanvasGuidePrivate*, %struct._GimpCanvasGuidePrivate** %private, align 8
  %orientation = getelementptr inbounds %struct._GimpCanvasGuidePrivate, %struct._GimpCanvasGuidePrivate* %11, i32 0, i32 0
  %12 = load i32, i32* %orientation, align 4
  switch i32 %12, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.5
    i32 2, label %sw.bb.10
  ]

sw.bb:                                            ; preds = %entry
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %14 = load %struct._GimpCanvasGuidePrivate*, %struct._GimpCanvasGuidePrivate** %private, align 8
  %position = getelementptr inbounds %struct._GimpCanvasGuidePrivate, %struct._GimpCanvasGuidePrivate* %14, i32 0, i32 1
  %15 = load i32, i32* %position, align 4
  %conv3 = sitofp i32 %15 to double
  call void @gimp_display_shell_transform_xy(%struct._GimpDisplayShell* %13, double 0.000000e+00, double %conv3, i32* %x, i32* %y)
  %16 = load i32, i32* %y, align 4
  %conv4 = sitofp i32 %16 to double
  %add = fadd double %conv4, 5.000000e-01
  %17 = load double*, double** %y2.addr, align 8
  store double %add, double* %17, align 8
  %18 = load double*, double** %y1.addr, align 8
  store double %add, double* %18, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %19 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %20 = load %struct._GimpCanvasGuidePrivate*, %struct._GimpCanvasGuidePrivate** %private, align 8
  %position6 = getelementptr inbounds %struct._GimpCanvasGuidePrivate, %struct._GimpCanvasGuidePrivate* %20, i32 0, i32 1
  %21 = load i32, i32* %position6, align 4
  %conv7 = sitofp i32 %21 to double
  call void @gimp_display_shell_transform_xy(%struct._GimpDisplayShell* %19, double %conv7, double 0.000000e+00, i32* %x, i32* %y)
  %22 = load i32, i32* %x, align 4
  %conv8 = sitofp i32 %22 to double
  %add9 = fadd double %conv8, 5.000000e-01
  %23 = load double*, double** %x2.addr, align 8
  store double %add9, double* %23, align 8
  %24 = load double*, double** %x1.addr, align 8
  store double %add9, double* %24, align 8
  br label %sw.epilog

sw.bb.10:                                         ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.10, %entry, %sw.bb.5, %sw.bb
  ret void
}

declare void @cairo_move_to(%struct._cairo*, double, double) #1

declare void @cairo_line_to(%struct._cairo*, double, double) #1

declare void @_gimp_canvas_item_stroke(%struct._GimpCanvasItem*, %struct._cairo*) #1

declare void @gtk_widget_get_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #1

declare void @gimp_display_shell_transform_xy(%struct._GimpDisplayShell*, double, double, i32*, i32*) #1

declare %struct._cairo_region* @cairo_region_create_rectangle(%struct._cairo_rectangle_int*) #1

declare void @cairo_translate(%struct._cairo*, double, double) #1

declare void @gimp_display_shell_set_guide_style(%struct._GimpDisplayShell*, %struct._cairo*, i32) #1

declare i32 @gimp_canvas_item_get_highlight(%struct._GimpCanvasItem*) #1

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
