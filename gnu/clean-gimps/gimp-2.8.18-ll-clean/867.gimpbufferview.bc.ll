; ModuleID = './app/widgets/gimpbufferview.bc'
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
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpBuffer = type { %struct._GimpViewable, %struct._TileManager*, i32, i32 }
%struct._TileManager = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpUIManager = type { %struct._GtkUIManager, i8*, %struct._Gimp*, %struct._GList* }
%struct._GtkUIManager = type { %struct._GObject, %struct._GtkUIManagerPrivate* }
%struct._GtkUIManagerPrivate = type opaque
%struct._GimpBufferViewClass = type { %struct._GimpContainerEditorClass }
%struct._GimpContainerEditorClass = type { %struct._GtkBoxClass, void (%struct._GimpContainerEditor*, %struct._GimpViewable*)*, void (%struct._GimpContainerEditor*, %struct._GimpViewable*)*, void (%struct._GimpContainerEditor*, %struct._GimpViewable*)* }
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
%struct._GimpContainerEditor = type { %struct._GtkBox, %struct._GimpContainerView*, %struct._GimpContainerEditorPrivate* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpContainerView = type opaque
%struct._GimpContainerEditorPrivate = type opaque
%struct._GimpBufferView = type { %struct._GimpContainerEditor, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GimpMenuFactory = type opaque
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GimpEditor = type { %struct._GtkBox, %struct._GimpEditorPrivate* }
%struct._GimpEditorPrivate = type opaque
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GimpView = type { %struct._GtkWidget, %struct._GdkDrawable*, %struct._GimpViewable*, %struct._GimpViewRenderer*, i8, i32 }
%struct._GimpViewRenderer = type { %struct._GObject, %struct._GimpContext*, i64, %struct._GimpViewable*, i32, i32, i32, i8, i32, %struct._GimpRGB, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GdkPixbuf*, i8*, i32, i32, i32 }
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GdkPixbuf = type opaque
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GtkLabelSelectionInfo = type opaque

@gimp_buffer_view_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"GimpBufferView\00", align 1
@gimp_buffer_view_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpDockedInterface*)* @gimp_buffer_view_docked_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_buffer_view_new = private unnamed_addr constant [21 x i8] c"gimp_buffer_view_new\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"GIMP_IS_CONTAINER (container)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"view_size > 0 && view_size <= GIMP_VIEWABLE_MAX_PREVIEW_SIZE\00", align 1
@.str.5 = private unnamed_addr constant [74 x i8] c"view_border_width >= 0 && view_border_width <= GIMP_VIEW_MAX_BORDER_WIDTH\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"view-type\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"container\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"view-size\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"view-border-width\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"menu-factory\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"menu-identifier\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"<Buffers>\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"ui-path\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"/buffers-popup\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"notify::view-size\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"notify::view-border-width\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"(None)\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"buffer-changed\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"buffers\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"buffers-paste\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"buffers-paste-into\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"buffers-paste-as-new\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"buffers-delete\00", align 1
@gimp_buffer_view_parent_class = internal global i8* null, align 8
@GimpBufferView_private_offset = internal global i32 0, align 4
@parent_docked_iface = internal global %struct._GimpDockedInterface* null, align 8

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_buffer_view_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_buffer_view_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_buffer_view_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_container_editor_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 848, void (i8*, i8*)* bitcast (void (i8*)* @gimp_buffer_view_class_intern_init to void (i8*, i8*)*), i32 192, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpBufferView*)* @gimp_buffer_view_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_docked_interface_get_type() #6
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_buffer_view_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_buffer_view_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_buffer_view_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_editor_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_buffer_view_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_buffer_view_parent_class, align 8
  %1 = load i32, i32* @GimpBufferView_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpBufferView_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpBufferViewClass*
  call void @gimp_buffer_view_class_init(%struct._GimpBufferViewClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_buffer_view_init(%struct._GimpBufferView* %view) #3 {
entry:
  %view.addr = alloca %struct._GimpBufferView*, align 8
  store %struct._GimpBufferView* %view, %struct._GimpBufferView** %view.addr, align 8
  %0 = load %struct._GimpBufferView*, %struct._GimpBufferView** %view.addr, align 8
  %paste_button = getelementptr inbounds %struct._GimpBufferView, %struct._GimpBufferView* %0, i32 0, i32 3
  store %struct._GtkWidget* null, %struct._GtkWidget** %paste_button, align 8
  %1 = load %struct._GimpBufferView*, %struct._GimpBufferView** %view.addr, align 8
  %paste_into_button = getelementptr inbounds %struct._GimpBufferView, %struct._GimpBufferView* %1, i32 0, i32 4
  store %struct._GtkWidget* null, %struct._GtkWidget** %paste_into_button, align 8
  %2 = load %struct._GimpBufferView*, %struct._GimpBufferView** %view.addr, align 8
  %paste_as_new_button = getelementptr inbounds %struct._GimpBufferView, %struct._GimpBufferView* %2, i32 0, i32 5
  store %struct._GtkWidget* null, %struct._GtkWidget** %paste_as_new_button, align 8
  %3 = load %struct._GimpBufferView*, %struct._GimpBufferView** %view.addr, align 8
  %delete_button = getelementptr inbounds %struct._GimpBufferView, %struct._GimpBufferView* %3, i32 0, i32 6
  store %struct._GtkWidget* null, %struct._GtkWidget** %delete_button, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_buffer_view_docked_iface_init(%struct._GimpDockedInterface* %iface) #3 {
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
  store void (%struct._GimpDocked*, %struct._GimpContext*)* @gimp_buffer_view_set_context, void (%struct._GimpDocked*, %struct._GimpContext*)** %set_context, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_docked_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_buffer_view_new(i32 %view_type, %struct._GimpContainer* %container, %struct._GimpContext* %context, i32 %view_size, i32 %view_border_width, %struct._GimpMenuFactory* %menu_factory) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %view_type.addr = alloca i32, align 4
  %container.addr = alloca %struct._GimpContainer*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %view_size.addr = alloca i32, align 4
  %view_border_width.addr = alloca i32, align 4
  %menu_factory.addr = alloca %struct._GimpMenuFactory*, align 8
  %buffer_view = alloca %struct._GimpBufferView*, align 8
  %editor = alloca %struct._GimpContainerEditor*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store i32 %view_type, i32* %view_type.addr, align 4
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  store i32 %view_border_width, i32* %view_border_width.addr, align 4
  store %struct._GimpMenuFactory* %menu_factory, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %1 = bitcast %struct._GimpContainer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_buffer_view_new, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_context_get_type() #6
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_buffer_view_new, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load i32, i32* %view_size.addr, align 4
  %cmp40 = icmp sgt i32 %26, 0
  br i1 %cmp40, label %land.lhs.true.41, label %if.else.44

land.lhs.true.41:                                 ; preds = %do.body.39
  %27 = load i32, i32* %view_size.addr, align 4
  %cmp42 = icmp sle i32 %27, 2048
  br i1 %cmp42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %land.lhs.true.41
  br label %if.end.45

if.else.44:                                       ; preds = %land.lhs.true.41, %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_buffer_view_new, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.45:                                        ; preds = %if.then.43
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  br label %do.body.47

do.body.47:                                       ; preds = %do.end.46
  %28 = load i32, i32* %view_border_width.addr, align 4
  %cmp48 = icmp sge i32 %28, 0
  br i1 %cmp48, label %land.lhs.true.49, label %if.else.52

land.lhs.true.49:                                 ; preds = %do.body.47
  %29 = load i32, i32* %view_border_width.addr, align 4
  %cmp50 = icmp sle i32 %29, 16
  br i1 %cmp50, label %if.then.51, label %if.else.52

if.then.51:                                       ; preds = %land.lhs.true.49
  br label %if.end.53

if.else.52:                                       ; preds = %land.lhs.true.49, %do.body.47
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_buffer_view_new, i32 0, i32 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.53:                                        ; preds = %if.then.51
  br label %do.end.54

do.end.54:                                        ; preds = %if.end.53
  %call55 = call i64 @gimp_buffer_view_get_type() #6
  %30 = load i32, i32* %view_type.addr, align 4
  %31 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %32 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %33 = load i32, i32* %view_size.addr, align 4
  %34 = load i32, i32* %view_border_width.addr, align 4
  %35 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  %call56 = call i8* (i64, i8*, ...) @g_object_new(i64 %call55, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i32 %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), %struct._GimpContainer* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), %struct._GimpContext* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i32 %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), i32 %34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), %struct._GimpMenuFactory* %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* null)
  %36 = bitcast i8* %call56 to %struct._GimpBufferView*
  store %struct._GimpBufferView* %36, %struct._GimpBufferView** %buffer_view, align 8
  %37 = load %struct._GimpBufferView*, %struct._GimpBufferView** %buffer_view, align 8
  %38 = bitcast %struct._GimpBufferView* %37 to %struct._GTypeInstance*
  %call57 = call i64 @gimp_container_editor_get_type() #6
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call57)
  %39 = bitcast %struct._GTypeInstance* %call58 to %struct._GimpContainerEditor*
  store %struct._GimpContainerEditor* %39, %struct._GimpContainerEditor** %editor, align 8
  %call59 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call59, %struct._GtkWidget** %frame, align 8
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call60 = call i64 @gtk_frame_get_type() #6
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call60)
  %42 = bitcast %struct._GTypeInstance* %call61 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %42, i32 1)
  %43 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %44 = bitcast %struct._GimpContainerEditor* %43 to %struct._GTypeInstance*
  %call62 = call i64 @gtk_box_get_type() #6
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call62)
  %45 = bitcast %struct._GTypeInstance* %call63 to %struct._GtkBox*
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %45, %struct._GtkWidget* %46, i32 0, i32 0, i32 0)
  %47 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %48 = bitcast %struct._GimpContainerEditor* %47 to %struct._GTypeInstance*
  %call64 = call i64 @gtk_box_get_type() #6
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call64)
  %49 = bitcast %struct._GTypeInstance* %call65 to %struct._GtkBox*
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_reorder_child(%struct._GtkBox* %49, %struct._GtkWidget* %50, i32 0)
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %51)
  %call66 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 2)
  store %struct._GtkWidget* %call66, %struct._GtkWidget** %hbox, align 8
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %53 = bitcast %struct._GtkWidget* %52 to %struct._GTypeInstance*
  %call67 = call i64 @gtk_container_get_type() #6
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call67)
  %54 = bitcast %struct._GTypeInstance* %call68 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %54, i32 2)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %56 = bitcast %struct._GtkWidget* %55 to %struct._GTypeInstance*
  %call69 = call i64 @gtk_container_get_type() #6
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call69)
  %57 = bitcast %struct._GTypeInstance* %call70 to %struct._GtkContainer*
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %57, %struct._GtkWidget* %58)
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %59)
  %call71 = call i64 @gimp_view_get_type() #6
  %call72 = call i64 @gimp_buffer_get_type() #6
  %60 = load i32, i32* %view_size.addr, align 4
  %61 = load i32, i32* %view_size.addr, align 4
  %62 = load i32, i32* %view_border_width.addr, align 4
  %call73 = call %struct._GtkWidget* @gimp_view_new_full_by_types(%struct._GimpContext* null, i64 %call71, i64 %call72, i32 %60, i32 %61, i32 %62, i32 0, i32 0, i32 1)
  %63 = load %struct._GimpBufferView*, %struct._GimpBufferView** %buffer_view, align 8
  %global_view = getelementptr inbounds %struct._GimpBufferView, %struct._GimpBufferView* %63, i32 0, i32 1
  store %struct._GtkWidget* %call73, %struct._GtkWidget** %global_view, align 8
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %65 = bitcast %struct._GtkWidget* %64 to %struct._GTypeInstance*
  %call74 = call i64 @gtk_box_get_type() #6
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 %call74)
  %66 = bitcast %struct._GTypeInstance* %call75 to %struct._GtkBox*
  %67 = load %struct._GimpBufferView*, %struct._GimpBufferView** %buffer_view, align 8
  %global_view76 = getelementptr inbounds %struct._GimpBufferView, %struct._GimpBufferView* %67, i32 0, i32 1
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %global_view76, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %66, %struct._GtkWidget* %68, i32 0, i32 0, i32 0)
  %69 = load %struct._GimpBufferView*, %struct._GimpBufferView** %buffer_view, align 8
  %global_view77 = getelementptr inbounds %struct._GimpBufferView, %struct._GimpBufferView* %69, i32 0, i32 1
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %global_view77, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %70)
  %71 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %71, i32 0, i32 1
  %72 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %73 = bitcast %struct._GimpContainerView* %72 to i8*
  %74 = load %struct._GimpBufferView*, %struct._GimpBufferView** %buffer_view, align 8
  %75 = bitcast %struct._GimpBufferView* %74 to i8*
  %call78 = call i64 @g_signal_connect_object(i8* %73, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainerView*, %struct._GParamSpec*, %struct._GimpBufferView*)* @gimp_buffer_view_view_notify to void ()*), i8* %75, i32 0)
  %76 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view79 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %76, i32 0, i32 1
  %77 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view79, align 8
  %78 = bitcast %struct._GimpContainerView* %77 to i8*
  %79 = load %struct._GimpBufferView*, %struct._GimpBufferView** %buffer_view, align 8
  %80 = bitcast %struct._GimpBufferView* %79 to i8*
  %call80 = call i64 @g_signal_connect_object(i8* %78, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainerView*, %struct._GParamSpec*, %struct._GimpBufferView*)* @gimp_buffer_view_view_notify to void ()*), i8* %80, i32 0)
  %call81 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0)) #8
  %call82 = call %struct._GtkWidget* @gtk_label_new(i8* %call81)
  %81 = load %struct._GimpBufferView*, %struct._GimpBufferView** %buffer_view, align 8
  %global_label = getelementptr inbounds %struct._GimpBufferView, %struct._GimpBufferView* %81, i32 0, i32 2
  store %struct._GtkWidget* %call82, %struct._GtkWidget** %global_label, align 8
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %83 = bitcast %struct._GtkWidget* %82 to %struct._GTypeInstance*
  %call83 = call i64 @gtk_box_get_type() #6
  %call84 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %83, i64 %call83)
  %84 = bitcast %struct._GTypeInstance* %call84 to %struct._GtkBox*
  %85 = load %struct._GimpBufferView*, %struct._GimpBufferView** %buffer_view, align 8
  %global_label85 = getelementptr inbounds %struct._GimpBufferView, %struct._GimpBufferView* %85, i32 0, i32 2
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %global_label85, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %84, %struct._GtkWidget* %86, i32 0, i32 0, i32 0)
  %87 = load %struct._GimpBufferView*, %struct._GimpBufferView** %buffer_view, align 8
  %global_label86 = getelementptr inbounds %struct._GimpBufferView, %struct._GimpBufferView* %87, i32 0, i32 2
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %global_label86, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %88)
  %89 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %89, i32 0, i32 1
  %90 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %91 = bitcast %struct._Gimp* %90 to i8*
  %92 = load %struct._GimpBufferView*, %struct._GimpBufferView** %buffer_view, align 8
  %93 = bitcast %struct._GimpBufferView* %92 to %struct._GTypeInstance*
  %call87 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %93, i64 80)
  %94 = bitcast %struct._GTypeInstance* %call87 to %struct._GObject*
  %95 = bitcast %struct._GObject* %94 to i8*
  %call88 = call i64 @g_signal_connect_object(i8* %91, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), void ()* bitcast (void (%struct._Gimp*, %struct._GimpBufferView*)* @gimp_buffer_view_buffer_changed to void ()*), i8* %95, i32 0)
  %96 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp89 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %96, i32 0, i32 1
  %97 = load %struct._Gimp*, %struct._Gimp** %gimp89, align 8
  %98 = load %struct._GimpBufferView*, %struct._GimpBufferView** %buffer_view, align 8
  call void @gimp_buffer_view_buffer_changed(%struct._Gimp* %97, %struct._GimpBufferView* %98)
  %99 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view90 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %99, i32 0, i32 1
  %100 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view90, align 8
  %101 = bitcast %struct._GimpContainerView* %100 to %struct._GTypeInstance*
  %call91 = call i64 @gimp_editor_get_type() #6
  %call92 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %101, i64 %call91)
  %102 = bitcast %struct._GTypeInstance* %call92 to %struct._GimpEditor*
  %call93 = call %struct._GtkWidget* (%struct._GimpEditor*, i8*, i8*, ...) @gimp_editor_add_action_button(%struct._GimpEditor* %102, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0), i8* null)
  %103 = load %struct._GimpBufferView*, %struct._GimpBufferView** %buffer_view, align 8
  %paste_button = getelementptr inbounds %struct._GimpBufferView, %struct._GimpBufferView* %103, i32 0, i32 3
  store %struct._GtkWidget* %call93, %struct._GtkWidget** %paste_button, align 8
  %104 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view94 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %104, i32 0, i32 1
  %105 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view94, align 8
  %106 = bitcast %struct._GimpContainerView* %105 to %struct._GTypeInstance*
  %call95 = call i64 @gimp_editor_get_type() #6
  %call96 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %106, i64 %call95)
  %107 = bitcast %struct._GTypeInstance* %call96 to %struct._GimpEditor*
  %call97 = call %struct._GtkWidget* (%struct._GimpEditor*, i8*, i8*, ...) @gimp_editor_add_action_button(%struct._GimpEditor* %107, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i32 0, i32 0), i8* null)
  %108 = load %struct._GimpBufferView*, %struct._GimpBufferView** %buffer_view, align 8
  %paste_into_button = getelementptr inbounds %struct._GimpBufferView, %struct._GimpBufferView* %108, i32 0, i32 4
  store %struct._GtkWidget* %call97, %struct._GtkWidget** %paste_into_button, align 8
  %109 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view98 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %109, i32 0, i32 1
  %110 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view98, align 8
  %111 = bitcast %struct._GimpContainerView* %110 to %struct._GTypeInstance*
  %call99 = call i64 @gimp_editor_get_type() #6
  %call100 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %111, i64 %call99)
  %112 = bitcast %struct._GTypeInstance* %call100 to %struct._GimpEditor*
  %call101 = call %struct._GtkWidget* (%struct._GimpEditor*, i8*, i8*, ...) @gimp_editor_add_action_button(%struct._GimpEditor* %112, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i32 0, i32 0), i8* null)
  %113 = load %struct._GimpBufferView*, %struct._GimpBufferView** %buffer_view, align 8
  %paste_as_new_button = getelementptr inbounds %struct._GimpBufferView, %struct._GimpBufferView* %113, i32 0, i32 5
  store %struct._GtkWidget* %call101, %struct._GtkWidget** %paste_as_new_button, align 8
  %114 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view102 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %114, i32 0, i32 1
  %115 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view102, align 8
  %116 = bitcast %struct._GimpContainerView* %115 to %struct._GTypeInstance*
  %call103 = call i64 @gimp_editor_get_type() #6
  %call104 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %116, i64 %call103)
  %117 = bitcast %struct._GTypeInstance* %call104 to %struct._GimpEditor*
  %call105 = call %struct._GtkWidget* (%struct._GimpEditor*, i8*, i8*, ...) @gimp_editor_add_action_button(%struct._GimpEditor* %117, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0), i8* null)
  %118 = load %struct._GimpBufferView*, %struct._GimpBufferView** %buffer_view, align 8
  %delete_button = getelementptr inbounds %struct._GimpBufferView, %struct._GimpBufferView* %118, i32 0, i32 6
  store %struct._GtkWidget* %call105, %struct._GtkWidget** %delete_button, align 8
  %119 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view106 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %119, i32 0, i32 1
  %120 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view106, align 8
  %121 = load %struct._GimpBufferView*, %struct._GimpBufferView** %buffer_view, align 8
  %paste_button107 = getelementptr inbounds %struct._GimpBufferView, %struct._GimpBufferView* %121, i32 0, i32 3
  %122 = load %struct._GtkWidget*, %struct._GtkWidget** %paste_button107, align 8
  %123 = bitcast %struct._GtkWidget* %122 to %struct._GTypeInstance*
  %call108 = call i64 @gtk_button_get_type() #6
  %call109 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %123, i64 %call108)
  %124 = bitcast %struct._GTypeInstance* %call109 to %struct._GtkButton*
  %call110 = call i64 @gimp_buffer_get_type() #6
  call void @gimp_container_view_enable_dnd(%struct._GimpContainerView* %120, %struct._GtkButton* %124, i64 %call110)
  %125 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view111 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %125, i32 0, i32 1
  %126 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view111, align 8
  %127 = load %struct._GimpBufferView*, %struct._GimpBufferView** %buffer_view, align 8
  %paste_into_button112 = getelementptr inbounds %struct._GimpBufferView, %struct._GimpBufferView* %127, i32 0, i32 4
  %128 = load %struct._GtkWidget*, %struct._GtkWidget** %paste_into_button112, align 8
  %129 = bitcast %struct._GtkWidget* %128 to %struct._GTypeInstance*
  %call113 = call i64 @gtk_button_get_type() #6
  %call114 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %129, i64 %call113)
  %130 = bitcast %struct._GTypeInstance* %call114 to %struct._GtkButton*
  %call115 = call i64 @gimp_buffer_get_type() #6
  call void @gimp_container_view_enable_dnd(%struct._GimpContainerView* %126, %struct._GtkButton* %130, i64 %call115)
  %131 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view116 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %131, i32 0, i32 1
  %132 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view116, align 8
  %133 = load %struct._GimpBufferView*, %struct._GimpBufferView** %buffer_view, align 8
  %paste_as_new_button117 = getelementptr inbounds %struct._GimpBufferView, %struct._GimpBufferView* %133, i32 0, i32 5
  %134 = load %struct._GtkWidget*, %struct._GtkWidget** %paste_as_new_button117, align 8
  %135 = bitcast %struct._GtkWidget* %134 to %struct._GTypeInstance*
  %call118 = call i64 @gtk_button_get_type() #6
  %call119 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %135, i64 %call118)
  %136 = bitcast %struct._GTypeInstance* %call119 to %struct._GtkButton*
  %call120 = call i64 @gimp_buffer_get_type() #6
  call void @gimp_container_view_enable_dnd(%struct._GimpContainerView* %132, %struct._GtkButton* %136, i64 %call120)
  %137 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view121 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %137, i32 0, i32 1
  %138 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view121, align 8
  %139 = load %struct._GimpBufferView*, %struct._GimpBufferView** %buffer_view, align 8
  %delete_button122 = getelementptr inbounds %struct._GimpBufferView, %struct._GimpBufferView* %139, i32 0, i32 6
  %140 = load %struct._GtkWidget*, %struct._GtkWidget** %delete_button122, align 8
  %141 = bitcast %struct._GtkWidget* %140 to %struct._GTypeInstance*
  %call123 = call i64 @gtk_button_get_type() #6
  %call124 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %141, i64 %call123)
  %142 = bitcast %struct._GTypeInstance* %call124 to %struct._GtkButton*
  %call125 = call i64 @gimp_buffer_get_type() #6
  call void @gimp_container_view_enable_dnd(%struct._GimpContainerView* %138, %struct._GtkButton* %142, i64 %call125)
  %143 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view126 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %143, i32 0, i32 1
  %144 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view126, align 8
  %145 = bitcast %struct._GimpContainerView* %144 to %struct._GTypeInstance*
  %call127 = call i64 @gimp_editor_get_type() #6
  %call128 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %145, i64 %call127)
  %146 = bitcast %struct._GTypeInstance* %call128 to %struct._GimpEditor*
  %call129 = call %struct._GimpUIManager* @gimp_editor_get_ui_manager(%struct._GimpEditor* %146)
  %147 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %148 = bitcast %struct._GimpContainerEditor* %147 to i8*
  call void @gimp_ui_manager_update(%struct._GimpUIManager* %call129, i8* %148)
  %149 = load %struct._GimpBufferView*, %struct._GimpBufferView** %buffer_view, align 8
  %150 = bitcast %struct._GimpBufferView* %149 to %struct._GTypeInstance*
  %call130 = call i64 @gtk_widget_get_type() #6
  %call131 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %150, i64 %call130)
  %151 = bitcast %struct._GTypeInstance* %call131 to %struct._GtkWidget*
  store %struct._GtkWidget* %151, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end.54, %if.else.52, %if.else.44, %if.else.36, %if.else.9
  %152 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %152
}

; Function Attrs: nounwind readnone
declare i64 @gimp_container_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

declare i8* @g_object_new(i64, i8*, ...) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare %struct._GtkWidget* @gtk_frame_new(i8*) #1

declare void @gtk_frame_set_shadow_type(%struct._GtkFrame*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #2

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_box_reorder_child(%struct._GtkBox*, %struct._GtkWidget*, i32) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_view_new_full_by_types(%struct._GimpContext*, i64, i64, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_view_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_buffer_get_type() #2

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_buffer_view_view_notify(%struct._GimpContainerView* %container_view, %struct._GParamSpec* %pspec, %struct._GimpBufferView* %buffer_view) #3 {
entry:
  %container_view.addr = alloca %struct._GimpContainerView*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %buffer_view.addr = alloca %struct._GimpBufferView*, align 8
  %view = alloca %struct._GimpView*, align 8
  %view_size = alloca i32, align 4
  %view_border_width = alloca i32, align 4
  store %struct._GimpContainerView* %container_view, %struct._GimpContainerView** %container_view.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpBufferView* %buffer_view, %struct._GimpBufferView** %buffer_view.addr, align 8
  %0 = load %struct._GimpBufferView*, %struct._GimpBufferView** %buffer_view.addr, align 8
  %global_view = getelementptr inbounds %struct._GimpBufferView, %struct._GimpBufferView* %0, i32 0, i32 1
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %global_view, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpView*
  store %struct._GimpView* %3, %struct._GimpView** %view, align 8
  %4 = load %struct._GimpContainerView*, %struct._GimpContainerView** %container_view.addr, align 8
  %call2 = call i32 @gimp_container_view_get_view_size(%struct._GimpContainerView* %4, i32* %view_border_width)
  store i32 %call2, i32* %view_size, align 4
  %5 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %renderer = getelementptr inbounds %struct._GimpView, %struct._GimpView* %5, i32 0, i32 3
  %6 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %7 = load i32, i32* %view_size, align 4
  %8 = load i32, i32* %view_size, align 4
  %9 = load i32, i32* %view_border_width, align 4
  call void @gimp_view_renderer_set_size_full(%struct._GimpViewRenderer* %6, i32 %7, i32 %8, i32 %9)
  ret void
}

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

; Function Attrs: nounwind uwtable
define internal void @gimp_buffer_view_buffer_changed(%struct._Gimp* %gimp, %struct._GimpBufferView* %buffer_view) #3 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %buffer_view.addr = alloca %struct._GimpBufferView*, align 8
  %desc = alloca i8*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpBufferView* %buffer_view, %struct._GimpBufferView** %buffer_view.addr, align 8
  %0 = load %struct._GimpBufferView*, %struct._GimpBufferView** %buffer_view.addr, align 8
  %global_view = getelementptr inbounds %struct._GimpBufferView, %struct._GimpBufferView* %0, i32 0, i32 1
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %global_view, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpView*
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %global_buffer = getelementptr inbounds %struct._Gimp, %struct._Gimp* %4, i32 0, i32 34
  %5 = load %struct._GimpBuffer*, %struct._GimpBuffer** %global_buffer, align 8
  %6 = bitcast %struct._GimpBuffer* %5 to %struct._GimpViewable*
  call void @gimp_view_set_viewable(%struct._GimpView* %3, %struct._GimpViewable* %6)
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %global_buffer2 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %7, i32 0, i32 34
  %8 = load %struct._GimpBuffer*, %struct._GimpBuffer** %global_buffer2, align 8
  %tobool = icmp ne %struct._GimpBuffer* %8, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %global_buffer3 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %9, i32 0, i32 34
  %10 = load %struct._GimpBuffer*, %struct._GimpBuffer** %global_buffer3, align 8
  %11 = bitcast %struct._GimpBuffer* %10 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_viewable_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call4)
  %12 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpViewable*
  %call6 = call i8* @gimp_viewable_get_description(%struct._GimpViewable* %12, i8** null)
  store i8* %call6, i8** %desc, align 8
  %13 = load %struct._GimpBufferView*, %struct._GimpBufferView** %buffer_view.addr, align 8
  %global_label = getelementptr inbounds %struct._GimpBufferView, %struct._GimpBufferView* %13, i32 0, i32 2
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %global_label, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_label_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call7)
  %16 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkLabel*
  %17 = load i8*, i8** %desc, align 8
  call void @gtk_label_set_text(%struct._GtkLabel* %16, i8* %17)
  %18 = load i8*, i8** %desc, align 8
  call void @g_free(i8* %18)
  br label %if.end

if.else:                                          ; preds = %entry
  %19 = load %struct._GimpBufferView*, %struct._GimpBufferView** %buffer_view.addr, align 8
  %global_label9 = getelementptr inbounds %struct._GimpBufferView, %struct._GimpBufferView* %19, i32 0, i32 2
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %global_label9, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_label_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call10)
  %22 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkLabel*
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0)) #8
  call void @gtk_label_set_text(%struct._GtkLabel* %22, i8* %call12)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare %struct._GtkWidget* @gimp_editor_add_action_button(%struct._GimpEditor*, i8*, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_editor_get_type() #2

declare void @gimp_container_view_enable_dnd(%struct._GimpContainerView*, %struct._GtkButton*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_button_get_type() #2

declare void @gimp_ui_manager_update(%struct._GimpUIManager*, i8*) #1

declare %struct._GimpUIManager* @gimp_editor_get_ui_manager(%struct._GimpEditor*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_buffer_view_class_init(%struct._GimpBufferViewClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpBufferViewClass*, align 8
  %editor_class = alloca %struct._GimpContainerEditorClass*, align 8
  store %struct._GimpBufferViewClass* %klass, %struct._GimpBufferViewClass** %klass.addr, align 8
  %0 = load %struct._GimpBufferViewClass*, %struct._GimpBufferViewClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpBufferViewClass* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_container_editor_get_type() #6
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpContainerEditorClass*
  store %struct._GimpContainerEditorClass* %2, %struct._GimpContainerEditorClass** %editor_class, align 8
  %3 = load %struct._GimpContainerEditorClass*, %struct._GimpContainerEditorClass** %editor_class, align 8
  %activate_item = getelementptr inbounds %struct._GimpContainerEditorClass, %struct._GimpContainerEditorClass* %3, i32 0, i32 2
  store void (%struct._GimpContainerEditor*, %struct._GimpViewable*)* @gimp_buffer_view_activate_item, void (%struct._GimpContainerEditor*, %struct._GimpViewable*)** %activate_item, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_buffer_view_activate_item(%struct._GimpContainerEditor* %editor, %struct._GimpViewable* %viewable) #3 {
entry:
  %editor.addr = alloca %struct._GimpContainerEditor*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %view = alloca %struct._GimpBufferView*, align 8
  %container = alloca %struct._GimpContainer*, align 8
  store %struct._GimpContainerEditor* %editor, %struct._GimpContainerEditor** %editor.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  %0 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpContainerEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_buffer_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBufferView*
  store %struct._GimpBufferView* %2, %struct._GimpBufferView** %view, align 8
  %3 = load i8*, i8** @gimp_buffer_view_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call i64 @gimp_container_editor_get_type() #6
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GimpContainerEditorClass*
  %activate_item = getelementptr inbounds %struct._GimpContainerEditorClass, %struct._GimpContainerEditorClass* %5, i32 0, i32 2
  %6 = load void (%struct._GimpContainerEditor*, %struct._GimpViewable*)*, void (%struct._GimpContainerEditor*, %struct._GimpViewable*)** %activate_item, align 8
  %tobool = icmp ne void (%struct._GimpContainerEditor*, %struct._GimpViewable*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_buffer_view_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call4 = call i64 @gimp_container_editor_get_type() #6
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 %call4)
  %9 = bitcast %struct._GTypeClass* %call5 to %struct._GimpContainerEditorClass*
  %activate_item6 = getelementptr inbounds %struct._GimpContainerEditorClass, %struct._GimpContainerEditorClass* %9, i32 0, i32 2
  %10 = load void (%struct._GimpContainerEditor*, %struct._GimpViewable*)*, void (%struct._GimpContainerEditor*, %struct._GimpViewable*)** %activate_item6, align 8
  %11 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor.addr, align 8
  %12 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  call void %10(%struct._GimpContainerEditor* %11, %struct._GimpViewable* %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor.addr, align 8
  %view7 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %13, i32 0, i32 1
  %14 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view7, align 8
  %call8 = call %struct._GimpContainer* @gimp_container_view_get_container(%struct._GimpContainerView* %14)
  store %struct._GimpContainer* %call8, %struct._GimpContainer** %container, align 8
  %15 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %tobool9 = icmp ne %struct._GimpViewable* %15, null
  br i1 %tobool9, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %if.end
  %16 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %17 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %18 = bitcast %struct._GimpViewable* %17 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_object_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call10)
  %19 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpObject*
  %call12 = call i32 @gimp_container_have(%struct._GimpContainer* %16, %struct._GimpObject* %19)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %land.lhs.true
  %20 = load %struct._GimpBufferView*, %struct._GimpBufferView** %view, align 8
  %paste_button = getelementptr inbounds %struct._GimpBufferView, %struct._GimpBufferView* %20, i32 0, i32 3
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %paste_button, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_button_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call15)
  %23 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkButton*
  call void @gtk_button_clicked(%struct._GtkButton* %23)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %land.lhs.true, %if.end
  ret void
}

declare %struct._GimpContainer* @gimp_container_view_get_container(%struct._GimpContainerView*) #1

declare i32 @gimp_container_have(%struct._GimpContainer*, %struct._GimpObject*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare void @gtk_button_clicked(%struct._GtkButton*) #1

declare i8* @g_type_interface_peek_parent(i8*) #1

declare i8* @g_type_default_interface_peek(i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_buffer_view_set_context(%struct._GimpDocked* %docked, %struct._GimpContext* %context) #3 {
entry:
  %docked.addr = alloca %struct._GimpDocked*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %view = alloca %struct._GimpBufferView*, align 8
  store %struct._GimpDocked* %docked, %struct._GimpDocked** %docked.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpDocked*, %struct._GimpDocked** %docked.addr, align 8
  %1 = bitcast %struct._GimpDocked* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_buffer_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBufferView*
  store %struct._GimpBufferView* %2, %struct._GimpBufferView** %view, align 8
  %3 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** @parent_docked_iface, align 8
  %set_context = getelementptr inbounds %struct._GimpDockedInterface, %struct._GimpDockedInterface* %3, i32 0, i32 8
  %4 = load void (%struct._GimpDocked*, %struct._GimpContext*)*, void (%struct._GimpDocked*, %struct._GimpContext*)** %set_context, align 8
  %5 = load %struct._GimpDocked*, %struct._GimpDocked** %docked.addr, align 8
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void %4(%struct._GimpDocked* %5, %struct._GimpContext* %6)
  %7 = load %struct._GimpBufferView*, %struct._GimpBufferView** %view, align 8
  %global_view = getelementptr inbounds %struct._GimpBufferView, %struct._GimpBufferView* %7, i32 0, i32 1
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %global_view, align 8
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

declare void @gimp_view_set_viewable(%struct._GimpView*, %struct._GimpViewable*) #1

declare i8* @gimp_viewable_get_description(%struct._GimpViewable*, i8**) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

declare void @gtk_label_set_text(%struct._GtkLabel*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #2

declare void @g_free(i8*) #1

declare i32 @gimp_container_view_get_view_size(%struct._GimpContainerView*, i32*) #1

declare void @gimp_view_renderer_set_size_full(%struct._GimpViewRenderer*, i32, i32, i32) #1

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
