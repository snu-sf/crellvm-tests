; ModuleID = './app/tools/gimptool.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpToolClass = type { %struct._GimpObjectClass, i32 (%struct._GimpTool*, %struct._GimpDisplay*)*, %struct._GimpDisplay* (%struct._GimpTool*, %struct._GimpImage*)*, i32 (%struct._GimpTool*, %struct._GimpDisplay*, %struct._GError**)*, void (%struct._GimpTool*, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)*, i32 (%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*)*, i32 (%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*)*, void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)*, %struct._GimpUIManager* (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*, i8**)*, void (%struct._GimpTool*, %struct._GimpToolOptions*, %struct._GParamSpec*)* }
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
%struct._GimpTool = type { %struct._GimpObject, %struct._GimpToolInfo*, i32, %struct._GimpToolControl*, %struct._GimpDisplay*, %struct._GimpDrawable*, %struct._GimpDisplay*, i32, i32, i32, i32, i32, %struct._GimpCoords, i32, %struct._GList*, %struct._GimpCanvasItem*, %struct._GimpDisplay* }
%struct._GimpToolInfo = type { %struct._GimpViewable, %struct._Gimp*, i64, i64, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GimpToolOptions*, %struct._GimpPaintInfo*, %struct._GimpContainer* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpContext = type opaque
%struct._GimpToolOptions = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpToolControl = type { %struct._GimpObject, i32, i32, i32, %struct._GSList*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._GimpDrawable = type opaque
%struct._GimpCoords = type { double, double, double, double, double, double, double, double }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpCanvasItem = type opaque
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
%struct._GimpDisplayConfig = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GdkEventKey = type { i32, %struct._GdkDrawable*, i8, i32, i32, i32, i32, i8*, i16, i8, i8 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GimpUIManager = type opaque
%struct._GimpProgressInterface = type { %struct._GTypeInterface, %struct._GimpProgress* (%struct._GimpProgress*, i8*, i32)*, void (%struct._GimpProgress*)*, i32 (%struct._GimpProgress*)*, void (%struct._GimpProgress*, i8*)*, void (%struct._GimpProgress*, double)*, double (%struct._GimpProgress*)*, void (%struct._GimpProgress*)*, i32 (%struct._GimpProgress*)*, i32 (%struct._GimpProgress*, %struct._Gimp*, i32, i8*, i8*)*, void (%struct._GimpProgress*)* }
%struct._GTypeInterface = type { i64, i64 }
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
%struct._GimpDisplayOptions = type opaque
%struct._GimpZoomModel = type opaque
%struct._Selection = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpColorDisplayStack = type opaque
%struct._GimpTreeHandler = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpMotionBuffer = type opaque
%struct._GQueue = type { %struct._GList*, %struct._GList*, i32 }
%struct._GtkSettings = type { %struct._GObject, %struct._GData*, %struct._GtkSettingsPropertyValue*, %struct._GtkRcContext*, %struct._GdkScreen* }
%struct._GtkSettingsPropertyValue = type opaque
%struct._GtkRcContext = type opaque
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GimpStatusbar = type { %struct._GtkStatusbar, %struct._GimpDisplayShell*, %struct._GSList*, %struct._GHashTable*, i32, %struct._GdkPixbuf*, i32, i32, i32, [32 x i8], [32 x i8], [32 x i8], %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i32, i32, double }
%struct._GtkStatusbar = type { %struct._GtkHBox, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GSList*, %struct._GSList*, i32, i32, %struct._GdkDrawable*, i8 }
%struct._GtkHBox = type { %struct._GtkBox }
%struct._GHashTable = type opaque

@gimp_tool_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"GimpTool\00", align 1
@gimp_tool_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpProgressInterface*)* @gimp_tool_progress_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"Gimp-Tools\00", align 1
@__func__.gimp_tool_get_options = private unnamed_addr constant [22 x i8] c"gimp_tool_get_options\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"GIMP_IS_TOOL (tool)\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"GIMP_IS_TOOL_INFO (tool->tool_info)\00", align 1
@__func__.gimp_tool_has_display = private unnamed_addr constant [22 x i8] c"gimp_tool_has_display\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"GIMP_IS_DISPLAY (display)\00", align 1
@__func__.gimp_tool_has_image = private unnamed_addr constant [20 x i8] c"gimp_tool_has_image\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"image == NULL || GIMP_IS_IMAGE (image)\00", align 1
@__func__.gimp_tool_initialize = private unnamed_addr constant [21 x i8] c"gimp_tool_initialize\00", align 1
@__func__.gimp_tool_control = private unnamed_addr constant [18 x i8] c"gimp_tool_control\00", align 1
@.str.6 = private unnamed_addr constant [79 x i8] c"gimp_tool_control: unable to RESUME tool with tool->control->paused_count == 0\00", align 1
@__func__.gimp_tool_button_press = private unnamed_addr constant [23 x i8] c"gimp_tool_button_press\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"coords != NULL\00", align 1
@__func__.gimp_tool_button_release = private unnamed_addr constant [25 x i8] c"gimp_tool_button_release\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"gimp_tool_control_is_active (tool->control) == TRUE\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"gimptool.c\00", align 1
@.str.10 = private unnamed_addr constant [53 x i8] c"gimp_tool_control_is_active (tool->control) == FALSE\00", align 1
@__func__.gimp_tool_motion = private unnamed_addr constant [17 x i8] c"gimp_tool_motion\00", align 1
@__func__.gimp_tool_set_focus_display = private unnamed_addr constant [28 x i8] c"gimp_tool_set_focus_display\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"display == NULL || GIMP_IS_DISPLAY (display)\00", align 1
@gimp_log_flags = external global i32, align 4
@.str.12 = private unnamed_addr constant [53 x i8] c"tool: %p  focus_display: %p  tool->focus_display: %p\00", align 1
@__func__.gimp_tool_key_press = private unnamed_addr constant [20 x i8] c"gimp_tool_key_press\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"display == tool->focus_display\00", align 1
@__func__.gimp_tool_key_release = private unnamed_addr constant [22 x i8] c"gimp_tool_key_release\00", align 1
@__func__.gimp_tool_set_modifier_state = private unnamed_addr constant [29 x i8] c"gimp_tool_set_modifier_state\00", align 1
@.str.14 = private unnamed_addr constant [47 x i8] c"tool: %p  display: %p  tool->focus_display: %p\00", align 1
@__func__.gimp_tool_set_active_modifier_state = private unnamed_addr constant [36 x i8] c"gimp_tool_set_active_modifier_state\00", align 1
@__func__.gimp_tool_oper_update = private unnamed_addr constant [22 x i8] c"gimp_tool_oper_update\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.16 = private unnamed_addr constant [48 x i8] c"Can't work on an empty image, add a layer first\00", align 1
@__func__.gimp_tool_cursor_update = private unnamed_addr constant [24 x i8] c"gimp_tool_cursor_update\00", align 1
@__func__.gimp_tool_get_popup = private unnamed_addr constant [20 x i8] c"gimp_tool_get_popup\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"ui_path != NULL\00", align 1
@__func__.gimp_tool_push_status = private unnamed_addr constant [22 x i8] c"gimp_tool_push_status\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"format != NULL\00", align 1
@__func__.gimp_tool_push_status_coords = private unnamed_addr constant [29 x i8] c"gimp_tool_push_status_coords\00", align 1
@__func__.gimp_tool_push_status_length = private unnamed_addr constant [29 x i8] c"gimp_tool_push_status_length\00", align 1
@__func__.gimp_tool_replace_status = private unnamed_addr constant [25 x i8] c"gimp_tool_replace_status\00", align 1
@__func__.gimp_tool_pop_status = private unnamed_addr constant [21 x i8] c"gimp_tool_pop_status\00", align 1
@__func__.gimp_tool_message = private unnamed_addr constant [18 x i8] c"gimp_tool_message\00", align 1
@__func__.gimp_tool_message_literal = private unnamed_addr constant [26 x i8] c"gimp_tool_message_literal\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"message != NULL\00", align 1
@__func__.gimp_tool_set_cursor = private unnamed_addr constant [21 x i8] c"gimp_tool_set_cursor\00", align 1
@gimp_tool_parent_class = internal global i8* null, align 8
@GimpTool_private_offset = internal global i32 0, align 4
@.str.20 = private unnamed_addr constant [10 x i8] c"tool-info\00", align 1
@__func__.gimp_tool_constructed = private unnamed_addr constant [22 x i8] c"gimp_tool_constructed\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"notify\00", align 1
@.str.22 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@global_tool_ID = internal global i32 1, align 4
@.str.24 = private unnamed_addr constant [22 x i8] c"gtk-double-click-time\00", align 1
@.str.25 = private unnamed_addr constant [26 x i8] c"gtk-double-click-distance\00", align 1
@__func__.gimp_tool_modifier_key = private unnamed_addr constant [23 x i8] c"gimp_tool_modifier_key\00", align 1
@__func__.gimp_tool_active_modifier_key = private unnamed_addr constant [30 x i8] c"gimp_tool_active_modifier_key\00", align 1
@__func__.gimp_tool_clear_status = private unnamed_addr constant [23 x i8] c"gimp_tool_clear_status\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_tool_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_tool_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_tool_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_object_get_type() #8
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 280, void (i8*, i8*)* bitcast (void (i8*)* @gimp_tool_class_intern_init to void (i8*, i8*)*), i32 200, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpTool*)* @gimp_tool_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_progress_interface_get_type() #8
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_tool_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_tool_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_tool_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_tool_parent_class, align 8
  %1 = load i32, i32* @GimpTool_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpTool_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpToolClass*
  call void @gimp_tool_class_init(%struct._GimpToolClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_init(%struct._GimpTool* %tool) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %tool_info = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %0, i32 0, i32 1
  store %struct._GimpToolInfo* null, %struct._GimpToolInfo** %tool_info, align 8
  %1 = load i32, i32* @global_tool_ID, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @global_tool_ID, align 4
  %2 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %ID = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %2, i32 0, i32 2
  store i32 %1, i32* %ID, align 4
  %call = call i64 @gimp_tool_control_get_type() #8
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %3 = bitcast i8* %call1 to %struct._GimpToolControl*
  %4 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %4, i32 0, i32 3
  store %struct._GimpToolControl* %3, %struct._GimpToolControl** %control, align 8
  %5 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %5, i32 0, i32 4
  store %struct._GimpDisplay* null, %struct._GimpDisplay** %display, align 8
  %6 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %drawable = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %6, i32 0, i32 5
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %drawable, align 8
  %7 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %focus_display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %7, i32 0, i32 6
  store %struct._GimpDisplay* null, %struct._GimpDisplay** %focus_display, align 8
  %8 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %modifier_state = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %8, i32 0, i32 7
  store i32 0, i32* %modifier_state, align 4
  %9 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %active_modifier_state = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %9, i32 0, i32 9
  store i32 0, i32* %active_modifier_state, align 4
  %10 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %button_press_state = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %10, i32 0, i32 8
  store i32 0, i32* %button_press_state, align 4
  ret void
}

declare void @gimp_tool_progress_iface_init(%struct._GimpProgressInterface*) #1

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_progress_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %tool) #3 {
entry:
  %retval = alloca %struct._GimpToolOptions*, align 8
  %tool.addr = alloca %struct._GimpTool*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_tool_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_tool_get_options, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpToolOptions* null, %struct._GimpToolOptions** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %tool_info = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %13, i32 0, i32 1
  %14 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %15 = bitcast %struct._GimpToolInfo* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_tool_info_get_type() #8
  store i64 %call16, i64* %__t15, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type26, align 8
  %22 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %21, %22
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %24 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #9
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %25 = load i32, i32* %__r18, align 4
  store i32 %25, i32* %tmp33
  %26 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %26, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_tool_get_options, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpToolOptions* null, %struct._GimpToolOptions** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %27 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %tool_info39 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %27, i32 0, i32 1
  %28 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info39, align 8
  %tool_options = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %28, i32 0, i32 12
  %29 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options, align 8
  store %struct._GimpToolOptions* %29, %struct._GimpToolOptions** %retval
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  %30 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %retval
  ret %struct._GimpToolOptions* %30
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_info_get_type() #2

; Function Attrs: nounwind uwtable
define i32 @gimp_tool_has_display(%struct._GimpTool* %tool, %struct._GimpDisplay* %display) #3 {
entry:
  %retval = alloca i32, align 4
  %tool.addr = alloca %struct._GimpTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_tool_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_tool_has_display, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %14 = bitcast %struct._GimpDisplay* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_display_get_type() #8
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_tool_has_display, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %27 = bitcast %struct._GimpTool* %26 to %struct._GTypeInstance*
  %g_class39 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %27, i32 0, i32 0
  %28 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class39, align 8
  %29 = bitcast %struct._GTypeClass* %28 to %struct._GimpToolClass*
  %has_display = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %29, i32 0, i32 1
  %30 = load i32 (%struct._GimpTool*, %struct._GimpDisplay*)*, i32 (%struct._GimpTool*, %struct._GimpDisplay*)** %has_display, align 8
  %31 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %32 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call40 = call i32 %30(%struct._GimpTool* %31, %struct._GimpDisplay* %32)
  store i32 %call40, i32* %retval
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind readnone
declare i64 @gimp_display_get_type() #2

; Function Attrs: nounwind uwtable
define %struct._GimpDisplay* @gimp_tool_has_image(%struct._GimpTool* %tool, %struct._GimpImage* %image) #3 {
entry:
  %retval = alloca %struct._GimpDisplay*, align 8
  %tool.addr = alloca %struct._GimpTool*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  %list = alloca %struct._GList*, align 8
  %status_display = alloca %struct._GimpDisplay*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_tool_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_tool_has_image, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpDisplay* null, %struct._GimpDisplay** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %cmp12 = icmp eq %struct._GimpImage* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %15 = bitcast %struct._GimpImage* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_image_get_type() #8
  store i64 %call17, i64* %__t16, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %lor.lhs.false
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %tobool24 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.else.30

land.lhs.true.25:                                 ; preds = %if.else.22
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type27, align 8
  %22 = load i64, i64* %__t16, align 8
  %cmp28 = icmp eq i64 %21, %22
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %land.lhs.true.25
  store i32 1, i32* %__r19, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %land.lhs.true.25, %if.else.22
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %24 = load i64, i64* %__t16, align 8
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #9
  store i32 %call31, i32* %__r19, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.21
  %25 = load i32, i32* %__r19, align 4
  store i32 %25, i32* %tmp34
  %26 = load i32, i32* %tmp34
  %tobool35 = icmp ne i32 %26, 0
  br i1 %tobool35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.end.33, %do.body.11
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_tool_has_image, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GimpDisplay* null, %struct._GimpDisplay** %retval
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %28 = bitcast %struct._GimpTool* %27 to %struct._GTypeInstance*
  %g_class40 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %28, i32 0, i32 0
  %29 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class40, align 8
  %30 = bitcast %struct._GTypeClass* %29 to %struct._GimpToolClass*
  %has_image = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %30, i32 0, i32 2
  %31 = load %struct._GimpDisplay* (%struct._GimpTool*, %struct._GimpImage*)*, %struct._GimpDisplay* (%struct._GimpTool*, %struct._GimpImage*)** %has_image, align 8
  %32 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %33 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call41 = call %struct._GimpDisplay* %31(%struct._GimpTool* %32, %struct._GimpImage* %33)
  store %struct._GimpDisplay* %call41, %struct._GimpDisplay** %display, align 8
  %34 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool42 = icmp ne %struct._GimpDisplay* %34, null
  br i1 %tobool42, label %if.end.60, label %land.lhs.true.43

land.lhs.true.43:                                 ; preds = %do.end.39
  %35 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %status_displays = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %35, i32 0, i32 14
  %36 = load %struct._GList*, %struct._GList** %status_displays, align 8
  %tobool44 = icmp ne %struct._GList* %36, null
  br i1 %tobool44, label %if.then.45, label %if.end.60

if.then.45:                                       ; preds = %land.lhs.true.43
  %37 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %status_displays47 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %37, i32 0, i32 14
  %38 = load %struct._GList*, %struct._GList** %status_displays47, align 8
  store %struct._GList* %38, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.then.45
  %39 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool48 = icmp ne %struct._GList* %39, null
  br i1 %tobool48, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %40 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %40, i32 0, i32 0
  %41 = load i8*, i8** %data, align 8
  %42 = bitcast i8* %41 to %struct._GimpDisplay*
  store %struct._GimpDisplay* %42, %struct._GimpDisplay** %status_display, align 8
  %43 = load %struct._GimpDisplay*, %struct._GimpDisplay** %status_display, align 8
  %call50 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %43)
  %44 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %cmp51 = icmp eq %struct._GimpImage* %call50, %44
  br i1 %cmp51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %for.body
  %45 = load %struct._GimpDisplay*, %struct._GimpDisplay** %status_display, align 8
  store %struct._GimpDisplay* %45, %struct._GimpDisplay** %retval
  br label %return

if.end.53:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.53
  %46 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool54 = icmp ne %struct._GList* %46, null
  br i1 %tobool54, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %47 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %47, i32 0, i32 1
  %48 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %48, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %49 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %tobool55 = icmp ne %struct._GimpImage* %49, null
  br i1 %tobool55, label %if.end.59, label %if.then.56

if.then.56:                                       ; preds = %for.end
  %50 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %status_displays57 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %50, i32 0, i32 14
  %51 = load %struct._GList*, %struct._GList** %status_displays57, align 8
  %data58 = getelementptr inbounds %struct._GList, %struct._GList* %51, i32 0, i32 0
  %52 = load i8*, i8** %data58, align 8
  %53 = bitcast i8* %52 to %struct._GimpDisplay*
  store %struct._GimpDisplay* %53, %struct._GimpDisplay** %retval
  br label %return

if.end.59:                                        ; preds = %for.end
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %land.lhs.true.43, %do.end.39
  %54 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  store %struct._GimpDisplay* %54, %struct._GimpDisplay** %retval
  br label %return

return:                                           ; preds = %if.end.60, %if.then.56, %if.then.52, %if.else.37, %if.else.9
  %55 = load %struct._GimpDisplay*, %struct._GimpDisplay** %retval
  ret %struct._GimpDisplay* %55
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #2

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_tool_initialize(%struct._GimpTool* %tool, %struct._GimpDisplay* %display) #3 {
entry:
  %retval = alloca i32, align 4
  %tool.addr = alloca %struct._GimpTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %error = alloca %struct._GError*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_tool_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_tool_initialize, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %14 = bitcast %struct._GimpDisplay* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_display_get_type() #8
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_tool_initialize, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %27 = bitcast %struct._GimpTool* %26 to %struct._GTypeInstance*
  %g_class39 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %27, i32 0, i32 0
  %28 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class39, align 8
  %29 = bitcast %struct._GTypeClass* %28 to %struct._GimpToolClass*
  %initialize = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %29, i32 0, i32 3
  %30 = load i32 (%struct._GimpTool*, %struct._GimpDisplay*, %struct._GError**)*, i32 (%struct._GimpTool*, %struct._GimpDisplay*, %struct._GError**)** %initialize, align 8
  %31 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %32 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call40 = call i32 %30(%struct._GimpTool* %31, %struct._GimpDisplay* %32, %struct._GError** %error)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.end.46, label %if.then.42

if.then.42:                                       ; preds = %do.end.38
  %33 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool43 = icmp ne %struct._GError* %33, null
  br i1 %tobool43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.then.42
  %34 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %35 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %36 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %36, i32 0, i32 2
  %37 = load i8*, i8** %message, align 8
  call void @gimp_tool_message_literal(%struct._GimpTool* %34, %struct._GimpDisplay* %35, i8* %37)
  call void @g_clear_error(%struct._GError** %error)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %if.then.42
  store i32 0, i32* %retval
  br label %return

if.end.46:                                        ; preds = %do.end.38
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.46, %if.end.45, %if.else.36, %if.else.9
  %38 = load i32, i32* %retval
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define void @gimp_tool_message_literal(%struct._GimpTool* %tool, %struct._GimpDisplay* %display, i8* %message) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %message.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store i8* %message, i8** %message.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_tool_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_tool_message_literal, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %14 = bitcast %struct._GimpDisplay* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_display_get_type() #8
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_tool_message_literal, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load i8*, i8** %message.addr, align 8
  %cmp40 = icmp ne i8* %26, null
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %do.body.39
  br label %if.end.43

if.else.42:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_tool_message_literal, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0))
  br label %return

if.end.43:                                        ; preds = %if.then.41
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  %27 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %27, i32 0, i32 1
  %28 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %29 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %30 = bitcast %struct._GimpDisplay* %29 to %struct._GTypeInstance*
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 80)
  %31 = bitcast %struct._GTypeInstance* %call45 to %struct._GObject*
  %32 = load i8*, i8** %message.addr, align 8
  call void @gimp_message_literal(%struct._Gimp* %28, %struct._GObject* %31, i32 1, i8* %32)
  br label %return

return:                                           ; preds = %do.end.44, %if.else.42, %if.else.36, %if.else.9
  ret void
}

declare void @g_clear_error(%struct._GError**) #1

; Function Attrs: nounwind uwtable
define void @gimp_tool_control(%struct._GimpTool* %tool, i32 %action, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %action.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store i32 %action, i32* %action.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_tool_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_tool_control, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  br label %sw.epilog

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %action.addr, align 4
  switch i32 %13, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.18
    i32 2, label %sw.bb.33
  ]

sw.bb:                                            ; preds = %do.end
  %14 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %14, i32 0, i32 3
  %15 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  %call11 = call i32 @gimp_tool_control_is_paused(%struct._GimpToolControl* %15)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end.16, label %if.then.13

if.then.13:                                       ; preds = %sw.bb
  %16 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %17 = bitcast %struct._GimpTool* %16 to %struct._GTypeInstance*
  %g_class14 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class14, align 8
  %19 = bitcast %struct._GTypeClass* %18 to %struct._GimpToolClass*
  %control15 = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %19, i32 0, i32 4
  %20 = load void (%struct._GimpTool*, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, i32, %struct._GimpDisplay*)** %control15, align 8
  %21 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %22 = load i32, i32* %action.addr, align 4
  %23 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %20(%struct._GimpTool* %21, i32 %22, %struct._GimpDisplay* %23)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %sw.bb
  %24 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control17 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %24, i32 0, i32 3
  %25 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control17, align 8
  call void @gimp_tool_control_pause(%struct._GimpToolControl* %25)
  br label %sw.epilog

sw.bb.18:                                         ; preds = %do.end
  %26 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control19 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %26, i32 0, i32 3
  %27 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control19, align 8
  %call20 = call i32 @gimp_tool_control_is_paused(%struct._GimpToolControl* %27)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then.22, label %if.else.31

if.then.22:                                       ; preds = %sw.bb.18
  %28 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control23 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %28, i32 0, i32 3
  %29 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control23, align 8
  call void @gimp_tool_control_resume(%struct._GimpToolControl* %29)
  %30 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control24 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %30, i32 0, i32 3
  %31 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control24, align 8
  %call25 = call i32 @gimp_tool_control_is_paused(%struct._GimpToolControl* %31)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.end.30, label %if.then.27

if.then.27:                                       ; preds = %if.then.22
  %32 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %33 = bitcast %struct._GimpTool* %32 to %struct._GTypeInstance*
  %g_class28 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %33, i32 0, i32 0
  %34 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class28, align 8
  %35 = bitcast %struct._GTypeClass* %34 to %struct._GimpToolClass*
  %control29 = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %35, i32 0, i32 4
  %36 = load void (%struct._GimpTool*, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, i32, %struct._GimpDisplay*)** %control29, align 8
  %37 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %38 = load i32, i32* %action.addr, align 4
  %39 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %36(%struct._GimpTool* %37, i32 %38, %struct._GimpDisplay* %39)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.27, %if.then.22
  br label %if.end.32

if.else.31:                                       ; preds = %sw.bb.18
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.31, %if.end.30
  br label %sw.epilog

sw.bb.33:                                         ; preds = %do.end
  %40 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %41 = bitcast %struct._GimpTool* %40 to %struct._GTypeInstance*
  %g_class34 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %41, i32 0, i32 0
  %42 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class34, align 8
  %43 = bitcast %struct._GTypeClass* %42 to %struct._GimpToolClass*
  %control35 = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %43, i32 0, i32 4
  %44 = load void (%struct._GimpTool*, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, i32, %struct._GimpDisplay*)** %control35, align 8
  %45 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %46 = load i32, i32* %action.addr, align 4
  %47 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %44(%struct._GimpTool* %45, i32 %46, %struct._GimpDisplay* %47)
  %48 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control36 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %48, i32 0, i32 3
  %49 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control36, align 8
  %call37 = call i32 @gimp_tool_control_is_active(%struct._GimpToolControl* %49)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %sw.bb.33
  %50 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control40 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %50, i32 0, i32 3
  %51 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control40, align 8
  call void @gimp_tool_control_halt(%struct._GimpToolControl* %51)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %sw.bb.33
  %52 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  call void @gimp_tool_clear_status(%struct._GimpTool* %52)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else.9, %do.end, %if.end.41, %if.end.32, %if.end.16
  ret void
}

declare i32 @gimp_tool_control_is_paused(%struct._GimpToolControl*) #1

declare void @gimp_tool_control_pause(%struct._GimpToolControl*) #1

declare void @gimp_tool_control_resume(%struct._GimpToolControl*) #1

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
  call void @g_logv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i32 @gimp_tool_control_is_active(%struct._GimpToolControl*) #1

declare void @gimp_tool_control_halt(%struct._GimpToolControl*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_clear_status(%struct._GimpTool* %tool) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_tool_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_tool_clear_status, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  br label %while.end

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end
  %13 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %status_displays = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %13, i32 0, i32 14
  %14 = load %struct._GList*, %struct._GList** %status_displays, align 8
  %tobool11 = icmp ne %struct._GList* %14, null
  br i1 %tobool11, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %16 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %status_displays12 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %16, i32 0, i32 14
  %17 = load %struct._GList*, %struct._GList** %status_displays12, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %17, i32 0, i32 0
  %18 = load i8*, i8** %data, align 8
  %19 = bitcast i8* %18 to %struct._GimpDisplay*
  call void @gimp_tool_pop_status(%struct._GimpTool* %15, %struct._GimpDisplay* %19)
  br label %while.cond

while.end:                                        ; preds = %if.else.9, %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_tool_button_press(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, i32 %press_type, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %press_type.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst19 = alloca %struct._GTypeInstance*, align 8
  %__t21 = alloca i64, align 8
  %__r24 = alloca i32, align 4
  %tmp39 = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store i32 %press_type, i32* %press_type.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_tool_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_tool_button_press, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.58

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %cmp12 = icmp ne %struct._GimpCoords* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_tool_button_press, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.58

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %15 = bitcast %struct._GimpDisplay* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst19, align 8
  %call22 = call i64 @gimp_display_get_type() #8
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
  %call36 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_tool_button_press, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.58

if.end.43:                                        ; preds = %if.then.41
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  %27 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %28 = bitcast %struct._GimpTool* %27 to %struct._GTypeInstance*
  %g_class45 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %28, i32 0, i32 0
  %29 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class45, align 8
  %30 = bitcast %struct._GTypeClass* %29 to %struct._GimpToolClass*
  %button_press = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %30, i32 0, i32 5
  %31 = load void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)** %button_press, align 8
  %32 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %33 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %34 = load i32, i32* %time.addr, align 4
  %35 = load i32, i32* %state.addr, align 4
  %36 = load i32, i32* %press_type.addr, align 4
  %37 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %31(%struct._GimpTool* %32, %struct._GimpCoords* %33, i32 %34, i32 %35, i32 %36, %struct._GimpDisplay* %37)
  %38 = load i32, i32* %press_type.addr, align 4
  %cmp46 = icmp eq i32 %38, 0
  br i1 %cmp46, label %land.lhs.true.47, label %if.end.58

land.lhs.true.47:                                 ; preds = %do.end.44
  %39 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %39, i32 0, i32 3
  %40 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  %call48 = call i32 @gimp_tool_control_is_active(%struct._GimpToolControl* %40)
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %if.then.50, label %if.end.58

if.then.50:                                       ; preds = %land.lhs.true.47
  %41 = load i32, i32* %state.addr, align 4
  %42 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %button_press_state = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %42, i32 0, i32 8
  store i32 %41, i32* %button_press_state, align 4
  %43 = load i32, i32* %state.addr, align 4
  %44 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %active_modifier_state = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %44, i32 0, i32 9
  store i32 %43, i32* %active_modifier_state, align 4
  %45 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control51 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %45, i32 0, i32 3
  %46 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control51, align 8
  %call52 = call i32 @gimp_tool_control_get_wants_click(%struct._GimpToolControl* %46)
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %if.then.50
  %47 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %in_click_distance = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %47, i32 0, i32 10
  store i32 1, i32* %in_click_distance, align 4
  %48 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %got_motion_event = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %48, i32 0, i32 11
  store i32 0, i32* %got_motion_event, align 4
  %49 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %button_press_coords = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %49, i32 0, i32 12
  %50 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %51 = bitcast %struct._GimpCoords* %button_press_coords to i8*
  %52 = bitcast %struct._GimpCoords* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %51, i8* %52, i64 64, i32 8, i1 false)
  %53 = load i32, i32* %time.addr, align 4
  %54 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %button_press_time = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %54, i32 0, i32 13
  store i32 %53, i32* %button_press_time, align 4
  br label %if.end.57

if.else.55:                                       ; preds = %if.then.50
  %55 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %in_click_distance56 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %55, i32 0, i32 10
  store i32 0, i32* %in_click_distance56, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.55, %if.then.54
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.9, %if.else.14, %if.else.42, %if.end.57, %land.lhs.true.47, %do.end.44
  ret void
}

declare i32 @gimp_tool_control_get_wants_click(%struct._GimpToolControl*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind uwtable
define void @gimp_tool_button_release(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %release_type = alloca i32, align 4
  %my_coords = alloca %struct._GimpCoords, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst19 = alloca %struct._GTypeInstance*, align 8
  %__t21 = alloca i64, align 8
  %__r24 = alloca i32, align 4
  %tmp39 = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store i32 0, i32* %release_type, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_tool_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_tool_button_release, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %cmp12 = icmp ne %struct._GimpCoords* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_tool_button_release, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %15 = bitcast %struct._GimpDisplay* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst19, align 8
  %call22 = call i64 @gimp_display_get_type() #8
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
  %call36 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_tool_button_release, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.43:                                        ; preds = %if.then.41
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  br label %do.body.45

do.body.45:                                       ; preds = %do.end.44
  %27 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %27, i32 0, i32 3
  %28 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  %call46 = call i32 @gimp_tool_control_is_active(%struct._GimpToolControl* %28)
  %cmp47 = icmp eq i32 %call46, 1
  br i1 %cmp47, label %if.then.48, label %if.else.49

if.then.48:                                       ; preds = %do.body.45
  br label %if.end.50

if.else.49:                                       ; preds = %do.body.45
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_tool_button_release, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.50:                                        ; preds = %if.then.48
  br label %do.end.51

do.end.51:                                        ; preds = %if.end.50
  %29 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %30 = bitcast %struct._GimpTool* %29 to i8*
  %call52 = call i8* @g_object_ref(i8* %30)
  %31 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %32 = bitcast %struct._GimpCoords* %my_coords to i8*
  %33 = bitcast %struct._GimpCoords* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 64, i32 8, i1 false)
  %34 = load i32, i32* %state.addr, align 4
  %and = and i32 %34, 1024
  %tobool53 = icmp ne i32 %and, 0
  br i1 %tobool53, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %do.end.51
  store i32 1, i32* %release_type, align 4
  br label %if.end.71

if.else.55:                                       ; preds = %do.end.51
  %35 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control56 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %35, i32 0, i32 3
  %36 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control56, align 8
  %call57 = call i32 @gimp_tool_control_get_wants_click(%struct._GimpToolControl* %36)
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then.59, label %if.end.70

if.then.59:                                       ; preds = %if.else.55
  %37 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %38 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %39 = load i32, i32* %time.addr, align 4
  %40 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call60 = call i32 @gimp_tool_check_click_distance(%struct._GimpTool* %37, %struct._GimpCoords* %38, i32 %39, %struct._GimpDisplay* %40)
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.then.62, label %if.else.65

if.then.62:                                       ; preds = %if.then.59
  store i32 2, i32* %release_type, align 4
  %41 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %button_press_coords = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %41, i32 0, i32 12
  %42 = bitcast %struct._GimpCoords* %my_coords to i8*
  %43 = bitcast %struct._GimpCoords* %button_press_coords to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %43, i64 64, i32 8, i1 false)
  %44 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %45 = bitcast %struct._GimpTool* %44 to %struct._GTypeInstance*
  %g_class63 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %45, i32 0, i32 0
  %46 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class63, align 8
  %47 = bitcast %struct._GTypeClass* %46 to %struct._GimpToolClass*
  %motion = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %47, i32 0, i32 7
  %48 = load void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %motion, align 8
  %49 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %50 = load i32, i32* %time.addr, align 4
  %51 = load i32, i32* %state.addr, align 4
  %and64 = and i32 %51, 256
  %52 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %48(%struct._GimpTool* %49, %struct._GimpCoords* %my_coords, i32 %50, i32 %and64, %struct._GimpDisplay* %52)
  br label %if.end.69

if.else.65:                                       ; preds = %if.then.59
  %53 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %got_motion_event = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %53, i32 0, i32 11
  %54 = load i32, i32* %got_motion_event, align 4
  %tobool66 = icmp ne i32 %54, 0
  br i1 %tobool66, label %if.end.68, label %if.then.67

if.then.67:                                       ; preds = %if.else.65
  store i32 3, i32* %release_type, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.67, %if.else.65
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.then.62
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.else.55
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.then.54
  %55 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %56 = bitcast %struct._GimpTool* %55 to %struct._GTypeInstance*
  %g_class72 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %56, i32 0, i32 0
  %57 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class72, align 8
  %58 = bitcast %struct._GTypeClass* %57 to %struct._GimpToolClass*
  %button_release = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %58, i32 0, i32 6
  %59 = load void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)** %button_release, align 8
  %60 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %61 = load i32, i32* %time.addr, align 4
  %62 = load i32, i32* %state.addr, align 4
  %63 = load i32, i32* %release_type, align 4
  %64 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %59(%struct._GimpTool* %60, %struct._GimpCoords* %my_coords, i32 %61, i32 %62, i32 %63, %struct._GimpDisplay* %64)
  br label %do.body.73

do.body.73:                                       ; preds = %if.end.71
  %65 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control74 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %65, i32 0, i32 3
  %66 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control74, align 8
  %call75 = call i32 @gimp_tool_control_is_active(%struct._GimpToolControl* %66)
  %cmp76 = icmp eq i32 %call75, 0
  br i1 %cmp76, label %if.then.77, label %if.else.78

if.then.77:                                       ; preds = %do.body.73
  br label %if.end.79

if.else.78:                                       ; preds = %do.body.73
  call void @g_warn_message(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i32 685, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_tool_button_release, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.78, %if.then.77
  br label %do.end.80

do.end.80:                                        ; preds = %if.end.79
  %67 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %active_modifier_state = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %67, i32 0, i32 9
  %68 = load i32, i32* %active_modifier_state, align 4
  %cmp81 = icmp ne i32 %68, 0
  br i1 %cmp81, label %if.then.82, label %if.end.85

if.then.82:                                       ; preds = %do.end.80
  %69 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control83 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %69, i32 0, i32 3
  %70 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control83, align 8
  call void @gimp_tool_control_activate(%struct._GimpToolControl* %70)
  %71 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %72 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_tool_set_active_modifier_state(%struct._GimpTool* %71, i32 0, %struct._GimpDisplay* %72)
  %73 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control84 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %73, i32 0, i32 3
  %74 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control84, align 8
  call void @gimp_tool_control_halt(%struct._GimpToolControl* %74)
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.82, %do.end.80
  %75 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %button_press_state = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %75, i32 0, i32 8
  store i32 0, i32* %button_press_state, align 4
  %76 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %77 = bitcast %struct._GimpTool* %76 to i8*
  call void @g_object_unref(i8* %77)
  br label %return

return:                                           ; preds = %if.end.85, %if.else.49, %if.else.42, %if.else.14, %if.else.9
  ret void
}

declare i8* @g_object_ref(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_tool_check_click_distance(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, %struct._GimpDisplay* %display) #3 {
entry:
  %retval = alloca i32, align 4
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %double_click_time = alloca i32, align 4
  %double_click_distance = alloca i32, align 4
  %shell6 = alloca %struct._GimpDisplayShell*, align 8
  %dx = alloca double, align 8
  %dy = alloca double, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %in_click_distance = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %0, i32 0, i32 10
  %1 = load i32, i32* %in_click_distance, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %2)
  store %struct._GimpDisplayShell* %call, %struct._GimpDisplayShell** %shell, align 8
  %3 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %4 = bitcast %struct._GimpDisplayShell* %3 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_widget_get_type() #8
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call1)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkWidget*
  %call3 = call %struct._GtkSettings* @gtk_widget_get_settings(%struct._GtkWidget* %5)
  %6 = bitcast %struct._GtkSettings* %call3 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %6, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i32 0, i32 0), i32* %double_click_time, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.25, i32 0, i32 0), i32* %double_click_distance, i8* null)
  %7 = load i32, i32* %time.addr, align 4
  %8 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %button_press_time = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %8, i32 0, i32 13
  %9 = load i32, i32* %button_press_time, align 4
  %sub = sub i32 %7, %9
  %10 = load i32, i32* %double_click_time, align 4
  %cmp = icmp ugt i32 %sub, %10
  br i1 %cmp, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %11 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %in_click_distance5 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %11, i32 0, i32 10
  store i32 0, i32* %in_click_distance5, align 4
  br label %if.end.28

if.else:                                          ; preds = %if.end
  %12 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call7 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %12)
  store %struct._GimpDisplayShell* %call7, %struct._GimpDisplayShell** %shell6, align 8
  %13 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %button_press_coords = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %13, i32 0, i32 12
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %button_press_coords, i32 0, i32 0
  %14 = load double, double* %x, align 8
  %15 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x8 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %15, i32 0, i32 0
  %16 = load double, double* %x8, align 8
  %sub9 = fsub double %14, %16
  %17 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell6, align 8
  %scale_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %17, i32 0, i32 13
  %18 = load double, double* %scale_x, align 8
  %mul = fmul double %sub9, %18
  %call10 = call double @rint(double %mul) #8
  %conv = fptosi double %call10 to i32
  %conv11 = sitofp i32 %conv to double
  store double %conv11, double* %dx, align 8
  %19 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %button_press_coords12 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %19, i32 0, i32 12
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %button_press_coords12, i32 0, i32 1
  %20 = load double, double* %y, align 8
  %21 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y13 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %21, i32 0, i32 1
  %22 = load double, double* %y13, align 8
  %sub14 = fsub double %20, %22
  %23 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell6, align 8
  %scale_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %23, i32 0, i32 14
  %24 = load double, double* %scale_y, align 8
  %mul15 = fmul double %sub14, %24
  %call16 = call double @rint(double %mul15) #8
  %conv17 = fptosi double %call16 to i32
  %conv18 = sitofp i32 %conv17 to double
  store double %conv18, double* %dy, align 8
  %25 = load double, double* %dx, align 8
  %26 = load double, double* %dx, align 8
  %mul19 = fmul double %25, %26
  %27 = load double, double* %dy, align 8
  %28 = load double, double* %dy, align 8
  %mul20 = fmul double %27, %28
  %add = fadd double %mul19, %mul20
  %29 = load i32, i32* %double_click_distance, align 4
  %30 = load i32, i32* %double_click_distance, align 4
  %mul21 = mul nsw i32 %29, %30
  %conv22 = sitofp i32 %mul21 to double
  %cmp23 = fcmp ogt double %add, %conv22
  br i1 %cmp23, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.else
  %31 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %in_click_distance26 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %31, i32 0, i32 10
  store i32 0, i32* %in_click_distance26, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.else
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.4
  %32 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %in_click_distance29 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %32, i32 0, i32 10
  %33 = load i32, i32* %in_click_distance29, align 4
  store i32 %33, i32* %retval
  br label %return

return:                                           ; preds = %if.end.28, %if.then
  %34 = load i32, i32* %retval
  ret i32 %34
}

declare void @g_warn_message(i8*, i8*, i32, i8*, i8*) #1

declare void @gimp_tool_control_activate(%struct._GimpToolControl*) #1

; Function Attrs: nounwind uwtable
define void @gimp_tool_set_active_modifier_state(%struct._GimpTool* %tool, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %press = alloca i32, align 4
  %press80 = alloca i32, align 4
  %press99 = alloca i32, align 4
  %press118 = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_tool_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_tool_set_active_modifier_state, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %14 = bitcast %struct._GimpDisplay* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_display_get_type() #8
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_tool_set_active_modifier_state, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %26, i32 0, i32 3
  %27 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  %call40 = call i32 @gimp_tool_control_is_active(%struct._GimpToolControl* %27)
  %cmp41 = icmp eq i32 %call40, 1
  br i1 %cmp41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %do.body.39
  br label %if.end.44

if.else.43:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_tool_set_active_modifier_state, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.44:                                        ; preds = %if.then.42
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  br label %do.body.46

do.body.46:                                       ; preds = %do.end.45
  %28 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %28, 2
  %tobool47 = icmp ne i32 %and, 0
  br i1 %tobool47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %do.body.46
  %29 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %30 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %31 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %focus_display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %31, i32 0, i32 6
  %32 = load %struct._GimpDisplay*, %struct._GimpDisplay** %focus_display, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_tool_set_active_modifier_state, i32 0, i32 0), i32 863, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.14, i32 0, i32 0), %struct._GimpTool* %29, %struct._GimpDisplay* %30, %struct._GimpDisplay* %32)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.48, %do.body.46
  br label %do.end.50

do.end.50:                                        ; preds = %if.end.49
  br label %do.body.51

do.body.51:                                       ; preds = %do.end.50
  %33 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %34 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %focus_display52 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %34, i32 0, i32 6
  %35 = load %struct._GimpDisplay*, %struct._GimpDisplay** %focus_display52, align 8
  %cmp53 = icmp eq %struct._GimpDisplay* %33, %35
  br i1 %cmp53, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %do.body.51
  br label %if.end.56

if.else.55:                                       ; preds = %do.body.51
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_tool_set_active_modifier_state, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0))
  br label %return

if.end.56:                                        ; preds = %if.then.54
  br label %do.end.57

do.end.57:                                        ; preds = %if.end.56
  %36 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %active_modifier_state = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %36, i32 0, i32 9
  %37 = load i32, i32* %active_modifier_state, align 4
  %and58 = and i32 %37, 1
  %38 = load i32, i32* %state.addr, align 4
  %and59 = and i32 %38, 1
  %cmp60 = icmp ne i32 %and58, %and59
  br i1 %cmp60, label %if.then.61, label %if.end.73

if.then.61:                                       ; preds = %do.end.57
  %39 = load i32, i32* %state.addr, align 4
  %and63 = and i32 %39, 1
  store i32 %and63, i32* %press, align 4
  %40 = load i32, i32* %press, align 4
  %tobool64 = icmp ne i32 %40, 0
  br i1 %tobool64, label %if.else.71, label %land.lhs.true.65

land.lhs.true.65:                                 ; preds = %if.then.61
  %41 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %button_press_state = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %41, i32 0, i32 8
  %42 = load i32, i32* %button_press_state, align 4
  %and66 = and i32 %42, 1
  %tobool67 = icmp ne i32 %and66, 0
  br i1 %tobool67, label %if.then.68, label %if.else.71

if.then.68:                                       ; preds = %land.lhs.true.65
  %43 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %button_press_state69 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %43, i32 0, i32 8
  %44 = load i32, i32* %button_press_state69, align 4
  %and70 = and i32 %44, -2
  store i32 %and70, i32* %button_press_state69, align 4
  br label %if.end.72

if.else.71:                                       ; preds = %land.lhs.true.65, %if.then.61
  %45 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %46 = load i32, i32* %press, align 4
  %47 = load i32, i32* %state.addr, align 4
  %48 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_tool_active_modifier_key(%struct._GimpTool* %45, i32 1, i32 %46, i32 %47, %struct._GimpDisplay* %48)
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.71, %if.then.68
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %do.end.57
  %49 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %active_modifier_state74 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %49, i32 0, i32 9
  %50 = load i32, i32* %active_modifier_state74, align 4
  %and75 = and i32 %50, 4
  %51 = load i32, i32* %state.addr, align 4
  %and76 = and i32 %51, 4
  %cmp77 = icmp ne i32 %and75, %and76
  br i1 %cmp77, label %if.then.78, label %if.end.92

if.then.78:                                       ; preds = %if.end.73
  %52 = load i32, i32* %state.addr, align 4
  %and81 = and i32 %52, 4
  store i32 %and81, i32* %press80, align 4
  %53 = load i32, i32* %press80, align 4
  %tobool82 = icmp ne i32 %53, 0
  br i1 %tobool82, label %if.else.90, label %land.lhs.true.83

land.lhs.true.83:                                 ; preds = %if.then.78
  %54 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %button_press_state84 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %54, i32 0, i32 8
  %55 = load i32, i32* %button_press_state84, align 4
  %and85 = and i32 %55, 4
  %tobool86 = icmp ne i32 %and85, 0
  br i1 %tobool86, label %if.then.87, label %if.else.90

if.then.87:                                       ; preds = %land.lhs.true.83
  %56 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %button_press_state88 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %56, i32 0, i32 8
  %57 = load i32, i32* %button_press_state88, align 4
  %and89 = and i32 %57, -5
  store i32 %and89, i32* %button_press_state88, align 4
  br label %if.end.91

if.else.90:                                       ; preds = %land.lhs.true.83, %if.then.78
  %58 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %59 = load i32, i32* %press80, align 4
  %60 = load i32, i32* %state.addr, align 4
  %61 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_tool_active_modifier_key(%struct._GimpTool* %58, i32 4, i32 %59, i32 %60, %struct._GimpDisplay* %61)
  br label %if.end.91

if.end.91:                                        ; preds = %if.else.90, %if.then.87
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %if.end.73
  %62 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %active_modifier_state93 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %62, i32 0, i32 9
  %63 = load i32, i32* %active_modifier_state93, align 4
  %and94 = and i32 %63, 8
  %64 = load i32, i32* %state.addr, align 4
  %and95 = and i32 %64, 8
  %cmp96 = icmp ne i32 %and94, %and95
  br i1 %cmp96, label %if.then.97, label %if.end.111

if.then.97:                                       ; preds = %if.end.92
  %65 = load i32, i32* %state.addr, align 4
  %and100 = and i32 %65, 8
  store i32 %and100, i32* %press99, align 4
  %66 = load i32, i32* %press99, align 4
  %tobool101 = icmp ne i32 %66, 0
  br i1 %tobool101, label %if.else.109, label %land.lhs.true.102

land.lhs.true.102:                                ; preds = %if.then.97
  %67 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %button_press_state103 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %67, i32 0, i32 8
  %68 = load i32, i32* %button_press_state103, align 4
  %and104 = and i32 %68, 8
  %tobool105 = icmp ne i32 %and104, 0
  br i1 %tobool105, label %if.then.106, label %if.else.109

if.then.106:                                      ; preds = %land.lhs.true.102
  %69 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %button_press_state107 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %69, i32 0, i32 8
  %70 = load i32, i32* %button_press_state107, align 4
  %and108 = and i32 %70, -9
  store i32 %and108, i32* %button_press_state107, align 4
  br label %if.end.110

if.else.109:                                      ; preds = %land.lhs.true.102, %if.then.97
  %71 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %72 = load i32, i32* %press99, align 4
  %73 = load i32, i32* %state.addr, align 4
  %74 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_tool_active_modifier_key(%struct._GimpTool* %71, i32 8, i32 %72, i32 %73, %struct._GimpDisplay* %74)
  br label %if.end.110

if.end.110:                                       ; preds = %if.else.109, %if.then.106
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110, %if.end.92
  %75 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %active_modifier_state112 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %75, i32 0, i32 9
  %76 = load i32, i32* %active_modifier_state112, align 4
  %and113 = and i32 %76, 16
  %77 = load i32, i32* %state.addr, align 4
  %and114 = and i32 %77, 16
  %cmp115 = icmp ne i32 %and113, %and114
  br i1 %cmp115, label %if.then.116, label %if.end.130

if.then.116:                                      ; preds = %if.end.111
  %78 = load i32, i32* %state.addr, align 4
  %and119 = and i32 %78, 16
  store i32 %and119, i32* %press118, align 4
  %79 = load i32, i32* %press118, align 4
  %tobool120 = icmp ne i32 %79, 0
  br i1 %tobool120, label %if.else.128, label %land.lhs.true.121

land.lhs.true.121:                                ; preds = %if.then.116
  %80 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %button_press_state122 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %80, i32 0, i32 8
  %81 = load i32, i32* %button_press_state122, align 4
  %and123 = and i32 %81, 16
  %tobool124 = icmp ne i32 %and123, 0
  br i1 %tobool124, label %if.then.125, label %if.else.128

if.then.125:                                      ; preds = %land.lhs.true.121
  %82 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %button_press_state126 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %82, i32 0, i32 8
  %83 = load i32, i32* %button_press_state126, align 4
  %and127 = and i32 %83, -17
  store i32 %and127, i32* %button_press_state126, align 4
  br label %if.end.129

if.else.128:                                      ; preds = %land.lhs.true.121, %if.then.116
  %84 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %85 = load i32, i32* %press118, align 4
  %86 = load i32, i32* %state.addr, align 4
  %87 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_tool_active_modifier_key(%struct._GimpTool* %84, i32 16, i32 %85, i32 %86, %struct._GimpDisplay* %87)
  br label %if.end.129

if.end.129:                                       ; preds = %if.else.128, %if.then.125
  br label %if.end.130

if.end.130:                                       ; preds = %if.end.129, %if.end.111
  %88 = load i32, i32* %state.addr, align 4
  %89 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %active_modifier_state131 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %89, i32 0, i32 9
  store i32 %88, i32* %active_modifier_state131, align 4
  br label %return

return:                                           ; preds = %if.end.130, %if.else.55, %if.else.43, %if.else.36, %if.else.9
  ret void
}

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_tool_motion(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst19 = alloca %struct._GTypeInstance*, align 8
  %__t21 = alloca i64, align 8
  %__r24 = alloca i32, align 4
  %tmp39 = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_tool_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_tool_motion, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %cmp12 = icmp ne %struct._GimpCoords* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_tool_motion, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %15 = bitcast %struct._GimpDisplay* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst19, align 8
  %call22 = call i64 @gimp_display_get_type() #8
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
  %call36 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_tool_motion, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.43:                                        ; preds = %if.then.41
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  br label %do.body.45

do.body.45:                                       ; preds = %do.end.44
  %27 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %27, i32 0, i32 3
  %28 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  %call46 = call i32 @gimp_tool_control_is_active(%struct._GimpToolControl* %28)
  %cmp47 = icmp eq i32 %call46, 1
  br i1 %cmp47, label %if.then.48, label %if.else.49

if.then.48:                                       ; preds = %do.body.45
  br label %if.end.50

if.else.49:                                       ; preds = %do.body.45
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_tool_motion, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.50:                                        ; preds = %if.then.48
  br label %do.end.51

do.end.51:                                        ; preds = %if.end.50
  %29 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %got_motion_event = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %29, i32 0, i32 11
  store i32 1, i32* %got_motion_event, align 4
  %30 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %31 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %32 = load i32, i32* %time.addr, align 4
  %33 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call52 = call i32 @gimp_tool_check_click_distance(%struct._GimpTool* %30, %struct._GimpCoords* %31, i32 %32, %struct._GimpDisplay* %33)
  %34 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %35 = bitcast %struct._GimpTool* %34 to %struct._GTypeInstance*
  %g_class53 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %35, i32 0, i32 0
  %36 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class53, align 8
  %37 = bitcast %struct._GTypeClass* %36 to %struct._GimpToolClass*
  %motion = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %37, i32 0, i32 7
  %38 = load void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %motion, align 8
  %39 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %40 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %41 = load i32, i32* %time.addr, align 4
  %42 = load i32, i32* %state.addr, align 4
  %43 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %38(%struct._GimpTool* %39, %struct._GimpCoords* %40, i32 %41, i32 %42, %struct._GimpDisplay* %43)
  br label %return

return:                                           ; preds = %do.end.51, %if.else.49, %if.else.42, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_tool_set_focus_display(%struct._GimpTool* %tool, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_tool_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_tool_set_focus_display, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.70

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %cmp12 = icmp eq %struct._GimpDisplay* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %15 = bitcast %struct._GimpDisplay* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_display_get_type() #8
  store i64 %call17, i64* %__t16, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %lor.lhs.false
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %tobool24 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.else.30

land.lhs.true.25:                                 ; preds = %if.else.22
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type27, align 8
  %22 = load i64, i64* %__t16, align 8
  %cmp28 = icmp eq i64 %21, %22
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %land.lhs.true.25
  store i32 1, i32* %__r19, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %land.lhs.true.25, %if.else.22
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %24 = load i64, i64* %__t16, align 8
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #9
  store i32 %call31, i32* %__r19, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.21
  %25 = load i32, i32* %__r19, align 4
  store i32 %25, i32* %tmp34
  %26 = load i32, i32* %tmp34
  %tobool35 = icmp ne i32 %26, 0
  br i1 %tobool35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.end.33, %do.body.11
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_tool_set_focus_display, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.70

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  br label %do.body.40

do.body.40:                                       ; preds = %do.end.39
  %27 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %27, i32 0, i32 3
  %28 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  %call41 = call i32 @gimp_tool_control_is_active(%struct._GimpToolControl* %28)
  %cmp42 = icmp eq i32 %call41, 0
  br i1 %cmp42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %do.body.40
  br label %if.end.45

if.else.44:                                       ; preds = %do.body.40
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_tool_set_focus_display, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.70

if.end.45:                                        ; preds = %if.then.43
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  br label %do.body.47

do.body.47:                                       ; preds = %do.end.46
  %29 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %29, 2
  %tobool48 = icmp ne i32 %and, 0
  br i1 %tobool48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %do.body.47
  %30 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %31 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %32 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %focus_display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %32, i32 0, i32 6
  %33 = load %struct._GimpDisplay*, %struct._GimpDisplay** %focus_display, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_tool_set_focus_display, i32 0, i32 0), i32 728, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.12, i32 0, i32 0), %struct._GimpTool* %30, %struct._GimpDisplay* %31, %struct._GimpDisplay* %33)
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.49, %do.body.47
  br label %do.end.51

do.end.51:                                        ; preds = %if.end.50
  %34 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %35 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %focus_display52 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %35, i32 0, i32 6
  %36 = load %struct._GimpDisplay*, %struct._GimpDisplay** %focus_display52, align 8
  %cmp53 = icmp ne %struct._GimpDisplay* %34, %36
  br i1 %cmp53, label %if.then.54, label %if.end.70

if.then.54:                                       ; preds = %do.end.51
  %37 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %focus_display55 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %37, i32 0, i32 6
  %38 = load %struct._GimpDisplay*, %struct._GimpDisplay** %focus_display55, align 8
  %tobool56 = icmp ne %struct._GimpDisplay* %38, null
  br i1 %tobool56, label %if.then.57, label %if.end.68

if.then.57:                                       ; preds = %if.then.54
  %39 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %active_modifier_state = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %39, i32 0, i32 9
  %40 = load i32, i32* %active_modifier_state, align 4
  %cmp58 = icmp ne i32 %40, 0
  br i1 %cmp58, label %if.then.59, label %if.end.63

if.then.59:                                       ; preds = %if.then.57
  %41 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control60 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %41, i32 0, i32 3
  %42 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control60, align 8
  call void @gimp_tool_control_activate(%struct._GimpToolControl* %42)
  %43 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %44 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %focus_display61 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %44, i32 0, i32 6
  %45 = load %struct._GimpDisplay*, %struct._GimpDisplay** %focus_display61, align 8
  call void @gimp_tool_set_active_modifier_state(%struct._GimpTool* %43, i32 0, %struct._GimpDisplay* %45)
  %46 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control62 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %46, i32 0, i32 3
  %47 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control62, align 8
  call void @gimp_tool_control_halt(%struct._GimpToolControl* %47)
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.59, %if.then.57
  %48 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %modifier_state = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %48, i32 0, i32 7
  %49 = load i32, i32* %modifier_state, align 4
  %cmp64 = icmp ne i32 %49, 0
  br i1 %cmp64, label %if.then.65, label %if.end.67

if.then.65:                                       ; preds = %if.end.63
  %50 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %51 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %focus_display66 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %51, i32 0, i32 6
  %52 = load %struct._GimpDisplay*, %struct._GimpDisplay** %focus_display66, align 8
  call void @gimp_tool_set_modifier_state(%struct._GimpTool* %50, i32 0, %struct._GimpDisplay* %52)
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.65, %if.end.63
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.then.54
  %53 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %54 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %focus_display69 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %54, i32 0, i32 6
  store %struct._GimpDisplay* %53, %struct._GimpDisplay** %focus_display69, align 8
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.9, %if.else.37, %if.else.44, %if.end.68, %do.end.51
  ret void
}

declare void @gimp_log(i32, i8*, i32, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_tool_set_modifier_state(%struct._GimpTool* %tool, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_tool_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_tool_set_modifier_state, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %14 = bitcast %struct._GimpDisplay* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_display_get_type() #8
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_tool_set_modifier_state, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %26, i32 0, i32 3
  %27 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  %call40 = call i32 @gimp_tool_control_is_active(%struct._GimpToolControl* %27)
  %cmp41 = icmp eq i32 %call40, 0
  br i1 %cmp41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %do.body.39
  br label %if.end.44

if.else.43:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_tool_set_modifier_state, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i32 0, i32 0))
  br label %return

if.end.44:                                        ; preds = %if.then.42
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  br label %do.body.46

do.body.46:                                       ; preds = %do.end.45
  %28 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %28, 2
  %tobool47 = icmp ne i32 %and, 0
  br i1 %tobool47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %do.body.46
  %29 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %30 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %31 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %focus_display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %31, i32 0, i32 6
  %32 = load %struct._GimpDisplay*, %struct._GimpDisplay** %focus_display, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_tool_set_modifier_state, i32 0, i32 0), i32 803, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.14, i32 0, i32 0), %struct._GimpTool* %29, %struct._GimpDisplay* %30, %struct._GimpDisplay* %32)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.48, %do.body.46
  br label %do.end.50

do.end.50:                                        ; preds = %if.end.49
  br label %do.body.51

do.body.51:                                       ; preds = %do.end.50
  %33 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %34 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %focus_display52 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %34, i32 0, i32 6
  %35 = load %struct._GimpDisplay*, %struct._GimpDisplay** %focus_display52, align 8
  %cmp53 = icmp eq %struct._GimpDisplay* %33, %35
  br i1 %cmp53, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %do.body.51
  br label %if.end.56

if.else.55:                                       ; preds = %do.body.51
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_tool_set_modifier_state, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0))
  br label %return

if.end.56:                                        ; preds = %if.then.54
  br label %do.end.57

do.end.57:                                        ; preds = %if.end.56
  %36 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %modifier_state = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %36, i32 0, i32 7
  %37 = load i32, i32* %modifier_state, align 4
  %and58 = and i32 %37, 1
  %38 = load i32, i32* %state.addr, align 4
  %and59 = and i32 %38, 1
  %cmp60 = icmp ne i32 %and58, %and59
  br i1 %cmp60, label %if.then.61, label %if.end.64

if.then.61:                                       ; preds = %do.end.57
  %39 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %40 = load i32, i32* %state.addr, align 4
  %and62 = and i32 %40, 1
  %tobool63 = icmp ne i32 %and62, 0
  %cond = select i1 %tobool63, i32 1, i32 0
  %41 = load i32, i32* %state.addr, align 4
  %42 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_tool_modifier_key(%struct._GimpTool* %39, i32 1, i32 %cond, i32 %41, %struct._GimpDisplay* %42)
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.61, %do.end.57
  %43 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %modifier_state65 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %43, i32 0, i32 7
  %44 = load i32, i32* %modifier_state65, align 4
  %and66 = and i32 %44, 4
  %45 = load i32, i32* %state.addr, align 4
  %and67 = and i32 %45, 4
  %cmp68 = icmp ne i32 %and66, %and67
  br i1 %cmp68, label %if.then.69, label %if.end.73

if.then.69:                                       ; preds = %if.end.64
  %46 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %47 = load i32, i32* %state.addr, align 4
  %and70 = and i32 %47, 4
  %tobool71 = icmp ne i32 %and70, 0
  %cond72 = select i1 %tobool71, i32 1, i32 0
  %48 = load i32, i32* %state.addr, align 4
  %49 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_tool_modifier_key(%struct._GimpTool* %46, i32 4, i32 %cond72, i32 %48, %struct._GimpDisplay* %49)
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.69, %if.end.64
  %50 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %modifier_state74 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %50, i32 0, i32 7
  %51 = load i32, i32* %modifier_state74, align 4
  %and75 = and i32 %51, 8
  %52 = load i32, i32* %state.addr, align 4
  %and76 = and i32 %52, 8
  %cmp77 = icmp ne i32 %and75, %and76
  br i1 %cmp77, label %if.then.78, label %if.end.82

if.then.78:                                       ; preds = %if.end.73
  %53 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %54 = load i32, i32* %state.addr, align 4
  %and79 = and i32 %54, 8
  %tobool80 = icmp ne i32 %and79, 0
  %cond81 = select i1 %tobool80, i32 1, i32 0
  %55 = load i32, i32* %state.addr, align 4
  %56 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_tool_modifier_key(%struct._GimpTool* %53, i32 8, i32 %cond81, i32 %55, %struct._GimpDisplay* %56)
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.78, %if.end.73
  %57 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %modifier_state83 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %57, i32 0, i32 7
  %58 = load i32, i32* %modifier_state83, align 4
  %and84 = and i32 %58, 16
  %59 = load i32, i32* %state.addr, align 4
  %and85 = and i32 %59, 16
  %cmp86 = icmp ne i32 %and84, %and85
  br i1 %cmp86, label %if.then.87, label %if.end.91

if.then.87:                                       ; preds = %if.end.82
  %60 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %61 = load i32, i32* %state.addr, align 4
  %and88 = and i32 %61, 16
  %tobool89 = icmp ne i32 %and88, 0
  %cond90 = select i1 %tobool89, i32 1, i32 0
  %62 = load i32, i32* %state.addr, align 4
  %63 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_tool_modifier_key(%struct._GimpTool* %60, i32 16, i32 %cond90, i32 %62, %struct._GimpDisplay* %63)
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.87, %if.end.82
  %64 = load i32, i32* %state.addr, align 4
  %65 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %modifier_state92 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %65, i32 0, i32 7
  store i32 %64, i32* %modifier_state92, align 4
  br label %return

return:                                           ; preds = %if.end.91, %if.else.55, %if.else.43, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_tool_key_press(%struct._GimpTool* %tool, %struct._GdkEventKey* %kevent, %struct._GimpDisplay* %display) #3 {
entry:
  %retval = alloca i32, align 4
  %tool.addr = alloca %struct._GimpTool*, align 8
  %kevent.addr = alloca %struct._GdkEventKey*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GdkEventKey* %kevent, %struct._GdkEventKey** %kevent.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_tool_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_tool_key_press, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %14 = bitcast %struct._GimpDisplay* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_display_get_type() #8
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_tool_key_press, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %27 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %focus_display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %27, i32 0, i32 6
  %28 = load %struct._GimpDisplay*, %struct._GimpDisplay** %focus_display, align 8
  %cmp40 = icmp eq %struct._GimpDisplay* %26, %28
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %do.body.39
  br label %if.end.43

if.else.42:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_tool_key_press, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.43:                                        ; preds = %if.then.41
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  br label %do.body.45

do.body.45:                                       ; preds = %do.end.44
  %29 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %29, i32 0, i32 3
  %30 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  %call46 = call i32 @gimp_tool_control_is_active(%struct._GimpToolControl* %30)
  %cmp47 = icmp eq i32 %call46, 0
  br i1 %cmp47, label %if.then.48, label %if.else.49

if.then.48:                                       ; preds = %do.body.45
  br label %if.end.50

if.else.49:                                       ; preds = %do.body.45
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_tool_key_press, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.50:                                        ; preds = %if.then.48
  br label %do.end.51

do.end.51:                                        ; preds = %if.end.50
  %31 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %32 = bitcast %struct._GimpTool* %31 to %struct._GTypeInstance*
  %g_class52 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class52, align 8
  %34 = bitcast %struct._GTypeClass* %33 to %struct._GimpToolClass*
  %key_press = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %34, i32 0, i32 8
  %35 = load i32 (%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*)*, i32 (%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*)** %key_press, align 8
  %36 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %37 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %38 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call53 = call i32 %35(%struct._GimpTool* %36, %struct._GdkEventKey* %37, %struct._GimpDisplay* %38)
  store i32 %call53, i32* %retval
  br label %return

return:                                           ; preds = %do.end.51, %if.else.49, %if.else.42, %if.else.36, %if.else.9
  %39 = load i32, i32* %retval
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define i32 @gimp_tool_key_release(%struct._GimpTool* %tool, %struct._GdkEventKey* %kevent, %struct._GimpDisplay* %display) #3 {
entry:
  %retval = alloca i32, align 4
  %tool.addr = alloca %struct._GimpTool*, align 8
  %kevent.addr = alloca %struct._GdkEventKey*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GdkEventKey* %kevent, %struct._GdkEventKey** %kevent.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_tool_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_tool_key_release, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %14 = bitcast %struct._GimpDisplay* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_display_get_type() #8
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_tool_key_release, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %27 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %focus_display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %27, i32 0, i32 6
  %28 = load %struct._GimpDisplay*, %struct._GimpDisplay** %focus_display, align 8
  %cmp40 = icmp eq %struct._GimpDisplay* %26, %28
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %do.body.39
  br label %if.end.43

if.else.42:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_tool_key_release, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.43:                                        ; preds = %if.then.41
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  br label %do.body.45

do.body.45:                                       ; preds = %do.end.44
  %29 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %29, i32 0, i32 3
  %30 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  %call46 = call i32 @gimp_tool_control_is_active(%struct._GimpToolControl* %30)
  %cmp47 = icmp eq i32 %call46, 0
  br i1 %cmp47, label %if.then.48, label %if.else.49

if.then.48:                                       ; preds = %do.body.45
  br label %if.end.50

if.else.49:                                       ; preds = %do.body.45
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_tool_key_release, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.50:                                        ; preds = %if.then.48
  br label %do.end.51

do.end.51:                                        ; preds = %if.end.50
  %31 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %32 = bitcast %struct._GimpTool* %31 to %struct._GTypeInstance*
  %g_class52 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class52, align 8
  %34 = bitcast %struct._GTypeClass* %33 to %struct._GimpToolClass*
  %key_release = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %34, i32 0, i32 9
  %35 = load i32 (%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*)*, i32 (%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*)** %key_release, align 8
  %36 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %37 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %38 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call53 = call i32 %35(%struct._GimpTool* %36, %struct._GdkEventKey* %37, %struct._GimpDisplay* %38)
  store i32 %call53, i32* %retval
  br label %return

return:                                           ; preds = %do.end.51, %if.else.49, %if.else.42, %if.else.36, %if.else.9
  %39 = load i32, i32* %retval
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_modifier_key(%struct._GimpTool* %tool, i32 %key, i32 %press, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %key.addr = alloca i32, align 4
  %press.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store i32 %key, i32* %key.addr, align 4
  store i32 %press, i32* %press.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_tool_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_tool_modifier_key, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %14 = bitcast %struct._GimpDisplay* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_display_get_type() #8
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_tool_modifier_key, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %27 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %focus_display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %27, i32 0, i32 6
  %28 = load %struct._GimpDisplay*, %struct._GimpDisplay** %focus_display, align 8
  %cmp40 = icmp eq %struct._GimpDisplay* %26, %28
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %do.body.39
  br label %if.end.43

if.else.42:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_tool_modifier_key, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0))
  br label %return

if.end.43:                                        ; preds = %if.then.41
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  %29 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %30 = bitcast %struct._GimpTool* %29 to %struct._GTypeInstance*
  %g_class45 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %30, i32 0, i32 0
  %31 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class45, align 8
  %32 = bitcast %struct._GTypeClass* %31 to %struct._GimpToolClass*
  %modifier_key = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %32, i32 0, i32 10
  %33 = load void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)** %modifier_key, align 8
  %34 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %35 = load i32, i32* %key.addr, align 4
  %36 = load i32, i32* %press.addr, align 4
  %37 = load i32, i32* %state.addr, align 4
  %38 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %33(%struct._GimpTool* %34, i32 %35, i32 %36, i32 %37, %struct._GimpDisplay* %38)
  br label %return

return:                                           ; preds = %do.end.44, %if.else.42, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_active_modifier_key(%struct._GimpTool* %tool, i32 %key, i32 %press, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %key.addr = alloca i32, align 4
  %press.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store i32 %key, i32* %key.addr, align 4
  store i32 %press, i32* %press.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_tool_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_tool_active_modifier_key, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %14 = bitcast %struct._GimpDisplay* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_display_get_type() #8
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_tool_active_modifier_key, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %27 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %focus_display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %27, i32 0, i32 6
  %28 = load %struct._GimpDisplay*, %struct._GimpDisplay** %focus_display, align 8
  %cmp40 = icmp eq %struct._GimpDisplay* %26, %28
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %do.body.39
  br label %if.end.43

if.else.42:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_tool_active_modifier_key, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0))
  br label %return

if.end.43:                                        ; preds = %if.then.41
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  %29 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %30 = bitcast %struct._GimpTool* %29 to %struct._GTypeInstance*
  %g_class45 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %30, i32 0, i32 0
  %31 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class45, align 8
  %32 = bitcast %struct._GTypeClass* %31 to %struct._GimpToolClass*
  %active_modifier_key = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %32, i32 0, i32 11
  %33 = load void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)** %active_modifier_key, align 8
  %34 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %35 = load i32, i32* %key.addr, align 4
  %36 = load i32, i32* %press.addr, align 4
  %37 = load i32, i32* %state.addr, align 4
  %38 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %33(%struct._GimpTool* %34, i32 %35, i32 %36, i32 %37, %struct._GimpDisplay* %38)
  br label %return

return:                                           ; preds = %do.end.44, %if.else.42, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_tool_oper_update(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %state, i32 %proximity, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %state.addr = alloca i32, align 4
  %proximity.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst19 = alloca %struct._GTypeInstance*, align 8
  %__t21 = alloca i64, align 8
  %__r24 = alloca i32, align 4
  %tmp39 = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store i32 %proximity, i32* %proximity.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_tool_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_tool_oper_update, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.62

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %cmp12 = icmp ne %struct._GimpCoords* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_tool_oper_update, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.62

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %15 = bitcast %struct._GimpDisplay* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst19, align 8
  %call22 = call i64 @gimp_display_get_type() #8
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
  %call36 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_tool_oper_update, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.62

if.end.43:                                        ; preds = %if.then.41
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  br label %do.body.45

do.body.45:                                       ; preds = %do.end.44
  %27 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %27, i32 0, i32 3
  %28 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  %call46 = call i32 @gimp_tool_control_is_active(%struct._GimpToolControl* %28)
  %cmp47 = icmp eq i32 %call46, 0
  br i1 %cmp47, label %if.then.48, label %if.else.49

if.then.48:                                       ; preds = %do.body.45
  br label %if.end.50

if.else.49:                                       ; preds = %do.body.45
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_tool_oper_update, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.62

if.end.50:                                        ; preds = %if.then.48
  br label %do.end.51

do.end.51:                                        ; preds = %if.end.50
  %29 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %30 = bitcast %struct._GimpTool* %29 to %struct._GTypeInstance*
  %g_class52 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %30, i32 0, i32 0
  %31 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class52, align 8
  %32 = bitcast %struct._GTypeClass* %31 to %struct._GimpToolClass*
  %oper_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %32, i32 0, i32 12
  %33 = load void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %oper_update, align 8
  %34 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %35 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %36 = load i32, i32* %state.addr, align 4
  %37 = load i32, i32* %proximity.addr, align 4
  %38 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %33(%struct._GimpTool* %34, %struct._GimpCoords* %35, i32 %36, i32 %37, %struct._GimpDisplay* %38)
  %39 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call53 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %39)
  %call54 = call i32 @gimp_image_is_empty(%struct._GimpImage* %call53)
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %land.lhs.true.56, label %if.end.62

land.lhs.true.56:                                 ; preds = %do.end.51
  %40 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control57 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %40, i32 0, i32 3
  %41 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control57, align 8
  %call58 = call i32 @gimp_tool_control_get_handle_empty_image(%struct._GimpToolControl* %41)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.end.62, label %if.then.60

if.then.60:                                       ; preds = %land.lhs.true.56
  %42 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %43 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call61 = call i8* @gettext(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.16, i32 0, i32 0)) #5
  call void (%struct._GimpTool*, %struct._GimpDisplay*, i8*, ...) @gimp_tool_replace_status(%struct._GimpTool* %42, %struct._GimpDisplay* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i8* %call61)
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.9, %if.else.14, %if.else.42, %if.else.49, %if.then.60, %land.lhs.true.56, %do.end.51
  ret void
}

declare i32 @gimp_image_is_empty(%struct._GimpImage*) #1

declare i32 @gimp_tool_control_get_handle_empty_image(%struct._GimpToolControl*) #1

; Function Attrs: nounwind uwtable
define void @gimp_tool_replace_status(%struct._GimpTool* %tool, %struct._GimpDisplay* %display, i8* %format, ...) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %format.addr = alloca i8*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %stock_id = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_tool_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_tool_replace_status, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %14 = bitcast %struct._GimpDisplay* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_display_get_type() #8
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_tool_replace_status, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load i8*, i8** %format.addr, align 8
  %cmp40 = icmp ne i8* %26, null
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %do.body.39
  br label %if.end.43

if.else.42:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_tool_replace_status, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0))
  br label %return

if.end.43:                                        ; preds = %if.then.41
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  %27 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call45 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %27)
  store %struct._GimpDisplayShell* %call45, %struct._GimpDisplayShell** %shell, align 8
  %28 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %tool_info = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %28, i32 0, i32 1
  %29 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %30 = bitcast %struct._GimpToolInfo* %29 to %struct._GTypeInstance*
  %call46 = call i64 @gimp_viewable_get_type() #8
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call46)
  %31 = bitcast %struct._GTypeInstance* %call47 to %struct._GimpViewable*
  %call48 = call i8* @gimp_viewable_get_stock_id(%struct._GimpViewable* %31)
  store i8* %call48, i8** %stock_id, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay49 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay49)
  %32 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %call50 = call %struct._GimpStatusbar* @gimp_display_shell_get_statusbar(%struct._GimpDisplayShell* %32)
  %33 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %34 = bitcast %struct._GimpTool* %33 to %struct._GTypeInstance*
  %g_class51 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %34, i32 0, i32 0
  %35 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class51, align 8
  %g_type52 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %35, i32 0, i32 0
  %36 = load i64, i64* %g_type52, align 8
  %call53 = call i8* @g_type_name(i64 %36)
  %37 = load i8*, i8** %stock_id, align 8
  %38 = load i8*, i8** %format.addr, align 8
  %arraydecay54 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @gimp_statusbar_replace_valist(%struct._GimpStatusbar* %call50, i8* %call53, i8* %37, i8* %38, %struct.__va_list_tag* %arraydecay54)
  %arraydecay55 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay5556 = bitcast %struct.__va_list_tag* %arraydecay55 to i8*
  call void @llvm.va_end(i8* %arraydecay5556)
  %39 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %status_displays = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %39, i32 0, i32 14
  %40 = load %struct._GList*, %struct._GList** %status_displays, align 8
  %41 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %42 = bitcast %struct._GimpDisplay* %41 to i8*
  %call57 = call %struct._GList* @g_list_remove(%struct._GList* %40, i8* %42)
  %43 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %status_displays58 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %43, i32 0, i32 14
  store %struct._GList* %call57, %struct._GList** %status_displays58, align 8
  %44 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %status_displays59 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %44, i32 0, i32 14
  %45 = load %struct._GList*, %struct._GList** %status_displays59, align 8
  %46 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %47 = bitcast %struct._GimpDisplay* %46 to i8*
  %call60 = call %struct._GList* @g_list_prepend(%struct._GList* %45, i8* %47)
  %48 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %status_displays61 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %48, i32 0, i32 14
  store %struct._GList* %call60, %struct._GList** %status_displays61, align 8
  br label %return

return:                                           ; preds = %do.end.44, %if.else.42, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind
declare i8* @gettext(i8*) #6

; Function Attrs: nounwind uwtable
define void @gimp_tool_cursor_update(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst19 = alloca %struct._GTypeInstance*, align 8
  %__t21 = alloca i64, align 8
  %__r24 = alloca i32, align 4
  %tmp39 = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_tool_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_tool_cursor_update, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %cmp12 = icmp ne %struct._GimpCoords* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_tool_cursor_update, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %15 = bitcast %struct._GimpDisplay* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst19, align 8
  %call22 = call i64 @gimp_display_get_type() #8
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
  %call36 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_tool_cursor_update, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.43:                                        ; preds = %if.then.41
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  br label %do.body.45

do.body.45:                                       ; preds = %do.end.44
  %27 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %27, i32 0, i32 3
  %28 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  %call46 = call i32 @gimp_tool_control_is_active(%struct._GimpToolControl* %28)
  %cmp47 = icmp eq i32 %call46, 0
  br i1 %cmp47, label %if.then.48, label %if.else.49

if.then.48:                                       ; preds = %do.body.45
  br label %if.end.50

if.else.49:                                       ; preds = %do.body.45
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_tool_cursor_update, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i32 0, i32 0))
  br label %return

if.end.50:                                        ; preds = %if.then.48
  br label %do.end.51

do.end.51:                                        ; preds = %if.end.50
  %29 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %30 = bitcast %struct._GimpTool* %29 to %struct._GTypeInstance*
  %g_class52 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %30, i32 0, i32 0
  %31 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class52, align 8
  %32 = bitcast %struct._GTypeClass* %31 to %struct._GimpToolClass*
  %cursor_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %32, i32 0, i32 13
  %33 = load void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)** %cursor_update, align 8
  %34 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %35 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %36 = load i32, i32* %state.addr, align 4
  %37 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %33(%struct._GimpTool* %34, %struct._GimpCoords* %35, i32 %36, %struct._GimpDisplay* %37)
  br label %return

return:                                           ; preds = %do.end.51, %if.else.49, %if.else.42, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GimpUIManager* @gimp_tool_get_popup(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %state, %struct._GimpDisplay* %display, i8** %ui_path) #3 {
entry:
  %retval = alloca %struct._GimpUIManager*, align 8
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %ui_path.addr = alloca i8**, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst19 = alloca %struct._GTypeInstance*, align 8
  %__t21 = alloca i64, align 8
  %__r24 = alloca i32, align 4
  %tmp39 = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store i8** %ui_path, i8*** %ui_path.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_tool_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_tool_get_popup, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpUIManager* null, %struct._GimpUIManager** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %cmp12 = icmp ne %struct._GimpCoords* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_tool_get_popup, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GimpUIManager* null, %struct._GimpUIManager** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %15 = bitcast %struct._GimpDisplay* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst19, align 8
  %call22 = call i64 @gimp_display_get_type() #8
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
  %call36 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_tool_get_popup, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GimpUIManager* null, %struct._GimpUIManager** %retval
  br label %return

if.end.43:                                        ; preds = %if.then.41
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  br label %do.body.45

do.body.45:                                       ; preds = %do.end.44
  %27 = load i8**, i8*** %ui_path.addr, align 8
  %cmp46 = icmp ne i8** %27, null
  br i1 %cmp46, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %do.body.45
  br label %if.end.49

if.else.48:                                       ; preds = %do.body.45
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_tool_get_popup, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0))
  store %struct._GimpUIManager* null, %struct._GimpUIManager** %retval
  br label %return

if.end.49:                                        ; preds = %if.then.47
  br label %do.end.50

do.end.50:                                        ; preds = %if.end.49
  %28 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %29 = bitcast %struct._GimpTool* %28 to %struct._GTypeInstance*
  %g_class51 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %29, i32 0, i32 0
  %30 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class51, align 8
  %31 = bitcast %struct._GTypeClass* %30 to %struct._GimpToolClass*
  %get_popup = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %31, i32 0, i32 14
  %32 = load %struct._GimpUIManager* (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*, i8**)*, %struct._GimpUIManager* (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*, i8**)** %get_popup, align 8
  %33 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %34 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %35 = load i32, i32* %state.addr, align 4
  %36 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %37 = load i8**, i8*** %ui_path.addr, align 8
  %call52 = call %struct._GimpUIManager* %32(%struct._GimpTool* %33, %struct._GimpCoords* %34, i32 %35, %struct._GimpDisplay* %36, i8** %37)
  store %struct._GimpUIManager* %call52, %struct._GimpUIManager** %retval
  br label %return

return:                                           ; preds = %do.end.50, %if.else.48, %if.else.42, %if.else.14, %if.else.9
  %38 = load %struct._GimpUIManager*, %struct._GimpUIManager** %retval
  ret %struct._GimpUIManager* %38
}

; Function Attrs: nounwind uwtable
define void @gimp_tool_push_status(%struct._GimpTool* %tool, %struct._GimpDisplay* %display, i8* %format, ...) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %format.addr = alloca i8*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %stock_id = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_tool_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_tool_push_status, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %14 = bitcast %struct._GimpDisplay* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_display_get_type() #8
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_tool_push_status, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load i8*, i8** %format.addr, align 8
  %cmp40 = icmp ne i8* %26, null
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %do.body.39
  br label %if.end.43

if.else.42:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_tool_push_status, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0))
  br label %return

if.end.43:                                        ; preds = %if.then.41
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  %27 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call45 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %27)
  store %struct._GimpDisplayShell* %call45, %struct._GimpDisplayShell** %shell, align 8
  %28 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %tool_info = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %28, i32 0, i32 1
  %29 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %30 = bitcast %struct._GimpToolInfo* %29 to %struct._GTypeInstance*
  %call46 = call i64 @gimp_viewable_get_type() #8
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call46)
  %31 = bitcast %struct._GTypeInstance* %call47 to %struct._GimpViewable*
  %call48 = call i8* @gimp_viewable_get_stock_id(%struct._GimpViewable* %31)
  store i8* %call48, i8** %stock_id, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay49 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay49)
  %32 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %call50 = call %struct._GimpStatusbar* @gimp_display_shell_get_statusbar(%struct._GimpDisplayShell* %32)
  %33 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %34 = bitcast %struct._GimpTool* %33 to %struct._GTypeInstance*
  %g_class51 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %34, i32 0, i32 0
  %35 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class51, align 8
  %g_type52 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %35, i32 0, i32 0
  %36 = load i64, i64* %g_type52, align 8
  %call53 = call i8* @g_type_name(i64 %36)
  %37 = load i8*, i8** %stock_id, align 8
  %38 = load i8*, i8** %format.addr, align 8
  %arraydecay54 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @gimp_statusbar_push_valist(%struct._GimpStatusbar* %call50, i8* %call53, i8* %37, i8* %38, %struct.__va_list_tag* %arraydecay54)
  %arraydecay55 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay5556 = bitcast %struct.__va_list_tag* %arraydecay55 to i8*
  call void @llvm.va_end(i8* %arraydecay5556)
  %39 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %status_displays = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %39, i32 0, i32 14
  %40 = load %struct._GList*, %struct._GList** %status_displays, align 8
  %41 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %42 = bitcast %struct._GimpDisplay* %41 to i8*
  %call57 = call %struct._GList* @g_list_remove(%struct._GList* %40, i8* %42)
  %43 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %status_displays58 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %43, i32 0, i32 14
  store %struct._GList* %call57, %struct._GList** %status_displays58, align 8
  %44 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %status_displays59 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %44, i32 0, i32 14
  %45 = load %struct._GList*, %struct._GList** %status_displays59, align 8
  %46 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %47 = bitcast %struct._GimpDisplay* %46 to i8*
  %call60 = call %struct._GList* @g_list_prepend(%struct._GList* %45, i8* %47)
  %48 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %status_displays61 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %48, i32 0, i32 14
  store %struct._GList* %call60, %struct._GList** %status_displays61, align 8
  br label %return

return:                                           ; preds = %do.end.44, %if.else.42, %if.else.36, %if.else.9
  ret void
}

declare %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay*) #1

declare i8* @gimp_viewable_get_stock_id(%struct._GimpViewable*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @gimp_statusbar_push_valist(%struct._GimpStatusbar*, i8*, i8*, i8*, %struct.__va_list_tag*) #1

declare %struct._GimpStatusbar* @gimp_display_shell_get_statusbar(%struct._GimpDisplayShell*) #1

declare i8* @g_type_name(i64) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare %struct._GList* @g_list_remove(%struct._GList*, i8*) #1

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_tool_push_status_coords(%struct._GimpTool* %tool, %struct._GimpDisplay* %display, i32 %precision, i8* %title, double %x, i8* %separator, double %y, i8* %help) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %precision.addr = alloca i32, align 4
  %title.addr = alloca i8*, align 8
  %x.addr = alloca double, align 8
  %separator.addr = alloca i8*, align 8
  %y.addr = alloca double, align 8
  %help.addr = alloca i8*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %stock_id = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store i32 %precision, i32* %precision.addr, align 4
  store i8* %title, i8** %title.addr, align 8
  store double %x, double* %x.addr, align 8
  store i8* %separator, i8** %separator.addr, align 8
  store double %y, double* %y.addr, align 8
  store i8* %help, i8** %help.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_tool_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_tool_push_status_coords, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %14 = bitcast %struct._GimpDisplay* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_display_get_type() #8
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_tool_push_status_coords, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call39 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %26)
  store %struct._GimpDisplayShell* %call39, %struct._GimpDisplayShell** %shell, align 8
  %27 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %tool_info = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %27, i32 0, i32 1
  %28 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %29 = bitcast %struct._GimpToolInfo* %28 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_viewable_get_type() #8
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call40)
  %30 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpViewable*
  %call42 = call i8* @gimp_viewable_get_stock_id(%struct._GimpViewable* %30)
  store i8* %call42, i8** %stock_id, align 8
  %31 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %call43 = call %struct._GimpStatusbar* @gimp_display_shell_get_statusbar(%struct._GimpDisplayShell* %31)
  %32 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %33 = bitcast %struct._GimpTool* %32 to %struct._GTypeInstance*
  %g_class44 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %33, i32 0, i32 0
  %34 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class44, align 8
  %g_type45 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %34, i32 0, i32 0
  %35 = load i64, i64* %g_type45, align 8
  %call46 = call i8* @g_type_name(i64 %35)
  %36 = load i8*, i8** %stock_id, align 8
  %37 = load i32, i32* %precision.addr, align 4
  %38 = load i8*, i8** %title.addr, align 8
  %39 = load double, double* %x.addr, align 8
  %40 = load i8*, i8** %separator.addr, align 8
  %41 = load double, double* %y.addr, align 8
  %42 = load i8*, i8** %help.addr, align 8
  call void @gimp_statusbar_push_coords(%struct._GimpStatusbar* %call43, i8* %call46, i8* %36, i32 %37, i8* %38, double %39, i8* %40, double %41, i8* %42)
  %43 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %status_displays = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %43, i32 0, i32 14
  %44 = load %struct._GList*, %struct._GList** %status_displays, align 8
  %45 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %46 = bitcast %struct._GimpDisplay* %45 to i8*
  %call47 = call %struct._GList* @g_list_remove(%struct._GList* %44, i8* %46)
  %47 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %status_displays48 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %47, i32 0, i32 14
  store %struct._GList* %call47, %struct._GList** %status_displays48, align 8
  %48 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %status_displays49 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %48, i32 0, i32 14
  %49 = load %struct._GList*, %struct._GList** %status_displays49, align 8
  %50 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %51 = bitcast %struct._GimpDisplay* %50 to i8*
  %call50 = call %struct._GList* @g_list_prepend(%struct._GList* %49, i8* %51)
  %52 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %status_displays51 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %52, i32 0, i32 14
  store %struct._GList* %call50, %struct._GList** %status_displays51, align 8
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  ret void
}

declare void @gimp_statusbar_push_coords(%struct._GimpStatusbar*, i8*, i8*, i32, i8*, double, i8*, double, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_tool_push_status_length(%struct._GimpTool* %tool, %struct._GimpDisplay* %display, i8* %title, i32 %axis, double %value, i8* %help) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %title.addr = alloca i8*, align 8
  %axis.addr = alloca i32, align 4
  %value.addr = alloca double, align 8
  %help.addr = alloca i8*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %stock_id = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store i8* %title, i8** %title.addr, align 8
  store i32 %axis, i32* %axis.addr, align 4
  store double %value, double* %value.addr, align 8
  store i8* %help, i8** %help.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_tool_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_tool_push_status_length, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %14 = bitcast %struct._GimpDisplay* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_display_get_type() #8
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_tool_push_status_length, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call39 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %26)
  store %struct._GimpDisplayShell* %call39, %struct._GimpDisplayShell** %shell, align 8
  %27 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %tool_info = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %27, i32 0, i32 1
  %28 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %29 = bitcast %struct._GimpToolInfo* %28 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_viewable_get_type() #8
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call40)
  %30 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpViewable*
  %call42 = call i8* @gimp_viewable_get_stock_id(%struct._GimpViewable* %30)
  store i8* %call42, i8** %stock_id, align 8
  %31 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %call43 = call %struct._GimpStatusbar* @gimp_display_shell_get_statusbar(%struct._GimpDisplayShell* %31)
  %32 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %33 = bitcast %struct._GimpTool* %32 to %struct._GTypeInstance*
  %g_class44 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %33, i32 0, i32 0
  %34 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class44, align 8
  %g_type45 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %34, i32 0, i32 0
  %35 = load i64, i64* %g_type45, align 8
  %call46 = call i8* @g_type_name(i64 %35)
  %36 = load i8*, i8** %stock_id, align 8
  %37 = load i8*, i8** %title.addr, align 8
  %38 = load i32, i32* %axis.addr, align 4
  %39 = load double, double* %value.addr, align 8
  %40 = load i8*, i8** %help.addr, align 8
  call void @gimp_statusbar_push_length(%struct._GimpStatusbar* %call43, i8* %call46, i8* %36, i8* %37, i32 %38, double %39, i8* %40)
  %41 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %status_displays = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %41, i32 0, i32 14
  %42 = load %struct._GList*, %struct._GList** %status_displays, align 8
  %43 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %44 = bitcast %struct._GimpDisplay* %43 to i8*
  %call47 = call %struct._GList* @g_list_remove(%struct._GList* %42, i8* %44)
  %45 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %status_displays48 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %45, i32 0, i32 14
  store %struct._GList* %call47, %struct._GList** %status_displays48, align 8
  %46 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %status_displays49 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %46, i32 0, i32 14
  %47 = load %struct._GList*, %struct._GList** %status_displays49, align 8
  %48 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %49 = bitcast %struct._GimpDisplay* %48 to i8*
  %call50 = call %struct._GList* @g_list_prepend(%struct._GList* %47, i8* %49)
  %50 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %status_displays51 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %50, i32 0, i32 14
  store %struct._GList* %call50, %struct._GList** %status_displays51, align 8
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  ret void
}

declare void @gimp_statusbar_push_length(%struct._GimpStatusbar*, i8*, i8*, i8*, i32, double, i8*) #1

declare void @gimp_statusbar_replace_valist(%struct._GimpStatusbar*, i8*, i8*, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind uwtable
define void @gimp_tool_pop_status(%struct._GimpTool* %tool, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_tool_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_tool_pop_status, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %14 = bitcast %struct._GimpDisplay* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_display_get_type() #8
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_tool_pop_status, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call39 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %26)
  store %struct._GimpDisplayShell* %call39, %struct._GimpDisplayShell** %shell, align 8
  %27 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %call40 = call %struct._GimpStatusbar* @gimp_display_shell_get_statusbar(%struct._GimpDisplayShell* %27)
  %28 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %29 = bitcast %struct._GimpTool* %28 to %struct._GTypeInstance*
  %g_class41 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %29, i32 0, i32 0
  %30 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class41, align 8
  %g_type42 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %30, i32 0, i32 0
  %31 = load i64, i64* %g_type42, align 8
  %call43 = call i8* @g_type_name(i64 %31)
  call void @gimp_statusbar_pop(%struct._GimpStatusbar* %call40, i8* %call43)
  %32 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %status_displays = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %32, i32 0, i32 14
  %33 = load %struct._GList*, %struct._GList** %status_displays, align 8
  %34 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %35 = bitcast %struct._GimpDisplay* %34 to i8*
  %call44 = call %struct._GList* @g_list_remove(%struct._GList* %33, i8* %35)
  %36 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %status_displays45 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %36, i32 0, i32 14
  store %struct._GList* %call44, %struct._GList** %status_displays45, align 8
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  ret void
}

declare void @gimp_statusbar_pop(%struct._GimpStatusbar*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_tool_message(%struct._GimpTool* %tool, %struct._GimpDisplay* %display, i8* %format, ...) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_tool_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_tool_message, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %14 = bitcast %struct._GimpDisplay* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_display_get_type() #8
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_tool_message, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load i8*, i8** %format.addr, align 8
  %cmp40 = icmp ne i8* %26, null
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %do.body.39
  br label %if.end.43

if.else.42:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_tool_message, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0))
  br label %return

if.end.43:                                        ; preds = %if.then.41
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay45 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay45)
  %27 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %27, i32 0, i32 1
  %28 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %29 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %30 = bitcast %struct._GimpDisplay* %29 to %struct._GTypeInstance*
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 80)
  %31 = bitcast %struct._GTypeInstance* %call46 to %struct._GObject*
  %32 = load i8*, i8** %format.addr, align 8
  %arraydecay47 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @gimp_message_valist(%struct._Gimp* %28, %struct._GObject* %31, i32 1, i8* %32, %struct.__va_list_tag* %arraydecay47)
  %arraydecay48 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay4849 = bitcast %struct.__va_list_tag* %arraydecay48 to i8*
  call void @llvm.va_end(i8* %arraydecay4849)
  br label %return

return:                                           ; preds = %do.end.44, %if.else.42, %if.else.36, %if.else.9
  ret void
}

declare void @gimp_message_valist(%struct._Gimp*, %struct._GObject*, i32, i8*, %struct.__va_list_tag*) #1

declare void @gimp_message_literal(%struct._Gimp*, %struct._GObject*, i32, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_tool_set_cursor(%struct._GimpTool* %tool, %struct._GimpDisplay* %display, i32 %cursor, i32 %tool_cursor, i32 %modifier) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %cursor.addr = alloca i32, align 4
  %tool_cursor.addr = alloca i32, align 4
  %modifier.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store i32 %cursor, i32* %cursor.addr, align 4
  store i32 %tool_cursor, i32* %tool_cursor.addr, align 4
  store i32 %modifier, i32* %modifier.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_tool_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_tool_set_cursor, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %14 = bitcast %struct._GimpDisplay* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_display_get_type() #8
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_tool_set_cursor, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call39 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %26)
  %27 = load i32, i32* %cursor.addr, align 4
  %28 = load i32, i32* %tool_cursor.addr, align 4
  %29 = load i32, i32* %modifier.addr, align 4
  call void @gimp_display_shell_set_cursor(%struct._GimpDisplayShell* %call39, i32 %27, i32 %28, i32 %29)
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  ret void
}

declare void @gimp_display_shell_set_cursor(%struct._GimpDisplayShell*, i32, i32, i32) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_class_init(%struct._GimpToolClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpToolClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpToolClass* %klass, %struct._GimpToolClass** %klass.addr, align 8
  %0 = load %struct._GimpToolClass*, %struct._GimpToolClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpToolClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_tool_constructed, void (%struct._GObject*)** %constructed, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_tool_dispose, void (%struct._GObject*)** %dispose, align 8
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_tool_finalize, void (%struct._GObject*)** %finalize, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_tool_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_tool_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %8 = load %struct._GimpToolClass*, %struct._GimpToolClass** %klass.addr, align 8
  %has_display = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %8, i32 0, i32 1
  store i32 (%struct._GimpTool*, %struct._GimpDisplay*)* @gimp_tool_real_has_display, i32 (%struct._GimpTool*, %struct._GimpDisplay*)** %has_display, align 8
  %9 = load %struct._GimpToolClass*, %struct._GimpToolClass** %klass.addr, align 8
  %has_image = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %9, i32 0, i32 2
  store %struct._GimpDisplay* (%struct._GimpTool*, %struct._GimpImage*)* @gimp_tool_real_has_image, %struct._GimpDisplay* (%struct._GimpTool*, %struct._GimpImage*)** %has_image, align 8
  %10 = load %struct._GimpToolClass*, %struct._GimpToolClass** %klass.addr, align 8
  %initialize = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %10, i32 0, i32 3
  store i32 (%struct._GimpTool*, %struct._GimpDisplay*, %struct._GError**)* @gimp_tool_real_initialize, i32 (%struct._GimpTool*, %struct._GimpDisplay*, %struct._GError**)** %initialize, align 8
  %11 = load %struct._GimpToolClass*, %struct._GimpToolClass** %klass.addr, align 8
  %control = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %11, i32 0, i32 4
  store void (%struct._GimpTool*, i32, %struct._GimpDisplay*)* @gimp_tool_real_control, void (%struct._GimpTool*, i32, %struct._GimpDisplay*)** %control, align 8
  %12 = load %struct._GimpToolClass*, %struct._GimpToolClass** %klass.addr, align 8
  %button_press = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %12, i32 0, i32 5
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_tool_real_button_press, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)** %button_press, align 8
  %13 = load %struct._GimpToolClass*, %struct._GimpToolClass** %klass.addr, align 8
  %button_release = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %13, i32 0, i32 6
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_tool_real_button_release, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)** %button_release, align 8
  %14 = load %struct._GimpToolClass*, %struct._GimpToolClass** %klass.addr, align 8
  %motion = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %14, i32 0, i32 7
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)* @gimp_tool_real_motion, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %motion, align 8
  %15 = load %struct._GimpToolClass*, %struct._GimpToolClass** %klass.addr, align 8
  %key_press = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %15, i32 0, i32 8
  store i32 (%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*)* @gimp_tool_real_key_press, i32 (%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*)** %key_press, align 8
  %16 = load %struct._GimpToolClass*, %struct._GimpToolClass** %klass.addr, align 8
  %key_release = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %16, i32 0, i32 9
  store i32 (%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*)* @gimp_tool_real_key_release, i32 (%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*)** %key_release, align 8
  %17 = load %struct._GimpToolClass*, %struct._GimpToolClass** %klass.addr, align 8
  %modifier_key = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %17, i32 0, i32 10
  store void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_tool_real_modifier_key, void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)** %modifier_key, align 8
  %18 = load %struct._GimpToolClass*, %struct._GimpToolClass** %klass.addr, align 8
  %active_modifier_key = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %18, i32 0, i32 11
  store void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_tool_real_active_modifier_key, void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)** %active_modifier_key, align 8
  %19 = load %struct._GimpToolClass*, %struct._GimpToolClass** %klass.addr, align 8
  %oper_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %19, i32 0, i32 12
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)* @gimp_tool_real_oper_update, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %oper_update, align 8
  %20 = load %struct._GimpToolClass*, %struct._GimpToolClass** %klass.addr, align 8
  %cursor_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %20, i32 0, i32 13
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)* @gimp_tool_real_cursor_update, void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)** %cursor_update, align 8
  %21 = load %struct._GimpToolClass*, %struct._GimpToolClass** %klass.addr, align 8
  %get_popup = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %21, i32 0, i32 14
  store %struct._GimpUIManager* (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*, i8**)* @gimp_tool_real_get_popup, %struct._GimpUIManager* (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*, i8**)** %get_popup, align 8
  %22 = load %struct._GimpToolClass*, %struct._GimpToolClass** %klass.addr, align 8
  %options_notify = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %22, i32 0, i32 15
  store void (%struct._GimpTool*, %struct._GimpToolOptions*, %struct._GParamSpec*)* @gimp_tool_real_options_notify, void (%struct._GimpTool*, %struct._GimpToolOptions*, %struct._GParamSpec*)** %options_notify, align 8
  %23 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call1 = call i64 @gimp_tool_info_get_type() #8
  %call2 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* null, i8* null, i64 %call1, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %23, i32 1, %struct._GParamSpec* %call2)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load i8*, i8** @gimp_tool_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 9
  %6 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_tool_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 80)
  %9 = bitcast %struct._GTypeClass* %call3 to %struct._GObjectClass*
  %constructed4 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  %10 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed4, align 8
  %11 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %10(%struct._GObject* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %12 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %tool_info = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %12, i32 0, i32 1
  %13 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %14 = bitcast %struct._GimpToolInfo* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst, align 8
  %call5 = call i64 @gimp_tool_info_get_type() #8
  store i64 %call5, i64* %__t, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool6 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool6, label %if.else, label %if.then.7

if.then.7:                                        ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.14

if.else:                                          ; preds = %do.body
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool8 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool8, label %land.lhs.true, label %if.else.11

land.lhs.true:                                    ; preds = %if.else
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class9 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class9, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type, align 8
  %21 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %20, %21
  br i1 %cmp, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.13

if.else.11:                                       ; preds = %land.lhs.true, %if.else
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %23 = load i64, i64* %__t, align 8
  %call12 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #9
  store i32 %call12, i32* %__r, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.11, %if.then.10
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then.7
  %24 = load i32, i32* %__r, align 4
  store i32 %24, i32* %tmp
  %25 = load i32, i32* %tmp
  %tobool15 = icmp ne i32 %25, 0
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %if.end.14
  br label %if.end.18

if.else.17:                                       ; preds = %if.end.14
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i32 198, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_tool_constructed, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0)) #10
  unreachable

if.end.18:                                        ; preds = %if.then.16
  br label %do.end

do.end:                                           ; preds = %if.end.18
  %26 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %call19 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %26)
  %27 = bitcast %struct._GimpToolOptions* %call19 to i8*
  %28 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %29 = bitcast %struct._GimpTool* %28 to i8*
  %call20 = call i64 @g_signal_connect_object(i8* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), void ()* bitcast (void (%struct._GimpToolOptions*, %struct._GParamSpec*, %struct._GimpTool*)* @gimp_tool_options_notify to void ()*), i8* %29, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %4 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %4, i32 0, i32 4
  %5 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  call void @gimp_tool_control(%struct._GimpTool* %3, i32 2, %struct._GimpDisplay* %5)
  %6 = load i8*, i8** @gimp_tool_parent_class, align 8
  %7 = bitcast i8* %6 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 80)
  %8 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 5
  %9 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %10 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %9(%struct._GObject* %10)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %tool_info = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %3, i32 0, i32 1
  %4 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tobool = icmp ne %struct._GimpToolInfo* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %tool_info2 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %5, i32 0, i32 1
  %6 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info2, align 8
  %7 = bitcast %struct._GimpToolInfo* %6 to i8*
  call void @g_object_unref(i8* %7)
  %8 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %tool_info3 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %8, i32 0, i32 1
  store %struct._GimpToolInfo* null, %struct._GimpToolInfo** %tool_info3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %9, i32 0, i32 3
  %10 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  %tobool4 = icmp ne %struct._GimpToolControl* %10, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %11 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control6 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %11, i32 0, i32 3
  %12 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control6, align 8
  %13 = bitcast %struct._GimpToolControl* %12 to i8*
  call void @g_object_unref(i8* %13)
  %14 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control7 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %14, i32 0, i32 3
  store %struct._GimpToolControl* null, %struct._GimpToolControl** %control7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %15 = load i8*, i8** @gimp_tool_parent_class, align 8
  %16 = bitcast i8* %15 to %struct._GTypeClass*
  %call9 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %16, i64 80)
  %17 = bitcast %struct._GTypeClass* %call9 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %17, i32 0, i32 6
  %18 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %19 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %18(%struct._GObject* %19)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_dup_object(%struct._GValue* %4)
  %5 = bitcast i8* %call2 to %struct._GimpToolInfo*
  %6 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %tool_info = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %6, i32 0, i32 1
  store %struct._GimpToolInfo* %5, %struct._GimpToolInfo** %tool_info, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %7 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %7, %struct._GObject** %_glib__object, align 8
  %8 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %8, %struct._GParamSpec** %_glib__pspec, align 8
  %9 = load i32, i32* %property_id.addr, align 4
  store i32 %9, i32* %_glib__property_id, align 4
  %10 = load i32, i32* %_glib__property_id, align 4
  %11 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %11, i32 0, i32 1
  %12 = load i8*, i8** %name, align 8
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %14 = bitcast %struct._GParamSpec* %13 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %15, i32 0, i32 0
  %16 = load i64, i64* %g_type, align 8
  %call3 = call i8* @g_type_name(i64 %16)
  %17 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %18 = bitcast %struct._GObject* %17 to %struct._GTypeInstance*
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type5 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type5, align 8
  %call6 = call i8* @g_type_name(i64 %20)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i32 250, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i32 %10, i8* %12, i8* %call3, i8* %call6)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %tool_info = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %5, i32 0, i32 1
  %6 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %7 = bitcast %struct._GimpToolInfo* %6 to i8*
  call void @g_value_set_object(%struct._GValue* %4, i8* %7)
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
  %call2 = call i8* @g_type_name(i64 %17)
  %18 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %19 = bitcast %struct._GObject* %18 to %struct._GTypeInstance*
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type4 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type4, align 8
  %call5 = call i8* @g_type_name(i64 %21)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i32 270, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i32 %11, i8* %13, i8* %call2, i8* %call5)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_tool_real_has_display(%struct._GimpTool* %tool, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %1 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display1 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %1, i32 0, i32 4
  %2 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display1, align 8
  %cmp = icmp eq %struct._GimpDisplay* %0, %2
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %status_displays = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %3, i32 0, i32 14
  %4 = load %struct._GList*, %struct._GList** %status_displays, align 8
  %5 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %6 = bitcast %struct._GimpDisplay* %5 to i8*
  %call = call %struct._GList* @g_list_find(%struct._GList* %4, i8* %6)
  %tobool = icmp ne %struct._GList* %call, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %7 = phi i1 [ true, %entry ], [ %tobool, %lor.rhs ]
  %lor.ext = zext i1 %7 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpDisplay* @gimp_tool_real_has_image(%struct._GimpTool* %tool, %struct._GimpImage* %image) #3 {
entry:
  %retval = alloca %struct._GimpDisplay*, align 8
  %tool.addr = alloca %struct._GimpTool*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %0, i32 0, i32 4
  %1 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool = icmp ne %struct._GimpDisplay* %1, null
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %tobool1 = icmp ne %struct._GimpImage* %2, null
  br i1 %tobool1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display2 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %3, i32 0, i32 4
  %4 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display2, align 8
  %call = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %4)
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %cmp = icmp eq %struct._GimpImage* %call, %5
  br i1 %cmp, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %land.lhs.true
  %6 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display4 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %6, i32 0, i32 4
  %7 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display4, align 8
  store %struct._GimpDisplay* %7, %struct._GimpDisplay** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %if.then
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %tobool5 = icmp ne %struct._GimpImage* %8, null
  br i1 %tobool5, label %if.end.8, label %if.then.6

if.then.6:                                        ; preds = %if.end
  %9 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display7 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %9, i32 0, i32 4
  %10 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display7, align 8
  store %struct._GimpDisplay* %10, %struct._GimpDisplay** %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %entry
  store %struct._GimpDisplay* null, %struct._GimpDisplay** %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.6, %if.then.3
  %11 = load %struct._GimpDisplay*, %struct._GimpDisplay** %retval
  ret %struct._GimpDisplay* %11
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_tool_real_initialize(%struct._GimpTool* %tool, %struct._GimpDisplay* %display, %struct._GError** %error) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %error.addr = alloca %struct._GError**, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_real_control(%struct._GimpTool* %tool, i32 %action, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %action.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store i32 %action, i32* %action.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load i32, i32* %action.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry, %entry
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display2 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %1, i32 0, i32 4
  store %struct._GimpDisplay* null, %struct._GimpDisplay** %display2, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.1, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_real_button_press(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, i32 %press_type, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %press_type.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %image = alloca %struct._GimpImage*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store i32 %press_type, i32* %press_type.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load i32, i32* %press_type.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %1)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %2 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display1 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %3, i32 0, i32 4
  store %struct._GimpDisplay* %2, %struct._GimpDisplay** %display1, align 8
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call2 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %4)
  %5 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %drawable = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %5, i32 0, i32 5
  store %struct._GimpDrawable* %call2, %struct._GimpDrawable** %drawable, align 8
  %6 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %6, i32 0, i32 3
  %7 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_activate(%struct._GimpToolControl* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_real_button_release(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, i32 %release_type, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %release_type.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store i32 %release_type, i32* %release_type.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %0, i32 0, i32 3
  %1 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_halt(%struct._GimpToolControl* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_real_motion(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_tool_real_key_press(%struct._GimpTool* %tool, %struct._GdkEventKey* %kevent, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %kevent.addr = alloca %struct._GdkEventKey*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GdkEventKey* %kevent, %struct._GdkEventKey** %kevent.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_tool_real_key_release(%struct._GimpTool* %tool, %struct._GdkEventKey* %kevent, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %kevent.addr = alloca %struct._GdkEventKey*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GdkEventKey* %kevent, %struct._GdkEventKey** %kevent.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_real_modifier_key(%struct._GimpTool* %tool, i32 %key, i32 %press, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %key.addr = alloca i32, align 4
  %press.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store i32 %key, i32* %key.addr, align 4
  store i32 %press, i32* %press.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_real_active_modifier_key(%struct._GimpTool* %tool, i32 %key, i32 %press, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %key.addr = alloca i32, align 4
  %press.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store i32 %key, i32* %key.addr, align 4
  store i32 %press, i32* %press.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_real_oper_update(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %state, i32 %proximity, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %state.addr = alloca i32, align 4
  %proximity.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store i32 %proximity, i32* %proximity.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_real_cursor_update(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %2 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %2, i32 0, i32 3
  %3 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  %call = call i32 @gimp_tool_control_get_cursor(%struct._GimpToolControl* %3)
  %4 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control1 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %4, i32 0, i32 3
  %5 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control1, align 8
  %call2 = call i32 @gimp_tool_control_get_tool_cursor(%struct._GimpToolControl* %5)
  %6 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control3 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %6, i32 0, i32 3
  %7 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control3, align 8
  %call4 = call i32 @gimp_tool_control_get_cursor_modifier(%struct._GimpToolControl* %7)
  call void @gimp_tool_set_cursor(%struct._GimpTool* %0, %struct._GimpDisplay* %1, i32 %call, i32 %call2, i32 %call4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpUIManager* @gimp_tool_real_get_popup(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %state, %struct._GimpDisplay* %display, i8** %ui_path) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %ui_path.addr = alloca i8**, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store i8** %ui_path, i8*** %ui_path.addr, align 8
  %0 = load i8**, i8*** %ui_path.addr, align 8
  store i8* null, i8** %0, align 8
  ret %struct._GimpUIManager* null
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_real_options_notify(%struct._GimpTool* %tool, %struct._GimpToolOptions* %options, %struct._GParamSpec* %pspec) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %options.addr = alloca %struct._GimpToolOptions*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpToolOptions* %options, %struct._GimpToolOptions** %options.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #7

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_options_notify(%struct._GimpToolOptions* %options, %struct._GParamSpec* %pspec, %struct._GimpTool* %tool) #3 {
entry:
  %options.addr = alloca %struct._GimpToolOptions*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %tool.addr = alloca %struct._GimpTool*, align 8
  store %struct._GimpToolOptions* %options, %struct._GimpToolOptions** %options.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %1, i32 0, i32 0
  %2 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %3 = bitcast %struct._GTypeClass* %2 to %struct._GimpToolClass*
  %options_notify = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %3, i32 0, i32 15
  %4 = load void (%struct._GimpTool*, %struct._GimpToolOptions*, %struct._GParamSpec*)*, void (%struct._GimpTool*, %struct._GimpToolOptions*, %struct._GParamSpec*)** %options_notify, align 8
  %5 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %6 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %options.addr, align 8
  %7 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  call void %4(%struct._GimpTool* %5, %struct._GimpToolOptions* %6, %struct._GParamSpec* %7)
  ret void
}

declare i8* @g_value_dup_object(%struct._GValue*) #1

declare void @g_value_set_object(%struct._GValue*, i8*) #1

declare %struct._GList* @g_list_find(%struct._GList*, i8*) #1

declare %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage*) #1

declare i32 @gimp_tool_control_get_cursor(%struct._GimpToolControl*) #1

declare i32 @gimp_tool_control_get_tool_cursor(%struct._GimpToolControl*) #1

declare i32 @gimp_tool_control_get_cursor_modifier(%struct._GimpToolControl*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_control_get_type() #2

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

declare void @g_object_get(i8*, i8*, ...) #1

declare %struct._GtkSettings* @gtk_widget_get_settings(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind readnone
declare double @rint(double) #2

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
