; ModuleID = './app/display/gimpcanvastextcursor.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpCanvasTextCursorClass = type { %struct._GimpCanvasItemClass }
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
%struct._GimpCanvasTextCursor = type { %struct._GimpCanvasItem }
%struct._PangoRectangle = type { i32, i32, i32, i32 }
%struct._GimpCanvasTextCursorPrivate = type { i32, i32, i32, i32, i32 }
%struct._cairo_rectangle_int = type { i32, i32, i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_canvas_text_cursor_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"GimpCanvasTextCursor\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Display\00", align 1
@__func__.gimp_canvas_text_cursor_new = private unnamed_addr constant [28 x i8] c"gimp_canvas_text_cursor_new\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"GIMP_IS_DISPLAY_SHELL (shell)\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"cursor != NULL\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"overwrite\00", align 1
@gimp_canvas_text_cursor_parent_class = internal global i8* null, align 8
@GimpCanvasTextCursor_private_offset = internal global i32 0, align 4
@.str.10 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"gimpcanvastextcursor.c\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"property\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_canvas_text_cursor_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_canvas_text_cursor_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_canvas_text_cursor_get_type.g_define_type_id__volatile to i8*))
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
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 208, void (i8*, i8*)* bitcast (void (i8*)* @gimp_canvas_text_cursor_class_intern_init to void (i8*, i8*)*), i32 32, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpCanvasTextCursor*)* @gimp_canvas_text_cursor_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_canvas_text_cursor_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_canvas_text_cursor_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_canvas_item_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_text_cursor_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_canvas_text_cursor_parent_class, align 8
  %1 = load i32, i32* @GimpCanvasTextCursor_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpCanvasTextCursor_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpCanvasTextCursorClass*
  call void @gimp_canvas_text_cursor_class_init(%struct._GimpCanvasTextCursorClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_text_cursor_init(%struct._GimpCanvasTextCursor* %text_cursor) #3 {
entry:
  %text_cursor.addr = alloca %struct._GimpCanvasTextCursor*, align 8
  store %struct._GimpCanvasTextCursor* %text_cursor, %struct._GimpCanvasTextCursor** %text_cursor.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpCanvasItem* @gimp_canvas_text_cursor_new(%struct._GimpDisplayShell* %shell, %struct._PangoRectangle* %cursor, i32 %overwrite) #3 {
entry:
  %retval = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %cursor.addr = alloca %struct._PangoRectangle*, align 8
  %overwrite.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._PangoRectangle* %cursor, %struct._PangoRectangle** %cursor.addr, align 8
  store i32 %overwrite, i32* %overwrite.addr, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_canvas_text_cursor_new, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._PangoRectangle*, %struct._PangoRectangle** %cursor.addr, align 8
  %cmp12 = icmp ne %struct._PangoRectangle* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_canvas_text_cursor_new, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %call17 = call i64 @gimp_canvas_text_cursor_get_type() #6
  %14 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %15 = load %struct._PangoRectangle*, %struct._PangoRectangle** %cursor.addr, align 8
  %x = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %15, i32 0, i32 0
  %16 = load i32, i32* %x, align 4
  %17 = load %struct._PangoRectangle*, %struct._PangoRectangle** %cursor.addr, align 8
  %y = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %17, i32 0, i32 1
  %18 = load i32, i32* %y, align 4
  %19 = load %struct._PangoRectangle*, %struct._PangoRectangle** %cursor.addr, align 8
  %width = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %19, i32 0, i32 2
  %20 = load i32, i32* %width, align 4
  %21 = load %struct._PangoRectangle*, %struct._PangoRectangle** %cursor.addr, align 8
  %height = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %21, i32 0, i32 3
  %22 = load i32, i32* %height, align 4
  %23 = load i32, i32* %overwrite.addr, align 4
  %call18 = call i8* (i64, i8*, ...) @g_object_new(i64 %call17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), %struct._GimpDisplayShell* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i32 %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i32 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32 %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i32 %23, i8* null)
  %24 = bitcast i8* %call18 to %struct._GimpCanvasItem*
  store %struct._GimpCanvasItem* %24, %struct._GimpCanvasItem** %retval
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  %25 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %retval
  ret %struct._GimpCanvasItem* %25
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
define internal void @gimp_canvas_text_cursor_class_init(%struct._GimpCanvasTextCursorClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpCanvasTextCursorClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %item_class = alloca %struct._GimpCanvasItemClass*, align 8
  store %struct._GimpCanvasTextCursorClass* %klass, %struct._GimpCanvasTextCursorClass** %klass.addr, align 8
  %0 = load %struct._GimpCanvasTextCursorClass*, %struct._GimpCanvasTextCursorClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpCanvasTextCursorClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpCanvasTextCursorClass*, %struct._GimpCanvasTextCursorClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpCanvasTextCursorClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_canvas_item_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpCanvasItemClass*
  store %struct._GimpCanvasItemClass* %5, %struct._GimpCanvasItemClass** %item_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_canvas_text_cursor_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_canvas_text_cursor_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %8 = load %struct._GimpCanvasItemClass*, %struct._GimpCanvasItemClass** %item_class, align 8
  %draw = getelementptr inbounds %struct._GimpCanvasItemClass, %struct._GimpCanvasItemClass* %8, i32 0, i32 2
  store void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)* @gimp_canvas_text_cursor_draw, void (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*, %struct._cairo*)** %draw, align 8
  %9 = load %struct._GimpCanvasItemClass*, %struct._GimpCanvasItemClass** %item_class, align 8
  %get_extents = getelementptr inbounds %struct._GimpCanvasItemClass, %struct._GimpCanvasItemClass* %9, i32 0, i32 3
  store %struct._cairo_region* (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*)* @gimp_canvas_text_cursor_get_extents, %struct._cairo_region* (%struct._GimpCanvasItem*, %struct._GimpDisplayShell*)** %get_extents, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null, i32 -262144, i32 262144, i32 0, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %10, i32 1, %struct._GParamSpec* %call3)
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call4 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null, i32 -262144, i32 262144, i32 0, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %11, i32 2, %struct._GParamSpec* %call4)
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null, i32 -262144, i32 262144, i32 0, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %12, i32 3, %struct._GParamSpec* %call5)
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* null, i32 -262144, i32 262144, i32 0, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %13, i32 4, %struct._GParamSpec* %call6)
  %14 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call7 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* null, i32 0, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %14, i32 5, %struct._GParamSpec* %call7)
  %15 = load %struct._GimpCanvasTextCursorClass*, %struct._GimpCanvasTextCursorClass** %klass.addr, align 8
  %16 = bitcast %struct._GimpCanvasTextCursorClass* %15 to i8*
  call void @g_type_class_add_private(i8* %16, i64 20)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_text_cursor_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpCanvasTextCursorPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_text_cursor_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasTextCursorPrivate*
  store %struct._GimpCanvasTextCursorPrivate* %2, %struct._GimpCanvasTextCursorPrivate** %private, align 8
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
  %call2 = call i32 @g_value_get_int(%struct._GValue* %4)
  %5 = load %struct._GimpCanvasTextCursorPrivate*, %struct._GimpCanvasTextCursorPrivate** %private, align 8
  %x = getelementptr inbounds %struct._GimpCanvasTextCursorPrivate, %struct._GimpCanvasTextCursorPrivate* %5, i32 0, i32 0
  store i32 %call2, i32* %x, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %6 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i32 @g_value_get_int(%struct._GValue* %6)
  %7 = load %struct._GimpCanvasTextCursorPrivate*, %struct._GimpCanvasTextCursorPrivate** %private, align 8
  %y = getelementptr inbounds %struct._GimpCanvasTextCursorPrivate, %struct._GimpCanvasTextCursorPrivate* %7, i32 0, i32 1
  store i32 %call4, i32* %y, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call i32 @g_value_get_int(%struct._GValue* %8)
  %9 = load %struct._GimpCanvasTextCursorPrivate*, %struct._GimpCanvasTextCursorPrivate** %private, align 8
  %width = getelementptr inbounds %struct._GimpCanvasTextCursorPrivate, %struct._GimpCanvasTextCursorPrivate* %9, i32 0, i32 2
  store i32 %call6, i32* %width, align 4
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call8 = call i32 @g_value_get_int(%struct._GValue* %10)
  %11 = load %struct._GimpCanvasTextCursorPrivate*, %struct._GimpCanvasTextCursorPrivate** %private, align 8
  %height = getelementptr inbounds %struct._GimpCanvasTextCursorPrivate, %struct._GimpCanvasTextCursorPrivate* %11, i32 0, i32 3
  store i32 %call8, i32* %height, align 4
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %12 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call10 = call i32 @g_value_get_boolean(%struct._GValue* %12)
  %13 = load %struct._GimpCanvasTextCursorPrivate*, %struct._GimpCanvasTextCursorPrivate** %private, align 8
  %overwrite = getelementptr inbounds %struct._GimpCanvasTextCursorPrivate, %struct._GimpCanvasTextCursorPrivate* %13, i32 0, i32 4
  store i32 %call10, i32* %overwrite, align 4
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
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0), i32 163, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i32 %17, i8* %19, i8* %call11, i8* %call14)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.9, %sw.bb.7, %sw.bb.5, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_text_cursor_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpCanvasTextCursorPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_text_cursor_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasTextCursorPrivate*
  store %struct._GimpCanvasTextCursorPrivate* %2, %struct._GimpCanvasTextCursorPrivate** %private, align 8
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
  %5 = load %struct._GimpCanvasTextCursorPrivate*, %struct._GimpCanvasTextCursorPrivate** %private, align 8
  %x = getelementptr inbounds %struct._GimpCanvasTextCursorPrivate, %struct._GimpCanvasTextCursorPrivate* %5, i32 0, i32 0
  %6 = load i32, i32* %x, align 4
  call void @g_value_set_int(%struct._GValue* %4, i32 %6)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GimpCanvasTextCursorPrivate*, %struct._GimpCanvasTextCursorPrivate** %private, align 8
  %y = getelementptr inbounds %struct._GimpCanvasTextCursorPrivate, %struct._GimpCanvasTextCursorPrivate* %8, i32 0, i32 1
  %9 = load i32, i32* %y, align 4
  call void @g_value_set_int(%struct._GValue* %7, i32 %9)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %11 = load %struct._GimpCanvasTextCursorPrivate*, %struct._GimpCanvasTextCursorPrivate** %private, align 8
  %width = getelementptr inbounds %struct._GimpCanvasTextCursorPrivate, %struct._GimpCanvasTextCursorPrivate* %11, i32 0, i32 2
  %12 = load i32, i32* %width, align 4
  call void @g_value_set_int(%struct._GValue* %10, i32 %12)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %13 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %14 = load %struct._GimpCanvasTextCursorPrivate*, %struct._GimpCanvasTextCursorPrivate** %private, align 8
  %height = getelementptr inbounds %struct._GimpCanvasTextCursorPrivate, %struct._GimpCanvasTextCursorPrivate* %14, i32 0, i32 3
  %15 = load i32, i32* %height, align 4
  call void @g_value_set_int(%struct._GValue* %13, i32 %15)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %17 = load %struct._GimpCanvasTextCursorPrivate*, %struct._GimpCanvasTextCursorPrivate** %private, align 8
  %overwrite = getelementptr inbounds %struct._GimpCanvasTextCursorPrivate, %struct._GimpCanvasTextCursorPrivate* %17, i32 0, i32 4
  %18 = load i32, i32* %overwrite, align 4
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
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0), i32 195, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i32 %22, i8* %24, i8* %call6, i8* %call9)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_text_cursor_draw(%struct._GimpCanvasItem* %item, %struct._GimpDisplayShell* %shell, %struct._cairo* %cr) #3 {
entry:
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %private = alloca %struct._GimpCanvasTextCursorPrivate*, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  %w = alloca double, align 8
  %h = alloca double, align 8
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_text_cursor_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasTextCursorPrivate*
  store %struct._GimpCanvasTextCursorPrivate* %2, %struct._GimpCanvasTextCursorPrivate** %private, align 8
  %3 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_canvas_text_cursor_transform(%struct._GimpCanvasItem* %3, %struct._GimpDisplayShell* %4, double* %x, double* %y, double* %w, double* %h)
  %5 = load %struct._GimpCanvasTextCursorPrivate*, %struct._GimpCanvasTextCursorPrivate** %private, align 8
  %overwrite = getelementptr inbounds %struct._GimpCanvasTextCursorPrivate, %struct._GimpCanvasTextCursorPrivate* %5, i32 0, i32 4
  %6 = load i32, i32* %overwrite, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %8 = load double, double* %x, align 8
  %9 = load double, double* %y, align 8
  %10 = load double, double* %w, align 8
  %11 = load double, double* %h, align 8
  call void @cairo_rectangle(%struct._cairo* %7, double %8, double %9, double %10, double %11)
  br label %if.end

if.else:                                          ; preds = %entry
  %12 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %13 = load double, double* %x, align 8
  %14 = load double, double* %y, align 8
  call void @cairo_move_to(%struct._cairo* %12, double %13, double %14)
  %15 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %16 = load double, double* %x, align 8
  %17 = load double, double* %y, align 8
  %18 = load double, double* %h, align 8
  %add = fadd double %17, %18
  call void @cairo_line_to(%struct._cairo* %15, double %16, double %add)
  %19 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %20 = load double, double* %x, align 8
  %sub = fsub double %20, 3.000000e+00
  %21 = load double, double* %y, align 8
  call void @cairo_move_to(%struct._cairo* %19, double %sub, double %21)
  %22 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %23 = load double, double* %x, align 8
  %add2 = fadd double %23, 3.000000e+00
  %24 = load double, double* %y, align 8
  call void @cairo_line_to(%struct._cairo* %22, double %add2, double %24)
  %25 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %26 = load double, double* %x, align 8
  %sub3 = fsub double %26, 3.000000e+00
  %27 = load double, double* %y, align 8
  %28 = load double, double* %h, align 8
  %add4 = fadd double %27, %28
  call void @cairo_move_to(%struct._cairo* %25, double %sub3, double %add4)
  %29 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %30 = load double, double* %x, align 8
  %add5 = fadd double %30, 3.000000e+00
  %31 = load double, double* %y, align 8
  %32 = load double, double* %h, align 8
  %add6 = fadd double %31, %32
  call void @cairo_line_to(%struct._cairo* %29, double %add5, double %add6)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %33 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %34 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @_gimp_canvas_item_stroke(%struct._GimpCanvasItem* %33, %struct._cairo* %34)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._cairo_region* @gimp_canvas_text_cursor_get_extents(%struct._GimpCanvasItem* %item, %struct._GimpDisplayShell* %shell) #3 {
entry:
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %private = alloca %struct._GimpCanvasTextCursorPrivate*, align 8
  %rectangle = alloca %struct._cairo_rectangle_int, align 4
  %x = alloca double, align 8
  %y = alloca double, align 8
  %w = alloca double, align 8
  %h = alloca double, align 8
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_text_cursor_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasTextCursorPrivate*
  store %struct._GimpCanvasTextCursorPrivate* %2, %struct._GimpCanvasTextCursorPrivate** %private, align 8
  %3 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_canvas_text_cursor_transform(%struct._GimpCanvasItem* %3, %struct._GimpDisplayShell* %4, double* %x, double* %y, double* %w, double* %h)
  %5 = load %struct._GimpCanvasTextCursorPrivate*, %struct._GimpCanvasTextCursorPrivate** %private, align 8
  %overwrite = getelementptr inbounds %struct._GimpCanvasTextCursorPrivate, %struct._GimpCanvasTextCursorPrivate* %5, i32 0, i32 4
  %6 = load i32, i32* %overwrite, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load double, double* %x, align 8
  %sub = fsub double %7, 1.500000e+00
  %call2 = call double @floor(double %sub) #6
  %conv = fptosi double %call2 to i32
  %x3 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 0
  store i32 %conv, i32* %x3, align 4
  %8 = load double, double* %y, align 8
  %sub4 = fsub double %8, 1.500000e+00
  %call5 = call double @floor(double %sub4) #6
  %conv6 = fptosi double %call5 to i32
  %y7 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 1
  store i32 %conv6, i32* %y7, align 4
  %9 = load double, double* %w, align 8
  %add = fadd double %9, 3.000000e+00
  %call8 = call double @ceil(double %add) #6
  %conv9 = fptosi double %call8 to i32
  %width = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 2
  store i32 %conv9, i32* %width, align 4
  %10 = load double, double* %h, align 8
  %add10 = fadd double %10, 3.000000e+00
  %call11 = call double @ceil(double %add10) #6
  %conv12 = fptosi double %call11 to i32
  %height = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 3
  store i32 %conv12, i32* %height, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %11 = load double, double* %x, align 8
  %sub13 = fsub double %11, 4.500000e+00
  %call14 = call double @floor(double %sub13) #6
  %conv15 = fptosi double %call14 to i32
  %x16 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 0
  store i32 %conv15, i32* %x16, align 4
  %12 = load double, double* %y, align 8
  %sub17 = fsub double %12, 1.500000e+00
  %call18 = call double @floor(double %sub17) #6
  %conv19 = fptosi double %call18 to i32
  %y20 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 1
  store i32 %conv19, i32* %y20, align 4
  %call21 = call double @ceil(double 9.000000e+00) #6
  %conv22 = fptosi double %call21 to i32
  %width23 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 2
  store i32 %conv22, i32* %width23, align 4
  %13 = load double, double* %h, align 8
  %add24 = fadd double %13, 3.000000e+00
  %call25 = call double @ceil(double %add24) #6
  %conv26 = fptosi double %call25 to i32
  %height27 = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rectangle, i32 0, i32 3
  store i32 %conv26, i32* %height27, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call28 = call %struct._cairo_region* @cairo_region_create_rectangle(%struct._cairo_rectangle_int* %rectangle)
  ret %struct._cairo_region* %call28
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_int(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

declare void @g_type_class_add_private(i8*, i64) #1

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

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

declare void @g_value_set_int(%struct._GValue*, i32) #1

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_canvas_text_cursor_transform(%struct._GimpCanvasItem* %item, %struct._GimpDisplayShell* %shell, double* %x, double* %y, double* %w, double* %h) #3 {
entry:
  %item.addr = alloca %struct._GimpCanvasItem*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %x.addr = alloca double*, align 8
  %y.addr = alloca double*, align 8
  %w.addr = alloca double*, align 8
  %h.addr = alloca double*, align 8
  %private = alloca %struct._GimpCanvasTextCursorPrivate*, align 8
  store %struct._GimpCanvasItem* %item, %struct._GimpCanvasItem** %item.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store double* %x, double** %x.addr, align 8
  store double* %y, double** %y.addr, align 8
  store double* %w, double** %w.addr, align 8
  store double* %h, double** %h.addr, align 8
  %0 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item.addr, align 8
  %1 = bitcast %struct._GimpCanvasItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_canvas_text_cursor_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCanvasTextCursorPrivate*
  store %struct._GimpCanvasTextCursorPrivate* %2, %struct._GimpCanvasTextCursorPrivate** %private, align 8
  %3 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %4 = load %struct._GimpCanvasTextCursorPrivate*, %struct._GimpCanvasTextCursorPrivate** %private, align 8
  %x2 = getelementptr inbounds %struct._GimpCanvasTextCursorPrivate, %struct._GimpCanvasTextCursorPrivate* %4, i32 0, i32 0
  %5 = load i32, i32* %x2, align 4
  %6 = load %struct._GimpCanvasTextCursorPrivate*, %struct._GimpCanvasTextCursorPrivate** %private, align 8
  %x3 = getelementptr inbounds %struct._GimpCanvasTextCursorPrivate, %struct._GimpCanvasTextCursorPrivate* %6, i32 0, i32 0
  %7 = load i32, i32* %x3, align 4
  %8 = load %struct._GimpCanvasTextCursorPrivate*, %struct._GimpCanvasTextCursorPrivate** %private, align 8
  %width = getelementptr inbounds %struct._GimpCanvasTextCursorPrivate, %struct._GimpCanvasTextCursorPrivate* %8, i32 0, i32 2
  %9 = load i32, i32* %width, align 4
  %add = add nsw i32 %7, %9
  %cmp = icmp slt i32 %5, %add
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %10 = load %struct._GimpCanvasTextCursorPrivate*, %struct._GimpCanvasTextCursorPrivate** %private, align 8
  %x4 = getelementptr inbounds %struct._GimpCanvasTextCursorPrivate, %struct._GimpCanvasTextCursorPrivate* %10, i32 0, i32 0
  %11 = load i32, i32* %x4, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %12 = load %struct._GimpCanvasTextCursorPrivate*, %struct._GimpCanvasTextCursorPrivate** %private, align 8
  %x5 = getelementptr inbounds %struct._GimpCanvasTextCursorPrivate, %struct._GimpCanvasTextCursorPrivate* %12, i32 0, i32 0
  %13 = load i32, i32* %x5, align 4
  %14 = load %struct._GimpCanvasTextCursorPrivate*, %struct._GimpCanvasTextCursorPrivate** %private, align 8
  %width6 = getelementptr inbounds %struct._GimpCanvasTextCursorPrivate, %struct._GimpCanvasTextCursorPrivate* %14, i32 0, i32 2
  %15 = load i32, i32* %width6, align 4
  %add7 = add nsw i32 %13, %15
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %11, %cond.true ], [ %add7, %cond.false ]
  %conv = sitofp i32 %cond to double
  %16 = load %struct._GimpCanvasTextCursorPrivate*, %struct._GimpCanvasTextCursorPrivate** %private, align 8
  %y8 = getelementptr inbounds %struct._GimpCanvasTextCursorPrivate, %struct._GimpCanvasTextCursorPrivate* %16, i32 0, i32 1
  %17 = load i32, i32* %y8, align 4
  %18 = load %struct._GimpCanvasTextCursorPrivate*, %struct._GimpCanvasTextCursorPrivate** %private, align 8
  %y9 = getelementptr inbounds %struct._GimpCanvasTextCursorPrivate, %struct._GimpCanvasTextCursorPrivate* %18, i32 0, i32 1
  %19 = load i32, i32* %y9, align 4
  %20 = load %struct._GimpCanvasTextCursorPrivate*, %struct._GimpCanvasTextCursorPrivate** %private, align 8
  %height = getelementptr inbounds %struct._GimpCanvasTextCursorPrivate, %struct._GimpCanvasTextCursorPrivate* %20, i32 0, i32 3
  %21 = load i32, i32* %height, align 4
  %add10 = add nsw i32 %19, %21
  %cmp11 = icmp slt i32 %17, %add10
  br i1 %cmp11, label %cond.true.13, label %cond.false.15

cond.true.13:                                     ; preds = %cond.end
  %22 = load %struct._GimpCanvasTextCursorPrivate*, %struct._GimpCanvasTextCursorPrivate** %private, align 8
  %y14 = getelementptr inbounds %struct._GimpCanvasTextCursorPrivate, %struct._GimpCanvasTextCursorPrivate* %22, i32 0, i32 1
  %23 = load i32, i32* %y14, align 4
  br label %cond.end.19

cond.false.15:                                    ; preds = %cond.end
  %24 = load %struct._GimpCanvasTextCursorPrivate*, %struct._GimpCanvasTextCursorPrivate** %private, align 8
  %y16 = getelementptr inbounds %struct._GimpCanvasTextCursorPrivate, %struct._GimpCanvasTextCursorPrivate* %24, i32 0, i32 1
  %25 = load i32, i32* %y16, align 4
  %26 = load %struct._GimpCanvasTextCursorPrivate*, %struct._GimpCanvasTextCursorPrivate** %private, align 8
  %height17 = getelementptr inbounds %struct._GimpCanvasTextCursorPrivate, %struct._GimpCanvasTextCursorPrivate* %26, i32 0, i32 3
  %27 = load i32, i32* %height17, align 4
  %add18 = add nsw i32 %25, %27
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.15, %cond.true.13
  %cond20 = phi i32 [ %23, %cond.true.13 ], [ %add18, %cond.false.15 ]
  %conv21 = sitofp i32 %cond20 to double
  %28 = load double*, double** %x.addr, align 8
  %29 = load double*, double** %y.addr, align 8
  call void @gimp_display_shell_transform_xy_f(%struct._GimpDisplayShell* %3, double %conv, double %conv21, double* %28, double* %29)
  %30 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %31 = load %struct._GimpCanvasTextCursorPrivate*, %struct._GimpCanvasTextCursorPrivate** %private, align 8
  %x22 = getelementptr inbounds %struct._GimpCanvasTextCursorPrivate, %struct._GimpCanvasTextCursorPrivate* %31, i32 0, i32 0
  %32 = load i32, i32* %x22, align 4
  %33 = load %struct._GimpCanvasTextCursorPrivate*, %struct._GimpCanvasTextCursorPrivate** %private, align 8
  %x23 = getelementptr inbounds %struct._GimpCanvasTextCursorPrivate, %struct._GimpCanvasTextCursorPrivate* %33, i32 0, i32 0
  %34 = load i32, i32* %x23, align 4
  %35 = load %struct._GimpCanvasTextCursorPrivate*, %struct._GimpCanvasTextCursorPrivate** %private, align 8
  %width24 = getelementptr inbounds %struct._GimpCanvasTextCursorPrivate, %struct._GimpCanvasTextCursorPrivate* %35, i32 0, i32 2
  %36 = load i32, i32* %width24, align 4
  %add25 = add nsw i32 %34, %36
  %cmp26 = icmp sgt i32 %32, %add25
  br i1 %cmp26, label %cond.true.28, label %cond.false.30

cond.true.28:                                     ; preds = %cond.end.19
  %37 = load %struct._GimpCanvasTextCursorPrivate*, %struct._GimpCanvasTextCursorPrivate** %private, align 8
  %x29 = getelementptr inbounds %struct._GimpCanvasTextCursorPrivate, %struct._GimpCanvasTextCursorPrivate* %37, i32 0, i32 0
  %38 = load i32, i32* %x29, align 4
  br label %cond.end.34

cond.false.30:                                    ; preds = %cond.end.19
  %39 = load %struct._GimpCanvasTextCursorPrivate*, %struct._GimpCanvasTextCursorPrivate** %private, align 8
  %x31 = getelementptr inbounds %struct._GimpCanvasTextCursorPrivate, %struct._GimpCanvasTextCursorPrivate* %39, i32 0, i32 0
  %40 = load i32, i32* %x31, align 4
  %41 = load %struct._GimpCanvasTextCursorPrivate*, %struct._GimpCanvasTextCursorPrivate** %private, align 8
  %width32 = getelementptr inbounds %struct._GimpCanvasTextCursorPrivate, %struct._GimpCanvasTextCursorPrivate* %41, i32 0, i32 2
  %42 = load i32, i32* %width32, align 4
  %add33 = add nsw i32 %40, %42
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.false.30, %cond.true.28
  %cond35 = phi i32 [ %38, %cond.true.28 ], [ %add33, %cond.false.30 ]
  %conv36 = sitofp i32 %cond35 to double
  %43 = load %struct._GimpCanvasTextCursorPrivate*, %struct._GimpCanvasTextCursorPrivate** %private, align 8
  %y37 = getelementptr inbounds %struct._GimpCanvasTextCursorPrivate, %struct._GimpCanvasTextCursorPrivate* %43, i32 0, i32 1
  %44 = load i32, i32* %y37, align 4
  %45 = load %struct._GimpCanvasTextCursorPrivate*, %struct._GimpCanvasTextCursorPrivate** %private, align 8
  %y38 = getelementptr inbounds %struct._GimpCanvasTextCursorPrivate, %struct._GimpCanvasTextCursorPrivate* %45, i32 0, i32 1
  %46 = load i32, i32* %y38, align 4
  %47 = load %struct._GimpCanvasTextCursorPrivate*, %struct._GimpCanvasTextCursorPrivate** %private, align 8
  %height39 = getelementptr inbounds %struct._GimpCanvasTextCursorPrivate, %struct._GimpCanvasTextCursorPrivate* %47, i32 0, i32 3
  %48 = load i32, i32* %height39, align 4
  %add40 = add nsw i32 %46, %48
  %cmp41 = icmp sgt i32 %44, %add40
  br i1 %cmp41, label %cond.true.43, label %cond.false.45

cond.true.43:                                     ; preds = %cond.end.34
  %49 = load %struct._GimpCanvasTextCursorPrivate*, %struct._GimpCanvasTextCursorPrivate** %private, align 8
  %y44 = getelementptr inbounds %struct._GimpCanvasTextCursorPrivate, %struct._GimpCanvasTextCursorPrivate* %49, i32 0, i32 1
  %50 = load i32, i32* %y44, align 4
  br label %cond.end.49

cond.false.45:                                    ; preds = %cond.end.34
  %51 = load %struct._GimpCanvasTextCursorPrivate*, %struct._GimpCanvasTextCursorPrivate** %private, align 8
  %y46 = getelementptr inbounds %struct._GimpCanvasTextCursorPrivate, %struct._GimpCanvasTextCursorPrivate* %51, i32 0, i32 1
  %52 = load i32, i32* %y46, align 4
  %53 = load %struct._GimpCanvasTextCursorPrivate*, %struct._GimpCanvasTextCursorPrivate** %private, align 8
  %height47 = getelementptr inbounds %struct._GimpCanvasTextCursorPrivate, %struct._GimpCanvasTextCursorPrivate* %53, i32 0, i32 3
  %54 = load i32, i32* %height47, align 4
  %add48 = add nsw i32 %52, %54
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.false.45, %cond.true.43
  %cond50 = phi i32 [ %50, %cond.true.43 ], [ %add48, %cond.false.45 ]
  %conv51 = sitofp i32 %cond50 to double
  %55 = load double*, double** %w.addr, align 8
  %56 = load double*, double** %h.addr, align 8
  call void @gimp_display_shell_transform_xy_f(%struct._GimpDisplayShell* %30, double %conv36, double %conv51, double* %55, double* %56)
  %57 = load double*, double** %x.addr, align 8
  %58 = load double, double* %57, align 8
  %59 = load double*, double** %w.addr, align 8
  %60 = load double, double* %59, align 8
  %sub = fsub double %60, %58
  store double %sub, double* %59, align 8
  %61 = load double*, double** %y.addr, align 8
  %62 = load double, double* %61, align 8
  %63 = load double*, double** %h.addr, align 8
  %64 = load double, double* %63, align 8
  %sub52 = fsub double %64, %62
  store double %sub52, double* %63, align 8
  %65 = load double*, double** %x.addr, align 8
  %66 = load double, double* %65, align 8
  %call53 = call double @floor(double %66) #6
  %add54 = fadd double %call53, 5.000000e-01
  %67 = load double*, double** %x.addr, align 8
  store double %add54, double* %67, align 8
  %68 = load double*, double** %y.addr, align 8
  %69 = load double, double* %68, align 8
  %call55 = call double @floor(double %69) #6
  %add56 = fadd double %call55, 5.000000e-01
  %70 = load double*, double** %y.addr, align 8
  store double %add56, double* %70, align 8
  %71 = load %struct._GimpCanvasTextCursorPrivate*, %struct._GimpCanvasTextCursorPrivate** %private, align 8
  %overwrite = getelementptr inbounds %struct._GimpCanvasTextCursorPrivate, %struct._GimpCanvasTextCursorPrivate* %71, i32 0, i32 4
  %72 = load i32, i32* %overwrite, align 4
  %tobool = icmp ne i32 %72, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.49
  %73 = load double*, double** %w.addr, align 8
  %74 = load double, double* %73, align 8
  %call57 = call double @ceil(double %74) #6
  %sub58 = fsub double %call57, 1.000000e+00
  %75 = load double*, double** %w.addr, align 8
  store double %sub58, double* %75, align 8
  %76 = load double*, double** %h.addr, align 8
  %77 = load double, double* %76, align 8
  %call59 = call double @ceil(double %77) #6
  %sub60 = fsub double %call59, 1.000000e+00
  %78 = load double*, double** %h.addr, align 8
  store double %sub60, double* %78, align 8
  br label %if.end

if.else:                                          ; preds = %cond.end.49
  %79 = load double*, double** %w.addr, align 8
  store double 0.000000e+00, double* %79, align 8
  %80 = load double*, double** %h.addr, align 8
  %81 = load double, double* %80, align 8
  %call61 = call double @ceil(double %81) #6
  %sub62 = fsub double %call61, 1.000000e+00
  %82 = load double*, double** %h.addr, align 8
  store double %sub62, double* %82, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare void @cairo_rectangle(%struct._cairo*, double, double, double, double) #1

declare void @cairo_move_to(%struct._cairo*, double, double) #1

declare void @cairo_line_to(%struct._cairo*, double, double) #1

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
