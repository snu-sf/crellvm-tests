; ModuleID = './app/widgets/gimpthumbbox.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpThumbBoxClass = type { %struct._GtkFrameClass }
%struct._GtkFrameClass = type { %struct._GtkBinClass, void (%struct._GtkFrame*, %struct._GdkRectangle*)* }
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
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GimpThumbBox = type { %struct._GtkFrame, %struct._GimpContext*, %struct._GimpImagefile*, %struct._GSList*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i32, %struct._GtkWidget*, i32 }
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
%struct._GimpPlugInManager = type { %struct._GimpObject, %struct._Gimp*, %struct._GSList*, i32, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GimpPlugIn*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GimpPlugInShm*, %struct._GimpInterpreterDB*, %struct._GimpEnvironTable*, %struct._GimpPlugInDebug*, %struct._GList* }
%struct._GimpPlugIn = type opaque
%struct._GimpPlugInShm = type opaque
%struct._GimpInterpreterDB = type opaque
%struct._GimpEnvironTable = type opaque
%struct._GimpPlugInDebug = type opaque
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
%struct._GimpTemplate = type opaque
%struct._GimpImagefile = type { %struct._GimpViewable }
%struct._GimpProgressInterface = type { %struct._GTypeInterface, %struct._GimpProgress* (%struct._GimpProgress*, i8*, i32)*, void (%struct._GimpProgress*)*, i32 (%struct._GimpProgress*)*, void (%struct._GimpProgress*, i8*)*, void (%struct._GimpProgress*, double)*, double (%struct._GimpProgress*)*, void (%struct._GimpProgress*)*, i32 (%struct._GimpProgress*)*, i32 (%struct._GimpProgress*, %struct._Gimp*, i32, i8*, i8*)*, void (%struct._GimpProgress*)* }
%struct._GTypeInterface = type { i64, i64 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._GimpThumbnail = type { %struct._GObject, i32, i8*, i8*, i64, i64, i32, i32, i32, i8*, i32, i32, i32, i8*, i64, i64, i8*, i8* }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GtkLabelSelectionInfo = type opaque
%struct._GtkProgressBar = type { %struct._GtkProgress, i32, i32, i32, i32, i32, i32, i32, double, i8 }
%struct._GtkProgress = type { %struct._GtkWidget, %struct._GtkAdjustment*, %struct._GdkDrawable*, i8*, float, float, i8 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GimpFileDialog = type { %struct._GtkFileChooserDialog, %struct._GimpPlugInProcedure*, %struct._GimpImage*, i32, i32, i32, i32, %struct._GimpObject*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i32, i32 }
%struct._GtkFileChooserDialog = type { %struct._GtkDialog, %struct._GtkFileChooserDialogPrivate* }
%struct._GtkFileChooserDialogPrivate = type opaque
%struct._GimpPlugInProcedure = type opaque
%struct._GimpSubProgress = type { %struct._GObject, %struct._GimpProgress*, double, double }

@gimp_thumb_box_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"GimpThumbBox\00", align 1
@gimp_thumb_box_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpProgressInterface*)* @gimp_thumb_box_progress_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_thumb_box_new = private unnamed_addr constant [19 x i8] c"gimp_thumb_box_new\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"button-press-event\00", align 1
@.str.4 = private unnamed_addr constant [79 x i8] c"Click to update preview\0A%s-Click to force update even if preview is up-to-date\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Pr_eview\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"button-release-event\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"enter-notify-event\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"leave-notify-event\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"info-changed\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"notify::thumb-state\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"No selection\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c" \0A \0A \0A \00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"Fog\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__func__.gimp_thumb_box_take_uri = private unnamed_addr constant [24 x i8] c"gimp_thumb_box_take_uri\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"GIMP_IS_THUMB_BOX (box)\00", align 1
@__func__.gimp_thumb_box_take_uris = private unnamed_addr constant [25 x i8] c"gimp_thumb_box_take_uris\00", align 1
@gimp_thumb_box_parent_class = internal global i8* null, align 8
@GimpThumbBox_private_offset = internal global i32 0, align 4
@.str.17 = private unnamed_addr constant [19 x i8] c"Thumbnail %d of %d\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"size-allocate\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"this too\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"%s\0A%s\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"Creating preview...\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_thumb_box_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_thumb_box_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_thumb_box_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_frame_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 832, void (i8*, i8*)* bitcast (void (i8*)* @gimp_thumb_box_class_intern_init to void (i8*, i8*)*), i32 232, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpThumbBox*)* @gimp_thumb_box_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_progress_interface_get_type() #6
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_thumb_box_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_thumb_box_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_thumb_box_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_thumb_box_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_thumb_box_parent_class, align 8
  %1 = load i32, i32* @GimpThumbBox_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpThumbBox_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpThumbBoxClass*
  call void @gimp_thumb_box_class_init(%struct._GimpThumbBoxClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_thumb_box_init(%struct._GimpThumbBox* %box) #3 {
entry:
  %box.addr = alloca %struct._GimpThumbBox*, align 8
  store %struct._GimpThumbBox* %box, %struct._GimpThumbBox** %box.addr, align 8
  %0 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box.addr, align 8
  %1 = bitcast %struct._GimpThumbBox* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_frame_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %2, i32 1)
  %3 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box.addr, align 8
  %idle_id = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %3, i32 0, i32 9
  store i32 0, i32* %idle_id, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_thumb_box_progress_iface_init(%struct._GimpProgressInterface* %iface) #3 {
entry:
  %iface.addr = alloca %struct._GimpProgressInterface*, align 8
  store %struct._GimpProgressInterface* %iface, %struct._GimpProgressInterface** %iface.addr, align 8
  %0 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %start = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %0, i32 0, i32 1
  store %struct._GimpProgress* (%struct._GimpProgress*, i8*, i32)* @gimp_thumb_box_progress_start, %struct._GimpProgress* (%struct._GimpProgress*, i8*, i32)** %start, align 8
  %1 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %end = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %1, i32 0, i32 2
  store void (%struct._GimpProgress*)* @gimp_thumb_box_progress_end, void (%struct._GimpProgress*)** %end, align 8
  %2 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %is_active = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %2, i32 0, i32 3
  store i32 (%struct._GimpProgress*)* @gimp_thumb_box_progress_is_active, i32 (%struct._GimpProgress*)** %is_active, align 8
  %3 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %set_value = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %3, i32 0, i32 5
  store void (%struct._GimpProgress*, double)* @gimp_thumb_box_progress_set_value, void (%struct._GimpProgress*, double)** %set_value, align 8
  %4 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %get_value = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %4, i32 0, i32 6
  store double (%struct._GimpProgress*)* @gimp_thumb_box_progress_get_value, double (%struct._GimpProgress*)** %get_value, align 8
  %5 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %pulse = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %5, i32 0, i32 7
  store void (%struct._GimpProgress*)* @gimp_thumb_box_progress_pulse, void (%struct._GimpProgress*)** %pulse, align 8
  %6 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %message = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %6, i32 0, i32 9
  store i32 (%struct._GimpProgress*, %struct._Gimp*, i32, i8*, i8*)* @gimp_thumb_box_progress_message, i32 (%struct._GimpProgress*, %struct._Gimp*, i32, i8*, i8*)** %message, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_progress_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_thumb_box_new(%struct._GimpContext* %context) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %box = alloca %struct._GimpThumbBox*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %vbox2 = alloca %struct._GtkWidget*, align 8
  %ebox = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %str = alloca i8*, align 8
  %h = alloca i32, align 4
  %v = alloca i32, align 4
  %info_requisition = alloca %struct._GtkRequisition, align 4
  %progress_requisition = alloca %struct._GtkRequisition, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_thumb_box_new, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_thumb_box_get_type() #6
  %call12 = call i8* (i64, i8*, ...) @g_object_new(i64 %call11, i8* null)
  %13 = bitcast i8* %call12 to %struct._GimpThumbBox*
  store %struct._GimpThumbBox* %13, %struct._GimpThumbBox** %box, align 8
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %15 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box, align 8
  %context13 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %15, i32 0, i32 1
  store %struct._GimpContext* %14, %struct._GimpContext** %context13, align 8
  %call14 = call %struct._GtkWidget* @gtk_event_box_new()
  store %struct._GtkWidget* %call14, %struct._GtkWidget** %ebox, align 8
  %16 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box, align 8
  %17 = bitcast %struct._GimpThumbBox* %16 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_container_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call15)
  %18 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkContainer*
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %ebox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %18, %struct._GtkWidget* %19)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %ebox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %20)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %ebox, align 8
  %22 = bitcast %struct._GtkWidget* %21 to i8*
  %23 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box, align 8
  %24 = bitcast %struct._GimpThumbBox* %23 to i8*
  %call17 = call i64 @g_signal_connect_data(i8* %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventButton*, %struct._GimpThumbBox*)* @gimp_thumb_box_ebox_button_press to void ()*), i8* %24, void (i8*, %struct._GClosure*)* null, i32 0)
  %call18 = call i8* @gettext(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.4, i32 0, i32 0)) #8
  %call19 = call i32 @gimp_get_toggle_behavior_mask()
  %call20 = call i8* @gimp_get_mod_string(i32 %call19)
  %call21 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call18, i8* %call20)
  store i8* %call21, i8** %str, align 8
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %ebox, align 8
  %26 = load i8*, i8** %str, align 8
  call void @gimp_help_set_help_data(%struct._GtkWidget* %25, i8* %26, i8* null)
  %27 = load i8*, i8** %str, align 8
  call void @g_free(i8* %27)
  %call22 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 0)
  store %struct._GtkWidget* %call22, %struct._GtkWidget** %vbox, align 8
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %ebox, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_container_get_type() #6
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call23)
  %30 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkContainer*
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %30, %struct._GtkWidget* %31)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %32)
  %call25 = call %struct._GtkWidget* @gtk_button_new()
  store %struct._GtkWidget* %call25, %struct._GtkWidget** %button, align 8
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_box_get_type() #6
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call26)
  %35 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkBox*
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %35, %struct._GtkWidget* %36, i32 0, i32 0, i32 0)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %37)
  %call28 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0)) #8
  %call29 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call28)
  store %struct._GtkWidget* %call29, %struct._GtkWidget** %label, align 8
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_misc_get_type() #6
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call30)
  %40 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %40, float 0.000000e+00, float 5.000000e-01)
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_container_get_type() #6
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call32)
  %43 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkContainer*
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_container_add(%struct._GtkContainer* %43, %struct._GtkWidget* %44)
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %45)
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %47 = bitcast %struct._GtkWidget* %46 to i8*
  %call34 = call i64 @g_signal_connect_data(i8* %47, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), void ()* bitcast (i32 ()* @gtk_true to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %49 = bitcast %struct._GtkWidget* %48 to i8*
  %call35 = call i64 @g_signal_connect_data(i8* %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (i32 ()* @gtk_true to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %51 = bitcast %struct._GtkWidget* %50 to i8*
  %call36 = call i64 @g_signal_connect_data(i8* %51, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (i32 ()* @gtk_true to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %53 = bitcast %struct._GtkWidget* %52 to i8*
  %call37 = call i64 @g_signal_connect_data(i8* %53, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0), void ()* bitcast (i32 ()* @gtk_true to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %call38 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call38, %struct._GtkWidget** %vbox2, align 8
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %55 = bitcast %struct._GtkWidget* %54 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_container_get_type() #6
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call39)
  %56 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %56, i32 2)
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %58 = bitcast %struct._GtkWidget* %57 to %struct._GTypeInstance*
  %call41 = call i64 @gtk_box_get_type() #6
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call41)
  %59 = bitcast %struct._GTypeInstance* %call42 to %struct._GtkBox*
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %59, %struct._GtkWidget* %60, i32 1, i32 1, i32 0)
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %61)
  %call43 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 0)
  store %struct._GtkWidget* %call43, %struct._GtkWidget** %hbox, align 8
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %63 = bitcast %struct._GtkWidget* %62 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_box_get_type() #6
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call44)
  %64 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkBox*
  call void @gtk_box_set_homogeneous(%struct._GtkBox* %64, i32 1)
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %66 = bitcast %struct._GtkWidget* %65 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_box_get_type() #6
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call46)
  %67 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkBox*
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %67, %struct._GtkWidget* %68, i32 0, i32 0, i32 0)
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %69)
  %70 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %70, i32 0, i32 1
  %71 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call48 = call %struct._GimpImagefile* @gimp_imagefile_new(%struct._Gimp* %71, i8* null)
  %72 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box, align 8
  %imagefile = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %72, i32 0, i32 2
  store %struct._GimpImagefile* %call48, %struct._GimpImagefile** %imagefile, align 8
  %73 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box, align 8
  %imagefile49 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %73, i32 0, i32 2
  %74 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile49, align 8
  %75 = bitcast %struct._GimpImagefile* %74 to i8*
  %76 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box, align 8
  %77 = bitcast %struct._GimpThumbBox* %76 to i8*
  %call50 = call i64 @g_signal_connect_data(i8* %75, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImagefile*, %struct._GimpThumbBox*)* @gimp_thumb_box_imagefile_info_changed to void ()*), i8* %77, void (i8*, %struct._GClosure*)* null, i32 0)
  %78 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box, align 8
  %imagefile51 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %78, i32 0, i32 2
  %79 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile51, align 8
  %call52 = call %struct._GimpThumbnail* @gimp_imagefile_get_thumbnail(%struct._GimpImagefile* %79)
  %80 = bitcast %struct._GimpThumbnail* %call52 to i8*
  %81 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box, align 8
  %82 = bitcast %struct._GimpThumbBox* %81 to i8*
  %call53 = call i64 @g_signal_connect_data(i8* %80, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), void ()* bitcast (void (%struct._GimpThumbnail*, %struct._GParamSpec*, %struct._GimpThumbBox*)* @gimp_thumb_box_thumb_state_notify to void ()*), i8* %82, void (i8*, %struct._GClosure*)* null, i32 0)
  call void @gimp_view_renderer_get_frame_size(i32* %h, i32* %v)
  %83 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %84 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box, align 8
  %imagefile54 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %84, i32 0, i32 2
  %85 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile54, align 8
  %86 = bitcast %struct._GimpImagefile* %85 to %struct._GTypeInstance*
  %call55 = call i64 @gimp_viewable_get_type() #6
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %86, i64 %call55)
  %87 = bitcast %struct._GTypeInstance* %call56 to %struct._GimpViewable*
  %88 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp57 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %88, i32 0, i32 1
  %89 = load %struct._Gimp*, %struct._Gimp** %gimp57, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %89, i32 0, i32 1
  %90 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %thumbnail_size = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %90, i32 0, i32 44
  %91 = load i32, i32* %thumbnail_size, align 4
  %92 = load i32, i32* %h, align 4
  %93 = load i32, i32* %v, align 4
  %cmp58 = icmp sgt i32 %92, %93
  br i1 %cmp58, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %94 = load i32, i32* %h, align 4
  br label %cond.end

cond.false:                                       ; preds = %do.end
  %95 = load i32, i32* %v, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %94, %cond.true ], [ %95, %cond.false ]
  %add = add i32 %91, %cond
  %call59 = call %struct._GtkWidget* @gimp_view_new(%struct._GimpContext* %83, %struct._GimpViewable* %87, i32 %add, i32 0, i32 0)
  %96 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box, align 8
  %preview = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %96, i32 0, i32 4
  store %struct._GtkWidget* %call59, %struct._GtkWidget** %preview, align 8
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %98 = bitcast %struct._GtkWidget* %97 to %struct._GTypeInstance*
  %call60 = call i64 @gtk_box_get_type() #6
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %98, i64 %call60)
  %99 = bitcast %struct._GTypeInstance* %call61 to %struct._GtkBox*
  %100 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box, align 8
  %preview62 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %100, i32 0, i32 4
  %101 = load %struct._GtkWidget*, %struct._GtkWidget** %preview62, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %99, %struct._GtkWidget* %101, i32 1, i32 0, i32 2)
  %102 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box, align 8
  %preview63 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %102, i32 0, i32 4
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %preview63, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %103)
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %105 = bitcast %struct._GtkWidget* %104 to %struct._GTypeInstance*
  %call64 = call i64 @gtk_label_get_type() #6
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %105, i64 %call64)
  %106 = bitcast %struct._GTypeInstance* %call65 to %struct._GtkLabel*
  %107 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box, align 8
  %preview66 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %107, i32 0, i32 4
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %preview66, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %106, %struct._GtkWidget* %108)
  %109 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box, align 8
  %preview67 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %109, i32 0, i32 4
  %110 = load %struct._GtkWidget*, %struct._GtkWidget** %preview67, align 8
  %111 = bitcast %struct._GtkWidget* %110 to i8*
  %112 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box, align 8
  %113 = bitcast %struct._GimpThumbBox* %112 to i8*
  %call68 = call i64 @g_signal_connect_data(i8* %111, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct._GimpThumbBox*)* @gimp_thumb_box_thumbnail_clicked to void ()*), i8* %113, void (i8*, %struct._GClosure*)* null, i32 0)
  %call69 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0)) #8
  %call70 = call %struct._GtkWidget* @gtk_label_new(i8* %call69)
  %114 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box, align 8
  %filename = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %114, i32 0, i32 5
  store %struct._GtkWidget* %call70, %struct._GtkWidget** %filename, align 8
  %115 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box, align 8
  %filename71 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %115, i32 0, i32 5
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %filename71, align 8
  %117 = bitcast %struct._GtkWidget* %116 to %struct._GTypeInstance*
  %call72 = call i64 @gtk_label_get_type() #6
  %call73 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %117, i64 %call72)
  %118 = bitcast %struct._GTypeInstance* %call73 to %struct._GtkLabel*
  call void @gtk_label_set_ellipsize(%struct._GtkLabel* %118, i32 2)
  %119 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box, align 8
  %filename74 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %119, i32 0, i32 5
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %filename74, align 8
  %121 = bitcast %struct._GtkWidget* %120 to %struct._GTypeInstance*
  %call75 = call i64 @gtk_label_get_type() #6
  %call76 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %121, i64 %call75)
  %122 = bitcast %struct._GTypeInstance* %call76 to %struct._GtkLabel*
  call void @gtk_label_set_justify(%struct._GtkLabel* %122, i32 2)
  %123 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box, align 8
  %filename77 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %123, i32 0, i32 5
  %124 = load %struct._GtkWidget*, %struct._GtkWidget** %filename77, align 8
  %125 = bitcast %struct._GtkWidget* %124 to %struct._GTypeInstance*
  %call78 = call i64 @gtk_label_get_type() #6
  %call79 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %125, i64 %call78)
  %126 = bitcast %struct._GTypeInstance* %call79 to %struct._GtkLabel*
  call void (%struct._GtkLabel*, ...) @gimp_label_set_attributes(%struct._GtkLabel* %126, i32 3, i32 1, i32 -1)
  %127 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %128 = bitcast %struct._GtkWidget* %127 to %struct._GTypeInstance*
  %call80 = call i64 @gtk_box_get_type() #6
  %call81 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %128, i64 %call80)
  %129 = bitcast %struct._GTypeInstance* %call81 to %struct._GtkBox*
  %130 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box, align 8
  %filename82 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %130, i32 0, i32 5
  %131 = load %struct._GtkWidget*, %struct._GtkWidget** %filename82, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %129, %struct._GtkWidget* %131, i32 0, i32 0, i32 0)
  %132 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box, align 8
  %filename83 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %132, i32 0, i32 5
  %133 = load %struct._GtkWidget*, %struct._GtkWidget** %filename83, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %133)
  %call84 = call %struct._GtkWidget* @gtk_label_new(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0))
  %134 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box, align 8
  %info = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %134, i32 0, i32 6
  store %struct._GtkWidget* %call84, %struct._GtkWidget** %info, align 8
  %135 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box, align 8
  %info85 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %135, i32 0, i32 6
  %136 = load %struct._GtkWidget*, %struct._GtkWidget** %info85, align 8
  %137 = bitcast %struct._GtkWidget* %136 to %struct._GTypeInstance*
  %call86 = call i64 @gtk_misc_get_type() #6
  %call87 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %137, i64 %call86)
  %138 = bitcast %struct._GTypeInstance* %call87 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %138, float 5.000000e-01, float 0.000000e+00)
  %139 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box, align 8
  %info88 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %139, i32 0, i32 6
  %140 = load %struct._GtkWidget*, %struct._GtkWidget** %info88, align 8
  %141 = bitcast %struct._GtkWidget* %140 to %struct._GTypeInstance*
  %call89 = call i64 @gtk_label_get_type() #6
  %call90 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %141, i64 %call89)
  %142 = bitcast %struct._GTypeInstance* %call90 to %struct._GtkLabel*
  call void @gtk_label_set_justify(%struct._GtkLabel* %142, i32 2)
  %143 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box, align 8
  %info91 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %143, i32 0, i32 6
  %144 = load %struct._GtkWidget*, %struct._GtkWidget** %info91, align 8
  %145 = bitcast %struct._GtkWidget* %144 to %struct._GTypeInstance*
  %call92 = call i64 @gtk_label_get_type() #6
  %call93 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %145, i64 %call92)
  %146 = bitcast %struct._GTypeInstance* %call93 to %struct._GtkLabel*
  call void @gtk_label_set_line_wrap(%struct._GtkLabel* %146, i32 1)
  %147 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box, align 8
  %info94 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %147, i32 0, i32 6
  %148 = load %struct._GtkWidget*, %struct._GtkWidget** %info94, align 8
  %149 = bitcast %struct._GtkWidget* %148 to %struct._GTypeInstance*
  %call95 = call i64 @gtk_label_get_type() #6
  %call96 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %149, i64 %call95)
  %150 = bitcast %struct._GTypeInstance* %call96 to %struct._GtkLabel*
  call void (%struct._GtkLabel*, ...) @gimp_label_set_attributes(%struct._GtkLabel* %150, i32 15, double 0x3FEAAAAAAAAAA97E, i32 -1)
  %151 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %152 = bitcast %struct._GtkWidget* %151 to %struct._GTypeInstance*
  %call97 = call i64 @gtk_box_get_type() #6
  %call98 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %152, i64 %call97)
  %153 = bitcast %struct._GTypeInstance* %call98 to %struct._GtkBox*
  %154 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box, align 8
  %info99 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %154, i32 0, i32 6
  %155 = load %struct._GtkWidget*, %struct._GtkWidget** %info99, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %153, %struct._GtkWidget* %155, i32 0, i32 0, i32 0)
  %156 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box, align 8
  %info100 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %156, i32 0, i32 6
  %157 = load %struct._GtkWidget*, %struct._GtkWidget** %info100, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %157)
  %call101 = call %struct._GtkWidget* @gtk_progress_bar_new()
  %158 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box, align 8
  %progress = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %158, i32 0, i32 8
  store %struct._GtkWidget* %call101, %struct._GtkWidget** %progress, align 8
  %159 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box, align 8
  %progress102 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %159, i32 0, i32 8
  %160 = load %struct._GtkWidget*, %struct._GtkWidget** %progress102, align 8
  %161 = bitcast %struct._GtkWidget* %160 to %struct._GTypeInstance*
  %call103 = call i64 @gtk_progress_bar_get_type() #6
  %call104 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %161, i64 %call103)
  %162 = bitcast %struct._GTypeInstance* %call104 to %struct._GtkProgressBar*
  call void @gtk_progress_bar_set_text(%struct._GtkProgressBar* %162, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0))
  %163 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %164 = bitcast %struct._GtkWidget* %163 to %struct._GTypeInstance*
  %call105 = call i64 @gtk_box_get_type() #6
  %call106 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %164, i64 %call105)
  %165 = bitcast %struct._GTypeInstance* %call106 to %struct._GtkBox*
  %166 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box, align 8
  %progress107 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %166, i32 0, i32 8
  %167 = load %struct._GtkWidget*, %struct._GtkWidget** %progress107, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %165, %struct._GtkWidget* %167, i32 0, i32 0, i32 0)
  %168 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box, align 8
  %progress108 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %168, i32 0, i32 8
  %169 = load %struct._GtkWidget*, %struct._GtkWidget** %progress108, align 8
  call void @gtk_widget_set_no_show_all(%struct._GtkWidget* %169, i32 1)
  %170 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box, align 8
  %info109 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %170, i32 0, i32 6
  %171 = load %struct._GtkWidget*, %struct._GtkWidget** %info109, align 8
  call void @gtk_widget_size_request(%struct._GtkWidget* %171, %struct._GtkRequisition* %info_requisition)
  %172 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box, align 8
  %progress110 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %172, i32 0, i32 8
  %173 = load %struct._GtkWidget*, %struct._GtkWidget** %progress110, align 8
  call void @gtk_widget_size_request(%struct._GtkWidget* %173, %struct._GtkRequisition* %progress_requisition)
  %174 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box, align 8
  %info111 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %174, i32 0, i32 6
  %175 = load %struct._GtkWidget*, %struct._GtkWidget** %info111, align 8
  %height = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %info_requisition, i32 0, i32 1
  %176 = load i32, i32* %height, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %175, i32 -1, i32 %176)
  %177 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box, align 8
  %filename112 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %177, i32 0, i32 5
  %178 = load %struct._GtkWidget*, %struct._GtkWidget** %filename112, align 8
  %width = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %progress_requisition, i32 0, i32 0
  %179 = load i32, i32* %width, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %178, i32 %179, i32 -1)
  %180 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box, align 8
  %progress113 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %180, i32 0, i32 8
  %181 = load %struct._GtkWidget*, %struct._GtkWidget** %progress113, align 8
  %height114 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %progress_requisition, i32 0, i32 1
  %182 = load i32, i32* %height114, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %181, i32 -1, i32 %182)
  %183 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box, align 8
  %progress115 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %183, i32 0, i32 8
  %184 = load %struct._GtkWidget*, %struct._GtkWidget** %progress115, align 8
  %185 = bitcast %struct._GtkWidget* %184 to %struct._GTypeInstance*
  %call116 = call i64 @gtk_progress_bar_get_type() #6
  %call117 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %185, i64 %call116)
  %186 = bitcast %struct._GTypeInstance* %call117 to %struct._GtkProgressBar*
  call void @gtk_progress_bar_set_text(%struct._GtkProgressBar* %186, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0))
  %187 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box, align 8
  %188 = bitcast %struct._GimpThumbBox* %187 to %struct._GTypeInstance*
  %call118 = call i64 @gtk_widget_get_type() #6
  %call119 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %188, i64 %call118)
  %189 = bitcast %struct._GTypeInstance* %call119 to %struct._GtkWidget*
  store %struct._GtkWidget* %189, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.else.9
  %190 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %190
}

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

declare %struct._GtkWidget* @gtk_event_box_new() #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_thumb_box_ebox_button_press(%struct._GtkWidget* %widget, %struct._GdkEventButton* %bevent, %struct._GimpThumbBox* %box) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %bevent.addr = alloca %struct._GdkEventButton*, align 8
  %box.addr = alloca %struct._GimpThumbBox*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %bevent, %struct._GdkEventButton** %bevent.addr, align 8
  store %struct._GimpThumbBox* %box, %struct._GimpThumbBox** %box.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %state = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %1, i32 0, i32 7
  %2 = load i32, i32* %state, align 4
  %3 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box.addr, align 8
  call void @gimp_thumb_box_thumbnail_clicked(%struct._GtkWidget* %0, i32 %2, %struct._GimpThumbBox* %3)
  ret i32 1
}

declare noalias i8* @g_strdup_printf(i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

declare i8* @gimp_get_mod_string(i32) #1

declare i32 @gimp_get_toggle_behavior_mask() #1

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

declare void @g_free(i8*) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare %struct._GtkWidget* @gtk_button_new() #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8*) #1

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #2

; Function Attrs: nounwind readnone
declare i32 @gtk_true() #2

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

declare void @gtk_box_set_homogeneous(%struct._GtkBox*, i32) #1

declare %struct._GimpImagefile* @gimp_imagefile_new(%struct._Gimp*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_thumb_box_imagefile_info_changed(%struct._GimpImagefile* %imagefile, %struct._GimpThumbBox* %box) #3 {
entry:
  %imagefile.addr = alloca %struct._GimpImagefile*, align 8
  %box.addr = alloca %struct._GimpThumbBox*, align 8
  store %struct._GimpImagefile* %imagefile, %struct._GimpImagefile** %imagefile.addr, align 8
  store %struct._GimpThumbBox* %box, %struct._GimpThumbBox** %box.addr, align 8
  %0 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box.addr, align 8
  %info = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %0, i32 0, i32 6
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %info, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_label_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkLabel*
  %4 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile.addr, align 8
  %call2 = call i8* @gimp_imagefile_get_desc_string(%struct._GimpImagefile* %4)
  call void @gtk_label_set_text(%struct._GtkLabel* %3, i8* %call2)
  %5 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box.addr, align 8
  %info3 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %5, i32 0, i32 6
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %info3, align 8
  %7 = bitcast %struct._GtkWidget* %6 to i8*
  %call4 = call i64 @g_signal_connect_data(i8* %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GdkRectangle*, i8*)* @this_is_ugly to void ()*), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), void (i8*, %struct._GClosure*)* null, i32 1)
  ret void
}

declare %struct._GimpThumbnail* @gimp_imagefile_get_thumbnail(%struct._GimpImagefile*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_thumb_box_thumb_state_notify(%struct._GimpThumbnail* %thumb, %struct._GParamSpec* %pspec, %struct._GimpThumbBox* %box) #3 {
entry:
  %thumb.addr = alloca %struct._GimpThumbnail*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %box.addr = alloca %struct._GimpThumbBox*, align 8
  store %struct._GimpThumbnail* %thumb, %struct._GimpThumbnail** %thumb.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpThumbBox* %box, %struct._GimpThumbBox** %box.addr, align 8
  %0 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box.addr, align 8
  %idle_id = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %0, i32 0, i32 9
  %1 = load i32, i32* %idle_id, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %sw.epilog

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumb.addr, align 8
  %image_state = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %2, i32 0, i32 1
  %3 = load i32, i32* %image_state, align 4
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  br label %sw.epilog

if.end.2:                                         ; preds = %if.end
  %4 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumb.addr, align 8
  %thumb_state = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %4, i32 0, i32 11
  %5 = load i32, i32* %thumb_state, align 4
  switch i32 %5, label %sw.default [
    i32 4, label %sw.bb
    i32 6, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end.2, %if.end.2
  %6 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box.addr, align 8
  %7 = bitcast %struct._GimpThumbBox* %6 to i8*
  %call = call i32 @g_idle_add_full(i32 300, i32 (i8*)* bitcast (i32 (%struct._GimpThumbBox*)* @gimp_thumb_box_auto_thumbnail to i32 (i8*)*), i8* %7, void (i8*)* null)
  %8 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box.addr, align 8
  %idle_id3 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %8, i32 0, i32 9
  store i32 %call, i32* %idle_id3, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.2
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %if.then.1, %sw.default, %sw.bb
  ret void
}

declare void @gimp_view_renderer_get_frame_size(i32*, i32*) #1

declare %struct._GtkWidget* @gimp_view_new(%struct._GimpContext*, %struct._GimpViewable*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

declare void @gtk_label_set_mnemonic_widget(%struct._GtkLabel*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_thumb_box_thumbnail_clicked(%struct._GtkWidget* %widget, i32 %state, %struct._GimpThumbBox* %box) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %state.addr = alloca i32, align 4
  %box.addr = alloca %struct._GimpThumbBox*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpThumbBox* %box, %struct._GimpThumbBox** %box.addr, align 8
  %0 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box.addr, align 8
  %1 = load i32, i32* %state.addr, align 4
  %call = call i32 @gimp_get_toggle_behavior_mask()
  %and = and i32 %1, %call
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 1, i32 0
  call void @gimp_thumb_box_create_thumbnails(%struct._GimpThumbBox* %0, i32 %cond)
  ret void
}

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare void @gtk_label_set_ellipsize(%struct._GtkLabel*, i32) #1

declare void @gtk_label_set_justify(%struct._GtkLabel*, i32) #1

declare void @gimp_label_set_attributes(%struct._GtkLabel*, ...) #1

declare void @gtk_label_set_line_wrap(%struct._GtkLabel*, i32) #1

declare %struct._GtkWidget* @gtk_progress_bar_new() #1

declare void @gtk_progress_bar_set_text(%struct._GtkProgressBar*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_progress_bar_get_type() #2

declare void @gtk_box_pack_end(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare void @gtk_widget_set_no_show_all(%struct._GtkWidget*, i32) #1

declare void @gtk_widget_size_request(%struct._GtkWidget*, %struct._GtkRequisition*) #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind uwtable
define void @gimp_thumb_box_take_uri(%struct._GimpThumbBox* %box, i8* %uri) #3 {
entry:
  %box.addr = alloca %struct._GimpThumbBox*, align 8
  %uri.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %basename = alloca i8*, align 8
  store %struct._GimpThumbBox* %box, %struct._GimpThumbBox** %box.addr, align 8
  store i8* %uri, i8** %uri.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box.addr, align 8
  %1 = bitcast %struct._GimpThumbBox* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_thumb_box_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_thumb_box_take_uri, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box.addr, align 8
  %idle_id = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %13, i32 0, i32 9
  %14 = load i32, i32* %idle_id, align 4
  %tobool11 = icmp ne i32 %14, 0
  br i1 %tobool11, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %do.end
  %15 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box.addr, align 8
  %idle_id13 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %15, i32 0, i32 9
  %16 = load i32, i32* %idle_id13, align 4
  %call14 = call i32 @g_source_remove(i32 %16)
  %17 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box.addr, align 8
  %idle_id15 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %17, i32 0, i32 9
  store i32 0, i32* %idle_id15, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.12, %do.end
  %18 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box.addr, align 8
  %imagefile = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %18, i32 0, i32 2
  %19 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  %20 = bitcast %struct._GimpImagefile* %19 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_object_get_type() #6
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call17)
  %21 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpObject*
  %22 = load i8*, i8** %uri.addr, align 8
  call void @gimp_object_take_name(%struct._GimpObject* %21, i8* %22)
  %23 = load i8*, i8** %uri.addr, align 8
  %tobool19 = icmp ne i8* %23, null
  br i1 %tobool19, label %if.then.20, label %if.else.25

if.then.20:                                       ; preds = %if.end.16
  %24 = load i8*, i8** %uri.addr, align 8
  %call22 = call i8* @file_utils_uri_display_basename(i8* %24)
  store i8* %call22, i8** %basename, align 8
  %25 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box.addr, align 8
  %filename = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %25, i32 0, i32 5
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %filename, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_label_get_type() #6
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call23)
  %28 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkLabel*
  %29 = load i8*, i8** %basename, align 8
  call void @gtk_label_set_text(%struct._GtkLabel* %28, i8* %29)
  %30 = load i8*, i8** %basename, align 8
  call void @g_free(i8* %30)
  br label %if.end.30

if.else.25:                                       ; preds = %if.end.16
  %31 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box.addr, align 8
  %filename26 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %31, i32 0, i32 5
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %filename26, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_label_get_type() #6
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call27)
  %34 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkLabel*
  %call29 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0)) #8
  call void @gtk_label_set_text(%struct._GtkLabel* %34, i8* %call29)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.25, %if.then.20
  %35 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box.addr, align 8
  %36 = bitcast %struct._GimpThumbBox* %35 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_widget_get_type() #6
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call31)
  %37 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkWidget*
  %38 = load i8*, i8** %uri.addr, align 8
  %cmp33 = icmp ne i8* %38, null
  %conv = zext i1 %cmp33 to i32
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %37, i32 %conv)
  %39 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box.addr, align 8
  %imagefile34 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %39, i32 0, i32 2
  %40 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile34, align 8
  call void @gimp_imagefile_update(%struct._GimpImagefile* %40)
  br label %return

return:                                           ; preds = %if.end.30, %if.else.9
  ret void
}

declare i32 @g_source_remove(i32) #1

declare void @gimp_object_take_name(%struct._GimpObject*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare i8* @file_utils_uri_display_basename(i8*) #1

declare void @gtk_label_set_text(%struct._GtkLabel*, i8*) #1

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

declare void @gimp_imagefile_update(%struct._GimpImagefile*) #1

; Function Attrs: nounwind uwtable
define void @gimp_thumb_box_take_uris(%struct._GimpThumbBox* %box, %struct._GSList* %uris) #3 {
entry:
  %box.addr = alloca %struct._GimpThumbBox*, align 8
  %uris.addr = alloca %struct._GSList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpThumbBox* %box, %struct._GimpThumbBox** %box.addr, align 8
  store %struct._GSList* %uris, %struct._GSList** %uris.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box.addr, align 8
  %1 = bitcast %struct._GimpThumbBox* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_thumb_box_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_thumb_box_take_uris, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box.addr, align 8
  %uris11 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %13, i32 0, i32 3
  %14 = load %struct._GSList*, %struct._GSList** %uris11, align 8
  %tobool12 = icmp ne %struct._GSList* %14, null
  br i1 %tobool12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %do.end
  %15 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box.addr, align 8
  %uris14 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %15, i32 0, i32 3
  %16 = load %struct._GSList*, %struct._GSList** %uris14, align 8
  call void @g_slist_free_full(%struct._GSList* %16, void (i8*)* @g_free)
  %17 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box.addr, align 8
  %uris15 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %17, i32 0, i32 3
  store %struct._GSList* null, %struct._GSList** %uris15, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %do.end
  %18 = load %struct._GSList*, %struct._GSList** %uris.addr, align 8
  %19 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box.addr, align 8
  %uris17 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %19, i32 0, i32 3
  store %struct._GSList* %18, %struct._GSList** %uris17, align 8
  br label %return

return:                                           ; preds = %if.end.16, %if.else.9
  ret void
}

declare void @g_slist_free_full(%struct._GSList*, void (i8*)*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_thumb_box_class_init(%struct._GimpThumbBoxClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpThumbBoxClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  store %struct._GimpThumbBoxClass* %klass, %struct._GimpThumbBoxClass** %klass.addr, align 8
  %0 = load %struct._GimpThumbBoxClass*, %struct._GimpThumbBoxClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpThumbBoxClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpThumbBoxClass*, %struct._GimpThumbBoxClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpThumbBoxClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_widget_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %5, %struct._GtkWidgetClass** %widget_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_thumb_box_dispose, void (%struct._GObject*)** %dispose, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_thumb_box_finalize, void (%struct._GObject*)** %finalize, align 8
  %8 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %style_set = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %8, i32 0, i32 17
  store void (%struct._GtkWidget*, %struct._GtkStyle*)* @gimp_thumb_box_style_set, void (%struct._GtkWidget*, %struct._GtkStyle*)** %style_set, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_thumb_box_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %box = alloca %struct._GimpThumbBox*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_thumb_box_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpThumbBox*
  store %struct._GimpThumbBox* %2, %struct._GimpThumbBox** %box, align 8
  %3 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box, align 8
  %idle_id = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %3, i32 0, i32 9
  %4 = load i32, i32* %idle_id, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box, align 8
  %idle_id2 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %5, i32 0, i32 9
  %6 = load i32, i32* %idle_id2, align 4
  %call3 = call i32 @g_source_remove(i32 %6)
  %7 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box, align 8
  %idle_id4 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %7, i32 0, i32 9
  store i32 0, i32* %idle_id4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8*, i8** @gimp_thumb_box_parent_class, align 8
  %9 = bitcast i8* %8 to %struct._GTypeClass*
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %9, i64 80)
  %10 = bitcast %struct._GTypeClass* %call5 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 5
  %11 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %12 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %11(%struct._GObject* %12)
  %13 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box, align 8
  %progress = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %13, i32 0, i32 8
  store %struct._GtkWidget* null, %struct._GtkWidget** %progress, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_thumb_box_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %box = alloca %struct._GimpThumbBox*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_thumb_box_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpThumbBox*
  store %struct._GimpThumbBox* %2, %struct._GimpThumbBox** %box, align 8
  %3 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box, align 8
  call void @gimp_thumb_box_take_uris(%struct._GimpThumbBox* %3, %struct._GSList* null)
  %4 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box, align 8
  %imagefile = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %4, i32 0, i32 2
  %5 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  %tobool = icmp ne %struct._GimpImagefile* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box, align 8
  %imagefile2 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %6, i32 0, i32 2
  %7 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile2, align 8
  %8 = bitcast %struct._GimpImagefile* %7 to i8*
  call void @g_object_unref(i8* %8)
  %9 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box, align 8
  %imagefile3 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %9, i32 0, i32 2
  store %struct._GimpImagefile* null, %struct._GimpImagefile** %imagefile3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i8*, i8** @gimp_thumb_box_parent_class, align 8
  %11 = bitcast i8* %10 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %11, i64 80)
  %12 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 6
  %13 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %14 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %13(%struct._GObject* %14)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_thumb_box_style_set(%struct._GtkWidget* %widget, %struct._GtkStyle* %prev_style) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %prev_style.addr = alloca %struct._GtkStyle*, align 8
  %box = alloca %struct._GimpThumbBox*, align 8
  %style = alloca %struct._GtkStyle*, align 8
  %ebox = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GtkStyle* %prev_style, %struct._GtkStyle** %prev_style.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_thumb_box_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpThumbBox*
  store %struct._GimpThumbBox* %2, %struct._GimpThumbBox** %box, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call2 = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %3)
  store %struct._GtkStyle* %call2, %struct._GtkStyle** %style, align 8
  %4 = load i8*, i8** @gimp_thumb_box_parent_class, align 8
  %5 = bitcast i8* %4 to %struct._GTypeClass*
  %call3 = call i64 @gtk_widget_get_type() #6
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %5, i64 %call3)
  %6 = bitcast %struct._GTypeClass* %call4 to %struct._GtkWidgetClass*
  %style_set = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %6, i32 0, i32 17
  %7 = load void (%struct._GtkWidget*, %struct._GtkStyle*)*, void (%struct._GtkWidget*, %struct._GtkStyle*)** %style_set, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %9 = load %struct._GtkStyle*, %struct._GtkStyle** %prev_style.addr, align 8
  call void %7(%struct._GtkWidget* %8, %struct._GtkStyle* %9)
  %10 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box, align 8
  %preview = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %10, i32 0, i32 4
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %12 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %base = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %12, i32 0, i32 7
  %arrayidx = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %base, i32 0, i64 0
  call void @gtk_widget_modify_bg(%struct._GtkWidget* %11, i32 0, %struct._GdkColor* %arrayidx)
  %13 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box, align 8
  %preview5 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %13, i32 0, i32 4
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %preview5, align 8
  %15 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %base6 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %15, i32 0, i32 7
  %arrayidx7 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %base6, i32 0, i64 0
  call void @gtk_widget_modify_bg(%struct._GtkWidget* %14, i32 4, %struct._GdkColor* %arrayidx7)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_bin_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call8)
  %18 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkBin*
  %call10 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %18)
  store %struct._GtkWidget* %call10, %struct._GtkWidget** %ebox, align 8
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %ebox, align 8
  %20 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %base11 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %20, i32 0, i32 7
  %arrayidx12 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %base11, i32 0, i64 0
  call void @gtk_widget_modify_bg(%struct._GtkWidget* %19, i32 0, %struct._GdkColor* %arrayidx12)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %ebox, align 8
  %22 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %base13 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %22, i32 0, i32 7
  %arrayidx14 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %base13, i32 0, i64 0
  call void @gtk_widget_modify_bg(%struct._GtkWidget* %21, i32 4, %struct._GdkColor* %arrayidx14)
  ret void
}

declare void @g_object_unref(i8*) #1

declare %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget*) #1

declare void @gtk_widget_modify_bg(%struct._GtkWidget*, i32, %struct._GdkColor*) #1

declare %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_bin_get_type() #2

declare void @gtk_frame_set_shadow_type(%struct._GtkFrame*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GimpProgress* @gimp_thumb_box_progress_start(%struct._GimpProgress* %progress, i8* %message, i32 %cancelable) #3 {
entry:
  %retval = alloca %struct._GimpProgress*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %message.addr = alloca i8*, align 8
  %cancelable.addr = alloca i32, align 4
  %box = alloca %struct._GimpThumbBox*, align 8
  %bar = alloca %struct._GtkProgressBar*, align 8
  %toplevel = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store i8* %message, i8** %message.addr, align 8
  store i32 %cancelable, i32* %cancelable.addr, align 4
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_thumb_box_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpThumbBox*
  store %struct._GimpThumbBox* %2, %struct._GimpThumbBox** %box, align 8
  %3 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box, align 8
  %progress2 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %3, i32 0, i32 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %progress2, align 8
  %tobool = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._GimpProgress* null, %struct._GimpProgress** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box, align 8
  %progress_active = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %5, i32 0, i32 7
  %6 = load i32, i32* %progress_active, align 4
  %tobool3 = icmp ne i32 %6, 0
  br i1 %tobool3, label %if.end.27, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %7 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box, align 8
  %progress5 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %7, i32 0, i32 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %progress5, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_progress_bar_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call6)
  %10 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkProgressBar*
  store %struct._GtkProgressBar* %10, %struct._GtkProgressBar** %bar, align 8
  %11 = load %struct._GtkProgressBar*, %struct._GtkProgressBar** %bar, align 8
  call void @gtk_progress_bar_set_fraction(%struct._GtkProgressBar* %11, double 0.000000e+00)
  %12 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box, align 8
  %progress_active8 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %12, i32 0, i32 7
  store i32 1, i32* %progress_active8, align 4
  %13 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box, align 8
  %14 = bitcast %struct._GimpThumbBox* %13 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_widget_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call9)
  %15 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkWidget*
  %call11 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %15)
  store %struct._GtkWidget* %call11, %struct._GtkWidget** %toplevel, align 8
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %toplevel, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %17, %struct._GTypeInstance** %__inst, align 8
  %call12 = call i64 @gimp_file_dialog_get_type() #6
  store i64 %call12, i64* %__t, align 8
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool13 = icmp ne %struct._GTypeInstance* %18, null
  br i1 %tobool13, label %if.else, label %if.then.14

if.then.14:                                       ; preds = %if.then.4
  store i32 0, i32* %__r, align 4
  br label %if.end.21

if.else:                                          ; preds = %if.then.4
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool15 = icmp ne %struct._GTypeClass* %20, null
  br i1 %tobool15, label %land.lhs.true, label %if.else.18

land.lhs.true:                                    ; preds = %if.else
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class16 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class16, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type, align 8
  %24 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %23, %24
  br i1 %cmp, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.20

if.else.18:                                       ; preds = %land.lhs.true, %if.else
  %25 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %26 = load i64, i64* %__t, align 8
  %call19 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %25, i64 %26) #7
  store i32 %call19, i32* %__r, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.18, %if.then.17
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.then.14
  %27 = load i32, i32* %__r, align 4
  store i32 %27, i32* %tmp
  %28 = load i32, i32* %tmp
  %tobool22 = icmp ne i32 %28, 0
  br i1 %tobool22, label %if.then.23, label %if.end.26

if.then.23:                                       ; preds = %if.end.21
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %toplevel, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_dialog_get_type() #6
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call24)
  %31 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkDialog*
  %32 = load i32, i32* %cancelable.addr, align 4
  call void @gtk_dialog_set_response_sensitive(%struct._GtkDialog* %31, i32 -6, i32 %32)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.23, %if.end.21
  %33 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GimpProgress* %33, %struct._GimpProgress** %retval
  br label %return

if.end.27:                                        ; preds = %if.end
  store %struct._GimpProgress* null, %struct._GimpProgress** %retval
  br label %return

return:                                           ; preds = %if.end.27, %if.end.26, %if.then
  %34 = load %struct._GimpProgress*, %struct._GimpProgress** %retval
  ret %struct._GimpProgress* %34
}

; Function Attrs: nounwind uwtable
define internal void @gimp_thumb_box_progress_end(%struct._GimpProgress* %progress) #3 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %box = alloca %struct._GimpThumbBox*, align 8
  %bar = alloca %struct._GtkProgressBar*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call = call i32 @gimp_thumb_box_progress_is_active(%struct._GimpProgress* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %2 = bitcast %struct._GimpProgress* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_thumb_box_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpThumbBox*
  store %struct._GimpThumbBox* %3, %struct._GimpThumbBox** %box, align 8
  %4 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box, align 8
  %progress3 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %4, i32 0, i32 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %progress3, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_progress_bar_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call4)
  %7 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkProgressBar*
  store %struct._GtkProgressBar* %7, %struct._GtkProgressBar** %bar, align 8
  %8 = load %struct._GtkProgressBar*, %struct._GtkProgressBar** %bar, align 8
  call void @gtk_progress_bar_set_fraction(%struct._GtkProgressBar* %8, double 0.000000e+00)
  %9 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box, align 8
  %progress_active = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %9, i32 0, i32 7
  store i32 0, i32* %progress_active, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_thumb_box_progress_is_active(%struct._GimpProgress* %progress) #3 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %box = alloca %struct._GimpThumbBox*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_thumb_box_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpThumbBox*
  store %struct._GimpThumbBox* %2, %struct._GimpThumbBox** %box, align 8
  %3 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box, align 8
  %progress2 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %3, i32 0, i32 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %progress2, align 8
  %tobool = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %5 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box, align 8
  %progress_active = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %5, i32 0, i32 7
  %6 = load i32, i32* %progress_active, align 4
  %tobool3 = icmp ne i32 %6, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %7 = phi i1 [ false, %entry ], [ %tobool3, %land.rhs ]
  %land.ext = zext i1 %7 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal void @gimp_thumb_box_progress_set_value(%struct._GimpProgress* %progress, double %percentage) #3 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %percentage.addr = alloca double, align 8
  %box = alloca %struct._GimpThumbBox*, align 8
  %bar = alloca %struct._GtkProgressBar*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store double %percentage, double* %percentage.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call = call i32 @gimp_thumb_box_progress_is_active(%struct._GimpProgress* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %2 = bitcast %struct._GimpProgress* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_thumb_box_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpThumbBox*
  store %struct._GimpThumbBox* %3, %struct._GimpThumbBox** %box, align 8
  %4 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box, align 8
  %progress3 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %4, i32 0, i32 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %progress3, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_progress_bar_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call4)
  %7 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkProgressBar*
  store %struct._GtkProgressBar* %7, %struct._GtkProgressBar** %bar, align 8
  %8 = load %struct._GtkProgressBar*, %struct._GtkProgressBar** %bar, align 8
  %9 = load double, double* %percentage.addr, align 8
  call void @gtk_progress_bar_set_fraction(%struct._GtkProgressBar* %8, double %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal double @gimp_thumb_box_progress_get_value(%struct._GimpProgress* %progress) #3 {
entry:
  %retval = alloca double, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %box = alloca %struct._GimpThumbBox*, align 8
  %bar = alloca %struct._GtkProgressBar*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call = call i32 @gimp_thumb_box_progress_is_active(%struct._GimpProgress* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %2 = bitcast %struct._GimpProgress* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_thumb_box_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpThumbBox*
  store %struct._GimpThumbBox* %3, %struct._GimpThumbBox** %box, align 8
  %4 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box, align 8
  %progress3 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %4, i32 0, i32 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %progress3, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_progress_bar_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call4)
  %7 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkProgressBar*
  store %struct._GtkProgressBar* %7, %struct._GtkProgressBar** %bar, align 8
  %8 = load %struct._GtkProgressBar*, %struct._GtkProgressBar** %bar, align 8
  %call6 = call double @gtk_progress_bar_get_fraction(%struct._GtkProgressBar* %8)
  store double %call6, double* %retval
  br label %return

if.end:                                           ; preds = %entry
  store double 0.000000e+00, double* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load double, double* %retval
  ret double %9
}

; Function Attrs: nounwind uwtable
define internal void @gimp_thumb_box_progress_pulse(%struct._GimpProgress* %progress) #3 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %box = alloca %struct._GimpThumbBox*, align 8
  %bar = alloca %struct._GtkProgressBar*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call = call i32 @gimp_thumb_box_progress_is_active(%struct._GimpProgress* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %2 = bitcast %struct._GimpProgress* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_thumb_box_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpThumbBox*
  store %struct._GimpThumbBox* %3, %struct._GimpThumbBox** %box, align 8
  %4 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box, align 8
  %progress3 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %4, i32 0, i32 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %progress3, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_progress_bar_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call4)
  %7 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkProgressBar*
  store %struct._GtkProgressBar* %7, %struct._GtkProgressBar** %bar, align 8
  %8 = load %struct._GtkProgressBar*, %struct._GtkProgressBar** %bar, align 8
  call void @gtk_progress_bar_pulse(%struct._GtkProgressBar* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_thumb_box_progress_message(%struct._GimpProgress* %progress, %struct._Gimp* %gimp, i32 %severity, i8* %domain, i8* %message) #3 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %severity.addr = alloca i32, align 4
  %domain.addr = alloca i8*, align 8
  %message.addr = alloca i8*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i32 %severity, i32* %severity.addr, align 4
  store i8* %domain, i8** %domain.addr, align 8
  store i8* %message, i8** %message.addr, align 8
  ret i32 1
}

declare void @gtk_progress_bar_set_fraction(%struct._GtkProgressBar*, double) #1

declare %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_file_dialog_get_type() #2

declare void @gtk_dialog_set_response_sensitive(%struct._GtkDialog*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #2

declare double @gtk_progress_bar_get_fraction(%struct._GtkProgressBar*) #1

declare void @gtk_progress_bar_pulse(%struct._GtkProgressBar*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_thumb_box_create_thumbnails(%struct._GimpThumbBox* %box, i32 %force) #3 {
entry:
  %box.addr = alloca %struct._GimpThumbBox*, align 8
  %force.addr = alloca i32, align 4
  %gimp = alloca %struct._Gimp*, align 8
  %progress = alloca %struct._GimpProgress*, align 8
  %dialog = alloca %struct._GimpFileDialog*, align 8
  %toplevel = alloca %struct._GtkWidget*, align 8
  %list = alloca %struct._GSList*, align 8
  %n_uris = alloca i32, align 4
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %str = alloca i8*, align 8
  store %struct._GimpThumbBox* %box, %struct._GimpThumbBox** %box.addr, align 8
  store i32 %force, i32* %force.addr, align 4
  %0 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box.addr, align 8
  %context = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %0, i32 0, i32 1
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp1 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %1, i32 0, i32 1
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp1, align 8
  store %struct._Gimp* %2, %struct._Gimp** %gimp, align 8
  %3 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box.addr, align 8
  %4 = bitcast %struct._GimpThumbBox* %3 to %struct._GTypeInstance*
  %call = call i64 @gimp_progress_interface_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpProgress*
  store %struct._GimpProgress* %5, %struct._GimpProgress** %progress, align 8
  store %struct._GimpFileDialog* null, %struct._GimpFileDialog** %dialog, align 8
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %6, i32 0, i32 1
  %7 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %thumbnail_size = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %7, i32 0, i32 44
  %8 = load i32, i32* %thumbnail_size, align 4
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %9 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box.addr, align 8
  %10 = bitcast %struct._GimpThumbBox* %9 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_widget_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call3)
  %11 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkWidget*
  %call5 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %11)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %toplevel, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %toplevel, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %13, %struct._GTypeInstance** %__inst, align 8
  %call6 = call i64 @gimp_file_dialog_get_type() #6
  store i64 %call6, i64* %__t, align 8
  %14 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %14, null
  br i1 %tobool, label %if.else, label %if.then.7

if.then.7:                                        ; preds = %if.end
  store i32 0, i32* %__r, align 4
  br label %if.end.15

if.else:                                          ; preds = %if.end
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %15, i32 0, i32 0
  %16 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool8 = icmp ne %struct._GTypeClass* %16, null
  br i1 %tobool8, label %land.lhs.true, label %if.else.12

land.lhs.true:                                    ; preds = %if.else
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class9 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class9, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %18, i32 0, i32 0
  %19 = load i64, i64* %g_type, align 8
  %20 = load i64, i64* %__t, align 8
  %cmp10 = icmp eq i64 %19, %20
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.14

if.else.12:                                       ; preds = %land.lhs.true, %if.else
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %22 = load i64, i64* %__t, align 8
  %call13 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %21, i64 %22) #7
  store i32 %call13, i32* %__r, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.12, %if.then.11
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.then.7
  %23 = load i32, i32* %__r, align 4
  store i32 %23, i32* %tmp
  %24 = load i32, i32* %tmp
  %tobool16 = icmp ne i32 %24, 0
  br i1 %tobool16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %if.end.15
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %toplevel, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_file_dialog_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call18)
  %27 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpFileDialog*
  store %struct._GimpFileDialog* %27, %struct._GimpFileDialog** %dialog, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %if.end.15
  %28 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  call void @gimp_set_busy(%struct._Gimp* %28)
  %29 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %tobool21 = icmp ne %struct._GimpFileDialog* %29, null
  br i1 %tobool21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %if.end.20
  %30 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  call void @gimp_file_dialog_set_sensitive(%struct._GimpFileDialog* %30, i32 0)
  br label %if.end.24

if.else.23:                                       ; preds = %if.end.20
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %toplevel, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %31, i32 0)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.23, %if.then.22
  %32 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box.addr, align 8
  %uris = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %32, i32 0, i32 3
  %33 = load %struct._GSList*, %struct._GSList** %uris, align 8
  %tobool25 = icmp ne %struct._GSList* %33, null
  br i1 %tobool25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.end.24
  %34 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box.addr, align 8
  %info = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %34, i32 0, i32 6
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %info, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %35)
  %36 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box.addr, align 8
  %progress27 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %36, i32 0, i32 8
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %progress27, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %37)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %if.end.24
  %38 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box.addr, align 8
  %uris29 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %38, i32 0, i32 3
  %39 = load %struct._GSList*, %struct._GSList** %uris29, align 8
  %call30 = call i32 @g_slist_length(%struct._GSList* %39)
  store i32 %call30, i32* %n_uris, align 4
  %40 = load i32, i32* %n_uris, align 4
  %cmp31 = icmp sgt i32 %40, 1
  br i1 %cmp31, label %if.then.32, label %if.end.74

if.then.32:                                       ; preds = %if.end.28
  %41 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box.addr, align 8
  %42 = bitcast %struct._GimpThumbBox* %41 to %struct._GTypeInstance*
  %call34 = call i64 @gimp_progress_interface_get_type() #6
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call34)
  %43 = bitcast %struct._GTypeInstance* %call35 to %struct._GimpProgress*
  %call36 = call %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress* %43, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0), i32 1)
  %44 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box.addr, align 8
  %45 = bitcast %struct._GimpThumbBox* %44 to %struct._GTypeInstance*
  %call37 = call i64 @gimp_progress_interface_get_type() #6
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call37)
  %46 = bitcast %struct._GTypeInstance* %call38 to %struct._GimpProgress*
  %call39 = call %struct._GimpProgress* @gimp_sub_progress_new(%struct._GimpProgress* %46)
  store %struct._GimpProgress* %call39, %struct._GimpProgress** %progress, align 8
  %47 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  %48 = bitcast %struct._GimpProgress* %47 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_sub_progress_get_type() #6
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call40)
  %49 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpSubProgress*
  %50 = load i32, i32* %n_uris, align 4
  call void @gimp_sub_progress_set_step(%struct._GimpSubProgress* %49, i32 0, i32 %50)
  %51 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box.addr, align 8
  %uris42 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %51, i32 0, i32 3
  %52 = load %struct._GSList*, %struct._GSList** %uris42, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %52, i32 0, i32 1
  %53 = load %struct._GSList*, %struct._GSList** %next, align 8
  store %struct._GSList* %53, %struct._GSList** %list, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.then.32
  %54 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool43 = icmp ne %struct._GSList* %54, null
  br i1 %tobool43, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call44 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0)) #8
  %55 = load i32, i32* %i, align 4
  %56 = load i32, i32* %n_uris, align 4
  %call45 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call44, i32 %55, i32 %56)
  store i8* %call45, i8** %str, align 8
  %57 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box.addr, align 8
  %progress46 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %57, i32 0, i32 8
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %progress46, align 8
  %59 = bitcast %struct._GtkWidget* %58 to %struct._GTypeInstance*
  %call47 = call i64 @gtk_progress_bar_get_type() #6
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call47)
  %60 = bitcast %struct._GTypeInstance* %call48 to %struct._GtkProgressBar*
  %61 = load i8*, i8** %str, align 8
  call void @gtk_progress_bar_set_text(%struct._GtkProgressBar* %60, i8* %61)
  %62 = load i8*, i8** %str, align 8
  call void @g_free(i8* %62)
  %63 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  call void @gimp_progress_set_value(%struct._GimpProgress* %63, double 0.000000e+00)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %call49 = call i32 @gtk_events_pending()
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call51 = call i32 @gtk_main_iteration()
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %64 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box.addr, align 8
  %65 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %65, i32 0, i32 0
  %66 = load i8*, i8** %data, align 8
  %67 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config52 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %67, i32 0, i32 1
  %68 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config52, align 8
  %thumbnail_size53 = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %68, i32 0, i32 44
  %69 = load i32, i32* %thumbnail_size53, align 4
  %70 = load i32, i32* %force.addr, align 4
  %71 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  call void @gimp_thumb_box_create_thumbnail(%struct._GimpThumbBox* %64, i8* %66, i32 %69, i32 %70, %struct._GimpProgress* %71)
  %72 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %tobool54 = icmp ne %struct._GimpFileDialog* %72, null
  br i1 %tobool54, label %land.lhs.true.55, label %if.end.58

land.lhs.true.55:                                 ; preds = %while.end
  %73 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %canceled = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %73, i32 0, i32 13
  %74 = load i32, i32* %canceled, align 4
  %tobool56 = icmp ne i32 %74, 0
  br i1 %tobool56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %land.lhs.true.55
  br label %canceled.83

if.end.58:                                        ; preds = %land.lhs.true.55, %while.end
  %75 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  %76 = bitcast %struct._GimpProgress* %75 to %struct._GTypeInstance*
  %call59 = call i64 @gimp_sub_progress_get_type() #6
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 %call59)
  %77 = bitcast %struct._GTypeInstance* %call60 to %struct._GimpSubProgress*
  %78 = load i32, i32* %i, align 4
  %79 = load i32, i32* %n_uris, align 4
  call void @gimp_sub_progress_set_step(%struct._GimpSubProgress* %77, i32 %78, i32 %79)
  br label %for.inc

for.inc:                                          ; preds = %if.end.58
  %80 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool61 = icmp ne %struct._GSList* %80, null
  br i1 %tobool61, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %81 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next62 = getelementptr inbounds %struct._GSList, %struct._GSList* %81, i32 0, i32 1
  %82 = load %struct._GSList*, %struct._GSList** %next62, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GSList* [ %82, %cond.true ], [ null, %cond.false ]
  store %struct._GSList* %cond, %struct._GSList** %list, align 8
  %83 = load i32, i32* %i, align 4
  %inc = add nsw i32 %83, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call63 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0)) #8
  %84 = load i32, i32* %n_uris, align 4
  %85 = load i32, i32* %n_uris, align 4
  %call64 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call63, i32 %84, i32 %85)
  store i8* %call64, i8** %str, align 8
  %86 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box.addr, align 8
  %progress65 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %86, i32 0, i32 8
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %progress65, align 8
  %88 = bitcast %struct._GtkWidget* %87 to %struct._GTypeInstance*
  %call66 = call i64 @gtk_progress_bar_get_type() #6
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %88, i64 %call66)
  %89 = bitcast %struct._GTypeInstance* %call67 to %struct._GtkProgressBar*
  %90 = load i8*, i8** %str, align 8
  call void @gtk_progress_bar_set_text(%struct._GtkProgressBar* %89, i8* %90)
  %91 = load i8*, i8** %str, align 8
  call void @g_free(i8* %91)
  %92 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  call void @gimp_progress_set_value(%struct._GimpProgress* %92, double 0.000000e+00)
  br label %while.cond.68

while.cond.68:                                    ; preds = %while.body.71, %for.end
  %call69 = call i32 @gtk_events_pending()
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %while.body.71, label %while.end.73

while.body.71:                                    ; preds = %while.cond.68
  %call72 = call i32 @gtk_main_iteration()
  br label %while.cond.68

while.end.73:                                     ; preds = %while.cond.68
  br label %if.end.74

if.end.74:                                        ; preds = %while.end.73, %if.end.28
  %93 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box.addr, align 8
  %uris75 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %93, i32 0, i32 3
  %94 = load %struct._GSList*, %struct._GSList** %uris75, align 8
  %tobool76 = icmp ne %struct._GSList* %94, null
  br i1 %tobool76, label %if.then.77, label %if.end.82

if.then.77:                                       ; preds = %if.end.74
  %95 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box.addr, align 8
  %96 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box.addr, align 8
  %uris78 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %96, i32 0, i32 3
  %97 = load %struct._GSList*, %struct._GSList** %uris78, align 8
  %data79 = getelementptr inbounds %struct._GSList, %struct._GSList* %97, i32 0, i32 0
  %98 = load i8*, i8** %data79, align 8
  %99 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config80 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %99, i32 0, i32 1
  %100 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config80, align 8
  %thumbnail_size81 = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %100, i32 0, i32 44
  %101 = load i32, i32* %thumbnail_size81, align 4
  %102 = load i32, i32* %force.addr, align 4
  %103 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  call void @gimp_thumb_box_create_thumbnail(%struct._GimpThumbBox* %95, i8* %98, i32 %101, i32 %102, %struct._GimpProgress* %103)
  %104 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  call void @gimp_progress_set_value(%struct._GimpProgress* %104, double 1.000000e+00)
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.77, %if.end.74
  br label %canceled.83

canceled.83:                                      ; preds = %if.end.82, %if.then.57
  %105 = load i32, i32* %n_uris, align 4
  %cmp84 = icmp sgt i32 %105, 1
  br i1 %cmp84, label %if.then.85, label %if.end.91

if.then.85:                                       ; preds = %canceled.83
  %106 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  %107 = bitcast %struct._GimpProgress* %106 to i8*
  call void @g_object_unref(i8* %107)
  %108 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box.addr, align 8
  %109 = bitcast %struct._GimpThumbBox* %108 to %struct._GTypeInstance*
  %call86 = call i64 @gimp_progress_interface_get_type() #6
  %call87 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %109, i64 %call86)
  %110 = bitcast %struct._GTypeInstance* %call87 to %struct._GimpProgress*
  call void @gimp_progress_end(%struct._GimpProgress* %110)
  %111 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box.addr, align 8
  %progress88 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %111, i32 0, i32 8
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %progress88, align 8
  %113 = bitcast %struct._GtkWidget* %112 to %struct._GTypeInstance*
  %call89 = call i64 @gtk_progress_bar_get_type() #6
  %call90 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %113, i64 %call89)
  %114 = bitcast %struct._GTypeInstance* %call90 to %struct._GtkProgressBar*
  call void @gtk_progress_bar_set_text(%struct._GtkProgressBar* %114, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.85, %canceled.83
  %115 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box.addr, align 8
  %uris92 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %115, i32 0, i32 3
  %116 = load %struct._GSList*, %struct._GSList** %uris92, align 8
  %tobool93 = icmp ne %struct._GSList* %116, null
  br i1 %tobool93, label %if.then.94, label %if.end.97

if.then.94:                                       ; preds = %if.end.91
  %117 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box.addr, align 8
  %progress95 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %117, i32 0, i32 8
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** %progress95, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %118)
  %119 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box.addr, align 8
  %info96 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %119, i32 0, i32 6
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %info96, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %120)
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.94, %if.end.91
  %121 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %tobool98 = icmp ne %struct._GimpFileDialog* %121, null
  br i1 %tobool98, label %if.then.99, label %if.else.100

if.then.99:                                       ; preds = %if.end.97
  %122 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  call void @gimp_file_dialog_set_sensitive(%struct._GimpFileDialog* %122, i32 1)
  br label %if.end.101

if.else.100:                                      ; preds = %if.end.97
  %123 = load %struct._GtkWidget*, %struct._GtkWidget** %toplevel, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %123, i32 1)
  br label %if.end.101

if.end.101:                                       ; preds = %if.else.100, %if.then.99
  %124 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  call void @gimp_unset_busy(%struct._Gimp* %124)
  br label %return

return:                                           ; preds = %if.end.101, %if.then
  ret void
}

declare void @gimp_set_busy(%struct._Gimp*) #1

declare void @gimp_file_dialog_set_sensitive(%struct._GimpFileDialog*, i32) #1

declare void @gtk_widget_hide(%struct._GtkWidget*) #1

declare i32 @g_slist_length(%struct._GSList*) #1

declare %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress*, i8*, i32) #1

declare %struct._GimpProgress* @gimp_sub_progress_new(%struct._GimpProgress*) #1

declare void @gimp_sub_progress_set_step(%struct._GimpSubProgress*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_sub_progress_get_type() #2

declare void @gimp_progress_set_value(%struct._GimpProgress*, double) #1

declare i32 @gtk_events_pending() #1

declare i32 @gtk_main_iteration() #1

; Function Attrs: nounwind uwtable
define internal void @gimp_thumb_box_create_thumbnail(%struct._GimpThumbBox* %box, i8* %uri, i32 %size, i32 %force, %struct._GimpProgress* %progress) #3 {
entry:
  %box.addr = alloca %struct._GimpThumbBox*, align 8
  %uri.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %force.addr = alloca i32, align 4
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %filename = alloca i8*, align 8
  %thumb = alloca %struct._GimpThumbnail*, align 8
  %basename = alloca i8*, align 8
  %regular = alloca i32, align 4
  store %struct._GimpThumbBox* %box, %struct._GimpThumbBox** %box.addr, align 8
  store i8* %uri, i8** %uri.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 %force, i32* %force.addr, align 4
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load i8*, i8** %uri.addr, align 8
  %call = call i8* @file_utils_filename_from_uri(i8* %0)
  store i8* %call, i8** %filename, align 8
  %1 = load i8*, i8** %filename, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %filename, align 8
  %call1 = call i32 @g_file_test(i8* %2, i32 1)
  store i32 %call1, i32* %regular, align 4
  %3 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %3)
  %4 = load i32, i32* %regular, align 4
  %tobool2 = icmp ne i32 %4, 0
  br i1 %tobool2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  br label %if.end.21

if.end:                                           ; preds = %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %5 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box.addr, align 8
  %imagefile = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %5, i32 0, i32 2
  %6 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  %call5 = call %struct._GimpThumbnail* @gimp_imagefile_get_thumbnail(%struct._GimpImagefile* %6)
  store %struct._GimpThumbnail* %call5, %struct._GimpThumbnail** %thumb, align 8
  %7 = load i8*, i8** %uri.addr, align 8
  %call6 = call i8* @file_utils_uri_display_basename(i8* %7)
  store i8* %call6, i8** %basename, align 8
  %8 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box.addr, align 8
  %filename7 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %8, i32 0, i32 5
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %filename7, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_label_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call8)
  %11 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkLabel*
  %12 = load i8*, i8** %basename, align 8
  call void @gtk_label_set_text(%struct._GtkLabel* %11, i8* %12)
  %13 = load i8*, i8** %basename, align 8
  call void @g_free(i8* %13)
  %14 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box.addr, align 8
  %imagefile10 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %14, i32 0, i32 2
  %15 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile10, align 8
  %16 = bitcast %struct._GimpImagefile* %15 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_object_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call11)
  %17 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpObject*
  %18 = load i8*, i8** %uri.addr, align 8
  call void @gimp_object_set_name(%struct._GimpObject* %17, i8* %18)
  %19 = load i32, i32* %force.addr, align 4
  %tobool13 = icmp ne i32 %19, 0
  br i1 %tobool13, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.4
  %20 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumb, align 8
  %21 = load i32, i32* %size.addr, align 4
  %call14 = call i32 @gimp_thumbnail_peek_thumb(%struct._GimpThumbnail* %20, i32 %21)
  %cmp = icmp ult i32 %call14, 7
  br i1 %cmp, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %lor.lhs.false
  %22 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumb, align 8
  %call15 = call i32 @gimp_thumbnail_has_failed(%struct._GimpThumbnail* %22)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end.21, label %if.then.17

if.then.17:                                       ; preds = %land.lhs.true, %if.end.4
  %23 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box.addr, align 8
  %imagefile18 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %23, i32 0, i32 2
  %24 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile18, align 8
  %25 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box.addr, align 8
  %context = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %25, i32 0, i32 1
  %26 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %27 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %28 = load i32, i32* %size.addr, align 4
  %29 = load i32, i32* %force.addr, align 4
  %tobool19 = icmp ne i32 %29, 0
  %lnot = xor i1 %tobool19, true
  %lnot.ext = zext i1 %lnot to i32
  %call20 = call i32 @gimp_imagefile_create_thumbnail(%struct._GimpImagefile* %24, %struct._GimpContext* %26, %struct._GimpProgress* %27, i32 %28, i32 %lnot.ext)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.3, %if.then.17, %land.lhs.true, %lor.lhs.false
  ret void
}

declare void @gimp_progress_end(%struct._GimpProgress*) #1

declare void @gimp_unset_busy(%struct._Gimp*) #1

declare i8* @file_utils_filename_from_uri(i8*) #1

declare i32 @g_file_test(i8*, i32) #1

declare void @gimp_object_set_name(%struct._GimpObject*, i8*) #1

declare i32 @gimp_thumbnail_peek_thumb(%struct._GimpThumbnail*, i32) #1

declare i32 @gimp_thumbnail_has_failed(%struct._GimpThumbnail*) #1

declare i32 @gimp_imagefile_create_thumbnail(%struct._GimpImagefile*, %struct._GimpContext*, %struct._GimpProgress*, i32, i32) #1

declare i8* @gimp_imagefile_get_desc_string(%struct._GimpImagefile*) #1

; Function Attrs: nounwind uwtable
define internal void @this_is_ugly(%struct._GtkWidget* %widget, %struct._GdkRectangle* %allocation, i8* %data) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %allocation.addr = alloca %struct._GdkRectangle*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkRectangle* %allocation, %struct._GdkRectangle** %allocation.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_queue_resize(%struct._GtkWidget* %0)
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to i8*
  %3 = load i8*, i8** %data.addr, align 8
  %call = call i32 @g_signal_handlers_disconnect_matched(i8* %2, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GdkRectangle*, i8*)* @this_is_ugly to i8*), i8* %3)
  ret void
}

declare void @gtk_widget_queue_resize(%struct._GtkWidget*) #1

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare i32 @g_idle_add_full(i32, i32 (i8*)*, i8*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_thumb_box_auto_thumbnail(%struct._GimpThumbBox* %box) #3 {
entry:
  %retval = alloca i32, align 4
  %box.addr = alloca %struct._GimpThumbBox*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  %thumb = alloca %struct._GimpThumbnail*, align 8
  %uri = alloca i8*, align 8
  %size = alloca i8*, align 8
  %text = alloca i8*, align 8
  store %struct._GimpThumbBox* %box, %struct._GimpThumbBox** %box.addr, align 8
  %0 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box.addr, align 8
  %context = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %0, i32 0, i32 1
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp1 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %1, i32 0, i32 1
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp1, align 8
  store %struct._Gimp* %2, %struct._Gimp** %gimp, align 8
  %3 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box.addr, align 8
  %imagefile = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %3, i32 0, i32 2
  %4 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  %call = call %struct._GimpThumbnail* @gimp_imagefile_get_thumbnail(%struct._GimpImagefile* %4)
  store %struct._GimpThumbnail* %call, %struct._GimpThumbnail** %thumb, align 8
  %5 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box.addr, align 8
  %imagefile2 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %5, i32 0, i32 2
  %6 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile2, align 8
  %7 = bitcast %struct._GimpImagefile* %6 to i8*
  %call3 = call i8* @gimp_object_get_name(i8* %7)
  store i8* %call3, i8** %uri, align 8
  %8 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box.addr, align 8
  %idle_id = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %8, i32 0, i32 9
  store i32 0, i32* %idle_id, align 4
  %9 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumb, align 8
  %image_state = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %9, i32 0, i32 1
  %10 = load i32, i32* %image_state, align 4
  %cmp = icmp eq i32 %10, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %11 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumb, align 8
  %thumb_state = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %11, i32 0, i32 11
  %12 = load i32, i32* %thumb_state, align 4
  switch i32 %12, label %sw.default [
    i32 4, label %sw.bb
    i32 6, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end, %if.end
  %13 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumb, align 8
  %image_filesize = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %13, i32 0, i32 4
  %14 = load i64, i64* %image_filesize, align 8
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %15, i32 0, i32 1
  %16 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %thumbnail_filesize_limit = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %16, i32 0, i32 45
  %17 = load i64, i64* %thumbnail_filesize_limit, align 8
  %cmp4 = icmp ult i64 %14, %17
  br i1 %cmp4, label %land.lhs.true, label %if.end.29

land.lhs.true:                                    ; preds = %sw.bb
  %18 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumb, align 8
  %call5 = call i32 @gimp_thumbnail_has_failed(%struct._GimpThumbnail* %18)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.end.29, label %land.lhs.true.6

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %19 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %plug_in_manager = getelementptr inbounds %struct._Gimp, %struct._Gimp* %19, i32 0, i32 25
  %20 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager, align 8
  %load_procs = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %20, i32 0, i32 5
  %21 = load %struct._GSList*, %struct._GSList** %load_procs, align 8
  %22 = load i8*, i8** %uri, align 8
  %call7 = call %struct._GimpPlugInProcedure* @file_procedure_find_by_extension(%struct._GSList* %21, i8* %22)
  %tobool8 = icmp ne %struct._GimpPlugInProcedure* %call7, null
  br i1 %tobool8, label %if.then.9, label %if.end.29

if.then.9:                                        ; preds = %land.lhs.true.6
  %23 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumb, align 8
  %image_filesize10 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %23, i32 0, i32 4
  %24 = load i64, i64* %image_filesize10, align 8
  %cmp11 = icmp sgt i64 %24, 0
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then.9
  %25 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumb, align 8
  %image_filesize13 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %25, i32 0, i32 4
  %26 = load i64, i64* %image_filesize13, align 8
  %call14 = call i8* @g_format_size(i64 %26)
  store i8* %call14, i8** %size, align 8
  %27 = load i8*, i8** %size, align 8
  %call15 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0)) #8
  %call16 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i8* %27, i8* %call15)
  store i8* %call16, i8** %text, align 8
  %28 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box.addr, align 8
  %info = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %28, i32 0, i32 6
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %info, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_label_get_type() #6
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call17)
  %31 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkLabel*
  %32 = load i8*, i8** %text, align 8
  call void @gtk_label_set_text(%struct._GtkLabel* %31, i8* %32)
  %33 = load i8*, i8** %text, align 8
  call void @g_free(i8* %33)
  %34 = load i8*, i8** %size, align 8
  call void @g_free(i8* %34)
  br label %if.end.23

if.else:                                          ; preds = %if.then.9
  %35 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box.addr, align 8
  %info19 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %35, i32 0, i32 6
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %info19, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_label_get_type() #6
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call20)
  %38 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkLabel*
  %call22 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0)) #8
  call void @gtk_label_set_text(%struct._GtkLabel* %38, i8* %call22)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %if.then.12
  %39 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box.addr, align 8
  %imagefile24 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %39, i32 0, i32 2
  %40 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile24, align 8
  %41 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box.addr, align 8
  %context25 = getelementptr inbounds %struct._GimpThumbBox, %struct._GimpThumbBox* %41, i32 0, i32 1
  %42 = load %struct._GimpContext*, %struct._GimpContext** %context25, align 8
  %43 = load %struct._GimpThumbBox*, %struct._GimpThumbBox** %box.addr, align 8
  %44 = bitcast %struct._GimpThumbBox* %43 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_progress_interface_get_type() #6
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call26)
  %45 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpProgress*
  %46 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config28 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %46, i32 0, i32 1
  %47 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config28, align 8
  %thumbnail_size = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %47, i32 0, i32 44
  %48 = load i32, i32* %thumbnail_size, align 4
  call void @gimp_imagefile_create_thumbnail_weak(%struct._GimpImagefile* %40, %struct._GimpContext* %42, %struct._GimpProgress* %45, i32 %48, i32 1)
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.23, %land.lhs.true.6, %land.lhs.true, %sw.bb
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.29
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then
  %49 = load i32, i32* %retval
  ret i32 %49
}

declare i8* @gimp_object_get_name(i8*) #1

declare %struct._GimpPlugInProcedure* @file_procedure_find_by_extension(%struct._GSList*, i8*) #1

declare i8* @g_format_size(i64) #1

declare void @gimp_imagefile_create_thumbnail_weak(%struct._GimpImagefile*, %struct._GimpContext*, %struct._GimpProgress*, i32, i32) #1

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
