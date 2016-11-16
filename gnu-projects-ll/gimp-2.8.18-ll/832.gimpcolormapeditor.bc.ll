; ModuleID = './app/widgets/gimpcolormapeditor.bc'
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
%struct._GimpCoreConfig = type opaque
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
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpToolInfo = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type { %struct._GimpData, %struct._GList*, i32, i32 }
%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpUIManager = type { %struct._GtkUIManager, i8*, %struct._Gimp*, %struct._GList* }
%struct._GtkUIManager = type { %struct._GObject, %struct._GtkUIManagerPrivate* }
%struct._GtkUIManagerPrivate = type opaque
%struct._GimpColormapEditorClass = type { %struct._GimpImageEditorClass }
%struct._GimpImageEditorClass = type { %struct._GimpEditorClass, void (%struct._GimpImageEditor*, %struct._GimpImage*)* }
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
%struct._GimpImageEditor = type { %struct._GimpEditor, %struct._GimpContext*, %struct._GimpImage* }
%struct._GimpEditor = type { %struct._GtkBox, %struct._GimpEditorPrivate* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpEditorPrivate = type opaque
%struct._GimpColormapEditor = type { %struct._GimpImageEditor, %struct._GtkWidget*, i32, %struct._PangoLayout*, %struct._GtkAdjustment*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._PangoLayout = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GimpView = type { %struct._GtkWidget, %struct._GdkDrawable*, %struct._GimpViewable*, %struct._GimpViewRenderer*, i8, i32 }
%struct._GimpViewRenderer = type { %struct._GObject, %struct._GimpContext*, i64, %struct._GimpViewable*, i32, i32, i32, i8, i32, %struct._GimpRGB, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GdkPixbuf*, i8*, i32, i32, i32 }
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GdkPixbuf = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._GimpMenuFactory = type { %struct._GimpObject, %struct._GimpMenuFactoryPrivate* }
%struct._GimpMenuFactoryPrivate = type opaque
%struct._GimpPaletteView = type { %struct._GimpView, %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry* }
%struct._GimpPaletteEntry = type { %struct._GimpRGB, i8*, i32 }
%struct._cairo = type opaque
%struct._GtkMenu = type { %struct._GtkMenuShell, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAccelGroup*, i8*, void (%struct._GtkMenu*, i32*, i32*, i32*, i8*)*, i8*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GdkDrawable*, %struct._GdkDrawable*, i32, i32, i32, i32, %struct._GdkRegion*, i32, i8 }
%struct._GtkMenuShell = type { %struct._GtkContainer, %struct._GList*, %struct._GtkWidget*, %struct._GtkWidget*, i32, i32, i8 }
%struct._GtkAccelGroup = type { %struct._GObject, i32, i32, %struct._GSList*, i32, %struct._GtkAccelGroupEntry* }
%struct._GtkAccelGroupEntry = type { %struct._GtkAccelKey, %struct._GClosure*, i32 }
%struct._GtkAccelKey = type { i32, i32, i16 }
%struct._GimpColorHexEntry = type { %struct._GtkEntry, %struct._GimpRGB }
%struct._PangoAttrList = type opaque
%struct._PangoAttribute = type { %struct._PangoAttrClass*, i32, i32 }
%struct._PangoAttrClass = type { i32, %struct._PangoAttribute* (%struct._PangoAttribute*)*, void (%struct._PangoAttribute*)*, i32 (%struct._PangoAttribute*, %struct._PangoAttribute*)* }

@gimp_colormap_editor_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"GimpColormapEditor\00", align 1
@gimp_colormap_editor_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpDockedInterface*)* @gimp_colormap_editor_docked_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_colormap_editor_new = private unnamed_addr constant [25 x i8] c"gimp_colormap_editor_new\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"GIMP_IS_MENU_FACTORY (menu_factory)\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"menu-factory\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"menu-identifier\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"<Colormap>\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"ui-path\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"/colormap-popup\00", align 1
@__func__.gimp_colormap_editor_get_index = private unnamed_addr constant [31 x i8] c"gimp_colormap_editor_get_index\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"GIMP_IS_COLORMAP_EDITOR (editor)\00", align 1
@__func__.gimp_colormap_editor_set_index = private unnamed_addr constant [31 x i8] c"gimp_colormap_editor_set_index\00", align 1
@__func__.gimp_colormap_editor_max_index = private unnamed_addr constant [31 x i8] c"gimp_colormap_editor_max_index\00", align 1
@gimp_colormap_editor_parent_class = internal global i8* null, align 8
@GimpColormapEditor_private_offset = internal global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"colormap\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"colormap-edit-color\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"colormap-add-color-from-fg\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"colormap-add-color-from-bg\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"mode-changed\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"colormap-changed\00", align 1
@parent_docked_iface = internal global %struct._GimpDockedInterface* null, align 8
@.str.15 = private unnamed_addr constant [13 x i8] c"expose-event\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"entry-clicked\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"entry-selected\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"entry-activated\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"entry-context\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"color-dropped\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"Color index:\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"HTML notation:\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"color-changed\00", align 1
@.str.25 = private unnamed_addr constant [37 x i8] c"Only indexed images have a colormap.\00", align 1
@.str.26 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"%02x%02x%02x\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_colormap_editor_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_colormap_editor_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_colormap_editor_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_image_editor_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 832, void (i8*, i8*)* bitcast (void (i8*)* @gimp_colormap_editor_class_intern_init to void (i8*, i8*)*), i32 208, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpColormapEditor*)* @gimp_colormap_editor_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_docked_interface_get_type() #6
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_colormap_editor_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_colormap_editor_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_colormap_editor_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_editor_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_colormap_editor_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_colormap_editor_parent_class, align 8
  %1 = load i32, i32* @GimpColormapEditor_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpColormapEditor_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpColormapEditorClass*
  call void @gimp_colormap_editor_class_init(%struct._GimpColormapEditorClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_colormap_editor_init(%struct._GimpColormapEditor* %editor) #3 {
entry:
  %editor.addr = alloca %struct._GimpColormapEditor*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  store %struct._GimpColormapEditor* %editor, %struct._GimpColormapEditor** %editor.addr, align 8
  %call = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %frame, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_frame_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %2, i32 1)
  %3 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %4 = bitcast %struct._GimpColormapEditor* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_box_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkBox*
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %5, %struct._GtkWidget* %6, i32 1, i32 1, i32 0)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %7)
  %call5 = call i64 @gimp_palette_view_get_type() #6
  %call6 = call i64 @gimp_palette_get_type() #6
  %call7 = call %struct._GtkWidget* @gimp_view_new_full_by_types(%struct._GimpContext* null, i64 %call5, i64 %call6, i32 1, i32 1, i32 0, i32 0, i32 1, i32 0)
  %8 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %view = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %8, i32 0, i32 1
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %view, align 8
  %9 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %view8 = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %9, i32 0, i32 1
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %view8, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_view_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call9)
  %12 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpView*
  call void @gimp_view_set_expand(%struct._GimpView* %12, i32 1)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_container_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkContainer*
  %16 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %view13 = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %16, i32 0, i32 1
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %view13, align 8
  call void @gtk_container_add(%struct._GtkContainer* %15, %struct._GtkWidget* %17)
  %18 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %view14 = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %18, i32 0, i32 1
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %view14, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %19)
  %20 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %view15 = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %20, i32 0, i32 1
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %view15, align 8
  %22 = bitcast %struct._GtkWidget* %21 to i8*
  %23 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %24 = bitcast %struct._GimpColormapEditor* %23 to i8*
  %call16 = call i64 @g_signal_connect_data(i8* %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventExpose*, %struct._GimpColormapEditor*)* @gimp_colormap_preview_expose to void ()*), i8* %24, void (i8*, %struct._GClosure*)* null, i32 0)
  %25 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %view17 = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %25, i32 0, i32 1
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %view17, align 8
  %27 = bitcast %struct._GtkWidget* %26 to i8*
  %28 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %29 = bitcast %struct._GimpColormapEditor* %28 to i8*
  %call18 = call i64 @g_signal_connect_data(i8* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPaletteView*, %struct._GimpPaletteEntry*, i32, %struct._GimpColormapEditor*)* @gimp_colormap_editor_entry_clicked to void ()*), i8* %29, void (i8*, %struct._GClosure*)* null, i32 0)
  %30 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %view19 = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %30, i32 0, i32 1
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %view19, align 8
  %32 = bitcast %struct._GtkWidget* %31 to i8*
  %33 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %34 = bitcast %struct._GimpColormapEditor* %33 to i8*
  %call20 = call i64 @g_signal_connect_data(i8* %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPaletteView*, %struct._GimpPaletteEntry*, %struct._GimpColormapEditor*)* @gimp_colormap_editor_entry_selected to void ()*), i8* %34, void (i8*, %struct._GClosure*)* null, i32 0)
  %35 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %view21 = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %35, i32 0, i32 1
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %view21, align 8
  %37 = bitcast %struct._GtkWidget* %36 to i8*
  %38 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %39 = bitcast %struct._GimpColormapEditor* %38 to i8*
  %call22 = call i64 @g_signal_connect_data(i8* %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPaletteView*, %struct._GimpPaletteEntry*, %struct._GimpColormapEditor*)* @gimp_colormap_editor_entry_activated to void ()*), i8* %39, void (i8*, %struct._GClosure*)* null, i32 0)
  %40 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %view23 = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %40, i32 0, i32 1
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %view23, align 8
  %42 = bitcast %struct._GtkWidget* %41 to i8*
  %43 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %44 = bitcast %struct._GimpColormapEditor* %43 to i8*
  %call24 = call i64 @g_signal_connect_data(i8* %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPaletteView*, %struct._GimpPaletteEntry*, %struct._GimpColormapEditor*)* @gimp_colormap_editor_entry_context to void ()*), i8* %44, void (i8*, %struct._GClosure*)* null, i32 0)
  %45 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %view25 = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %45, i32 0, i32 1
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %view25, align 8
  %47 = bitcast %struct._GtkWidget* %46 to i8*
  %48 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %49 = bitcast %struct._GimpColormapEditor* %48 to i8*
  %call26 = call i64 @g_signal_connect_data(i8* %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPaletteView*, %struct._GimpPaletteEntry*, %struct._GimpRGB*, %struct._GimpColormapEditor*)* @gimp_colormap_editor_color_dropped to void ()*), i8* %49, void (i8*, %struct._GClosure*)* null, i32 0)
  %call27 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 2, i32 0)
  store %struct._GtkWidget* %call27, %struct._GtkWidget** %table, align 8
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %51 = bitcast %struct._GtkWidget* %50 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_table_get_type() #6
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call28)
  %52 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkTable*
  call void @gtk_table_set_col_spacing(%struct._GtkTable* %52, i32 0, i32 4)
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %54 = bitcast %struct._GtkWidget* %53 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_table_get_type() #6
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call30)
  %55 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkTable*
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %55, i32 0, i32 2)
  %56 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %57 = bitcast %struct._GimpColormapEditor* %56 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_box_get_type() #6
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call32)
  %58 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkBox*
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %58, %struct._GtkWidget* %59, i32 0, i32 0, i32 0)
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %60)
  %call34 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00, double 1.000000e+00, i32 0)
  %61 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %index_spinbutton = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %61, i32 0, i32 5
  store %struct._GtkWidget* %call34, %struct._GtkWidget** %index_spinbutton, align 8
  %62 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %63 = bitcast %struct._GtkObject* %62 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_adjustment_get_type() #6
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call35)
  %64 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkAdjustment*
  %65 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %index_adjustment = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %65, i32 0, i32 4
  store %struct._GtkAdjustment* %64, %struct._GtkAdjustment** %index_adjustment, align 8
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %67 = bitcast %struct._GtkWidget* %66 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_table_get_type() #6
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 %call37)
  %68 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkTable*
  %call39 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0)) #7
  %69 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %index_spinbutton40 = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %69, i32 0, i32 5
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %index_spinbutton40, align 8
  %call41 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %68, i32 0, i32 0, i8* %call39, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %70, i32 1, i32 1)
  %71 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %index_adjustment42 = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %71, i32 0, i32 4
  %72 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %index_adjustment42, align 8
  %73 = bitcast %struct._GtkAdjustment* %72 to i8*
  %74 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %75 = bitcast %struct._GimpColormapEditor* %74 to i8*
  %call43 = call i64 @g_signal_connect_data(i8* %73, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._GimpColormapEditor*)* @gimp_colormap_adjustment_changed to void ()*), i8* %75, void (i8*, %struct._GClosure*)* null, i32 0)
  %call44 = call %struct._GtkWidget* @gimp_color_hex_entry_new()
  %76 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %color_entry = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %76, i32 0, i32 6
  store %struct._GtkWidget* %call44, %struct._GtkWidget** %color_entry, align 8
  %77 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %color_entry45 = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %77, i32 0, i32 6
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %color_entry45, align 8
  %79 = bitcast %struct._GtkWidget* %78 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_entry_get_type() #6
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 %call46)
  %80 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkEntry*
  call void @gtk_entry_set_width_chars(%struct._GtkEntry* %80, i32 12)
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %82 = bitcast %struct._GtkWidget* %81 to %struct._GTypeInstance*
  %call48 = call i64 @gtk_table_get_type() #6
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %82, i64 %call48)
  %83 = bitcast %struct._GTypeInstance* %call49 to %struct._GtkTable*
  %call50 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0)) #7
  %84 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %color_entry51 = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %84, i32 0, i32 6
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %color_entry51, align 8
  %call52 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %83, i32 0, i32 1, i8* %call50, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %85, i32 1, i32 1)
  %86 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %color_entry53 = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %86, i32 0, i32 6
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %color_entry53, align 8
  %88 = bitcast %struct._GtkWidget* %87 to i8*
  %89 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %90 = bitcast %struct._GimpColormapEditor* %89 to i8*
  %call54 = call i64 @g_signal_connect_data(i8* %88, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), void ()* bitcast (void (%struct._GimpColorHexEntry*, %struct._GimpColormapEditor*)* @gimp_colormap_hex_entry_changed to void ()*), i8* %90, void (i8*, %struct._GClosure*)* null, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_colormap_editor_docked_iface_init(%struct._GimpDockedInterface* %iface) #3 {
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
  %call1 = call i64 @gimp_docked_interface_get_type() #6
  %call2 = call i8* @g_type_default_interface_peek(i64 %call1)
  %4 = bitcast i8* %call2 to %struct._GimpDockedInterface*
  store %struct._GimpDockedInterface* %4, %struct._GimpDockedInterface** @parent_docked_iface, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** %iface.addr, align 8
  %set_context = getelementptr inbounds %struct._GimpDockedInterface, %struct._GimpDockedInterface* %5, i32 0, i32 8
  store void (%struct._GimpDocked*, %struct._GimpContext*)* @gimp_colormap_editor_set_context, void (%struct._GimpDocked*, %struct._GimpContext*)** %set_context, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_docked_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_colormap_editor_new(%struct._GimpMenuFactory* %menu_factory) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %menu_factory.addr = alloca %struct._GimpMenuFactory*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpMenuFactory* %menu_factory, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  %1 = bitcast %struct._GimpMenuFactory* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_menu_factory_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_colormap_editor_new, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_colormap_editor_get_type() #6
  %13 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  %call12 = call i8* (i64, i8*, ...) @g_object_new(i64 %call11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), %struct._GimpMenuFactory* %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i8* null)
  %14 = bitcast i8* %call12 to %struct._GtkWidget*
  store %struct._GtkWidget* %14, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %15
}

; Function Attrs: nounwind readnone
declare i64 @gimp_menu_factory_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_colormap_editor_get_index(%struct._GimpColormapEditor* %editor, %struct._GimpRGB* %search) #3 {
entry:
  %retval = alloca i32, align 4
  %editor.addr = alloca %struct._GimpColormapEditor*, align 8
  %search.addr = alloca %struct._GimpRGB*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %index = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %temp = alloca %struct._GimpRGB, align 8
  %n_colors = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._GimpColormapEditor* %editor, %struct._GimpColormapEditor** %editor.addr, align 8
  store %struct._GimpRGB* %search, %struct._GimpRGB** %search.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpColormapEditor* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_colormap_editor_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_colormap_editor_get_index, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %14 = bitcast %struct._GimpColormapEditor* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_image_editor_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpImageEditor*
  %image13 = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %15, i32 0, i32 2
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image13, align 8
  store %struct._GimpImage* %16, %struct._GimpImage** %image, align 8
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp14 = icmp ne %struct._GimpImage* %17, null
  br i1 %cmp14, label %land.lhs.true.15, label %if.then.21

land.lhs.true.15:                                 ; preds = %do.end
  %18 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call16 = call i32 @gimp_image_base_type(%struct._GimpImage* %18)
  %cmp17 = icmp eq i32 %call16, 2
  br i1 %cmp17, label %land.lhs.true.18, label %if.then.21

land.lhs.true.18:                                 ; preds = %land.lhs.true.15
  %19 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call19 = call i8* @gimp_image_get_colormap(%struct._GimpImage* %19)
  %cmp20 = icmp ne i8* %call19, null
  br i1 %cmp20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %land.lhs.true.18, %land.lhs.true.15, %do.end
  store i32 -1, i32* %retval
  br label %return

if.end.22:                                        ; preds = %land.lhs.true.18
  %20 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %col_index = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %20, i32 0, i32 2
  %21 = load i32, i32* %col_index, align 4
  store i32 %21, i32* %index, align 4
  %22 = load %struct._GimpRGB*, %struct._GimpRGB** %search.addr, align 8
  %tobool23 = icmp ne %struct._GimpRGB* %22, null
  br i1 %tobool23, label %if.then.24, label %if.end.38

if.then.24:                                       ; preds = %if.end.22
  %23 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %24 = load i32, i32* %index, align 4
  call void @gimp_image_get_colormap_entry(%struct._GimpImage* %23, i32 %24, %struct._GimpRGB* %temp)
  %25 = load %struct._GimpRGB*, %struct._GimpRGB** %search.addr, align 8
  %call26 = call double @gimp_rgb_distance(%struct._GimpRGB* %temp, %struct._GimpRGB* %25)
  %cmp27 = fcmp ogt double %call26, 1.000000e-10
  br i1 %cmp27, label %if.then.28, label %if.end.37

if.then.28:                                       ; preds = %if.then.24
  %26 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call30 = call i32 @gimp_image_get_colormap_size(%struct._GimpImage* %26)
  store i32 %call30, i32* %n_colors, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.28
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* %n_colors, align 4
  %cmp32 = icmp slt i32 %27, %28
  br i1 %cmp32, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %30 = load i32, i32* %i, align 4
  call void @gimp_image_get_colormap_entry(%struct._GimpImage* %29, i32 %30, %struct._GimpRGB* %temp)
  %31 = load %struct._GimpRGB*, %struct._GimpRGB** %search.addr, align 8
  %call33 = call double @gimp_rgb_distance(%struct._GimpRGB* %temp, %struct._GimpRGB* %31)
  %cmp34 = fcmp olt double %call33, 1.000000e-10
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %for.body
  %32 = load i32, i32* %i, align 4
  store i32 %32, i32* %index, align 4
  br label %for.end

if.end.36:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.36
  %33 = load i32, i32* %i, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.35, %for.cond
  br label %if.end.37

if.end.37:                                        ; preds = %for.end, %if.then.24
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.end.22
  %34 = load i32, i32* %index, align 4
  store i32 %34, i32* %retval
  br label %return

return:                                           ; preds = %if.end.38, %if.then.21, %if.else.9
  %35 = load i32, i32* %retval
  ret i32 %35
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare i32 @gimp_image_base_type(%struct._GimpImage*) #1

declare i8* @gimp_image_get_colormap(%struct._GimpImage*) #1

declare void @gimp_image_get_colormap_entry(%struct._GimpImage*, i32, %struct._GimpRGB*) #1

declare double @gimp_rgb_distance(%struct._GimpRGB*, %struct._GimpRGB*) #1

declare i32 @gimp_image_get_colormap_size(%struct._GimpImage*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_colormap_editor_set_index(%struct._GimpColormapEditor* %editor, i32 %index, %struct._GimpRGB* %color) #3 {
entry:
  %retval = alloca i32, align 4
  %editor.addr = alloca %struct._GimpColormapEditor*, align 8
  %index.addr = alloca i32, align 4
  %color.addr = alloca %struct._GimpRGB*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %size = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %palette = alloca %struct._GimpPalette*, align 8
  store %struct._GimpColormapEditor* %editor, %struct._GimpColormapEditor** %editor.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpColormapEditor* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_colormap_editor_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_colormap_editor_set_index, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %14 = bitcast %struct._GimpColormapEditor* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_image_editor_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpImageEditor*
  %image13 = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %15, i32 0, i32 2
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image13, align 8
  store %struct._GimpImage* %16, %struct._GimpImage** %image, align 8
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp14 = icmp ne %struct._GimpImage* %17, null
  br i1 %cmp14, label %land.lhs.true.15, label %if.then.21

land.lhs.true.15:                                 ; preds = %do.end
  %18 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call16 = call i32 @gimp_image_base_type(%struct._GimpImage* %18)
  %cmp17 = icmp eq i32 %call16, 2
  br i1 %cmp17, label %land.lhs.true.18, label %if.then.21

land.lhs.true.18:                                 ; preds = %land.lhs.true.15
  %19 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call19 = call i8* @gimp_image_get_colormap(%struct._GimpImage* %19)
  %cmp20 = icmp ne i8* %call19, null
  br i1 %cmp20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %land.lhs.true.18, %land.lhs.true.15, %do.end
  store i32 0, i32* %retval
  br label %return

if.end.22:                                        ; preds = %land.lhs.true.18
  %20 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call23 = call i32 @gimp_image_get_colormap_size(%struct._GimpImage* %20)
  store i32 %call23, i32* %size, align 4
  %21 = load i32, i32* %size, align 4
  %cmp24 = icmp slt i32 %21, 1
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.22
  store i32 0, i32* %retval
  br label %return

if.end.26:                                        ; preds = %if.end.22
  %22 = load i32, i32* %index.addr, align 4
  %23 = load i32, i32* %size, align 4
  %sub = sub nsw i32 %23, 1
  %cmp27 = icmp sgt i32 %22, %sub
  br i1 %cmp27, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.26
  %24 = load i32, i32* %size, align 4
  %sub28 = sub nsw i32 %24, 1
  br label %cond.end.32

cond.false:                                       ; preds = %if.end.26
  %25 = load i32, i32* %index.addr, align 4
  %cmp29 = icmp slt i32 %25, 0
  br i1 %cmp29, label %cond.true.30, label %cond.false.31

cond.true.30:                                     ; preds = %cond.false
  br label %cond.end

cond.false.31:                                    ; preds = %cond.false
  %26 = load i32, i32* %index.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.31, %cond.true.30
  %cond = phi i32 [ 0, %cond.true.30 ], [ %26, %cond.false.31 ]
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.end, %cond.true
  %cond33 = phi i32 [ %sub28, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond33, i32* %index.addr, align 4
  %27 = load i32, i32* %index.addr, align 4
  %28 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %col_index = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %28, i32 0, i32 2
  %29 = load i32, i32* %col_index, align 4
  %cmp34 = icmp ne i32 %27, %29
  br i1 %cmp34, label %if.then.35, label %if.end.42

if.then.35:                                       ; preds = %cond.end.32
  %30 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call37 = call %struct._GimpPalette* @gimp_image_get_colormap_palette(%struct._GimpImage* %30)
  store %struct._GimpPalette* %call37, %struct._GimpPalette** %palette, align 8
  %31 = load i32, i32* %index.addr, align 4
  %32 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %col_index38 = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %32, i32 0, i32 2
  store i32 %31, i32* %col_index38, align 4
  %33 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %view = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %33, i32 0, i32 1
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_palette_view_get_type() #6
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call39)
  %36 = bitcast %struct._GTypeInstance* %call40 to %struct._GimpPaletteView*
  %37 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %38 = load i32, i32* %index.addr, align 4
  %call41 = call %struct._GimpPaletteEntry* @gimp_palette_get_entry(%struct._GimpPalette* %37, i32 %38)
  call void @gimp_palette_view_select_entry(%struct._GimpPaletteView* %36, %struct._GimpPaletteEntry* %call41)
  %39 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  call void @gimp_colormap_editor_update_entries(%struct._GimpColormapEditor* %39)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.35, %cond.end.32
  %40 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %tobool43 = icmp ne %struct._GimpRGB* %40, null
  br i1 %tobool43, label %if.then.44, label %if.end.48

if.then.44:                                       ; preds = %if.end.42
  %41 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %42 = bitcast %struct._GimpColormapEditor* %41 to %struct._GTypeInstance*
  %call45 = call i64 @gimp_image_editor_get_type() #6
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call45)
  %43 = bitcast %struct._GTypeInstance* %call46 to %struct._GimpImageEditor*
  %image47 = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %43, i32 0, i32 2
  %44 = load %struct._GimpImage*, %struct._GimpImage** %image47, align 8
  %45 = load i32, i32* %index.addr, align 4
  %46 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  call void @gimp_image_get_colormap_entry(%struct._GimpImage* %44, i32 %45, %struct._GimpRGB* %46)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.44, %if.end.42
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.48, %if.then.25, %if.then.21, %if.else.9
  %47 = load i32, i32* %retval
  ret i32 %47
}

declare %struct._GimpPalette* @gimp_image_get_colormap_palette(%struct._GimpImage*) #1

declare void @gimp_palette_view_select_entry(%struct._GimpPaletteView*, %struct._GimpPaletteEntry*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_palette_view_get_type() #2

declare %struct._GimpPaletteEntry* @gimp_palette_get_entry(%struct._GimpPalette*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_colormap_editor_update_entries(%struct._GimpColormapEditor* %editor) #3 {
entry:
  %editor.addr = alloca %struct._GimpColormapEditor*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %colormap = alloca i8*, align 8
  %col = alloca i8*, align 8
  %string = alloca i8*, align 8
  store %struct._GimpColormapEditor* %editor, %struct._GimpColormapEditor** %editor.addr, align 8
  %0 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpColormapEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_editor_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImageEditor*
  %image2 = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %2, i32 0, i32 2
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image2, align 8
  store %struct._GimpImage* %3, %struct._GimpImage** %image, align 8
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp = icmp ne %struct._GimpImage* %4, null
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call3 = call i32 @gimp_image_base_type(%struct._GimpImage* %5)
  %cmp4 = icmp eq i32 %call3, 2
  br i1 %cmp4, label %land.lhs.true.5, label %if.then

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call6 = call i8* @gimp_image_get_colormap(%struct._GimpImage* %6)
  %cmp7 = icmp ne i8* %call6, null
  br i1 %cmp7, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true.5
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call8 = call i32 @gimp_image_get_colormap_size(%struct._GimpImage* %7)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true.5, %land.lhs.true, %entry
  %8 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %index_spinbutton = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %8, i32 0, i32 5
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %index_spinbutton, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %9, i32 0)
  %10 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %color_entry = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %10, i32 0, i32 6
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %color_entry, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %11, i32 0)
  %12 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %index_adjustment = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %12, i32 0, i32 4
  %13 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %index_adjustment, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %13, double 0.000000e+00)
  %14 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %color_entry9 = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %14, i32 0, i32 6
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %color_entry9, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_entry_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call10)
  %17 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkEntry*
  call void @gtk_entry_set_text(%struct._GtkEntry* %17, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.26, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %18 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call12 = call i8* @gimp_image_get_colormap(%struct._GimpImage* %18)
  store i8* %call12, i8** %colormap, align 8
  %19 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %index_adjustment13 = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %19, i32 0, i32 4
  %20 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %index_adjustment13, align 8
  %21 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %col_index = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %21, i32 0, i32 2
  %22 = load i32, i32* %col_index, align 4
  %conv = sitofp i32 %22 to double
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %20, double %conv)
  %23 = load i8*, i8** %colormap, align 8
  %24 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %col_index14 = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %24, i32 0, i32 2
  %25 = load i32, i32* %col_index14, align 4
  %mul = mul nsw i32 %25, 3
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %23, i64 %idx.ext
  store i8* %add.ptr, i8** %col, align 8
  %26 = load i8*, i8** %col, align 8
  %arrayidx = getelementptr inbounds i8, i8* %26, i64 0
  %27 = load i8, i8* %arrayidx, align 1
  %conv15 = zext i8 %27 to i32
  %28 = load i8*, i8** %col, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %28, i64 1
  %29 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %29 to i32
  %30 = load i8*, i8** %col, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %30, i64 2
  %31 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %31 to i32
  %call20 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i32 0, i32 0), i32 %conv15, i32 %conv17, i32 %conv19)
  store i8* %call20, i8** %string, align 8
  %32 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %color_entry21 = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %32, i32 0, i32 6
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %color_entry21, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_entry_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call22)
  %35 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkEntry*
  %36 = load i8*, i8** %string, align 8
  call void @gtk_entry_set_text(%struct._GtkEntry* %35, i8* %36)
  %37 = load i8*, i8** %string, align 8
  call void @g_free(i8* %37)
  %38 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %index_spinbutton24 = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %38, i32 0, i32 5
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %index_spinbutton24, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %39, i32 1)
  %40 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %color_entry25 = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %40, i32 0, i32 6
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %color_entry25, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %41, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_colormap_editor_max_index(%struct._GimpColormapEditor* %editor) #3 {
entry:
  %retval = alloca i32, align 4
  %editor.addr = alloca %struct._GimpColormapEditor*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpColormapEditor* %editor, %struct._GimpColormapEditor** %editor.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpColormapEditor* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_colormap_editor_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_colormap_editor_max_index, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %14 = bitcast %struct._GimpColormapEditor* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_image_editor_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpImageEditor*
  %image13 = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %15, i32 0, i32 2
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image13, align 8
  store %struct._GimpImage* %16, %struct._GimpImage** %image, align 8
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp14 = icmp ne %struct._GimpImage* %17, null
  br i1 %cmp14, label %land.lhs.true.15, label %if.then.21

land.lhs.true.15:                                 ; preds = %do.end
  %18 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call16 = call i32 @gimp_image_base_type(%struct._GimpImage* %18)
  %cmp17 = icmp eq i32 %call16, 2
  br i1 %cmp17, label %land.lhs.true.18, label %if.then.21

land.lhs.true.18:                                 ; preds = %land.lhs.true.15
  %19 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call19 = call i8* @gimp_image_get_colormap(%struct._GimpImage* %19)
  %cmp20 = icmp ne i8* %call19, null
  br i1 %cmp20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %land.lhs.true.18, %land.lhs.true.15, %do.end
  store i32 -1, i32* %retval
  br label %return

if.end.22:                                        ; preds = %land.lhs.true.18
  %20 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call23 = call i32 @gimp_image_get_colormap_size(%struct._GimpImage* %20)
  %sub = sub nsw i32 %call23, 1
  %cmp24 = icmp sgt i32 0, %sub
  br i1 %cmp24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.22
  br label %cond.end

cond.false:                                       ; preds = %if.end.22
  %21 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call25 = call i32 @gimp_image_get_colormap_size(%struct._GimpImage* %21)
  %sub26 = sub nsw i32 %call25, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %sub26, %cond.false ]
  store i32 %cond, i32* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then.21, %if.else.9
  %22 = load i32, i32* %retval
  ret i32 %22
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_colormap_editor_class_init(%struct._GimpColormapEditorClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpColormapEditorClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  %image_editor_class = alloca %struct._GimpImageEditorClass*, align 8
  store %struct._GimpColormapEditorClass* %klass, %struct._GimpColormapEditorClass** %klass.addr, align 8
  %0 = load %struct._GimpColormapEditorClass*, %struct._GimpColormapEditorClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpColormapEditorClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpColormapEditorClass*, %struct._GimpColormapEditorClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpColormapEditorClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_widget_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %5, %struct._GtkWidgetClass** %widget_class, align 8
  %6 = load %struct._GimpColormapEditorClass*, %struct._GimpColormapEditorClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpColormapEditorClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_image_editor_get_type() #6
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpImageEditorClass*
  store %struct._GimpImageEditorClass* %8, %struct._GimpImageEditorClass** %image_editor_class, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_colormap_editor_constructed, void (%struct._GObject*)** %constructed, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_colormap_editor_dispose, void (%struct._GObject*)** %dispose, align 8
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %11, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_colormap_editor_finalize, void (%struct._GObject*)** %finalize, align 8
  %12 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %unmap = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %12, i32 0, i32 9
  store void (%struct._GtkWidget*)* @gimp_colormap_editor_unmap, void (%struct._GtkWidget*)** %unmap, align 8
  %13 = load %struct._GimpImageEditorClass*, %struct._GimpImageEditorClass** %image_editor_class, align 8
  %set_image = getelementptr inbounds %struct._GimpImageEditorClass, %struct._GimpImageEditorClass* %13, i32 0, i32 1
  store void (%struct._GimpImageEditor*, %struct._GimpImage*)* @gimp_colormap_editor_set_image, void (%struct._GimpImageEditor*, %struct._GimpImage*)** %set_image, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_colormap_editor_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %editor = alloca %struct._GimpColormapEditor*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_colormap_editor_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColormapEditor*
  store %struct._GimpColormapEditor* %2, %struct._GimpColormapEditor** %editor, align 8
  %3 = load i8*, i8** @gimp_colormap_editor_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 9
  %6 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_colormap_editor_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 80)
  %9 = bitcast %struct._GTypeClass* %call3 to %struct._GObjectClass*
  %constructed4 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  %10 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed4, align 8
  %11 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %10(%struct._GObject* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor, align 8
  %13 = bitcast %struct._GimpColormapEditor* %12 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_editor_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call5)
  %14 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpEditor*
  %call7 = call %struct._GtkWidget* (%struct._GimpEditor*, i8*, i8*, ...) @gimp_editor_add_action_button(%struct._GimpEditor* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i8* null)
  %15 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor, align 8
  %16 = bitcast %struct._GimpColormapEditor* %15 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_editor_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call8)
  %17 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpEditor*
  %call10 = call i32 @gimp_get_toggle_behavior_mask()
  %call11 = call %struct._GtkWidget* (%struct._GimpEditor*, i8*, i8*, ...) @gimp_editor_add_action_button(%struct._GimpEditor* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i32 0, i32 0), i32 %call10, i8* null)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_colormap_editor_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %editor = alloca %struct._GimpColormapEditor*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_colormap_editor_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColormapEditor*
  store %struct._GimpColormapEditor* %2, %struct._GimpColormapEditor** %editor, align 8
  %3 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor, align 8
  %color_dialog = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %3, i32 0, i32 7
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %color_dialog, align 8
  %tobool = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor, align 8
  %color_dialog2 = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %5, i32 0, i32 7
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %color_dialog2, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %6)
  %7 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor, align 8
  %color_dialog3 = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %7, i32 0, i32 7
  store %struct._GtkWidget* null, %struct._GtkWidget** %color_dialog3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8*, i8** @gimp_colormap_editor_parent_class, align 8
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
define internal void @gimp_colormap_editor_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %editor = alloca %struct._GimpColormapEditor*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_colormap_editor_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColormapEditor*
  store %struct._GimpColormapEditor* %2, %struct._GimpColormapEditor** %editor, align 8
  %3 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor, align 8
  %layout = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %3, i32 0, i32 3
  %4 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  %tobool = icmp ne %struct._PangoLayout* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor, align 8
  %layout2 = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %5, i32 0, i32 3
  %6 = load %struct._PangoLayout*, %struct._PangoLayout** %layout2, align 8
  %7 = bitcast %struct._PangoLayout* %6 to i8*
  call void @g_object_unref(i8* %7)
  %8 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor, align 8
  %layout3 = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %8, i32 0, i32 3
  store %struct._PangoLayout* null, %struct._PangoLayout** %layout3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8*, i8** @gimp_colormap_editor_parent_class, align 8
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
define internal void @gimp_colormap_editor_unmap(%struct._GtkWidget* %widget) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %editor = alloca %struct._GimpColormapEditor*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_colormap_editor_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColormapEditor*
  store %struct._GimpColormapEditor* %2, %struct._GimpColormapEditor** %editor, align 8
  %3 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor, align 8
  %color_dialog = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %3, i32 0, i32 7
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %color_dialog, align 8
  %tobool = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor, align 8
  %color_dialog2 = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %5, i32 0, i32 7
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %color_dialog2, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** @gimp_colormap_editor_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call3 = call i64 @gtk_widget_get_type() #6
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 %call3)
  %9 = bitcast %struct._GTypeClass* %call4 to %struct._GtkWidgetClass*
  %unmap = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %9, i32 0, i32 9
  %10 = load void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)** %unmap, align 8
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void %10(%struct._GtkWidget* %11)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_colormap_editor_set_image(%struct._GimpImageEditor* %image_editor, %struct._GimpImage* %image) #3 {
entry:
  %image_editor.addr = alloca %struct._GimpImageEditor*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %editor = alloca %struct._GimpColormapEditor*, align 8
  store %struct._GimpImageEditor* %image_editor, %struct._GimpImageEditor** %image_editor.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  %0 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %image_editor.addr, align 8
  %1 = bitcast %struct._GimpImageEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_colormap_editor_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColormapEditor*
  store %struct._GimpColormapEditor* %2, %struct._GimpColormapEditor** %editor, align 8
  %3 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %image_editor.addr, align 8
  %image2 = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %3, i32 0, i32 2
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image2, align 8
  %tobool = icmp ne %struct._GimpImage* %4, null
  br i1 %tobool, label %if.then, label %if.end.25

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %image_editor.addr, align 8
  %image3 = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %5, i32 0, i32 2
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image3, align 8
  %7 = bitcast %struct._GimpImage* %6 to i8*
  %8 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor, align 8
  %9 = bitcast %struct._GimpColormapEditor* %8 to i8*
  %call4 = call i32 @g_signal_handlers_disconnect_matched(i8* %7, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpImage*, %struct._GimpColormapEditor*)* @gimp_colormap_image_mode_changed to i8*), i8* %9)
  %10 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %image_editor.addr, align 8
  %image5 = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %10, i32 0, i32 2
  %11 = load %struct._GimpImage*, %struct._GimpImage** %image5, align 8
  %12 = bitcast %struct._GimpImage* %11 to i8*
  %13 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor, align 8
  %14 = bitcast %struct._GimpColormapEditor* %13 to i8*
  %call6 = call i32 @g_signal_handlers_disconnect_matched(i8* %12, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpImage*, i32, %struct._GimpColormapEditor*)* @gimp_colormap_image_colormap_changed to i8*), i8* %14)
  %15 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor, align 8
  %color_dialog = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %15, i32 0, i32 7
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %color_dialog, align 8
  %tobool7 = icmp ne %struct._GtkWidget* %16, null
  br i1 %tobool7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %17 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor, align 8
  %color_dialog9 = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %17, i32 0, i32 7
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %color_dialog9, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %18)
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  %19 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %cmp = icmp ne %struct._GimpImage* %19, null
  br i1 %cmp, label %land.lhs.true, label %if.then.15

land.lhs.true:                                    ; preds = %if.end
  %20 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call10 = call i32 @gimp_image_base_type(%struct._GimpImage* %20)
  %cmp11 = icmp eq i32 %call10, 2
  br i1 %cmp11, label %land.lhs.true.12, label %if.then.15

land.lhs.true.12:                                 ; preds = %land.lhs.true
  %21 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call13 = call i8* @gimp_image_get_colormap(%struct._GimpImage* %21)
  %cmp14 = icmp ne i8* %call13, null
  br i1 %cmp14, label %if.end.24, label %if.then.15

if.then.15:                                       ; preds = %land.lhs.true.12, %land.lhs.true, %if.end
  %22 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor, align 8
  %index_adjustment = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %22, i32 0, i32 4
  %23 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %index_adjustment, align 8
  call void @gtk_adjustment_set_upper(%struct._GtkAdjustment* %23, double 0.000000e+00)
  %24 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor, align 8
  %25 = bitcast %struct._GimpColormapEditor* %24 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_widget_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call16)
  %26 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkWidget*
  %call18 = call i32 @gtk_widget_get_mapped(%struct._GtkWidget* %26)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %if.then.15
  %27 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor, align 8
  %view = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %27, i32 0, i32 1
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_view_get_type() #6
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call21)
  %30 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpView*
  call void @gimp_view_set_viewable(%struct._GimpView* %30, %struct._GimpViewable* null)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %if.then.15
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %land.lhs.true.12
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %entry
  %31 = load i8*, i8** @gimp_colormap_editor_parent_class, align 8
  %32 = bitcast i8* %31 to %struct._GTypeClass*
  %call26 = call i64 @gimp_image_editor_get_type() #6
  %call27 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %32, i64 %call26)
  %33 = bitcast %struct._GTypeClass* %call27 to %struct._GimpImageEditorClass*
  %set_image = getelementptr inbounds %struct._GimpImageEditorClass, %struct._GimpImageEditorClass* %33, i32 0, i32 1
  %34 = load void (%struct._GimpImageEditor*, %struct._GimpImage*)*, void (%struct._GimpImageEditor*, %struct._GimpImage*)** %set_image, align 8
  %35 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %image_editor.addr, align 8
  %36 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void %34(%struct._GimpImageEditor* %35, %struct._GimpImage* %36)
  %37 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor, align 8
  %col_index = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %37, i32 0, i32 2
  store i32 0, i32* %col_index, align 4
  %38 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %tobool28 = icmp ne %struct._GimpImage* %38, null
  br i1 %tobool28, label %if.then.29, label %if.end.49

if.then.29:                                       ; preds = %if.end.25
  %39 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %40 = bitcast %struct._GimpImage* %39 to i8*
  %41 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor, align 8
  %42 = bitcast %struct._GimpColormapEditor* %41 to i8*
  %call30 = call i64 @g_signal_connect_data(i8* %40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImage*, %struct._GimpColormapEditor*)* @gimp_colormap_image_mode_changed to void ()*), i8* %42, void (i8*, %struct._GClosure*)* null, i32 0)
  %43 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %44 = bitcast %struct._GimpImage* %43 to i8*
  %45 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor, align 8
  %46 = bitcast %struct._GimpColormapEditor* %45 to i8*
  %call31 = call i64 @g_signal_connect_data(i8* %44, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImage*, i32, %struct._GimpColormapEditor*)* @gimp_colormap_image_colormap_changed to void ()*), i8* %46, void (i8*, %struct._GClosure*)* null, i32 0)
  %47 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %cmp32 = icmp ne %struct._GimpImage* %47, null
  br i1 %cmp32, label %land.lhs.true.33, label %if.end.48

land.lhs.true.33:                                 ; preds = %if.then.29
  %48 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call34 = call i32 @gimp_image_base_type(%struct._GimpImage* %48)
  %cmp35 = icmp eq i32 %call34, 2
  br i1 %cmp35, label %land.lhs.true.36, label %if.end.48

land.lhs.true.36:                                 ; preds = %land.lhs.true.33
  %49 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call37 = call i8* @gimp_image_get_colormap(%struct._GimpImage* %49)
  %cmp38 = icmp ne i8* %call37, null
  br i1 %cmp38, label %if.then.39, label %if.end.48

if.then.39:                                       ; preds = %land.lhs.true.36
  %50 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor, align 8
  %view40 = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %50, i32 0, i32 1
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %view40, align 8
  %52 = bitcast %struct._GtkWidget* %51 to %struct._GTypeInstance*
  %call41 = call i64 @gimp_view_get_type() #6
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call41)
  %53 = bitcast %struct._GTypeInstance* %call42 to %struct._GimpView*
  %54 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call43 = call %struct._GimpPalette* @gimp_image_get_colormap_palette(%struct._GimpImage* %54)
  %55 = bitcast %struct._GimpPalette* %call43 to %struct._GTypeInstance*
  %call44 = call i64 @gimp_viewable_get_type() #6
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call44)
  %56 = bitcast %struct._GTypeInstance* %call45 to %struct._GimpViewable*
  call void @gimp_view_set_viewable(%struct._GimpView* %53, %struct._GimpViewable* %56)
  %57 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor, align 8
  %index_adjustment46 = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %57, i32 0, i32 4
  %58 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %index_adjustment46, align 8
  %59 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call47 = call i32 @gimp_image_get_colormap_size(%struct._GimpImage* %59)
  %sub = sub nsw i32 %call47, 1
  %conv = sitofp i32 %sub to double
  call void @gtk_adjustment_set_upper(%struct._GtkAdjustment* %58, double %conv)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.39, %land.lhs.true.36, %land.lhs.true.33, %if.then.29
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.end.25
  %60 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor, align 8
  call void @gimp_colormap_editor_update_entries(%struct._GimpColormapEditor* %60)
  ret void
}

declare %struct._GtkWidget* @gimp_editor_add_action_button(%struct._GimpEditor*, i8*, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_editor_get_type() #2

declare i32 @gimp_get_toggle_behavior_mask() #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare void @g_object_unref(i8*) #1

declare void @gtk_widget_hide(%struct._GtkWidget*) #1

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_colormap_image_mode_changed(%struct._GimpImage* %image, %struct._GimpColormapEditor* %editor) #3 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %editor.addr = alloca %struct._GimpColormapEditor*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpColormapEditor* %editor, %struct._GimpColormapEditor** %editor.addr, align 8
  %0 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %color_dialog = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %0, i32 0, i32 7
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %color_dialog, align 8
  %tobool = icmp ne %struct._GtkWidget* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %color_dialog1 = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %2, i32 0, i32 7
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %color_dialog1, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %5 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  call void @gimp_colormap_image_colormap_changed(%struct._GimpImage* %4, i32 -1, %struct._GimpColormapEditor* %5)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_colormap_image_colormap_changed(%struct._GimpImage* %image, i32 %ncol, %struct._GimpColormapEditor* %editor) #3 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %ncol.addr = alloca i32, align 4
  %editor.addr = alloca %struct._GimpColormapEditor*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %ncol, i32* %ncol.addr, align 4
  store %struct._GimpColormapEditor* %editor, %struct._GimpColormapEditor** %editor.addr, align 8
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %cmp = icmp ne %struct._GimpImage* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call = call i32 @gimp_image_base_type(%struct._GimpImage* %1)
  %cmp1 = icmp eq i32 %call, 2
  br i1 %cmp1, label %land.lhs.true.2, label %if.else

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call3 = call i8* @gimp_image_get_colormap(%struct._GimpImage* %2)
  %cmp4 = icmp ne i8* %call3, null
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.2
  %3 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %view = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %3, i32 0, i32 1
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_view_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call5)
  %6 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpView*
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call7 = call %struct._GimpPalette* @gimp_image_get_colormap_palette(%struct._GimpImage* %7)
  %8 = bitcast %struct._GimpPalette* %call7 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_viewable_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call8)
  %9 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpViewable*
  call void @gimp_view_set_viewable(%struct._GimpView* %6, %struct._GimpViewable* %9)
  %10 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %index_adjustment = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %10, i32 0, i32 4
  %11 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %index_adjustment, align 8
  %12 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call10 = call i32 @gimp_image_get_colormap_size(%struct._GimpImage* %12)
  %sub = sub nsw i32 %call10, 1
  %conv = sitofp i32 %sub to double
  call void @gtk_adjustment_set_upper(%struct._GtkAdjustment* %11, double %conv)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.2, %land.lhs.true, %entry
  %13 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %view11 = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %13, i32 0, i32 1
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %view11, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_view_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call12)
  %16 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpView*
  call void @gimp_view_set_viewable(%struct._GimpView* %16, %struct._GimpViewable* null)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %17 = load i32, i32* %ncol.addr, align 4
  %18 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %col_index = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %18, i32 0, i32 2
  %19 = load i32, i32* %col_index, align 4
  %cmp14 = icmp eq i32 %17, %19
  br i1 %cmp14, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %20 = load i32, i32* %ncol.addr, align 4
  %cmp16 = icmp eq i32 %20, -1
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %lor.lhs.false, %if.end
  %21 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  call void @gimp_colormap_editor_update_entries(%struct._GimpColormapEditor* %21)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %lor.lhs.false
  ret void
}

declare void @gtk_adjustment_set_upper(%struct._GtkAdjustment*, double) #1

declare i32 @gtk_widget_get_mapped(%struct._GtkWidget*) #1

declare void @gimp_view_set_viewable(%struct._GimpView*, %struct._GimpViewable*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_view_get_type() #2

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

declare i8* @g_type_interface_peek_parent(i8*) #1

declare i8* @g_type_default_interface_peek(i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_colormap_editor_set_context(%struct._GimpDocked* %docked, %struct._GimpContext* %context) #3 {
entry:
  %docked.addr = alloca %struct._GimpDocked*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %editor = alloca %struct._GimpColormapEditor*, align 8
  store %struct._GimpDocked* %docked, %struct._GimpDocked** %docked.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpDocked*, %struct._GimpDocked** %docked.addr, align 8
  %1 = bitcast %struct._GimpDocked* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_colormap_editor_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColormapEditor*
  store %struct._GimpColormapEditor* %2, %struct._GimpColormapEditor** %editor, align 8
  %3 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** @parent_docked_iface, align 8
  %set_context = getelementptr inbounds %struct._GimpDockedInterface, %struct._GimpDockedInterface* %3, i32 0, i32 8
  %4 = load void (%struct._GimpDocked*, %struct._GimpContext*)*, void (%struct._GimpDocked*, %struct._GimpContext*)** %set_context, align 8
  %5 = load %struct._GimpDocked*, %struct._GimpDocked** %docked.addr, align 8
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void %4(%struct._GimpDocked* %5, %struct._GimpContext* %6)
  %7 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor, align 8
  %view = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %7, i32 0, i32 1
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_view_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call2)
  %10 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpView*
  %renderer = getelementptr inbounds %struct._GimpView, %struct._GimpView* %10, i32 0, i32 3
  %11 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %12 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_view_renderer_set_context(%struct._GimpViewRenderer* %11, %struct._GimpContext* %12)
  ret void
}

declare void @gimp_view_renderer_set_context(%struct._GimpViewRenderer*, %struct._GimpContext*) #1

declare %struct._GtkWidget* @gtk_frame_new(i8*) #1

declare void @gtk_frame_set_shadow_type(%struct._GtkFrame*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #2

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_view_new_full_by_types(%struct._GimpContext*, i64, i64, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_palette_get_type() #2

declare void @gimp_view_set_expand(%struct._GimpView*, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

; Function Attrs: nounwind uwtable
define internal i32 @gimp_colormap_preview_expose(%struct._GtkWidget* %widget, %struct._GdkEventExpose* %event, %struct._GimpColormapEditor* %editor) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventExpose*, align 8
  %editor.addr = alloca %struct._GimpColormapEditor*, align 8
  %image_editor = alloca %struct._GimpImageEditor*, align 8
  %style = alloca %struct._GtkStyle*, align 8
  %cr = alloca %struct._cairo*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %y = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventExpose* %event, %struct._GdkEventExpose** %event.addr, align 8
  store %struct._GimpColormapEditor* %editor, %struct._GimpColormapEditor** %editor.addr, align 8
  %0 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpColormapEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_editor_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImageEditor*
  store %struct._GimpImageEditor* %2, %struct._GimpImageEditor** %image_editor, align 8
  %3 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %image_editor, align 8
  %image = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %3, i32 0, i32 2
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp = icmp eq %struct._GimpImage* %4, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %image_editor, align 8
  %image2 = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %5, i32 0, i32 2
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image2, align 8
  %call3 = call i32 @gimp_image_base_type(%struct._GimpImage* %6)
  %cmp4 = icmp eq i32 %call3, 2
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %window = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %7, i32 0, i32 1
  %8 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  %call5 = call %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable* %8)
  store %struct._cairo* %call5, %struct._cairo** %cr, align 8
  %9 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %10 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %region = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %10, i32 0, i32 4
  %11 = load %struct._GdkRegion*, %struct._GdkRegion** %region, align 8
  call void @gdk_cairo_region(%struct._cairo* %9, %struct._GdkRegion* %11)
  %12 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_clip(%struct._cairo* %12)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call6 = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %13)
  store %struct._GtkStyle* %call6, %struct._GtkStyle** %style, align 8
  %14 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call7 = call i32 @gtk_widget_get_state(%struct._GtkWidget* %15)
  %idxprom = zext i32 %call7 to i64
  %16 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %fg = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %16, i32 0, i32 1
  %arrayidx = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %fg, i32 0, i64 %idxprom
  call void @gdk_cairo_set_source_color(%struct._cairo* %14, %struct._GdkColor* %arrayidx)
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %17, %struct._GdkRectangle* %allocation)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call8 = call i32 @gtk_widget_get_has_window(%struct._GtkWidget* %18)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.end.12, label %if.then.9

if.then.9:                                        ; preds = %if.end
  %19 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %x = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 0
  %20 = load i32, i32* %x, align 4
  %conv = sitofp i32 %20 to double
  %y10 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 1
  %21 = load i32, i32* %y10, align 4
  %conv11 = sitofp i32 %21 to double
  call void @cairo_translate(%struct._cairo* %19, double %conv, double %conv11)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %if.end
  %22 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %layout = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %22, i32 0, i32 3
  %23 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  %tobool13 = icmp ne %struct._PangoLayout* %23, null
  br i1 %tobool13, label %if.end.17, label %if.then.14

if.then.14:                                       ; preds = %if.end.12
  %24 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %view = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %24, i32 0, i32 1
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %call15 = call %struct._PangoLayout* @gimp_colormap_editor_create_layout(%struct._GtkWidget* %25)
  %26 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %layout16 = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %26, i32 0, i32 3
  store %struct._PangoLayout* %call15, %struct._PangoLayout** %layout16, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %if.end.12
  %27 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %layout18 = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %27, i32 0, i32 3
  %28 = load %struct._PangoLayout*, %struct._PangoLayout** %layout18, align 8
  %width19 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %29 = load i32, i32* %width19, align 4
  %sub = sub nsw i32 %29, 12
  %mul = mul nsw i32 1024, %sub
  call void @pango_layout_set_width(%struct._PangoLayout* %28, i32 %mul)
  %30 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %layout20 = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %30, i32 0, i32 3
  %31 = load %struct._PangoLayout*, %struct._PangoLayout** %layout20, align 8
  call void @pango_layout_get_pixel_size(%struct._PangoLayout* %31, i32* %width, i32* %height)
  %height21 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %32 = load i32, i32* %height21, align 4
  %33 = load i32, i32* %height, align 4
  %sub22 = sub nsw i32 %32, %33
  %div = sdiv i32 %sub22, 2
  store i32 %div, i32* %y, align 4
  %34 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %35 = load i32, i32* %y, align 4
  %cmp23 = icmp sgt i32 %35, 0
  br i1 %cmp23, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.17
  %36 = load i32, i32* %y, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %36, %cond.true ], [ 0, %cond.false ]
  %conv25 = sitofp i32 %cond to double
  call void @cairo_move_to(%struct._cairo* %34, double 6.000000e+00, double %conv25)
  %37 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %38 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %layout26 = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %38, i32 0, i32 3
  %39 = load %struct._PangoLayout*, %struct._PangoLayout** %layout26, align 8
  call void @pango_cairo_show_layout(%struct._cairo* %37, %struct._PangoLayout* %39)
  %40 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %40)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %41 = load i32, i32* %retval
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define internal void @gimp_colormap_editor_entry_clicked(%struct._GimpPaletteView* %view, %struct._GimpPaletteEntry* %entry1, i32 %state, %struct._GimpColormapEditor* %editor) #3 {
entry:
  %view.addr = alloca %struct._GimpPaletteView*, align 8
  %entry.addr = alloca %struct._GimpPaletteEntry*, align 8
  %state.addr = alloca i32, align 4
  %editor.addr = alloca %struct._GimpColormapEditor*, align 8
  %image_editor = alloca %struct._GimpImageEditor*, align 8
  store %struct._GimpPaletteView* %view, %struct._GimpPaletteView** %view.addr, align 8
  store %struct._GimpPaletteEntry* %entry1, %struct._GimpPaletteEntry** %entry.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpColormapEditor* %editor, %struct._GimpColormapEditor** %editor.addr, align 8
  %0 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpColormapEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_editor_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpImageEditor*
  store %struct._GimpImageEditor* %2, %struct._GimpImageEditor** %image_editor, align 8
  %3 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %4 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry.addr, align 8
  %position = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %4, i32 0, i32 2
  %5 = load i32, i32* %position, align 4
  %call3 = call i32 @gimp_colormap_editor_set_index(%struct._GimpColormapEditor* %3, i32 %5, %struct._GimpRGB* null)
  %6 = load i32, i32* %state.addr, align 4
  %call4 = call i32 @gimp_get_toggle_behavior_mask()
  %and = and i32 %6, %call4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %image_editor, align 8
  %context = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %7, i32 0, i32 1
  %8 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %9 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry.addr, align 8
  %color = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %9, i32 0, i32 0
  call void @gimp_context_set_background(%struct._GimpContext* %8, %struct._GimpRGB* %color)
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %image_editor, align 8
  %context5 = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %10, i32 0, i32 1
  %11 = load %struct._GimpContext*, %struct._GimpContext** %context5, align 8
  %12 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry.addr, align 8
  %color6 = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %12, i32 0, i32 0
  call void @gimp_context_set_foreground(%struct._GimpContext* %11, %struct._GimpRGB* %color6)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_colormap_editor_entry_selected(%struct._GimpPaletteView* %view, %struct._GimpPaletteEntry* %entry1, %struct._GimpColormapEditor* %editor) #3 {
entry:
  %view.addr = alloca %struct._GimpPaletteView*, align 8
  %entry.addr = alloca %struct._GimpPaletteEntry*, align 8
  %editor.addr = alloca %struct._GimpColormapEditor*, align 8
  %index = alloca i32, align 4
  store %struct._GimpPaletteView* %view, %struct._GimpPaletteView** %view.addr, align 8
  store %struct._GimpPaletteEntry* %entry1, %struct._GimpPaletteEntry** %entry.addr, align 8
  store %struct._GimpColormapEditor* %editor, %struct._GimpColormapEditor** %editor.addr, align 8
  %0 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry.addr, align 8
  %tobool = icmp ne %struct._GimpPaletteEntry* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry.addr, align 8
  %position = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %1, i32 0, i32 2
  %2 = load i32, i32* %position, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %index, align 4
  %3 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %4 = load i32, i32* %index, align 4
  %call = call i32 @gimp_colormap_editor_set_index(%struct._GimpColormapEditor* %3, i32 %4, %struct._GimpRGB* null)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_colormap_editor_entry_activated(%struct._GimpPaletteView* %view, %struct._GimpPaletteEntry* %entry1, %struct._GimpColormapEditor* %editor) #3 {
entry:
  %view.addr = alloca %struct._GimpPaletteView*, align 8
  %entry.addr = alloca %struct._GimpPaletteEntry*, align 8
  %editor.addr = alloca %struct._GimpColormapEditor*, align 8
  store %struct._GimpPaletteView* %view, %struct._GimpPaletteView** %view.addr, align 8
  store %struct._GimpPaletteEntry* %entry1, %struct._GimpPaletteEntry** %entry.addr, align 8
  store %struct._GimpColormapEditor* %editor, %struct._GimpColormapEditor** %editor.addr, align 8
  %0 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %1 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry.addr, align 8
  %position = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %1, i32 0, i32 2
  %2 = load i32, i32* %position, align 4
  %call = call i32 @gimp_colormap_editor_set_index(%struct._GimpColormapEditor* %0, i32 %2, %struct._GimpRGB* null)
  %3 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %4 = bitcast %struct._GimpColormapEditor* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_editor_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpEditor*
  %call4 = call %struct._GimpUIManager* @gimp_editor_get_ui_manager(%struct._GimpEditor* %5)
  %call5 = call i32 @gimp_ui_manager_activate_action(%struct._GimpUIManager* %call4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_colormap_editor_entry_context(%struct._GimpPaletteView* %view, %struct._GimpPaletteEntry* %entry1, %struct._GimpColormapEditor* %editor) #3 {
entry:
  %view.addr = alloca %struct._GimpPaletteView*, align 8
  %entry.addr = alloca %struct._GimpPaletteEntry*, align 8
  %editor.addr = alloca %struct._GimpColormapEditor*, align 8
  store %struct._GimpPaletteView* %view, %struct._GimpPaletteView** %view.addr, align 8
  store %struct._GimpPaletteEntry* %entry1, %struct._GimpPaletteEntry** %entry.addr, align 8
  store %struct._GimpColormapEditor* %editor, %struct._GimpColormapEditor** %editor.addr, align 8
  %0 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %1 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry.addr, align 8
  %position = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %1, i32 0, i32 2
  %2 = load i32, i32* %position, align 4
  %call = call i32 @gimp_colormap_editor_set_index(%struct._GimpColormapEditor* %0, i32 %2, %struct._GimpRGB* null)
  %3 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %4 = bitcast %struct._GimpColormapEditor* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_editor_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpEditor*
  %call4 = call i32 @gimp_editor_popup_menu(%struct._GimpEditor* %5, void (%struct._GtkMenu*, i32*, i32*, i8*)* null, i8* null)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_colormap_editor_color_dropped(%struct._GimpPaletteView* %view, %struct._GimpPaletteEntry* %entry1, %struct._GimpRGB* %color, %struct._GimpColormapEditor* %editor) #3 {
entry:
  %view.addr = alloca %struct._GimpPaletteView*, align 8
  %entry.addr = alloca %struct._GimpPaletteEntry*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %editor.addr = alloca %struct._GimpColormapEditor*, align 8
  store %struct._GimpPaletteView* %view, %struct._GimpPaletteView** %view.addr, align 8
  store %struct._GimpPaletteEntry* %entry1, %struct._GimpPaletteEntry** %entry.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store %struct._GimpColormapEditor* %editor, %struct._GimpColormapEditor** %editor.addr, align 8
  ret void
}

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacing(%struct._GtkTable*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #2

declare void @gtk_table_set_row_spacing(%struct._GtkTable*, i32, i32) #1

declare void @gtk_box_pack_end(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject**, double, double, double, double, double, double, double, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_adjustment_get_type() #2

declare %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable*, i32, i32, i8*, float, float, %struct._GtkWidget*, i32, i32) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

; Function Attrs: nounwind uwtable
define internal void @gimp_colormap_adjustment_changed(%struct._GtkAdjustment* %adjustment, %struct._GimpColormapEditor* %editor) #3 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %editor.addr = alloca %struct._GimpColormapEditor*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %index = alloca i32, align 4
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store %struct._GimpColormapEditor* %editor, %struct._GimpColormapEditor** %editor.addr, align 8
  %0 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpColormapEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_editor_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImageEditor*
  %image2 = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %2, i32 0, i32 2
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image2, align 8
  store %struct._GimpImage* %3, %struct._GimpImage** %image, align 8
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp = icmp ne %struct._GimpImage* %4, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call3 = call i32 @gimp_image_base_type(%struct._GimpImage* %5)
  %cmp4 = icmp eq i32 %call3, 2
  br i1 %cmp4, label %land.lhs.true.5, label %if.end

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call6 = call i8* @gimp_image_get_colormap(%struct._GimpImage* %6)
  %cmp7 = icmp ne i8* %call6, null
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.5
  %7 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call8 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %7)
  %add = fadd double %call8, 5.000000e-01
  %conv = fptosi double %add to i32
  store i32 %conv, i32* %index, align 4
  %8 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %9 = load i32, i32* %index, align 4
  %call9 = call i32 @gimp_colormap_editor_set_index(%struct._GimpColormapEditor* %8, i32 %9, %struct._GimpRGB* null)
  %10 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  call void @gimp_colormap_editor_update_entries(%struct._GimpColormapEditor* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.5, %land.lhs.true, %entry
  ret void
}

declare %struct._GtkWidget* @gimp_color_hex_entry_new() #1

declare void @gtk_entry_set_width_chars(%struct._GtkEntry*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_colormap_hex_entry_changed(%struct._GimpColorHexEntry* %entry1, %struct._GimpColormapEditor* %editor) #3 {
entry:
  %entry.addr = alloca %struct._GimpColorHexEntry*, align 8
  %editor.addr = alloca %struct._GimpColormapEditor*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GimpColorHexEntry* %entry1, %struct._GimpColorHexEntry** %entry.addr, align 8
  store %struct._GimpColormapEditor* %editor, %struct._GimpColormapEditor** %editor.addr, align 8
  %0 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpColormapEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_editor_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpImageEditor*
  %image3 = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %2, i32 0, i32 2
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image3, align 8
  store %struct._GimpImage* %3, %struct._GimpImage** %image, align 8
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpColorHexEntry*, %struct._GimpColorHexEntry** %entry.addr, align 8
  call void @gimp_color_hex_entry_get_color(%struct._GimpColorHexEntry* %5, %struct._GimpRGB* %color)
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %7 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %col_index = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %7, i32 0, i32 2
  %8 = load i32, i32* %col_index, align 4
  call void @gimp_image_set_colormap_entry(%struct._GimpImage* %6, i32 %8, %struct._GimpRGB* %color, i32 1)
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable*) #1

declare void @gdk_cairo_region(%struct._cairo*, %struct._GdkRegion*) #1

declare void @cairo_clip(%struct._cairo*) #1

declare %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget*) #1

declare void @gdk_cairo_set_source_color(%struct._cairo*, %struct._GdkColor*) #1

declare i32 @gtk_widget_get_state(%struct._GtkWidget*) #1

declare void @gtk_widget_get_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #1

declare i32 @gtk_widget_get_has_window(%struct._GtkWidget*) #1

declare void @cairo_translate(%struct._cairo*, double, double) #1

; Function Attrs: nounwind uwtable
define internal %struct._PangoLayout* @gimp_colormap_editor_create_layout(%struct._GtkWidget* %widget) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %layout = alloca %struct._PangoLayout*, align 8
  %attrs = alloca %struct._PangoAttrList*, align 8
  %attr = alloca %struct._PangoAttribute*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.25, i32 0, i32 0)) #7
  %call1 = call %struct._PangoLayout* @gtk_widget_create_pango_layout(%struct._GtkWidget* %0, i8* %call)
  store %struct._PangoLayout* %call1, %struct._PangoLayout** %layout, align 8
  %1 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  call void @pango_layout_set_alignment(%struct._PangoLayout* %1, i32 1)
  %call2 = call %struct._PangoAttrList* @pango_attr_list_new()
  store %struct._PangoAttrList* %call2, %struct._PangoAttrList** %attrs, align 8
  %call3 = call %struct._PangoAttribute* @pango_attr_style_new(i32 2)
  store %struct._PangoAttribute* %call3, %struct._PangoAttribute** %attr, align 8
  %2 = load %struct._PangoAttribute*, %struct._PangoAttribute** %attr, align 8
  %start_index = getelementptr inbounds %struct._PangoAttribute, %struct._PangoAttribute* %2, i32 0, i32 1
  store i32 0, i32* %start_index, align 4
  %3 = load %struct._PangoAttribute*, %struct._PangoAttribute** %attr, align 8
  %end_index = getelementptr inbounds %struct._PangoAttribute, %struct._PangoAttribute* %3, i32 0, i32 2
  store i32 -1, i32* %end_index, align 4
  %4 = load %struct._PangoAttrList*, %struct._PangoAttrList** %attrs, align 8
  %5 = load %struct._PangoAttribute*, %struct._PangoAttribute** %attr, align 8
  call void @pango_attr_list_insert(%struct._PangoAttrList* %4, %struct._PangoAttribute* %5)
  %6 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  %7 = load %struct._PangoAttrList*, %struct._PangoAttrList** %attrs, align 8
  call void @pango_layout_set_attributes(%struct._PangoLayout* %6, %struct._PangoAttrList* %7)
  %8 = load %struct._PangoAttrList*, %struct._PangoAttrList** %attrs, align 8
  call void @pango_attr_list_unref(%struct._PangoAttrList* %8)
  %9 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  ret %struct._PangoLayout* %9
}

declare void @pango_layout_set_width(%struct._PangoLayout*, i32) #1

declare void @pango_layout_get_pixel_size(%struct._PangoLayout*, i32*, i32*) #1

declare void @cairo_move_to(%struct._cairo*, double, double) #1

declare void @pango_cairo_show_layout(%struct._cairo*, %struct._PangoLayout*) #1

declare void @cairo_destroy(%struct._cairo*) #1

declare %struct._PangoLayout* @gtk_widget_create_pango_layout(%struct._GtkWidget*, i8*) #1

declare void @pango_layout_set_alignment(%struct._PangoLayout*, i32) #1

declare %struct._PangoAttrList* @pango_attr_list_new() #1

declare %struct._PangoAttribute* @pango_attr_style_new(i32) #1

declare void @pango_attr_list_insert(%struct._PangoAttrList*, %struct._PangoAttribute*) #1

declare void @pango_layout_set_attributes(%struct._PangoLayout*, %struct._PangoAttrList*) #1

declare void @pango_attr_list_unref(%struct._PangoAttrList*) #1

declare void @gimp_context_set_background(%struct._GimpContext*, %struct._GimpRGB*) #1

declare void @gimp_context_set_foreground(%struct._GimpContext*, %struct._GimpRGB*) #1

declare i32 @gimp_ui_manager_activate_action(%struct._GimpUIManager*, i8*, i8*) #1

declare %struct._GimpUIManager* @gimp_editor_get_ui_manager(%struct._GimpEditor*) #1

declare i32 @gimp_editor_popup_menu(%struct._GimpEditor*, void (%struct._GtkMenu*, i32*, i32*, i8*)*, i8*) #1

declare double @gtk_adjustment_get_value(%struct._GtkAdjustment*) #1

declare void @gimp_color_hex_entry_get_color(%struct._GimpColorHexEntry*, %struct._GimpRGB*) #1

declare void @gimp_image_set_colormap_entry(%struct._GimpImage*, i32, %struct._GimpRGB*, i32) #1

declare void @gimp_image_flush(%struct._GimpImage*) #1

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #1

declare void @gtk_entry_set_text(%struct._GtkEntry*, i8*) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare void @g_free(i8*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
