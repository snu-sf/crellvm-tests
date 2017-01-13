; ModuleID = './app/widgets/gimpgradienteditor.bc'
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
%struct._GimpGradient = type { %struct._GimpData, %struct._GimpGradientSegment* }
%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpGradientSegment = type { double, double, double, i32, %struct._GimpRGB, i32, %struct._GimpRGB, i32, i32, %struct._GimpGradientSegment*, %struct._GimpGradientSegment* }
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpUIManager = type opaque
%struct._GimpGradientEditorClass = type { %struct._GimpDataEditorClass }
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
%struct._GimpGradientEditor = type { %struct._GimpDataEditor, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i32, %struct._GtkAdjustment*, %struct._GtkWidget*, i32, i32, %struct._GimpGradientSegment*, %struct._GimpGradientSegment*, %struct._GimpGradientSegment*, i32, i32, i32, i32, double, double, i32, i32, [10 x %struct._GimpRGB], %struct._GimpGradientSegment*, i32, %struct._GimpGradientSegment*, i32 }
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
%struct._GimpMenuFactory = type opaque
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GtkMenu = type { %struct._GtkMenuShell, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAccelGroup*, i8*, void (%struct._GtkMenu*, i32*, i32*, i32*, i8*)*, i8*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GdkDrawable*, %struct._GdkDrawable*, i32, i32, i32, i32, %struct._GdkRegion*, i32, i8 }
%struct._GtkMenuShell = type { %struct._GtkContainer, %struct._GList*, %struct._GtkWidget*, %struct._GtkWidget*, i32, i32, i8 }
%struct._GtkAccelGroup = type { %struct._GObject, i32, i32, %struct._GSList*, i32, %struct._GtkAccelGroupEntry* }
%struct._GtkAccelGroupEntry = type { %struct._GtkAccelKey, %struct._GClosure*, i32 }
%struct._GtkAccelKey = type { i32, i32, i16 }
%struct._cairo = type opaque
%struct._GimpViewRendererGradient = type { %struct._GimpViewRenderer, double, double, i32, i32 }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkLabelSelectionInfo = type opaque
%struct._GimpColorArea = type { %struct._GtkDrawingArea, i8*, i32, i32, i32, i32, %struct._GimpRGB, i8 }
%struct._GtkDrawingArea = type { %struct._GtkWidget, i8* }
%struct._GimpHSV = type { double, double, double, double }

@gimp_gradient_editor_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"GimpGradientEditor\00", align 1
@gimp_gradient_editor_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpDockedInterface*)* @gimp_gradient_editor_docked_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_gradient_editor_new = private unnamed_addr constant [25 x i8] c"gimp_gradient_editor_new\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"menu-factory\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"menu-identifier\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"<GradientEditor>\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"ui-path\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"/gradient-editor-popup\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"data-factory\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@__func__.gimp_gradient_editor_update = private unnamed_addr constant [28 x i8] c"gimp_gradient_editor_update\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"GIMP_IS_GRADIENT_EDITOR (editor)\00", align 1
@__func__.gimp_gradient_editor_zoom = private unnamed_addr constant [26 x i8] c"gimp_gradient_editor_zoom\00", align 1
@gimp_gradient_editor_parent_class = internal global i8* null, align 8
@GimpGradientEditor_private_offset = internal global i32 0, align 4
@.str.12 = private unnamed_addr constant [16 x i8] c"Gradient Editor\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"gradient-editor\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"gradient-editor-zoom-out\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"gradient-editor-zoom-in\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"gradient-editor-zoom-all\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"dirty\00", align 1
@parent_docked_iface = internal global %struct._GimpDockedInterface* null, align 8
@.str.18 = private unnamed_addr constant [6 x i8] c"event\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"expose-event\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"RGB (%d, %d, %d)\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"(%0.3f, %0.3f, %0.3f)\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"Foreground color set to:\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"Background color set to:\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"Position: %0.4f\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"RGB (%0.3f, %0.3f, %0.3f)\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"HSV (%0.1f, %0.1f, %0.1f)\00", align 1
@.str.29 = private unnamed_addr constant [35 x i8] c"Luminance: %0.1f    Opacity: %0.1f\00", align 1
@.str.30 = private unnamed_addr constant [52 x i8] c"%s: in_handle is true, but received handle type %d.\00", align 1
@__func__.control_button_press = private unnamed_addr constant [21 x i8] c"control_button_press\00", align 1
@.str.31 = private unnamed_addr constant [32 x i8] c"%s: Cannot handle drag mode %d.\00", align 1
@__func__.control_point_in_handle = private unnamed_addr constant [24 x i8] c"control_point_in_handle\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"%s-Drag: move & compress\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"Drag: move\00", align 1
@.str.34 = private unnamed_addr constant [27 x i8] c"%s-Click: extend selection\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"Click: select\00", align 1
@.str.36 = private unnamed_addr constant [28 x i8] c"Click: select    Drag: move\00", align 1
@__func__.control_do_hint = private unnamed_addr constant [16 x i8] c"control_do_hint\00", align 1
@.str.37 = private unnamed_addr constant [23 x i8] c"Handle position: %0.4f\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"Distance: %0.4f\00", align 1
@.str.39 = private unnamed_addr constant [40 x i8] c"%s: Attempting to move bogus handle %d.\00", align 1
@__func__.control_motion = private unnamed_addr constant [15 x i8] c"control_motion\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"Zoom factor: %d:1\00", align 1
@.str.41 = private unnamed_addr constant [26 x i8] c"Displaying [%0.4f, %0.4f]\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"xalign\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"yalign\00", align 1
@.str.44 = private unnamed_addr constant [17 x i8] c"single-line-mode\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_gradient_editor_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_gradient_editor_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_gradient_editor_get_type.g_define_type_id__volatile to i8*))
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
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 840, void (i8*, i8*)* bitcast (void (i8*)* @gimp_gradient_editor_class_intern_init to void (i8*, i8*)*), i32 712, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpGradientEditor*)* @gimp_gradient_editor_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_docked_interface_get_type() #7
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_gradient_editor_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_gradient_editor_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_gradient_editor_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_data_editor_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_gradient_editor_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_gradient_editor_parent_class, align 8
  %1 = load i32, i32* @GimpGradientEditor_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpGradientEditor_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpGradientEditorClass*
  call void @gimp_gradient_editor_class_init(%struct._GimpGradientEditorClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_gradient_editor_init(%struct._GimpGradientEditor* %editor) #3 {
entry:
  %editor.addr = alloca %struct._GimpGradientEditor*, align 8
  %data_editor = alloca %struct._GimpDataEditor*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %hint_vbox = alloca %struct._GtkWidget*, align 8
  %transp = alloca %struct._GimpRGB, align 8
  store %struct._GimpGradientEditor* %editor, %struct._GimpGradientEditor** %editor.addr, align 8
  %0 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpGradientEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDataEditor*
  store %struct._GimpDataEditor* %2, %struct._GimpDataEditor** %data_editor, align 8
  call void @gimp_rgba_set(%struct._GimpRGB* %transp, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  %call2 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %frame, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_frame_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %5, i32 1)
  %6 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %7 = bitcast %struct._GimpGradientEditor* %6 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_box_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call5)
  %8 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkBox*
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %8, %struct._GtkWidget* %9, i32 1, i32 1, i32 0)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %10)
  %call7 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 0)
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %vbox, align 8
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_container_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call8)
  %13 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkContainer*
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %13, %struct._GtkWidget* %14)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %15)
  %16 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %view_last_x = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %16, i32 0, i32 11
  store i32 0, i32* %view_last_x, align 4
  %17 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %view_button_down = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %17, i32 0, i32 12
  store i32 0, i32* %view_button_down, align 4
  %call10 = call i64 @gimp_view_get_type() #7
  %call11 = call i64 @gimp_gradient_get_type() #7
  %call12 = call %struct._GtkWidget* @gimp_view_new_full_by_types(%struct._GimpContext* null, i64 %call10, i64 %call11, i32 96, i32 96, i32 0, i32 0, i32 0, i32 0)
  %18 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %view = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %18, i32 0, i32 7
  store %struct._GtkWidget* %call12, %struct._GtkWidget** %view, align 8
  %19 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %view13 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %19, i32 0, i32 7
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %view13, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %20, i32 -1, i32 96)
  %21 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %view14 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %21, i32 0, i32 7
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %view14, align 8
  call void @gtk_widget_set_events(%struct._GtkWidget* %22, i32 8974)
  %23 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %view15 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %23, i32 0, i32 7
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %view15, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_view_get_type() #7
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call16)
  %26 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpView*
  call void @gimp_view_set_expand(%struct._GimpView* %26, i32 1)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_box_get_type() #7
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call18)
  %29 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkBox*
  %30 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %view20 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %30, i32 0, i32 7
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %view20, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %29, %struct._GtkWidget* %31, i32 1, i32 1, i32 0)
  %32 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %view21 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %32, i32 0, i32 7
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %view21, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %33)
  %34 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %view22 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %34, i32 0, i32 7
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %view22, align 8
  %36 = bitcast %struct._GtkWidget* %35 to i8*
  %37 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %38 = bitcast %struct._GimpGradientEditor* %37 to i8*
  %call23 = call i64 @g_signal_connect_data(i8* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %union._GdkEvent*, %struct._GimpGradientEditor*)* @view_events to void ()*), i8* %38, void (i8*, %struct._GClosure*)* null, i32 0)
  %39 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %view24 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %39, i32 0, i32 7
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %view24, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_widget_get_type() #7
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call25)
  %42 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkWidget*
  %call27 = call i64 @gimp_gradient_get_type() #7
  %43 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %44 = bitcast %struct._GimpGradientEditor* %43 to i8*
  %call28 = call i32 @gimp_dnd_viewable_dest_add(%struct._GtkWidget* %42, i64 %call27, void (%struct._GtkWidget*, i32, i32, %struct._GimpViewable*, i8*)* @gradient_editor_drop_gradient, i8* %44)
  %45 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %view29 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %45, i32 0, i32 7
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %view29, align 8
  %47 = bitcast %struct._GtkWidget* %46 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_widget_get_type() #7
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call30)
  %48 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkWidget*
  %49 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %50 = bitcast %struct._GimpGradientEditor* %49 to i8*
  call void @gimp_dnd_color_dest_add(%struct._GtkWidget* %48, void (%struct._GtkWidget*, i32, i32, %struct._GimpRGB*, i8*)* @gradient_editor_drop_color, i8* %50)
  %51 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_drag_segment = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %51, i32 0, i32 13
  store %struct._GimpGradientSegment* null, %struct._GimpGradientSegment** %control_drag_segment, align 8
  %52 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_sel_l = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %52, i32 0, i32 14
  store %struct._GimpGradientSegment* null, %struct._GimpGradientSegment** %control_sel_l, align 8
  %53 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_sel_r = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %53, i32 0, i32 15
  store %struct._GimpGradientSegment* null, %struct._GimpGradientSegment** %control_sel_r, align 8
  %54 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_drag_mode = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %54, i32 0, i32 16
  store i32 0, i32* %control_drag_mode, align 4
  %55 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_click_time = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %55, i32 0, i32 17
  store i32 0, i32* %control_click_time, align 4
  %56 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_compress = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %56, i32 0, i32 18
  store i32 0, i32* %control_compress, align 4
  %57 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_last_x = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %57, i32 0, i32 19
  store i32 0, i32* %control_last_x, align 4
  %58 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_last_gx = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %58, i32 0, i32 20
  store double 0.000000e+00, double* %control_last_gx, align 8
  %59 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_orig_pos = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %59, i32 0, i32 21
  store double 0.000000e+00, double* %control_orig_pos, align 8
  %call32 = call %struct._GtkWidget* @gtk_drawing_area_new()
  %60 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %60, i32 0, i32 7
  store %struct._GtkWidget* %call32, %struct._GtkWidget** %control, align 8
  %61 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control33 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %61, i32 0, i32 7
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %control33, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %62, i32 -1, i32 14)
  %63 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control34 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %63, i32 0, i32 7
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %control34, align 8
  call void @gtk_widget_set_events(%struct._GtkWidget* %64, i32 9006)
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %66 = bitcast %struct._GtkWidget* %65 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_box_get_type() #7
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call35)
  %67 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkBox*
  %68 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control37 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %68, i32 0, i32 7
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %control37, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %67, %struct._GtkWidget* %69, i32 0, i32 0, i32 0)
  %70 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control38 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %70, i32 0, i32 7
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %control38, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %71)
  %72 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control39 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %72, i32 0, i32 7
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %control39, align 8
  %74 = bitcast %struct._GtkWidget* %73 to i8*
  %75 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %76 = bitcast %struct._GimpGradientEditor* %75 to i8*
  %call40 = call i64 @g_signal_connect_data(i8* %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %union._GdkEvent*, %struct._GimpGradientEditor*)* @control_events to void ()*), i8* %76, void (i8*, %struct._GClosure*)* null, i32 0)
  %77 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control41 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %77, i32 0, i32 7
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %control41, align 8
  %79 = bitcast %struct._GtkWidget* %78 to i8*
  %80 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %81 = bitcast %struct._GimpGradientEditor* %80 to i8*
  %call42 = call i64 @g_signal_connect_data(i8* %79, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventExpose*, %struct._GimpGradientEditor*)* @control_expose to void ()*), i8* %81, void (i8*, %struct._GClosure*)* null, i32 0)
  %82 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control43 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %82, i32 0, i32 7
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %control43, align 8
  %84 = bitcast %struct._GtkWidget* %83 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_widget_get_type() #7
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %84, i64 %call44)
  %85 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkWidget*
  %86 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %87 = bitcast %struct._GimpGradientEditor* %86 to i8*
  call void @gimp_dnd_color_dest_add(%struct._GtkWidget* %85, void (%struct._GtkWidget*, i32, i32, %struct._GimpRGB*, i8*)* @gradient_editor_control_drop_color, i8* %87)
  %88 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %zoom_factor = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %88, i32 0, i32 8
  store i32 1, i32* %zoom_factor, align 4
  %call46 = call %struct._GtkObject* @gtk_adjustment_new(double 0.000000e+00, double 0.000000e+00, double 1.000000e+00, double 5.000000e-02, double 7.500000e-01, double 1.000000e+00)
  %89 = bitcast %struct._GtkObject* %call46 to %struct._GTypeInstance*
  %call47 = call i64 @gtk_adjustment_get_type() #7
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %89, i64 %call47)
  %90 = bitcast %struct._GTypeInstance* %call48 to %struct._GtkAdjustment*
  %91 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %scroll_data = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %91, i32 0, i32 9
  store %struct._GtkAdjustment* %90, %struct._GtkAdjustment** %scroll_data, align 8
  %92 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %scroll_data49 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %92, i32 0, i32 9
  %93 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %scroll_data49, align 8
  %94 = bitcast %struct._GtkAdjustment* %93 to i8*
  %95 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %96 = bitcast %struct._GimpGradientEditor* %95 to i8*
  %call50 = call i64 @g_signal_connect_data(i8* %94, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._GimpGradientEditor*)* @gradient_editor_scrollbar_update to void ()*), i8* %96, void (i8*, %struct._GClosure*)* null, i32 0)
  %97 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %scroll_data51 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %97, i32 0, i32 9
  %98 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %scroll_data51, align 8
  %99 = bitcast %struct._GtkAdjustment* %98 to i8*
  %100 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %101 = bitcast %struct._GimpGradientEditor* %100 to i8*
  %call52 = call i64 @g_signal_connect_data(i8* %99, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._GimpGradientEditor*)* @gradient_editor_scrollbar_update to void ()*), i8* %101, void (i8*, %struct._GClosure*)* null, i32 0)
  %102 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %scroll_data53 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %102, i32 0, i32 9
  %103 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %scroll_data53, align 8
  %call54 = call %struct._GtkWidget* @gtk_scrollbar_new(i32 0, %struct._GtkAdjustment* %103)
  %104 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %scrollbar = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %104, i32 0, i32 6
  store %struct._GtkWidget* %call54, %struct._GtkWidget** %scrollbar, align 8
  %105 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %106 = bitcast %struct._GimpGradientEditor* %105 to %struct._GTypeInstance*
  %call55 = call i64 @gtk_box_get_type() #7
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %106, i64 %call55)
  %107 = bitcast %struct._GTypeInstance* %call56 to %struct._GtkBox*
  %108 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %scrollbar57 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %108, i32 0, i32 6
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** %scrollbar57, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %107, %struct._GtkWidget* %109, i32 0, i32 0, i32 0)
  %110 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %scrollbar58 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %110, i32 0, i32 6
  %111 = load %struct._GtkWidget*, %struct._GtkWidget** %scrollbar58, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %111)
  %call59 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 2)
  store %struct._GtkWidget* %call59, %struct._GtkWidget** %hbox, align 8
  %112 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %113 = bitcast %struct._GimpGradientEditor* %112 to %struct._GTypeInstance*
  %call60 = call i64 @gtk_box_get_type() #7
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %113, i64 %call60)
  %114 = bitcast %struct._GTypeInstance* %call61 to %struct._GtkBox*
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %114, %struct._GtkWidget* %115, i32 0, i32 0, i32 0)
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %116)
  %call62 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call62, %struct._GtkWidget** %frame, align 8
  %117 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %118 = bitcast %struct._GtkWidget* %117 to %struct._GTypeInstance*
  %call63 = call i64 @gtk_frame_get_type() #7
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %118, i64 %call63)
  %119 = bitcast %struct._GTypeInstance* %call64 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %119, i32 1)
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %121 = bitcast %struct._GtkWidget* %120 to %struct._GTypeInstance*
  %call65 = call i64 @gtk_box_get_type() #7
  %call66 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %121, i64 %call65)
  %122 = bitcast %struct._GTypeInstance* %call66 to %struct._GtkBox*
  %123 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %122, %struct._GtkWidget* %123, i32 0, i32 0, i32 0)
  %124 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %124)
  %call67 = call %struct._GtkWidget* @gimp_color_area_new(%struct._GimpRGB* %transp, i32 1, i32 768)
  %125 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %current_color = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %125, i32 0, i32 1
  store %struct._GtkWidget* %call67, %struct._GtkWidget** %current_color, align 8
  %126 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %127 = bitcast %struct._GtkWidget* %126 to %struct._GTypeInstance*
  %call68 = call i64 @gtk_container_get_type() #7
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %127, i64 %call68)
  %128 = bitcast %struct._GTypeInstance* %call69 to %struct._GtkContainer*
  %129 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %current_color70 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %129, i32 0, i32 1
  %130 = load %struct._GtkWidget*, %struct._GtkWidget** %current_color70, align 8
  call void @gtk_container_add(%struct._GtkContainer* %128, %struct._GtkWidget* %130)
  %131 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %current_color71 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %131, i32 0, i32 1
  %132 = load %struct._GtkWidget*, %struct._GtkWidget** %current_color71, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %132, i32 16, i32 -1)
  %133 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %current_color72 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %133, i32 0, i32 1
  %134 = load %struct._GtkWidget*, %struct._GtkWidget** %current_color72, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %134)
  %call73 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 0)
  store %struct._GtkWidget* %call73, %struct._GtkWidget** %hint_vbox, align 8
  %135 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %136 = bitcast %struct._GtkWidget* %135 to %struct._GTypeInstance*
  %call74 = call i64 @gtk_box_get_type() #7
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %136, i64 %call74)
  %137 = bitcast %struct._GTypeInstance* %call75 to %struct._GtkBox*
  %138 = load %struct._GtkWidget*, %struct._GtkWidget** %hint_vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %137, %struct._GtkWidget* %138, i32 1, i32 1, i32 0)
  %139 = load %struct._GtkWidget*, %struct._GtkWidget** %hint_vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %139)
  %140 = load %struct._GtkWidget*, %struct._GtkWidget** %hint_vbox, align 8
  %141 = bitcast %struct._GtkWidget* %140 to %struct._GTypeInstance*
  %call76 = call i64 @gtk_box_get_type() #7
  %call77 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %141, i64 %call76)
  %142 = bitcast %struct._GTypeInstance* %call77 to %struct._GtkBox*
  %call78 = call %struct._GtkWidget* @gradient_hint_label_add(%struct._GtkBox* %142)
  %143 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %hint_label1 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %143, i32 0, i32 2
  store %struct._GtkWidget* %call78, %struct._GtkWidget** %hint_label1, align 8
  %144 = load %struct._GtkWidget*, %struct._GtkWidget** %hint_vbox, align 8
  %145 = bitcast %struct._GtkWidget* %144 to %struct._GTypeInstance*
  %call79 = call i64 @gtk_box_get_type() #7
  %call80 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %145, i64 %call79)
  %146 = bitcast %struct._GTypeInstance* %call80 to %struct._GtkBox*
  %call81 = call %struct._GtkWidget* @gradient_hint_label_add(%struct._GtkBox* %146)
  %147 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %hint_label2 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %147, i32 0, i32 3
  store %struct._GtkWidget* %call81, %struct._GtkWidget** %hint_label2, align 8
  %148 = load %struct._GtkWidget*, %struct._GtkWidget** %hint_vbox, align 8
  %149 = bitcast %struct._GtkWidget* %148 to %struct._GTypeInstance*
  %call82 = call i64 @gtk_box_get_type() #7
  %call83 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %149, i64 %call82)
  %150 = bitcast %struct._GTypeInstance* %call83 to %struct._GtkBox*
  %call84 = call %struct._GtkWidget* @gradient_hint_label_add(%struct._GtkBox* %150)
  %151 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %hint_label3 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %151, i32 0, i32 4
  store %struct._GtkWidget* %call84, %struct._GtkWidget** %hint_label3, align 8
  %152 = load %struct._GtkWidget*, %struct._GtkWidget** %hint_vbox, align 8
  %153 = bitcast %struct._GtkWidget* %152 to %struct._GTypeInstance*
  %call85 = call i64 @gtk_box_get_type() #7
  %call86 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %153, i64 %call85)
  %154 = bitcast %struct._GTypeInstance* %call86 to %struct._GtkBox*
  %call87 = call %struct._GtkWidget* @gradient_hint_label_add(%struct._GtkBox* %154)
  %155 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %hint_label4 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %155, i32 0, i32 5
  store %struct._GtkWidget* %call87, %struct._GtkWidget** %hint_label4, align 8
  %156 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %left_saved_segments = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %156, i32 0, i32 25
  store %struct._GimpGradientSegment* null, %struct._GimpGradientSegment** %left_saved_segments, align 8
  %157 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %left_saved_dirty = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %157, i32 0, i32 26
  store i32 0, i32* %left_saved_dirty, align 4
  %158 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %right_saved_segments = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %158, i32 0, i32 27
  store %struct._GimpGradientSegment* null, %struct._GimpGradientSegment** %right_saved_segments, align 8
  %159 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %right_saved_dirty = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %159, i32 0, i32 28
  store i32 0, i32* %right_saved_dirty, align 4
  %160 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %saved_colors = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %160, i32 0, i32 24
  %arrayidx = getelementptr inbounds [10 x %struct._GimpRGB], [10 x %struct._GimpRGB]* %saved_colors, i32 0, i64 0
  call void @gimp_rgba_set(%struct._GimpRGB* %arrayidx, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  %161 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %saved_colors88 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %161, i32 0, i32 24
  %arrayidx89 = getelementptr inbounds [10 x %struct._GimpRGB], [10 x %struct._GimpRGB]* %saved_colors88, i32 0, i64 1
  call void @gimp_rgba_set(%struct._GimpRGB* %arrayidx89, double 5.000000e-01, double 5.000000e-01, double 5.000000e-01, double 1.000000e+00)
  %162 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %saved_colors90 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %162, i32 0, i32 24
  %arrayidx91 = getelementptr inbounds [10 x %struct._GimpRGB], [10 x %struct._GimpRGB]* %saved_colors90, i32 0, i64 2
  call void @gimp_rgba_set(%struct._GimpRGB* %arrayidx91, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00)
  %163 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %saved_colors92 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %163, i32 0, i32 24
  %arrayidx93 = getelementptr inbounds [10 x %struct._GimpRGB], [10 x %struct._GimpRGB]* %saved_colors92, i32 0, i64 3
  call void @gimp_rgba_set(%struct._GimpRGB* %arrayidx93, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  %164 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %saved_colors94 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %164, i32 0, i32 24
  %arrayidx95 = getelementptr inbounds [10 x %struct._GimpRGB], [10 x %struct._GimpRGB]* %saved_colors94, i32 0, i64 4
  call void @gimp_rgba_set(%struct._GimpRGB* %arrayidx95, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  %165 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %saved_colors96 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %165, i32 0, i32 24
  %arrayidx97 = getelementptr inbounds [10 x %struct._GimpRGB], [10 x %struct._GimpRGB]* %saved_colors96, i32 0, i64 5
  call void @gimp_rgba_set(%struct._GimpRGB* %arrayidx97, double 1.000000e+00, double 1.000000e+00, double 0.000000e+00, double 1.000000e+00)
  %166 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %saved_colors98 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %166, i32 0, i32 24
  %arrayidx99 = getelementptr inbounds [10 x %struct._GimpRGB], [10 x %struct._GimpRGB]* %saved_colors98, i32 0, i64 6
  call void @gimp_rgba_set(%struct._GimpRGB* %arrayidx99, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, double 1.000000e+00)
  %167 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %saved_colors100 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %167, i32 0, i32 24
  %arrayidx101 = getelementptr inbounds [10 x %struct._GimpRGB], [10 x %struct._GimpRGB]* %saved_colors100, i32 0, i64 7
  call void @gimp_rgba_set(%struct._GimpRGB* %arrayidx101, double 0.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00)
  %168 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %saved_colors102 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %168, i32 0, i32 24
  %arrayidx103 = getelementptr inbounds [10 x %struct._GimpRGB], [10 x %struct._GimpRGB]* %saved_colors102, i32 0, i64 8
  call void @gimp_rgba_set(%struct._GimpRGB* %arrayidx103, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00, double 1.000000e+00)
  %169 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %saved_colors104 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %169, i32 0, i32 24
  %arrayidx105 = getelementptr inbounds [10 x %struct._GimpRGB], [10 x %struct._GimpRGB]* %saved_colors104, i32 0, i64 9
  call void @gimp_rgba_set(%struct._GimpRGB* %arrayidx105, double 1.000000e+00, double 0.000000e+00, double 1.000000e+00, double 1.000000e+00)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_gradient_editor_docked_iface_init(%struct._GimpDockedInterface* %iface) #3 {
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
  store void (%struct._GimpDocked*, %struct._GimpContext*)* @gimp_gradient_editor_set_context, void (%struct._GimpDocked*, %struct._GimpContext*)** %set_context, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_docked_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_gradient_editor_new(%struct._GimpContext* %context, %struct._GimpMenuFactory* %menu_factory) #3 {
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_gradient_editor_new, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_gradient_editor_get_type() #7
  %13 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %14, i32 0, i32 1
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %gradient_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %15, i32 0, i32 40
  %16 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %gradient_factory, align 8
  %17 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %18 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call12 = call %struct._GimpGradient* @gimp_context_get_gradient(%struct._GimpContext* %18)
  %call13 = call i8* (i64, i8*, ...) @g_object_new(i64 %call11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), %struct._GimpMenuFactory* %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), %struct._GimpDataFactory* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), %struct._GimpContext* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), %struct._GimpGradient* %call12, i8* null)
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

declare %struct._GimpGradient* @gimp_context_get_gradient(%struct._GimpContext*) #1

; Function Attrs: nounwind uwtable
define void @gimp_gradient_editor_update(%struct._GimpGradientEditor* %editor) #3 {
entry:
  %editor.addr = alloca %struct._GimpGradientEditor*, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpGradientEditor* %editor, %struct._GimpGradientEditor** %editor.addr, align 8
  store %struct._GimpGradient* null, %struct._GimpGradient** %gradient, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpGradientEditor* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_gradient_editor_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_gradient_editor_update, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %14 = bitcast %struct._GimpGradientEditor* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_data_editor_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpDataEditor*
  %data = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %15, i32 0, i32 4
  %16 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %tobool13 = icmp ne %struct._GimpData* %16, null
  br i1 %tobool13, label %if.then.14, label %if.end.20

if.then.14:                                       ; preds = %do.end
  %17 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %18 = bitcast %struct._GimpGradientEditor* %17 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_data_editor_get_type() #7
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call15)
  %19 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpDataEditor*
  %data17 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %19, i32 0, i32 4
  %20 = load %struct._GimpData*, %struct._GimpData** %data17, align 8
  %21 = bitcast %struct._GimpData* %20 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_gradient_get_type() #7
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call18)
  %22 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpGradient*
  store %struct._GimpGradient* %22, %struct._GimpGradient** %gradient, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.14, %do.end
  %23 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %24 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  call void @control_update(%struct._GimpGradientEditor* %23, %struct._GimpGradient* %24, i32 0)
  br label %return

return:                                           ; preds = %if.end.20, %if.else.9
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_gradient_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @control_update(%struct._GimpGradientEditor* %editor, %struct._GimpGradient* %gradient, i32 %reset_selection) #3 {
entry:
  %editor.addr = alloca %struct._GimpGradientEditor*, align 8
  %gradient.addr = alloca %struct._GimpGradient*, align 8
  %reset_selection.addr = alloca i32, align 4
  store %struct._GimpGradientEditor* %editor, %struct._GimpGradientEditor** %editor.addr, align 8
  store %struct._GimpGradient* %gradient, %struct._GimpGradient** %gradient.addr, align 8
  store i32 %reset_selection, i32* %reset_selection.addr, align 4
  %0 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_sel_l = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %0, i32 0, i32 14
  %1 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l, align 8
  %tobool = icmp ne %struct._GimpGradientSegment* %1, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_sel_r = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %2, i32 0, i32 15
  %3 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_r, align 8
  %tobool1 = icmp ne %struct._GimpGradientSegment* %3, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* %reset_selection.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %4 = load i32, i32* %reset_selection.addr, align 4
  %tobool2 = icmp ne i32 %4, 0
  br i1 %tobool2, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %if.end
  %5 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %tobool4 = icmp ne %struct._GimpGradient* %5, null
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then.3
  %6 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %7 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %segments = getelementptr inbounds %struct._GimpGradient, %struct._GimpGradient* %7, i32 0, i32 1
  %8 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segments, align 8
  call void @control_select_single_segment(%struct._GimpGradientEditor* %6, %struct._GimpGradientSegment* %8)
  br label %if.end.6

if.else:                                          ; preds = %if.then.3
  %9 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  call void @control_select_single_segment(%struct._GimpGradientEditor* %9, %struct._GimpGradientSegment* null)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %if.end
  %10 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %10, i32 0, i32 7
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %control, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %11)
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_gradient_editor_zoom(%struct._GimpGradientEditor* %editor, i32 %zoom_type) #3 {
entry:
  %editor.addr = alloca %struct._GimpGradientEditor*, align 8
  %zoom_type.addr = alloca i32, align 4
  %adjustment = alloca %struct._GtkAdjustment*, align 8
  %old_value = alloca double, align 8
  %old_page_size = alloca double, align 8
  %value = alloca double, align 8
  %page_size = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpGradientEditor* %editor, %struct._GimpGradientEditor** %editor.addr, align 8
  store i32 %zoom_type, i32* %zoom_type.addr, align 4
  store double 0.000000e+00, double* %value, align 8
  store double 1.000000e+00, double* %page_size, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpGradientEditor* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_gradient_editor_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_gradient_editor_zoom, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %scroll_data = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %13, i32 0, i32 9
  %14 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %scroll_data, align 8
  store %struct._GtkAdjustment* %14, %struct._GtkAdjustment** %adjustment, align 8
  %15 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment, align 8
  %call11 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %15)
  store double %call11, double* %old_value, align 8
  %16 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment, align 8
  %call12 = call double @gtk_adjustment_get_page_size(%struct._GtkAdjustment* %16)
  store double %call12, double* %old_page_size, align 8
  %17 = load i32, i32* %zoom_type.addr, align 4
  switch i32 %17, label %sw.epilog [
    i32 4, label %sw.bb
    i32 2, label %sw.bb
    i32 0, label %sw.bb
    i32 3, label %sw.bb.15
    i32 1, label %sw.bb.15
    i32 5, label %sw.bb.39
    i32 6, label %sw.bb.39
  ]

sw.bb:                                            ; preds = %do.end, %do.end, %do.end
  %18 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %zoom_factor = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %18, i32 0, i32 8
  %19 = load i32, i32* %zoom_factor, align 4
  %inc = add i32 %19, 1
  store i32 %inc, i32* %zoom_factor, align 4
  %20 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %zoom_factor13 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %20, i32 0, i32 8
  %21 = load i32, i32* %zoom_factor13, align 4
  %conv = uitofp i32 %21 to double
  %div = fdiv double 1.000000e+00, %conv
  store double %div, double* %page_size, align 8
  %22 = load double, double* %old_value, align 8
  %23 = load double, double* %old_page_size, align 8
  %24 = load double, double* %page_size, align 8
  %sub = fsub double %23, %24
  %div14 = fdiv double %sub, 2.000000e+00
  %add = fadd double %22, %div14
  store double %add, double* %value, align 8
  br label %sw.epilog

sw.bb.15:                                         ; preds = %do.end, %do.end
  %25 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %zoom_factor16 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %25, i32 0, i32 8
  %26 = load i32, i32* %zoom_factor16, align 4
  %cmp17 = icmp ule i32 %26, 1
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %sw.bb.15
  br label %return

if.end.20:                                        ; preds = %sw.bb.15
  %27 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %zoom_factor21 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %27, i32 0, i32 8
  %28 = load i32, i32* %zoom_factor21, align 4
  %dec = add i32 %28, -1
  store i32 %dec, i32* %zoom_factor21, align 4
  %29 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %zoom_factor22 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %29, i32 0, i32 8
  %30 = load i32, i32* %zoom_factor22, align 4
  %conv23 = uitofp i32 %30 to double
  %div24 = fdiv double 1.000000e+00, %conv23
  store double %div24, double* %page_size, align 8
  %31 = load double, double* %old_value, align 8
  %32 = load double, double* %page_size, align 8
  %33 = load double, double* %old_page_size, align 8
  %sub25 = fsub double %32, %33
  %div26 = fdiv double %sub25, 2.000000e+00
  %sub27 = fsub double %31, %div26
  store double %sub27, double* %value, align 8
  %34 = load double, double* %value, align 8
  %cmp28 = fcmp olt double %34, 0.000000e+00
  br i1 %cmp28, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %if.end.20
  store double 0.000000e+00, double* %value, align 8
  br label %if.end.38

if.else.31:                                       ; preds = %if.end.20
  %35 = load double, double* %value, align 8
  %36 = load double, double* %page_size, align 8
  %add32 = fadd double %35, %36
  %cmp33 = fcmp ogt double %add32, 1.000000e+00
  br i1 %cmp33, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %if.else.31
  %37 = load double, double* %page_size, align 8
  %sub36 = fsub double 1.000000e+00, %37
  store double %sub36, double* %value, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %if.else.31
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.30
  br label %sw.epilog

sw.bb.39:                                         ; preds = %do.end, %do.end
  %38 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %zoom_factor40 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %38, i32 0, i32 8
  store i32 1, i32* %zoom_factor40, align 4
  store double 0.000000e+00, double* %value, align 8
  store double 1.000000e+00, double* %page_size, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.39, %if.end.38, %sw.bb
  %39 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment, align 8
  %40 = load double, double* %value, align 8
  %41 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment, align 8
  %call41 = call double @gtk_adjustment_get_lower(%struct._GtkAdjustment* %41)
  %42 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment, align 8
  %call42 = call double @gtk_adjustment_get_upper(%struct._GtkAdjustment* %42)
  %43 = load double, double* %page_size, align 8
  %mul = fmul double %43, 5.000000e-02
  %44 = load double, double* %page_size, align 8
  %mul43 = fmul double %44, 7.500000e-01
  %45 = load double, double* %page_size, align 8
  call void @gtk_adjustment_configure(%struct._GtkAdjustment* %39, double %40, double %call41, double %call42, double %mul, double %mul43, double %45)
  br label %return

return:                                           ; preds = %sw.epilog, %if.then.19, %if.else.9
  ret void
}

declare double @gtk_adjustment_get_value(%struct._GtkAdjustment*) #1

declare double @gtk_adjustment_get_page_size(%struct._GtkAdjustment*) #1

declare void @gtk_adjustment_configure(%struct._GtkAdjustment*, double, double, double, double, double, double) #1

declare double @gtk_adjustment_get_lower(%struct._GtkAdjustment*) #1

declare double @gtk_adjustment_get_upper(%struct._GtkAdjustment*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_gradient_editor_class_init(%struct._GimpGradientEditorClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpGradientEditorClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  %editor_class = alloca %struct._GimpDataEditorClass*, align 8
  store %struct._GimpGradientEditorClass* %klass, %struct._GimpGradientEditorClass** %klass.addr, align 8
  %0 = load %struct._GimpGradientEditorClass*, %struct._GimpGradientEditorClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpGradientEditorClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpGradientEditorClass*, %struct._GimpGradientEditorClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpGradientEditorClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_widget_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %5, %struct._GtkWidgetClass** %widget_class, align 8
  %6 = load %struct._GimpGradientEditorClass*, %struct._GimpGradientEditorClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpGradientEditorClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_data_editor_get_type() #7
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpDataEditorClass*
  store %struct._GimpDataEditorClass* %8, %struct._GimpDataEditorClass** %editor_class, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_gradient_editor_constructed, void (%struct._GObject*)** %constructed, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_gradient_editor_dispose, void (%struct._GObject*)** %dispose, align 8
  %11 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %unmap = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %11, i32 0, i32 9
  store void (%struct._GtkWidget*)* @gimp_gradient_editor_unmap, void (%struct._GtkWidget*)** %unmap, align 8
  %12 = load %struct._GimpDataEditorClass*, %struct._GimpDataEditorClass** %editor_class, align 8
  %set_data = getelementptr inbounds %struct._GimpDataEditorClass, %struct._GimpDataEditorClass* %12, i32 0, i32 1
  store void (%struct._GimpDataEditor*, %struct._GimpData*)* @gimp_gradient_editor_set_data, void (%struct._GimpDataEditor*, %struct._GimpData*)** %set_data, align 8
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0)) #6
  %13 = load %struct._GimpDataEditorClass*, %struct._GimpDataEditorClass** %editor_class, align 8
  %title = getelementptr inbounds %struct._GimpDataEditorClass, %struct._GimpDataEditorClass* %13, i32 0, i32 2
  store i8* %call5, i8** %title, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_gradient_editor_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %editor = alloca %struct._GimpGradientEditor*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_gradient_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGradientEditor*
  store %struct._GimpGradientEditor* %2, %struct._GimpGradientEditor** %editor, align 8
  %3 = load i8*, i8** @gimp_gradient_editor_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 9
  %6 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_gradient_editor_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 80)
  %9 = bitcast %struct._GTypeClass* %call3 to %struct._GObjectClass*
  %constructed4 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  %10 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed4, align 8
  %11 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %10(%struct._GObject* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %13 = bitcast %struct._GimpGradientEditor* %12 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_editor_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call5)
  %14 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpEditor*
  %call7 = call %struct._GtkWidget* (%struct._GimpEditor*, i8*, i8*, ...) @gimp_editor_add_action_button(%struct._GimpEditor* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %15 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %16 = bitcast %struct._GimpGradientEditor* %15 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_editor_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call8)
  %17 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpEditor*
  %call10 = call %struct._GtkWidget* (%struct._GimpEditor*, i8*, i8*, ...) @gimp_editor_add_action_button(%struct._GimpEditor* %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i32 0, i32 0), i8* null)
  %18 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %19 = bitcast %struct._GimpGradientEditor* %18 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_editor_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call11)
  %20 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpEditor*
  %call13 = call %struct._GtkWidget* (%struct._GimpEditor*, i8*, i8*, ...) @gimp_editor_add_action_button(%struct._GimpEditor* %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0), i8* null)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_gradient_editor_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %editor = alloca %struct._GimpGradientEditor*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_gradient_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGradientEditor*
  store %struct._GimpGradientEditor* %2, %struct._GimpGradientEditor** %editor, align 8
  %3 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %color_dialog = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %3, i32 0, i32 10
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %color_dialog, align 8
  %tobool = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %color_dialog2 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %5, i32 0, i32 10
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %color_dialog2, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_dialog_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkDialog*
  call void @gtk_dialog_response(%struct._GtkDialog* %8, i32 -6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8*, i8** @gimp_gradient_editor_parent_class, align 8
  %10 = bitcast i8* %9 to %struct._GTypeClass*
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 80)
  %11 = bitcast %struct._GTypeClass* %call5 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %11, i32 0, i32 5
  %12 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %13 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %12(%struct._GObject* %13)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_gradient_editor_unmap(%struct._GtkWidget* %widget) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %editor = alloca %struct._GimpGradientEditor*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_gradient_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGradientEditor*
  store %struct._GimpGradientEditor* %2, %struct._GimpGradientEditor** %editor, align 8
  %3 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %color_dialog = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %3, i32 0, i32 10
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %color_dialog, align 8
  %tobool = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %color_dialog2 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %5, i32 0, i32 10
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %color_dialog2, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_dialog_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkDialog*
  call void @gtk_dialog_response(%struct._GtkDialog* %8, i32 -6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8*, i8** @gimp_gradient_editor_parent_class, align 8
  %10 = bitcast i8* %9 to %struct._GTypeClass*
  %call5 = call i64 @gtk_widget_get_type() #7
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 %call5)
  %11 = bitcast %struct._GTypeClass* %call6 to %struct._GtkWidgetClass*
  %unmap = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %11, i32 0, i32 9
  %12 = load void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)** %unmap, align 8
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void %12(%struct._GtkWidget* %13)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_gradient_editor_set_data(%struct._GimpDataEditor* %editor, %struct._GimpData* %data) #3 {
entry:
  %editor.addr = alloca %struct._GimpDataEditor*, align 8
  %data.addr = alloca %struct._GimpData*, align 8
  %gradient_editor = alloca %struct._GimpGradientEditor*, align 8
  %old_data = alloca %struct._GimpData*, align 8
  store %struct._GimpDataEditor* %editor, %struct._GimpDataEditor** %editor.addr, align 8
  store %struct._GimpData* %data, %struct._GimpData** %data.addr, align 8
  %0 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpDataEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_gradient_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGradientEditor*
  store %struct._GimpGradientEditor* %2, %struct._GimpGradientEditor** %gradient_editor, align 8
  %3 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %gradient_editor, align 8
  %color_dialog = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %3, i32 0, i32 10
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %color_dialog, align 8
  %tobool = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %gradient_editor, align 8
  %color_dialog2 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %5, i32 0, i32 10
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %color_dialog2, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_dialog_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkDialog*
  call void @gtk_dialog_response(%struct._GtkDialog* %8, i32 -6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %call5 = call %struct._GimpData* @gimp_data_editor_get_data(%struct._GimpDataEditor* %9)
  store %struct._GimpData* %call5, %struct._GimpData** %old_data, align 8
  %10 = load %struct._GimpData*, %struct._GimpData** %old_data, align 8
  %tobool6 = icmp ne %struct._GimpData* %10, null
  br i1 %tobool6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %11 = load %struct._GimpData*, %struct._GimpData** %old_data, align 8
  %12 = bitcast %struct._GimpData* %11 to i8*
  %13 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %gradient_editor, align 8
  %14 = bitcast %struct._GimpGradientEditor* %13 to i8*
  %call8 = call i32 @g_signal_handlers_disconnect_matched(i8* %12, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpGradientEditor*, %struct._GimpGradient*)* @gimp_gradient_editor_gradient_dirty to i8*), i8* %14)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end
  %15 = load i8*, i8** @gimp_gradient_editor_parent_class, align 8
  %16 = bitcast i8* %15 to %struct._GTypeClass*
  %call10 = call i64 @gimp_data_editor_get_type() #7
  %call11 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %16, i64 %call10)
  %17 = bitcast %struct._GTypeClass* %call11 to %struct._GimpDataEditorClass*
  %set_data = getelementptr inbounds %struct._GimpDataEditorClass, %struct._GimpDataEditorClass* %17, i32 0, i32 1
  %18 = load void (%struct._GimpDataEditor*, %struct._GimpData*)*, void (%struct._GimpDataEditor*, %struct._GimpData*)** %set_data, align 8
  %19 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %20 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  call void %18(%struct._GimpDataEditor* %19, %struct._GimpData* %20)
  %21 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %tobool12 = icmp ne %struct._GimpData* %21, null
  br i1 %tobool12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end.9
  %22 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %23 = bitcast %struct._GimpData* %22 to i8*
  %24 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %gradient_editor, align 8
  %25 = bitcast %struct._GimpGradientEditor* %24 to i8*
  %call14 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), void ()* bitcast (void (%struct._GimpGradientEditor*, %struct._GimpGradient*)* @gimp_gradient_editor_gradient_dirty to void ()*), i8* %25, void (i8*, %struct._GClosure*)* null, i32 2)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.end.9
  %26 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %view = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %26, i32 0, i32 7
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_view_get_type() #7
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call16)
  %29 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpView*
  %30 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %31 = bitcast %struct._GimpData* %30 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_viewable_get_type() #7
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call18)
  %32 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpViewable*
  call void @gimp_view_set_viewable(%struct._GimpView* %29, %struct._GimpViewable* %32)
  %33 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %gradient_editor, align 8
  %34 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %35 = bitcast %struct._GimpData* %34 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_gradient_get_type() #7
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call20)
  %36 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpGradient*
  call void @control_update(%struct._GimpGradientEditor* %33, %struct._GimpGradient* %36, i32 1)
  ret void
}

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

declare %struct._GtkWidget* @gimp_editor_add_action_button(%struct._GimpEditor*, i8*, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_editor_get_type() #2

declare void @gtk_dialog_response(%struct._GtkDialog*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #2

declare %struct._GimpData* @gimp_data_editor_get_data(%struct._GimpDataEditor*) #1

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_gradient_editor_gradient_dirty(%struct._GimpGradientEditor* %editor, %struct._GimpGradient* %gradient) #3 {
entry:
  %editor.addr = alloca %struct._GimpGradientEditor*, align 8
  %gradient.addr = alloca %struct._GimpGradient*, align 8
  %segment = alloca %struct._GimpGradientSegment*, align 8
  %left_seen = alloca i32, align 4
  %right_seen = alloca i32, align 4
  %tmp = alloca %struct._GimpGradientSegment*, align 8
  store %struct._GimpGradientEditor* %editor, %struct._GimpGradientEditor** %editor.addr, align 8
  store %struct._GimpGradient* %gradient, %struct._GimpGradient** %gradient.addr, align 8
  store i32 0, i32* %left_seen, align 4
  store i32 0, i32* %right_seen, align 4
  %0 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %segments = getelementptr inbounds %struct._GimpGradient, %struct._GimpGradient* %0, i32 0, i32 1
  %1 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segments, align 8
  store %struct._GimpGradientSegment* %1, %struct._GimpGradientSegment** %segment, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segment, align 8
  %tobool = icmp ne %struct._GimpGradientSegment* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segment, align 8
  %4 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_sel_l = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %4, i32 0, i32 14
  %5 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l, align 8
  %cmp = icmp eq %struct._GimpGradientSegment* %3, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %left_seen, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %6 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segment, align 8
  %7 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_sel_r = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %7, i32 0, i32 15
  %8 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_r, align 8
  %cmp1 = icmp eq %struct._GimpGradientSegment* %6, %8
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 1, i32* %right_seen, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %9 = load i32, i32* %right_seen, align 4
  %tobool4 = icmp ne i32 %9, 0
  br i1 %tobool4, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %if.end.3
  %10 = load i32, i32* %left_seen, align 4
  %tobool5 = icmp ne i32 %10, 0
  br i1 %tobool5, label %if.end.11, label %if.then.6

if.then.6:                                        ; preds = %land.lhs.true
  %11 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_sel_l7 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %11, i32 0, i32 14
  %12 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l7, align 8
  store %struct._GimpGradientSegment* %12, %struct._GimpGradientSegment** %tmp, align 8
  %13 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_sel_r8 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %13, i32 0, i32 15
  %14 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_r8, align 8
  %15 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_sel_l9 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %15, i32 0, i32 14
  store %struct._GimpGradientSegment* %14, %struct._GimpGradientSegment** %control_sel_l9, align 8
  %16 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %tmp, align 8
  %17 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_sel_r10 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %17, i32 0, i32 15
  store %struct._GimpGradientSegment* %16, %struct._GimpGradientSegment** %control_sel_r10, align 8
  store i32 0, i32* %right_seen, align 4
  store i32 1, i32* %left_seen, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.6, %land.lhs.true, %if.end.3
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %18 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segment, align 8
  %next = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %18, i32 0, i32 10
  %19 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next, align 8
  store %struct._GimpGradientSegment* %19, %struct._GimpGradientSegment** %segment, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %21 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %22 = load i32, i32* %left_seen, align 4
  %tobool12 = icmp ne i32 %22, 0
  br i1 %tobool12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.end
  %23 = load i32, i32* %right_seen, align 4
  %tobool13 = icmp ne i32 %23, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.end
  %24 = phi i1 [ false, %for.end ], [ %tobool13, %land.rhs ]
  %lnot = xor i1 %24, true
  %lnot.ext = zext i1 %lnot to i32
  call void @control_update(%struct._GimpGradientEditor* %20, %struct._GimpGradient* %21, i32 %lnot.ext)
  ret void
}

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare void @gimp_view_set_viewable(%struct._GimpView*, %struct._GimpViewable*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_view_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

declare i8* @g_type_interface_peek_parent(i8*) #1

declare i8* @g_type_default_interface_peek(i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_gradient_editor_set_context(%struct._GimpDocked* %docked, %struct._GimpContext* %context) #3 {
entry:
  %docked.addr = alloca %struct._GimpDocked*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %data_editor = alloca %struct._GimpDataEditor*, align 8
  store %struct._GimpDocked* %docked, %struct._GimpDocked** %docked.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpDocked*, %struct._GimpDocked** %docked.addr, align 8
  %1 = bitcast %struct._GimpDocked* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDataEditor*
  store %struct._GimpDataEditor* %2, %struct._GimpDataEditor** %data_editor, align 8
  %3 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** @parent_docked_iface, align 8
  %set_context = getelementptr inbounds %struct._GimpDockedInterface, %struct._GimpDockedInterface* %3, i32 0, i32 8
  %4 = load void (%struct._GimpDocked*, %struct._GimpContext*)*, void (%struct._GimpDocked*, %struct._GimpContext*)** %set_context, align 8
  %5 = load %struct._GimpDocked*, %struct._GimpDocked** %docked.addr, align 8
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void %4(%struct._GimpDocked* %5, %struct._GimpContext* %6)
  %7 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %view = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %7, i32 0, i32 7
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

declare void @gimp_view_renderer_set_context(%struct._GimpViewRenderer*, %struct._GimpContext*) #1

declare void @gimp_rgba_set(%struct._GimpRGB*, double, double, double, double) #1

declare %struct._GtkWidget* @gtk_frame_new(i8*) #1

declare void @gtk_frame_set_shadow_type(%struct._GtkFrame*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #2

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare %struct._GtkWidget* @gimp_view_new_full_by_types(%struct._GimpContext*, i64, i64, i32, i32, i32, i32, i32, i32) #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gtk_widget_set_events(%struct._GtkWidget*, i32) #1

declare void @gimp_view_set_expand(%struct._GimpView*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @view_events(%struct._GtkWidget* %widget, %union._GdkEvent* %event, %struct._GimpGradientEditor* %editor) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %union._GdkEvent*, align 8
  %editor.addr = alloca %struct._GimpGradientEditor*, align 8
  %data_editor = alloca %struct._GimpDataEditor*, align 8
  %mevent = alloca %struct._GdkEventMotion*, align 8
  %bevent = alloca %struct._GdkEventButton*, align 8
  %sevent = alloca %struct._GdkEventScroll*, align 8
  %adj = alloca %struct._GtkAdjustment*, align 8
  %value = alloca float, align 4
  %bevent92 = alloca %struct._GdkEventButton*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %union._GdkEvent* %event, %union._GdkEvent** %event.addr, align 8
  store %struct._GimpGradientEditor* %editor, %struct._GimpGradientEditor** %editor.addr, align 8
  %0 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpGradientEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDataEditor*
  store %struct._GimpDataEditor* %2, %struct._GimpDataEditor** %data_editor, align 8
  %3 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %data = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %3, i32 0, i32 4
  %4 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %tobool = icmp ne %struct._GimpData* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %type = bitcast %union._GdkEvent* %5 to i32*
  %6 = load i32, i32* %type, align 4
  switch i32 %6, label %sw.default.105 [
    i32 11, label %sw.bb
    i32 3, label %sw.bb.2
    i32 4, label %sw.bb.18
    i32 31, label %sw.bb.42
    i32 7, label %sw.bb.88
  ]

sw.bb:                                            ; preds = %if.end
  %7 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  call void @gradient_editor_set_hint(%struct._GimpGradientEditor* %7, i8* null, i8* null, i8* null, i8* null)
  br label %sw.epilog.106

sw.bb.2:                                          ; preds = %if.end
  %8 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %9 = bitcast %union._GdkEvent* %8 to %struct._GdkEventMotion*
  store %struct._GdkEventMotion* %9, %struct._GdkEventMotion** %mevent, align 8
  %10 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  %x = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %10, i32 0, i32 4
  %11 = load double, double* %x, align 8
  %12 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %view_last_x = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %12, i32 0, i32 11
  %13 = load i32, i32* %view_last_x, align 4
  %conv = sitofp i32 %13 to double
  %cmp = fcmp une double %11, %conv
  br i1 %cmp, label %if.then.4, label %if.end.17

if.then.4:                                        ; preds = %sw.bb.2
  %14 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  %x5 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %14, i32 0, i32 4
  %15 = load double, double* %x5, align 8
  %conv6 = fptosi double %15 to i32
  %16 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %view_last_x7 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %16, i32 0, i32 11
  store i32 %conv6, i32* %view_last_x7, align 4
  %17 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %view_button_down = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %17, i32 0, i32 12
  %18 = load i32, i32* %view_button_down, align 4
  %tobool8 = icmp ne i32 %18, 0
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then.4
  %19 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %20 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  %state = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %20, i32 0, i32 7
  %21 = load i32, i32* %state, align 4
  %call10 = call i32 @gimp_get_toggle_behavior_mask()
  %and = and i32 %21, %call10
  %tobool11 = icmp ne i32 %and, 0
  %cond = select i1 %tobool11, i32 2, i32 1
  %22 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  %x12 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %22, i32 0, i32 4
  %23 = load double, double* %x12, align 8
  %conv13 = fptosi double %23 to i32
  call void @view_pick_color(%struct._GimpGradientEditor* %19, i32 %cond, i32 %conv13)
  br label %if.end.16

if.else:                                          ; preds = %if.then.4
  %24 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %25 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  %x14 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %25, i32 0, i32 4
  %26 = load double, double* %x14, align 8
  %conv15 = fptosi double %26 to i32
  call void @view_set_hint(%struct._GimpGradientEditor* %24, i32 %conv15)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.9
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %sw.bb.2
  %27 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  call void @gdk_event_request_motions(%struct._GdkEventMotion* %27)
  br label %sw.epilog.106

sw.bb.18:                                         ; preds = %if.end
  %28 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %29 = bitcast %union._GdkEvent* %28 to %struct._GdkEventButton*
  store %struct._GdkEventButton* %29, %struct._GdkEventButton** %bevent, align 8
  %30 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %31 = bitcast %struct._GdkEventButton* %30 to %union._GdkEvent*
  %call19 = call i32 @gdk_event_triggers_context_menu(%union._GdkEvent* %31)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.21, label %if.else.25

if.then.21:                                       ; preds = %sw.bb.18
  %32 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %33 = bitcast %struct._GimpGradientEditor* %32 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_editor_get_type() #7
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call22)
  %34 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpEditor*
  %call24 = call i32 @gimp_editor_popup_menu(%struct._GimpEditor* %34, void (%struct._GtkMenu*, i32*, i32*, i8*)* null, i8* null)
  br label %if.end.41

if.else.25:                                       ; preds = %sw.bb.18
  %35 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %35, i32 0, i32 8
  %36 = load i32, i32* %button, align 4
  %cmp26 = icmp eq i32 %36, 1
  br i1 %cmp26, label %if.then.28, label %if.end.40

if.then.28:                                       ; preds = %if.else.25
  %37 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %x29 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %37, i32 0, i32 4
  %38 = load double, double* %x29, align 8
  %conv30 = fptosi double %38 to i32
  %39 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %view_last_x31 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %39, i32 0, i32 11
  store i32 %conv30, i32* %view_last_x31, align 4
  %40 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %view_button_down32 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %40, i32 0, i32 12
  store i32 1, i32* %view_button_down32, align 4
  %41 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %42 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %state33 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %42, i32 0, i32 7
  %43 = load i32, i32* %state33, align 4
  %call34 = call i32 @gimp_get_toggle_behavior_mask()
  %and35 = and i32 %43, %call34
  %tobool36 = icmp ne i32 %and35, 0
  %cond37 = select i1 %tobool36, i32 2, i32 1
  %44 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %x38 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %44, i32 0, i32 4
  %45 = load double, double* %x38, align 8
  %conv39 = fptosi double %45 to i32
  call void @view_pick_color(%struct._GimpGradientEditor* %41, i32 %cond37, i32 %conv39)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.28, %if.else.25
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.21
  br label %sw.epilog.106

sw.bb.42:                                         ; preds = %if.end
  %46 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %47 = bitcast %union._GdkEvent* %46 to %struct._GdkEventScroll*
  store %struct._GdkEventScroll* %47, %struct._GdkEventScroll** %sevent, align 8
  %48 = load %struct._GdkEventScroll*, %struct._GdkEventScroll** %sevent, align 8
  %state43 = getelementptr inbounds %struct._GdkEventScroll, %struct._GdkEventScroll* %48, i32 0, i32 6
  %49 = load i32, i32* %state43, align 4
  %call44 = call i32 @gimp_get_toggle_behavior_mask()
  %and45 = and i32 %49, %call44
  %tobool46 = icmp ne i32 %and45, 0
  br i1 %tobool46, label %if.then.47, label %if.else.50

if.then.47:                                       ; preds = %sw.bb.42
  %50 = load %struct._GdkEventScroll*, %struct._GdkEventScroll** %sevent, align 8
  %direction = getelementptr inbounds %struct._GdkEventScroll, %struct._GdkEventScroll* %50, i32 0, i32 7
  %51 = load i32, i32* %direction, align 4
  switch i32 %51, label %sw.default [
    i32 0, label %sw.bb.48
    i32 1, label %sw.bb.49
  ]

sw.bb.48:                                         ; preds = %if.then.47
  %52 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  call void @gimp_gradient_editor_zoom(%struct._GimpGradientEditor* %52, i32 0)
  br label %sw.epilog

sw.bb.49:                                         ; preds = %if.then.47
  %53 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  call void @gimp_gradient_editor_zoom(%struct._GimpGradientEditor* %53, i32 1)
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.47
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.49, %sw.bb.48
  br label %if.end.87

if.else.50:                                       ; preds = %sw.bb.42
  %54 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %scroll_data = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %54, i32 0, i32 9
  %55 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %scroll_data, align 8
  store %struct._GtkAdjustment* %55, %struct._GtkAdjustment** %adj, align 8
  %56 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call51 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %56)
  %conv52 = fptrunc double %call51 to float
  store float %conv52, float* %value, align 4
  %57 = load %struct._GdkEventScroll*, %struct._GdkEventScroll** %sevent, align 8
  %direction53 = getelementptr inbounds %struct._GdkEventScroll, %struct._GdkEventScroll* %57, i32 0, i32 7
  %58 = load i32, i32* %direction53, align 4
  switch i32 %58, label %sw.default.63 [
    i32 0, label %sw.bb.54
    i32 1, label %sw.bb.58
  ]

sw.bb.54:                                         ; preds = %if.else.50
  %59 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call55 = call double @gtk_adjustment_get_page_increment(%struct._GtkAdjustment* %59)
  %div = fdiv double %call55, 2.000000e+00
  %60 = load float, float* %value, align 4
  %conv56 = fpext float %60 to double
  %sub = fsub double %conv56, %div
  %conv57 = fptrunc double %sub to float
  store float %conv57, float* %value, align 4
  br label %sw.epilog.64

sw.bb.58:                                         ; preds = %if.else.50
  %61 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call59 = call double @gtk_adjustment_get_page_increment(%struct._GtkAdjustment* %61)
  %div60 = fdiv double %call59, 2.000000e+00
  %62 = load float, float* %value, align 4
  %conv61 = fpext float %62 to double
  %add = fadd double %conv61, %div60
  %conv62 = fptrunc double %add to float
  store float %conv62, float* %value, align 4
  br label %sw.epilog.64

sw.default.63:                                    ; preds = %if.else.50
  br label %sw.epilog.64

sw.epilog.64:                                     ; preds = %sw.default.63, %sw.bb.58, %sw.bb.54
  %63 = load float, float* %value, align 4
  %conv65 = fpext float %63 to double
  %64 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call66 = call double @gtk_adjustment_get_upper(%struct._GtkAdjustment* %64)
  %65 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call67 = call double @gtk_adjustment_get_page_size(%struct._GtkAdjustment* %65)
  %sub68 = fsub double %call66, %call67
  %cmp69 = fcmp ogt double %conv65, %sub68
  br i1 %cmp69, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.epilog.64
  %66 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call71 = call double @gtk_adjustment_get_upper(%struct._GtkAdjustment* %66)
  %67 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call72 = call double @gtk_adjustment_get_page_size(%struct._GtkAdjustment* %67)
  %sub73 = fsub double %call71, %call72
  br label %cond.end.83

cond.false:                                       ; preds = %sw.epilog.64
  %68 = load float, float* %value, align 4
  %conv74 = fpext float %68 to double
  %69 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call75 = call double @gtk_adjustment_get_lower(%struct._GtkAdjustment* %69)
  %cmp76 = fcmp olt double %conv74, %call75
  br i1 %cmp76, label %cond.true.78, label %cond.false.80

cond.true.78:                                     ; preds = %cond.false
  %70 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call79 = call double @gtk_adjustment_get_lower(%struct._GtkAdjustment* %70)
  br label %cond.end

cond.false.80:                                    ; preds = %cond.false
  %71 = load float, float* %value, align 4
  %conv81 = fpext float %71 to double
  br label %cond.end

cond.end:                                         ; preds = %cond.false.80, %cond.true.78
  %cond82 = phi double [ %call79, %cond.true.78 ], [ %conv81, %cond.false.80 ]
  br label %cond.end.83

cond.end.83:                                      ; preds = %cond.end, %cond.true
  %cond84 = phi double [ %sub73, %cond.true ], [ %cond82, %cond.end ]
  %conv85 = fptrunc double %cond84 to float
  store float %conv85, float* %value, align 4
  %72 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %73 = load float, float* %value, align 4
  %conv86 = fpext float %73 to double
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %72, double %conv86)
  br label %if.end.87

if.end.87:                                        ; preds = %cond.end.83, %sw.epilog
  br label %sw.epilog.106

sw.bb.88:                                         ; preds = %if.end
  %74 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %view_button_down89 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %74, i32 0, i32 12
  %75 = load i32, i32* %view_button_down89, align 4
  %tobool90 = icmp ne i32 %75, 0
  br i1 %tobool90, label %if.then.91, label %if.end.104

if.then.91:                                       ; preds = %sw.bb.88
  %76 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %77 = bitcast %union._GdkEvent* %76 to %struct._GdkEventButton*
  store %struct._GdkEventButton* %77, %struct._GdkEventButton** %bevent92, align 8
  %78 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent92, align 8
  %x93 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %78, i32 0, i32 4
  %79 = load double, double* %x93, align 8
  %conv94 = fptosi double %79 to i32
  %80 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %view_last_x95 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %80, i32 0, i32 11
  store i32 %conv94, i32* %view_last_x95, align 4
  %81 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %view_button_down96 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %81, i32 0, i32 12
  store i32 0, i32* %view_button_down96, align 4
  %82 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %83 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent92, align 8
  %state97 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %83, i32 0, i32 7
  %84 = load i32, i32* %state97, align 4
  %call98 = call i32 @gimp_get_toggle_behavior_mask()
  %and99 = and i32 %84, %call98
  %tobool100 = icmp ne i32 %and99, 0
  %cond101 = select i1 %tobool100, i32 2, i32 1
  %85 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent92, align 8
  %x102 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %85, i32 0, i32 4
  %86 = load double, double* %x102, align 8
  %conv103 = fptosi double %86 to i32
  call void @view_pick_color(%struct._GimpGradientEditor* %82, i32 %cond101, i32 %conv103)
  br label %sw.epilog.106

if.end.104:                                       ; preds = %sw.bb.88
  br label %sw.epilog.106

sw.default.105:                                   ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

sw.epilog.106:                                    ; preds = %if.end.104, %if.then.91, %if.end.87, %if.end.41, %if.end.17, %sw.bb
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog.106, %sw.default.105, %if.then
  %87 = load i32, i32* %retval
  ret i32 %87
}

declare i32 @gimp_dnd_viewable_dest_add(%struct._GtkWidget*, i64, void (%struct._GtkWidget*, i32, i32, %struct._GimpViewable*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gradient_editor_drop_gradient(%struct._GtkWidget* %widget, i32 %x, i32 %y, %struct._GimpViewable* %viewable, i8* %data) #3 {
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
define internal void @gradient_editor_drop_color(%struct._GtkWidget* %widget, i32 %x, i32 %y, %struct._GimpRGB* %color, i8* %data) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %color.addr = alloca %struct._GimpRGB*, align 8
  %data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpGradientEditor*, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  %xpos = alloca double, align 8
  %seg = alloca %struct._GimpGradientSegment*, align 8
  %lseg = alloca %struct._GimpGradientSegment*, align 8
  %rseg = alloca %struct._GimpGradientSegment*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_gradient_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGradientEditor*
  store %struct._GimpGradientEditor* %2, %struct._GimpGradientEditor** %editor, align 8
  %3 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %4 = bitcast %struct._GimpGradientEditor* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_data_editor_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDataEditor*
  %data4 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %5, i32 0, i32 4
  %6 = load %struct._GimpData*, %struct._GimpData** %data4, align 8
  %7 = bitcast %struct._GimpData* %6 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_gradient_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call5)
  %8 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpGradient*
  store %struct._GimpGradient* %8, %struct._GimpGradient** %gradient, align 8
  %9 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %10 = load i32, i32* %x.addr, align 4
  %call7 = call double @control_calc_g_pos(%struct._GimpGradientEditor* %9, i32 %10)
  store double %call7, double* %xpos, align 8
  %11 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %12 = load double, double* %xpos, align 8
  %call8 = call %struct._GimpGradientSegment* @gimp_gradient_get_segment_at(%struct._GimpGradient* %11, double %12)
  store %struct._GimpGradientSegment* %call8, %struct._GimpGradientSegment** %seg, align 8
  %13 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %14 = bitcast %struct._GimpGradient* %13 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_data_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call9)
  %15 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpData*
  call void @gimp_data_freeze(%struct._GimpData* %15)
  %16 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %17 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %18 = bitcast %struct._GimpGradientEditor* %17 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_data_editor_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call11)
  %19 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpDataEditor*
  %context = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %19, i32 0, i32 2
  %20 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %21 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  call void @gimp_gradient_segment_split_midpoint(%struct._GimpGradient* %16, %struct._GimpContext* %20, %struct._GimpGradientSegment* %21, %struct._GimpGradientSegment** %lseg, %struct._GimpGradientSegment** %rseg)
  %22 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg, align 8
  %tobool = icmp ne %struct._GimpGradientSegment* %22, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %23 = load double, double* %xpos, align 8
  %24 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg, align 8
  %right = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %24, i32 0, i32 2
  store double %23, double* %right, align 8
  %25 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg, align 8
  %left = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %25, i32 0, i32 0
  %26 = load double, double* %left, align 8
  %27 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg, align 8
  %right13 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %27, i32 0, i32 2
  %28 = load double, double* %right13, align 8
  %add = fadd double %26, %28
  %div = fdiv double %add, 2.000000e+00
  %29 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg, align 8
  %middle = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %29, i32 0, i32 1
  store double %div, double* %middle, align 8
  %30 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg, align 8
  %right_color = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %30, i32 0, i32 6
  %31 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %32 = bitcast %struct._GimpRGB* %right_color to i8*
  %33 = bitcast %struct._GimpRGB* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 32, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %34 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %rseg, align 8
  %tobool14 = icmp ne %struct._GimpGradientSegment* %34, null
  br i1 %tobool14, label %if.then.15, label %if.end.22

if.then.15:                                       ; preds = %if.end
  %35 = load double, double* %xpos, align 8
  %36 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %rseg, align 8
  %left16 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %36, i32 0, i32 0
  store double %35, double* %left16, align 8
  %37 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %rseg, align 8
  %left17 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %37, i32 0, i32 0
  %38 = load double, double* %left17, align 8
  %39 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %rseg, align 8
  %right18 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %39, i32 0, i32 2
  %40 = load double, double* %right18, align 8
  %add19 = fadd double %38, %40
  %div20 = fdiv double %add19, 2.000000e+00
  %41 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %rseg, align 8
  %middle21 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %41, i32 0, i32 1
  store double %div20, double* %middle21, align 8
  %42 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %rseg, align 8
  %left_color = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %42, i32 0, i32 4
  %43 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %44 = bitcast %struct._GimpRGB* %left_color to i8*
  %45 = bitcast %struct._GimpRGB* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %45, i64 32, i32 8, i1 false)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.15, %if.end
  %46 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %47 = bitcast %struct._GimpGradient* %46 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_data_get_type() #7
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call23)
  %48 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpData*
  call void @gimp_data_thaw(%struct._GimpData* %48)
  ret void
}

declare %struct._GtkWidget* @gtk_drawing_area_new() #1

; Function Attrs: nounwind uwtable
define internal i32 @control_events(%struct._GtkWidget* %widget, %union._GdkEvent* %event, %struct._GimpGradientEditor* %editor) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %union._GdkEvent*, align 8
  %editor.addr = alloca %struct._GimpGradientEditor*, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  %seg = alloca %struct._GimpGradientSegment*, align 8
  %bevent = alloca %struct._GdkEventButton*, align 8
  %sevent = alloca %struct._GdkEventScroll*, align 8
  %adj = alloca %struct._GtkAdjustment*, align 8
  %new_value = alloca float, align 4
  %bevent69 = alloca %struct._GdkEventButton*, align 8
  %mevent = alloca %struct._GdkEventMotion*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %union._GdkEvent* %event, %union._GdkEvent** %event.addr, align 8
  store %struct._GimpGradientEditor* %editor, %struct._GimpGradientEditor** %editor.addr, align 8
  %0 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpGradientEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDataEditor*
  %data = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %2, i32 0, i32 4
  %3 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %tobool = icmp ne %struct._GimpData* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %5 = bitcast %struct._GimpGradientEditor* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_data_editor_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDataEditor*
  %data4 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %6, i32 0, i32 4
  %7 = load %struct._GimpData*, %struct._GimpData** %data4, align 8
  %8 = bitcast %struct._GimpData* %7 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_gradient_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call5)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpGradient*
  store %struct._GimpGradient* %9, %struct._GimpGradient** %gradient, align 8
  %10 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %type = bitcast %union._GdkEvent* %10 to i32*
  %11 = load i32, i32* %type, align 4
  switch i32 %11, label %sw.default [
    i32 11, label %sw.bb
    i32 4, label %sw.bb.7
    i32 31, label %sw.bb.24
    i32 7, label %sw.bb.68
    i32 3, label %sw.bb.114
  ]

sw.bb:                                            ; preds = %if.end
  %12 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  call void @gradient_editor_set_hint(%struct._GimpGradientEditor* %12, i8* null, i8* null, i8* null, i8* null)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %if.end
  %13 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_drag_mode = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %13, i32 0, i32 16
  %14 = load i32, i32* %control_drag_mode, align 4
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %if.then.8, label %if.end.23

if.then.8:                                        ; preds = %sw.bb.7
  %15 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %16 = bitcast %union._GdkEvent* %15 to %struct._GdkEventButton*
  store %struct._GdkEventButton* %16, %struct._GdkEventButton** %bevent, align 8
  %17 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %x = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %17, i32 0, i32 4
  %18 = load double, double* %x, align 8
  %conv = fptosi double %18 to i32
  %19 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_last_x = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %19, i32 0, i32 19
  store i32 %conv, i32* %control_last_x, align 4
  %20 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %time = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %20, i32 0, i32 3
  %21 = load i32, i32* %time, align 4
  %22 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_click_time = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %22, i32 0, i32 17
  store i32 %21, i32* %control_click_time, align 4
  %23 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %24 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %x9 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %24, i32 0, i32 4
  %25 = load double, double* %x9, align 8
  %conv10 = fptosi double %25 to i32
  %26 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %y = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %26, i32 0, i32 5
  %27 = load double, double* %y, align 8
  %conv11 = fptosi double %27 to i32
  %28 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %28, i32 0, i32 8
  %29 = load i32, i32* %button, align 4
  %30 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %state = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %30, i32 0, i32 7
  %31 = load i32, i32* %state, align 4
  call void @control_button_press(%struct._GimpGradientEditor* %23, i32 %conv10, i32 %conv11, i32 %29, i32 %31)
  %32 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_drag_mode12 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %32, i32 0, i32 16
  %33 = load i32, i32* %control_drag_mode12, align 4
  %cmp13 = icmp ne i32 %33, 0
  br i1 %cmp13, label %if.then.15, label %if.end.22

if.then.15:                                       ; preds = %if.then.8
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_grab_add(%struct._GtkWidget* %34)
  %35 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %36 = bitcast %struct._GimpGradientEditor* %35 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_data_editor_get_type() #7
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call16)
  %37 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpDataEditor*
  %data_editable = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %37, i32 0, i32 5
  %38 = load i32, i32* %data_editable, align 4
  %tobool18 = icmp ne i32 %38, 0
  br i1 %tobool18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.then.15
  %39 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %40 = bitcast %struct._GimpGradient* %39 to i8*
  %41 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %42 = bitcast %struct._GimpGradientEditor* %41 to i8*
  %call20 = call i32 @g_signal_handlers_block_matched(i8* %40, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpGradientEditor*, %struct._GimpGradient*)* @gimp_gradient_editor_gradient_dirty to i8*), i8* %42)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.then.15
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.8
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %sw.bb.7
  br label %sw.epilog

sw.bb.24:                                         ; preds = %if.end
  %43 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %44 = bitcast %union._GdkEvent* %43 to %struct._GdkEventScroll*
  store %struct._GdkEventScroll* %44, %struct._GdkEventScroll** %sevent, align 8
  %45 = load %struct._GdkEventScroll*, %struct._GdkEventScroll** %sevent, align 8
  %state25 = getelementptr inbounds %struct._GdkEventScroll, %struct._GdkEventScroll* %45, i32 0, i32 6
  %46 = load i32, i32* %state25, align 4
  %call26 = call i32 @gimp_get_toggle_behavior_mask()
  %and = and i32 %46, %call26
  %tobool27 = icmp ne i32 %and, 0
  br i1 %tobool27, label %if.then.28, label %if.else.33

if.then.28:                                       ; preds = %sw.bb.24
  %47 = load %struct._GdkEventScroll*, %struct._GdkEventScroll** %sevent, align 8
  %direction = getelementptr inbounds %struct._GdkEventScroll, %struct._GdkEventScroll* %47, i32 0, i32 7
  %48 = load i32, i32* %direction, align 4
  %cmp29 = icmp eq i32 %48, 0
  br i1 %cmp29, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %if.then.28
  %49 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  call void @gimp_gradient_editor_zoom(%struct._GimpGradientEditor* %49, i32 0)
  br label %if.end.32

if.else:                                          ; preds = %if.then.28
  %50 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  call void @gimp_gradient_editor_zoom(%struct._GimpGradientEditor* %50, i32 1)
  br label %if.end.32

if.end.32:                                        ; preds = %if.else, %if.then.31
  br label %if.end.67

if.else.33:                                       ; preds = %sw.bb.24
  %51 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %scroll_data = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %51, i32 0, i32 9
  %52 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %scroll_data, align 8
  store %struct._GtkAdjustment* %52, %struct._GtkAdjustment** %adj, align 8
  %53 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call34 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %53)
  %54 = load %struct._GdkEventScroll*, %struct._GdkEventScroll** %sevent, align 8
  %direction35 = getelementptr inbounds %struct._GdkEventScroll, %struct._GdkEventScroll* %54, i32 0, i32 7
  %55 = load i32, i32* %direction35, align 4
  %cmp36 = icmp eq i32 %55, 0
  br i1 %cmp36, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.33
  %56 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call38 = call double @gtk_adjustment_get_page_increment(%struct._GtkAdjustment* %56)
  %sub = fsub double -0.000000e+00, %call38
  %div = fdiv double %sub, 2.000000e+00
  br label %cond.end

cond.false:                                       ; preds = %if.else.33
  %57 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call39 = call double @gtk_adjustment_get_page_increment(%struct._GtkAdjustment* %57)
  %div40 = fdiv double %call39, 2.000000e+00
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %div, %cond.true ], [ %div40, %cond.false ]
  %add = fadd double %call34, %cond
  %conv41 = fptrunc double %add to float
  store float %conv41, float* %new_value, align 4
  %58 = load float, float* %new_value, align 4
  %conv42 = fpext float %58 to double
  %59 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call43 = call double @gtk_adjustment_get_upper(%struct._GtkAdjustment* %59)
  %60 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call44 = call double @gtk_adjustment_get_page_size(%struct._GtkAdjustment* %60)
  %sub45 = fsub double %call43, %call44
  %cmp46 = fcmp ogt double %conv42, %sub45
  br i1 %cmp46, label %cond.true.48, label %cond.false.52

cond.true.48:                                     ; preds = %cond.end
  %61 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call49 = call double @gtk_adjustment_get_upper(%struct._GtkAdjustment* %61)
  %62 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call50 = call double @gtk_adjustment_get_page_size(%struct._GtkAdjustment* %62)
  %sub51 = fsub double %call49, %call50
  br label %cond.end.63

cond.false.52:                                    ; preds = %cond.end
  %63 = load float, float* %new_value, align 4
  %conv53 = fpext float %63 to double
  %64 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call54 = call double @gtk_adjustment_get_lower(%struct._GtkAdjustment* %64)
  %cmp55 = fcmp olt double %conv53, %call54
  br i1 %cmp55, label %cond.true.57, label %cond.false.59

cond.true.57:                                     ; preds = %cond.false.52
  %65 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call58 = call double @gtk_adjustment_get_lower(%struct._GtkAdjustment* %65)
  br label %cond.end.61

cond.false.59:                                    ; preds = %cond.false.52
  %66 = load float, float* %new_value, align 4
  %conv60 = fpext float %66 to double
  br label %cond.end.61

cond.end.61:                                      ; preds = %cond.false.59, %cond.true.57
  %cond62 = phi double [ %call58, %cond.true.57 ], [ %conv60, %cond.false.59 ]
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.end.61, %cond.true.48
  %cond64 = phi double [ %sub51, %cond.true.48 ], [ %cond62, %cond.end.61 ]
  %conv65 = fptrunc double %cond64 to float
  store float %conv65, float* %new_value, align 4
  %67 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %68 = load float, float* %new_value, align 4
  %conv66 = fpext float %68 to double
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %67, double %conv66)
  br label %if.end.67

if.end.67:                                        ; preds = %cond.end.63, %if.end.32
  br label %sw.epilog

sw.bb.68:                                         ; preds = %if.end
  %69 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %70 = bitcast %union._GdkEvent* %69 to %struct._GdkEventButton*
  store %struct._GdkEventButton* %70, %struct._GdkEventButton** %bevent69, align 8
  %71 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  call void @gradient_editor_set_hint(%struct._GimpGradientEditor* %71, i8* null, i8* null, i8* null, i8* null)
  %72 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_drag_mode70 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %72, i32 0, i32 16
  %73 = load i32, i32* %control_drag_mode70, align 4
  %cmp71 = icmp ne i32 %73, 0
  br i1 %cmp71, label %if.then.73, label %if.end.113

if.then.73:                                       ; preds = %sw.bb.68
  %74 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %75 = bitcast %struct._GimpGradientEditor* %74 to %struct._GTypeInstance*
  %call74 = call i64 @gimp_data_editor_get_type() #7
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %75, i64 %call74)
  %76 = bitcast %struct._GTypeInstance* %call75 to %struct._GimpDataEditor*
  %data_editable76 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %76, i32 0, i32 5
  %77 = load i32, i32* %data_editable76, align 4
  %tobool77 = icmp ne i32 %77, 0
  br i1 %tobool77, label %if.then.78, label %if.end.80

if.then.78:                                       ; preds = %if.then.73
  %78 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %79 = bitcast %struct._GimpGradient* %78 to i8*
  %80 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %81 = bitcast %struct._GimpGradientEditor* %80 to i8*
  %call79 = call i32 @g_signal_handlers_unblock_matched(i8* %79, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpGradientEditor*, %struct._GimpGradient*)* @gimp_gradient_editor_gradient_dirty to i8*), i8* %81)
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.78, %if.then.73
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_grab_remove(%struct._GtkWidget* %82)
  %83 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent69, align 8
  %time81 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %83, i32 0, i32 3
  %84 = load i32, i32* %time81, align 4
  %85 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_click_time82 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %85, i32 0, i32 17
  %86 = load i32, i32* %control_click_time82, align 4
  %sub83 = sub i32 %84, %86
  %cmp84 = icmp uge i32 %sub83, 150
  br i1 %cmp84, label %if.then.86, label %if.else.87

if.then.86:                                       ; preds = %if.end.80
  br label %if.end.106

if.else.87:                                       ; preds = %if.end.80
  %87 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_drag_mode88 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %87, i32 0, i32 16
  %88 = load i32, i32* %control_drag_mode88, align 4
  %cmp89 = icmp eq i32 %88, 2
  br i1 %cmp89, label %if.then.94, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.87
  %89 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_drag_mode91 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %89, i32 0, i32 16
  %90 = load i32, i32* %control_drag_mode91, align 4
  %cmp92 = icmp eq i32 %90, 3
  br i1 %cmp92, label %if.then.94, label %if.end.105

if.then.94:                                       ; preds = %lor.lhs.false, %if.else.87
  %91 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_drag_segment = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %91, i32 0, i32 13
  %92 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_drag_segment, align 8
  store %struct._GimpGradientSegment* %92, %struct._GimpGradientSegment** %seg, align 8
  %93 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_drag_mode95 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %93, i32 0, i32 16
  %94 = load i32, i32* %control_drag_mode95, align 4
  %cmp96 = icmp eq i32 %94, 3
  br i1 %cmp96, label %land.lhs.true, label %if.else.103

land.lhs.true:                                    ; preds = %if.then.94
  %95 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_compress = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %95, i32 0, i32 18
  %96 = load i32, i32* %control_compress, align 4
  %tobool98 = icmp ne i32 %96, 0
  br i1 %tobool98, label %if.then.99, label %if.else.103

if.then.99:                                       ; preds = %land.lhs.true
  %97 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %98 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %99 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %100 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent69, align 8
  %x100 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %100, i32 0, i32 4
  %101 = load double, double* %x100, align 8
  %conv101 = fptosi double %101 to i32
  %call102 = call double @control_calc_g_pos(%struct._GimpGradientEditor* %99, i32 %conv101)
  call void @control_extend_selection(%struct._GimpGradientEditor* %97, %struct._GimpGradientSegment* %98, double %call102)
  br label %if.end.104

if.else.103:                                      ; preds = %land.lhs.true, %if.then.94
  %102 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %103 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  call void @control_select_single_segment(%struct._GimpGradientEditor* %102, %struct._GimpGradientSegment* %103)
  br label %if.end.104

if.end.104:                                       ; preds = %if.else.103, %if.then.99
  %104 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  call void @gimp_gradient_editor_update(%struct._GimpGradientEditor* %104)
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %lor.lhs.false
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %if.then.86
  %105 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_drag_mode107 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %105, i32 0, i32 16
  store i32 0, i32* %control_drag_mode107, align 4
  %106 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_compress108 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %106, i32 0, i32 18
  store i32 0, i32* %control_compress108, align 4
  %107 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %108 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent69, align 8
  %x109 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %108, i32 0, i32 4
  %109 = load double, double* %x109, align 8
  %conv110 = fptosi double %109 to i32
  %110 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent69, align 8
  %y111 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %110, i32 0, i32 5
  %111 = load double, double* %y111, align 8
  %conv112 = fptosi double %111 to i32
  call void @control_do_hint(%struct._GimpGradientEditor* %107, i32 %conv110, i32 %conv112)
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.106, %sw.bb.68
  br label %sw.epilog

sw.bb.114:                                        ; preds = %if.end
  %112 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %113 = bitcast %union._GdkEvent* %112 to %struct._GdkEventMotion*
  store %struct._GdkEventMotion* %113, %struct._GdkEventMotion** %mevent, align 8
  %114 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  %x115 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %114, i32 0, i32 4
  %115 = load double, double* %x115, align 8
  %116 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_last_x116 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %116, i32 0, i32 19
  %117 = load i32, i32* %control_last_x116, align 4
  %conv117 = sitofp i32 %117 to double
  %cmp118 = fcmp une double %115, %conv117
  br i1 %cmp118, label %if.then.120, label %if.end.148

if.then.120:                                      ; preds = %sw.bb.114
  %118 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  %x121 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %118, i32 0, i32 4
  %119 = load double, double* %x121, align 8
  %conv122 = fptosi double %119 to i32
  %120 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_last_x123 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %120, i32 0, i32 19
  store i32 %conv122, i32* %control_last_x123, align 4
  %121 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %122 = bitcast %struct._GimpGradientEditor* %121 to %struct._GTypeInstance*
  %call124 = call i64 @gimp_data_editor_get_type() #7
  %call125 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %122, i64 %call124)
  %123 = bitcast %struct._GTypeInstance* %call125 to %struct._GimpDataEditor*
  %data_editable126 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %123, i32 0, i32 5
  %124 = load i32, i32* %data_editable126, align 4
  %tobool127 = icmp ne i32 %124, 0
  br i1 %tobool127, label %land.lhs.true.128, label %if.else.142

land.lhs.true.128:                                ; preds = %if.then.120
  %125 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_drag_mode129 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %125, i32 0, i32 16
  %126 = load i32, i32* %control_drag_mode129, align 4
  %cmp130 = icmp ne i32 %126, 0
  br i1 %cmp130, label %if.then.132, label %if.else.142

if.then.132:                                      ; preds = %land.lhs.true.128
  %127 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  %time133 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %127, i32 0, i32 3
  %128 = load i32, i32* %time133, align 4
  %129 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_click_time134 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %129, i32 0, i32 17
  %130 = load i32, i32* %control_click_time134, align 4
  %sub135 = sub i32 %128, %130
  %cmp136 = icmp uge i32 %sub135, 150
  br i1 %cmp136, label %if.then.138, label %if.end.141

if.then.138:                                      ; preds = %if.then.132
  %131 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %132 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %133 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  %x139 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %133, i32 0, i32 4
  %134 = load double, double* %x139, align 8
  %conv140 = fptosi double %134 to i32
  call void @control_motion(%struct._GimpGradientEditor* %131, %struct._GimpGradient* %132, i32 %conv140)
  br label %if.end.141

if.end.141:                                       ; preds = %if.then.138, %if.then.132
  br label %if.end.147

if.else.142:                                      ; preds = %land.lhs.true.128, %if.then.120
  %135 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  call void @gimp_gradient_editor_update(%struct._GimpGradientEditor* %135)
  %136 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %137 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  %x143 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %137, i32 0, i32 4
  %138 = load double, double* %x143, align 8
  %conv144 = fptosi double %138 to i32
  %139 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  %y145 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %139, i32 0, i32 5
  %140 = load double, double* %y145, align 8
  %conv146 = fptosi double %140 to i32
  call void @control_do_hint(%struct._GimpGradientEditor* %136, i32 %conv144, i32 %conv146)
  br label %if.end.147

if.end.147:                                       ; preds = %if.else.142, %if.end.141
  br label %if.end.148

if.end.148:                                       ; preds = %if.end.147, %sw.bb.114
  %141 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  call void @gdk_event_request_motions(%struct._GdkEventMotion* %141)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.148, %if.end.113, %if.end.67, %if.end.23, %sw.bb
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %if.then
  %142 = load i32, i32* %retval
  ret i32 %142
}

; Function Attrs: nounwind uwtable
define internal i32 @control_expose(%struct._GtkWidget* %widget, %struct._GdkEventExpose* %event, %struct._GimpGradientEditor* %editor) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventExpose*, align 8
  %editor.addr = alloca %struct._GimpGradientEditor*, align 8
  %adj = alloca %struct._GtkAdjustment*, align 8
  %cr = alloca %struct._cairo*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventExpose* %event, %struct._GdkEventExpose** %event.addr, align 8
  store %struct._GimpGradientEditor* %editor, %struct._GimpGradientEditor** %editor.addr, align 8
  %0 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %scroll_data = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %0, i32 0, i32 9
  %1 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %scroll_data, align 8
  store %struct._GtkAdjustment* %1, %struct._GtkAdjustment** %adj, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %2)
  %call1 = call %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable* %call)
  store %struct._cairo* %call1, %struct._cairo** %cr, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %3, %struct._GdkRectangle* %allocation)
  %4 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %5 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %6 = bitcast %struct._GimpGradientEditor* %5 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_data_editor_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call2)
  %7 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDataEditor*
  %data = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %7, i32 0, i32 4
  %8 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %9 = bitcast %struct._GimpData* %8 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_gradient_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call4)
  %10 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpGradient*
  %11 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %12 = load i32, i32* %width, align 4
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %13 = load i32, i32* %height, align 4
  %14 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call6 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %14)
  %15 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call7 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %15)
  %16 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call8 = call double @gtk_adjustment_get_page_size(%struct._GtkAdjustment* %16)
  %add = fadd double %call7, %call8
  call void @control_draw(%struct._GimpGradientEditor* %4, %struct._GimpGradient* %10, %struct._cairo* %11, i32 %12, i32 %13, double %call6, double %add)
  %17 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %17)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal void @gradient_editor_control_drop_color(%struct._GtkWidget* %widget, i32 %x, i32 %y, %struct._GimpRGB* %color, i8* %data) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %color.addr = alloca %struct._GimpRGB*, align 8
  %data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpGradientEditor*, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  %xpos = alloca double, align 8
  %seg = alloca %struct._GimpGradientSegment*, align 8
  %lseg = alloca %struct._GimpGradientSegment*, align 8
  %rseg = alloca %struct._GimpGradientSegment*, align 8
  %handle = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_gradient_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGradientEditor*
  store %struct._GimpGradientEditor* %2, %struct._GimpGradientEditor** %editor, align 8
  %3 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %4 = bitcast %struct._GimpGradientEditor* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_data_editor_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDataEditor*
  %data4 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %5, i32 0, i32 4
  %6 = load %struct._GimpData*, %struct._GimpData** %data4, align 8
  %7 = bitcast %struct._GimpData* %6 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_gradient_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call5)
  %8 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpGradient*
  store %struct._GimpGradient* %8, %struct._GimpGradient** %gradient, align 8
  %9 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %10 = load i32, i32* %x.addr, align 4
  %call7 = call double @control_calc_g_pos(%struct._GimpGradientEditor* %9, i32 %10)
  store double %call7, double* %xpos, align 8
  %11 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %12 = load double, double* %xpos, align 8
  call void @seg_get_closest_handle(%struct._GimpGradient* %11, double %12, %struct._GimpGradientSegment** %seg, i32* %handle)
  %13 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %tobool = icmp ne %struct._GimpGradientSegment* %13, null
  br i1 %tobool, label %if.then, label %if.else.9

if.then:                                          ; preds = %entry
  %14 = load i32, i32* %handle, align 4
  %cmp = icmp eq i32 %14, 1
  br i1 %cmp, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then
  %15 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %prev = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %15, i32 0, i32 9
  %16 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %prev, align 8
  store %struct._GimpGradientSegment* %16, %struct._GimpGradientSegment** %lseg, align 8
  %17 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  store %struct._GimpGradientSegment* %17, %struct._GimpGradientSegment** %rseg, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  br label %return

if.end:                                           ; preds = %if.then.8
  br label %if.end.11

if.else.9:                                        ; preds = %entry
  %18 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %19 = load double, double* %xpos, align 8
  %call10 = call %struct._GimpGradientSegment* @gimp_gradient_get_segment_at(%struct._GimpGradient* %18, double %19)
  store %struct._GimpGradientSegment* %call10, %struct._GimpGradientSegment** %lseg, align 8
  store %struct._GimpGradientSegment* null, %struct._GimpGradientSegment** %rseg, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.else.9, %if.end
  %20 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %21 = bitcast %struct._GimpGradient* %20 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_data_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call12)
  %22 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpData*
  call void @gimp_data_freeze(%struct._GimpData* %22)
  %23 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg, align 8
  %tobool14 = icmp ne %struct._GimpGradientSegment* %23, null
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.11
  %24 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg, align 8
  %right_color = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %24, i32 0, i32 6
  %25 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %26 = bitcast %struct._GimpRGB* %right_color to i8*
  %27 = bitcast %struct._GimpRGB* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 32, i32 8, i1 false)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end.11
  %28 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %rseg, align 8
  %tobool17 = icmp ne %struct._GimpGradientSegment* %28, null
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.16
  %29 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %rseg, align 8
  %left_color = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %29, i32 0, i32 4
  %30 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %31 = bitcast %struct._GimpRGB* %left_color to i8*
  %32 = bitcast %struct._GimpRGB* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 32, i32 8, i1 false)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.end.16
  %33 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %34 = bitcast %struct._GimpGradient* %33 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_data_get_type() #7
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call20)
  %35 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpData*
  call void @gimp_data_thaw(%struct._GimpData* %35)
  br label %return

return:                                           ; preds = %if.end.19, %if.else
  ret void
}

declare %struct._GtkObject* @gtk_adjustment_new(double, double, double, double, double, double) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_adjustment_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gradient_editor_scrollbar_update(%struct._GtkAdjustment* %adjustment, %struct._GimpGradientEditor* %editor) #3 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %editor.addr = alloca %struct._GimpGradientEditor*, align 8
  %data_editor = alloca %struct._GimpDataEditor*, align 8
  %renderer = alloca %struct._GimpViewRendererGradient*, align 8
  %str1 = alloca i8*, align 8
  %str2 = alloca i8*, align 8
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store %struct._GimpGradientEditor* %editor, %struct._GimpGradientEditor** %editor.addr, align 8
  %0 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpGradientEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDataEditor*
  store %struct._GimpDataEditor* %2, %struct._GimpDataEditor** %data_editor, align 8
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.40, i32 0, i32 0)) #6
  %3 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %zoom_factor = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %3, i32 0, i32 8
  %4 = load i32, i32* %zoom_factor, align 4
  %call3 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call2, i32 %4)
  store i8* %call3, i8** %str1, align 8
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.41, i32 0, i32 0)) #6
  %5 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call5 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %5)
  %6 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call6 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %6)
  %7 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call7 = call double @gtk_adjustment_get_page_size(%struct._GtkAdjustment* %7)
  %add = fadd double %call6, %call7
  %call8 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call4, double %call5, double %add)
  store i8* %call8, i8** %str2, align 8
  %8 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %9 = load i8*, i8** %str1, align 8
  %10 = load i8*, i8** %str2, align 8
  call void @gradient_editor_set_hint(%struct._GimpGradientEditor* %8, i8* %9, i8* %10, i8* null, i8* null)
  %11 = load i8*, i8** %str1, align 8
  call void @g_free(i8* %11)
  %12 = load i8*, i8** %str2, align 8
  call void @g_free(i8* %12)
  %13 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %view = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %13, i32 0, i32 7
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_view_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call9)
  %16 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpView*
  %renderer11 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %16, i32 0, i32 3
  %17 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer11, align 8
  %18 = bitcast %struct._GimpViewRenderer* %17 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_view_renderer_gradient_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call12)
  %19 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpViewRendererGradient*
  store %struct._GimpViewRendererGradient* %19, %struct._GimpViewRendererGradient** %renderer, align 8
  %20 = load %struct._GimpViewRendererGradient*, %struct._GimpViewRendererGradient** %renderer, align 8
  %21 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call14 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %21)
  %22 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call15 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %22)
  %23 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call16 = call double @gtk_adjustment_get_page_size(%struct._GtkAdjustment* %23)
  %add17 = fadd double %call15, %call16
  call void @gimp_view_renderer_gradient_set_offsets(%struct._GimpViewRendererGradient* %20, double %call14, double %add17)
  %24 = load %struct._GimpViewRendererGradient*, %struct._GimpViewRendererGradient** %renderer, align 8
  %25 = bitcast %struct._GimpViewRendererGradient* %24 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_view_renderer_get_type() #7
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call18)
  %26 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpViewRenderer*
  call void @gimp_view_renderer_update(%struct._GimpViewRenderer* %26)
  %27 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  call void @gimp_gradient_editor_update(%struct._GimpGradientEditor* %27)
  ret void
}

declare %struct._GtkWidget* @gtk_scrollbar_new(i32, %struct._GtkAdjustment*) #1

declare %struct._GtkWidget* @gimp_color_area_new(%struct._GimpRGB*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @gradient_hint_label_add(%struct._GtkBox* %box) #3 {
entry:
  %box.addr = alloca %struct._GtkBox*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  store %struct._GtkBox* %box, %struct._GtkBox** %box.addr, align 8
  %call = call i64 @gtk_label_get_type() #7
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), double 0.000000e+00, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), double 5.000000e-01, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.44, i32 0, i32 0), i32 1, i8* null)
  %0 = bitcast i8* %call1 to %struct._GtkWidget*
  store %struct._GtkWidget* %0, %struct._GtkWidget** %label, align 8
  %1 = load %struct._GtkBox*, %struct._GtkBox** %box.addr, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %1, %struct._GtkWidget* %2, i32 0, i32 0, i32 0)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %3)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  ret %struct._GtkWidget* %4
}

; Function Attrs: nounwind uwtable
define internal void @gradient_editor_set_hint(%struct._GimpGradientEditor* %editor, i8* %str1, i8* %str2, i8* %str3, i8* %str4) #3 {
entry:
  %editor.addr = alloca %struct._GimpGradientEditor*, align 8
  %str1.addr = alloca i8*, align 8
  %str2.addr = alloca i8*, align 8
  %str3.addr = alloca i8*, align 8
  %str4.addr = alloca i8*, align 8
  store %struct._GimpGradientEditor* %editor, %struct._GimpGradientEditor** %editor.addr, align 8
  store i8* %str1, i8** %str1.addr, align 8
  store i8* %str2, i8** %str2.addr, align 8
  store i8* %str3, i8** %str3.addr, align 8
  store i8* %str4, i8** %str4.addr, align 8
  %0 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %hint_label1 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %0, i32 0, i32 2
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %hint_label1, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_label_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkLabel*
  %4 = load i8*, i8** %str1.addr, align 8
  call void @gtk_label_set_text(%struct._GtkLabel* %3, i8* %4)
  %5 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %hint_label2 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %5, i32 0, i32 3
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %hint_label2, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_label_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call2)
  %8 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkLabel*
  %9 = load i8*, i8** %str2.addr, align 8
  call void @gtk_label_set_text(%struct._GtkLabel* %8, i8* %9)
  %10 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %hint_label3 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %10, i32 0, i32 4
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %hint_label3, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_label_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call4)
  %13 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkLabel*
  %14 = load i8*, i8** %str3.addr, align 8
  call void @gtk_label_set_text(%struct._GtkLabel* %13, i8* %14)
  %15 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %hint_label4 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %15, i32 0, i32 5
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %hint_label4, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_label_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call6)
  %18 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkLabel*
  %19 = load i8*, i8** %str4.addr, align 8
  call void @gtk_label_set_text(%struct._GtkLabel* %18, i8* %19)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @view_pick_color(%struct._GimpGradientEditor* %editor, i32 %mode, i32 %x) #3 {
entry:
  %editor.addr = alloca %struct._GimpGradientEditor*, align 8
  %mode.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %data_editor = alloca %struct._GimpDataEditor*, align 8
  %color = alloca %struct._GimpRGB, align 8
  %xpos = alloca double, align 8
  %str2 = alloca i8*, align 8
  %str3 = alloca i8*, align 8
  store %struct._GimpGradientEditor* %editor, %struct._GimpGradientEditor** %editor.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpGradientEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDataEditor*
  store %struct._GimpDataEditor* %2, %struct._GimpDataEditor** %data_editor, align 8
  %3 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %4 = load i32, i32* %x.addr, align 4
  %call2 = call double @control_calc_g_pos(%struct._GimpGradientEditor* %3, i32 %4)
  store double %call2, double* %xpos, align 8
  %5 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %data = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %5, i32 0, i32 4
  %6 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %7 = bitcast %struct._GimpData* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_gradient_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpGradient*
  %9 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %context = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %9, i32 0, i32 2
  %10 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %11 = load double, double* %xpos, align 8
  %call5 = call %struct._GimpGradientSegment* @gimp_gradient_get_color_at(%struct._GimpGradient* %8, %struct._GimpContext* %10, %struct._GimpGradientSegment* null, double %11, i32 0, %struct._GimpRGB* %color)
  %12 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %current_color = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %12, i32 0, i32 1
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %current_color, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_color_area_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call6)
  %15 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpColorArea*
  call void @gimp_color_area_set_color(%struct._GimpColorArea* %15, %struct._GimpRGB* %color)
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0)) #6
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 0
  %16 = load double, double* %r, align 8
  %mul = fmul double %16, 2.550000e+02
  %conv = fptosi double %mul to i32
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 1
  %17 = load double, double* %g, align 8
  %mul9 = fmul double %17, 2.550000e+02
  %conv10 = fptosi double %mul9 to i32
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 2
  %18 = load double, double* %b, align 8
  %mul11 = fmul double %18, 2.550000e+02
  %conv12 = fptosi double %mul11 to i32
  %call13 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call8, i32 %conv, i32 %conv10, i32 %conv12)
  store i8* %call13, i8** %str2, align 8
  %r14 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 0
  %19 = load double, double* %r14, align 8
  %g15 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 1
  %20 = load double, double* %g15, align 8
  %b16 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 2
  %21 = load double, double* %b16, align 8
  %call17 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i32 0, i32 0), double %19, double %20, double %21)
  store i8* %call17, i8** %str3, align 8
  %22 = load i32, i32* %mode.addr, align 4
  %cmp = icmp eq i32 %22, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %23 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %context19 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %23, i32 0, i32 2
  %24 = load %struct._GimpContext*, %struct._GimpContext** %context19, align 8
  call void @gimp_context_set_foreground(%struct._GimpContext* %24, %struct._GimpRGB* %color)
  %25 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %call20 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i32 0, i32 0)) #6
  %26 = load i8*, i8** %str2, align 8
  %27 = load i8*, i8** %str3, align 8
  call void @gradient_editor_set_hint(%struct._GimpGradientEditor* %25, i8* %call20, i8* %26, i8* %27, i8* null)
  br label %if.end

if.else:                                          ; preds = %entry
  %28 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %context21 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %28, i32 0, i32 2
  %29 = load %struct._GimpContext*, %struct._GimpContext** %context21, align 8
  call void @gimp_context_set_background(%struct._GimpContext* %29, %struct._GimpRGB* %color)
  %30 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %call22 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i32 0, i32 0)) #6
  %31 = load i8*, i8** %str2, align 8
  %32 = load i8*, i8** %str3, align 8
  call void @gradient_editor_set_hint(%struct._GimpGradientEditor* %30, i8* %call22, i8* %31, i8* %32, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %33 = load i8*, i8** %str2, align 8
  call void @g_free(i8* %33)
  %34 = load i8*, i8** %str3, align 8
  call void @g_free(i8* %34)
  ret void
}

declare i32 @gimp_get_toggle_behavior_mask() #1

; Function Attrs: nounwind uwtable
define internal void @view_set_hint(%struct._GimpGradientEditor* %editor, i32 %x) #3 {
entry:
  %editor.addr = alloca %struct._GimpGradientEditor*, align 8
  %x.addr = alloca i32, align 4
  %data_editor = alloca %struct._GimpDataEditor*, align 8
  %rgb = alloca %struct._GimpRGB, align 8
  %hsv = alloca %struct._GimpHSV, align 8
  %xpos = alloca double, align 8
  %str1 = alloca i8*, align 8
  %str2 = alloca i8*, align 8
  %str3 = alloca i8*, align 8
  %str4 = alloca i8*, align 8
  store %struct._GimpGradientEditor* %editor, %struct._GimpGradientEditor** %editor.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  %0 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpGradientEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDataEditor*
  store %struct._GimpDataEditor* %2, %struct._GimpDataEditor** %data_editor, align 8
  %3 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %4 = load i32, i32* %x.addr, align 4
  %call2 = call double @control_calc_g_pos(%struct._GimpGradientEditor* %3, i32 %4)
  store double %call2, double* %xpos, align 8
  %5 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %data = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %5, i32 0, i32 4
  %6 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %7 = bitcast %struct._GimpData* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_gradient_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpGradient*
  %9 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %context = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %9, i32 0, i32 2
  %10 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %11 = load double, double* %xpos, align 8
  %call5 = call %struct._GimpGradientSegment* @gimp_gradient_get_color_at(%struct._GimpGradient* %8, %struct._GimpContext* %10, %struct._GimpGradientSegment* null, double %11, i32 0, %struct._GimpRGB* %rgb)
  %12 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %current_color = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %12, i32 0, i32 1
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %current_color, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_color_area_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call6)
  %15 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpColorArea*
  call void @gimp_color_area_set_color(%struct._GimpColorArea* %15, %struct._GimpRGB* %rgb)
  call void @gimp_rgb_to_hsv(%struct._GimpRGB* %rgb, %struct._GimpHSV* %hsv)
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i32 0, i32 0)) #6
  %16 = load double, double* %xpos, align 8
  %call9 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call8, double %16)
  store i8* %call9, i8** %str1, align 8
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i32 0, i32 0)) #6
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 0
  %17 = load double, double* %r, align 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 1
  %18 = load double, double* %g, align 8
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 2
  %19 = load double, double* %b, align 8
  %call11 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call10, double %17, double %18, double %19)
  store i8* %call11, i8** %str2, align 8
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28, i32 0, i32 0)) #6
  %h = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv, i32 0, i32 0
  %20 = load double, double* %h, align 8
  %mul = fmul double %20, 3.600000e+02
  %s = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv, i32 0, i32 1
  %21 = load double, double* %s, align 8
  %mul13 = fmul double %21, 1.000000e+02
  %v = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv, i32 0, i32 2
  %22 = load double, double* %v, align 8
  %mul14 = fmul double %22, 1.000000e+02
  %call15 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call12, double %mul, double %mul13, double %mul14)
  store i8* %call15, i8** %str3, align 8
  %call16 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.29, i32 0, i32 0)) #6
  %r17 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 0
  %23 = load double, double* %r17, align 8
  %mul18 = fmul double %23, 2.126000e-01
  %g19 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 1
  %24 = load double, double* %g19, align 8
  %mul20 = fmul double %24, 7.152000e-01
  %add = fadd double %mul18, %mul20
  %b21 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 2
  %25 = load double, double* %b21, align 8
  %mul22 = fmul double %25, 7.220000e-02
  %add23 = fadd double %add, %mul22
  %mul24 = fmul double %add23, 1.000000e+02
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 3
  %26 = load double, double* %a, align 8
  %mul25 = fmul double %26, 1.000000e+02
  %call26 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call16, double %mul24, double %mul25)
  store i8* %call26, i8** %str4, align 8
  %27 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %28 = load i8*, i8** %str1, align 8
  %29 = load i8*, i8** %str2, align 8
  %30 = load i8*, i8** %str3, align 8
  %31 = load i8*, i8** %str4, align 8
  call void @gradient_editor_set_hint(%struct._GimpGradientEditor* %27, i8* %28, i8* %29, i8* %30, i8* %31)
  %32 = load i8*, i8** %str1, align 8
  call void @g_free(i8* %32)
  %33 = load i8*, i8** %str2, align 8
  call void @g_free(i8* %33)
  %34 = load i8*, i8** %str3, align 8
  call void @g_free(i8* %34)
  %35 = load i8*, i8** %str4, align 8
  call void @g_free(i8* %35)
  ret void
}

declare void @gdk_event_request_motions(%struct._GdkEventMotion*) #1

declare i32 @gdk_event_triggers_context_menu(%union._GdkEvent*) #1

declare i32 @gimp_editor_popup_menu(%struct._GimpEditor*, void (%struct._GtkMenu*, i32*, i32*, i8*)*, i8*) #1

declare double @gtk_adjustment_get_page_increment(%struct._GtkAdjustment*) #1

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #1

declare void @gtk_label_set_text(%struct._GtkLabel*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #2

; Function Attrs: nounwind uwtable
define internal double @control_calc_g_pos(%struct._GimpGradientEditor* %editor, i32 %pos) #3 {
entry:
  %editor.addr = alloca %struct._GimpGradientEditor*, align 8
  %pos.addr = alloca i32, align 4
  %adjustment = alloca %struct._GtkAdjustment*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %pwidth = alloca i32, align 4
  store %struct._GimpGradientEditor* %editor, %struct._GimpGradientEditor** %editor.addr, align 8
  store i32 %pos, i32* %pos.addr, align 4
  %0 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %scroll_data = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %0, i32 0, i32 9
  %1 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %scroll_data, align 8
  store %struct._GtkAdjustment* %1, %struct._GtkAdjustment** %adjustment, align 8
  %2 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %2, i32 0, i32 7
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %control, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %3, %struct._GdkRectangle* %allocation)
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %4 = load i32, i32* %width, align 4
  store i32 %4, i32* %pwidth, align 4
  %5 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment, align 8
  %call = call double @gtk_adjustment_get_page_size(%struct._GtkAdjustment* %5)
  %6 = load i32, i32* %pos.addr, align 4
  %conv = sitofp i32 %6 to double
  %mul = fmul double %call, %conv
  %7 = load i32, i32* %pwidth, align 4
  %sub = sub nsw i32 %7, 1
  %conv1 = sitofp i32 %sub to double
  %div = fdiv double %mul, %conv1
  %8 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment, align 8
  %call2 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %8)
  %add = fadd double %div, %call2
  ret double %add
}

declare %struct._GimpGradientSegment* @gimp_gradient_get_color_at(%struct._GimpGradient*, %struct._GimpContext*, %struct._GimpGradientSegment*, double, i32, %struct._GimpRGB*) #1

declare void @gimp_color_area_set_color(%struct._GimpColorArea*, %struct._GimpRGB*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_area_get_type() #2

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare void @gimp_context_set_foreground(%struct._GimpContext*, %struct._GimpRGB*) #1

declare void @gimp_context_set_background(%struct._GimpContext*, %struct._GimpRGB*) #1

declare void @g_free(i8*) #1

declare void @gtk_widget_get_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #1

declare void @gimp_rgb_to_hsv(%struct._GimpRGB*, %struct._GimpHSV*) #1

declare void @gimp_data_editor_set_data(%struct._GimpDataEditor*, %struct._GimpData*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_data_get_type() #2

declare %struct._GimpGradientSegment* @gimp_gradient_get_segment_at(%struct._GimpGradient*, double) #1

declare void @gimp_data_freeze(%struct._GimpData*) #1

declare void @gimp_gradient_segment_split_midpoint(%struct._GimpGradient*, %struct._GimpContext*, %struct._GimpGradientSegment*, %struct._GimpGradientSegment**, %struct._GimpGradientSegment**) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #6

declare void @gimp_data_thaw(%struct._GimpData*) #1

; Function Attrs: nounwind uwtable
define internal void @control_button_press(%struct._GimpGradientEditor* %editor, i32 %x, i32 %y, i32 %button, i32 %state) #3 {
entry:
  %editor.addr = alloca %struct._GimpGradientEditor*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %button.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %gradient = alloca %struct._GimpGradient*, align 8
  %seg = alloca %struct._GimpGradientSegment*, align 8
  %handle = alloca i32, align 4
  %xpos = alloca double, align 8
  %in_handle = alloca i32, align 4
  store %struct._GimpGradientEditor* %editor, %struct._GimpGradientEditor** %editor.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %button, i32* %button.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  %0 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpGradientEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDataEditor*
  %data = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %2, i32 0, i32 4
  %3 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %4 = bitcast %struct._GimpData* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_gradient_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpGradient*
  store %struct._GimpGradient* %5, %struct._GimpGradient** %gradient, align 8
  %6 = load i32, i32* %button.addr, align 4
  %cmp = icmp eq i32 %6, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %8 = bitcast %struct._GimpGradientEditor* %7 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_editor_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call4)
  %9 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpEditor*
  %call6 = call i32 @gimp_editor_popup_menu(%struct._GimpEditor* %9, void (%struct._GtkMenu*, i32*, i32*, i8*)* null, i8* null)
  br label %if.end.51

if.end:                                           ; preds = %entry
  %10 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %11 = load i32, i32* %x.addr, align 4
  %call7 = call double @control_calc_g_pos(%struct._GimpGradientEditor* %10, i32 %11)
  store double %call7, double* %xpos, align 8
  %12 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %13 = load double, double* %xpos, align 8
  call void @seg_get_closest_handle(%struct._GimpGradient* %12, double %13, %struct._GimpGradientSegment** %seg, i32* %handle)
  %14 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %15 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %16 = load i32, i32* %x.addr, align 4
  %17 = load i32, i32* %y.addr, align 4
  %18 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %19 = load i32, i32* %handle, align 4
  %call8 = call i32 @control_point_in_handle(%struct._GimpGradientEditor* %14, %struct._GimpGradient* %15, i32 %16, i32 %17, %struct._GimpGradientSegment* %18, i32 %19)
  store i32 %call8, i32* %in_handle, align 4
  %20 = load i32, i32* %in_handle, align 4
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %if.then.9, label %if.else.42

if.then.9:                                        ; preds = %if.end
  %21 = load i32, i32* %handle, align 4
  switch i32 %21, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.34
  ]

sw.bb:                                            ; preds = %if.then.9
  %22 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %cmp10 = icmp ne %struct._GimpGradientSegment* %22, null
  br i1 %cmp10, label %if.then.11, label %if.else.26

if.then.11:                                       ; preds = %sw.bb
  %23 = load i32, i32* %state.addr, align 4
  %and = and i32 %23, 1
  %tobool12 = icmp ne i32 %and, 0
  br i1 %tobool12, label %if.then.13, label %if.else.17

if.then.13:                                       ; preds = %if.then.11
  %24 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %prev = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %24, i32 0, i32 9
  %25 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %prev, align 8
  %cmp14 = icmp ne %struct._GimpGradientSegment* %25, null
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.then.13
  %26 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_drag_mode = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %26, i32 0, i32 16
  store i32 1, i32* %control_drag_mode, align 4
  %27 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %28 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_drag_segment = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %28, i32 0, i32 13
  store %struct._GimpGradientSegment* %27, %struct._GimpGradientSegment** %control_drag_segment, align 8
  %29 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_compress = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %29, i32 0, i32 18
  store i32 1, i32* %control_compress, align 4
  br label %if.end.16

if.else:                                          ; preds = %if.then.13
  %30 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %31 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %32 = load double, double* %xpos, align 8
  call void @control_extend_selection(%struct._GimpGradientEditor* %30, %struct._GimpGradientSegment* %31, double %32)
  %33 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  call void @gimp_gradient_editor_update(%struct._GimpGradientEditor* %33)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.15
  br label %if.end.25

if.else.17:                                       ; preds = %if.then.11
  %34 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %prev18 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %34, i32 0, i32 9
  %35 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %prev18, align 8
  %cmp19 = icmp ne %struct._GimpGradientSegment* %35, null
  br i1 %cmp19, label %if.then.20, label %if.else.23

if.then.20:                                       ; preds = %if.else.17
  %36 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_drag_mode21 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %36, i32 0, i32 16
  store i32 1, i32* %control_drag_mode21, align 4
  %37 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %38 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_drag_segment22 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %38, i32 0, i32 13
  store %struct._GimpGradientSegment* %37, %struct._GimpGradientSegment** %control_drag_segment22, align 8
  br label %if.end.24

if.else.23:                                       ; preds = %if.else.17
  %39 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %40 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  call void @control_select_single_segment(%struct._GimpGradientEditor* %39, %struct._GimpGradientSegment* %40)
  %41 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  call void @gimp_gradient_editor_update(%struct._GimpGradientEditor* %41)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.23, %if.then.20
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.end.16
  br label %if.end.33

if.else.26:                                       ; preds = %sw.bb
  %42 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %segments = getelementptr inbounds %struct._GimpGradient, %struct._GimpGradient* %42, i32 0, i32 1
  %43 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segments, align 8
  %call27 = call %struct._GimpGradientSegment* @gimp_gradient_segment_get_last(%struct._GimpGradientSegment* %43)
  store %struct._GimpGradientSegment* %call27, %struct._GimpGradientSegment** %seg, align 8
  %44 = load i32, i32* %state.addr, align 4
  %and28 = and i32 %44, 1
  %tobool29 = icmp ne i32 %and28, 0
  br i1 %tobool29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %if.else.26
  %45 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %46 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %47 = load double, double* %xpos, align 8
  call void @control_extend_selection(%struct._GimpGradientEditor* %45, %struct._GimpGradientSegment* %46, double %47)
  %48 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  call void @gimp_gradient_editor_update(%struct._GimpGradientEditor* %48)
  br label %if.end.32

if.else.31:                                       ; preds = %if.else.26
  %49 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %50 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  call void @control_select_single_segment(%struct._GimpGradientEditor* %49, %struct._GimpGradientSegment* %50)
  %51 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  call void @gimp_gradient_editor_update(%struct._GimpGradientEditor* %51)
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.31, %if.then.30
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.end.25
  br label %sw.epilog

sw.bb.34:                                         ; preds = %if.then.9
  %52 = load i32, i32* %state.addr, align 4
  %and35 = and i32 %52, 1
  %tobool36 = icmp ne i32 %and35, 0
  br i1 %tobool36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %sw.bb.34
  %53 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %54 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %55 = load double, double* %xpos, align 8
  call void @control_extend_selection(%struct._GimpGradientEditor* %53, %struct._GimpGradientSegment* %54, double %55)
  %56 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  call void @gimp_gradient_editor_update(%struct._GimpGradientEditor* %56)
  br label %if.end.41

if.else.38:                                       ; preds = %sw.bb.34
  %57 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_drag_mode39 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %57, i32 0, i32 16
  store i32 2, i32* %control_drag_mode39, align 4
  %58 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %59 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_drag_segment40 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %59, i32 0, i32 13
  store %struct._GimpGradientSegment* %58, %struct._GimpGradientSegment** %control_drag_segment40, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.38, %if.then.37
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.9
  %60 = load i32, i32* %in_handle, align 4
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.control_button_press, i32 0, i32 0), i32 %60)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.41, %if.end.33
  br label %if.end.51

if.else.42:                                       ; preds = %if.end
  %61 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %62 = load double, double* %xpos, align 8
  %call43 = call %struct._GimpGradientSegment* @gimp_gradient_get_segment_at(%struct._GimpGradient* %61, double %62)
  store %struct._GimpGradientSegment* %call43, %struct._GimpGradientSegment** %seg, align 8
  %63 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_drag_mode44 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %63, i32 0, i32 16
  store i32 3, i32* %control_drag_mode44, align 4
  %64 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %65 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_drag_segment45 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %65, i32 0, i32 13
  store %struct._GimpGradientSegment* %64, %struct._GimpGradientSegment** %control_drag_segment45, align 8
  %66 = load double, double* %xpos, align 8
  %67 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_last_gx = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %67, i32 0, i32 20
  store double %66, double* %control_last_gx, align 8
  %68 = load double, double* %xpos, align 8
  %69 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_orig_pos = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %69, i32 0, i32 21
  store double %68, double* %control_orig_pos, align 8
  %70 = load i32, i32* %state.addr, align 4
  %and46 = and i32 %70, 1
  %tobool47 = icmp ne i32 %and46, 0
  br i1 %tobool47, label %if.then.48, label %if.end.50

if.then.48:                                       ; preds = %if.else.42
  %71 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_compress49 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %71, i32 0, i32 18
  store i32 1, i32* %control_compress49, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.48, %if.else.42
  br label %if.end.51

if.end.51:                                        ; preds = %if.then, %if.end.50, %sw.epilog
  ret void
}

declare void @gtk_grab_add(%struct._GtkWidget*) #1

declare i32 @g_signal_handlers_block_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare i32 @g_signal_handlers_unblock_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare void @gtk_grab_remove(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @control_extend_selection(%struct._GimpGradientEditor* %editor, %struct._GimpGradientSegment* %seg, double %pos) #3 {
entry:
  %editor.addr = alloca %struct._GimpGradientEditor*, align 8
  %seg.addr = alloca %struct._GimpGradientSegment*, align 8
  %pos.addr = alloca double, align 8
  store %struct._GimpGradientEditor* %editor, %struct._GimpGradientEditor** %editor.addr, align 8
  store %struct._GimpGradientSegment* %seg, %struct._GimpGradientSegment** %seg.addr, align 8
  store double %pos, double* %pos.addr, align 8
  %0 = load double, double* %pos.addr, align 8
  %1 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_sel_l = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %1, i32 0, i32 14
  %2 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l, align 8
  %left = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %2, i32 0, i32 0
  %3 = load double, double* %left, align 8
  %sub = fsub double %0, %3
  %call = call double @fabs(double %sub) #7
  %4 = load double, double* %pos.addr, align 8
  %5 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_sel_r = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %5, i32 0, i32 15
  %6 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_r, align 8
  %right = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %6, i32 0, i32 2
  %7 = load double, double* %right, align 8
  %sub1 = fsub double %4, %7
  %call2 = call double @fabs(double %sub1) #7
  %cmp = fcmp olt double %call, %call2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %9 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_sel_l3 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %9, i32 0, i32 14
  store %struct._GimpGradientSegment* %8, %struct._GimpGradientSegment** %control_sel_l3, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %11 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_sel_r4 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %11, i32 0, i32 15
  store %struct._GimpGradientSegment* %10, %struct._GimpGradientSegment** %control_sel_r4, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @control_select_single_segment(%struct._GimpGradientEditor* %editor, %struct._GimpGradientSegment* %seg) #3 {
entry:
  %editor.addr = alloca %struct._GimpGradientEditor*, align 8
  %seg.addr = alloca %struct._GimpGradientSegment*, align 8
  store %struct._GimpGradientEditor* %editor, %struct._GimpGradientEditor** %editor.addr, align 8
  store %struct._GimpGradientSegment* %seg, %struct._GimpGradientSegment** %seg.addr, align 8
  %0 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %1 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_sel_l = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %1, i32 0, i32 14
  store %struct._GimpGradientSegment* %0, %struct._GimpGradientSegment** %control_sel_l, align 8
  %2 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %3 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_sel_r = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %3, i32 0, i32 15
  store %struct._GimpGradientSegment* %2, %struct._GimpGradientSegment** %control_sel_r, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @control_do_hint(%struct._GimpGradientEditor* %editor, i32 %x, i32 %y) #3 {
entry:
  %editor.addr = alloca %struct._GimpGradientEditor*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %gradient = alloca %struct._GimpGradient*, align 8
  %seg = alloca %struct._GimpGradientSegment*, align 8
  %handle = alloca i32, align 4
  %in_handle = alloca i32, align 4
  %pos = alloca double, align 8
  %str = alloca i8*, align 8
  %str2 = alloca i8*, align 8
  store %struct._GimpGradientEditor* %editor, %struct._GimpGradientEditor** %editor.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpGradientEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDataEditor*
  %data = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %2, i32 0, i32 4
  %3 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %4 = bitcast %struct._GimpData* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_gradient_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpGradient*
  store %struct._GimpGradient* %5, %struct._GimpGradient** %gradient, align 8
  %6 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %7 = load i32, i32* %x.addr, align 4
  %call4 = call double @control_calc_g_pos(%struct._GimpGradientEditor* %6, i32 %7)
  store double %call4, double* %pos, align 8
  %8 = load double, double* %pos, align 8
  %cmp = fcmp olt double %8, 0.000000e+00
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %9 = load double, double* %pos, align 8
  %cmp5 = fcmp ogt double %9, 1.000000e+00
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end.40

if.end:                                           ; preds = %lor.lhs.false
  %10 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %11 = load double, double* %pos, align 8
  call void @seg_get_closest_handle(%struct._GimpGradient* %10, double %11, %struct._GimpGradientSegment** %seg, i32* %handle)
  %12 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %13 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %14 = load i32, i32* %x.addr, align 4
  %15 = load i32, i32* %y.addr, align 4
  %16 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %17 = load i32, i32* %handle, align 4
  %call6 = call i32 @control_point_in_handle(%struct._GimpGradientEditor* %12, %struct._GimpGradient* %13, i32 %14, i32 %15, %struct._GimpGradientSegment* %16, i32 %17)
  store i32 %call6, i32* %in_handle, align 4
  %18 = load i32, i32* %in_handle, align 4
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %if.then.7, label %if.else.32

if.then.7:                                        ; preds = %if.end
  %19 = load i32, i32* %handle, align 4
  switch i32 %19, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.27
  ]

sw.bb:                                            ; preds = %if.then.7
  %20 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %cmp8 = icmp ne %struct._GimpGradientSegment* %20, null
  br i1 %cmp8, label %if.then.9, label %if.else.21

if.then.9:                                        ; preds = %sw.bb
  %21 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %prev = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %21, i32 0, i32 9
  %22 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %prev, align 8
  %cmp10 = icmp ne %struct._GimpGradientSegment* %22, null
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.then.9
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i32 0, i32 0)) #6
  %call13 = call i8* @gimp_get_mod_string(i32 1)
  %call14 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call12, i8* %call13)
  store i8* %call14, i8** %str, align 8
  %23 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %call15 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i32 0, i32 0)) #6
  %24 = load i8*, i8** %str, align 8
  call void @gradient_editor_set_hint(%struct._GimpGradientEditor* %23, i8* null, i8* %call15, i8* %24, i8* null)
  %25 = load i8*, i8** %str, align 8
  call void @g_free(i8* %25)
  br label %if.end.20

if.else:                                          ; preds = %if.then.9
  %call16 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i32 0, i32 0)) #6
  %call17 = call i8* @gimp_get_mod_string(i32 1)
  %call18 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call16, i8* %call17)
  store i8* %call18, i8** %str, align 8
  %26 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %call19 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0)) #6
  %27 = load i8*, i8** %str, align 8
  call void @gradient_editor_set_hint(%struct._GimpGradientEditor* %26, i8* null, i8* %call19, i8* %27, i8* null)
  %28 = load i8*, i8** %str, align 8
  call void @g_free(i8* %28)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.11
  br label %if.end.26

if.else.21:                                       ; preds = %sw.bb
  %call22 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i32 0, i32 0)) #6
  %call23 = call i8* @gimp_get_mod_string(i32 1)
  %call24 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call22, i8* %call23)
  store i8* %call24, i8** %str, align 8
  %29 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %call25 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0)) #6
  %30 = load i8*, i8** %str, align 8
  call void @gradient_editor_set_hint(%struct._GimpGradientEditor* %29, i8* null, i8* %call25, i8* %30, i8* null)
  %31 = load i8*, i8** %str, align 8
  call void @g_free(i8* %31)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.21, %if.end.20
  br label %sw.epilog

sw.bb.27:                                         ; preds = %if.then.7
  %call28 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i32 0, i32 0)) #6
  %call29 = call i8* @gimp_get_mod_string(i32 1)
  %call30 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call28, i8* %call29)
  store i8* %call30, i8** %str, align 8
  %32 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %call31 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.36, i32 0, i32 0)) #6
  %33 = load i8*, i8** %str, align 8
  call void @gradient_editor_set_hint(%struct._GimpGradientEditor* %32, i8* null, i8* %call31, i8* %33, i8* null)
  %34 = load i8*, i8** %str, align 8
  call void @g_free(i8* %34)
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.7
  %35 = load i32, i32* %in_handle, align 4
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.control_do_hint, i32 0, i32 0), i32 %35)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.27, %if.end.26
  br label %if.end.40

if.else.32:                                       ; preds = %if.end
  %call33 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i32 0, i32 0)) #6
  %call34 = call i8* @gimp_get_mod_string(i32 1)
  %call35 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call33, i8* %call34)
  store i8* %call35, i8** %str, align 8
  %call36 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i32 0, i32 0)) #6
  %call37 = call i8* @gimp_get_mod_string(i32 1)
  %call38 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call36, i8* %call37)
  store i8* %call38, i8** %str2, align 8
  %36 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %call39 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.36, i32 0, i32 0)) #6
  %37 = load i8*, i8** %str, align 8
  %38 = load i8*, i8** %str2, align 8
  call void @gradient_editor_set_hint(%struct._GimpGradientEditor* %36, i8* %call39, i8* %37, i8* %38, i8* null)
  %39 = load i8*, i8** %str, align 8
  call void @g_free(i8* %39)
  %40 = load i8*, i8** %str2, align 8
  call void @g_free(i8* %40)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then, %if.else.32, %sw.epilog
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @control_motion(%struct._GimpGradientEditor* %editor, %struct._GimpGradient* %gradient, i32 %x) #3 {
entry:
  %editor.addr = alloca %struct._GimpGradientEditor*, align 8
  %gradient.addr = alloca %struct._GimpGradient*, align 8
  %x.addr = alloca i32, align 4
  %seg = alloca %struct._GimpGradientSegment*, align 8
  %pos = alloca double, align 8
  %delta = alloca double, align 8
  %str = alloca i8*, align 8
  store %struct._GimpGradientEditor* %editor, %struct._GimpGradientEditor** %editor.addr, align 8
  store %struct._GimpGradient* %gradient, %struct._GimpGradient** %gradient.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  %0 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_drag_segment = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %0, i32 0, i32 13
  %1 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_drag_segment, align 8
  store %struct._GimpGradientSegment* %1, %struct._GimpGradientSegment** %seg, align 8
  store i8* null, i8** %str, align 8
  %2 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_drag_mode = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %2, i32 0, i32 16
  %3 = load i32, i32* %control_drag_mode, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.4
    i32 3, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %5 = load i32, i32* %x.addr, align 4
  %call = call double @control_calc_g_pos(%struct._GimpGradientEditor* %4, i32 %5)
  store double %call, double* %pos, align 8
  %6 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_compress = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %6, i32 0, i32 18
  %7 = load i32, i32* %control_compress, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  %8 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %9 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %10 = load double, double* %pos, align 8
  %call1 = call double @gimp_gradient_segment_set_left_pos(%struct._GimpGradient* %8, %struct._GimpGradientSegment* %9, double %10)
  br label %if.end

if.else:                                          ; preds = %sw.bb
  %11 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %12 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_sel_l = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %12, i32 0, i32 14
  %13 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l, align 8
  %14 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_sel_r = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %14, i32 0, i32 15
  %15 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_r, align 8
  %16 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %17 = load double, double* %pos, align 8
  call void @control_compress_left(%struct._GimpGradient* %11, %struct._GimpGradientSegment* %13, %struct._GimpGradientSegment* %15, %struct._GimpGradientSegment* %16, double %17)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.37, i32 0, i32 0)) #6
  %18 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %18, i32 0, i32 0
  %19 = load double, double* %left, align 8
  %call3 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call2, double %19)
  store i8* %call3, i8** %str, align 8
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %20 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %21 = load i32, i32* %x.addr, align 4
  %call5 = call double @control_calc_g_pos(%struct._GimpGradientEditor* %20, i32 %21)
  store double %call5, double* %pos, align 8
  %22 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %23 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %24 = load double, double* %pos, align 8
  %call6 = call double @gimp_gradient_segment_set_middle_pos(%struct._GimpGradient* %22, %struct._GimpGradientSegment* %23, double %24)
  %call7 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.37, i32 0, i32 0)) #6
  %25 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %middle = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %25, i32 0, i32 1
  %26 = load double, double* %middle, align 8
  %call8 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call7, double %26)
  store i8* %call8, i8** %str, align 8
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %27 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %28 = load i32, i32* %x.addr, align 4
  %call10 = call double @control_calc_g_pos(%struct._GimpGradientEditor* %27, i32 %28)
  store double %call10, double* %pos, align 8
  %29 = load double, double* %pos, align 8
  %30 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_last_gx = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %30, i32 0, i32 20
  %31 = load double, double* %control_last_gx, align 8
  %sub = fsub double %29, %31
  store double %sub, double* %delta, align 8
  %32 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left11 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %32, i32 0, i32 0
  %33 = load double, double* %left11, align 8
  %34 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_sel_l12 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %34, i32 0, i32 14
  %35 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l12, align 8
  %left13 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %35, i32 0, i32 0
  %36 = load double, double* %left13, align 8
  %cmp = fcmp oge double %33, %36
  br i1 %cmp, label %land.lhs.true, label %if.else.21

land.lhs.true:                                    ; preds = %sw.bb.9
  %37 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %37, i32 0, i32 2
  %38 = load double, double* %right, align 8
  %39 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_sel_r14 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %39, i32 0, i32 15
  %40 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_r14, align 8
  %right15 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %40, i32 0, i32 2
  %41 = load double, double* %right15, align 8
  %cmp16 = fcmp ole double %38, %41
  br i1 %cmp16, label %if.then.17, label %if.else.21

if.then.17:                                       ; preds = %land.lhs.true
  %42 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %43 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_sel_l18 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %43, i32 0, i32 14
  %44 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l18, align 8
  %45 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_sel_r19 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %45, i32 0, i32 15
  %46 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_r19, align 8
  %47 = load double, double* %delta, align 8
  %call20 = call double @control_move(%struct._GimpGradientEditor* %42, %struct._GimpGradientSegment* %44, %struct._GimpGradientSegment* %46, double %47)
  store double %call20, double* %delta, align 8
  br label %if.end.23

if.else.21:                                       ; preds = %land.lhs.true, %sw.bb.9
  %48 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %49 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %50 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %51 = load double, double* %delta, align 8
  %call22 = call double @control_move(%struct._GimpGradientEditor* %48, %struct._GimpGradientSegment* %49, %struct._GimpGradientSegment* %50, double %51)
  store double %call22, double* %delta, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.21, %if.then.17
  %52 = load double, double* %delta, align 8
  %53 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_last_gx24 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %53, i32 0, i32 20
  %54 = load double, double* %control_last_gx24, align 8
  %add = fadd double %54, %52
  store double %add, double* %control_last_gx24, align 8
  %call25 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i32 0, i32 0)) #6
  %55 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_last_gx26 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %55, i32 0, i32 20
  %56 = load double, double* %control_last_gx26, align 8
  %57 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_orig_pos = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %57, i32 0, i32 21
  %58 = load double, double* %control_orig_pos, align 8
  %sub27 = fsub double %56, %58
  %call28 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call25, double %sub27)
  store i8* %call28, i8** %str, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %59 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_drag_mode29 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %59, i32 0, i32 16
  %60 = load i32, i32* %control_drag_mode29, align 4
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.control_motion, i32 0, i32 0), i32 %60)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.23, %sw.bb.4, %if.end
  %61 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %62 = load i8*, i8** %str, align 8
  call void @gradient_editor_set_hint(%struct._GimpGradientEditor* %61, i8* %62, i8* null, i8* null, i8* null)
  %63 = load i8*, i8** %str, align 8
  call void @g_free(i8* %63)
  %64 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  call void @gimp_gradient_editor_update(%struct._GimpGradientEditor* %64)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @seg_get_closest_handle(%struct._GimpGradient* %grad, double %pos, %struct._GimpGradientSegment** %seg, i32* %handle) #3 {
entry:
  %grad.addr = alloca %struct._GimpGradient*, align 8
  %pos.addr = alloca double, align 8
  %seg.addr = alloca %struct._GimpGradientSegment**, align 8
  %handle.addr = alloca i32*, align 8
  %l_delta = alloca double, align 8
  %m_delta = alloca double, align 8
  %r_delta = alloca double, align 8
  store %struct._GimpGradient* %grad, %struct._GimpGradient** %grad.addr, align 8
  store double %pos, double* %pos.addr, align 8
  store %struct._GimpGradientSegment** %seg, %struct._GimpGradientSegment*** %seg.addr, align 8
  store i32* %handle, i32** %handle.addr, align 8
  %0 = load %struct._GimpGradient*, %struct._GimpGradient** %grad.addr, align 8
  %1 = load double, double* %pos.addr, align 8
  %call = call %struct._GimpGradientSegment* @gimp_gradient_get_segment_at(%struct._GimpGradient* %0, double %1)
  %2 = load %struct._GimpGradientSegment**, %struct._GimpGradientSegment*** %seg.addr, align 8
  store %struct._GimpGradientSegment* %call, %struct._GimpGradientSegment** %2, align 8
  %3 = load double, double* %pos.addr, align 8
  %4 = load %struct._GimpGradientSegment**, %struct._GimpGradientSegment*** %seg.addr, align 8
  %5 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %4, align 8
  %middle = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %5, i32 0, i32 1
  %6 = load double, double* %middle, align 8
  %sub = fsub double %3, %6
  %call1 = call double @fabs(double %sub) #7
  store double %call1, double* %m_delta, align 8
  %7 = load double, double* %pos.addr, align 8
  %8 = load %struct._GimpGradientSegment**, %struct._GimpGradientSegment*** %seg.addr, align 8
  %9 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %8, align 8
  %middle2 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %9, i32 0, i32 1
  %10 = load double, double* %middle2, align 8
  %cmp = fcmp olt double %7, %10
  br i1 %cmp, label %if.then, label %if.else.7

if.then:                                          ; preds = %entry
  %11 = load double, double* %pos.addr, align 8
  %12 = load %struct._GimpGradientSegment**, %struct._GimpGradientSegment*** %seg.addr, align 8
  %13 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %12, align 8
  %left = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %13, i32 0, i32 0
  %14 = load double, double* %left, align 8
  %sub3 = fsub double %11, %14
  %call4 = call double @fabs(double %sub3) #7
  store double %call4, double* %l_delta, align 8
  %15 = load double, double* %l_delta, align 8
  %16 = load double, double* %m_delta, align 8
  %cmp5 = fcmp olt double %15, %16
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %17 = load i32*, i32** %handle.addr, align 8
  store i32 1, i32* %17, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %18 = load i32*, i32** %handle.addr, align 8
  store i32 2, i32* %18, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.14

if.else.7:                                        ; preds = %entry
  %19 = load double, double* %pos.addr, align 8
  %20 = load %struct._GimpGradientSegment**, %struct._GimpGradientSegment*** %seg.addr, align 8
  %21 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %20, align 8
  %right = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %21, i32 0, i32 2
  %22 = load double, double* %right, align 8
  %sub8 = fsub double %19, %22
  %call9 = call double @fabs(double %sub8) #7
  store double %call9, double* %r_delta, align 8
  %23 = load double, double* %m_delta, align 8
  %24 = load double, double* %r_delta, align 8
  %cmp10 = fcmp olt double %23, %24
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.else.7
  %25 = load i32*, i32** %handle.addr, align 8
  store i32 2, i32* %25, align 4
  br label %if.end.13

if.else.12:                                       ; preds = %if.else.7
  %26 = load %struct._GimpGradientSegment**, %struct._GimpGradientSegment*** %seg.addr, align 8
  %27 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %26, align 8
  %next = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %27, i32 0, i32 10
  %28 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next, align 8
  %29 = load %struct._GimpGradientSegment**, %struct._GimpGradientSegment*** %seg.addr, align 8
  store %struct._GimpGradientSegment* %28, %struct._GimpGradientSegment** %29, align 8
  %30 = load i32*, i32** %handle.addr, align 8
  store i32 1, i32* %30, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.12, %if.then.11
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @control_point_in_handle(%struct._GimpGradientEditor* %editor, %struct._GimpGradient* %gradient, i32 %x, i32 %y, %struct._GimpGradientSegment* %seg, i32 %handle) #3 {
entry:
  %retval = alloca i32, align 4
  %editor.addr = alloca %struct._GimpGradientEditor*, align 8
  %gradient.addr = alloca %struct._GimpGradient*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %seg.addr = alloca %struct._GimpGradientSegment*, align 8
  %handle.addr = alloca i32, align 4
  %handle_pos = alloca i32, align 4
  store %struct._GimpGradientEditor* %editor, %struct._GimpGradientEditor** %editor.addr, align 8
  store %struct._GimpGradient* %gradient, %struct._GimpGradient** %gradient.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store %struct._GimpGradientSegment* %seg, %struct._GimpGradientSegment** %seg.addr, align 8
  store i32 %handle, i32* %handle.addr, align 4
  %0 = load i32, i32* %handle.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %tobool = icmp ne %struct._GimpGradientSegment* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %2 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %3 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %left = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %3, i32 0, i32 0
  %4 = load double, double* %left, align 8
  %call = call i32 @control_calc_p_pos(%struct._GimpGradientEditor* %2, double %4)
  store i32 %call, i32* %handle_pos, align 4
  br label %if.end

if.else:                                          ; preds = %sw.bb
  %5 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %segments = getelementptr inbounds %struct._GimpGradient, %struct._GimpGradient* %5, i32 0, i32 1
  %6 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segments, align 8
  %call1 = call %struct._GimpGradientSegment* @gimp_gradient_segment_get_last(%struct._GimpGradientSegment* %6)
  store %struct._GimpGradientSegment* %call1, %struct._GimpGradientSegment** %seg.addr, align 8
  %7 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %8 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %right = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %8, i32 0, i32 2
  %9 = load double, double* %right, align 8
  %call2 = call i32 @control_calc_p_pos(%struct._GimpGradientEditor* %7, double %9)
  store i32 %call2, i32* %handle_pos, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %10 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %11 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %middle = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %11, i32 0, i32 1
  %12 = load double, double* %middle, align 8
  %call4 = call i32 @control_calc_p_pos(%struct._GimpGradientEditor* %10, double %12)
  store i32 %call4, i32* %handle_pos, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %13 = load i32, i32* %handle.addr, align 4
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.control_point_in_handle, i32 0, i32 0), i32 %13)
  store i32 0, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.3, %if.end
  %14 = load i32, i32* %y.addr, align 4
  %div = sdiv i32 %14, 2
  store i32 %div, i32* %y.addr, align 4
  %15 = load i32, i32* %x.addr, align 4
  %16 = load i32, i32* %handle_pos, align 4
  %17 = load i32, i32* %y.addr, align 4
  %sub = sub nsw i32 %16, %17
  %cmp = icmp sge i32 %15, %sub
  br i1 %cmp, label %land.lhs.true, label %if.else.7

land.lhs.true:                                    ; preds = %sw.epilog
  %18 = load i32, i32* %x.addr, align 4
  %19 = load i32, i32* %handle_pos, align 4
  %20 = load i32, i32* %y.addr, align 4
  %add = add nsw i32 %19, %20
  %cmp5 = icmp sle i32 %18, %add
  br i1 %cmp5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.else.7:                                        ; preds = %land.lhs.true, %sw.epilog
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.7, %if.then.6, %sw.default
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare %struct._GimpGradientSegment* @gimp_gradient_segment_get_last(%struct._GimpGradientSegment*) #1

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

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

; Function Attrs: nounwind uwtable
define internal i32 @control_calc_p_pos(%struct._GimpGradientEditor* %editor, double %pos) #3 {
entry:
  %editor.addr = alloca %struct._GimpGradientEditor*, align 8
  %pos.addr = alloca double, align 8
  %adjustment = alloca %struct._GtkAdjustment*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %pwidth = alloca i32, align 4
  store %struct._GimpGradientEditor* %editor, %struct._GimpGradientEditor** %editor.addr, align 8
  store double %pos, double* %pos.addr, align 8
  %0 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %scroll_data = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %0, i32 0, i32 9
  %1 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %scroll_data, align 8
  store %struct._GtkAdjustment* %1, %struct._GtkAdjustment** %adjustment, align 8
  %2 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %2, i32 0, i32 7
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %control, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %3, %struct._GdkRectangle* %allocation)
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %4 = load i32, i32* %width, align 4
  store i32 %4, i32* %pwidth, align 4
  %5 = load i32, i32* %pwidth, align 4
  %sub = sub nsw i32 %5, 1
  %conv = sitofp i32 %sub to double
  %6 = load double, double* %pos.addr, align 8
  %7 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %7)
  %sub1 = fsub double %6, %call
  %mul = fmul double %conv, %sub1
  %8 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment, align 8
  %call2 = call double @gtk_adjustment_get_page_size(%struct._GtkAdjustment* %8)
  %div = fdiv double %mul, %call2
  %call3 = call double @rint(double %div) #7
  %conv4 = fptosi double %call3 to i32
  ret i32 %conv4
}

; Function Attrs: nounwind readnone
declare double @rint(double) #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

declare i8* @gimp_get_mod_string(i32) #1

declare double @gimp_gradient_segment_set_left_pos(%struct._GimpGradient*, %struct._GimpGradientSegment*, double) #1

; Function Attrs: nounwind uwtable
define internal void @control_compress_left(%struct._GimpGradient* %gradient, %struct._GimpGradientSegment* %range_l, %struct._GimpGradientSegment* %range_r, %struct._GimpGradientSegment* %drag_seg, double %pos) #3 {
entry:
  %gradient.addr = alloca %struct._GimpGradient*, align 8
  %range_l.addr = alloca %struct._GimpGradientSegment*, align 8
  %range_r.addr = alloca %struct._GimpGradientSegment*, align 8
  %drag_seg.addr = alloca %struct._GimpGradientSegment*, align 8
  %pos.addr = alloca double, align 8
  %seg = alloca %struct._GimpGradientSegment*, align 8
  %lbound = alloca double, align 8
  %rbound = alloca double, align 8
  %k = alloca i32, align 4
  store %struct._GimpGradient* %gradient, %struct._GimpGradient** %gradient.addr, align 8
  store %struct._GimpGradientSegment* %range_l, %struct._GimpGradientSegment** %range_l.addr, align 8
  store %struct._GimpGradientSegment* %range_r, %struct._GimpGradientSegment** %range_r.addr, align 8
  store %struct._GimpGradientSegment* %drag_seg, %struct._GimpGradientSegment** %drag_seg.addr, align 8
  store double %pos, double* %pos.addr, align 8
  %0 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %drag_seg.addr, align 8
  %left = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %0, i32 0, i32 0
  %1 = load double, double* %left, align 8
  %2 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_l.addr, align 8
  %left1 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %2, i32 0, i32 0
  %3 = load double, double* %left1, align 8
  %cmp = fcmp oge double %1, %3
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %drag_seg.addr, align 8
  %right = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %4, i32 0, i32 2
  %5 = load double, double* %right, align 8
  %6 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_r.addr, align 8
  %right2 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %6, i32 0, i32 2
  %7 = load double, double* %right2, align 8
  %cmp3 = fcmp ole double %5, %7
  br i1 %cmp3, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %8 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %drag_seg.addr, align 8
  %9 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_r.addr, align 8
  %next = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %9, i32 0, i32 10
  %10 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next, align 8
  %cmp4 = icmp eq %struct._GimpGradientSegment* %8, %10
  br i1 %cmp4, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %11 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %drag_seg.addr, align 8
  store %struct._GimpGradientSegment* %11, %struct._GimpGradientSegment** %range_r.addr, align 8
  store %struct._GimpGradientSegment* %11, %struct._GimpGradientSegment** %range_l.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %land.lhs.true
  %12 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %drag_seg.addr, align 8
  %13 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_l.addr, align 8
  %cmp5 = icmp eq %struct._GimpGradientSegment* %12, %13
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  %14 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_l.addr, align 8
  %prev = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %14, i32 0, i32 9
  %15 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %prev, align 8
  %left7 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %15, i32 0, i32 0
  %16 = load double, double* %left7, align 8
  %add = fadd double %16, 2.000000e-10
  store double %add, double* %lbound, align 8
  br label %if.end.13

if.else:                                          ; preds = %if.end
  %17 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %drag_seg.addr, align 8
  store %struct._GimpGradientSegment* %17, %struct._GimpGradientSegment** %seg, align 8
  store i32 0, i32* %k, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %18 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %19 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_l.addr, align 8
  %cmp8 = icmp ne %struct._GimpGradientSegment* %18, %19
  br i1 %cmp8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %20 = load i32, i32* %k, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %k, align 4
  %21 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %prev9 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %21, i32 0, i32 9
  %22 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %prev9, align 8
  store %struct._GimpGradientSegment* %22, %struct._GimpGradientSegment** %seg, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %23 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_l.addr, align 8
  %left10 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %23, i32 0, i32 0
  %24 = load double, double* %left10, align 8
  %25 = load i32, i32* %k, align 4
  %conv = sitofp i32 %25 to double
  %mul = fmul double 2.000000e+00, %conv
  %mul11 = fmul double %mul, 1.000000e-10
  %add12 = fadd double %24, %mul11
  store double %add12, double* %lbound, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %while.end, %if.then.6
  %26 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %drag_seg.addr, align 8
  %27 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_r.addr, align 8
  %next14 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %27, i32 0, i32 10
  %28 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next14, align 8
  %cmp15 = icmp eq %struct._GimpGradientSegment* %26, %28
  br i1 %cmp15, label %if.then.17, label %if.else.20

if.then.17:                                       ; preds = %if.end.13
  %29 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_r.addr, align 8
  %next18 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %29, i32 0, i32 10
  %30 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next18, align 8
  %right19 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %30, i32 0, i32 2
  %31 = load double, double* %right19, align 8
  %sub = fsub double %31, 2.000000e-10
  store double %sub, double* %rbound, align 8
  br label %if.end.33

if.else.20:                                       ; preds = %if.end.13
  %32 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %drag_seg.addr, align 8
  store %struct._GimpGradientSegment* %32, %struct._GimpGradientSegment** %seg, align 8
  store i32 1, i32* %k, align 4
  br label %while.cond.21

while.cond.21:                                    ; preds = %while.body.24, %if.else.20
  %33 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %34 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_r.addr, align 8
  %cmp22 = icmp ne %struct._GimpGradientSegment* %33, %34
  br i1 %cmp22, label %while.body.24, label %while.end.27

while.body.24:                                    ; preds = %while.cond.21
  %35 = load i32, i32* %k, align 4
  %inc25 = add nsw i32 %35, 1
  store i32 %inc25, i32* %k, align 4
  %36 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %next26 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %36, i32 0, i32 10
  %37 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next26, align 8
  store %struct._GimpGradientSegment* %37, %struct._GimpGradientSegment** %seg, align 8
  br label %while.cond.21

while.end.27:                                     ; preds = %while.cond.21
  %38 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_r.addr, align 8
  %right28 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %38, i32 0, i32 2
  %39 = load double, double* %right28, align 8
  %40 = load i32, i32* %k, align 4
  %conv29 = sitofp i32 %40 to double
  %mul30 = fmul double 2.000000e+00, %conv29
  %mul31 = fmul double %mul30, 1.000000e-10
  %sub32 = fsub double %39, %mul31
  store double %sub32, double* %rbound, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %while.end.27, %if.then.17
  %41 = load double, double* %pos.addr, align 8
  %42 = load double, double* %rbound, align 8
  %cmp34 = fcmp ogt double %41, %42
  br i1 %cmp34, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.33
  %43 = load double, double* %rbound, align 8
  br label %cond.end.40

cond.false:                                       ; preds = %if.end.33
  %44 = load double, double* %pos.addr, align 8
  %45 = load double, double* %lbound, align 8
  %cmp36 = fcmp olt double %44, %45
  br i1 %cmp36, label %cond.true.38, label %cond.false.39

cond.true.38:                                     ; preds = %cond.false
  %46 = load double, double* %lbound, align 8
  br label %cond.end

cond.false.39:                                    ; preds = %cond.false
  %47 = load double, double* %pos.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.39, %cond.true.38
  %cond = phi double [ %46, %cond.true.38 ], [ %47, %cond.false.39 ]
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.end, %cond.true
  %cond41 = phi double [ %43, %cond.true ], [ %cond, %cond.end ]
  store double %cond41, double* %pos.addr, align 8
  %48 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %drag_seg.addr, align 8
  %49 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_l.addr, align 8
  %cmp42 = icmp eq %struct._GimpGradientSegment* %48, %49
  br i1 %cmp42, label %if.then.44, label %if.else.49

if.then.44:                                       ; preds = %cond.end.40
  %50 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %51 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_l.addr, align 8
  %prev45 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %51, i32 0, i32 9
  %52 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %prev45, align 8
  %53 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_l.addr, align 8
  %prev46 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %53, i32 0, i32 9
  %54 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %prev46, align 8
  %55 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_l.addr, align 8
  %prev47 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %55, i32 0, i32 9
  %56 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %prev47, align 8
  %left48 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %56, i32 0, i32 0
  %57 = load double, double* %left48, align 8
  %58 = load double, double* %pos.addr, align 8
  call void @gimp_gradient_segment_range_compress(%struct._GimpGradient* %50, %struct._GimpGradientSegment* %52, %struct._GimpGradientSegment* %54, double %57, double %58)
  br label %if.end.52

if.else.49:                                       ; preds = %cond.end.40
  %59 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %60 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_l.addr, align 8
  %61 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %drag_seg.addr, align 8
  %prev50 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %61, i32 0, i32 9
  %62 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %prev50, align 8
  %63 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_l.addr, align 8
  %left51 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %63, i32 0, i32 0
  %64 = load double, double* %left51, align 8
  %65 = load double, double* %pos.addr, align 8
  call void @gimp_gradient_segment_range_compress(%struct._GimpGradient* %59, %struct._GimpGradientSegment* %60, %struct._GimpGradientSegment* %62, double %64, double %65)
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.49, %if.then.44
  %66 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %drag_seg.addr, align 8
  %67 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_r.addr, align 8
  %next53 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %67, i32 0, i32 10
  %68 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next53, align 8
  %cmp54 = icmp ne %struct._GimpGradientSegment* %66, %68
  br i1 %cmp54, label %if.then.56, label %if.else.58

if.then.56:                                       ; preds = %if.end.52
  %69 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %70 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %drag_seg.addr, align 8
  %71 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_r.addr, align 8
  %72 = load double, double* %pos.addr, align 8
  %73 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_r.addr, align 8
  %right57 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %73, i32 0, i32 2
  %74 = load double, double* %right57, align 8
  call void @gimp_gradient_segment_range_compress(%struct._GimpGradient* %69, %struct._GimpGradientSegment* %70, %struct._GimpGradientSegment* %71, double %72, double %74)
  br label %if.end.60

if.else.58:                                       ; preds = %if.end.52
  %75 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %76 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %drag_seg.addr, align 8
  %77 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %drag_seg.addr, align 8
  %78 = load double, double* %pos.addr, align 8
  %79 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %drag_seg.addr, align 8
  %right59 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %79, i32 0, i32 2
  %80 = load double, double* %right59, align 8
  call void @gimp_gradient_segment_range_compress(%struct._GimpGradient* %75, %struct._GimpGradientSegment* %76, %struct._GimpGradientSegment* %77, double %78, double %80)
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.58, %if.then.56
  ret void
}

declare double @gimp_gradient_segment_set_middle_pos(%struct._GimpGradient*, %struct._GimpGradientSegment*, double) #1

; Function Attrs: nounwind uwtable
define internal double @control_move(%struct._GimpGradientEditor* %editor, %struct._GimpGradientSegment* %range_l, %struct._GimpGradientSegment* %range_r, double %delta) #3 {
entry:
  %editor.addr = alloca %struct._GimpGradientEditor*, align 8
  %range_l.addr = alloca %struct._GimpGradientSegment*, align 8
  %range_r.addr = alloca %struct._GimpGradientSegment*, align 8
  %delta.addr = alloca double, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  store %struct._GimpGradientEditor* %editor, %struct._GimpGradientEditor** %editor.addr, align 8
  store %struct._GimpGradientSegment* %range_l, %struct._GimpGradientSegment** %range_l.addr, align 8
  store %struct._GimpGradientSegment* %range_r, %struct._GimpGradientSegment** %range_r.addr, align 8
  store double %delta, double* %delta.addr, align 8
  %0 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpGradientEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDataEditor*
  %data = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %2, i32 0, i32 4
  %3 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %4 = bitcast %struct._GimpData* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_gradient_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpGradient*
  store %struct._GimpGradient* %5, %struct._GimpGradient** %gradient, align 8
  %6 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %7 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_l.addr, align 8
  %8 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_r.addr, align 8
  %9 = load double, double* %delta.addr, align 8
  %10 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_compress = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %10, i32 0, i32 18
  %11 = load i32, i32* %control_compress, align 4
  %call4 = call double @gimp_gradient_segment_range_move(%struct._GimpGradient* %6, %struct._GimpGradientSegment* %7, %struct._GimpGradientSegment* %8, double %9, i32 %11)
  ret double %call4
}

declare void @gimp_gradient_segment_range_compress(%struct._GimpGradient*, %struct._GimpGradientSegment*, %struct._GimpGradientSegment*, double, double) #1

declare double @gimp_gradient_segment_range_move(%struct._GimpGradient*, %struct._GimpGradientSegment*, %struct._GimpGradientSegment*, double, i32) #1

declare %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable*) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @control_draw(%struct._GimpGradientEditor* %editor, %struct._GimpGradient* %gradient, %struct._cairo* %cr, i32 %width, i32 %height, double %left, double %right) #3 {
entry:
  %editor.addr = alloca %struct._GimpGradientEditor*, align 8
  %gradient.addr = alloca %struct._GimpGradient*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %left.addr = alloca double, align 8
  %right.addr = alloca double, align 8
  %control_style = alloca %struct._GtkStyle*, align 8
  %seg = alloca %struct._GimpGradientSegment*, align 8
  %handle = alloca i32, align 4
  %sel_l = alloca i32, align 4
  %sel_r = alloca i32, align 4
  %g_pos = alloca double, align 8
  %selected = alloca i32, align 4
  store %struct._GimpGradientEditor* %editor, %struct._GimpGradientEditor** %editor.addr, align 8
  store %struct._GimpGradient* %gradient, %struct._GimpGradient** %gradient.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store double %left, double* %left.addr, align 8
  store double %right, double* %right.addr, align 8
  %0 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %tobool = icmp ne %struct._GimpGradient* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %sw.epilog

if.end:                                           ; preds = %entry
  %1 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %1, i32 0, i32 7
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %control, align 8
  %call = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %2)
  store %struct._GtkStyle* %call, %struct._GtkStyle** %control_style, align 8
  %3 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %4 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_sel_l = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %4, i32 0, i32 14
  %5 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l, align 8
  %left1 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %5, i32 0, i32 0
  %6 = load double, double* %left1, align 8
  %call2 = call i32 @control_calc_p_pos(%struct._GimpGradientEditor* %3, double %6)
  store i32 %call2, i32* %sel_l, align 4
  %7 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %8 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_sel_r = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %8, i32 0, i32 15
  %9 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_r, align 8
  %right3 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %9, i32 0, i32 2
  %10 = load double, double* %right3, align 8
  %call4 = call i32 @control_calc_p_pos(%struct._GimpGradientEditor* %7, double %10)
  store i32 %call4, i32* %sel_r, align 4
  %11 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %12 = load %struct._GtkStyle*, %struct._GtkStyle** %control_style, align 8
  %base = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %12, i32 0, i32 7
  %arrayidx = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %base, i32 0, i64 0
  call void @gdk_cairo_set_source_color(%struct._cairo* %11, %struct._GdkColor* %arrayidx)
  %13 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %14 = load i32, i32* %width.addr, align 4
  %conv = sitofp i32 %14 to double
  %15 = load i32, i32* %height.addr, align 4
  %conv5 = sitofp i32 %15 to double
  call void @cairo_rectangle(%struct._cairo* %13, double 0.000000e+00, double 0.000000e+00, double %conv, double %conv5)
  %16 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_fill(%struct._cairo* %16)
  %17 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %18 = load %struct._GtkStyle*, %struct._GtkStyle** %control_style, align 8
  %base6 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %18, i32 0, i32 7
  %arrayidx7 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %base6, i32 0, i64 3
  call void @gdk_cairo_set_source_color(%struct._cairo* %17, %struct._GdkColor* %arrayidx7)
  %19 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %20 = load i32, i32* %sel_l, align 4
  %conv8 = sitofp i32 %20 to double
  %21 = load i32, i32* %sel_r, align 4
  %22 = load i32, i32* %sel_l, align 4
  %sub = sub nsw i32 %21, %22
  %add = add nsw i32 %sub, 1
  %conv9 = sitofp i32 %add to double
  %23 = load i32, i32* %height.addr, align 4
  %conv10 = sitofp i32 %23 to double
  call void @cairo_rectangle(%struct._cairo* %19, double %conv8, double 0.000000e+00, double %conv9, double %conv10)
  %24 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_fill(%struct._cairo* %24)
  store i32 0, i32* %selected, align 4
  %25 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %segments = getelementptr inbounds %struct._GimpGradient, %struct._GimpGradient* %25, i32 0, i32 1
  %26 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segments, align 8
  store %struct._GimpGradientSegment* %26, %struct._GimpGradientSegment** %seg, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %27 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %tobool11 = icmp ne %struct._GimpGradientSegment* %27, null
  br i1 %tobool11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %29 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_sel_l12 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %29, i32 0, i32 14
  %30 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l12, align 8
  %cmp = icmp eq %struct._GimpGradientSegment* %28, %30
  br i1 %cmp, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %for.body
  store i32 1, i32* %selected, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %for.body
  %31 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %32 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %33 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left16 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %33, i32 0, i32 0
  %34 = load double, double* %left16, align 8
  %35 = load i32, i32* %height.addr, align 4
  %36 = load i32, i32* %selected, align 4
  call void @control_draw_normal_handle(%struct._GimpGradientEditor* %31, %struct._cairo* %32, double %34, i32 %35, i32 %36)
  %37 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %38 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %39 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %middle = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %39, i32 0, i32 1
  %40 = load double, double* %middle, align 8
  %41 = load i32, i32* %height.addr, align 4
  %42 = load i32, i32* %selected, align 4
  call void @control_draw_middle_handle(%struct._GimpGradientEditor* %37, %struct._cairo* %38, double %40, i32 %41, i32 %42)
  %43 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %next = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %43, i32 0, i32 10
  %44 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next, align 8
  %cmp17 = icmp eq %struct._GimpGradientSegment* %44, null
  br i1 %cmp17, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.end.15
  %45 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %46 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %47 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right20 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %47, i32 0, i32 2
  %48 = load double, double* %right20, align 8
  %49 = load i32, i32* %height.addr, align 4
  %50 = load i32, i32* %selected, align 4
  call void @control_draw_normal_handle(%struct._GimpGradientEditor* %45, %struct._cairo* %46, double %48, i32 %49, i32 %50)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.end.15
  %51 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %52 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_sel_r22 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %52, i32 0, i32 15
  %53 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_r22, align 8
  %cmp23 = icmp eq %struct._GimpGradientSegment* %51, %53
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.21
  store i32 0, i32* %selected, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.end.21
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %54 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %next27 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %54, i32 0, i32 10
  %55 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next27, align 8
  store %struct._GimpGradientSegment* %55, %struct._GimpGradientSegment** %seg, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %56 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %57 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_last_x = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %57, i32 0, i32 19
  %58 = load i32, i32* %control_last_x, align 4
  %call28 = call double @control_calc_g_pos(%struct._GimpGradientEditor* %56, i32 %58)
  store double %call28, double* %g_pos, align 8
  %59 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %60 = load double, double* %g_pos, align 8
  %cmp29 = fcmp ogt double %60, 1.000000e+00
  br i1 %cmp29, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  br label %cond.end.35

cond.false:                                       ; preds = %for.end
  %61 = load double, double* %g_pos, align 8
  %cmp31 = fcmp olt double %61, 0.000000e+00
  br i1 %cmp31, label %cond.true.33, label %cond.false.34

cond.true.33:                                     ; preds = %cond.false
  br label %cond.end

cond.false.34:                                    ; preds = %cond.false
  %62 = load double, double* %g_pos, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.34, %cond.true.33
  %cond = phi double [ 0.000000e+00, %cond.true.33 ], [ %62, %cond.false.34 ]
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.end, %cond.true
  %cond36 = phi double [ 1.000000e+00, %cond.true ], [ %cond, %cond.end ]
  call void @seg_get_closest_handle(%struct._GimpGradient* %59, double %cond36, %struct._GimpGradientSegment** %seg, i32* %handle)
  %63 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %tobool37 = icmp ne %struct._GimpGradientSegment* %63, null
  br i1 %tobool37, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.end.35
  %64 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %65 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %66 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_sel_l38 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %66, i32 0, i32 14
  %67 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l38, align 8
  %68 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_sel_r39 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %68, i32 0, i32 15
  %69 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_r39, align 8
  %call40 = call i32 @seg_in_selection(%struct._GimpGradient* %64, %struct._GimpGradientSegment* %65, %struct._GimpGradientSegment* %67, %struct._GimpGradientSegment* %69)
  %tobool41 = icmp ne i32 %call40, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end.35
  %70 = phi i1 [ false, %cond.end.35 ], [ %tobool41, %land.rhs ]
  %land.ext = zext i1 %70 to i32
  store i32 %land.ext, i32* %selected, align 4
  %71 = load i32, i32* %handle, align 4
  switch i32 %71, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.52
  ]

sw.bb:                                            ; preds = %land.end
  %72 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %tobool42 = icmp ne %struct._GimpGradientSegment* %72, null
  br i1 %tobool42, label %if.then.43, label %if.else

if.then.43:                                       ; preds = %sw.bb
  %73 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %74 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %75 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left44 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %75, i32 0, i32 0
  %76 = load double, double* %left44, align 8
  %77 = load i32, i32* %height.addr, align 4
  %78 = load i32, i32* %selected, align 4
  call void @control_draw_normal_handle(%struct._GimpGradientEditor* %73, %struct._cairo* %74, double %76, i32 %77, i32 %78)
  br label %if.end.51

if.else:                                          ; preds = %sw.bb
  %79 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %segments45 = getelementptr inbounds %struct._GimpGradient, %struct._GimpGradient* %79, i32 0, i32 1
  %80 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segments45, align 8
  %call46 = call %struct._GimpGradientSegment* @gimp_gradient_segment_get_last(%struct._GimpGradientSegment* %80)
  store %struct._GimpGradientSegment* %call46, %struct._GimpGradientSegment** %seg, align 8
  %81 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %82 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control_sel_r47 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %82, i32 0, i32 15
  %83 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_r47, align 8
  %cmp48 = icmp eq %struct._GimpGradientSegment* %81, %83
  %conv49 = zext i1 %cmp48 to i32
  store i32 %conv49, i32* %selected, align 4
  %84 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %85 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %86 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right50 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %86, i32 0, i32 2
  %87 = load double, double* %right50, align 8
  %88 = load i32, i32* %height.addr, align 4
  %89 = load i32, i32* %selected, align 4
  call void @control_draw_normal_handle(%struct._GimpGradientEditor* %84, %struct._cairo* %85, double %87, i32 %88, i32 %89)
  br label %if.end.51

if.end.51:                                        ; preds = %if.else, %if.then.43
  br label %sw.epilog

sw.bb.52:                                         ; preds = %land.end
  %90 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %91 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %92 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %middle53 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %92, i32 0, i32 1
  %93 = load double, double* %middle53, align 8
  %94 = load i32, i32* %height.addr, align 4
  %95 = load i32, i32* %selected, align 4
  call void @control_draw_middle_handle(%struct._GimpGradientEditor* %90, %struct._cairo* %91, double %93, i32 %94, i32 %95)
  br label %sw.epilog

sw.default:                                       ; preds = %land.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.default, %sw.bb.52, %if.end.51
  ret void
}

declare void @cairo_destroy(%struct._cairo*) #1

declare %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget*) #1

declare void @gdk_cairo_set_source_color(%struct._cairo*, %struct._GdkColor*) #1

declare void @cairo_rectangle(%struct._cairo*, double, double, double, double) #1

declare void @cairo_fill(%struct._cairo*) #1

; Function Attrs: nounwind uwtable
define internal void @control_draw_normal_handle(%struct._GimpGradientEditor* %editor, %struct._cairo* %cr, double %pos, i32 %height, i32 %selected) #3 {
entry:
  %editor.addr = alloca %struct._GimpGradientEditor*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %pos.addr = alloca double, align 8
  %height.addr = alloca i32, align 4
  %selected.addr = alloca i32, align 4
  %style = alloca %struct._GtkStyle*, align 8
  %state = alloca i32, align 4
  store %struct._GimpGradientEditor* %editor, %struct._GimpGradientEditor** %editor.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store double %pos, double* %pos.addr, align 8
  store i32 %height, i32* %height.addr, align 4
  store i32 %selected, i32* %selected.addr, align 4
  %0 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %0, i32 0, i32 7
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %control, align 8
  %call = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %1)
  store %struct._GtkStyle* %call, %struct._GtkStyle** %style, align 8
  %2 = load i32, i32* %selected.addr, align 4
  %tobool = icmp ne i32 %2, 0
  %cond = select i1 %tobool, i32 3, i32 0
  store i32 %cond, i32* %state, align 4
  %3 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %4 = load i32, i32* %state, align 4
  %idxprom = zext i32 %4 to i64
  %5 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %text_aa = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %5, i32 0, i32 8
  %arrayidx = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %text_aa, i32 0, i64 %idxprom
  %6 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %black = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %6, i32 0, i32 9
  %7 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %8 = load double, double* %pos.addr, align 8
  %call1 = call i32 @control_calc_p_pos(%struct._GimpGradientEditor* %7, double %8)
  %9 = load i32, i32* %height.addr, align 4
  call void @control_draw_handle(%struct._cairo* %3, %struct._GdkColor* %arrayidx, %struct._GdkColor* %black, i32 %call1, i32 %9)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @control_draw_middle_handle(%struct._GimpGradientEditor* %editor, %struct._cairo* %cr, double %pos, i32 %height, i32 %selected) #3 {
entry:
  %editor.addr = alloca %struct._GimpGradientEditor*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %pos.addr = alloca double, align 8
  %height.addr = alloca i32, align 4
  %selected.addr = alloca i32, align 4
  %style = alloca %struct._GtkStyle*, align 8
  %state = alloca i32, align 4
  store %struct._GimpGradientEditor* %editor, %struct._GimpGradientEditor** %editor.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store double %pos, double* %pos.addr, align 8
  store i32 %height, i32* %height.addr, align 4
  store i32 %selected, i32* %selected.addr, align 4
  %0 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %control = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %0, i32 0, i32 7
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %control, align 8
  %call = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %1)
  store %struct._GtkStyle* %call, %struct._GtkStyle** %style, align 8
  %2 = load i32, i32* %selected.addr, align 4
  %tobool = icmp ne i32 %2, 0
  %cond = select i1 %tobool, i32 3, i32 0
  store i32 %cond, i32* %state, align 4
  %3 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %4 = load i32, i32* %state, align 4
  %idxprom = zext i32 %4 to i64
  %5 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %text_aa = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %5, i32 0, i32 8
  %arrayidx = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %text_aa, i32 0, i64 %idxprom
  %6 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %white = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %6, i32 0, i32 10
  %7 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor.addr, align 8
  %8 = load double, double* %pos.addr, align 8
  %call1 = call i32 @control_calc_p_pos(%struct._GimpGradientEditor* %7, double %8)
  %9 = load i32, i32* %height.addr, align 4
  call void @control_draw_handle(%struct._cairo* %3, %struct._GdkColor* %arrayidx, %struct._GdkColor* %white, i32 %call1, i32 %9)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @seg_in_selection(%struct._GimpGradient* %grad, %struct._GimpGradientSegment* %seg, %struct._GimpGradientSegment* %left, %struct._GimpGradientSegment* %right) #3 {
entry:
  %retval = alloca i32, align 4
  %grad.addr = alloca %struct._GimpGradient*, align 8
  %seg.addr = alloca %struct._GimpGradientSegment*, align 8
  %left.addr = alloca %struct._GimpGradientSegment*, align 8
  %right.addr = alloca %struct._GimpGradientSegment*, align 8
  %s = alloca %struct._GimpGradientSegment*, align 8
  store %struct._GimpGradient* %grad, %struct._GimpGradient** %grad.addr, align 8
  store %struct._GimpGradientSegment* %seg, %struct._GimpGradientSegment** %seg.addr, align 8
  store %struct._GimpGradientSegment* %left, %struct._GimpGradientSegment** %left.addr, align 8
  store %struct._GimpGradientSegment* %right, %struct._GimpGradientSegment** %right.addr, align 8
  %0 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %left.addr, align 8
  store %struct._GimpGradientSegment* %0, %struct._GimpGradientSegment** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %s, align 8
  %tobool = icmp ne %struct._GimpGradientSegment* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %s, align 8
  %3 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %cmp = icmp eq %struct._GimpGradientSegment* %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  %4 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %s, align 8
  %5 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %right.addr, align 8
  %cmp1 = icmp eq %struct._GimpGradientSegment* %4, %5
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  br label %for.end

if.end.3:                                         ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.3
  %6 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %s, align 8
  %next = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %6, i32 0, i32 10
  %7 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next, align 8
  store %struct._GimpGradientSegment* %7, %struct._GimpGradientSegment** %s, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.2, %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal void @control_draw_handle(%struct._cairo* %cr, %struct._GdkColor* %border, %struct._GdkColor* %fill, i32 %xpos, i32 %height) #3 {
entry:
  %cr.addr = alloca %struct._cairo*, align 8
  %border.addr = alloca %struct._GdkColor*, align 8
  %fill.addr = alloca %struct._GdkColor*, align 8
  %xpos.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store %struct._GdkColor* %border, %struct._GdkColor** %border.addr, align 8
  store %struct._GdkColor* %fill, %struct._GdkColor** %fill.addr, align 8
  store i32 %xpos, i32* %xpos.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %1 = load i32, i32* %xpos.addr, align 4
  %conv = sitofp i32 %1 to double
  call void @cairo_move_to(%struct._cairo* %0, double %conv, double 0.000000e+00)
  %2 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %3 = load i32, i32* %xpos.addr, align 4
  %conv1 = sitofp i32 %3 to double
  %4 = load i32, i32* %height.addr, align 4
  %conv2 = sitofp i32 %4 to double
  %div = fdiv double %conv2, 2.000000e+00
  %sub = fsub double %conv1, %div
  %5 = load i32, i32* %height.addr, align 4
  %conv3 = sitofp i32 %5 to double
  call void @cairo_line_to(%struct._cairo* %2, double %sub, double %conv3)
  %6 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %7 = load i32, i32* %xpos.addr, align 4
  %conv4 = sitofp i32 %7 to double
  %8 = load i32, i32* %height.addr, align 4
  %conv5 = sitofp i32 %8 to double
  %div6 = fdiv double %conv5, 2.000000e+00
  %add = fadd double %conv4, %div6
  %9 = load i32, i32* %height.addr, align 4
  %conv7 = sitofp i32 %9 to double
  call void @cairo_line_to(%struct._cairo* %6, double %add, double %conv7)
  %10 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %11 = load i32, i32* %xpos.addr, align 4
  %conv8 = sitofp i32 %11 to double
  call void @cairo_line_to(%struct._cairo* %10, double %conv8, double 0.000000e+00)
  %12 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %13 = load %struct._GdkColor*, %struct._GdkColor** %fill.addr, align 8
  call void @gdk_cairo_set_source_color(%struct._cairo* %12, %struct._GdkColor* %13)
  %14 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_fill_preserve(%struct._cairo* %14)
  %15 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %16 = load %struct._GdkColor*, %struct._GdkColor** %border.addr, align 8
  call void @gdk_cairo_set_source_color(%struct._cairo* %15, %struct._GdkColor* %16)
  %17 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_set_line_width(%struct._cairo* %17, double 1.000000e+00)
  %18 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_stroke(%struct._cairo* %18)
  ret void
}

declare void @cairo_move_to(%struct._cairo*, double, double) #1

declare void @cairo_line_to(%struct._cairo*, double, double) #1

declare void @cairo_fill_preserve(%struct._cairo*) #1

declare void @cairo_set_line_width(%struct._cairo*, double) #1

declare void @cairo_stroke(%struct._cairo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_view_renderer_gradient_get_type() #2

declare void @gimp_view_renderer_gradient_set_offsets(%struct._GimpViewRendererGradient*, double, double) #1

declare void @gimp_view_renderer_update(%struct._GimpViewRenderer*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_view_renderer_get_type() #2

declare void @gtk_widget_queue_draw(%struct._GtkWidget*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
