; ModuleID = './app/widgets/gimppaletteeditor.bc'
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
%struct._GimpDataFactory = type { %struct._GimpObject, %struct._GimpDataFactoryPriv* }
%struct._GimpDataFactoryPriv = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpImage = type opaque
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
%struct._GimpPaletteEditorClass = type { %struct._GimpDataEditorClass }
%struct._GimpDataEditorClass = type { %struct._GimpEditorClass, void (%struct._GimpDataEditor*, %struct._GimpData*)*, i8* }
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
%struct._GimpDataEditor = type { %struct._GimpEditor, %struct._GimpDataFactory*, %struct._GimpContext*, i32, %struct._GimpData*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GimpEditor = type { %struct._GtkBox, %struct._GimpEditorPrivate* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpEditorPrivate = type opaque
%struct._GimpPaletteEditor = type { %struct._GimpDataEditor, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GtkWidget*, %struct._GimpPaletteEntry*, float, i32, i32, i32 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GimpPaletteEntry = type { %struct._GimpRGB, i8*, i32 }
%struct._GtkScrolledWindow = type { %struct._GtkBin, %struct._GtkWidget*, %struct._GtkWidget*, i16, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GimpView = type { %struct._GtkWidget, %struct._GdkDrawable*, %struct._GimpViewable*, %struct._GimpViewRenderer*, i8, i32 }
%struct._GimpViewRenderer = type { %struct._GObject, %struct._GimpContext*, i64, %struct._GimpViewable*, i32, i32, i32, i8, i32, %struct._GimpRGB, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GdkPixbuf*, i8*, i32, i32, i32 }
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpViewRendererPalette = type { %struct._GimpViewRenderer, i32, i32, i32, i32, i32, i32 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque
%struct._GtkEditable = type opaque
%struct._GimpMenuFactory = type opaque
%struct._GimpPaletteView = type { %struct._GimpView, %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry* }
%struct._GimpSessionInfoAux = type { i8*, i8* }
%struct._GtkMenu = type { %struct._GtkMenuShell, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAccelGroup*, i8*, void (%struct._GtkMenu*, i32*, i32*, i32*, i8*)*, i8*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GdkDrawable*, %struct._GdkDrawable*, i32, i32, i32, i32, %struct._GdkRegion*, i32, i8 }
%struct._GtkMenuShell = type { %struct._GtkContainer, %struct._GList*, %struct._GtkWidget*, %struct._GtkWidget*, i32, i32, i8 }
%struct._GtkAccelGroup = type { %struct._GObject, i32, i32, %struct._GSList*, i32, %struct._GtkAccelGroupEntry* }
%struct._GtkAccelGroupEntry = type { %struct._GtkAccelKey, %struct._GClosure*, i32 }
%struct._GtkAccelKey = type { i32, i32, i16 }

@gimp_palette_editor_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"GimpPaletteEditor\00", align 1
@gimp_palette_editor_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpDockedInterface*)* @gimp_palette_editor_docked_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_palette_editor_new = private unnamed_addr constant [24 x i8] c"gimp_palette_editor_new\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"menu-factory\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"menu-identifier\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"<PaletteEditor>\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"ui-path\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"/palette-editor-popup\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"data-factory\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@__func__.gimp_palette_editor_pick_color = private unnamed_addr constant [31 x i8] c"gimp_palette_editor_pick_color\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"GIMP_IS_PALETTE_EDITOR (editor)\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"color != NULL\00", align 1
@__func__.gimp_palette_editor_zoom = private unnamed_addr constant [25 x i8] c"gimp_palette_editor_zoom\00", align 1
@__func__.gimp_palette_editor_get_index = private unnamed_addr constant [30 x i8] c"gimp_palette_editor_get_index\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"search != NULL\00", align 1
@__func__.gimp_palette_editor_set_index = private unnamed_addr constant [30 x i8] c"gimp_palette_editor_set_index\00", align 1
@__func__.gimp_palette_editor_max_index = private unnamed_addr constant [30 x i8] c"gimp_palette_editor_max_index\00", align 1
@gimp_palette_editor_parent_class = internal global i8* null, align 8
@GimpPaletteEditor_private_offset = internal global i32 0, align 4
@.str.14 = private unnamed_addr constant [15 x i8] c"Palette Editor\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"palette-editor\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"palette-editor-edit-color\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"palette-editor-new-color-fg\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"palette-editor-new-color-bg\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"palette-editor-delete-color\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"palette-editor-zoom-out\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"palette-editor-zoom-in\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"palette-editor-zoom-all\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"invalidate-preview\00", align 1
@parent_docked_iface = internal global %struct._GimpDockedInterface* null, align 8
@.str.24 = private unnamed_addr constant [12 x i8] c"zoom-factor\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"%.2f\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"size-allocate\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"entry-clicked\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"entry-selected\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"entry-activated\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"entry-context\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"color-dropped\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"Undefined\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"Columns:\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_palette_editor_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_palette_editor_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_palette_editor_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_data_editor_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 840, void (i8*, i8*)* bitcast (void (i8*)* @gimp_palette_editor_class_intern_init to void (i8*, i8*)*), i32 264, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpPaletteEditor*)* @gimp_palette_editor_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_docked_interface_get_type() #7
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_palette_editor_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_palette_editor_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_palette_editor_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_data_editor_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_palette_editor_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_palette_editor_parent_class, align 8
  %1 = load i32, i32* @GimpPaletteEditor_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpPaletteEditor_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpPaletteEditorClass*
  call void @gimp_palette_editor_class_init(%struct._GimpPaletteEditorClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_palette_editor_init(%struct._GimpPaletteEditor* %editor) #3 {
entry:
  %editor.addr = alloca %struct._GimpPaletteEditor*, align 8
  %data_editor = alloca %struct._GimpDataEditor*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %spinbutton = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  store %struct._GimpPaletteEditor* %editor, %struct._GimpPaletteEditor** %editor.addr, align 8
  %0 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpPaletteEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDataEditor*
  store %struct._GimpDataEditor* %2, %struct._GimpDataEditor** %data_editor, align 8
  %3 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %zoom_factor = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %3, i32 0, i32 6
  store float 1.000000e+00, float* %zoom_factor, align 4
  %4 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %col_width = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %4, i32 0, i32 7
  store i32 0, i32* %col_width, align 4
  %5 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %last_width = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %5, i32 0, i32 8
  store i32 0, i32* %last_width, align 4
  %6 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %columns = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %6, i32 0, i32 9
  store i32 16, i32* %columns, align 4
  %call2 = call %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment* null, %struct._GtkAdjustment* null)
  %7 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %view = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %7, i32 0, i32 7
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %view, align 8
  %8 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %view3 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %8, i32 0, i32 7
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %view3, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %9, i32 -1, i32 122)
  %10 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %view4 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %10, i32 0, i32 7
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %view4, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_scrolled_window_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call5)
  %13 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow* %13, i32 1, i32 1)
  %14 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %15 = bitcast %struct._GimpPaletteEditor* %14 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_box_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call7)
  %16 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkBox*
  %17 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %view9 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %17, i32 0, i32 7
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %view9, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %16, %struct._GtkWidget* %18, i32 1, i32 1, i32 0)
  %19 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %view10 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %19, i32 0, i32 7
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %view10, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %20)
  %call11 = call i64 @gimp_palette_view_get_type() #7
  %call12 = call i64 @gimp_palette_get_type() #7
  %call13 = call %struct._GtkWidget* @gimp_view_new_full_by_types(%struct._GimpContext* null, i64 %call11, i64 %call12, i32 209, i32 122, i32 0, i32 0, i32 1, i32 0)
  %21 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %view14 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %21, i32 0, i32 1
  store %struct._GtkWidget* %call13, %struct._GtkWidget** %view14, align 8
  %22 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %view15 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %22, i32 0, i32 1
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %view15, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_view_get_type() #7
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call16)
  %25 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpView*
  %renderer = getelementptr inbounds %struct._GimpView, %struct._GimpView* %25, i32 0, i32 3
  %26 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %27 = bitcast %struct._GimpViewRenderer* %26 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_view_renderer_palette_get_type() #7
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call18)
  %28 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpViewRendererPalette*
  call void @gimp_view_renderer_palette_set_cell_size(%struct._GimpViewRendererPalette* %28, i32 -1)
  %29 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %view20 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %29, i32 0, i32 1
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %view20, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_view_get_type() #7
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call21)
  %32 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpView*
  %renderer23 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %32, i32 0, i32 3
  %33 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer23, align 8
  %34 = bitcast %struct._GimpViewRenderer* %33 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_view_renderer_palette_get_type() #7
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call24)
  %35 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpViewRendererPalette*
  call void @gimp_view_renderer_palette_set_draw_grid(%struct._GimpViewRendererPalette* %35, i32 1)
  %36 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %view26 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %36, i32 0, i32 7
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %view26, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_scrolled_window_get_type() #7
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call27)
  %39 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkScrolledWindow*
  %40 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %view29 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %40, i32 0, i32 1
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %view29, align 8
  call void @gtk_scrolled_window_add_with_viewport(%struct._GtkScrolledWindow* %39, %struct._GtkWidget* %41)
  %42 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %view30 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %42, i32 0, i32 1
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %view30, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %43)
  %44 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %view31 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %44, i32 0, i32 1
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %view31, align 8
  %call32 = call %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget* %45)
  %46 = bitcast %struct._GtkWidget* %call32 to i8*
  %47 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %48 = bitcast %struct._GimpPaletteEditor* %47 to i8*
  %call33 = call i64 @g_signal_connect_data(i8* %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GdkRectangle*, %struct._GimpPaletteEditor*)* @palette_editor_viewport_size_allocate to void ()*), i8* %48, void (i8*, %struct._GClosure*)* null, i32 0)
  %49 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %view34 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %49, i32 0, i32 1
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %view34, align 8
  %51 = bitcast %struct._GtkWidget* %50 to i8*
  %52 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %53 = bitcast %struct._GimpPaletteEditor* %52 to i8*
  %call35 = call i64 @g_signal_connect_data(i8* %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPaletteView*, %struct._GimpPaletteEntry*, i32, %struct._GimpPaletteEditor*)* @palette_editor_entry_clicked to void ()*), i8* %53, void (i8*, %struct._GClosure*)* null, i32 0)
  %54 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %view36 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %54, i32 0, i32 1
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %view36, align 8
  %56 = bitcast %struct._GtkWidget* %55 to i8*
  %57 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %58 = bitcast %struct._GimpPaletteEditor* %57 to i8*
  %call37 = call i64 @g_signal_connect_data(i8* %56, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPaletteView*, %struct._GimpPaletteEntry*, %struct._GimpPaletteEditor*)* @palette_editor_entry_selected to void ()*), i8* %58, void (i8*, %struct._GClosure*)* null, i32 0)
  %59 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %view38 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %59, i32 0, i32 1
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %view38, align 8
  %61 = bitcast %struct._GtkWidget* %60 to i8*
  %62 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %63 = bitcast %struct._GimpPaletteEditor* %62 to i8*
  %call39 = call i64 @g_signal_connect_data(i8* %61, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPaletteView*, %struct._GimpPaletteEntry*, %struct._GimpPaletteEditor*)* @palette_editor_entry_activated to void ()*), i8* %63, void (i8*, %struct._GClosure*)* null, i32 0)
  %64 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %view40 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %64, i32 0, i32 1
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %view40, align 8
  %66 = bitcast %struct._GtkWidget* %65 to i8*
  %67 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %68 = bitcast %struct._GimpPaletteEditor* %67 to i8*
  %call41 = call i64 @g_signal_connect_data(i8* %66, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPaletteView*, %struct._GimpPaletteEntry*, %struct._GimpPaletteEditor*)* @palette_editor_entry_context to void ()*), i8* %68, void (i8*, %struct._GClosure*)* null, i32 0)
  %69 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %view42 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %69, i32 0, i32 1
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %view42, align 8
  %71 = bitcast %struct._GtkWidget* %70 to i8*
  %72 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %73 = bitcast %struct._GimpPaletteEditor* %72 to i8*
  %call43 = call i64 @g_signal_connect_data(i8* %71, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPaletteView*, %struct._GimpPaletteEntry*, %struct._GimpRGB*, %struct._GimpPaletteEditor*)* @palette_editor_color_dropped to void ()*), i8* %73, void (i8*, %struct._GClosure*)* null, i32 0)
  %74 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %view44 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %74, i32 0, i32 1
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %view44, align 8
  %call45 = call i64 @gimp_palette_get_type() #7
  %76 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %77 = bitcast %struct._GimpPaletteEditor* %76 to i8*
  %call46 = call i32 @gimp_dnd_viewable_dest_add(%struct._GtkWidget* %75, i64 %call45, void (%struct._GtkWidget*, i32, i32, %struct._GimpViewable*, i8*)* @palette_editor_drop_palette, i8* %77)
  %78 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %view47 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %78, i32 0, i32 1
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %view47, align 8
  %call48 = call %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget* %79)
  %call49 = call i64 @gimp_palette_get_type() #7
  %80 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %81 = bitcast %struct._GimpPaletteEditor* %80 to i8*
  %call50 = call i32 @gimp_dnd_viewable_dest_add(%struct._GtkWidget* %call48, i64 %call49, void (%struct._GtkWidget*, i32, i32, %struct._GimpViewable*, i8*)* @palette_editor_drop_palette, i8* %81)
  %82 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %view51 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %82, i32 0, i32 1
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %view51, align 8
  %call52 = call %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget* %83)
  %84 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %85 = bitcast %struct._GimpPaletteEditor* %84 to i8*
  call void @gimp_dnd_color_dest_add(%struct._GtkWidget* %call52, void (%struct._GtkWidget*, i32, i32, %struct._GimpRGB*, i8*)* @palette_editor_drop_color, i8* %85)
  %call53 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 2)
  store %struct._GtkWidget* %call53, %struct._GtkWidget** %hbox, align 8
  %86 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %87 = bitcast %struct._GimpPaletteEditor* %86 to %struct._GTypeInstance*
  %call54 = call i64 @gtk_box_get_type() #7
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %87, i64 %call54)
  %88 = bitcast %struct._GTypeInstance* %call55 to %struct._GtkBox*
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %88, %struct._GtkWidget* %89, i32 0, i32 0, i32 0)
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %90)
  %call56 = call %struct._GtkWidget* @gtk_entry_new()
  %91 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %color_name = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %91, i32 0, i32 2
  store %struct._GtkWidget* %call56, %struct._GtkWidget** %color_name, align 8
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %93 = bitcast %struct._GtkWidget* %92 to %struct._GTypeInstance*
  %call57 = call i64 @gtk_box_get_type() #7
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %93, i64 %call57)
  %94 = bitcast %struct._GTypeInstance* %call58 to %struct._GtkBox*
  %95 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %color_name59 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %95, i32 0, i32 2
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %color_name59, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %94, %struct._GtkWidget* %96, i32 1, i32 1, i32 0)
  %97 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %color_name60 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %97, i32 0, i32 2
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** %color_name60, align 8
  %99 = bitcast %struct._GtkWidget* %98 to %struct._GTypeInstance*
  %call61 = call i64 @gtk_entry_get_type() #7
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %99, i64 %call61)
  %100 = bitcast %struct._GTypeInstance* %call62 to %struct._GtkEntry*
  %call63 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0)) #5
  call void @gtk_entry_set_text(%struct._GtkEntry* %100, i8* %call63)
  %101 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %color_name64 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %101, i32 0, i32 2
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %color_name64, align 8
  %103 = bitcast %struct._GtkWidget* %102 to %struct._GTypeInstance*
  %call65 = call i64 @gtk_editable_get_type() #7
  %call66 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %103, i64 %call65)
  %104 = bitcast %struct._GTypeInstance* %call66 to %struct._GtkEditable*
  call void @gtk_editable_set_editable(%struct._GtkEditable* %104, i32 0)
  %105 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %color_name67 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %105, i32 0, i32 2
  %106 = load %struct._GtkWidget*, %struct._GtkWidget** %color_name67, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %106)
  %107 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %color_name68 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %107, i32 0, i32 2
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %color_name68, align 8
  %109 = bitcast %struct._GtkWidget* %108 to i8*
  %110 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %111 = bitcast %struct._GimpPaletteEditor* %110 to i8*
  %call69 = call i64 @g_signal_connect_data(i8* %109, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpPaletteEditor*)* @palette_editor_color_name_changed to void ()*), i8* %111, void (i8*, %struct._GClosure*)* null, i32 0)
  %call70 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0)) #5
  %call71 = call %struct._GtkWidget* @gtk_label_new(i8* %call70)
  store %struct._GtkWidget* %call71, %struct._GtkWidget** %label, align 8
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %113 = bitcast %struct._GtkWidget* %112 to %struct._GTypeInstance*
  %call72 = call i64 @gtk_box_get_type() #7
  %call73 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %113, i64 %call72)
  %114 = bitcast %struct._GTypeInstance* %call73 to %struct._GtkBox*
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %114, %struct._GtkWidget* %115, i32 0, i32 0, i32 0)
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %116)
  %call74 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double 0.000000e+00, double 0.000000e+00, double 6.400000e+01, double 1.000000e+00, double 4.000000e+00, double 0.000000e+00, double 1.000000e+00, i32 0)
  store %struct._GtkWidget* %call74, %struct._GtkWidget** %spinbutton, align 8
  %117 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %118 = bitcast %struct._GtkObject* %117 to %struct._GTypeInstance*
  %call75 = call i64 @gtk_adjustment_get_type() #7
  %call76 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %118, i64 %call75)
  %119 = bitcast %struct._GTypeInstance* %call76 to %struct._GtkAdjustment*
  %120 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %columns_data = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %120, i32 0, i32 3
  store %struct._GtkAdjustment* %119, %struct._GtkAdjustment** %columns_data, align 8
  %121 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %122 = bitcast %struct._GtkWidget* %121 to %struct._GTypeInstance*
  %call77 = call i64 @gtk_box_get_type() #7
  %call78 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %122, i64 %call77)
  %123 = bitcast %struct._GTypeInstance* %call78 to %struct._GtkBox*
  %124 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %123, %struct._GtkWidget* %124, i32 0, i32 0, i32 0)
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %125)
  %126 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %columns_data79 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %126, i32 0, i32 3
  %127 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %columns_data79, align 8
  %128 = bitcast %struct._GtkAdjustment* %127 to i8*
  %129 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %130 = bitcast %struct._GimpPaletteEditor* %129 to i8*
  %call80 = call i64 @g_signal_connect_data(i8* %128, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._GimpPaletteEditor*)* @palette_editor_columns_changed to void ()*), i8* %130, void (i8*, %struct._GClosure*)* null, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_palette_editor_docked_iface_init(%struct._GimpDockedInterface* %iface) #3 {
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
  %set_context = getelementptr inbounds %struct._GimpDockedInterface, %struct._GimpDockedInterface* %5, i32 0, i32 8
  store void (%struct._GimpDocked*, %struct._GimpContext*)* @gimp_palette_editor_set_context, void (%struct._GimpDocked*, %struct._GimpContext*)** %set_context, align 8
  %6 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** %iface.addr, align 8
  %set_aux_info = getelementptr inbounds %struct._GimpDockedInterface, %struct._GimpDockedInterface* %6, i32 0, i32 2
  store void (%struct._GimpDocked*, %struct._GList*)* @gimp_palette_editor_set_aux_info, void (%struct._GimpDocked*, %struct._GList*)** %set_aux_info, align 8
  %7 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** %iface.addr, align 8
  %get_aux_info = getelementptr inbounds %struct._GimpDockedInterface, %struct._GimpDockedInterface* %7, i32 0, i32 3
  store %struct._GList* (%struct._GimpDocked*)* @gimp_palette_editor_get_aux_info, %struct._GList* (%struct._GimpDocked*)** %get_aux_info, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_docked_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_palette_editor_new(%struct._GimpContext* %context, %struct._GimpMenuFactory* %menu_factory) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %menu_factory.addr = alloca %struct._GimpMenuFactory*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpMenuFactory* %menu_factory, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_palette_editor_new, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_palette_editor_get_type() #7
  %13 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %14, i32 0, i32 1
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %palette_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %15, i32 0, i32 41
  %16 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %palette_factory, align 8
  %17 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %18 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call12 = call %struct._GimpPalette* @gimp_context_get_palette(%struct._GimpContext* %18)
  %call13 = call i8* (i64, i8*, ...) @g_object_new(i64 %call11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), %struct._GimpMenuFactory* %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), %struct._GimpDataFactory* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), %struct._GimpContext* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), %struct._GimpPalette* %call12, i8* null)
  %19 = bitcast i8* %call13 to %struct._GtkWidget*
  store %struct._GtkWidget* %19, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %20
}

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

declare %struct._GimpPalette* @gimp_context_get_palette(%struct._GimpContext*) #1

; Function Attrs: nounwind uwtable
define void @gimp_palette_editor_pick_color(%struct._GimpPaletteEditor* %editor, %struct._GimpRGB* %color, i32 %pick_state) #3 {
entry:
  %editor.addr = alloca %struct._GimpPaletteEditor*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %pick_state.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %entry22 = alloca %struct._GimpPaletteEntry*, align 8
  %data = alloca %struct._GimpData*, align 8
  %index = alloca i32, align 4
  store %struct._GimpPaletteEditor* %editor, %struct._GimpPaletteEditor** %editor.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store i32 %pick_state, i32* %pick_state.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpPaletteEditor* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_palette_editor_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_palette_editor_pick_color, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.44

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %cmp12 = icmp ne %struct._GimpRGB* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_palette_editor_pick_color, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.44

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %15 = bitcast %struct._GimpPaletteEditor* %14 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_data_editor_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call17)
  %16 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpDataEditor*
  %data_editable = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %16, i32 0, i32 5
  %17 = load i32, i32* %data_editable, align 4
  %tobool19 = icmp ne i32 %17, 0
  br i1 %tobool19, label %if.then.20, label %if.end.44

if.then.20:                                       ; preds = %do.end.16
  store i32 -1, i32* %index, align 4
  %18 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %19 = bitcast %struct._GimpPaletteEditor* %18 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_data_editor_get_type() #7
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call25)
  %20 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpDataEditor*
  %call27 = call %struct._GimpData* @gimp_data_editor_get_data(%struct._GimpDataEditor* %20)
  store %struct._GimpData* %call27, %struct._GimpData** %data, align 8
  %21 = load i32, i32* %pick_state.addr, align 4
  switch i32 %21, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.38
  ]

sw.bb:                                            ; preds = %if.then.20
  %22 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %color28 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %22, i32 0, i32 5
  %23 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %color28, align 8
  %tobool29 = icmp ne %struct._GimpPaletteEntry* %23, null
  br i1 %tobool29, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %sw.bb
  %24 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %color31 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %24, i32 0, i32 5
  %25 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %color31, align 8
  %position = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %25, i32 0, i32 2
  %26 = load i32, i32* %position, align 4
  %add = add nsw i32 %26, 1
  store i32 %add, i32* %index, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %sw.bb
  %27 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %28 = bitcast %struct._GimpData* %27 to %struct._GTypeInstance*
  %call33 = call i64 @gimp_palette_get_type() #7
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call33)
  %29 = bitcast %struct._GTypeInstance* %call34 to %struct._GimpPalette*
  %30 = load i32, i32* %index, align 4
  %31 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %call35 = call %struct._GimpPaletteEntry* @gimp_palette_add_entry(%struct._GimpPalette* %29, i32 %30, i8* null, %struct._GimpRGB* %31)
  store %struct._GimpPaletteEntry* %call35, %struct._GimpPaletteEntry** %entry22, align 8
  %32 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %view = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %32, i32 0, i32 1
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call36 = call i64 @gimp_palette_view_get_type() #7
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call36)
  %35 = bitcast %struct._GTypeInstance* %call37 to %struct._GimpPaletteView*
  %36 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry22, align 8
  call void @gimp_palette_view_select_entry(%struct._GimpPaletteView* %35, %struct._GimpPaletteEntry* %36)
  br label %sw.epilog

sw.bb.38:                                         ; preds = %if.then.20
  %37 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %38 = bitcast %struct._GimpData* %37 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_palette_get_type() #7
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call39)
  %39 = bitcast %struct._GTypeInstance* %call40 to %struct._GimpPalette*
  %40 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %color41 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %40, i32 0, i32 5
  %41 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %color41, align 8
  %position42 = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %41, i32 0, i32 2
  %42 = load i32, i32* %position42, align 4
  %43 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %call43 = call i32 @gimp_palette_set_entry_color(%struct._GimpPalette* %39, i32 %42, %struct._GimpRGB* %43)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.20, %sw.bb.38, %if.end.32
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.9, %if.else.14, %sw.epilog, %do.end.16
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare %struct._GimpData* @gimp_data_editor_get_data(%struct._GimpDataEditor*) #1

declare %struct._GimpPaletteEntry* @gimp_palette_add_entry(%struct._GimpPalette*, i32, i8*, %struct._GimpRGB*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_palette_get_type() #2

declare void @gimp_palette_view_select_entry(%struct._GimpPaletteView*, %struct._GimpPaletteEntry*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_palette_view_get_type() #2

declare i32 @gimp_palette_set_entry_color(%struct._GimpPalette*, i32, %struct._GimpRGB*) #1

; Function Attrs: nounwind uwtable
define void @gimp_palette_editor_zoom(%struct._GimpPaletteEditor* %editor, i32 %zoom_type) #3 {
entry:
  %editor.addr = alloca %struct._GimpPaletteEditor*, align 8
  %zoom_type.addr = alloca i32, align 4
  %palette = alloca %struct._GimpPalette*, align 8
  %zoom_factor = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %scrolled_win = alloca %struct._GtkWidget*, align 8
  %viewport = alloca %struct._GtkWidget*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %columns = alloca i32, align 4
  %rows = alloca i32, align 4
  store %struct._GimpPaletteEditor* %editor, %struct._GimpPaletteEditor** %editor.addr, align 8
  store i32 %zoom_type, i32* %zoom_type.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpPaletteEditor* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_palette_editor_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_palette_editor_zoom, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %14 = bitcast %struct._GimpPaletteEditor* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_data_editor_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpDataEditor*
  %data = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %15, i32 0, i32 4
  %16 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %17 = bitcast %struct._GimpData* %16 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_palette_get_type() #7
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call13)
  %18 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpPalette*
  store %struct._GimpPalette* %18, %struct._GimpPalette** %palette, align 8
  %19 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %tobool15 = icmp ne %struct._GimpPalette* %19, null
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %do.end
  br label %return

if.end.17:                                        ; preds = %do.end
  %20 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %zoom_factor18 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %20, i32 0, i32 6
  %21 = load float, float* %zoom_factor18, align 4
  %conv = fpext float %21 to double
  store double %conv, double* %zoom_factor, align 8
  %22 = load i32, i32* %zoom_type.addr, align 4
  switch i32 %22, label %sw.epilog [
    i32 4, label %sw.bb
    i32 2, label %sw.bb
    i32 0, label %sw.bb
    i32 3, label %sw.bb.19
    i32 1, label %sw.bb.19
    i32 5, label %sw.bb.20
    i32 6, label %sw.bb.20
  ]

sw.bb:                                            ; preds = %if.end.17, %if.end.17, %if.end.17
  %23 = load double, double* %zoom_factor, align 8
  %add = fadd double %23, 1.000000e-01
  store double %add, double* %zoom_factor, align 8
  br label %sw.epilog

sw.bb.19:                                         ; preds = %if.end.17, %if.end.17
  %24 = load double, double* %zoom_factor, align 8
  %sub = fsub double %24, 1.000000e-01
  store double %sub, double* %zoom_factor, align 8
  br label %sw.epilog

sw.bb.20:                                         ; preds = %if.end.17, %if.end.17
  %25 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %26 = bitcast %struct._GimpPaletteEditor* %25 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_data_editor_get_type() #7
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call22)
  %27 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpDataEditor*
  %view = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %27, i32 0, i32 7
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  store %struct._GtkWidget* %28, %struct._GtkWidget** %scrolled_win, align 8
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_bin_get_type() #7
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call25)
  %31 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkBin*
  %call27 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %31)
  store %struct._GtkWidget* %call27, %struct._GtkWidget** %viewport, align 8
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %viewport, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %32, %struct._GdkRectangle* %allocation)
  %33 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %call31 = call i32 @gimp_palette_get_columns(%struct._GimpPalette* %33)
  store i32 %call31, i32* %columns, align 4
  %34 = load i32, i32* %columns, align 4
  %cmp32 = icmp eq i32 %34, 0
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %sw.bb.20
  store i32 16, i32* %columns, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %sw.bb.20
  %35 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %call36 = call i32 @gimp_palette_get_n_colors(%struct._GimpPalette* %35)
  %36 = load i32, i32* %columns, align 4
  %div = sdiv i32 %call36, %36
  store i32 %div, i32* %rows, align 4
  %37 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %call37 = call i32 @gimp_palette_get_n_colors(%struct._GimpPalette* %37)
  %38 = load i32, i32* %columns, align 4
  %rem = srem i32 %call37, %38
  %tobool38 = icmp ne i32 %rem, 0
  br i1 %tobool38, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %if.end.35
  %39 = load i32, i32* %rows, align 4
  %add40 = add nsw i32 %39, 1
  store i32 %add40, i32* %rows, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %if.end.35
  %40 = load i32, i32* %rows, align 4
  %cmp42 = icmp sgt i32 1, %40
  br i1 %cmp42, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.41
  br label %cond.end

cond.false:                                       ; preds = %if.end.41
  %41 = load i32, i32* %rows, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %41, %cond.false ]
  store i32 %cond, i32* %rows, align 4
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %42 = load i32, i32* %height, align 4
  %conv44 = sitofp i32 %42 to double
  %sub45 = fsub double %conv44, 2.000000e+00
  %43 = load i32, i32* %rows, align 4
  %conv46 = sitofp i32 %43 to double
  %div47 = fdiv double %sub45, %conv46
  %sub48 = fsub double %div47, 1.000000e+00
  %div49 = fdiv double %sub48, 1.000000e+01
  store double %div49, double* %zoom_factor, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.17, %cond.end, %sw.bb.19, %sw.bb
  %44 = load double, double* %zoom_factor, align 8
  %cmp50 = fcmp ogt double %44, 4.000000e+00
  br i1 %cmp50, label %cond.true.52, label %cond.false.53

cond.true.52:                                     ; preds = %sw.epilog
  br label %cond.end.60

cond.false.53:                                    ; preds = %sw.epilog
  %45 = load double, double* %zoom_factor, align 8
  %cmp54 = fcmp olt double %45, 1.000000e-01
  br i1 %cmp54, label %cond.true.56, label %cond.false.57

cond.true.56:                                     ; preds = %cond.false.53
  br label %cond.end.58

cond.false.57:                                    ; preds = %cond.false.53
  %46 = load double, double* %zoom_factor, align 8
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.false.57, %cond.true.56
  %cond59 = phi double [ 1.000000e-01, %cond.true.56 ], [ %46, %cond.false.57 ]
  br label %cond.end.60

cond.end.60:                                      ; preds = %cond.end.58, %cond.true.52
  %cond61 = phi double [ 4.000000e+00, %cond.true.52 ], [ %cond59, %cond.end.58 ]
  store double %cond61, double* %zoom_factor, align 8
  %47 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %call62 = call i32 @gimp_palette_get_columns(%struct._GimpPalette* %47)
  %48 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %columns63 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %48, i32 0, i32 9
  store i32 %call62, i32* %columns63, align 4
  %49 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %columns64 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %49, i32 0, i32 9
  %50 = load i32, i32* %columns64, align 4
  %cmp65 = icmp eq i32 %50, 0
  br i1 %cmp65, label %if.then.67, label %if.end.69

if.then.67:                                       ; preds = %cond.end.60
  %51 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %columns68 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %51, i32 0, i32 9
  store i32 16, i32* %columns68, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.67, %cond.end.60
  %52 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %53 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %last_width = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %53, i32 0, i32 8
  %54 = load i32, i32* %last_width, align 4
  %55 = load double, double* %zoom_factor, align 8
  call void @palette_editor_resize(%struct._GimpPaletteEditor* %52, i32 %54, double %55)
  %56 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  call void @palette_editor_scroll_top_left(%struct._GimpPaletteEditor* %56)
  br label %return

return:                                           ; preds = %if.end.69, %if.then.16, %if.else.9
  ret void
}

declare %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_bin_get_type() #2

declare void @gtk_widget_get_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #1

declare i32 @gimp_palette_get_columns(%struct._GimpPalette*) #1

declare i32 @gimp_palette_get_n_colors(%struct._GimpPalette*) #1

; Function Attrs: nounwind uwtable
define internal void @palette_editor_resize(%struct._GimpPaletteEditor* %editor, i32 %width, double %zoom_factor) #3 {
entry:
  %editor.addr = alloca %struct._GimpPaletteEditor*, align 8
  %width.addr = alloca i32, align 4
  %zoom_factor.addr = alloca double, align 8
  %palette = alloca %struct._GimpPalette*, align 8
  %rows = alloca i32, align 4
  %preview_width = alloca i32, align 4
  %preview_height = alloca i32, align 4
  store %struct._GimpPaletteEditor* %editor, %struct._GimpPaletteEditor** %editor.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store double %zoom_factor, double* %zoom_factor.addr, align 8
  %0 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpPaletteEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDataEditor*
  %data = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %2, i32 0, i32 4
  %3 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %4 = bitcast %struct._GimpData* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_palette_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpPalette*
  store %struct._GimpPalette* %5, %struct._GimpPalette** %palette, align 8
  %6 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %tobool = icmp ne %struct._GimpPalette* %6, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %7 = load double, double* %zoom_factor.addr, align 8
  %conv = fptrunc double %7 to float
  %8 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %zoom_factor4 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %8, i32 0, i32 6
  store float %conv, float* %zoom_factor4, align 4
  %9 = load i32, i32* %width.addr, align 4
  %10 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %last_width = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %10, i32 0, i32 8
  store i32 %9, i32* %last_width, align 4
  %11 = load i32, i32* %width.addr, align 4
  %12 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %columns = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %12, i32 0, i32 9
  %13 = load i32, i32* %columns, align 4
  %add = add nsw i32 %13, 1
  %div = sdiv i32 %11, %add
  %sub = sub nsw i32 %div, 1
  %14 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %col_width = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %14, i32 0, i32 7
  store i32 %sub, i32* %col_width, align 4
  %15 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %col_width5 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %15, i32 0, i32 7
  %16 = load i32, i32* %col_width5, align 4
  %cmp = icmp slt i32 %16, 0
  br i1 %cmp, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %17 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %col_width8 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %17, i32 0, i32 7
  store i32 0, i32* %col_width8, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end
  %18 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %call10 = call i32 @gimp_palette_get_n_colors(%struct._GimpPalette* %18)
  %19 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %columns11 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %19, i32 0, i32 9
  %20 = load i32, i32* %columns11, align 4
  %div12 = sdiv i32 %call10, %20
  store i32 %div12, i32* %rows, align 4
  %21 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %call13 = call i32 @gimp_palette_get_n_colors(%struct._GimpPalette* %21)
  %22 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %columns14 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %22, i32 0, i32 9
  %23 = load i32, i32* %columns14, align 4
  %rem = srem i32 %call13, %23
  %tobool15 = icmp ne i32 %rem, 0
  br i1 %tobool15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end.9
  %24 = load i32, i32* %rows, align 4
  %add17 = add nsw i32 %24, 1
  store i32 %add17, i32* %rows, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %if.end.9
  %25 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %col_width19 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %25, i32 0, i32 7
  %26 = load i32, i32* %col_width19, align 4
  %add20 = add nsw i32 %26, 1
  %27 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %columns21 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %27, i32 0, i32 9
  %28 = load i32, i32* %columns21, align 4
  %mul = mul nsw i32 %add20, %28
  store i32 %mul, i32* %preview_width, align 4
  %29 = load i32, i32* %rows, align 4
  %30 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %zoom_factor22 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %30, i32 0, i32 6
  %31 = load float, float* %zoom_factor22, align 4
  %mul23 = fmul float 1.000000e+01, %31
  %conv24 = fptosi float %mul23 to i32
  %add25 = add nsw i32 1, %conv24
  %mul26 = mul nsw i32 %29, %add25
  store i32 %mul26, i32* %preview_height, align 4
  %32 = load i32, i32* %preview_height, align 4
  %cmp27 = icmp sgt i32 %32, 2048
  br i1 %cmp27, label %if.then.29, label %if.end.32

if.then.29:                                       ; preds = %if.end.18
  %33 = load i32, i32* %rows, align 4
  %div30 = sdiv i32 2047, %33
  %34 = load i32, i32* %rows, align 4
  %mul31 = mul nsw i32 %div30, %34
  store i32 %mul31, i32* %preview_height, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.29, %if.end.18
  %35 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %view = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %35, i32 0, i32 1
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call33 = call i64 @gimp_view_get_type() #7
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call33)
  %38 = bitcast %struct._GTypeInstance* %call34 to %struct._GimpView*
  %renderer = getelementptr inbounds %struct._GimpView, %struct._GimpView* %38, i32 0, i32 3
  %39 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %40 = load i32, i32* %preview_width, align 4
  %add35 = add nsw i32 %40, 1
  %41 = load i32, i32* %preview_height, align 4
  %add36 = add nsw i32 %41, 1
  call void @gimp_view_renderer_set_size_full(%struct._GimpViewRenderer* %39, i32 %add35, i32 %add36, i32 0)
  br label %return

return:                                           ; preds = %if.end.32, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @palette_editor_scroll_top_left(%struct._GimpPaletteEditor* %palette_editor) #3 {
entry:
  %palette_editor.addr = alloca %struct._GimpPaletteEditor*, align 8
  %data_editor = alloca %struct._GimpDataEditor*, align 8
  %hadj = alloca %struct._GtkAdjustment*, align 8
  %vadj = alloca %struct._GtkAdjustment*, align 8
  store %struct._GimpPaletteEditor* %palette_editor, %struct._GimpPaletteEditor** %palette_editor.addr, align 8
  %0 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %palette_editor.addr, align 8
  %1 = bitcast %struct._GimpPaletteEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDataEditor*
  store %struct._GimpDataEditor* %2, %struct._GimpDataEditor** %data_editor, align 8
  %3 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %view = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %3, i32 0, i32 7
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %tobool = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.15

if.end:                                           ; preds = %entry
  %5 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %view2 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %5, i32 0, i32 7
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %view2, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_scrolled_window_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkScrolledWindow*
  %call5 = call %struct._GtkAdjustment* @gtk_scrolled_window_get_hadjustment(%struct._GtkScrolledWindow* %8)
  store %struct._GtkAdjustment* %call5, %struct._GtkAdjustment** %hadj, align 8
  %9 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %view6 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %9, i32 0, i32 7
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %view6, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_scrolled_window_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call7)
  %12 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkScrolledWindow*
  %call9 = call %struct._GtkAdjustment* @gtk_scrolled_window_get_vadjustment(%struct._GtkScrolledWindow* %12)
  store %struct._GtkAdjustment* %call9, %struct._GtkAdjustment** %vadj, align 8
  %13 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %hadj, align 8
  %tobool10 = icmp ne %struct._GtkAdjustment* %13, null
  br i1 %tobool10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  %14 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %hadj, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %14, double 0.000000e+00)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end
  %15 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %vadj, align 8
  %tobool13 = icmp ne %struct._GtkAdjustment* %15, null
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.12
  %16 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %vadj, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %16, double 0.000000e+00)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then, %if.then.14, %if.end.12
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_palette_editor_get_index(%struct._GimpPaletteEditor* %editor, %struct._GimpRGB* %search) #3 {
entry:
  %retval = alloca i32, align 4
  %editor.addr = alloca %struct._GimpPaletteEditor*, align 8
  %search.addr = alloca %struct._GimpRGB*, align 8
  %palette = alloca %struct._GimpPalette*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %entry27 = alloca %struct._GimpPaletteEntry*, align 8
  store %struct._GimpPaletteEditor* %editor, %struct._GimpPaletteEditor** %editor.addr, align 8
  store %struct._GimpRGB* %search, %struct._GimpRGB** %search.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpPaletteEditor* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_palette_editor_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_palette_editor_get_index, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpRGB*, %struct._GimpRGB** %search.addr, align 8
  %cmp12 = icmp ne %struct._GimpRGB* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_palette_editor_get_index, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %15 = bitcast %struct._GimpPaletteEditor* %14 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_data_editor_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call17)
  %16 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpDataEditor*
  %data = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %16, i32 0, i32 4
  %17 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %18 = bitcast %struct._GimpData* %17 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_palette_get_type() #7
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call19)
  %19 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpPalette*
  store %struct._GimpPalette* %19, %struct._GimpPalette** %palette, align 8
  %20 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %tobool21 = icmp ne %struct._GimpPalette* %20, null
  br i1 %tobool21, label %land.lhs.true.22, label %if.end.32

land.lhs.true.22:                                 ; preds = %do.end.16
  %21 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %call23 = call i32 @gimp_palette_get_n_colors(%struct._GimpPalette* %21)
  %cmp24 = icmp sgt i32 %call23, 0
  br i1 %cmp24, label %if.then.25, label %if.end.32

if.then.25:                                       ; preds = %land.lhs.true.22
  %22 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %23 = load %struct._GimpRGB*, %struct._GimpRGB** %search.addr, align 8
  %24 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %color = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %24, i32 0, i32 5
  %25 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %color, align 8
  %call28 = call %struct._GimpPaletteEntry* @gimp_palette_find_entry(%struct._GimpPalette* %22, %struct._GimpRGB* %23, %struct._GimpPaletteEntry* %25)
  store %struct._GimpPaletteEntry* %call28, %struct._GimpPaletteEntry** %entry27, align 8
  %26 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry27, align 8
  %tobool29 = icmp ne %struct._GimpPaletteEntry* %26, null
  br i1 %tobool29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.then.25
  %27 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry27, align 8
  %position = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %27, i32 0, i32 2
  %28 = load i32, i32* %position, align 4
  store i32 %28, i32* %retval
  br label %return

if.end.31:                                        ; preds = %if.then.25
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %land.lhs.true.22, %do.end.16
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.32, %if.then.30, %if.else.14, %if.else.9
  %29 = load i32, i32* %retval
  ret i32 %29
}

declare %struct._GimpPaletteEntry* @gimp_palette_find_entry(%struct._GimpPalette*, %struct._GimpRGB*, %struct._GimpPaletteEntry*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_palette_editor_set_index(%struct._GimpPaletteEditor* %editor, i32 %index, %struct._GimpRGB* %color) #3 {
entry:
  %retval = alloca i32, align 4
  %editor.addr = alloca %struct._GimpPaletteEditor*, align 8
  %index.addr = alloca i32, align 4
  %color.addr = alloca %struct._GimpRGB*, align 8
  %palette = alloca %struct._GimpPalette*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %entry21 = alloca %struct._GimpPaletteEntry*, align 8
  store %struct._GimpPaletteEditor* %editor, %struct._GimpPaletteEditor** %editor.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpPaletteEditor* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_palette_editor_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_palette_editor_set_index, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %14 = bitcast %struct._GimpPaletteEditor* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_data_editor_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpDataEditor*
  %data = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %15, i32 0, i32 4
  %16 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %17 = bitcast %struct._GimpData* %16 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_palette_get_type() #7
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call13)
  %18 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpPalette*
  store %struct._GimpPalette* %18, %struct._GimpPalette** %palette, align 8
  %19 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %tobool15 = icmp ne %struct._GimpPalette* %19, null
  br i1 %tobool15, label %land.lhs.true.16, label %if.end.39

land.lhs.true.16:                                 ; preds = %do.end
  %20 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %call17 = call i32 @gimp_palette_get_n_colors(%struct._GimpPalette* %20)
  %cmp18 = icmp sgt i32 %call17, 0
  br i1 %cmp18, label %if.then.19, label %if.end.39

if.then.19:                                       ; preds = %land.lhs.true.16
  %21 = load i32, i32* %index.addr, align 4
  %22 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %call22 = call i32 @gimp_palette_get_n_colors(%struct._GimpPalette* %22)
  %sub = sub nsw i32 %call22, 1
  %cmp23 = icmp sgt i32 %21, %sub
  br i1 %cmp23, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.19
  %23 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %call24 = call i32 @gimp_palette_get_n_colors(%struct._GimpPalette* %23)
  %sub25 = sub nsw i32 %call24, 1
  br label %cond.end.29

cond.false:                                       ; preds = %if.then.19
  %24 = load i32, i32* %index.addr, align 4
  %cmp26 = icmp slt i32 %24, 0
  br i1 %cmp26, label %cond.true.27, label %cond.false.28

cond.true.27:                                     ; preds = %cond.false
  br label %cond.end

cond.false.28:                                    ; preds = %cond.false
  %25 = load i32, i32* %index.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.28, %cond.true.27
  %cond = phi i32 [ 0, %cond.true.27 ], [ %25, %cond.false.28 ]
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.end, %cond.true
  %cond30 = phi i32 [ %sub25, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond30, i32* %index.addr, align 4
  %26 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %27 = load i32, i32* %index.addr, align 4
  %call31 = call %struct._GimpPaletteEntry* @gimp_palette_get_entry(%struct._GimpPalette* %26, i32 %27)
  store %struct._GimpPaletteEntry* %call31, %struct._GimpPaletteEntry** %entry21, align 8
  %28 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %view = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %28, i32 0, i32 1
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call32 = call i64 @gimp_palette_view_get_type() #7
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call32)
  %31 = bitcast %struct._GTypeInstance* %call33 to %struct._GimpPaletteView*
  %32 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry21, align 8
  call void @gimp_palette_view_select_entry(%struct._GimpPaletteView* %31, %struct._GimpPaletteEntry* %32)
  %33 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %tobool34 = icmp ne %struct._GimpRGB* %33, null
  br i1 %tobool34, label %if.then.35, label %if.end.38

if.then.35:                                       ; preds = %cond.end.29
  %34 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %35 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %color36 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %35, i32 0, i32 5
  %36 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %color36, align 8
  %color37 = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %36, i32 0, i32 0
  %37 = bitcast %struct._GimpRGB* %34 to i8*
  %38 = bitcast %struct._GimpRGB* %color37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 32, i32 8, i1 false)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.35, %cond.end.29
  store i32 1, i32* %retval
  br label %return

if.end.39:                                        ; preds = %land.lhs.true.16, %do.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.39, %if.end.38, %if.else.9
  %39 = load i32, i32* %retval
  ret i32 %39
}

declare %struct._GimpPaletteEntry* @gimp_palette_get_entry(%struct._GimpPalette*, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind uwtable
define i32 @gimp_palette_editor_max_index(%struct._GimpPaletteEditor* %editor) #3 {
entry:
  %retval = alloca i32, align 4
  %editor.addr = alloca %struct._GimpPaletteEditor*, align 8
  %palette = alloca %struct._GimpPalette*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPaletteEditor* %editor, %struct._GimpPaletteEditor** %editor.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpPaletteEditor* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_palette_editor_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_palette_editor_max_index, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %14 = bitcast %struct._GimpPaletteEditor* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_data_editor_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpDataEditor*
  %data = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %15, i32 0, i32 4
  %16 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %17 = bitcast %struct._GimpData* %16 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_palette_get_type() #7
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call13)
  %18 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpPalette*
  store %struct._GimpPalette* %18, %struct._GimpPalette** %palette, align 8
  %19 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %tobool15 = icmp ne %struct._GimpPalette* %19, null
  br i1 %tobool15, label %land.lhs.true.16, label %if.end.21

land.lhs.true.16:                                 ; preds = %do.end
  %20 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %call17 = call i32 @gimp_palette_get_n_colors(%struct._GimpPalette* %20)
  %cmp18 = icmp sgt i32 %call17, 0
  br i1 %cmp18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %land.lhs.true.16
  %21 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %call20 = call i32 @gimp_palette_get_n_colors(%struct._GimpPalette* %21)
  %sub = sub nsw i32 %call20, 1
  store i32 %sub, i32* %retval
  br label %return

if.end.21:                                        ; preds = %land.lhs.true.16, %do.end
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.then.19, %if.else.9
  %22 = load i32, i32* %retval
  ret i32 %22
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_palette_editor_class_init(%struct._GimpPaletteEditorClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpPaletteEditorClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  %editor_class = alloca %struct._GimpDataEditorClass*, align 8
  store %struct._GimpPaletteEditorClass* %klass, %struct._GimpPaletteEditorClass** %klass.addr, align 8
  %0 = load %struct._GimpPaletteEditorClass*, %struct._GimpPaletteEditorClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpPaletteEditorClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpPaletteEditorClass*, %struct._GimpPaletteEditorClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpPaletteEditorClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_widget_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %5, %struct._GtkWidgetClass** %widget_class, align 8
  %6 = load %struct._GimpPaletteEditorClass*, %struct._GimpPaletteEditorClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpPaletteEditorClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_data_editor_get_type() #7
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpDataEditorClass*
  store %struct._GimpDataEditorClass* %8, %struct._GimpDataEditorClass** %editor_class, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_palette_editor_constructed, void (%struct._GObject*)** %constructed, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_palette_editor_dispose, void (%struct._GObject*)** %dispose, align 8
  %11 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %unmap = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %11, i32 0, i32 9
  store void (%struct._GtkWidget*)* @gimp_palette_editor_unmap, void (%struct._GtkWidget*)** %unmap, align 8
  %12 = load %struct._GimpDataEditorClass*, %struct._GimpDataEditorClass** %editor_class, align 8
  %set_data = getelementptr inbounds %struct._GimpDataEditorClass, %struct._GimpDataEditorClass* %12, i32 0, i32 1
  store void (%struct._GimpDataEditor*, %struct._GimpData*)* @gimp_palette_editor_set_data, void (%struct._GimpDataEditor*, %struct._GimpData*)** %set_data, align 8
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0)) #5
  %13 = load %struct._GimpDataEditorClass*, %struct._GimpDataEditorClass** %editor_class, align 8
  %title = getelementptr inbounds %struct._GimpDataEditorClass, %struct._GimpDataEditorClass* %13, i32 0, i32 2
  store i8* %call5, i8** %title, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_palette_editor_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %editor = alloca %struct._GimpPaletteEditor*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_palette_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPaletteEditor*
  store %struct._GimpPaletteEditor* %2, %struct._GimpPaletteEditor** %editor, align 8
  %3 = load i8*, i8** @gimp_palette_editor_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 9
  %6 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_palette_editor_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 80)
  %9 = bitcast %struct._GTypeClass* %call3 to %struct._GObjectClass*
  %constructed4 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  %10 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed4, align 8
  %11 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %10(%struct._GObject* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor, align 8
  %13 = bitcast %struct._GimpPaletteEditor* %12 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_editor_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call5)
  %14 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpEditor*
  %call7 = call %struct._GtkWidget* (%struct._GimpEditor*, i8*, i8*, ...) @gimp_editor_add_action_button(%struct._GimpEditor* %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i32 0, i32 0), i8* null)
  %15 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor, align 8
  %16 = bitcast %struct._GimpPaletteEditor* %15 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_editor_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call8)
  %17 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpEditor*
  %call10 = call i32 @gimp_get_toggle_behavior_mask()
  %call11 = call %struct._GtkWidget* (%struct._GimpEditor*, i8*, i8*, ...) @gimp_editor_add_action_button(%struct._GimpEditor* %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i32 0, i32 0), i32 %call10, i8* null)
  %18 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor, align 8
  %19 = bitcast %struct._GimpPaletteEditor* %18 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_editor_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call12)
  %20 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpEditor*
  %call14 = call %struct._GtkWidget* (%struct._GimpEditor*, i8*, i8*, ...) @gimp_editor_add_action_button(%struct._GimpEditor* %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i32 0, i32 0), i8* null)
  %21 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor, align 8
  %22 = bitcast %struct._GimpPaletteEditor* %21 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_editor_get_type() #7
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call15)
  %23 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpEditor*
  %call17 = call %struct._GtkWidget* (%struct._GimpEditor*, i8*, i8*, ...) @gimp_editor_add_action_button(%struct._GimpEditor* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i32 0, i32 0), i8* null)
  %24 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor, align 8
  %25 = bitcast %struct._GimpPaletteEditor* %24 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_editor_get_type() #7
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call18)
  %26 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpEditor*
  %call20 = call %struct._GtkWidget* (%struct._GimpEditor*, i8*, i8*, ...) @gimp_editor_add_action_button(%struct._GimpEditor* %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i32 0, i32 0), i8* null)
  %27 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor, align 8
  %28 = bitcast %struct._GimpPaletteEditor* %27 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_editor_get_type() #7
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call21)
  %29 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpEditor*
  %call23 = call %struct._GtkWidget* (%struct._GimpEditor*, i8*, i8*, ...) @gimp_editor_add_action_button(%struct._GimpEditor* %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i32 0, i32 0), i8* null)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_palette_editor_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %editor = alloca %struct._GimpPaletteEditor*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_palette_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPaletteEditor*
  store %struct._GimpPaletteEditor* %2, %struct._GimpPaletteEditor** %editor, align 8
  %3 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor, align 8
  %color_dialog = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %3, i32 0, i32 4
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %color_dialog, align 8
  %tobool = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor, align 8
  %color_dialog2 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %5, i32 0, i32 4
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %color_dialog2, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %6)
  %7 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor, align 8
  %color_dialog3 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %7, i32 0, i32 4
  store %struct._GtkWidget* null, %struct._GtkWidget** %color_dialog3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8*, i8** @gimp_palette_editor_parent_class, align 8
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
define internal void @gimp_palette_editor_unmap(%struct._GtkWidget* %widget) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %editor = alloca %struct._GimpPaletteEditor*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_palette_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPaletteEditor*
  store %struct._GimpPaletteEditor* %2, %struct._GimpPaletteEditor** %editor, align 8
  %3 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor, align 8
  %color_dialog = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %3, i32 0, i32 4
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %color_dialog, align 8
  %tobool = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor, align 8
  %color_dialog2 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %5, i32 0, i32 4
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %color_dialog2, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** @gimp_palette_editor_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call3 = call i64 @gtk_widget_get_type() #7
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 %call3)
  %9 = bitcast %struct._GTypeClass* %call4 to %struct._GtkWidgetClass*
  %unmap = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %9, i32 0, i32 9
  %10 = load void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)** %unmap, align 8
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void %10(%struct._GtkWidget* %11)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_palette_editor_set_data(%struct._GimpDataEditor* %editor, %struct._GimpData* %data) #3 {
entry:
  %editor.addr = alloca %struct._GimpDataEditor*, align 8
  %data.addr = alloca %struct._GimpData*, align 8
  %palette_editor = alloca %struct._GimpPaletteEditor*, align 8
  %palette = alloca %struct._GimpPalette*, align 8
  store %struct._GimpDataEditor* %editor, %struct._GimpDataEditor** %editor.addr, align 8
  store %struct._GimpData* %data, %struct._GimpData** %data.addr, align 8
  %0 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpDataEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_palette_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPaletteEditor*
  store %struct._GimpPaletteEditor* %2, %struct._GimpPaletteEditor** %palette_editor, align 8
  %3 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %palette_editor, align 8
  %columns_data = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %3, i32 0, i32 3
  %4 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %columns_data, align 8
  %5 = bitcast %struct._GtkAdjustment* %4 to i8*
  %6 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %7 = bitcast %struct._GimpDataEditor* %6 to i8*
  %call2 = call i32 @g_signal_handlers_block_matched(i8* %5, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkAdjustment*, %struct._GimpPaletteEditor*)* @palette_editor_columns_changed to i8*), i8* %7)
  %8 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %data3 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %8, i32 0, i32 4
  %9 = load %struct._GimpData*, %struct._GimpData** %data3, align 8
  %tobool = icmp ne %struct._GimpData* %9, null
  br i1 %tobool, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  %10 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %palette_editor, align 8
  %color_dialog = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %10, i32 0, i32 4
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %color_dialog, align 8
  %tobool4 = icmp ne %struct._GtkWidget* %11, null
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %12 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %palette_editor, align 8
  %color_dialog6 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %12, i32 0, i32 4
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %color_dialog6, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %13)
  %14 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %palette_editor, align 8
  %color_dialog7 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %14, i32 0, i32 4
  store %struct._GtkWidget* null, %struct._GtkWidget** %color_dialog7, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  %15 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %data8 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %15, i32 0, i32 4
  %16 = load %struct._GimpData*, %struct._GimpData** %data8, align 8
  %17 = bitcast %struct._GimpData* %16 to i8*
  %18 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %19 = bitcast %struct._GimpDataEditor* %18 to i8*
  %call9 = call i32 @g_signal_handlers_disconnect_matched(i8* %17, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpPalette*, %struct._GimpPaletteEditor*)* @palette_editor_invalidate_preview to i8*), i8* %19)
  %20 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %palette_editor, align 8
  %columns_data10 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %20, i32 0, i32 3
  %21 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %columns_data10, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %21, double 0.000000e+00)
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %entry
  %22 = load i8*, i8** @gimp_palette_editor_parent_class, align 8
  %23 = bitcast i8* %22 to %struct._GTypeClass*
  %call12 = call i64 @gimp_data_editor_get_type() #7
  %call13 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %23, i64 %call12)
  %24 = bitcast %struct._GTypeClass* %call13 to %struct._GimpDataEditorClass*
  %set_data = getelementptr inbounds %struct._GimpDataEditorClass, %struct._GimpDataEditorClass* %24, i32 0, i32 1
  %25 = load void (%struct._GimpDataEditor*, %struct._GimpData*)*, void (%struct._GimpDataEditor*, %struct._GimpData*)** %set_data, align 8
  %26 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %27 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  call void %25(%struct._GimpDataEditor* %26, %struct._GimpData* %27)
  %28 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %palette_editor, align 8
  %view = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %28, i32 0, i32 1
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_view_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call14)
  %31 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpView*
  %32 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %33 = bitcast %struct._GimpData* %32 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_viewable_get_type() #7
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call16)
  %34 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpViewable*
  call void @gimp_view_set_viewable(%struct._GimpView* %31, %struct._GimpViewable* %34)
  %35 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %data18 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %35, i32 0, i32 4
  %36 = load %struct._GimpData*, %struct._GimpData** %data18, align 8
  %tobool19 = icmp ne %struct._GimpData* %36, null
  br i1 %tobool19, label %if.then.20, label %if.end.31

if.then.20:                                       ; preds = %if.end.11
  %37 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %data21 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %37, i32 0, i32 4
  %38 = load %struct._GimpData*, %struct._GimpData** %data21, align 8
  %39 = bitcast %struct._GimpData* %38 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_palette_get_type() #7
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call22)
  %40 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpPalette*
  store %struct._GimpPalette* %40, %struct._GimpPalette** %palette, align 8
  %41 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %data24 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %41, i32 0, i32 4
  %42 = load %struct._GimpData*, %struct._GimpData** %data24, align 8
  %43 = bitcast %struct._GimpData* %42 to i8*
  %44 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %45 = bitcast %struct._GimpDataEditor* %44 to i8*
  %call25 = call i64 @g_signal_connect_data(i8* %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPalette*, %struct._GimpPaletteEditor*)* @palette_editor_invalidate_preview to void ()*), i8* %45, void (i8*, %struct._GClosure*)* null, i32 0)
  %46 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %palette_editor, align 8
  %columns_data26 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %46, i32 0, i32 3
  %47 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %columns_data26, align 8
  %48 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %call27 = call i32 @gimp_palette_get_columns(%struct._GimpPalette* %48)
  %conv = sitofp i32 %call27 to double
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %47, double %conv)
  %49 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %palette_editor, align 8
  call void @palette_editor_scroll_top_left(%struct._GimpPaletteEditor* %49)
  %50 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %data28 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %50, i32 0, i32 4
  %51 = load %struct._GimpData*, %struct._GimpData** %data28, align 8
  %52 = bitcast %struct._GimpData* %51 to %struct._GTypeInstance*
  %call29 = call i64 @gimp_palette_get_type() #7
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call29)
  %53 = bitcast %struct._GTypeInstance* %call30 to %struct._GimpPalette*
  %54 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %palette_editor, align 8
  call void @palette_editor_invalidate_preview(%struct._GimpPalette* %53, %struct._GimpPaletteEditor* %54)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.20, %if.end.11
  %55 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %palette_editor, align 8
  %columns_data32 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %55, i32 0, i32 3
  %56 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %columns_data32, align 8
  %57 = bitcast %struct._GtkAdjustment* %56 to i8*
  %58 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %59 = bitcast %struct._GimpDataEditor* %58 to i8*
  %call33 = call i32 @g_signal_handlers_unblock_matched(i8* %57, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkAdjustment*, %struct._GimpPaletteEditor*)* @palette_editor_columns_changed to i8*), i8* %59)
  ret void
}

; Function Attrs: nounwind
declare i8* @gettext(i8*) #6

declare %struct._GtkWidget* @gimp_editor_add_action_button(%struct._GimpEditor*, i8*, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_editor_get_type() #2

declare i32 @gimp_get_toggle_behavior_mask() #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare void @gtk_widget_hide(%struct._GtkWidget*) #1

declare i32 @g_signal_handlers_block_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @palette_editor_columns_changed(%struct._GtkAdjustment* %adj, %struct._GimpPaletteEditor* %editor) #3 {
entry:
  %adj.addr = alloca %struct._GtkAdjustment*, align 8
  %editor.addr = alloca %struct._GimpPaletteEditor*, align 8
  %palette = alloca %struct._GimpPalette*, align 8
  store %struct._GtkAdjustment* %adj, %struct._GtkAdjustment** %adj.addr, align 8
  store %struct._GimpPaletteEditor* %editor, %struct._GimpPaletteEditor** %editor.addr, align 8
  %0 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpPaletteEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDataEditor*
  %data = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %2, i32 0, i32 4
  %3 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %tobool = icmp ne %struct._GimpData* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %5 = bitcast %struct._GimpPaletteEditor* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_data_editor_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDataEditor*
  %data4 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %6, i32 0, i32 4
  %7 = load %struct._GimpData*, %struct._GimpData** %data4, align 8
  %8 = bitcast %struct._GimpData* %7 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_palette_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call5)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpPalette*
  store %struct._GimpPalette* %9, %struct._GimpPalette** %palette, align 8
  %10 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %11 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj.addr, align 8
  %call7 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %11)
  %add = fadd double %call7, 5.000000e-01
  %conv = fptosi double %add to i32
  call void @gimp_palette_set_columns(%struct._GimpPalette* %10, i32 %conv)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @palette_editor_invalidate_preview(%struct._GimpPalette* %palette, %struct._GimpPaletteEditor* %editor) #3 {
entry:
  %palette.addr = alloca %struct._GimpPalette*, align 8
  %editor.addr = alloca %struct._GimpPaletteEditor*, align 8
  store %struct._GimpPalette* %palette, %struct._GimpPalette** %palette.addr, align 8
  store %struct._GimpPaletteEditor* %editor, %struct._GimpPaletteEditor** %editor.addr, align 8
  %0 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  %call = call i32 @gimp_palette_get_columns(%struct._GimpPalette* %0)
  %1 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %columns = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %1, i32 0, i32 9
  store i32 %call, i32* %columns, align 4
  %2 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %columns1 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %2, i32 0, i32 9
  %3 = load i32, i32* %columns1, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %columns2 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %4, i32 0, i32 9
  store i32 16, i32* %columns2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %6 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %last_width = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %6, i32 0, i32 8
  %7 = load i32, i32* %last_width, align 4
  %8 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %zoom_factor = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %8, i32 0, i32 6
  %9 = load float, float* %zoom_factor, align 4
  %conv = fpext float %9 to double
  call void @palette_editor_resize(%struct._GimpPaletteEditor* %5, i32 %7, double %conv)
  ret void
}

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #1

declare void @gimp_view_set_viewable(%struct._GimpView*, %struct._GimpViewable*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_view_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare i32 @g_signal_handlers_unblock_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare void @gimp_palette_set_columns(%struct._GimpPalette*, i32) #1

declare double @gtk_adjustment_get_value(%struct._GtkAdjustment*) #1

declare i8* @g_type_interface_peek_parent(i8*) #1

declare i8* @g_type_default_interface_peek(i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_palette_editor_set_context(%struct._GimpDocked* %docked, %struct._GimpContext* %context) #3 {
entry:
  %docked.addr = alloca %struct._GimpDocked*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %editor = alloca %struct._GimpPaletteEditor*, align 8
  store %struct._GimpDocked* %docked, %struct._GimpDocked** %docked.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpDocked*, %struct._GimpDocked** %docked.addr, align 8
  %1 = bitcast %struct._GimpDocked* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_palette_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPaletteEditor*
  store %struct._GimpPaletteEditor* %2, %struct._GimpPaletteEditor** %editor, align 8
  %3 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** @parent_docked_iface, align 8
  %set_context = getelementptr inbounds %struct._GimpDockedInterface, %struct._GimpDockedInterface* %3, i32 0, i32 8
  %4 = load void (%struct._GimpDocked*, %struct._GimpContext*)*, void (%struct._GimpDocked*, %struct._GimpContext*)** %set_context, align 8
  %5 = load %struct._GimpDocked*, %struct._GimpDocked** %docked.addr, align 8
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void %4(%struct._GimpDocked* %5, %struct._GimpContext* %6)
  %7 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor, align 8
  %view = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %7, i32 0, i32 1
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_view_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call2)
  %10 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpView*
  %renderer = getelementptr inbounds %struct._GimpView, %struct._GimpView* %10, i32 0, i32 3
  %11 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %12 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_view_renderer_set_context(%struct._GimpViewRenderer* %11, %struct._GimpContext* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_palette_editor_set_aux_info(%struct._GimpDocked* %docked, %struct._GList* %aux_info) #3 {
entry:
  %docked.addr = alloca %struct._GimpDocked*, align 8
  %aux_info.addr = alloca %struct._GList*, align 8
  %editor = alloca %struct._GimpPaletteEditor*, align 8
  %list = alloca %struct._GList*, align 8
  %aux = alloca %struct._GimpSessionInfoAux*, align 8
  %zoom_factor = alloca double, align 8
  store %struct._GimpDocked* %docked, %struct._GimpDocked** %docked.addr, align 8
  store %struct._GList* %aux_info, %struct._GList** %aux_info.addr, align 8
  %0 = load %struct._GimpDocked*, %struct._GimpDocked** %docked.addr, align 8
  %1 = bitcast %struct._GimpDocked* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_palette_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPaletteEditor*
  store %struct._GimpPaletteEditor* %2, %struct._GimpPaletteEditor** %editor, align 8
  %3 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** @parent_docked_iface, align 8
  %set_aux_info = getelementptr inbounds %struct._GimpDockedInterface, %struct._GimpDockedInterface* %3, i32 0, i32 2
  %4 = load void (%struct._GimpDocked*, %struct._GList*)*, void (%struct._GimpDocked*, %struct._GList*)** %set_aux_info, align 8
  %5 = load %struct._GimpDocked*, %struct._GimpDocked** %docked.addr, align 8
  %6 = load %struct._GList*, %struct._GList** %aux_info.addr, align 8
  call void %4(%struct._GimpDocked* %5, %struct._GList* %6)
  %7 = load %struct._GList*, %struct._GList** %aux_info.addr, align 8
  store %struct._GList* %7, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end.14, %entry
  %8 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %8, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %9, i32 0, i32 0
  %10 = load i8*, i8** %data, align 8
  %11 = bitcast i8* %10 to %struct._GimpSessionInfoAux*
  store %struct._GimpSessionInfoAux* %11, %struct._GimpSessionInfoAux** %aux, align 8
  %12 = load %struct._GimpSessionInfoAux*, %struct._GimpSessionInfoAux** %aux, align 8
  %name = getelementptr inbounds %struct._GimpSessionInfoAux, %struct._GimpSessionInfoAux* %12, i32 0, i32 0
  %13 = load i8*, i8** %name, align 8
  %call2 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0)) #8
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %14 = load %struct._GimpSessionInfoAux*, %struct._GimpSessionInfoAux** %aux, align 8
  %value = getelementptr inbounds %struct._GimpSessionInfoAux, %struct._GimpSessionInfoAux* %14, i32 0, i32 1
  %15 = load i8*, i8** %value, align 8
  %call4 = call double @g_ascii_strtod(i8* %15, i8** null)
  store double %call4, double* %zoom_factor, align 8
  %16 = load double, double* %zoom_factor, align 8
  %cmp = fcmp ogt double %16, 4.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end.8

cond.false:                                       ; preds = %if.then
  %17 = load double, double* %zoom_factor, align 8
  %cmp5 = fcmp olt double %17, 1.000000e-01
  br i1 %cmp5, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.false
  br label %cond.end

cond.false.7:                                     ; preds = %cond.false
  %18 = load double, double* %zoom_factor, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.7, %cond.true.6
  %cond = phi double [ 1.000000e-01, %cond.true.6 ], [ %18, %cond.false.7 ]
  br label %cond.end.8

cond.end.8:                                       ; preds = %cond.end, %cond.true
  %cond9 = phi double [ 4.000000e+00, %cond.true ], [ %cond, %cond.end ]
  %conv = fptrunc double %cond9 to float
  %19 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor, align 8
  %zoom_factor10 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %19, i32 0, i32 6
  store float %conv, float* %zoom_factor10, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end.8, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool11 = icmp ne %struct._GList* %20, null
  br i1 %tobool11, label %cond.true.12, label %cond.false.13

cond.true.12:                                     ; preds = %for.inc
  %21 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %21, i32 0, i32 1
  %22 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end.14

cond.false.13:                                    ; preds = %for.inc
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.13, %cond.true.12
  %cond15 = phi %struct._GList* [ %22, %cond.true.12 ], [ null, %cond.false.13 ]
  store %struct._GList* %cond15, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GList* @gimp_palette_editor_get_aux_info(%struct._GimpDocked* %docked) #3 {
entry:
  %docked.addr = alloca %struct._GimpDocked*, align 8
  %editor = alloca %struct._GimpPaletteEditor*, align 8
  %aux_info = alloca %struct._GList*, align 8
  %aux = alloca %struct._GimpSessionInfoAux*, align 8
  %value = alloca [39 x i8], align 16
  store %struct._GimpDocked* %docked, %struct._GimpDocked** %docked.addr, align 8
  %0 = load %struct._GimpDocked*, %struct._GimpDocked** %docked.addr, align 8
  %1 = bitcast %struct._GimpDocked* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_palette_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPaletteEditor*
  store %struct._GimpPaletteEditor* %2, %struct._GimpPaletteEditor** %editor, align 8
  %3 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** @parent_docked_iface, align 8
  %get_aux_info = getelementptr inbounds %struct._GimpDockedInterface, %struct._GimpDockedInterface* %3, i32 0, i32 3
  %4 = load %struct._GList* (%struct._GimpDocked*)*, %struct._GList* (%struct._GimpDocked*)** %get_aux_info, align 8
  %5 = load %struct._GimpDocked*, %struct._GimpDocked** %docked.addr, align 8
  %call2 = call %struct._GList* %4(%struct._GimpDocked* %5)
  store %struct._GList* %call2, %struct._GList** %aux_info, align 8
  %6 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor, align 8
  %zoom_factor = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %6, i32 0, i32 6
  %7 = load float, float* %zoom_factor, align 4
  %conv = fpext float %7 to double
  %cmp = fcmp une double %conv, 1.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [39 x i8], [39 x i8]* %value, i32 0, i32 0
  %8 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor, align 8
  %zoom_factor4 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %8, i32 0, i32 6
  %9 = load float, float* %zoom_factor4, align 4
  %conv5 = fpext float %9 to double
  %call6 = call i8* @g_ascii_formatd(i8* %arraydecay, i32 39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), double %conv5)
  %arraydecay7 = getelementptr inbounds [39 x i8], [39 x i8]* %value, i32 0, i32 0
  %call8 = call %struct._GimpSessionInfoAux* @gimp_session_info_aux_new(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), i8* %arraydecay7)
  store %struct._GimpSessionInfoAux* %call8, %struct._GimpSessionInfoAux** %aux, align 8
  %10 = load %struct._GList*, %struct._GList** %aux_info, align 8
  %11 = load %struct._GimpSessionInfoAux*, %struct._GimpSessionInfoAux** %aux, align 8
  %12 = bitcast %struct._GimpSessionInfoAux* %11 to i8*
  %call9 = call %struct._GList* @g_list_append(%struct._GList* %10, i8* %12)
  store %struct._GList* %call9, %struct._GList** %aux_info, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct._GList*, %struct._GList** %aux_info, align 8
  ret %struct._GList* %13
}

declare void @gimp_view_renderer_set_context(%struct._GimpViewRenderer*, %struct._GimpContext*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare double @g_ascii_strtod(i8*, i8**) #1

declare i8* @g_ascii_formatd(i8*, i32, i8*, double) #1

declare %struct._GimpSessionInfoAux* @gimp_session_info_aux_new(i8*, i8*) #1

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #1

declare %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment*, %struct._GtkAdjustment*) #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_scrolled_window_get_type() #2

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_view_new_full_by_types(%struct._GimpContext*, i64, i64, i32, i32, i32, i32, i32, i32) #1

declare void @gimp_view_renderer_palette_set_cell_size(%struct._GimpViewRendererPalette*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_view_renderer_palette_get_type() #2

declare void @gimp_view_renderer_palette_set_draw_grid(%struct._GimpViewRendererPalette*, i32) #1

declare void @gtk_scrolled_window_add_with_viewport(%struct._GtkScrolledWindow*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @palette_editor_viewport_size_allocate(%struct._GtkWidget* %widget, %struct._GdkRectangle* %allocation, %struct._GimpPaletteEditor* %editor) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %allocation.addr = alloca %struct._GdkRectangle*, align 8
  %editor.addr = alloca %struct._GimpPaletteEditor*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkRectangle* %allocation, %struct._GdkRectangle** %allocation.addr, align 8
  store %struct._GimpPaletteEditor* %editor, %struct._GimpPaletteEditor** %editor.addr, align 8
  %0 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %0, i32 0, i32 2
  %1 = load i32, i32* %width, align 4
  %2 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %last_width = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %2, i32 0, i32 8
  %3 = load i32, i32* %last_width, align 4
  %cmp = icmp ne i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %5 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width1 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %5, i32 0, i32 2
  %6 = load i32, i32* %width1, align 4
  %7 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %zoom_factor = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %7, i32 0, i32 6
  %8 = load float, float* %zoom_factor, align 4
  %conv = fpext float %8 to double
  call void @palette_editor_resize(%struct._GimpPaletteEditor* %4, i32 %6, double %conv)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @palette_editor_entry_clicked(%struct._GimpPaletteView* %view, %struct._GimpPaletteEntry* %entry1, i32 %state, %struct._GimpPaletteEditor* %editor) #3 {
entry:
  %view.addr = alloca %struct._GimpPaletteView*, align 8
  %entry.addr = alloca %struct._GimpPaletteEntry*, align 8
  %state.addr = alloca i32, align 4
  %editor.addr = alloca %struct._GimpPaletteEditor*, align 8
  %data_editor = alloca %struct._GimpDataEditor*, align 8
  store %struct._GimpPaletteView* %view, %struct._GimpPaletteView** %view.addr, align 8
  store %struct._GimpPaletteEntry* %entry1, %struct._GimpPaletteEntry** %entry.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpPaletteEditor* %editor, %struct._GimpPaletteEditor** %editor.addr, align 8
  %0 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry.addr, align 8
  %tobool = icmp ne %struct._GimpPaletteEntry* %0, null
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %2 = bitcast %struct._GimpPaletteEditor* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_editor_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpDataEditor*
  store %struct._GimpDataEditor* %3, %struct._GimpDataEditor** %data_editor, align 8
  %4 = load i32, i32* %state.addr, align 4
  %call3 = call i32 @gimp_get_toggle_behavior_mask()
  %and = and i32 %4, %call3
  %tobool4 = icmp ne i32 %and, 0
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %5 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %context = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %5, i32 0, i32 2
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %7 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry.addr, align 8
  %color = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %7, i32 0, i32 0
  call void @gimp_context_set_background(%struct._GimpContext* %6, %struct._GimpRGB* %color)
  br label %if.end

if.else:                                          ; preds = %if.then
  %8 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %context6 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %8, i32 0, i32 2
  %9 = load %struct._GimpContext*, %struct._GimpContext** %context6, align 8
  %10 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry.addr, align 8
  %color7 = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %10, i32 0, i32 0
  call void @gimp_context_set_foreground(%struct._GimpContext* %9, %struct._GimpRGB* %color7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @palette_editor_entry_selected(%struct._GimpPaletteView* %view, %struct._GimpPaletteEntry* %entry1, %struct._GimpPaletteEditor* %editor) #3 {
entry:
  %view.addr = alloca %struct._GimpPaletteView*, align 8
  %entry.addr = alloca %struct._GimpPaletteEntry*, align 8
  %editor.addr = alloca %struct._GimpPaletteEditor*, align 8
  %data_editor = alloca %struct._GimpDataEditor*, align 8
  store %struct._GimpPaletteView* %view, %struct._GimpPaletteView** %view.addr, align 8
  store %struct._GimpPaletteEntry* %entry1, %struct._GimpPaletteEntry** %entry.addr, align 8
  store %struct._GimpPaletteEditor* %editor, %struct._GimpPaletteEditor** %editor.addr, align 8
  %0 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpPaletteEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_editor_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpDataEditor*
  store %struct._GimpDataEditor* %2, %struct._GimpDataEditor** %data_editor, align 8
  %3 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %color = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %3, i32 0, i32 5
  %4 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %color, align 8
  %5 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry.addr, align 8
  %cmp = icmp ne %struct._GimpPaletteEntry* %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry.addr, align 8
  %7 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %color3 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %7, i32 0, i32 5
  store %struct._GimpPaletteEntry* %6, %struct._GimpPaletteEntry** %color3, align 8
  %8 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %color_name = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %8, i32 0, i32 2
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %color_name, align 8
  %10 = bitcast %struct._GtkWidget* %9 to i8*
  %11 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %12 = bitcast %struct._GimpPaletteEditor* %11 to i8*
  %call4 = call i32 @g_signal_handlers_block_matched(i8* %10, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GimpPaletteEditor*)* @palette_editor_color_name_changed to i8*), i8* %12)
  %13 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %color_name5 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %13, i32 0, i32 2
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %color_name5, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_entry_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call6)
  %16 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkEntry*
  %17 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry.addr, align 8
  %tobool = icmp ne %struct._GimpPaletteEntry* %17, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %18 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry.addr, align 8
  %name = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %18, i32 0, i32 1
  %19 = load i8*, i8** %name, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0)) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %19, %cond.true ], [ %call8, %cond.false ]
  call void @gtk_entry_set_text(%struct._GtkEntry* %16, i8* %cond)
  %20 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %color_name9 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %20, i32 0, i32 2
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %color_name9, align 8
  %22 = bitcast %struct._GtkWidget* %21 to i8*
  %23 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %24 = bitcast %struct._GimpPaletteEditor* %23 to i8*
  %call10 = call i32 @g_signal_handlers_unblock_matched(i8* %22, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GimpPaletteEditor*)* @palette_editor_color_name_changed to i8*), i8* %24)
  %25 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %color_name11 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %25, i32 0, i32 2
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %color_name11, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_editable_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call12)
  %28 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkEditable*
  %29 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry.addr, align 8
  %tobool14 = icmp ne %struct._GimpPaletteEntry* %29, null
  br i1 %tobool14, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.end
  %30 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %data_editable = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %30, i32 0, i32 5
  %31 = load i32, i32* %data_editable, align 4
  %tobool15 = icmp ne i32 %31, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end
  %32 = phi i1 [ false, %cond.end ], [ %tobool15, %land.rhs ]
  %land.ext = zext i1 %32 to i32
  call void @gtk_editable_set_editable(%struct._GtkEditable* %28, i32 %land.ext)
  %33 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %34 = bitcast %struct._GimpPaletteEditor* %33 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_editor_get_type() #7
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call16)
  %35 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpEditor*
  %call18 = call %struct._GimpUIManager* @gimp_editor_get_ui_manager(%struct._GimpEditor* %35)
  %36 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %37 = bitcast %struct._GimpPaletteEditor* %36 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_editor_get_type() #7
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call19)
  %38 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpEditor*
  %call21 = call i8** @gimp_editor_get_popup_data(%struct._GimpEditor* %38)
  %39 = bitcast i8** %call21 to i8*
  call void @gimp_ui_manager_update(%struct._GimpUIManager* %call18, i8* %39)
  br label %if.end

if.end:                                           ; preds = %land.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @palette_editor_entry_activated(%struct._GimpPaletteView* %view, %struct._GimpPaletteEntry* %entry1, %struct._GimpPaletteEditor* %editor) #3 {
entry:
  %view.addr = alloca %struct._GimpPaletteView*, align 8
  %entry.addr = alloca %struct._GimpPaletteEntry*, align 8
  %editor.addr = alloca %struct._GimpPaletteEditor*, align 8
  store %struct._GimpPaletteView* %view, %struct._GimpPaletteView** %view.addr, align 8
  store %struct._GimpPaletteEntry* %entry1, %struct._GimpPaletteEntry** %entry.addr, align 8
  store %struct._GimpPaletteEditor* %editor, %struct._GimpPaletteEditor** %editor.addr, align 8
  %0 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpPaletteEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_editor_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpDataEditor*
  %data_editable = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %2, i32 0, i32 5
  %3 = load i32, i32* %data_editable, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry.addr, align 8
  %5 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %color = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %5, i32 0, i32 5
  %6 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %color, align 8
  %cmp = icmp eq %struct._GimpPaletteEntry* %4, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %8 = bitcast %struct._GimpPaletteEditor* %7 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_editor_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call3)
  %9 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpEditor*
  %call5 = call %struct._GimpUIManager* @gimp_editor_get_ui_manager(%struct._GimpEditor* %9)
  %call6 = call i32 @gimp_ui_manager_activate_action(%struct._GimpUIManager* %call5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @palette_editor_entry_context(%struct._GimpPaletteView* %view, %struct._GimpPaletteEntry* %entry1, %struct._GimpPaletteEditor* %editor) #3 {
entry:
  %view.addr = alloca %struct._GimpPaletteView*, align 8
  %entry.addr = alloca %struct._GimpPaletteEntry*, align 8
  %editor.addr = alloca %struct._GimpPaletteEditor*, align 8
  store %struct._GimpPaletteView* %view, %struct._GimpPaletteView** %view.addr, align 8
  store %struct._GimpPaletteEntry* %entry1, %struct._GimpPaletteEntry** %entry.addr, align 8
  store %struct._GimpPaletteEditor* %editor, %struct._GimpPaletteEditor** %editor.addr, align 8
  %0 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpPaletteEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_editor_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpEditor*
  %call3 = call i32 @gimp_editor_popup_menu(%struct._GimpEditor* %2, void (%struct._GtkMenu*, i32*, i32*, i8*)* null, i8* null)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @palette_editor_color_dropped(%struct._GimpPaletteView* %view, %struct._GimpPaletteEntry* %entry1, %struct._GimpRGB* %color, %struct._GimpPaletteEditor* %editor) #3 {
entry:
  %view.addr = alloca %struct._GimpPaletteView*, align 8
  %entry.addr = alloca %struct._GimpPaletteEntry*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %editor.addr = alloca %struct._GimpPaletteEditor*, align 8
  %palette = alloca %struct._GimpPalette*, align 8
  %pos = alloca i32, align 4
  store %struct._GimpPaletteView* %view, %struct._GimpPaletteView** %view.addr, align 8
  store %struct._GimpPaletteEntry* %entry1, %struct._GimpPaletteEntry** %entry.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store %struct._GimpPaletteEditor* %editor, %struct._GimpPaletteEditor** %editor.addr, align 8
  %0 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpPaletteEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_editor_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpDataEditor*
  %data_editable = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %2, i32 0, i32 5
  %3 = load i32, i32* %data_editable, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %5 = bitcast %struct._GimpPaletteEditor* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_data_editor_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpDataEditor*
  %data = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %6, i32 0, i32 4
  %7 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %8 = bitcast %struct._GimpData* %7 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_palette_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call5)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpPalette*
  store %struct._GimpPalette* %9, %struct._GimpPalette** %palette, align 8
  store i32 -1, i32* %pos, align 4
  %10 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry.addr, align 8
  %tobool7 = icmp ne %struct._GimpPaletteEntry* %10, null
  br i1 %tobool7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %11 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry.addr, align 8
  %position = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %11, i32 0, i32 2
  %12 = load i32, i32* %position, align 4
  store i32 %12, i32* %pos, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  %13 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %14 = load i32, i32* %pos, align 4
  %15 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %call9 = call %struct._GimpPaletteEntry* @gimp_palette_add_entry(%struct._GimpPalette* %13, i32 %14, i8* null, %struct._GimpRGB* %15)
  store %struct._GimpPaletteEntry* %call9, %struct._GimpPaletteEntry** %entry.addr, align 8
  %16 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %view10 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %16, i32 0, i32 1
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %view10, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_palette_view_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call11)
  %19 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpPaletteView*
  %20 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry.addr, align 8
  call void @gimp_palette_view_select_entry(%struct._GimpPaletteView* %19, %struct._GimpPaletteEntry* %20)
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %entry
  ret void
}

declare i32 @gimp_dnd_viewable_dest_add(%struct._GtkWidget*, i64, void (%struct._GtkWidget*, i32, i32, %struct._GimpViewable*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @palette_editor_drop_palette(%struct._GtkWidget* %widget, i32 %x, i32 %y, %struct._GimpViewable* %viewable, i8* %data) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDataEditor*
  %3 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %4 = bitcast %struct._GimpViewable* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_data_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpData*
  call void @gimp_data_editor_set_data(%struct._GimpDataEditor* %2, %struct._GimpData* %5)
  ret void
}

declare void @gimp_dnd_color_dest_add(%struct._GtkWidget*, void (%struct._GtkWidget*, i32, i32, %struct._GimpRGB*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @palette_editor_drop_color(%struct._GtkWidget* %widget, i32 %x, i32 %y, %struct._GimpRGB* %color, i8* %data) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %color.addr = alloca %struct._GimpRGB*, align 8
  %data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpPaletteEditor*, align 8
  %palette = alloca %struct._GimpPalette*, align 8
  %entry7 = alloca %struct._GimpPaletteEntry*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GimpPaletteEditor*
  store %struct._GimpPaletteEditor* %1, %struct._GimpPaletteEditor** %editor, align 8
  %2 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor, align 8
  %3 = bitcast %struct._GimpPaletteEditor* %2 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDataEditor*
  %data_editable = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %4, i32 0, i32 5
  %5 = load i32, i32* %data_editable, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor, align 8
  %7 = bitcast %struct._GimpPaletteEditor* %6 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_data_editor_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call2)
  %8 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDataEditor*
  %data4 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %8, i32 0, i32 4
  %9 = load %struct._GimpData*, %struct._GimpData** %data4, align 8
  %10 = bitcast %struct._GimpData* %9 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_palette_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call5)
  %11 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpPalette*
  store %struct._GimpPalette* %11, %struct._GimpPalette** %palette, align 8
  %12 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %13 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %call8 = call %struct._GimpPaletteEntry* @gimp_palette_add_entry(%struct._GimpPalette* %12, i32 -1, i8* null, %struct._GimpRGB* %13)
  store %struct._GimpPaletteEntry* %call8, %struct._GimpPaletteEntry** %entry7, align 8
  %14 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor, align 8
  %view = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %14, i32 0, i32 1
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_palette_view_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call9)
  %17 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpPaletteView*
  %18 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry7, align 8
  call void @gimp_palette_view_select_entry(%struct._GimpPaletteView* %17, %struct._GimpPaletteEntry* %18)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare %struct._GtkWidget* @gtk_entry_new() #1

declare void @gtk_entry_set_text(%struct._GtkEntry*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #2

declare void @gtk_editable_set_editable(%struct._GtkEditable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_editable_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @palette_editor_color_name_changed(%struct._GtkWidget* %widget, %struct._GimpPaletteEditor* %editor) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %editor.addr = alloca %struct._GimpPaletteEditor*, align 8
  %palette = alloca %struct._GimpPalette*, align 8
  %name = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpPaletteEditor* %editor, %struct._GimpPaletteEditor** %editor.addr, align 8
  %0 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpPaletteEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDataEditor*
  %data = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %2, i32 0, i32 4
  %3 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %tobool = icmp ne %struct._GimpData* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %5 = bitcast %struct._GimpPaletteEditor* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_data_editor_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDataEditor*
  %data4 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %6, i32 0, i32 4
  %7 = load %struct._GimpData*, %struct._GimpData** %data4, align 8
  %8 = bitcast %struct._GimpData* %7 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_palette_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call5)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpPalette*
  store %struct._GimpPalette* %9, %struct._GimpPalette** %palette, align 8
  %10 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %color_name = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %10, i32 0, i32 2
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %color_name, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_entry_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call7)
  %13 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkEntry*
  %call9 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %13)
  store i8* %call9, i8** %name, align 8
  %14 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %15 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %color = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %15, i32 0, i32 5
  %16 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %color, align 8
  %position = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %16, i32 0, i32 2
  %17 = load i32, i32* %position, align 4
  %18 = load i8*, i8** %name, align 8
  %call10 = call i32 @gimp_palette_set_entry_name(%struct._GimpPalette* %14, i32 %17, i8* %18)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject**, double, double, double, double, double, double, double, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_adjustment_get_type() #2

declare void @gimp_context_set_background(%struct._GimpContext*, %struct._GimpRGB*) #1

declare void @gimp_context_set_foreground(%struct._GimpContext*, %struct._GimpRGB*) #1

declare void @gimp_ui_manager_update(%struct._GimpUIManager*, i8*) #1

declare %struct._GimpUIManager* @gimp_editor_get_ui_manager(%struct._GimpEditor*) #1

declare i8** @gimp_editor_get_popup_data(%struct._GimpEditor*) #1

declare i32 @gimp_ui_manager_activate_action(%struct._GimpUIManager*, i8*, i8*) #1

declare i32 @gimp_editor_popup_menu(%struct._GimpEditor*, void (%struct._GtkMenu*, i32*, i32*, i8*)*, i8*) #1

declare void @gimp_data_editor_set_data(%struct._GimpDataEditor*, %struct._GimpData*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_data_get_type() #2

declare i8* @gtk_entry_get_text(%struct._GtkEntry*) #1

declare i32 @gimp_palette_set_entry_name(%struct._GimpPalette*, i32, i8*) #1

declare void @gimp_view_renderer_set_size_full(%struct._GimpViewRenderer*, i32, i32, i32) #1

declare %struct._GtkAdjustment* @gtk_scrolled_window_get_hadjustment(%struct._GtkScrolledWindow*) #1

declare %struct._GtkAdjustment* @gtk_scrolled_window_get_vadjustment(%struct._GtkScrolledWindow*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
