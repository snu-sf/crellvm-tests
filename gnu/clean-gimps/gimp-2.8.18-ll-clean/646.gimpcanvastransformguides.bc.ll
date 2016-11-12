; ModuleID = './app/display/gimpcanvastransformguides.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpCanvasTransformGuidesClass = type { %struct._GimpCanvasItemClass }
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
%struct._GimpCanvasTransformGuides = type { %struct._GimpCanvasItem }
%struct._GimpMatrix3 = type { [3 x [3 x double]] }
%struct._GimpCanvasTransformGuidesPrivate = type { %struct._GimpMatrix3, double, double, double, double, i32, i32 }
%struct._cairo_rectangle_int = type { i32, i32, i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_canvas_transform_guides_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"GimpCanvasTransformGuides\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Display\00", align 1
@__func__.gimp_canvas_transform_guides_new = private unnamed_addr constant [33 x i8] c"gimp_canvas_transform_guides_new\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"GIMP_IS_DISPLAY_SHELL (shell)\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"transform\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"x1\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"y1\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"x2\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"y2\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"n-guides\00", align 1
@__func__.gimp_canvas_transform_guides_set = private unnamed_addr constant [33 x i8] c"gimp_canvas_transform_guides_set\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"GIMP_IS_CANVAS_TRANSFORM_GUIDES (guides)\00", align 1
@gimp_canvas_transform_guides_parent_class = internal global i8* null, align 8
@GimpCanvasTransformGuides_private_offset = internal global i32 0, align 4
@.str.12 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"gimpcanvastransformguides.c\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"property\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_canvas_transform_guides_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_canvas_transform_guides_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_canvas_transform_guides_get_type.g_define_type_id__volatile to i8*))
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
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 208, void (i8*, i8*)* bitcast (void (i8*)* @gimp_canvas_transform_guides_class_intern_init to void (i8*, i8*)*), i32 32, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpCanvasTransformGuides*)* @gimp_canvas_transform_guides_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_canvas_transform_guides_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_canvas_transform_guides_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_canvas_item_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_transform_guides_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_canvas_transform_guides_parent_class, align 8
  %1 = load i32, i32* @GimpCanvasTransformGuides_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpCanvasTransformGuides_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpCanvasTransformGuidesClass*
  call void @gimp_canvas_transform_guides_class_init(%struct._GimpCanvasTransformGuidesClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_transform_guides_init(%struct._GimpCanvasTransformGuides* %transform) #3 {
entry:
  %transform.addr = alloca %struct._GimpCanvasTransformGuides*, align 8
  store %struct._GimpCanvasTransformGuides* %transform, %struct._GimpCanvasTransformGuides** %transform.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpCanvasItem* @gimp_canvas_transform_guides_new(%struct._GimpDisplayShell* %shell, %struct._GimpMatrix3* %transform, double %x1, double %y1, double %x2, double %y2, i32 %type, i32 %n_guides) #3 {
entry:
  %retval = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %transform.addr = alloca %struct._GimpMatrix3*, align 8
  %x1.addr = alloca double, align 8
  %y1.addr = alloca double, align 8
  %x2.addr = alloca double, align 8
  %y2.addr = alloca double, align 8
  %type.addr = alloca i32, align 4
  %n_guides.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._GimpMatrix3* %transform, %struct._GimpMatrix3** %transform.addr, align 8
  store double %x1, double* %x1.addr, align 8
  store double %y1, double* %y1.addr, align 8
  store double %x2, double* %x2.addr, align 8
  store double %y2, double* %y2.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_canvas_transform_guides_new, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_canvas_transform_guides_get_type() #6
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %14 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %transform.addr, align 8
  %15 = load double, double* %x1.addr, align 8
  %16 = load double, double* %y1.addr, align 8
  %17 = load double, double* %x2.addr, align 8
  %18 = load double, double* %y2.addr, align 8
  %19 = load i32, i32* %type.addr, align 4
  %20 = load i32, i32* %n_guides.addr, align 4
  %call12 = call i8* (i64, i8*, ...) @g_object_new(i64 %call11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), %struct._GimpDisplayShell* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), %struct._GimpMatrix3* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), double %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), double %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), double %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), double %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 %20, i8* null)
  %21 = bitcast i8* %call12 to %struct._GimpCanvasItem*
  store %struct._GimpCanvasItem* %21, %struct._GimpCanvasItem** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %22 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %retval
  ret %struct._GimpCanvasItem* %22
}

; Function Attrs: nounwind readnone
declare i64 @gimp_display_shell_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_canvas_transform_guides_set(%struct._GimpCanvasItem* %guides, %struct._GimpMatrix3* %transform, i32 %type, i32 %n_guides) #3 {
entry:
  %guides.addr = alloca %struct._GimpCanvasItem*, align 8
  %transform.addr = alloca %struct._GimpMatrix3*, align 8
  %type.addr = alloca i32, align 4
  %n_guides.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCanvasItem* %guides, %struct._GimpCanvasItem** %guides.addr, align 8
  store %struct._GimpMatrix3* %transform, %struct._GimpMatrix3** %transform.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store i32 %n_guides, i32* %n_guides.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %guides.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_canvas_transform_guides_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_canvas_transform_guides_set, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %guides.addr, align 8
  call void @gimp_canvas_item_begin_change(%struct._GimpCanvasItem* %13)
  %14 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %guides.addr, align 8
  %15 = bitcast %struct._GimpCanvasItem* %14 to i8*
  %16 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %transform.addr, align 8
  %17 = load i32, i32* %type.addr, align 4
  %18 = load i32, i32* %n_guides.addr, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), %struct._GimpMatrix3* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 %18, i8* null)
  %19 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %guides.addr, align 8
  call void @gimp_canvas_item_end_change(%struct._GimpCanvasItem* %19)
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
define internal void @gimp_canvas_transform_guides_class_init(%struct._GimpCanvasTransformGuidesClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpCanvasTransformGuidesClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %item_class = alloca %struct._GimpCanvasItemClass*, align 8
  store %struct._GimpCanvasTransformGuidesClass* %klass, %struct._GimpCanvasTransformGuidesClass** %klass.addr, align 8
  %0 = load %struct._GimpCanvasTransformGuidesClass*, %struct._GimpCanvasTransformGuidesClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpCanvasTransformGuidesClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpCanvasTransformGuidesClass*, %struct._GimpCanvasTransformGuidesClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpCanvasTransformGuidesClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_canvas_item_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpCanvasItemClass*
  store %struct._GimpCanvasItemClass* %5, %struct._GimpCanvasItemClass** %item_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_canvas_transform_guides_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_canvas_transform_guides_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %8 = load %struct._GimpCanvasItemClass*, %struct._GimpCanvasItemClass** %item_class, align 8
  %draw = getelementptr inbounds %struct._GimpCanvasItemClass, %struct._GimpCanvasItemClass* %8, i32 0, i32 2
  store void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)* @gimp_canvas_transform_guides_draw, void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)** %draw, align 8
  %9 = load %struct._GimpCanvasItemClass*, %struct._GimpCanvasItemClass** %item_class, align 8
  %get_extents = getelementptr inbounds %struct._GimpCanvasItemClass, %struct._GimpCanvasItemClass* %9, i32 0, i32 3
  store %struct._cairo_region* (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*)* @gimp_canvas_transform_guides_get_extents, %struct._cairo_region* (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*)** %get_extents, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call %struct._GParamSpec* @gimp_param_spec_matrix3(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* null, %struct._GimpMatrix3* null, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %10, i32 1, %struct._GParamSpec* %call3)
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call4 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null, double -2.621440e+05, double 2.621440e+05, double 0.000000e+00, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %11, i32 2, %struct._GParamSpec* %call4)
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null, double -2.621440e+05, double 2.621440e+05, double 0.000000e+00, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %12, i32 3, %struct._GParamSpec* %call5)
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null, double -2.621440e+05, double 2.621440e+05, double 0.000000e+00, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %13, i32 4, %struct._GParamSpec* %call6)
  %14 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call7 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* null, double -2.621440e+05, double 2.621440e+05, double 0.000000e+00, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %14, i32 5, %struct._GParamSpec* %call7)
  %15 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call8 = call i64 @gimp_guides_type_get_type() #6
  %call9 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* null, i64 %call8, i32 0, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %15, i32 6, %struct._GParamSpec* %call9)
  %16 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call10 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i8* null, i8* null, i32 1, i32 128, i32 4, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %16, i32 7, %struct._GParamSpec* %call10)
  %17 = load %struct._GimpCanvasTransformGuidesClass*, %struct._GimpCanvasTransformGuidesClass** %klass.addr, align 8
  %18 = bitcast %struct._GimpCanvasTransformGuidesClass* %17 to i8*
  call void @g_type_class_add_private(i8* %18, i64 112)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_transform_guides_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpCanvasTransformGuidesPrivate*, align 8
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
  %call = call i64 @gimp_canvas_transform_guides_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasTransformGuidesPrivate*
  store %struct._GimpCanvasTransformGuidesPrivate* %2, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.5
    i32 3, label %sw.bb.7
    i32 4, label %sw.bb.9
    i32 5, label %sw.bb.11
    i32 6, label %sw.bb.13
    i32 7, label %sw.bb.15
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_get_boxed(%struct._GValue* %4)
  %5 = bitcast i8* %call2 to %struct._GimpMatrix3*
  store %struct._GimpMatrix3* %5, %struct._GimpMatrix3** %transform, align 8
  %6 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %transform, align 8
  %tobool = icmp ne %struct._GimpMatrix3* %6, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %7 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %transform3 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %7, i32 0, i32 0
  %8 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %transform, align 8
  %9 = bitcast %struct._GimpMatrix3* %transform3 to i8*
  %10 = bitcast %struct._GimpMatrix3* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 72, i32 8, i1 false)
  br label %if.end

if.else:                                          ; preds = %sw.bb
  %11 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %transform4 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %11, i32 0, i32 0
  call void @gimp_matrix3_identity(%struct._GimpMatrix3* %transform4)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %12 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call double @g_value_get_double(%struct._GValue* %12)
  %13 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %x1 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %13, i32 0, i32 1
  store double %call6, double* %x1, align 8
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %14 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call8 = call double @g_value_get_double(%struct._GValue* %14)
  %15 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %y1 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %15, i32 0, i32 2
  store double %call8, double* %y1, align 8
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call10 = call double @g_value_get_double(%struct._GValue* %16)
  %17 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %x2 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %17, i32 0, i32 3
  store double %call10, double* %x2, align 8
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %18 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call12 = call double @g_value_get_double(%struct._GValue* %18)
  %19 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %y2 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %19, i32 0, i32 4
  store double %call12, double* %y2, align 8
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %20 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call14 = call i32 @g_value_get_enum(%struct._GValue* %20)
  %21 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %type = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %21, i32 0, i32 5
  store i32 %call14, i32* %type, align 4
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  %22 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call16 = call i32 @g_value_get_int(%struct._GValue* %22)
  %23 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %n_guides = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %23, i32 0, i32 6
  store i32 %call16, i32* %n_guides, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %24 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %24, %struct._GObject** %_glib__object, align 8
  %25 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %25, %struct._GParamSpec** %_glib__pspec, align 8
  %26 = load i32, i32* %property_id.addr, align 4
  store i32 %26, i32* %_glib__property_id, align 4
  %27 = load i32, i32* %_glib__property_id, align 4
  %28 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %28, i32 0, i32 1
  %29 = load i8*, i8** %name, align 8
  %30 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %31 = bitcast %struct._GParamSpec* %30 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %32, i32 0, i32 0
  %33 = load i64, i64* %g_type, align 8
  %call17 = call i8* @g_type_name(i64 %33)
  %34 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %35 = bitcast %struct._GObject* %34 to %struct._GTypeInstance*
  %g_class18 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %35, i32 0, i32 0
  %36 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class18, align 8
  %g_type19 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %36, i32 0, i32 0
  %37 = load i64, i64* %g_type19, align 8
  %call20 = call i8* @g_type_name(i64 %37)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i32 0, i32 0), i32 210, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i32 %27, i8* %29, i8* %call17, i8* %call20)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.15, %sw.bb.13, %sw.bb.11, %sw.bb.9, %sw.bb.7, %sw.bb.5, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_transform_guides_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpCanvasTransformGuidesPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_transform_guides_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasTransformGuidesPrivate*
  store %struct._GimpCanvasTransformGuidesPrivate* %2, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.4
    i32 5, label %sw.bb.5
    i32 6, label %sw.bb.6
    i32 7, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %transform = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %5, i32 0, i32 0
  %6 = bitcast %struct._GimpMatrix3* %transform to i8*
  call void @g_value_set_boxed(%struct._GValue* %4, i8* %6)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %x1 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %8, i32 0, i32 1
  %9 = load double, double* %x1, align 8
  call void @g_value_set_double(%struct._GValue* %7, double %9)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %11 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %y1 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %11, i32 0, i32 2
  %12 = load double, double* %y1, align 8
  call void @g_value_set_double(%struct._GValue* %10, double %12)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %13 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %14 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %x2 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %14, i32 0, i32 3
  %15 = load double, double* %x2, align 8
  call void @g_value_set_double(%struct._GValue* %13, double %15)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %17 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %y2 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %17, i32 0, i32 4
  %18 = load double, double* %y2, align 8
  call void @g_value_set_double(%struct._GValue* %16, double %18)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %19 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %20 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %type = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %20, i32 0, i32 5
  %21 = load i32, i32* %type, align 4
  call void @g_value_set_enum(%struct._GValue* %19, i32 %21)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %22 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %23 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %n_guides = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %23, i32 0, i32 6
  %24 = load i32, i32* %n_guides, align 4
  call void @g_value_set_int(%struct._GValue* %22, i32 %24)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %25 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %25, %struct._GObject** %_glib__object, align 8
  %26 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %26, %struct._GParamSpec** %_glib__pspec, align 8
  %27 = load i32, i32* %property_id.addr, align 4
  store i32 %27, i32* %_glib__property_id, align 4
  %28 = load i32, i32* %_glib__property_id, align 4
  %29 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %29, i32 0, i32 1
  %30 = load i8*, i8** %name, align 8
  %31 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %32 = bitcast %struct._GParamSpec* %31 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %33, i32 0, i32 0
  %34 = load i64, i64* %g_type, align 8
  %call8 = call i8* @g_type_name(i64 %34)
  %35 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %36 = bitcast %struct._GObject* %35 to %struct._GTypeInstance*
  %g_class9 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %36, i32 0, i32 0
  %37 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class9, align 8
  %g_type10 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %37, i32 0, i32 0
  %38 = load i64, i64* %g_type10, align 8
  %call11 = call i8* @g_type_name(i64 %38)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i32 0, i32 0), i32 254, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i32 %28, i8* %30, i8* %call8, i8* %call11)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_transform_guides_draw(%struct._GimpCanvasItem* %item, %struct._GimpDisplayShell* %shell, %struct._cairo* %cr) #3 {
entry:
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %private = alloca %struct._GimpCanvasTransformGuidesPrivate*, align 8
  %x1 = alloca double, align 8
  %y1 = alloca double, align 8
  %x2 = alloca double, align 8
  %y2 = alloca double, align 8
  %x3 = alloca double, align 8
  %y3 = alloca double, align 8
  %x4 = alloca double, align 8
  %y4 = alloca double, align 8
  %convex = alloca i32, align 4
  %i = alloca i32, align 4
  %square_side = alloca double, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %ngx = alloca i32, align 4
  %ngy = alloca i32, align 4
  %grid_size = alloca i32, align 4
  %x = alloca double, align 8
  %y = alloca double, align 8
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_transform_guides_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasTransformGuidesPrivate*
  store %struct._GimpCanvasTransformGuidesPrivate* %2, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %3 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %call2 = call i32 @gimp_canvas_transform_guides_transform(%struct._GimpCanvasItem* %3, %struct._GimpDisplayShell* %4, double* %x1, double* %y1, double* %x2, double* %y2, double* %x3, double* %y3, double* %x4, double* %y4)
  store i32 %call2, i32* %convex, align 4
  %5 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %6 = load double, double* %x1, align 8
  %7 = load double, double* %y1, align 8
  call void @gimp_display_shell_transform_xy_f(%struct._GimpDisplayShell* %5, double %6, double %7, double* %x1, double* %y1)
  %8 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %9 = load double, double* %x2, align 8
  %10 = load double, double* %y2, align 8
  call void @gimp_display_shell_transform_xy_f(%struct._GimpDisplayShell* %8, double %9, double %10, double* %x2, double* %y2)
  %11 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %12 = load double, double* %x3, align 8
  %13 = load double, double* %y3, align 8
  call void @gimp_display_shell_transform_xy_f(%struct._GimpDisplayShell* %11, double %12, double %13, double* %x3, double* %y3)
  %14 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %15 = load double, double* %x4, align 8
  %16 = load double, double* %y4, align 8
  call void @gimp_display_shell_transform_xy_f(%struct._GimpDisplayShell* %14, double %15, double %16, double* %x4, double* %y4)
  %17 = load double, double* %x1, align 8
  %call3 = call double @floor(double %17) #6
  %add = fadd double %call3, 5.000000e-01
  store double %add, double* %x1, align 8
  %18 = load double, double* %y1, align 8
  %call4 = call double @floor(double %18) #6
  %add5 = fadd double %call4, 5.000000e-01
  store double %add5, double* %y1, align 8
  %19 = load double, double* %x2, align 8
  %call6 = call double @floor(double %19) #6
  %add7 = fadd double %call6, 5.000000e-01
  store double %add7, double* %x2, align 8
  %20 = load double, double* %y2, align 8
  %call8 = call double @floor(double %20) #6
  %add9 = fadd double %call8, 5.000000e-01
  store double %add9, double* %y2, align 8
  %21 = load double, double* %x3, align 8
  %call10 = call double @floor(double %21) #6
  %add11 = fadd double %call10, 5.000000e-01
  store double %add11, double* %x3, align 8
  %22 = load double, double* %y3, align 8
  %call12 = call double @floor(double %22) #6
  %add13 = fadd double %call12, 5.000000e-01
  store double %add13, double* %y3, align 8
  %23 = load double, double* %x4, align 8
  %call14 = call double @floor(double %23) #6
  %add15 = fadd double %call14, 5.000000e-01
  store double %add15, double* %x4, align 8
  %24 = load double, double* %y4, align 8
  %call16 = call double @floor(double %24) #6
  %add17 = fadd double %call16, 5.000000e-01
  store double %add17, double* %y4, align 8
  %25 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %26 = load double, double* %x1, align 8
  %27 = load double, double* %y1, align 8
  call void @cairo_move_to(%struct._cairo* %25, double %26, double %27)
  %28 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %29 = load double, double* %x2, align 8
  %30 = load double, double* %y2, align 8
  call void @cairo_line_to(%struct._cairo* %28, double %29, double %30)
  %31 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %32 = load double, double* %x4, align 8
  %33 = load double, double* %y4, align 8
  call void @cairo_line_to(%struct._cairo* %31, double %32, double %33)
  %34 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %35 = load double, double* %x3, align 8
  %36 = load double, double* %y3, align 8
  call void @cairo_line_to(%struct._cairo* %34, double %35, double %36)
  %37 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %38 = load double, double* %x1, align 8
  %39 = load double, double* %y1, align 8
  call void @cairo_line_to(%struct._cairo* %37, double %38, double %39)
  %40 = load i32, i32* %convex, align 4
  %tobool = icmp ne i32 %40, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %41 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %42 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @_gimp_canvas_item_stroke(%struct._GimpCanvasItem* %41, %struct._cairo* %42)
  br label %return

if.end:                                           ; preds = %entry
  %43 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %type = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %43, i32 0, i32 5
  %44 = load i32, i32* %type, align 4
  switch i32 %44, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.18
    i32 2, label %sw.bb.31
    i32 3, label %sw.bb.63
    i32 4, label %sw.bb.84
    i32 5, label %sw.bb.121
    i32 6, label %sw.bb.164
    i32 7, label %sw.bb.164
  ]

sw.bb:                                            ; preds = %if.end
  br label %sw.epilog

sw.bb.18:                                         ; preds = %if.end
  %45 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %46 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %47 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %transform = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %47, i32 0, i32 0
  %48 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %x119 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %48, i32 0, i32 1
  %49 = load double, double* %x119, align 8
  %50 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %x220 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %50, i32 0, i32 3
  %51 = load double, double* %x220, align 8
  %52 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %y121 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %52, i32 0, i32 2
  %53 = load double, double* %y121, align 8
  %54 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %y222 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %54, i32 0, i32 4
  %55 = load double, double* %y222, align 8
  %add23 = fadd double %53, %55
  %div = fdiv double %add23, 2.000000e+00
  call void @draw_hline(%struct._cairo* %45, %struct._GimpDisplayShell* %46, %struct._GimpMatrix3* %transform, double %49, double %51, double %div)
  %56 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %57 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %58 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %transform24 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %58, i32 0, i32 0
  %59 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %y125 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %59, i32 0, i32 2
  %60 = load double, double* %y125, align 8
  %61 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %y226 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %61, i32 0, i32 4
  %62 = load double, double* %y226, align 8
  %63 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %x127 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %63, i32 0, i32 1
  %64 = load double, double* %x127, align 8
  %65 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %x228 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %65, i32 0, i32 3
  %66 = load double, double* %x228, align 8
  %add29 = fadd double %64, %66
  %div30 = fdiv double %add29, 2.000000e+00
  call void @draw_vline(%struct._cairo* %56, %struct._GimpDisplayShell* %57, %struct._GimpMatrix3* %transform24, double %60, double %62, double %div30)
  br label %sw.epilog

sw.bb.31:                                         ; preds = %if.end
  %67 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %68 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %69 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %transform32 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %69, i32 0, i32 0
  %70 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %x133 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %70, i32 0, i32 1
  %71 = load double, double* %x133, align 8
  %72 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %x234 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %72, i32 0, i32 3
  %73 = load double, double* %x234, align 8
  %74 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %y135 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %74, i32 0, i32 2
  %75 = load double, double* %y135, align 8
  %mul = fmul double 2.000000e+00, %75
  %76 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %y236 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %76, i32 0, i32 4
  %77 = load double, double* %y236, align 8
  %add37 = fadd double %mul, %77
  %div38 = fdiv double %add37, 3.000000e+00
  call void @draw_hline(%struct._cairo* %67, %struct._GimpDisplayShell* %68, %struct._GimpMatrix3* %transform32, double %71, double %73, double %div38)
  %78 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %79 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %80 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %transform39 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %80, i32 0, i32 0
  %81 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %x140 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %81, i32 0, i32 1
  %82 = load double, double* %x140, align 8
  %83 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %x241 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %83, i32 0, i32 3
  %84 = load double, double* %x241, align 8
  %85 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %y142 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %85, i32 0, i32 2
  %86 = load double, double* %y142, align 8
  %87 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %y243 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %87, i32 0, i32 4
  %88 = load double, double* %y243, align 8
  %mul44 = fmul double 2.000000e+00, %88
  %add45 = fadd double %86, %mul44
  %div46 = fdiv double %add45, 3.000000e+00
  call void @draw_hline(%struct._cairo* %78, %struct._GimpDisplayShell* %79, %struct._GimpMatrix3* %transform39, double %82, double %84, double %div46)
  %89 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %90 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %91 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %transform47 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %91, i32 0, i32 0
  %92 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %y148 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %92, i32 0, i32 2
  %93 = load double, double* %y148, align 8
  %94 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %y249 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %94, i32 0, i32 4
  %95 = load double, double* %y249, align 8
  %96 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %x150 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %96, i32 0, i32 1
  %97 = load double, double* %x150, align 8
  %mul51 = fmul double 2.000000e+00, %97
  %98 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %x252 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %98, i32 0, i32 3
  %99 = load double, double* %x252, align 8
  %add53 = fadd double %mul51, %99
  %div54 = fdiv double %add53, 3.000000e+00
  call void @draw_vline(%struct._cairo* %89, %struct._GimpDisplayShell* %90, %struct._GimpMatrix3* %transform47, double %93, double %95, double %div54)
  %100 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %101 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %102 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %transform55 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %102, i32 0, i32 0
  %103 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %y156 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %103, i32 0, i32 2
  %104 = load double, double* %y156, align 8
  %105 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %y257 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %105, i32 0, i32 4
  %106 = load double, double* %y257, align 8
  %107 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %x158 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %107, i32 0, i32 1
  %108 = load double, double* %x158, align 8
  %109 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %x259 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %109, i32 0, i32 3
  %110 = load double, double* %x259, align 8
  %mul60 = fmul double 2.000000e+00, %110
  %add61 = fadd double %108, %mul60
  %div62 = fdiv double %add61, 3.000000e+00
  call void @draw_vline(%struct._cairo* %100, %struct._GimpDisplayShell* %101, %struct._GimpMatrix3* %transform55, double %104, double %106, double %div62)
  br label %sw.epilog

sw.bb.63:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.63
  %111 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %111, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %112 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %113 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %114 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %transform64 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %114, i32 0, i32 0
  %115 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %x165 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %115, i32 0, i32 1
  %116 = load double, double* %x165, align 8
  %117 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %x266 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %117, i32 0, i32 3
  %118 = load double, double* %x266, align 8
  %119 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %y167 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %119, i32 0, i32 2
  %120 = load double, double* %y167, align 8
  %121 = load i32, i32* %i, align 4
  %conv = sitofp i32 %121 to double
  %122 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %y268 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %122, i32 0, i32 4
  %123 = load double, double* %y268, align 8
  %124 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %y169 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %124, i32 0, i32 2
  %125 = load double, double* %y169, align 8
  %sub = fsub double %123, %125
  %mul70 = fmul double %conv, %sub
  %div71 = fdiv double %mul70, 5.000000e+00
  %add72 = fadd double %120, %div71
  call void @draw_hline(%struct._cairo* %112, %struct._GimpDisplayShell* %113, %struct._GimpMatrix3* %transform64, double %116, double %118, double %add72)
  %126 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %127 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %128 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %transform73 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %128, i32 0, i32 0
  %129 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %y174 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %129, i32 0, i32 2
  %130 = load double, double* %y174, align 8
  %131 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %y275 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %131, i32 0, i32 4
  %132 = load double, double* %y275, align 8
  %133 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %x176 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %133, i32 0, i32 1
  %134 = load double, double* %x176, align 8
  %135 = load i32, i32* %i, align 4
  %conv77 = sitofp i32 %135 to double
  %136 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %x278 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %136, i32 0, i32 3
  %137 = load double, double* %x278, align 8
  %138 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %x179 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %138, i32 0, i32 1
  %139 = load double, double* %x179, align 8
  %sub80 = fsub double %137, %139
  %mul81 = fmul double %conv77, %sub80
  %div82 = fdiv double %mul81, 5.000000e+00
  %add83 = fadd double %134, %div82
  call void @draw_vline(%struct._cairo* %126, %struct._GimpDisplayShell* %127, %struct._GimpMatrix3* %transform73, double %130, double %132, double %add83)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %140 = load i32, i32* %i, align 4
  %inc = add nsw i32 %140, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.bb.84:                                         ; preds = %if.end
  %141 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %142 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %143 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %transform85 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %143, i32 0, i32 0
  %144 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %x186 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %144, i32 0, i32 1
  %145 = load double, double* %x186, align 8
  %146 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %x287 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %146, i32 0, i32 3
  %147 = load double, double* %x287, align 8
  %148 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %y188 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %148, i32 0, i32 2
  %149 = load double, double* %y188, align 8
  %mul89 = fmul double 2.000000e+00, %149
  %150 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %y290 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %150, i32 0, i32 4
  %151 = load double, double* %y290, align 8
  %mul91 = fmul double 0x4009E3779B86C875, %151
  %add92 = fadd double %mul89, %mul91
  %div93 = fdiv double %add92, 0x4014F1BBCDC3643A
  call void @draw_hline(%struct._cairo* %141, %struct._GimpDisplayShell* %142, %struct._GimpMatrix3* %transform85, double %145, double %147, double %div93)
  %152 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %153 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %154 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %transform94 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %154, i32 0, i32 0
  %155 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %x195 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %155, i32 0, i32 1
  %156 = load double, double* %x195, align 8
  %157 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %x296 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %157, i32 0, i32 3
  %158 = load double, double* %x296, align 8
  %159 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %y197 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %159, i32 0, i32 2
  %160 = load double, double* %y197, align 8
  %mul98 = fmul double 0x4009E3779B86C875, %160
  %161 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %y299 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %161, i32 0, i32 4
  %162 = load double, double* %y299, align 8
  %mul100 = fmul double 2.000000e+00, %162
  %add101 = fadd double %mul98, %mul100
  %div102 = fdiv double %add101, 0x4014F1BBCDC3643A
  call void @draw_hline(%struct._cairo* %152, %struct._GimpDisplayShell* %153, %struct._GimpMatrix3* %transform94, double %156, double %158, double %div102)
  %163 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %164 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %165 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %transform103 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %165, i32 0, i32 0
  %166 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %y1104 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %166, i32 0, i32 2
  %167 = load double, double* %y1104, align 8
  %168 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %y2105 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %168, i32 0, i32 4
  %169 = load double, double* %y2105, align 8
  %170 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %x1106 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %170, i32 0, i32 1
  %171 = load double, double* %x1106, align 8
  %mul107 = fmul double 2.000000e+00, %171
  %172 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %x2108 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %172, i32 0, i32 3
  %173 = load double, double* %x2108, align 8
  %mul109 = fmul double 0x4009E3779B86C875, %173
  %add110 = fadd double %mul107, %mul109
  %div111 = fdiv double %add110, 0x4014F1BBCDC3643A
  call void @draw_vline(%struct._cairo* %163, %struct._GimpDisplayShell* %164, %struct._GimpMatrix3* %transform103, double %167, double %169, double %div111)
  %174 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %175 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %176 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %transform112 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %176, i32 0, i32 0
  %177 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %y1113 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %177, i32 0, i32 2
  %178 = load double, double* %y1113, align 8
  %179 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %y2114 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %179, i32 0, i32 4
  %180 = load double, double* %y2114, align 8
  %181 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %x1115 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %181, i32 0, i32 1
  %182 = load double, double* %x1115, align 8
  %mul116 = fmul double 0x4009E3779B86C875, %182
  %183 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %x2117 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %183, i32 0, i32 3
  %184 = load double, double* %x2117, align 8
  %mul118 = fmul double 2.000000e+00, %184
  %add119 = fadd double %mul116, %mul118
  %div120 = fdiv double %add119, 0x4014F1BBCDC3643A
  call void @draw_vline(%struct._cairo* %174, %struct._GimpDisplayShell* %175, %struct._GimpMatrix3* %transform112, double %178, double %180, double %div120)
  br label %sw.epilog

sw.bb.121:                                        ; preds = %if.end
  %185 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %x2122 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %185, i32 0, i32 3
  %186 = load double, double* %x2122, align 8
  %187 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %x1123 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %187, i32 0, i32 1
  %188 = load double, double* %x1123, align 8
  %sub124 = fsub double %186, %188
  %189 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %y2125 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %189, i32 0, i32 4
  %190 = load double, double* %y2125, align 8
  %191 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %y1126 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %191, i32 0, i32 2
  %192 = load double, double* %y1126, align 8
  %sub127 = fsub double %190, %192
  %cmp128 = fcmp olt double %sub124, %sub127
  br i1 %cmp128, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.121
  %193 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %x2130 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %193, i32 0, i32 3
  %194 = load double, double* %x2130, align 8
  %195 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %x1131 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %195, i32 0, i32 1
  %196 = load double, double* %x1131, align 8
  %sub132 = fsub double %194, %196
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.121
  %197 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %y2133 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %197, i32 0, i32 4
  %198 = load double, double* %y2133, align 8
  %199 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %y1134 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %199, i32 0, i32 2
  %200 = load double, double* %y1134, align 8
  %sub135 = fsub double %198, %200
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %sub132, %cond.true ], [ %sub135, %cond.false ]
  store double %cond, double* %square_side, align 8
  %201 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %202 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %203 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %transform136 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %203, i32 0, i32 0
  %204 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %x1137 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %204, i32 0, i32 1
  %205 = load double, double* %x1137, align 8
  %206 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %y1138 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %206, i32 0, i32 2
  %207 = load double, double* %y1138, align 8
  %208 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %x1139 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %208, i32 0, i32 1
  %209 = load double, double* %x1139, align 8
  %210 = load double, double* %square_side, align 8
  %add140 = fadd double %209, %210
  %211 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %y1141 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %211, i32 0, i32 2
  %212 = load double, double* %y1141, align 8
  %213 = load double, double* %square_side, align 8
  %add142 = fadd double %212, %213
  call void @draw_line(%struct._cairo* %201, %struct._GimpDisplayShell* %202, %struct._GimpMatrix3* %transform136, double %205, double %207, double %add140, double %add142)
  %214 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %215 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %216 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %transform143 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %216, i32 0, i32 0
  %217 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %x2144 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %217, i32 0, i32 3
  %218 = load double, double* %x2144, align 8
  %219 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %y1145 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %219, i32 0, i32 2
  %220 = load double, double* %y1145, align 8
  %221 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %x2146 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %221, i32 0, i32 3
  %222 = load double, double* %x2146, align 8
  %223 = load double, double* %square_side, align 8
  %sub147 = fsub double %222, %223
  %224 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %y1148 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %224, i32 0, i32 2
  %225 = load double, double* %y1148, align 8
  %226 = load double, double* %square_side, align 8
  %add149 = fadd double %225, %226
  call void @draw_line(%struct._cairo* %214, %struct._GimpDisplayShell* %215, %struct._GimpMatrix3* %transform143, double %218, double %220, double %sub147, double %add149)
  %227 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %228 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %229 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %transform150 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %229, i32 0, i32 0
  %230 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %x1151 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %230, i32 0, i32 1
  %231 = load double, double* %x1151, align 8
  %232 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %y2152 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %232, i32 0, i32 4
  %233 = load double, double* %y2152, align 8
  %234 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %x1153 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %234, i32 0, i32 1
  %235 = load double, double* %x1153, align 8
  %236 = load double, double* %square_side, align 8
  %add154 = fadd double %235, %236
  %237 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %y2155 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %237, i32 0, i32 4
  %238 = load double, double* %y2155, align 8
  %239 = load double, double* %square_side, align 8
  %sub156 = fsub double %238, %239
  call void @draw_line(%struct._cairo* %227, %struct._GimpDisplayShell* %228, %struct._GimpMatrix3* %transform150, double %231, double %233, double %add154, double %sub156)
  %240 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %241 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %242 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %transform157 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %242, i32 0, i32 0
  %243 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %x2158 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %243, i32 0, i32 3
  %244 = load double, double* %x2158, align 8
  %245 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %y2159 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %245, i32 0, i32 4
  %246 = load double, double* %y2159, align 8
  %247 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %x2160 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %247, i32 0, i32 3
  %248 = load double, double* %x2160, align 8
  %249 = load double, double* %square_side, align 8
  %sub161 = fsub double %248, %249
  %250 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %y2162 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %250, i32 0, i32 4
  %251 = load double, double* %y2162, align 8
  %252 = load double, double* %square_side, align 8
  %sub163 = fsub double %251, %252
  call void @draw_line(%struct._cairo* %240, %struct._GimpDisplayShell* %241, %struct._GimpMatrix3* %transform157, double %244, double %246, double %sub161, double %sub163)
  br label %sw.epilog

sw.bb.164:                                        ; preds = %if.end, %if.end
  %253 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %x2165 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %253, i32 0, i32 3
  %254 = load double, double* %x2165, align 8
  %255 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %x1166 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %255, i32 0, i32 1
  %256 = load double, double* %x1166, align 8
  %sub167 = fsub double %254, %256
  %cmp168 = fcmp ogt double 1.000000e+00, %sub167
  br i1 %cmp168, label %cond.true.170, label %cond.false.171

cond.true.170:                                    ; preds = %sw.bb.164
  br label %cond.end.175

cond.false.171:                                   ; preds = %sw.bb.164
  %257 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %x2172 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %257, i32 0, i32 3
  %258 = load double, double* %x2172, align 8
  %259 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %x1173 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %259, i32 0, i32 1
  %260 = load double, double* %x1173, align 8
  %sub174 = fsub double %258, %260
  br label %cond.end.175

cond.end.175:                                     ; preds = %cond.false.171, %cond.true.170
  %cond176 = phi double [ 1.000000e+00, %cond.true.170 ], [ %sub174, %cond.false.171 ]
  %conv177 = fptosi double %cond176 to i32
  store i32 %conv177, i32* %width, align 4
  %261 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %y2178 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %261, i32 0, i32 4
  %262 = load double, double* %y2178, align 8
  %263 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %y1179 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %263, i32 0, i32 2
  %264 = load double, double* %y1179, align 8
  %sub180 = fsub double %262, %264
  %cmp181 = fcmp ogt double 1.000000e+00, %sub180
  br i1 %cmp181, label %cond.true.183, label %cond.false.184

cond.true.183:                                    ; preds = %cond.end.175
  br label %cond.end.188

cond.false.184:                                   ; preds = %cond.end.175
  %265 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %y2185 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %265, i32 0, i32 4
  %266 = load double, double* %y2185, align 8
  %267 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %y1186 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %267, i32 0, i32 2
  %268 = load double, double* %y1186, align 8
  %sub187 = fsub double %266, %268
  br label %cond.end.188

cond.end.188:                                     ; preds = %cond.false.184, %cond.true.183
  %cond189 = phi double [ 1.000000e+00, %cond.true.183 ], [ %sub187, %cond.false.184 ]
  %conv190 = fptosi double %cond189 to i32
  store i32 %conv190, i32* %height, align 4
  %269 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %type191 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %269, i32 0, i32 5
  %270 = load i32, i32* %type191, align 4
  %cmp192 = icmp eq i32 %270, 6
  br i1 %cmp192, label %if.then.194, label %if.else.218

if.then.194:                                      ; preds = %cond.end.188
  %271 = load i32, i32* %width, align 4
  %272 = load i32, i32* %height, align 4
  %cmp195 = icmp sle i32 %271, %272
  br i1 %cmp195, label %if.then.197, label %if.else

if.then.197:                                      ; preds = %if.then.194
  %273 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %n_guides = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %273, i32 0, i32 6
  %274 = load i32, i32* %n_guides, align 4
  store i32 %274, i32* %ngx, align 4
  %275 = load i32, i32* %ngx, align 4
  %276 = load i32, i32* %height, align 4
  %277 = load i32, i32* %width, align 4
  %div198 = sdiv i32 %276, %277
  %cmp199 = icmp sgt i32 1, %div198
  br i1 %cmp199, label %cond.true.201, label %cond.false.202

cond.true.201:                                    ; preds = %if.then.197
  br label %cond.end.204

cond.false.202:                                   ; preds = %if.then.197
  %278 = load i32, i32* %height, align 4
  %279 = load i32, i32* %width, align 4
  %div203 = sdiv i32 %278, %279
  br label %cond.end.204

cond.end.204:                                     ; preds = %cond.false.202, %cond.true.201
  %cond205 = phi i32 [ 1, %cond.true.201 ], [ %div203, %cond.false.202 ]
  %mul206 = mul nsw i32 %275, %cond205
  store i32 %mul206, i32* %ngy, align 4
  br label %if.end.217

if.else:                                          ; preds = %if.then.194
  %280 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %n_guides207 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %280, i32 0, i32 6
  %281 = load i32, i32* %n_guides207, align 4
  store i32 %281, i32* %ngy, align 4
  %282 = load i32, i32* %ngy, align 4
  %283 = load i32, i32* %width, align 4
  %284 = load i32, i32* %height, align 4
  %div208 = sdiv i32 %283, %284
  %cmp209 = icmp sgt i32 1, %div208
  br i1 %cmp209, label %cond.true.211, label %cond.false.212

cond.true.211:                                    ; preds = %if.else
  br label %cond.end.214

cond.false.212:                                   ; preds = %if.else
  %285 = load i32, i32* %width, align 4
  %286 = load i32, i32* %height, align 4
  %div213 = sdiv i32 %285, %286
  br label %cond.end.214

cond.end.214:                                     ; preds = %cond.false.212, %cond.true.211
  %cond215 = phi i32 [ 1, %cond.true.211 ], [ %div213, %cond.false.212 ]
  %mul216 = mul nsw i32 %282, %cond215
  store i32 %mul216, i32* %ngx, align 4
  br label %if.end.217

if.end.217:                                       ; preds = %cond.end.214, %cond.end.204
  br label %if.end.229

if.else.218:                                      ; preds = %cond.end.188
  %287 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %n_guides219 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %287, i32 0, i32 6
  %288 = load i32, i32* %n_guides219, align 4
  %cmp220 = icmp sgt i32 2, %288
  br i1 %cmp220, label %cond.true.222, label %cond.false.223

cond.true.222:                                    ; preds = %if.else.218
  br label %cond.end.225

cond.false.223:                                   ; preds = %if.else.218
  %289 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %n_guides224 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %289, i32 0, i32 6
  %290 = load i32, i32* %n_guides224, align 4
  br label %cond.end.225

cond.end.225:                                     ; preds = %cond.false.223, %cond.true.222
  %cond226 = phi i32 [ 2, %cond.true.222 ], [ %290, %cond.false.223 ]
  store i32 %cond226, i32* %grid_size, align 4
  %291 = load i32, i32* %width, align 4
  %292 = load i32, i32* %grid_size, align 4
  %div227 = sdiv i32 %291, %292
  store i32 %div227, i32* %ngx, align 4
  %293 = load i32, i32* %height, align 4
  %294 = load i32, i32* %grid_size, align 4
  %div228 = sdiv i32 %293, %294
  store i32 %div228, i32* %ngy, align 4
  br label %if.end.229

if.end.229:                                       ; preds = %cond.end.225, %if.end.217
  store i32 1, i32* %i, align 4
  br label %for.cond.230

for.cond.230:                                     ; preds = %for.inc.247, %if.end.229
  %295 = load i32, i32* %i, align 4
  %296 = load i32, i32* %ngx, align 4
  %cmp231 = icmp sle i32 %295, %296
  br i1 %cmp231, label %for.body.233, label %for.end.249

for.body.233:                                     ; preds = %for.cond.230
  %297 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %x1234 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %297, i32 0, i32 1
  %298 = load double, double* %x1234, align 8
  %299 = load i32, i32* %i, align 4
  %conv235 = sitofp i32 %299 to double
  %300 = load i32, i32* %ngx, align 4
  %add236 = add nsw i32 %300, 1
  %conv237 = sitofp i32 %add236 to double
  %div238 = fdiv double %conv235, %conv237
  %301 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %x2239 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %301, i32 0, i32 3
  %302 = load double, double* %x2239, align 8
  %303 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %x1240 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %303, i32 0, i32 1
  %304 = load double, double* %x1240, align 8
  %sub241 = fsub double %302, %304
  %mul242 = fmul double %div238, %sub241
  %add243 = fadd double %298, %mul242
  store double %add243, double* %x, align 8
  %305 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %306 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %307 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %transform244 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %307, i32 0, i32 0
  %308 = load double, double* %x, align 8
  %309 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %y1245 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %309, i32 0, i32 2
  %310 = load double, double* %y1245, align 8
  %311 = load double, double* %x, align 8
  %312 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %y2246 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %312, i32 0, i32 4
  %313 = load double, double* %y2246, align 8
  call void @draw_line(%struct._cairo* %305, %struct._GimpDisplayShell* %306, %struct._GimpMatrix3* %transform244, double %308, double %310, double %311, double %313)
  br label %for.inc.247

for.inc.247:                                      ; preds = %for.body.233
  %314 = load i32, i32* %i, align 4
  %inc248 = add nsw i32 %314, 1
  store i32 %inc248, i32* %i, align 4
  br label %for.cond.230

for.end.249:                                      ; preds = %for.cond.230
  store i32 1, i32* %i, align 4
  br label %for.cond.250

for.cond.250:                                     ; preds = %for.inc.267, %for.end.249
  %315 = load i32, i32* %i, align 4
  %316 = load i32, i32* %ngy, align 4
  %cmp251 = icmp sle i32 %315, %316
  br i1 %cmp251, label %for.body.253, label %for.end.269

for.body.253:                                     ; preds = %for.cond.250
  %317 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %y1254 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %317, i32 0, i32 2
  %318 = load double, double* %y1254, align 8
  %319 = load i32, i32* %i, align 4
  %conv255 = sitofp i32 %319 to double
  %320 = load i32, i32* %ngy, align 4
  %add256 = add nsw i32 %320, 1
  %conv257 = sitofp i32 %add256 to double
  %div258 = fdiv double %conv255, %conv257
  %321 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %y2259 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %321, i32 0, i32 4
  %322 = load double, double* %y2259, align 8
  %323 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %y1260 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %323, i32 0, i32 2
  %324 = load double, double* %y1260, align 8
  %sub261 = fsub double %322, %324
  %mul262 = fmul double %div258, %sub261
  %add263 = fadd double %318, %mul262
  store double %add263, double* %y, align 8
  %325 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %326 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %327 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %transform264 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %327, i32 0, i32 0
  %328 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %x1265 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %328, i32 0, i32 1
  %329 = load double, double* %x1265, align 8
  %330 = load double, double* %y, align 8
  %331 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %x2266 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %331, i32 0, i32 3
  %332 = load double, double* %x2266, align 8
  %333 = load double, double* %y, align 8
  call void @draw_line(%struct._cairo* %325, %struct._GimpDisplayShell* %326, %struct._GimpMatrix3* %transform264, double %329, double %330, double %332, double %333)
  br label %for.inc.267

for.inc.267:                                      ; preds = %for.body.253
  %334 = load i32, i32* %i, align 4
  %inc268 = add nsw i32 %334, 1
  store i32 %inc268, i32* %i, align 4
  br label %for.cond.250

for.end.269:                                      ; preds = %for.cond.250
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end.269, %if.end, %cond.end, %sw.bb.84, %for.end, %sw.bb.31, %sw.bb.18, %sw.bb
  %335 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %336 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @_gimp_canvas_item_stroke(%struct._GimpCanvasItem* %335, %struct._cairo* %336)
  br label %return

return:                                           ; preds = %sw.epilog, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._cairo_region* @gimp_canvas_transform_guides_get_extents(%struct._GimpCanvasItem* %item, %struct._GimpDisplayShell* %shell) #3 {
entry:
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %x1 = alloca double, align 8
  %y1 = alloca double, align 8
  %x2 = alloca double, align 8
  %y2 = alloca double, align 8
  %x3 = alloca double, align 8
  %y3 = alloca double, align 8
  %x4 = alloca double, align 8
  %y4 = alloca double, align 8
  %extents = alloca %struct._cairo_rectangle_int, align 4
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %call = call i32 @gimp_canvas_transform_guides_transform(%struct._GimpCanvasItem* %0, %struct._GimpDisplayShell* %1, double* %x1, double* %y1, double* %x2, double* %y2, double* %x3, double* %y3, double* %x4, double* %y4)
  %2 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %3 = load double, double* %x1, align 8
  %4 = load double, double* %y1, align 8
  call void @gimp_display_shell_transform_xy_f(%struct._GimpDisplayShell* %2, double %3, double %4, double* %x1, double* %y1)
  %5 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %6 = load double, double* %x2, align 8
  %7 = load double, double* %y2, align 8
  call void @gimp_display_shell_transform_xy_f(%struct._GimpDisplayShell* %5, double %6, double %7, double* %x2, double* %y2)
  %8 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %9 = load double, double* %x3, align 8
  %10 = load double, double* %y3, align 8
  call void @gimp_display_shell_transform_xy_f(%struct._GimpDisplayShell* %8, double %9, double %10, double* %x3, double* %y3)
  %11 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %12 = load double, double* %x4, align 8
  %13 = load double, double* %y4, align 8
  call void @gimp_display_shell_transform_xy_f(%struct._GimpDisplayShell* %11, double %12, double %13, double* %x4, double* %y4)
  %14 = load double, double* %x1, align 8
  %15 = load double, double* %x2, align 8
  %cmp = fcmp olt double %14, %15
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %16 = load double, double* %x1, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %17 = load double, double* %x2, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %16, %cond.true ], [ %17, %cond.false ]
  %18 = load double, double* %x3, align 8
  %19 = load double, double* %x4, align 8
  %cmp1 = fcmp olt double %18, %19
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  %20 = load double, double* %x3, align 8
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  %21 = load double, double* %x4, align 8
  br label %cond.end.4

cond.end.4:                                       ; preds = %cond.false.3, %cond.true.2
  %cond5 = phi double [ %20, %cond.true.2 ], [ %21, %cond.false.3 ]
  %cmp6 = fcmp olt double %cond, %cond5
  br i1 %cmp6, label %cond.true.7, label %cond.false.13

cond.true.7:                                      ; preds = %cond.end.4
  %22 = load double, double* %x1, align 8
  %23 = load double, double* %x2, align 8
  %cmp8 = fcmp olt double %22, %23
  br i1 %cmp8, label %cond.true.9, label %cond.false.10

cond.true.9:                                      ; preds = %cond.true.7
  %24 = load double, double* %x1, align 8
  br label %cond.end.11

cond.false.10:                                    ; preds = %cond.true.7
  %25 = load double, double* %x2, align 8
  br label %cond.end.11

cond.end.11:                                      ; preds = %cond.false.10, %cond.true.9
  %cond12 = phi double [ %24, %cond.true.9 ], [ %25, %cond.false.10 ]
  br label %cond.end.19

cond.false.13:                                    ; preds = %cond.end.4
  %26 = load double, double* %x3, align 8
  %27 = load double, double* %x4, align 8
  %cmp14 = fcmp olt double %26, %27
  br i1 %cmp14, label %cond.true.15, label %cond.false.16

cond.true.15:                                     ; preds = %cond.false.13
  %28 = load double, double* %x3, align 8
  br label %cond.end.17

cond.false.16:                                    ; preds = %cond.false.13
  %29 = load double, double* %x4, align 8
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.false.16, %cond.true.15
  %cond18 = phi double [ %28, %cond.true.15 ], [ %29, %cond.false.16 ]
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.end.17, %cond.end.11
  %cond20 = phi double [ %cond12, %cond.end.11 ], [ %cond18, %cond.end.17 ]
  %sub = fsub double %cond20, 1.500000e+00
  %call21 = call double @floor(double %sub) #6
  %conv = fptosi double %call21 to i32
  %x = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %extents, i32 0, i32 0
  store i32 %conv, i32* %x, align 4
  %30 = load double, double* %y1, align 8
  %31 = load double, double* %y2, align 8
  %cmp22 = fcmp olt double %30, %31
  br i1 %cmp22, label %cond.true.24, label %cond.false.25

cond.true.24:                                     ; preds = %cond.end.19
  %32 = load double, double* %y1, align 8
  br label %cond.end.26

cond.false.25:                                    ; preds = %cond.end.19
  %33 = load double, double* %y2, align 8
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.25, %cond.true.24
  %cond27 = phi double [ %32, %cond.true.24 ], [ %33, %cond.false.25 ]
  %34 = load double, double* %y3, align 8
  %35 = load double, double* %y4, align 8
  %cmp28 = fcmp olt double %34, %35
  br i1 %cmp28, label %cond.true.30, label %cond.false.31

cond.true.30:                                     ; preds = %cond.end.26
  %36 = load double, double* %y3, align 8
  br label %cond.end.32

cond.false.31:                                    ; preds = %cond.end.26
  %37 = load double, double* %y4, align 8
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.31, %cond.true.30
  %cond33 = phi double [ %36, %cond.true.30 ], [ %37, %cond.false.31 ]
  %cmp34 = fcmp olt double %cond27, %cond33
  br i1 %cmp34, label %cond.true.36, label %cond.false.43

cond.true.36:                                     ; preds = %cond.end.32
  %38 = load double, double* %y1, align 8
  %39 = load double, double* %y2, align 8
  %cmp37 = fcmp olt double %38, %39
  br i1 %cmp37, label %cond.true.39, label %cond.false.40

cond.true.39:                                     ; preds = %cond.true.36
  %40 = load double, double* %y1, align 8
  br label %cond.end.41

cond.false.40:                                    ; preds = %cond.true.36
  %41 = load double, double* %y2, align 8
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.40, %cond.true.39
  %cond42 = phi double [ %40, %cond.true.39 ], [ %41, %cond.false.40 ]
  br label %cond.end.50

cond.false.43:                                    ; preds = %cond.end.32
  %42 = load double, double* %y3, align 8
  %43 = load double, double* %y4, align 8
  %cmp44 = fcmp olt double %42, %43
  br i1 %cmp44, label %cond.true.46, label %cond.false.47

cond.true.46:                                     ; preds = %cond.false.43
  %44 = load double, double* %y3, align 8
  br label %cond.end.48

cond.false.47:                                    ; preds = %cond.false.43
  %45 = load double, double* %y4, align 8
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.false.47, %cond.true.46
  %cond49 = phi double [ %44, %cond.true.46 ], [ %45, %cond.false.47 ]
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.end.48, %cond.end.41
  %cond51 = phi double [ %cond42, %cond.end.41 ], [ %cond49, %cond.end.48 ]
  %sub52 = fsub double %cond51, 1.500000e+00
  %call53 = call double @floor(double %sub52) #6
  %conv54 = fptosi double %call53 to i32
  %y = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %extents, i32 0, i32 1
  store i32 %conv54, i32* %y, align 4
  %46 = load double, double* %x1, align 8
  %47 = load double, double* %x2, align 8
  %cmp55 = fcmp ogt double %46, %47
  br i1 %cmp55, label %cond.true.57, label %cond.false.58

cond.true.57:                                     ; preds = %cond.end.50
  %48 = load double, double* %x1, align 8
  br label %cond.end.59

cond.false.58:                                    ; preds = %cond.end.50
  %49 = load double, double* %x2, align 8
  br label %cond.end.59

cond.end.59:                                      ; preds = %cond.false.58, %cond.true.57
  %cond60 = phi double [ %48, %cond.true.57 ], [ %49, %cond.false.58 ]
  %50 = load double, double* %x3, align 8
  %51 = load double, double* %x4, align 8
  %cmp61 = fcmp ogt double %50, %51
  br i1 %cmp61, label %cond.true.63, label %cond.false.64

cond.true.63:                                     ; preds = %cond.end.59
  %52 = load double, double* %x3, align 8
  br label %cond.end.65

cond.false.64:                                    ; preds = %cond.end.59
  %53 = load double, double* %x4, align 8
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.false.64, %cond.true.63
  %cond66 = phi double [ %52, %cond.true.63 ], [ %53, %cond.false.64 ]
  %cmp67 = fcmp ogt double %cond60, %cond66
  br i1 %cmp67, label %cond.true.69, label %cond.false.76

cond.true.69:                                     ; preds = %cond.end.65
  %54 = load double, double* %x1, align 8
  %55 = load double, double* %x2, align 8
  %cmp70 = fcmp ogt double %54, %55
  br i1 %cmp70, label %cond.true.72, label %cond.false.73

cond.true.72:                                     ; preds = %cond.true.69
  %56 = load double, double* %x1, align 8
  br label %cond.end.74

cond.false.73:                                    ; preds = %cond.true.69
  %57 = load double, double* %x2, align 8
  br label %cond.end.74

cond.end.74:                                      ; preds = %cond.false.73, %cond.true.72
  %cond75 = phi double [ %56, %cond.true.72 ], [ %57, %cond.false.73 ]
  br label %cond.end.83

cond.false.76:                                    ; preds = %cond.end.65
  %58 = load double, double* %x3, align 8
  %59 = load double, double* %x4, align 8
  %cmp77 = fcmp ogt double %58, %59
  br i1 %cmp77, label %cond.true.79, label %cond.false.80

cond.true.79:                                     ; preds = %cond.false.76
  %60 = load double, double* %x3, align 8
  br label %cond.end.81

cond.false.80:                                    ; preds = %cond.false.76
  %61 = load double, double* %x4, align 8
  br label %cond.end.81

cond.end.81:                                      ; preds = %cond.false.80, %cond.true.79
  %cond82 = phi double [ %60, %cond.true.79 ], [ %61, %cond.false.80 ]
  br label %cond.end.83

cond.end.83:                                      ; preds = %cond.end.81, %cond.end.74
  %cond84 = phi double [ %cond75, %cond.end.74 ], [ %cond82, %cond.end.81 ]
  %add = fadd double %cond84, 1.500000e+00
  %call85 = call double @ceil(double %add) #6
  %conv86 = fptosi double %call85 to i32
  %width = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %extents, i32 0, i32 2
  store i32 %conv86, i32* %width, align 4
  %62 = load double, double* %y1, align 8
  %63 = load double, double* %y2, align 8
  %cmp87 = fcmp ogt double %62, %63
  br i1 %cmp87, label %cond.true.89, label %cond.false.90

cond.true.89:                                     ; preds = %cond.end.83
  %64 = load double, double* %y1, align 8
  br label %cond.end.91

cond.false.90:                                    ; preds = %cond.end.83
  %65 = load double, double* %y2, align 8
  br label %cond.end.91

cond.end.91:                                      ; preds = %cond.false.90, %cond.true.89
  %cond92 = phi double [ %64, %cond.true.89 ], [ %65, %cond.false.90 ]
  %66 = load double, double* %y3, align 8
  %67 = load double, double* %y4, align 8
  %cmp93 = fcmp ogt double %66, %67
  br i1 %cmp93, label %cond.true.95, label %cond.false.96

cond.true.95:                                     ; preds = %cond.end.91
  %68 = load double, double* %y3, align 8
  br label %cond.end.97

cond.false.96:                                    ; preds = %cond.end.91
  %69 = load double, double* %y4, align 8
  br label %cond.end.97

cond.end.97:                                      ; preds = %cond.false.96, %cond.true.95
  %cond98 = phi double [ %68, %cond.true.95 ], [ %69, %cond.false.96 ]
  %cmp99 = fcmp ogt double %cond92, %cond98
  br i1 %cmp99, label %cond.true.101, label %cond.false.108

cond.true.101:                                    ; preds = %cond.end.97
  %70 = load double, double* %y1, align 8
  %71 = load double, double* %y2, align 8
  %cmp102 = fcmp ogt double %70, %71
  br i1 %cmp102, label %cond.true.104, label %cond.false.105

cond.true.104:                                    ; preds = %cond.true.101
  %72 = load double, double* %y1, align 8
  br label %cond.end.106

cond.false.105:                                   ; preds = %cond.true.101
  %73 = load double, double* %y2, align 8
  br label %cond.end.106

cond.end.106:                                     ; preds = %cond.false.105, %cond.true.104
  %cond107 = phi double [ %72, %cond.true.104 ], [ %73, %cond.false.105 ]
  br label %cond.end.115

cond.false.108:                                   ; preds = %cond.end.97
  %74 = load double, double* %y3, align 8
  %75 = load double, double* %y4, align 8
  %cmp109 = fcmp ogt double %74, %75
  br i1 %cmp109, label %cond.true.111, label %cond.false.112

cond.true.111:                                    ; preds = %cond.false.108
  %76 = load double, double* %y3, align 8
  br label %cond.end.113

cond.false.112:                                   ; preds = %cond.false.108
  %77 = load double, double* %y4, align 8
  br label %cond.end.113

cond.end.113:                                     ; preds = %cond.false.112, %cond.true.111
  %cond114 = phi double [ %76, %cond.true.111 ], [ %77, %cond.false.112 ]
  br label %cond.end.115

cond.end.115:                                     ; preds = %cond.end.113, %cond.end.106
  %cond116 = phi double [ %cond107, %cond.end.106 ], [ %cond114, %cond.end.113 ]
  %add117 = fadd double %cond116, 1.500000e+00
  %call118 = call double @ceil(double %add117) #6
  %conv119 = fptosi double %call118 to i32
  %height = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %extents, i32 0, i32 3
  store i32 %conv119, i32* %height, align 4
  %x120 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %extents, i32 0, i32 0
  %78 = load i32, i32* %x120, align 4
  %width121 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %extents, i32 0, i32 2
  %79 = load i32, i32* %width121, align 4
  %sub122 = sub nsw i32 %79, %78
  store i32 %sub122, i32* %width121, align 4
  %y123 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %extents, i32 0, i32 1
  %80 = load i32, i32* %y123, align 4
  %height124 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %extents, i32 0, i32 3
  %81 = load i32, i32* %height124, align 4
  %sub125 = sub nsw i32 %81, %80
  store i32 %sub125, i32* %height124, align 4
  %call126 = call %struct._cairo_region* @cairo_region_create_rectangle(%struct._cairo_rectangle_int* %extents)
  ret %struct._cairo_region* %call126
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @gimp_param_spec_matrix3(i8*, i8*, i8*, %struct._GimpMatrix3*, i32) #1

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_guides_type_get_type() #2

declare %struct._GParamSpec* @g_param_spec_int(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare void @g_type_class_add_private(i8*, i64) #1

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

declare i8* @g_value_get_boxed(%struct._GValue*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare void @gimp_matrix3_identity(%struct._GimpMatrix3*) #1

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

declare void @g_value_set_boxed(%struct._GValue*, i8*) #1

declare void @g_value_set_double(%struct._GValue*, double) #1

declare void @g_value_set_enum(%struct._GValue*, i32) #1

declare void @g_value_set_int(%struct._GValue*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_canvas_transform_guides_transform(%struct._GimpCanvasItem* %item, %struct._GimpDisplayShell* %shell, double* %tx1, double* %ty1, double* %tx2, double* %ty2, double* %tx3, double* %ty3, double* %tx4, double* %ty4) #3 {
entry:
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %tx1.addr = alloca double*, align 8
  %ty1.addr = alloca double*, align 8
  %tx2.addr = alloca double*, align 8
  %ty2.addr = alloca double*, align 8
  %tx3.addr = alloca double*, align 8
  %ty3.addr = alloca double*, align 8
  %tx4.addr = alloca double*, align 8
  %ty4.addr = alloca double*, align 8
  %private = alloca %struct._GimpCanvasTransformGuidesPrivate*, align 8
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store double* %tx1, double** %tx1.addr, align 8
  store double* %ty1, double** %ty1.addr, align 8
  store double* %tx2, double** %tx2.addr, align 8
  store double* %ty2, double** %ty2.addr, align 8
  store double* %tx3, double** %tx3.addr, align 8
  store double* %ty3, double** %ty3.addr, align 8
  store double* %tx4, double** %tx4.addr, align 8
  store double* %ty4, double** %ty4.addr, align 8
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_transform_guides_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasTransformGuidesPrivate*
  store %struct._GimpCanvasTransformGuidesPrivate* %2, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %3 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %transform = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %3, i32 0, i32 0
  %4 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %x1 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %4, i32 0, i32 1
  %5 = load double, double* %x1, align 8
  %6 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %y1 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %6, i32 0, i32 2
  %7 = load double, double* %y1, align 8
  %8 = load double*, double** %tx1.addr, align 8
  %9 = load double*, double** %ty1.addr, align 8
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %transform, double %5, double %7, double* %8, double* %9)
  %10 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %transform2 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %10, i32 0, i32 0
  %11 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %x2 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %11, i32 0, i32 3
  %12 = load double, double* %x2, align 8
  %13 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %y13 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %13, i32 0, i32 2
  %14 = load double, double* %y13, align 8
  %15 = load double*, double** %tx2.addr, align 8
  %16 = load double*, double** %ty2.addr, align 8
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %transform2, double %12, double %14, double* %15, double* %16)
  %17 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %transform4 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %17, i32 0, i32 0
  %18 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %x15 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %18, i32 0, i32 1
  %19 = load double, double* %x15, align 8
  %20 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %y2 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %20, i32 0, i32 4
  %21 = load double, double* %y2, align 8
  %22 = load double*, double** %tx3.addr, align 8
  %23 = load double*, double** %ty3.addr, align 8
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %transform4, double %19, double %21, double* %22, double* %23)
  %24 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %transform6 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %24, i32 0, i32 0
  %25 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %x27 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %25, i32 0, i32 3
  %26 = load double, double* %x27, align 8
  %27 = load %struct._GimpCanvasTransformGuidesPrivate*, %struct._GimpCanvasTransformGuidesPrivate** %private, align 8
  %y28 = getelementptr inbounds %struct._GimpCanvasTransformGuidesPrivate, %struct._GimpCanvasTransformGuidesPrivate* %27, i32 0, i32 4
  %28 = load double, double* %y28, align 8
  %29 = load double*, double** %tx4.addr, align 8
  %30 = load double*, double** %ty4.addr, align 8
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %transform6, double %26, double %28, double* %29, double* %30)
  %31 = load double*, double** %tx1.addr, align 8
  %32 = load double, double* %31, align 8
  %33 = load double*, double** %ty1.addr, align 8
  %34 = load double, double* %33, align 8
  %35 = load double*, double** %tx2.addr, align 8
  %36 = load double, double* %35, align 8
  %37 = load double*, double** %ty2.addr, align 8
  %38 = load double, double* %37, align 8
  %39 = load double*, double** %tx3.addr, align 8
  %40 = load double, double* %39, align 8
  %41 = load double*, double** %ty3.addr, align 8
  %42 = load double, double* %41, align 8
  %43 = load double*, double** %tx4.addr, align 8
  %44 = load double, double* %43, align 8
  %45 = load double*, double** %ty4.addr, align 8
  %46 = load double, double* %45, align 8
  %call9 = call i32 @gimp_transform_polygon_is_convex(double %32, double %34, double %36, double %38, double %40, double %42, double %44, double %46)
  ret i32 %call9
}

declare void @gimp_display_shell_transform_xy_f(%struct._GimpDisplayShell*, double, double, double*, double*) #1

; Function Attrs: nounwind readnone
declare double @floor(double) #2

declare void @cairo_move_to(%struct._cairo*, double, double) #1

declare void @cairo_line_to(%struct._cairo*, double, double) #1

declare void @_gimp_canvas_item_stroke(%struct._GimpCanvasItem*, %struct._cairo*) #1

; Function Attrs: nounwind uwtable
define internal void @draw_hline(%struct._cairo* %cr, %struct._GimpDisplayShell* %shell, %struct._GimpMatrix3* %transform, double %x1, double %x2, double %y) #3 {
entry:
  %cr.addr = alloca %struct._cairo*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %transform.addr = alloca %struct._GimpMatrix3*, align 8
  %x1.addr = alloca double, align 8
  %x2.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._GimpMatrix3* %transform, %struct._GimpMatrix3** %transform.addr, align 8
  store double %x1, double* %x1.addr, align 8
  store double %x2, double* %x2.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %1 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %2 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %transform.addr, align 8
  %3 = load double, double* %x1.addr, align 8
  %4 = load double, double* %y.addr, align 8
  %5 = load double, double* %x2.addr, align 8
  %6 = load double, double* %y.addr, align 8
  call void @draw_line(%struct._cairo* %0, %struct._GimpDisplayShell* %1, %struct._GimpMatrix3* %2, double %3, double %4, double %5, double %6)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @draw_vline(%struct._cairo* %cr, %struct._GimpDisplayShell* %shell, %struct._GimpMatrix3* %transform, double %y1, double %y2, double %x) #3 {
entry:
  %cr.addr = alloca %struct._cairo*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %transform.addr = alloca %struct._GimpMatrix3*, align 8
  %y1.addr = alloca double, align 8
  %y2.addr = alloca double, align 8
  %x.addr = alloca double, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._GimpMatrix3* %transform, %struct._GimpMatrix3** %transform.addr, align 8
  store double %y1, double* %y1.addr, align 8
  store double %y2, double* %y2.addr, align 8
  store double %x, double* %x.addr, align 8
  %0 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %1 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %2 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %transform.addr, align 8
  %3 = load double, double* %x.addr, align 8
  %4 = load double, double* %y1.addr, align 8
  %5 = load double, double* %x.addr, align 8
  %6 = load double, double* %y2.addr, align 8
  call void @draw_line(%struct._cairo* %0, %struct._GimpDisplayShell* %1, %struct._GimpMatrix3* %2, double %3, double %4, double %5, double %6)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @draw_line(%struct._cairo* %cr, %struct._GimpDisplayShell* %shell, %struct._GimpMatrix3* %transform, double %x1, double %y1, double %x2, double %y2) #3 {
entry:
  %cr.addr = alloca %struct._cairo*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %transform.addr = alloca %struct._GimpMatrix3*, align 8
  %x1.addr = alloca double, align 8
  %y1.addr = alloca double, align 8
  %x2.addr = alloca double, align 8
  %y2.addr = alloca double, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._GimpMatrix3* %transform, %struct._GimpMatrix3** %transform.addr, align 8
  store double %x1, double* %x1.addr, align 8
  store double %y1, double* %y1.addr, align 8
  store double %x2, double* %x2.addr, align 8
  store double %y2, double* %y2.addr, align 8
  %0 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %transform.addr, align 8
  %1 = load double, double* %x1.addr, align 8
  %2 = load double, double* %y1.addr, align 8
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %0, double %1, double %2, double* %x1.addr, double* %y1.addr)
  %3 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %transform.addr, align 8
  %4 = load double, double* %x2.addr, align 8
  %5 = load double, double* %y2.addr, align 8
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %3, double %4, double %5, double* %x2.addr, double* %y2.addr)
  %6 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %7 = load double, double* %x1.addr, align 8
  %8 = load double, double* %y1.addr, align 8
  call void @gimp_display_shell_transform_xy_f(%struct._GimpDisplayShell* %6, double %7, double %8, double* %x1.addr, double* %y1.addr)
  %9 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %10 = load double, double* %x2.addr, align 8
  %11 = load double, double* %y2.addr, align 8
  call void @gimp_display_shell_transform_xy_f(%struct._GimpDisplayShell* %9, double %10, double %11, double* %x2.addr, double* %y2.addr)
  %12 = load double, double* %x1.addr, align 8
  %call = call double @floor(double %12) #6
  %add = fadd double %call, 5.000000e-01
  store double %add, double* %x1.addr, align 8
  %13 = load double, double* %y1.addr, align 8
  %call1 = call double @floor(double %13) #6
  %add2 = fadd double %call1, 5.000000e-01
  store double %add2, double* %y1.addr, align 8
  %14 = load double, double* %x2.addr, align 8
  %call3 = call double @floor(double %14) #6
  %add4 = fadd double %call3, 5.000000e-01
  store double %add4, double* %x2.addr, align 8
  %15 = load double, double* %y2.addr, align 8
  %call5 = call double @floor(double %15) #6
  %add6 = fadd double %call5, 5.000000e-01
  store double %add6, double* %y2.addr, align 8
  %16 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %17 = load double, double* %x1.addr, align 8
  %18 = load double, double* %y1.addr, align 8
  call void @cairo_move_to(%struct._cairo* %16, double %17, double %18)
  %19 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %20 = load double, double* %x2.addr, align 8
  %21 = load double, double* %y2.addr, align 8
  call void @cairo_line_to(%struct._cairo* %19, double %20, double %21)
  ret void
}

declare void @gimp_matrix3_transform_point(%struct._GimpMatrix3*, double, double, double*, double*) #1

declare i32 @gimp_transform_polygon_is_convex(double, double, double, double, double, double, double, double) #1

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
