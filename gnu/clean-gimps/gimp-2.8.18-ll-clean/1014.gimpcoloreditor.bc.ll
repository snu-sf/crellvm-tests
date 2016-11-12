; ModuleID = './app/widgets/gimpcoloreditor.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GimpDockedInterface = type { %struct._GTypeInterface, void (%struct._GimpDocked*)*, void (%struct._GimpDocked*, %struct._GList*)*, %struct._GList* (%struct._GimpDocked*)*, %struct._GtkWidget* (%struct._GimpDocked*, %struct._GimpContext*, i32)*, i32 (%struct._GimpDocked*)*, %struct._GimpUIManager* (%struct._GimpDocked*, i8**, i8**)*, i8* (%struct._GimpDocked*)*, void (%struct._GimpDocked*, %struct._GimpContext*)*, i32 (%struct._GimpDocked*)*, void (%struct._GimpDocked*, i32)*, i32 (%struct._GimpDocked*)* }
%struct._GTypeInterface = type { i64, i64 }
%struct._GimpDocked = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkStyle = type { %struct._GObject, [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], %struct._GdkColor, %struct._GdkColor, %struct._PangoFontDescription*, i32, i32, [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], %struct._GdkGC*, %struct._GdkGC*, [5 x %struct._GdkDrawable*], i32, i32, %struct._GdkColormap*, %struct._GdkFont*, %struct._PangoFontDescription*, %struct._GtkRcStyle*, %struct._GSList*, %struct._GArray*, %struct._GSList* }
%struct._GdkColor = type { i32, i16, i16, i16 }
%struct._GdkGC = type { %struct._GObject, i32, i32, i32, i32, %struct._GdkColormap* }
%struct._GdkColormap = type { %struct._GObject, i32, %struct._GdkColor*, %struct._GdkVisual*, i8* }
%struct._GdkVisual = type { %struct._GObject, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GdkFont = type opaque
%struct._PangoFontDescription = type opaque
%struct._GtkRcStyle = type { %struct._GObject, i8*, [5 x i8*], %struct._PangoFontDescription*, [5 x i32], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], i32, i32, %struct._GArray*, %struct._GSList*, %struct._GSList*, i8 }
%struct._GArray = type { i8*, i32 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type { %struct._GimpBaseConfig, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct._GimpTemplate*, %struct._GimpGrid*, i32, i64, i32, i32, i8*, i32, i32, i32, i64, %struct._GimpColorConfig*, i32, i32, %struct._GimpRGB, i32 }
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GimpGrid = type opaque
%struct._GimpColorConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpContainer = type opaque
%struct._GimpImage = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpUIManager = type opaque
%struct._GimpColorEditorClass = type { %struct._GimpEditorClass }
%struct._GimpEditorClass = type { %struct._GtkBoxClass }
%struct._GtkBoxClass = type { %struct._GtkContainerClass }
%struct._GtkContainerClass = type { %struct._GtkWidgetClass, void (%struct._GtkContainer*, %struct._GtkWidget*)*, void (%struct._GtkContainer*, %struct._GtkWidget*)*, void (%struct._GtkContainer*)*, void (%struct._GtkContainer*, i32, void (%struct._GtkWidget*, i8*)*, i8*)*, void (%struct._GtkContainer*, %struct._GtkWidget*)*, i64 (%struct._GtkContainer*)*, i8* (%struct._GtkContainer*, %struct._GtkWidget*)*, void (%struct._GtkContainer*, %struct._GtkWidget*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GtkContainer*, %struct._GtkWidget*, i32, %struct._GValue*, %struct._GParamSpec*)*, void ()*, void ()*, void ()*, void ()* }
%struct._GtkWidgetClass = type { %struct._GtkObjectClass, i32, i32, void (%struct._GtkWidget*, i32, %struct._GParamSpec**)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkRequisition*)*, void (%struct._GtkWidget*, %struct._GdkRectangle*)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, %struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkStyle*)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, %struct._GParamSpec*)*, i32 (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32)*, i32 (%struct._GtkWidget*, %union._GdkEvent*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventScroll*)*, i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)*, i32 (%struct._GtkWidget*, %struct._GdkEventKey*)*, i32 (%struct._GtkWidget*, %struct._GdkEventKey*)*, i32 (%struct._GtkWidget*, %struct._GdkEventCrossing*)*, i32 (%struct._GtkWidget*, %struct._GdkEventCrossing*)*, i32 (%struct._GtkWidget*, %struct._GdkEventConfigure*)*, i32 (%struct._GtkWidget*, %struct._GdkEventFocus*)*, i32 (%struct._GtkWidget*, %struct._GdkEventFocus*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProperty*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProximity*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProximity*)*, i32 (%struct._GtkWidget*, %struct._GdkEventVisibility*)*, i32 (%struct._GtkWidget*, %struct._GdkEventClient*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventWindowState*)*, void (%struct._GtkWidget*, %struct._GtkSelectionData*, i32, i32)*, void (%struct._GtkWidget*, %struct._GtkSelectionData*, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, %struct._GtkSelectionData*, i32, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, i32)*, i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32)*, i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, %struct._GtkSelectionData*, i32, i32)*, i32 (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32)*, %struct._AtkObject* (%struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GdkScreen*)*, i32 (%struct._GtkWidget*, i32)*, i32 (%struct._GtkWidget*, %struct._GdkEventGrabBroken*)*, void (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32, i32, i32, %struct._GtkTooltip*)*, void ()*, void ()*, void ()* }
%struct._GtkObjectClass = type { %struct._GObjectClass, void (%struct._GtkObject*, %struct._GtkArg*, i32)*, void (%struct._GtkObject*, %struct._GtkArg*, i32)*, void (%struct._GtkObject*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GtkArg = type opaque
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
%struct.GdkKeyboardGrabInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, i64, i32, i32 }
%struct.GdkPointerWindowInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, double, double, i32, i32, i64 }
%struct._GdkDragContext = type { %struct._GObject, i32, i32, %struct._GdkDrawable*, %struct._GdkDrawable*, %struct._GList*, i32, i32, i32, i32, i8* }
%struct._AtkObject = type { %struct._GObject, i8*, i8*, %struct._AtkObject*, i32, %struct._AtkRelationSet*, i32 }
%struct._AtkRelationSet = type { %struct._GObject, %struct._GPtrArray* }
%struct._GPtrArray = type { i8**, i32 }
%struct._GdkEventGrabBroken = type { i32, %struct._GdkDrawable*, i8, i32, i32, %struct._GdkDrawable* }
%struct._GtkTooltip = type opaque
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GimpColorEditor = type { %struct._GimpEditor, %struct._GimpContext*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GimpEditor = type { %struct._GtkBox, %struct._GimpEditorPrivate* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpEditorPrivate = type opaque
%struct._GimpHSV = type { double, double, double, double }
%struct._GimpColorSelector = type { %struct._GtkBox, i32, i32, i32, %struct._GimpRGB, %struct._GimpHSV, i32 }
%struct._GimpColorSelectorClass = type { %struct._GtkBoxClass, i8*, i8*, i8*, void (%struct._GimpColorSelector*, i32)*, void (%struct._GimpColorSelector*, i32)*, void (%struct._GimpColorSelector*, i32)*, void (%struct._GimpColorSelector*, %struct._GimpRGB*, %struct._GimpHSV*)*, void (%struct._GimpColorSelector*, i32)*, void (%struct._GimpColorSelector*, %struct._GimpRGB*, %struct._GimpHSV*)*, void (%struct._GimpColorSelector*, i32)*, void (%struct._GimpColorSelector*, %struct._GimpColorConfig*)*, void ()*, void ()*, void ()* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GimpColorNotebook = type { %struct._GimpColorSelector, %struct._GtkWidget*, %struct._GList*, %struct._GimpColorSelector* }
%struct._GtkNotebook = type { %struct._GtkContainer, i8*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GtkWidget*, %struct._GdkDrawable*, i32, i16, i16, i24 }
%struct._GtkRadioButton = type { %struct._GtkCheckButton, %struct._GSList* }
%struct._GtkCheckButton = type { %struct._GtkToggleButton }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkSettings = type { %struct._GObject, %struct._GData*, %struct._GtkSettingsPropertyValue*, %struct._GtkRcContext*, %struct._GdkScreen* }
%struct._GtkSettingsPropertyValue = type opaque
%struct._GtkRcContext = type opaque
%struct._GimpSessionInfoAux = type { i8*, i8* }
%struct._GimpFgBgEditor = type { %struct._GtkDrawingArea, %struct._GimpContext*, i32, %struct._GdkPixbuf*, %struct._GdkPixbuf*, i32, i32, i32 }
%struct._GtkDrawingArea = type { %struct._GtkWidget, i8* }
%struct._GdkPixbuf = type opaque
%struct._GimpColorHexEntry = type { %struct._GtkEntry, %struct._GimpRGB }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque

@gimp_color_editor_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"GimpColorEditor\00", align 1
@gimp_color_editor_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpDockedInterface*)* @gimp_color_editor_docked_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@gimp_color_editor_parent_class = internal global i8* null, align 8
@GimpColorEditor_private_offset = internal global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"gimpcoloreditor.c\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@parent_docked_iface = internal global %struct._GimpDockedInterface* null, align 8
@.str.6 = private unnamed_addr constant [13 x i8] c"current-page\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"button\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"foreground-changed\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"background-changed\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"gimp-context\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"content-spacing\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"button-spacing\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"button-icon-size\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"color-changed\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"selector\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"notify::active-color\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"color-picked\00", align 1
@.str.19 = private unnamed_addr constant [94 x i8] c"Hexadecimal color notation as used in HTML and CSS.  This entry also accepts CSS color names.\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_color_editor_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_color_editor_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_color_editor_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_editor_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 824, void (i8*, i8*)* bitcast (void (i8*)* @gimp_color_editor_class_intern_init to void (i8*, i8*)*), i32 184, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpColorEditor*)* @gimp_color_editor_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_docked_interface_get_type() #7
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_color_editor_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_color_editor_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_color_editor_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_editor_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_editor_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_color_editor_parent_class, align 8
  %1 = load i32, i32* @GimpColorEditor_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpColorEditor_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpColorEditorClass*
  call void @gimp_color_editor_class_init(%struct._GimpColorEditorClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_editor_init(%struct._GimpColorEditor* %editor) #3 {
entry:
  %editor.addr = alloca %struct._GimpColorEditor*, align 8
  %notebook = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %content_spacing = alloca i32, align 4
  %button_spacing = alloca i32, align 4
  %button_icon_size = alloca i32, align 4
  %rgb = alloca %struct._GimpRGB, align 8
  %hsv = alloca %struct._GimpHSV, align 8
  %list = alloca %struct._GList*, align 8
  %group = alloca %struct._GSList*, align 8
  %selector = alloca %struct._GimpColorSelector*, align 8
  %selector_class = alloca %struct._GimpColorSelectorClass*, align 8
  %button39 = alloca %struct._GtkWidget*, align 8
  %image = alloca %struct._GtkWidget*, align 8
  store %struct._GimpColorEditor* %editor, %struct._GimpColorEditor** %editor.addr, align 8
  %0 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %context = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %0, i32 0, i32 1
  store %struct._GimpContext* null, %struct._GimpContext** %context, align 8
  %1 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %edit_bg = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %1, i32 0, i32 2
  store i32 0, i32* %edit_bg, align 4
  call void @gimp_rgba_set(%struct._GimpRGB* %rgb, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  call void @gimp_rgb_to_hsv(%struct._GimpRGB* %rgb, %struct._GimpHSV* %hsv)
  %2 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %3 = bitcast %struct._GimpColorEditor* %2 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  call void (%struct._GtkWidget*, i8*, ...) @gtk_widget_style_get(%struct._GtkWidget* %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i32* %content_spacing, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i32* %button_spacing, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0), i32* %button_icon_size, i8* null)
  %5 = load i32, i32* %button_spacing, align 4
  %call2 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 %5)
  %6 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %hbox3 = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %6, i32 0, i32 3
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %hbox3, align 8
  %7 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %hbox4 = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %7, i32 0, i32 3
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox4, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_box_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call5)
  %10 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkBox*
  call void @gtk_box_set_homogeneous(%struct._GtkBox* %10, i32 1)
  %11 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %12 = bitcast %struct._GimpColorEditor* %11 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_box_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call7)
  %13 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkBox*
  %14 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %hbox9 = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %14, i32 0, i32 3
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox9, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %13, %struct._GtkWidget* %15, i32 0, i32 0, i32 0)
  %16 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %hbox10 = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %16, i32 0, i32 3
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox10, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %17)
  %call11 = call i64 @gimp_color_notebook_get_type() #7
  %call12 = call %struct._GtkWidget* @gimp_color_selector_new(i64 %call11, %struct._GimpRGB* %rgb, %struct._GimpHSV* %hsv, i32 0)
  %18 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %notebook13 = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %18, i32 0, i32 4
  store %struct._GtkWidget* %call12, %struct._GtkWidget** %notebook13, align 8
  %19 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %notebook14 = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %19, i32 0, i32 4
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook14, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_color_selector_get_type() #7
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call15)
  %22 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpColorSelector*
  call void @gimp_color_selector_set_show_alpha(%struct._GimpColorSelector* %22, i32 0)
  %23 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %24 = bitcast %struct._GimpColorEditor* %23 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_box_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call17)
  %25 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkBox*
  %26 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %notebook19 = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %26, i32 0, i32 4
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook19, align 8
  %28 = load i32, i32* %content_spacing, align 4
  call void @gtk_box_pack_start(%struct._GtkBox* %25, %struct._GtkWidget* %27, i32 1, i32 1, i32 %28)
  %29 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %notebook20 = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %29, i32 0, i32 4
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook20, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %30)
  %31 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %notebook21 = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %31, i32 0, i32 4
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook21, align 8
  %33 = bitcast %struct._GtkWidget* %32 to i8*
  %34 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %35 = bitcast %struct._GimpColorEditor* %34 to i8*
  %call22 = call i64 @g_signal_connect_data(i8* %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), void ()* bitcast (void (%struct._GimpColorSelector*, %struct._GimpRGB*, %struct._GimpHSV*, %struct._GimpColorEditor*)* @gimp_color_editor_color_changed to void ()*), i8* %35, void (i8*, %struct._GClosure*)* null, i32 0)
  %36 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %notebook23 = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %36, i32 0, i32 4
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook23, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_color_notebook_get_type() #7
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call24)
  %39 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpColorNotebook*
  %notebook26 = getelementptr inbounds %struct._GimpColorNotebook, %struct._GimpColorNotebook* %39, i32 0, i32 1
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook26, align 8
  store %struct._GtkWidget* %40, %struct._GtkWidget** %notebook, align 8
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_notebook_get_type() #7
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call27)
  %43 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkNotebook*
  call void @gtk_notebook_set_show_tabs(%struct._GtkNotebook* %43, i32 0)
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %45 = bitcast %struct._GtkWidget* %44 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_notebook_get_type() #7
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call29)
  %46 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkNotebook*
  call void @gtk_notebook_set_show_border(%struct._GtkNotebook* %46, i32 0)
  %47 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %notebook31 = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %47, i32 0, i32 4
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook31, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call32 = call i64 @gimp_color_notebook_get_type() #7
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call32)
  %50 = bitcast %struct._GTypeInstance* %call33 to %struct._GimpColorNotebook*
  %call34 = call i64 @gimp_color_scales_get_type() #7
  %call35 = call %struct._GtkWidget* @gimp_color_notebook_set_has_page(%struct._GimpColorNotebook* %50, i64 %call34, i32 1)
  store %struct._GSList* null, %struct._GSList** %group, align 8
  %51 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %notebook36 = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %51, i32 0, i32 4
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook36, align 8
  %53 = bitcast %struct._GtkWidget* %52 to %struct._GTypeInstance*
  %call37 = call i64 @gimp_color_notebook_get_type() #7
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call37)
  %54 = bitcast %struct._GTypeInstance* %call38 to %struct._GimpColorNotebook*
  %selectors = getelementptr inbounds %struct._GimpColorNotebook, %struct._GimpColorNotebook* %54, i32 0, i32 2
  %55 = load %struct._GList*, %struct._GList** %selectors, align 8
  store %struct._GList* %55, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %56 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %56, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %57 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %57, i32 0, i32 0
  %58 = load i8*, i8** %data, align 8
  %59 = bitcast i8* %58 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_color_selector_get_type() #7
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call40)
  %60 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpColorSelector*
  store %struct._GimpColorSelector* %60, %struct._GimpColorSelector** %selector, align 8
  %61 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %62 = bitcast %struct._GimpColorSelector* %61 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %62, i32 0, i32 0
  %63 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %64 = bitcast %struct._GTypeClass* %63 to %struct._GimpColorSelectorClass*
  store %struct._GimpColorSelectorClass* %64, %struct._GimpColorSelectorClass** %selector_class, align 8
  %65 = load %struct._GSList*, %struct._GSList** %group, align 8
  %call42 = call %struct._GtkWidget* @gtk_radio_button_new(%struct._GSList* %65)
  store %struct._GtkWidget* %call42, %struct._GtkWidget** %button39, align 8
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %button39, align 8
  %67 = bitcast %struct._GtkWidget* %66 to %struct._GTypeInstance*
  %call43 = call i64 @gtk_radio_button_get_type() #7
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 %call43)
  %68 = bitcast %struct._GTypeInstance* %call44 to %struct._GtkRadioButton*
  %call45 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %68)
  store %struct._GSList* %call45, %struct._GSList** %group, align 8
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %button39, align 8
  %70 = bitcast %struct._GtkWidget* %69 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_toggle_button_get_type() #7
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %70, i64 %call46)
  %71 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkToggleButton*
  call void @gtk_toggle_button_set_mode(%struct._GtkToggleButton* %71, i32 0)
  %72 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %hbox48 = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %72, i32 0, i32 3
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox48, align 8
  %74 = bitcast %struct._GtkWidget* %73 to %struct._GTypeInstance*
  %call49 = call i64 @gtk_box_get_type() #7
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %74, i64 %call49)
  %75 = bitcast %struct._GTypeInstance* %call50 to %struct._GtkBox*
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %button39, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %75, %struct._GtkWidget* %76, i32 1, i32 1, i32 0)
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %button39, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %77)
  %78 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %selector_class, align 8
  %stock_id = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %78, i32 0, i32 3
  %79 = load i8*, i8** %stock_id, align 8
  %call51 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* %79, i32 4)
  store %struct._GtkWidget* %call51, %struct._GtkWidget** %image, align 8
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %button39, align 8
  %81 = bitcast %struct._GtkWidget* %80 to %struct._GTypeInstance*
  %call52 = call i64 @gtk_container_get_type() #7
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call52)
  %82 = bitcast %struct._GTypeInstance* %call53 to %struct._GtkContainer*
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_container_add(%struct._GtkContainer* %82, %struct._GtkWidget* %83)
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %84)
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %button39, align 8
  %86 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %selector_class, align 8
  %name = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %86, i32 0, i32 1
  %87 = load i8*, i8** %name, align 8
  %88 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %selector_class, align 8
  %help_id = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %88, i32 0, i32 2
  %89 = load i8*, i8** %help_id, align 8
  call void @gimp_help_set_help_data(%struct._GtkWidget* %85, i8* %87, i8* %89)
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %button39, align 8
  %91 = bitcast %struct._GtkWidget* %90 to %struct._GTypeInstance*
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %91, i64 80)
  %92 = bitcast %struct._GTypeInstance* %call54 to %struct._GObject*
  %93 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %94 = bitcast %struct._GimpColorSelector* %93 to i8*
  call void @g_object_set_data(%struct._GObject* %92, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* %94)
  %95 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %96 = bitcast %struct._GimpColorSelector* %95 to %struct._GTypeInstance*
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %96, i64 80)
  %97 = bitcast %struct._GTypeInstance* %call55 to %struct._GObject*
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** %button39, align 8
  %99 = bitcast %struct._GtkWidget* %98 to i8*
  call void @g_object_set_data(%struct._GObject* %97, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* %99)
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %button39, align 8
  %101 = bitcast %struct._GtkWidget* %100 to i8*
  %102 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %103 = bitcast %struct._GimpColorEditor* %102 to i8*
  %call56 = call i64 @g_signal_connect_data(i8* %101, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpColorEditor*)* @gimp_color_editor_tab_toggled to void ()*), i8* %103, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %104 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool57 = icmp ne %struct._GList* %104, null
  br i1 %tobool57, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %105 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %105, i32 0, i32 1
  %106 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %106, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call58 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call58, %struct._GtkWidget** %hbox, align 8
  %107 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %108 = bitcast %struct._GtkWidget* %107 to %struct._GTypeInstance*
  %call59 = call i64 @gtk_box_get_type() #7
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %108, i64 %call59)
  %109 = bitcast %struct._GTypeInstance* %call60 to %struct._GtkBox*
  call void @gtk_box_set_homogeneous(%struct._GtkBox* %109, i32 1)
  %110 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %111 = bitcast %struct._GimpColorEditor* %110 to %struct._GTypeInstance*
  %call61 = call i64 @gtk_box_get_type() #7
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %111, i64 %call61)
  %112 = bitcast %struct._GTypeInstance* %call62 to %struct._GtkBox*
  %113 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %112, %struct._GtkWidget* %113, i32 0, i32 0, i32 0)
  %114 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %114)
  %call63 = call %struct._GtkWidget* @gimp_fg_bg_editor_new(%struct._GimpContext* null)
  %115 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %fg_bg = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %115, i32 0, i32 5
  store %struct._GtkWidget* %call63, %struct._GtkWidget** %fg_bg, align 8
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %117 = bitcast %struct._GtkWidget* %116 to %struct._GTypeInstance*
  %call64 = call i64 @gtk_box_get_type() #7
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %117, i64 %call64)
  %118 = bitcast %struct._GTypeInstance* %call65 to %struct._GtkBox*
  %119 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %fg_bg66 = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %119, i32 0, i32 5
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %fg_bg66, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %118, %struct._GtkWidget* %120, i32 1, i32 1, i32 0)
  %121 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %fg_bg67 = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %121, i32 0, i32 5
  %122 = load %struct._GtkWidget*, %struct._GtkWidget** %fg_bg67, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %122)
  %123 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %fg_bg68 = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %123, i32 0, i32 5
  %124 = load %struct._GtkWidget*, %struct._GtkWidget** %fg_bg68, align 8
  %125 = bitcast %struct._GtkWidget* %124 to i8*
  %126 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %127 = bitcast %struct._GimpColorEditor* %126 to i8*
  %call69 = call i64 @g_signal_connect_data(i8* %125, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GParamSpec*, %struct._GimpColorEditor*)* @gimp_color_editor_fg_bg_notify to void ()*), i8* %127, void (i8*, %struct._GClosure*)* null, i32 0)
  %call70 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 3)
  store %struct._GtkWidget* %call70, %struct._GtkWidget** %vbox, align 8
  %128 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %129 = bitcast %struct._GtkWidget* %128 to %struct._GTypeInstance*
  %call71 = call i64 @gtk_box_get_type() #7
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %129, i64 %call71)
  %130 = bitcast %struct._GTypeInstance* %call72 to %struct._GtkBox*
  %131 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %130, %struct._GtkWidget* %131, i32 1, i32 1, i32 0)
  %132 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %132)
  %call73 = call %struct._GtkWidget* @gimp_pick_button_new()
  store %struct._GtkWidget* %call73, %struct._GtkWidget** %button, align 8
  %133 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %134 = bitcast %struct._GtkWidget* %133 to %struct._GTypeInstance*
  %call74 = call i64 @gtk_box_get_type() #7
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %134, i64 %call74)
  %135 = bitcast %struct._GTypeInstance* %call75 to %struct._GtkBox*
  %136 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %135, %struct._GtkWidget* %136, i32 0, i32 0, i32 0)
  %137 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %137)
  %138 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %139 = bitcast %struct._GtkWidget* %138 to i8*
  %140 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %141 = bitcast %struct._GimpColorEditor* %140 to i8*
  %call76 = call i64 @g_signal_connect_data(i8* %139, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpRGB*, %struct._GimpColorEditor*)* @gimp_color_editor_color_picked to void ()*), i8* %141, void (i8*, %struct._GClosure*)* null, i32 0)
  %call77 = call %struct._GtkWidget* @gimp_color_hex_entry_new()
  %142 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %hex_entry = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %142, i32 0, i32 6
  store %struct._GtkWidget* %call77, %struct._GtkWidget** %hex_entry, align 8
  %143 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %hex_entry78 = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %143, i32 0, i32 6
  %144 = load %struct._GtkWidget*, %struct._GtkWidget** %hex_entry78, align 8
  %call79 = call i8* @gettext(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.19, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %144, i8* %call79, i8* null)
  %145 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %146 = bitcast %struct._GtkWidget* %145 to %struct._GTypeInstance*
  %call80 = call i64 @gtk_box_get_type() #7
  %call81 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %146, i64 %call80)
  %147 = bitcast %struct._GTypeInstance* %call81 to %struct._GtkBox*
  %148 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %hex_entry82 = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %148, i32 0, i32 6
  %149 = load %struct._GtkWidget*, %struct._GtkWidget** %hex_entry82, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %147, %struct._GtkWidget* %149, i32 0, i32 0, i32 0)
  %150 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %hex_entry83 = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %150, i32 0, i32 6
  %151 = load %struct._GtkWidget*, %struct._GtkWidget** %hex_entry83, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %151)
  %152 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %hex_entry84 = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %152, i32 0, i32 6
  %153 = load %struct._GtkWidget*, %struct._GtkWidget** %hex_entry84, align 8
  %154 = bitcast %struct._GtkWidget* %153 to i8*
  %155 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %156 = bitcast %struct._GimpColorEditor* %155 to i8*
  %call85 = call i64 @g_signal_connect_data(i8* %154, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), void ()* bitcast (void (%struct._GimpColorHexEntry*, %struct._GimpColorEditor*)* @gimp_color_editor_entry_changed to void ()*), i8* %156, void (i8*, %struct._GClosure*)* null, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_editor_docked_iface_init(%struct._GimpDockedInterface* %iface) #3 {
entry:
  %iface.addr = alloca %struct._GimpDockedInterface*, align 8
  store %struct._GimpDockedInterface* %iface, %struct._GimpDockedInterface** %iface.addr, align 8
  %0 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** %iface.addr, align 8
  %1 = bitcast %struct._GimpDockedInterface* %0 to i8*
  %call = call i8* @g_type_interface_peek_parent(i8* %1)
  %2 = bitcast i8* %call to %struct._GimpDockedInterface*
  store %struct._GimpDockedInterface* %2, %struct._GimpDockedInterface** @parent_docked_iface, align 8
  %3 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** @parent_docked_iface, align 8
  %tobool = icmp ne %struct._GimpDockedInterface* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i64 @gimp_docked_interface_get_type() #7
  %call2 = call i8* @g_type_default_interface_peek(i64 %call1)
  %4 = bitcast i8* %call2 to %struct._GimpDockedInterface*
  store %struct._GimpDockedInterface* %4, %struct._GimpDockedInterface** @parent_docked_iface, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** %iface.addr, align 8
  %get_preview = getelementptr inbounds %struct._GimpDockedInterface, %struct._GimpDockedInterface* %5, i32 0, i32 4
  store %struct._GtkWidget* (%struct._GimpDocked*, %struct._GimpContext*, i32)* @gimp_color_editor_get_preview, %struct._GtkWidget* (%struct._GimpDocked*, %struct._GimpContext*, i32)** %get_preview, align 8
  %6 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** %iface.addr, align 8
  %set_aux_info = getelementptr inbounds %struct._GimpDockedInterface, %struct._GimpDockedInterface* %6, i32 0, i32 2
  store void (%struct._GimpDocked*, %struct._GList*)* @gimp_color_editor_set_aux_info, void (%struct._GimpDocked*, %struct._GList*)** %set_aux_info, align 8
  %7 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** %iface.addr, align 8
  %get_aux_info = getelementptr inbounds %struct._GimpDockedInterface, %struct._GimpDockedInterface* %7, i32 0, i32 3
  store %struct._GList* (%struct._GimpDocked*)* @gimp_color_editor_get_aux_info, %struct._GList* (%struct._GimpDocked*)** %get_aux_info, align 8
  %8 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** %iface.addr, align 8
  %set_context = getelementptr inbounds %struct._GimpDockedInterface, %struct._GimpDockedInterface* %8, i32 0, i32 8
  store void (%struct._GimpDocked*, %struct._GimpContext*)* @gimp_color_editor_set_context, void (%struct._GimpDocked*, %struct._GimpContext*)** %set_context, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_docked_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_color_editor_new(%struct._GimpContext* %context) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %call = call i64 @gimp_color_editor_get_type() #7
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), %struct._GimpContext* %0, i8* null)
  %1 = bitcast i8* %call1 to %struct._GtkWidget*
  ret %struct._GtkWidget* %1
}

declare i8* @g_object_new(i64, i8*, ...) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_editor_class_init(%struct._GimpColorEditorClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpColorEditorClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  store %struct._GimpColorEditorClass* %klass, %struct._GimpColorEditorClass** %klass.addr, align 8
  %0 = load %struct._GimpColorEditorClass*, %struct._GimpColorEditorClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpColorEditorClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpColorEditorClass*, %struct._GimpColorEditorClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpColorEditorClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_widget_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %5, %struct._GtkWidgetClass** %widget_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_color_editor_dispose, void (%struct._GObject*)** %dispose, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_color_editor_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_color_editor_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %9 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %style_set = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %9, i32 0, i32 17
  store void (%struct._GtkWidget*, %struct._GtkStyle*)* @gimp_color_editor_style_set, void (%struct._GtkWidget*, %struct._GtkStyle*)** %style_set, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call i64 @gimp_context_get_type() #7
  %call4 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* null, i8* null, i64 %call3, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %10, i32 1, %struct._GParamSpec* %call4)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_color_editor_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %editor = alloca %struct._GimpColorEditor*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorEditor*
  store %struct._GimpColorEditor* %2, %struct._GimpColorEditor** %editor, align 8
  %3 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor, align 8
  %context = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %3, i32 0, i32 1
  %4 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor, align 8
  %6 = bitcast %struct._GimpColorEditor* %5 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_docked_interface_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call2)
  %7 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDocked*
  call void @gimp_docked_set_context(%struct._GimpDocked* %7, %struct._GimpContext* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8*, i8** @gimp_color_editor_parent_class, align 8
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
define internal void @gimp_color_editor_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
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
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %2 = bitcast %struct._GObject* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_docked_interface_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDocked*
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_get_object(%struct._GValue* %4)
  %5 = bitcast i8* %call2 to %struct._GimpContext*
  call void @gimp_docked_set_context(%struct._GimpDocked* %3, %struct._GimpContext* %5)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %6 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %6, %struct._GObject** %_glib__object, align 8
  %7 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %7, %struct._GParamSpec** %_glib__pspec, align 8
  %8 = load i32, i32* %property_id.addr, align 4
  store i32 %8, i32* %_glib__property_id, align 4
  %9 = load i32, i32* %_glib__property_id, align 4
  %10 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %10, i32 0, i32 1
  %11 = load i8*, i8** %name, align 8
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %13 = bitcast %struct._GParamSpec* %12 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %13, i32 0, i32 0
  %14 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %14, i32 0, i32 0
  %15 = load i64, i64* %g_type, align 8
  %call3 = call i8* @g_type_name(i64 %15)
  %16 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %17 = bitcast %struct._GObject* %16 to %struct._GTypeInstance*
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type5 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %18, i32 0, i32 0
  %19 = load i64, i64* %g_type5, align 8
  %call6 = call i8* @g_type_name(i64 %19)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i32 299, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %9, i8* %11, i8* %call3, i8* %call6)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_editor_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %editor = alloca %struct._GimpColorEditor*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorEditor*
  store %struct._GimpColorEditor* %2, %struct._GimpColorEditor** %editor, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor, align 8
  %context = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %5, i32 0, i32 1
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %7 = bitcast %struct._GimpContext* %6 to i8*
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
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i32 318, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %11, i8* %13, i8* %call2, i8* %call5)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_editor_style_set(%struct._GtkWidget* %widget, %struct._GtkStyle* %prev_style) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %prev_style.addr = alloca %struct._GtkStyle*, align 8
  %editor = alloca %struct._GimpColorEditor*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GtkStyle* %prev_style, %struct._GtkStyle** %prev_style.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorEditor*
  store %struct._GimpColorEditor* %2, %struct._GimpColorEditor** %editor, align 8
  %3 = load i8*, i8** @gimp_color_editor_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call i64 @gtk_widget_get_type() #7
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GtkWidgetClass*
  %style_set = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %5, i32 0, i32 17
  %6 = load void (%struct._GtkWidget*, %struct._GtkStyle*)*, void (%struct._GtkWidget*, %struct._GtkStyle*)** %style_set, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %8 = load %struct._GtkStyle*, %struct._GtkStyle** %prev_style.addr, align 8
  call void %6(%struct._GtkWidget* %7, %struct._GtkStyle* %8)
  %9 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor, align 8
  %hbox = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %9, i32 0, i32 3
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %tobool = icmp ne %struct._GtkWidget* %10, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor, align 8
  %12 = bitcast %struct._GimpColorEditor* %11 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_editor_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call4)
  %13 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpEditor*
  %14 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor, align 8
  %hbox6 = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %14, i32 0, i32 3
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox6, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_box_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call7)
  %17 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkBox*
  call void @gimp_editor_set_box_style(%struct._GimpEditor* %13, %struct._GtkBox* %17)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @gimp_docked_set_context(%struct._GimpDocked*, %struct._GimpContext*) #1

declare i8* @g_value_get_object(%struct._GValue*) #1

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
  call void @g_logv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_type_name(i64) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

declare void @g_value_set_object(%struct._GValue*, i8*) #1

declare void @gimp_editor_set_box_style(%struct._GimpEditor*, %struct._GtkBox*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare i8* @g_type_interface_peek_parent(i8*) #1

declare i8* @g_type_default_interface_peek(i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @gimp_color_editor_get_preview(%struct._GimpDocked* %docked, %struct._GimpContext* %context, i32 %size) #3 {
entry:
  %docked.addr = alloca %struct._GimpDocked*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %size.addr = alloca i32, align 4
  %settings = alloca %struct._GtkSettings*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  store %struct._GimpDocked* %docked, %struct._GimpDocked** %docked.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load %struct._GimpDocked*, %struct._GimpDocked** %docked.addr, align 8
  %1 = bitcast %struct._GimpDocked* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  %call2 = call %struct._GtkSettings* @gtk_widget_get_settings(%struct._GtkWidget* %2)
  store %struct._GtkSettings* %call2, %struct._GtkSettings** %settings, align 8
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call3 = call %struct._GtkWidget* @gimp_fg_bg_view_new(%struct._GimpContext* %3)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %preview, align 8
  %4 = load %struct._GtkSettings*, %struct._GtkSettings** %settings, align 8
  %5 = load i32, i32* %size.addr, align 4
  %call4 = call i32 @gtk_icon_size_lookup_for_settings(%struct._GtkSettings* %4, i32 %5, i32* %width, i32* %height)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %7 = load i32, i32* %width, align 4
  %8 = load i32, i32* %height, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %6, i32 %7, i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  ret %struct._GtkWidget* %9
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_editor_set_aux_info(%struct._GimpDocked* %docked, %struct._GList* %aux_info) #3 {
entry:
  %docked.addr = alloca %struct._GimpDocked*, align 8
  %aux_info.addr = alloca %struct._GList*, align 8
  %editor = alloca %struct._GimpColorEditor*, align 8
  %notebook = alloca %struct._GtkWidget*, align 8
  %list = alloca %struct._GList*, align 8
  %aux = alloca %struct._GimpSessionInfoAux*, align 8
  %children = alloca %struct._GList*, align 8
  %child = alloca %struct._GList*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  store %struct._GimpDocked* %docked, %struct._GimpDocked** %docked.addr, align 8
  store %struct._GList* %aux_info, %struct._GList** %aux_info.addr, align 8
  %0 = load %struct._GimpDocked*, %struct._GimpDocked** %docked.addr, align 8
  %1 = bitcast %struct._GimpDocked* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorEditor*
  store %struct._GimpColorEditor* %2, %struct._GimpColorEditor** %editor, align 8
  %3 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor, align 8
  %notebook2 = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %3, i32 0, i32 4
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook2, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_color_notebook_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpColorNotebook*
  %notebook5 = getelementptr inbounds %struct._GimpColorNotebook, %struct._GimpColorNotebook* %6, i32 0, i32 1
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook5, align 8
  store %struct._GtkWidget* %7, %struct._GtkWidget** %notebook, align 8
  %8 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** @parent_docked_iface, align 8
  %set_aux_info = getelementptr inbounds %struct._GimpDockedInterface, %struct._GimpDockedInterface* %8, i32 0, i32 2
  %9 = load void (%struct._GimpDocked*, %struct._GList*)*, void (%struct._GimpDocked*, %struct._GList*)** %set_aux_info, align 8
  %10 = load %struct._GimpDocked*, %struct._GimpDocked** %docked.addr, align 8
  %11 = load %struct._GList*, %struct._GList** %aux_info.addr, align 8
  call void %9(%struct._GimpDocked* %10, %struct._GList* %11)
  %12 = load %struct._GList*, %struct._GList** %aux_info.addr, align 8
  store %struct._GList* %12, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end.34, %entry
  %13 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %13, null
  br i1 %tobool, label %for.body, label %for.end.36

for.body:                                         ; preds = %for.cond
  %14 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %14, i32 0, i32 0
  %15 = load i8*, i8** %data, align 8
  %16 = bitcast i8* %15 to %struct._GimpSessionInfoAux*
  store %struct._GimpSessionInfoAux* %16, %struct._GimpSessionInfoAux** %aux, align 8
  %17 = load %struct._GimpSessionInfoAux*, %struct._GimpSessionInfoAux** %aux, align 8
  %name = getelementptr inbounds %struct._GimpSessionInfoAux, %struct._GimpSessionInfoAux* %17, i32 0, i32 0
  %18 = load i8*, i8** %name, align 8
  %call6 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0)) #8
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end.28, label %if.then

if.then:                                          ; preds = %for.body
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_container_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call8)
  %21 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkContainer*
  %call10 = call %struct._GList* @gtk_container_get_children(%struct._GtkContainer* %21)
  store %struct._GList* %call10, %struct._GList** %children, align 8
  %22 = load %struct._GList*, %struct._GList** %children, align 8
  store %struct._GList* %22, %struct._GList** %child, align 8
  br label %for.cond.11

for.cond.11:                                      ; preds = %cond.end, %if.then
  %23 = load %struct._GList*, %struct._GList** %child, align 8
  %tobool12 = icmp ne %struct._GList* %23, null
  br i1 %tobool12, label %for.body.13, label %for.end

for.body.13:                                      ; preds = %for.cond.11
  %24 = load %struct._GList*, %struct._GList** %child, align 8
  %data14 = getelementptr inbounds %struct._GList, %struct._GList* %24, i32 0, i32 0
  %25 = load i8*, i8** %data14, align 8
  %26 = bitcast i8* %25 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %26, i32 0, i32 0
  %27 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %27, i32 0, i32 0
  %28 = load i64, i64* %g_type, align 8
  %call15 = call i8* @g_type_name(i64 %28)
  %29 = load %struct._GimpSessionInfoAux*, %struct._GimpSessionInfoAux** %aux, align 8
  %value = getelementptr inbounds %struct._GimpSessionInfoAux, %struct._GimpSessionInfoAux* %29, i32 0, i32 1
  %30 = load i8*, i8** %value, align 8
  %call16 = call i32 @strcmp(i8* %call15, i8* %30) #8
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end.26, label %if.then.18

if.then.18:                                       ; preds = %for.body.13
  %31 = load %struct._GList*, %struct._GList** %child, align 8
  %data19 = getelementptr inbounds %struct._GList, %struct._GList* %31, i32 0, i32 0
  %32 = load i8*, i8** %data19, align 8
  %33 = bitcast i8* %32 to %struct._GTypeInstance*
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 80)
  %34 = bitcast %struct._GTypeInstance* %call20 to %struct._GObject*
  %call21 = call i8* @g_object_get_data(%struct._GObject* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0))
  %35 = bitcast i8* %call21 to %struct._GtkWidget*
  store %struct._GtkWidget* %35, %struct._GtkWidget** %button, align 8
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %tobool22 = icmp ne %struct._GtkWidget* %36, null
  br i1 %tobool22, label %if.then.23, label %if.end

if.then.23:                                       ; preds = %if.then.18
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_toggle_button_get_type() #7
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call24)
  %39 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkToggleButton*
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %39, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then.23, %if.then.18
  br label %for.end

if.end.26:                                        ; preds = %for.body.13
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %40 = load %struct._GList*, %struct._GList** %child, align 8
  %tobool27 = icmp ne %struct._GList* %40, null
  br i1 %tobool27, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %41 = load %struct._GList*, %struct._GList** %child, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %41, i32 0, i32 1
  %42 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %42, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %child, align 8
  br label %for.cond.11

for.end:                                          ; preds = %if.end, %for.cond.11
  %43 = load %struct._GList*, %struct._GList** %children, align 8
  call void @g_list_free(%struct._GList* %43)
  br label %if.end.28

if.end.28:                                        ; preds = %for.end, %for.body
  br label %for.inc.29

for.inc.29:                                       ; preds = %if.end.28
  %44 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool30 = icmp ne %struct._GList* %44, null
  br i1 %tobool30, label %cond.true.31, label %cond.false.33

cond.true.31:                                     ; preds = %for.inc.29
  %45 = load %struct._GList*, %struct._GList** %list, align 8
  %next32 = getelementptr inbounds %struct._GList, %struct._GList* %45, i32 0, i32 1
  %46 = load %struct._GList*, %struct._GList** %next32, align 8
  br label %cond.end.34

cond.false.33:                                    ; preds = %for.inc.29
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.false.33, %cond.true.31
  %cond35 = phi %struct._GList* [ %46, %cond.true.31 ], [ null, %cond.false.33 ]
  store %struct._GList* %cond35, %struct._GList** %list, align 8
  br label %for.cond

for.end.36:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GList* @gimp_color_editor_get_aux_info(%struct._GimpDocked* %docked) #3 {
entry:
  %docked.addr = alloca %struct._GimpDocked*, align 8
  %editor = alloca %struct._GimpColorEditor*, align 8
  %notebook = alloca %struct._GimpColorNotebook*, align 8
  %aux_info = alloca %struct._GList*, align 8
  %aux = alloca %struct._GimpSessionInfoAux*, align 8
  store %struct._GimpDocked* %docked, %struct._GimpDocked** %docked.addr, align 8
  %0 = load %struct._GimpDocked*, %struct._GimpDocked** %docked.addr, align 8
  %1 = bitcast %struct._GimpDocked* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorEditor*
  store %struct._GimpColorEditor* %2, %struct._GimpColorEditor** %editor, align 8
  %3 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor, align 8
  %notebook2 = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %3, i32 0, i32 4
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook2, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_color_notebook_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpColorNotebook*
  store %struct._GimpColorNotebook* %6, %struct._GimpColorNotebook** %notebook, align 8
  %7 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** @parent_docked_iface, align 8
  %get_aux_info = getelementptr inbounds %struct._GimpDockedInterface, %struct._GimpDockedInterface* %7, i32 0, i32 3
  %8 = load %struct._GList* (%struct._GimpDocked*)*, %struct._GList* (%struct._GimpDocked*)** %get_aux_info, align 8
  %9 = load %struct._GimpDocked*, %struct._GimpDocked** %docked.addr, align 8
  %call5 = call %struct._GList* %8(%struct._GimpDocked* %9)
  store %struct._GList* %call5, %struct._GList** %aux_info, align 8
  %10 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook, align 8
  %cur_page = getelementptr inbounds %struct._GimpColorNotebook, %struct._GimpColorNotebook* %10, i32 0, i32 3
  %11 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %cur_page, align 8
  %tobool = icmp ne %struct._GimpColorSelector* %11, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook, align 8
  %cur_page6 = getelementptr inbounds %struct._GimpColorNotebook, %struct._GimpColorNotebook* %12, i32 0, i32 3
  %13 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %cur_page6, align 8
  %14 = bitcast %struct._GimpColorSelector* %13 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %15, i32 0, i32 0
  %16 = load i64, i64* %g_type, align 8
  %call7 = call i8* @g_type_name(i64 %16)
  %call8 = call %struct._GimpSessionInfoAux* @gimp_session_info_aux_new(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i8* %call7)
  store %struct._GimpSessionInfoAux* %call8, %struct._GimpSessionInfoAux** %aux, align 8
  %17 = load %struct._GList*, %struct._GList** %aux_info, align 8
  %18 = load %struct._GimpSessionInfoAux*, %struct._GimpSessionInfoAux** %aux, align 8
  %19 = bitcast %struct._GimpSessionInfoAux* %18 to i8*
  %call9 = call %struct._GList* @g_list_append(%struct._GList* %17, i8* %19)
  store %struct._GList* %call9, %struct._GList** %aux_info, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %20 = load %struct._GList*, %struct._GList** %aux_info, align 8
  ret %struct._GList* %20
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_editor_set_context(%struct._GimpDocked* %docked, %struct._GimpContext* %context) #3 {
entry:
  %docked.addr = alloca %struct._GimpDocked*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %editor = alloca %struct._GimpColorEditor*, align 8
  %rgb = alloca %struct._GimpRGB, align 8
  store %struct._GimpDocked* %docked, %struct._GimpDocked** %docked.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpDocked*, %struct._GimpDocked** %docked.addr, align 8
  %1 = bitcast %struct._GimpDocked* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorEditor*
  store %struct._GimpColorEditor* %2, %struct._GimpColorEditor** %editor, align 8
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %4 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor, align 8
  %context2 = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %4, i32 0, i32 1
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context2, align 8
  %cmp = icmp eq %struct._GimpContext* %3, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor, align 8
  %context3 = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %6, i32 0, i32 1
  %7 = load %struct._GimpContext*, %struct._GimpContext** %context3, align 8
  %tobool = icmp ne %struct._GimpContext* %7, null
  br i1 %tobool, label %if.then.4, label %if.end.10

if.then.4:                                        ; preds = %if.end
  %8 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor, align 8
  %context5 = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %8, i32 0, i32 1
  %9 = load %struct._GimpContext*, %struct._GimpContext** %context5, align 8
  %10 = bitcast %struct._GimpContext* %9 to i8*
  %11 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor, align 8
  %12 = bitcast %struct._GimpColorEditor* %11 to i8*
  %call6 = call i32 @g_signal_handlers_disconnect_matched(i8* %10, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpContext*, %struct._GimpRGB*, %struct._GimpColorEditor*)* @gimp_color_editor_fg_changed to i8*), i8* %12)
  %13 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor, align 8
  %context7 = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %13, i32 0, i32 1
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context7, align 8
  %15 = bitcast %struct._GimpContext* %14 to i8*
  %16 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor, align 8
  %17 = bitcast %struct._GimpColorEditor* %16 to i8*
  %call8 = call i32 @g_signal_handlers_disconnect_matched(i8* %15, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpContext*, %struct._GimpRGB*, %struct._GimpColorEditor*)* @gimp_color_editor_bg_changed to i8*), i8* %17)
  %18 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor, align 8
  %context9 = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %18, i32 0, i32 1
  %19 = load %struct._GimpContext*, %struct._GimpContext** %context9, align 8
  %20 = bitcast %struct._GimpContext* %19 to i8*
  call void @g_object_unref(i8* %20)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.4, %if.end
  %21 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %22 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor, align 8
  %context11 = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %22, i32 0, i32 1
  store %struct._GimpContext* %21, %struct._GimpContext** %context11, align 8
  %23 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor, align 8
  %context12 = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %23, i32 0, i32 1
  %24 = load %struct._GimpContext*, %struct._GimpContext** %context12, align 8
  %tobool13 = icmp ne %struct._GimpContext* %24, null
  br i1 %tobool13, label %if.then.14, label %if.end.39

if.then.14:                                       ; preds = %if.end.10
  %25 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor, align 8
  %context15 = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %25, i32 0, i32 1
  %26 = load %struct._GimpContext*, %struct._GimpContext** %context15, align 8
  %27 = bitcast %struct._GimpContext* %26 to i8*
  %call16 = call i8* @g_object_ref(i8* %27)
  %28 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor, align 8
  %context17 = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %28, i32 0, i32 1
  %29 = load %struct._GimpContext*, %struct._GimpContext** %context17, align 8
  %30 = bitcast %struct._GimpContext* %29 to i8*
  %31 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor, align 8
  %32 = bitcast %struct._GimpColorEditor* %31 to i8*
  %call18 = call i64 @g_signal_connect_data(i8* %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContext*, %struct._GimpRGB*, %struct._GimpColorEditor*)* @gimp_color_editor_fg_changed to void ()*), i8* %32, void (i8*, %struct._GClosure*)* null, i32 0)
  %33 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor, align 8
  %context19 = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %33, i32 0, i32 1
  %34 = load %struct._GimpContext*, %struct._GimpContext** %context19, align 8
  %35 = bitcast %struct._GimpContext* %34 to i8*
  %36 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor, align 8
  %37 = bitcast %struct._GimpColorEditor* %36 to i8*
  %call20 = call i64 @g_signal_connect_data(i8* %35, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContext*, %struct._GimpRGB*, %struct._GimpColorEditor*)* @gimp_color_editor_bg_changed to void ()*), i8* %37, void (i8*, %struct._GClosure*)* null, i32 0)
  %38 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor, align 8
  %edit_bg = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %38, i32 0, i32 2
  %39 = load i32, i32* %edit_bg, align 4
  %tobool21 = icmp ne i32 %39, 0
  br i1 %tobool21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %if.then.14
  %40 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor, align 8
  %context23 = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %40, i32 0, i32 1
  %41 = load %struct._GimpContext*, %struct._GimpContext** %context23, align 8
  call void @gimp_context_get_background(%struct._GimpContext* %41, %struct._GimpRGB* %rgb)
  %42 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor, align 8
  %context24 = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %42, i32 0, i32 1
  %43 = load %struct._GimpContext*, %struct._GimpContext** %context24, align 8
  %44 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor, align 8
  call void @gimp_color_editor_bg_changed(%struct._GimpContext* %43, %struct._GimpRGB* %rgb, %struct._GimpColorEditor* %44)
  br label %if.end.27

if.else:                                          ; preds = %if.then.14
  %45 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor, align 8
  %context25 = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %45, i32 0, i32 1
  %46 = load %struct._GimpContext*, %struct._GimpContext** %context25, align 8
  call void @gimp_context_get_foreground(%struct._GimpContext* %46, %struct._GimpRGB* %rgb)
  %47 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor, align 8
  %context26 = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %47, i32 0, i32 1
  %48 = load %struct._GimpContext*, %struct._GimpContext** %context26, align 8
  %49 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor, align 8
  call void @gimp_color_editor_fg_changed(%struct._GimpContext* %48, %struct._GimpRGB* %rgb, %struct._GimpColorEditor* %49)
  br label %if.end.27

if.end.27:                                        ; preds = %if.else, %if.then.22
  %50 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %50, i32 0, i32 1
  %51 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %51, i32 0, i32 1
  %52 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %color_management = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %52, i32 0, i32 46
  %53 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %color_management, align 8
  %54 = bitcast %struct._GimpColorConfig* %53 to %struct._GTypeInstance*
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 80)
  %55 = bitcast %struct._GTypeInstance* %call28 to %struct._GObject*
  %56 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor, align 8
  %context29 = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %56, i32 0, i32 1
  %57 = load %struct._GimpContext*, %struct._GimpContext** %context29, align 8
  %58 = bitcast %struct._GimpContext* %57 to i8*
  call void @g_object_set_data(%struct._GObject* %55, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8* %58)
  %59 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor, align 8
  %notebook = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %59, i32 0, i32 4
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %61 = bitcast %struct._GtkWidget* %60 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_color_selector_get_type() #7
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call30)
  %62 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpColorSelector*
  %63 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp32 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %63, i32 0, i32 1
  %64 = load %struct._Gimp*, %struct._Gimp** %gimp32, align 8
  %config33 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %64, i32 0, i32 1
  %65 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config33, align 8
  %color_management34 = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %65, i32 0, i32 46
  %66 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %color_management34, align 8
  call void @gimp_color_selector_set_config(%struct._GimpColorSelector* %62, %struct._GimpColorConfig* %66)
  %67 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp35 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %67, i32 0, i32 1
  %68 = load %struct._Gimp*, %struct._Gimp** %gimp35, align 8
  %config36 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %68, i32 0, i32 1
  %69 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config36, align 8
  %color_management37 = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %69, i32 0, i32 46
  %70 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %color_management37, align 8
  %71 = bitcast %struct._GimpColorConfig* %70 to %struct._GTypeInstance*
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 80)
  %72 = bitcast %struct._GTypeInstance* %call38 to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %72, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8* null)
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.27, %if.end.10
  %73 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor, align 8
  %fg_bg = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %73, i32 0, i32 5
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %fg_bg, align 8
  %75 = bitcast %struct._GtkWidget* %74 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_fg_bg_editor_get_type() #7
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %75, i64 %call40)
  %76 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpFgBgEditor*
  %77 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_fg_bg_editor_set_context(%struct._GimpFgBgEditor* %76, %struct._GimpContext* %77)
  br label %return

return:                                           ; preds = %if.end.39, %if.then
  ret void
}

declare %struct._GtkSettings* @gtk_widget_get_settings(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_fg_bg_view_new(%struct._GimpContext*) #1

declare i32 @gtk_icon_size_lookup_for_settings(%struct._GtkSettings*, i32, i32*, i32*) #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_notebook_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

declare %struct._GList* @gtk_container_get_children(%struct._GtkContainer*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #2

declare void @g_list_free(%struct._GList*) #1

declare %struct._GimpSessionInfoAux* @gimp_session_info_aux_new(i8*, i8*) #1

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #1

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_editor_fg_changed(%struct._GimpContext* %context, %struct._GimpRGB* %rgb, %struct._GimpColorEditor* %editor) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %rgb.addr = alloca %struct._GimpRGB*, align 8
  %editor.addr = alloca %struct._GimpColorEditor*, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpRGB* %rgb, %struct._GimpRGB** %rgb.addr, align 8
  store %struct._GimpColorEditor* %editor, %struct._GimpColorEditor** %editor.addr, align 8
  %0 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %edit_bg = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %0, i32 0, i32 2
  %1 = load i32, i32* %edit_bg, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %3 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  call void @gimp_color_editor_set_color(%struct._GimpColorEditor* %2, %struct._GimpRGB* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_editor_bg_changed(%struct._GimpContext* %context, %struct._GimpRGB* %rgb, %struct._GimpColorEditor* %editor) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %rgb.addr = alloca %struct._GimpRGB*, align 8
  %editor.addr = alloca %struct._GimpColorEditor*, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpRGB* %rgb, %struct._GimpRGB** %rgb.addr, align 8
  store %struct._GimpColorEditor* %editor, %struct._GimpColorEditor** %editor.addr, align 8
  %0 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %edit_bg = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %0, i32 0, i32 2
  %1 = load i32, i32* %edit_bg, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %3 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  call void @gimp_color_editor_set_color(%struct._GimpColorEditor* %2, %struct._GimpRGB* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @g_object_unref(i8*) #1

declare i8* @g_object_ref(i8*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare void @gimp_context_get_background(%struct._GimpContext*, %struct._GimpRGB*) #1

declare void @gimp_context_get_foreground(%struct._GimpContext*, %struct._GimpRGB*) #1

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

declare void @gimp_color_selector_set_config(%struct._GimpColorSelector*, %struct._GimpColorConfig*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_selector_get_type() #2

declare void @gimp_fg_bg_editor_set_context(%struct._GimpFgBgEditor*, %struct._GimpContext*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_fg_bg_editor_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_color_editor_set_color(%struct._GimpColorEditor* %editor, %struct._GimpRGB* %rgb) #3 {
entry:
  %editor.addr = alloca %struct._GimpColorEditor*, align 8
  %rgb.addr = alloca %struct._GimpRGB*, align 8
  %hsv = alloca %struct._GimpHSV, align 8
  store %struct._GimpColorEditor* %editor, %struct._GimpColorEditor** %editor.addr, align 8
  store %struct._GimpRGB* %rgb, %struct._GimpRGB** %rgb.addr, align 8
  %0 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  call void @gimp_rgb_to_hsv(%struct._GimpRGB* %0, %struct._GimpHSV* %hsv)
  %1 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %notebook = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %1, i32 0, i32 4
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %3 = bitcast %struct._GtkWidget* %2 to i8*
  %4 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %5 = bitcast %struct._GimpColorEditor* %4 to i8*
  %call = call i32 @g_signal_handlers_block_matched(i8* %3, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpColorSelector*, %struct._GimpRGB*, %struct._GimpHSV*, %struct._GimpColorEditor*)* @gimp_color_editor_color_changed to i8*), i8* %5)
  %6 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %notebook1 = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %6, i32 0, i32 4
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook1, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_color_selector_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call2)
  %9 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpColorSelector*
  %10 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  call void @gimp_color_selector_set_color(%struct._GimpColorSelector* %9, %struct._GimpRGB* %10, %struct._GimpHSV* %hsv)
  %11 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %notebook4 = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %11, i32 0, i32 4
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook4, align 8
  %13 = bitcast %struct._GtkWidget* %12 to i8*
  %14 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %15 = bitcast %struct._GimpColorEditor* %14 to i8*
  %call5 = call i32 @g_signal_handlers_unblock_matched(i8* %13, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpColorSelector*, %struct._GimpRGB*, %struct._GimpHSV*, %struct._GimpColorEditor*)* @gimp_color_editor_color_changed to i8*), i8* %15)
  %16 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %hex_entry = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %16, i32 0, i32 6
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %hex_entry, align 8
  %18 = bitcast %struct._GtkWidget* %17 to i8*
  %19 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %20 = bitcast %struct._GimpColorEditor* %19 to i8*
  %call6 = call i32 @g_signal_handlers_block_matched(i8* %18, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpColorHexEntry*, %struct._GimpColorEditor*)* @gimp_color_editor_entry_changed to i8*), i8* %20)
  %21 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %hex_entry7 = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %21, i32 0, i32 6
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %hex_entry7, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_color_hex_entry_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call8)
  %24 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpColorHexEntry*
  %25 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  call void @gimp_color_hex_entry_set_color(%struct._GimpColorHexEntry* %24, %struct._GimpRGB* %25)
  %26 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %hex_entry10 = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %26, i32 0, i32 6
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %hex_entry10, align 8
  %28 = bitcast %struct._GtkWidget* %27 to i8*
  %29 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %30 = bitcast %struct._GimpColorEditor* %29 to i8*
  %call11 = call i32 @g_signal_handlers_unblock_matched(i8* %28, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpColorHexEntry*, %struct._GimpColorEditor*)* @gimp_color_editor_entry_changed to i8*), i8* %30)
  ret void
}

declare void @gimp_rgb_to_hsv(%struct._GimpRGB*, %struct._GimpHSV*) #1

declare i32 @g_signal_handlers_block_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_editor_color_changed(%struct._GimpColorSelector* %selector, %struct._GimpRGB* %rgb, %struct._GimpHSV* %hsv, %struct._GimpColorEditor* %editor) #3 {
entry:
  %selector.addr = alloca %struct._GimpColorSelector*, align 8
  %rgb.addr = alloca %struct._GimpRGB*, align 8
  %hsv.addr = alloca %struct._GimpHSV*, align 8
  %editor.addr = alloca %struct._GimpColorEditor*, align 8
  store %struct._GimpColorSelector* %selector, %struct._GimpColorSelector** %selector.addr, align 8
  store %struct._GimpRGB* %rgb, %struct._GimpRGB** %rgb.addr, align 8
  store %struct._GimpHSV* %hsv, %struct._GimpHSV** %hsv.addr, align 8
  store %struct._GimpColorEditor* %editor, %struct._GimpColorEditor** %editor.addr, align 8
  %0 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %context = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %0, i32 0, i32 1
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %1, null
  br i1 %tobool, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %edit_bg = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %2, i32 0, i32 2
  %3 = load i32, i32* %edit_bg, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %4 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %context3 = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %4, i32 0, i32 1
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context3, align 8
  %6 = bitcast %struct._GimpContext* %5 to i8*
  %7 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %8 = bitcast %struct._GimpColorEditor* %7 to i8*
  %call = call i32 @g_signal_handlers_block_matched(i8* %6, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpContext*, %struct._GimpRGB*, %struct._GimpColorEditor*)* @gimp_color_editor_bg_changed to i8*), i8* %8)
  %9 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %context4 = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %9, i32 0, i32 1
  %10 = load %struct._GimpContext*, %struct._GimpContext** %context4, align 8
  %11 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  call void @gimp_context_set_background(%struct._GimpContext* %10, %struct._GimpRGB* %11)
  %12 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %context5 = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %12, i32 0, i32 1
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context5, align 8
  %14 = bitcast %struct._GimpContext* %13 to i8*
  %15 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %16 = bitcast %struct._GimpColorEditor* %15 to i8*
  %call6 = call i32 @g_signal_handlers_unblock_matched(i8* %14, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpContext*, %struct._GimpRGB*, %struct._GimpColorEditor*)* @gimp_color_editor_bg_changed to i8*), i8* %16)
  br label %if.end

if.else:                                          ; preds = %if.then
  %17 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %context7 = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %17, i32 0, i32 1
  %18 = load %struct._GimpContext*, %struct._GimpContext** %context7, align 8
  %19 = bitcast %struct._GimpContext* %18 to i8*
  %20 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %21 = bitcast %struct._GimpColorEditor* %20 to i8*
  %call8 = call i32 @g_signal_handlers_block_matched(i8* %19, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpContext*, %struct._GimpRGB*, %struct._GimpColorEditor*)* @gimp_color_editor_fg_changed to i8*), i8* %21)
  %22 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %context9 = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %22, i32 0, i32 1
  %23 = load %struct._GimpContext*, %struct._GimpContext** %context9, align 8
  %24 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  call void @gimp_context_set_foreground(%struct._GimpContext* %23, %struct._GimpRGB* %24)
  %25 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %context10 = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %25, i32 0, i32 1
  %26 = load %struct._GimpContext*, %struct._GimpContext** %context10, align 8
  %27 = bitcast %struct._GimpContext* %26 to i8*
  %28 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %29 = bitcast %struct._GimpColorEditor* %28 to i8*
  %call11 = call i32 @g_signal_handlers_unblock_matched(i8* %27, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpContext*, %struct._GimpRGB*, %struct._GimpColorEditor*)* @gimp_color_editor_fg_changed to i8*), i8* %29)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %entry
  %30 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %hex_entry = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %30, i32 0, i32 6
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %hex_entry, align 8
  %32 = bitcast %struct._GtkWidget* %31 to i8*
  %33 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %34 = bitcast %struct._GimpColorEditor* %33 to i8*
  %call13 = call i32 @g_signal_handlers_block_matched(i8* %32, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpColorHexEntry*, %struct._GimpColorEditor*)* @gimp_color_editor_entry_changed to i8*), i8* %34)
  %35 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %hex_entry14 = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %35, i32 0, i32 6
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %hex_entry14, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_color_hex_entry_get_type() #7
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call15)
  %38 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpColorHexEntry*
  %39 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  call void @gimp_color_hex_entry_set_color(%struct._GimpColorHexEntry* %38, %struct._GimpRGB* %39)
  %40 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %hex_entry17 = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %40, i32 0, i32 6
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %hex_entry17, align 8
  %42 = bitcast %struct._GtkWidget* %41 to i8*
  %43 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %44 = bitcast %struct._GimpColorEditor* %43 to i8*
  %call18 = call i32 @g_signal_handlers_unblock_matched(i8* %42, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpColorHexEntry*, %struct._GimpColorEditor*)* @gimp_color_editor_entry_changed to i8*), i8* %44)
  ret void
}

declare void @gimp_color_selector_set_color(%struct._GimpColorSelector*, %struct._GimpRGB*, %struct._GimpHSV*) #1

declare i32 @g_signal_handlers_unblock_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_editor_entry_changed(%struct._GimpColorHexEntry* %entry1, %struct._GimpColorEditor* %editor) #3 {
entry:
  %entry.addr = alloca %struct._GimpColorHexEntry*, align 8
  %editor.addr = alloca %struct._GimpColorEditor*, align 8
  %rgb = alloca %struct._GimpRGB, align 8
  store %struct._GimpColorHexEntry* %entry1, %struct._GimpColorHexEntry** %entry.addr, align 8
  store %struct._GimpColorEditor* %editor, %struct._GimpColorEditor** %editor.addr, align 8
  %0 = load %struct._GimpColorHexEntry*, %struct._GimpColorHexEntry** %entry.addr, align 8
  call void @gimp_color_hex_entry_get_color(%struct._GimpColorHexEntry* %0, %struct._GimpRGB* %rgb)
  %1 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %context = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %1, i32 0, i32 1
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %2, null
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %edit_bg = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %3, i32 0, i32 2
  %4 = load i32, i32* %edit_bg, align 4
  %tobool2 = icmp ne i32 %4, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %5 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %context4 = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %5, i32 0, i32 1
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context4, align 8
  call void @gimp_context_set_background(%struct._GimpContext* %6, %struct._GimpRGB* %rgb)
  br label %if.end

if.else:                                          ; preds = %if.then
  %7 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %context5 = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %7, i32 0, i32 1
  %8 = load %struct._GimpContext*, %struct._GimpContext** %context5, align 8
  call void @gimp_context_set_foreground(%struct._GimpContext* %8, %struct._GimpRGB* %rgb)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  ret void
}

declare void @gimp_color_hex_entry_set_color(%struct._GimpColorHexEntry*, %struct._GimpRGB*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_hex_entry_get_type() #2

declare void @gimp_context_set_background(%struct._GimpContext*, %struct._GimpRGB*) #1

declare void @gimp_context_set_foreground(%struct._GimpContext*, %struct._GimpRGB*) #1

declare void @gimp_color_hex_entry_get_color(%struct._GimpColorHexEntry*, %struct._GimpRGB*) #1

declare void @gimp_rgba_set(%struct._GimpRGB*, double, double, double, double) #1

declare void @gtk_widget_style_get(%struct._GtkWidget*, i8*, ...) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_box_set_homogeneous(%struct._GtkBox*, i32) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_color_selector_new(i64, %struct._GimpRGB*, %struct._GimpHSV*, i32) #1

declare void @gimp_color_selector_set_show_alpha(%struct._GimpColorSelector*, i32) #1

declare void @gtk_notebook_set_show_tabs(%struct._GtkNotebook*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_notebook_get_type() #2

declare void @gtk_notebook_set_show_border(%struct._GtkNotebook*, i32) #1

declare %struct._GtkWidget* @gimp_color_notebook_set_has_page(%struct._GimpColorNotebook*, i64, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_scales_get_type() #2

declare %struct._GtkWidget* @gtk_radio_button_new(%struct._GSList*) #1

declare %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_radio_button_get_type() #2

declare void @gtk_toggle_button_set_mode(%struct._GtkToggleButton*, i32) #1

declare %struct._GtkWidget* @gtk_image_new_from_stock(i8*, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_editor_tab_toggled(%struct._GtkWidget* %widget, %struct._GimpColorEditor* %editor) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %editor.addr = alloca %struct._GimpColorEditor*, align 8
  %selector = alloca %struct._GtkWidget*, align 8
  %notebook = alloca %struct._GtkWidget*, align 8
  %page_num = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpColorEditor* %editor, %struct._GimpColorEditor** %editor.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  %call2 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %2)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end.18

if.then:                                          ; preds = %entry
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 80)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GObject*
  %call4 = call i8* @g_object_get_data(%struct._GObject* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0))
  %6 = bitcast i8* %call4 to %struct._GtkWidget*
  store %struct._GtkWidget* %6, %struct._GtkWidget** %selector, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %selector, align 8
  %tobool5 = icmp ne %struct._GtkWidget* %7, null
  br i1 %tobool5, label %if.then.6, label %if.end.17

if.then.6:                                        ; preds = %if.then
  %8 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %notebook7 = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %8, i32 0, i32 4
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook7, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_color_notebook_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call8)
  %11 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpColorNotebook*
  %notebook10 = getelementptr inbounds %struct._GimpColorNotebook, %struct._GimpColorNotebook* %11, i32 0, i32 1
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook10, align 8
  store %struct._GtkWidget* %12, %struct._GtkWidget** %notebook, align 8
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_notebook_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkNotebook*
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %selector, align 8
  %call13 = call i32 @gtk_notebook_page_num(%struct._GtkNotebook* %15, %struct._GtkWidget* %16)
  store i32 %call13, i32* %page_num, align 4
  %17 = load i32, i32* %page_num, align 4
  %cmp = icmp sge i32 %17, 0
  br i1 %cmp, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %if.then.6
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_notebook_get_type() #7
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call15)
  %20 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkNotebook*
  %21 = load i32, i32* %page_num, align 4
  call void @gtk_notebook_set_current_page(%struct._GtkNotebook* %20, i32 %21)
  br label %if.end

if.end:                                           ; preds = %if.then.14, %if.then.6
  br label %if.end.17

if.end.17:                                        ; preds = %if.end, %if.then
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %entry
  ret void
}

declare %struct._GtkWidget* @gimp_fg_bg_editor_new(%struct._GimpContext*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_editor_fg_bg_notify(%struct._GtkWidget* %widget, %struct._GParamSpec* %pspec, %struct._GimpColorEditor* %editor) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %editor.addr = alloca %struct._GimpColorEditor*, align 8
  %edit_bg = alloca i32, align 4
  %rgb = alloca %struct._GimpRGB, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpColorEditor* %editor, %struct._GimpColorEditor** %editor.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_fg_bg_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpFgBgEditor*
  %active_color = getelementptr inbounds %struct._GimpFgBgEditor, %struct._GimpFgBgEditor* %2, i32 0, i32 2
  %3 = load i32, i32* %active_color, align 4
  %cmp = icmp eq i32 %3, 1
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %edit_bg, align 4
  %4 = load i32, i32* %edit_bg, align 4
  %5 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %edit_bg2 = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %5, i32 0, i32 2
  %6 = load i32, i32* %edit_bg2, align 4
  %cmp3 = icmp ne i32 %4, %6
  br i1 %cmp3, label %if.then, label %if.end.14

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %edit_bg, align 4
  %8 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %edit_bg5 = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %8, i32 0, i32 2
  store i32 %7, i32* %edit_bg5, align 4
  %9 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %context = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %9, i32 0, i32 1
  %10 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %10, null
  br i1 %tobool, label %if.then.6, label %if.end.13

if.then.6:                                        ; preds = %if.then
  %11 = load i32, i32* %edit_bg, align 4
  %tobool7 = icmp ne i32 %11, 0
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then.6
  %12 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %context9 = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %12, i32 0, i32 1
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context9, align 8
  call void @gimp_context_get_background(%struct._GimpContext* %13, %struct._GimpRGB* %rgb)
  %14 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %context10 = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %14, i32 0, i32 1
  %15 = load %struct._GimpContext*, %struct._GimpContext** %context10, align 8
  %16 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  call void @gimp_color_editor_bg_changed(%struct._GimpContext* %15, %struct._GimpRGB* %rgb, %struct._GimpColorEditor* %16)
  br label %if.end

if.else:                                          ; preds = %if.then.6
  %17 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %context11 = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %17, i32 0, i32 1
  %18 = load %struct._GimpContext*, %struct._GimpContext** %context11, align 8
  call void @gimp_context_get_foreground(%struct._GimpContext* %18, %struct._GimpRGB* %rgb)
  %19 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %context12 = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %19, i32 0, i32 1
  %20 = load %struct._GimpContext*, %struct._GimpContext** %context12, align 8
  %21 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  call void @gimp_color_editor_fg_changed(%struct._GimpContext* %20, %struct._GimpRGB* %rgb, %struct._GimpColorEditor* %21)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.8
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %entry
  ret void
}

declare %struct._GtkWidget* @gimp_pick_button_new() #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_editor_color_picked(%struct._GtkWidget* %widget, %struct._GimpRGB* %rgb, %struct._GimpColorEditor* %editor) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %rgb.addr = alloca %struct._GimpRGB*, align 8
  %editor.addr = alloca %struct._GimpColorEditor*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpRGB* %rgb, %struct._GimpRGB** %rgb.addr, align 8
  store %struct._GimpColorEditor* %editor, %struct._GimpColorEditor** %editor.addr, align 8
  %0 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %context = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %0, i32 0, i32 1
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %1, null
  br i1 %tobool, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %edit_bg = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %2, i32 0, i32 2
  %3 = load i32, i32* %edit_bg, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %4 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %context3 = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %4, i32 0, i32 1
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context3, align 8
  %6 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  call void @gimp_context_set_background(%struct._GimpContext* %5, %struct._GimpRGB* %6)
  br label %if.end

if.else:                                          ; preds = %if.then
  %7 = load %struct._GimpColorEditor*, %struct._GimpColorEditor** %editor.addr, align 8
  %context4 = getelementptr inbounds %struct._GimpColorEditor, %struct._GimpColorEditor* %7, i32 0, i32 1
  %8 = load %struct._GimpContext*, %struct._GimpContext** %context4, align 8
  %9 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  call void @gimp_context_set_foreground(%struct._GimpContext* %8, %struct._GimpRGB* %9)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  ret void
}

declare %struct._GtkWidget* @gimp_color_hex_entry_new() #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #6

declare void @gtk_box_pack_end(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton*) #1

declare i32 @gtk_notebook_page_num(%struct._GtkNotebook*, %struct._GtkWidget*) #1

declare void @gtk_notebook_set_current_page(%struct._GtkNotebook*, i32) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
