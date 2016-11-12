; ModuleID = './app/actions/text-tool-actions.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpActionEntry = type { i8*, i8*, i8*, i8*, i8*, void ()*, i8* }
%struct._GimpRadioActionEntry = type { i8*, i8*, i8*, i8*, i8*, i32, i8* }
%struct._GimpActionGroup = type { %struct._GtkActionGroup, %struct._Gimp*, i8*, i8*, i8*, void (%struct._GimpActionGroup*, i8*)* }
%struct._GtkActionGroup = type { %struct._GObject, %struct._GtkActionGroupPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkActionGroupPrivate = type opaque
%struct._Gimp = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GtkActionPrivate = type opaque
%struct._GimpTextTool = type { %struct._GimpDrawTool, %struct._GimpText*, %struct._GList*, i32, i32, %struct._GimpTextBuffer*, %struct._GimpText*, %struct._GimpTextLayer*, %struct._GimpImage*, %struct._GtkWidget*, %struct._GimpUIManager*, i32, i32, %struct._GimpTextLayout*, i32, %struct._GtkWidget*, %struct._GtkWidget*, i32, %struct._GtkTextIter, i32, i32, %struct._GtkIMContext*, i32, %struct._GtkWidget*, %struct._GtkWidget*, i8*, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GimpDrawTool = type { %struct._GimpTool, %struct._GimpDisplay*, i32, i32, i64, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GList* }
%struct._GimpTool = type { %struct._GimpObject, %struct._GimpToolInfo*, i32, %struct._GimpToolControl*, %struct._GimpDisplay*, %struct._GimpDrawable*, %struct._GimpDisplay*, i32, i32, i32, i32, i32, %struct._GimpCoords, i32, %struct._GList*, %struct._GimpCanvasItem*, %struct._GimpDisplay* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpToolControl = type opaque
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpCoords = type { double, double, double, double, double, double, double, double }
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
%struct._GimpDisplayConfig = type opaque
%struct._GimpCanvasItem = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpTextBuffer = type opaque
%struct._GimpText = type opaque
%struct._GimpTextLayer = type { %struct._GimpLayer, %struct._GimpText*, i8*, i32, i32 }
%struct._GimpLayer = type { %struct._GimpDrawable, double, i32, i32, %struct._GimpLayerMask*, %struct._GeglNode*, %struct.anon }
%struct._GimpLayerMask = type opaque
%struct._GeglNode = type opaque
%struct.anon = type { %struct._GimpDrawable*, i32, %struct._BoundSeg*, i32 }
%struct._BoundSeg = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpUIManager = type opaque
%struct._GimpTextLayout = type opaque
%struct._GtkTextIter = type { i8*, i8*, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i8* }
%struct._GtkIMContext = type { %struct._GObject }
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
%struct._GimpVectors = type opaque
%struct._GimpDisplayShell = type { %struct._GtkBox, %struct._GimpDisplay*, %struct._GimpUIManager*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct._GimpZoomModel*, double, i32, i32, i32, double, i32, i32, i32, %struct._Selection*, %struct._GList*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._cairo_surface*, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, i32, i8*, i8*, i32, i32, %struct._GdkPixbuf*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GimpColorDisplayStack*, i32, %struct._GtkWidget*, i32, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i8*, %struct._GimpDrawable*, %struct._GimpRGB, %struct._GimpMotionBuffer*, %struct._GQueue* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GimpDisplayOptions = type opaque
%struct._GimpZoomModel = type { %struct._GObject, i8* }
%struct._Selection = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpColorDisplayStack = type { %struct._GObject, %struct._GList* }
%struct._GimpTreeHandler = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpMotionBuffer = type opaque
%struct._GQueue = type { %struct._GList*, %struct._GList*, i32 }
%struct._GtkClipboard = type opaque
%struct._GdkAtom = type opaque
%struct._GtkSettings = type { %struct._GObject, %struct._GData*, %struct._GtkSettingsPropertyValue*, %struct._GtkRcContext*, %struct._GdkScreen* }
%struct._GtkSettingsPropertyValue = type opaque
%struct._GtkRcContext = type opaque
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque

@.str = private unnamed_addr constant [17 x i8] c"text-tool-action\00", align 1
@text_tool_actions = internal constant [10 x %struct._GimpActionEntry] [%struct._GimpActionEntry { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* null, i8* null, void ()* bitcast (void (%struct._GtkAction*, i8*)* @text_tool_cut_cmd_callback to void ()*), i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i8* null, i8* null, void ()* bitcast (void (%struct._GtkAction*, i8*)* @text_tool_copy_cmd_callback to void ()*), i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i8* null, i8* null, void ()* bitcast (void (%struct._GtkAction*, i8*)* @text_tool_paste_cmd_callback to void ()*), i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i8* null, i8* null, void ()* bitcast (void (%struct._GtkAction*, i8*)* @text_tool_delete_cmd_callback to void ()*), i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i32 0, i32 0), i8* null, i8* null, void ()* bitcast (void (%struct._GtkAction*, i8*)* @text_tool_load_cmd_callback to void ()*), i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @text_tool_clear_cmd_callback to void ()*), i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.31, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @text_tool_text_to_path_cmd_callback to void ()*), i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.33, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @text_tool_text_along_path_cmd_callback to void ()*), i8* null }], align 16
@text_tool_direction_actions = internal constant [2 x %struct._GimpRadioActionEntry] [%struct._GimpRadioActionEntry { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.36, i32 0, i32 0), i8* null, i8* null, i32 0, i8* null }, %struct._GimpRadioActionEntry { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.39, i32 0, i32 0), i8* null, i8* null, i32 1, i8* null }], align 16
@.str.1 = private unnamed_addr constant [29 x i8] c"text-tool-input-methods-menu\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"gtk-show-input-method-menu\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"gtk-show-unicode-menu\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"text-tool-cut\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"text-tool-copy\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"text-tool-paste\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"text-tool-delete\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"text-tool-clear\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"text-tool-load\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"text-tool-text-to-path\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"text-tool-text-along-path\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"text-tool-popup\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"Text Tool Menu\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"Input _Methods\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"gtk-cut\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"Cu_t\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"gtk-copy\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"_Copy\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"gtk-paste\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"_Paste\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"gtk-delete\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"_Delete\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"gtk-open\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"_Open text file...\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"gtk-clear\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"Cl_ear\00", align 1
@.str.27 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"Clear all text\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"gimp-path\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"_Path from Text\00", align 1
@.str.31 = private unnamed_addr constant [52 x i8] c"Create a path from the outlines of the current text\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"Text _along Path\00", align 1
@.str.33 = private unnamed_addr constant [46 x i8] c"Bend the text along the currently active path\00", align 1
@.str.34 = private unnamed_addr constant [24 x i8] c"text-tool-direction-ltr\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"gimp-text-dir-ltr\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"From left to right\00", align 1
@.str.37 = private unnamed_addr constant [24 x i8] c"text-tool-direction-rtl\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"gimp-text-dir-rtl\00", align 1
@.str.39 = private unnamed_addr constant [19 x i8] c"From right to left\00", align 1

; Function Attrs: nounwind uwtable
define void @text_tool_actions_setup(%struct._GimpActionGroup* %group) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_actions(%struct._GimpActionGroup* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), %struct._GimpActionEntry* getelementptr inbounds ([10 x %struct._GimpActionEntry], [10 x %struct._GimpActionEntry]* @text_tool_actions, i32 0, i32 0), i32 10)
  %1 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %call = call %struct._GSList* @gimp_action_group_add_radio_actions(%struct._GimpActionGroup* %1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), %struct._GimpRadioActionEntry* getelementptr inbounds ([2 x %struct._GimpRadioActionEntry], [2 x %struct._GimpRadioActionEntry]* @text_tool_direction_actions, i32 0, i32 0), i32 2, %struct._GSList* null, i32 0, void ()* bitcast (void (%struct._GtkAction*, %struct._GtkAction*, i8*)* @text_tool_direction_cmd_callback to void ()*))
  %2 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_hide_empty(%struct._GimpActionGroup* %2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), i32 0)
  ret void
}

declare void @gimp_action_group_add_actions(%struct._GimpActionGroup*, i8*, %struct._GimpActionEntry*, i32) #1

declare %struct._GSList* @gimp_action_group_add_radio_actions(%struct._GimpActionGroup*, i8*, %struct._GimpRadioActionEntry*, i32, %struct._GSList*, i32, void ()*) #1

declare void @text_tool_direction_cmd_callback(%struct._GtkAction*, %struct._GtkAction*, i8*) #1

declare void @gimp_action_group_set_action_hide_empty(%struct._GimpActionGroup*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define void @text_tool_actions_update(%struct._GimpActionGroup* %group, i8* %data) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %data.addr = alloca i8*, align 8
  %text_tool = alloca %struct._GimpTextTool*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %clipboard = alloca %struct._GtkClipboard*, align 8
  %text_layer = alloca i32, align 4
  %text_sel = alloca i32, align 4
  %clip = alloca i32, align 4
  %input_method_menu = alloca i32, align 4
  %unicode_menu = alloca i32, align 4
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_text_tool_get_type() #3
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTextTool*
  store %struct._GimpTextTool* %2, %struct._GimpTextTool** %text_tool, align 8
  %3 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %4 = bitcast %struct._GimpTextTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_get_type() #3
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTool*
  %display4 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %5, i32 0, i32 4
  %6 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display4, align 8
  store %struct._GimpDisplay* %6, %struct._GimpDisplay** %display, align 8
  %7 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call5 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %7)
  store %struct._GimpImage* %call5, %struct._GimpImage** %image, align 8
  store i32 0, i32* %text_layer, align 4
  store i32 0, i32* %text_sel, align 4
  store i32 0, i32* %clip, align 4
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call6 = call %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage* %8)
  store %struct._GimpLayer* %call6, %struct._GimpLayer** %layer, align 8
  %9 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool = icmp ne %struct._GimpLayer* %9, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %11 = bitcast %struct._GimpLayer* %10 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_item_get_type() #3
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call7)
  %12 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpItem*
  %call9 = call i32 @gimp_item_is_text_layer(%struct._GimpItem* %12)
  store i32 %call9, i32* %text_layer, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call10 = call %struct._GimpVectors* @gimp_image_get_active_vectors(%struct._GimpImage* %13)
  store %struct._GimpVectors* %call10, %struct._GimpVectors** %vectors, align 8
  %14 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %call11 = call i32 @gimp_text_tool_get_has_text_selection(%struct._GimpTextTool* %14)
  store i32 %call11, i32* %text_sel, align 4
  %15 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call12 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %15)
  store %struct._GimpDisplayShell* %call12, %struct._GimpDisplayShell** %shell, align 8
  %16 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %canvas = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %16, i32 0, i32 33
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas, align 8
  %call13 = call %struct._GtkClipboard* @gtk_widget_get_clipboard(%struct._GtkWidget* %17, %struct._GdkAtom* inttoptr (i64 69 to %struct._GdkAtom*))
  store %struct._GtkClipboard* %call13, %struct._GtkClipboard** %clipboard, align 8
  %18 = load %struct._GtkClipboard*, %struct._GtkClipboard** %clipboard, align 8
  %call14 = call i32 @gtk_clipboard_wait_is_text_available(%struct._GtkClipboard* %18)
  store i32 %call14, i32* %clip, align 4
  %19 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %canvas15 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %19, i32 0, i32 33
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas15, align 8
  %call16 = call %struct._GtkSettings* @gtk_widget_get_settings(%struct._GtkWidget* %20)
  %21 = bitcast %struct._GtkSettings* %call16 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0), i32* %input_method_menu, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i32* %unicode_menu, i8* null)
  %22 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %23 = load i32, i32* %text_sel, align 4
  %cmp = icmp ne i32 %23, 0
  %conv = zext i1 %cmp to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i32 %conv)
  %24 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %25 = load i32, i32* %text_sel, align 4
  %cmp17 = icmp ne i32 %25, 0
  %conv18 = zext i1 %cmp17 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i32 %conv18)
  %26 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %27 = load i32, i32* %clip, align 4
  %cmp19 = icmp ne i32 %27, 0
  %conv20 = zext i1 %cmp19 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i32 %conv20)
  %28 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %29 = load i32, i32* %text_sel, align 4
  %cmp21 = icmp ne i32 %29, 0
  %conv22 = zext i1 %cmp21 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), i32 %conv22)
  %30 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %31 = load i32, i32* %text_layer, align 4
  %cmp23 = icmp ne i32 %31, 0
  %conv24 = zext i1 %cmp23 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %30, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i32 %conv24)
  %32 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %33 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp25 = icmp ne %struct._GimpImage* %33, null
  %conv26 = zext i1 %cmp25 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), i32 %conv26)
  %34 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %35 = load i32, i32* %text_layer, align 4
  %cmp27 = icmp ne i32 %35, 0
  %conv28 = zext i1 %cmp27 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0), i32 %conv28)
  %36 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %37 = load i32, i32* %text_layer, align 4
  %tobool29 = icmp ne i32 %37, 0
  br i1 %tobool29, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %38 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %tobool30 = icmp ne %struct._GimpVectors* %38, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %39 = phi i1 [ false, %if.end ], [ %tobool30, %land.rhs ]
  %land.ext = zext i1 %39 to i32
  %cmp31 = icmp ne i32 %land.ext, 0
  %conv32 = zext i1 %cmp31 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i32 0, i32 0), i32 %conv32)
  %40 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %41 = load i32, i32* %input_method_menu, align 4
  %cmp33 = icmp ne i32 %41, 0
  %conv34 = zext i1 %cmp33 to i32
  call void @gimp_action_group_set_action_visible(%struct._GimpActionGroup* %40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), i32 %conv34)
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_text_tool_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_get_type() #2

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #1

declare %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage*) #1

declare i32 @gimp_item_is_text_layer(%struct._GimpItem*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare %struct._GimpVectors* @gimp_image_get_active_vectors(%struct._GimpImage*) #1

declare i32 @gimp_text_tool_get_has_text_selection(%struct._GimpTextTool*) #1

declare %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay*) #1

declare %struct._GtkClipboard* @gtk_widget_get_clipboard(%struct._GtkWidget*, %struct._GdkAtom*) #1

declare i32 @gtk_clipboard_wait_is_text_available(%struct._GtkClipboard*) #1

declare void @g_object_get(i8*, i8*, ...) #1

declare %struct._GtkSettings* @gtk_widget_get_settings(%struct._GtkWidget*) #1

declare void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup*, i8*, i32) #1

declare void @gimp_action_group_set_action_visible(%struct._GimpActionGroup*, i8*, i32) #1

declare void @text_tool_cut_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @text_tool_copy_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @text_tool_paste_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @text_tool_delete_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @text_tool_load_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @text_tool_clear_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @text_tool_text_to_path_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @text_tool_text_along_path_cmd_callback(%struct._GtkAction*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
