; ModuleID = './app/widgets/gimptexteditor.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpTextEditorClass = type { %struct._GimpDialogClass, void (%struct._GimpTextEditor*)*, void (%struct._GimpTextEditor*)* }
%struct._GimpDialogClass = type { %struct._GtkDialogClass, void ()*, void ()*, void ()*, void ()* }
%struct._GtkDialogClass = type { %struct._GtkWindowClass, void (%struct._GtkDialog*, i32)*, void (%struct._GtkDialog*)*, void ()*, void ()*, void ()*, void ()* }
%struct._GtkWindowClass = type { %struct._GtkBinClass, void (%struct._GtkWindow*, %struct._GtkWidget*)*, i32 (%struct._GtkWindow*, %union._GdkEvent*)*, void (%struct._GtkWindow*)*, void (%struct._GtkWindow*)*, void (%struct._GtkWindow*, i32)*, void (%struct._GtkWindow*)*, void ()*, void ()*, void ()*, void ()* }
%struct._GtkBinClass = type { %struct._GtkContainerClass }
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
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GimpTextEditor = type { %struct._GimpDialog, i32, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GimpUIManager* }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpUIManager = type { %struct._GtkUIManager, i8*, %struct._Gimp*, %struct._GList* }
%struct._GtkUIManager = type { %struct._GObject, %struct._GtkUIManagerPrivate* }
%struct._GtkUIManagerPrivate = type opaque
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
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpContext = type opaque
%struct._GimpMenuFactory = type { %struct._GimpObject, %struct._GimpMenuFactoryPrivate* }
%struct._GimpMenuFactoryPrivate = type opaque
%struct._GimpText = type { %struct._GimpObject, i8*, i8*, i8*, i32, double, i32, i32, i32, i8*, i32, %struct._GimpRGB, i32, i32, double, double, double, i32, double, double, i32, %struct._GimpMatrix2, double, double, double }
%struct._GimpRGB = type { double, double, double, double }
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
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkScrolledWindow = type { %struct._GtkBin, %struct._GtkWidget*, %struct._GtkWidget*, i16, i16 }
%struct._GtkTextView = type { %struct._GtkContainer, %struct._GtkTextLayout*, %struct._GtkTextBuffer*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._PangoTabArray*, i8, %struct._GtkTextWindow*, %struct._GtkTextWindow*, %struct._GtkTextWindow*, %struct._GtkTextWindow*, %struct._GtkTextWindow*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, i32, i32, i32, i32, i32, i32, %struct._GtkTextMark*, i32, %struct._GtkTextMark*, i32, i32, i32, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._GSList*, %struct._GtkTextPendingScroll*, i32 }
%struct._GtkTextLayout = type opaque
%struct._GtkTextWindow = type opaque
%struct._GtkTextMark = type { %struct._GObject, i8* }
%struct._GtkIMContext = type { %struct._GObject }
%struct._GtkTextPendingScroll = type opaque
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GSignalInvocationHint = type { i32, i32, i32 }

@gimp_text_editor_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"GimpTextEditor\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_text_editor_new = private unnamed_addr constant [21 x i8] c"gimp_text_editor_new\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"title != NULL\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"parent == NULL || GTK_IS_WINDOW (parent)\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"GIMP_IS_MENU_FACTORY (menu_factory)\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"GIMP_IS_TEXT (text)\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"GIMP_IS_TEXT_BUFFER (text_buffer)\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"role\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"gimp-text-editor\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"transient-for\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"help-func\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"help-id\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"gimp-text-editor-dialog\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"gtk-close\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"<TextEditor>\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"/text-editor-toolbar\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"_Use selected font\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@__func__.gimp_text_editor_set_text = private unnamed_addr constant [26 x i8] c"gimp_text_editor_set_text\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"GIMP_IS_TEXT_EDITOR (editor)\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"text != NULL || len == 0\00", align 1
@.str.24 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__func__.gimp_text_editor_get_text = private unnamed_addr constant [26 x i8] c"gimp_text_editor_get_text\00", align 1
@__func__.gimp_text_editor_set_direction = private unnamed_addr constant [31 x i8] c"gimp_text_editor_set_direction\00", align 1
@text_editor_signals = internal global [2 x i32] zeroinitializer, align 4
@__func__.gimp_text_editor_get_direction = private unnamed_addr constant [31 x i8] c"gimp_text_editor_get_direction\00", align 1
@__func__.gimp_text_editor_set_font_name = private unnamed_addr constant [31 x i8] c"gimp_text_editor_set_font_name\00", align 1
@__func__.gimp_text_editor_get_font_name = private unnamed_addr constant [31 x i8] c"gimp_text_editor_get_font_name\00", align 1
@gimp_text_editor_parent_class = internal global i8* null, align 8
@GimpTextEditor_private_offset = internal global i32 0, align 4
@.str.25 = private unnamed_addr constant [13 x i8] c"text-changed\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"dir-changed\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_text_editor_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_text_editor_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_text_editor_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_dialog_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 1000, void (i8*, i8*)* bitcast (void (i8*)* @gimp_text_editor_class_intern_init to void (i8*, i8*)*), i32 312, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpTextEditor*)* @gimp_text_editor_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_text_editor_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_text_editor_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_editor_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_text_editor_parent_class, align 8
  %1 = load i32, i32* @GimpTextEditor_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpTextEditor_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpTextEditorClass*
  call void @gimp_text_editor_class_init(%struct._GimpTextEditorClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_editor_init(%struct._GimpTextEditor* %editor) #3 {
entry:
  %editor.addr = alloca %struct._GimpTextEditor*, align 8
  store %struct._GimpTextEditor* %editor, %struct._GimpTextEditor** %editor.addr, align 8
  %0 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor.addr, align 8
  %view = getelementptr inbounds %struct._GimpTextEditor, %struct._GimpTextEditor* %0, i32 0, i32 3
  store %struct._GtkWidget* null, %struct._GtkWidget** %view, align 8
  %1 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor.addr, align 8
  %file_dialog = getelementptr inbounds %struct._GimpTextEditor, %struct._GimpTextEditor* %1, i32 0, i32 5
  store %struct._GtkWidget* null, %struct._GtkWidget** %file_dialog, align 8
  %2 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor.addr, align 8
  %ui_manager = getelementptr inbounds %struct._GimpTextEditor, %struct._GimpTextEditor* %2, i32 0, i32 6
  store %struct._GimpUIManager* null, %struct._GimpUIManager** %ui_manager, align 8
  %call = call i32 @gtk_widget_get_default_direction()
  switch i32 %call, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry, %entry
  %3 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor.addr, align 8
  %base_dir = getelementptr inbounds %struct._GimpTextEditor, %struct._GimpTextEditor* %3, i32 0, i32 1
  store i32 0, i32* %base_dir, align 4
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %4 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor.addr, align 8
  %base_dir2 = getelementptr inbounds %struct._GimpTextEditor, %struct._GimpTextEditor* %4, i32 0, i32 1
  store i32 1, i32* %base_dir2, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.1, %sw.bb
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_text_editor_new(i8* %title, %struct._GtkWindow* %parent, %struct._Gimp* %gimp, %struct._GimpMenuFactory* %menu_factory, %struct._GimpText* %text, %struct._GimpTextBuffer* %text_buffer, double %xres, double %yres) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %title.addr = alloca i8*, align 8
  %parent.addr = alloca %struct._GtkWindow*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %menu_factory.addr = alloca %struct._GimpMenuFactory*, align 8
  %text.addr = alloca %struct._GimpText*, align 8
  %text_buffer.addr = alloca %struct._GimpTextBuffer*, align 8
  %xres.addr = alloca double, align 8
  %yres.addr = alloca double, align 8
  %editor = alloca %struct._GimpTextEditor*, align 8
  %content_area = alloca %struct._GtkWidget*, align 8
  %toolbar = alloca %struct._GtkWidget*, align 8
  %style_editor = alloca %struct._GtkWidget*, align 8
  %scrolled_window = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst20 = alloca %struct._GTypeInstance*, align 8
  %__t22 = alloca i64, align 8
  %__r25 = alloca i32, align 4
  %tmp40 = alloca i32, align 4
  %__inst48 = alloca %struct._GTypeInstance*, align 8
  %__t50 = alloca i64, align 8
  %__r53 = alloca i32, align 4
  %tmp68 = alloca i32, align 4
  %__inst76 = alloca %struct._GTypeInstance*, align 8
  %__t78 = alloca i64, align 8
  %__r81 = alloca i32, align 4
  %tmp96 = alloca i32, align 4
  %__inst104 = alloca %struct._GTypeInstance*, align 8
  %__t106 = alloca i64, align 8
  %__r109 = alloca i32, align 4
  %tmp124 = alloca i32, align 4
  store i8* %title, i8** %title.addr, align 8
  store %struct._GtkWindow* %parent, %struct._GtkWindow** %parent.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpMenuFactory* %menu_factory, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  store %struct._GimpText* %text, %struct._GimpText** %text.addr, align 8
  store %struct._GimpTextBuffer* %text_buffer, %struct._GimpTextBuffer** %text_buffer.addr, align 8
  store double %xres, double* %xres.addr, align 8
  store double %yres, double* %yres.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %title.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_text_editor_new, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GtkWindow*, %struct._GtkWindow** %parent.addr, align 8
  %cmp2 = icmp eq %struct._GtkWindow* %1, null
  br i1 %cmp2, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.1
  %2 = load %struct._GtkWindow*, %struct._GtkWindow** %parent.addr, align 8
  %3 = bitcast %struct._GtkWindow* %2 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %3, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_window_get_type() #6
  store i64 %call, i64* %__t, align 8
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %4, null
  br i1 %tobool, label %if.else.4, label %if.then.3

if.then.3:                                        ; preds = %lor.lhs.false
  store i32 0, i32* %__r, align 4
  br label %if.end.12

if.else.4:                                        ; preds = %lor.lhs.false
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool5 = icmp ne %struct._GTypeClass* %6, null
  br i1 %tobool5, label %land.lhs.true, label %if.else.9

land.lhs.true:                                    ; preds = %if.else.4
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class6 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %7, i32 0, i32 0
  %8 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class6, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %8, i32 0, i32 0
  %9 = load i64, i64* %g_type, align 8
  %10 = load i64, i64* %__t, align 8
  %cmp7 = icmp eq i64 %9, %10
  br i1 %cmp7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.11

if.else.9:                                        ; preds = %land.lhs.true, %if.else.4
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %12 = load i64, i64* %__t, align 8
  %call10 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %11, i64 %12) #7
  store i32 %call10, i32* %__r, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.else.9, %if.then.8
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.then.3
  %13 = load i32, i32* %__r, align 4
  store i32 %13, i32* %tmp
  %14 = load i32, i32* %tmp
  %tobool13 = icmp ne i32 %14, 0
  br i1 %tobool13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %if.end.12, %do.body.1
  br label %if.end.16

if.else.15:                                       ; preds = %if.end.12
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_text_editor_new, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  br label %do.body.18

do.body.18:                                       ; preds = %do.end.17
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %16 = bitcast %struct._Gimp* %15 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %16, %struct._GTypeInstance** %__inst20, align 8
  %call23 = call i64 @gimp_get_type() #6
  store i64 %call23, i64* %__t22, align 8
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %tobool26 = icmp ne %struct._GTypeInstance* %17, null
  br i1 %tobool26, label %if.else.28, label %if.then.27

if.then.27:                                       ; preds = %do.body.18
  store i32 0, i32* %__r25, align 4
  br label %if.end.39

if.else.28:                                       ; preds = %do.body.18
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %g_class29 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class29, align 8
  %tobool30 = icmp ne %struct._GTypeClass* %19, null
  br i1 %tobool30, label %land.lhs.true.31, label %if.else.36

land.lhs.true.31:                                 ; preds = %if.else.28
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %g_class32 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class32, align 8
  %g_type33 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type33, align 8
  %23 = load i64, i64* %__t22, align 8
  %cmp34 = icmp eq i64 %22, %23
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %land.lhs.true.31
  store i32 1, i32* %__r25, align 4
  br label %if.end.38

if.else.36:                                       ; preds = %land.lhs.true.31, %if.else.28
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %25 = load i64, i64* %__t22, align 8
  %call37 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %24, i64 %25) #7
  store i32 %call37, i32* %__r25, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.36, %if.then.35
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.27
  %26 = load i32, i32* %__r25, align 4
  store i32 %26, i32* %tmp40
  %27 = load i32, i32* %tmp40
  %tobool41 = icmp ne i32 %27, 0
  br i1 %tobool41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %if.end.39
  br label %if.end.44

if.else.43:                                       ; preds = %if.end.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_text_editor_new, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.44:                                        ; preds = %if.then.42
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  br label %do.body.46

do.body.46:                                       ; preds = %do.end.45
  %28 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  %29 = bitcast %struct._GimpMenuFactory* %28 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %29, %struct._GTypeInstance** %__inst48, align 8
  %call51 = call i64 @gimp_menu_factory_get_type() #6
  store i64 %call51, i64* %__t50, align 8
  %30 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst48, align 8
  %tobool54 = icmp ne %struct._GTypeInstance* %30, null
  br i1 %tobool54, label %if.else.56, label %if.then.55

if.then.55:                                       ; preds = %do.body.46
  store i32 0, i32* %__r53, align 4
  br label %if.end.67

if.else.56:                                       ; preds = %do.body.46
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst48, align 8
  %g_class57 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class57, align 8
  %tobool58 = icmp ne %struct._GTypeClass* %32, null
  br i1 %tobool58, label %land.lhs.true.59, label %if.else.64

land.lhs.true.59:                                 ; preds = %if.else.56
  %33 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst48, align 8
  %g_class60 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %33, i32 0, i32 0
  %34 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class60, align 8
  %g_type61 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %34, i32 0, i32 0
  %35 = load i64, i64* %g_type61, align 8
  %36 = load i64, i64* %__t50, align 8
  %cmp62 = icmp eq i64 %35, %36
  br i1 %cmp62, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %land.lhs.true.59
  store i32 1, i32* %__r53, align 4
  br label %if.end.66

if.else.64:                                       ; preds = %land.lhs.true.59, %if.else.56
  %37 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst48, align 8
  %38 = load i64, i64* %__t50, align 8
  %call65 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %37, i64 %38) #7
  store i32 %call65, i32* %__r53, align 4
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.64, %if.then.63
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.then.55
  %39 = load i32, i32* %__r53, align 4
  store i32 %39, i32* %tmp68
  %40 = load i32, i32* %tmp68
  %tobool69 = icmp ne i32 %40, 0
  br i1 %tobool69, label %if.then.70, label %if.else.71

if.then.70:                                       ; preds = %if.end.67
  br label %if.end.72

if.else.71:                                       ; preds = %if.end.67
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_text_editor_new, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.72:                                        ; preds = %if.then.70
  br label %do.end.73

do.end.73:                                        ; preds = %if.end.72
  br label %do.body.74

do.body.74:                                       ; preds = %do.end.73
  %41 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %42 = bitcast %struct._GimpText* %41 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %42, %struct._GTypeInstance** %__inst76, align 8
  %call79 = call i64 @gimp_text_get_type() #6
  store i64 %call79, i64* %__t78, align 8
  %43 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst76, align 8
  %tobool82 = icmp ne %struct._GTypeInstance* %43, null
  br i1 %tobool82, label %if.else.84, label %if.then.83

if.then.83:                                       ; preds = %do.body.74
  store i32 0, i32* %__r81, align 4
  br label %if.end.95

if.else.84:                                       ; preds = %do.body.74
  %44 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst76, align 8
  %g_class85 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %44, i32 0, i32 0
  %45 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class85, align 8
  %tobool86 = icmp ne %struct._GTypeClass* %45, null
  br i1 %tobool86, label %land.lhs.true.87, label %if.else.92

land.lhs.true.87:                                 ; preds = %if.else.84
  %46 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst76, align 8
  %g_class88 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %46, i32 0, i32 0
  %47 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class88, align 8
  %g_type89 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %47, i32 0, i32 0
  %48 = load i64, i64* %g_type89, align 8
  %49 = load i64, i64* %__t78, align 8
  %cmp90 = icmp eq i64 %48, %49
  br i1 %cmp90, label %if.then.91, label %if.else.92

if.then.91:                                       ; preds = %land.lhs.true.87
  store i32 1, i32* %__r81, align 4
  br label %if.end.94

if.else.92:                                       ; preds = %land.lhs.true.87, %if.else.84
  %50 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst76, align 8
  %51 = load i64, i64* %__t78, align 8
  %call93 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %50, i64 %51) #7
  store i32 %call93, i32* %__r81, align 4
  br label %if.end.94

if.end.94:                                        ; preds = %if.else.92, %if.then.91
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.then.83
  %52 = load i32, i32* %__r81, align 4
  store i32 %52, i32* %tmp96
  %53 = load i32, i32* %tmp96
  %tobool97 = icmp ne i32 %53, 0
  br i1 %tobool97, label %if.then.98, label %if.else.99

if.then.98:                                       ; preds = %if.end.95
  br label %if.end.100

if.else.99:                                       ; preds = %if.end.95
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_text_editor_new, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.100:                                       ; preds = %if.then.98
  br label %do.end.101

do.end.101:                                       ; preds = %if.end.100
  br label %do.body.102

do.body.102:                                      ; preds = %do.end.101
  %54 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %text_buffer.addr, align 8
  %55 = bitcast %struct._GimpTextBuffer* %54 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %55, %struct._GTypeInstance** %__inst104, align 8
  %call107 = call i64 @gimp_text_buffer_get_type() #6
  store i64 %call107, i64* %__t106, align 8
  %56 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst104, align 8
  %tobool110 = icmp ne %struct._GTypeInstance* %56, null
  br i1 %tobool110, label %if.else.112, label %if.then.111

if.then.111:                                      ; preds = %do.body.102
  store i32 0, i32* %__r109, align 4
  br label %if.end.123

if.else.112:                                      ; preds = %do.body.102
  %57 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst104, align 8
  %g_class113 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %57, i32 0, i32 0
  %58 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class113, align 8
  %tobool114 = icmp ne %struct._GTypeClass* %58, null
  br i1 %tobool114, label %land.lhs.true.115, label %if.else.120

land.lhs.true.115:                                ; preds = %if.else.112
  %59 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst104, align 8
  %g_class116 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %59, i32 0, i32 0
  %60 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class116, align 8
  %g_type117 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %60, i32 0, i32 0
  %61 = load i64, i64* %g_type117, align 8
  %62 = load i64, i64* %__t106, align 8
  %cmp118 = icmp eq i64 %61, %62
  br i1 %cmp118, label %if.then.119, label %if.else.120

if.then.119:                                      ; preds = %land.lhs.true.115
  store i32 1, i32* %__r109, align 4
  br label %if.end.122

if.else.120:                                      ; preds = %land.lhs.true.115, %if.else.112
  %63 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst104, align 8
  %64 = load i64, i64* %__t106, align 8
  %call121 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %63, i64 %64) #7
  store i32 %call121, i32* %__r109, align 4
  br label %if.end.122

if.end.122:                                       ; preds = %if.else.120, %if.then.119
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.122, %if.then.111
  %65 = load i32, i32* %__r109, align 4
  store i32 %65, i32* %tmp124
  %66 = load i32, i32* %tmp124
  %tobool125 = icmp ne i32 %66, 0
  br i1 %tobool125, label %if.then.126, label %if.else.127

if.then.126:                                      ; preds = %if.end.123
  br label %if.end.128

if.else.127:                                      ; preds = %if.end.123
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_text_editor_new, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.128:                                       ; preds = %if.then.126
  br label %do.end.129

do.end.129:                                       ; preds = %if.end.128
  %call130 = call i64 @gimp_text_editor_get_type() #6
  %67 = load i8*, i8** %title.addr, align 8
  %68 = load %struct._GtkWindow*, %struct._GtkWindow** %parent.addr, align 8
  %call131 = call i8* (i64, i8*, ...) @g_object_new(i64 %call130, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), %struct._GtkWindow* %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %69 = bitcast i8* %call131 to %struct._GimpTextEditor*
  store %struct._GimpTextEditor* %69, %struct._GimpTextEditor** %editor, align 8
  %70 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor, align 8
  %71 = bitcast %struct._GimpTextEditor* %70 to %struct._GTypeInstance*
  %call132 = call i64 @gtk_dialog_get_type() #6
  %call133 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 %call132)
  %72 = bitcast %struct._GTypeInstance* %call133 to %struct._GtkDialog*
  %call134 = call %struct._GtkWidget* @gtk_dialog_add_button(%struct._GtkDialog* %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i32 -7)
  %73 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor, align 8
  %74 = bitcast %struct._GimpTextEditor* %73 to i8*
  %call135 = call i64 @g_signal_connect_data(i8* %74, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @gtk_widget_destroy to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %75 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %text_buffer.addr, align 8
  %76 = bitcast %struct._GimpTextBuffer* %75 to i8*
  %77 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor, align 8
  %78 = bitcast %struct._GimpTextEditor* %77 to i8*
  %call136 = call i64 @g_signal_connect_object(i8* %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), void ()* bitcast (void (%struct._GtkTextBuffer*, %struct._GimpTextEditor*)* @gimp_text_editor_text_changed to void ()*), i8* %78, i32 0)
  %79 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  %80 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor, align 8
  %81 = bitcast %struct._GimpTextEditor* %80 to i8*
  %call137 = call %struct._GimpUIManager* @gimp_menu_factory_manager_new(%struct._GimpMenuFactory* %79, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i8* %81, i32 0)
  %82 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor, align 8
  %ui_manager = getelementptr inbounds %struct._GimpTextEditor, %struct._GimpTextEditor* %82, i32 0, i32 6
  store %struct._GimpUIManager* %call137, %struct._GimpUIManager** %ui_manager, align 8
  %83 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor, align 8
  %84 = bitcast %struct._GimpTextEditor* %83 to %struct._GTypeInstance*
  %call138 = call i64 @gtk_dialog_get_type() #6
  %call139 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %84, i64 %call138)
  %85 = bitcast %struct._GTypeInstance* %call139 to %struct._GtkDialog*
  %call140 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %85)
  store %struct._GtkWidget* %call140, %struct._GtkWidget** %content_area, align 8
  %86 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor, align 8
  %ui_manager141 = getelementptr inbounds %struct._GimpTextEditor, %struct._GimpTextEditor* %86, i32 0, i32 6
  %87 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager141, align 8
  %88 = bitcast %struct._GimpUIManager* %87 to %struct._GTypeInstance*
  %call142 = call i64 @gtk_ui_manager_get_type() #6
  %call143 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %88, i64 %call142)
  %89 = bitcast %struct._GTypeInstance* %call143 to %struct._GtkUIManager*
  %call144 = call %struct._GtkWidget* @gtk_ui_manager_get_widget(%struct._GtkUIManager* %89, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i32 0, i32 0))
  store %struct._GtkWidget* %call144, %struct._GtkWidget** %toolbar, align 8
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %toolbar, align 8
  %tobool145 = icmp ne %struct._GtkWidget* %90, null
  br i1 %tobool145, label %if.then.146, label %if.end.149

if.then.146:                                      ; preds = %do.end.129
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %content_area, align 8
  %92 = bitcast %struct._GtkWidget* %91 to %struct._GTypeInstance*
  %call147 = call i64 @gtk_box_get_type() #6
  %call148 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %92, i64 %call147)
  %93 = bitcast %struct._GTypeInstance* %call148 to %struct._GtkBox*
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %toolbar, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %93, %struct._GtkWidget* %94, i32 0, i32 0, i32 0)
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %toolbar, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %95)
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.146, %do.end.129
  %96 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %97 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %98 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %text_buffer.addr, align 8
  %99 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %fonts = getelementptr inbounds %struct._Gimp, %struct._Gimp* %99, i32 0, i32 36
  %100 = load %struct._GimpContainer*, %struct._GimpContainer** %fonts, align 8
  %101 = load double, double* %xres.addr, align 8
  %102 = load double, double* %yres.addr, align 8
  %call150 = call %struct._GtkWidget* @gimp_text_style_editor_new(%struct._Gimp* %96, %struct._GimpText* %97, %struct._GimpTextBuffer* %98, %struct._GimpContainer* %100, double %101, double %102)
  store %struct._GtkWidget* %call150, %struct._GtkWidget** %style_editor, align 8
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %content_area, align 8
  %104 = bitcast %struct._GtkWidget* %103 to %struct._GTypeInstance*
  %call151 = call i64 @gtk_box_get_type() #6
  %call152 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %104, i64 %call151)
  %105 = bitcast %struct._GTypeInstance* %call152 to %struct._GtkBox*
  %106 = load %struct._GtkWidget*, %struct._GtkWidget** %style_editor, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %105, %struct._GtkWidget* %106, i32 0, i32 0, i32 0)
  %107 = load %struct._GtkWidget*, %struct._GtkWidget** %style_editor, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %107)
  %call153 = call %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment* null, %struct._GtkAdjustment* null)
  store %struct._GtkWidget* %call153, %struct._GtkWidget** %scrolled_window, align 8
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window, align 8
  %109 = bitcast %struct._GtkWidget* %108 to %struct._GTypeInstance*
  %call154 = call i64 @gtk_scrolled_window_get_type() #6
  %call155 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %109, i64 %call154)
  %110 = bitcast %struct._GTypeInstance* %call155 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow* %110, i32 1, i32 1)
  %111 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window, align 8
  %112 = bitcast %struct._GtkWidget* %111 to %struct._GTypeInstance*
  %call156 = call i64 @gtk_container_get_type() #6
  %call157 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %112, i64 %call156)
  %113 = bitcast %struct._GTypeInstance* %call157 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %113, i32 2)
  %114 = load %struct._GtkWidget*, %struct._GtkWidget** %content_area, align 8
  %115 = bitcast %struct._GtkWidget* %114 to %struct._GTypeInstance*
  %call158 = call i64 @gtk_box_get_type() #6
  %call159 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %115, i64 %call158)
  %116 = bitcast %struct._GTypeInstance* %call159 to %struct._GtkBox*
  %117 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %116, %struct._GtkWidget* %117, i32 1, i32 1, i32 0)
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %118)
  %119 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %text_buffer.addr, align 8
  %120 = bitcast %struct._GimpTextBuffer* %119 to %struct._GTypeInstance*
  %call160 = call i64 @gtk_text_buffer_get_type() #6
  %call161 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %120, i64 %call160)
  %121 = bitcast %struct._GTypeInstance* %call161 to %struct._GtkTextBuffer*
  %call162 = call %struct._GtkWidget* @gtk_text_view_new_with_buffer(%struct._GtkTextBuffer* %121)
  %122 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor, align 8
  %view = getelementptr inbounds %struct._GimpTextEditor, %struct._GimpTextEditor* %122, i32 0, i32 3
  store %struct._GtkWidget* %call162, %struct._GtkWidget** %view, align 8
  %123 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor, align 8
  %view163 = getelementptr inbounds %struct._GimpTextEditor, %struct._GimpTextEditor* %123, i32 0, i32 3
  %124 = load %struct._GtkWidget*, %struct._GtkWidget** %view163, align 8
  %125 = bitcast %struct._GtkWidget* %124 to %struct._GTypeInstance*
  %call164 = call i64 @gtk_text_view_get_type() #6
  %call165 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %125, i64 %call164)
  %126 = bitcast %struct._GTypeInstance* %call165 to %struct._GtkTextView*
  call void @gtk_text_view_set_wrap_mode(%struct._GtkTextView* %126, i32 3)
  %127 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window, align 8
  %128 = bitcast %struct._GtkWidget* %127 to %struct._GTypeInstance*
  %call166 = call i64 @gtk_container_get_type() #6
  %call167 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %128, i64 %call166)
  %129 = bitcast %struct._GTypeInstance* %call167 to %struct._GtkContainer*
  %130 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor, align 8
  %view168 = getelementptr inbounds %struct._GimpTextEditor, %struct._GimpTextEditor* %130, i32 0, i32 3
  %131 = load %struct._GtkWidget*, %struct._GtkWidget** %view168, align 8
  call void @gtk_container_add(%struct._GtkContainer* %129, %struct._GtkWidget* %131)
  %132 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor, align 8
  %view169 = getelementptr inbounds %struct._GimpTextEditor, %struct._GimpTextEditor* %132, i32 0, i32 3
  %133 = load %struct._GtkWidget*, %struct._GtkWidget** %view169, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %133)
  %134 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor, align 8
  %base_dir = getelementptr inbounds %struct._GimpTextEditor, %struct._GimpTextEditor* %134, i32 0, i32 1
  %135 = load i32, i32* %base_dir, align 4
  switch i32 %135, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.171
  ]

sw.bb:                                            ; preds = %if.end.149
  %136 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor, align 8
  %view170 = getelementptr inbounds %struct._GimpTextEditor, %struct._GimpTextEditor* %136, i32 0, i32 3
  %137 = load %struct._GtkWidget*, %struct._GtkWidget** %view170, align 8
  call void @gtk_widget_set_direction(%struct._GtkWidget* %137, i32 1)
  br label %sw.epilog

sw.bb.171:                                        ; preds = %if.end.149
  %138 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor, align 8
  %view172 = getelementptr inbounds %struct._GimpTextEditor, %struct._GimpTextEditor* %138, i32 0, i32 3
  %139 = load %struct._GtkWidget*, %struct._GtkWidget** %view172, align 8
  call void @gtk_widget_set_direction(%struct._GtkWidget* %139, i32 2)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.149, %sw.bb.171, %sw.bb
  %140 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor, align 8
  %view173 = getelementptr inbounds %struct._GimpTextEditor, %struct._GimpTextEditor* %140, i32 0, i32 3
  %141 = load %struct._GtkWidget*, %struct._GtkWidget** %view173, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %141, i32 200, i32 64)
  %call174 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i32 0, i32 0)) #8
  %call175 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call174)
  %142 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor, align 8
  %font_toggle = getelementptr inbounds %struct._GimpTextEditor, %struct._GimpTextEditor* %142, i32 0, i32 4
  store %struct._GtkWidget* %call175, %struct._GtkWidget** %font_toggle, align 8
  %143 = load %struct._GtkWidget*, %struct._GtkWidget** %content_area, align 8
  %144 = bitcast %struct._GtkWidget* %143 to %struct._GTypeInstance*
  %call176 = call i64 @gtk_box_get_type() #6
  %call177 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %144, i64 %call176)
  %145 = bitcast %struct._GTypeInstance* %call177 to %struct._GtkBox*
  %146 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor, align 8
  %font_toggle178 = getelementptr inbounds %struct._GimpTextEditor, %struct._GimpTextEditor* %146, i32 0, i32 4
  %147 = load %struct._GtkWidget*, %struct._GtkWidget** %font_toggle178, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %145, %struct._GtkWidget* %147, i32 0, i32 0, i32 0)
  %148 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor, align 8
  %font_toggle179 = getelementptr inbounds %struct._GimpTextEditor, %struct._GimpTextEditor* %148, i32 0, i32 4
  %149 = load %struct._GtkWidget*, %struct._GtkWidget** %font_toggle179, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %149)
  %150 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor, align 8
  %font_toggle180 = getelementptr inbounds %struct._GimpTextEditor, %struct._GimpTextEditor* %150, i32 0, i32 4
  %151 = load %struct._GtkWidget*, %struct._GtkWidget** %font_toggle180, align 8
  %152 = bitcast %struct._GtkWidget* %151 to i8*
  %153 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor, align 8
  %154 = bitcast %struct._GimpTextEditor* %153 to i8*
  %call181 = call i64 @g_signal_connect_data(i8* %152, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), void ()* bitcast (void (%struct._GtkToggleButton*, %struct._GimpTextEditor*)* @gimp_text_editor_font_toggled to void ()*), i8* %154, void (i8*, %struct._GClosure*)* null, i32 0)
  %155 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor, align 8
  %view182 = getelementptr inbounds %struct._GimpTextEditor, %struct._GimpTextEditor* %155, i32 0, i32 3
  %156 = load %struct._GtkWidget*, %struct._GtkWidget** %view182, align 8
  call void @gtk_widget_grab_focus(%struct._GtkWidget* %156)
  %157 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor, align 8
  %ui_manager183 = getelementptr inbounds %struct._GimpTextEditor, %struct._GimpTextEditor* %157, i32 0, i32 6
  %158 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager183, align 8
  %159 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor, align 8
  %160 = bitcast %struct._GimpTextEditor* %159 to i8*
  call void @gimp_ui_manager_update(%struct._GimpUIManager* %158, i8* %160)
  %161 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor, align 8
  %162 = bitcast %struct._GimpTextEditor* %161 to %struct._GTypeInstance*
  %call184 = call i64 @gtk_widget_get_type() #6
  %call185 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %162, i64 %call184)
  %163 = bitcast %struct._GTypeInstance* %call185 to %struct._GtkWidget*
  store %struct._GtkWidget* %163, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.else.127, %if.else.99, %if.else.71, %if.else.43, %if.else.15, %if.else
  %164 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %164
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_menu_factory_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_text_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_text_buffer_get_type() #2

declare i8* @g_object_new(i64, i8*, ...) #1

declare void @gimp_standard_help_func(i8*, i8*) #1

declare %struct._GtkWidget* @gtk_dialog_add_button(%struct._GtkDialog*, i8*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #2

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_editor_text_changed(%struct._GtkTextBuffer* %buffer, %struct._GimpTextEditor* %editor) #3 {
entry:
  %buffer.addr = alloca %struct._GtkTextBuffer*, align 8
  %editor.addr = alloca %struct._GimpTextEditor*, align 8
  store %struct._GtkTextBuffer* %buffer, %struct._GtkTextBuffer** %buffer.addr, align 8
  store %struct._GimpTextEditor* %editor, %struct._GimpTextEditor** %editor.addr, align 8
  %0 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpTextEditor* %0 to i8*
  %2 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @text_editor_signals, i32 0, i64 0), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %1, i32 %2, i32 0)
  ret void
}

declare %struct._GimpUIManager* @gimp_menu_factory_manager_new(%struct._GimpMenuFactory*, i8*, i8*, i32) #1

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

declare %struct._GtkWidget* @gtk_ui_manager_get_widget(%struct._GtkUIManager*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_ui_manager_get_type() #2

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_text_style_editor_new(%struct._Gimp*, %struct._GimpText*, %struct._GimpTextBuffer*, %struct._GimpContainer*, double, double) #1

declare %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment*, %struct._GtkAdjustment*) #1

declare void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_scrolled_window_get_type() #2

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare %struct._GtkWidget* @gtk_text_view_new_with_buffer(%struct._GtkTextBuffer*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_text_buffer_get_type() #2

declare void @gtk_text_view_set_wrap_mode(%struct._GtkTextView*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_text_view_get_type() #2

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare void @gtk_widget_set_direction(%struct._GtkWidget*, i32) #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

; Function Attrs: nounwind uwtable
define internal void @gimp_text_editor_font_toggled(%struct._GtkToggleButton* %button, %struct._GimpTextEditor* %editor) #3 {
entry:
  %button.addr = alloca %struct._GtkToggleButton*, align 8
  %editor.addr = alloca %struct._GimpTextEditor*, align 8
  %font_desc = alloca %struct._PangoFontDescription*, align 8
  store %struct._GtkToggleButton* %button, %struct._GtkToggleButton** %button.addr, align 8
  store %struct._GimpTextEditor* %editor, %struct._GimpTextEditor** %editor.addr, align 8
  store %struct._PangoFontDescription* null, %struct._PangoFontDescription** %font_desc, align 8
  %0 = load %struct._GtkToggleButton*, %struct._GtkToggleButton** %button.addr, align 8
  %call = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor.addr, align 8
  %font_name = getelementptr inbounds %struct._GimpTextEditor, %struct._GimpTextEditor* %1, i32 0, i32 2
  %2 = load i8*, i8** %font_name, align 8
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor.addr, align 8
  %font_name2 = getelementptr inbounds %struct._GimpTextEditor, %struct._GimpTextEditor* %3, i32 0, i32 2
  %4 = load i8*, i8** %font_name2, align 8
  %call3 = call %struct._PangoFontDescription* @pango_font_description_from_string(i8* %4)
  store %struct._PangoFontDescription* %call3, %struct._PangoFontDescription** %font_desc, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %5 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor.addr, align 8
  %view = getelementptr inbounds %struct._GimpTextEditor, %struct._GimpTextEditor* %5, i32 0, i32 3
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %7 = load %struct._PangoFontDescription*, %struct._PangoFontDescription** %font_desc, align 8
  call void @gtk_widget_modify_font(%struct._GtkWidget* %6, %struct._PangoFontDescription* %7)
  %8 = load %struct._PangoFontDescription*, %struct._PangoFontDescription** %font_desc, align 8
  %tobool4 = icmp ne %struct._PangoFontDescription* %8, null
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %9 = load %struct._PangoFontDescription*, %struct._PangoFontDescription** %font_desc, align 8
  call void @pango_font_description_free(%struct._PangoFontDescription* %9)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  ret void
}

declare void @gtk_widget_grab_focus(%struct._GtkWidget*) #1

declare void @gimp_ui_manager_update(%struct._GimpUIManager*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind uwtable
define void @gimp_text_editor_set_text(%struct._GimpTextEditor* %editor, i8* %text, i32 %len) #3 {
entry:
  %editor.addr = alloca %struct._GimpTextEditor*, align 8
  %text.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %buffer = alloca %struct._GtkTextBuffer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTextEditor* %editor, %struct._GimpTextEditor** %editor.addr, align 8
  store i8* %text, i8** %text.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpTextEditor* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_text_editor_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_text_editor_set_text, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i32 0, i32 0))
  br label %if.end.24

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %text.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load i32, i32* %len.addr, align 4
  %cmp13 = icmp eq i32 %14, 0
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %lor.lhs.false, %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_text_editor_set_text, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i32 0, i32 0))
  br label %if.end.24

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %15 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor.addr, align 8
  %view = getelementptr inbounds %struct._GimpTextEditor, %struct._GimpTextEditor* %15, i32 0, i32 3
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_text_view_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call18)
  %18 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkTextView*
  %call20 = call %struct._GtkTextBuffer* @gtk_text_view_get_buffer(%struct._GtkTextView* %18)
  store %struct._GtkTextBuffer* %call20, %struct._GtkTextBuffer** %buffer, align 8
  %19 = load i8*, i8** %text.addr, align 8
  %tobool21 = icmp ne i8* %19, null
  br i1 %tobool21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %do.end.17
  %20 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %21 = load i8*, i8** %text.addr, align 8
  %22 = load i32, i32* %len.addr, align 4
  call void @gtk_text_buffer_set_text(%struct._GtkTextBuffer* %20, i8* %21, i32 %22)
  br label %if.end.24

if.else.23:                                       ; preds = %do.end.17
  %23 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  call void @gtk_text_buffer_set_text(%struct._GtkTextBuffer* %23, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i32 0, i32 0), i32 0)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.9, %if.else.15, %if.else.23, %if.then.22
  ret void
}

declare %struct._GtkTextBuffer* @gtk_text_view_get_buffer(%struct._GtkTextView*) #1

declare void @gtk_text_buffer_set_text(%struct._GtkTextBuffer*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define i8* @gimp_text_editor_get_text(%struct._GimpTextEditor* %editor) #3 {
entry:
  %retval = alloca i8*, align 8
  %editor.addr = alloca %struct._GimpTextEditor*, align 8
  %buffer = alloca %struct._GtkTextBuffer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTextEditor* %editor, %struct._GimpTextEditor** %editor.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpTextEditor* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_text_editor_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_text_editor_get_text, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor.addr, align 8
  %view = getelementptr inbounds %struct._GimpTextEditor, %struct._GimpTextEditor* %13, i32 0, i32 3
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_text_view_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call11)
  %16 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkTextView*
  %call13 = call %struct._GtkTextBuffer* @gtk_text_view_get_buffer(%struct._GtkTextView* %16)
  store %struct._GtkTextBuffer* %call13, %struct._GtkTextBuffer** %buffer, align 8
  %17 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %18 = bitcast %struct._GtkTextBuffer* %17 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_text_buffer_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call14)
  %19 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpTextBuffer*
  %call16 = call i8* @gimp_text_buffer_get_text(%struct._GimpTextBuffer* %19)
  store i8* %call16, i8** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %20 = load i8*, i8** %retval
  ret i8* %20
}

declare i8* @gimp_text_buffer_get_text(%struct._GimpTextBuffer*) #1

; Function Attrs: nounwind uwtable
define void @gimp_text_editor_set_direction(%struct._GimpTextEditor* %editor, i32 %base_dir) #3 {
entry:
  %editor.addr = alloca %struct._GimpTextEditor*, align 8
  %base_dir.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTextEditor* %editor, %struct._GimpTextEditor** %editor.addr, align 8
  store i32 %base_dir, i32* %base_dir.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpTextEditor* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_text_editor_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_text_editor_set_direction, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor.addr, align 8
  %base_dir11 = getelementptr inbounds %struct._GimpTextEditor, %struct._GimpTextEditor* %13, i32 0, i32 1
  %14 = load i32, i32* %base_dir11, align 4
  %15 = load i32, i32* %base_dir.addr, align 4
  %cmp12 = icmp eq i32 %14, %15
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %do.end
  br label %return

if.end.14:                                        ; preds = %do.end
  %16 = load i32, i32* %base_dir.addr, align 4
  %17 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor.addr, align 8
  %base_dir15 = getelementptr inbounds %struct._GimpTextEditor, %struct._GimpTextEditor* %17, i32 0, i32 1
  store i32 %16, i32* %base_dir15, align 4
  %18 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor.addr, align 8
  %view = getelementptr inbounds %struct._GimpTextEditor, %struct._GimpTextEditor* %18, i32 0, i32 3
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %tobool16 = icmp ne %struct._GtkWidget* %19, null
  br i1 %tobool16, label %if.then.17, label %if.end.22

if.then.17:                                       ; preds = %if.end.14
  %20 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor.addr, align 8
  %base_dir18 = getelementptr inbounds %struct._GimpTextEditor, %struct._GimpTextEditor* %20, i32 0, i32 1
  %21 = load i32, i32* %base_dir18, align 4
  switch i32 %21, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.20
  ]

sw.bb:                                            ; preds = %if.then.17
  %22 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor.addr, align 8
  %view19 = getelementptr inbounds %struct._GimpTextEditor, %struct._GimpTextEditor* %22, i32 0, i32 3
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %view19, align 8
  call void @gtk_widget_set_direction(%struct._GtkWidget* %23, i32 1)
  br label %sw.epilog

sw.bb.20:                                         ; preds = %if.then.17
  %24 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor.addr, align 8
  %view21 = getelementptr inbounds %struct._GimpTextEditor, %struct._GimpTextEditor* %24, i32 0, i32 3
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %view21, align 8
  call void @gtk_widget_set_direction(%struct._GtkWidget* %25, i32 2)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.17, %sw.bb.20, %sw.bb
  br label %if.end.22

if.end.22:                                        ; preds = %sw.epilog, %if.end.14
  %26 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor.addr, align 8
  %ui_manager = getelementptr inbounds %struct._GimpTextEditor, %struct._GimpTextEditor* %26, i32 0, i32 6
  %27 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager, align 8
  %28 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor.addr, align 8
  %29 = bitcast %struct._GimpTextEditor* %28 to i8*
  call void @gimp_ui_manager_update(%struct._GimpUIManager* %27, i8* %29)
  %30 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor.addr, align 8
  %31 = bitcast %struct._GimpTextEditor* %30 to i8*
  %32 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @text_editor_signals, i32 0, i64 1), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %31, i32 %32, i32 0)
  br label %return

return:                                           ; preds = %if.end.22, %if.then.13, %if.else.9
  ret void
}

declare void @g_signal_emit(i8*, i32, i32, ...) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_text_editor_get_direction(%struct._GimpTextEditor* %editor) #3 {
entry:
  %retval = alloca i32, align 4
  %editor.addr = alloca %struct._GimpTextEditor*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTextEditor* %editor, %struct._GimpTextEditor** %editor.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpTextEditor* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_text_editor_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_text_editor_get_direction, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor.addr, align 8
  %base_dir = getelementptr inbounds %struct._GimpTextEditor, %struct._GimpTextEditor* %13, i32 0, i32 1
  %14 = load i32, i32* %base_dir, align 4
  store i32 %14, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define void @gimp_text_editor_set_font_name(%struct._GimpTextEditor* %editor, i8* %font_name) #3 {
entry:
  %editor.addr = alloca %struct._GimpTextEditor*, align 8
  %font_name.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %font_desc = alloca %struct._PangoFontDescription*, align 8
  store %struct._GimpTextEditor* %editor, %struct._GimpTextEditor** %editor.addr, align 8
  store i8* %font_name, i8** %font_name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpTextEditor* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_text_editor_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_text_editor_set_font_name, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i32 0, i32 0))
  br label %if.end.31

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor.addr, align 8
  %font_name11 = getelementptr inbounds %struct._GimpTextEditor, %struct._GimpTextEditor* %13, i32 0, i32 2
  %14 = load i8*, i8** %font_name11, align 8
  %tobool12 = icmp ne i8* %14, null
  br i1 %tobool12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %do.end
  %15 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor.addr, align 8
  %font_name14 = getelementptr inbounds %struct._GimpTextEditor, %struct._GimpTextEditor* %15, i32 0, i32 2
  %16 = load i8*, i8** %font_name14, align 8
  call void @g_free(i8* %16)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %do.end
  %17 = load i8*, i8** %font_name.addr, align 8
  %call16 = call noalias i8* @g_strdup(i8* %17)
  %18 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor.addr, align 8
  %font_name17 = getelementptr inbounds %struct._GimpTextEditor, %struct._GimpTextEditor* %18, i32 0, i32 2
  store i8* %call16, i8** %font_name17, align 8
  %19 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor.addr, align 8
  %font_toggle = getelementptr inbounds %struct._GimpTextEditor, %struct._GimpTextEditor* %19, i32 0, i32 4
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %font_toggle, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_toggle_button_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call18)
  %22 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkToggleButton*
  %call20 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %22)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then.22, label %if.end.31

if.then.22:                                       ; preds = %if.end.15
  store %struct._PangoFontDescription* null, %struct._PangoFontDescription** %font_desc, align 8
  %23 = load i8*, i8** %font_name.addr, align 8
  %tobool24 = icmp ne i8* %23, null
  br i1 %tobool24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.then.22
  %24 = load i8*, i8** %font_name.addr, align 8
  %call26 = call %struct._PangoFontDescription* @pango_font_description_from_string(i8* %24)
  store %struct._PangoFontDescription* %call26, %struct._PangoFontDescription** %font_desc, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.then.22
  %25 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor.addr, align 8
  %view = getelementptr inbounds %struct._GimpTextEditor, %struct._GimpTextEditor* %25, i32 0, i32 3
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %27 = load %struct._PangoFontDescription*, %struct._PangoFontDescription** %font_desc, align 8
  call void @gtk_widget_modify_font(%struct._GtkWidget* %26, %struct._PangoFontDescription* %27)
  %28 = load %struct._PangoFontDescription*, %struct._PangoFontDescription** %font_desc, align 8
  %tobool28 = icmp ne %struct._PangoFontDescription* %28, null
  br i1 %tobool28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.27
  %29 = load %struct._PangoFontDescription*, %struct._PangoFontDescription** %font_desc, align 8
  call void @pango_font_description_free(%struct._PangoFontDescription* %29)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.end.27
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.9, %if.end.30, %if.end.15
  ret void
}

declare void @g_free(i8*) #1

declare noalias i8* @g_strdup(i8*) #1

declare i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #2

declare %struct._PangoFontDescription* @pango_font_description_from_string(i8*) #1

declare void @gtk_widget_modify_font(%struct._GtkWidget*, %struct._PangoFontDescription*) #1

declare void @pango_font_description_free(%struct._PangoFontDescription*) #1

; Function Attrs: nounwind uwtable
define i8* @gimp_text_editor_get_font_name(%struct._GimpTextEditor* %editor) #3 {
entry:
  %retval = alloca i8*, align 8
  %editor.addr = alloca %struct._GimpTextEditor*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTextEditor* %editor, %struct._GimpTextEditor** %editor.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpTextEditor* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_text_editor_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_text_editor_get_font_name, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor.addr, align 8
  %font_name = getelementptr inbounds %struct._GimpTextEditor, %struct._GimpTextEditor* %13, i32 0, i32 2
  %14 = load i8*, i8** %font_name, align 8
  store i8* %14, i8** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load i8*, i8** %retval
  ret i8* %15
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_editor_class_init(%struct._GimpTextEditorClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpTextEditorClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpTextEditorClass* %klass, %struct._GimpTextEditorClass** %klass.addr, align 8
  %0 = load %struct._GimpTextEditorClass*, %struct._GimpTextEditorClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpTextEditorClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_text_editor_finalize, void (%struct._GObject*)** %finalize, align 8
  %4 = load %struct._GimpTextEditorClass*, %struct._GimpTextEditorClass** %klass.addr, align 8
  %text_changed = getelementptr inbounds %struct._GimpTextEditorClass, %struct._GimpTextEditorClass* %4, i32 0, i32 1
  store void (%struct._GimpTextEditor*)* null, void (%struct._GimpTextEditor*)** %text_changed, align 8
  %5 = load %struct._GimpTextEditorClass*, %struct._GimpTextEditorClass** %klass.addr, align 8
  %dir_changed = getelementptr inbounds %struct._GimpTextEditorClass, %struct._GimpTextEditorClass* %5, i32 0, i32 2
  store void (%struct._GimpTextEditor*)* null, void (%struct._GimpTextEditor*)** %dir_changed, align 8
  %6 = load %struct._GimpTextEditorClass*, %struct._GimpTextEditorClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpTextEditorClass* %6 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %call1 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0), i64 %8, i32 1, i32 984, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call1, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @text_editor_signals, i32 0, i64 0), align 4
  %9 = load %struct._GimpTextEditorClass*, %struct._GimpTextEditorClass** %klass.addr, align 8
  %10 = bitcast %struct._GimpTextEditorClass* %9 to %struct._GTypeClass*
  %g_type2 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %10, i32 0, i32 0
  %11 = load i64, i64* %g_type2, align 8
  %call3 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0), i64 %11, i32 1, i32 992, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call3, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @text_editor_signals, i32 0, i64 1), align 4
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_editor_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %editor = alloca %struct._GimpTextEditor*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_text_editor_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTextEditor*
  store %struct._GimpTextEditor* %2, %struct._GimpTextEditor** %editor, align 8
  %3 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor, align 8
  %font_name = getelementptr inbounds %struct._GimpTextEditor, %struct._GimpTextEditor* %3, i32 0, i32 2
  %4 = load i8*, i8** %font_name, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor, align 8
  %font_name2 = getelementptr inbounds %struct._GimpTextEditor, %struct._GimpTextEditor* %5, i32 0, i32 2
  %6 = load i8*, i8** %font_name2, align 8
  call void @g_free(i8* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor, align 8
  %ui_manager = getelementptr inbounds %struct._GimpTextEditor, %struct._GimpTextEditor* %7, i32 0, i32 6
  %8 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager, align 8
  %tobool3 = icmp ne %struct._GimpUIManager* %8, null
  br i1 %tobool3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %9 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor, align 8
  %ui_manager5 = getelementptr inbounds %struct._GimpTextEditor, %struct._GimpTextEditor* %9, i32 0, i32 6
  %10 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager5, align 8
  %11 = bitcast %struct._GimpUIManager* %10 to i8*
  call void @g_object_unref(i8* %11)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %12 = load i8*, i8** @gimp_text_editor_parent_class, align 8
  %13 = bitcast i8* %12 to %struct._GTypeClass*
  %call7 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %13, i64 80)
  %14 = bitcast %struct._GTypeClass* %call7 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %14, i32 0, i32 6
  %15 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %16 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %15(%struct._GObject* %16)
  ret void
}

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @g_cclosure_marshal_VOID__VOID(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

declare void @g_object_unref(i8*) #1

declare i32 @gtk_widget_get_default_direction() #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
