; ModuleID = './app/widgets/gimptextstyleeditor.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpTextStyleEditorClass = type { %struct._GtkBoxClass }
%struct._GtkBoxClass = type { %struct._GtkContainerClass }
%struct._GtkContainerClass = type { %struct._GtkWidgetClass, void (%struct._GtkContainer*, %struct._GtkWidget*)*, void (%struct._GtkContainer*, %struct._GtkWidget*)*, void (%struct._GtkContainer*)*, void (%struct._GtkContainer*, i32, void (%struct._GtkWidget*, i8*)*, i8*)*, void (%struct._GtkContainer*, %struct._GtkWidget*)*, i64 (%struct._GtkContainer*)*, i8* (%struct._GtkContainer*, %struct._GtkWidget*)*, void (%struct._GtkContainer*, %struct._GtkWidget*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GtkContainer*, %struct._GtkWidget*, i32, %struct._GValue*, %struct._GParamSpec*)*, void ()*, void ()*, void ()*, void ()* }
%struct._GtkWidgetClass = type { %struct._GtkObjectClass, i32, i32, void (%struct._GtkWidget*, i32, %struct._GParamSpec**)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkRequisition*)*, void (%struct._GtkWidget*, %struct._GdkRectangle*)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, %struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkStyle*)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, %struct._GParamSpec*)*, i32 (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32)*, i32 (%struct._GtkWidget*, %union._GdkEvent*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventScroll*)*, i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)*, i32 (%struct._GtkWidget*, %struct._GdkEventKey*)*, i32 (%struct._GtkWidget*, %struct._GdkEventKey*)*, i32 (%struct._GtkWidget*, %struct._GdkEventCrossing*)*, i32 (%struct._GtkWidget*, %struct._GdkEventCrossing*)*, i32 (%struct._GtkWidget*, %struct._GdkEventConfigure*)*, i32 (%struct._GtkWidget*, %struct._GdkEventFocus*)*, i32 (%struct._GtkWidget*, %struct._GdkEventFocus*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProperty*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProximity*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProximity*)*, i32 (%struct._GtkWidget*, %struct._GdkEventVisibility*)*, i32 (%struct._GtkWidget*, %struct._GdkEventClient*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventWindowState*)*, void (%struct._GtkWidget*, %struct._GtkSelectionData*, i32, i32)*, void (%struct._GtkWidget*, %struct._GtkSelectionData*, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, %struct._GtkSelectionData*, i32, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, i32)*, i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32)*, i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, %struct._GtkSelectionData*, i32, i32)*, i32 (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32)*, %struct._AtkObject* (%struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GdkScreen*)*, i32 (%struct._GtkWidget*, i32)*, i32 (%struct._GtkWidget*, %struct._GdkEventGrabBroken*)*, void (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32, i32, i32, %struct._GtkTooltip*)*, void ()*, void ()*, void ()* }
%struct._GtkObjectClass = type { %struct._GObjectClass, void (%struct._GtkObject*, %struct._GtkArg*, i32)*, void (%struct._GtkObject*, %struct._GtkArg*, i32)*, void (%struct._GtkObject*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GtkArg = type opaque
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
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
%union._GdkEvent = type { %struct._GdkEventCrossing }
%struct._GdkEventCrossing = type { i32, %struct._GdkDrawable*, i8, %struct._GdkDrawable*, i32, double, double, double, double, i32, i32, i32, i32 }
%struct._GdkEventButton = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i32, %struct._GdkDevice*, double, double }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
%struct._GdkEventScroll = type { i32, %struct._GdkDrawable*, i8, i32, double, double, i32, i32, %struct._GdkDevice*, double, double }
%struct._GdkEventMotion = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i16, %struct._GdkDevice*, double, double }
%struct._GdkEventExpose = type { i32, %struct._GdkDrawable*, i8, %struct._GdkRectangle, %struct._GdkRegion*, i32 }
%struct._GdkRegion = type opaque
%struct._GdkEventKey = type { i32, %struct._GdkDrawable*, i8, i32, i32, i32, i32, i8*, i16, i8, i8 }
%struct._GdkEventConfigure = type { i32, %struct._GdkDrawable*, i8, i32, i32, i32, i32 }
%struct._GdkEventFocus = type { i32, %struct._GdkDrawable*, i8, i16 }
%struct._GdkEventProperty = type { i32, %struct._GdkDrawable*, i8, %struct._GdkAtom*, i32, i32 }
%struct._GdkAtom = type opaque
%struct._GdkEventSelection = type { i32, %struct._GdkDrawable*, i8, %struct._GdkAtom*, %struct._GdkAtom*, %struct._GdkAtom*, i32, i32 }
%struct._GdkEventProximity = type { i32, %struct._GdkDrawable*, i8, i32, %struct._GdkDevice* }
%struct._GdkEventVisibility = type { i32, %struct._GdkDrawable*, i8, i32 }
%struct._GdkEventClient = type { i32, %struct._GdkDrawable*, i8, %struct._GdkAtom*, i16, %union.anon.0 }
%union.anon.0 = type { [5 x i64] }
%struct._GdkEventAny = type { i32, %struct._GdkDrawable*, i8 }
%struct._GdkEventWindowState = type { i32, %struct._GdkDrawable*, i8, i32, i32 }
%struct._GtkSelectionData = type { %struct._GdkAtom*, %struct._GdkAtom*, %struct._GdkAtom*, i32, i8*, i32, %struct._GdkDisplay* }
%struct._GdkDisplay = type { %struct._GObject, %struct._GList*, %struct._GList*, [2 x i32], [2 x %struct._GdkDrawable*], [2 x i32], i32, %struct._GdkDevice*, %struct._GdkDisplayPointerHooks*, i8, i32, [2 x i32], [2 x i32], %struct._GList*, %struct.GdkKeyboardGrabInfo, %struct.GdkPointerWindowInfo, i32 }
%struct._GdkDisplayPointerHooks = type { void (%struct._GdkDisplay*, %struct._GdkScreen**, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, %struct._GdkDrawable*, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, i32*, i32*)* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.GdkKeyboardGrabInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, i64, i32, i32 }
%struct.GdkPointerWindowInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, double, double, i32, i32, i64 }
%struct._GdkDragContext = type { %struct._GObject, i32, i32, %struct._GdkDrawable*, %struct._GdkDrawable*, %struct._GList*, i32, i32, i32, i32, i8* }
%struct._AtkObject = type { %struct._GObject, i8*, i8*, %struct._AtkObject*, i32, %struct._AtkRelationSet*, i32 }
%struct._AtkRelationSet = type { %struct._GObject, %struct._GPtrArray* }
%struct._GPtrArray = type { i8**, i32 }
%struct._GdkEventGrabBroken = type { i32, %struct._GdkDrawable*, i8, i32, i32, %struct._GdkDrawable* }
%struct._GtkTooltip = type opaque
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GimpTextStyleEditor = type { %struct._GtkBox, %struct._Gimp*, %struct._GimpContext*, %struct._GimpText*, %struct._GimpTextBuffer*, %struct._GimpContainer*, double, double, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GList*, i32 }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpText = type { %struct._GimpObject, i8*, i8*, i8*, i32, double, i32, i32, i32, i8*, i32, %struct._GimpRGB, i32, i32, double, double, double, i32, double, double, i32, %struct._GimpMatrix2, double, double, double }
%struct._GimpMatrix2 = type { [2 x [2 x double]] }
%struct._GimpTextBuffer = type { %struct._GtkTextBuffer, %struct._GtkTextTag*, %struct._GtkTextTag*, %struct._GtkTextTag*, %struct._GtkTextTag*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GList*, i32, %struct._GList*, %struct._GList*, %struct._GdkAtom* }
%struct._GtkTextBuffer = type { %struct._GObject, %struct._GtkTextTagTable*, %struct._GtkTextBTree*, %struct._GSList*, %struct._GSList*, %struct._GtkTextLogAttrCache*, i32, i8 }
%struct._GtkTextTagTable = type { %struct._GObject, %struct._GHashTable*, %struct._GSList*, i32, %struct._GSList* }
%struct._GHashTable = type opaque
%struct._GtkTextBTree = type opaque
%struct._GtkTextLogAttrCache = type opaque
%struct._GtkTextTag = type { %struct._GObject, %struct._GtkTextTagTable*, i8*, i32, %struct._GtkTextAttributes*, i24 }
%struct._GtkTextAttributes = type { i32, %struct._GtkTextAppearance, i32, i32, %struct._PangoFontDescription*, double, i32, i32, i32, i32, i32, i32, %struct._PangoTabArray*, i32, %struct._PangoLanguage*, %struct._GdkColor*, i8 }
%struct._GtkTextAppearance = type { %struct._GdkColor, %struct._GdkColor, %struct._GdkDrawable*, %struct._GdkDrawable*, i32, i8*, i16 }
%struct._PangoTabArray = type opaque
%struct._PangoLanguage = type opaque
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkOrientable = type opaque
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GimpSizeEntry = type { %struct._GtkTable, %struct._GSList*, i32, %struct._GtkWidget*, i32, i32, i32, i32, i32 }
%struct._GimpColorButton = type { %struct._GimpButton, i8*, i32, %struct._GtkWidget*, %struct._GtkWidget*, i8* }
%struct._GimpButton = type { %struct._GtkButton, i32 }
%struct._GimpColorPanel = type { %struct._GimpColorButton, %struct._GimpContext*, %struct._GtkWidget* }
%struct._GimpContainerView = type opaque
%struct._GtkTextIter = type { i8*, i8*, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i8* }
%struct._GtkTextMark = type { %struct._GObject, i8* }

@gimp_text_style_editor_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"GimpTextStyleEditor\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_text_style_editor_new = private unnamed_addr constant [27 x i8] c"gimp_text_style_editor_new\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"GIMP_IS_TEXT (text)\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"GIMP_IS_TEXT_BUFFER (buffer)\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"resolution_x > 0.0\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"resolution_y > 0.0\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"gimp\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"fonts\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"resolution-x\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"resolution-y\00", align 1
@__func__.gimp_text_style_editor_list_tags = private unnamed_addr constant [33 x i8] c"gimp_text_style_editor_list_tags\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"GIMP_IS_TEXT_STYLE_EDITOR (editor)\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"remove_tags != NULL\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"tag\00", align 1
@gimp_text_style_editor_parent_class = internal global i8* null, align 8
@GimpTextStyleEditor_private_offset = internal global i32 0, align 4
@.str.16 = private unnamed_addr constant [22 x i8] c"gimptextstyleeditor.c\00", align 1
@__func__.gimp_text_style_editor_constructed = private unnamed_addr constant [35 x i8] c"gimp_text_style_editor_constructed\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"GIMP_IS_GIMP (editor->gimp)\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"GIMP_IS_FONT_LIST (editor->fonts)\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"GIMP_IS_TEXT (editor->text)\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"GIMP_IS_TEXT_BUFFER (editor->buffer)\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"text style editor\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"font-changed\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"gtk-bold\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"Bold\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"gtk-italic\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"Italic\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"gtk-underline\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"Underline\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"gtk-strikethrough\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"Strikethrough\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"notify::font\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"notify::font-size\00", align 1
@.str.33 = private unnamed_addr constant [23 x i8] c"notify::font-size-unit\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"notify::color\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"apply-tag\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"remove-tag\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"mark-set\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.40 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.41 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.43 = private unnamed_addr constant [29 x i8] c"Change font of selected text\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"%a\00", align 1
@.str.45 = private unnamed_addr constant [29 x i8] c"Change size of selected text\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.47 = private unnamed_addr constant [29 x i8] c"Clear style of selected text\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"gtk-clear\00", align 1
@.str.50 = private unnamed_addr constant [30 x i8] c"Change color of selected text\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"color-changed\00", align 1
@.str.52 = private unnamed_addr constant [32 x i8] c"Change kerning of selected text\00", align 1
@.str.53 = private unnamed_addr constant [33 x i8] c"Change baseline of selected text\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_text_style_editor_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_text_style_editor_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_text_style_editor_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_box_get_type() #8
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 824, void (i8*, i8*)* bitcast (void (i8*)* @gimp_text_style_editor_class_intern_init to void (i8*, i8*)*), i32 280, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpTextStyleEditor*)* @gimp_text_style_editor_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_text_style_editor_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_text_style_editor_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_style_editor_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_text_style_editor_parent_class, align 8
  %1 = load i32, i32* @GimpTextStyleEditor_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpTextStyleEditor_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpTextStyleEditorClass*
  call void @gimp_text_style_editor_class_init(%struct._GimpTextStyleEditorClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_style_editor_init(%struct._GimpTextStyleEditor* %editor) #3 {
entry:
  %editor.addr = alloca %struct._GimpTextStyleEditor*, align 8
  %image = alloca %struct._GtkWidget*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GimpTextStyleEditor* %editor, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %0 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpTextStyleEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_orientable_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkOrientable*
  call void @gtk_orientable_set_orientation(%struct._GtkOrientable* %2, i32 1)
  %3 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %4 = bitcast %struct._GimpTextStyleEditor* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_box_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkBox*
  call void @gtk_box_set_spacing(%struct._GtkBox* %5, i32 2)
  %call4 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 2)
  %6 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %upper_hbox = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %6, i32 0, i32 8
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %upper_hbox, align 8
  %7 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %8 = bitcast %struct._GimpTextStyleEditor* %7 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_box_get_type() #8
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call5)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkBox*
  %10 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %upper_hbox7 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %10, i32 0, i32 8
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %upper_hbox7, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %9, %struct._GtkWidget* %11, i32 0, i32 0, i32 0)
  %12 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %upper_hbox8 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %12, i32 0, i32 8
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %upper_hbox8, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %13)
  %call9 = call %struct._GtkWidget* @gimp_container_entry_new(%struct._GimpContainer* null, %struct._GimpContext* null, i32 24, i32 1)
  %14 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %font_entry = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %14, i32 0, i32 10
  store %struct._GtkWidget* %call9, %struct._GtkWidget** %font_entry, align 8
  %15 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %upper_hbox10 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %15, i32 0, i32 8
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %upper_hbox10, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_box_get_type() #8
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call11)
  %18 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkBox*
  %19 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %font_entry13 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %19, i32 0, i32 10
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %font_entry13, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %18, %struct._GtkWidget* %20, i32 0, i32 0, i32 0)
  %21 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %font_entry14 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %21, i32 0, i32 10
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %font_entry14, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %22)
  %23 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %font_entry15 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %23, i32 0, i32 10
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %font_entry15, align 8
  %call16 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.43, i32 0, i32 0)) #7
  call void @gimp_help_set_help_data(%struct._GtkWidget* %24, i8* %call16, i8* null)
  %call17 = call %struct._GtkWidget* @gimp_size_entry_new(i32 1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i32 0, i32 0), i32 1, i32 0, i32 0, i32 10, i32 1)
  %25 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %size_entry = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %25, i32 0, i32 11
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %size_entry, align 8
  %26 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %size_entry18 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %26, i32 0, i32 11
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %size_entry18, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_table_get_type() #8
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call19)
  %29 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkTable*
  call void @gtk_table_set_col_spacing(%struct._GtkTable* %29, i32 1, i32 0)
  %30 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %upper_hbox21 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %30, i32 0, i32 8
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %upper_hbox21, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_box_get_type() #8
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call22)
  %33 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkBox*
  %34 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %size_entry24 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %34, i32 0, i32 11
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %size_entry24, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %33, %struct._GtkWidget* %35, i32 0, i32 0, i32 0)
  %36 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %size_entry25 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %36, i32 0, i32 11
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %size_entry25, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %37)
  %38 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %size_entry26 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %38, i32 0, i32 11
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %size_entry26, align 8
  %call27 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.45, i32 0, i32 0)) #7
  call void @gimp_help_set_help_data(%struct._GtkWidget* %39, i8* %call27, i8* null)
  %40 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %size_entry28 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %40, i32 0, i32 11
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %size_entry28, align 8
  %42 = bitcast %struct._GtkWidget* %41 to i8*
  %43 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %44 = bitcast %struct._GimpTextStyleEditor* %43 to i8*
  %call29 = call i64 @g_signal_connect_data(i8* %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46, i32 0, i32 0), void ()* bitcast (void (%struct._GimpSizeEntry*, %struct._GimpTextStyleEditor*)* @gimp_text_style_editor_size_changed to void ()*), i8* %44, void (i8*, %struct._GClosure*)* null, i32 0)
  %call30 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 2)
  %45 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %lower_hbox = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %45, i32 0, i32 9
  store %struct._GtkWidget* %call30, %struct._GtkWidget** %lower_hbox, align 8
  %46 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %47 = bitcast %struct._GimpTextStyleEditor* %46 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_box_get_type() #8
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call31)
  %48 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkBox*
  %49 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %lower_hbox33 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %49, i32 0, i32 9
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %lower_hbox33, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %48, %struct._GtkWidget* %50, i32 0, i32 0, i32 0)
  %51 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %lower_hbox34 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %51, i32 0, i32 9
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %lower_hbox34, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %52)
  %call35 = call %struct._GtkWidget* @gtk_button_new()
  %53 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %clear_button = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %53, i32 0, i32 13
  store %struct._GtkWidget* %call35, %struct._GtkWidget** %clear_button, align 8
  %54 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %clear_button36 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %54, i32 0, i32 13
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %clear_button36, align 8
  call void @gtk_widget_set_can_focus(%struct._GtkWidget* %55, i32 0)
  %56 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %lower_hbox37 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %56, i32 0, i32 9
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %lower_hbox37, align 8
  %58 = bitcast %struct._GtkWidget* %57 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_box_get_type() #8
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call38)
  %59 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkBox*
  %60 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %clear_button40 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %60, i32 0, i32 13
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %clear_button40, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %59, %struct._GtkWidget* %61, i32 0, i32 0, i32 0)
  %62 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %clear_button41 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %62, i32 0, i32 13
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %clear_button41, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %63)
  %64 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %clear_button42 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %64, i32 0, i32 13
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %clear_button42, align 8
  %call43 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.47, i32 0, i32 0)) #7
  call void @gimp_help_set_help_data(%struct._GtkWidget* %65, i8* %call43, i8* null)
  %66 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %clear_button44 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %66, i32 0, i32 13
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %clear_button44, align 8
  %68 = bitcast %struct._GtkWidget* %67 to i8*
  %69 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %70 = bitcast %struct._GimpTextStyleEditor* %69 to i8*
  %call45 = call i64 @g_signal_connect_data(i8* %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0), void ()* bitcast (void (%struct._GtkButton*, %struct._GimpTextStyleEditor*)* @gimp_text_style_editor_clear_tags to void ()*), i8* %70, void (i8*, %struct._GClosure*)* null, i32 0)
  %call46 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), i32 1)
  store %struct._GtkWidget* %call46, %struct._GtkWidget** %image, align 8
  %71 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %clear_button47 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %71, i32 0, i32 13
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %clear_button47, align 8
  %73 = bitcast %struct._GtkWidget* %72 to %struct._GTypeInstance*
  %call48 = call i64 @gtk_container_get_type() #8
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 %call48)
  %74 = bitcast %struct._GTypeInstance* %call49 to %struct._GtkContainer*
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_container_add(%struct._GtkContainer* %74, %struct._GtkWidget* %75)
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %76)
  call void @gimp_rgba_set(%struct._GimpRGB* %color, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  %call50 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.50, i32 0, i32 0)) #7
  %call51 = call %struct._GtkWidget* @gimp_color_panel_new(i8* %call50, %struct._GimpRGB* %color, i32 0, i32 20, i32 20)
  %77 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %color_button = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %77, i32 0, i32 12
  store %struct._GtkWidget* %call51, %struct._GtkWidget** %color_button, align 8
  %78 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %lower_hbox52 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %78, i32 0, i32 9
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %lower_hbox52, align 8
  %80 = bitcast %struct._GtkWidget* %79 to %struct._GTypeInstance*
  %call53 = call i64 @gtk_box_get_type() #8
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %80, i64 %call53)
  %81 = bitcast %struct._GTypeInstance* %call54 to %struct._GtkBox*
  %82 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %color_button55 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %82, i32 0, i32 12
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %color_button55, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %81, %struct._GtkWidget* %83, i32 0, i32 0, i32 0)
  %84 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %color_button56 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %84, i32 0, i32 12
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %color_button56, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %85)
  %86 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %color_button57 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %86, i32 0, i32 12
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %color_button57, align 8
  %call58 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.50, i32 0, i32 0)) #7
  call void @gimp_help_set_help_data(%struct._GtkWidget* %87, i8* %call58, i8* null)
  %88 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %color_button59 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %88, i32 0, i32 12
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %color_button59, align 8
  %90 = bitcast %struct._GtkWidget* %89 to i8*
  %91 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %92 = bitcast %struct._GimpTextStyleEditor* %91 to i8*
  %call60 = call i64 @g_signal_connect_data(i8* %90, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.51, i32 0, i32 0), void ()* bitcast (void (%struct._GimpColorButton*, %struct._GimpTextStyleEditor*)* @gimp_text_style_editor_color_changed to void ()*), i8* %92, void (i8*, %struct._GClosure*)* null, i32 0)
  %call61 = call %struct._GtkObject* @gtk_adjustment_new(double 0.000000e+00, double -1.000000e+03, double 1.000000e+03, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00)
  %93 = bitcast %struct._GtkObject* %call61 to %struct._GTypeInstance*
  %call62 = call i64 @gtk_adjustment_get_type() #8
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %93, i64 %call62)
  %94 = bitcast %struct._GTypeInstance* %call63 to %struct._GtkAdjustment*
  %95 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %kerning_adjustment = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %95, i32 0, i32 17
  store %struct._GtkAdjustment* %94, %struct._GtkAdjustment** %kerning_adjustment, align 8
  %96 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %kerning_adjustment64 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %96, i32 0, i32 17
  %97 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %kerning_adjustment64, align 8
  %call65 = call %struct._GtkWidget* @gtk_spin_button_new(%struct._GtkAdjustment* %97, double 1.000000e+00, i32 1)
  %98 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %kerning_spinbutton = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %98, i32 0, i32 16
  store %struct._GtkWidget* %call65, %struct._GtkWidget** %kerning_spinbutton, align 8
  %99 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %kerning_spinbutton66 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %99, i32 0, i32 16
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %kerning_spinbutton66, align 8
  %101 = bitcast %struct._GtkWidget* %100 to %struct._GTypeInstance*
  %call67 = call i64 @gtk_entry_get_type() #8
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %101, i64 %call67)
  %102 = bitcast %struct._GTypeInstance* %call68 to %struct._GtkEntry*
  call void @gtk_entry_set_width_chars(%struct._GtkEntry* %102, i32 5)
  %103 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %lower_hbox69 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %103, i32 0, i32 9
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %lower_hbox69, align 8
  %105 = bitcast %struct._GtkWidget* %104 to %struct._GTypeInstance*
  %call70 = call i64 @gtk_box_get_type() #8
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %105, i64 %call70)
  %106 = bitcast %struct._GTypeInstance* %call71 to %struct._GtkBox*
  %107 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %kerning_spinbutton72 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %107, i32 0, i32 16
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %kerning_spinbutton72, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %106, %struct._GtkWidget* %108, i32 0, i32 0, i32 0)
  %109 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %kerning_spinbutton73 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %109, i32 0, i32 16
  %110 = load %struct._GtkWidget*, %struct._GtkWidget** %kerning_spinbutton73, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %110)
  %111 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %kerning_spinbutton74 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %111, i32 0, i32 16
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %kerning_spinbutton74, align 8
  %call75 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.52, i32 0, i32 0)) #7
  call void @gimp_help_set_help_data(%struct._GtkWidget* %112, i8* %call75, i8* null)
  %113 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %kerning_adjustment76 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %113, i32 0, i32 17
  %114 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %kerning_adjustment76, align 8
  %115 = bitcast %struct._GtkAdjustment* %114 to i8*
  %116 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %117 = bitcast %struct._GimpTextStyleEditor* %116 to i8*
  %call77 = call i64 @g_signal_connect_data(i8* %115, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._GimpTextStyleEditor*)* @gimp_text_style_editor_kerning_changed to void ()*), i8* %117, void (i8*, %struct._GClosure*)* null, i32 0)
  %call78 = call %struct._GtkObject* @gtk_adjustment_new(double 0.000000e+00, double -1.000000e+03, double 1.000000e+03, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00)
  %118 = bitcast %struct._GtkObject* %call78 to %struct._GTypeInstance*
  %call79 = call i64 @gtk_adjustment_get_type() #8
  %call80 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %118, i64 %call79)
  %119 = bitcast %struct._GTypeInstance* %call80 to %struct._GtkAdjustment*
  %120 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %baseline_adjustment = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %120, i32 0, i32 15
  store %struct._GtkAdjustment* %119, %struct._GtkAdjustment** %baseline_adjustment, align 8
  %121 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %baseline_adjustment81 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %121, i32 0, i32 15
  %122 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %baseline_adjustment81, align 8
  %call82 = call %struct._GtkWidget* @gtk_spin_button_new(%struct._GtkAdjustment* %122, double 1.000000e+00, i32 1)
  %123 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %baseline_spinbutton = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %123, i32 0, i32 14
  store %struct._GtkWidget* %call82, %struct._GtkWidget** %baseline_spinbutton, align 8
  %124 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %baseline_spinbutton83 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %124, i32 0, i32 14
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %baseline_spinbutton83, align 8
  %126 = bitcast %struct._GtkWidget* %125 to %struct._GTypeInstance*
  %call84 = call i64 @gtk_entry_get_type() #8
  %call85 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %126, i64 %call84)
  %127 = bitcast %struct._GTypeInstance* %call85 to %struct._GtkEntry*
  call void @gtk_entry_set_width_chars(%struct._GtkEntry* %127, i32 5)
  %128 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %lower_hbox86 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %128, i32 0, i32 9
  %129 = load %struct._GtkWidget*, %struct._GtkWidget** %lower_hbox86, align 8
  %130 = bitcast %struct._GtkWidget* %129 to %struct._GTypeInstance*
  %call87 = call i64 @gtk_box_get_type() #8
  %call88 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %130, i64 %call87)
  %131 = bitcast %struct._GTypeInstance* %call88 to %struct._GtkBox*
  %132 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %baseline_spinbutton89 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %132, i32 0, i32 14
  %133 = load %struct._GtkWidget*, %struct._GtkWidget** %baseline_spinbutton89, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %131, %struct._GtkWidget* %133, i32 0, i32 0, i32 0)
  %134 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %baseline_spinbutton90 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %134, i32 0, i32 14
  %135 = load %struct._GtkWidget*, %struct._GtkWidget** %baseline_spinbutton90, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %135)
  %136 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %baseline_spinbutton91 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %136, i32 0, i32 14
  %137 = load %struct._GtkWidget*, %struct._GtkWidget** %baseline_spinbutton91, align 8
  %call92 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.53, i32 0, i32 0)) #7
  call void @gimp_help_set_help_data(%struct._GtkWidget* %137, i8* %call92, i8* null)
  %138 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %baseline_adjustment93 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %138, i32 0, i32 15
  %139 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %baseline_adjustment93, align 8
  %140 = bitcast %struct._GtkAdjustment* %139 to i8*
  %141 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %142 = bitcast %struct._GimpTextStyleEditor* %141 to i8*
  %call94 = call i64 @g_signal_connect_data(i8* %140, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._GimpTextStyleEditor*)* @gimp_text_style_editor_baseline_changed to void ()*), i8* %142, void (i8*, %struct._GClosure*)* null, i32 0)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_text_style_editor_new(%struct._Gimp* %gimp, %struct._GimpText* %text, %struct._GimpTextBuffer* %buffer, %struct._GimpContainer* %fonts, double %resolution_x, double %resolution_y) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %text.addr = alloca %struct._GimpText*, align 8
  %buffer.addr = alloca %struct._GimpTextBuffer*, align 8
  %fonts.addr = alloca %struct._GimpContainer*, align 8
  %resolution_x.addr = alloca double, align 8
  %resolution_y.addr = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %__inst41 = alloca %struct._GTypeInstance*, align 8
  %__t43 = alloca i64, align 8
  %__r46 = alloca i32, align 4
  %tmp61 = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpText* %text, %struct._GimpText** %text.addr, align 8
  store %struct._GimpTextBuffer* %buffer, %struct._GimpTextBuffer** %buffer.addr, align 8
  store %struct._GimpContainer* %fonts, %struct._GimpContainer** %fonts.addr, align 8
  store double %resolution_x, double* %resolution_x.addr, align 8
  store double %resolution_y, double* %resolution_y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_text_style_editor_new, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %14 = bitcast %struct._GimpText* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_text_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_text_style_editor_new, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %27 = bitcast %struct._GimpTextBuffer* %26 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %27, %struct._GTypeInstance** %__inst41, align 8
  %call44 = call i64 @gimp_text_buffer_get_type() #8
  store i64 %call44, i64* %__t43, align 8
  %28 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %tobool47 = icmp ne %struct._GTypeInstance* %28, null
  br i1 %tobool47, label %if.else.49, label %if.then.48

if.then.48:                                       ; preds = %do.body.39
  store i32 0, i32* %__r46, align 4
  br label %if.end.60

if.else.49:                                       ; preds = %do.body.39
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %g_class50 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %29, i32 0, i32 0
  %30 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class50, align 8
  %tobool51 = icmp ne %struct._GTypeClass* %30, null
  br i1 %tobool51, label %land.lhs.true.52, label %if.else.57

land.lhs.true.52:                                 ; preds = %if.else.49
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %g_class53 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class53, align 8
  %g_type54 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %32, i32 0, i32 0
  %33 = load i64, i64* %g_type54, align 8
  %34 = load i64, i64* %__t43, align 8
  %cmp55 = icmp eq i64 %33, %34
  br i1 %cmp55, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %land.lhs.true.52
  store i32 1, i32* %__r46, align 4
  br label %if.end.59

if.else.57:                                       ; preds = %land.lhs.true.52, %if.else.49
  %35 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %36 = load i64, i64* %__t43, align 8
  %call58 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %35, i64 %36) #9
  store i32 %call58, i32* %__r46, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.57, %if.then.56
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.48
  %37 = load i32, i32* %__r46, align 4
  store i32 %37, i32* %tmp61
  %38 = load i32, i32* %tmp61
  %tobool62 = icmp ne i32 %38, 0
  br i1 %tobool62, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %if.end.60
  br label %if.end.65

if.else.64:                                       ; preds = %if.end.60
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_text_style_editor_new, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.65:                                        ; preds = %if.then.63
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  br label %do.body.67

do.body.67:                                       ; preds = %do.end.66
  %39 = load double, double* %resolution_x.addr, align 8
  %cmp68 = fcmp ogt double %39, 0.000000e+00
  br i1 %cmp68, label %if.then.69, label %if.else.70

if.then.69:                                       ; preds = %do.body.67
  br label %if.end.71

if.else.70:                                       ; preds = %do.body.67
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_text_style_editor_new, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.71:                                        ; preds = %if.then.69
  br label %do.end.72

do.end.72:                                        ; preds = %if.end.71
  br label %do.body.73

do.body.73:                                       ; preds = %do.end.72
  %40 = load double, double* %resolution_y.addr, align 8
  %cmp74 = fcmp ogt double %40, 0.000000e+00
  br i1 %cmp74, label %if.then.75, label %if.else.76

if.then.75:                                       ; preds = %do.body.73
  br label %if.end.77

if.else.76:                                       ; preds = %do.body.73
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_text_style_editor_new, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.77:                                        ; preds = %if.then.75
  br label %do.end.78

do.end.78:                                        ; preds = %if.end.77
  %call79 = call i64 @gimp_text_style_editor_get_type() #8
  %41 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %42 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %43 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %44 = load %struct._GimpContainer*, %struct._GimpContainer** %fonts.addr, align 8
  %45 = load double, double* %resolution_x.addr, align 8
  %46 = load double, double* %resolution_y.addr, align 8
  %call80 = call i8* (i64, i8*, ...) @g_object_new(i64 %call79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), %struct._Gimp* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), %struct._GimpText* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), %struct._GimpTextBuffer* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), %struct._GimpContainer* %44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), double %45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), double %46, i8* null)
  %47 = bitcast i8* %call80 to %struct._GtkWidget*
  store %struct._GtkWidget* %47, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end.78, %if.else.76, %if.else.70, %if.else.64, %if.else.36, %if.else.9
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %48
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_text_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_text_buffer_get_type() #2

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define %struct._GList* @gimp_text_style_editor_list_tags(%struct._GimpTextStyleEditor* %editor, %struct._GList** %remove_tags) #3 {
entry:
  %retval = alloca %struct._GList*, align 8
  %editor.addr = alloca %struct._GimpTextStyleEditor*, align 8
  %remove_tags.addr = alloca %struct._GList**, align 8
  %toggles = alloca %struct._GList*, align 8
  %tags = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tag = alloca %struct._GtkTextTag*, align 8
  %list = alloca %struct._GList*, align 8
  %pixels = alloca double, align 8
  %tag51 = alloca %struct._GtkTextTag*, align 8
  %points = alloca double, align 8
  %list59 = alloca %struct._GList*, align 8
  %font_name = alloca i8*, align 8
  %tag79 = alloca %struct._GtkTextTag*, align 8
  %list85 = alloca %struct._GList*, align 8
  %color = alloca %struct._GimpRGB, align 8
  %tag104 = alloca %struct._GtkTextTag*, align 8
  store %struct._GimpTextStyleEditor* %editor, %struct._GimpTextStyleEditor** %editor.addr, align 8
  store %struct._GList** %remove_tags, %struct._GList*** %remove_tags.addr, align 8
  store %struct._GList* null, %struct._GList** %tags, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpTextStyleEditor* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_text_style_editor_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_text_style_editor_list_tags, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GList**, %struct._GList*** %remove_tags.addr, align 8
  %cmp12 = icmp ne %struct._GList** %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_text_style_editor_list_tags, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GList**, %struct._GList*** %remove_tags.addr, align 8
  store %struct._GList* null, %struct._GList** %14, align 8
  %15 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %toggles17 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %15, i32 0, i32 18
  %16 = load %struct._GList*, %struct._GList** %toggles17, align 8
  store %struct._GList* %16, %struct._GList** %toggles, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end.16
  %17 = load %struct._GList*, %struct._GList** %toggles, align 8
  %tobool18 = icmp ne %struct._GList* %17, null
  br i1 %tobool18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load %struct._GList*, %struct._GList** %toggles, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %18, i32 0, i32 0
  %19 = load i8*, i8** %data, align 8
  %20 = bitcast i8* %19 to %struct._GObject*
  %call20 = call i8* @g_object_get_data(%struct._GObject* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0))
  %21 = bitcast i8* %call20 to %struct._GtkTextTag*
  store %struct._GtkTextTag* %21, %struct._GtkTextTag** %tag, align 8
  %22 = load %struct._GList*, %struct._GList** %toggles, align 8
  %data21 = getelementptr inbounds %struct._GList, %struct._GList* %22, i32 0, i32 0
  %23 = load i8*, i8** %data21, align 8
  %24 = bitcast i8* %23 to %struct._GtkToggleButton*
  %call22 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %24)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then.24, label %if.else.26

if.then.24:                                       ; preds = %for.body
  %25 = load %struct._GList*, %struct._GList** %tags, align 8
  %26 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag, align 8
  %27 = bitcast %struct._GtkTextTag* %26 to i8*
  %call25 = call %struct._GList* @g_list_prepend(%struct._GList* %25, i8* %27)
  store %struct._GList* %call25, %struct._GList** %tags, align 8
  br label %if.end.28

if.else.26:                                       ; preds = %for.body
  %28 = load %struct._GList**, %struct._GList*** %remove_tags.addr, align 8
  %29 = load %struct._GList*, %struct._GList** %28, align 8
  %30 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag, align 8
  %31 = bitcast %struct._GtkTextTag* %30 to i8*
  %call27 = call %struct._GList* @g_list_prepend(%struct._GList* %29, i8* %31)
  %32 = load %struct._GList**, %struct._GList*** %remove_tags.addr, align 8
  store %struct._GList* %call27, %struct._GList** %32, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.26, %if.then.24
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %33 = load %struct._GList*, %struct._GList** %toggles, align 8
  %tobool29 = icmp ne %struct._GList* %33, null
  br i1 %tobool29, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %34 = load %struct._GList*, %struct._GList** %toggles, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %34, i32 0, i32 1
  %35 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %35, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %toggles, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %buffer = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %36, i32 0, i32 4
  %37 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer, align 8
  %size_tags = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %37, i32 0, i32 5
  %38 = load %struct._GList*, %struct._GList** %size_tags, align 8
  store %struct._GList* %38, %struct._GList** %list, align 8
  br label %for.cond.32

for.cond.32:                                      ; preds = %cond.end.42, %for.end
  %39 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool33 = icmp ne %struct._GList* %39, null
  br i1 %tobool33, label %for.body.34, label %for.end.44

for.body.34:                                      ; preds = %for.cond.32
  %40 = load %struct._GList**, %struct._GList*** %remove_tags.addr, align 8
  %41 = load %struct._GList*, %struct._GList** %40, align 8
  %42 = load %struct._GList*, %struct._GList** %list, align 8
  %data35 = getelementptr inbounds %struct._GList, %struct._GList* %42, i32 0, i32 0
  %43 = load i8*, i8** %data35, align 8
  %call36 = call %struct._GList* @g_list_prepend(%struct._GList* %41, i8* %43)
  %44 = load %struct._GList**, %struct._GList*** %remove_tags.addr, align 8
  store %struct._GList* %call36, %struct._GList** %44, align 8
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.body.34
  %45 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool38 = icmp ne %struct._GList* %45, null
  br i1 %tobool38, label %cond.true.39, label %cond.false.41

cond.true.39:                                     ; preds = %for.inc.37
  %46 = load %struct._GList*, %struct._GList** %list, align 8
  %next40 = getelementptr inbounds %struct._GList, %struct._GList* %46, i32 0, i32 1
  %47 = load %struct._GList*, %struct._GList** %next40, align 8
  br label %cond.end.42

cond.false.41:                                    ; preds = %for.inc.37
  br label %cond.end.42

cond.end.42:                                      ; preds = %cond.false.41, %cond.true.39
  %cond43 = phi %struct._GList* [ %47, %cond.true.39 ], [ null, %cond.false.41 ]
  store %struct._GList* %cond43, %struct._GList** %list, align 8
  br label %for.cond.32

for.end.44:                                       ; preds = %for.cond.32
  %48 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %size_entry = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %48, i32 0, i32 11
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %size_entry, align 8
  %50 = bitcast %struct._GtkWidget* %49 to %struct._GTypeInstance*
  %call45 = call i64 @gimp_size_entry_get_type() #8
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call45)
  %51 = bitcast %struct._GTypeInstance* %call46 to %struct._GimpSizeEntry*
  %call47 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %51, i32 0)
  store double %call47, double* %pixels, align 8
  %52 = load double, double* %pixels, align 8
  %cmp48 = fcmp une double %52, 0.000000e+00
  br i1 %cmp48, label %if.then.49, label %if.end.57

if.then.49:                                       ; preds = %for.end.44
  %53 = load double, double* %pixels, align 8
  %54 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %resolution_y = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %54, i32 0, i32 7
  %55 = load double, double* %resolution_y, align 8
  %call53 = call double @gimp_units_to_points(double %53, i32 0, double %55)
  store double %call53, double* %points, align 8
  %56 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %buffer54 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %56, i32 0, i32 4
  %57 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer54, align 8
  %58 = load double, double* %points, align 8
  %mul = fmul double 1.024000e+03, %58
  %conv = fptosi double %mul to i32
  %call55 = call %struct._GtkTextTag* @gimp_text_buffer_get_size_tag(%struct._GimpTextBuffer* %57, i32 %conv)
  store %struct._GtkTextTag* %call55, %struct._GtkTextTag** %tag51, align 8
  %59 = load %struct._GList*, %struct._GList** %tags, align 8
  %60 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag51, align 8
  %61 = bitcast %struct._GtkTextTag* %60 to i8*
  %call56 = call %struct._GList* @g_list_prepend(%struct._GList* %59, i8* %61)
  store %struct._GList* %call56, %struct._GList** %tags, align 8
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.49, %for.end.44
  %62 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %buffer61 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %62, i32 0, i32 4
  %63 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer61, align 8
  %font_tags = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %63, i32 0, i32 8
  %64 = load %struct._GList*, %struct._GList** %font_tags, align 8
  store %struct._GList* %64, %struct._GList** %list59, align 8
  br label %for.cond.62

for.cond.62:                                      ; preds = %cond.end.72, %if.end.57
  %65 = load %struct._GList*, %struct._GList** %list59, align 8
  %tobool63 = icmp ne %struct._GList* %65, null
  br i1 %tobool63, label %for.body.64, label %for.end.74

for.body.64:                                      ; preds = %for.cond.62
  %66 = load %struct._GList**, %struct._GList*** %remove_tags.addr, align 8
  %67 = load %struct._GList*, %struct._GList** %66, align 8
  %68 = load %struct._GList*, %struct._GList** %list59, align 8
  %data65 = getelementptr inbounds %struct._GList, %struct._GList* %68, i32 0, i32 0
  %69 = load i8*, i8** %data65, align 8
  %call66 = call %struct._GList* @g_list_prepend(%struct._GList* %67, i8* %69)
  %70 = load %struct._GList**, %struct._GList*** %remove_tags.addr, align 8
  store %struct._GList* %call66, %struct._GList** %70, align 8
  br label %for.inc.67

for.inc.67:                                       ; preds = %for.body.64
  %71 = load %struct._GList*, %struct._GList** %list59, align 8
  %tobool68 = icmp ne %struct._GList* %71, null
  br i1 %tobool68, label %cond.true.69, label %cond.false.71

cond.true.69:                                     ; preds = %for.inc.67
  %72 = load %struct._GList*, %struct._GList** %list59, align 8
  %next70 = getelementptr inbounds %struct._GList, %struct._GList* %72, i32 0, i32 1
  %73 = load %struct._GList*, %struct._GList** %next70, align 8
  br label %cond.end.72

cond.false.71:                                    ; preds = %for.inc.67
  br label %cond.end.72

cond.end.72:                                      ; preds = %cond.false.71, %cond.true.69
  %cond73 = phi %struct._GList* [ %73, %cond.true.69 ], [ null, %cond.false.71 ]
  store %struct._GList* %cond73, %struct._GList** %list59, align 8
  br label %for.cond.62

for.end.74:                                       ; preds = %for.cond.62
  %74 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %context = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %74, i32 0, i32 2
  %75 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call75 = call i8* @gimp_context_get_font_name(%struct._GimpContext* %75)
  store i8* %call75, i8** %font_name, align 8
  %76 = load i8*, i8** %font_name, align 8
  %tobool76 = icmp ne i8* %76, null
  br i1 %tobool76, label %if.then.77, label %if.end.83

if.then.77:                                       ; preds = %for.end.74
  %77 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %buffer80 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %77, i32 0, i32 4
  %78 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer80, align 8
  %79 = load i8*, i8** %font_name, align 8
  %call81 = call %struct._GtkTextTag* @gimp_text_buffer_get_font_tag(%struct._GimpTextBuffer* %78, i8* %79)
  store %struct._GtkTextTag* %call81, %struct._GtkTextTag** %tag79, align 8
  %80 = load %struct._GList*, %struct._GList** %tags, align 8
  %81 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag79, align 8
  %82 = bitcast %struct._GtkTextTag* %81 to i8*
  %call82 = call %struct._GList* @g_list_prepend(%struct._GList* %80, i8* %82)
  store %struct._GList* %call82, %struct._GList** %tags, align 8
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.77, %for.end.74
  %83 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %buffer87 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %83, i32 0, i32 4
  %84 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer87, align 8
  %color_tags = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %84, i32 0, i32 9
  %85 = load %struct._GList*, %struct._GList** %color_tags, align 8
  store %struct._GList* %85, %struct._GList** %list85, align 8
  br label %for.cond.88

for.cond.88:                                      ; preds = %cond.end.98, %if.end.83
  %86 = load %struct._GList*, %struct._GList** %list85, align 8
  %tobool89 = icmp ne %struct._GList* %86, null
  br i1 %tobool89, label %for.body.90, label %for.end.100

for.body.90:                                      ; preds = %for.cond.88
  %87 = load %struct._GList**, %struct._GList*** %remove_tags.addr, align 8
  %88 = load %struct._GList*, %struct._GList** %87, align 8
  %89 = load %struct._GList*, %struct._GList** %list85, align 8
  %data91 = getelementptr inbounds %struct._GList, %struct._GList* %89, i32 0, i32 0
  %90 = load i8*, i8** %data91, align 8
  %call92 = call %struct._GList* @g_list_prepend(%struct._GList* %88, i8* %90)
  %91 = load %struct._GList**, %struct._GList*** %remove_tags.addr, align 8
  store %struct._GList* %call92, %struct._GList** %91, align 8
  br label %for.inc.93

for.inc.93:                                       ; preds = %for.body.90
  %92 = load %struct._GList*, %struct._GList** %list85, align 8
  %tobool94 = icmp ne %struct._GList* %92, null
  br i1 %tobool94, label %cond.true.95, label %cond.false.97

cond.true.95:                                     ; preds = %for.inc.93
  %93 = load %struct._GList*, %struct._GList** %list85, align 8
  %next96 = getelementptr inbounds %struct._GList, %struct._GList* %93, i32 0, i32 1
  %94 = load %struct._GList*, %struct._GList** %next96, align 8
  br label %cond.end.98

cond.false.97:                                    ; preds = %for.inc.93
  br label %cond.end.98

cond.end.98:                                      ; preds = %cond.false.97, %cond.true.95
  %cond99 = phi %struct._GList* [ %94, %cond.true.95 ], [ null, %cond.false.97 ]
  store %struct._GList* %cond99, %struct._GList** %list85, align 8
  br label %for.cond.88

for.end.100:                                      ; preds = %for.cond.88
  %95 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %color_button = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %95, i32 0, i32 12
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %color_button, align 8
  %97 = bitcast %struct._GtkWidget* %96 to %struct._GTypeInstance*
  %call101 = call i64 @gimp_color_button_get_type() #8
  %call102 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %97, i64 %call101)
  %98 = bitcast %struct._GTypeInstance* %call102 to %struct._GimpColorButton*
  call void @gimp_color_button_get_color(%struct._GimpColorButton* %98, %struct._GimpRGB* %color)
  %99 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %buffer105 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %99, i32 0, i32 4
  %100 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer105, align 8
  %call106 = call %struct._GtkTextTag* @gimp_text_buffer_get_color_tag(%struct._GimpTextBuffer* %100, %struct._GimpRGB* %color)
  store %struct._GtkTextTag* %call106, %struct._GtkTextTag** %tag104, align 8
  %101 = load %struct._GList*, %struct._GList** %tags, align 8
  %102 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag104, align 8
  %103 = bitcast %struct._GtkTextTag* %102 to i8*
  %call107 = call %struct._GList* @g_list_prepend(%struct._GList* %101, i8* %103)
  store %struct._GList* %call107, %struct._GList** %tags, align 8
  %104 = load %struct._GList**, %struct._GList*** %remove_tags.addr, align 8
  %105 = load %struct._GList*, %struct._GList** %104, align 8
  %call108 = call %struct._GList* @g_list_reverse(%struct._GList* %105)
  %106 = load %struct._GList**, %struct._GList*** %remove_tags.addr, align 8
  store %struct._GList* %call108, %struct._GList** %106, align 8
  %107 = load %struct._GList*, %struct._GList** %tags, align 8
  %call109 = call %struct._GList* @g_list_reverse(%struct._GList* %107)
  store %struct._GList* %call109, %struct._GList** %retval
  br label %return

return:                                           ; preds = %for.end.100, %if.else.14, %if.else.9
  %108 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %108
}

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton*) #1

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

declare double @gimp_size_entry_get_refval(%struct._GimpSizeEntry*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_size_entry_get_type() #2

declare double @gimp_units_to_points(double, i32, double) #1

declare %struct._GtkTextTag* @gimp_text_buffer_get_size_tag(%struct._GimpTextBuffer*, i32) #1

declare i8* @gimp_context_get_font_name(%struct._GimpContext*) #1

declare %struct._GtkTextTag* @gimp_text_buffer_get_font_tag(%struct._GimpTextBuffer*, i8*) #1

declare void @gimp_color_button_get_color(%struct._GimpColorButton*, %struct._GimpRGB*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_button_get_type() #2

declare %struct._GtkTextTag* @gimp_text_buffer_get_color_tag(%struct._GimpTextBuffer*, %struct._GimpRGB*) #1

declare %struct._GList* @g_list_reverse(%struct._GList*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_style_editor_class_init(%struct._GimpTextStyleEditorClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpTextStyleEditorClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpTextStyleEditorClass* %klass, %struct._GimpTextStyleEditorClass** %klass.addr, align 8
  %0 = load %struct._GimpTextStyleEditorClass*, %struct._GimpTextStyleEditorClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpTextStyleEditorClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_text_style_editor_constructed, void (%struct._GObject*)** %constructed, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_text_style_editor_dispose, void (%struct._GObject*)** %dispose, align 8
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_text_style_editor_finalize, void (%struct._GObject*)** %finalize, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_text_style_editor_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_text_style_editor_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call1 = call i64 @gimp_get_type() #8
  %call2 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null, i64 %call1, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %8, i32 1, %struct._GParamSpec* %call2)
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call i64 @gimp_text_get_type() #8
  %call4 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* null, i64 %call3, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %9, i32 2, %struct._GParamSpec* %call4)
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call i64 @gimp_text_buffer_get_type() #8
  %call6 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* null, i64 %call5, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %10, i32 3, %struct._GParamSpec* %call6)
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call7 = call i64 @gimp_font_list_get_type() #8
  %call8 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8* null, i8* null, i64 %call7, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %11, i32 4, %struct._GParamSpec* %call8)
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call9 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i8* null, i8* null, double 5.000000e-03, double 6.553600e+04, double 1.000000e+00, i32 231)
  call void @g_object_class_install_property(%struct._GObjectClass* %12, i32 5, %struct._GParamSpec* %call9)
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call10 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* null, double 5.000000e-03, double 6.553600e+04, double 1.000000e+00, i32 231)
  call void @g_object_class_install_property(%struct._GObjectClass* %13, i32 6, %struct._GParamSpec* %call10)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_style_editor_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %editor = alloca %struct._GimpTextStyleEditor*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst21 = alloca %struct._GTypeInstance*, align 8
  %__t23 = alloca i64, align 8
  %__r26 = alloca i32, align 4
  %tmp41 = alloca i32, align 4
  %__inst49 = alloca %struct._GTypeInstance*, align 8
  %__t51 = alloca i64, align 8
  %__r54 = alloca i32, align 4
  %tmp69 = alloca i32, align 4
  %__inst77 = alloca %struct._GTypeInstance*, align 8
  %__t79 = alloca i64, align 8
  %__r82 = alloca i32, align 4
  %tmp97 = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_text_style_editor_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTextStyleEditor*
  store %struct._GimpTextStyleEditor* %2, %struct._GimpTextStyleEditor** %editor, align 8
  %3 = load i8*, i8** @gimp_text_style_editor_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 9
  %6 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_text_style_editor_parent_class, align 8
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
  %12 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %gimp = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %12, i32 0, i32 1
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %14 = bitcast %struct._Gimp* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst, align 8
  %call5 = call i64 @gimp_get_type() #8
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
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), i32 303, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_text_style_editor_constructed, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i32 0, i32 0)) #10
  unreachable

if.end.18:                                        ; preds = %if.then.16
  br label %do.end

do.end:                                           ; preds = %if.end.18
  br label %do.body.19

do.body.19:                                       ; preds = %do.end
  %26 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %fonts = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %26, i32 0, i32 5
  %27 = load %struct._GimpContainer*, %struct._GimpContainer** %fonts, align 8
  %28 = bitcast %struct._GimpContainer* %27 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %28, %struct._GTypeInstance** %__inst21, align 8
  %call24 = call i64 @gimp_font_list_get_type() #8
  store i64 %call24, i64* %__t23, align 8
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst21, align 8
  %tobool27 = icmp ne %struct._GTypeInstance* %29, null
  br i1 %tobool27, label %if.else.29, label %if.then.28

if.then.28:                                       ; preds = %do.body.19
  store i32 0, i32* %__r26, align 4
  br label %if.end.40

if.else.29:                                       ; preds = %do.body.19
  %30 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst21, align 8
  %g_class30 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %30, i32 0, i32 0
  %31 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class30, align 8
  %tobool31 = icmp ne %struct._GTypeClass* %31, null
  br i1 %tobool31, label %land.lhs.true.32, label %if.else.37

land.lhs.true.32:                                 ; preds = %if.else.29
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst21, align 8
  %g_class33 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class33, align 8
  %g_type34 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %33, i32 0, i32 0
  %34 = load i64, i64* %g_type34, align 8
  %35 = load i64, i64* %__t23, align 8
  %cmp35 = icmp eq i64 %34, %35
  br i1 %cmp35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %land.lhs.true.32
  store i32 1, i32* %__r26, align 4
  br label %if.end.39

if.else.37:                                       ; preds = %land.lhs.true.32, %if.else.29
  %36 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst21, align 8
  %37 = load i64, i64* %__t23, align 8
  %call38 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %36, i64 %37) #9
  store i32 %call38, i32* %__r26, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.37, %if.then.36
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then.28
  %38 = load i32, i32* %__r26, align 4
  store i32 %38, i32* %tmp41
  %39 = load i32, i32* %tmp41
  %tobool42 = icmp ne i32 %39, 0
  br i1 %tobool42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %if.end.40
  br label %if.end.45

if.else.44:                                       ; preds = %if.end.40
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), i32 304, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_text_style_editor_constructed, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i32 0, i32 0)) #10
  unreachable

if.end.45:                                        ; preds = %if.then.43
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  br label %do.body.47

do.body.47:                                       ; preds = %do.end.46
  %40 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %text = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %40, i32 0, i32 3
  %41 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %42 = bitcast %struct._GimpText* %41 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %42, %struct._GTypeInstance** %__inst49, align 8
  %call52 = call i64 @gimp_text_get_type() #8
  store i64 %call52, i64* %__t51, align 8
  %43 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst49, align 8
  %tobool55 = icmp ne %struct._GTypeInstance* %43, null
  br i1 %tobool55, label %if.else.57, label %if.then.56

if.then.56:                                       ; preds = %do.body.47
  store i32 0, i32* %__r54, align 4
  br label %if.end.68

if.else.57:                                       ; preds = %do.body.47
  %44 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst49, align 8
  %g_class58 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %44, i32 0, i32 0
  %45 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class58, align 8
  %tobool59 = icmp ne %struct._GTypeClass* %45, null
  br i1 %tobool59, label %land.lhs.true.60, label %if.else.65

land.lhs.true.60:                                 ; preds = %if.else.57
  %46 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst49, align 8
  %g_class61 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %46, i32 0, i32 0
  %47 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class61, align 8
  %g_type62 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %47, i32 0, i32 0
  %48 = load i64, i64* %g_type62, align 8
  %49 = load i64, i64* %__t51, align 8
  %cmp63 = icmp eq i64 %48, %49
  br i1 %cmp63, label %if.then.64, label %if.else.65

if.then.64:                                       ; preds = %land.lhs.true.60
  store i32 1, i32* %__r54, align 4
  br label %if.end.67

if.else.65:                                       ; preds = %land.lhs.true.60, %if.else.57
  %50 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst49, align 8
  %51 = load i64, i64* %__t51, align 8
  %call66 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %50, i64 %51) #9
  store i32 %call66, i32* %__r54, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.65, %if.then.64
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.then.56
  %52 = load i32, i32* %__r54, align 4
  store i32 %52, i32* %tmp69
  %53 = load i32, i32* %tmp69
  %tobool70 = icmp ne i32 %53, 0
  br i1 %tobool70, label %if.then.71, label %if.else.72

if.then.71:                                       ; preds = %if.end.68
  br label %if.end.73

if.else.72:                                       ; preds = %if.end.68
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), i32 305, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_text_style_editor_constructed, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i32 0, i32 0)) #10
  unreachable

if.end.73:                                        ; preds = %if.then.71
  br label %do.end.74

do.end.74:                                        ; preds = %if.end.73
  br label %do.body.75

do.body.75:                                       ; preds = %do.end.74
  %54 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %buffer = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %54, i32 0, i32 4
  %55 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer, align 8
  %56 = bitcast %struct._GimpTextBuffer* %55 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %56, %struct._GTypeInstance** %__inst77, align 8
  %call80 = call i64 @gimp_text_buffer_get_type() #8
  store i64 %call80, i64* %__t79, align 8
  %57 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst77, align 8
  %tobool83 = icmp ne %struct._GTypeInstance* %57, null
  br i1 %tobool83, label %if.else.85, label %if.then.84

if.then.84:                                       ; preds = %do.body.75
  store i32 0, i32* %__r82, align 4
  br label %if.end.96

if.else.85:                                       ; preds = %do.body.75
  %58 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst77, align 8
  %g_class86 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %58, i32 0, i32 0
  %59 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class86, align 8
  %tobool87 = icmp ne %struct._GTypeClass* %59, null
  br i1 %tobool87, label %land.lhs.true.88, label %if.else.93

land.lhs.true.88:                                 ; preds = %if.else.85
  %60 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst77, align 8
  %g_class89 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %60, i32 0, i32 0
  %61 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class89, align 8
  %g_type90 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %61, i32 0, i32 0
  %62 = load i64, i64* %g_type90, align 8
  %63 = load i64, i64* %__t79, align 8
  %cmp91 = icmp eq i64 %62, %63
  br i1 %cmp91, label %if.then.92, label %if.else.93

if.then.92:                                       ; preds = %land.lhs.true.88
  store i32 1, i32* %__r82, align 4
  br label %if.end.95

if.else.93:                                       ; preds = %land.lhs.true.88, %if.else.85
  %64 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst77, align 8
  %65 = load i64, i64* %__t79, align 8
  %call94 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %64, i64 %65) #9
  store i32 %call94, i32* %__r82, align 4
  br label %if.end.95

if.end.95:                                        ; preds = %if.else.93, %if.then.92
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %if.then.84
  %66 = load i32, i32* %__r82, align 4
  store i32 %66, i32* %tmp97
  %67 = load i32, i32* %tmp97
  %tobool98 = icmp ne i32 %67, 0
  br i1 %tobool98, label %if.then.99, label %if.else.100

if.then.99:                                       ; preds = %if.end.96
  br label %if.end.101

if.else.100:                                      ; preds = %if.end.96
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), i32 306, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_text_style_editor_constructed, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i32 0, i32 0)) #10
  unreachable

if.end.101:                                       ; preds = %if.then.99
  br label %do.end.102

do.end.102:                                       ; preds = %if.end.101
  %68 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %gimp103 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %68, i32 0, i32 1
  %69 = load %struct._Gimp*, %struct._Gimp** %gimp103, align 8
  %call104 = call %struct._GimpContext* @gimp_context_new(%struct._Gimp* %69, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0), %struct._GimpContext* null)
  %70 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %context = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %70, i32 0, i32 2
  store %struct._GimpContext* %call104, %struct._GimpContext** %context, align 8
  %71 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %context105 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %71, i32 0, i32 2
  %72 = load %struct._GimpContext*, %struct._GimpContext** %context105, align 8
  %73 = bitcast %struct._GimpContext* %72 to i8*
  %74 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %75 = bitcast %struct._GimpTextStyleEditor* %74 to i8*
  %call106 = call i64 @g_signal_connect_data(i8* %73, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContext*, %struct._GimpFont*, %struct._GimpTextStyleEditor*)* @gimp_text_style_editor_font_changed to void ()*), i8* %75, void (i8*, %struct._GClosure*)* null, i32 0)
  %76 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %size_entry = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %76, i32 0, i32 11
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %size_entry, align 8
  %78 = bitcast %struct._GtkWidget* %77 to %struct._GTypeInstance*
  %call107 = call i64 @gimp_size_entry_get_type() #8
  %call108 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %78, i64 %call107)
  %79 = bitcast %struct._GTypeInstance* %call108 to %struct._GimpSizeEntry*
  %80 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %resolution_y = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %80, i32 0, i32 7
  %81 = load double, double* %resolution_y, align 8
  call void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry* %79, i32 0, double %81, i32 1)
  %82 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %color_button = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %82, i32 0, i32 12
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %color_button, align 8
  %84 = bitcast %struct._GtkWidget* %83 to %struct._GTypeInstance*
  %call109 = call i64 @gimp_color_panel_get_type() #8
  %call110 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %84, i64 %call109)
  %85 = bitcast %struct._GTypeInstance* %call110 to %struct._GimpColorPanel*
  %86 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %gimp111 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %86, i32 0, i32 1
  %87 = load %struct._Gimp*, %struct._Gimp** %gimp111, align 8
  %call112 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %87)
  call void @gimp_color_panel_set_context(%struct._GimpColorPanel* %85, %struct._GimpContext* %call112)
  %88 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %font_entry = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %88, i32 0, i32 10
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %font_entry, align 8
  %90 = bitcast %struct._GtkWidget* %89 to %struct._GTypeInstance*
  %call113 = call i64 @gimp_container_view_interface_get_type() #8
  %call114 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %90, i64 %call113)
  %91 = bitcast %struct._GTypeInstance* %call114 to %struct._GimpContainerView*
  %92 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %fonts115 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %92, i32 0, i32 5
  %93 = load %struct._GimpContainer*, %struct._GimpContainer** %fonts115, align 8
  call void @gimp_container_view_set_container(%struct._GimpContainerView* %91, %struct._GimpContainer* %93)
  %94 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %font_entry116 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %94, i32 0, i32 10
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %font_entry116, align 8
  %96 = bitcast %struct._GtkWidget* %95 to %struct._GTypeInstance*
  %call117 = call i64 @gimp_container_view_interface_get_type() #8
  %call118 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %96, i64 %call117)
  %97 = bitcast %struct._GTypeInstance* %call118 to %struct._GimpContainerView*
  %98 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %context119 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %98, i32 0, i32 2
  %99 = load %struct._GimpContext*, %struct._GimpContext** %context119, align 8
  call void @gimp_container_view_set_context(%struct._GimpContainerView* %97, %struct._GimpContext* %99)
  %100 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %101 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %buffer120 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %101, i32 0, i32 4
  %102 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer120, align 8
  %bold_tag = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %102, i32 0, i32 1
  %103 = load %struct._GtkTextTag*, %struct._GtkTextTag** %bold_tag, align 8
  %call121 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0)) #7
  %call122 = call %struct._GtkWidget* @gimp_text_style_editor_create_toggle(%struct._GimpTextStyleEditor* %100, %struct._GtkTextTag* %103, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i8* %call121)
  %104 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %105 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %buffer123 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %105, i32 0, i32 4
  %106 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer123, align 8
  %italic_tag = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %106, i32 0, i32 2
  %107 = load %struct._GtkTextTag*, %struct._GtkTextTag** %italic_tag, align 8
  %call124 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0)) #7
  %call125 = call %struct._GtkWidget* @gimp_text_style_editor_create_toggle(%struct._GimpTextStyleEditor* %104, %struct._GtkTextTag* %107, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), i8* %call124)
  %108 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %109 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %buffer126 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %109, i32 0, i32 4
  %110 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer126, align 8
  %underline_tag = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %110, i32 0, i32 3
  %111 = load %struct._GtkTextTag*, %struct._GtkTextTag** %underline_tag, align 8
  %call127 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0)) #7
  %call128 = call %struct._GtkWidget* @gimp_text_style_editor_create_toggle(%struct._GimpTextStyleEditor* %108, %struct._GtkTextTag* %111, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i32 0, i32 0), i8* %call127)
  %112 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %113 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %buffer129 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %113, i32 0, i32 4
  %114 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer129, align 8
  %strikethrough_tag = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %114, i32 0, i32 4
  %115 = load %struct._GtkTextTag*, %struct._GtkTextTag** %strikethrough_tag, align 8
  %call130 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0)) #7
  %call131 = call %struct._GtkWidget* @gimp_text_style_editor_create_toggle(%struct._GimpTextStyleEditor* %112, %struct._GtkTextTag* %115, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i32 0, i32 0), i8* %call130)
  %116 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %text132 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %116, i32 0, i32 3
  %117 = load %struct._GimpText*, %struct._GimpText** %text132, align 8
  %118 = bitcast %struct._GimpText* %117 to i8*
  %119 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %120 = bitcast %struct._GimpTextStyleEditor* %119 to i8*
  %call133 = call i64 @g_signal_connect_data(i8* %118, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i32 0, i32 0), void ()* bitcast (void (%struct._GimpTextStyleEditor*)* @gimp_text_style_editor_update to void ()*), i8* %120, void (i8*, %struct._GClosure*)* null, i32 2)
  %121 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %text134 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %121, i32 0, i32 3
  %122 = load %struct._GimpText*, %struct._GimpText** %text134, align 8
  %123 = bitcast %struct._GimpText* %122 to i8*
  %124 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %125 = bitcast %struct._GimpTextStyleEditor* %124 to i8*
  %call135 = call i64 @g_signal_connect_data(i8* %123, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i32 0, i32 0), void ()* bitcast (void (%struct._GimpTextStyleEditor*)* @gimp_text_style_editor_update to void ()*), i8* %125, void (i8*, %struct._GClosure*)* null, i32 2)
  %126 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %text136 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %126, i32 0, i32 3
  %127 = load %struct._GimpText*, %struct._GimpText** %text136, align 8
  %128 = bitcast %struct._GimpText* %127 to i8*
  %129 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %130 = bitcast %struct._GimpTextStyleEditor* %129 to i8*
  %call137 = call i64 @g_signal_connect_data(i8* %128, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.33, i32 0, i32 0), void ()* bitcast (void (%struct._GimpTextStyleEditor*)* @gimp_text_style_editor_update to void ()*), i8* %130, void (i8*, %struct._GClosure*)* null, i32 2)
  %131 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %text138 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %131, i32 0, i32 3
  %132 = load %struct._GimpText*, %struct._GimpText** %text138, align 8
  %133 = bitcast %struct._GimpText* %132 to i8*
  %134 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %135 = bitcast %struct._GimpTextStyleEditor* %134 to i8*
  %call139 = call i64 @g_signal_connect_data(i8* %133, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i32 0, i32 0), void ()* bitcast (void (%struct._GimpTextStyleEditor*)* @gimp_text_style_editor_update to void ()*), i8* %135, void (i8*, %struct._GClosure*)* null, i32 2)
  %136 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %buffer140 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %136, i32 0, i32 4
  %137 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer140, align 8
  %138 = bitcast %struct._GimpTextBuffer* %137 to i8*
  %139 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %140 = bitcast %struct._GimpTextStyleEditor* %139 to i8*
  %call141 = call i64 @g_signal_connect_data(i8* %138, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), void ()* bitcast (void (%struct._GimpTextStyleEditor*)* @gimp_text_style_editor_update to void ()*), i8* %140, void (i8*, %struct._GClosure*)* null, i32 3)
  %141 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %buffer142 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %141, i32 0, i32 4
  %142 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer142, align 8
  %143 = bitcast %struct._GimpTextBuffer* %142 to i8*
  %144 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %145 = bitcast %struct._GimpTextStyleEditor* %144 to i8*
  %call143 = call i64 @g_signal_connect_data(i8* %143, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), void ()* bitcast (void (%struct._GimpTextStyleEditor*)* @gimp_text_style_editor_update to void ()*), i8* %145, void (i8*, %struct._GClosure*)* null, i32 3)
  %146 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %buffer144 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %146, i32 0, i32 4
  %147 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer144, align 8
  %148 = bitcast %struct._GimpTextBuffer* %147 to i8*
  %149 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %150 = bitcast %struct._GimpTextStyleEditor* %149 to i8*
  %call145 = call i64 @g_signal_connect_data(i8* %148, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GimpTextStyleEditor*)* @gimp_text_style_editor_update to void ()*), i8* %150, void (i8*, %struct._GClosure*)* null, i32 3)
  %151 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %buffer146 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %151, i32 0, i32 4
  %152 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer146, align 8
  %153 = bitcast %struct._GimpTextBuffer* %152 to i8*
  %154 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %155 = bitcast %struct._GimpTextStyleEditor* %154 to i8*
  %call147 = call i64 @g_signal_connect_data(i8* %153, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0), void ()* bitcast (void (%struct._GimpTextStyleEditor*)* @gimp_text_style_editor_update to void ()*), i8* %155, void (i8*, %struct._GClosure*)* null, i32 3)
  %156 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  call void @gimp_text_style_editor_update(%struct._GimpTextStyleEditor* %156)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_style_editor_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %editor = alloca %struct._GimpTextStyleEditor*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_text_style_editor_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTextStyleEditor*
  store %struct._GimpTextStyleEditor* %2, %struct._GimpTextStyleEditor** %editor, align 8
  %3 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %text = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %3, i32 0, i32 3
  %4 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %tobool = icmp ne %struct._GimpText* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %text2 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %5, i32 0, i32 3
  %6 = load %struct._GimpText*, %struct._GimpText** %text2, align 8
  %7 = bitcast %struct._GimpText* %6 to i8*
  %8 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %9 = bitcast %struct._GimpTextStyleEditor* %8 to i8*
  %call3 = call i32 @g_signal_handlers_disconnect_matched(i8* %7, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpTextStyleEditor*)* @gimp_text_style_editor_update to i8*), i8* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %buffer = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %10, i32 0, i32 4
  %11 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer, align 8
  %tobool4 = icmp ne %struct._GimpTextBuffer* %11, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %12 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %buffer6 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %12, i32 0, i32 4
  %13 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer6, align 8
  %14 = bitcast %struct._GimpTextBuffer* %13 to i8*
  %15 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %16 = bitcast %struct._GimpTextStyleEditor* %15 to i8*
  %call7 = call i32 @g_signal_handlers_disconnect_matched(i8* %14, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpTextStyleEditor*)* @gimp_text_style_editor_update to i8*), i8* %16)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %17 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %update_idle_id = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %17, i32 0, i32 19
  %18 = load i32, i32* %update_idle_id, align 4
  %tobool9 = icmp ne i32 %18, 0
  br i1 %tobool9, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %if.end.8
  %19 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %update_idle_id11 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %19, i32 0, i32 19
  %20 = load i32, i32* %update_idle_id11, align 4
  %call12 = call i32 @g_source_remove(i32 %20)
  %21 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %update_idle_id13 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %21, i32 0, i32 19
  store i32 0, i32* %update_idle_id13, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.10, %if.end.8
  %22 = load i8*, i8** @gimp_text_style_editor_parent_class, align 8
  %23 = bitcast i8* %22 to %struct._GTypeClass*
  %call15 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %23, i64 80)
  %24 = bitcast %struct._GTypeClass* %call15 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %24, i32 0, i32 5
  %25 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %26 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %25(%struct._GObject* %26)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_style_editor_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %editor = alloca %struct._GimpTextStyleEditor*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_text_style_editor_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTextStyleEditor*
  store %struct._GimpTextStyleEditor* %2, %struct._GimpTextStyleEditor** %editor, align 8
  %3 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %context = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %3, i32 0, i32 2
  %4 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %context2 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %5, i32 0, i32 2
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context2, align 8
  %7 = bitcast %struct._GimpContext* %6 to i8*
  call void @g_object_unref(i8* %7)
  %8 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %context3 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %8, i32 0, i32 2
  store %struct._GimpContext* null, %struct._GimpContext** %context3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %text = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %9, i32 0, i32 3
  %10 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %tobool4 = icmp ne %struct._GimpText* %10, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %11 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %text6 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %11, i32 0, i32 3
  %12 = load %struct._GimpText*, %struct._GimpText** %text6, align 8
  %13 = bitcast %struct._GimpText* %12 to i8*
  call void @g_object_unref(i8* %13)
  %14 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %text7 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %14, i32 0, i32 3
  store %struct._GimpText* null, %struct._GimpText** %text7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %15 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %buffer = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %15, i32 0, i32 4
  %16 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer, align 8
  %tobool9 = icmp ne %struct._GimpTextBuffer* %16, null
  br i1 %tobool9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %if.end.8
  %17 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %buffer11 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %17, i32 0, i32 4
  %18 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer11, align 8
  %19 = bitcast %struct._GimpTextBuffer* %18 to i8*
  call void @g_object_unref(i8* %19)
  %20 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %buffer12 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %20, i32 0, i32 4
  store %struct._GimpTextBuffer* null, %struct._GimpTextBuffer** %buffer12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %if.end.8
  %21 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %fonts = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %21, i32 0, i32 5
  %22 = load %struct._GimpContainer*, %struct._GimpContainer** %fonts, align 8
  %tobool14 = icmp ne %struct._GimpContainer* %22, null
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.end.13
  %23 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %fonts16 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %23, i32 0, i32 5
  %24 = load %struct._GimpContainer*, %struct._GimpContainer** %fonts16, align 8
  %25 = bitcast %struct._GimpContainer* %24 to i8*
  call void @g_object_unref(i8* %25)
  %26 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %fonts17 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %26, i32 0, i32 5
  store %struct._GimpContainer* null, %struct._GimpContainer** %fonts17, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %if.end.13
  %27 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %toggles = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %27, i32 0, i32 18
  %28 = load %struct._GList*, %struct._GList** %toggles, align 8
  %tobool19 = icmp ne %struct._GList* %28, null
  br i1 %tobool19, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %if.end.18
  %29 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %toggles21 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %29, i32 0, i32 18
  %30 = load %struct._GList*, %struct._GList** %toggles21, align 8
  call void @g_list_free(%struct._GList* %30)
  %31 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %toggles22 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %31, i32 0, i32 18
  store %struct._GList* null, %struct._GList** %toggles22, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %if.end.18
  %32 = load i8*, i8** @gimp_text_style_editor_parent_class, align 8
  %33 = bitcast i8* %32 to %struct._GTypeClass*
  %call24 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %33, i64 80)
  %34 = bitcast %struct._GTypeClass* %call24 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %34, i32 0, i32 6
  %35 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %36 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %35(%struct._GObject* %36)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_style_editor_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %editor = alloca %struct._GimpTextStyleEditor*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_text_style_editor_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTextStyleEditor*
  store %struct._GimpTextStyleEditor* %2, %struct._GimpTextStyleEditor** %editor, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.5
    i32 4, label %sw.bb.7
    i32 5, label %sw.bb.9
    i32 6, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_get_object(%struct._GValue* %4)
  %5 = bitcast i8* %call2 to %struct._Gimp*
  %6 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %gimp = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %6, i32 0, i32 1
  store %struct._Gimp* %5, %struct._Gimp** %gimp, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i8* @g_value_dup_object(%struct._GValue* %7)
  %8 = bitcast i8* %call4 to %struct._GimpText*
  %9 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %text = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %9, i32 0, i32 3
  store %struct._GimpText* %8, %struct._GimpText** %text, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call i8* @g_value_dup_object(%struct._GValue* %10)
  %11 = bitcast i8* %call6 to %struct._GimpTextBuffer*
  %12 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %buffer = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %12, i32 0, i32 4
  store %struct._GimpTextBuffer* %11, %struct._GimpTextBuffer** %buffer, align 8
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %13 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call8 = call i8* @g_value_dup_object(%struct._GValue* %13)
  %14 = bitcast i8* %call8 to %struct._GimpContainer*
  %15 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %fonts = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %15, i32 0, i32 5
  store %struct._GimpContainer* %14, %struct._GimpContainer** %fonts, align 8
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call10 = call double @g_value_get_double(%struct._GValue* %16)
  %17 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %resolution_x = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %17, i32 0, i32 6
  store double %call10, double* %resolution_x, align 8
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %18 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call12 = call double @g_value_get_double(%struct._GValue* %18)
  %19 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %resolution_y = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %19, i32 0, i32 7
  store double %call12, double* %resolution_y, align 8
  %20 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %size_entry = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %20, i32 0, i32 11
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %size_entry, align 8
  %tobool = icmp ne %struct._GtkWidget* %21, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.11
  %22 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %size_entry13 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %22, i32 0, i32 11
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %size_entry13, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_size_entry_get_type() #8
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call14)
  %25 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpSizeEntry*
  %26 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %resolution_y16 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %26, i32 0, i32 7
  %27 = load double, double* %resolution_y16, align 8
  call void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry* %25, i32 0, double %27, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.11
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %28 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %28, %struct._GObject** %_glib__object, align 8
  %29 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %29, %struct._GParamSpec** %_glib__pspec, align 8
  %30 = load i32, i32* %property_id.addr, align 4
  store i32 %30, i32* %_glib__property_id, align 4
  %31 = load i32, i32* %_glib__property_id, align 4
  %32 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %32, i32 0, i32 1
  %33 = load i8*, i8** %name, align 8
  %34 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %35 = bitcast %struct._GParamSpec* %34 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %35, i32 0, i32 0
  %36 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %36, i32 0, i32 0
  %37 = load i64, i64* %g_type, align 8
  %call17 = call i8* @g_type_name(i64 %37)
  %38 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %39 = bitcast %struct._GObject* %38 to %struct._GTypeInstance*
  %g_class18 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %39, i32 0, i32 0
  %40 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class18, align 8
  %g_type19 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %40, i32 0, i32 0
  %41 = load i64, i64* %g_type19, align 8
  %call20 = call i8* @g_type_name(i64 %41)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), i32 471, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0), i32 %31, i8* %33, i8* %call17, i8* %call20)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.end, %sw.bb.9, %sw.bb.7, %sw.bb.5, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_style_editor_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %editor = alloca %struct._GimpTextStyleEditor*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_text_style_editor_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTextStyleEditor*
  store %struct._GimpTextStyleEditor* %2, %struct._GimpTextStyleEditor** %editor, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.4
    i32 5, label %sw.bb.5
    i32 6, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %gimp = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %5, i32 0, i32 1
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %7 = bitcast %struct._Gimp* %6 to i8*
  call void @g_value_set_object(%struct._GValue* %4, i8* %7)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %9 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %text = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %9, i32 0, i32 3
  %10 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %11 = bitcast %struct._GimpText* %10 to i8*
  call void @g_value_set_object(%struct._GValue* %8, i8* %11)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %12 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %13 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %buffer = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %13, i32 0, i32 4
  %14 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer, align 8
  %15 = bitcast %struct._GimpTextBuffer* %14 to i8*
  call void @g_value_set_object(%struct._GValue* %12, i8* %15)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %17 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %fonts = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %17, i32 0, i32 5
  %18 = load %struct._GimpContainer*, %struct._GimpContainer** %fonts, align 8
  %19 = bitcast %struct._GimpContainer* %18 to i8*
  call void @g_value_set_object(%struct._GValue* %16, i8* %19)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %20 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %21 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %resolution_x = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %21, i32 0, i32 6
  %22 = load double, double* %resolution_x, align 8
  call void @g_value_set_double(%struct._GValue* %20, double %22)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %23 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %24 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor, align 8
  %resolution_y = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %24, i32 0, i32 7
  %25 = load double, double* %resolution_y, align 8
  call void @g_value_set_double(%struct._GValue* %23, double %25)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %26 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %26, %struct._GObject** %_glib__object, align 8
  %27 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %27, %struct._GParamSpec** %_glib__pspec, align 8
  %28 = load i32, i32* %property_id.addr, align 4
  store i32 %28, i32* %_glib__property_id, align 4
  %29 = load i32, i32* %_glib__property_id, align 4
  %30 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %30, i32 0, i32 1
  %31 = load i8*, i8** %name, align 8
  %32 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %33 = bitcast %struct._GParamSpec* %32 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %33, i32 0, i32 0
  %34 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %34, i32 0, i32 0
  %35 = load i64, i64* %g_type, align 8
  %call7 = call i8* @g_type_name(i64 %35)
  %36 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %37 = bitcast %struct._GObject* %36 to %struct._GTypeInstance*
  %g_class8 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %37, i32 0, i32 0
  %38 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class8, align 8
  %g_type9 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %38, i32 0, i32 0
  %39 = load i64, i64* %g_type9, align 8
  %call10 = call i8* @g_type_name(i64 %39)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), i32 506, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0), i32 %29, i8* %31, i8* %call7, i8* %call10)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_font_list_get_type() #2

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #5

declare %struct._GimpContext* @gimp_context_new(%struct._Gimp*, i8*, %struct._GimpContext*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_style_editor_font_changed(%struct._GimpContext* %context, %struct._GimpFont* %font, %struct._GimpTextStyleEditor* %editor) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %font.addr = alloca %struct._GimpFont*, align 8
  %editor.addr = alloca %struct._GimpTextStyleEditor*, align 8
  %buffer = alloca %struct._GtkTextBuffer*, align 8
  %insert_tags = alloca %struct._GList*, align 8
  %remove_tags = alloca %struct._GList*, align 8
  %start = alloca %struct._GtkTextIter, align 8
  %end = alloca %struct._GtkTextIter, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpFont* %font, %struct._GimpFont** %font.addr, align 8
  store %struct._GimpTextStyleEditor* %editor, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %0 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %buffer1 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %0, i32 0, i32 4
  %1 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer1, align 8
  %2 = bitcast %struct._GimpTextBuffer* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_text_buffer_get_type() #8
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkTextBuffer*
  store %struct._GtkTextBuffer* %3, %struct._GtkTextBuffer** %buffer, align 8
  %4 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %call3 = call i32 @gtk_text_buffer_get_has_selection(%struct._GtkTextBuffer* %4)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %call4 = call i32 @gtk_text_buffer_get_selection_bounds(%struct._GtkTextBuffer* %5, %struct._GtkTextIter* %start, %struct._GtkTextIter* %end)
  %6 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %buffer5 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %6, i32 0, i32 4
  %7 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer5, align 8
  %8 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call6 = call i8* @gimp_context_get_font_name(%struct._GimpContext* %8)
  call void @gimp_text_buffer_set_font(%struct._GimpTextBuffer* %7, %struct._GtkTextIter* %start, %struct._GtkTextIter* %end, i8* %call6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %call7 = call %struct._GList* @gimp_text_style_editor_list_tags(%struct._GimpTextStyleEditor* %9, %struct._GList** %remove_tags)
  store %struct._GList* %call7, %struct._GList** %insert_tags, align 8
  %10 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %buffer8 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %10, i32 0, i32 4
  %11 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer8, align 8
  %12 = load %struct._GList*, %struct._GList** %insert_tags, align 8
  %13 = load %struct._GList*, %struct._GList** %remove_tags, align 8
  call void @gimp_text_buffer_set_insert_tags(%struct._GimpTextBuffer* %11, %struct._GList* %12, %struct._GList* %13)
  ret void
}

declare void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry*, i32, double, i32) #1

declare void @gimp_color_panel_set_context(%struct._GimpColorPanel*, %struct._GimpContext*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_panel_get_type() #2

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #1

declare void @gimp_container_view_set_container(%struct._GimpContainerView*, %struct._GimpContainer*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_view_interface_get_type() #2

declare void @gimp_container_view_set_context(%struct._GimpContainerView*, %struct._GimpContext*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @gimp_text_style_editor_create_toggle(%struct._GimpTextStyleEditor* %editor, %struct._GtkTextTag* %tag, i8* %stock_id, i8* %tooltip) #3 {
entry:
  %editor.addr = alloca %struct._GimpTextStyleEditor*, align 8
  %tag.addr = alloca %struct._GtkTextTag*, align 8
  %stock_id.addr = alloca i8*, align 8
  %tooltip.addr = alloca i8*, align 8
  %toggle = alloca %struct._GtkWidget*, align 8
  %image = alloca %struct._GtkWidget*, align 8
  store %struct._GimpTextStyleEditor* %editor, %struct._GimpTextStyleEditor** %editor.addr, align 8
  store %struct._GtkTextTag* %tag, %struct._GtkTextTag** %tag.addr, align 8
  store i8* %stock_id, i8** %stock_id.addr, align 8
  store i8* %tooltip, i8** %tooltip.addr, align 8
  %call = call %struct._GtkWidget* @gtk_toggle_button_new()
  store %struct._GtkWidget* %call, %struct._GtkWidget** %toggle, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_set_can_focus(%struct._GtkWidget* %0, i32 0)
  %1 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %lower_hbox = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %1, i32 0, i32 9
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %lower_hbox, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_box_get_type() #8
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call1)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkBox*
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %4, %struct._GtkWidget* %5, i32 0, i32 0, i32 0)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %6)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %8 = load i8*, i8** %tooltip.addr, align 8
  call void @gimp_help_set_help_data(%struct._GtkWidget* %7, i8* %8, i8* null)
  %9 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %toggles = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %9, i32 0, i32 18
  %10 = load %struct._GList*, %struct._GList** %toggles, align 8
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %12 = bitcast %struct._GtkWidget* %11 to i8*
  %call3 = call %struct._GList* @g_list_append(%struct._GList* %10, i8* %12)
  %13 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %toggles4 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %13, i32 0, i32 18
  store %struct._GList* %call3, %struct._GList** %toggles4, align 8
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 80)
  %16 = bitcast %struct._GTypeInstance* %call5 to %struct._GObject*
  %17 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag.addr, align 8
  %18 = bitcast %struct._GtkTextTag* %17 to i8*
  call void @g_object_set_data(%struct._GObject* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* %18)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %20 = bitcast %struct._GtkWidget* %19 to i8*
  %21 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %22 = bitcast %struct._GimpTextStyleEditor* %21 to i8*
  %call6 = call i64 @g_signal_connect_data(i8* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), void ()* bitcast (void (%struct._GtkToggleButton*, %struct._GimpTextStyleEditor*)* @gimp_text_style_editor_tag_toggled to void ()*), i8* %22, void (i8*, %struct._GClosure*)* null, i32 0)
  %23 = load i8*, i8** %stock_id.addr, align 8
  %call7 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* %23, i32 1)
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %image, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_container_get_type() #8
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call8)
  %26 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkContainer*
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_container_add(%struct._GtkContainer* %26, %struct._GtkWidget* %27)
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %28)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  ret %struct._GtkWidget* %29
}

; Function Attrs: nounwind
declare i8* @gettext(i8*) #6

; Function Attrs: nounwind uwtable
define internal void @gimp_text_style_editor_update(%struct._GimpTextStyleEditor* %editor) #3 {
entry:
  %editor.addr = alloca %struct._GimpTextStyleEditor*, align 8
  store %struct._GimpTextStyleEditor* %editor, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %0 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %update_idle_id = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %0, i32 0, i32 19
  %1 = load i32, i32* %update_idle_id, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %update_idle_id1 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %2, i32 0, i32 19
  %3 = load i32, i32* %update_idle_id1, align 4
  %call = call i32 @g_source_remove(i32 %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %5 = bitcast %struct._GimpTextStyleEditor* %4 to i8*
  %call2 = call i32 @gdk_threads_add_idle(i32 (i8*)* bitcast (i32 (%struct._GimpTextStyleEditor*)* @gimp_text_style_editor_update_idle to i32 (i8*)*), i8* %5)
  %6 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %update_idle_id3 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %6, i32 0, i32 19
  store i32 %call2, i32* %update_idle_id3, align 4
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gtk_text_buffer_get_type() #2

declare i32 @gtk_text_buffer_get_has_selection(%struct._GtkTextBuffer*) #1

declare i32 @gtk_text_buffer_get_selection_bounds(%struct._GtkTextBuffer*, %struct._GtkTextIter*, %struct._GtkTextIter*) #1

declare void @gimp_text_buffer_set_font(%struct._GimpTextBuffer*, %struct._GtkTextIter*, %struct._GtkTextIter*, i8*) #1

declare void @gimp_text_buffer_set_insert_tags(%struct._GimpTextBuffer*, %struct._GList*, %struct._GList*) #1

declare %struct._GtkWidget* @gtk_toggle_button_new() #1

declare void @gtk_widget_set_can_focus(%struct._GtkWidget*, i32) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #1

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_style_editor_tag_toggled(%struct._GtkToggleButton* %toggle, %struct._GimpTextStyleEditor* %editor) #3 {
entry:
  %toggle.addr = alloca %struct._GtkToggleButton*, align 8
  %editor.addr = alloca %struct._GimpTextStyleEditor*, align 8
  %buffer = alloca %struct._GtkTextBuffer*, align 8
  %tag = alloca %struct._GtkTextTag*, align 8
  %insert_tags = alloca %struct._GList*, align 8
  %remove_tags = alloca %struct._GList*, align 8
  %start = alloca %struct._GtkTextIter, align 8
  %end = alloca %struct._GtkTextIter, align 8
  store %struct._GtkToggleButton* %toggle, %struct._GtkToggleButton** %toggle.addr, align 8
  store %struct._GimpTextStyleEditor* %editor, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %0 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %buffer1 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %0, i32 0, i32 4
  %1 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer1, align 8
  %2 = bitcast %struct._GimpTextBuffer* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_text_buffer_get_type() #8
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkTextBuffer*
  store %struct._GtkTextBuffer* %3, %struct._GtkTextBuffer** %buffer, align 8
  %4 = load %struct._GtkToggleButton*, %struct._GtkToggleButton** %toggle.addr, align 8
  %5 = bitcast %struct._GtkToggleButton* %4 to %struct._GTypeInstance*
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 80)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GObject*
  %call4 = call i8* @g_object_get_data(%struct._GObject* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0))
  %7 = bitcast i8* %call4 to %struct._GtkTextTag*
  store %struct._GtkTextTag* %7, %struct._GtkTextTag** %tag, align 8
  %8 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %call5 = call i32 @gtk_text_buffer_get_has_selection(%struct._GtkTextBuffer* %8)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %9 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %call6 = call i32 @gtk_text_buffer_get_selection_bounds(%struct._GtkTextBuffer* %9, %struct._GtkTextIter* %start, %struct._GtkTextIter* %end)
  %10 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  call void @gtk_text_buffer_begin_user_action(%struct._GtkTextBuffer* %10)
  %11 = load %struct._GtkToggleButton*, %struct._GtkToggleButton** %toggle.addr, align 8
  %call7 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %11)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then
  %12 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %13 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag, align 8
  call void @gtk_text_buffer_apply_tag(%struct._GtkTextBuffer* %12, %struct._GtkTextTag* %13, %struct._GtkTextIter* %start, %struct._GtkTextIter* %end)
  br label %if.end

if.else:                                          ; preds = %if.then
  %14 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %15 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag, align 8
  call void @gtk_text_buffer_remove_tag(%struct._GtkTextBuffer* %14, %struct._GtkTextTag* %15, %struct._GtkTextIter* %start, %struct._GtkTextIter* %end)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.9
  %16 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  call void @gtk_text_buffer_end_user_action(%struct._GtkTextBuffer* %16)
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  %17 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %call11 = call %struct._GList* @gimp_text_style_editor_list_tags(%struct._GimpTextStyleEditor* %17, %struct._GList** %remove_tags)
  store %struct._GList* %call11, %struct._GList** %insert_tags, align 8
  %18 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %buffer12 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %18, i32 0, i32 4
  %19 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer12, align 8
  %20 = load %struct._GList*, %struct._GList** %insert_tags, align 8
  %21 = load %struct._GList*, %struct._GList** %remove_tags, align 8
  call void @gimp_text_buffer_set_insert_tags(%struct._GimpTextBuffer* %19, %struct._GList* %20, %struct._GList* %21)
  ret void
}

declare %struct._GtkWidget* @gtk_image_new_from_stock(i8*, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare void @gtk_text_buffer_begin_user_action(%struct._GtkTextBuffer*) #1

declare void @gtk_text_buffer_apply_tag(%struct._GtkTextBuffer*, %struct._GtkTextTag*, %struct._GtkTextIter*, %struct._GtkTextIter*) #1

declare void @gtk_text_buffer_remove_tag(%struct._GtkTextBuffer*, %struct._GtkTextTag*, %struct._GtkTextIter*, %struct._GtkTextIter*) #1

declare void @gtk_text_buffer_end_user_action(%struct._GtkTextBuffer*) #1

declare i32 @g_source_remove(i32) #1

declare i32 @gdk_threads_add_idle(i32 (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_text_style_editor_update_idle(%struct._GimpTextStyleEditor* %editor) #3 {
entry:
  %editor.addr = alloca %struct._GimpTextStyleEditor*, align 8
  %buffer = alloca %struct._GtkTextBuffer*, align 8
  %start = alloca %struct._GtkTextIter, align 8
  %end = alloca %struct._GtkTextIter, align 8
  %iter = alloca %struct._GtkTextIter, align 8
  %list = alloca %struct._GList*, align 8
  %any_toggle_active = alloca i32, align 4
  %font_differs = alloca i32, align 4
  %color_differs = alloca i32, align 4
  %size_differs = alloca i32, align 4
  %baseline_differs = alloca i32, align 4
  %kerning_differs = alloca i32, align 4
  %font_tag = alloca %struct._GtkTextTag*, align 8
  %color_tag = alloca %struct._GtkTextTag*, align 8
  %size_tag = alloca %struct._GtkTextTag*, align 8
  %baseline_tag = alloca %struct._GtkTextTag*, align 8
  %kerning_tag = alloca %struct._GtkTextTag*, align 8
  %toggle = alloca %struct._GtkToggleButton*, align 8
  %toggle32 = alloca %struct._GtkToggleButton*, align 8
  %tag = alloca %struct._GtkTextTag*, align 8
  %tag51 = alloca %struct._GtkTextTag*, align 8
  %tag59 = alloca %struct._GtkTextTag*, align 8
  %tag68 = alloca %struct._GtkTextTag*, align 8
  %tag77 = alloca %struct._GtkTextTag*, align 8
  %tag86 = alloca %struct._GtkTextTag*, align 8
  %cursor = alloca %struct._GtkTextIter, align 8
  %tags = alloca %struct._GSList*, align 8
  %tags_on = alloca %struct._GSList*, align 8
  %tags_off = alloca %struct._GSList*, align 8
  %list145 = alloca %struct._GList*, align 8
  %tag154 = alloca %struct._GtkTextTag*, align 8
  %tag180 = alloca %struct._GtkTextTag*, align 8
  %tag207 = alloca %struct._GtkTextTag*, align 8
  %tag234 = alloca %struct._GtkTextTag*, align 8
  %toggle261 = alloca %struct._GtkToggleButton*, align 8
  %tag263 = alloca %struct._GtkTextTag*, align 8
  %tag281 = alloca %struct._GtkTextTag*, align 8
  store %struct._GimpTextStyleEditor* %editor, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %0 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %buffer1 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %0, i32 0, i32 4
  %1 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer1, align 8
  %2 = bitcast %struct._GimpTextBuffer* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_text_buffer_get_type() #8
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkTextBuffer*
  store %struct._GtkTextBuffer* %3, %struct._GtkTextBuffer** %buffer, align 8
  %4 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %update_idle_id = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %4, i32 0, i32 19
  %5 = load i32, i32* %update_idle_id, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %update_idle_id3 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %6, i32 0, i32 19
  %7 = load i32, i32* %update_idle_id3, align 4
  %call4 = call i32 @g_source_remove(i32 %7)
  %8 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %update_idle_id5 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %8, i32 0, i32 19
  store i32 0, i32* %update_idle_id5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %call6 = call i32 @gtk_text_buffer_get_has_selection(%struct._GtkTextBuffer* %9)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.else.144

if.then.8:                                        ; preds = %if.end
  store i32 1, i32* %any_toggle_active, align 4
  store i32 0, i32* %font_differs, align 4
  store i32 0, i32* %color_differs, align 4
  store i32 0, i32* %size_differs, align 4
  store i32 0, i32* %baseline_differs, align 4
  store i32 0, i32* %kerning_differs, align 4
  store %struct._GtkTextTag* null, %struct._GtkTextTag** %font_tag, align 8
  store %struct._GtkTextTag* null, %struct._GtkTextTag** %color_tag, align 8
  store %struct._GtkTextTag* null, %struct._GtkTextTag** %size_tag, align 8
  store %struct._GtkTextTag* null, %struct._GtkTextTag** %baseline_tag, align 8
  store %struct._GtkTextTag* null, %struct._GtkTextTag** %kerning_tag, align 8
  %10 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %call9 = call i32 @gtk_text_buffer_get_selection_bounds(%struct._GtkTextBuffer* %10, %struct._GtkTextIter* %start, %struct._GtkTextIter* %end)
  call void @gtk_text_iter_order(%struct._GtkTextIter* %start, %struct._GtkTextIter* %end)
  %11 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %toggles = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %11, i32 0, i32 18
  %12 = load %struct._GList*, %struct._GList** %toggles, align 8
  store %struct._GList* %12, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.then.8
  %13 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool10 = icmp ne %struct._GList* %13, null
  br i1 %tobool10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %14, i32 0, i32 0
  %15 = load i8*, i8** %data, align 8
  %16 = bitcast i8* %15 to %struct._GtkToggleButton*
  store %struct._GtkToggleButton* %16, %struct._GtkToggleButton** %toggle, align 8
  %17 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %18 = load %struct._GtkToggleButton*, %struct._GtkToggleButton** %toggle, align 8
  call void @gimp_text_style_editor_set_toggle(%struct._GimpTextStyleEditor* %17, %struct._GtkToggleButton* %18, i32 1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool11 = icmp ne %struct._GList* %19, null
  br i1 %tobool11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %20 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %20, i32 0, i32 1
  %21 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %21, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %buffer12 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %22, i32 0, i32 4
  %23 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer12, align 8
  %call13 = call %struct._GtkTextTag* @gimp_text_buffer_get_iter_font(%struct._GimpTextBuffer* %23, %struct._GtkTextIter* %start, i8** null)
  store %struct._GtkTextTag* %call13, %struct._GtkTextTag** %font_tag, align 8
  %24 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %buffer14 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %24, i32 0, i32 4
  %25 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer14, align 8
  %call15 = call %struct._GtkTextTag* @gimp_text_buffer_get_iter_color(%struct._GimpTextBuffer* %25, %struct._GtkTextIter* %start, %struct._GimpRGB* null)
  store %struct._GtkTextTag* %call15, %struct._GtkTextTag** %color_tag, align 8
  %26 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %buffer16 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %26, i32 0, i32 4
  %27 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer16, align 8
  %call17 = call %struct._GtkTextTag* @gimp_text_buffer_get_iter_size(%struct._GimpTextBuffer* %27, %struct._GtkTextIter* %start, i32* null)
  store %struct._GtkTextTag* %call17, %struct._GtkTextTag** %size_tag, align 8
  %28 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %buffer18 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %28, i32 0, i32 4
  %29 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer18, align 8
  %call19 = call %struct._GtkTextTag* @gimp_text_buffer_get_iter_baseline(%struct._GimpTextBuffer* %29, %struct._GtkTextIter* %start, i32* null)
  store %struct._GtkTextTag* %call19, %struct._GtkTextTag** %baseline_tag, align 8
  %30 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %buffer20 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %30, i32 0, i32 4
  %31 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer20, align 8
  %call21 = call %struct._GtkTextTag* @gimp_text_buffer_get_iter_kerning(%struct._GimpTextBuffer* %31, %struct._GtkTextIter* %start, i32* null)
  store %struct._GtkTextTag* %call21, %struct._GtkTextTag** %kerning_tag, align 8
  %32 = bitcast %struct._GtkTextIter* %iter to i8*
  %33 = bitcast %struct._GtkTextIter* %start to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 80, i32 8, i1 false)
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.105, %for.end
  %call23 = call i32 @gtk_text_iter_in_range(%struct._GtkTextIter* %iter, %struct._GtkTextIter* %start, %struct._GtkTextIter* %end)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %for.body.25, label %for.end.107

for.body.25:                                      ; preds = %for.cond.22
  %34 = load i32, i32* %any_toggle_active, align 4
  %tobool26 = icmp ne i32 %34, 0
  br i1 %tobool26, label %if.then.27, label %if.end.48

if.then.27:                                       ; preds = %for.body.25
  store i32 0, i32* %any_toggle_active, align 4
  %35 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %toggles28 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %35, i32 0, i32 18
  %36 = load %struct._GList*, %struct._GList** %toggles28, align 8
  store %struct._GList* %36, %struct._GList** %list, align 8
  br label %for.cond.29

for.cond.29:                                      ; preds = %cond.end.45, %if.then.27
  %37 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool30 = icmp ne %struct._GList* %37, null
  br i1 %tobool30, label %for.body.31, label %for.end.47

for.body.31:                                      ; preds = %for.cond.29
  %38 = load %struct._GList*, %struct._GList** %list, align 8
  %data33 = getelementptr inbounds %struct._GList, %struct._GList* %38, i32 0, i32 0
  %39 = load i8*, i8** %data33, align 8
  %40 = bitcast i8* %39 to %struct._GtkToggleButton*
  store %struct._GtkToggleButton* %40, %struct._GtkToggleButton** %toggle32, align 8
  %41 = load %struct._GtkToggleButton*, %struct._GtkToggleButton** %toggle32, align 8
  %42 = bitcast %struct._GtkToggleButton* %41 to %struct._GTypeInstance*
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 80)
  %43 = bitcast %struct._GTypeInstance* %call34 to %struct._GObject*
  %call35 = call i8* @g_object_get_data(%struct._GObject* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0))
  %44 = bitcast i8* %call35 to %struct._GtkTextTag*
  store %struct._GtkTextTag* %44, %struct._GtkTextTag** %tag, align 8
  %45 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag, align 8
  %call36 = call i32 @gtk_text_iter_has_tag(%struct._GtkTextIter* %iter, %struct._GtkTextTag* %45)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.else, label %if.then.38

if.then.38:                                       ; preds = %for.body.31
  %46 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %47 = load %struct._GtkToggleButton*, %struct._GtkToggleButton** %toggle32, align 8
  call void @gimp_text_style_editor_set_toggle(%struct._GimpTextStyleEditor* %46, %struct._GtkToggleButton* %47, i32 0)
  br label %if.end.39

if.else:                                          ; preds = %for.body.31
  store i32 1, i32* %any_toggle_active, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.else, %if.then.38
  br label %for.inc.40

for.inc.40:                                       ; preds = %if.end.39
  %48 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool41 = icmp ne %struct._GList* %48, null
  br i1 %tobool41, label %cond.true.42, label %cond.false.44

cond.true.42:                                     ; preds = %for.inc.40
  %49 = load %struct._GList*, %struct._GList** %list, align 8
  %next43 = getelementptr inbounds %struct._GList, %struct._GList* %49, i32 0, i32 1
  %50 = load %struct._GList*, %struct._GList** %next43, align 8
  br label %cond.end.45

cond.false.44:                                    ; preds = %for.inc.40
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.44, %cond.true.42
  %cond46 = phi %struct._GList* [ %50, %cond.true.42 ], [ null, %cond.false.44 ]
  store %struct._GList* %cond46, %struct._GList** %list, align 8
  br label %for.cond.29

for.end.47:                                       ; preds = %for.cond.29
  br label %if.end.48

if.end.48:                                        ; preds = %for.end.47, %for.body.25
  %51 = load i32, i32* %font_differs, align 4
  %tobool49 = icmp ne i32 %51, 0
  br i1 %tobool49, label %if.end.56, label %if.then.50

if.then.50:                                       ; preds = %if.end.48
  %52 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %buffer52 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %52, i32 0, i32 4
  %53 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer52, align 8
  %call53 = call %struct._GtkTextTag* @gimp_text_buffer_get_iter_font(%struct._GimpTextBuffer* %53, %struct._GtkTextIter* %iter, i8** null)
  store %struct._GtkTextTag* %call53, %struct._GtkTextTag** %tag51, align 8
  %54 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag51, align 8
  %55 = load %struct._GtkTextTag*, %struct._GtkTextTag** %font_tag, align 8
  %cmp = icmp ne %struct._GtkTextTag* %54, %55
  br i1 %cmp, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.then.50
  store i32 1, i32* %font_differs, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %if.then.50
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.end.48
  %56 = load i32, i32* %color_differs, align 4
  %tobool57 = icmp ne i32 %56, 0
  br i1 %tobool57, label %if.end.65, label %if.then.58

if.then.58:                                       ; preds = %if.end.56
  %57 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %buffer60 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %57, i32 0, i32 4
  %58 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer60, align 8
  %call61 = call %struct._GtkTextTag* @gimp_text_buffer_get_iter_color(%struct._GimpTextBuffer* %58, %struct._GtkTextIter* %iter, %struct._GimpRGB* null)
  store %struct._GtkTextTag* %call61, %struct._GtkTextTag** %tag59, align 8
  %59 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag59, align 8
  %60 = load %struct._GtkTextTag*, %struct._GtkTextTag** %color_tag, align 8
  %cmp62 = icmp ne %struct._GtkTextTag* %59, %60
  br i1 %cmp62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.then.58
  store i32 1, i32* %color_differs, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.63, %if.then.58
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.end.56
  %61 = load i32, i32* %size_differs, align 4
  %tobool66 = icmp ne i32 %61, 0
  br i1 %tobool66, label %if.end.74, label %if.then.67

if.then.67:                                       ; preds = %if.end.65
  %62 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %buffer69 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %62, i32 0, i32 4
  %63 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer69, align 8
  %call70 = call %struct._GtkTextTag* @gimp_text_buffer_get_iter_size(%struct._GimpTextBuffer* %63, %struct._GtkTextIter* %iter, i32* null)
  store %struct._GtkTextTag* %call70, %struct._GtkTextTag** %tag68, align 8
  %64 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag68, align 8
  %65 = load %struct._GtkTextTag*, %struct._GtkTextTag** %size_tag, align 8
  %cmp71 = icmp ne %struct._GtkTextTag* %64, %65
  br i1 %cmp71, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.then.67
  store i32 1, i32* %size_differs, align 4
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.72, %if.then.67
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.end.65
  %66 = load i32, i32* %baseline_differs, align 4
  %tobool75 = icmp ne i32 %66, 0
  br i1 %tobool75, label %if.end.83, label %if.then.76

if.then.76:                                       ; preds = %if.end.74
  %67 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %buffer78 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %67, i32 0, i32 4
  %68 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer78, align 8
  %call79 = call %struct._GtkTextTag* @gimp_text_buffer_get_iter_baseline(%struct._GimpTextBuffer* %68, %struct._GtkTextIter* %iter, i32* null)
  store %struct._GtkTextTag* %call79, %struct._GtkTextTag** %tag77, align 8
  %69 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag77, align 8
  %70 = load %struct._GtkTextTag*, %struct._GtkTextTag** %baseline_tag, align 8
  %cmp80 = icmp ne %struct._GtkTextTag* %69, %70
  br i1 %cmp80, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %if.then.76
  store i32 1, i32* %baseline_differs, align 4
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.81, %if.then.76
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.end.74
  %71 = load i32, i32* %kerning_differs, align 4
  %tobool84 = icmp ne i32 %71, 0
  br i1 %tobool84, label %if.end.92, label %if.then.85

if.then.85:                                       ; preds = %if.end.83
  %72 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %buffer87 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %72, i32 0, i32 4
  %73 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer87, align 8
  %call88 = call %struct._GtkTextTag* @gimp_text_buffer_get_iter_kerning(%struct._GimpTextBuffer* %73, %struct._GtkTextIter* %iter, i32* null)
  store %struct._GtkTextTag* %call88, %struct._GtkTextTag** %tag86, align 8
  %74 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag86, align 8
  %75 = load %struct._GtkTextTag*, %struct._GtkTextTag** %kerning_tag, align 8
  %cmp89 = icmp ne %struct._GtkTextTag* %74, %75
  br i1 %cmp89, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %if.then.85
  store i32 1, i32* %kerning_differs, align 4
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.90, %if.then.85
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %if.end.83
  %76 = load i32, i32* %any_toggle_active, align 4
  %tobool93 = icmp ne i32 %76, 0
  br i1 %tobool93, label %if.end.104, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.92
  %77 = load i32, i32* %color_differs, align 4
  %tobool94 = icmp ne i32 %77, 0
  br i1 %tobool94, label %land.lhs.true.95, label %if.end.104

land.lhs.true.95:                                 ; preds = %land.lhs.true
  %78 = load i32, i32* %font_differs, align 4
  %tobool96 = icmp ne i32 %78, 0
  br i1 %tobool96, label %land.lhs.true.97, label %if.end.104

land.lhs.true.97:                                 ; preds = %land.lhs.true.95
  %79 = load i32, i32* %size_differs, align 4
  %tobool98 = icmp ne i32 %79, 0
  br i1 %tobool98, label %land.lhs.true.99, label %if.end.104

land.lhs.true.99:                                 ; preds = %land.lhs.true.97
  %80 = load i32, i32* %baseline_differs, align 4
  %tobool100 = icmp ne i32 %80, 0
  br i1 %tobool100, label %land.lhs.true.101, label %if.end.104

land.lhs.true.101:                                ; preds = %land.lhs.true.99
  %81 = load i32, i32* %kerning_differs, align 4
  %tobool102 = icmp ne i32 %81, 0
  br i1 %tobool102, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %land.lhs.true.101
  br label %for.end.107

if.end.104:                                       ; preds = %land.lhs.true.101, %land.lhs.true.99, %land.lhs.true.97, %land.lhs.true.95, %land.lhs.true, %if.end.92
  br label %for.inc.105

for.inc.105:                                      ; preds = %if.end.104
  %call106 = call i32 @gtk_text_iter_forward_cursor_position(%struct._GtkTextIter* %iter)
  br label %for.cond.22

for.end.107:                                      ; preds = %if.then.103, %for.cond.22
  %82 = load i32, i32* %font_differs, align 4
  %tobool108 = icmp ne i32 %82, 0
  br i1 %tobool108, label %if.then.109, label %if.else.110

if.then.109:                                      ; preds = %for.end.107
  %83 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  call void @gimp_text_style_editor_set_font(%struct._GimpTextStyleEditor* %83, %struct._GtkTextTag* null)
  br label %if.end.115

if.else.110:                                      ; preds = %for.end.107
  %84 = load %struct._GtkTextTag*, %struct._GtkTextTag** %font_tag, align 8
  %tobool111 = icmp ne %struct._GtkTextTag* %84, null
  br i1 %tobool111, label %if.then.112, label %if.else.113

if.then.112:                                      ; preds = %if.else.110
  %85 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %86 = load %struct._GtkTextTag*, %struct._GtkTextTag** %font_tag, align 8
  call void @gimp_text_style_editor_set_font(%struct._GimpTextStyleEditor* %85, %struct._GtkTextTag* %86)
  br label %if.end.114

if.else.113:                                      ; preds = %if.else.110
  %87 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  call void @gimp_text_style_editor_set_default_font(%struct._GimpTextStyleEditor* %87)
  br label %if.end.114

if.end.114:                                       ; preds = %if.else.113, %if.then.112
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %if.then.109
  %88 = load i32, i32* %color_differs, align 4
  %tobool116 = icmp ne i32 %88, 0
  br i1 %tobool116, label %if.then.117, label %if.else.118

if.then.117:                                      ; preds = %if.end.115
  %89 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  call void @gimp_text_style_editor_set_color(%struct._GimpTextStyleEditor* %89, %struct._GtkTextTag* null)
  br label %if.end.123

if.else.118:                                      ; preds = %if.end.115
  %90 = load %struct._GtkTextTag*, %struct._GtkTextTag** %color_tag, align 8
  %tobool119 = icmp ne %struct._GtkTextTag* %90, null
  br i1 %tobool119, label %if.then.120, label %if.else.121

if.then.120:                                      ; preds = %if.else.118
  %91 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %92 = load %struct._GtkTextTag*, %struct._GtkTextTag** %color_tag, align 8
  call void @gimp_text_style_editor_set_color(%struct._GimpTextStyleEditor* %91, %struct._GtkTextTag* %92)
  br label %if.end.122

if.else.121:                                      ; preds = %if.else.118
  %93 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  call void @gimp_text_style_editor_set_default_color(%struct._GimpTextStyleEditor* %93)
  br label %if.end.122

if.end.122:                                       ; preds = %if.else.121, %if.then.120
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.122, %if.then.117
  %94 = load i32, i32* %size_differs, align 4
  %tobool124 = icmp ne i32 %94, 0
  br i1 %tobool124, label %if.then.125, label %if.else.126

if.then.125:                                      ; preds = %if.end.123
  %95 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  call void @gimp_text_style_editor_set_size(%struct._GimpTextStyleEditor* %95, %struct._GtkTextTag* null)
  br label %if.end.131

if.else.126:                                      ; preds = %if.end.123
  %96 = load %struct._GtkTextTag*, %struct._GtkTextTag** %size_tag, align 8
  %tobool127 = icmp ne %struct._GtkTextTag* %96, null
  br i1 %tobool127, label %if.then.128, label %if.else.129

if.then.128:                                      ; preds = %if.else.126
  %97 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %98 = load %struct._GtkTextTag*, %struct._GtkTextTag** %size_tag, align 8
  call void @gimp_text_style_editor_set_size(%struct._GimpTextStyleEditor* %97, %struct._GtkTextTag* %98)
  br label %if.end.130

if.else.129:                                      ; preds = %if.else.126
  %99 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  call void @gimp_text_style_editor_set_default_size(%struct._GimpTextStyleEditor* %99)
  br label %if.end.130

if.end.130:                                       ; preds = %if.else.129, %if.then.128
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %if.then.125
  %100 = load i32, i32* %baseline_differs, align 4
  %tobool132 = icmp ne i32 %100, 0
  br i1 %tobool132, label %if.then.133, label %if.else.136

if.then.133:                                      ; preds = %if.end.131
  %101 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %baseline_spinbutton = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %101, i32 0, i32 14
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %baseline_spinbutton, align 8
  %103 = bitcast %struct._GtkWidget* %102 to %struct._GTypeInstance*
  %call134 = call i64 @gtk_entry_get_type() #8
  %call135 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %103, i64 %call134)
  %104 = bitcast %struct._GTypeInstance* %call135 to %struct._GtkEntry*
  call void @gtk_entry_set_text(%struct._GtkEntry* %104, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.40, i32 0, i32 0))
  br label %if.end.137

if.else.136:                                      ; preds = %if.end.131
  %105 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %106 = load %struct._GtkTextTag*, %struct._GtkTextTag** %baseline_tag, align 8
  call void @gimp_text_style_editor_set_baseline(%struct._GimpTextStyleEditor* %105, %struct._GtkTextTag* %106)
  br label %if.end.137

if.end.137:                                       ; preds = %if.else.136, %if.then.133
  %107 = load i32, i32* %kerning_differs, align 4
  %tobool138 = icmp ne i32 %107, 0
  br i1 %tobool138, label %if.then.139, label %if.else.142

if.then.139:                                      ; preds = %if.end.137
  %108 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %kerning_spinbutton = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %108, i32 0, i32 16
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** %kerning_spinbutton, align 8
  %110 = bitcast %struct._GtkWidget* %109 to %struct._GTypeInstance*
  %call140 = call i64 @gtk_entry_get_type() #8
  %call141 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %110, i64 %call140)
  %111 = bitcast %struct._GTypeInstance* %call141 to %struct._GtkEntry*
  call void @gtk_entry_set_text(%struct._GtkEntry* %111, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.40, i32 0, i32 0))
  br label %if.end.143

if.else.142:                                      ; preds = %if.end.137
  %112 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %113 = load %struct._GtkTextTag*, %struct._GtkTextTag** %kerning_tag, align 8
  call void @gimp_text_style_editor_set_kerning(%struct._GimpTextStyleEditor* %112, %struct._GtkTextTag* %113)
  br label %if.end.143

if.end.143:                                       ; preds = %if.else.142, %if.then.139
  br label %if.end.284

if.else.144:                                      ; preds = %if.end
  %114 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %115 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %call146 = call %struct._GtkTextMark* @gtk_text_buffer_get_insert(%struct._GtkTextBuffer* %115)
  call void @gtk_text_buffer_get_iter_at_mark(%struct._GtkTextBuffer* %114, %struct._GtkTextIter* %cursor, %struct._GtkTextMark* %call146)
  %call147 = call %struct._GSList* @gtk_text_iter_get_tags(%struct._GtkTextIter* %cursor)
  store %struct._GSList* %call147, %struct._GSList** %tags, align 8
  %call148 = call %struct._GSList* @gtk_text_iter_get_toggled_tags(%struct._GtkTextIter* %cursor, i32 1)
  store %struct._GSList* %call148, %struct._GSList** %tags_on, align 8
  %call149 = call %struct._GSList* @gtk_text_iter_get_toggled_tags(%struct._GtkTextIter* %cursor, i32 0)
  store %struct._GSList* %call149, %struct._GSList** %tags_off, align 8
  %116 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %buffer150 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %116, i32 0, i32 4
  %117 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer150, align 8
  %font_tags = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %117, i32 0, i32 8
  %118 = load %struct._GList*, %struct._GList** %font_tags, align 8
  store %struct._GList* %118, %struct._GList** %list145, align 8
  br label %for.cond.151

for.cond.151:                                     ; preds = %cond.end.170, %if.else.144
  %119 = load %struct._GList*, %struct._GList** %list145, align 8
  %tobool152 = icmp ne %struct._GList* %119, null
  br i1 %tobool152, label %for.body.153, label %for.end.172

for.body.153:                                     ; preds = %for.cond.151
  %120 = load %struct._GList*, %struct._GList** %list145, align 8
  %data155 = getelementptr inbounds %struct._GList, %struct._GList* %120, i32 0, i32 0
  %121 = load i8*, i8** %data155, align 8
  %122 = bitcast i8* %121 to %struct._GtkTextTag*
  store %struct._GtkTextTag* %122, %struct._GtkTextTag** %tag154, align 8
  %123 = load %struct._GSList*, %struct._GSList** %tags, align 8
  %124 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag154, align 8
  %125 = bitcast %struct._GtkTextTag* %124 to i8*
  %call156 = call %struct._GSList* @g_slist_find(%struct._GSList* %123, i8* %125)
  %tobool157 = icmp ne %struct._GSList* %call156, null
  br i1 %tobool157, label %land.lhs.true.158, label %lor.lhs.false

land.lhs.true.158:                                ; preds = %for.body.153
  %126 = load %struct._GSList*, %struct._GSList** %tags_on, align 8
  %127 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag154, align 8
  %128 = bitcast %struct._GtkTextTag* %127 to i8*
  %call159 = call %struct._GSList* @g_slist_find(%struct._GSList* %126, i8* %128)
  %tobool160 = icmp ne %struct._GSList* %call159, null
  br i1 %tobool160, label %lor.lhs.false, label %if.then.163

lor.lhs.false:                                    ; preds = %land.lhs.true.158, %for.body.153
  %129 = load %struct._GSList*, %struct._GSList** %tags_off, align 8
  %130 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag154, align 8
  %131 = bitcast %struct._GtkTextTag* %130 to i8*
  %call161 = call %struct._GSList* @g_slist_find(%struct._GSList* %129, i8* %131)
  %tobool162 = icmp ne %struct._GSList* %call161, null
  br i1 %tobool162, label %if.then.163, label %if.end.164

if.then.163:                                      ; preds = %lor.lhs.false, %land.lhs.true.158
  %132 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %133 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag154, align 8
  call void @gimp_text_style_editor_set_font(%struct._GimpTextStyleEditor* %132, %struct._GtkTextTag* %133)
  br label %for.end.172

if.end.164:                                       ; preds = %lor.lhs.false
  br label %for.inc.165

for.inc.165:                                      ; preds = %if.end.164
  %134 = load %struct._GList*, %struct._GList** %list145, align 8
  %tobool166 = icmp ne %struct._GList* %134, null
  br i1 %tobool166, label %cond.true.167, label %cond.false.169

cond.true.167:                                    ; preds = %for.inc.165
  %135 = load %struct._GList*, %struct._GList** %list145, align 8
  %next168 = getelementptr inbounds %struct._GList, %struct._GList* %135, i32 0, i32 1
  %136 = load %struct._GList*, %struct._GList** %next168, align 8
  br label %cond.end.170

cond.false.169:                                   ; preds = %for.inc.165
  br label %cond.end.170

cond.end.170:                                     ; preds = %cond.false.169, %cond.true.167
  %cond171 = phi %struct._GList* [ %136, %cond.true.167 ], [ null, %cond.false.169 ]
  store %struct._GList* %cond171, %struct._GList** %list145, align 8
  br label %for.cond.151

for.end.172:                                      ; preds = %if.then.163, %for.cond.151
  %137 = load %struct._GList*, %struct._GList** %list145, align 8
  %tobool173 = icmp ne %struct._GList* %137, null
  br i1 %tobool173, label %if.end.175, label %if.then.174

if.then.174:                                      ; preds = %for.end.172
  %138 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  call void @gimp_text_style_editor_set_default_font(%struct._GimpTextStyleEditor* %138)
  br label %if.end.175

if.end.175:                                       ; preds = %if.then.174, %for.end.172
  %139 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %buffer176 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %139, i32 0, i32 4
  %140 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer176, align 8
  %color_tags = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %140, i32 0, i32 9
  %141 = load %struct._GList*, %struct._GList** %color_tags, align 8
  store %struct._GList* %141, %struct._GList** %list145, align 8
  br label %for.cond.177

for.cond.177:                                     ; preds = %cond.end.197, %if.end.175
  %142 = load %struct._GList*, %struct._GList** %list145, align 8
  %tobool178 = icmp ne %struct._GList* %142, null
  br i1 %tobool178, label %for.body.179, label %for.end.199

for.body.179:                                     ; preds = %for.cond.177
  %143 = load %struct._GList*, %struct._GList** %list145, align 8
  %data181 = getelementptr inbounds %struct._GList, %struct._GList* %143, i32 0, i32 0
  %144 = load i8*, i8** %data181, align 8
  %145 = bitcast i8* %144 to %struct._GtkTextTag*
  store %struct._GtkTextTag* %145, %struct._GtkTextTag** %tag180, align 8
  %146 = load %struct._GSList*, %struct._GSList** %tags, align 8
  %147 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag180, align 8
  %148 = bitcast %struct._GtkTextTag* %147 to i8*
  %call182 = call %struct._GSList* @g_slist_find(%struct._GSList* %146, i8* %148)
  %tobool183 = icmp ne %struct._GSList* %call182, null
  br i1 %tobool183, label %land.lhs.true.184, label %lor.lhs.false.187

land.lhs.true.184:                                ; preds = %for.body.179
  %149 = load %struct._GSList*, %struct._GSList** %tags_on, align 8
  %150 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag180, align 8
  %151 = bitcast %struct._GtkTextTag* %150 to i8*
  %call185 = call %struct._GSList* @g_slist_find(%struct._GSList* %149, i8* %151)
  %tobool186 = icmp ne %struct._GSList* %call185, null
  br i1 %tobool186, label %lor.lhs.false.187, label %if.then.190

lor.lhs.false.187:                                ; preds = %land.lhs.true.184, %for.body.179
  %152 = load %struct._GSList*, %struct._GSList** %tags_off, align 8
  %153 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag180, align 8
  %154 = bitcast %struct._GtkTextTag* %153 to i8*
  %call188 = call %struct._GSList* @g_slist_find(%struct._GSList* %152, i8* %154)
  %tobool189 = icmp ne %struct._GSList* %call188, null
  br i1 %tobool189, label %if.then.190, label %if.end.191

if.then.190:                                      ; preds = %lor.lhs.false.187, %land.lhs.true.184
  %155 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %156 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag180, align 8
  call void @gimp_text_style_editor_set_color(%struct._GimpTextStyleEditor* %155, %struct._GtkTextTag* %156)
  br label %for.end.199

if.end.191:                                       ; preds = %lor.lhs.false.187
  br label %for.inc.192

for.inc.192:                                      ; preds = %if.end.191
  %157 = load %struct._GList*, %struct._GList** %list145, align 8
  %tobool193 = icmp ne %struct._GList* %157, null
  br i1 %tobool193, label %cond.true.194, label %cond.false.196

cond.true.194:                                    ; preds = %for.inc.192
  %158 = load %struct._GList*, %struct._GList** %list145, align 8
  %next195 = getelementptr inbounds %struct._GList, %struct._GList* %158, i32 0, i32 1
  %159 = load %struct._GList*, %struct._GList** %next195, align 8
  br label %cond.end.197

cond.false.196:                                   ; preds = %for.inc.192
  br label %cond.end.197

cond.end.197:                                     ; preds = %cond.false.196, %cond.true.194
  %cond198 = phi %struct._GList* [ %159, %cond.true.194 ], [ null, %cond.false.196 ]
  store %struct._GList* %cond198, %struct._GList** %list145, align 8
  br label %for.cond.177

for.end.199:                                      ; preds = %if.then.190, %for.cond.177
  %160 = load %struct._GList*, %struct._GList** %list145, align 8
  %tobool200 = icmp ne %struct._GList* %160, null
  br i1 %tobool200, label %if.end.202, label %if.then.201

if.then.201:                                      ; preds = %for.end.199
  %161 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  call void @gimp_text_style_editor_set_default_color(%struct._GimpTextStyleEditor* %161)
  br label %if.end.202

if.end.202:                                       ; preds = %if.then.201, %for.end.199
  %162 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %buffer203 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %162, i32 0, i32 4
  %163 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer203, align 8
  %size_tags = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %163, i32 0, i32 5
  %164 = load %struct._GList*, %struct._GList** %size_tags, align 8
  store %struct._GList* %164, %struct._GList** %list145, align 8
  br label %for.cond.204

for.cond.204:                                     ; preds = %cond.end.224, %if.end.202
  %165 = load %struct._GList*, %struct._GList** %list145, align 8
  %tobool205 = icmp ne %struct._GList* %165, null
  br i1 %tobool205, label %for.body.206, label %for.end.226

for.body.206:                                     ; preds = %for.cond.204
  %166 = load %struct._GList*, %struct._GList** %list145, align 8
  %data208 = getelementptr inbounds %struct._GList, %struct._GList* %166, i32 0, i32 0
  %167 = load i8*, i8** %data208, align 8
  %168 = bitcast i8* %167 to %struct._GtkTextTag*
  store %struct._GtkTextTag* %168, %struct._GtkTextTag** %tag207, align 8
  %169 = load %struct._GSList*, %struct._GSList** %tags, align 8
  %170 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag207, align 8
  %171 = bitcast %struct._GtkTextTag* %170 to i8*
  %call209 = call %struct._GSList* @g_slist_find(%struct._GSList* %169, i8* %171)
  %tobool210 = icmp ne %struct._GSList* %call209, null
  br i1 %tobool210, label %land.lhs.true.211, label %lor.lhs.false.214

land.lhs.true.211:                                ; preds = %for.body.206
  %172 = load %struct._GSList*, %struct._GSList** %tags_on, align 8
  %173 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag207, align 8
  %174 = bitcast %struct._GtkTextTag* %173 to i8*
  %call212 = call %struct._GSList* @g_slist_find(%struct._GSList* %172, i8* %174)
  %tobool213 = icmp ne %struct._GSList* %call212, null
  br i1 %tobool213, label %lor.lhs.false.214, label %if.then.217

lor.lhs.false.214:                                ; preds = %land.lhs.true.211, %for.body.206
  %175 = load %struct._GSList*, %struct._GSList** %tags_off, align 8
  %176 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag207, align 8
  %177 = bitcast %struct._GtkTextTag* %176 to i8*
  %call215 = call %struct._GSList* @g_slist_find(%struct._GSList* %175, i8* %177)
  %tobool216 = icmp ne %struct._GSList* %call215, null
  br i1 %tobool216, label %if.then.217, label %if.end.218

if.then.217:                                      ; preds = %lor.lhs.false.214, %land.lhs.true.211
  %178 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %179 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag207, align 8
  call void @gimp_text_style_editor_set_size(%struct._GimpTextStyleEditor* %178, %struct._GtkTextTag* %179)
  br label %for.end.226

if.end.218:                                       ; preds = %lor.lhs.false.214
  br label %for.inc.219

for.inc.219:                                      ; preds = %if.end.218
  %180 = load %struct._GList*, %struct._GList** %list145, align 8
  %tobool220 = icmp ne %struct._GList* %180, null
  br i1 %tobool220, label %cond.true.221, label %cond.false.223

cond.true.221:                                    ; preds = %for.inc.219
  %181 = load %struct._GList*, %struct._GList** %list145, align 8
  %next222 = getelementptr inbounds %struct._GList, %struct._GList* %181, i32 0, i32 1
  %182 = load %struct._GList*, %struct._GList** %next222, align 8
  br label %cond.end.224

cond.false.223:                                   ; preds = %for.inc.219
  br label %cond.end.224

cond.end.224:                                     ; preds = %cond.false.223, %cond.true.221
  %cond225 = phi %struct._GList* [ %182, %cond.true.221 ], [ null, %cond.false.223 ]
  store %struct._GList* %cond225, %struct._GList** %list145, align 8
  br label %for.cond.204

for.end.226:                                      ; preds = %if.then.217, %for.cond.204
  %183 = load %struct._GList*, %struct._GList** %list145, align 8
  %tobool227 = icmp ne %struct._GList* %183, null
  br i1 %tobool227, label %if.end.229, label %if.then.228

if.then.228:                                      ; preds = %for.end.226
  %184 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  call void @gimp_text_style_editor_set_default_size(%struct._GimpTextStyleEditor* %184)
  br label %if.end.229

if.end.229:                                       ; preds = %if.then.228, %for.end.226
  %185 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %buffer230 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %185, i32 0, i32 4
  %186 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer230, align 8
  %baseline_tags = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %186, i32 0, i32 6
  %187 = load %struct._GList*, %struct._GList** %baseline_tags, align 8
  store %struct._GList* %187, %struct._GList** %list145, align 8
  br label %for.cond.231

for.cond.231:                                     ; preds = %cond.end.251, %if.end.229
  %188 = load %struct._GList*, %struct._GList** %list145, align 8
  %tobool232 = icmp ne %struct._GList* %188, null
  br i1 %tobool232, label %for.body.233, label %for.end.253

for.body.233:                                     ; preds = %for.cond.231
  %189 = load %struct._GList*, %struct._GList** %list145, align 8
  %data235 = getelementptr inbounds %struct._GList, %struct._GList* %189, i32 0, i32 0
  %190 = load i8*, i8** %data235, align 8
  %191 = bitcast i8* %190 to %struct._GtkTextTag*
  store %struct._GtkTextTag* %191, %struct._GtkTextTag** %tag234, align 8
  %192 = load %struct._GSList*, %struct._GSList** %tags, align 8
  %193 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag234, align 8
  %194 = bitcast %struct._GtkTextTag* %193 to i8*
  %call236 = call %struct._GSList* @g_slist_find(%struct._GSList* %192, i8* %194)
  %tobool237 = icmp ne %struct._GSList* %call236, null
  br i1 %tobool237, label %land.lhs.true.238, label %lor.lhs.false.241

land.lhs.true.238:                                ; preds = %for.body.233
  %195 = load %struct._GSList*, %struct._GSList** %tags_on, align 8
  %196 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag234, align 8
  %197 = bitcast %struct._GtkTextTag* %196 to i8*
  %call239 = call %struct._GSList* @g_slist_find(%struct._GSList* %195, i8* %197)
  %tobool240 = icmp ne %struct._GSList* %call239, null
  br i1 %tobool240, label %lor.lhs.false.241, label %if.then.244

lor.lhs.false.241:                                ; preds = %land.lhs.true.238, %for.body.233
  %198 = load %struct._GSList*, %struct._GSList** %tags_off, align 8
  %199 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag234, align 8
  %200 = bitcast %struct._GtkTextTag* %199 to i8*
  %call242 = call %struct._GSList* @g_slist_find(%struct._GSList* %198, i8* %200)
  %tobool243 = icmp ne %struct._GSList* %call242, null
  br i1 %tobool243, label %if.then.244, label %if.end.245

if.then.244:                                      ; preds = %lor.lhs.false.241, %land.lhs.true.238
  %201 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %202 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag234, align 8
  call void @gimp_text_style_editor_set_baseline(%struct._GimpTextStyleEditor* %201, %struct._GtkTextTag* %202)
  br label %for.end.253

if.end.245:                                       ; preds = %lor.lhs.false.241
  br label %for.inc.246

for.inc.246:                                      ; preds = %if.end.245
  %203 = load %struct._GList*, %struct._GList** %list145, align 8
  %tobool247 = icmp ne %struct._GList* %203, null
  br i1 %tobool247, label %cond.true.248, label %cond.false.250

cond.true.248:                                    ; preds = %for.inc.246
  %204 = load %struct._GList*, %struct._GList** %list145, align 8
  %next249 = getelementptr inbounds %struct._GList, %struct._GList* %204, i32 0, i32 1
  %205 = load %struct._GList*, %struct._GList** %next249, align 8
  br label %cond.end.251

cond.false.250:                                   ; preds = %for.inc.246
  br label %cond.end.251

cond.end.251:                                     ; preds = %cond.false.250, %cond.true.248
  %cond252 = phi %struct._GList* [ %205, %cond.true.248 ], [ null, %cond.false.250 ]
  store %struct._GList* %cond252, %struct._GList** %list145, align 8
  br label %for.cond.231

for.end.253:                                      ; preds = %if.then.244, %for.cond.231
  %206 = load %struct._GList*, %struct._GList** %list145, align 8
  %tobool254 = icmp ne %struct._GList* %206, null
  br i1 %tobool254, label %if.end.256, label %if.then.255

if.then.255:                                      ; preds = %for.end.253
  %207 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  call void @gimp_text_style_editor_set_baseline(%struct._GimpTextStyleEditor* %207, %struct._GtkTextTag* null)
  br label %if.end.256

if.end.256:                                       ; preds = %if.then.255, %for.end.253
  %208 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %toggles257 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %208, i32 0, i32 18
  %209 = load %struct._GList*, %struct._GList** %toggles257, align 8
  store %struct._GList* %209, %struct._GList** %list145, align 8
  br label %for.cond.258

for.cond.258:                                     ; preds = %cond.end.278, %if.end.256
  %210 = load %struct._GList*, %struct._GList** %list145, align 8
  %tobool259 = icmp ne %struct._GList* %210, null
  br i1 %tobool259, label %for.body.260, label %for.end.280

for.body.260:                                     ; preds = %for.cond.258
  %211 = load %struct._GList*, %struct._GList** %list145, align 8
  %data262 = getelementptr inbounds %struct._GList, %struct._GList* %211, i32 0, i32 0
  %212 = load i8*, i8** %data262, align 8
  %213 = bitcast i8* %212 to %struct._GtkToggleButton*
  store %struct._GtkToggleButton* %213, %struct._GtkToggleButton** %toggle261, align 8
  %214 = load %struct._GtkToggleButton*, %struct._GtkToggleButton** %toggle261, align 8
  %215 = bitcast %struct._GtkToggleButton* %214 to %struct._GTypeInstance*
  %call264 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %215, i64 80)
  %216 = bitcast %struct._GTypeInstance* %call264 to %struct._GObject*
  %call265 = call i8* @g_object_get_data(%struct._GObject* %216, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0))
  %217 = bitcast i8* %call265 to %struct._GtkTextTag*
  store %struct._GtkTextTag* %217, %struct._GtkTextTag** %tag263, align 8
  %218 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %219 = load %struct._GtkToggleButton*, %struct._GtkToggleButton** %toggle261, align 8
  %220 = load %struct._GSList*, %struct._GSList** %tags, align 8
  %221 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag263, align 8
  %222 = bitcast %struct._GtkTextTag* %221 to i8*
  %call266 = call %struct._GSList* @g_slist_find(%struct._GSList* %220, i8* %222)
  %tobool267 = icmp ne %struct._GSList* %call266, null
  br i1 %tobool267, label %land.lhs.true.268, label %lor.rhs

land.lhs.true.268:                                ; preds = %for.body.260
  %223 = load %struct._GSList*, %struct._GSList** %tags_on, align 8
  %224 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag263, align 8
  %225 = bitcast %struct._GtkTextTag* %224 to i8*
  %call269 = call %struct._GSList* @g_slist_find(%struct._GSList* %223, i8* %225)
  %tobool270 = icmp ne %struct._GSList* %call269, null
  br i1 %tobool270, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %land.lhs.true.268, %for.body.260
  %226 = load %struct._GSList*, %struct._GSList** %tags_off, align 8
  %227 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag263, align 8
  %228 = bitcast %struct._GtkTextTag* %227 to i8*
  %call271 = call %struct._GSList* @g_slist_find(%struct._GSList* %226, i8* %228)
  %tobool272 = icmp ne %struct._GSList* %call271, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.lhs.true.268
  %229 = phi i1 [ true, %land.lhs.true.268 ], [ %tobool272, %lor.rhs ]
  %lor.ext = zext i1 %229 to i32
  call void @gimp_text_style_editor_set_toggle(%struct._GimpTextStyleEditor* %218, %struct._GtkToggleButton* %219, i32 %lor.ext)
  br label %for.inc.273

for.inc.273:                                      ; preds = %lor.end
  %230 = load %struct._GList*, %struct._GList** %list145, align 8
  %tobool274 = icmp ne %struct._GList* %230, null
  br i1 %tobool274, label %cond.true.275, label %cond.false.277

cond.true.275:                                    ; preds = %for.inc.273
  %231 = load %struct._GList*, %struct._GList** %list145, align 8
  %next276 = getelementptr inbounds %struct._GList, %struct._GList* %231, i32 0, i32 1
  %232 = load %struct._GList*, %struct._GList** %next276, align 8
  br label %cond.end.278

cond.false.277:                                   ; preds = %for.inc.273
  br label %cond.end.278

cond.end.278:                                     ; preds = %cond.false.277, %cond.true.275
  %cond279 = phi %struct._GList* [ %232, %cond.true.275 ], [ null, %cond.false.277 ]
  store %struct._GList* %cond279, %struct._GList** %list145, align 8
  br label %for.cond.258

for.end.280:                                      ; preds = %for.cond.258
  %233 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %buffer282 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %233, i32 0, i32 4
  %234 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer282, align 8
  %call283 = call %struct._GtkTextTag* @gimp_text_buffer_get_iter_kerning(%struct._GimpTextBuffer* %234, %struct._GtkTextIter* %cursor, i32* null)
  store %struct._GtkTextTag* %call283, %struct._GtkTextTag** %tag281, align 8
  %235 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %236 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag281, align 8
  call void @gimp_text_style_editor_set_kerning(%struct._GimpTextStyleEditor* %235, %struct._GtkTextTag* %236)
  %237 = load %struct._GSList*, %struct._GSList** %tags, align 8
  call void @g_slist_free(%struct._GSList* %237)
  %238 = load %struct._GSList*, %struct._GSList** %tags_on, align 8
  call void @g_slist_free(%struct._GSList* %238)
  %239 = load %struct._GSList*, %struct._GSList** %tags_off, align 8
  call void @g_slist_free(%struct._GSList* %239)
  br label %if.end.284

if.end.284:                                       ; preds = %for.end.280, %if.end.143
  ret i32 0
}

declare void @gtk_text_iter_order(%struct._GtkTextIter*, %struct._GtkTextIter*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_style_editor_set_toggle(%struct._GimpTextStyleEditor* %editor, %struct._GtkToggleButton* %toggle, i32 %active) #3 {
entry:
  %editor.addr = alloca %struct._GimpTextStyleEditor*, align 8
  %toggle.addr = alloca %struct._GtkToggleButton*, align 8
  %active.addr = alloca i32, align 4
  store %struct._GimpTextStyleEditor* %editor, %struct._GimpTextStyleEditor** %editor.addr, align 8
  store %struct._GtkToggleButton* %toggle, %struct._GtkToggleButton** %toggle.addr, align 8
  store i32 %active, i32* %active.addr, align 4
  %0 = load %struct._GtkToggleButton*, %struct._GtkToggleButton** %toggle.addr, align 8
  %1 = bitcast %struct._GtkToggleButton* %0 to i8*
  %2 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %3 = bitcast %struct._GimpTextStyleEditor* %2 to i8*
  %call = call i32 @g_signal_handlers_block_matched(i8* %1, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkToggleButton*, %struct._GimpTextStyleEditor*)* @gimp_text_style_editor_tag_toggled to i8*), i8* %3)
  %4 = load %struct._GtkToggleButton*, %struct._GtkToggleButton** %toggle.addr, align 8
  %5 = load i32, i32* %active.addr, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %4, i32 %5)
  %6 = load %struct._GtkToggleButton*, %struct._GtkToggleButton** %toggle.addr, align 8
  %7 = bitcast %struct._GtkToggleButton* %6 to i8*
  %8 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %9 = bitcast %struct._GimpTextStyleEditor* %8 to i8*
  %call1 = call i32 @g_signal_handlers_unblock_matched(i8* %7, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkToggleButton*, %struct._GimpTextStyleEditor*)* @gimp_text_style_editor_tag_toggled to i8*), i8* %9)
  ret void
}

declare %struct._GtkTextTag* @gimp_text_buffer_get_iter_font(%struct._GimpTextBuffer*, %struct._GtkTextIter*, i8**) #1

declare %struct._GtkTextTag* @gimp_text_buffer_get_iter_color(%struct._GimpTextBuffer*, %struct._GtkTextIter*, %struct._GimpRGB*) #1

declare %struct._GtkTextTag* @gimp_text_buffer_get_iter_size(%struct._GimpTextBuffer*, %struct._GtkTextIter*, i32*) #1

declare %struct._GtkTextTag* @gimp_text_buffer_get_iter_baseline(%struct._GimpTextBuffer*, %struct._GtkTextIter*, i32*) #1

declare %struct._GtkTextTag* @gimp_text_buffer_get_iter_kerning(%struct._GimpTextBuffer*, %struct._GtkTextIter*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #7

declare i32 @gtk_text_iter_in_range(%struct._GtkTextIter*, %struct._GtkTextIter*, %struct._GtkTextIter*) #1

declare i32 @gtk_text_iter_has_tag(%struct._GtkTextIter*, %struct._GtkTextTag*) #1

declare i32 @gtk_text_iter_forward_cursor_position(%struct._GtkTextIter*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_style_editor_set_font(%struct._GimpTextStyleEditor* %editor, %struct._GtkTextTag* %font_tag) #3 {
entry:
  %editor.addr = alloca %struct._GimpTextStyleEditor*, align 8
  %font_tag.addr = alloca %struct._GtkTextTag*, align 8
  %font = alloca i8*, align 8
  store %struct._GimpTextStyleEditor* %editor, %struct._GimpTextStyleEditor** %editor.addr, align 8
  store %struct._GtkTextTag* %font_tag, %struct._GtkTextTag** %font_tag.addr, align 8
  store i8* null, i8** %font, align 8
  %0 = load %struct._GtkTextTag*, %struct._GtkTextTag** %font_tag.addr, align 8
  %tobool = icmp ne %struct._GtkTextTag* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GtkTextTag*, %struct._GtkTextTag** %font_tag.addr, align 8
  %call = call i8* @gimp_text_tag_get_font(%struct._GtkTextTag* %1)
  store i8* %call, i8** %font, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %context = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %2, i32 0, i32 2
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %4 = bitcast %struct._GimpContext* %3 to i8*
  %5 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %6 = bitcast %struct._GimpTextStyleEditor* %5 to i8*
  %call1 = call i32 @g_signal_handlers_block_matched(i8* %4, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpContext*, %struct._GimpFont*, %struct._GimpTextStyleEditor*)* @gimp_text_style_editor_font_changed to i8*), i8* %6)
  %7 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %context2 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %7, i32 0, i32 2
  %8 = load %struct._GimpContext*, %struct._GimpContext** %context2, align 8
  %9 = load i8*, i8** %font, align 8
  call void @gimp_context_set_font_name(%struct._GimpContext* %8, i8* %9)
  %10 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %context3 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %10, i32 0, i32 2
  %11 = load %struct._GimpContext*, %struct._GimpContext** %context3, align 8
  %12 = bitcast %struct._GimpContext* %11 to i8*
  %13 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %14 = bitcast %struct._GimpTextStyleEditor* %13 to i8*
  %call4 = call i32 @g_signal_handlers_unblock_matched(i8* %12, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpContext*, %struct._GimpFont*, %struct._GimpTextStyleEditor*)* @gimp_text_style_editor_font_changed to i8*), i8* %14)
  %15 = load i8*, i8** %font, align 8
  call void @g_free(i8* %15)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_style_editor_set_default_font(%struct._GimpTextStyleEditor* %editor) #3 {
entry:
  %editor.addr = alloca %struct._GimpTextStyleEditor*, align 8
  store %struct._GimpTextStyleEditor* %editor, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %0 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %context = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %0, i32 0, i32 2
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %2 = bitcast %struct._GimpContext* %1 to i8*
  %3 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %4 = bitcast %struct._GimpTextStyleEditor* %3 to i8*
  %call = call i32 @g_signal_handlers_block_matched(i8* %2, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpContext*, %struct._GimpFont*, %struct._GimpTextStyleEditor*)* @gimp_text_style_editor_font_changed to i8*), i8* %4)
  %5 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %context1 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %5, i32 0, i32 2
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context1, align 8
  %7 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %text = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %7, i32 0, i32 3
  %8 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %font = getelementptr inbounds %struct._GimpText, %struct._GimpText* %8, i32 0, i32 3
  %9 = load i8*, i8** %font, align 8
  call void @gimp_context_set_font_name(%struct._GimpContext* %6, i8* %9)
  %10 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %context2 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %10, i32 0, i32 2
  %11 = load %struct._GimpContext*, %struct._GimpContext** %context2, align 8
  %12 = bitcast %struct._GimpContext* %11 to i8*
  %13 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %14 = bitcast %struct._GimpTextStyleEditor* %13 to i8*
  %call3 = call i32 @g_signal_handlers_unblock_matched(i8* %12, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpContext*, %struct._GimpFont*, %struct._GimpTextStyleEditor*)* @gimp_text_style_editor_font_changed to i8*), i8* %14)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_style_editor_set_color(%struct._GimpTextStyleEditor* %editor, %struct._GtkTextTag* %color_tag) #3 {
entry:
  %editor.addr = alloca %struct._GimpTextStyleEditor*, align 8
  %color_tag.addr = alloca %struct._GtkTextTag*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GimpTextStyleEditor* %editor, %struct._GimpTextStyleEditor** %editor.addr, align 8
  store %struct._GtkTextTag* %color_tag, %struct._GtkTextTag** %color_tag.addr, align 8
  call void @gimp_rgba_set(%struct._GimpRGB* %color, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  %0 = load %struct._GtkTextTag*, %struct._GtkTextTag** %color_tag.addr, align 8
  %tobool = icmp ne %struct._GtkTextTag* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GtkTextTag*, %struct._GtkTextTag** %color_tag.addr, align 8
  call void @gimp_text_tag_get_color(%struct._GtkTextTag* %1, %struct._GimpRGB* %color)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %color_button = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %2, i32 0, i32 12
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %color_button, align 8
  %4 = bitcast %struct._GtkWidget* %3 to i8*
  %5 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %6 = bitcast %struct._GimpTextStyleEditor* %5 to i8*
  %call = call i32 @g_signal_handlers_block_matched(i8* %4, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpColorButton*, %struct._GimpTextStyleEditor*)* @gimp_text_style_editor_color_changed to i8*), i8* %6)
  %7 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %color_button1 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %7, i32 0, i32 12
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %color_button1, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_color_button_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call2)
  %10 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpColorButton*
  call void @gimp_color_button_set_color(%struct._GimpColorButton* %10, %struct._GimpRGB* %color)
  %11 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %color_button4 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %11, i32 0, i32 12
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %color_button4, align 8
  %13 = bitcast %struct._GtkWidget* %12 to i8*
  %14 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %15 = bitcast %struct._GimpTextStyleEditor* %14 to i8*
  %call5 = call i32 @g_signal_handlers_unblock_matched(i8* %13, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpColorButton*, %struct._GimpTextStyleEditor*)* @gimp_text_style_editor_color_changed to i8*), i8* %15)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_style_editor_set_default_color(%struct._GimpTextStyleEditor* %editor) #3 {
entry:
  %editor.addr = alloca %struct._GimpTextStyleEditor*, align 8
  store %struct._GimpTextStyleEditor* %editor, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %0 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %color_button = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %0, i32 0, i32 12
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %color_button, align 8
  %2 = bitcast %struct._GtkWidget* %1 to i8*
  %3 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %4 = bitcast %struct._GimpTextStyleEditor* %3 to i8*
  %call = call i32 @g_signal_handlers_block_matched(i8* %2, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpColorButton*, %struct._GimpTextStyleEditor*)* @gimp_text_style_editor_color_changed to i8*), i8* %4)
  %5 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %color_button1 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %5, i32 0, i32 12
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %color_button1, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_color_button_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call2)
  %8 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpColorButton*
  %9 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %text = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %9, i32 0, i32 3
  %10 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %color = getelementptr inbounds %struct._GimpText, %struct._GimpText* %10, i32 0, i32 11
  call void @gimp_color_button_set_color(%struct._GimpColorButton* %8, %struct._GimpRGB* %color)
  %11 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %color_button4 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %11, i32 0, i32 12
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %color_button4, align 8
  %13 = bitcast %struct._GtkWidget* %12 to i8*
  %14 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %15 = bitcast %struct._GimpTextStyleEditor* %14 to i8*
  %call5 = call i32 @g_signal_handlers_unblock_matched(i8* %13, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpColorButton*, %struct._GimpTextStyleEditor*)* @gimp_text_style_editor_color_changed to i8*), i8* %15)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_style_editor_set_size(%struct._GimpTextStyleEditor* %editor, %struct._GtkTextTag* %size_tag) #3 {
entry:
  %editor.addr = alloca %struct._GimpTextStyleEditor*, align 8
  %size_tag.addr = alloca %struct._GtkTextTag*, align 8
  %size = alloca i32, align 4
  %pixels = alloca double, align 8
  %spinbutton = alloca %struct._GtkWidget*, align 8
  store %struct._GimpTextStyleEditor* %editor, %struct._GimpTextStyleEditor** %editor.addr, align 8
  store %struct._GtkTextTag* %size_tag, %struct._GtkTextTag** %size_tag.addr, align 8
  store i32 0, i32* %size, align 4
  %0 = load %struct._GtkTextTag*, %struct._GtkTextTag** %size_tag.addr, align 8
  %tobool = icmp ne %struct._GtkTextTag* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GtkTextTag*, %struct._GtkTextTag** %size_tag.addr, align 8
  %call = call i32 @gimp_text_tag_get_size(%struct._GtkTextTag* %1)
  store i32 %call, i32* %size, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %size_entry = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %2, i32 0, i32 11
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %size_entry, align 8
  %4 = bitcast %struct._GtkWidget* %3 to i8*
  %5 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %6 = bitcast %struct._GimpTextStyleEditor* %5 to i8*
  %call1 = call i32 @g_signal_handlers_block_matched(i8* %4, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpSizeEntry*, %struct._GimpTextStyleEditor*)* @gimp_text_style_editor_size_changed to i8*), i8* %6)
  %7 = load i32, i32* %size, align 4
  %conv = sitofp i32 %7 to double
  %div = fdiv double %conv, 1.024000e+03
  %8 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %resolution_y = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %8, i32 0, i32 7
  %9 = load double, double* %resolution_y, align 8
  %call2 = call double @gimp_units_to_pixels(double %div, i32 3, double %9)
  store double %call2, double* %pixels, align 8
  %10 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %size_entry3 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %10, i32 0, i32 11
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %size_entry3, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_size_entry_get_type() #8
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call4)
  %13 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpSizeEntry*
  %14 = load double, double* %pixels, align 8
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %13, i32 0, double %14)
  %15 = load i32, i32* %size, align 4
  %cmp = icmp eq i32 %15, 0
  br i1 %cmp, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %if.end
  %16 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %size_entry8 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %16, i32 0, i32 11
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %size_entry8, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_size_entry_get_type() #8
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call9)
  %19 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpSizeEntry*
  %call11 = call %struct._GtkWidget* @gimp_size_entry_get_help_widget(%struct._GimpSizeEntry* %19, i32 0)
  store %struct._GtkWidget* %call11, %struct._GtkWidget** %spinbutton, align 8
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_entry_get_type() #8
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call12)
  %22 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkEntry*
  call void @gtk_entry_set_text(%struct._GtkEntry* %22, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.40, i32 0, i32 0))
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.7, %if.end
  %23 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %size_entry15 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %23, i32 0, i32 11
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %size_entry15, align 8
  %25 = bitcast %struct._GtkWidget* %24 to i8*
  %26 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %27 = bitcast %struct._GimpTextStyleEditor* %26 to i8*
  %call16 = call i32 @g_signal_handlers_unblock_matched(i8* %25, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpSizeEntry*, %struct._GimpTextStyleEditor*)* @gimp_text_style_editor_size_changed to i8*), i8* %27)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_style_editor_set_default_size(%struct._GimpTextStyleEditor* %editor) #3 {
entry:
  %editor.addr = alloca %struct._GimpTextStyleEditor*, align 8
  %pixels = alloca double, align 8
  store %struct._GimpTextStyleEditor* %editor, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %0 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %text = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %0, i32 0, i32 3
  %1 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %font_size = getelementptr inbounds %struct._GimpText, %struct._GimpText* %1, i32 0, i32 5
  %2 = load double, double* %font_size, align 8
  %3 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %text1 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %3, i32 0, i32 3
  %4 = load %struct._GimpText*, %struct._GimpText** %text1, align 8
  %unit = getelementptr inbounds %struct._GimpText, %struct._GimpText* %4, i32 0, i32 4
  %5 = load i32, i32* %unit, align 4
  %6 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %resolution_y = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %6, i32 0, i32 7
  %7 = load double, double* %resolution_y, align 8
  %call = call double @gimp_units_to_pixels(double %2, i32 %5, double %7)
  store double %call, double* %pixels, align 8
  %8 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %size_entry = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %8, i32 0, i32 11
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %size_entry, align 8
  %10 = bitcast %struct._GtkWidget* %9 to i8*
  %11 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %12 = bitcast %struct._GimpTextStyleEditor* %11 to i8*
  %call2 = call i32 @g_signal_handlers_block_matched(i8* %10, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpSizeEntry*, %struct._GimpTextStyleEditor*)* @gimp_text_style_editor_size_changed to i8*), i8* %12)
  %13 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %size_entry3 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %13, i32 0, i32 11
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %size_entry3, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_size_entry_get_type() #8
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call4)
  %16 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpSizeEntry*
  %17 = load double, double* %pixels, align 8
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %16, i32 0, double %17)
  %18 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %size_entry6 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %18, i32 0, i32 11
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %size_entry6, align 8
  %20 = bitcast %struct._GtkWidget* %19 to i8*
  %21 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %22 = bitcast %struct._GimpTextStyleEditor* %21 to i8*
  %call7 = call i32 @g_signal_handlers_unblock_matched(i8* %20, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpSizeEntry*, %struct._GimpTextStyleEditor*)* @gimp_text_style_editor_size_changed to i8*), i8* %22)
  ret void
}

declare void @gtk_entry_set_text(%struct._GtkEntry*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_text_style_editor_set_baseline(%struct._GimpTextStyleEditor* %editor, %struct._GtkTextTag* %baseline_tag) #3 {
entry:
  %editor.addr = alloca %struct._GimpTextStyleEditor*, align 8
  %baseline_tag.addr = alloca %struct._GtkTextTag*, align 8
  %baseline = alloca i32, align 4
  store %struct._GimpTextStyleEditor* %editor, %struct._GimpTextStyleEditor** %editor.addr, align 8
  store %struct._GtkTextTag* %baseline_tag, %struct._GtkTextTag** %baseline_tag.addr, align 8
  store i32 0, i32* %baseline, align 4
  %0 = load %struct._GtkTextTag*, %struct._GtkTextTag** %baseline_tag.addr, align 8
  %tobool = icmp ne %struct._GtkTextTag* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GtkTextTag*, %struct._GtkTextTag** %baseline_tag.addr, align 8
  %call = call i32 @gimp_text_tag_get_baseline(%struct._GtkTextTag* %1)
  store i32 %call, i32* %baseline, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %baseline_adjustment = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %2, i32 0, i32 15
  %3 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %baseline_adjustment, align 8
  %4 = bitcast %struct._GtkAdjustment* %3 to i8*
  %5 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %6 = bitcast %struct._GimpTextStyleEditor* %5 to i8*
  %call1 = call i32 @g_signal_handlers_block_matched(i8* %4, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkAdjustment*, %struct._GimpTextStyleEditor*)* @gimp_text_style_editor_baseline_changed to i8*), i8* %6)
  %7 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %baseline_adjustment2 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %7, i32 0, i32 15
  %8 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %baseline_adjustment2, align 8
  %9 = load i32, i32* %baseline, align 4
  %conv = sitofp i32 %9 to double
  %div = fdiv double %conv, 1.024000e+03
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %8, double %div)
  %10 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %baseline_adjustment3 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %10, i32 0, i32 15
  %11 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %baseline_adjustment3, align 8
  call void @gtk_adjustment_value_changed(%struct._GtkAdjustment* %11)
  %12 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %baseline_adjustment4 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %12, i32 0, i32 15
  %13 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %baseline_adjustment4, align 8
  %14 = bitcast %struct._GtkAdjustment* %13 to i8*
  %15 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %16 = bitcast %struct._GimpTextStyleEditor* %15 to i8*
  %call5 = call i32 @g_signal_handlers_unblock_matched(i8* %14, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkAdjustment*, %struct._GimpTextStyleEditor*)* @gimp_text_style_editor_baseline_changed to i8*), i8* %16)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_style_editor_set_kerning(%struct._GimpTextStyleEditor* %editor, %struct._GtkTextTag* %kerning_tag) #3 {
entry:
  %editor.addr = alloca %struct._GimpTextStyleEditor*, align 8
  %kerning_tag.addr = alloca %struct._GtkTextTag*, align 8
  %kerning = alloca i32, align 4
  store %struct._GimpTextStyleEditor* %editor, %struct._GimpTextStyleEditor** %editor.addr, align 8
  store %struct._GtkTextTag* %kerning_tag, %struct._GtkTextTag** %kerning_tag.addr, align 8
  store i32 0, i32* %kerning, align 4
  %0 = load %struct._GtkTextTag*, %struct._GtkTextTag** %kerning_tag.addr, align 8
  %tobool = icmp ne %struct._GtkTextTag* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GtkTextTag*, %struct._GtkTextTag** %kerning_tag.addr, align 8
  %call = call i32 @gimp_text_tag_get_kerning(%struct._GtkTextTag* %1)
  store i32 %call, i32* %kerning, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %kerning_adjustment = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %2, i32 0, i32 17
  %3 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %kerning_adjustment, align 8
  %4 = bitcast %struct._GtkAdjustment* %3 to i8*
  %5 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %6 = bitcast %struct._GimpTextStyleEditor* %5 to i8*
  %call1 = call i32 @g_signal_handlers_block_matched(i8* %4, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkAdjustment*, %struct._GimpTextStyleEditor*)* @gimp_text_style_editor_kerning_changed to i8*), i8* %6)
  %7 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %kerning_adjustment2 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %7, i32 0, i32 17
  %8 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %kerning_adjustment2, align 8
  %9 = load i32, i32* %kerning, align 4
  %conv = sitofp i32 %9 to double
  %div = fdiv double %conv, 1.024000e+03
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %8, double %div)
  %10 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %kerning_adjustment3 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %10, i32 0, i32 17
  %11 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %kerning_adjustment3, align 8
  call void @gtk_adjustment_value_changed(%struct._GtkAdjustment* %11)
  %12 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %kerning_adjustment4 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %12, i32 0, i32 17
  %13 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %kerning_adjustment4, align 8
  %14 = bitcast %struct._GtkAdjustment* %13 to i8*
  %15 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %16 = bitcast %struct._GimpTextStyleEditor* %15 to i8*
  %call5 = call i32 @g_signal_handlers_unblock_matched(i8* %14, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkAdjustment*, %struct._GimpTextStyleEditor*)* @gimp_text_style_editor_kerning_changed to i8*), i8* %16)
  ret void
}

declare void @gtk_text_buffer_get_iter_at_mark(%struct._GtkTextBuffer*, %struct._GtkTextIter*, %struct._GtkTextMark*) #1

declare %struct._GtkTextMark* @gtk_text_buffer_get_insert(%struct._GtkTextBuffer*) #1

declare %struct._GSList* @gtk_text_iter_get_tags(%struct._GtkTextIter*) #1

declare %struct._GSList* @gtk_text_iter_get_toggled_tags(%struct._GtkTextIter*, i32) #1

declare %struct._GSList* @g_slist_find(%struct._GSList*, i8*) #1

declare void @g_slist_free(%struct._GSList*) #1

declare i32 @g_signal_handlers_block_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

declare i32 @g_signal_handlers_unblock_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare i8* @gimp_text_tag_get_font(%struct._GtkTextTag*) #1

declare void @gimp_context_set_font_name(%struct._GimpContext*, i8*) #1

declare void @g_free(i8*) #1

declare void @gimp_rgba_set(%struct._GimpRGB*, double, double, double, double) #1

declare void @gimp_text_tag_get_color(%struct._GtkTextTag*, %struct._GimpRGB*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_style_editor_color_changed(%struct._GimpColorButton* %button, %struct._GimpTextStyleEditor* %editor) #3 {
entry:
  %button.addr = alloca %struct._GimpColorButton*, align 8
  %editor.addr = alloca %struct._GimpTextStyleEditor*, align 8
  %buffer = alloca %struct._GtkTextBuffer*, align 8
  %insert_tags = alloca %struct._GList*, align 8
  %remove_tags = alloca %struct._GList*, align 8
  %start = alloca %struct._GtkTextIter, align 8
  %end = alloca %struct._GtkTextIter, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GimpColorButton* %button, %struct._GimpColorButton** %button.addr, align 8
  store %struct._GimpTextStyleEditor* %editor, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %0 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %buffer1 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %0, i32 0, i32 4
  %1 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer1, align 8
  %2 = bitcast %struct._GimpTextBuffer* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_text_buffer_get_type() #8
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkTextBuffer*
  store %struct._GtkTextBuffer* %3, %struct._GtkTextBuffer** %buffer, align 8
  %4 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %call3 = call i32 @gtk_text_buffer_get_has_selection(%struct._GtkTextBuffer* %4)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %call4 = call i32 @gtk_text_buffer_get_selection_bounds(%struct._GtkTextBuffer* %5, %struct._GtkTextIter* %start, %struct._GtkTextIter* %end)
  %6 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button.addr, align 8
  call void @gimp_color_button_get_color(%struct._GimpColorButton* %6, %struct._GimpRGB* %color)
  %7 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %buffer5 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %7, i32 0, i32 4
  %8 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer5, align 8
  call void @gimp_text_buffer_set_color(%struct._GimpTextBuffer* %8, %struct._GtkTextIter* %start, %struct._GtkTextIter* %end, %struct._GimpRGB* %color)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %call6 = call %struct._GList* @gimp_text_style_editor_list_tags(%struct._GimpTextStyleEditor* %9, %struct._GList** %remove_tags)
  store %struct._GList* %call6, %struct._GList** %insert_tags, align 8
  %10 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %buffer7 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %10, i32 0, i32 4
  %11 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer7, align 8
  %12 = load %struct._GList*, %struct._GList** %insert_tags, align 8
  %13 = load %struct._GList*, %struct._GList** %remove_tags, align 8
  call void @gimp_text_buffer_set_insert_tags(%struct._GimpTextBuffer* %11, %struct._GList* %12, %struct._GList* %13)
  ret void
}

declare void @gimp_color_button_set_color(%struct._GimpColorButton*, %struct._GimpRGB*) #1

declare void @gimp_text_buffer_set_color(%struct._GimpTextBuffer*, %struct._GtkTextIter*, %struct._GtkTextIter*, %struct._GimpRGB*) #1

declare i32 @gimp_text_tag_get_size(%struct._GtkTextTag*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_style_editor_size_changed(%struct._GimpSizeEntry* %entry1, %struct._GimpTextStyleEditor* %editor) #3 {
entry:
  %entry.addr = alloca %struct._GimpSizeEntry*, align 8
  %editor.addr = alloca %struct._GimpTextStyleEditor*, align 8
  %buffer = alloca %struct._GtkTextBuffer*, align 8
  %insert_tags = alloca %struct._GList*, align 8
  %remove_tags = alloca %struct._GList*, align 8
  %start = alloca %struct._GtkTextIter, align 8
  %end = alloca %struct._GtkTextIter, align 8
  %points = alloca double, align 8
  store %struct._GimpSizeEntry* %entry1, %struct._GimpSizeEntry** %entry.addr, align 8
  store %struct._GimpTextStyleEditor* %editor, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %0 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %buffer2 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %0, i32 0, i32 4
  %1 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer2, align 8
  %2 = bitcast %struct._GimpTextBuffer* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_text_buffer_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkTextBuffer*
  store %struct._GtkTextBuffer* %3, %struct._GtkTextBuffer** %buffer, align 8
  %4 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %call4 = call i32 @gtk_text_buffer_get_has_selection(%struct._GtkTextBuffer* %4)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %call5 = call i32 @gtk_text_buffer_get_selection_bounds(%struct._GtkTextBuffer* %5, %struct._GtkTextIter* %start, %struct._GtkTextIter* %end)
  %6 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry.addr, align 8
  %call6 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %6, i32 0)
  %7 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %resolution_y = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %7, i32 0, i32 7
  %8 = load double, double* %resolution_y, align 8
  %call7 = call double @gimp_units_to_points(double %call6, i32 0, double %8)
  store double %call7, double* %points, align 8
  %9 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %buffer8 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %9, i32 0, i32 4
  %10 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer8, align 8
  %11 = load double, double* %points, align 8
  %mul = fmul double 1.024000e+03, %11
  %conv = fptosi double %mul to i32
  call void @gimp_text_buffer_set_size(%struct._GimpTextBuffer* %10, %struct._GtkTextIter* %start, %struct._GtkTextIter* %end, i32 %conv)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %call9 = call %struct._GList* @gimp_text_style_editor_list_tags(%struct._GimpTextStyleEditor* %12, %struct._GList** %remove_tags)
  store %struct._GList* %call9, %struct._GList** %insert_tags, align 8
  %13 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %buffer10 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %13, i32 0, i32 4
  %14 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer10, align 8
  %15 = load %struct._GList*, %struct._GList** %insert_tags, align 8
  %16 = load %struct._GList*, %struct._GList** %remove_tags, align 8
  call void @gimp_text_buffer_set_insert_tags(%struct._GimpTextBuffer* %14, %struct._GList* %15, %struct._GList* %16)
  ret void
}

declare double @gimp_units_to_pixels(double, i32, double) #1

declare void @gimp_size_entry_set_refval(%struct._GimpSizeEntry*, i32, double) #1

declare %struct._GtkWidget* @gimp_size_entry_get_help_widget(%struct._GimpSizeEntry*, i32) #1

declare void @gimp_text_buffer_set_size(%struct._GimpTextBuffer*, %struct._GtkTextIter*, %struct._GtkTextIter*, i32) #1

declare i32 @gimp_text_tag_get_baseline(%struct._GtkTextTag*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_style_editor_baseline_changed(%struct._GtkAdjustment* %adjustment, %struct._GimpTextStyleEditor* %editor) #3 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %editor.addr = alloca %struct._GimpTextStyleEditor*, align 8
  %buffer = alloca %struct._GtkTextBuffer*, align 8
  %start = alloca %struct._GtkTextIter, align 8
  %end = alloca %struct._GtkTextIter, align 8
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store %struct._GimpTextStyleEditor* %editor, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %0 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %buffer1 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %0, i32 0, i32 4
  %1 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer1, align 8
  %2 = bitcast %struct._GimpTextBuffer* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_text_buffer_get_type() #8
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
  %8 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %buffer5 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %8, i32 0, i32 4
  %9 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer5, align 8
  %10 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call6 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %10)
  %mul = fmul double %call6, 1.024000e+03
  %conv = fptosi double %mul to i32
  call void @gimp_text_buffer_set_baseline(%struct._GimpTextBuffer* %9, %struct._GtkTextIter* %start, %struct._GtkTextIter* %end, i32 %conv)
  ret void
}

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #1

declare void @gtk_adjustment_value_changed(%struct._GtkAdjustment*) #1

declare void @gtk_text_buffer_get_end_iter(%struct._GtkTextBuffer*, %struct._GtkTextIter*) #1

declare void @gimp_text_buffer_set_baseline(%struct._GimpTextBuffer*, %struct._GtkTextIter*, %struct._GtkTextIter*, i32) #1

declare double @gtk_adjustment_get_value(%struct._GtkAdjustment*) #1

declare i32 @gimp_text_tag_get_kerning(%struct._GtkTextTag*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_style_editor_kerning_changed(%struct._GtkAdjustment* %adjustment, %struct._GimpTextStyleEditor* %editor) #3 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %editor.addr = alloca %struct._GimpTextStyleEditor*, align 8
  %buffer = alloca %struct._GtkTextBuffer*, align 8
  %start = alloca %struct._GtkTextIter, align 8
  %end = alloca %struct._GtkTextIter, align 8
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store %struct._GimpTextStyleEditor* %editor, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %0 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %buffer1 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %0, i32 0, i32 4
  %1 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer1, align 8
  %2 = bitcast %struct._GimpTextBuffer* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_text_buffer_get_type() #8
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
  %9 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %buffer6 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %9, i32 0, i32 4
  %10 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer6, align 8
  %11 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call7 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %11)
  %mul = fmul double %call7, 1.024000e+03
  %conv = fptosi double %mul to i32
  call void @gimp_text_buffer_set_kerning(%struct._GimpTextBuffer* %10, %struct._GtkTextIter* %start, %struct._GtkTextIter* %end, i32 %conv)
  ret void
}

declare i32 @gtk_text_iter_forward_char(%struct._GtkTextIter*) #1

declare void @gimp_text_buffer_set_kerning(%struct._GimpTextBuffer*, %struct._GtkTextIter*, %struct._GtkTextIter*, i32) #1

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare void @g_object_unref(i8*) #1

declare void @g_list_free(%struct._GList*) #1

declare i8* @g_value_get_object(%struct._GValue*) #1

declare i8* @g_value_dup_object(%struct._GValue*) #1

declare double @g_value_get_double(%struct._GValue*) #1

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
declare void @llvm.va_start(i8*) #7

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #7

declare void @g_value_set_object(%struct._GValue*, i8*) #1

declare void @g_value_set_double(%struct._GValue*, double) #1

declare void @gtk_orientable_set_orientation(%struct._GtkOrientable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_orientable_get_type() #2

declare void @gtk_box_set_spacing(%struct._GtkBox*, i32) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare %struct._GtkWidget* @gimp_container_entry_new(%struct._GimpContainer*, %struct._GimpContext*, i32, i32) #1

declare %struct._GtkWidget* @gimp_size_entry_new(i32, i32, i8*, i32, i32, i32, i32, i32) #1

declare void @gtk_table_set_col_spacing(%struct._GtkTable*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #2

declare %struct._GtkWidget* @gtk_button_new() #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_style_editor_clear_tags(%struct._GtkButton* %button, %struct._GimpTextStyleEditor* %editor) #3 {
entry:
  %button.addr = alloca %struct._GtkButton*, align 8
  %editor.addr = alloca %struct._GimpTextStyleEditor*, align 8
  %buffer = alloca %struct._GtkTextBuffer*, align 8
  %start = alloca %struct._GtkTextIter, align 8
  %end = alloca %struct._GtkTextIter, align 8
  store %struct._GtkButton* %button, %struct._GtkButton** %button.addr, align 8
  store %struct._GimpTextStyleEditor* %editor, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %0 = load %struct._GimpTextStyleEditor*, %struct._GimpTextStyleEditor** %editor.addr, align 8
  %buffer1 = getelementptr inbounds %struct._GimpTextStyleEditor, %struct._GimpTextStyleEditor* %0, i32 0, i32 4
  %1 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer1, align 8
  %2 = bitcast %struct._GimpTextBuffer* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_text_buffer_get_type() #8
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkTextBuffer*
  store %struct._GtkTextBuffer* %3, %struct._GtkTextBuffer** %buffer, align 8
  %4 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %call3 = call i32 @gtk_text_buffer_get_has_selection(%struct._GtkTextBuffer* %4)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %call4 = call i32 @gtk_text_buffer_get_selection_bounds(%struct._GtkTextBuffer* %5, %struct._GtkTextIter* %start, %struct._GtkTextIter* %end)
  %6 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  call void @gtk_text_buffer_begin_user_action(%struct._GtkTextBuffer* %6)
  %7 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  call void @gtk_text_buffer_remove_all_tags(%struct._GtkTextBuffer* %7, %struct._GtkTextIter* %start, %struct._GtkTextIter* %end)
  %8 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  call void @gtk_text_buffer_end_user_action(%struct._GtkTextBuffer* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._GtkWidget* @gimp_color_panel_new(i8*, %struct._GimpRGB*, i32, i32, i32) #1

declare void @gtk_box_pack_end(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkObject* @gtk_adjustment_new(double, double, double, double, double, double) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_adjustment_get_type() #2

declare %struct._GtkWidget* @gtk_spin_button_new(%struct._GtkAdjustment*, double, i32) #1

declare void @gtk_entry_set_width_chars(%struct._GtkEntry*, i32) #1

declare void @gtk_text_buffer_remove_all_tags(%struct._GtkTextBuffer*, %struct._GtkTextIter*, %struct._GtkTextIter*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
