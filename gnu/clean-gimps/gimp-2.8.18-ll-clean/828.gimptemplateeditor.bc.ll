; ModuleID = './app/widgets/gimptemplateeditor.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpTemplateEditorClass = type { %struct._GtkBoxClass }
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
%struct._GimpTemplateEditor = type { %struct._GtkBox }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkOrientable = type opaque
%struct._GimpTemplate = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
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
%struct._GimpContainer = type opaque
%struct._GimpContext = type opaque
%struct._GimpTemplateEditorPrivate = type { %struct._GimpTemplate*, %struct._GtkWidget*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkExpander = type { %struct._GtkBin, %struct._GtkExpanderPrivate* }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkExpanderPrivate = type opaque
%struct._GtkTextBuffer = type { %struct._GObject, %struct._GtkTextTagTable*, %struct._GtkTextBTree*, %struct._GSList*, %struct._GSList*, %struct._GtkTextLogAttrCache*, i32, i8 }
%struct._GtkTextTagTable = type { %struct._GObject, %struct._GHashTable*, %struct._GSList*, i32, %struct._GSList* }
%struct._GHashTable = type opaque
%struct._GtkTextBTree = type opaque
%struct._GtkTextLogAttrCache = type opaque
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._PangoAttrList = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GtkLabelSelectionInfo = type opaque
%struct._GimpSizeEntry = type { %struct._GtkTable, %struct._GSList*, i32, %struct._GtkWidget*, i32, i32, i32, i32, i32 }
%struct._GtkSpinButton = type { %struct._GtkEntry, %struct._GtkAdjustment*, %struct._GdkDrawable*, i32, double, double, i32, i24 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkScrolledWindow = type { %struct._GtkBin, %struct._GtkWidget*, %struct._GtkWidget*, i16, i16 }
%struct._GtkTextView = type { %struct._GtkContainer, %struct._GtkTextLayout*, %struct._GtkTextBuffer*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._PangoTabArray*, i8, %struct._GtkTextWindow*, %struct._GtkTextWindow*, %struct._GtkTextWindow*, %struct._GtkTextWindow*, %struct._GtkTextWindow*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, i32, i32, i32, i32, i32, i32, %struct._GtkTextMark*, i32, %struct._GtkTextMark*, i32, i32, i32, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._GSList*, %struct._GtkTextPendingScroll*, i32 }
%struct._GtkTextLayout = type opaque
%struct._PangoTabArray = type opaque
%struct._GtkTextWindow = type opaque
%struct._GtkTextMark = type { %struct._GObject, i8* }
%struct._GtkTextPendingScroll = type opaque
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkRadioButton = type { %struct._GtkCheckButton, %struct._GSList* }
%struct._GtkCheckButton = type { %struct._GtkToggleButton }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }

@gimp_template_editor_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"GimpTemplateEditor\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_template_editor_new = private unnamed_addr constant [25 x i8] c"gimp_template_editor_new\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"!edit_template || GIMP_IS_GIMP (gimp)\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"template\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"_Name:\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"stock-id\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"_Icon:\00", align 1
@__func__.gimp_template_editor_get_template = private unnamed_addr constant [34 x i8] c"gimp_template_editor_get_template\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"GIMP_IS_TEMPLATE_EDITOR (editor)\00", align 1
@__func__.gimp_template_editor_show_advanced = private unnamed_addr constant [35 x i8] c"gimp_template_editor_show_advanced\00", align 1
@__func__.gimp_template_editor_get_size_se = private unnamed_addr constant [33 x i8] c"gimp_template_editor_get_size_se\00", align 1
@__func__.gimp_template_editor_get_resolution_se = private unnamed_addr constant [39 x i8] c"gimp_template_editor_get_resolution_se\00", align 1
@__func__.gimp_template_editor_get_resolution_chain = private unnamed_addr constant [42 x i8] c"gimp_template_editor_get_resolution_chain\00", align 1
@gimp_template_editor_parent_class = internal global i8* null, align 8
@GimpTemplateEditor_private_offset = internal global i32 0, align 4
@.str.9 = private unnamed_addr constant [21 x i8] c"gimptemplateeditor.c\00", align 1
@__func__.gimp_template_editor_constructed = private unnamed_addr constant [33 x i8] c"gimp_template_editor_constructed\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"private->template != NULL\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"Image Size\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"_Width:\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"H_eight:\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"unit\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"gimp\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"<b>%s</b>\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"_Advanced Options\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"use-markup\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"use-underline\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"<expander>\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"_X resolution:\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"_Y resolution:\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"pixels/%s\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"xresolution\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"yresolution\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"resolution-unit\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"image-type\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"Color _space:\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"fill-type\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"_Fill with:\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"Comme_nt:\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"notify\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"%d \C3\97 %d pixel\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"%d \C3\97 %d pixels\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"%d \C3\97 %d ppi, %s\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"%d ppi, %s\00", align 1
@.str.42 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"property\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_template_editor_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_template_editor_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_template_editor_get_type.g_define_type_id__volatile to i8*))
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
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 824, void (i8*, i8*)* bitcast (void (i8*)* @gimp_template_editor_class_intern_init to void (i8*, i8*)*), i32 128, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpTemplateEditor*)* @gimp_template_editor_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_template_editor_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_template_editor_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_template_editor_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_template_editor_parent_class, align 8
  %1 = load i32, i32* @GimpTemplateEditor_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpTemplateEditor_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpTemplateEditorClass*
  call void @gimp_template_editor_class_init(%struct._GimpTemplateEditorClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_template_editor_init(%struct._GimpTemplateEditor* %editor) #3 {
entry:
  %editor.addr = alloca %struct._GimpTemplateEditor*, align 8
  store %struct._GimpTemplateEditor* %editor, %struct._GimpTemplateEditor** %editor.addr, align 8
  %0 = load %struct._GimpTemplateEditor*, %struct._GimpTemplateEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpTemplateEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_orientable_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkOrientable*
  call void @gtk_orientable_set_orientation(%struct._GtkOrientable* %2, i32 1)
  %3 = load %struct._GimpTemplateEditor*, %struct._GimpTemplateEditor** %editor.addr, align 8
  %4 = bitcast %struct._GimpTemplateEditor* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_box_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkBox*
  call void @gtk_box_set_spacing(%struct._GtkBox* %5, i32 12)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_template_editor_new(%struct._GimpTemplate* %template, %struct._Gimp* %gimp, i32 %edit_template) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %template.addr = alloca %struct._GimpTemplate*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %edit_template.addr = alloca i32, align 4
  %editor = alloca %struct._GimpTemplateEditor*, align 8
  %private = alloca %struct._GimpTemplateEditorPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %table = alloca %struct._GtkWidget*, align 8
  %entry20 = alloca %struct._GtkWidget*, align 8
  %icon_picker = alloca %struct._GtkWidget*, align 8
  store %struct._GimpTemplate* %template, %struct._GimpTemplate** %template.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i32 %edit_template, i32* %edit_template.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %edit_template.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then.9

lor.lhs.false:                                    ; preds = %do.body
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %2 = bitcast %struct._Gimp* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #8
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool1 = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool1, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %lor.lhs.false
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool2 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %8, %9
  br i1 %cmp, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #9
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %13, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7, %do.body
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_template_editor_new, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  %call12 = call i64 @gimp_template_editor_get_type() #8
  %14 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %call13 = call i8* (i64, i8*, ...) @g_object_new(i64 %call12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), %struct._GimpTemplate* %14, i8* null)
  %15 = bitcast i8* %call13 to %struct._GimpTemplateEditor*
  store %struct._GimpTemplateEditor* %15, %struct._GimpTemplateEditor** %editor, align 8
  %16 = load %struct._GimpTemplateEditor*, %struct._GimpTemplateEditor** %editor, align 8
  %17 = bitcast %struct._GimpTemplateEditor* %16 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_template_editor_get_type() #8
  %call15 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %17, i64 %call14)
  %18 = bitcast i8* %call15 to %struct._GimpTemplateEditorPrivate*
  store %struct._GimpTemplateEditorPrivate* %18, %struct._GimpTemplateEditorPrivate** %private, align 8
  %19 = load i32, i32* %edit_template.addr, align 4
  %tobool16 = icmp ne i32 %19, 0
  br i1 %tobool16, label %if.then.17, label %if.end.45

if.then.17:                                       ; preds = %do.end
  %call22 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 2, i32 0)
  store %struct._GtkWidget* %call22, %struct._GtkWidget** %table, align 8
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_table_get_type() #8
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call23)
  %22 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %22, i32 6)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_table_get_type() #8
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call25)
  %25 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %25, i32 6)
  %26 = load %struct._GimpTemplateEditor*, %struct._GimpTemplateEditor** %editor, align 8
  %27 = bitcast %struct._GimpTemplateEditor* %26 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_box_get_type() #8
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call27)
  %28 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkBox*
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %28, %struct._GtkWidget* %29, i32 0, i32 0, i32 0)
  %30 = load %struct._GimpTemplateEditor*, %struct._GimpTemplateEditor** %editor, align 8
  %31 = bitcast %struct._GimpTemplateEditor* %30 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_box_get_type() #8
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call29)
  %32 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkBox*
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_reorder_child(%struct._GtkBox* %32, %struct._GtkWidget* %33, i32 0)
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %34)
  %35 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %template31 = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %35, i32 0, i32 0
  %36 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template31, align 8
  %37 = bitcast %struct._GimpTemplate* %36 to %struct._GTypeInstance*
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 80)
  %38 = bitcast %struct._GTypeInstance* %call32 to %struct._GObject*
  %call33 = call %struct._GtkWidget* @gimp_prop_entry_new(%struct._GObject* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 128)
  store %struct._GtkWidget* %call33, %struct._GtkWidget** %entry20, align 8
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_table_get_type() #8
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call34)
  %41 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkTable*
  %call36 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0)) #7
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %entry20, align 8
  %call37 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %41, i32 0, i32 0, i8* %call36, float 1.000000e+00, float 5.000000e-01, %struct._GtkWidget* %42, i32 1, i32 0)
  %43 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %template38 = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %43, i32 0, i32 0
  %44 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template38, align 8
  %45 = bitcast %struct._GimpTemplate* %44 to %struct._GTypeInstance*
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 80)
  %46 = bitcast %struct._GTypeInstance* %call39 to %struct._GObject*
  %47 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call40 = call %struct._GtkWidget* @gimp_prop_icon_picker_new(%struct._GObject* %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %47)
  store %struct._GtkWidget* %call40, %struct._GtkWidget** %icon_picker, align 8
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call41 = call i64 @gtk_table_get_type() #8
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call41)
  %50 = bitcast %struct._GTypeInstance* %call42 to %struct._GtkTable*
  %call43 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0)) #7
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %icon_picker, align 8
  %call44 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %50, i32 0, i32 1, i8* %call43, float 1.000000e+00, float 5.000000e-01, %struct._GtkWidget* %51, i32 1, i32 1)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.17, %do.end
  %52 = load %struct._GimpTemplateEditor*, %struct._GimpTemplateEditor** %editor, align 8
  %53 = bitcast %struct._GimpTemplateEditor* %52 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_widget_get_type() #8
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call46)
  %54 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkWidget*
  store %struct._GtkWidget* %54, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.45, %if.else.10
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %55
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #2

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare void @gtk_box_reorder_child(%struct._GtkBox*, %struct._GtkWidget*, i32) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_prop_entry_new(%struct._GObject*, i8*, i32) #1

declare %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable*, i32, i32, i8*, float, float, %struct._GtkWidget*, i32, i32) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

declare %struct._GtkWidget* @gimp_prop_icon_picker_new(%struct._GObject*, i8*, %struct._Gimp*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind uwtable
define %struct._GimpTemplate* @gimp_template_editor_get_template(%struct._GimpTemplateEditor* %editor) #3 {
entry:
  %retval = alloca %struct._GimpTemplate*, align 8
  %editor.addr = alloca %struct._GimpTemplateEditor*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTemplateEditor* %editor, %struct._GimpTemplateEditor** %editor.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTemplateEditor*, %struct._GimpTemplateEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpTemplateEditor* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_template_editor_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_template_editor_get_template, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GimpTemplate* null, %struct._GimpTemplate** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpTemplateEditor*, %struct._GimpTemplateEditor** %editor.addr, align 8
  %14 = bitcast %struct._GimpTemplateEditor* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_template_editor_get_type() #8
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpTemplateEditorPrivate*
  %template = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %15, i32 0, i32 0
  %16 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  store %struct._GimpTemplate* %16, %struct._GimpTemplate** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load %struct._GimpTemplate*, %struct._GimpTemplate** %retval
  ret %struct._GimpTemplate* %17
}

; Function Attrs: nounwind uwtable
define void @gimp_template_editor_show_advanced(%struct._GimpTemplateEditor* %editor, i32 %expanded) #3 {
entry:
  %editor.addr = alloca %struct._GimpTemplateEditor*, align 8
  %expanded.addr = alloca i32, align 4
  %private = alloca %struct._GimpTemplateEditorPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTemplateEditor* %editor, %struct._GimpTemplateEditor** %editor.addr, align 8
  store i32 %expanded, i32* %expanded.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTemplateEditor*, %struct._GimpTemplateEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpTemplateEditor* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_template_editor_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_template_editor_show_advanced, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpTemplateEditor*, %struct._GimpTemplateEditor** %editor.addr, align 8
  %14 = bitcast %struct._GimpTemplateEditor* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_template_editor_get_type() #8
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpTemplateEditorPrivate*
  store %struct._GimpTemplateEditorPrivate* %15, %struct._GimpTemplateEditorPrivate** %private, align 8
  %16 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %expander = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %16, i32 0, i32 3
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %expander, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_expander_get_type() #8
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call13)
  %19 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkExpander*
  %20 = load i32, i32* %expanded.addr, align 4
  call void @gtk_expander_set_expanded(%struct._GtkExpander* %19, i32 %20)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

declare void @gtk_expander_set_expanded(%struct._GtkExpander*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_expander_get_type() #2

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_template_editor_get_size_se(%struct._GimpTemplateEditor* %editor) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %editor.addr = alloca %struct._GimpTemplateEditor*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTemplateEditor* %editor, %struct._GimpTemplateEditor** %editor.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTemplateEditor*, %struct._GimpTemplateEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpTemplateEditor* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_template_editor_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_template_editor_get_size_se, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpTemplateEditor*, %struct._GimpTemplateEditor** %editor.addr, align 8
  %14 = bitcast %struct._GimpTemplateEditor* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_template_editor_get_type() #8
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpTemplateEditorPrivate*
  %size_se = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %15, i32 0, i32 4
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %size_se, align 8
  store %struct._GtkWidget* %16, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %17
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_template_editor_get_resolution_se(%struct._GimpTemplateEditor* %editor) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %editor.addr = alloca %struct._GimpTemplateEditor*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTemplateEditor* %editor, %struct._GimpTemplateEditor** %editor.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTemplateEditor*, %struct._GimpTemplateEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpTemplateEditor* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_template_editor_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_template_editor_get_resolution_se, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpTemplateEditor*, %struct._GimpTemplateEditor** %editor.addr, align 8
  %14 = bitcast %struct._GimpTemplateEditor* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_template_editor_get_type() #8
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpTemplateEditorPrivate*
  %resolution_se = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %15, i32 0, i32 8
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %resolution_se, align 8
  store %struct._GtkWidget* %16, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %17
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_template_editor_get_resolution_chain(%struct._GimpTemplateEditor* %editor) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %editor.addr = alloca %struct._GimpTemplateEditor*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTemplateEditor* %editor, %struct._GimpTemplateEditor** %editor.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTemplateEditor*, %struct._GimpTemplateEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpTemplateEditor* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_template_editor_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__func__.gimp_template_editor_get_resolution_chain, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpTemplateEditor*, %struct._GimpTemplateEditor** %editor.addr, align 8
  %14 = bitcast %struct._GimpTemplateEditor* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_template_editor_get_type() #8
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpTemplateEditorPrivate*
  %chain_button = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %15, i32 0, i32 9
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %chain_button, align 8
  store %struct._GtkWidget* %16, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %17
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_template_editor_class_init(%struct._GimpTemplateEditorClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpTemplateEditorClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpTemplateEditorClass* %klass, %struct._GimpTemplateEditorClass** %klass.addr, align 8
  %0 = load %struct._GimpTemplateEditorClass*, %struct._GimpTemplateEditorClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpTemplateEditorClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_template_editor_constructed, void (%struct._GObject*)** %constructed, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_template_editor_finalize, void (%struct._GObject*)** %finalize, align 8
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_template_editor_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_template_editor_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call1 = call i64 @gimp_template_get_type() #8
  %call2 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* null, i64 %call1, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %7, i32 1, %struct._GParamSpec* %call2)
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %9 = bitcast %struct._GObjectClass* %8 to i8*
  call void @g_type_class_add_private(i8* %9, i64 80)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_template_editor_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %editor = alloca %struct._GimpTemplateEditor*, align 8
  %private = alloca %struct._GimpTemplateEditorPrivate*, align 8
  %template = alloca %struct._GimpTemplate*, align 8
  %aspect_box = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %adjustment = alloca %struct._GtkObject*, align 8
  %width = alloca %struct._GtkWidget*, align 8
  %height = alloca %struct._GtkWidget*, align 8
  %xres = alloca %struct._GtkWidget*, align 8
  %yres = alloca %struct._GtkWidget*, align 8
  %combo = alloca %struct._GtkWidget*, align 8
  %scrolled_window = alloca %struct._GtkWidget*, align 8
  %text_view = alloca %struct._GtkWidget*, align 8
  %text_buffer = alloca %struct._GtkTextBuffer*, align 8
  %focus_chain = alloca %struct._GList*, align 8
  %text = alloca i8*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_template_editor_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTemplateEditor*
  store %struct._GimpTemplateEditor* %2, %struct._GimpTemplateEditor** %editor, align 8
  %3 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %4 = bitcast %struct._GObject* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_template_editor_get_type() #8
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpTemplateEditorPrivate*
  store %struct._GimpTemplateEditorPrivate* %5, %struct._GimpTemplateEditorPrivate** %private, align 8
  store %struct._GList* null, %struct._GList** %focus_chain, align 8
  %6 = load i8*, i8** @gimp_template_editor_parent_class, align 8
  %7 = bitcast i8* %6 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 80)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 9
  %9 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %9, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i8*, i8** @gimp_template_editor_parent_class, align 8
  %11 = bitcast i8* %10 to %struct._GTypeClass*
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %11, i64 80)
  %12 = bitcast %struct._GTypeClass* %call5 to %struct._GObjectClass*
  %constructed6 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 9
  %13 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed6, align 8
  %14 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %13(%struct._GObject* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %15 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %template7 = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %15, i32 0, i32 0
  %16 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template7, align 8
  %cmp = icmp ne %struct._GimpTemplate* %16, null
  br i1 %cmp, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body
  br label %if.end.9

if.else:                                          ; preds = %do.body
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0), i32 153, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_template_editor_constructed, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i32 0, i32 0)) #10
  unreachable

if.end.9:                                         ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.9
  %17 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %template10 = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %17, i32 0, i32 0
  %18 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template10, align 8
  store %struct._GimpTemplate* %18, %struct._GimpTemplate** %template, align 8
  %call11 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0)) #7
  %call12 = call %struct._GtkWidget* @gimp_frame_new(i8* %call11)
  store %struct._GtkWidget* %call12, %struct._GtkWidget** %frame, align 8
  %19 = load %struct._GimpTemplateEditor*, %struct._GimpTemplateEditor** %editor, align 8
  %20 = bitcast %struct._GimpTemplateEditor* %19 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_box_get_type() #8
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call13)
  %21 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkBox*
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %21, %struct._GtkWidget* %22, i32 0, i32 0, i32 0)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %23)
  %call15 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 2, i32 0)
  store %struct._GtkWidget* %call15, %struct._GtkWidget** %table, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_table_get_type() #8
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call16)
  %26 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkTable*
  call void @gtk_table_set_col_spacing(%struct._GtkTable* %26, i32 0, i32 6)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_table_get_type() #8
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call18)
  %29 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %29, i32 6)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_table_get_type() #8
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call20)
  %32 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkTable*
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %32, i32 0, i32 2)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_container_get_type() #8
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call22)
  %35 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkContainer*
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %35, %struct._GtkWidget* %36)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %37)
  %call24 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adjustment, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00, double 1.000000e+00, i32 2)
  store %struct._GtkWidget* %call24, %struct._GtkWidget** %width, align 8
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %width, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_entry_get_type() #8
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call25)
  %40 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkEntry*
  call void @gtk_entry_set_width_chars(%struct._GtkEntry* %40, i32 8)
  %call27 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adjustment, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00, double 1.000000e+00, i32 2)
  store %struct._GtkWidget* %call27, %struct._GtkWidget** %height, align 8
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %height, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_entry_get_type() #8
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call28)
  %43 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkEntry*
  call void @gtk_entry_set_width_chars(%struct._GtkEntry* %43, i32 8)
  %call30 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0)) #7
  %call31 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call30)
  store %struct._GtkWidget* %call31, %struct._GtkWidget** %label, align 8
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %45 = bitcast %struct._GtkWidget* %44 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_misc_get_type() #8
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call32)
  %46 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %46, float 0.000000e+00, float 5.000000e-01)
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %48 = bitcast %struct._GtkWidget* %47 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_label_get_type() #8
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call34)
  %49 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkLabel*
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %width, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %49, %struct._GtkWidget* %50)
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %52 = bitcast %struct._GtkWidget* %51 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_table_get_type() #8
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call36)
  %53 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkTable*
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach(%struct._GtkTable* %53, %struct._GtkWidget* %54, i32 0, i32 1, i32 0, i32 1, i32 6, i32 6, i32 0, i32 0)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %55)
  %call38 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0)) #7
  %call39 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call38)
  store %struct._GtkWidget* %call39, %struct._GtkWidget** %label, align 8
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %57 = bitcast %struct._GtkWidget* %56 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_misc_get_type() #8
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call40)
  %58 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %58, float 0.000000e+00, float 5.000000e-01)
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %60 = bitcast %struct._GtkWidget* %59 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_label_get_type() #8
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call42)
  %61 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkLabel*
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %height, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %61, %struct._GtkWidget* %62)
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %64 = bitcast %struct._GtkWidget* %63 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_table_get_type() #8
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call44)
  %65 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkTable*
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach(%struct._GtkTable* %65, %struct._GtkWidget* %66, i32 0, i32 1, i32 1, i32 2, i32 6, i32 6, i32 0, i32 0)
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %67)
  %call46 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 0)
  store %struct._GtkWidget* %call46, %struct._GtkWidget** %hbox, align 8
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %69 = bitcast %struct._GtkWidget* %68 to %struct._GTypeInstance*
  %call47 = call i64 @gtk_table_get_type() #8
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call47)
  %70 = bitcast %struct._GTypeInstance* %call48 to %struct._GtkTable*
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %70, %struct._GtkWidget* %71, i32 1, i32 2, i32 0, i32 2)
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %72)
  %73 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  %call49 = call i32 @gimp_template_get_unit(%struct._GimpTemplate* %73)
  %call50 = call i8* @gettext(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0)) #7
  %call51 = call %struct._GtkWidget* @gimp_size_entry_new(i32 0, i32 %call49, i8* %call50, i32 1, i32 0, i32 0, i32 8, i32 1)
  %74 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %size_se = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %74, i32 0, i32 4
  store %struct._GtkWidget* %call51, %struct._GtkWidget** %size_se, align 8
  %75 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %size_se52 = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %75, i32 0, i32 4
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %size_se52, align 8
  %77 = bitcast %struct._GtkWidget* %76 to %struct._GTypeInstance*
  %call53 = call i64 @gtk_table_get_type() #8
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %77, i64 %call53)
  %78 = bitcast %struct._GTypeInstance* %call54 to %struct._GtkTable*
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %78, i32 0, i32 2)
  %79 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %size_se55 = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %79, i32 0, i32 4
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %size_se55, align 8
  %81 = bitcast %struct._GtkWidget* %80 to %struct._GTypeInstance*
  %call56 = call i64 @gtk_table_get_type() #8
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call56)
  %82 = bitcast %struct._GTypeInstance* %call57 to %struct._GtkTable*
  call void @gtk_table_set_col_spacing(%struct._GtkTable* %82, i32 1, i32 6)
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %84 = bitcast %struct._GtkWidget* %83 to %struct._GTypeInstance*
  %call58 = call i64 @gtk_box_get_type() #8
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %84, i64 %call58)
  %85 = bitcast %struct._GTypeInstance* %call59 to %struct._GtkBox*
  %86 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %size_se60 = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %86, i32 0, i32 4
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %size_se60, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %85, %struct._GtkWidget* %87, i32 0, i32 0, i32 0)
  %88 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %size_se61 = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %88, i32 0, i32 4
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %size_se61, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %89)
  %90 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %size_se62 = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %90, i32 0, i32 4
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %size_se62, align 8
  %92 = bitcast %struct._GtkWidget* %91 to %struct._GTypeInstance*
  %call63 = call i64 @gimp_size_entry_get_type() #8
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %92, i64 %call63)
  %93 = bitcast %struct._GTypeInstance* %call64 to %struct._GimpSizeEntry*
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %height, align 8
  %95 = bitcast %struct._GtkWidget* %94 to %struct._GTypeInstance*
  %call65 = call i64 @gtk_spin_button_get_type() #8
  %call66 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %95, i64 %call65)
  %96 = bitcast %struct._GTypeInstance* %call66 to %struct._GtkSpinButton*
  call void @gimp_size_entry_add_field(%struct._GimpSizeEntry* %93, %struct._GtkSpinButton* %96, %struct._GtkSpinButton* null)
  %97 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %size_se67 = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %97, i32 0, i32 4
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** %size_se67, align 8
  %99 = bitcast %struct._GtkWidget* %98 to %struct._GTypeInstance*
  %call68 = call i64 @gtk_table_get_type() #8
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %99, i64 %call68)
  %100 = bitcast %struct._GTypeInstance* %call69 to %struct._GtkTable*
  %101 = load %struct._GtkWidget*, %struct._GtkWidget** %height, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %100, %struct._GtkWidget* %101, i32 0, i32 1, i32 1, i32 2)
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %height, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %102)
  %103 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %size_se70 = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %103, i32 0, i32 4
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %size_se70, align 8
  %105 = bitcast %struct._GtkWidget* %104 to %struct._GTypeInstance*
  %call71 = call i64 @gimp_size_entry_get_type() #8
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %105, i64 %call71)
  %106 = bitcast %struct._GTypeInstance* %call72 to %struct._GimpSizeEntry*
  %107 = load %struct._GtkWidget*, %struct._GtkWidget** %width, align 8
  %108 = bitcast %struct._GtkWidget* %107 to %struct._GTypeInstance*
  %call73 = call i64 @gtk_spin_button_get_type() #8
  %call74 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %108, i64 %call73)
  %109 = bitcast %struct._GTypeInstance* %call74 to %struct._GtkSpinButton*
  call void @gimp_size_entry_add_field(%struct._GimpSizeEntry* %106, %struct._GtkSpinButton* %109, %struct._GtkSpinButton* null)
  %110 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %size_se75 = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %110, i32 0, i32 4
  %111 = load %struct._GtkWidget*, %struct._GtkWidget** %size_se75, align 8
  %112 = bitcast %struct._GtkWidget* %111 to %struct._GTypeInstance*
  %call76 = call i64 @gtk_table_get_type() #8
  %call77 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %112, i64 %call76)
  %113 = bitcast %struct._GTypeInstance* %call77 to %struct._GtkTable*
  %114 = load %struct._GtkWidget*, %struct._GtkWidget** %width, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %113, %struct._GtkWidget* %114, i32 0, i32 1, i32 0, i32 1)
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %width, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %115)
  %116 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  %117 = bitcast %struct._GimpTemplate* %116 to %struct._GTypeInstance*
  %call78 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %117, i64 80)
  %118 = bitcast %struct._GTypeInstance* %call78 to %struct._GObject*
  %119 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %size_se79 = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %119, i32 0, i32 4
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %size_se79, align 8
  %121 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  %call80 = call double @gimp_template_get_resolution_x(%struct._GimpTemplate* %121)
  %122 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  %call81 = call double @gimp_template_get_resolution_y(%struct._GimpTemplate* %122)
  %call82 = call i32 @gimp_prop_coordinates_connect(%struct._GObject* %118, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), %struct._GtkWidget* %120, %struct._GtkWidget* null, double %call80, double %call81)
  %call83 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 12)
  store %struct._GtkWidget* %call83, %struct._GtkWidget** %hbox, align 8
  %123 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %124 = bitcast %struct._GtkWidget* %123 to %struct._GTypeInstance*
  %call84 = call i64 @gtk_table_get_type() #8
  %call85 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %124, i64 %call84)
  %125 = bitcast %struct._GTypeInstance* %call85 to %struct._GtkTable*
  %126 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %125, %struct._GtkWidget* %126, i32 1, i32 3, i32 2, i32 3)
  %127 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %127)
  %call86 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 0)
  store %struct._GtkWidget* %call86, %struct._GtkWidget** %vbox, align 8
  %128 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %129 = bitcast %struct._GtkWidget* %128 to %struct._GTypeInstance*
  %call87 = call i64 @gtk_box_get_type() #8
  %call88 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %129, i64 %call87)
  %130 = bitcast %struct._GTypeInstance* %call88 to %struct._GtkBox*
  %131 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %130, %struct._GtkWidget* %131, i32 0, i32 0, i32 0)
  %132 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %132)
  %call89 = call i64 @gimp_aspect_type_get_type() #8
  %133 = load %struct._GimpTemplateEditor*, %struct._GimpTemplateEditor** %editor, align 8
  %134 = bitcast %struct._GimpTemplateEditor* %133 to i8*
  %135 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %aspect_button = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %135, i32 0, i32 1
  %call90 = call %struct._GtkWidget* @gimp_enum_stock_box_new(i64 %call89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i32 1, void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpTemplateEditor*)* @gimp_template_editor_aspect_callback to void ()*), i8* %134, %struct._GtkWidget** %aspect_button)
  store %struct._GtkWidget* %call90, %struct._GtkWidget** %aspect_box, align 8
  %136 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %aspect_button91 = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %136, i32 0, i32 1
  %137 = load %struct._GtkWidget*, %struct._GtkWidget** %aspect_button91, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %137)
  %138 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %139 = bitcast %struct._GtkWidget* %138 to %struct._GTypeInstance*
  %call92 = call i64 @gtk_box_get_type() #8
  %call93 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %139, i64 %call92)
  %140 = bitcast %struct._GTypeInstance* %call93 to %struct._GtkBox*
  %141 = load %struct._GtkWidget*, %struct._GtkWidget** %aspect_box, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %140, %struct._GtkWidget* %141, i32 0, i32 0, i32 0)
  %142 = load %struct._GtkWidget*, %struct._GtkWidget** %aspect_box, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %142)
  %call94 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 2)
  store %struct._GtkWidget* %call94, %struct._GtkWidget** %vbox, align 8
  %143 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %144 = bitcast %struct._GtkWidget* %143 to %struct._GTypeInstance*
  %call95 = call i64 @gtk_box_get_type() #8
  %call96 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %144, i64 %call95)
  %145 = bitcast %struct._GTypeInstance* %call96 to %struct._GtkBox*
  %146 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %145, %struct._GtkWidget* %146, i32 1, i32 1, i32 0)
  %147 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %147)
  %call97 = call %struct._GtkWidget* @gtk_label_new(i8* null)
  %148 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %pixel_label = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %148, i32 0, i32 6
  store %struct._GtkWidget* %call97, %struct._GtkWidget** %pixel_label, align 8
  %149 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %pixel_label98 = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %149, i32 0, i32 6
  %150 = load %struct._GtkWidget*, %struct._GtkWidget** %pixel_label98, align 8
  %151 = bitcast %struct._GtkWidget* %150 to %struct._GTypeInstance*
  %call99 = call i64 @gtk_label_get_type() #8
  %call100 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %151, i64 %call99)
  %152 = bitcast %struct._GTypeInstance* %call100 to %struct._GtkLabel*
  call void (%struct._GtkLabel*, ...) @gimp_label_set_attributes(%struct._GtkLabel* %152, i32 15, double 0x3FEAAAAAAAAAA97E, i32 -1)
  %153 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %pixel_label101 = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %153, i32 0, i32 6
  %154 = load %struct._GtkWidget*, %struct._GtkWidget** %pixel_label101, align 8
  %155 = bitcast %struct._GtkWidget* %154 to %struct._GTypeInstance*
  %call102 = call i64 @gtk_misc_get_type() #8
  %call103 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %155, i64 %call102)
  %156 = bitcast %struct._GTypeInstance* %call103 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %156, float 0.000000e+00, float 0.000000e+00)
  %157 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %158 = bitcast %struct._GtkWidget* %157 to %struct._GTypeInstance*
  %call104 = call i64 @gtk_box_get_type() #8
  %call105 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %158, i64 %call104)
  %159 = bitcast %struct._GTypeInstance* %call105 to %struct._GtkBox*
  %160 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %pixel_label106 = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %160, i32 0, i32 6
  %161 = load %struct._GtkWidget*, %struct._GtkWidget** %pixel_label106, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %159, %struct._GtkWidget* %161, i32 0, i32 0, i32 0)
  %162 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %pixel_label107 = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %162, i32 0, i32 6
  %163 = load %struct._GtkWidget*, %struct._GtkWidget** %pixel_label107, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %163)
  %call108 = call %struct._GtkWidget* @gtk_label_new(i8* null)
  %164 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %more_label = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %164, i32 0, i32 7
  store %struct._GtkWidget* %call108, %struct._GtkWidget** %more_label, align 8
  %165 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %more_label109 = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %165, i32 0, i32 7
  %166 = load %struct._GtkWidget*, %struct._GtkWidget** %more_label109, align 8
  %167 = bitcast %struct._GtkWidget* %166 to %struct._GTypeInstance*
  %call110 = call i64 @gtk_label_get_type() #8
  %call111 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %167, i64 %call110)
  %168 = bitcast %struct._GTypeInstance* %call111 to %struct._GtkLabel*
  call void (%struct._GtkLabel*, ...) @gimp_label_set_attributes(%struct._GtkLabel* %168, i32 15, double 0x3FEAAAAAAAAAA97E, i32 -1)
  %169 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %more_label112 = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %169, i32 0, i32 7
  %170 = load %struct._GtkWidget*, %struct._GtkWidget** %more_label112, align 8
  %171 = bitcast %struct._GtkWidget* %170 to %struct._GTypeInstance*
  %call113 = call i64 @gtk_misc_get_type() #8
  %call114 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %171, i64 %call113)
  %172 = bitcast %struct._GTypeInstance* %call114 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %172, float 0.000000e+00, float 0.000000e+00)
  %173 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %174 = bitcast %struct._GtkWidget* %173 to %struct._GTypeInstance*
  %call115 = call i64 @gtk_box_get_type() #8
  %call116 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %174, i64 %call115)
  %175 = bitcast %struct._GTypeInstance* %call116 to %struct._GtkBox*
  %176 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %more_label117 = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %176, i32 0, i32 7
  %177 = load %struct._GtkWidget*, %struct._GtkWidget** %more_label117, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %175, %struct._GtkWidget* %177, i32 0, i32 0, i32 0)
  %178 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %more_label118 = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %178, i32 0, i32 7
  %179 = load %struct._GtkWidget*, %struct._GtkWidget** %more_label118, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %179)
  %call119 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0)) #7
  %call120 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* %call119)
  store i8* %call120, i8** %text, align 8
  %call121 = call i64 @gtk_expander_get_type() #8
  %180 = load i8*, i8** %text, align 8
  %call122 = call i8* (i64, i8*, ...) @g_object_new(i64 %call121, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i8* %180, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0), i32 1, i8* null)
  %181 = bitcast i8* %call122 to %struct._GtkWidget*
  %182 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %expander = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %182, i32 0, i32 3
  store %struct._GtkWidget* %181, %struct._GtkWidget** %expander, align 8
  %183 = load i8*, i8** %text, align 8
  call void @g_free(i8* %183)
  %184 = load %struct._GimpTemplateEditor*, %struct._GimpTemplateEditor** %editor, align 8
  %185 = bitcast %struct._GimpTemplateEditor* %184 to %struct._GTypeInstance*
  %call123 = call i64 @gtk_box_get_type() #8
  %call124 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %185, i64 %call123)
  %186 = bitcast %struct._GTypeInstance* %call124 to %struct._GtkBox*
  %187 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %expander125 = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %187, i32 0, i32 3
  %188 = load %struct._GtkWidget*, %struct._GtkWidget** %expander125, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %186, %struct._GtkWidget* %188, i32 1, i32 1, i32 0)
  %189 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %expander126 = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %189, i32 0, i32 3
  %190 = load %struct._GtkWidget*, %struct._GtkWidget** %expander126, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %190)
  %call127 = call %struct._GtkWidget* @gimp_frame_new(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0))
  store %struct._GtkWidget* %call127, %struct._GtkWidget** %frame, align 8
  %191 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %expander128 = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %191, i32 0, i32 3
  %192 = load %struct._GtkWidget*, %struct._GtkWidget** %expander128, align 8
  %193 = bitcast %struct._GtkWidget* %192 to %struct._GTypeInstance*
  %call129 = call i64 @gtk_container_get_type() #8
  %call130 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %193, i64 %call129)
  %194 = bitcast %struct._GTypeInstance* %call130 to %struct._GtkContainer*
  %195 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_container_add(%struct._GtkContainer* %194, %struct._GtkWidget* %195)
  %196 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %196)
  %call131 = call %struct._GtkWidget* @gtk_table_new(i32 5, i32 2, i32 0)
  store %struct._GtkWidget* %call131, %struct._GtkWidget** %table, align 8
  %197 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %198 = bitcast %struct._GtkWidget* %197 to %struct._GTypeInstance*
  %call132 = call i64 @gtk_table_get_type() #8
  %call133 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %198, i64 %call132)
  %199 = bitcast %struct._GTypeInstance* %call133 to %struct._GtkTable*
  call void @gtk_table_set_col_spacing(%struct._GtkTable* %199, i32 0, i32 6)
  %200 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %201 = bitcast %struct._GtkWidget* %200 to %struct._GTypeInstance*
  %call134 = call i64 @gtk_table_get_type() #8
  %call135 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %201, i64 %call134)
  %202 = bitcast %struct._GTypeInstance* %call135 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %202, i32 6)
  %203 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %204 = bitcast %struct._GtkWidget* %203 to %struct._GTypeInstance*
  %call136 = call i64 @gtk_table_get_type() #8
  %call137 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %204, i64 %call136)
  %205 = bitcast %struct._GTypeInstance* %call137 to %struct._GtkTable*
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %205, i32 0, i32 2)
  %206 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %207 = bitcast %struct._GtkWidget* %206 to %struct._GTypeInstance*
  %call138 = call i64 @gtk_container_get_type() #8
  %call139 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %207, i64 %call138)
  %208 = bitcast %struct._GTypeInstance* %call139 to %struct._GtkContainer*
  %209 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %208, %struct._GtkWidget* %209)
  %210 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %210)
  %call140 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adjustment, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00, double 1.000000e+00, i32 2)
  store %struct._GtkWidget* %call140, %struct._GtkWidget** %xres, align 8
  %211 = load %struct._GtkWidget*, %struct._GtkWidget** %xres, align 8
  %212 = bitcast %struct._GtkWidget* %211 to %struct._GTypeInstance*
  %call141 = call i64 @gtk_entry_get_type() #8
  %call142 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %212, i64 %call141)
  %213 = bitcast %struct._GTypeInstance* %call142 to %struct._GtkEntry*
  call void @gtk_entry_set_width_chars(%struct._GtkEntry* %213, i32 8)
  %call143 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adjustment, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00, double 1.000000e+00, i32 2)
  store %struct._GtkWidget* %call143, %struct._GtkWidget** %yres, align 8
  %214 = load %struct._GtkWidget*, %struct._GtkWidget** %yres, align 8
  %215 = bitcast %struct._GtkWidget* %214 to %struct._GTypeInstance*
  %call144 = call i64 @gtk_entry_get_type() #8
  %call145 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %215, i64 %call144)
  %216 = bitcast %struct._GTypeInstance* %call145 to %struct._GtkEntry*
  call void @gtk_entry_set_width_chars(%struct._GtkEntry* %216, i32 8)
  %call146 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0)) #7
  %call147 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call146)
  store %struct._GtkWidget* %call147, %struct._GtkWidget** %label, align 8
  %217 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %218 = bitcast %struct._GtkWidget* %217 to %struct._GTypeInstance*
  %call148 = call i64 @gtk_misc_get_type() #8
  %call149 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %218, i64 %call148)
  %219 = bitcast %struct._GTypeInstance* %call149 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %219, float 0.000000e+00, float 5.000000e-01)
  %220 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %221 = bitcast %struct._GtkWidget* %220 to %struct._GTypeInstance*
  %call150 = call i64 @gtk_label_get_type() #8
  %call151 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %221, i64 %call150)
  %222 = bitcast %struct._GTypeInstance* %call151 to %struct._GtkLabel*
  %223 = load %struct._GtkWidget*, %struct._GtkWidget** %xres, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %222, %struct._GtkWidget* %223)
  %224 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %225 = bitcast %struct._GtkWidget* %224 to %struct._GTypeInstance*
  %call152 = call i64 @gtk_table_get_type() #8
  %call153 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %225, i64 %call152)
  %226 = bitcast %struct._GTypeInstance* %call153 to %struct._GtkTable*
  %227 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach(%struct._GtkTable* %226, %struct._GtkWidget* %227, i32 0, i32 1, i32 0, i32 1, i32 6, i32 6, i32 0, i32 0)
  %228 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %228)
  %call154 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0)) #7
  %call155 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call154)
  store %struct._GtkWidget* %call155, %struct._GtkWidget** %label, align 8
  %229 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %230 = bitcast %struct._GtkWidget* %229 to %struct._GTypeInstance*
  %call156 = call i64 @gtk_misc_get_type() #8
  %call157 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %230, i64 %call156)
  %231 = bitcast %struct._GTypeInstance* %call157 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %231, float 0.000000e+00, float 5.000000e-01)
  %232 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %233 = bitcast %struct._GtkWidget* %232 to %struct._GTypeInstance*
  %call158 = call i64 @gtk_label_get_type() #8
  %call159 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %233, i64 %call158)
  %234 = bitcast %struct._GTypeInstance* %call159 to %struct._GtkLabel*
  %235 = load %struct._GtkWidget*, %struct._GtkWidget** %yres, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %234, %struct._GtkWidget* %235)
  %236 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %237 = bitcast %struct._GtkWidget* %236 to %struct._GTypeInstance*
  %call160 = call i64 @gtk_table_get_type() #8
  %call161 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %237, i64 %call160)
  %238 = bitcast %struct._GTypeInstance* %call161 to %struct._GtkTable*
  %239 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach(%struct._GtkTable* %238, %struct._GtkWidget* %239, i32 0, i32 1, i32 1, i32 2, i32 6, i32 6, i32 0, i32 0)
  %240 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %240)
  %call162 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 0)
  store %struct._GtkWidget* %call162, %struct._GtkWidget** %hbox, align 8
  %241 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %242 = bitcast %struct._GtkWidget* %241 to %struct._GTypeInstance*
  %call163 = call i64 @gtk_table_get_type() #8
  %call164 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %242, i64 %call163)
  %243 = bitcast %struct._GTypeInstance* %call164 to %struct._GtkTable*
  %244 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %243, %struct._GtkWidget* %244, i32 1, i32 2, i32 0, i32 2)
  %245 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %245)
  %246 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  %call165 = call i32 @gimp_template_get_resolution_unit(%struct._GimpTemplate* %246)
  %call166 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0)) #7
  %call167 = call %struct._GtkWidget* @gimp_size_entry_new(i32 0, i32 %call165, i8* %call166, i32 0, i32 0, i32 0, i32 8, i32 2)
  %247 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %resolution_se = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %247, i32 0, i32 8
  store %struct._GtkWidget* %call167, %struct._GtkWidget** %resolution_se, align 8
  %248 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %resolution_se168 = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %248, i32 0, i32 8
  %249 = load %struct._GtkWidget*, %struct._GtkWidget** %resolution_se168, align 8
  %250 = bitcast %struct._GtkWidget* %249 to %struct._GTypeInstance*
  %call169 = call i64 @gtk_table_get_type() #8
  %call170 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %250, i64 %call169)
  %251 = bitcast %struct._GTypeInstance* %call170 to %struct._GtkTable*
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %251, i32 0, i32 2)
  %252 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %resolution_se171 = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %252, i32 0, i32 8
  %253 = load %struct._GtkWidget*, %struct._GtkWidget** %resolution_se171, align 8
  %254 = bitcast %struct._GtkWidget* %253 to %struct._GTypeInstance*
  %call172 = call i64 @gtk_table_get_type() #8
  %call173 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %254, i64 %call172)
  %255 = bitcast %struct._GTypeInstance* %call173 to %struct._GtkTable*
  call void @gtk_table_set_col_spacing(%struct._GtkTable* %255, i32 1, i32 2)
  %256 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %resolution_se174 = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %256, i32 0, i32 8
  %257 = load %struct._GtkWidget*, %struct._GtkWidget** %resolution_se174, align 8
  %258 = bitcast %struct._GtkWidget* %257 to %struct._GTypeInstance*
  %call175 = call i64 @gtk_table_get_type() #8
  %call176 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %258, i64 %call175)
  %259 = bitcast %struct._GTypeInstance* %call176 to %struct._GtkTable*
  call void @gtk_table_set_col_spacing(%struct._GtkTable* %259, i32 2, i32 2)
  %260 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %261 = bitcast %struct._GtkWidget* %260 to %struct._GTypeInstance*
  %call177 = call i64 @gtk_box_get_type() #8
  %call178 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %261, i64 %call177)
  %262 = bitcast %struct._GTypeInstance* %call178 to %struct._GtkBox*
  %263 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %resolution_se179 = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %263, i32 0, i32 8
  %264 = load %struct._GtkWidget*, %struct._GtkWidget** %resolution_se179, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %262, %struct._GtkWidget* %264, i32 0, i32 0, i32 0)
  %265 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %resolution_se180 = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %265, i32 0, i32 8
  %266 = load %struct._GtkWidget*, %struct._GtkWidget** %resolution_se180, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %266)
  %267 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %resolution_se181 = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %267, i32 0, i32 8
  %268 = load %struct._GtkWidget*, %struct._GtkWidget** %resolution_se181, align 8
  %269 = bitcast %struct._GtkWidget* %268 to %struct._GTypeInstance*
  %call182 = call i64 @gimp_size_entry_get_type() #8
  %call183 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %269, i64 %call182)
  %270 = bitcast %struct._GTypeInstance* %call183 to %struct._GimpSizeEntry*
  %271 = load %struct._GtkWidget*, %struct._GtkWidget** %yres, align 8
  %272 = bitcast %struct._GtkWidget* %271 to %struct._GTypeInstance*
  %call184 = call i64 @gtk_spin_button_get_type() #8
  %call185 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %272, i64 %call184)
  %273 = bitcast %struct._GTypeInstance* %call185 to %struct._GtkSpinButton*
  call void @gimp_size_entry_add_field(%struct._GimpSizeEntry* %270, %struct._GtkSpinButton* %273, %struct._GtkSpinButton* null)
  %274 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %resolution_se186 = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %274, i32 0, i32 8
  %275 = load %struct._GtkWidget*, %struct._GtkWidget** %resolution_se186, align 8
  %276 = bitcast %struct._GtkWidget* %275 to %struct._GTypeInstance*
  %call187 = call i64 @gtk_table_get_type() #8
  %call188 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %276, i64 %call187)
  %277 = bitcast %struct._GTypeInstance* %call188 to %struct._GtkTable*
  %278 = load %struct._GtkWidget*, %struct._GtkWidget** %yres, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %277, %struct._GtkWidget* %278, i32 0, i32 1, i32 1, i32 2)
  %279 = load %struct._GtkWidget*, %struct._GtkWidget** %yres, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %279)
  %280 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %resolution_se189 = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %280, i32 0, i32 8
  %281 = load %struct._GtkWidget*, %struct._GtkWidget** %resolution_se189, align 8
  %282 = bitcast %struct._GtkWidget* %281 to %struct._GTypeInstance*
  %call190 = call i64 @gimp_size_entry_get_type() #8
  %call191 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %282, i64 %call190)
  %283 = bitcast %struct._GTypeInstance* %call191 to %struct._GimpSizeEntry*
  %284 = load %struct._GtkWidget*, %struct._GtkWidget** %xres, align 8
  %285 = bitcast %struct._GtkWidget* %284 to %struct._GTypeInstance*
  %call192 = call i64 @gtk_spin_button_get_type() #8
  %call193 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %285, i64 %call192)
  %286 = bitcast %struct._GTypeInstance* %call193 to %struct._GtkSpinButton*
  call void @gimp_size_entry_add_field(%struct._GimpSizeEntry* %283, %struct._GtkSpinButton* %286, %struct._GtkSpinButton* null)
  %287 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %resolution_se194 = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %287, i32 0, i32 8
  %288 = load %struct._GtkWidget*, %struct._GtkWidget** %resolution_se194, align 8
  %289 = bitcast %struct._GtkWidget* %288 to %struct._GTypeInstance*
  %call195 = call i64 @gtk_table_get_type() #8
  %call196 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %289, i64 %call195)
  %290 = bitcast %struct._GTypeInstance* %call196 to %struct._GtkTable*
  %291 = load %struct._GtkWidget*, %struct._GtkWidget** %xres, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %290, %struct._GtkWidget* %291, i32 0, i32 1, i32 0, i32 1)
  %292 = load %struct._GtkWidget*, %struct._GtkWidget** %xres, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %292)
  %293 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %size_se197 = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %293, i32 0, i32 4
  %294 = load %struct._GtkWidget*, %struct._GtkWidget** %size_se197, align 8
  %295 = bitcast %struct._GtkWidget* %294 to %struct._GTypeInstance*
  %call198 = call i64 @gimp_size_entry_get_type() #8
  %call199 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %295, i64 %call198)
  %296 = bitcast %struct._GTypeInstance* %call199 to %struct._GimpSizeEntry*
  %297 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  %call200 = call double @gimp_template_get_resolution_x(%struct._GimpTemplate* %297)
  call void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry* %296, i32 0, double %call200, i32 0)
  %298 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %size_se201 = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %298, i32 0, i32 4
  %299 = load %struct._GtkWidget*, %struct._GtkWidget** %size_se201, align 8
  %300 = bitcast %struct._GtkWidget* %299 to %struct._GTypeInstance*
  %call202 = call i64 @gimp_size_entry_get_type() #8
  %call203 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %300, i64 %call202)
  %301 = bitcast %struct._GTypeInstance* %call203 to %struct._GimpSizeEntry*
  %302 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  %call204 = call double @gimp_template_get_resolution_y(%struct._GimpTemplate* %302)
  call void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry* %301, i32 1, double %call204, i32 0)
  %call205 = call %struct._GtkWidget* @gimp_chain_button_new(i32 3)
  %303 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %chain_button = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %303, i32 0, i32 9
  store %struct._GtkWidget* %call205, %struct._GtkWidget** %chain_button, align 8
  %304 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %resolution_se206 = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %304, i32 0, i32 8
  %305 = load %struct._GtkWidget*, %struct._GtkWidget** %resolution_se206, align 8
  %306 = bitcast %struct._GtkWidget* %305 to %struct._GTypeInstance*
  %call207 = call i64 @gtk_table_get_type() #8
  %call208 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %306, i64 %call207)
  %307 = bitcast %struct._GTypeInstance* %call208 to %struct._GtkTable*
  %308 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %chain_button209 = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %308, i32 0, i32 9
  %309 = load %struct._GtkWidget*, %struct._GtkWidget** %chain_button209, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %307, %struct._GtkWidget* %309, i32 1, i32 2, i32 0, i32 2)
  %310 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %chain_button210 = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %310, i32 0, i32 9
  %311 = load %struct._GtkWidget*, %struct._GtkWidget** %chain_button210, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %311)
  %312 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  %313 = bitcast %struct._GimpTemplate* %312 to %struct._GTypeInstance*
  %call211 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %313, i64 80)
  %314 = bitcast %struct._GTypeInstance* %call211 to %struct._GObject*
  %315 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %resolution_se212 = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %315, i32 0, i32 8
  %316 = load %struct._GtkWidget*, %struct._GtkWidget** %resolution_se212, align 8
  %317 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %chain_button213 = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %317, i32 0, i32 9
  %318 = load %struct._GtkWidget*, %struct._GtkWidget** %chain_button213, align 8
  %call214 = call i32 @gimp_prop_coordinates_connect(%struct._GObject* %314, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i32 0, i32 0), %struct._GtkWidget* %316, %struct._GtkWidget* %318, double 1.000000e+00, double 1.000000e+00)
  %319 = load %struct._GList*, %struct._GList** %focus_chain, align 8
  %320 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %resolution_se215 = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %320, i32 0, i32 8
  %321 = load %struct._GtkWidget*, %struct._GtkWidget** %resolution_se215, align 8
  %322 = bitcast %struct._GtkWidget* %321 to %struct._GTypeInstance*
  %call216 = call i64 @gimp_size_entry_get_type() #8
  %call217 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %322, i64 %call216)
  %323 = bitcast %struct._GTypeInstance* %call217 to %struct._GimpSizeEntry*
  %unitmenu = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %323, i32 0, i32 3
  %324 = load %struct._GtkWidget*, %struct._GtkWidget** %unitmenu, align 8
  %325 = bitcast %struct._GtkWidget* %324 to i8*
  %call218 = call %struct._GList* @g_list_prepend(%struct._GList* %319, i8* %325)
  store %struct._GList* %call218, %struct._GList** %focus_chain, align 8
  %326 = load %struct._GList*, %struct._GList** %focus_chain, align 8
  %327 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %chain_button219 = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %327, i32 0, i32 9
  %328 = load %struct._GtkWidget*, %struct._GtkWidget** %chain_button219, align 8
  %329 = bitcast %struct._GtkWidget* %328 to i8*
  %call220 = call %struct._GList* @g_list_prepend(%struct._GList* %326, i8* %329)
  store %struct._GList* %call220, %struct._GList** %focus_chain, align 8
  %330 = load %struct._GList*, %struct._GList** %focus_chain, align 8
  %331 = load %struct._GtkWidget*, %struct._GtkWidget** %yres, align 8
  %332 = bitcast %struct._GtkWidget* %331 to i8*
  %call221 = call %struct._GList* @g_list_prepend(%struct._GList* %330, i8* %332)
  store %struct._GList* %call221, %struct._GList** %focus_chain, align 8
  %333 = load %struct._GList*, %struct._GList** %focus_chain, align 8
  %334 = load %struct._GtkWidget*, %struct._GtkWidget** %xres, align 8
  %335 = bitcast %struct._GtkWidget* %334 to i8*
  %call222 = call %struct._GList* @g_list_prepend(%struct._GList* %333, i8* %335)
  store %struct._GList* %call222, %struct._GList** %focus_chain, align 8
  %336 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %resolution_se223 = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %336, i32 0, i32 8
  %337 = load %struct._GtkWidget*, %struct._GtkWidget** %resolution_se223, align 8
  %338 = bitcast %struct._GtkWidget* %337 to %struct._GTypeInstance*
  %call224 = call i64 @gtk_container_get_type() #8
  %call225 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %338, i64 %call224)
  %339 = bitcast %struct._GTypeInstance* %call225 to %struct._GtkContainer*
  %340 = load %struct._GList*, %struct._GList** %focus_chain, align 8
  call void @gtk_container_set_focus_chain(%struct._GtkContainer* %339, %struct._GList* %340)
  %341 = load %struct._GList*, %struct._GList** %focus_chain, align 8
  call void @g_list_free(%struct._GList* %341)
  %342 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  %343 = bitcast %struct._GimpTemplate* %342 to %struct._GTypeInstance*
  %call226 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %343, i64 80)
  %344 = bitcast %struct._GTypeInstance* %call226 to %struct._GObject*
  %call227 = call %struct._GtkWidget* @gimp_prop_enum_combo_box_new(%struct._GObject* %344, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0), i32 0, i32 1)
  store %struct._GtkWidget* %call227, %struct._GtkWidget** %combo, align 8
  %345 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %346 = bitcast %struct._GtkWidget* %345 to %struct._GTypeInstance*
  %call228 = call i64 @gtk_table_get_type() #8
  %call229 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %346, i64 %call228)
  %347 = bitcast %struct._GTypeInstance* %call229 to %struct._GtkTable*
  %call230 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i32 0, i32 0)) #7
  %348 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %call231 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %347, i32 0, i32 2, i8* %call230, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %348, i32 1, i32 0)
  %349 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  %350 = bitcast %struct._GimpTemplate* %349 to %struct._GTypeInstance*
  %call232 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %350, i64 80)
  %351 = bitcast %struct._GTypeInstance* %call232 to %struct._GObject*
  %call233 = call %struct._GtkWidget* @gimp_prop_enum_combo_box_new(%struct._GObject* %351, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i32 0, i32 3)
  store %struct._GtkWidget* %call233, %struct._GtkWidget** %combo, align 8
  %352 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %353 = bitcast %struct._GtkWidget* %352 to %struct._GTypeInstance*
  %call234 = call i64 @gtk_table_get_type() #8
  %call235 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %353, i64 %call234)
  %354 = bitcast %struct._GTypeInstance* %call235 to %struct._GtkTable*
  %call236 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i32 0, i32 0)) #7
  %355 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %call237 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %354, i32 0, i32 3, i8* %call236, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %355, i32 1, i32 0)
  %call238 = call %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment* null, %struct._GtkAdjustment* null)
  store %struct._GtkWidget* %call238, %struct._GtkWidget** %scrolled_window, align 8
  %356 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window, align 8
  %357 = bitcast %struct._GtkWidget* %356 to %struct._GTypeInstance*
  %call239 = call i64 @gtk_scrolled_window_get_type() #8
  %call240 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %357, i64 %call239)
  %358 = bitcast %struct._GTypeInstance* %call240 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow* %358, i32 1)
  %359 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window, align 8
  %360 = bitcast %struct._GtkWidget* %359 to %struct._GTypeInstance*
  %call241 = call i64 @gtk_scrolled_window_get_type() #8
  %call242 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %360, i64 %call241)
  %361 = bitcast %struct._GTypeInstance* %call242 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow* %361, i32 1, i32 1)
  %362 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %363 = bitcast %struct._GtkWidget* %362 to %struct._GTypeInstance*
  %call243 = call i64 @gtk_table_get_type() #8
  %call244 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %363, i64 %call243)
  %364 = bitcast %struct._GTypeInstance* %call244 to %struct._GtkTable*
  %call245 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0)) #7
  %365 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window, align 8
  %call246 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %364, i32 0, i32 4, i8* %call245, float 0.000000e+00, float 0.000000e+00, %struct._GtkWidget* %365, i32 1, i32 0)
  %366 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  %367 = bitcast %struct._GimpTemplate* %366 to %struct._GTypeInstance*
  %call247 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %367, i64 80)
  %368 = bitcast %struct._GTypeInstance* %call247 to %struct._GObject*
  %call248 = call %struct._GtkTextBuffer* @gimp_prop_text_buffer_new(%struct._GObject* %368, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), i32 512)
  store %struct._GtkTextBuffer* %call248, %struct._GtkTextBuffer** %text_buffer, align 8
  %369 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %text_buffer, align 8
  %call249 = call %struct._GtkWidget* @gtk_text_view_new_with_buffer(%struct._GtkTextBuffer* %369)
  store %struct._GtkWidget* %call249, %struct._GtkWidget** %text_view, align 8
  %370 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %text_buffer, align 8
  %371 = bitcast %struct._GtkTextBuffer* %370 to i8*
  call void @g_object_unref(i8* %371)
  %372 = load %struct._GtkWidget*, %struct._GtkWidget** %text_view, align 8
  %373 = bitcast %struct._GtkWidget* %372 to %struct._GTypeInstance*
  %call250 = call i64 @gtk_text_view_get_type() #8
  %call251 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %373, i64 %call250)
  %374 = bitcast %struct._GTypeInstance* %call251 to %struct._GtkTextView*
  call void @gtk_text_view_set_wrap_mode(%struct._GtkTextView* %374, i32 2)
  %375 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window, align 8
  %376 = bitcast %struct._GtkWidget* %375 to %struct._GTypeInstance*
  %call252 = call i64 @gtk_container_get_type() #8
  %call253 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %376, i64 %call252)
  %377 = bitcast %struct._GTypeInstance* %call253 to %struct._GtkContainer*
  %378 = load %struct._GtkWidget*, %struct._GtkWidget** %text_view, align 8
  call void @gtk_container_add(%struct._GtkContainer* %377, %struct._GtkWidget* %378)
  %379 = load %struct._GtkWidget*, %struct._GtkWidget** %text_view, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %379)
  %380 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  %381 = bitcast %struct._GimpTemplate* %380 to i8*
  %382 = load %struct._GimpTemplateEditor*, %struct._GimpTemplateEditor** %editor, align 8
  %383 = bitcast %struct._GimpTemplateEditor* %382 to i8*
  %call254 = call i64 @g_signal_connect_object(i8* %381, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GimpTemplate*, %struct._GParamSpec*, %struct._GimpTemplateEditor*)* @gimp_template_editor_template_notify to void ()*), i8* %383, i32 0)
  %384 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  %385 = load %struct._GimpTemplateEditor*, %struct._GimpTemplateEditor** %editor, align 8
  call void @gimp_template_editor_template_notify(%struct._GimpTemplate* %384, %struct._GParamSpec* null, %struct._GimpTemplateEditor* %385)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_template_editor_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %private = alloca %struct._GimpTemplateEditorPrivate*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_template_editor_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpTemplateEditorPrivate*
  store %struct._GimpTemplateEditorPrivate* %2, %struct._GimpTemplateEditorPrivate** %private, align 8
  %3 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %template = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %3, i32 0, i32 0
  %4 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  %tobool = icmp ne %struct._GimpTemplate* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %template2 = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %5, i32 0, i32 0
  %6 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template2, align 8
  %7 = bitcast %struct._GimpTemplate* %6 to i8*
  call void @g_object_unref(i8* %7)
  %8 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %template3 = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %8, i32 0, i32 0
  store %struct._GimpTemplate* null, %struct._GimpTemplate** %template3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8*, i8** @gimp_template_editor_parent_class, align 8
  %10 = bitcast i8* %9 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 80)
  %11 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %11, i32 0, i32 6
  %12 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %13 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %12(%struct._GObject* %13)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_template_editor_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpTemplateEditorPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_template_editor_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpTemplateEditorPrivate*
  store %struct._GimpTemplateEditorPrivate* %2, %struct._GimpTemplateEditorPrivate** %private, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_dup_object(%struct._GValue* %4)
  %5 = bitcast i8* %call2 to %struct._GimpTemplate*
  %6 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %template = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %6, i32 0, i32 0
  store %struct._GimpTemplate* %5, %struct._GimpTemplate** %template, align 8
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
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0), i32 455, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0), i32 %10, i8* %12, i8* %call3, i8* %call6)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_template_editor_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpTemplateEditorPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_template_editor_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpTemplateEditorPrivate*
  store %struct._GimpTemplateEditorPrivate* %2, %struct._GimpTemplateEditorPrivate** %private, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %template = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %5, i32 0, i32 0
  %6 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  %7 = bitcast %struct._GimpTemplate* %6 to i8*
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
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0), i32 475, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0), i32 %11, i8* %13, i8* %call2, i8* %call5)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_template_get_type() #2

declare void @g_type_class_add_private(i8*, i64) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #6

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare void @gtk_table_set_col_spacing(%struct._GtkTable*, i32, i32) #1

declare void @gtk_table_set_row_spacing(%struct._GtkTable*, i32, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject**, double, double, double, double, double, double, double, i32) #1

declare void @gtk_entry_set_width_chars(%struct._GtkEntry*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #2

declare %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8*) #1

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #2

declare void @gtk_label_set_mnemonic_widget(%struct._GtkLabel*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #2

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_table_attach_defaults(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32) #1

declare %struct._GtkWidget* @gimp_size_entry_new(i32, i32, i8*, i32, i32, i32, i32, i32) #1

declare i32 @gimp_template_get_unit(%struct._GimpTemplate*) #1

declare void @gimp_size_entry_add_field(%struct._GimpSizeEntry*, %struct._GtkSpinButton*, %struct._GtkSpinButton*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_size_entry_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gtk_spin_button_get_type() #2

declare i32 @gimp_prop_coordinates_connect(%struct._GObject*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, double, double) #1

declare double @gimp_template_get_resolution_x(%struct._GimpTemplate*) #1

declare double @gimp_template_get_resolution_y(%struct._GimpTemplate*) #1

declare %struct._GtkWidget* @gimp_enum_stock_box_new(i64, i8*, i32, void ()*, i8*, %struct._GtkWidget**) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_aspect_type_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_template_editor_aspect_callback(%struct._GtkWidget* %widget, %struct._GimpTemplateEditor* %editor) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %editor.addr = alloca %struct._GimpTemplateEditor*, align 8
  %private = alloca %struct._GimpTemplateEditorPrivate*, align 8
  %template = alloca %struct._GimpTemplate*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %xresolution = alloca double, align 8
  %yresolution = alloca double, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpTemplateEditor* %editor, %struct._GimpTemplateEditor** %editor.addr, align 8
  %0 = load %struct._GimpTemplateEditor*, %struct._GimpTemplateEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpTemplateEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_template_editor_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpTemplateEditorPrivate*
  store %struct._GimpTemplateEditorPrivate* %2, %struct._GimpTemplateEditorPrivate** %private, align 8
  %3 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %block_aspect = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %3, i32 0, i32 2
  %4 = load i32, i32* %block_aspect, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end.23, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_toggle_button_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call2)
  %7 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkToggleButton*
  %call4 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %7)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then, label %if.end.23

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %template6 = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %8, i32 0, i32 0
  %9 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template6, align 8
  store %struct._GimpTemplate* %9, %struct._GimpTemplate** %template, align 8
  %10 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  %call7 = call i32 @gimp_template_get_width(%struct._GimpTemplate* %10)
  store i32 %call7, i32* %width, align 4
  %11 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  %call8 = call i32 @gimp_template_get_height(%struct._GimpTemplate* %11)
  store i32 %call8, i32* %height, align 4
  %12 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  %call9 = call double @gimp_template_get_resolution_x(%struct._GimpTemplate* %12)
  store double %call9, double* %xresolution, align 8
  %13 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  %call10 = call double @gimp_template_get_resolution_y(%struct._GimpTemplate* %13)
  store double %call10, double* %yresolution, align 8
  %14 = load i32, i32* %width, align 4
  %15 = load i32, i32* %height, align 4
  %cmp = icmp eq i32 %14, %15
  br i1 %cmp, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then
  %16 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %block_aspect12 = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %16, i32 0, i32 2
  store i32 1, i32* %block_aspect12, align 4
  %17 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %aspect_button = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %17, i32 0, i32 1
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %aspect_button, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_radio_button_get_type() #8
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call13)
  %20 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkRadioButton*
  call void @gimp_int_radio_group_set_active(%struct._GtkRadioButton* %20, i32 0)
  %21 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %block_aspect15 = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %21, i32 0, i32 2
  store i32 0, i32* %block_aspect15, align 4
  br label %if.end.23

if.end:                                           ; preds = %if.then
  %22 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  %23 = bitcast %struct._GimpTemplate* %22 to i8*
  %24 = load %struct._GimpTemplateEditor*, %struct._GimpTemplateEditor** %editor.addr, align 8
  %25 = bitcast %struct._GimpTemplateEditor* %24 to i8*
  %call16 = call i32 @g_signal_handlers_block_matched(i8* %23, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpTemplate*, %struct._GParamSpec*, %struct._GimpTemplateEditor*)* @gimp_template_editor_template_notify to i8*), i8* %25)
  %26 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %size_se = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %26, i32 0, i32 4
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %size_se, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_size_entry_get_type() #8
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call17)
  %29 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpSizeEntry*
  %30 = load double, double* %yresolution, align 8
  call void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry* %29, i32 0, double %30, i32 0)
  %31 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %size_se19 = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %31, i32 0, i32 4
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %size_se19, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_size_entry_get_type() #8
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call20)
  %34 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpSizeEntry*
  %35 = load double, double* %xresolution, align 8
  call void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry* %34, i32 1, double %35, i32 0)
  %36 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  %37 = bitcast %struct._GimpTemplate* %36 to i8*
  %38 = load i32, i32* %height, align 4
  %39 = load i32, i32* %width, align 4
  %40 = load double, double* %yresolution, align 8
  %41 = load double, double* %xresolution, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i32 %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0), double %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0), double %41, i8* null)
  %42 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  %43 = bitcast %struct._GimpTemplate* %42 to i8*
  %44 = load %struct._GimpTemplateEditor*, %struct._GimpTemplateEditor** %editor.addr, align 8
  %45 = bitcast %struct._GimpTemplateEditor* %44 to i8*
  %call22 = call i32 @g_signal_handlers_unblock_matched(i8* %43, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpTemplate*, %struct._GParamSpec*, %struct._GimpTemplateEditor*)* @gimp_template_editor_template_notify to i8*), i8* %45)
  %46 = load %struct._GimpTemplateEditor*, %struct._GimpTemplateEditor** %editor.addr, align 8
  %47 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  call void @gimp_template_editor_set_pixels(%struct._GimpTemplateEditor* %46, %struct._GimpTemplate* %47)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.11, %if.end, %land.lhs.true, %entry
  ret void
}

declare void @gtk_widget_hide(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare void @gimp_label_set_attributes(%struct._GtkLabel*, ...) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare void @g_free(i8*) #1

declare i32 @gimp_template_get_resolution_unit(%struct._GimpTemplate*) #1

declare void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry*, i32, double, i32) #1

declare %struct._GtkWidget* @gimp_chain_button_new(i32) #1

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

declare void @gtk_container_set_focus_chain(%struct._GtkContainer*, %struct._GList*) #1

declare void @g_list_free(%struct._GList*) #1

declare %struct._GtkWidget* @gimp_prop_enum_combo_box_new(%struct._GObject*, i8*, i32, i32) #1

declare %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment*, %struct._GtkAdjustment*) #1

declare void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_scrolled_window_get_type() #2

declare void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow*, i32, i32) #1

declare %struct._GtkTextBuffer* @gimp_prop_text_buffer_new(%struct._GObject*, i8*, i32) #1

declare %struct._GtkWidget* @gtk_text_view_new_with_buffer(%struct._GtkTextBuffer*) #1

declare void @g_object_unref(i8*) #1

declare void @gtk_text_view_set_wrap_mode(%struct._GtkTextView*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_text_view_get_type() #2

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_template_editor_template_notify(%struct._GimpTemplate* %template, %struct._GParamSpec* %param_spec, %struct._GimpTemplateEditor* %editor) #3 {
entry:
  %template.addr = alloca %struct._GimpTemplate*, align 8
  %param_spec.addr = alloca %struct._GParamSpec*, align 8
  %editor.addr = alloca %struct._GimpTemplateEditor*, align 8
  %private = alloca %struct._GimpTemplateEditorPrivate*, align 8
  %aspect = alloca i32, align 4
  %desc = alloca i8*, align 8
  %text = alloca i8*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %xres = alloca i32, align 4
  %yres = alloca i32, align 4
  store %struct._GimpTemplate* %template, %struct._GimpTemplate** %template.addr, align 8
  store %struct._GParamSpec* %param_spec, %struct._GParamSpec** %param_spec.addr, align 8
  store %struct._GimpTemplateEditor* %editor, %struct._GimpTemplateEditor** %editor.addr, align 8
  %0 = load %struct._GimpTemplateEditor*, %struct._GimpTemplateEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpTemplateEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_template_editor_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpTemplateEditorPrivate*
  store %struct._GimpTemplateEditorPrivate* %2, %struct._GimpTemplateEditorPrivate** %private, align 8
  %3 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %tobool = icmp ne %struct._GParamSpec* %3, null
  br i1 %tobool, label %if.then, label %if.end.17

if.then:                                          ; preds = %entry
  %4 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %4, i32 0, i32 1
  %5 = load i8*, i8** %name, align 8
  %call2 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0)) #9
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.else, label %if.then.4

if.then.4:                                        ; preds = %if.then
  %6 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %size_se = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %6, i32 0, i32 4
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %size_se, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_size_entry_get_type() #8
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call5)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpSizeEntry*
  %10 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %call7 = call double @gimp_template_get_resolution_x(%struct._GimpTemplate* %10)
  call void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry* %9, i32 0, double %call7, i32 0)
  br label %if.end.16

if.else:                                          ; preds = %if.then
  %11 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name8 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %11, i32 0, i32 1
  %12 = load i8*, i8** %name8, align 8
  %call9 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0)) #9
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end, label %if.then.11

if.then.11:                                       ; preds = %if.else
  %13 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %size_se12 = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %13, i32 0, i32 4
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %size_se12, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_size_entry_get_type() #8
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call13)
  %16 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpSizeEntry*
  %17 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %call15 = call double @gimp_template_get_resolution_y(%struct._GimpTemplate* %17)
  call void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry* %16, i32 1, double %call15, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.else
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %if.then.4
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %entry
  %18 = load %struct._GimpTemplateEditor*, %struct._GimpTemplateEditor** %editor.addr, align 8
  %19 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  call void @gimp_template_editor_set_pixels(%struct._GimpTemplateEditor* %18, %struct._GimpTemplate* %19)
  %20 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %call18 = call i32 @gimp_template_get_width(%struct._GimpTemplate* %20)
  store i32 %call18, i32* %width, align 4
  %21 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %call19 = call i32 @gimp_template_get_height(%struct._GimpTemplate* %21)
  store i32 %call19, i32* %height, align 4
  %22 = load i32, i32* %width, align 4
  %23 = load i32, i32* %height, align 4
  %cmp = icmp sgt i32 %22, %23
  br i1 %cmp, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %if.end.17
  store i32 2, i32* %aspect, align 4
  br label %if.end.26

if.else.21:                                       ; preds = %if.end.17
  %24 = load i32, i32* %height, align 4
  %25 = load i32, i32* %width, align 4
  %cmp22 = icmp sgt i32 %24, %25
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %if.else.21
  store i32 1, i32* %aspect, align 4
  br label %if.end.25

if.else.24:                                       ; preds = %if.else.21
  store i32 0, i32* %aspect, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.24, %if.then.23
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then.20
  %26 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %block_aspect = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %26, i32 0, i32 2
  store i32 1, i32* %block_aspect, align 4
  %27 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %aspect_button = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %27, i32 0, i32 1
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %aspect_button, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_radio_button_get_type() #8
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call27)
  %30 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkRadioButton*
  %31 = load i32, i32* %aspect, align 4
  call void @gimp_int_radio_group_set_active(%struct._GtkRadioButton* %30, i32 %31)
  %32 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %block_aspect29 = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %32, i32 0, i32 2
  store i32 0, i32* %block_aspect29, align 4
  %call30 = call i64 @gimp_image_base_type_get_type() #8
  %33 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %call31 = call i32 @gimp_template_get_image_type(%struct._GimpTemplate* %33)
  %call32 = call i32 @gimp_enum_get_value(i64 %call30, i32 %call31, i8** null, i8** null, i8** %desc, i8** null)
  %34 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %call33 = call double @gimp_template_get_resolution_x(%struct._GimpTemplate* %34)
  %add = fadd double %call33, 5.000000e-01
  %conv = fptosi double %add to i32
  store i32 %conv, i32* %xres, align 4
  %35 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %call34 = call double @gimp_template_get_resolution_y(%struct._GimpTemplate* %35)
  %add35 = fadd double %call34, 5.000000e-01
  %conv36 = fptosi double %add35 to i32
  store i32 %conv36, i32* %yres, align 4
  %36 = load i32, i32* %xres, align 4
  %37 = load i32, i32* %yres, align 4
  %cmp37 = icmp ne i32 %36, %37
  br i1 %cmp37, label %if.then.39, label %if.else.42

if.then.39:                                       ; preds = %if.end.26
  %call40 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.40, i32 0, i32 0)) #7
  %38 = load i32, i32* %xres, align 4
  %39 = load i32, i32* %yres, align 4
  %40 = load i8*, i8** %desc, align 8
  %call41 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call40, i32 %38, i32 %39, i8* %40)
  store i8* %call41, i8** %text, align 8
  br label %if.end.45

if.else.42:                                       ; preds = %if.end.26
  %call43 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0)) #7
  %41 = load i32, i32* %yres, align 4
  %42 = load i8*, i8** %desc, align 8
  %call44 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call43, i32 %41, i8* %42)
  store i8* %call44, i8** %text, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.42, %if.then.39
  %43 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %more_label = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %43, i32 0, i32 7
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %more_label, align 8
  %45 = bitcast %struct._GtkWidget* %44 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_label_get_type() #8
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call46)
  %46 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkLabel*
  %47 = load i8*, i8** %text, align 8
  call void @gtk_label_set_text(%struct._GtkLabel* %46, i8* %47)
  %48 = load i8*, i8** %text, align 8
  call void @g_free(i8* %48)
  ret void
}

declare i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #2

declare i32 @gimp_template_get_width(%struct._GimpTemplate*) #1

declare i32 @gimp_template_get_height(%struct._GimpTemplate*) #1

declare void @gimp_int_radio_group_set_active(%struct._GtkRadioButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_radio_button_get_type() #2

declare i32 @g_signal_handlers_block_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare void @g_object_set(i8*, i8*, ...) #1

declare i32 @g_signal_handlers_unblock_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_template_editor_set_pixels(%struct._GimpTemplateEditor* %editor, %struct._GimpTemplate* %template) #3 {
entry:
  %editor.addr = alloca %struct._GimpTemplateEditor*, align 8
  %template.addr = alloca %struct._GimpTemplate*, align 8
  %private = alloca %struct._GimpTemplateEditorPrivate*, align 8
  %text = alloca i8*, align 8
  store %struct._GimpTemplateEditor* %editor, %struct._GimpTemplateEditor** %editor.addr, align 8
  store %struct._GimpTemplate* %template, %struct._GimpTemplate** %template.addr, align 8
  %0 = load %struct._GimpTemplateEditor*, %struct._GimpTemplateEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpTemplateEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_template_editor_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpTemplateEditorPrivate*
  store %struct._GimpTemplateEditorPrivate* %2, %struct._GimpTemplateEditorPrivate** %private, align 8
  %3 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %call2 = call i32 @gimp_template_get_height(%struct._GimpTemplate* %3)
  %conv = sext i32 %call2 to i64
  %call3 = call i8* @ngettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i32 0, i32 0), i64 %conv) #7
  %4 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %call4 = call i32 @gimp_template_get_width(%struct._GimpTemplate* %4)
  %5 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %call5 = call i32 @gimp_template_get_height(%struct._GimpTemplate* %5)
  %call6 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call3, i32 %call4, i32 %call5)
  store i8* %call6, i8** %text, align 8
  %6 = load %struct._GimpTemplateEditorPrivate*, %struct._GimpTemplateEditorPrivate** %private, align 8
  %pixel_label = getelementptr inbounds %struct._GimpTemplateEditorPrivate, %struct._GimpTemplateEditorPrivate* %6, i32 0, i32 6
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %pixel_label, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_label_get_type() #8
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call7)
  %9 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkLabel*
  %10 = load i8*, i8** %text, align 8
  call void @gtk_label_set_text(%struct._GtkLabel* %9, i8* %10)
  %11 = load i8*, i8** %text, align 8
  call void @g_free(i8* %11)
  ret void
}

; Function Attrs: nounwind
declare i8* @ngettext(i8*, i8*, i64) #5

declare void @gtk_label_set_text(%struct._GtkLabel*, i8*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare i32 @gimp_enum_get_value(i64, i32, i8**, i8**, i8**, i8**) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_base_type_get_type() #2

declare i32 @gimp_template_get_image_type(%struct._GimpTemplate*) #1

declare i8* @g_value_dup_object(%struct._GValue*) #1

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

declare void @gtk_orientable_set_orientation(%struct._GtkOrientable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_orientable_get_type() #2

declare void @gtk_box_set_spacing(%struct._GtkBox*, i32) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
