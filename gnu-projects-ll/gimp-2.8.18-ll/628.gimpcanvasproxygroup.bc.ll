; ModuleID = './app/display/gimpcanvasproxygroup.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpCanvasProxyGroupClass = type { %struct._GimpCanvasGroupClass }
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
%struct._GimpCanvasProxyGroup = type { %struct._GimpCanvasGroup }
%struct._GimpCanvasGroup = type { %struct._GimpCanvasItem }
%struct._GimpCanvasProxyGroupPrivate = type { %struct._GHashTable* }
%struct._GHashTable = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_canvas_proxy_group_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"GimpCanvasProxyGroup\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Display\00", align 1
@__func__.gimp_canvas_proxy_group_new = private unnamed_addr constant [28 x i8] c"gimp_canvas_proxy_group_new\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"GIMP_IS_DISPLAY_SHELL (shell)\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@__func__.gimp_canvas_proxy_group_add_item = private unnamed_addr constant [33 x i8] c"gimp_canvas_proxy_group_add_item\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"GIMP_IS_CANVAS_GROUP (group)\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"object != NULL\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"GIMP_IS_CANVAS_ITEM (proxy_item)\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"GIMP_CANVAS_ITEM (group) != proxy_item\00", align 1
@.str.8 = private unnamed_addr constant [58 x i8] c"g_hash_table_lookup (private->proxy_hash, object) == NULL\00", align 1
@__func__.gimp_canvas_proxy_group_remove_item = private unnamed_addr constant [36 x i8] c"gimp_canvas_proxy_group_remove_item\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"proxy_item != NULL\00", align 1
@__func__.gimp_canvas_proxy_group_get_item = private unnamed_addr constant [33 x i8] c"gimp_canvas_proxy_group_get_item\00", align 1
@gimp_canvas_proxy_group_parent_class = internal global i8* null, align 8
@GimpCanvasProxyGroup_private_offset = internal global i32 0, align 4
@.str.10 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"gimpcanvasproxygroup.c\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"property\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_canvas_proxy_group_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_canvas_proxy_group_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_canvas_proxy_group_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_canvas_group_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 208, void (i8*, i8*)* bitcast (void (i8*)* @gimp_canvas_proxy_group_class_intern_init to void (i8*, i8*)*), i32 32, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpCanvasProxyGroup*)* @gimp_canvas_proxy_group_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_canvas_proxy_group_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_canvas_proxy_group_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_canvas_group_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_proxy_group_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_canvas_proxy_group_parent_class, align 8
  %1 = load i32, i32* @GimpCanvasProxyGroup_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpCanvasProxyGroup_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpCanvasProxyGroupClass*
  call void @gimp_canvas_proxy_group_class_init(%struct._GimpCanvasProxyGroupClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_proxy_group_init(%struct._GimpCanvasProxyGroup* %proxy_group) #3 {
entry:
  %proxy_group.addr = alloca %struct._GimpCanvasProxyGroup*, align 8
  %private = alloca %struct._GimpCanvasProxyGroupPrivate*, align 8
  store %struct._GimpCanvasProxyGroup* %proxy_group, %struct._GimpCanvasProxyGroup** %proxy_group.addr, align 8
  %0 = load %struct._GimpCanvasProxyGroup*, %struct._GimpCanvasProxyGroup** %proxy_group.addr, align 8
  %1 = bitcast %struct._GimpCanvasProxyGroup* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_proxy_group_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasProxyGroupPrivate*
  store %struct._GimpCanvasProxyGroupPrivate* %2, %struct._GimpCanvasProxyGroupPrivate** %private, align 8
  %call2 = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* @g_direct_hash, i32 (i8*, i8*)* @g_direct_equal)
  %3 = load %struct._GimpCanvasProxyGroupPrivate*, %struct._GimpCanvasProxyGroupPrivate** %private, align 8
  %proxy_hash = getelementptr inbounds %struct._GimpCanvasProxyGroupPrivate, %struct._GimpCanvasProxyGroupPrivate* %3, i32 0, i32 0
  store %struct._GHashTable* %call2, %struct._GHashTable** %proxy_hash, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpCanvasItem* @gimp_canvas_proxy_group_new(%struct._GimpDisplayShell* %shell) #3 {
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_canvas_proxy_group_new, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_canvas_proxy_group_get_type() #6
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
define void @gimp_canvas_proxy_group_add_item(%struct._GimpCanvasProxyGroup* %group, i8* %object, %struct._GimpCanvasItem* %proxy_item) #3 {
entry:
  %group.addr = alloca %struct._GimpCanvasProxyGroup*, align 8
  %object.addr = alloca i8*, align 8
  %proxy_item.addr = alloca %struct._GimpCanvasItem*, align 8
  %private = alloca %struct._GimpCanvasProxyGroupPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst19 = alloca %struct._GTypeInstance*, align 8
  %__t21 = alloca i64, align 8
  %__r24 = alloca i32, align 4
  %tmp39 = alloca i32, align 4
  store %struct._GimpCanvasProxyGroup* %group, %struct._GimpCanvasProxyGroup** %group.addr, align 8
  store i8* %object, i8** %object.addr, align 8
  store %struct._GimpCanvasItem* %proxy_item, %struct._GimpCanvasItem** %proxy_item.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCanvasProxyGroup*, %struct._GimpCanvasProxyGroup** %group.addr, align 8
  %1 = bitcast %struct._GimpCanvasProxyGroup* %0 to %struct._GTypeInstance*
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_canvas_proxy_group_add_item, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %object.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_canvas_proxy_group_add_item, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %proxy_item.addr, align 8
  %15 = bitcast %struct._GimpCanvasItem* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst19, align 8
  %call22 = call i64 @gimp_canvas_item_get_type() #6
  store i64 %call22, i64* %__t21, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %tobool25 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool25, label %if.else.27, label %if.then.26

if.then.26:                                       ; preds = %do.body.17
  store i32 0, i32* %__r24, align 4
  br label %if.end.38

if.else.27:                                       ; preds = %do.body.17
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %g_class28 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class28, align 8
  %tobool29 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool29, label %land.lhs.true.30, label %if.else.35

land.lhs.true.30:                                 ; preds = %if.else.27
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %g_class31 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class31, align 8
  %g_type32 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type32, align 8
  %22 = load i64, i64* %__t21, align 8
  %cmp33 = icmp eq i64 %21, %22
  br i1 %cmp33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %land.lhs.true.30
  store i32 1, i32* %__r24, align 4
  br label %if.end.37

if.else.35:                                       ; preds = %land.lhs.true.30, %if.else.27
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %24 = load i64, i64* %__t21, align 8
  %call36 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #7
  store i32 %call36, i32* %__r24, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.35, %if.then.34
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.26
  %25 = load i32, i32* %__r24, align 4
  store i32 %25, i32* %tmp39
  %26 = load i32, i32* %tmp39
  %tobool40 = icmp ne i32 %26, 0
  br i1 %tobool40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %if.end.38
  br label %if.end.43

if.else.42:                                       ; preds = %if.end.38
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_canvas_proxy_group_add_item, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.43:                                        ; preds = %if.then.41
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  br label %do.body.45

do.body.45:                                       ; preds = %do.end.44
  %27 = load %struct._GimpCanvasProxyGroup*, %struct._GimpCanvasProxyGroup** %group.addr, align 8
  %28 = bitcast %struct._GimpCanvasProxyGroup* %27 to %struct._GTypeInstance*
  %call46 = call i64 @gimp_canvas_item_get_type() #6
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call46)
  %29 = bitcast %struct._GTypeInstance* %call47 to %struct._GimpCanvasItem*
  %30 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %proxy_item.addr, align 8
  %cmp48 = icmp ne %struct._GimpCanvasItem* %29, %30
  br i1 %cmp48, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %do.body.45
  br label %if.end.51

if.else.50:                                       ; preds = %do.body.45
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_canvas_proxy_group_add_item, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.51:                                        ; preds = %if.then.49
  br label %do.end.52

do.end.52:                                        ; preds = %if.end.51
  %31 = load %struct._GimpCanvasProxyGroup*, %struct._GimpCanvasProxyGroup** %group.addr, align 8
  %32 = bitcast %struct._GimpCanvasProxyGroup* %31 to %struct._GTypeInstance*
  %call53 = call i64 @gimp_canvas_proxy_group_get_type() #6
  %call54 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %32, i64 %call53)
  %33 = bitcast i8* %call54 to %struct._GimpCanvasProxyGroupPrivate*
  store %struct._GimpCanvasProxyGroupPrivate* %33, %struct._GimpCanvasProxyGroupPrivate** %private, align 8
  br label %do.body.55

do.body.55:                                       ; preds = %do.end.52
  %34 = load %struct._GimpCanvasProxyGroupPrivate*, %struct._GimpCanvasProxyGroupPrivate** %private, align 8
  %proxy_hash = getelementptr inbounds %struct._GimpCanvasProxyGroupPrivate, %struct._GimpCanvasProxyGroupPrivate* %34, i32 0, i32 0
  %35 = load %struct._GHashTable*, %struct._GHashTable** %proxy_hash, align 8
  %36 = load i8*, i8** %object.addr, align 8
  %call56 = call i8* @g_hash_table_lookup(%struct._GHashTable* %35, i8* %36)
  %cmp57 = icmp eq i8* %call56, null
  br i1 %cmp57, label %if.then.58, label %if.else.59

if.then.58:                                       ; preds = %do.body.55
  br label %if.end.60

if.else.59:                                       ; preds = %do.body.55
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_canvas_proxy_group_add_item, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.60:                                        ; preds = %if.then.58
  br label %do.end.61

do.end.61:                                        ; preds = %if.end.60
  %37 = load %struct._GimpCanvasProxyGroupPrivate*, %struct._GimpCanvasProxyGroupPrivate** %private, align 8
  %proxy_hash62 = getelementptr inbounds %struct._GimpCanvasProxyGroupPrivate, %struct._GimpCanvasProxyGroupPrivate* %37, i32 0, i32 0
  %38 = load %struct._GHashTable*, %struct._GHashTable** %proxy_hash62, align 8
  %39 = load i8*, i8** %object.addr, align 8
  %40 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %proxy_item.addr, align 8
  %41 = bitcast %struct._GimpCanvasItem* %40 to i8*
  %call63 = call i32 @g_hash_table_insert(%struct._GHashTable* %38, i8* %39, i8* %41)
  %42 = load %struct._GimpCanvasProxyGroup*, %struct._GimpCanvasProxyGroup** %group.addr, align 8
  %43 = bitcast %struct._GimpCanvasProxyGroup* %42 to %struct._GTypeInstance*
  %call64 = call i64 @gimp_canvas_group_get_type() #6
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call64)
  %44 = bitcast %struct._GTypeInstance* %call65 to %struct._GimpCanvasGroup*
  %45 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %proxy_item.addr, align 8
  call void @gimp_canvas_group_add_item(%struct._GimpCanvasGroup* %44, %struct._GimpCanvasItem* %45)
  br label %return

return:                                           ; preds = %do.end.61, %if.else.59, %if.else.50, %if.else.42, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_canvas_item_get_type() #2

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #1

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #1

declare void @gimp_canvas_group_add_item(%struct._GimpCanvasGroup*, %struct._GimpCanvasItem*) #1

; Function Attrs: nounwind uwtable
define void @gimp_canvas_proxy_group_remove_item(%struct._GimpCanvasProxyGroup* %group, i8* %object) #3 {
entry:
  %group.addr = alloca %struct._GimpCanvasProxyGroup*, align 8
  %object.addr = alloca i8*, align 8
  %private = alloca %struct._GimpCanvasProxyGroupPrivate*, align 8
  %proxy_item = alloca %struct._GimpCanvasItem*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCanvasProxyGroup* %group, %struct._GimpCanvasProxyGroup** %group.addr, align 8
  store i8* %object, i8** %object.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCanvasProxyGroup*, %struct._GimpCanvasProxyGroup** %group.addr, align 8
  %1 = bitcast %struct._GimpCanvasProxyGroup* %0 to %struct._GTypeInstance*
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_canvas_proxy_group_remove_item, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %object.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_canvas_proxy_group_remove_item, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpCanvasProxyGroup*, %struct._GimpCanvasProxyGroup** %group.addr, align 8
  %15 = bitcast %struct._GimpCanvasProxyGroup* %14 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_canvas_proxy_group_get_type() #6
  %call18 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %15, i64 %call17)
  %16 = bitcast i8* %call18 to %struct._GimpCanvasProxyGroupPrivate*
  store %struct._GimpCanvasProxyGroupPrivate* %16, %struct._GimpCanvasProxyGroupPrivate** %private, align 8
  %17 = load %struct._GimpCanvasProxyGroupPrivate*, %struct._GimpCanvasProxyGroupPrivate** %private, align 8
  %proxy_hash = getelementptr inbounds %struct._GimpCanvasProxyGroupPrivate, %struct._GimpCanvasProxyGroupPrivate* %17, i32 0, i32 0
  %18 = load %struct._GHashTable*, %struct._GHashTable** %proxy_hash, align 8
  %19 = load i8*, i8** %object.addr, align 8
  %call19 = call i8* @g_hash_table_lookup(%struct._GHashTable* %18, i8* %19)
  %20 = bitcast i8* %call19 to %struct._GimpCanvasItem*
  store %struct._GimpCanvasItem* %20, %struct._GimpCanvasItem** %proxy_item, align 8
  br label %do.body.20

do.body.20:                                       ; preds = %do.end.16
  %21 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %proxy_item, align 8
  %cmp21 = icmp ne %struct._GimpCanvasItem* %21, null
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %do.body.20
  br label %if.end.24

if.else.23:                                       ; preds = %do.body.20
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_canvas_proxy_group_remove_item, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.24:                                        ; preds = %if.then.22
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  %22 = load %struct._GimpCanvasProxyGroupPrivate*, %struct._GimpCanvasProxyGroupPrivate** %private, align 8
  %proxy_hash26 = getelementptr inbounds %struct._GimpCanvasProxyGroupPrivate, %struct._GimpCanvasProxyGroupPrivate* %22, i32 0, i32 0
  %23 = load %struct._GHashTable*, %struct._GHashTable** %proxy_hash26, align 8
  %24 = load i8*, i8** %object.addr, align 8
  %call27 = call i32 @g_hash_table_remove(%struct._GHashTable* %23, i8* %24)
  %25 = load %struct._GimpCanvasProxyGroup*, %struct._GimpCanvasProxyGroup** %group.addr, align 8
  %26 = bitcast %struct._GimpCanvasProxyGroup* %25 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_canvas_group_get_type() #6
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call28)
  %27 = bitcast %struct._GTypeInstance* %call29 to %struct._GimpCanvasGroup*
  %28 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %proxy_item, align 8
  call void @gimp_canvas_group_remove_item(%struct._GimpCanvasGroup* %27, %struct._GimpCanvasItem* %28)
  br label %return

return:                                           ; preds = %do.end.25, %if.else.23, %if.else.14, %if.else.9
  ret void
}

declare i32 @g_hash_table_remove(%struct._GHashTable*, i8*) #1

declare void @gimp_canvas_group_remove_item(%struct._GimpCanvasGroup*, %struct._GimpCanvasItem*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpCanvasItem* @gimp_canvas_proxy_group_get_item(%struct._GimpCanvasProxyGroup* %group, i8* %object) #3 {
entry:
  %retval = alloca %struct._GimpCanvasItem*, align 8
  %group.addr = alloca %struct._GimpCanvasProxyGroup*, align 8
  %object.addr = alloca i8*, align 8
  %private = alloca %struct._GimpCanvasProxyGroupPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCanvasProxyGroup* %group, %struct._GimpCanvasProxyGroup** %group.addr, align 8
  store i8* %object, i8** %object.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCanvasProxyGroup*, %struct._GimpCanvasProxyGroup** %group.addr, align 8
  %1 = bitcast %struct._GimpCanvasProxyGroup* %0 to %struct._GTypeInstance*
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_canvas_proxy_group_get_item, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %object.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_canvas_proxy_group_get_item, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpCanvasProxyGroup*, %struct._GimpCanvasProxyGroup** %group.addr, align 8
  %15 = bitcast %struct._GimpCanvasProxyGroup* %14 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_canvas_proxy_group_get_type() #6
  %call18 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %15, i64 %call17)
  %16 = bitcast i8* %call18 to %struct._GimpCanvasProxyGroupPrivate*
  store %struct._GimpCanvasProxyGroupPrivate* %16, %struct._GimpCanvasProxyGroupPrivate** %private, align 8
  %17 = load %struct._GimpCanvasProxyGroupPrivate*, %struct._GimpCanvasProxyGroupPrivate** %private, align 8
  %proxy_hash = getelementptr inbounds %struct._GimpCanvasProxyGroupPrivate, %struct._GimpCanvasProxyGroupPrivate* %17, i32 0, i32 0
  %18 = load %struct._GHashTable*, %struct._GHashTable** %proxy_hash, align 8
  %19 = load i8*, i8** %object.addr, align 8
  %call19 = call i8* @g_hash_table_lookup(%struct._GHashTable* %18, i8* %19)
  %20 = bitcast i8* %call19 to %struct._GimpCanvasItem*
  store %struct._GimpCanvasItem* %20, %struct._GimpCanvasItem** %retval
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  %21 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %retval
  ret %struct._GimpCanvasItem* %21
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_proxy_group_class_init(%struct._GimpCanvasProxyGroupClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpCanvasProxyGroupClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpCanvasProxyGroupClass* %klass, %struct._GimpCanvasProxyGroupClass** %klass.addr, align 8
  %0 = load %struct._GimpCanvasProxyGroupClass*, %struct._GimpCanvasProxyGroupClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpCanvasProxyGroupClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_canvas_proxy_group_finalize, void (%struct._GObject*)** %finalize, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_canvas_proxy_group_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_canvas_proxy_group_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %6 = load %struct._GimpCanvasProxyGroupClass*, %struct._GimpCanvasProxyGroupClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpCanvasProxyGroupClass* %6 to i8*
  call void @g_type_class_add_private(i8* %7, i64 8)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_proxy_group_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %private = alloca %struct._GimpCanvasProxyGroupPrivate*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_proxy_group_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasProxyGroupPrivate*
  store %struct._GimpCanvasProxyGroupPrivate* %2, %struct._GimpCanvasProxyGroupPrivate** %private, align 8
  %3 = load %struct._GimpCanvasProxyGroupPrivate*, %struct._GimpCanvasProxyGroupPrivate** %private, align 8
  %proxy_hash = getelementptr inbounds %struct._GimpCanvasProxyGroupPrivate, %struct._GimpCanvasProxyGroupPrivate* %3, i32 0, i32 0
  %4 = load %struct._GHashTable*, %struct._GHashTable** %proxy_hash, align 8
  %tobool = icmp ne %struct._GHashTable* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpCanvasProxyGroupPrivate*, %struct._GimpCanvasProxyGroupPrivate** %private, align 8
  %proxy_hash2 = getelementptr inbounds %struct._GimpCanvasProxyGroupPrivate, %struct._GimpCanvasProxyGroupPrivate* %5, i32 0, i32 0
  %6 = load %struct._GHashTable*, %struct._GHashTable** %proxy_hash2, align 8
  call void @g_hash_table_unref(%struct._GHashTable* %6)
  %7 = load %struct._GimpCanvasProxyGroupPrivate*, %struct._GimpCanvasProxyGroupPrivate** %private, align 8
  %proxy_hash3 = getelementptr inbounds %struct._GimpCanvasProxyGroupPrivate, %struct._GimpCanvasProxyGroupPrivate* %7, i32 0, i32 0
  store %struct._GHashTable* null, %struct._GHashTable** %proxy_hash3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8*, i8** @gimp_canvas_proxy_group_parent_class, align 8
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
define internal void @gimp_canvas_proxy_group_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load i32, i32* %property_id.addr, align 4
  switch i32 %0, label %sw.default [
  ]

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %1 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %1, %struct._GObject** %_glib__object, align 8
  %2 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %2, %struct._GParamSpec** %_glib__pspec, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  store i32 %3, i32* %_glib__property_id, align 4
  %4 = load i32, i32* %_glib__property_id, align 4
  %5 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %5, i32 0, i32 1
  %6 = load i8*, i8** %name, align 8
  %7 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %8 = bitcast %struct._GParamSpec* %7 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %9, i32 0, i32 0
  %10 = load i64, i64* %g_type, align 8
  %call = call i8* @g_type_name(i64 %10)
  %11 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %12 = bitcast %struct._GObject* %11 to %struct._GTypeInstance*
  %g_class1 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %12, i32 0, i32 0
  %13 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class1, align 8
  %g_type2 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %13, i32 0, i32 0
  %14 = load i64, i64* %g_type2, align 8
  %call3 = call i8* @g_type_name(i64 %14)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0), i32 121, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i32 %4, i8* %6, i8* %call, i8* %call3)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_proxy_group_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load i32, i32* %property_id.addr, align 4
  switch i32 %0, label %sw.default [
  ]

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %1 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %1, %struct._GObject** %_glib__object, align 8
  %2 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %2, %struct._GParamSpec** %_glib__pspec, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  store i32 %3, i32* %_glib__property_id, align 4
  %4 = load i32, i32* %_glib__property_id, align 4
  %5 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %5, i32 0, i32 1
  %6 = load i8*, i8** %name, align 8
  %7 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %8 = bitcast %struct._GParamSpec* %7 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %9, i32 0, i32 0
  %10 = load i64, i64* %g_type, align 8
  %call = call i8* @g_type_name(i64 %10)
  %11 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %12 = bitcast %struct._GObject* %11 to %struct._GTypeInstance*
  %g_class1 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %12, i32 0, i32 0
  %13 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class1, align 8
  %g_type2 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %13, i32 0, i32 0
  %14 = load i64, i64* %g_type2, align 8
  %call3 = call i8* @g_type_name(i64 %14)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0), i32 137, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i32 %4, i8* %6, i8* %call, i8* %call3)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end
  ret void
}

declare void @g_type_class_add_private(i8*, i64) #1

declare void @g_hash_table_unref(%struct._GHashTable*) #1

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

declare %struct._GHashTable* @g_hash_table_new(i32 (i8*)*, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind readnone
declare i32 @g_direct_hash(i8*) #2

; Function Attrs: nounwind readnone
declare i32 @g_direct_equal(i8*, i8*) #2

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
