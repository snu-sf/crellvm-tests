; ModuleID = './app/widgets/gimpselectioneditor.bc'
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
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpToolInfo = type { %struct._GimpViewable, %struct._Gimp*, i64, i64, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GimpToolOptions*, %struct._GimpPaintInfo*, %struct._GimpContainer* }
%struct._GimpToolOptions = type { %struct._GimpContext, %struct._GimpToolInfo* }
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
%struct._GimpSelectionEditorClass = type { %struct._GimpImageEditorClass }
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
%struct._GimpSelectionEditor = type { %struct._GimpImageEditor, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GimpView = type { %struct._GtkWidget, %struct._GdkDrawable*, %struct._GimpViewable*, %struct._GimpViewRenderer*, i8, i32 }
%struct._GimpViewRenderer = type { %struct._GObject, %struct._GimpContext*, i64, %struct._GimpViewable*, i32, i32, i32, i8, i32, %struct._GimpRGB, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GdkPixbuf*, i8*, i32, i32, i32 }
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GdkPixbuf = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GimpMenuFactory = type { %struct._GimpObject, %struct._GimpMenuFactoryPrivate* }
%struct._GimpMenuFactoryPrivate = type opaque
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpDrawablePrivate = type opaque
%struct._GeglNode = type opaque
%struct._BoundSeg = type opaque
%struct._GimpSelectionOptions = type { %struct._GimpToolOptions, i32, i32, i32, double, %struct._GtkWidget* }
%struct._GimpRegionSelectOptions = type { %struct._GimpSelectionOptions, i32, i32, double, i32 }

@gimp_selection_editor_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"GimpSelectionEditor\00", align 1
@gimp_selection_editor_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpDockedInterface*)* @gimp_selection_editor_docked_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_selection_editor_new = private unnamed_addr constant [26 x i8] c"gimp_selection_editor_new\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"GIMP_IS_MENU_FACTORY (menu_factory)\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"menu-factory\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"menu-identifier\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"<Selection>\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"ui-path\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"/selection-popup\00", align 1
@gimp_selection_editor_parent_class = internal global i8* null, align 8
@GimpSelectionEditor_private_offset = internal global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"select-all\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"select-none\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"select-invert\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"select-save\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"vectors\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"vectors-selection-to-vectors\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"vectors-selection-to-vectors-advanced\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"select-stroke\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"select-stroke-last-values\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"mask-changed\00", align 1
@parent_docked_iface = internal global %struct._GimpDockedInterface* null, align 8
@.str.19 = private unnamed_addr constant [13 x i8] c"gimp-texture\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"button-press-event\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"gimp-by-color-select-tool\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_selection_editor_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_selection_editor_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_selection_editor_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_image_editor_get_type() #5
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 832, void (i8*, i8*)* bitcast (void (i8*)* @gimp_selection_editor_class_intern_init to void (i8*, i8*)*), i32 208, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpSelectionEditor*)* @gimp_selection_editor_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_docked_interface_get_type() #5
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_selection_editor_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_selection_editor_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_selection_editor_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_editor_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_selection_editor_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_selection_editor_parent_class, align 8
  %1 = load i32, i32* @GimpSelectionEditor_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpSelectionEditor_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpSelectionEditorClass*
  call void @gimp_selection_editor_class_init(%struct._GimpSelectionEditorClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_selection_editor_init(%struct._GimpSelectionEditor* %editor) #3 {
entry:
  %editor.addr = alloca %struct._GimpSelectionEditor*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  store %struct._GimpSelectionEditor* %editor, %struct._GimpSelectionEditor** %editor.addr, align 8
  %call = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %frame, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_frame_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %2, i32 1)
  %3 = load %struct._GimpSelectionEditor*, %struct._GimpSelectionEditor** %editor.addr, align 8
  %4 = bitcast %struct._GimpSelectionEditor* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_box_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkBox*
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %5, %struct._GtkWidget* %6, i32 1, i32 1, i32 0)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %7)
  %call5 = call i64 @gimp_view_get_type() #5
  %call6 = call i64 @gimp_selection_get_type() #5
  %call7 = call %struct._GtkWidget* @gimp_view_new_by_types(%struct._GimpContext* null, i64 %call5, i64 %call6, i32 96, i32 0, i32 1)
  %8 = load %struct._GimpSelectionEditor*, %struct._GimpSelectionEditor** %editor.addr, align 8
  %view = getelementptr inbounds %struct._GimpSelectionEditor, %struct._GimpSelectionEditor* %8, i32 0, i32 1
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %view, align 8
  %9 = load %struct._GimpSelectionEditor*, %struct._GimpSelectionEditor** %editor.addr, align 8
  %view8 = getelementptr inbounds %struct._GimpSelectionEditor, %struct._GimpSelectionEditor* %9, i32 0, i32 1
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %view8, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_view_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call9)
  %12 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpView*
  %renderer = getelementptr inbounds %struct._GimpView, %struct._GimpView* %12, i32 0, i32 3
  %13 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  call void @gimp_view_renderer_set_background(%struct._GimpViewRenderer* %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0))
  %14 = load %struct._GimpSelectionEditor*, %struct._GimpSelectionEditor** %editor.addr, align 8
  %view11 = getelementptr inbounds %struct._GimpSelectionEditor, %struct._GimpSelectionEditor* %14, i32 0, i32 1
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %view11, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %15, i32 96, i32 96)
  %16 = load %struct._GimpSelectionEditor*, %struct._GimpSelectionEditor** %editor.addr, align 8
  %view12 = getelementptr inbounds %struct._GimpSelectionEditor, %struct._GimpSelectionEditor* %16, i32 0, i32 1
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %view12, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_view_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call13)
  %19 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpView*
  call void @gimp_view_set_expand(%struct._GimpView* %19, i32 1)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_container_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call15)
  %22 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkContainer*
  %23 = load %struct._GimpSelectionEditor*, %struct._GimpSelectionEditor** %editor.addr, align 8
  %view17 = getelementptr inbounds %struct._GimpSelectionEditor, %struct._GimpSelectionEditor* %23, i32 0, i32 1
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %view17, align 8
  call void @gtk_container_add(%struct._GtkContainer* %22, %struct._GtkWidget* %24)
  %25 = load %struct._GimpSelectionEditor*, %struct._GimpSelectionEditor** %editor.addr, align 8
  %view18 = getelementptr inbounds %struct._GimpSelectionEditor, %struct._GimpSelectionEditor* %25, i32 0, i32 1
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %view18, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %26)
  %27 = load %struct._GimpSelectionEditor*, %struct._GimpSelectionEditor** %editor.addr, align 8
  %view19 = getelementptr inbounds %struct._GimpSelectionEditor, %struct._GimpSelectionEditor* %27, i32 0, i32 1
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %view19, align 8
  %29 = bitcast %struct._GtkWidget* %28 to i8*
  %30 = load %struct._GimpSelectionEditor*, %struct._GimpSelectionEditor** %editor.addr, align 8
  %31 = bitcast %struct._GimpSelectionEditor* %30 to i8*
  %call20 = call i64 @g_signal_connect_data(i8* %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventButton*, %struct._GimpSelectionEditor*)* @gimp_selection_view_button_press to void ()*), i8* %31, void (i8*, %struct._GClosure*)* null, i32 0)
  %32 = load %struct._GimpSelectionEditor*, %struct._GimpSelectionEditor** %editor.addr, align 8
  %view21 = getelementptr inbounds %struct._GimpSelectionEditor, %struct._GimpSelectionEditor* %32, i32 0, i32 1
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %view21, align 8
  %34 = load %struct._GimpSelectionEditor*, %struct._GimpSelectionEditor** %editor.addr, align 8
  %35 = bitcast %struct._GimpSelectionEditor* %34 to i8*
  call void @gimp_dnd_color_dest_add(%struct._GtkWidget* %33, void (%struct._GtkWidget*, i32, i32, %struct._GimpRGB*, i8*)* @gimp_selection_editor_drop_color, i8* %35)
  %36 = load %struct._GimpSelectionEditor*, %struct._GimpSelectionEditor** %editor.addr, align 8
  %37 = bitcast %struct._GimpSelectionEditor* %36 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_widget_get_type() #5
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call22)
  %38 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkWidget*
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %38, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_selection_editor_docked_iface_init(%struct._GimpDockedInterface* %iface) #3 {
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
  %call1 = call i64 @gimp_docked_interface_get_type() #5
  %call2 = call i8* @g_type_default_interface_peek(i64 %call1)
  %4 = bitcast i8* %call2 to %struct._GimpDockedInterface*
  store %struct._GimpDockedInterface* %4, %struct._GimpDockedInterface** @parent_docked_iface, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** %iface.addr, align 8
  %set_context = getelementptr inbounds %struct._GimpDockedInterface, %struct._GimpDockedInterface* %5, i32 0, i32 8
  store void (%struct._GimpDocked*, %struct._GimpContext*)* @gimp_selection_editor_set_context, void (%struct._GimpDocked*, %struct._GimpContext*)** %set_context, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_docked_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_selection_editor_new(%struct._GimpMenuFactory* %menu_factory) #3 {
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
  %call = call i64 @gimp_menu_factory_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_selection_editor_new, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_selection_editor_get_type() #5
  %13 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  %call12 = call i8* (i64, i8*, ...) @g_object_new(i64 %call11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), %struct._GimpMenuFactory* %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), i8* null)
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

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_selection_editor_class_init(%struct._GimpSelectionEditorClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpSelectionEditorClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %image_editor_class = alloca %struct._GimpImageEditorClass*, align 8
  store %struct._GimpSelectionEditorClass* %klass, %struct._GimpSelectionEditorClass** %klass.addr, align 8
  %0 = load %struct._GimpSelectionEditorClass*, %struct._GimpSelectionEditorClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpSelectionEditorClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpSelectionEditorClass*, %struct._GimpSelectionEditorClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpSelectionEditorClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_image_editor_get_type() #5
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpImageEditorClass*
  store %struct._GimpImageEditorClass* %5, %struct._GimpImageEditorClass** %image_editor_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_selection_editor_constructed, void (%struct._GObject*)** %constructed, align 8
  %7 = load %struct._GimpImageEditorClass*, %struct._GimpImageEditorClass** %image_editor_class, align 8
  %set_image = getelementptr inbounds %struct._GimpImageEditorClass, %struct._GimpImageEditorClass* %7, i32 0, i32 1
  store void (%struct._GimpImageEditor*, %struct._GimpImage*)* @gimp_selection_editor_set_image, void (%struct._GimpImageEditor*, %struct._GimpImage*)** %set_image, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_selection_editor_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %editor = alloca %struct._GimpSelectionEditor*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_selection_editor_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSelectionEditor*
  store %struct._GimpSelectionEditor* %2, %struct._GimpSelectionEditor** %editor, align 8
  %3 = load i8*, i8** @gimp_selection_editor_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 9
  %6 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_selection_editor_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 80)
  %9 = bitcast %struct._GTypeClass* %call3 to %struct._GObjectClass*
  %constructed4 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  %10 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed4, align 8
  %11 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %10(%struct._GObject* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct._GimpSelectionEditor*, %struct._GimpSelectionEditor** %editor, align 8
  %13 = bitcast %struct._GimpSelectionEditor* %12 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_editor_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call5)
  %14 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpEditor*
  %call7 = call %struct._GtkWidget* (%struct._GimpEditor*, i8*, i8*, ...) @gimp_editor_add_action_button(%struct._GimpEditor* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* null)
  %15 = load %struct._GimpSelectionEditor*, %struct._GimpSelectionEditor** %editor, align 8
  %all_button = getelementptr inbounds %struct._GimpSelectionEditor, %struct._GimpSelectionEditor* %15, i32 0, i32 2
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %all_button, align 8
  %16 = load %struct._GimpSelectionEditor*, %struct._GimpSelectionEditor** %editor, align 8
  %17 = bitcast %struct._GimpSelectionEditor* %16 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_editor_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call8)
  %18 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpEditor*
  %call10 = call %struct._GtkWidget* (%struct._GimpEditor*, i8*, i8*, ...) @gimp_editor_add_action_button(%struct._GimpEditor* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8* null)
  %19 = load %struct._GimpSelectionEditor*, %struct._GimpSelectionEditor** %editor, align 8
  %none_button = getelementptr inbounds %struct._GimpSelectionEditor, %struct._GimpSelectionEditor* %19, i32 0, i32 3
  store %struct._GtkWidget* %call10, %struct._GtkWidget** %none_button, align 8
  %20 = load %struct._GimpSelectionEditor*, %struct._GimpSelectionEditor** %editor, align 8
  %21 = bitcast %struct._GimpSelectionEditor* %20 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_editor_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call11)
  %22 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpEditor*
  %call13 = call %struct._GtkWidget* (%struct._GimpEditor*, i8*, i8*, ...) @gimp_editor_add_action_button(%struct._GimpEditor* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i8* null)
  %23 = load %struct._GimpSelectionEditor*, %struct._GimpSelectionEditor** %editor, align 8
  %invert_button = getelementptr inbounds %struct._GimpSelectionEditor, %struct._GimpSelectionEditor* %23, i32 0, i32 4
  store %struct._GtkWidget* %call13, %struct._GtkWidget** %invert_button, align 8
  %24 = load %struct._GimpSelectionEditor*, %struct._GimpSelectionEditor** %editor, align 8
  %25 = bitcast %struct._GimpSelectionEditor* %24 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_editor_get_type() #5
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call14)
  %26 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpEditor*
  %call16 = call %struct._GtkWidget* (%struct._GimpEditor*, i8*, i8*, ...) @gimp_editor_add_action_button(%struct._GimpEditor* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i8* null)
  %27 = load %struct._GimpSelectionEditor*, %struct._GimpSelectionEditor** %editor, align 8
  %save_button = getelementptr inbounds %struct._GimpSelectionEditor, %struct._GimpSelectionEditor* %27, i32 0, i32 5
  store %struct._GtkWidget* %call16, %struct._GtkWidget** %save_button, align 8
  %28 = load %struct._GimpSelectionEditor*, %struct._GimpSelectionEditor** %editor, align 8
  %29 = bitcast %struct._GimpSelectionEditor* %28 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_editor_get_type() #5
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call17)
  %30 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpEditor*
  %call19 = call %struct._GtkWidget* (%struct._GimpEditor*, i8*, i8*, ...) @gimp_editor_add_action_button(%struct._GimpEditor* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i32 0, i32 0), i32 1, i8* null)
  %31 = load %struct._GimpSelectionEditor*, %struct._GimpSelectionEditor** %editor, align 8
  %path_button = getelementptr inbounds %struct._GimpSelectionEditor, %struct._GimpSelectionEditor* %31, i32 0, i32 6
  store %struct._GtkWidget* %call19, %struct._GtkWidget** %path_button, align 8
  %32 = load %struct._GimpSelectionEditor*, %struct._GimpSelectionEditor** %editor, align 8
  %33 = bitcast %struct._GimpSelectionEditor* %32 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_editor_get_type() #5
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call20)
  %34 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpEditor*
  %call22 = call %struct._GtkWidget* (%struct._GimpEditor*, i8*, i8*, ...) @gimp_editor_add_action_button(%struct._GimpEditor* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i32 0, i32 0), i32 1, i8* null)
  %35 = load %struct._GimpSelectionEditor*, %struct._GimpSelectionEditor** %editor, align 8
  %stroke_button = getelementptr inbounds %struct._GimpSelectionEditor, %struct._GimpSelectionEditor* %35, i32 0, i32 7
  store %struct._GtkWidget* %call22, %struct._GtkWidget** %stroke_button, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_selection_editor_set_image(%struct._GimpImageEditor* %image_editor, %struct._GimpImage* %image) #3 {
entry:
  %image_editor.addr = alloca %struct._GimpImageEditor*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %editor = alloca %struct._GimpSelectionEditor*, align 8
  store %struct._GimpImageEditor* %image_editor, %struct._GimpImageEditor** %image_editor.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  %0 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %image_editor.addr, align 8
  %1 = bitcast %struct._GimpImageEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_selection_editor_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSelectionEditor*
  store %struct._GimpSelectionEditor* %2, %struct._GimpSelectionEditor** %editor, align 8
  %3 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %image_editor.addr, align 8
  %image2 = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %3, i32 0, i32 2
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image2, align 8
  %tobool = icmp ne %struct._GimpImage* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %image_editor.addr, align 8
  %image3 = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %5, i32 0, i32 2
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image3, align 8
  %7 = bitcast %struct._GimpImage* %6 to i8*
  %8 = load %struct._GimpSelectionEditor*, %struct._GimpSelectionEditor** %editor, align 8
  %9 = bitcast %struct._GimpSelectionEditor* %8 to i8*
  %call4 = call i32 @g_signal_handlers_disconnect_matched(i8* %7, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpImage*, %struct._GimpSelectionEditor*)* @gimp_selection_editor_mask_changed to i8*), i8* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i8*, i8** @gimp_selection_editor_parent_class, align 8
  %11 = bitcast i8* %10 to %struct._GTypeClass*
  %call5 = call i64 @gimp_image_editor_get_type() #5
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %11, i64 %call5)
  %12 = bitcast %struct._GTypeClass* %call6 to %struct._GimpImageEditorClass*
  %set_image = getelementptr inbounds %struct._GimpImageEditorClass, %struct._GimpImageEditorClass* %12, i32 0, i32 1
  %13 = load void (%struct._GimpImageEditor*, %struct._GimpImage*)*, void (%struct._GimpImageEditor*, %struct._GimpImage*)** %set_image, align 8
  %14 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %image_editor.addr, align 8
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void %13(%struct._GimpImageEditor* %14, %struct._GimpImage* %15)
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %tobool7 = icmp ne %struct._GimpImage* %16, null
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %18 = bitcast %struct._GimpImage* %17 to i8*
  %19 = load %struct._GimpSelectionEditor*, %struct._GimpSelectionEditor** %editor, align 8
  %20 = bitcast %struct._GimpSelectionEditor* %19 to i8*
  %call9 = call i64 @g_signal_connect_data(i8* %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImage*, %struct._GimpSelectionEditor*)* @gimp_selection_editor_mask_changed to void ()*), i8* %20, void (i8*, %struct._GClosure*)* null, i32 0)
  %21 = load %struct._GimpSelectionEditor*, %struct._GimpSelectionEditor** %editor, align 8
  %view = getelementptr inbounds %struct._GimpSelectionEditor, %struct._GimpSelectionEditor* %21, i32 0, i32 1
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_view_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call10)
  %24 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpView*
  %25 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call12 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %25)
  %26 = bitcast %struct._GimpChannel* %call12 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_viewable_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call13)
  %27 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpViewable*
  call void @gimp_view_set_viewable(%struct._GimpView* %24, %struct._GimpViewable* %27)
  br label %if.end.18

if.else:                                          ; preds = %if.end
  %28 = load %struct._GimpSelectionEditor*, %struct._GimpSelectionEditor** %editor, align 8
  %view15 = getelementptr inbounds %struct._GimpSelectionEditor, %struct._GimpSelectionEditor* %28, i32 0, i32 1
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %view15, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_view_get_type() #5
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call16)
  %31 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpView*
  call void @gimp_view_set_viewable(%struct._GimpView* %31, %struct._GimpViewable* null)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.8
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare %struct._GtkWidget* @gimp_editor_add_action_button(%struct._GimpEditor*, i8*, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_editor_get_type() #2

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_selection_editor_mask_changed(%struct._GimpImage* %image, %struct._GimpSelectionEditor* %editor) #3 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %editor.addr = alloca %struct._GimpSelectionEditor*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpSelectionEditor* %editor, %struct._GimpSelectionEditor** %editor.addr, align 8
  %0 = load %struct._GimpSelectionEditor*, %struct._GimpSelectionEditor** %editor.addr, align 8
  %view = getelementptr inbounds %struct._GimpSelectionEditor, %struct._GimpSelectionEditor* %0, i32 0, i32 1
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpView*
  %renderer = getelementptr inbounds %struct._GimpView, %struct._GimpView* %3, i32 0, i32 3
  %4 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  call void @gimp_view_renderer_invalidate(%struct._GimpViewRenderer* %4)
  ret void
}

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare void @gimp_view_set_viewable(%struct._GimpView*, %struct._GimpViewable*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_view_get_type() #2

declare %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

declare void @gimp_view_renderer_invalidate(%struct._GimpViewRenderer*) #1

declare i8* @g_type_interface_peek_parent(i8*) #1

declare i8* @g_type_default_interface_peek(i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_selection_editor_set_context(%struct._GimpDocked* %docked, %struct._GimpContext* %context) #3 {
entry:
  %docked.addr = alloca %struct._GimpDocked*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %editor = alloca %struct._GimpSelectionEditor*, align 8
  store %struct._GimpDocked* %docked, %struct._GimpDocked** %docked.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpDocked*, %struct._GimpDocked** %docked.addr, align 8
  %1 = bitcast %struct._GimpDocked* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_selection_editor_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSelectionEditor*
  store %struct._GimpSelectionEditor* %2, %struct._GimpSelectionEditor** %editor, align 8
  %3 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** @parent_docked_iface, align 8
  %set_context = getelementptr inbounds %struct._GimpDockedInterface, %struct._GimpDockedInterface* %3, i32 0, i32 8
  %4 = load void (%struct._GimpDocked*, %struct._GimpContext*)*, void (%struct._GimpDocked*, %struct._GimpContext*)** %set_context, align 8
  %5 = load %struct._GimpDocked*, %struct._GimpDocked** %docked.addr, align 8
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void %4(%struct._GimpDocked* %5, %struct._GimpContext* %6)
  %7 = load %struct._GimpSelectionEditor*, %struct._GimpSelectionEditor** %editor, align 8
  %view = getelementptr inbounds %struct._GimpSelectionEditor, %struct._GimpSelectionEditor* %7, i32 0, i32 1
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_view_get_type() #5
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

declare %struct._GtkWidget* @gimp_view_new_by_types(%struct._GimpContext*, i64, i64, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_selection_get_type() #2

declare void @gimp_view_renderer_set_background(%struct._GimpViewRenderer*, i8*) #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gimp_view_set_expand(%struct._GimpView*, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

; Function Attrs: nounwind uwtable
define internal i32 @gimp_selection_view_button_press(%struct._GtkWidget* %widget, %struct._GdkEventButton* %bevent, %struct._GimpSelectionEditor* %editor) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %bevent.addr = alloca %struct._GdkEventButton*, align 8
  %editor.addr = alloca %struct._GimpSelectionEditor*, align 8
  %image_editor = alloca %struct._GimpImageEditor*, align 8
  %renderer = alloca %struct._GimpViewRenderer*, align 8
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  %sel_options = alloca %struct._GimpSelectionOptions*, align 8
  %options = alloca %struct._GimpRegionSelectOptions*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %operation = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %bevent, %struct._GdkEventButton** %bevent.addr, align 8
  store %struct._GimpSelectionEditor* %editor, %struct._GimpSelectionEditor** %editor.addr, align 8
  %0 = load %struct._GimpSelectionEditor*, %struct._GimpSelectionEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpSelectionEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_editor_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImageEditor*
  store %struct._GimpImageEditor* %2, %struct._GimpImageEditor** %image_editor, align 8
  %3 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %image_editor, align 8
  %image = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %3, i32 0, i32 2
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._GimpSelectionEditor*, %struct._GimpSelectionEditor** %editor.addr, align 8
  %view = getelementptr inbounds %struct._GimpSelectionEditor, %struct._GimpSelectionEditor* %5, i32 0, i32 1
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_view_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call2)
  %8 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpView*
  %renderer4 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %8, i32 0, i32 3
  %9 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer4, align 8
  store %struct._GimpViewRenderer* %9, %struct._GimpViewRenderer** %renderer, align 8
  %10 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %image_editor, align 8
  %image5 = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %10, i32 0, i32 2
  %11 = load %struct._GimpImage*, %struct._GimpImage** %image5, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %11, i32 0, i32 1
  %12 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call6 = call %struct._GimpToolInfo* @gimp_get_tool_info(%struct._Gimp* %12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i32 0, i32 0))
  store %struct._GimpToolInfo* %call6, %struct._GimpToolInfo** %tool_info, align 8
  %13 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tobool7 = icmp ne %struct._GimpToolInfo* %13, null
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %14 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tool_options = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %14, i32 0, i32 12
  %15 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options, align 8
  %16 = bitcast %struct._GimpToolOptions* %15 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_selection_options_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call10)
  %17 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpSelectionOptions*
  store %struct._GimpSelectionOptions* %17, %struct._GimpSelectionOptions** %sel_options, align 8
  %18 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tool_options12 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %18, i32 0, i32 12
  %19 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options12, align 8
  %20 = bitcast %struct._GimpToolOptions* %19 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_region_select_options_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call13)
  %21 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpRegionSelectOptions*
  store %struct._GimpRegionSelectOptions* %21, %struct._GimpRegionSelectOptions** %options, align 8
  %22 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %image_editor, align 8
  %image15 = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %22, i32 0, i32 2
  %23 = load %struct._GimpImage*, %struct._GimpImage** %image15, align 8
  %call16 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %23)
  store %struct._GimpDrawable* %call16, %struct._GimpDrawable** %drawable, align 8
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool17 = icmp ne %struct._GimpDrawable* %24, null
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %if.end.9
  store i32 1, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.end.9
  %25 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %state = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %25, i32 0, i32 7
  %26 = load i32, i32* %state, align 4
  %call20 = call i32 @gimp_modifiers_to_channel_op(i32 %26)
  store i32 %call20, i32* %operation, align 4
  %27 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %image_editor, align 8
  %image21 = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %27, i32 0, i32 2
  %28 = load %struct._GimpImage*, %struct._GimpImage** %image21, align 8
  %call22 = call i32 @gimp_image_get_width(%struct._GimpImage* %28)
  %conv = sitofp i32 %call22 to double
  %29 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %x23 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %29, i32 0, i32 4
  %30 = load double, double* %x23, align 8
  %mul = fmul double %conv, %30
  %31 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %width = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %31, i32 0, i32 4
  %32 = load i32, i32* %width, align 4
  %conv24 = sitofp i32 %32 to double
  %div = fdiv double %mul, %conv24
  %conv25 = fptosi double %div to i32
  store i32 %conv25, i32* %x, align 4
  %33 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %image_editor, align 8
  %image26 = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %33, i32 0, i32 2
  %34 = load %struct._GimpImage*, %struct._GimpImage** %image26, align 8
  %call27 = call i32 @gimp_image_get_height(%struct._GimpImage* %34)
  %conv28 = sitofp i32 %call27 to double
  %35 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %y29 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %35, i32 0, i32 5
  %36 = load double, double* %y29, align 8
  %mul30 = fmul double %conv28, %36
  %37 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %height = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %37, i32 0, i32 5
  %38 = load i32, i32* %height, align 4
  %conv31 = sitofp i32 %38 to double
  %div32 = fdiv double %mul30, %conv31
  %conv33 = fptosi double %div32 to i32
  store i32 %conv33, i32* %y, align 4
  %39 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %image_editor, align 8
  %image34 = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %39, i32 0, i32 2
  %40 = load %struct._GimpImage*, %struct._GimpImage** %image34, align 8
  %41 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %42 = load i32, i32* %x, align 4
  %43 = load i32, i32* %y, align 4
  %44 = load %struct._GimpRegionSelectOptions*, %struct._GimpRegionSelectOptions** %options, align 8
  %sample_merged = getelementptr inbounds %struct._GimpRegionSelectOptions, %struct._GimpRegionSelectOptions* %44, i32 0, i32 2
  %45 = load i32, i32* %sample_merged, align 4
  %call35 = call i32 @gimp_image_pick_color(%struct._GimpImage* %40, %struct._GimpDrawable* %41, i32 %42, i32 %43, i32 %45, i32 0, double 0.000000e+00, i32* null, %struct._GimpRGB* %color, i32* null)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.then.37, label %if.end.44

if.then.37:                                       ; preds = %if.end.19
  %46 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %image_editor, align 8
  %image38 = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %46, i32 0, i32 2
  %47 = load %struct._GimpImage*, %struct._GimpImage** %image38, align 8
  %call39 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %47)
  %48 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %49 = load %struct._GimpRegionSelectOptions*, %struct._GimpRegionSelectOptions** %options, align 8
  %sample_merged40 = getelementptr inbounds %struct._GimpRegionSelectOptions, %struct._GimpRegionSelectOptions* %49, i32 0, i32 2
  %50 = load i32, i32* %sample_merged40, align 4
  %51 = load %struct._GimpRegionSelectOptions*, %struct._GimpRegionSelectOptions** %options, align 8
  %threshold = getelementptr inbounds %struct._GimpRegionSelectOptions, %struct._GimpRegionSelectOptions* %51, i32 0, i32 3
  %52 = load double, double* %threshold, align 8
  %conv41 = fptosi double %52 to i32
  %53 = load %struct._GimpRegionSelectOptions*, %struct._GimpRegionSelectOptions** %options, align 8
  %select_transparent = getelementptr inbounds %struct._GimpRegionSelectOptions, %struct._GimpRegionSelectOptions* %53, i32 0, i32 1
  %54 = load i32, i32* %select_transparent, align 4
  %55 = load %struct._GimpRegionSelectOptions*, %struct._GimpRegionSelectOptions** %options, align 8
  %select_criterion = getelementptr inbounds %struct._GimpRegionSelectOptions, %struct._GimpRegionSelectOptions* %55, i32 0, i32 4
  %56 = load i32, i32* %select_criterion, align 4
  %57 = load i32, i32* %operation, align 4
  %58 = load %struct._GimpSelectionOptions*, %struct._GimpSelectionOptions** %sel_options, align 8
  %antialias = getelementptr inbounds %struct._GimpSelectionOptions, %struct._GimpSelectionOptions* %58, i32 0, i32 2
  %59 = load i32, i32* %antialias, align 4
  %60 = load %struct._GimpSelectionOptions*, %struct._GimpSelectionOptions** %sel_options, align 8
  %feather = getelementptr inbounds %struct._GimpSelectionOptions, %struct._GimpSelectionOptions* %60, i32 0, i32 3
  %61 = load i32, i32* %feather, align 4
  %62 = load %struct._GimpSelectionOptions*, %struct._GimpSelectionOptions** %sel_options, align 8
  %feather_radius = getelementptr inbounds %struct._GimpSelectionOptions, %struct._GimpSelectionOptions* %62, i32 0, i32 4
  %63 = load double, double* %feather_radius, align 8
  %64 = load %struct._GimpSelectionOptions*, %struct._GimpSelectionOptions** %sel_options, align 8
  %feather_radius42 = getelementptr inbounds %struct._GimpSelectionOptions, %struct._GimpSelectionOptions* %64, i32 0, i32 4
  %65 = load double, double* %feather_radius42, align 8
  call void @gimp_channel_select_by_color(%struct._GimpChannel* %call39, %struct._GimpDrawable* %48, i32 %50, %struct._GimpRGB* %color, i32 %conv41, i32 %54, i32 %56, i32 %57, i32 %59, i32 %61, double %63, double %65)
  %66 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %image_editor, align 8
  %image43 = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %66, i32 0, i32 2
  %67 = load %struct._GimpImage*, %struct._GimpImage** %image43, align 8
  call void @gimp_image_flush(%struct._GimpImage* %67)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.37, %if.end.19
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.44, %if.then.18, %if.then.8, %if.then
  %68 = load i32, i32* %retval
  ret i32 %68
}

declare void @gimp_dnd_color_dest_add(%struct._GtkWidget*, void (%struct._GtkWidget*, i32, i32, %struct._GimpRGB*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_selection_editor_drop_color(%struct._GtkWidget* %widget, i32 %x, i32 %y, %struct._GimpRGB* %color, i8* %data) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %color.addr = alloca %struct._GimpRGB*, align 8
  %data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpImageEditor*, align 8
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  %sel_options = alloca %struct._GimpSelectionOptions*, align 8
  %options = alloca %struct._GimpRegionSelectOptions*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_editor_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImageEditor*
  store %struct._GimpImageEditor* %2, %struct._GimpImageEditor** %editor, align 8
  %3 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %editor, align 8
  %image = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %3, i32 0, i32 2
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %editor, align 8
  %image2 = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %5, i32 0, i32 2
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image2, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %6, i32 0, i32 1
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call3 = call %struct._GimpToolInfo* @gimp_get_tool_info(%struct._Gimp* %7, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i32 0, i32 0))
  store %struct._GimpToolInfo* %call3, %struct._GimpToolInfo** %tool_info, align 8
  %8 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tobool4 = icmp ne %struct._GimpToolInfo* %8, null
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end
  br label %return

if.end.6:                                         ; preds = %if.end
  %9 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tool_options = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %9, i32 0, i32 12
  %10 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options, align 8
  %11 = bitcast %struct._GimpToolOptions* %10 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_selection_options_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call7)
  %12 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpSelectionOptions*
  store %struct._GimpSelectionOptions* %12, %struct._GimpSelectionOptions** %sel_options, align 8
  %13 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tool_options9 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %13, i32 0, i32 12
  %14 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options9, align 8
  %15 = bitcast %struct._GimpToolOptions* %14 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_region_select_options_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call10)
  %16 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpRegionSelectOptions*
  store %struct._GimpRegionSelectOptions* %16, %struct._GimpRegionSelectOptions** %options, align 8
  %17 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %editor, align 8
  %image12 = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %17, i32 0, i32 2
  %18 = load %struct._GimpImage*, %struct._GimpImage** %image12, align 8
  %call13 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %18)
  store %struct._GimpDrawable* %call13, %struct._GimpDrawable** %drawable, align 8
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool14 = icmp ne %struct._GimpDrawable* %19, null
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.end.6
  br label %return

if.end.16:                                        ; preds = %if.end.6
  %20 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %editor, align 8
  %image17 = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %20, i32 0, i32 2
  %21 = load %struct._GimpImage*, %struct._GimpImage** %image17, align 8
  %call18 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %21)
  %22 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %23 = load %struct._GimpRegionSelectOptions*, %struct._GimpRegionSelectOptions** %options, align 8
  %sample_merged = getelementptr inbounds %struct._GimpRegionSelectOptions, %struct._GimpRegionSelectOptions* %23, i32 0, i32 2
  %24 = load i32, i32* %sample_merged, align 4
  %25 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %26 = load %struct._GimpRegionSelectOptions*, %struct._GimpRegionSelectOptions** %options, align 8
  %threshold = getelementptr inbounds %struct._GimpRegionSelectOptions, %struct._GimpRegionSelectOptions* %26, i32 0, i32 3
  %27 = load double, double* %threshold, align 8
  %conv = fptosi double %27 to i32
  %28 = load %struct._GimpRegionSelectOptions*, %struct._GimpRegionSelectOptions** %options, align 8
  %select_transparent = getelementptr inbounds %struct._GimpRegionSelectOptions, %struct._GimpRegionSelectOptions* %28, i32 0, i32 1
  %29 = load i32, i32* %select_transparent, align 4
  %30 = load %struct._GimpRegionSelectOptions*, %struct._GimpRegionSelectOptions** %options, align 8
  %select_criterion = getelementptr inbounds %struct._GimpRegionSelectOptions, %struct._GimpRegionSelectOptions* %30, i32 0, i32 4
  %31 = load i32, i32* %select_criterion, align 4
  %32 = load %struct._GimpSelectionOptions*, %struct._GimpSelectionOptions** %sel_options, align 8
  %operation = getelementptr inbounds %struct._GimpSelectionOptions, %struct._GimpSelectionOptions* %32, i32 0, i32 1
  %33 = load i32, i32* %operation, align 4
  %34 = load %struct._GimpSelectionOptions*, %struct._GimpSelectionOptions** %sel_options, align 8
  %antialias = getelementptr inbounds %struct._GimpSelectionOptions, %struct._GimpSelectionOptions* %34, i32 0, i32 2
  %35 = load i32, i32* %antialias, align 4
  %36 = load %struct._GimpSelectionOptions*, %struct._GimpSelectionOptions** %sel_options, align 8
  %feather = getelementptr inbounds %struct._GimpSelectionOptions, %struct._GimpSelectionOptions* %36, i32 0, i32 3
  %37 = load i32, i32* %feather, align 4
  %38 = load %struct._GimpSelectionOptions*, %struct._GimpSelectionOptions** %sel_options, align 8
  %feather_radius = getelementptr inbounds %struct._GimpSelectionOptions, %struct._GimpSelectionOptions* %38, i32 0, i32 4
  %39 = load double, double* %feather_radius, align 8
  %40 = load %struct._GimpSelectionOptions*, %struct._GimpSelectionOptions** %sel_options, align 8
  %feather_radius19 = getelementptr inbounds %struct._GimpSelectionOptions, %struct._GimpSelectionOptions* %40, i32 0, i32 4
  %41 = load double, double* %feather_radius19, align 8
  call void @gimp_channel_select_by_color(%struct._GimpChannel* %call18, %struct._GimpDrawable* %22, i32 %24, %struct._GimpRGB* %25, i32 %conv, i32 %29, i32 %31, i32 %33, i32 %35, i32 %37, double %39, double %41)
  %42 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %editor, align 8
  %image20 = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %42, i32 0, i32 2
  %43 = load %struct._GimpImage*, %struct._GimpImage** %image20, align 8
  call void @gimp_image_flush(%struct._GimpImage* %43)
  br label %return

return:                                           ; preds = %if.end.16, %if.then.15, %if.then.5, %if.then
  ret void
}

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare %struct._GimpToolInfo* @gimp_get_tool_info(%struct._Gimp*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_selection_options_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_region_select_options_get_type() #2

declare %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage*) #1

declare i32 @gimp_modifiers_to_channel_op(i32) #1

declare i32 @gimp_image_get_width(%struct._GimpImage*) #1

declare i32 @gimp_image_get_height(%struct._GimpImage*) #1

declare i32 @gimp_image_pick_color(%struct._GimpImage*, %struct._GimpDrawable*, i32, i32, i32, i32, double, i32*, %struct._GimpRGB*, i32*) #1

declare void @gimp_channel_select_by_color(%struct._GimpChannel*, %struct._GimpDrawable*, i32, %struct._GimpRGB*, i32, i32, i32, i32, i32, i32, double, double) #1

declare void @gimp_image_flush(%struct._GimpImage*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
