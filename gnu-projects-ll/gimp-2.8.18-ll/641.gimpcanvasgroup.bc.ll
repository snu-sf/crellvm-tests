; ModuleID = './app/display/gimpcanvasgroup.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpCanvasGroupClass = type { %struct._GimpCanvasItemClass }
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
%struct._GimpCanvasGroup = type { %struct._GimpCanvasItem }
%struct._GimpCanvasGroupPrivate = type { %struct._GList*, i32, i32 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_canvas_group_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"GimpCanvasGroup\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Display\00", align 1
@__func__.gimp_canvas_group_new = private unnamed_addr constant [22 x i8] c"gimp_canvas_group_new\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"GIMP_IS_DISPLAY_SHELL (shell)\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@__func__.gimp_canvas_group_add_item = private unnamed_addr constant [27 x i8] c"gimp_canvas_group_add_item\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"GIMP_IS_CANVAS_GROUP (group)\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"GIMP_IS_CANVAS_ITEM (item)\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"GIMP_CANVAS_ITEM (group) != item\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"update\00", align 1
@__func__.gimp_canvas_group_remove_item = private unnamed_addr constant [30 x i8] c"gimp_canvas_group_remove_item\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"g_list_find (private->items, item)\00", align 1
@__func__.gimp_canvas_group_set_group_stroking = private unnamed_addr constant [37 x i8] c"gimp_canvas_group_set_group_stroking\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"group-stroking\00", align 1
@__func__.gimp_canvas_group_set_group_filling = private unnamed_addr constant [36 x i8] c"gimp_canvas_group_set_group_filling\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"group-filling\00", align 1
@gimp_canvas_group_parent_class = internal global i8* null, align 8
@GimpCanvasGroup_private_offset = internal global i32 0, align 4
@.str.11 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"gimpcanvasgroup.c\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"property\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_canvas_group_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_canvas_group_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_canvas_group_get_type.g_define_type_id__volatile to i8*))
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
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 208, void (i8*, i8*)* bitcast (void (i8*)* @gimp_canvas_group_class_intern_init to void (i8*, i8*)*), i32 32, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpCanvasGroup*)* @gimp_canvas_group_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_canvas_group_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_canvas_group_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_canvas_item_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_group_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_canvas_group_parent_class, align 8
  %1 = load i32, i32* @GimpCanvasGroup_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpCanvasGroup_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpCanvasGroupClass*
  call void @gimp_canvas_group_class_init(%struct._GimpCanvasGroupClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_group_init(%struct._GimpCanvasGroup* %group) #3 {
entry:
  %group.addr = alloca %struct._GimpCanvasGroup*, align 8
  store %struct._GimpCanvasGroup* %group, %struct._GimpCanvasGroup** %group.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpCanvasItem* @gimp_canvas_group_new(%struct._GimpDisplayShell* %shell) #3 {
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_canvas_group_new, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_canvas_group_get_type() #6
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
define void @gimp_canvas_group_add_item(%struct._GimpCanvasGroup* %group, %struct._GimpCanvasItem* %item) #3 {
entry:
  %group.addr = alloca %struct._GimpCanvasGroup*, align 8
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %private = alloca %struct._GimpCanvasGroupPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %region = alloca %struct._cairo_region*, align 8
  store %struct._GimpCanvasGroup* %group, %struct._GimpCanvasGroup** %group.addr, align 8
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCanvasGroup*, %struct._GimpCanvasGroup** %group.addr, align 8
  %1 = bitcast %struct._GimpCanvasGroup* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_canvas_group_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_canvas_group_add_item, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %14 = bitcast %struct._GimpCanvasItem* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_canvas_item_get_type() #6
  store i64 %call16, i64* %__t15, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type26, align 8
  %21 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %23 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #7
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %24 = load i32, i32* %__r18, align 4
  store i32 %24, i32* %tmp33
  %25 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_canvas_group_add_item, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpCanvasGroup*, %struct._GimpCanvasGroup** %group.addr, align 8
  %27 = bitcast %struct._GimpCanvasGroup* %26 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_canvas_item_get_type() #6
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call40)
  %28 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpCanvasItem*
  %29 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %cmp42 = icmp ne %struct._GimpCanvasItem* %28, %29
  br i1 %cmp42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %do.body.39
  br label %if.end.45

if.else.44:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_canvas_group_add_item, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.45:                                        ; preds = %if.then.43
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  %30 = load %struct._GimpCanvasGroup*, %struct._GimpCanvasGroup** %group.addr, align 8
  %31 = bitcast %struct._GimpCanvasGroup* %30 to %struct._GTypeInstance*
  %call47 = call i64 @gimp_canvas_group_get_type() #6
  %call48 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %31, i64 %call47)
  %32 = bitcast i8* %call48 to %struct._GimpCanvasGroupPrivate*
  store %struct._GimpCanvasGroupPrivate* %32, %struct._GimpCanvasGroupPrivate** %private, align 8
  %33 = load %struct._GimpCanvasGroupPrivate*, %struct._GimpCanvasGroupPrivate** %private, align 8
  %group_stroking = getelementptr inbounds %struct._GimpCanvasGroupPrivate, %struct._GimpCanvasGroupPrivate* %33, i32 0, i32 1
  %34 = load i32, i32* %group_stroking, align 4
  %tobool49 = icmp ne i32 %34, 0
  br i1 %tobool49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %do.end.46
  %35 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  call void @gimp_canvas_item_suspend_stroking(%struct._GimpCanvasItem* %35)
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %do.end.46
  %36 = load %struct._GimpCanvasGroupPrivate*, %struct._GimpCanvasGroupPrivate** %private, align 8
  %group_filling = getelementptr inbounds %struct._GimpCanvasGroupPrivate, %struct._GimpCanvasGroupPrivate* %36, i32 0, i32 2
  %37 = load i32, i32* %group_filling, align 4
  %tobool52 = icmp ne i32 %37, 0
  br i1 %tobool52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.end.51
  %38 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  call void @gimp_canvas_item_suspend_filling(%struct._GimpCanvasItem* %38)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %if.end.51
  %39 = load %struct._GimpCanvasGroupPrivate*, %struct._GimpCanvasGroupPrivate** %private, align 8
  %items = getelementptr inbounds %struct._GimpCanvasGroupPrivate, %struct._GimpCanvasGroupPrivate* %39, i32 0, i32 0
  %40 = load %struct._GList*, %struct._GList** %items, align 8
  %41 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %42 = bitcast %struct._GimpCanvasItem* %41 to i8*
  %call55 = call i8* @g_object_ref(i8* %42)
  %call56 = call %struct._GList* @g_list_append(%struct._GList* %40, i8* %call55)
  %43 = load %struct._GimpCanvasGroupPrivate*, %struct._GimpCanvasGroupPrivate** %private, align 8
  %items57 = getelementptr inbounds %struct._GimpCanvasGroupPrivate, %struct._GimpCanvasGroupPrivate* %43, i32 0, i32 0
  store %struct._GList* %call56, %struct._GList** %items57, align 8
  %44 = load %struct._GimpCanvasGroup*, %struct._GimpCanvasGroup** %group.addr, align 8
  %45 = bitcast %struct._GimpCanvasGroup* %44 to %struct._GTypeInstance*
  %call58 = call i64 @gimp_canvas_item_get_type() #6
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call58)
  %46 = bitcast %struct._GTypeInstance* %call59 to %struct._GimpCanvasItem*
  %call60 = call i32 @_gimp_canvas_item_needs_update(%struct._GimpCanvasItem* %46)
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.then.62, label %if.end.70

if.then.62:                                       ; preds = %if.end.54
  %47 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %call64 = call %struct._cairo_region* @gimp_canvas_item_get_extents(%struct._GimpCanvasItem* %47)
  store %struct._cairo_region* %call64, %struct._cairo_region** %region, align 8
  %48 = load %struct._cairo_region*, %struct._cairo_region** %region, align 8
  %tobool65 = icmp ne %struct._cairo_region* %48, null
  br i1 %tobool65, label %if.then.66, label %if.end.69

if.then.66:                                       ; preds = %if.then.62
  %49 = load %struct._GimpCanvasGroup*, %struct._GimpCanvasGroup** %group.addr, align 8
  %50 = bitcast %struct._GimpCanvasGroup* %49 to %struct._GTypeInstance*
  %call67 = call i64 @gimp_canvas_item_get_type() #6
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call67)
  %51 = bitcast %struct._GTypeInstance* %call68 to %struct._GimpCanvasItem*
  %52 = load %struct._cairo_region*, %struct._cairo_region** %region, align 8
  call void @_gimp_canvas_item_update(%struct._GimpCanvasItem* %51, %struct._cairo_region* %52)
  %53 = load %struct._cairo_region*, %struct._cairo_region** %region, align 8
  call void @cairo_region_destroy(%struct._cairo_region* %53)
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.66, %if.then.62
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.end.54
  %54 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %55 = bitcast %struct._GimpCanvasItem* %54 to i8*
  %56 = load %struct._GimpCanvasGroup*, %struct._GimpCanvasGroup** %group.addr, align 8
  %57 = bitcast %struct._GimpCanvasGroup* %56 to i8*
  %call71 = call i64 @g_signal_connect_data(i8* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (void (%struct._GimpCanvasItem*, %struct._cairo_region*, %struct._GimpCanvasGroup*)* @gimp_canvas_group_child_update to void ()*), i8* %57, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %return

return:                                           ; preds = %if.end.70, %if.else.44, %if.else.36, %if.else.9
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

declare void @gimp_canvas_item_suspend_stroking(%struct._GimpCanvasItem*) #1

declare void @gimp_canvas_item_suspend_filling(%struct._GimpCanvasItem*) #1

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #1

declare i8* @g_object_ref(i8*) #1

declare i32 @_gimp_canvas_item_needs_update(%struct._GimpCanvasItem*) #1

declare %struct._cairo_region* @gimp_canvas_item_get_extents(%struct._GimpCanvasItem*) #1

declare void @_gimp_canvas_item_update(%struct._GimpCanvasItem*, %struct._cairo_region*) #1

declare void @cairo_region_destroy(%struct._cairo_region*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_group_child_update(%struct._GimpCanvasItem* %item, %struct._cairo_region* %region, %struct._GimpCanvasGroup* %group) #3 {
entry:
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %region.addr = alloca %struct._cairo_region*, align 8
  %group.addr = alloca %struct._GimpCanvasGroup*, align 8
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store %struct._cairo_region* %region, %struct._cairo_region** %region.addr, align 8
  store %struct._GimpCanvasGroup* %group, %struct._GimpCanvasGroup** %group.addr, align 8
  %0 = load %struct._GimpCanvasGroup*, %struct._GimpCanvasGroup** %group.addr, align 8
  %1 = bitcast %struct._GimpCanvasGroup* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_item_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCanvasItem*
  %call2 = call i32 @_gimp_canvas_item_needs_update(%struct._GimpCanvasItem* %2)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpCanvasGroup*, %struct._GimpCanvasGroup** %group.addr, align 8
  %4 = bitcast %struct._GimpCanvasGroup* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_canvas_item_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpCanvasItem*
  %6 = load %struct._cairo_region*, %struct._cairo_region** %region.addr, align 8
  call void @_gimp_canvas_item_update(%struct._GimpCanvasItem* %5, %struct._cairo_region* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_canvas_group_remove_item(%struct._GimpCanvasGroup* %group, %struct._GimpCanvasItem* %item) #3 {
entry:
  %group.addr = alloca %struct._GimpCanvasGroup*, align 8
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %private = alloca %struct._GimpCanvasGroupPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %region = alloca %struct._cairo_region*, align 8
  store %struct._GimpCanvasGroup* %group, %struct._GimpCanvasGroup** %group.addr, align 8
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCanvasGroup*, %struct._GimpCanvasGroup** %group.addr, align 8
  %1 = bitcast %struct._GimpCanvasGroup* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_canvas_group_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_canvas_group_remove_item, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %14 = bitcast %struct._GimpCanvasItem* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_canvas_item_get_type() #6
  store i64 %call16, i64* %__t15, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type26, align 8
  %21 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %23 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #7
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %24 = load i32, i32* %__r18, align 4
  store i32 %24, i32* %tmp33
  %25 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_canvas_group_remove_item, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpCanvasGroup*, %struct._GimpCanvasGroup** %group.addr, align 8
  %27 = bitcast %struct._GimpCanvasGroup* %26 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_canvas_group_get_type() #6
  %call40 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %27, i64 %call39)
  %28 = bitcast i8* %call40 to %struct._GimpCanvasGroupPrivate*
  store %struct._GimpCanvasGroupPrivate* %28, %struct._GimpCanvasGroupPrivate** %private, align 8
  br label %do.body.41

do.body.41:                                       ; preds = %do.end.38
  %29 = load %struct._GimpCanvasGroupPrivate*, %struct._GimpCanvasGroupPrivate** %private, align 8
  %items = getelementptr inbounds %struct._GimpCanvasGroupPrivate, %struct._GimpCanvasGroupPrivate* %29, i32 0, i32 0
  %30 = load %struct._GList*, %struct._GList** %items, align 8
  %31 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %32 = bitcast %struct._GimpCanvasItem* %31 to i8*
  %call42 = call %struct._GList* @g_list_find(%struct._GList* %30, i8* %32)
  %tobool43 = icmp ne %struct._GList* %call42, null
  br i1 %tobool43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %do.body.41
  br label %if.end.46

if.else.45:                                       ; preds = %do.body.41
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_canvas_group_remove_item, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.46:                                        ; preds = %if.then.44
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  %33 = load %struct._GimpCanvasGroupPrivate*, %struct._GimpCanvasGroupPrivate** %private, align 8
  %items48 = getelementptr inbounds %struct._GimpCanvasGroupPrivate, %struct._GimpCanvasGroupPrivate* %33, i32 0, i32 0
  %34 = load %struct._GList*, %struct._GList** %items48, align 8
  %35 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %36 = bitcast %struct._GimpCanvasItem* %35 to i8*
  %call49 = call %struct._GList* @g_list_remove(%struct._GList* %34, i8* %36)
  %37 = load %struct._GimpCanvasGroupPrivate*, %struct._GimpCanvasGroupPrivate** %private, align 8
  %items50 = getelementptr inbounds %struct._GimpCanvasGroupPrivate, %struct._GimpCanvasGroupPrivate* %37, i32 0, i32 0
  store %struct._GList* %call49, %struct._GList** %items50, align 8
  %38 = load %struct._GimpCanvasGroupPrivate*, %struct._GimpCanvasGroupPrivate** %private, align 8
  %group_stroking = getelementptr inbounds %struct._GimpCanvasGroupPrivate, %struct._GimpCanvasGroupPrivate* %38, i32 0, i32 1
  %39 = load i32, i32* %group_stroking, align 4
  %tobool51 = icmp ne i32 %39, 0
  br i1 %tobool51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %do.end.47
  %40 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  call void @gimp_canvas_item_resume_stroking(%struct._GimpCanvasItem* %40)
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %do.end.47
  %41 = load %struct._GimpCanvasGroupPrivate*, %struct._GimpCanvasGroupPrivate** %private, align 8
  %group_filling = getelementptr inbounds %struct._GimpCanvasGroupPrivate, %struct._GimpCanvasGroupPrivate* %41, i32 0, i32 2
  %42 = load i32, i32* %group_filling, align 4
  %tobool54 = icmp ne i32 %42, 0
  br i1 %tobool54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.end.53
  %43 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  call void @gimp_canvas_item_resume_filling(%struct._GimpCanvasItem* %43)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %if.end.53
  %44 = load %struct._GimpCanvasGroup*, %struct._GimpCanvasGroup** %group.addr, align 8
  %45 = bitcast %struct._GimpCanvasGroup* %44 to %struct._GTypeInstance*
  %call57 = call i64 @gimp_canvas_item_get_type() #6
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call57)
  %46 = bitcast %struct._GTypeInstance* %call58 to %struct._GimpCanvasItem*
  %call59 = call i32 @_gimp_canvas_item_needs_update(%struct._GimpCanvasItem* %46)
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %if.then.61, label %if.end.69

if.then.61:                                       ; preds = %if.end.56
  %47 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %call63 = call %struct._cairo_region* @gimp_canvas_item_get_extents(%struct._GimpCanvasItem* %47)
  store %struct._cairo_region* %call63, %struct._cairo_region** %region, align 8
  %48 = load %struct._cairo_region*, %struct._cairo_region** %region, align 8
  %tobool64 = icmp ne %struct._cairo_region* %48, null
  br i1 %tobool64, label %if.then.65, label %if.end.68

if.then.65:                                       ; preds = %if.then.61
  %49 = load %struct._GimpCanvasGroup*, %struct._GimpCanvasGroup** %group.addr, align 8
  %50 = bitcast %struct._GimpCanvasGroup* %49 to %struct._GTypeInstance*
  %call66 = call i64 @gimp_canvas_item_get_type() #6
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call66)
  %51 = bitcast %struct._GTypeInstance* %call67 to %struct._GimpCanvasItem*
  %52 = load %struct._cairo_region*, %struct._cairo_region** %region, align 8
  call void @_gimp_canvas_item_update(%struct._GimpCanvasItem* %51, %struct._cairo_region* %52)
  %53 = load %struct._cairo_region*, %struct._cairo_region** %region, align 8
  call void @cairo_region_destroy(%struct._cairo_region* %53)
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.65, %if.then.61
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.end.56
  %54 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %55 = bitcast %struct._GimpCanvasItem* %54 to i8*
  %56 = load %struct._GimpCanvasGroup*, %struct._GimpCanvasGroup** %group.addr, align 8
  %57 = bitcast %struct._GimpCanvasGroup* %56 to i8*
  %call70 = call i32 @g_signal_handlers_disconnect_matched(i8* %55, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpCanvasItem*, %struct._cairo_region*, %struct._GimpCanvasGroup*)* @gimp_canvas_group_child_update to i8*), i8* %57)
  %58 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %59 = bitcast %struct._GimpCanvasItem* %58 to i8*
  call void @g_object_unref(i8* %59)
  br label %return

return:                                           ; preds = %if.end.69, %if.else.45, %if.else.36, %if.else.9
  ret void
}

declare %struct._GList* @g_list_find(%struct._GList*, i8*) #1

declare %struct._GList* @g_list_remove(%struct._GList*, i8*) #1

declare void @gimp_canvas_item_resume_stroking(%struct._GimpCanvasItem*) #1

declare void @gimp_canvas_item_resume_filling(%struct._GimpCanvasItem*) #1

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_canvas_group_set_group_stroking(%struct._GimpCanvasGroup* %group, i32 %group_stroking) #3 {
entry:
  %group.addr = alloca %struct._GimpCanvasGroup*, align 8
  %group_stroking.addr = alloca i32, align 4
  %private = alloca %struct._GimpCanvasGroupPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %list = alloca %struct._GList*, align 8
  store %struct._GimpCanvasGroup* %group, %struct._GimpCanvasGroup** %group.addr, align 8
  store i32 %group_stroking, i32* %group_stroking.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCanvasGroup*, %struct._GimpCanvasGroup** %group.addr, align 8
  %1 = bitcast %struct._GimpCanvasGroup* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_canvas_group_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_canvas_group_set_group_stroking, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.31

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpCanvasGroup*, %struct._GimpCanvasGroup** %group.addr, align 8
  %14 = bitcast %struct._GimpCanvasGroup* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_canvas_group_get_type() #6
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpCanvasGroupPrivate*
  store %struct._GimpCanvasGroupPrivate* %15, %struct._GimpCanvasGroupPrivate** %private, align 8
  %16 = load %struct._GimpCanvasGroupPrivate*, %struct._GimpCanvasGroupPrivate** %private, align 8
  %group_stroking13 = getelementptr inbounds %struct._GimpCanvasGroupPrivate, %struct._GimpCanvasGroupPrivate* %16, i32 0, i32 1
  %17 = load i32, i32* %group_stroking13, align 4
  %18 = load i32, i32* %group_stroking.addr, align 4
  %cmp14 = icmp ne i32 %17, %18
  br i1 %cmp14, label %if.then.15, label %if.end.31

if.then.15:                                       ; preds = %do.end
  %19 = load %struct._GimpCanvasGroup*, %struct._GimpCanvasGroup** %group.addr, align 8
  %20 = bitcast %struct._GimpCanvasGroup* %19 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_canvas_item_get_type() #6
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call17)
  %21 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpCanvasItem*
  call void @gimp_canvas_item_begin_change(%struct._GimpCanvasItem* %21)
  %22 = load %struct._GimpCanvasGroup*, %struct._GimpCanvasGroup** %group.addr, align 8
  %23 = bitcast %struct._GimpCanvasGroup* %22 to i8*
  %24 = load i32, i32* %group_stroking.addr, align 4
  %tobool19 = icmp ne i32 %24, 0
  %cond = select i1 %tobool19, i32 1, i32 0
  call void (i8*, i8*, ...) @g_object_set(i8* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), i32 %cond, i8* null)
  %25 = load %struct._GimpCanvasGroupPrivate*, %struct._GimpCanvasGroupPrivate** %private, align 8
  %items = getelementptr inbounds %struct._GimpCanvasGroupPrivate, %struct._GimpCanvasGroupPrivate* %25, i32 0, i32 0
  %26 = load %struct._GList*, %struct._GList** %items, align 8
  store %struct._GList* %26, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.then.15
  %27 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool20 = icmp ne %struct._GList* %27, null
  br i1 %tobool20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load %struct._GimpCanvasGroupPrivate*, %struct._GimpCanvasGroupPrivate** %private, align 8
  %group_stroking21 = getelementptr inbounds %struct._GimpCanvasGroupPrivate, %struct._GimpCanvasGroupPrivate* %28, i32 0, i32 1
  %29 = load i32, i32* %group_stroking21, align 4
  %tobool22 = icmp ne i32 %29, 0
  br i1 %tobool22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %for.body
  %30 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %30, i32 0, i32 0
  %31 = load i8*, i8** %data, align 8
  %32 = bitcast i8* %31 to %struct._GimpCanvasItem*
  call void @gimp_canvas_item_suspend_stroking(%struct._GimpCanvasItem* %32)
  br label %if.end.26

if.else.24:                                       ; preds = %for.body
  %33 = load %struct._GList*, %struct._GList** %list, align 8
  %data25 = getelementptr inbounds %struct._GList, %struct._GList* %33, i32 0, i32 0
  %34 = load i8*, i8** %data25, align 8
  %35 = bitcast i8* %34 to %struct._GimpCanvasItem*
  call void @gimp_canvas_item_resume_stroking(%struct._GimpCanvasItem* %35)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.24, %if.then.23
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %36 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool27 = icmp ne %struct._GList* %36, null
  br i1 %tobool27, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %37 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %37, i32 0, i32 1
  %38 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond28 = phi %struct._GList* [ %38, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond28, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load %struct._GimpCanvasGroup*, %struct._GimpCanvasGroup** %group.addr, align 8
  %40 = bitcast %struct._GimpCanvasGroup* %39 to %struct._GTypeInstance*
  %call29 = call i64 @gimp_canvas_item_get_type() #6
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call29)
  %41 = bitcast %struct._GTypeInstance* %call30 to %struct._GimpCanvasItem*
  call void @gimp_canvas_item_end_change(%struct._GimpCanvasItem* %41)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.9, %for.end, %do.end
  ret void
}

declare void @gimp_canvas_item_begin_change(%struct._GimpCanvasItem*) #1

declare void @g_object_set(i8*, i8*, ...) #1

declare void @gimp_canvas_item_end_change(%struct._GimpCanvasItem*) #1

; Function Attrs: nounwind uwtable
define void @gimp_canvas_group_set_group_filling(%struct._GimpCanvasGroup* %group, i32 %group_filling) #3 {
entry:
  %group.addr = alloca %struct._GimpCanvasGroup*, align 8
  %group_filling.addr = alloca i32, align 4
  %private = alloca %struct._GimpCanvasGroupPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %list = alloca %struct._GList*, align 8
  store %struct._GimpCanvasGroup* %group, %struct._GimpCanvasGroup** %group.addr, align 8
  store i32 %group_filling, i32* %group_filling.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCanvasGroup*, %struct._GimpCanvasGroup** %group.addr, align 8
  %1 = bitcast %struct._GimpCanvasGroup* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_canvas_group_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_canvas_group_set_group_filling, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.31

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpCanvasGroup*, %struct._GimpCanvasGroup** %group.addr, align 8
  %14 = bitcast %struct._GimpCanvasGroup* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_canvas_group_get_type() #6
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpCanvasGroupPrivate*
  store %struct._GimpCanvasGroupPrivate* %15, %struct._GimpCanvasGroupPrivate** %private, align 8
  %16 = load %struct._GimpCanvasGroupPrivate*, %struct._GimpCanvasGroupPrivate** %private, align 8
  %group_filling13 = getelementptr inbounds %struct._GimpCanvasGroupPrivate, %struct._GimpCanvasGroupPrivate* %16, i32 0, i32 2
  %17 = load i32, i32* %group_filling13, align 4
  %18 = load i32, i32* %group_filling.addr, align 4
  %cmp14 = icmp ne i32 %17, %18
  br i1 %cmp14, label %if.then.15, label %if.end.31

if.then.15:                                       ; preds = %do.end
  %19 = load %struct._GimpCanvasGroup*, %struct._GimpCanvasGroup** %group.addr, align 8
  %20 = bitcast %struct._GimpCanvasGroup* %19 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_canvas_item_get_type() #6
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call17)
  %21 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpCanvasItem*
  call void @gimp_canvas_item_begin_change(%struct._GimpCanvasItem* %21)
  %22 = load %struct._GimpCanvasGroup*, %struct._GimpCanvasGroup** %group.addr, align 8
  %23 = bitcast %struct._GimpCanvasGroup* %22 to i8*
  %24 = load i32, i32* %group_filling.addr, align 4
  %tobool19 = icmp ne i32 %24, 0
  %cond = select i1 %tobool19, i32 1, i32 0
  call void (i8*, i8*, ...) @g_object_set(i8* %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 %cond, i8* null)
  %25 = load %struct._GimpCanvasGroupPrivate*, %struct._GimpCanvasGroupPrivate** %private, align 8
  %items = getelementptr inbounds %struct._GimpCanvasGroupPrivate, %struct._GimpCanvasGroupPrivate* %25, i32 0, i32 0
  %26 = load %struct._GList*, %struct._GList** %items, align 8
  store %struct._GList* %26, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.then.15
  %27 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool20 = icmp ne %struct._GList* %27, null
  br i1 %tobool20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load %struct._GimpCanvasGroupPrivate*, %struct._GimpCanvasGroupPrivate** %private, align 8
  %group_filling21 = getelementptr inbounds %struct._GimpCanvasGroupPrivate, %struct._GimpCanvasGroupPrivate* %28, i32 0, i32 2
  %29 = load i32, i32* %group_filling21, align 4
  %tobool22 = icmp ne i32 %29, 0
  br i1 %tobool22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %for.body
  %30 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %30, i32 0, i32 0
  %31 = load i8*, i8** %data, align 8
  %32 = bitcast i8* %31 to %struct._GimpCanvasItem*
  call void @gimp_canvas_item_suspend_filling(%struct._GimpCanvasItem* %32)
  br label %if.end.26

if.else.24:                                       ; preds = %for.body
  %33 = load %struct._GList*, %struct._GList** %list, align 8
  %data25 = getelementptr inbounds %struct._GList, %struct._GList* %33, i32 0, i32 0
  %34 = load i8*, i8** %data25, align 8
  %35 = bitcast i8* %34 to %struct._GimpCanvasItem*
  call void @gimp_canvas_item_resume_filling(%struct._GimpCanvasItem* %35)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.24, %if.then.23
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %36 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool27 = icmp ne %struct._GList* %36, null
  br i1 %tobool27, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %37 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %37, i32 0, i32 1
  %38 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond28 = phi %struct._GList* [ %38, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond28, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load %struct._GimpCanvasGroup*, %struct._GimpCanvasGroup** %group.addr, align 8
  %40 = bitcast %struct._GimpCanvasGroup* %39 to %struct._GTypeInstance*
  %call29 = call i64 @gimp_canvas_item_get_type() #6
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call29)
  %41 = bitcast %struct._GTypeInstance* %call30 to %struct._GimpCanvasItem*
  call void @gimp_canvas_item_end_change(%struct._GimpCanvasItem* %41)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.9, %for.end, %do.end
  ret void
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_group_class_init(%struct._GimpCanvasGroupClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpCanvasGroupClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %item_class = alloca %struct._GimpCanvasItemClass*, align 8
  store %struct._GimpCanvasGroupClass* %klass, %struct._GimpCanvasGroupClass** %klass.addr, align 8
  %0 = load %struct._GimpCanvasGroupClass*, %struct._GimpCanvasGroupClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpCanvasGroupClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpCanvasGroupClass*, %struct._GimpCanvasGroupClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpCanvasGroupClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_canvas_item_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpCanvasItemClass*
  store %struct._GimpCanvasItemClass* %5, %struct._GimpCanvasItemClass** %item_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_canvas_group_dispose, void (%struct._GObject*)** %dispose, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_canvas_group_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_canvas_group_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %9 = load %struct._GimpCanvasItemClass*, %struct._GimpCanvasItemClass** %item_class, align 8
  %draw = getelementptr inbounds %struct._GimpCanvasItemClass, %struct._GimpCanvasItemClass* %9, i32 0, i32 2
  store void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)* @gimp_canvas_group_draw, void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)** %draw, align 8
  %10 = load %struct._GimpCanvasItemClass*, %struct._GimpCanvasItemClass** %item_class, align 8
  %get_extents = getelementptr inbounds %struct._GimpCanvasItemClass, %struct._GimpCanvasItemClass* %10, i32 0, i32 3
  store %struct._cairo_region* (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*)* @gimp_canvas_group_get_extents, %struct._cairo_region* (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*)** %get_extents, align 8
  %11 = load %struct._GimpCanvasItemClass*, %struct._GimpCanvasItemClass** %item_class, align 8
  %hit = getelementptr inbounds %struct._GimpCanvasItemClass, %struct._GimpCanvasItemClass* %11, i32 0, i32 6
  store i32 (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, double, double)* @gimp_canvas_group_hit, i32 (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, double, double)** %hit, align 8
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* null, i32 0, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %12, i32 1, %struct._GParamSpec* %call3)
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call4 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i8* null, i8* null, i32 0, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %13, i32 2, %struct._GParamSpec* %call4)
  %14 = load %struct._GimpCanvasGroupClass*, %struct._GimpCanvasGroupClass** %klass.addr, align 8
  %15 = bitcast %struct._GimpCanvasGroupClass* %14 to i8*
  call void @g_type_class_add_private(i8* %15, i64 16)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_group_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %private = alloca %struct._GimpCanvasGroupPrivate*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_group_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasGroupPrivate*
  store %struct._GimpCanvasGroupPrivate* %2, %struct._GimpCanvasGroupPrivate** %private, align 8
  %3 = load %struct._GimpCanvasGroupPrivate*, %struct._GimpCanvasGroupPrivate** %private, align 8
  %items = getelementptr inbounds %struct._GimpCanvasGroupPrivate, %struct._GimpCanvasGroupPrivate* %3, i32 0, i32 0
  %4 = load %struct._GList*, %struct._GList** %items, align 8
  %tobool = icmp ne %struct._GList* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpCanvasGroupPrivate*, %struct._GimpCanvasGroupPrivate** %private, align 8
  %items2 = getelementptr inbounds %struct._GimpCanvasGroupPrivate, %struct._GimpCanvasGroupPrivate* %5, i32 0, i32 0
  %6 = load %struct._GList*, %struct._GList** %items2, align 8
  call void @g_list_free_full(%struct._GList* %6, void (i8*)* @g_object_unref)
  %7 = load %struct._GimpCanvasGroupPrivate*, %struct._GimpCanvasGroupPrivate** %private, align 8
  %items3 = getelementptr inbounds %struct._GimpCanvasGroupPrivate, %struct._GimpCanvasGroupPrivate* %7, i32 0, i32 0
  store %struct._GList* null, %struct._GList** %items3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8*, i8** @gimp_canvas_group_parent_class, align 8
  %9 = bitcast i8* %8 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %9, i64 80)
  %10 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 5
  %11 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %12 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %11(%struct._GObject* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_group_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpCanvasGroupPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_group_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasGroupPrivate*
  store %struct._GimpCanvasGroupPrivate* %2, %struct._GimpCanvasGroupPrivate** %private, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i32 @g_value_get_boolean(%struct._GValue* %4)
  %5 = load %struct._GimpCanvasGroupPrivate*, %struct._GimpCanvasGroupPrivate** %private, align 8
  %group_stroking = getelementptr inbounds %struct._GimpCanvasGroupPrivate, %struct._GimpCanvasGroupPrivate* %5, i32 0, i32 1
  store i32 %call2, i32* %group_stroking, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %6 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i32 @g_value_get_boolean(%struct._GValue* %6)
  %7 = load %struct._GimpCanvasGroupPrivate*, %struct._GimpCanvasGroupPrivate** %private, align 8
  %group_filling = getelementptr inbounds %struct._GimpCanvasGroupPrivate, %struct._GimpCanvasGroupPrivate* %7, i32 0, i32 2
  store i32 %call4, i32* %group_filling, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %8 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %8, %struct._GObject** %_glib__object, align 8
  %9 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %9, %struct._GParamSpec** %_glib__pspec, align 8
  %10 = load i32, i32* %property_id.addr, align 4
  store i32 %10, i32* %_glib__property_id, align 4
  %11 = load i32, i32* %_glib__property_id, align 4
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %12, i32 0, i32 1
  %13 = load i8*, i8** %name, align 8
  %14 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %15 = bitcast %struct._GParamSpec* %14 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %15, i32 0, i32 0
  %16 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %16, i32 0, i32 0
  %17 = load i64, i64* %g_type, align 8
  %call5 = call i8* @g_type_name(i64 %17)
  %18 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %19 = bitcast %struct._GObject* %18 to %struct._GTypeInstance*
  %g_class6 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class6, align 8
  %g_type7 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type7, align 8
  %call8 = call i8* @g_type_name(i64 %21)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0), i32 156, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 %11, i8* %13, i8* %call5, i8* %call8)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_group_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpCanvasGroupPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_group_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasGroupPrivate*
  store %struct._GimpCanvasGroupPrivate* %2, %struct._GimpCanvasGroupPrivate** %private, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpCanvasGroupPrivate*, %struct._GimpCanvasGroupPrivate** %private, align 8
  %group_stroking = getelementptr inbounds %struct._GimpCanvasGroupPrivate, %struct._GimpCanvasGroupPrivate* %5, i32 0, i32 1
  %6 = load i32, i32* %group_stroking, align 4
  call void @g_value_set_boolean(%struct._GValue* %4, i32 %6)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GimpCanvasGroupPrivate*, %struct._GimpCanvasGroupPrivate** %private, align 8
  %group_filling = getelementptr inbounds %struct._GimpCanvasGroupPrivate, %struct._GimpCanvasGroupPrivate* %8, i32 0, i32 2
  %9 = load i32, i32* %group_filling, align 4
  call void @g_value_set_boolean(%struct._GValue* %7, i32 %9)
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
  %call3 = call i8* @g_type_name(i64 %19)
  %20 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %21 = bitcast %struct._GObject* %20 to %struct._GTypeInstance*
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type5 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type5, align 8
  %call6 = call i8* @g_type_name(i64 %23)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0), i32 179, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 %13, i8* %15, i8* %call3, i8* %call6)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_group_draw(%struct._GimpCanvasItem* %item, %struct._GimpDisplayShell* %shell, %struct._cairo* %cr) #3 {
entry:
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %private = alloca %struct._GimpCanvasGroupPrivate*, align 8
  %list = alloca %struct._GList*, align 8
  %sub_item = alloca %struct._GimpCanvasItem*, align 8
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_group_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasGroupPrivate*
  store %struct._GimpCanvasGroupPrivate* %2, %struct._GimpCanvasGroupPrivate** %private, align 8
  %3 = load %struct._GimpCanvasGroupPrivate*, %struct._GimpCanvasGroupPrivate** %private, align 8
  %items = getelementptr inbounds %struct._GimpCanvasGroupPrivate, %struct._GimpCanvasGroupPrivate* %3, i32 0, i32 0
  %4 = load %struct._GList*, %struct._GList** %items, align 8
  store %struct._GList* %4, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %5 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %5, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %6, i32 0, i32 0
  %7 = load i8*, i8** %data, align 8
  %8 = bitcast i8* %7 to %struct._GimpCanvasItem*
  store %struct._GimpCanvasItem* %8, %struct._GimpCanvasItem** %sub_item, align 8
  %9 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %sub_item, align 8
  %10 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @gimp_canvas_item_draw(%struct._GimpCanvasItem* %9, %struct._cairo* %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool2 = icmp ne %struct._GList* %11, null
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %12 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %12, i32 0, i32 1
  %13 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %13, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct._GimpCanvasGroupPrivate*, %struct._GimpCanvasGroupPrivate** %private, align 8
  %group_stroking = getelementptr inbounds %struct._GimpCanvasGroupPrivate, %struct._GimpCanvasGroupPrivate* %14, i32 0, i32 1
  %15 = load i32, i32* %group_stroking, align 4
  %tobool3 = icmp ne i32 %15, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %16 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %17 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @_gimp_canvas_item_stroke(%struct._GimpCanvasItem* %16, %struct._cairo* %17)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %18 = load %struct._GimpCanvasGroupPrivate*, %struct._GimpCanvasGroupPrivate** %private, align 8
  %group_filling = getelementptr inbounds %struct._GimpCanvasGroupPrivate, %struct._GimpCanvasGroupPrivate* %18, i32 0, i32 2
  %19 = load i32, i32* %group_filling, align 4
  %tobool4 = icmp ne i32 %19, 0
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %20 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %21 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @_gimp_canvas_item_fill(%struct._GimpCanvasItem* %20, %struct._cairo* %21)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._cairo_region* @gimp_canvas_group_get_extents(%struct._GimpCanvasItem* %item, %struct._GimpDisplayShell* %shell) #3 {
entry:
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %private = alloca %struct._GimpCanvasGroupPrivate*, align 8
  %region = alloca %struct._cairo_region*, align 8
  %list = alloca %struct._GList*, align 8
  %sub_item = alloca %struct._GimpCanvasItem*, align 8
  %sub_region = alloca %struct._cairo_region*, align 8
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_group_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasGroupPrivate*
  store %struct._GimpCanvasGroupPrivate* %2, %struct._GimpCanvasGroupPrivate** %private, align 8
  store %struct._cairo_region* null, %struct._cairo_region** %region, align 8
  %3 = load %struct._GimpCanvasGroupPrivate*, %struct._GimpCanvasGroupPrivate** %private, align 8
  %items = getelementptr inbounds %struct._GimpCanvasGroupPrivate, %struct._GimpCanvasGroupPrivate* %3, i32 0, i32 0
  %4 = load %struct._GList*, %struct._GList** %items, align 8
  store %struct._GList* %4, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %5 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %5, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %6, i32 0, i32 0
  %7 = load i8*, i8** %data, align 8
  %8 = bitcast i8* %7 to %struct._GimpCanvasItem*
  store %struct._GimpCanvasItem* %8, %struct._GimpCanvasItem** %sub_item, align 8
  %9 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %sub_item, align 8
  %call2 = call %struct._cairo_region* @gimp_canvas_item_get_extents(%struct._GimpCanvasItem* %9)
  store %struct._cairo_region* %call2, %struct._cairo_region** %sub_region, align 8
  %10 = load %struct._cairo_region*, %struct._cairo_region** %region, align 8
  %tobool3 = icmp ne %struct._cairo_region* %10, null
  br i1 %tobool3, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %11 = load %struct._cairo_region*, %struct._cairo_region** %sub_region, align 8
  store %struct._cairo_region* %11, %struct._cairo_region** %region, align 8
  br label %if.end.7

if.else:                                          ; preds = %for.body
  %12 = load %struct._cairo_region*, %struct._cairo_region** %sub_region, align 8
  %tobool4 = icmp ne %struct._cairo_region* %12, null
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.else
  %13 = load %struct._cairo_region*, %struct._cairo_region** %region, align 8
  %14 = load %struct._cairo_region*, %struct._cairo_region** %sub_region, align 8
  %call6 = call i32 @cairo_region_union(%struct._cairo_region* %13, %struct._cairo_region* %14)
  %15 = load %struct._cairo_region*, %struct._cairo_region** %sub_region, align 8
  call void @cairo_region_destroy(%struct._cairo_region* %15)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.else
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end.7
  %16 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool8 = icmp ne %struct._GList* %16, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %17, i32 0, i32 1
  %18 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %18, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct._cairo_region*, %struct._cairo_region** %region, align 8
  ret %struct._cairo_region* %19
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_canvas_group_hit(%struct._GimpCanvasItem* %item, %struct._GimpDisplayShell* %shell, double %x, double %y) #3 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %private = alloca %struct._GimpCanvasGroupPrivate*, align 8
  %list = alloca %struct._GList*, align 8
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_group_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasGroupPrivate*
  store %struct._GimpCanvasGroupPrivate* %2, %struct._GimpCanvasGroupPrivate** %private, align 8
  %3 = load %struct._GimpCanvasGroupPrivate*, %struct._GimpCanvasGroupPrivate** %private, align 8
  %items = getelementptr inbounds %struct._GimpCanvasGroupPrivate, %struct._GimpCanvasGroupPrivate* %3, i32 0, i32 0
  %4 = load %struct._GList*, %struct._GList** %items, align 8
  store %struct._GList* %4, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %5 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %5, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %6, i32 0, i32 0
  %7 = load i8*, i8** %data, align 8
  %8 = bitcast i8* %7 to %struct._GimpCanvasItem*
  %9 = load double, double* %x.addr, align 8
  %10 = load double, double* %y.addr, align 8
  %call2 = call i32 @gimp_canvas_item_hit(%struct._GimpCanvasItem* %8, double %9, double %10)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool4 = icmp ne %struct._GList* %11, null
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %12 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %12, i32 0, i32 1
  %13 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %13, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

declare void @g_type_class_add_private(i8*, i64) #1

declare void @g_list_free_full(%struct._GList*, void (i8*)*) #1

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

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

declare void @gimp_canvas_item_draw(%struct._GimpCanvasItem*, %struct._cairo*) #1

declare void @_gimp_canvas_item_stroke(%struct._GimpCanvasItem*, %struct._cairo*) #1

declare void @_gimp_canvas_item_fill(%struct._GimpCanvasItem*, %struct._cairo*) #1

declare i32 @cairo_region_union(%struct._cairo_region*, %struct._cairo_region*) #1

declare i32 @gimp_canvas_item_hit(%struct._GimpCanvasItem*, double, double) #1

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
