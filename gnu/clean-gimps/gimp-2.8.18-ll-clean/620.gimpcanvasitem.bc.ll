; ModuleID = './app/display/gimpcanvasitem.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
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
%struct._GimpCanvasItemPrivate = type { %struct._GimpDisplayShell*, i32, i32, i32, i32, i32, i32, %struct._cairo_region* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }

@gimp_canvas_item_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"GimpCanvasItem\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Display\00", align 1
@__func__.gimp_canvas_item_draw = private unnamed_addr constant [22 x i8] c"gimp_canvas_item_draw\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"GIMP_IS_CANVAS_ITEM (item)\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"cr != NULL\00", align 1
@__func__.gimp_canvas_item_get_extents = private unnamed_addr constant [29 x i8] c"gimp_canvas_item_get_extents\00", align 1
@__func__.gimp_canvas_item_hit = private unnamed_addr constant [21 x i8] c"gimp_canvas_item_hit\00", align 1
@__func__.gimp_canvas_item_set_visible = private unnamed_addr constant [29 x i8] c"gimp_canvas_item_set_visible\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"visible\00", align 1
@__func__.gimp_canvas_item_get_visible = private unnamed_addr constant [29 x i8] c"gimp_canvas_item_get_visible\00", align 1
@__func__.gimp_canvas_item_set_line_cap = private unnamed_addr constant [30 x i8] c"gimp_canvas_item_set_line_cap\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"line-cap\00", align 1
@__func__.gimp_canvas_item_set_highlight = private unnamed_addr constant [31 x i8] c"gimp_canvas_item_set_highlight\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"highlight\00", align 1
@__func__.gimp_canvas_item_get_highlight = private unnamed_addr constant [31 x i8] c"gimp_canvas_item_get_highlight\00", align 1
@__func__.gimp_canvas_item_begin_change = private unnamed_addr constant [30 x i8] c"gimp_canvas_item_begin_change\00", align 1
@item_signals = internal global [1 x i32] zeroinitializer, align 4
@__func__.gimp_canvas_item_end_change = private unnamed_addr constant [28 x i8] c"gimp_canvas_item_end_change\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"private->change_count > 0\00", align 1
@__func__.gimp_canvas_item_suspend_stroking = private unnamed_addr constant [34 x i8] c"gimp_canvas_item_suspend_stroking\00", align 1
@__func__.gimp_canvas_item_resume_stroking = private unnamed_addr constant [33 x i8] c"gimp_canvas_item_resume_stroking\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"private->suspend_stroking > 0\00", align 1
@__func__.gimp_canvas_item_suspend_filling = private unnamed_addr constant [33 x i8] c"gimp_canvas_item_suspend_filling\00", align 1
@__func__.gimp_canvas_item_resume_filling = private unnamed_addr constant [32 x i8] c"gimp_canvas_item_resume_filling\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"private->suspend_filling > 0\00", align 1
@.str.10 = private unnamed_addr constant [65 x i8] c"_gimp_canvas_item_stroke() on an item that is in a filling group\00", align 1
@.str.11 = private unnamed_addr constant [64 x i8] c"_gimp_canvas_item_fill() on an item that is in a stroking group\00", align 1
@gimp_canvas_item_parent_class = internal global i8* null, align 8
@GimpCanvasItem_private_offset = internal global i32 0, align 4
@.str.12 = private unnamed_addr constant [7 x i8] c"update\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"gimpcanvasitem.c\00", align 1
@__func__.gimp_canvas_item_constructed = private unnamed_addr constant [29 x i8] c"gimp_canvas_item_constructed\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"GIMP_IS_DISPLAY_SHELL (private->shell)\00", align 1
@.str.16 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@__func__.gimp_canvas_item_real_draw = private unnamed_addr constant [27 x i8] c"gimp_canvas_item_real_draw\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_canvas_item_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_canvas_item_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_canvas_item_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_object_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 208, void (i8*, i8*)* bitcast (void (i8*)* @gimp_canvas_item_class_intern_init to void (i8*, i8*)*), i32 32, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpCanvasItem*)* @gimp_canvas_item_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_canvas_item_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_canvas_item_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_item_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_canvas_item_parent_class, align 8
  %1 = load i32, i32* @GimpCanvasItem_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpCanvasItem_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpCanvasItemClass*
  call void @gimp_canvas_item_class_init(%struct._GimpCanvasItemClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_item_init(%struct._GimpCanvasItem* %item) #3 {
entry:
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %private = alloca %struct._GimpCanvasItemPrivate*, align 8
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_item_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasItemPrivate*
  store %struct._GimpCanvasItemPrivate* %2, %struct._GimpCanvasItemPrivate** %private, align 8
  %3 = load %struct._GimpCanvasItemPrivate*, %struct._GimpCanvasItemPrivate** %private, align 8
  %shell = getelementptr inbounds %struct._GimpCanvasItemPrivate, %struct._GimpCanvasItemPrivate* %3, i32 0, i32 0
  store %struct._GimpDisplayShell* null, %struct._GimpDisplayShell** %shell, align 8
  %4 = load %struct._GimpCanvasItemPrivate*, %struct._GimpCanvasItemPrivate** %private, align 8
  %visible = getelementptr inbounds %struct._GimpCanvasItemPrivate, %struct._GimpCanvasItemPrivate* %4, i32 0, i32 1
  store i32 1, i32* %visible, align 4
  %5 = load %struct._GimpCanvasItemPrivate*, %struct._GimpCanvasItemPrivate** %private, align 8
  %line_cap = getelementptr inbounds %struct._GimpCanvasItemPrivate, %struct._GimpCanvasItemPrivate* %5, i32 0, i32 2
  store i32 1, i32* %line_cap, align 4
  %6 = load %struct._GimpCanvasItemPrivate*, %struct._GimpCanvasItemPrivate** %private, align 8
  %highlight = getelementptr inbounds %struct._GimpCanvasItemPrivate, %struct._GimpCanvasItemPrivate* %6, i32 0, i32 3
  store i32 0, i32* %highlight, align 4
  %7 = load %struct._GimpCanvasItemPrivate*, %struct._GimpCanvasItemPrivate** %private, align 8
  %suspend_stroking = getelementptr inbounds %struct._GimpCanvasItemPrivate, %struct._GimpCanvasItemPrivate* %7, i32 0, i32 4
  store i32 0, i32* %suspend_stroking, align 4
  %8 = load %struct._GimpCanvasItemPrivate*, %struct._GimpCanvasItemPrivate** %private, align 8
  %suspend_filling = getelementptr inbounds %struct._GimpCanvasItemPrivate, %struct._GimpCanvasItemPrivate* %8, i32 0, i32 5
  store i32 0, i32* %suspend_filling, align 4
  %9 = load %struct._GimpCanvasItemPrivate*, %struct._GimpCanvasItemPrivate** %private, align 8
  %change_count = getelementptr inbounds %struct._GimpCanvasItemPrivate, %struct._GimpCanvasItemPrivate* %9, i32 0, i32 6
  store i32 1, i32* %change_count, align 4
  %10 = load %struct._GimpCanvasItemPrivate*, %struct._GimpCanvasItemPrivate** %private, align 8
  %change_region = getelementptr inbounds %struct._GimpCanvasItemPrivate, %struct._GimpCanvasItemPrivate* %10, i32 0, i32 7
  store %struct._cairo_region* null, %struct._cairo_region** %change_region, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_canvas_item_draw(%struct._GimpCanvasItem* %item, %struct._cairo* %cr) #3 {
entry:
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %private = alloca %struct._GimpCanvasItemPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_canvas_item_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_canvas_item_draw, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.22

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %cmp12 = icmp ne %struct._cairo* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_canvas_item_draw, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.22

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %15 = bitcast %struct._GimpCanvasItem* %14 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_canvas_item_get_type() #7
  %call18 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %15, i64 %call17)
  %16 = bitcast i8* %call18 to %struct._GimpCanvasItemPrivate*
  store %struct._GimpCanvasItemPrivate* %16, %struct._GimpCanvasItemPrivate** %private, align 8
  %17 = load %struct._GimpCanvasItemPrivate*, %struct._GimpCanvasItemPrivate** %private, align 8
  %visible = getelementptr inbounds %struct._GimpCanvasItemPrivate, %struct._GimpCanvasItemPrivate* %17, i32 0, i32 1
  %18 = load i32, i32* %visible, align 4
  %tobool19 = icmp ne i32 %18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %do.end.16
  %19 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_save(%struct._cairo* %19)
  %20 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %21 = bitcast %struct._GimpCanvasItem* %20 to %struct._GTypeInstance*
  %g_class21 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class21, align 8
  %23 = bitcast %struct._GTypeClass* %22 to %struct._GimpCanvasItemClass*
  %draw = getelementptr inbounds %struct._GimpCanvasItemClass, %struct._GimpCanvasItemClass* %23, i32 0, i32 2
  %24 = load void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)*, void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)** %draw, align 8
  %25 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %26 = load %struct._GimpCanvasItemPrivate*, %struct._GimpCanvasItemPrivate** %private, align 8
  %shell = getelementptr inbounds %struct._GimpCanvasItemPrivate, %struct._GimpCanvasItemPrivate* %26, i32 0, i32 0
  %27 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %28 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void %24(%struct._GimpCanvasItem* %25, %struct._GimpDisplayShell* %27, %struct._cairo* %28)
  %29 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_restore(%struct._cairo* %29)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.9, %if.else.14, %if.then.20, %do.end.16
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

declare void @cairo_save(%struct._cairo*) #1

declare void @cairo_restore(%struct._cairo*) #1

; Function Attrs: nounwind uwtable
define %struct._cairo_region* @gimp_canvas_item_get_extents(%struct._GimpCanvasItem* %item) #3 {
entry:
  %retval = alloca %struct._cairo_region*, align 8
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %private = alloca %struct._GimpCanvasItemPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_canvas_item_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_canvas_item_get_extents, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0))
  store %struct._cairo_region* null, %struct._cairo_region** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %14 = bitcast %struct._GimpCanvasItem* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_canvas_item_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpCanvasItemPrivate*
  store %struct._GimpCanvasItemPrivate* %15, %struct._GimpCanvasItemPrivate** %private, align 8
  %16 = load %struct._GimpCanvasItemPrivate*, %struct._GimpCanvasItemPrivate** %private, align 8
  %visible = getelementptr inbounds %struct._GimpCanvasItemPrivate, %struct._GimpCanvasItemPrivate* %16, i32 0, i32 1
  %17 = load i32, i32* %visible, align 4
  %tobool13 = icmp ne i32 %17, 0
  br i1 %tobool13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %do.end
  %18 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %19 = bitcast %struct._GimpCanvasItem* %18 to %struct._GTypeInstance*
  %g_class15 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class15, align 8
  %21 = bitcast %struct._GTypeClass* %20 to %struct._GimpCanvasItemClass*
  %get_extents = getelementptr inbounds %struct._GimpCanvasItemClass, %struct._GimpCanvasItemClass* %21, i32 0, i32 3
  %22 = load %struct._cairo_region* (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*)*, %struct._cairo_region* (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*)** %get_extents, align 8
  %23 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %24 = load %struct._GimpCanvasItemPrivate*, %struct._GimpCanvasItemPrivate** %private, align 8
  %shell = getelementptr inbounds %struct._GimpCanvasItemPrivate, %struct._GimpCanvasItemPrivate* %24, i32 0, i32 0
  %25 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %call16 = call %struct._cairo_region* %22(%struct._GimpCanvasItem* %23, %struct._GimpDisplayShell* %25)
  store %struct._cairo_region* %call16, %struct._cairo_region** %retval
  br label %return

if.end.17:                                        ; preds = %do.end
  store %struct._cairo_region* null, %struct._cairo_region** %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then.14, %if.else.9
  %26 = load %struct._cairo_region*, %struct._cairo_region** %retval
  ret %struct._cairo_region* %26
}

; Function Attrs: nounwind uwtable
define i32 @gimp_canvas_item_hit(%struct._GimpCanvasItem* %item, double %x, double %y) #3 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %private = alloca %struct._GimpCanvasItemPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_canvas_item_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_canvas_item_hit, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %14 = bitcast %struct._GimpCanvasItem* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_canvas_item_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpCanvasItemPrivate*
  store %struct._GimpCanvasItemPrivate* %15, %struct._GimpCanvasItemPrivate** %private, align 8
  %16 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %17 = bitcast %struct._GimpCanvasItem* %16 to %struct._GTypeInstance*
  %g_class13 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class13, align 8
  %19 = bitcast %struct._GTypeClass* %18 to %struct._GimpCanvasItemClass*
  %hit = getelementptr inbounds %struct._GimpCanvasItemClass, %struct._GimpCanvasItemClass* %19, i32 0, i32 6
  %20 = load i32 (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, double, double)*, i32 (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, double, double)** %hit, align 8
  %21 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %22 = load %struct._GimpCanvasItemPrivate*, %struct._GimpCanvasItemPrivate** %private, align 8
  %shell = getelementptr inbounds %struct._GimpCanvasItemPrivate, %struct._GimpCanvasItemPrivate* %22, i32 0, i32 0
  %23 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %24 = load double, double* %x.addr, align 8
  %25 = load double, double* %y.addr, align 8
  %call14 = call i32 %20(%struct._GimpCanvasItem* %21, %struct._GimpDisplayShell* %23, double %24, double %25)
  store i32 %call14, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define void @gimp_canvas_item_set_visible(%struct._GimpCanvasItem* %item, i32 %visible) #3 {
entry:
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %visible.addr = alloca i32, align 4
  %private = alloca %struct._GimpCanvasItemPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store i32 %visible, i32* %visible.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_canvas_item_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_canvas_item_set_visible, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.17

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %14 = bitcast %struct._GimpCanvasItem* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_canvas_item_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpCanvasItemPrivate*
  store %struct._GimpCanvasItemPrivate* %15, %struct._GimpCanvasItemPrivate** %private, align 8
  %16 = load %struct._GimpCanvasItemPrivate*, %struct._GimpCanvasItemPrivate** %private, align 8
  %visible13 = getelementptr inbounds %struct._GimpCanvasItemPrivate, %struct._GimpCanvasItemPrivate* %16, i32 0, i32 1
  %17 = load i32, i32* %visible13, align 4
  %18 = load i32, i32* %visible.addr, align 4
  %cmp14 = icmp ne i32 %17, %18
  br i1 %cmp14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %do.end
  %19 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  call void @gimp_canvas_item_begin_change(%struct._GimpCanvasItem* %19)
  %20 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %21 = bitcast %struct._GimpCanvasItem* %20 to %struct._GTypeInstance*
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 80)
  %22 = bitcast %struct._GTypeInstance* %call16 to %struct._GObject*
  %23 = bitcast %struct._GObject* %22 to i8*
  %24 = load i32, i32* %visible.addr, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 %24, i8* null)
  %25 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  call void @gimp_canvas_item_end_change(%struct._GimpCanvasItem* %25)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.9, %if.then.15, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_canvas_item_begin_change(%struct._GimpCanvasItem* %item) #3 {
entry:
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %private = alloca %struct._GimpCanvasItemPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_canvas_item_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_canvas_item_begin_change, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.20

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %14 = bitcast %struct._GimpCanvasItem* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_canvas_item_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpCanvasItemPrivate*
  store %struct._GimpCanvasItemPrivate* %15, %struct._GimpCanvasItemPrivate** %private, align 8
  %16 = load %struct._GimpCanvasItemPrivate*, %struct._GimpCanvasItemPrivate** %private, align 8
  %change_count = getelementptr inbounds %struct._GimpCanvasItemPrivate, %struct._GimpCanvasItemPrivate* %16, i32 0, i32 6
  %17 = load i32, i32* %change_count, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %change_count, align 4
  %18 = load %struct._GimpCanvasItemPrivate*, %struct._GimpCanvasItemPrivate** %private, align 8
  %change_count13 = getelementptr inbounds %struct._GimpCanvasItemPrivate, %struct._GimpCanvasItemPrivate* %18, i32 0, i32 6
  %19 = load i32, i32* %change_count13, align 4
  %cmp14 = icmp eq i32 %19, 1
  br i1 %cmp14, label %land.lhs.true.15, label %if.end.20

land.lhs.true.15:                                 ; preds = %do.end
  %20 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %21 = bitcast %struct._GimpCanvasItem* %20 to i8*
  %22 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @item_signals, i32 0, i64 0), align 4
  %call16 = call i32 @g_signal_has_handler_pending(i8* %21, i32 %22, i32 0, i32 0)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %land.lhs.true.15
  %23 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %call19 = call %struct._cairo_region* @gimp_canvas_item_get_extents(%struct._GimpCanvasItem* %23)
  %24 = load %struct._GimpCanvasItemPrivate*, %struct._GimpCanvasItemPrivate** %private, align 8
  %change_region = getelementptr inbounds %struct._GimpCanvasItemPrivate, %struct._GimpCanvasItemPrivate* %24, i32 0, i32 7
  store %struct._cairo_region* %call19, %struct._cairo_region** %change_region, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.9, %if.then.18, %land.lhs.true.15, %do.end
  ret void
}

declare void @g_object_set(i8*, i8*, ...) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_canvas_item_end_change(%struct._GimpCanvasItem* %item) #3 {
entry:
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %private = alloca %struct._GimpCanvasItemPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %region = alloca %struct._cairo_region*, align 8
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_canvas_item_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_canvas_item_end_change, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.51

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %14 = bitcast %struct._GimpCanvasItem* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_canvas_item_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpCanvasItemPrivate*
  store %struct._GimpCanvasItemPrivate* %15, %struct._GimpCanvasItemPrivate** %private, align 8
  br label %do.body.13

do.body.13:                                       ; preds = %do.end
  %16 = load %struct._GimpCanvasItemPrivate*, %struct._GimpCanvasItemPrivate** %private, align 8
  %change_count = getelementptr inbounds %struct._GimpCanvasItemPrivate, %struct._GimpCanvasItemPrivate* %16, i32 0, i32 6
  %17 = load i32, i32* %change_count, align 4
  %cmp14 = icmp sgt i32 %17, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.13
  br label %if.end.17

if.else.16:                                       ; preds = %do.body.13
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_canvas_item_end_change, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.51

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %18 = load %struct._GimpCanvasItemPrivate*, %struct._GimpCanvasItemPrivate** %private, align 8
  %change_count19 = getelementptr inbounds %struct._GimpCanvasItemPrivate, %struct._GimpCanvasItemPrivate* %18, i32 0, i32 6
  %19 = load i32, i32* %change_count19, align 4
  %dec = add nsw i32 %19, -1
  store i32 %dec, i32* %change_count19, align 4
  %20 = load %struct._GimpCanvasItemPrivate*, %struct._GimpCanvasItemPrivate** %private, align 8
  %change_count20 = getelementptr inbounds %struct._GimpCanvasItemPrivate, %struct._GimpCanvasItemPrivate* %20, i32 0, i32 6
  %21 = load i32, i32* %change_count20, align 4
  %cmp21 = icmp eq i32 %21, 0
  br i1 %cmp21, label %if.then.22, label %if.end.51

if.then.22:                                       ; preds = %do.end.18
  %22 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %23 = bitcast %struct._GimpCanvasItem* %22 to i8*
  %24 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @item_signals, i32 0, i64 0), align 4
  %call23 = call i32 @g_signal_has_handler_pending(i8* %23, i32 %24, i32 0, i32 0)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.else.43

if.then.25:                                       ; preds = %if.then.22
  %25 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %call27 = call %struct._cairo_region* @gimp_canvas_item_get_extents(%struct._GimpCanvasItem* %25)
  store %struct._cairo_region* %call27, %struct._cairo_region** %region, align 8
  %26 = load %struct._cairo_region*, %struct._cairo_region** %region, align 8
  %tobool28 = icmp ne %struct._cairo_region* %26, null
  br i1 %tobool28, label %if.else.30, label %if.then.29

if.then.29:                                       ; preds = %if.then.25
  %27 = load %struct._GimpCanvasItemPrivate*, %struct._GimpCanvasItemPrivate** %private, align 8
  %change_region = getelementptr inbounds %struct._GimpCanvasItemPrivate, %struct._GimpCanvasItemPrivate* %27, i32 0, i32 7
  %28 = load %struct._cairo_region*, %struct._cairo_region** %change_region, align 8
  store %struct._cairo_region* %28, %struct._cairo_region** %region, align 8
  br label %if.end.38

if.else.30:                                       ; preds = %if.then.25
  %29 = load %struct._GimpCanvasItemPrivate*, %struct._GimpCanvasItemPrivate** %private, align 8
  %change_region31 = getelementptr inbounds %struct._GimpCanvasItemPrivate, %struct._GimpCanvasItemPrivate* %29, i32 0, i32 7
  %30 = load %struct._cairo_region*, %struct._cairo_region** %change_region31, align 8
  %tobool32 = icmp ne %struct._cairo_region* %30, null
  br i1 %tobool32, label %if.then.33, label %if.end.37

if.then.33:                                       ; preds = %if.else.30
  %31 = load %struct._cairo_region*, %struct._cairo_region** %region, align 8
  %32 = load %struct._GimpCanvasItemPrivate*, %struct._GimpCanvasItemPrivate** %private, align 8
  %change_region34 = getelementptr inbounds %struct._GimpCanvasItemPrivate, %struct._GimpCanvasItemPrivate* %32, i32 0, i32 7
  %33 = load %struct._cairo_region*, %struct._cairo_region** %change_region34, align 8
  %call35 = call i32 @cairo_region_union(%struct._cairo_region* %31, %struct._cairo_region* %33)
  %34 = load %struct._GimpCanvasItemPrivate*, %struct._GimpCanvasItemPrivate** %private, align 8
  %change_region36 = getelementptr inbounds %struct._GimpCanvasItemPrivate, %struct._GimpCanvasItemPrivate* %34, i32 0, i32 7
  %35 = load %struct._cairo_region*, %struct._cairo_region** %change_region36, align 8
  call void @cairo_region_destroy(%struct._cairo_region* %35)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.33, %if.else.30
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.29
  %36 = load %struct._GimpCanvasItemPrivate*, %struct._GimpCanvasItemPrivate** %private, align 8
  %change_region39 = getelementptr inbounds %struct._GimpCanvasItemPrivate, %struct._GimpCanvasItemPrivate* %36, i32 0, i32 7
  store %struct._cairo_region* null, %struct._cairo_region** %change_region39, align 8
  %37 = load %struct._cairo_region*, %struct._cairo_region** %region, align 8
  %tobool40 = icmp ne %struct._cairo_region* %37, null
  br i1 %tobool40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.38
  %38 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %39 = bitcast %struct._GimpCanvasItem* %38 to i8*
  %40 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @item_signals, i32 0, i64 0), align 4
  %41 = load %struct._cairo_region*, %struct._cairo_region** %region, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %39, i32 %40, i32 0, %struct._cairo_region* %41)
  %42 = load %struct._cairo_region*, %struct._cairo_region** %region, align 8
  call void @cairo_region_destroy(%struct._cairo_region* %42)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %if.end.38
  br label %if.end.50

if.else.43:                                       ; preds = %if.then.22
  %43 = load %struct._GimpCanvasItemPrivate*, %struct._GimpCanvasItemPrivate** %private, align 8
  %change_region44 = getelementptr inbounds %struct._GimpCanvasItemPrivate, %struct._GimpCanvasItemPrivate* %43, i32 0, i32 7
  %44 = load %struct._cairo_region*, %struct._cairo_region** %change_region44, align 8
  %tobool45 = icmp ne %struct._cairo_region* %44, null
  br i1 %tobool45, label %if.then.46, label %if.end.49

if.then.46:                                       ; preds = %if.else.43
  %45 = load %struct._GimpCanvasItemPrivate*, %struct._GimpCanvasItemPrivate** %private, align 8
  %change_region47 = getelementptr inbounds %struct._GimpCanvasItemPrivate, %struct._GimpCanvasItemPrivate* %45, i32 0, i32 7
  %46 = load %struct._cairo_region*, %struct._cairo_region** %change_region47, align 8
  call void @cairo_region_destroy(%struct._cairo_region* %46)
  %47 = load %struct._GimpCanvasItemPrivate*, %struct._GimpCanvasItemPrivate** %private, align 8
  %change_region48 = getelementptr inbounds %struct._GimpCanvasItemPrivate, %struct._GimpCanvasItemPrivate* %47, i32 0, i32 7
  store %struct._cairo_region* null, %struct._cairo_region** %change_region48, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.46, %if.else.43
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.end.42
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.9, %if.else.16, %if.end.50, %do.end.18
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_canvas_item_get_visible(%struct._GimpCanvasItem* %item) #3 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %private = alloca %struct._GimpCanvasItemPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_canvas_item_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_canvas_item_get_visible, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %14 = bitcast %struct._GimpCanvasItem* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_canvas_item_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpCanvasItemPrivate*
  store %struct._GimpCanvasItemPrivate* %15, %struct._GimpCanvasItemPrivate** %private, align 8
  %16 = load %struct._GimpCanvasItemPrivate*, %struct._GimpCanvasItemPrivate** %private, align 8
  %visible = getelementptr inbounds %struct._GimpCanvasItemPrivate, %struct._GimpCanvasItemPrivate* %16, i32 0, i32 1
  %17 = load i32, i32* %visible, align 4
  store i32 %17, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define void @gimp_canvas_item_set_line_cap(%struct._GimpCanvasItem* %item, i32 %line_cap) #3 {
entry:
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %line_cap.addr = alloca i32, align 4
  %private = alloca %struct._GimpCanvasItemPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store i32 %line_cap, i32* %line_cap.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_canvas_item_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_canvas_item_set_line_cap, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.17

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %14 = bitcast %struct._GimpCanvasItem* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_canvas_item_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpCanvasItemPrivate*
  store %struct._GimpCanvasItemPrivate* %15, %struct._GimpCanvasItemPrivate** %private, align 8
  %16 = load %struct._GimpCanvasItemPrivate*, %struct._GimpCanvasItemPrivate** %private, align 8
  %line_cap13 = getelementptr inbounds %struct._GimpCanvasItemPrivate, %struct._GimpCanvasItemPrivate* %16, i32 0, i32 2
  %17 = load i32, i32* %line_cap13, align 4
  %18 = load i32, i32* %line_cap.addr, align 4
  %cmp14 = icmp ne i32 %17, %18
  br i1 %cmp14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %do.end
  %19 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  call void @gimp_canvas_item_begin_change(%struct._GimpCanvasItem* %19)
  %20 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %21 = bitcast %struct._GimpCanvasItem* %20 to %struct._GTypeInstance*
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 80)
  %22 = bitcast %struct._GTypeInstance* %call16 to %struct._GObject*
  %23 = bitcast %struct._GObject* %22 to i8*
  %24 = load i32, i32* %line_cap.addr, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i32 %24, i8* null)
  %25 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  call void @gimp_canvas_item_end_change(%struct._GimpCanvasItem* %25)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.9, %if.then.15, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_canvas_item_set_highlight(%struct._GimpCanvasItem* %item, i32 %highlight) #3 {
entry:
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %highlight.addr = alloca i32, align 4
  %private = alloca %struct._GimpCanvasItemPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store i32 %highlight, i32* %highlight.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_canvas_item_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_canvas_item_set_highlight, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.17

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %14 = bitcast %struct._GimpCanvasItem* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_canvas_item_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpCanvasItemPrivate*
  store %struct._GimpCanvasItemPrivate* %15, %struct._GimpCanvasItemPrivate** %private, align 8
  %16 = load %struct._GimpCanvasItemPrivate*, %struct._GimpCanvasItemPrivate** %private, align 8
  %highlight13 = getelementptr inbounds %struct._GimpCanvasItemPrivate, %struct._GimpCanvasItemPrivate* %16, i32 0, i32 3
  %17 = load i32, i32* %highlight13, align 4
  %18 = load i32, i32* %highlight.addr, align 4
  %cmp14 = icmp ne i32 %17, %18
  br i1 %cmp14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %do.end
  %19 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %20 = bitcast %struct._GimpCanvasItem* %19 to %struct._GTypeInstance*
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 80)
  %21 = bitcast %struct._GTypeInstance* %call16 to %struct._GObject*
  %22 = bitcast %struct._GObject* %21 to i8*
  %23 = load i32, i32* %highlight.addr, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i32 %23, i8* null)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.9, %if.then.15, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_canvas_item_get_highlight(%struct._GimpCanvasItem* %item) #3 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %private = alloca %struct._GimpCanvasItemPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_canvas_item_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_canvas_item_get_highlight, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %14 = bitcast %struct._GimpCanvasItem* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_canvas_item_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpCanvasItemPrivate*
  store %struct._GimpCanvasItemPrivate* %15, %struct._GimpCanvasItemPrivate** %private, align 8
  %16 = load %struct._GimpCanvasItemPrivate*, %struct._GimpCanvasItemPrivate** %private, align 8
  %highlight = getelementptr inbounds %struct._GimpCanvasItemPrivate, %struct._GimpCanvasItemPrivate* %16, i32 0, i32 3
  %17 = load i32, i32* %highlight, align 4
  store i32 %17, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %18 = load i32, i32* %retval
  ret i32 %18
}

declare i32 @g_signal_has_handler_pending(i8*, i32, i32, i32) #1

declare i32 @cairo_region_union(%struct._cairo_region*, %struct._cairo_region*) #1

declare void @cairo_region_destroy(%struct._cairo_region*) #1

declare void @g_signal_emit(i8*, i32, i32, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_canvas_item_suspend_stroking(%struct._GimpCanvasItem* %item) #3 {
entry:
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %private = alloca %struct._GimpCanvasItemPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_canvas_item_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_canvas_item_suspend_stroking, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %14 = bitcast %struct._GimpCanvasItem* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_canvas_item_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpCanvasItemPrivate*
  store %struct._GimpCanvasItemPrivate* %15, %struct._GimpCanvasItemPrivate** %private, align 8
  %16 = load %struct._GimpCanvasItemPrivate*, %struct._GimpCanvasItemPrivate** %private, align 8
  %suspend_stroking = getelementptr inbounds %struct._GimpCanvasItemPrivate, %struct._GimpCanvasItemPrivate* %16, i32 0, i32 4
  %17 = load i32, i32* %suspend_stroking, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %suspend_stroking, align 4
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_canvas_item_resume_stroking(%struct._GimpCanvasItem* %item) #3 {
entry:
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %private = alloca %struct._GimpCanvasItemPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_canvas_item_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_canvas_item_resume_stroking, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %14 = bitcast %struct._GimpCanvasItem* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_canvas_item_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpCanvasItemPrivate*
  store %struct._GimpCanvasItemPrivate* %15, %struct._GimpCanvasItemPrivate** %private, align 8
  br label %do.body.13

do.body.13:                                       ; preds = %do.end
  %16 = load %struct._GimpCanvasItemPrivate*, %struct._GimpCanvasItemPrivate** %private, align 8
  %suspend_stroking = getelementptr inbounds %struct._GimpCanvasItemPrivate, %struct._GimpCanvasItemPrivate* %16, i32 0, i32 4
  %17 = load i32, i32* %suspend_stroking, align 4
  %cmp14 = icmp sgt i32 %17, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.13
  br label %if.end.17

if.else.16:                                       ; preds = %do.body.13
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_canvas_item_resume_stroking, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %18 = load %struct._GimpCanvasItemPrivate*, %struct._GimpCanvasItemPrivate** %private, align 8
  %suspend_stroking19 = getelementptr inbounds %struct._GimpCanvasItemPrivate, %struct._GimpCanvasItemPrivate* %18, i32 0, i32 4
  %19 = load i32, i32* %suspend_stroking19, align 4
  %dec = add nsw i32 %19, -1
  store i32 %dec, i32* %suspend_stroking19, align 4
  br label %return

return:                                           ; preds = %do.end.18, %if.else.16, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_canvas_item_suspend_filling(%struct._GimpCanvasItem* %item) #3 {
entry:
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %private = alloca %struct._GimpCanvasItemPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_canvas_item_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_canvas_item_suspend_filling, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %14 = bitcast %struct._GimpCanvasItem* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_canvas_item_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpCanvasItemPrivate*
  store %struct._GimpCanvasItemPrivate* %15, %struct._GimpCanvasItemPrivate** %private, align 8
  %16 = load %struct._GimpCanvasItemPrivate*, %struct._GimpCanvasItemPrivate** %private, align 8
  %suspend_filling = getelementptr inbounds %struct._GimpCanvasItemPrivate, %struct._GimpCanvasItemPrivate* %16, i32 0, i32 5
  %17 = load i32, i32* %suspend_filling, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %suspend_filling, align 4
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_canvas_item_resume_filling(%struct._GimpCanvasItem* %item) #3 {
entry:
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %private = alloca %struct._GimpCanvasItemPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_canvas_item_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_canvas_item_resume_filling, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %14 = bitcast %struct._GimpCanvasItem* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_canvas_item_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpCanvasItemPrivate*
  store %struct._GimpCanvasItemPrivate* %15, %struct._GimpCanvasItemPrivate** %private, align 8
  br label %do.body.13

do.body.13:                                       ; preds = %do.end
  %16 = load %struct._GimpCanvasItemPrivate*, %struct._GimpCanvasItemPrivate** %private, align 8
  %suspend_filling = getelementptr inbounds %struct._GimpCanvasItemPrivate, %struct._GimpCanvasItemPrivate* %16, i32 0, i32 5
  %17 = load i32, i32* %suspend_filling, align 4
  %cmp14 = icmp sgt i32 %17, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.13
  br label %if.end.17

if.else.16:                                       ; preds = %do.body.13
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_canvas_item_resume_filling, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %18 = load %struct._GimpCanvasItemPrivate*, %struct._GimpCanvasItemPrivate** %private, align 8
  %suspend_filling19 = getelementptr inbounds %struct._GimpCanvasItemPrivate, %struct._GimpCanvasItemPrivate* %18, i32 0, i32 5
  %19 = load i32, i32* %suspend_filling19, align 4
  %dec = add nsw i32 %19, -1
  store i32 %dec, i32* %suspend_filling19, align 4
  br label %return

return:                                           ; preds = %do.end.18, %if.else.16, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @_gimp_canvas_item_update(%struct._GimpCanvasItem* %item, %struct._cairo_region* %region) #3 {
entry:
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %region.addr = alloca %struct._cairo_region*, align 8
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store %struct._cairo_region* %region, %struct._cairo_region** %region.addr, align 8
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to i8*
  %2 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @item_signals, i32 0, i64 0), align 4
  %3 = load %struct._cairo_region*, %struct._cairo_region** %region.addr, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %1, i32 %2, i32 0, %struct._cairo_region* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @_gimp_canvas_item_needs_update(%struct._GimpCanvasItem* %item) #3 {
entry:
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %private = alloca %struct._GimpCanvasItemPrivate*, align 8
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_item_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasItemPrivate*
  store %struct._GimpCanvasItemPrivate* %2, %struct._GimpCanvasItemPrivate** %private, align 8
  %3 = load %struct._GimpCanvasItemPrivate*, %struct._GimpCanvasItemPrivate** %private, align 8
  %change_count = getelementptr inbounds %struct._GimpCanvasItemPrivate, %struct._GimpCanvasItemPrivate* %3, i32 0, i32 6
  %4 = load i32, i32* %change_count, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %5 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %6 = bitcast %struct._GimpCanvasItem* %5 to i8*
  %7 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @item_signals, i32 0, i64 0), align 4
  %call2 = call i32 @g_signal_has_handler_pending(i8* %6, i32 %7, i32 0, i32 0)
  %tobool = icmp ne i32 %call2, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %8 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %8 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define void @_gimp_canvas_item_stroke(%struct._GimpCanvasItem* %item, %struct._cairo* %cr) #3 {
entry:
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %private = alloca %struct._GimpCanvasItemPrivate*, align 8
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_item_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasItemPrivate*
  store %struct._GimpCanvasItemPrivate* %2, %struct._GimpCanvasItemPrivate** %private, align 8
  %3 = load %struct._GimpCanvasItemPrivate*, %struct._GimpCanvasItemPrivate** %private, align 8
  %suspend_filling = getelementptr inbounds %struct._GimpCanvasItemPrivate, %struct._GimpCanvasItemPrivate* %3, i32 0, i32 5
  %4 = load i32, i32* %suspend_filling, align 4
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpCanvasItemPrivate*, %struct._GimpCanvasItemPrivate** %private, align 8
  %suspend_stroking = getelementptr inbounds %struct._GimpCanvasItemPrivate, %struct._GimpCanvasItemPrivate* %5, i32 0, i32 4
  %6 = load i32, i32* %suspend_stroking, align 4
  %cmp2 = icmp eq i32 %6, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %7 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %8 = bitcast %struct._GimpCanvasItem* %7 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %10 = bitcast %struct._GTypeClass* %9 to %struct._GimpCanvasItemClass*
  %stroke = getelementptr inbounds %struct._GimpCanvasItemClass, %struct._GimpCanvasItemClass* %10, i32 0, i32 4
  %11 = load void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)*, void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)** %stroke, align 8
  %12 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %13 = load %struct._GimpCanvasItemPrivate*, %struct._GimpCanvasItemPrivate** %private, align 8
  %shell = getelementptr inbounds %struct._GimpCanvasItemPrivate, %struct._GimpCanvasItemPrivate* %13, i32 0, i32 0
  %14 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %15 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void %11(%struct._GimpCanvasItem* %12, %struct._GimpDisplayShell* %14, %struct._cairo* %15)
  br label %if.end.4

if.else:                                          ; preds = %if.end
  %16 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_new_sub_path(%struct._cairo* %16)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  ret void
}

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

declare void @cairo_new_sub_path(%struct._cairo*) #1

; Function Attrs: nounwind uwtable
define void @_gimp_canvas_item_fill(%struct._GimpCanvasItem* %item, %struct._cairo* %cr) #3 {
entry:
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %private = alloca %struct._GimpCanvasItemPrivate*, align 8
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_item_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasItemPrivate*
  store %struct._GimpCanvasItemPrivate* %2, %struct._GimpCanvasItemPrivate** %private, align 8
  %3 = load %struct._GimpCanvasItemPrivate*, %struct._GimpCanvasItemPrivate** %private, align 8
  %suspend_stroking = getelementptr inbounds %struct._GimpCanvasItemPrivate, %struct._GimpCanvasItemPrivate* %3, i32 0, i32 4
  %4 = load i32, i32* %suspend_stroking, align 4
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpCanvasItemPrivate*, %struct._GimpCanvasItemPrivate** %private, align 8
  %suspend_filling = getelementptr inbounds %struct._GimpCanvasItemPrivate, %struct._GimpCanvasItemPrivate* %5, i32 0, i32 5
  %6 = load i32, i32* %suspend_filling, align 4
  %cmp2 = icmp eq i32 %6, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %7 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %8 = bitcast %struct._GimpCanvasItem* %7 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %10 = bitcast %struct._GTypeClass* %9 to %struct._GimpCanvasItemClass*
  %fill = getelementptr inbounds %struct._GimpCanvasItemClass, %struct._GimpCanvasItemClass* %10, i32 0, i32 5
  %11 = load void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)*, void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)** %fill, align 8
  %12 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %13 = load %struct._GimpCanvasItemPrivate*, %struct._GimpCanvasItemPrivate** %private, align 8
  %shell = getelementptr inbounds %struct._GimpCanvasItemPrivate, %struct._GimpCanvasItemPrivate* %13, i32 0, i32 0
  %14 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %15 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void %11(%struct._GimpCanvasItem* %12, %struct._GimpDisplayShell* %14, %struct._cairo* %15)
  br label %if.end.4

if.else:                                          ; preds = %if.end
  %16 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_new_sub_path(%struct._cairo* %16)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  ret void
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_item_class_init(%struct._GimpCanvasItemClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpCanvasItemClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpCanvasItemClass* %klass, %struct._GimpCanvasItemClass** %klass.addr, align 8
  %0 = load %struct._GimpCanvasItemClass*, %struct._GimpCanvasItemClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpCanvasItemClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_canvas_item_constructed, void (%struct._GObject*)** %constructed, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_canvas_item_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_canvas_item_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispatch_properties_changed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 7
  store void (%struct._GObject*, i32, %struct._GParamSpec**)* @gimp_canvas_item_dispatch_properties_changed, void (%struct._GObject*, i32, %struct._GParamSpec**)** %dispatch_properties_changed, align 8
  %7 = load %struct._GimpCanvasItemClass*, %struct._GimpCanvasItemClass** %klass.addr, align 8
  %update = getelementptr inbounds %struct._GimpCanvasItemClass, %struct._GimpCanvasItemClass* %7, i32 0, i32 1
  store void (%struct._GimpCanvasItem*, %struct._cairo_region*)* null, void (%struct._GimpCanvasItem*, %struct._cairo_region*)** %update, align 8
  %8 = load %struct._GimpCanvasItemClass*, %struct._GimpCanvasItemClass** %klass.addr, align 8
  %draw = getelementptr inbounds %struct._GimpCanvasItemClass, %struct._GimpCanvasItemClass* %8, i32 0, i32 2
  store void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)* @gimp_canvas_item_real_draw, void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)** %draw, align 8
  %9 = load %struct._GimpCanvasItemClass*, %struct._GimpCanvasItemClass** %klass.addr, align 8
  %get_extents = getelementptr inbounds %struct._GimpCanvasItemClass, %struct._GimpCanvasItemClass* %9, i32 0, i32 3
  store %struct._cairo_region* (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*)* @gimp_canvas_item_real_get_extents, %struct._cairo_region* (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*)** %get_extents, align 8
  %10 = load %struct._GimpCanvasItemClass*, %struct._GimpCanvasItemClass** %klass.addr, align 8
  %stroke = getelementptr inbounds %struct._GimpCanvasItemClass, %struct._GimpCanvasItemClass* %10, i32 0, i32 4
  store void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)* @gimp_canvas_item_real_stroke, void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)** %stroke, align 8
  %11 = load %struct._GimpCanvasItemClass*, %struct._GimpCanvasItemClass** %klass.addr, align 8
  %fill = getelementptr inbounds %struct._GimpCanvasItemClass, %struct._GimpCanvasItemClass* %11, i32 0, i32 5
  store void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)* @gimp_canvas_item_real_fill, void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)** %fill, align 8
  %12 = load %struct._GimpCanvasItemClass*, %struct._GimpCanvasItemClass** %klass.addr, align 8
  %hit = getelementptr inbounds %struct._GimpCanvasItemClass, %struct._GimpCanvasItemClass* %12, i32 0, i32 6
  store i32 (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, double, double)* @gimp_canvas_item_real_hit, i32 (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, double, double)** %hit, align 8
  %13 = load %struct._GimpCanvasItemClass*, %struct._GimpCanvasItemClass** %klass.addr, align 8
  %14 = bitcast %struct._GimpCanvasItemClass* %13 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %14, i32 0, i32 0
  %15 = load i64, i64* %g_type, align 8
  %call1 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i64 %15, i32 1, i32 160, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__POINTER, i64 4, i32 1, i64 68)
  store i32 %call1, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @item_signals, i32 0, i64 0), align 4
  %16 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call2 = call i64 @gimp_display_shell_get_type() #7
  %call3 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8* null, i8* null, i64 %call2, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %16, i32 1, %struct._GParamSpec* %call3)
  %17 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call4 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* null, i32 1, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %17, i32 2, %struct._GParamSpec* %call4)
  %18 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null, i32 0, i32 2, i32 1, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %18, i32 3, %struct._GParamSpec* %call5)
  %19 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null, i32 0, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %19, i32 4, %struct._GParamSpec* %call6)
  %20 = load %struct._GimpCanvasItemClass*, %struct._GimpCanvasItemClass** %klass.addr, align 8
  %21 = bitcast %struct._GimpCanvasItemClass* %20 to i8*
  call void @g_type_class_add_private(i8* %21, i64 40)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_item_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %private = alloca %struct._GimpCanvasItemPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_item_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasItemPrivate*
  store %struct._GimpCanvasItemPrivate* %2, %struct._GimpCanvasItemPrivate** %private, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct._GimpCanvasItemPrivate*, %struct._GimpCanvasItemPrivate** %private, align 8
  %shell = getelementptr inbounds %struct._GimpCanvasItemPrivate, %struct._GimpCanvasItemPrivate* %3, i32 0, i32 0
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %5 = bitcast %struct._GimpDisplayShell* %4 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %5, %struct._GTypeInstance** %__inst, align 8
  %call2 = call i64 @gimp_display_shell_get_type() #7
  store i64 %call2, i64* %__t, align 8
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %6, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.8

if.else:                                          ; preds = %do.body
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %7, i32 0, i32 0
  %8 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool3 = icmp ne %struct._GTypeClass* %8, null
  br i1 %tobool3, label %land.lhs.true, label %if.else.6

land.lhs.true:                                    ; preds = %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %9, i32 0, i32 0
  %10 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %10, i32 0, i32 0
  %11 = load i64, i64* %g_type, align 8
  %12 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %11, %12
  br i1 %cmp, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.6:                                        ; preds = %land.lhs.true, %if.else
  %13 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %14 = load i64, i64* %__t, align 8
  %call7 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %13, i64 %14) #8
  store i32 %call7, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.6, %if.then.5
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  %15 = load i32, i32* %__r, align 4
  store i32 %15, i32* %tmp
  %16 = load i32, i32* %tmp
  %tobool9 = icmp ne i32 %16, 0
  br i1 %tobool9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.end.8
  br label %if.end.12

if.else.11:                                       ; preds = %if.end.8
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 190, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_canvas_item_constructed, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i32 0, i32 0)) #9
  unreachable

if.end.12:                                        ; preds = %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.12
  %17 = load %struct._GimpCanvasItemPrivate*, %struct._GimpCanvasItemPrivate** %private, align 8
  %change_count = getelementptr inbounds %struct._GimpCanvasItemPrivate, %struct._GimpCanvasItemPrivate* %17, i32 0, i32 6
  store i32 0, i32* %change_count, align 4
  %18 = load i8*, i8** @gimp_canvas_item_parent_class, align 8
  %19 = bitcast i8* %18 to %struct._GTypeClass*
  %call13 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %19, i64 80)
  %20 = bitcast %struct._GTypeClass* %call13 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %20, i32 0, i32 9
  %21 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool14 = icmp ne void (%struct._GObject*)* %21, null
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %do.end
  %22 = load i8*, i8** @gimp_canvas_item_parent_class, align 8
  %23 = bitcast i8* %22 to %struct._GTypeClass*
  %call16 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %23, i64 80)
  %24 = bitcast %struct._GTypeClass* %call16 to %struct._GObjectClass*
  %constructed17 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %24, i32 0, i32 9
  %25 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed17, align 8
  %26 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %25(%struct._GObject* %26)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_item_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpCanvasItemPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_item_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasItemPrivate*
  store %struct._GimpCanvasItemPrivate* %2, %struct._GimpCanvasItemPrivate** %private, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.5
    i32 4, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_get_object(%struct._GValue* %4)
  %5 = bitcast i8* %call2 to %struct._GimpDisplayShell*
  %6 = load %struct._GimpCanvasItemPrivate*, %struct._GimpCanvasItemPrivate** %private, align 8
  %shell = getelementptr inbounds %struct._GimpCanvasItemPrivate, %struct._GimpCanvasItemPrivate* %6, i32 0, i32 0
  store %struct._GimpDisplayShell* %5, %struct._GimpDisplayShell** %shell, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i32 @g_value_get_boolean(%struct._GValue* %7)
  %8 = load %struct._GimpCanvasItemPrivate*, %struct._GimpCanvasItemPrivate** %private, align 8
  %visible = getelementptr inbounds %struct._GimpCanvasItemPrivate, %struct._GimpCanvasItemPrivate* %8, i32 0, i32 1
  store i32 %call4, i32* %visible, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call i32 @g_value_get_int(%struct._GValue* %9)
  %10 = load %struct._GimpCanvasItemPrivate*, %struct._GimpCanvasItemPrivate** %private, align 8
  %line_cap = getelementptr inbounds %struct._GimpCanvasItemPrivate, %struct._GimpCanvasItemPrivate* %10, i32 0, i32 2
  store i32 %call6, i32* %line_cap, align 4
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %11 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call8 = call i32 @g_value_get_boolean(%struct._GValue* %11)
  %12 = load %struct._GimpCanvasItemPrivate*, %struct._GimpCanvasItemPrivate** %private, align 8
  %highlight = getelementptr inbounds %struct._GimpCanvasItemPrivate, %struct._GimpCanvasItemPrivate* %12, i32 0, i32 3
  store i32 %call8, i32* %highlight, align 4
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
  %call9 = call i8* @g_type_name(i64 %22)
  %23 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %24 = bitcast %struct._GObject* %23 to %struct._GTypeInstance*
  %g_class10 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %24, i32 0, i32 0
  %25 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class10, align 8
  %g_type11 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %25, i32 0, i32 0
  %26 = load i64, i64* %g_type11, align 8
  %call12 = call i8* @g_type_name(i64 %26)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 222, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i32 %16, i8* %18, i8* %call9, i8* %call12)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.7, %sw.bb.5, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_item_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpCanvasItemPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_item_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasItemPrivate*
  store %struct._GimpCanvasItemPrivate* %2, %struct._GimpCanvasItemPrivate** %private, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpCanvasItemPrivate*, %struct._GimpCanvasItemPrivate** %private, align 8
  %shell = getelementptr inbounds %struct._GimpCanvasItemPrivate, %struct._GimpCanvasItemPrivate* %5, i32 0, i32 0
  %6 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %7 = bitcast %struct._GimpDisplayShell* %6 to i8*
  call void @g_value_set_object(%struct._GValue* %4, i8* %7)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %9 = load %struct._GimpCanvasItemPrivate*, %struct._GimpCanvasItemPrivate** %private, align 8
  %visible = getelementptr inbounds %struct._GimpCanvasItemPrivate, %struct._GimpCanvasItemPrivate* %9, i32 0, i32 1
  %10 = load i32, i32* %visible, align 4
  call void @g_value_set_boolean(%struct._GValue* %8, i32 %10)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %11 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %12 = load %struct._GimpCanvasItemPrivate*, %struct._GimpCanvasItemPrivate** %private, align 8
  %line_cap = getelementptr inbounds %struct._GimpCanvasItemPrivate, %struct._GimpCanvasItemPrivate* %12, i32 0, i32 2
  %13 = load i32, i32* %line_cap, align 4
  call void @g_value_set_int(%struct._GValue* %11, i32 %13)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %14 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %15 = load %struct._GimpCanvasItemPrivate*, %struct._GimpCanvasItemPrivate** %private, align 8
  %highlight = getelementptr inbounds %struct._GimpCanvasItemPrivate, %struct._GimpCanvasItemPrivate* %15, i32 0, i32 3
  %16 = load i32, i32* %highlight, align 4
  call void @g_value_set_boolean(%struct._GValue* %14, i32 %16)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %17 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %17, %struct._GObject** %_glib__object, align 8
  %18 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %18, %struct._GParamSpec** %_glib__pspec, align 8
  %19 = load i32, i32* %property_id.addr, align 4
  store i32 %19, i32* %_glib__property_id, align 4
  %20 = load i32, i32* %_glib__property_id, align 4
  %21 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %21, i32 0, i32 1
  %22 = load i8*, i8** %name, align 8
  %23 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %24 = bitcast %struct._GParamSpec* %23 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %24, i32 0, i32 0
  %25 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %25, i32 0, i32 0
  %26 = load i64, i64* %g_type, align 8
  %call5 = call i8* @g_type_name(i64 %26)
  %27 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %28 = bitcast %struct._GObject* %27 to %struct._GTypeInstance*
  %g_class6 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %28, i32 0, i32 0
  %29 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class6, align 8
  %g_type7 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %29, i32 0, i32 0
  %30 = load i64, i64* %g_type7, align 8
  %call8 = call i8* @g_type_name(i64 %30)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 251, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i32 %20, i8* %22, i8* %call5, i8* %call8)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_item_dispatch_properties_changed(%struct._GObject* %object, i32 %n_pspecs, %struct._GParamSpec** %pspecs) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %n_pspecs.addr = alloca i32, align 4
  %pspecs.addr = alloca %struct._GParamSpec**, align 8
  %item = alloca %struct._GimpCanvasItem*, align 8
  %region = alloca %struct._cairo_region*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %n_pspecs, i32* %n_pspecs.addr, align 4
  store %struct._GParamSpec** %pspecs, %struct._GParamSpec*** %pspecs.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_item_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCanvasItem*
  store %struct._GimpCanvasItem* %2, %struct._GimpCanvasItem** %item, align 8
  %3 = load i8*, i8** @gimp_canvas_item_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %dispatch_properties_changed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 7
  %6 = load void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, i32, %struct._GParamSpec**)** %dispatch_properties_changed, align 8
  %7 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %8 = load i32, i32* %n_pspecs.addr, align 4
  %9 = load %struct._GParamSpec**, %struct._GParamSpec*** %pspecs.addr, align 8
  call void %6(%struct._GObject* %7, i32 %8, %struct._GParamSpec** %9)
  %10 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  %call3 = call i32 @_gimp_canvas_item_needs_update(%struct._GimpCanvasItem* %10)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %11 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  %call4 = call %struct._cairo_region* @gimp_canvas_item_get_extents(%struct._GimpCanvasItem* %11)
  store %struct._cairo_region* %call4, %struct._cairo_region** %region, align 8
  %12 = load %struct._cairo_region*, %struct._cairo_region** %region, align 8
  %tobool5 = icmp ne %struct._cairo_region* %12, null
  br i1 %tobool5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %13 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %14 = bitcast %struct._GObject* %13 to i8*
  %15 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @item_signals, i32 0, i64 0), align 4
  %16 = load %struct._cairo_region*, %struct._cairo_region** %region, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %14, i32 %15, i32 0, %struct._cairo_region* %16)
  %17 = load %struct._cairo_region*, %struct._cairo_region** %region, align 8
  call void @cairo_region_destroy(%struct._cairo_region* %17)
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_item_real_draw(%struct._GimpCanvasItem* %item, %struct._GimpDisplayShell* %shell, %struct._cairo* %cr) #3 {
entry:
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  call void @g_warn_message(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 285, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_canvas_item_real_draw, i32 0, i32 0), i8* null)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._cairo_region* @gimp_canvas_item_real_get_extents(%struct._GimpCanvasItem* %item, %struct._GimpDisplayShell* %shell) #3 {
entry:
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  ret %struct._cairo_region* null
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_item_real_stroke(%struct._GimpCanvasItem* %item, %struct._GimpDisplayShell* %shell, %struct._cairo* %cr) #3 {
entry:
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %private = alloca %struct._GimpCanvasItemPrivate*, align 8
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_item_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasItemPrivate*
  store %struct._GimpCanvasItemPrivate* %2, %struct._GimpCanvasItemPrivate** %private, align 8
  %3 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %4 = load %struct._GimpCanvasItemPrivate*, %struct._GimpCanvasItemPrivate** %private, align 8
  %line_cap = getelementptr inbounds %struct._GimpCanvasItemPrivate, %struct._GimpCanvasItemPrivate* %4, i32 0, i32 2
  %5 = load i32, i32* %line_cap, align 4
  call void @cairo_set_line_cap(%struct._cairo* %3, i32 %5)
  %6 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %7 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @gimp_display_shell_set_tool_bg_style(%struct._GimpDisplayShell* %6, %struct._cairo* %7)
  %8 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_stroke_preserve(%struct._cairo* %8)
  %9 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %10 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %11 = load %struct._GimpCanvasItemPrivate*, %struct._GimpCanvasItemPrivate** %private, align 8
  %highlight = getelementptr inbounds %struct._GimpCanvasItemPrivate, %struct._GimpCanvasItemPrivate* %11, i32 0, i32 3
  %12 = load i32, i32* %highlight, align 4
  call void @gimp_display_shell_set_tool_fg_style(%struct._GimpDisplayShell* %9, %struct._cairo* %10, i32 %12)
  %13 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_stroke(%struct._cairo* %13)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_item_real_fill(%struct._GimpCanvasItem* %item, %struct._GimpDisplayShell* %shell, %struct._cairo* %cr) #3 {
entry:
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %private = alloca %struct._GimpCanvasItemPrivate*, align 8
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_item_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasItemPrivate*
  store %struct._GimpCanvasItemPrivate* %2, %struct._GimpCanvasItemPrivate** %private, align 8
  %3 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %4 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @gimp_display_shell_set_tool_bg_style(%struct._GimpDisplayShell* %3, %struct._cairo* %4)
  %5 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_set_line_width(%struct._cairo* %5, double 2.000000e+00)
  %6 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_stroke_preserve(%struct._cairo* %6)
  %7 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %8 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %9 = load %struct._GimpCanvasItemPrivate*, %struct._GimpCanvasItemPrivate** %private, align 8
  %highlight = getelementptr inbounds %struct._GimpCanvasItemPrivate, %struct._GimpCanvasItemPrivate* %9, i32 0, i32 3
  %10 = load i32, i32* %highlight, align 4
  call void @gimp_display_shell_set_tool_fg_style(%struct._GimpDisplayShell* %7, %struct._cairo* %8, i32 %10)
  %11 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_fill(%struct._cairo* %11)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_canvas_item_real_hit(%struct._GimpCanvasItem* %item, %struct._GimpDisplayShell* %shell, double %x, double %y) #3 {
entry:
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  ret i32 0
}

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @g_cclosure_marshal_VOID__POINTER(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_display_shell_get_type() #2

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_int(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare void @g_type_class_add_private(i8*, i64) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #5

declare i8* @g_value_get_object(%struct._GValue*) #1

declare i32 @g_value_get_boolean(%struct._GValue*) #1

declare i32 @g_value_get_int(%struct._GValue*) #1

declare i8* @g_type_name(i64) #1

declare void @g_value_set_object(%struct._GValue*, i8*) #1

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

declare void @g_value_set_int(%struct._GValue*, i32) #1

declare void @g_warn_message(i8*, i8*, i32, i8*, i8*) #1

declare void @cairo_set_line_cap(%struct._cairo*, i32) #1

declare void @gimp_display_shell_set_tool_bg_style(%struct._GimpDisplayShell*, %struct._cairo*) #1

declare void @cairo_stroke_preserve(%struct._cairo*) #1

declare void @gimp_display_shell_set_tool_fg_style(%struct._GimpDisplayShell*, %struct._cairo*, i32) #1

declare void @cairo_stroke(%struct._cairo*) #1

declare void @cairo_set_line_width(%struct._cairo*, double) #1

declare void @cairo_fill(%struct._cairo*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
