; ModuleID = './app/tools/gimptexttool-editor.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpTextTool = type { %struct._GimpDrawTool, %struct._GimpText*, %struct._GList*, i32, i32, %struct._GimpTextBuffer*, %struct._GimpText*, %struct._GimpTextLayer*, %struct._GimpImage*, %struct._GtkWidget*, %struct._GimpUIManager*, i32, i32, %struct._GimpTextLayout*, i32, %struct._GtkWidget*, %struct._GtkWidget*, i32, %struct._GtkTextIter, i32, i32, %struct._GtkIMContext*, i32, %struct._GtkWidget*, %struct._GtkWidget*, i8*, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GimpDrawTool = type { %struct._GimpTool, %struct._GimpDisplay*, i32, i32, i64, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GList* }
%struct._GimpTool = type { %struct._GimpObject, %struct._GimpToolInfo*, i32, %struct._GimpToolControl*, %struct._GimpDisplay*, %struct._GimpDrawable*, %struct._GimpDisplay*, i32, i32, i32, i32, i32, %struct._GimpCoords, i32, %struct._GList*, %struct._GimpCanvasItem*, %struct._GimpDisplay* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpToolInfo = type { %struct._GimpViewable, %struct._Gimp*, i64, i64, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GimpToolOptions*, %struct._GimpPaintInfo*, %struct._GimpContainer* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
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
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpToolOptions = type { %struct._GimpContext, %struct._GimpToolInfo* }
%struct._GimpPaintInfo = type opaque
%struct._GimpContainer = type opaque
%struct._GimpToolControl = type opaque
%struct._GimpDrawable = type opaque
%struct._GimpCoords = type { double, double, double, double, double, double, double, double }
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
%struct._GimpDisplayConfig = type opaque
%struct._GimpCanvasItem = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpTextBuffer = type { %struct._GtkTextBuffer, %struct._GtkTextTag*, %struct._GtkTextTag*, %struct._GtkTextTag*, %struct._GtkTextTag*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GList*, i32, %struct._GList*, %struct._GList*, %struct._GdkAtom* }
%struct._GtkTextBuffer = type { %struct._GObject, %struct._GtkTextTagTable*, %struct._GtkTextBTree*, %struct._GSList*, %struct._GSList*, %struct._GtkTextLogAttrCache*, i32, i8 }
%struct._GtkTextTagTable = type { %struct._GObject, %struct._GHashTable*, %struct._GSList*, i32, %struct._GSList* }
%struct._GHashTable = type opaque
%struct._GtkTextBTree = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GtkTextLogAttrCache = type opaque
%struct._GtkTextTag = type { %struct._GObject, %struct._GtkTextTagTable*, i8*, i32, %struct._GtkTextAttributes*, i24 }
%struct._GtkTextAttributes = type { i32, %struct._GtkTextAppearance, i32, i32, %struct._PangoFontDescription*, double, i32, i32, i32, i32, i32, i32, %struct._PangoTabArray*, i32, %struct._PangoLanguage*, %struct._GdkColor*, i8 }
%struct._GtkTextAppearance = type { %struct._GdkColor, %struct._GdkColor, %struct._GdkDrawable*, %struct._GdkDrawable*, i32, i8*, i16 }
%struct._GdkColor = type { i32, i16, i16, i16 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._PangoFontDescription = type opaque
%struct._PangoTabArray = type opaque
%struct._PangoLanguage = type opaque
%struct._GdkAtom = type opaque
%struct._GimpText = type { %struct._GimpObject, i8*, i8*, i8*, i32, double, i32, i32, i32, i8*, i32, %struct._GimpRGB, i32, i32, double, double, double, i32, double, double, i32, %struct._GimpMatrix2, double, double, double }
%struct._GimpMatrix2 = type { [2 x [2 x double]] }
%struct._GimpTextLayer = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpUIManager = type opaque
%struct._GimpTextLayout = type opaque
%struct._GtkTextIter = type { i8*, i8*, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i8* }
%struct._GtkIMContext = type { %struct._GObject }
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GtkStyle = type { %struct._GObject, [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], %struct._GdkColor, %struct._GdkColor, %struct._PangoFontDescription*, i32, i32, [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], %struct._GdkGC*, %struct._GdkGC*, [5 x %struct._GdkDrawable*], i32, i32, %struct._GdkColormap*, %struct._GdkFont*, %struct._PangoFontDescription*, %struct._GtkRcStyle*, %struct._GSList*, %struct._GArray*, %struct._GSList* }
%struct._GdkGC = type { %struct._GObject, i32, i32, i32, i32, %struct._GdkColormap* }
%struct._GdkColormap = type { %struct._GObject, i32, %struct._GdkColor*, %struct._GdkVisual*, i8* }
%struct._GdkVisual = type { %struct._GObject, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GdkFont = type opaque
%struct._GtkRcStyle = type { %struct._GObject, i8*, [5 x i8*], %struct._PangoFontDescription*, [5 x i32], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], i32, i32, %struct._GArray*, %struct._GSList*, %struct._GSList*, i8 }
%struct._GArray = type { i8*, i32 }
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
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
%struct._GimpMotionBuffer = type opaque
%struct._GQueue = type { %struct._GList*, %struct._GList*, i32 }
%struct._PangoRectangle = type { i32, i32, i32, i32 }
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GimpOverlayBox = type { %struct._GtkContainer, %struct._GList* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._PangoLayout = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkLabelSelectionInfo = type opaque
%struct._GimpTextOptions = type { %struct._GimpToolOptions, i32, double, i32, i32, i8*, i32, i32, double, double, double, i32, i32, i32, i32, %struct._GtkWidget* }
%struct._GimpDialogFactory = type { %struct._GimpObject, %struct._GimpDialogFactoryPrivate* }
%struct._GimpDialogFactoryPrivate = type opaque
%struct._GimpMenuFactory = type opaque
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GtkClipboard = type opaque
%struct._GtkTextMark = type { %struct._GObject, i8* }
%struct._GdkEventKey = type { i32, %struct._GdkDrawable*, i8, i32, i32, i32, i32, i8*, i16, i8, i8 }
%struct._GimpRectangleTool = type opaque
%struct._PangoLayoutLine = type { %struct._PangoLayout*, i32, i32, %struct._GSList*, i8 }
%struct._PangoLayoutIter = type opaque
%struct._GEnumClass = type { %struct._GTypeClass, i32, i32, i32, %struct._GEnumValue* }
%struct._GEnumValue = type { i32, i8*, i8* }

@.str = private unnamed_addr constant [7 x i8] c"commit\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"preedit-start\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"preedit-end\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"preedit-changed\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"notify::use-editor\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"x1\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"y1\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"resolution-x\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"resolution-y\00", align 1
@gimp_log_flags = external global i32, align 4
@__func__.gimp_text_tool_editor_key_press = private unnamed_addr constant [32 x i8] c"gimp_text_tool_editor_key_press\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"binding handled event\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@__func__.gimp_text_tool_editor_key_release = private unnamed_addr constant [34 x i8] c"gimp_text_tool_editor_key_release\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"Gimp-Tools\00", align 1
@__func__.gimp_text_tool_editor_get_cursor_rect = private unnamed_addr constant [38 x i8] c"gimp_text_tool_editor_get_cursor_rect\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"GIMP_IS_TEXT_TOOL (text_tool)\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"cursor_rect != NULL\00", align 1
@__func__.gimp_text_tool_editor_update_im_rect = private unnamed_addr constant [37 x i8] c"gimp_text_tool_editor_update_im_rect\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"move-cursor\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"insert-at-cursor\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"delete-from-cursor\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"backspace\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"cut-clipboard\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"copy-clipboard\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"paste-clipboard\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"toggle-overwrite\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"select-all\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"change-size\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"change-baseline\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"change-kerning\00", align 1
@__func__.gimp_text_tool_move_cursor = private unnamed_addr constant [27 x i8] c"gimp_text_tool_move_cursor\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"%s count = %d, select = %s\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@__func__.gimp_text_tool_delete_from_cursor = private unnamed_addr constant [34 x i8] c"gimp_text_tool_delete_from_cursor\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"%s count = %d\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"selection_bound\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"use-editor\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"GIMP Text Editor\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c"gimp-text-tool-dialog\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_text_tool_editor_init(%struct._GimpTextTool* %text_tool) #0 {
entry:
  %text_tool.addr = alloca %struct._GimpTextTool*, align 8
  store %struct._GimpTextTool* %text_tool, %struct._GimpTextTool** %text_tool.addr, align 8
  %call = call %struct._GtkIMContext* @gtk_im_multicontext_new()
  %0 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %im_context = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %0, i32 0, i32 21
  store %struct._GtkIMContext* %call, %struct._GtkIMContext** %im_context, align 8
  %1 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %needs_im_reset = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %1, i32 0, i32 22
  store i32 0, i32* %needs_im_reset, align 4
  %2 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %preedit_string = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %2, i32 0, i32 25
  store i8* null, i8** %preedit_string, align 8
  %3 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %preedit_cursor = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %3, i32 0, i32 26
  store i32 0, i32* %preedit_cursor, align 4
  %4 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %overwrite_mode = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %4, i32 0, i32 27
  store i32 0, i32* %overwrite_mode, align 4
  %5 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %x_pos = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %5, i32 0, i32 28
  store i32 -1, i32* %x_pos, align 4
  %6 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %im_context1 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %6, i32 0, i32 21
  %7 = load %struct._GtkIMContext*, %struct._GtkIMContext** %im_context1, align 8
  %8 = bitcast %struct._GtkIMContext* %7 to i8*
  %9 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %10 = bitcast %struct._GimpTextTool* %9 to i8*
  %call2 = call i64 @g_signal_connect_data(i8* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), void ()* bitcast (void (%struct._GtkIMContext*, i8*, %struct._GimpTextTool*)* @gimp_text_tool_im_commit to void ()*), i8* %10, void (i8*, %struct._GClosure*)* null, i32 0)
  %11 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %im_context3 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %11, i32 0, i32 21
  %12 = load %struct._GtkIMContext*, %struct._GtkIMContext** %im_context3, align 8
  %13 = bitcast %struct._GtkIMContext* %12 to i8*
  %14 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %15 = bitcast %struct._GimpTextTool* %14 to i8*
  %call4 = call i64 @g_signal_connect_data(i8* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), void ()* bitcast (void (%struct._GtkIMContext*, %struct._GimpTextTool*)* @gimp_text_tool_im_preedit_start to void ()*), i8* %15, void (i8*, %struct._GClosure*)* null, i32 0)
  %16 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %im_context5 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %16, i32 0, i32 21
  %17 = load %struct._GtkIMContext*, %struct._GtkIMContext** %im_context5, align 8
  %18 = bitcast %struct._GtkIMContext* %17 to i8*
  %19 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %20 = bitcast %struct._GimpTextTool* %19 to i8*
  %call6 = call i64 @g_signal_connect_data(i8* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), void ()* bitcast (void (%struct._GtkIMContext*, %struct._GimpTextTool*)* @gimp_text_tool_im_preedit_end to void ()*), i8* %20, void (i8*, %struct._GClosure*)* null, i32 0)
  %21 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %im_context7 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %21, i32 0, i32 21
  %22 = load %struct._GtkIMContext*, %struct._GtkIMContext** %im_context7, align 8
  %23 = bitcast %struct._GtkIMContext* %22 to i8*
  %24 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %25 = bitcast %struct._GimpTextTool* %24 to i8*
  %call8 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), void ()* bitcast (void (%struct._GtkIMContext*, %struct._GimpTextTool*)* @gimp_text_tool_im_preedit_changed to void ()*), i8* %25, void (i8*, %struct._GClosure*)* null, i32 0)
  ret void
}

declare %struct._GtkIMContext* @gtk_im_multicontext_new() #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_tool_im_commit(%struct._GtkIMContext* %context, i8* %str, %struct._GimpTextTool* %text_tool) #0 {
entry:
  %context.addr = alloca %struct._GtkIMContext*, align 8
  %str.addr = alloca i8*, align 8
  %text_tool.addr = alloca %struct._GimpTextTool*, align 8
  store %struct._GtkIMContext* %context, %struct._GtkIMContext** %context.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  store %struct._GimpTextTool* %text_tool, %struct._GimpTextTool** %text_tool.addr, align 8
  %0 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %1 = load i8*, i8** %str.addr, align 8
  call void @gimp_text_tool_enter_text(%struct._GimpTextTool* %0, i8* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_tool_im_preedit_start(%struct._GtkIMContext* %context, %struct._GimpTextTool* %text_tool) #0 {
entry:
  %context.addr = alloca %struct._GtkIMContext*, align 8
  %text_tool.addr = alloca %struct._GimpTextTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %style = alloca %struct._GtkStyle*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %ebox = alloca %struct._GtkWidget*, align 8
  %cursor_rect = alloca %struct._PangoRectangle, align 4
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  store %struct._GtkIMContext* %context, %struct._GtkIMContext** %context.addr, align 8
  store %struct._GimpTextTool* %text_tool, %struct._GimpTextTool** %text_tool.addr, align 8
  %0 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %1 = bitcast %struct._GimpTextTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %3, i32 0, i32 4
  %4 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call2 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %4)
  store %struct._GimpDisplayShell* %call2, %struct._GimpDisplayShell** %shell, align 8
  %5 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %canvas = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %5, i32 0, i32 33
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas, align 8
  %call3 = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %6)
  store %struct._GtkStyle* %call3, %struct._GtkStyle** %style, align 8
  %7 = bitcast %struct._PangoRectangle* %cursor_rect to i8*
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 16, i32 4, i1 false)
  %8 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %text = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %8, i32 0, i32 6
  %9 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %tobool = icmp ne %struct._GimpText* %9, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %11 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %overwrite_mode = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %11, i32 0, i32 27
  %12 = load i32, i32* %overwrite_mode, align 4
  call void @gimp_text_tool_editor_get_cursor_rect(%struct._GimpTextTool* %10, i32 %12, %struct._PangoRectangle* %cursor_rect)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %14 = bitcast %struct._GimpTextTool* %13 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i32* %off_x, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i32* %off_y, i8* null)
  %call4 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  %15 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %preedit_overlay = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %15, i32 0, i32 23
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %preedit_overlay, align 8
  %16 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %preedit_overlay5 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %16, i32 0, i32 23
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %preedit_overlay5, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_frame_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call6)
  %19 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %19, i32 2)
  %20 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %21 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %preedit_overlay8 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %21, i32 0, i32 23
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %preedit_overlay8, align 8
  %x = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %cursor_rect, i32 0, i32 0
  %23 = load i32, i32* %x, align 4
  %24 = load i32, i32* %off_x, align 4
  %add = add nsw i32 %23, %24
  %conv = sitofp i32 %add to double
  %y = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %cursor_rect, i32 0, i32 1
  %25 = load i32, i32* %y, align 4
  %26 = load i32, i32* %off_y, align 4
  %add9 = add nsw i32 %25, %26
  %conv10 = sitofp i32 %add9 to double
  call void @gimp_display_shell_add_overlay(%struct._GimpDisplayShell* %20, %struct._GtkWidget* %22, double %conv, double %conv10, i32 2, i32 0, i32 0)
  %27 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %canvas11 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %27, i32 0, i32 33
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas11, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_overlay_box_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call12)
  %30 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpOverlayBox*
  %31 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %preedit_overlay14 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %31, i32 0, i32 23
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %preedit_overlay14, align 8
  call void @gimp_overlay_box_set_child_opacity(%struct._GimpOverlayBox* %30, %struct._GtkWidget* %32, double 7.000000e-01)
  %33 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %preedit_overlay15 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %33, i32 0, i32 23
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %preedit_overlay15, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %34)
  %call16 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call16, %struct._GtkWidget** %frame, align 8
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_frame_get_type() #6
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call17)
  %37 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %37, i32 1)
  %38 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %preedit_overlay19 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %38, i32 0, i32 23
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %preedit_overlay19, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_container_get_type() #6
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call20)
  %41 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkContainer*
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_container_add(%struct._GtkContainer* %41, %struct._GtkWidget* %42)
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %43)
  %call22 = call %struct._GtkWidget* @gtk_event_box_new()
  store %struct._GtkWidget* %call22, %struct._GtkWidget** %ebox, align 8
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %ebox, align 8
  %45 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %base = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %45, i32 0, i32 7
  %arrayidx = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %base, i32 0, i64 0
  call void @gtk_widget_modify_bg(%struct._GtkWidget* %44, i32 0, %struct._GdkColor* %arrayidx)
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %47 = bitcast %struct._GtkWidget* %46 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_container_get_type() #6
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call23)
  %48 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkContainer*
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %ebox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %48, %struct._GtkWidget* %49)
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %ebox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %50)
  %call25 = call %struct._GtkWidget* @gtk_label_new(i8* null)
  %51 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %preedit_label = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %51, i32 0, i32 24
  store %struct._GtkWidget* %call25, %struct._GtkWidget** %preedit_label, align 8
  %52 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %preedit_label26 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %52, i32 0, i32 24
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %preedit_label26, align 8
  %54 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %text27 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %54, i32 0, i32 6
  %arrayidx28 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %text27, i32 0, i64 0
  call void @gtk_widget_modify_bg(%struct._GtkWidget* %53, i32 0, %struct._GdkColor* %arrayidx28)
  %55 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %preedit_label29 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %55, i32 0, i32 24
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %preedit_label29, align 8
  %57 = bitcast %struct._GtkWidget* %56 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_misc_get_type() #6
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call30)
  %58 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkMisc*
  call void @gtk_misc_set_padding(%struct._GtkMisc* %58, i32 2, i32 2)
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %ebox, align 8
  %60 = bitcast %struct._GtkWidget* %59 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_container_get_type() #6
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call32)
  %61 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkContainer*
  %62 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %preedit_label34 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %62, i32 0, i32 24
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %preedit_label34, align 8
  call void @gtk_container_add(%struct._GtkContainer* %61, %struct._GtkWidget* %63)
  %64 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %preedit_label35 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %64, i32 0, i32 24
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %preedit_label35, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %65)
  %66 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  call void @gimp_text_tool_editor_update_im_rect(%struct._GimpTextTool* %66)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_tool_im_preedit_end(%struct._GtkIMContext* %context, %struct._GimpTextTool* %text_tool) #0 {
entry:
  %context.addr = alloca %struct._GtkIMContext*, align 8
  %text_tool.addr = alloca %struct._GimpTextTool*, align 8
  store %struct._GtkIMContext* %context, %struct._GtkIMContext** %context.addr, align 8
  store %struct._GimpTextTool* %text_tool, %struct._GimpTextTool** %text_tool.addr, align 8
  %0 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %preedit_overlay = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %0, i32 0, i32 23
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %preedit_overlay, align 8
  %tobool = icmp ne %struct._GtkWidget* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %preedit_overlay1 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %2, i32 0, i32 23
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %preedit_overlay1, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %3)
  %4 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %preedit_overlay2 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %4, i32 0, i32 23
  store %struct._GtkWidget* null, %struct._GtkWidget** %preedit_overlay2, align 8
  %5 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %preedit_label = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %5, i32 0, i32 24
  store %struct._GtkWidget* null, %struct._GtkWidget** %preedit_label, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_tool_im_preedit_changed(%struct._GtkIMContext* %context, %struct._GimpTextTool* %text_tool) #0 {
entry:
  %context.addr = alloca %struct._GtkIMContext*, align 8
  %text_tool.addr = alloca %struct._GimpTextTool*, align 8
  store %struct._GtkIMContext* %context, %struct._GtkIMContext** %context.addr, align 8
  store %struct._GimpTextTool* %text_tool, %struct._GimpTextTool** %text_tool.addr, align 8
  %0 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %preedit_string = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %0, i32 0, i32 25
  %1 = load i8*, i8** %preedit_string, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %preedit_string1 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %2, i32 0, i32 25
  %3 = load i8*, i8** %preedit_string1, align 8
  call void @g_free(i8* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GtkIMContext*, %struct._GtkIMContext** %context.addr, align 8
  %5 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %preedit_string2 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %5, i32 0, i32 25
  %6 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %preedit_cursor = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %6, i32 0, i32 26
  call void @gtk_im_context_get_preedit_string(%struct._GtkIMContext* %4, i8** %preedit_string2, %struct._PangoAttrList** null, i32* %preedit_cursor)
  %7 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %preedit_label = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %7, i32 0, i32 24
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %preedit_label, align 8
  %tobool3 = icmp ne %struct._GtkWidget* %8, null
  br i1 %tobool3, label %if.then.4, label %if.end.8

if.then.4:                                        ; preds = %if.end
  %9 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %preedit_label5 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %9, i32 0, i32 24
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %preedit_label5, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call = call i64 @gtk_label_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call)
  %12 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkLabel*
  %13 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %preedit_string7 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %13, i32 0, i32 25
  %14 = load i8*, i8** %preedit_string7, align 8
  call void @gtk_label_set_text(%struct._GtkLabel* %12, i8* %14)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.4, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_text_tool_editor_finalize(%struct._GimpTextTool* %text_tool) #0 {
entry:
  %text_tool.addr = alloca %struct._GimpTextTool*, align 8
  store %struct._GimpTextTool* %text_tool, %struct._GimpTextTool** %text_tool.addr, align 8
  %0 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %im_context = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %0, i32 0, i32 21
  %1 = load %struct._GtkIMContext*, %struct._GtkIMContext** %im_context, align 8
  %tobool = icmp ne %struct._GtkIMContext* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %im_context1 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %2, i32 0, i32 21
  %3 = load %struct._GtkIMContext*, %struct._GtkIMContext** %im_context1, align 8
  %4 = bitcast %struct._GtkIMContext* %3 to i8*
  call void @g_object_unref(i8* %4)
  %5 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %im_context2 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %5, i32 0, i32 21
  store %struct._GtkIMContext* null, %struct._GtkIMContext** %im_context2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_text_tool_editor_start(%struct._GimpTextTool* %text_tool) #0 {
entry:
  %text_tool.addr = alloca %struct._GimpTextTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %options = alloca %struct._GimpTextOptions*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  store %struct._GimpTextTool* %text_tool, %struct._GimpTextTool** %text_tool.addr, align 8
  %0 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %1 = bitcast %struct._GimpTextTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %4 = bitcast %struct._GimpTextTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTool*
  %call4 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %5)
  %6 = bitcast %struct._GimpToolOptions* %call4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_text_options_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpTextOptions*
  store %struct._GimpTextOptions* %7, %struct._GimpTextOptions** %options, align 8
  %8 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %8, i32 0, i32 4
  %9 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call7 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %9)
  store %struct._GimpDisplayShell* %call7, %struct._GimpDisplayShell** %shell, align 8
  %10 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %im_context = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %10, i32 0, i32 21
  %11 = load %struct._GtkIMContext*, %struct._GtkIMContext** %im_context, align 8
  %12 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %canvas = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %12, i32 0, i32 33
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas, align 8
  %call8 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %13)
  call void @gtk_im_context_set_client_window(%struct._GtkIMContext* %11, %struct._GdkDrawable* %call8)
  %14 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %needs_im_reset = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %14, i32 0, i32 22
  store i32 1, i32* %needs_im_reset, align 4
  %15 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  call void @gimp_text_tool_reset_im_context(%struct._GimpTextTool* %15)
  %16 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %im_context9 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %16, i32 0, i32 21
  %17 = load %struct._GtkIMContext*, %struct._GtkIMContext** %im_context9, align 8
  call void @gtk_im_context_focus_in(%struct._GtkIMContext* %17)
  %18 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options, align 8
  %use_editor = getelementptr inbounds %struct._GimpTextOptions, %struct._GimpTextOptions* %18, i32 0, i32 14
  %19 = load i32, i32* %use_editor, align 4
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %20 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  call void @gimp_text_tool_editor_dialog(%struct._GimpTextTool* %20)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %21 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options, align 8
  %22 = bitcast %struct._GimpTextOptions* %21 to i8*
  %23 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %24 = bitcast %struct._GimpTextTool* %23 to i8*
  %call10 = call i64 @g_signal_connect_data(i8* %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GimpTextOptions*, %struct._GParamSpec*, %struct._GimpTextTool*)* @gimp_text_tool_options_notify to void ()*), i8* %24, void (i8*, %struct._GClosure*)* null, i32 0)
  %25 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %style_overlay = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %25, i32 0, i32 15
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %style_overlay, align 8
  %tobool11 = icmp ne %struct._GtkWidget* %26, null
  br i1 %tobool11, label %if.end.36, label %if.then.12

if.then.12:                                       ; preds = %if.end
  %27 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options, align 8
  %28 = bitcast %struct._GimpTextOptions* %27 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_context_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call13)
  %29 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpContext*
  %gimp15 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %29, i32 0, i32 1
  %30 = load %struct._Gimp*, %struct._Gimp** %gimp15, align 8
  store %struct._Gimp* %30, %struct._Gimp** %gimp, align 8
  store double 1.000000e+00, double* %xres, align 8
  store double 1.000000e+00, double* %yres, align 8
  %call16 = call %struct._GtkWidget* @gimp_overlay_frame_new()
  %31 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %style_overlay17 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %31, i32 0, i32 15
  store %struct._GtkWidget* %call16, %struct._GtkWidget** %style_overlay17, align 8
  %32 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %style_overlay18 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %32, i32 0, i32 15
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %style_overlay18, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_container_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call19)
  %35 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %35, i32 4)
  %36 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %37 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %style_overlay21 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %37, i32 0, i32 15
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %style_overlay21, align 8
  call void @gimp_display_shell_add_overlay(%struct._GimpDisplayShell* %36, %struct._GtkWidget* %38, double 0.000000e+00, double 0.000000e+00, i32 0, i32 0, i32 0)
  %39 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %canvas22 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %39, i32 0, i32 33
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas22, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_overlay_box_get_type() #6
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call23)
  %42 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpOverlayBox*
  %43 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %style_overlay25 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %43, i32 0, i32 15
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %style_overlay25, align 8
  call void @gimp_overlay_box_set_child_opacity(%struct._GimpOverlayBox* %42, %struct._GtkWidget* %44, double 7.000000e-01)
  %45 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %image = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %45, i32 0, i32 8
  %46 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool26 = icmp ne %struct._GimpImage* %46, null
  br i1 %tobool26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.then.12
  %47 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %image28 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %47, i32 0, i32 8
  %48 = load %struct._GimpImage*, %struct._GimpImage** %image28, align 8
  call void @gimp_image_get_resolution(%struct._GimpImage* %48, double* %xres, double* %yres)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %if.then.12
  %49 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %50 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %proxy = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %50, i32 0, i32 1
  %51 = load %struct._GimpText*, %struct._GimpText** %proxy, align 8
  %52 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %buffer = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %52, i32 0, i32 5
  %53 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer, align 8
  %54 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %fonts = getelementptr inbounds %struct._Gimp, %struct._Gimp* %54, i32 0, i32 36
  %55 = load %struct._GimpContainer*, %struct._GimpContainer** %fonts, align 8
  %56 = load double, double* %xres, align 8
  %57 = load double, double* %yres, align 8
  %call30 = call %struct._GtkWidget* @gimp_text_style_editor_new(%struct._Gimp* %49, %struct._GimpText* %51, %struct._GimpTextBuffer* %53, %struct._GimpContainer* %55, double %56, double %57)
  %58 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %style_editor = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %58, i32 0, i32 16
  store %struct._GtkWidget* %call30, %struct._GtkWidget** %style_editor, align 8
  %59 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %style_overlay31 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %59, i32 0, i32 15
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %style_overlay31, align 8
  %61 = bitcast %struct._GtkWidget* %60 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_container_get_type() #6
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call32)
  %62 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkContainer*
  %63 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %style_editor34 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %63, i32 0, i32 16
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %style_editor34, align 8
  call void @gtk_container_add(%struct._GtkContainer* %62, %struct._GtkWidget* %64)
  %65 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %style_editor35 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %65, i32 0, i32 16
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %style_editor35, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %66)
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.29, %if.end
  %67 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  call void @gimp_text_tool_editor_position(%struct._GimpTextTool* %67)
  %68 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %style_overlay37 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %68, i32 0, i32 15
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %style_overlay37, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %69)
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_get_type() #2

declare %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_text_options_get_type() #2

declare %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay*) #1

declare void @gtk_im_context_set_client_window(%struct._GtkIMContext*, %struct._GdkDrawable*) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define void @gimp_text_tool_reset_im_context(%struct._GimpTextTool* %text_tool) #0 {
entry:
  %text_tool.addr = alloca %struct._GimpTextTool*, align 8
  store %struct._GimpTextTool* %text_tool, %struct._GimpTextTool** %text_tool.addr, align 8
  %0 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %needs_im_reset = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %0, i32 0, i32 22
  %1 = load i32, i32* %needs_im_reset, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %needs_im_reset1 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %2, i32 0, i32 22
  store i32 0, i32* %needs_im_reset1, align 4
  %3 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %im_context = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %3, i32 0, i32 21
  %4 = load %struct._GtkIMContext*, %struct._GtkIMContext** %im_context, align 8
  call void @gtk_im_context_reset(%struct._GtkIMContext* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @gtk_im_context_focus_in(%struct._GtkIMContext*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_tool_editor_dialog(%struct._GimpTextTool* %text_tool) #0 {
entry:
  %text_tool.addr = alloca %struct._GimpTextTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %options = alloca %struct._GimpTextOptions*, align 8
  %dialog_factory = alloca %struct._GimpDialogFactory*, align 8
  %parent = alloca %struct._GtkWindow*, align 8
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  store %struct._GimpTextTool* %text_tool, %struct._GimpTextTool** %text_tool.addr, align 8
  %0 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %1 = bitcast %struct._GimpTextTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %4 = bitcast %struct._GimpTextTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTool*
  %call4 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %5)
  %6 = bitcast %struct._GimpToolOptions* %call4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_text_options_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpTextOptions*
  store %struct._GimpTextOptions* %7, %struct._GimpTextOptions** %options, align 8
  store %struct._GtkWindow* null, %struct._GtkWindow** %parent, align 8
  store double 1.000000e+00, double* %xres, align 8
  store double 1.000000e+00, double* %yres, align 8
  %8 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %editor_dialog = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %8, i32 0, i32 31
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %editor_dialog, align 8
  %tobool = icmp ne %struct._GtkWidget* %9, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %editor_dialog7 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %10, i32 0, i32 31
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %editor_dialog7, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_window_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call8)
  %13 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %13)
  br label %return

if.end:                                           ; preds = %entry
  %call10 = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  store %struct._GimpDialogFactory* %call10, %struct._GimpDialogFactory** %dialog_factory, align 8
  %14 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %14, i32 0, i32 4
  %15 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool11 = icmp ne %struct._GimpDisplay* %15, null
  br i1 %tobool11, label %if.then.12, label %if.end.20

if.then.12:                                       ; preds = %if.end
  %16 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display13 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %16, i32 0, i32 4
  %17 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display13, align 8
  %call14 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %17)
  store %struct._GimpDisplayShell* %call14, %struct._GimpDisplayShell** %shell, align 8
  %18 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %19 = bitcast %struct._GimpDisplayShell* %18 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_widget_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call15)
  %20 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkWidget*
  %call17 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %20)
  %21 = bitcast %struct._GtkWidget* %call17 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_window_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call18)
  %22 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkWindow*
  store %struct._GtkWindow* %22, %struct._GtkWindow** %parent, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.12, %if.end
  %23 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %image = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %23, i32 0, i32 8
  %24 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool21 = icmp ne %struct._GimpImage* %24, null
  br i1 %tobool21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.20
  %25 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %image23 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %25, i32 0, i32 8
  %26 = load %struct._GimpImage*, %struct._GimpImage** %image23, align 8
  call void @gimp_image_get_resolution(%struct._GimpImage* %26, double* %xres, double* %yres)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.end.20
  %27 = load %struct._GtkWindow*, %struct._GtkWindow** %parent, align 8
  %28 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %tool_info = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %28, i32 0, i32 1
  %29 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %gimp = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %29, i32 0, i32 1
  %30 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %31 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options, align 8
  %32 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %dialog_factory, align 8
  %call25 = call %struct._GimpMenuFactory* @gimp_dialog_factory_get_menu_factory(%struct._GimpDialogFactory* %32)
  %call26 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i32 0, i32 0)) #3
  %33 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %proxy = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %33, i32 0, i32 1
  %34 = load %struct._GimpText*, %struct._GimpText** %proxy, align 8
  %35 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %buffer = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %35, i32 0, i32 5
  %36 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer, align 8
  %37 = load double, double* %xres, align 8
  %38 = load double, double* %yres, align 8
  %call27 = call %struct._GtkWidget* @gimp_text_options_editor_new(%struct._GtkWindow* %27, %struct._Gimp* %30, %struct._GimpTextOptions* %31, %struct._GimpMenuFactory* %call25, i8* %call26, %struct._GimpText* %34, %struct._GimpTextBuffer* %36, double %37, double %38)
  %39 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %editor_dialog28 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %39, i32 0, i32 31
  store %struct._GtkWidget* %call27, %struct._GtkWidget** %editor_dialog28, align 8
  %40 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %editor_dialog29 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %40, i32 0, i32 31
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %editor_dialog29, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 80)
  %43 = bitcast %struct._GTypeInstance* %call30 to %struct._GObject*
  %44 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %editor_dialog31 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %44, i32 0, i32 31
  %45 = bitcast %struct._GtkWidget** %editor_dialog31 to i8*
  %46 = bitcast i8* %45 to i8**
  call void @g_object_add_weak_pointer(%struct._GObject* %43, i8** %46)
  %47 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %dialog_factory, align 8
  %48 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %editor_dialog32 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %48, i32 0, i32 31
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %editor_dialog32, align 8
  call void @gimp_dialog_factory_add_foreign(%struct._GimpDialogFactory* %47, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i32 0, i32 0), %struct._GtkWidget* %49)
  %50 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %editor_dialog33 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %50, i32 0, i32 31
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %editor_dialog33, align 8
  %52 = bitcast %struct._GtkWidget* %51 to i8*
  %53 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %54 = bitcast %struct._GimpTextTool* %53 to i8*
  %call34 = call i64 @g_signal_connect_data(i8* %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpTextTool*)* @gimp_text_tool_editor_destroy to void ()*), i8* %54, void (i8*, %struct._GClosure*)* null, i32 0)
  %55 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %editor_dialog35 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %55, i32 0, i32 31
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %editor_dialog35, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %56)
  br label %return

return:                                           ; preds = %if.end.24, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_tool_options_notify(%struct._GimpTextOptions* %options, %struct._GParamSpec* %pspec, %struct._GimpTextTool* %text_tool) #0 {
entry:
  %options.addr = alloca %struct._GimpTextOptions*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %text_tool.addr = alloca %struct._GimpTextTool*, align 8
  %param_name = alloca i8*, align 8
  store %struct._GimpTextOptions* %options, %struct._GimpTextOptions** %options.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpTextTool* %text_tool, %struct._GimpTextTool** %text_tool.addr, align 8
  %0 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %call = call i8* @g_param_spec_get_name(%struct._GParamSpec* %0)
  store i8* %call, i8** %param_name, align 8
  %1 = load i8*, i8** %param_name, align 8
  %call1 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0)) #7
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end.8, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options.addr, align 8
  %use_editor = getelementptr inbounds %struct._GimpTextOptions, %struct._GimpTextOptions* %2, i32 0, i32 14
  %3 = load i32, i32* %use_editor, align 4
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %4 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  call void @gimp_text_tool_editor_dialog(%struct._GimpTextTool* %4)
  br label %if.end.7

if.else:                                          ; preds = %if.then
  %5 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %editor_dialog = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %5, i32 0, i32 31
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %editor_dialog, align 8
  %tobool4 = icmp ne %struct._GtkWidget* %6, null
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.else
  %7 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %editor_dialog6 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %7, i32 0, i32 31
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %editor_dialog6, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %8)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.else
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then.3
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %entry
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

declare %struct._GtkWidget* @gimp_overlay_frame_new() #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare void @gimp_display_shell_add_overlay(%struct._GimpDisplayShell*, %struct._GtkWidget*, double, double, i32, i32, i32) #1

declare void @gimp_overlay_box_set_child_opacity(%struct._GimpOverlayBox*, %struct._GtkWidget*, double) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_overlay_box_get_type() #2

declare void @gimp_image_get_resolution(%struct._GimpImage*, double*, double*) #1

declare %struct._GtkWidget* @gimp_text_style_editor_new(%struct._Gimp*, %struct._GimpText*, %struct._GimpTextBuffer*, %struct._GimpContainer*, double, double) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define void @gimp_text_tool_editor_position(%struct._GimpTextTool* %text_tool) #0 {
entry:
  %text_tool.addr = alloca %struct._GimpTextTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %requisition = alloca %struct._GtkRequisition, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  store %struct._GimpTextTool* %text_tool, %struct._GimpTextTool** %text_tool.addr, align 8
  %0 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %style_overlay = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %0, i32 0, i32 15
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %style_overlay, align 8
  %tobool = icmp ne %struct._GtkWidget* %1, null
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %3 = bitcast %struct._GimpTextTool* %2 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %4, %struct._GimpTool** %tool, align 8
  %5 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %5, i32 0, i32 4
  %6 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call2 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %6)
  store %struct._GimpDisplayShell* %call2, %struct._GimpDisplayShell** %shell, align 8
  %7 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %style_overlay3 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %7, i32 0, i32 15
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %style_overlay3, align 8
  call void @gtk_widget_size_request(%struct._GtkWidget* %8, %struct._GtkRequisition* %requisition)
  %9 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %10 = bitcast %struct._GimpTextTool* %9 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i32* %x, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i32* %y, i8* null)
  %11 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %12 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %style_overlay4 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %12, i32 0, i32 15
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %style_overlay4, align 8
  %14 = load i32, i32* %x, align 4
  %conv = sitofp i32 %14 to double
  %15 = load i32, i32* %y, align 4
  %conv5 = sitofp i32 %15 to double
  call void @gimp_display_shell_move_overlay(%struct._GimpDisplayShell* %11, %struct._GtkWidget* %13, double %conv, double %conv5, i32 5, i32 4, i32 12)
  %16 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %image = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %16, i32 0, i32 8
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool6 = icmp ne %struct._GimpImage* %17, null
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %18 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %image8 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %18, i32 0, i32 8
  %19 = load %struct._GimpImage*, %struct._GimpImage** %image8, align 8
  call void @gimp_image_get_resolution(%struct._GimpImage* %19, double* %xres, double* %yres)
  %20 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %style_editor = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %20, i32 0, i32 16
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %style_editor, align 8
  %22 = bitcast %struct._GtkWidget* %21 to i8*
  %23 = load double, double* %xres, align 8
  %24 = load double, double* %yres, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), double %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), double %24, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %entry
  ret void
}

declare void @gtk_widget_size_request(%struct._GtkWidget*, %struct._GtkRequisition*) #1

declare void @g_object_get(i8*, i8*, ...) #1

declare void @gimp_display_shell_move_overlay(%struct._GimpDisplayShell*, %struct._GtkWidget*, double, double, i32, i32, i32) #1

declare void @g_object_set(i8*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_text_tool_editor_halt(%struct._GimpTextTool* %text_tool) #0 {
entry:
  %text_tool.addr = alloca %struct._GimpTextTool*, align 8
  %options = alloca %struct._GimpTextOptions*, align 8
  store %struct._GimpTextTool* %text_tool, %struct._GimpTextTool** %text_tool.addr, align 8
  %0 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %1 = bitcast %struct._GimpTextTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  %call2 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %2)
  %3 = bitcast %struct._GimpToolOptions* %call2 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_text_options_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call3)
  %4 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpTextOptions*
  store %struct._GimpTextOptions* %4, %struct._GimpTextOptions** %options, align 8
  %5 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %style_overlay = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %5, i32 0, i32 15
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %style_overlay, align 8
  %tobool = icmp ne %struct._GtkWidget* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %style_overlay5 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %7, i32 0, i32 15
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %style_overlay5, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %8)
  %9 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %style_overlay6 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %9, i32 0, i32 15
  store %struct._GtkWidget* null, %struct._GtkWidget** %style_overlay6, align 8
  %10 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %style_editor = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %10, i32 0, i32 16
  store %struct._GtkWidget* null, %struct._GtkWidget** %style_editor, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options, align 8
  %12 = bitcast %struct._GimpTextOptions* %11 to i8*
  %13 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %14 = bitcast %struct._GimpTextTool* %13 to i8*
  %call7 = call i32 @g_signal_handlers_disconnect_matched(i8* %12, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpTextOptions*, %struct._GParamSpec*, %struct._GimpTextTool*)* @gimp_text_tool_options_notify to i8*), i8* %14)
  %15 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %editor_dialog = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %15, i32 0, i32 31
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %editor_dialog, align 8
  %tobool8 = icmp ne %struct._GtkWidget* %16, null
  br i1 %tobool8, label %if.then.9, label %if.end.13

if.then.9:                                        ; preds = %if.end
  %17 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %editor_dialog10 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %17, i32 0, i32 31
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %editor_dialog10, align 8
  %19 = bitcast %struct._GtkWidget* %18 to i8*
  %20 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %21 = bitcast %struct._GimpTextTool* %20 to i8*
  %call11 = call i32 @g_signal_handlers_disconnect_matched(i8* %19, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GimpTextTool*)* @gimp_text_tool_editor_destroy to i8*), i8* %21)
  %22 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %editor_dialog12 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %22, i32 0, i32 31
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %editor_dialog12, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %23)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.9, %if.end
  %24 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %proxy_text_view = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %24, i32 0, i32 30
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %proxy_text_view, align 8
  %tobool14 = icmp ne %struct._GtkWidget* %25, null
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.end.13
  %26 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %offscreen_window = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %26, i32 0, i32 29
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %offscreen_window, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %27)
  %28 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %offscreen_window16 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %28, i32 0, i32 29
  store %struct._GtkWidget* null, %struct._GtkWidget** %offscreen_window16, align 8
  %29 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %proxy_text_view17 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %29, i32 0, i32 30
  store %struct._GtkWidget* null, %struct._GtkWidget** %proxy_text_view17, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %if.end.13
  %30 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %needs_im_reset = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %30, i32 0, i32 22
  store i32 1, i32* %needs_im_reset, align 4
  %31 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  call void @gimp_text_tool_reset_im_context(%struct._GimpTextTool* %31)
  %32 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %im_context = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %32, i32 0, i32 21
  %33 = load %struct._GtkIMContext*, %struct._GtkIMContext** %im_context, align 8
  call void @gtk_im_context_focus_out(%struct._GtkIMContext* %33)
  %34 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %im_context19 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %34, i32 0, i32 21
  %35 = load %struct._GtkIMContext*, %struct._GtkIMContext** %im_context19, align 8
  call void @gtk_im_context_set_client_window(%struct._GtkIMContext* %35, %struct._GdkDrawable* null)
  ret void
}

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_tool_editor_destroy(%struct._GtkWidget* %dialog, %struct._GimpTextTool* %text_tool) #0 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %text_tool.addr = alloca %struct._GimpTextTool*, align 8
  %options = alloca %struct._GimpTextOptions*, align 8
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store %struct._GimpTextTool* %text_tool, %struct._GimpTextTool** %text_tool.addr, align 8
  %0 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %1 = bitcast %struct._GimpTextTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  %call2 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %2)
  %3 = bitcast %struct._GimpToolOptions* %call2 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_text_options_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call3)
  %4 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpTextOptions*
  store %struct._GimpTextOptions* %4, %struct._GimpTextOptions** %options, align 8
  %5 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options, align 8
  %6 = bitcast %struct._GimpTextOptions* %5 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), i32 0, i8* null)
  ret void
}

declare void @gtk_im_context_focus_out(%struct._GtkIMContext*) #1

; Function Attrs: nounwind uwtable
define void @gimp_text_tool_editor_button_press(%struct._GimpTextTool* %text_tool, double %x, double %y, i32 %press_type) #0 {
entry:
  %text_tool.addr = alloca %struct._GimpTextTool*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %press_type.addr = alloca i32, align 4
  %buffer = alloca %struct._GtkTextBuffer*, align 8
  %cursor = alloca %struct._GtkTextIter, align 8
  %selection = alloca %struct._GtkTextIter, align 8
  store %struct._GimpTextTool* %text_tool, %struct._GimpTextTool** %text_tool.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store i32 %press_type, i32* %press_type.addr, align 4
  %0 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %buffer1 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %0, i32 0, i32 5
  %1 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer1, align 8
  %2 = bitcast %struct._GimpTextBuffer* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_text_buffer_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkTextBuffer*
  store %struct._GtkTextBuffer* %3, %struct._GtkTextBuffer** %buffer, align 8
  %4 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %5 = load double, double* %x.addr, align 8
  %6 = load double, double* %y.addr, align 8
  call void @gimp_text_tool_xy_to_iter(%struct._GimpTextTool* %4, double %5, double %6, %struct._GtkTextIter* %cursor)
  %7 = bitcast %struct._GtkTextIter* %selection to i8*
  %8 = bitcast %struct._GtkTextIter* %cursor to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 80, i32 8, i1 false)
  %9 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %select_start_iter = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %9, i32 0, i32 18
  %10 = bitcast %struct._GtkTextIter* %select_start_iter to i8*
  %11 = bitcast %struct._GtkTextIter* %cursor to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 80, i32 8, i1 false)
  %12 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %select_words = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %12, i32 0, i32 19
  store i32 0, i32* %select_words, align 4
  %13 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %select_lines = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %13, i32 0, i32 20
  store i32 0, i32* %select_lines, align 4
  %14 = load i32, i32* %press_type.addr, align 4
  switch i32 %14, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.3
    i32 2, label %sw.bb.14
  ]

sw.bb:                                            ; preds = %entry
  %15 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  call void @gtk_text_buffer_place_cursor(%struct._GtkTextBuffer* %15, %struct._GtkTextIter* %cursor)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %16 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %select_words4 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %16, i32 0, i32 19
  store i32 1, i32* %select_words4, align 4
  %call5 = call i32 @gtk_text_iter_starts_word(%struct._GtkTextIter* %cursor)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb.3
  %call6 = call i32 @gtk_text_iter_backward_visible_word_starts(%struct._GtkTextIter* %cursor, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.3
  %call7 = call i32 @gtk_text_iter_ends_word(%struct._GtkTextIter* %selection)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end.13, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call9 = call i32 @gtk_text_iter_forward_visible_word_ends(%struct._GtkTextIter* %selection, i32 1)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end.13, label %if.then.11

if.then.11:                                       ; preds = %land.lhs.true
  %call12 = call i32 @gtk_text_iter_forward_to_line_end(%struct._GtkTextIter* %selection)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %land.lhs.true, %if.end
  %17 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  call void @gtk_text_buffer_select_range(%struct._GtkTextBuffer* %17, %struct._GtkTextIter* %cursor, %struct._GtkTextIter* %selection)
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry
  %18 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %select_lines15 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %18, i32 0, i32 20
  store i32 1, i32* %select_lines15, align 4
  call void @gtk_text_iter_set_line_offset(%struct._GtkTextIter* %cursor, i32 0)
  %call16 = call i32 @gtk_text_iter_forward_to_line_end(%struct._GtkTextIter* %selection)
  %19 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  call void @gtk_text_buffer_select_range(%struct._GtkTextBuffer* %19, %struct._GtkTextIter* %cursor, %struct._GtkTextIter* %selection)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.14, %if.end.13, %sw.bb
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gtk_text_buffer_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_text_tool_xy_to_iter(%struct._GimpTextTool* %text_tool, double %x, double %y, %struct._GtkTextIter* %iter) #0 {
entry:
  %text_tool.addr = alloca %struct._GimpTextTool*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %iter.addr = alloca %struct._GtkTextIter*, align 8
  %layout = alloca %struct._PangoLayout*, align 8
  %offset_x = alloca i32, align 4
  %offset_y = alloca i32, align 4
  %index = alloca i32, align 4
  %trailing = alloca i32, align 4
  store %struct._GimpTextTool* %text_tool, %struct._GimpTextTool** %text_tool.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store %struct._GtkTextIter* %iter, %struct._GtkTextIter** %iter.addr, align 8
  %0 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %call = call i32 @gimp_text_tool_ensure_layout(%struct._GimpTextTool* %0)
  %1 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %layout1 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %1, i32 0, i32 13
  %2 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout1, align 8
  call void @gimp_text_layout_untransform_point(%struct._GimpTextLayout* %2, double* %x.addr, double* %y.addr)
  %3 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %layout2 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %3, i32 0, i32 13
  %4 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout2, align 8
  call void @gimp_text_layout_get_offsets(%struct._GimpTextLayout* %4, i32* %offset_x, i32* %offset_y)
  %5 = load i32, i32* %offset_x, align 4
  %conv = sitofp i32 %5 to double
  %6 = load double, double* %x.addr, align 8
  %sub = fsub double %6, %conv
  store double %sub, double* %x.addr, align 8
  %7 = load i32, i32* %offset_y, align 4
  %conv3 = sitofp i32 %7 to double
  %8 = load double, double* %y.addr, align 8
  %sub4 = fsub double %8, %conv3
  store double %sub4, double* %y.addr, align 8
  %9 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %layout5 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %9, i32 0, i32 13
  %10 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout5, align 8
  %call6 = call %struct._PangoLayout* @gimp_text_layout_get_pango_layout(%struct._GimpTextLayout* %10)
  store %struct._PangoLayout* %call6, %struct._PangoLayout** %layout, align 8
  %11 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  %12 = load double, double* %x.addr, align 8
  %mul = fmul double %12, 1.024000e+03
  %conv7 = fptosi double %mul to i32
  %13 = load double, double* %y.addr, align 8
  %mul8 = fmul double %13, 1.024000e+03
  %conv9 = fptosi double %mul8 to i32
  %call10 = call i32 @pango_layout_xy_to_index(%struct._PangoLayout* %11, i32 %conv7, i32 %conv9, i32* %index, i32* %trailing)
  %14 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %buffer = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %14, i32 0, i32 5
  %15 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer, align 8
  %16 = load %struct._GtkTextIter*, %struct._GtkTextIter** %iter.addr, align 8
  %17 = load i32, i32* %index, align 4
  call void @gimp_text_buffer_get_iter_at_index(%struct._GimpTextBuffer* %15, %struct._GtkTextIter* %16, i32 %17, i32 1)
  %18 = load i32, i32* %trailing, align 4
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %19 = load %struct._GtkTextIter*, %struct._GtkTextIter** %iter.addr, align 8
  %call11 = call i32 @gtk_text_iter_forward_char(%struct._GtkTextIter* %19)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare void @gtk_text_buffer_place_cursor(%struct._GtkTextBuffer*, %struct._GtkTextIter*) #1

declare i32 @gtk_text_iter_starts_word(%struct._GtkTextIter*) #1

declare i32 @gtk_text_iter_backward_visible_word_starts(%struct._GtkTextIter*, i32) #1

declare i32 @gtk_text_iter_ends_word(%struct._GtkTextIter*) #1

declare i32 @gtk_text_iter_forward_visible_word_ends(%struct._GtkTextIter*, i32) #1

declare i32 @gtk_text_iter_forward_to_line_end(%struct._GtkTextIter*) #1

declare void @gtk_text_buffer_select_range(%struct._GtkTextBuffer*, %struct._GtkTextIter*, %struct._GtkTextIter*) #1

declare void @gtk_text_iter_set_line_offset(%struct._GtkTextIter*, i32) #1

; Function Attrs: nounwind uwtable
define void @gimp_text_tool_editor_button_release(%struct._GimpTextTool* %text_tool) #0 {
entry:
  %text_tool.addr = alloca %struct._GimpTextTool*, align 8
  %buffer = alloca %struct._GtkTextBuffer*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %clipboard = alloca %struct._GtkClipboard*, align 8
  store %struct._GimpTextTool* %text_tool, %struct._GimpTextTool** %text_tool.addr, align 8
  %0 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %buffer1 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %0, i32 0, i32 5
  %1 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer1, align 8
  %2 = bitcast %struct._GimpTextBuffer* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_text_buffer_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkTextBuffer*
  store %struct._GtkTextBuffer* %3, %struct._GtkTextBuffer** %buffer, align 8
  %4 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %call3 = call i32 @gtk_text_buffer_get_has_selection(%struct._GtkTextBuffer* %4)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %6 = bitcast %struct._GimpTextTool* %5 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_tool_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call4)
  %7 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpTool*
  store %struct._GimpTool* %7, %struct._GimpTool** %tool, align 8
  %8 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %8, i32 0, i32 4
  %9 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call6 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %9)
  store %struct._GimpDisplayShell* %call6, %struct._GimpDisplayShell** %shell, align 8
  %10 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %11 = bitcast %struct._GimpDisplayShell* %10 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_widget_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call7)
  %12 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkWidget*
  %call9 = call %struct._GtkClipboard* @gtk_widget_get_clipboard(%struct._GtkWidget* %12, %struct._GdkAtom* inttoptr (i64 1 to %struct._GdkAtom*))
  store %struct._GtkClipboard* %call9, %struct._GtkClipboard** %clipboard, align 8
  %13 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %14 = load %struct._GtkClipboard*, %struct._GtkClipboard** %clipboard, align 8
  call void @gtk_text_buffer_copy_clipboard(%struct._GtkTextBuffer* %13, %struct._GtkClipboard* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @gtk_text_buffer_get_has_selection(%struct._GtkTextBuffer*) #1

declare %struct._GtkClipboard* @gtk_widget_get_clipboard(%struct._GtkWidget*, %struct._GdkAtom*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare void @gtk_text_buffer_copy_clipboard(%struct._GtkTextBuffer*, %struct._GtkClipboard*) #1

; Function Attrs: nounwind uwtable
define void @gimp_text_tool_editor_motion(%struct._GimpTextTool* %text_tool, double %x, double %y) #0 {
entry:
  %text_tool.addr = alloca %struct._GimpTextTool*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %buffer = alloca %struct._GtkTextBuffer*, align 8
  %old_cursor = alloca %struct._GtkTextIter, align 8
  %old_selection = alloca %struct._GtkTextIter, align 8
  %cursor = alloca %struct._GtkTextIter, align 8
  %selection = alloca %struct._GtkTextIter, align 8
  %start = alloca %struct._GtkTextIter, align 8
  %end = alloca %struct._GtkTextIter, align 8
  store %struct._GimpTextTool* %text_tool, %struct._GimpTextTool** %text_tool.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %buffer1 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %0, i32 0, i32 5
  %1 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer1, align 8
  %2 = bitcast %struct._GimpTextBuffer* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_text_buffer_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkTextBuffer*
  store %struct._GtkTextBuffer* %3, %struct._GtkTextBuffer** %buffer, align 8
  %4 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %5 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %call3 = call %struct._GtkTextMark* @gtk_text_buffer_get_insert(%struct._GtkTextBuffer* %5)
  call void @gtk_text_buffer_get_iter_at_mark(%struct._GtkTextBuffer* %4, %struct._GtkTextIter* %old_cursor, %struct._GtkTextMark* %call3)
  %6 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %7 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %call4 = call %struct._GtkTextMark* @gtk_text_buffer_get_selection_bound(%struct._GtkTextBuffer* %7)
  call void @gtk_text_buffer_get_iter_at_mark(%struct._GtkTextBuffer* %6, %struct._GtkTextIter* %old_selection, %struct._GtkTextMark* %call4)
  %8 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %9 = load double, double* %x.addr, align 8
  %10 = load double, double* %y.addr, align 8
  call void @gimp_text_tool_xy_to_iter(%struct._GimpTextTool* %8, double %9, double %10, %struct._GtkTextIter* %cursor)
  %11 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %select_start_iter = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %11, i32 0, i32 18
  %12 = bitcast %struct._GtkTextIter* %selection to i8*
  %13 = bitcast %struct._GtkTextIter* %select_start_iter to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 80, i32 8, i1 false)
  %14 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %select_words = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %14, i32 0, i32 19
  %15 = load i32, i32* %select_words, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %16 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %select_lines = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %16, i32 0, i32 20
  %17 = load i32, i32* %select_lines, align 4
  %tobool5 = icmp ne i32 %17, 0
  br i1 %tobool5, label %if.then, label %if.end.35

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call6 = call i32 @gtk_text_iter_compare(%struct._GtkTextIter* %cursor, %struct._GtkTextIter* %selection)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then
  %18 = bitcast %struct._GtkTextIter* %start to i8*
  %19 = bitcast %struct._GtkTextIter* %cursor to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 80, i32 8, i1 false)
  %20 = bitcast %struct._GtkTextIter* %end to i8*
  %21 = bitcast %struct._GtkTextIter* %selection to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 80, i32 8, i1 false)
  br label %if.end

if.else:                                          ; preds = %if.then
  %22 = bitcast %struct._GtkTextIter* %start to i8*
  %23 = bitcast %struct._GtkTextIter* %selection to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 80, i32 8, i1 false)
  %24 = bitcast %struct._GtkTextIter* %end to i8*
  %25 = bitcast %struct._GtkTextIter* %cursor to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 80, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.7
  %26 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %select_words8 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %26, i32 0, i32 19
  %27 = load i32, i32* %select_words8, align 4
  %tobool9 = icmp ne i32 %27, 0
  br i1 %tobool9, label %if.then.10, label %if.else.23

if.then.10:                                       ; preds = %if.end
  %call11 = call i32 @gtk_text_iter_starts_word(%struct._GtkTextIter* %start)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end.15, label %if.then.13

if.then.13:                                       ; preds = %if.then.10
  %call14 = call i32 @gtk_text_iter_backward_visible_word_starts(%struct._GtkTextIter* %start, i32 1)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.then.10
  %call16 = call i32 @gtk_text_iter_ends_word(%struct._GtkTextIter* %end)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end.22, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.15
  %call18 = call i32 @gtk_text_iter_forward_visible_word_ends(%struct._GtkTextIter* %end, i32 1)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end.22, label %if.then.20

if.then.20:                                       ; preds = %land.lhs.true
  %call21 = call i32 @gtk_text_iter_forward_to_line_end(%struct._GtkTextIter* %end)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %land.lhs.true, %if.end.15
  br label %if.end.29

if.else.23:                                       ; preds = %if.end
  %28 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %select_lines24 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %28, i32 0, i32 20
  %29 = load i32, i32* %select_lines24, align 4
  %tobool25 = icmp ne i32 %29, 0
  br i1 %tobool25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.else.23
  call void @gtk_text_iter_set_line_offset(%struct._GtkTextIter* %start, i32 0)
  %call27 = call i32 @gtk_text_iter_forward_to_line_end(%struct._GtkTextIter* %end)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %if.else.23
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.end.22
  %call30 = call i32 @gtk_text_iter_compare(%struct._GtkTextIter* %cursor, %struct._GtkTextIter* %selection)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %if.end.29
  %30 = bitcast %struct._GtkTextIter* %cursor to i8*
  %31 = bitcast %struct._GtkTextIter* %start to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 80, i32 8, i1 false)
  %32 = bitcast %struct._GtkTextIter* %selection to i8*
  %33 = bitcast %struct._GtkTextIter* %end to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 80, i32 8, i1 false)
  br label %if.end.34

if.else.33:                                       ; preds = %if.end.29
  %34 = bitcast %struct._GtkTextIter* %selection to i8*
  %35 = bitcast %struct._GtkTextIter* %start to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 80, i32 8, i1 false)
  %36 = bitcast %struct._GtkTextIter* %cursor to i8*
  %37 = bitcast %struct._GtkTextIter* %end to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 80, i32 8, i1 false)
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.33, %if.then.32
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %lor.lhs.false
  %call36 = call i32 @gtk_text_iter_equal(%struct._GtkTextIter* %cursor, %struct._GtkTextIter* %old_cursor)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %lor.lhs.false.38, label %if.then.41

lor.lhs.false.38:                                 ; preds = %if.end.35
  %call39 = call i32 @gtk_text_iter_equal(%struct._GtkTextIter* %selection, %struct._GtkTextIter* %old_selection)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.end.46, label %if.then.41

if.then.41:                                       ; preds = %lor.lhs.false.38, %if.end.35
  %38 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %39 = bitcast %struct._GimpTextTool* %38 to %struct._GTypeInstance*
  %call42 = call i64 @gimp_draw_tool_get_type() #6
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call42)
  %40 = bitcast %struct._GTypeInstance* %call43 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %40)
  %41 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  call void @gtk_text_buffer_select_range(%struct._GtkTextBuffer* %41, %struct._GtkTextIter* %cursor, %struct._GtkTextIter* %selection)
  %42 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %43 = bitcast %struct._GimpTextTool* %42 to %struct._GTypeInstance*
  %call44 = call i64 @gimp_draw_tool_get_type() #6
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call44)
  %44 = bitcast %struct._GTypeInstance* %call45 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %44)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.41, %lor.lhs.false.38
  ret void
}

declare void @gtk_text_buffer_get_iter_at_mark(%struct._GtkTextBuffer*, %struct._GtkTextIter*, %struct._GtkTextMark*) #1

declare %struct._GtkTextMark* @gtk_text_buffer_get_insert(%struct._GtkTextBuffer*) #1

declare %struct._GtkTextMark* @gtk_text_buffer_get_selection_bound(%struct._GtkTextBuffer*) #1

declare i32 @gtk_text_iter_compare(%struct._GtkTextIter*, %struct._GtkTextIter*) #1

declare i32 @gtk_text_iter_equal(%struct._GtkTextIter*, %struct._GtkTextIter*) #1

declare void @gimp_draw_tool_pause(%struct._GimpDrawTool*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_draw_tool_get_type() #2

declare void @gimp_draw_tool_resume(%struct._GimpDrawTool*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_text_tool_editor_key_press(%struct._GimpTextTool* %text_tool, %struct._GdkEventKey* %kevent) #0 {
entry:
  %retval = alloca i32, align 4
  %text_tool.addr = alloca %struct._GimpTextTool*, align 8
  %kevent.addr = alloca %struct._GdkEventKey*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %buffer = alloca %struct._GtkTextBuffer*, align 8
  %cursor = alloca %struct._GtkTextIter, align 8
  %selection = alloca %struct._GtkTextIter, align 8
  %retval6 = alloca i32, align 4
  store %struct._GimpTextTool* %text_tool, %struct._GimpTextTool** %text_tool.addr, align 8
  store %struct._GdkEventKey* %kevent, %struct._GdkEventKey** %kevent.addr, align 8
  %0 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %1 = bitcast %struct._GimpTextTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %3, i32 0, i32 4
  %4 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call2 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %4)
  store %struct._GimpDisplayShell* %call2, %struct._GimpDisplayShell** %shell, align 8
  %5 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %buffer3 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %5, i32 0, i32 5
  %6 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer3, align 8
  %7 = bitcast %struct._GimpTextBuffer* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_text_buffer_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkTextBuffer*
  store %struct._GtkTextBuffer* %8, %struct._GtkTextBuffer** %buffer, align 8
  store i32 1, i32* %retval6, align 4
  %9 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %canvas = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %9, i32 0, i32 33
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas, align 8
  %call7 = call i32 @gtk_widget_has_focus(%struct._GtkWidget* %10)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %11 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %keyval = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %11, i32 0, i32 5
  %12 = load i32, i32* %keyval, align 4
  switch i32 %12, label %sw.default [
    i32 65289, label %sw.bb
    i32 65417, label %sw.bb
    i32 65056, label %sw.bb
    i32 65307, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.then, %if.then, %if.then, %if.then
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %canvas8 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 33
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas8, align 8
  call void @gtk_widget_grab_focus(%struct._GtkWidget* %14)
  store i32 1, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %entry
  %15 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %im_context = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %15, i32 0, i32 21
  %16 = load %struct._GtkIMContext*, %struct._GtkIMContext** %im_context, align 8
  %17 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %call9 = call i32 @gtk_im_context_filter_keypress(%struct._GtkIMContext* %16, %struct._GdkEventKey* %17)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  %18 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %needs_im_reset = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %18, i32 0, i32 22
  store i32 1, i32* %needs_im_reset, align 4
  %19 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %x_pos = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %19, i32 0, i32 28
  store i32 -1, i32* %x_pos, align 4
  store i32 1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end
  %20 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  call void @gimp_text_tool_ensure_proxy(%struct._GimpTextTool* %20)
  %21 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %proxy_text_view = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %21, i32 0, i32 30
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %proxy_text_view, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_object_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call13)
  %24 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkObject*
  %25 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %call15 = call i32 @gtk_bindings_activate_event(%struct._GtkObject* %24, %struct._GdkEventKey* %25)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.end.21

if.then.17:                                       ; preds = %if.end.12
  br label %do.body

do.body:                                          ; preds = %if.then.17
  %26 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %26, 8192
  %tobool18 = icmp ne i32 %and, 0
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %do.body
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 8192, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_text_tool_editor_key_press, i32 0, i32 0), i32 458, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.20
  store i32 1, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.end.12
  %27 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %28 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %call22 = call %struct._GtkTextMark* @gtk_text_buffer_get_insert(%struct._GtkTextBuffer* %28)
  call void @gtk_text_buffer_get_iter_at_mark(%struct._GtkTextBuffer* %27, %struct._GtkTextIter* %cursor, %struct._GtkTextMark* %call22)
  %29 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %30 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %call23 = call %struct._GtkTextMark* @gtk_text_buffer_get_selection_bound(%struct._GtkTextBuffer* %30)
  call void @gtk_text_buffer_get_iter_at_mark(%struct._GtkTextBuffer* %29, %struct._GtkTextIter* %selection, %struct._GtkTextMark* %call23)
  %31 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %keyval24 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %31, i32 0, i32 5
  %32 = load i32, i32* %keyval24, align 4
  switch i32 %32, label %sw.default.35 [
    i32 65293, label %sw.bb.25
    i32 65421, label %sw.bb.25
    i32 65076, label %sw.bb.25
    i32 65289, label %sw.bb.26
    i32 65417, label %sw.bb.26
    i32 65056, label %sw.bb.26
    i32 65307, label %sw.bb.27
  ]

sw.bb.25:                                         ; preds = %if.end.21, %if.end.21, %if.end.21
  %33 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  call void @gimp_text_tool_reset_im_context(%struct._GimpTextTool* %33)
  %34 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  call void @gimp_text_tool_enter_text(%struct._GimpTextTool* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  br label %sw.epilog.36

sw.bb.26:                                         ; preds = %if.end.21, %if.end.21, %if.end.21
  %35 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  call void @gimp_text_tool_reset_im_context(%struct._GimpTextTool* %35)
  %36 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  call void @gimp_text_tool_enter_text(%struct._GimpTextTool* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0))
  br label %sw.epilog.36

sw.bb.27:                                         ; preds = %if.end.21
  %37 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %38 = bitcast %struct._GimpTextTool* %37 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_rectangle_tool_interface_get_type() #6
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call28)
  %39 = bitcast %struct._GTypeInstance* %call29 to %struct._GimpRectangleTool*
  call void @gimp_rectangle_tool_cancel(%struct._GimpRectangleTool* %39)
  %40 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %41 = bitcast %struct._GimpTextTool* %40 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_tool_get_type() #6
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call30)
  %42 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpTool*
  %43 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %44 = bitcast %struct._GimpTextTool* %43 to %struct._GTypeInstance*
  %call32 = call i64 @gimp_tool_get_type() #6
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call32)
  %45 = bitcast %struct._GTypeInstance* %call33 to %struct._GimpTool*
  %display34 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %45, i32 0, i32 4
  %46 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display34, align 8
  call void @gimp_tool_control(%struct._GimpTool* %42, i32 2, %struct._GimpDisplay* %46)
  br label %sw.epilog.36

sw.default.35:                                    ; preds = %if.end.21
  store i32 0, i32* %retval6, align 4
  br label %sw.epilog.36

sw.epilog.36:                                     ; preds = %sw.default.35, %sw.bb.27, %sw.bb.26, %sw.bb.25
  %47 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %x_pos37 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %47, i32 0, i32 28
  store i32 -1, i32* %x_pos37, align 4
  %48 = load i32, i32* %retval6, align 4
  store i32 %48, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog.36, %do.end, %if.then.11, %sw.bb
  %49 = load i32, i32* %retval
  ret i32 %49
}

declare i32 @gtk_widget_has_focus(%struct._GtkWidget*) #1

declare void @gtk_widget_grab_focus(%struct._GtkWidget*) #1

declare i32 @gtk_im_context_filter_keypress(%struct._GtkIMContext*, %struct._GdkEventKey*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_tool_ensure_proxy(%struct._GimpTextTool* %text_tool) #0 {
entry:
  %text_tool.addr = alloca %struct._GimpTextTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  store %struct._GimpTextTool* %text_tool, %struct._GimpTextTool** %text_tool.addr, align 8
  %0 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %1 = bitcast %struct._GimpTextTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %3, i32 0, i32 4
  %4 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call2 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %4)
  store %struct._GimpDisplayShell* %call2, %struct._GimpDisplayShell** %shell, align 8
  %5 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %offscreen_window = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %5, i32 0, i32 29
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %offscreen_window, align 8
  %tobool = icmp ne %struct._GtkWidget* %6, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %7 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %offscreen_window3 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %7, i32 0, i32 29
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %offscreen_window3, align 8
  %call4 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %8)
  %9 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %10 = bitcast %struct._GimpDisplayShell* %9 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_widget_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call5)
  %11 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkWidget*
  %call7 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %11)
  %cmp = icmp ne %struct._GdkScreen* %call4, %call7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %12 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %offscreen_window8 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %12, i32 0, i32 29
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %offscreen_window8, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_window_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call9)
  %15 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkWindow*
  %16 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %17 = bitcast %struct._GimpDisplayShell* %16 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_widget_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call11)
  %18 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkWidget*
  %call13 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %18)
  call void @gtk_window_set_screen(%struct._GtkWindow* %15, %struct._GdkScreen* %call13)
  %19 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %offscreen_window14 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %19, i32 0, i32 29
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %offscreen_window14, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_window_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call15)
  %22 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkWindow*
  call void @gtk_window_move(%struct._GtkWindow* %22, i32 -200, i32 -200)
  br label %if.end.62

if.else:                                          ; preds = %land.lhs.true, %entry
  %23 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %offscreen_window17 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %23, i32 0, i32 29
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %offscreen_window17, align 8
  %tobool18 = icmp ne %struct._GtkWidget* %24, null
  br i1 %tobool18, label %if.end, label %if.then.19

if.then.19:                                       ; preds = %if.else
  %call20 = call %struct._GtkWidget* @gtk_window_new(i32 1)
  %25 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %offscreen_window21 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %25, i32 0, i32 29
  store %struct._GtkWidget* %call20, %struct._GtkWidget** %offscreen_window21, align 8
  %26 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %offscreen_window22 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %26, i32 0, i32 29
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %offscreen_window22, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_window_get_type() #6
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call23)
  %29 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkWindow*
  %30 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %31 = bitcast %struct._GimpDisplayShell* %30 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_widget_get_type() #6
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call25)
  %32 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkWidget*
  %call27 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %32)
  call void @gtk_window_set_screen(%struct._GtkWindow* %29, %struct._GdkScreen* %call27)
  %33 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %offscreen_window28 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %33, i32 0, i32 29
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %offscreen_window28, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_window_get_type() #6
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call29)
  %36 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkWindow*
  call void @gtk_window_move(%struct._GtkWindow* %36, i32 -200, i32 -200)
  %37 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %offscreen_window31 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %37, i32 0, i32 29
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %offscreen_window31, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %38)
  %call32 = call %struct._GtkWidget* @gimp_text_proxy_new()
  %39 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %proxy_text_view = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %39, i32 0, i32 30
  store %struct._GtkWidget* %call32, %struct._GtkWidget** %proxy_text_view, align 8
  %40 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %offscreen_window33 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %40, i32 0, i32 29
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %offscreen_window33, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_container_get_type() #6
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call34)
  %43 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkContainer*
  %44 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %proxy_text_view36 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %44, i32 0, i32 30
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %proxy_text_view36, align 8
  call void @gtk_container_add(%struct._GtkContainer* %43, %struct._GtkWidget* %45)
  %46 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %proxy_text_view37 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %46, i32 0, i32 30
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %proxy_text_view37, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %47)
  %48 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %proxy_text_view38 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %48, i32 0, i32 30
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %proxy_text_view38, align 8
  %50 = bitcast %struct._GtkWidget* %49 to i8*
  %51 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %52 = bitcast %struct._GimpTextTool* %51 to i8*
  %call39 = call i64 @g_signal_connect_data(i8* %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), void ()* bitcast (void (%struct._GimpTextTool*, i32, i32, i32)* @gimp_text_tool_move_cursor to void ()*), i8* %52, void (i8*, %struct._GClosure*)* null, i32 2)
  %53 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %proxy_text_view40 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %53, i32 0, i32 30
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %proxy_text_view40, align 8
  %55 = bitcast %struct._GtkWidget* %54 to i8*
  %56 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %57 = bitcast %struct._GimpTextTool* %56 to i8*
  %call41 = call i64 @g_signal_connect_data(i8* %55, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0), void ()* bitcast (void (%struct._GimpTextTool*, i8*)* @gimp_text_tool_insert_at_cursor to void ()*), i8* %57, void (i8*, %struct._GClosure*)* null, i32 2)
  %58 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %proxy_text_view42 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %58, i32 0, i32 30
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %proxy_text_view42, align 8
  %60 = bitcast %struct._GtkWidget* %59 to i8*
  %61 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %62 = bitcast %struct._GimpTextTool* %61 to i8*
  %call43 = call i64 @g_signal_connect_data(i8* %60, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0), void ()* bitcast (void (%struct._GimpTextTool*, i32, i32)* @gimp_text_tool_delete_from_cursor to void ()*), i8* %62, void (i8*, %struct._GClosure*)* null, i32 2)
  %63 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %proxy_text_view44 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %63, i32 0, i32 30
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %proxy_text_view44, align 8
  %65 = bitcast %struct._GtkWidget* %64 to i8*
  %66 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %67 = bitcast %struct._GimpTextTool* %66 to i8*
  %call45 = call i64 @g_signal_connect_data(i8* %65, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), void ()* bitcast (void (%struct._GimpTextTool*)* @gimp_text_tool_backspace to void ()*), i8* %67, void (i8*, %struct._GClosure*)* null, i32 2)
  %68 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %proxy_text_view46 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %68, i32 0, i32 30
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %proxy_text_view46, align 8
  %70 = bitcast %struct._GtkWidget* %69 to i8*
  %71 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %72 = bitcast %struct._GimpTextTool* %71 to i8*
  %call47 = call i64 @g_signal_connect_data(i8* %70, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), void ()* bitcast (void (%struct._GimpTextTool*)* @gimp_text_tool_cut_clipboard to void ()*), i8* %72, void (i8*, %struct._GClosure*)* null, i32 2)
  %73 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %proxy_text_view48 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %73, i32 0, i32 30
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %proxy_text_view48, align 8
  %75 = bitcast %struct._GtkWidget* %74 to i8*
  %76 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %77 = bitcast %struct._GimpTextTool* %76 to i8*
  %call49 = call i64 @g_signal_connect_data(i8* %75, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0), void ()* bitcast (void (%struct._GimpTextTool*)* @gimp_text_tool_copy_clipboard to void ()*), i8* %77, void (i8*, %struct._GClosure*)* null, i32 2)
  %78 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %proxy_text_view50 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %78, i32 0, i32 30
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %proxy_text_view50, align 8
  %80 = bitcast %struct._GtkWidget* %79 to i8*
  %81 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %82 = bitcast %struct._GimpTextTool* %81 to i8*
  %call51 = call i64 @g_signal_connect_data(i8* %80, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0), void ()* bitcast (void (%struct._GimpTextTool*)* @gimp_text_tool_paste_clipboard to void ()*), i8* %82, void (i8*, %struct._GClosure*)* null, i32 2)
  %83 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %proxy_text_view52 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %83, i32 0, i32 30
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %proxy_text_view52, align 8
  %85 = bitcast %struct._GtkWidget* %84 to i8*
  %86 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %87 = bitcast %struct._GimpTextTool* %86 to i8*
  %call53 = call i64 @g_signal_connect_data(i8* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), void ()* bitcast (void (%struct._GimpTextTool*)* @gimp_text_tool_toggle_overwrite to void ()*), i8* %87, void (i8*, %struct._GClosure*)* null, i32 2)
  %88 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %proxy_text_view54 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %88, i32 0, i32 30
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %proxy_text_view54, align 8
  %90 = bitcast %struct._GtkWidget* %89 to i8*
  %91 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %92 = bitcast %struct._GimpTextTool* %91 to i8*
  %call55 = call i64 @g_signal_connect_data(i8* %90, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), void ()* bitcast (void (%struct._GimpTextTool*, i32)* @gimp_text_tool_select_all to void ()*), i8* %92, void (i8*, %struct._GClosure*)* null, i32 2)
  %93 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %proxy_text_view56 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %93, i32 0, i32 30
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %proxy_text_view56, align 8
  %95 = bitcast %struct._GtkWidget* %94 to i8*
  %96 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %97 = bitcast %struct._GimpTextTool* %96 to i8*
  %call57 = call i64 @g_signal_connect_data(i8* %95, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), void ()* bitcast (void (%struct._GimpTextTool*, double)* @gimp_text_tool_change_size to void ()*), i8* %97, void (i8*, %struct._GClosure*)* null, i32 2)
  %98 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %proxy_text_view58 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %98, i32 0, i32 30
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %proxy_text_view58, align 8
  %100 = bitcast %struct._GtkWidget* %99 to i8*
  %101 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %102 = bitcast %struct._GimpTextTool* %101 to i8*
  %call59 = call i64 @g_signal_connect_data(i8* %100, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0), void ()* bitcast (void (%struct._GimpTextTool*, double)* @gimp_text_tool_change_baseline to void ()*), i8* %102, void (i8*, %struct._GClosure*)* null, i32 2)
  %103 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %proxy_text_view60 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %103, i32 0, i32 30
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %proxy_text_view60, align 8
  %105 = bitcast %struct._GtkWidget* %104 to i8*
  %106 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %107 = bitcast %struct._GimpTextTool* %106 to i8*
  %call61 = call i64 @g_signal_connect_data(i8* %105, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0), void ()* bitcast (void (%struct._GimpTextTool*, double)* @gimp_text_tool_change_kerning to void ()*), i8* %107, void (i8*, %struct._GClosure*)* null, i32 2)
  br label %if.end

if.end:                                           ; preds = %if.then.19, %if.else
  br label %if.end.62

if.end.62:                                        ; preds = %if.end, %if.then
  ret void
}

declare i32 @gtk_bindings_activate_event(%struct._GtkObject*, %struct._GdkEventKey*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_object_get_type() #2

declare void @gimp_log(i32, i8*, i32, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_tool_enter_text(%struct._GimpTextTool* %text_tool, i8* %str) #0 {
entry:
  %text_tool.addr = alloca %struct._GimpTextTool*, align 8
  %str.addr = alloca i8*, align 8
  %buffer = alloca %struct._GtkTextBuffer*, align 8
  %had_selection = alloca i32, align 4
  %cursor = alloca %struct._GtkTextIter, align 8
  store %struct._GimpTextTool* %text_tool, %struct._GimpTextTool** %text_tool.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %buffer1 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %0, i32 0, i32 5
  %1 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer1, align 8
  %2 = bitcast %struct._GimpTextBuffer* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_text_buffer_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkTextBuffer*
  store %struct._GtkTextBuffer* %3, %struct._GtkTextBuffer** %buffer, align 8
  %4 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %call3 = call i32 @gtk_text_buffer_get_has_selection(%struct._GtkTextBuffer* %4)
  store i32 %call3, i32* %had_selection, align 4
  %5 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  call void @gtk_text_buffer_begin_user_action(%struct._GtkTextBuffer* %5)
  %6 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  call void @gimp_text_tool_delete_selection(%struct._GimpTextTool* %6)
  %7 = load i32, i32* %had_selection, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.end.12, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %8 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %overwrite_mode = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %8, i32 0, i32 27
  %9 = load i32, i32* %overwrite_mode, align 4
  %tobool4 = icmp ne i32 %9, 0
  br i1 %tobool4, label %land.lhs.true.5, label %if.end.12

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %10 = load i8*, i8** %str.addr, align 8
  %call6 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0)) #7
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then, label %if.end.12

if.then:                                          ; preds = %land.lhs.true.5
  %11 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %12 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %call8 = call %struct._GtkTextMark* @gtk_text_buffer_get_insert(%struct._GtkTextBuffer* %12)
  call void @gtk_text_buffer_get_iter_at_mark(%struct._GtkTextBuffer* %11, %struct._GtkTextIter* %cursor, %struct._GtkTextMark* %call8)
  %call9 = call i32 @gtk_text_iter_ends_line(%struct._GtkTextIter* %cursor)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end, label %if.then.11

if.then.11:                                       ; preds = %if.then
  %13 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  call void @gimp_text_tool_delete_from_cursor(%struct._GimpTextTool* %13, i32 0, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.then
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %land.lhs.true.5, %land.lhs.true, %entry
  %14 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %buffer13 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %14, i32 0, i32 5
  %15 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer13, align 8
  %16 = load i8*, i8** %str.addr, align 8
  call void @gimp_text_buffer_insert(%struct._GimpTextBuffer* %15, i8* %16)
  %17 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  call void @gtk_text_buffer_end_user_action(%struct._GtkTextBuffer* %17)
  ret void
}

declare void @gimp_rectangle_tool_cancel(%struct._GimpRectangleTool*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_rectangle_tool_interface_get_type() #2

declare void @gimp_tool_control(%struct._GimpTool*, i32, %struct._GimpDisplay*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_text_tool_editor_key_release(%struct._GimpTextTool* %text_tool, %struct._GdkEventKey* %kevent) #0 {
entry:
  %retval = alloca i32, align 4
  %text_tool.addr = alloca %struct._GimpTextTool*, align 8
  %kevent.addr = alloca %struct._GdkEventKey*, align 8
  store %struct._GimpTextTool* %text_tool, %struct._GimpTextTool** %text_tool.addr, align 8
  store %struct._GdkEventKey* %kevent, %struct._GdkEventKey** %kevent.addr, align 8
  %0 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %im_context = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %0, i32 0, i32 21
  %1 = load %struct._GtkIMContext*, %struct._GtkIMContext** %im_context, align 8
  %2 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %call = call i32 @gtk_im_context_filter_keypress(%struct._GtkIMContext* %1, %struct._GdkEventKey* %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %needs_im_reset = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %3, i32 0, i32 22
  store i32 1, i32* %needs_im_reset, align 4
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  call void @gimp_text_tool_ensure_proxy(%struct._GimpTextTool* %4)
  %5 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %proxy_text_view = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %5, i32 0, i32 30
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %proxy_text_view, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_object_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call1)
  %8 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkObject*
  %9 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %call3 = call i32 @gtk_bindings_activate_event(%struct._GtkObject* %8, %struct._GdkEventKey* %9)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.end.9

if.then.5:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.5
  %10 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %10, 8192
  %tobool6 = icmp ne i32 %and, 0
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %do.body
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 8192, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_text_tool_editor_key_release, i32 0, i32 0), i32 515, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.8
  store i32 1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.9, %do.end, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

declare void @gtk_im_context_reset(%struct._GtkIMContext*) #1

; Function Attrs: nounwind uwtable
define void @gimp_text_tool_editor_get_cursor_rect(%struct._GimpTextTool* %text_tool, i32 %overwrite, %struct._PangoRectangle* %cursor_rect) #0 {
entry:
  %text_tool.addr = alloca %struct._GimpTextTool*, align 8
  %overwrite.addr = alloca i32, align 4
  %cursor_rect.addr = alloca %struct._PangoRectangle*, align 8
  %buffer = alloca %struct._GtkTextBuffer*, align 8
  %layout = alloca %struct._PangoLayout*, align 8
  %offset_x = alloca i32, align 4
  %offset_y = alloca i32, align 4
  %cursor = alloca %struct._GtkTextIter, align 8
  %cursor_index = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTextTool* %text_tool, %struct._GimpTextTool** %text_tool.addr, align 8
  store i32 %overwrite, i32* %overwrite.addr, align 4
  store %struct._PangoRectangle* %cursor_rect, %struct._PangoRectangle** %cursor_rect.addr, align 8
  %0 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %buffer1 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %0, i32 0, i32 5
  %1 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer1, align 8
  %2 = bitcast %struct._GimpTextBuffer* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_text_buffer_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkTextBuffer*
  store %struct._GtkTextBuffer* %3, %struct._GtkTextBuffer** %buffer, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %5 = bitcast %struct._GimpTextTool* %4 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %5, %struct._GTypeInstance** %__inst, align 8
  %call3 = call i64 @gimp_text_tool_get_type() #6
  store i64 %call3, i64* %__t, align 8
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %6, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.9

if.else:                                          ; preds = %do.body
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %7, i32 0, i32 0
  %8 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool4 = icmp ne %struct._GTypeClass* %8, null
  br i1 %tobool4, label %land.lhs.true, label %if.else.7

land.lhs.true:                                    ; preds = %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %9, i32 0, i32 0
  %10 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %10, i32 0, i32 0
  %11 = load i64, i64* %g_type, align 8
  %12 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %11, %12
  br i1 %cmp, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.7:                                        ; preds = %land.lhs.true, %if.else
  %13 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %14 = load i64, i64* %__t, align 8
  %call8 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %13, i64 %14) #7
  store i32 %call8, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.7, %if.then.6
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  %15 = load i32, i32* %__r, align 4
  store i32 %15, i32* %tmp
  %16 = load i32, i32* %tmp
  %tobool10 = icmp ne i32 %16, 0
  br i1 %tobool10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.end.9
  br label %if.end.13

if.else.12:                                       ; preds = %if.end.9
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_text_tool_editor_get_cursor_rect, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i32 0, i32 0))
  br label %return

if.end.13:                                        ; preds = %if.then.11
  br label %do.end

do.end:                                           ; preds = %if.end.13
  br label %do.body.14

do.body.14:                                       ; preds = %do.end
  %17 = load %struct._PangoRectangle*, %struct._PangoRectangle** %cursor_rect.addr, align 8
  %cmp15 = icmp ne %struct._PangoRectangle* %17, null
  br i1 %cmp15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body.14
  br label %if.end.18

if.else.17:                                       ; preds = %do.body.14
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_text_tool_editor_get_cursor_rect, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0))
  br label %return

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  %18 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %19 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %call20 = call %struct._GtkTextMark* @gtk_text_buffer_get_insert(%struct._GtkTextBuffer* %19)
  call void @gtk_text_buffer_get_iter_at_mark(%struct._GtkTextBuffer* %18, %struct._GtkTextIter* %cursor, %struct._GtkTextMark* %call20)
  %20 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %buffer21 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %20, i32 0, i32 5
  %21 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer21, align 8
  %call22 = call i32 @gimp_text_buffer_get_iter_index(%struct._GimpTextBuffer* %21, %struct._GtkTextIter* %cursor, i32 1)
  store i32 %call22, i32* %cursor_index, align 4
  %22 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %call23 = call i32 @gimp_text_tool_ensure_layout(%struct._GimpTextTool* %22)
  %23 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %layout24 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %23, i32 0, i32 13
  %24 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout24, align 8
  %call25 = call %struct._PangoLayout* @gimp_text_layout_get_pango_layout(%struct._GimpTextLayout* %24)
  store %struct._PangoLayout* %call25, %struct._PangoLayout** %layout, align 8
  %25 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %layout26 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %25, i32 0, i32 13
  %26 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout26, align 8
  call void @gimp_text_layout_get_offsets(%struct._GimpTextLayout* %26, i32* %offset_x, i32* %offset_y)
  %27 = load i32, i32* %overwrite.addr, align 4
  %tobool27 = icmp ne i32 %27, 0
  br i1 %tobool27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %do.end.19
  %28 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  %29 = load i32, i32* %cursor_index, align 4
  %30 = load %struct._PangoRectangle*, %struct._PangoRectangle** %cursor_rect.addr, align 8
  call void @pango_layout_index_to_pos(%struct._PangoLayout* %28, i32 %29, %struct._PangoRectangle* %30)
  br label %if.end.30

if.else.29:                                       ; preds = %do.end.19
  %31 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  %32 = load i32, i32* %cursor_index, align 4
  %33 = load %struct._PangoRectangle*, %struct._PangoRectangle** %cursor_rect.addr, align 8
  call void @pango_layout_get_cursor_pos(%struct._PangoLayout* %31, i32 %32, %struct._PangoRectangle* %33, %struct._PangoRectangle* null)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.29, %if.then.28
  %34 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %layout31 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %34, i32 0, i32 13
  %35 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout31, align 8
  %36 = load %struct._PangoRectangle*, %struct._PangoRectangle** %cursor_rect.addr, align 8
  call void @gimp_text_layout_transform_rect(%struct._GimpTextLayout* %35, %struct._PangoRectangle* %36)
  %37 = load %struct._PangoRectangle*, %struct._PangoRectangle** %cursor_rect.addr, align 8
  %x = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %37, i32 0, i32 0
  %38 = load i32, i32* %x, align 4
  %add = add nsw i32 %38, 512
  %shr = ashr i32 %add, 10
  %39 = load i32, i32* %offset_x, align 4
  %add32 = add nsw i32 %shr, %39
  %40 = load %struct._PangoRectangle*, %struct._PangoRectangle** %cursor_rect.addr, align 8
  %x33 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %40, i32 0, i32 0
  store i32 %add32, i32* %x33, align 4
  %41 = load %struct._PangoRectangle*, %struct._PangoRectangle** %cursor_rect.addr, align 8
  %y = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %41, i32 0, i32 1
  %42 = load i32, i32* %y, align 4
  %add34 = add nsw i32 %42, 512
  %shr35 = ashr i32 %add34, 10
  %43 = load i32, i32* %offset_y, align 4
  %add36 = add nsw i32 %shr35, %43
  %44 = load %struct._PangoRectangle*, %struct._PangoRectangle** %cursor_rect.addr, align 8
  %y37 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %44, i32 0, i32 1
  store i32 %add36, i32* %y37, align 4
  %45 = load %struct._PangoRectangle*, %struct._PangoRectangle** %cursor_rect.addr, align 8
  %width = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %45, i32 0, i32 2
  %46 = load i32, i32* %width, align 4
  %add38 = add nsw i32 %46, 512
  %shr39 = ashr i32 %add38, 10
  %47 = load %struct._PangoRectangle*, %struct._PangoRectangle** %cursor_rect.addr, align 8
  %width40 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %47, i32 0, i32 2
  store i32 %shr39, i32* %width40, align 4
  %48 = load %struct._PangoRectangle*, %struct._PangoRectangle** %cursor_rect.addr, align 8
  %height = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %48, i32 0, i32 3
  %49 = load i32, i32* %height, align 4
  %add41 = add nsw i32 %49, 512
  %shr42 = ashr i32 %add41, 10
  %50 = load %struct._PangoRectangle*, %struct._PangoRectangle** %cursor_rect.addr, align 8
  %height43 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %50, i32 0, i32 3
  store i32 %shr42, i32* %height43, align 4
  br label %return

return:                                           ; preds = %if.end.30, %if.else.17, %if.else.12
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_text_tool_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i32 @gimp_text_buffer_get_iter_index(%struct._GimpTextBuffer*, %struct._GtkTextIter*, i32) #1

declare i32 @gimp_text_tool_ensure_layout(%struct._GimpTextTool*) #1

declare %struct._PangoLayout* @gimp_text_layout_get_pango_layout(%struct._GimpTextLayout*) #1

declare void @gimp_text_layout_get_offsets(%struct._GimpTextLayout*, i32*, i32*) #1

declare void @pango_layout_index_to_pos(%struct._PangoLayout*, i32, %struct._PangoRectangle*) #1

declare void @pango_layout_get_cursor_pos(%struct._PangoLayout*, i32, %struct._PangoRectangle*, %struct._PangoRectangle*) #1

declare void @gimp_text_layout_transform_rect(%struct._GimpTextLayout*, %struct._PangoRectangle*) #1

; Function Attrs: nounwind uwtable
define void @gimp_text_tool_editor_update_im_rect(%struct._GimpTextTool* %text_tool) #0 {
entry:
  %text_tool.addr = alloca %struct._GimpTextTool*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %rect = alloca %struct._PangoRectangle, align 4
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %requisition = alloca %struct._GtkRequisition, align 4
  store %struct._GimpTextTool* %text_tool, %struct._GimpTextTool** %text_tool.addr, align 8
  %0 = bitcast %struct._PangoRectangle* %rect to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 16, i32 4, i1 false)
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %2 = bitcast %struct._GimpTextTool* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_text_tool_get_type() #6
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %8, %9
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #7
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %13, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_text_tool_editor_update_im_rect, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %14 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %15 = bitcast %struct._GimpTextTool* %14 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_tool_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call11)
  %16 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpTool*
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %16, i32 0, i32 4
  %17 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call13 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %17)
  store %struct._GimpDisplayShell* %call13, %struct._GimpDisplayShell** %shell, align 8
  %18 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %text = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %18, i32 0, i32 6
  %19 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %tobool14 = icmp ne %struct._GimpText* %19, null
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %do.end
  %20 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %21 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %overwrite_mode = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %21, i32 0, i32 27
  %22 = load i32, i32* %overwrite_mode, align 4
  call void @gimp_text_tool_editor_get_cursor_rect(%struct._GimpTextTool* %20, i32 %22, %struct._PangoRectangle* %rect)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %do.end
  %23 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %24 = bitcast %struct._GimpTextTool* %23 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i32* %off_x, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i32* %off_y, i8* null)
  %25 = load i32, i32* %off_x, align 4
  %x = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %rect, i32 0, i32 0
  %26 = load i32, i32* %x, align 4
  %add = add nsw i32 %26, %25
  store i32 %add, i32* %x, align 4
  %27 = load i32, i32* %off_y, align 4
  %y = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %rect, i32 0, i32 1
  %28 = load i32, i32* %y, align 4
  %add17 = add nsw i32 %28, %27
  store i32 %add17, i32* %y, align 4
  %29 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %x18 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %rect, i32 0, i32 0
  %30 = load i32, i32* %x18, align 4
  %conv = sitofp i32 %30 to double
  %y19 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %rect, i32 0, i32 1
  %31 = load i32, i32* %y19, align 4
  %conv20 = sitofp i32 %31 to double
  %x21 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %rect, i32 0, i32 0
  %y22 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %rect, i32 0, i32 1
  call void @gimp_display_shell_transform_xy(%struct._GimpDisplayShell* %29, double %conv, double %conv20, i32* %x21, i32* %y22)
  %32 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %preedit_overlay = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %32, i32 0, i32 23
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %preedit_overlay, align 8
  %tobool23 = icmp ne %struct._GtkWidget* %33, null
  br i1 %tobool23, label %if.then.24, label %if.end.29

if.then.24:                                       ; preds = %if.end.16
  %34 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %preedit_overlay26 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %34, i32 0, i32 23
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %preedit_overlay26, align 8
  call void @gtk_widget_size_request(%struct._GtkWidget* %35, %struct._GtkRequisition* %requisition)
  %width = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %requisition, i32 0, i32 0
  %36 = load i32, i32* %width, align 4
  %width27 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %rect, i32 0, i32 2
  store i32 %36, i32* %width27, align 4
  %height = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %requisition, i32 0, i32 1
  %37 = load i32, i32* %height, align 4
  %height28 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %rect, i32 0, i32 3
  store i32 %37, i32* %height28, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.24, %if.end.16
  %38 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %im_context = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %38, i32 0, i32 21
  %39 = load %struct._GtkIMContext*, %struct._GtkIMContext** %im_context, align 8
  %40 = bitcast %struct._PangoRectangle* %rect to %struct._GdkRectangle*
  call void @gtk_im_context_set_cursor_location(%struct._GtkIMContext* %39, %struct._GdkRectangle* %40)
  br label %return

return:                                           ; preds = %if.end.29, %if.else.9
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

declare void @gimp_display_shell_transform_xy(%struct._GimpDisplayShell*, double, double, i32*, i32*) #1

declare void @gtk_im_context_set_cursor_location(%struct._GtkIMContext*, %struct._GdkRectangle*) #1

declare %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget*) #1

declare void @gtk_window_set_screen(%struct._GtkWindow*, %struct._GdkScreen*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #2

declare void @gtk_window_move(%struct._GtkWindow*, i32, i32) #1

declare %struct._GtkWidget* @gtk_window_new(i32) #1

declare %struct._GtkWidget* @gimp_text_proxy_new() #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_tool_move_cursor(%struct._GimpTextTool* %text_tool, i32 %step, i32 %count, i32 %extend_selection) #0 {
entry:
  %text_tool.addr = alloca %struct._GimpTextTool*, align 8
  %step.addr = alloca i32, align 4
  %count.addr = alloca i32, align 4
  %extend_selection.addr = alloca i32, align 4
  %buffer = alloca %struct._GtkTextBuffer*, align 8
  %cursor = alloca %struct._GtkTextIter, align 8
  %selection = alloca %struct._GtkTextIter, align 8
  %sel_start = alloca %struct._GtkTextIter*, align 8
  %cancel_selection = alloca i32, align 4
  %x_pos = alloca i32, align 4
  %layout = alloca %struct._PangoLayout*, align 8
  %text = alloca i8*, align 8
  %word_joiner = alloca i32, align 4
  %index = alloca i32, align 4
  %trailing = alloca i32, align 4
  %new_index = alloca i32, align 4
  %start = alloca %struct._GtkTextIter, align 8
  %end = alloca %struct._GtkTextIter, align 8
  %cursor_index = alloca i32, align 4
  %layout78 = alloca %struct._PangoLayout*, align 8
  %layout_line = alloca %struct._PangoLayoutLine*, align 8
  %layout_iter = alloca %struct._PangoLayoutIter*, align 8
  %logical = alloca %struct._PangoRectangle, align 4
  %line = alloca i32, align 4
  %trailing79 = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._GimpTextTool* %text_tool, %struct._GimpTextTool** %text_tool.addr, align 8
  store i32 %step, i32* %step.addr, align 4
  store i32 %count, i32* %count.addr, align 4
  store i32 %extend_selection, i32* %extend_selection.addr, align 4
  %0 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %buffer1 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %0, i32 0, i32 5
  %1 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer1, align 8
  %2 = bitcast %struct._GimpTextBuffer* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_text_buffer_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkTextBuffer*
  store %struct._GtkTextBuffer* %3, %struct._GtkTextBuffer** %buffer, align 8
  store i32 0, i32* %cancel_selection, align 4
  store i32 -1, i32* %x_pos, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %4, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %call3 = call i64 @gtk_movement_step_get_type() #6
  %call4 = call i8* @g_type_class_ref(i64 %call3)
  %5 = bitcast i8* %call4 to %struct._GEnumClass*
  %6 = load i32, i32* %step.addr, align 4
  %call5 = call %struct._GEnumValue* @g_enum_get_value(%struct._GEnumClass* %5, i32 %6)
  %value_name = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %call5, i32 0, i32 1
  %7 = load i8*, i8** %value_name, align 8
  %8 = load i32, i32* %count.addr, align 4
  %9 = load i32, i32* %extend_selection.addr, align 4
  %tobool6 = icmp ne i32 %9, 0
  %cond = select i1 %tobool6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0)
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 8192, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_text_tool_move_cursor, i32 0, i32 0), i32 694, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i32 0, i32 0), i8* %7, i32 %8, i8* %cond)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %10 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %11 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %call7 = call %struct._GtkTextMark* @gtk_text_buffer_get_insert(%struct._GtkTextBuffer* %11)
  call void @gtk_text_buffer_get_iter_at_mark(%struct._GtkTextBuffer* %10, %struct._GtkTextIter* %cursor, %struct._GtkTextMark* %call7)
  %12 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %13 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %call8 = call %struct._GtkTextMark* @gtk_text_buffer_get_selection_bound(%struct._GtkTextBuffer* %13)
  call void @gtk_text_buffer_get_iter_at_mark(%struct._GtkTextBuffer* %12, %struct._GtkTextIter* %selection, %struct._GtkTextMark* %call8)
  %14 = load i32, i32* %extend_selection.addr, align 4
  %tobool9 = icmp ne i32 %14, 0
  br i1 %tobool9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %do.end
  store %struct._GtkTextIter* %selection, %struct._GtkTextIter** %sel_start, align 8
  br label %if.end.18

if.else:                                          ; preds = %do.end
  %15 = load i32, i32* %count.addr, align 4
  %cmp = icmp sgt i32 %15, 0
  br i1 %cmp, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.else
  call void @gtk_text_iter_order(%struct._GtkTextIter* %selection, %struct._GtkTextIter* %cursor)
  br label %if.end.13

if.else.12:                                       ; preds = %if.else
  call void @gtk_text_iter_order(%struct._GtkTextIter* %cursor, %struct._GtkTextIter* %selection)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.12, %if.then.11
  store %struct._GtkTextIter* %cursor, %struct._GtkTextIter** %sel_start, align 8
  %call14 = call i32 @gtk_text_iter_equal(%struct._GtkTextIter* %cursor, %struct._GtkTextIter* %selection)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.end.13
  store i32 1, i32* %cancel_selection, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.end.13
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.10
  %16 = load i32, i32* %step.addr, align 4
  switch i32 %16, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.23
    i32 2, label %sw.bb.63
    i32 3, label %sw.bb.77
    i32 7, label %sw.bb.131
    i32 8, label %sw.bb.131
    i32 6, label %sw.bb.139
    i32 4, label %sw.bb.152
  ]

sw.bb:                                            ; preds = %if.end.18
  %17 = load i32, i32* %cancel_selection, align 4
  %tobool19 = icmp ne i32 %17, 0
  br i1 %tobool19, label %if.end.22, label %if.then.20

if.then.20:                                       ; preds = %sw.bb
  %18 = load i32, i32* %count.addr, align 4
  %call21 = call i32 @gtk_text_iter_forward_visible_cursor_positions(%struct._GtkTextIter* %cursor, i32 %18)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %sw.bb
  br label %sw.epilog

sw.bb.23:                                         ; preds = %if.end.18
  %19 = load i32, i32* %cancel_selection, align 4
  %tobool24 = icmp ne i32 %19, 0
  br i1 %tobool24, label %if.end.62, label %if.then.25

if.then.25:                                       ; preds = %sw.bb.23
  %20 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %call26 = call i32 @gimp_text_tool_ensure_layout(%struct._GimpTextTool* %20)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.end.29, label %if.then.28

if.then.28:                                       ; preds = %if.then.25
  br label %sw.epilog

if.end.29:                                        ; preds = %if.then.25
  %21 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %layout30 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %21, i32 0, i32 13
  %22 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout30, align 8
  %call31 = call %struct._PangoLayout* @gimp_text_layout_get_pango_layout(%struct._GimpTextLayout* %22)
  store %struct._PangoLayout* %call31, %struct._PangoLayout** %layout, align 8
  %23 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  %call32 = call i8* @pango_layout_get_text(%struct._PangoLayout* %23)
  store i8* %call32, i8** %text, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.59, %if.end.29
  %24 = load i32, i32* %count.addr, align 4
  %cmp33 = icmp ne i32 %24, 0
  br i1 %cmp33, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 8288, i32* %word_joiner, align 4
  store i32 0, i32* %trailing, align 4
  %25 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %buffer34 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %25, i32 0, i32 5
  %26 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer34, align 8
  %call35 = call i32 @gimp_text_buffer_get_iter_index(%struct._GimpTextBuffer* %26, %struct._GtkTextIter* %cursor, i32 1)
  store i32 %call35, i32* %index, align 4
  %27 = load i32, i32* %count.addr, align 4
  %cmp36 = icmp sgt i32 %27, 0
  br i1 %cmp36, label %if.then.37, label %if.else.43

if.then.37:                                       ; preds = %while.body
  %28 = load i8*, i8** %text, align 8
  %29 = load i32, i32* %index, align 4
  %idx.ext = sext i32 %29 to i64
  %add.ptr = getelementptr inbounds i8, i8* %28, i64 %idx.ext
  %call38 = call i32 @g_utf8_get_char(i8* %add.ptr) #7
  %cmp39 = icmp eq i32 %call38, 8288
  br i1 %cmp39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %if.then.37
  %30 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  %31 = load i32, i32* %index, align 4
  call void @pango_layout_move_cursor_visually(%struct._PangoLayout* %30, i32 1, i32 %31, i32 0, i32 1, i32* %new_index, i32* %trailing)
  br label %if.end.42

if.else.41:                                       ; preds = %if.then.37
  %32 = load i32, i32* %index, align 4
  store i32 %32, i32* %new_index, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.41, %if.then.40
  %33 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  %34 = load i32, i32* %new_index, align 4
  %35 = load i32, i32* %trailing, align 4
  call void @pango_layout_move_cursor_visually(%struct._PangoLayout* %33, i32 1, i32 %34, i32 %35, i32 1, i32* %new_index, i32* %trailing)
  %36 = load i32, i32* %count.addr, align 4
  %dec = add nsw i32 %36, -1
  store i32 %dec, i32* %count.addr, align 4
  br label %if.end.53

if.else.43:                                       ; preds = %while.body
  %37 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  %38 = load i32, i32* %index, align 4
  call void @pango_layout_move_cursor_visually(%struct._PangoLayout* %37, i32 1, i32 %38, i32 0, i32 -1, i32* %new_index, i32* %trailing)
  %39 = load i32, i32* %new_index, align 4
  %cmp44 = icmp ne i32 %39, -1
  br i1 %cmp44, label %land.lhs.true, label %if.end.52

land.lhs.true:                                    ; preds = %if.else.43
  %40 = load i32, i32* %new_index, align 4
  %cmp45 = icmp ne i32 %40, 2147483647
  br i1 %cmp45, label %land.lhs.true.46, label %if.end.52

land.lhs.true.46:                                 ; preds = %land.lhs.true
  %41 = load i8*, i8** %text, align 8
  %42 = load i32, i32* %new_index, align 4
  %idx.ext47 = sext i32 %42 to i64
  %add.ptr48 = getelementptr inbounds i8, i8* %41, i64 %idx.ext47
  %call49 = call i32 @g_utf8_get_char(i8* %add.ptr48) #7
  %cmp50 = icmp eq i32 %call49, 8288
  br i1 %cmp50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %land.lhs.true.46
  %43 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  %44 = load i32, i32* %new_index, align 4
  %45 = load i32, i32* %trailing, align 4
  call void @pango_layout_move_cursor_visually(%struct._PangoLayout* %43, i32 1, i32 %44, i32 %45, i32 -1, i32* %new_index, i32* %trailing)
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %land.lhs.true.46, %land.lhs.true, %if.else.43
  %46 = load i32, i32* %count.addr, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %count.addr, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.end.42
  %47 = load i32, i32* %new_index, align 4
  %cmp54 = icmp ne i32 %47, 2147483647
  br i1 %cmp54, label %land.lhs.true.55, label %if.else.58

land.lhs.true.55:                                 ; preds = %if.end.53
  %48 = load i32, i32* %new_index, align 4
  %cmp56 = icmp ne i32 %48, -1
  br i1 %cmp56, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %land.lhs.true.55
  %49 = load i32, i32* %new_index, align 4
  store i32 %49, i32* %index, align 4
  br label %if.end.59

if.else.58:                                       ; preds = %land.lhs.true.55, %if.end.53
  br label %while.end

if.end.59:                                        ; preds = %if.then.57
  %50 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %buffer60 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %50, i32 0, i32 5
  %51 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer60, align 8
  %52 = load i32, i32* %index, align 4
  call void @gimp_text_buffer_get_iter_at_index(%struct._GimpTextBuffer* %51, %struct._GtkTextIter* %cursor, i32 %52, i32 1)
  %53 = load i32, i32* %trailing, align 4
  %call61 = call i32 @gtk_text_iter_forward_chars(%struct._GtkTextIter* %cursor, i32 %53)
  br label %while.cond

while.end:                                        ; preds = %if.else.58, %while.cond
  br label %if.end.62

if.end.62:                                        ; preds = %while.end, %sw.bb.23
  br label %sw.epilog

sw.bb.63:                                         ; preds = %if.end.18
  %54 = load i32, i32* %count.addr, align 4
  %cmp64 = icmp slt i32 %54, 0
  br i1 %cmp64, label %if.then.65, label %if.else.67

if.then.65:                                       ; preds = %sw.bb.63
  %55 = load i32, i32* %count.addr, align 4
  %sub = sub nsw i32 0, %55
  %call66 = call i32 @gtk_text_iter_backward_visible_word_starts(%struct._GtkTextIter* %cursor, i32 %sub)
  br label %if.end.76

if.else.67:                                       ; preds = %sw.bb.63
  %56 = load i32, i32* %count.addr, align 4
  %cmp68 = icmp sgt i32 %56, 0
  br i1 %cmp68, label %if.then.69, label %if.end.75

if.then.69:                                       ; preds = %if.else.67
  %57 = load i32, i32* %count.addr, align 4
  %call70 = call i32 @gtk_text_iter_forward_visible_word_ends(%struct._GtkTextIter* %cursor, i32 %57)
  %tobool71 = icmp ne i32 %call70, 0
  br i1 %tobool71, label %if.end.74, label %if.then.72

if.then.72:                                       ; preds = %if.then.69
  %call73 = call i32 @gtk_text_iter_forward_to_line_end(%struct._GtkTextIter* %cursor)
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.72, %if.then.69
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.else.67
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.then.65
  br label %sw.epilog

sw.bb.77:                                         ; preds = %if.end.18
  %58 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  call void @gtk_text_buffer_get_bounds(%struct._GtkTextBuffer* %58, %struct._GtkTextIter* %start, %struct._GtkTextIter* %end)
  %59 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %buffer80 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %59, i32 0, i32 5
  %60 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer80, align 8
  %call81 = call i32 @gimp_text_buffer_get_iter_index(%struct._GimpTextBuffer* %60, %struct._GtkTextIter* %cursor, i32 1)
  store i32 %call81, i32* %cursor_index, align 4
  %61 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %call82 = call i32 @gimp_text_tool_ensure_layout(%struct._GimpTextTool* %61)
  %tobool83 = icmp ne i32 %call82, 0
  br i1 %tobool83, label %if.end.85, label %if.then.84

if.then.84:                                       ; preds = %sw.bb.77
  br label %sw.epilog

if.end.85:                                        ; preds = %sw.bb.77
  %62 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %layout86 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %62, i32 0, i32 13
  %63 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout86, align 8
  %call87 = call %struct._PangoLayout* @gimp_text_layout_get_pango_layout(%struct._GimpTextLayout* %63)
  store %struct._PangoLayout* %call87, %struct._PangoLayout** %layout78, align 8
  %64 = load %struct._PangoLayout*, %struct._PangoLayout** %layout78, align 8
  %65 = load i32, i32* %cursor_index, align 4
  call void @pango_layout_index_to_line_x(%struct._PangoLayout* %64, i32 %65, i32 0, i32* %line, i32* %x_pos)
  %66 = load %struct._PangoLayout*, %struct._PangoLayout** %layout78, align 8
  %call88 = call %struct._PangoLayoutIter* @pango_layout_get_iter(%struct._PangoLayout* %66)
  store %struct._PangoLayoutIter* %call88, %struct._PangoLayoutIter** %layout_iter, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.85
  %67 = load i32, i32* %i, align 4
  %68 = load i32, i32* %line, align 4
  %cmp89 = icmp slt i32 %67, %68
  br i1 %cmp89, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %69 = load %struct._PangoLayoutIter*, %struct._PangoLayoutIter** %layout_iter, align 8
  %call90 = call i32 @pango_layout_iter_next_line(%struct._PangoLayoutIter* %69)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %70 = load i32, i32* %i, align 4
  %inc91 = add nsw i32 %70, 1
  store i32 %inc91, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %71 = load %struct._PangoLayoutIter*, %struct._PangoLayoutIter** %layout_iter, align 8
  call void @pango_layout_iter_get_line_extents(%struct._PangoLayoutIter* %71, %struct._PangoRectangle* null, %struct._PangoRectangle* %logical)
  %x = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %logical, i32 0, i32 0
  %72 = load i32, i32* %x, align 4
  %73 = load i32, i32* %x_pos, align 4
  %add = add nsw i32 %73, %72
  store i32 %add, i32* %x_pos, align 4
  %74 = load %struct._PangoLayoutIter*, %struct._PangoLayoutIter** %layout_iter, align 8
  call void @pango_layout_iter_free(%struct._PangoLayoutIter* %74)
  %75 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %x_pos92 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %75, i32 0, i32 28
  %76 = load i32, i32* %x_pos92, align 4
  %cmp93 = icmp ne i32 %76, -1
  br i1 %cmp93, label %land.lhs.true.94, label %if.end.102

land.lhs.true.94:                                 ; preds = %for.end
  %77 = load i32, i32* %x_pos, align 4
  %x95 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %logical, i32 0, i32 0
  %78 = load i32, i32* %x95, align 4
  %cmp96 = icmp sle i32 %77, %78
  br i1 %cmp96, label %if.then.100, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.94
  %79 = load i32, i32* %x_pos, align 4
  %x97 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %logical, i32 0, i32 0
  %80 = load i32, i32* %x97, align 4
  %width = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %logical, i32 0, i32 2
  %81 = load i32, i32* %width, align 4
  %add98 = add nsw i32 %80, %81
  %cmp99 = icmp sge i32 %79, %add98
  br i1 %cmp99, label %if.then.100, label %if.end.102

if.then.100:                                      ; preds = %lor.lhs.false, %land.lhs.true.94
  %82 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %x_pos101 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %82, i32 0, i32 28
  %83 = load i32, i32* %x_pos101, align 4
  store i32 %83, i32* %x_pos, align 4
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.100, %lor.lhs.false, %for.end
  %84 = load i32, i32* %count.addr, align 4
  %85 = load i32, i32* %line, align 4
  %add103 = add nsw i32 %85, %84
  store i32 %add103, i32* %line, align 4
  %86 = load i32, i32* %line, align 4
  %cmp104 = icmp slt i32 %86, 0
  br i1 %cmp104, label %if.then.105, label %if.else.106

if.then.105:                                      ; preds = %if.end.102
  %87 = bitcast %struct._GtkTextIter* %cursor to i8*
  %88 = bitcast %struct._GtkTextIter* %start to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %87, i8* %88, i64 80, i32 8, i1 false)
  br label %sw.epilog

if.else.106:                                      ; preds = %if.end.102
  %89 = load i32, i32* %line, align 4
  %90 = load %struct._PangoLayout*, %struct._PangoLayout** %layout78, align 8
  %call107 = call i32 @pango_layout_get_line_count(%struct._PangoLayout* %90)
  %cmp108 = icmp sge i32 %89, %call107
  br i1 %cmp108, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %if.else.106
  %91 = bitcast %struct._GtkTextIter* %cursor to i8*
  %92 = bitcast %struct._GtkTextIter* %end to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %91, i8* %92, i64 80, i32 8, i1 false)
  br label %sw.epilog

if.end.110:                                       ; preds = %if.else.106
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110
  %93 = load %struct._PangoLayout*, %struct._PangoLayout** %layout78, align 8
  %call112 = call %struct._PangoLayoutIter* @pango_layout_get_iter(%struct._PangoLayout* %93)
  store %struct._PangoLayoutIter* %call112, %struct._PangoLayoutIter** %layout_iter, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.113

for.cond.113:                                     ; preds = %for.inc.117, %if.end.111
  %94 = load i32, i32* %i, align 4
  %95 = load i32, i32* %line, align 4
  %cmp114 = icmp slt i32 %94, %95
  br i1 %cmp114, label %for.body.115, label %for.end.119

for.body.115:                                     ; preds = %for.cond.113
  %96 = load %struct._PangoLayoutIter*, %struct._PangoLayoutIter** %layout_iter, align 8
  %call116 = call i32 @pango_layout_iter_next_line(%struct._PangoLayoutIter* %96)
  br label %for.inc.117

for.inc.117:                                      ; preds = %for.body.115
  %97 = load i32, i32* %i, align 4
  %inc118 = add nsw i32 %97, 1
  store i32 %inc118, i32* %i, align 4
  br label %for.cond.113

for.end.119:                                      ; preds = %for.cond.113
  %98 = load %struct._PangoLayoutIter*, %struct._PangoLayoutIter** %layout_iter, align 8
  %call120 = call %struct._PangoLayoutLine* @pango_layout_iter_get_line_readonly(%struct._PangoLayoutIter* %98)
  store %struct._PangoLayoutLine* %call120, %struct._PangoLayoutLine** %layout_line, align 8
  %99 = load %struct._PangoLayoutIter*, %struct._PangoLayoutIter** %layout_iter, align 8
  call void @pango_layout_iter_get_line_extents(%struct._PangoLayoutIter* %99, %struct._PangoRectangle* null, %struct._PangoRectangle* %logical)
  %100 = load %struct._PangoLayoutIter*, %struct._PangoLayoutIter** %layout_iter, align 8
  call void @pango_layout_iter_free(%struct._PangoLayoutIter* %100)
  %101 = load %struct._PangoLayoutLine*, %struct._PangoLayoutLine** %layout_line, align 8
  %102 = load i32, i32* %x_pos, align 4
  %x121 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %logical, i32 0, i32 0
  %103 = load i32, i32* %x121, align 4
  %sub122 = sub nsw i32 %102, %103
  %call123 = call i32 @pango_layout_line_x_to_index(%struct._PangoLayoutLine* %101, i32 %sub122, i32* %cursor_index, i32* %trailing79)
  %104 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %buffer124 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %104, i32 0, i32 5
  %105 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer124, align 8
  %106 = load i32, i32* %cursor_index, align 4
  call void @gimp_text_buffer_get_iter_at_index(%struct._GimpTextBuffer* %105, %struct._GtkTextIter* %cursor, i32 %106, i32 1)
  br label %while.cond.125

while.cond.125:                                   ; preds = %while.body.128, %for.end.119
  %107 = load i32, i32* %trailing79, align 4
  %dec126 = add nsw i32 %107, -1
  store i32 %dec126, i32* %trailing79, align 4
  %tobool127 = icmp ne i32 %107, 0
  br i1 %tobool127, label %while.body.128, label %while.end.130

while.body.128:                                   ; preds = %while.cond.125
  %call129 = call i32 @gtk_text_iter_forward_char(%struct._GtkTextIter* %cursor)
  br label %while.cond.125

while.end.130:                                    ; preds = %while.cond.125
  br label %sw.epilog

sw.bb.131:                                        ; preds = %if.end.18, %if.end.18
  %108 = load i32, i32* %count.addr, align 4
  %cmp132 = icmp slt i32 %108, 0
  br i1 %cmp132, label %if.then.133, label %if.else.134

if.then.133:                                      ; preds = %sw.bb.131
  %109 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  call void @gtk_text_buffer_get_start_iter(%struct._GtkTextBuffer* %109, %struct._GtkTextIter* %cursor)
  br label %if.end.138

if.else.134:                                      ; preds = %sw.bb.131
  %110 = load i32, i32* %count.addr, align 4
  %cmp135 = icmp sgt i32 %110, 0
  br i1 %cmp135, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %if.else.134
  %111 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  call void @gtk_text_buffer_get_end_iter(%struct._GtkTextBuffer* %111, %struct._GtkTextIter* %cursor)
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.136, %if.else.134
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137, %if.then.133
  br label %sw.epilog

sw.bb.139:                                        ; preds = %if.end.18
  %112 = load i32, i32* %count.addr, align 4
  %cmp140 = icmp slt i32 %112, 0
  br i1 %cmp140, label %if.then.141, label %if.else.142

if.then.141:                                      ; preds = %sw.bb.139
  call void @gtk_text_iter_set_line_offset(%struct._GtkTextIter* %cursor, i32 0)
  br label %if.end.151

if.else.142:                                      ; preds = %sw.bb.139
  %113 = load i32, i32* %count.addr, align 4
  %cmp143 = icmp sgt i32 %113, 0
  br i1 %cmp143, label %if.then.144, label %if.end.150

if.then.144:                                      ; preds = %if.else.142
  %call145 = call i32 @gtk_text_iter_ends_line(%struct._GtkTextIter* %cursor)
  %tobool146 = icmp ne i32 %call145, 0
  br i1 %tobool146, label %if.end.149, label %if.then.147

if.then.147:                                      ; preds = %if.then.144
  %call148 = call i32 @gtk_text_iter_forward_to_line_end(%struct._GtkTextIter* %cursor)
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.147, %if.then.144
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.149, %if.else.142
  br label %if.end.151

if.end.151:                                       ; preds = %if.end.150, %if.then.141
  br label %sw.epilog

sw.bb.152:                                        ; preds = %if.end.18
  %114 = load i32, i32* %count.addr, align 4
  %cmp153 = icmp slt i32 %114, 0
  br i1 %cmp153, label %if.then.154, label %if.else.155

if.then.154:                                      ; preds = %sw.bb.152
  call void @gtk_text_iter_set_line_offset(%struct._GtkTextIter* %cursor, i32 0)
  br label %if.end.164

if.else.155:                                      ; preds = %sw.bb.152
  %115 = load i32, i32* %count.addr, align 4
  %cmp156 = icmp sgt i32 %115, 0
  br i1 %cmp156, label %if.then.157, label %if.end.163

if.then.157:                                      ; preds = %if.else.155
  %call158 = call i32 @gtk_text_iter_ends_line(%struct._GtkTextIter* %cursor)
  %tobool159 = icmp ne i32 %call158, 0
  br i1 %tobool159, label %if.end.162, label %if.then.160

if.then.160:                                      ; preds = %if.then.157
  %call161 = call i32 @gtk_text_iter_forward_to_line_end(%struct._GtkTextIter* %cursor)
  br label %if.end.162

if.end.162:                                       ; preds = %if.then.160, %if.then.157
  br label %if.end.163

if.end.163:                                       ; preds = %if.end.162, %if.else.155
  br label %if.end.164

if.end.164:                                       ; preds = %if.end.163, %if.then.154
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.18
  br label %return

sw.epilog:                                        ; preds = %if.end.164, %if.end.151, %if.end.138, %while.end.130, %if.then.109, %if.then.105, %if.then.84, %if.end.76, %if.end.62, %if.then.28, %if.end.22
  %116 = load i32, i32* %x_pos, align 4
  %117 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %x_pos165 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %117, i32 0, i32 28
  store i32 %116, i32* %x_pos165, align 4
  %118 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %119 = bitcast %struct._GimpTextTool* %118 to %struct._GTypeInstance*
  %call166 = call i64 @gimp_draw_tool_get_type() #6
  %call167 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %119, i64 %call166)
  %120 = bitcast %struct._GTypeInstance* %call167 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %120)
  %121 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  call void @gimp_text_tool_reset_im_context(%struct._GimpTextTool* %121)
  %122 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %123 = load %struct._GtkTextIter*, %struct._GtkTextIter** %sel_start, align 8
  call void @gtk_text_buffer_select_range(%struct._GtkTextBuffer* %122, %struct._GtkTextIter* %cursor, %struct._GtkTextIter* %123)
  %124 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %125 = bitcast %struct._GimpTextTool* %124 to %struct._GTypeInstance*
  %call168 = call i64 @gimp_draw_tool_get_type() #6
  %call169 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %125, i64 %call168)
  %126 = bitcast %struct._GTypeInstance* %call169 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %126)
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_tool_insert_at_cursor(%struct._GimpTextTool* %text_tool, i8* %str) #0 {
entry:
  %text_tool.addr = alloca %struct._GimpTextTool*, align 8
  %str.addr = alloca i8*, align 8
  store %struct._GimpTextTool* %text_tool, %struct._GimpTextTool** %text_tool.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %buffer = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %0, i32 0, i32 5
  %1 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer, align 8
  %2 = load i8*, i8** %str.addr, align 8
  call void @gimp_text_buffer_insert(%struct._GimpTextBuffer* %1, i8* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_tool_delete_from_cursor(%struct._GimpTextTool* %text_tool, i32 %type, i32 %count) #0 {
entry:
  %text_tool.addr = alloca %struct._GimpTextTool*, align 8
  %type.addr = alloca i32, align 4
  %count.addr = alloca i32, align 4
  %buffer = alloca %struct._GtkTextBuffer*, align 8
  %cursor = alloca %struct._GtkTextIter, align 8
  %end = alloca %struct._GtkTextIter, align 8
  store %struct._GimpTextTool* %text_tool, %struct._GimpTextTool** %text_tool.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store i32 %count, i32* %count.addr, align 4
  %0 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %buffer1 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %0, i32 0, i32 5
  %1 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer1, align 8
  %2 = bitcast %struct._GimpTextBuffer* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_text_buffer_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkTextBuffer*
  store %struct._GtkTextBuffer* %3, %struct._GtkTextBuffer** %buffer, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %4, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %call3 = call i64 @gtk_delete_type_get_type() #6
  %call4 = call i8* @g_type_class_ref(i64 %call3)
  %5 = bitcast i8* %call4 to %struct._GEnumClass*
  %6 = load i32, i32* %type.addr, align 4
  %call5 = call %struct._GEnumValue* @g_enum_get_value(%struct._GEnumClass* %5, i32 %6)
  %value_name = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %call5, i32 0, i32 1
  %7 = load i8*, i8** %value_name, align 8
  %8 = load i32, i32* %count.addr, align 4
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 8192, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_text_tool_delete_from_cursor, i32 0, i32 0), i32 987, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0), i8* %7, i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %9 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  call void @gimp_text_tool_reset_im_context(%struct._GimpTextTool* %9)
  %10 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %11 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %call6 = call %struct._GtkTextMark* @gtk_text_buffer_get_insert(%struct._GtkTextBuffer* %11)
  call void @gtk_text_buffer_get_iter_at_mark(%struct._GtkTextBuffer* %10, %struct._GtkTextIter* %cursor, %struct._GtkTextMark* %call6)
  %12 = bitcast %struct._GtkTextIter* %end to i8*
  %13 = bitcast %struct._GtkTextIter* %cursor to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 80, i32 8, i1 false)
  %14 = load i32, i32* %type.addr, align 4
  switch i32 %14, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.13
    i32 2, label %sw.bb.32
    i32 3, label %sw.bb.46
    i32 4, label %sw.bb.47
    i32 5, label %sw.bb.48
    i32 6, label %sw.bb.63
    i32 7, label %sw.bb.64
  ]

sw.bb:                                            ; preds = %do.end
  %15 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %call7 = call i32 @gtk_text_buffer_get_has_selection(%struct._GtkTextBuffer* %15)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %sw.bb
  %16 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %call10 = call i32 @gtk_text_buffer_delete_selection(%struct._GtkTextBuffer* %16, i32 1, i32 1)
  br label %if.end.70

if.else:                                          ; preds = %sw.bb
  %17 = load i32, i32* %count.addr, align 4
  %call11 = call i32 @gtk_text_iter_forward_cursor_positions(%struct._GtkTextIter* %end, i32 %17)
  br label %if.end.12

if.end.12:                                        ; preds = %if.else
  br label %sw.epilog

sw.bb.13:                                         ; preds = %do.end
  %18 = load i32, i32* %count.addr, align 4
  %cmp = icmp slt i32 %18, 0
  br i1 %cmp, label %if.then.14, label %if.else.20

if.then.14:                                       ; preds = %sw.bb.13
  %call15 = call i32 @gtk_text_iter_starts_word(%struct._GtkTextIter* %cursor)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end.19, label %if.then.17

if.then.17:                                       ; preds = %if.then.14
  %call18 = call i32 @gtk_text_iter_backward_visible_word_starts(%struct._GtkTextIter* %cursor, i32 1)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %if.then.14
  br label %if.end.31

if.else.20:                                       ; preds = %sw.bb.13
  %19 = load i32, i32* %count.addr, align 4
  %cmp21 = icmp sgt i32 %19, 0
  br i1 %cmp21, label %if.then.22, label %if.end.30

if.then.22:                                       ; preds = %if.else.20
  %call23 = call i32 @gtk_text_iter_ends_word(%struct._GtkTextIter* %end)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.end.29, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then.22
  %call25 = call i32 @gtk_text_iter_forward_visible_word_ends(%struct._GtkTextIter* %end, i32 1)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.end.29, label %if.then.27

if.then.27:                                       ; preds = %land.lhs.true
  %call28 = call i32 @gtk_text_iter_forward_to_line_end(%struct._GtkTextIter* %end)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %land.lhs.true, %if.then.22
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.else.20
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.end.19
  br label %sw.epilog

sw.bb.32:                                         ; preds = %do.end
  %call33 = call i32 @gtk_text_iter_starts_word(%struct._GtkTextIter* %cursor)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.end.37, label %if.then.35

if.then.35:                                       ; preds = %sw.bb.32
  %call36 = call i32 @gtk_text_iter_backward_visible_word_starts(%struct._GtkTextIter* %cursor, i32 1)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %sw.bb.32
  %call38 = call i32 @gtk_text_iter_ends_word(%struct._GtkTextIter* %end)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.end.45, label %land.lhs.true.40

land.lhs.true.40:                                 ; preds = %if.end.37
  %call41 = call i32 @gtk_text_iter_forward_visible_word_ends(%struct._GtkTextIter* %end, i32 1)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.end.45, label %if.then.43

if.then.43:                                       ; preds = %land.lhs.true.40
  %call44 = call i32 @gtk_text_iter_forward_to_line_end(%struct._GtkTextIter* %end)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %land.lhs.true.40, %if.end.37
  br label %sw.epilog

sw.bb.46:                                         ; preds = %do.end
  br label %sw.epilog

sw.bb.47:                                         ; preds = %do.end
  br label %sw.epilog

sw.bb.48:                                         ; preds = %do.end
  %20 = load i32, i32* %count.addr, align 4
  %cmp49 = icmp slt i32 %20, 0
  br i1 %cmp49, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %sw.bb.48
  call void @gtk_text_iter_set_line_offset(%struct._GtkTextIter* %cursor, i32 0)
  br label %if.end.62

if.else.51:                                       ; preds = %sw.bb.48
  %21 = load i32, i32* %count.addr, align 4
  %cmp52 = icmp sgt i32 %21, 0
  br i1 %cmp52, label %if.then.53, label %if.end.61

if.then.53:                                       ; preds = %if.else.51
  %call54 = call i32 @gtk_text_iter_ends_line(%struct._GtkTextIter* %end)
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.else.58, label %if.then.56

if.then.56:                                       ; preds = %if.then.53
  %call57 = call i32 @gtk_text_iter_forward_to_line_end(%struct._GtkTextIter* %end)
  br label %if.end.60

if.else.58:                                       ; preds = %if.then.53
  %call59 = call i32 @gtk_text_iter_forward_cursor_positions(%struct._GtkTextIter* %end, i32 1)
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.58, %if.then.56
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.else.51
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.50
  br label %sw.epilog

sw.bb.63:                                         ; preds = %do.end
  br label %sw.epilog

sw.bb.64:                                         ; preds = %do.end
  %call65 = call i32 @find_whitepace_region(%struct._GtkTextIter* %cursor, %struct._GtkTextIter* %cursor, %struct._GtkTextIter* %end)
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.64, %sw.bb.63, %if.end.62, %sw.bb.47, %sw.bb.46, %if.end.45, %if.end.31, %if.end.12
  %call66 = call i32 @gtk_text_iter_equal(%struct._GtkTextIter* %cursor, %struct._GtkTextIter* %end)
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.end.70, label %if.then.68

if.then.68:                                       ; preds = %sw.epilog
  %22 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %call69 = call i32 @gtk_text_buffer_delete_interactive(%struct._GtkTextBuffer* %22, %struct._GtkTextIter* %cursor, %struct._GtkTextIter* %end, i32 1)
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.9, %if.then.68, %sw.epilog
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_tool_backspace(%struct._GimpTextTool* %text_tool) #0 {
entry:
  %text_tool.addr = alloca %struct._GimpTextTool*, align 8
  %buffer = alloca %struct._GtkTextBuffer*, align 8
  %cursor = alloca %struct._GtkTextIter, align 8
  store %struct._GimpTextTool* %text_tool, %struct._GimpTextTool** %text_tool.addr, align 8
  %0 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %buffer1 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %0, i32 0, i32 5
  %1 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer1, align 8
  %2 = bitcast %struct._GimpTextBuffer* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_text_buffer_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkTextBuffer*
  store %struct._GtkTextBuffer* %3, %struct._GtkTextBuffer** %buffer, align 8
  %4 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  call void @gimp_text_tool_reset_im_context(%struct._GimpTextTool* %4)
  %5 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %call3 = call i32 @gtk_text_buffer_get_has_selection(%struct._GtkTextBuffer* %5)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %call4 = call i32 @gtk_text_buffer_delete_selection(%struct._GtkTextBuffer* %6, i32 1, i32 1)
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %8 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %call5 = call %struct._GtkTextMark* @gtk_text_buffer_get_insert(%struct._GtkTextBuffer* %8)
  call void @gtk_text_buffer_get_iter_at_mark(%struct._GtkTextBuffer* %7, %struct._GtkTextIter* %cursor, %struct._GtkTextMark* %call5)
  %9 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %call6 = call i32 @gtk_text_buffer_backspace(%struct._GtkTextBuffer* %9, %struct._GtkTextIter* %cursor, i32 1, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare void @gimp_text_tool_cut_clipboard(%struct._GimpTextTool*) #1

declare void @gimp_text_tool_copy_clipboard(%struct._GimpTextTool*) #1

declare void @gimp_text_tool_paste_clipboard(%struct._GimpTextTool*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_tool_toggle_overwrite(%struct._GimpTextTool* %text_tool) #0 {
entry:
  %text_tool.addr = alloca %struct._GimpTextTool*, align 8
  store %struct._GimpTextTool* %text_tool, %struct._GimpTextTool** %text_tool.addr, align 8
  %0 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %1 = bitcast %struct._GimpTextTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_draw_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %2)
  %3 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %overwrite_mode = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %3, i32 0, i32 27
  %4 = load i32, i32* %overwrite_mode, align 4
  %tobool = icmp ne i32 %4, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %5 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %overwrite_mode2 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %5, i32 0, i32 27
  store i32 %lnot.ext, i32* %overwrite_mode2, align 4
  %6 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %7 = bitcast %struct._GimpTextTool* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_draw_tool_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %8)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_tool_select_all(%struct._GimpTextTool* %text_tool, i32 %select) #0 {
entry:
  %text_tool.addr = alloca %struct._GimpTextTool*, align 8
  %select.addr = alloca i32, align 4
  %buffer = alloca %struct._GtkTextBuffer*, align 8
  %start = alloca %struct._GtkTextIter, align 8
  %end = alloca %struct._GtkTextIter, align 8
  %cursor = alloca %struct._GtkTextIter, align 8
  store %struct._GimpTextTool* %text_tool, %struct._GimpTextTool** %text_tool.addr, align 8
  store i32 %select, i32* %select.addr, align 4
  %0 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %buffer1 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %0, i32 0, i32 5
  %1 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer1, align 8
  %2 = bitcast %struct._GimpTextBuffer* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_text_buffer_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkTextBuffer*
  store %struct._GtkTextBuffer* %3, %struct._GtkTextBuffer** %buffer, align 8
  %4 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %5 = bitcast %struct._GimpTextTool* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_draw_tool_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %6)
  %7 = load i32, i32* %select.addr, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  call void @gtk_text_buffer_get_bounds(%struct._GtkTextBuffer* %8, %struct._GtkTextIter* %start, %struct._GtkTextIter* %end)
  %9 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  call void @gtk_text_buffer_select_range(%struct._GtkTextBuffer* %9, %struct._GtkTextIter* %start, %struct._GtkTextIter* %end)
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %11 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %call5 = call %struct._GtkTextMark* @gtk_text_buffer_get_insert(%struct._GtkTextBuffer* %11)
  call void @gtk_text_buffer_get_iter_at_mark(%struct._GtkTextBuffer* %10, %struct._GtkTextIter* %cursor, %struct._GtkTextMark* %call5)
  %12 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  call void @gtk_text_buffer_move_mark_by_name(%struct._GtkTextBuffer* %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i32 0, i32 0), %struct._GtkTextIter* %cursor)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %14 = bitcast %struct._GimpTextTool* %13 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_draw_tool_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call6)
  %15 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %15)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_tool_change_size(%struct._GimpTextTool* %text_tool, double %amount) #0 {
entry:
  %text_tool.addr = alloca %struct._GimpTextTool*, align 8
  %amount.addr = alloca double, align 8
  %buffer = alloca %struct._GtkTextBuffer*, align 8
  %start = alloca %struct._GtkTextIter, align 8
  %end = alloca %struct._GtkTextIter, align 8
  store %struct._GimpTextTool* %text_tool, %struct._GimpTextTool** %text_tool.addr, align 8
  store double %amount, double* %amount.addr, align 8
  %0 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %buffer1 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %0, i32 0, i32 5
  %1 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer1, align 8
  %2 = bitcast %struct._GimpTextBuffer* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_text_buffer_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkTextBuffer*
  store %struct._GtkTextBuffer* %3, %struct._GtkTextBuffer** %buffer, align 8
  %4 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %call3 = call i32 @gtk_text_buffer_get_selection_bounds(%struct._GtkTextBuffer* %4, %struct._GtkTextIter* %start, %struct._GtkTextIter* %end)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  call void @gtk_text_iter_order(%struct._GtkTextIter* %start, %struct._GtkTextIter* %end)
  %5 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %buffer4 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %5, i32 0, i32 5
  %6 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer4, align 8
  %7 = load double, double* %amount.addr, align 8
  %mul = fmul double %7, 1.024000e+03
  %conv = fptosi double %mul to i32
  call void @gimp_text_buffer_change_size(%struct._GimpTextBuffer* %6, %struct._GtkTextIter* %start, %struct._GtkTextIter* %end, i32 %conv)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_tool_change_baseline(%struct._GimpTextTool* %text_tool, double %amount) #0 {
entry:
  %text_tool.addr = alloca %struct._GimpTextTool*, align 8
  %amount.addr = alloca double, align 8
  %buffer = alloca %struct._GtkTextBuffer*, align 8
  %start = alloca %struct._GtkTextIter, align 8
  %end = alloca %struct._GtkTextIter, align 8
  store %struct._GimpTextTool* %text_tool, %struct._GimpTextTool** %text_tool.addr, align 8
  store double %amount, double* %amount.addr, align 8
  %0 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %buffer1 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %0, i32 0, i32 5
  %1 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer1, align 8
  %2 = bitcast %struct._GimpTextBuffer* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_text_buffer_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkTextBuffer*
  store %struct._GtkTextBuffer* %3, %struct._GtkTextBuffer** %buffer, align 8
  %4 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %call3 = call i32 @gtk_text_buffer_get_selection_bounds(%struct._GtkTextBuffer* %4, %struct._GtkTextIter* %start, %struct._GtkTextIter* %end)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %6 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %call4 = call %struct._GtkTextMark* @gtk_text_buffer_get_insert(%struct._GtkTextBuffer* %6)
  call void @gtk_text_buffer_get_iter_at_mark(%struct._GtkTextBuffer* %5, %struct._GtkTextIter* %start, %struct._GtkTextMark* %call4)
  %7 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  call void @gtk_text_buffer_get_end_iter(%struct._GtkTextBuffer* %7, %struct._GtkTextIter* %end)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @gtk_text_iter_order(%struct._GtkTextIter* %start, %struct._GtkTextIter* %end)
  %8 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %buffer5 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %8, i32 0, i32 5
  %9 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer5, align 8
  %10 = load double, double* %amount.addr, align 8
  %mul = fmul double %10, 1.024000e+03
  %conv = fptosi double %mul to i32
  call void @gimp_text_buffer_change_baseline(%struct._GimpTextBuffer* %9, %struct._GtkTextIter* %start, %struct._GtkTextIter* %end, i32 %conv)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_tool_change_kerning(%struct._GimpTextTool* %text_tool, double %amount) #0 {
entry:
  %text_tool.addr = alloca %struct._GimpTextTool*, align 8
  %amount.addr = alloca double, align 8
  %buffer = alloca %struct._GtkTextBuffer*, align 8
  %start = alloca %struct._GtkTextIter, align 8
  %end = alloca %struct._GtkTextIter, align 8
  store %struct._GimpTextTool* %text_tool, %struct._GimpTextTool** %text_tool.addr, align 8
  store double %amount, double* %amount.addr, align 8
  %0 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %buffer1 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %0, i32 0, i32 5
  %1 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer1, align 8
  %2 = bitcast %struct._GimpTextBuffer* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_text_buffer_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkTextBuffer*
  store %struct._GtkTextBuffer* %3, %struct._GtkTextBuffer** %buffer, align 8
  %4 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %call3 = call i32 @gtk_text_buffer_get_selection_bounds(%struct._GtkTextBuffer* %4, %struct._GtkTextIter* %start, %struct._GtkTextIter* %end)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %6 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %call4 = call %struct._GtkTextMark* @gtk_text_buffer_get_insert(%struct._GtkTextBuffer* %6)
  call void @gtk_text_buffer_get_iter_at_mark(%struct._GtkTextBuffer* %5, %struct._GtkTextIter* %start, %struct._GtkTextMark* %call4)
  %7 = bitcast %struct._GtkTextIter* %end to i8*
  %8 = bitcast %struct._GtkTextIter* %start to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 80, i32 8, i1 false)
  %call5 = call i32 @gtk_text_iter_forward_char(%struct._GtkTextIter* %end)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @gtk_text_iter_order(%struct._GtkTextIter* %start, %struct._GtkTextIter* %end)
  %9 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %buffer6 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %9, i32 0, i32 5
  %10 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer6, align 8
  %11 = load double, double* %amount.addr, align 8
  %mul = fmul double %11, 1.024000e+03
  %conv = fptosi double %mul to i32
  call void @gimp_text_buffer_change_kerning(%struct._GimpTextBuffer* %10, %struct._GtkTextIter* %start, %struct._GtkTextIter* %end, i32 %conv)
  ret void
}

declare %struct._GEnumValue* @g_enum_get_value(%struct._GEnumClass*, i32) #1

declare i8* @g_type_class_ref(i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_movement_step_get_type() #2

declare void @gtk_text_iter_order(%struct._GtkTextIter*, %struct._GtkTextIter*) #1

declare i32 @gtk_text_iter_forward_visible_cursor_positions(%struct._GtkTextIter*, i32) #1

declare i8* @pango_layout_get_text(%struct._PangoLayout*) #1

; Function Attrs: nounwind readonly
declare i32 @g_utf8_get_char(i8*) #4

declare void @pango_layout_move_cursor_visually(%struct._PangoLayout*, i32, i32, i32, i32, i32*, i32*) #1

declare void @gimp_text_buffer_get_iter_at_index(%struct._GimpTextBuffer*, %struct._GtkTextIter*, i32, i32) #1

declare i32 @gtk_text_iter_forward_chars(%struct._GtkTextIter*, i32) #1

declare void @gtk_text_buffer_get_bounds(%struct._GtkTextBuffer*, %struct._GtkTextIter*, %struct._GtkTextIter*) #1

declare void @pango_layout_index_to_line_x(%struct._PangoLayout*, i32, i32, i32*, i32*) #1

declare %struct._PangoLayoutIter* @pango_layout_get_iter(%struct._PangoLayout*) #1

declare i32 @pango_layout_iter_next_line(%struct._PangoLayoutIter*) #1

declare void @pango_layout_iter_get_line_extents(%struct._PangoLayoutIter*, %struct._PangoRectangle*, %struct._PangoRectangle*) #1

declare void @pango_layout_iter_free(%struct._PangoLayoutIter*) #1

declare i32 @pango_layout_get_line_count(%struct._PangoLayout*) #1

declare %struct._PangoLayoutLine* @pango_layout_iter_get_line_readonly(%struct._PangoLayoutIter*) #1

declare i32 @pango_layout_line_x_to_index(%struct._PangoLayoutLine*, i32, i32*, i32*) #1

declare i32 @gtk_text_iter_forward_char(%struct._GtkTextIter*) #1

declare void @gtk_text_buffer_get_start_iter(%struct._GtkTextBuffer*, %struct._GtkTextIter*) #1

declare void @gtk_text_buffer_get_end_iter(%struct._GtkTextBuffer*, %struct._GtkTextIter*) #1

declare i32 @gtk_text_iter_ends_line(%struct._GtkTextIter*) #1

declare void @gimp_text_buffer_insert(%struct._GimpTextBuffer*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_delete_type_get_type() #2

declare i32 @gtk_text_buffer_delete_selection(%struct._GtkTextBuffer*, i32, i32) #1

declare i32 @gtk_text_iter_forward_cursor_positions(%struct._GtkTextIter*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @find_whitepace_region(%struct._GtkTextIter* %center, %struct._GtkTextIter* %start, %struct._GtkTextIter* %end) #0 {
entry:
  %center.addr = alloca %struct._GtkTextIter*, align 8
  %start.addr = alloca %struct._GtkTextIter*, align 8
  %end.addr = alloca %struct._GtkTextIter*, align 8
  store %struct._GtkTextIter* %center, %struct._GtkTextIter** %center.addr, align 8
  store %struct._GtkTextIter* %start, %struct._GtkTextIter** %start.addr, align 8
  store %struct._GtkTextIter* %end, %struct._GtkTextIter** %end.addr, align 8
  %0 = load %struct._GtkTextIter*, %struct._GtkTextIter** %start.addr, align 8
  %1 = load %struct._GtkTextIter*, %struct._GtkTextIter** %center.addr, align 8
  %2 = bitcast %struct._GtkTextIter* %0 to i8*
  %3 = bitcast %struct._GtkTextIter* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 80, i32 8, i1 false)
  %4 = load %struct._GtkTextIter*, %struct._GtkTextIter** %end.addr, align 8
  %5 = load %struct._GtkTextIter*, %struct._GtkTextIter** %center.addr, align 8
  %6 = bitcast %struct._GtkTextIter* %4 to i8*
  %7 = bitcast %struct._GtkTextIter* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 80, i32 8, i1 false)
  %8 = load %struct._GtkTextIter*, %struct._GtkTextIter** %start.addr, align 8
  %call = call i32 @gtk_text_iter_backward_find_char(%struct._GtkTextIter* %8, i32 (i32, i8*)* @is_not_whitespace, i8* null, %struct._GtkTextIter* null)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct._GtkTextIter*, %struct._GtkTextIter** %start.addr, align 8
  %call1 = call i32 @gtk_text_iter_forward_char(%struct._GtkTextIter* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct._GtkTextIter*, %struct._GtkTextIter** %end.addr, align 8
  %call2 = call i32 @gtk_text_iter_get_char(%struct._GtkTextIter* %10)
  %call3 = call i32 @is_whitespace(i32 %call2, i8* null)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %11 = load %struct._GtkTextIter*, %struct._GtkTextIter** %end.addr, align 8
  %call6 = call i32 @gtk_text_iter_forward_find_char(%struct._GtkTextIter* %11, i32 (i32, i8*)* @is_not_whitespace, i8* null, %struct._GtkTextIter* null)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  %12 = load %struct._GtkTextIter*, %struct._GtkTextIter** %start.addr, align 8
  %13 = load %struct._GtkTextIter*, %struct._GtkTextIter** %end.addr, align 8
  %call8 = call i32 @gtk_text_iter_equal(%struct._GtkTextIter* %12, %struct._GtkTextIter* %13)
  %tobool9 = icmp ne i32 %call8, 0
  %lnot = xor i1 %tobool9, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

declare i32 @gtk_text_buffer_delete_interactive(%struct._GtkTextBuffer*, %struct._GtkTextIter*, %struct._GtkTextIter*, i32) #1

declare i32 @gtk_text_iter_backward_find_char(%struct._GtkTextIter*, i32 (i32, i8*)*, i8*, %struct._GtkTextIter*) #1

; Function Attrs: nounwind uwtable
define internal i32 @is_not_whitespace(i32 %ch, i8* %user_data) #0 {
entry:
  %ch.addr = alloca i32, align 4
  %user_data.addr = alloca i8*, align 8
  store i32 %ch, i32* %ch.addr, align 4
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load i32, i32* %ch.addr, align 4
  %1 = load i8*, i8** %user_data.addr, align 8
  %call = call i32 @is_whitespace(i32 %0, i8* %1)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @is_whitespace(i32 %ch, i8* %user_data) #0 {
entry:
  %ch.addr = alloca i32, align 4
  %user_data.addr = alloca i8*, align 8
  store i32 %ch, i32* %ch.addr, align 4
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load i32, i32* %ch.addr, align 4
  %cmp = icmp eq i32 %0, 32
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %1 = load i32, i32* %ch.addr, align 4
  %cmp1 = icmp eq i32 %1, 9
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %cmp1, %lor.rhs ]
  %lor.ext = zext i1 %2 to i32
  ret i32 %lor.ext
}

declare i32 @gtk_text_iter_get_char(%struct._GtkTextIter*) #1

declare i32 @gtk_text_iter_forward_find_char(%struct._GtkTextIter*, i32 (i32, i8*)*, i8*, %struct._GtkTextIter*) #1

declare i32 @gtk_text_buffer_backspace(%struct._GtkTextBuffer*, %struct._GtkTextIter*, i32, i32) #1

declare void @gtk_text_buffer_move_mark_by_name(%struct._GtkTextBuffer*, i8*, %struct._GtkTextIter*) #1

declare i32 @gtk_text_buffer_get_selection_bounds(%struct._GtkTextBuffer*, %struct._GtkTextIter*, %struct._GtkTextIter*) #1

declare void @gimp_text_buffer_change_size(%struct._GimpTextBuffer*, %struct._GtkTextIter*, %struct._GtkTextIter*, i32) #1

declare void @gimp_text_buffer_change_baseline(%struct._GimpTextBuffer*, %struct._GtkTextIter*, %struct._GtkTextIter*, i32) #1

declare void @gimp_text_buffer_change_kerning(%struct._GimpTextBuffer*, %struct._GtkTextIter*, %struct._GtkTextIter*, i32) #1

declare i8* @g_param_spec_get_name(%struct._GParamSpec*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare void @gtk_window_present(%struct._GtkWindow*) #1

declare %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton() #1

declare %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_text_options_editor_new(%struct._GtkWindow*, %struct._Gimp*, %struct._GimpTextOptions*, %struct._GimpMenuFactory*, i8*, %struct._GimpText*, %struct._GimpTextBuffer*, double, double) #1

declare %struct._GimpMenuFactory* @gimp_dialog_factory_get_menu_factory(%struct._GimpDialogFactory*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

declare void @g_object_add_weak_pointer(%struct._GObject*, i8**) #1

declare void @gimp_dialog_factory_add_foreign(%struct._GimpDialogFactory*, i8*, %struct._GtkWidget*) #1

declare void @gtk_text_buffer_begin_user_action(%struct._GtkTextBuffer*) #1

declare void @gimp_text_tool_delete_selection(%struct._GimpTextTool*) #1

declare void @gtk_text_buffer_end_user_action(%struct._GtkTextBuffer*) #1

declare void @gimp_text_layout_untransform_point(%struct._GimpTextLayout*, double*, double*) #1

declare i32 @pango_layout_xy_to_index(%struct._PangoLayout*, i32, i32, i32*, i32*) #1

declare %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_frame_new(i8*) #1

declare void @gtk_frame_set_shadow_type(%struct._GtkFrame*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #2

declare %struct._GtkWidget* @gtk_event_box_new() #1

declare void @gtk_widget_modify_bg(%struct._GtkWidget*, i32, %struct._GdkColor*) #1

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare void @gtk_misc_set_padding(%struct._GtkMisc*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #2

declare void @g_free(i8*) #1

declare void @gtk_im_context_get_preedit_string(%struct._GtkIMContext*, i8**, %struct._PangoAttrList**, i32*) #1

declare void @gtk_label_set_text(%struct._GtkLabel*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
