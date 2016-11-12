; ModuleID = './app/widgets/gimpimagepropview.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpImagePropViewClass = type { %struct._GtkTableClass }
%struct._GtkTableClass = type { %struct._GtkContainerClass }
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
%struct._GimpImagePropView = type { %struct._GtkTable, %struct._GimpImage*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type { %struct._GimpObject, %struct._Gimp*, %struct._GSList*, i32, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GimpPlugIn*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GimpPlugInShm*, %struct._GimpInterpreterDB*, %struct._GimpEnvironTable*, %struct._GimpPlugInDebug*, %struct._GList* }
%struct._GimpPlugIn = type opaque
%struct._GimpPlugInShm = type opaque
%struct._GimpInterpreterDB = type opaque
%struct._GimpEnvironTable = type opaque
%struct._GimpPlugInDebug = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpContext = type opaque
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GtkLabelSelectionInfo = type opaque
%struct._GimpUndoStack = type { %struct._GimpUndo, %struct._GimpContainer* }
%struct._GimpUndo = type { %struct._GimpViewable, %struct._GimpImage*, i32, i32, i32, %struct._TempBuf*, i32 }
%struct._TempBuf = type opaque
%struct._GFile = type opaque
%struct._GFileInfo = type opaque
%struct._GCancellable = type { %struct._GObject, %struct._GCancellablePrivate* }
%struct._GCancellablePrivate = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GimpPlugInProcedure = type { %struct._GimpProcedure, i8*, i32, i32, i8*, %struct._GList*, i8*, i32, i32, i8*, i8*, i32, i64, i32, i32, i8*, i8*, i8*, i8*, %struct._GSList*, %struct._GSList*, %struct._GSList*, i8* }
%struct._GimpProcedure = type { %struct._GimpObject, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GParamSpec**, i32, %struct._GParamSpec**, %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* }
%struct._GValueArray = type { i32, %struct._GValue*, i32 }

@gimp_image_prop_view_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"GimpImagePropView\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_image_prop_view_new = private unnamed_addr constant [25 x i8] c"gimp_image_prop_view_new\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@gimp_image_prop_view_parent_class = internal global i8* null, align 8
@GimpImagePropView_private_offset = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"gimpimagepropview.c\00", align 1
@__func__.gimp_image_prop_view_constructed = private unnamed_addr constant [33 x i8] c"gimp_image_prop_view_constructed\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"view->image != NULL\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"name-changed\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"size-changed\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"resolution-changed\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"unit-changed\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"mode-changed\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"undo-event\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"standard::size\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"%d \C3\97 %d pixel\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"%d \C3\97 %d pixels\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"%%.%df \C3\97 %%.%df %s\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"pixels/%s\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"%g \C3\97 %g %s\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"ppi\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"%s (%d %s)\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"colors\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"%d (%s)\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.25 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"Size in pixels:\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"Print size:\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"Resolution:\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"Color space:\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"File Name:\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"File Size:\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"File Type:\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"Size in memory:\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"Undo steps:\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"Redo steps:\00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c"Number of pixels:\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"Number of layers:\00", align 1
@.str.39 = private unnamed_addr constant [20 x i8] c"Number of channels:\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"Number of paths:\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"xalign\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"yalign\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"selectable\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_image_prop_view_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_image_prop_view_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_image_prop_view_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_table_get_type() #8
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 824, void (i8*, i8*)* bitcast (void (i8*)* @gimp_image_prop_view_class_intern_init to void (i8*, i8*)*), i32 272, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpImagePropView*)* @gimp_image_prop_view_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_image_prop_view_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_image_prop_view_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_image_prop_view_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_image_prop_view_parent_class, align 8
  %1 = load i32, i32* @GimpImagePropView_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpImagePropView_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpImagePropViewClass*
  call void @gimp_image_prop_view_class_init(%struct._GimpImagePropViewClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_image_prop_view_init(%struct._GimpImagePropView* %view) #3 {
entry:
  %view.addr = alloca %struct._GimpImagePropView*, align 8
  %table = alloca %struct._GtkTable*, align 8
  %row = alloca i32, align 4
  store %struct._GimpImagePropView* %view, %struct._GimpImagePropView** %view.addr, align 8
  %0 = load %struct._GimpImagePropView*, %struct._GimpImagePropView** %view.addr, align 8
  %1 = bitcast %struct._GimpImagePropView* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_table_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkTable*
  store %struct._GtkTable* %2, %struct._GtkTable** %table, align 8
  store i32 0, i32* %row, align 4
  %3 = load %struct._GtkTable*, %struct._GtkTable** %table, align 8
  call void @gtk_table_resize(%struct._GtkTable* %3, i32 14, i32 2)
  %4 = load %struct._GtkTable*, %struct._GtkTable** %table, align 8
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %4, i32 6)
  %5 = load %struct._GtkTable*, %struct._GtkTable** %table, align 8
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %5, i32 3)
  %6 = load %struct._GtkTable*, %struct._GtkTable** %table, align 8
  %7 = load i32, i32* %row, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %row, align 4
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i32 0, i32 0)) #7
  %call3 = call %struct._GtkWidget* @gimp_image_prop_view_add_label(%struct._GtkTable* %6, i32 %7, i8* %call2)
  %8 = load %struct._GimpImagePropView*, %struct._GimpImagePropView** %view.addr, align 8
  %pixel_size_label = getelementptr inbounds %struct._GimpImagePropView, %struct._GimpImagePropView* %8, i32 0, i32 2
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %pixel_size_label, align 8
  %9 = load %struct._GtkTable*, %struct._GtkTable** %table, align 8
  %10 = load i32, i32* %row, align 4
  %inc4 = add nsw i32 %10, 1
  store i32 %inc4, i32* %row, align 4
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0)) #7
  %call6 = call %struct._GtkWidget* @gimp_image_prop_view_add_label(%struct._GtkTable* %9, i32 %10, i8* %call5)
  %11 = load %struct._GimpImagePropView*, %struct._GimpImagePropView** %view.addr, align 8
  %print_size_label = getelementptr inbounds %struct._GimpImagePropView, %struct._GimpImagePropView* %11, i32 0, i32 3
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %print_size_label, align 8
  %12 = load %struct._GtkTable*, %struct._GtkTable** %table, align 8
  %13 = load i32, i32* %row, align 4
  %inc7 = add nsw i32 %13, 1
  store i32 %inc7, i32* %row, align 4
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0)) #7
  %call9 = call %struct._GtkWidget* @gimp_image_prop_view_add_label(%struct._GtkTable* %12, i32 %13, i8* %call8)
  %14 = load %struct._GimpImagePropView*, %struct._GimpImagePropView** %view.addr, align 8
  %resolution_label = getelementptr inbounds %struct._GimpImagePropView, %struct._GimpImagePropView* %14, i32 0, i32 4
  store %struct._GtkWidget* %call9, %struct._GtkWidget** %resolution_label, align 8
  %15 = load %struct._GtkTable*, %struct._GtkTable** %table, align 8
  %16 = load i32, i32* %row, align 4
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0)) #7
  %call11 = call %struct._GtkWidget* @gimp_image_prop_view_add_label(%struct._GtkTable* %15, i32 %16, i8* %call10)
  %17 = load %struct._GimpImagePropView*, %struct._GimpImagePropView** %view.addr, align 8
  %colorspace_label = getelementptr inbounds %struct._GimpImagePropView, %struct._GimpImagePropView* %17, i32 0, i32 5
  store %struct._GtkWidget* %call11, %struct._GtkWidget** %colorspace_label, align 8
  %18 = load %struct._GimpImagePropView*, %struct._GimpImagePropView** %view.addr, align 8
  %19 = bitcast %struct._GimpImagePropView* %18 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_table_get_type() #8
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call12)
  %20 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkTable*
  %21 = load i32, i32* %row, align 4
  %inc14 = add nsw i32 %21, 1
  store i32 %inc14, i32* %row, align 4
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %20, i32 %21, i32 12)
  %22 = load %struct._GtkTable*, %struct._GtkTable** %table, align 8
  %23 = load i32, i32* %row, align 4
  %inc15 = add nsw i32 %23, 1
  store i32 %inc15, i32* %row, align 4
  %call16 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0)) #7
  %call17 = call %struct._GtkWidget* @gimp_image_prop_view_add_label(%struct._GtkTable* %22, i32 %23, i8* %call16)
  %24 = load %struct._GimpImagePropView*, %struct._GimpImagePropView** %view.addr, align 8
  %filename_label = getelementptr inbounds %struct._GimpImagePropView, %struct._GimpImagePropView* %24, i32 0, i32 6
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %filename_label, align 8
  %25 = load %struct._GimpImagePropView*, %struct._GimpImagePropView** %view.addr, align 8
  %filename_label18 = getelementptr inbounds %struct._GimpImagePropView, %struct._GimpImagePropView* %25, i32 0, i32 6
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %filename_label18, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_label_get_type() #8
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call19)
  %28 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkLabel*
  call void @gtk_label_set_ellipsize(%struct._GtkLabel* %28, i32 2)
  %29 = load %struct._GtkTable*, %struct._GtkTable** %table, align 8
  %30 = load i32, i32* %row, align 4
  %inc21 = add nsw i32 %30, 1
  store i32 %inc21, i32* %row, align 4
  %call22 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0)) #7
  %call23 = call %struct._GtkWidget* @gimp_image_prop_view_add_label(%struct._GtkTable* %29, i32 %30, i8* %call22)
  %31 = load %struct._GimpImagePropView*, %struct._GimpImagePropView** %view.addr, align 8
  %filesize_label = getelementptr inbounds %struct._GimpImagePropView, %struct._GimpImagePropView* %31, i32 0, i32 7
  store %struct._GtkWidget* %call23, %struct._GtkWidget** %filesize_label, align 8
  %32 = load %struct._GtkTable*, %struct._GtkTable** %table, align 8
  %33 = load i32, i32* %row, align 4
  %call24 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i32 0, i32 0)) #7
  %call25 = call %struct._GtkWidget* @gimp_image_prop_view_add_label(%struct._GtkTable* %32, i32 %33, i8* %call24)
  %34 = load %struct._GimpImagePropView*, %struct._GimpImagePropView** %view.addr, align 8
  %filetype_label = getelementptr inbounds %struct._GimpImagePropView, %struct._GimpImagePropView* %34, i32 0, i32 8
  store %struct._GtkWidget* %call25, %struct._GtkWidget** %filetype_label, align 8
  %35 = load %struct._GimpImagePropView*, %struct._GimpImagePropView** %view.addr, align 8
  %36 = bitcast %struct._GimpImagePropView* %35 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_table_get_type() #8
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call26)
  %37 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkTable*
  %38 = load i32, i32* %row, align 4
  %inc28 = add nsw i32 %38, 1
  store i32 %inc28, i32* %row, align 4
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %37, i32 %38, i32 12)
  %39 = load %struct._GtkTable*, %struct._GtkTable** %table, align 8
  %40 = load i32, i32* %row, align 4
  %inc29 = add nsw i32 %40, 1
  store i32 %inc29, i32* %row, align 4
  %call30 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i32 0, i32 0)) #7
  %call31 = call %struct._GtkWidget* @gimp_image_prop_view_add_label(%struct._GtkTable* %39, i32 %40, i8* %call30)
  %41 = load %struct._GimpImagePropView*, %struct._GimpImagePropView** %view.addr, align 8
  %memsize_label = getelementptr inbounds %struct._GimpImagePropView, %struct._GimpImagePropView* %41, i32 0, i32 9
  store %struct._GtkWidget* %call31, %struct._GtkWidget** %memsize_label, align 8
  %42 = load %struct._GtkTable*, %struct._GtkTable** %table, align 8
  %43 = load i32, i32* %row, align 4
  %inc32 = add nsw i32 %43, 1
  store i32 %inc32, i32* %row, align 4
  %call33 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i32 0, i32 0)) #7
  %call34 = call %struct._GtkWidget* @gimp_image_prop_view_add_label(%struct._GtkTable* %42, i32 %43, i8* %call33)
  %44 = load %struct._GimpImagePropView*, %struct._GimpImagePropView** %view.addr, align 8
  %undo_label = getelementptr inbounds %struct._GimpImagePropView, %struct._GimpImagePropView* %44, i32 0, i32 10
  store %struct._GtkWidget* %call34, %struct._GtkWidget** %undo_label, align 8
  %45 = load %struct._GtkTable*, %struct._GtkTable** %table, align 8
  %46 = load i32, i32* %row, align 4
  %call35 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i32 0, i32 0)) #7
  %call36 = call %struct._GtkWidget* @gimp_image_prop_view_add_label(%struct._GtkTable* %45, i32 %46, i8* %call35)
  %47 = load %struct._GimpImagePropView*, %struct._GimpImagePropView** %view.addr, align 8
  %redo_label = getelementptr inbounds %struct._GimpImagePropView, %struct._GimpImagePropView* %47, i32 0, i32 11
  store %struct._GtkWidget* %call36, %struct._GtkWidget** %redo_label, align 8
  %48 = load %struct._GimpImagePropView*, %struct._GimpImagePropView** %view.addr, align 8
  %49 = bitcast %struct._GimpImagePropView* %48 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_table_get_type() #8
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call37)
  %50 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkTable*
  %51 = load i32, i32* %row, align 4
  %inc39 = add nsw i32 %51, 1
  store i32 %inc39, i32* %row, align 4
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %50, i32 %51, i32 12)
  %52 = load %struct._GtkTable*, %struct._GtkTable** %table, align 8
  %53 = load i32, i32* %row, align 4
  %inc40 = add nsw i32 %53, 1
  store i32 %inc40, i32* %row, align 4
  %call41 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.37, i32 0, i32 0)) #7
  %call42 = call %struct._GtkWidget* @gimp_image_prop_view_add_label(%struct._GtkTable* %52, i32 %53, i8* %call41)
  %54 = load %struct._GimpImagePropView*, %struct._GimpImagePropView** %view.addr, align 8
  %pixels_label = getelementptr inbounds %struct._GimpImagePropView, %struct._GimpImagePropView* %54, i32 0, i32 12
  store %struct._GtkWidget* %call42, %struct._GtkWidget** %pixels_label, align 8
  %55 = load %struct._GtkTable*, %struct._GtkTable** %table, align 8
  %56 = load i32, i32* %row, align 4
  %inc43 = add nsw i32 %56, 1
  store i32 %inc43, i32* %row, align 4
  %call44 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.38, i32 0, i32 0)) #7
  %call45 = call %struct._GtkWidget* @gimp_image_prop_view_add_label(%struct._GtkTable* %55, i32 %56, i8* %call44)
  %57 = load %struct._GimpImagePropView*, %struct._GimpImagePropView** %view.addr, align 8
  %layers_label = getelementptr inbounds %struct._GimpImagePropView, %struct._GimpImagePropView* %57, i32 0, i32 13
  store %struct._GtkWidget* %call45, %struct._GtkWidget** %layers_label, align 8
  %58 = load %struct._GtkTable*, %struct._GtkTable** %table, align 8
  %59 = load i32, i32* %row, align 4
  %inc46 = add nsw i32 %59, 1
  store i32 %inc46, i32* %row, align 4
  %call47 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.39, i32 0, i32 0)) #7
  %call48 = call %struct._GtkWidget* @gimp_image_prop_view_add_label(%struct._GtkTable* %58, i32 %59, i8* %call47)
  %60 = load %struct._GimpImagePropView*, %struct._GimpImagePropView** %view.addr, align 8
  %channels_label = getelementptr inbounds %struct._GimpImagePropView, %struct._GimpImagePropView* %60, i32 0, i32 14
  store %struct._GtkWidget* %call48, %struct._GtkWidget** %channels_label, align 8
  %61 = load %struct._GtkTable*, %struct._GtkTable** %table, align 8
  %62 = load i32, i32* %row, align 4
  %inc49 = add nsw i32 %62, 1
  store i32 %inc49, i32* %row, align 4
  %call50 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.40, i32 0, i32 0)) #7
  %call51 = call %struct._GtkWidget* @gimp_image_prop_view_add_label(%struct._GtkTable* %61, i32 %62, i8* %call50)
  %63 = load %struct._GimpImagePropView*, %struct._GimpImagePropView** %view.addr, align 8
  %vectors_label = getelementptr inbounds %struct._GimpImagePropView, %struct._GimpImagePropView* %63, i32 0, i32 15
  store %struct._GtkWidget* %call51, %struct._GtkWidget** %vectors_label, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_image_prop_view_new(%struct._GimpImage* %image) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_image_prop_view_new, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_image_prop_view_get_type() #8
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call12 = call i8* (i64, i8*, ...) @g_object_new(i64 %call11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), %struct._GimpImage* %13, i8* null)
  %14 = bitcast i8* %call12 to %struct._GtkWidget*
  store %struct._GtkWidget* %14, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %15
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_image_prop_view_class_init(%struct._GimpImagePropViewClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpImagePropViewClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpImagePropViewClass* %klass, %struct._GimpImagePropViewClass** %klass.addr, align 8
  %0 = load %struct._GimpImagePropViewClass*, %struct._GimpImagePropViewClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpImagePropViewClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_image_prop_view_constructed, void (%struct._GObject*)** %constructed, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_image_prop_view_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_image_prop_view_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call1 = call i64 @gimp_image_get_type() #8
  %call2 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* null, i64 %call1, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %6, i32 1, %struct._GParamSpec* %call2)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_image_prop_view_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %view = alloca %struct._GimpImagePropView*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_prop_view_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImagePropView*
  store %struct._GimpImagePropView* %2, %struct._GimpImagePropView** %view, align 8
  %3 = load i8*, i8** @gimp_image_prop_view_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 9
  %6 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_image_prop_view_parent_class, align 8
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
  %12 = load %struct._GimpImagePropView*, %struct._GimpImagePropView** %view, align 8
  %image = getelementptr inbounds %struct._GimpImagePropView, %struct._GimpImagePropView* %12, i32 0, i32 1
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp = icmp ne %struct._GimpImage* %13, null
  br i1 %cmp, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body
  br label %if.end.6

if.else:                                          ; preds = %do.body
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 173, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_image_prop_view_constructed, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0)) #10
  unreachable

if.end.6:                                         ; preds = %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.6
  %14 = load %struct._GimpImagePropView*, %struct._GimpImagePropView** %view, align 8
  %image7 = getelementptr inbounds %struct._GimpImagePropView, %struct._GimpImagePropView* %14, i32 0, i32 1
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image7, align 8
  %16 = bitcast %struct._GimpImage* %15 to i8*
  %17 = load %struct._GimpImagePropView*, %struct._GimpImagePropView** %view, align 8
  %18 = bitcast %struct._GimpImagePropView* %17 to %struct._GTypeInstance*
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 80)
  %19 = bitcast %struct._GTypeInstance* %call8 to %struct._GObject*
  %20 = bitcast %struct._GObject* %19 to i8*
  %call9 = call i64 @g_signal_connect_object(i8* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImagePropView*)* @gimp_image_prop_view_file_update to void ()*), i8* %20, i32 2)
  %21 = load %struct._GimpImagePropView*, %struct._GimpImagePropView** %view, align 8
  %image10 = getelementptr inbounds %struct._GimpImagePropView, %struct._GimpImagePropView* %21, i32 0, i32 1
  %22 = load %struct._GimpImage*, %struct._GimpImage** %image10, align 8
  %23 = bitcast %struct._GimpImage* %22 to i8*
  %24 = load %struct._GimpImagePropView*, %struct._GimpImagePropView** %view, align 8
  %25 = bitcast %struct._GimpImagePropView* %24 to %struct._GTypeInstance*
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 80)
  %26 = bitcast %struct._GTypeInstance* %call11 to %struct._GObject*
  %27 = bitcast %struct._GObject* %26 to i8*
  %call12 = call i64 @g_signal_connect_object(i8* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImagePropView*)* @gimp_image_prop_view_update to void ()*), i8* %27, i32 2)
  %28 = load %struct._GimpImagePropView*, %struct._GimpImagePropView** %view, align 8
  %image13 = getelementptr inbounds %struct._GimpImagePropView, %struct._GimpImagePropView* %28, i32 0, i32 1
  %29 = load %struct._GimpImage*, %struct._GimpImage** %image13, align 8
  %30 = bitcast %struct._GimpImage* %29 to i8*
  %31 = load %struct._GimpImagePropView*, %struct._GimpImagePropView** %view, align 8
  %32 = bitcast %struct._GimpImagePropView* %31 to %struct._GTypeInstance*
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 80)
  %33 = bitcast %struct._GTypeInstance* %call14 to %struct._GObject*
  %34 = bitcast %struct._GObject* %33 to i8*
  %call15 = call i64 @g_signal_connect_object(i8* %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImagePropView*)* @gimp_image_prop_view_update to void ()*), i8* %34, i32 2)
  %35 = load %struct._GimpImagePropView*, %struct._GimpImagePropView** %view, align 8
  %image16 = getelementptr inbounds %struct._GimpImagePropView, %struct._GimpImagePropView* %35, i32 0, i32 1
  %36 = load %struct._GimpImage*, %struct._GimpImage** %image16, align 8
  %37 = bitcast %struct._GimpImage* %36 to i8*
  %38 = load %struct._GimpImagePropView*, %struct._GimpImagePropView** %view, align 8
  %39 = bitcast %struct._GimpImagePropView* %38 to %struct._GTypeInstance*
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 80)
  %40 = bitcast %struct._GTypeInstance* %call17 to %struct._GObject*
  %41 = bitcast %struct._GObject* %40 to i8*
  %call18 = call i64 @g_signal_connect_object(i8* %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImagePropView*)* @gimp_image_prop_view_update to void ()*), i8* %41, i32 2)
  %42 = load %struct._GimpImagePropView*, %struct._GimpImagePropView** %view, align 8
  %image19 = getelementptr inbounds %struct._GimpImagePropView, %struct._GimpImagePropView* %42, i32 0, i32 1
  %43 = load %struct._GimpImage*, %struct._GimpImage** %image19, align 8
  %44 = bitcast %struct._GimpImage* %43 to i8*
  %45 = load %struct._GimpImagePropView*, %struct._GimpImagePropView** %view, align 8
  %46 = bitcast %struct._GimpImagePropView* %45 to %struct._GTypeInstance*
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 80)
  %47 = bitcast %struct._GTypeInstance* %call20 to %struct._GObject*
  %48 = bitcast %struct._GObject* %47 to i8*
  %call21 = call i64 @g_signal_connect_object(i8* %44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImagePropView*)* @gimp_image_prop_view_update to void ()*), i8* %48, i32 2)
  %49 = load %struct._GimpImagePropView*, %struct._GimpImagePropView** %view, align 8
  %image22 = getelementptr inbounds %struct._GimpImagePropView, %struct._GimpImagePropView* %49, i32 0, i32 1
  %50 = load %struct._GimpImage*, %struct._GimpImage** %image22, align 8
  %51 = bitcast %struct._GimpImage* %50 to i8*
  %52 = load %struct._GimpImagePropView*, %struct._GimpImagePropView** %view, align 8
  %53 = bitcast %struct._GimpImagePropView* %52 to %struct._GTypeInstance*
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 80)
  %54 = bitcast %struct._GTypeInstance* %call23 to %struct._GObject*
  %55 = bitcast %struct._GObject* %54 to i8*
  %call24 = call i64 @g_signal_connect_object(i8* %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImage*, i32, %struct._GimpUndo*, %struct._GimpImagePropView*)* @gimp_image_prop_view_undo_event to void ()*), i8* %55, i32 0)
  %56 = load %struct._GimpImagePropView*, %struct._GimpImagePropView** %view, align 8
  call void @gimp_image_prop_view_update(%struct._GimpImagePropView* %56)
  %57 = load %struct._GimpImagePropView*, %struct._GimpImagePropView** %view, align 8
  call void @gimp_image_prop_view_file_update(%struct._GimpImagePropView* %57)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_image_prop_view_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %view = alloca %struct._GimpImagePropView*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_prop_view_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImagePropView*
  store %struct._GimpImagePropView* %2, %struct._GimpImagePropView** %view, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_get_object(%struct._GValue* %4)
  %5 = bitcast i8* %call2 to %struct._GimpImage*
  %6 = load %struct._GimpImagePropView*, %struct._GimpImagePropView** %view, align 8
  %image = getelementptr inbounds %struct._GimpImagePropView, %struct._GimpImagePropView* %6, i32 0, i32 1
  store %struct._GimpImage* %5, %struct._GimpImage** %image, align 8
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
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 219, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i32 %10, i8* %12, i8* %call3, i8* %call6)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_image_prop_view_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %view = alloca %struct._GimpImagePropView*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_prop_view_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImagePropView*
  store %struct._GimpImagePropView* %2, %struct._GimpImagePropView** %view, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpImagePropView*, %struct._GimpImagePropView** %view, align 8
  %image = getelementptr inbounds %struct._GimpImagePropView, %struct._GimpImagePropView* %5, i32 0, i32 1
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %7 = bitcast %struct._GimpImage* %6 to i8*
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
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 238, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i32 %11, i8* %13, i8* %call2, i8* %call5)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #5

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_image_prop_view_file_update(%struct._GimpImagePropView* %view) #3 {
entry:
  %view.addr = alloca %struct._GimpImagePropView*, align 8
  %image = alloca %struct._GimpImage*, align 8
  store %struct._GimpImagePropView* %view, %struct._GimpImagePropView** %view.addr, align 8
  %0 = load %struct._GimpImagePropView*, %struct._GimpImagePropView** %view.addr, align 8
  %image1 = getelementptr inbounds %struct._GimpImagePropView, %struct._GimpImagePropView* %0, i32 0, i32 1
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image1, align 8
  store %struct._GimpImage* %1, %struct._GimpImage** %image, align 8
  %2 = load %struct._GimpImagePropView*, %struct._GimpImagePropView** %view.addr, align 8
  %filename_label = getelementptr inbounds %struct._GimpImagePropView, %struct._GimpImagePropView* %2, i32 0, i32 6
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %filename_label, align 8
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_prop_view_label_set_filename(%struct._GtkWidget* %3, %struct._GimpImage* %4)
  %5 = load %struct._GimpImagePropView*, %struct._GimpImagePropView** %view.addr, align 8
  %filesize_label = getelementptr inbounds %struct._GimpImagePropView, %struct._GimpImagePropView* %5, i32 0, i32 7
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %filesize_label, align 8
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_prop_view_label_set_filesize(%struct._GtkWidget* %6, %struct._GimpImage* %7)
  %8 = load %struct._GimpImagePropView*, %struct._GimpImagePropView** %view.addr, align 8
  %filetype_label = getelementptr inbounds %struct._GimpImagePropView, %struct._GimpImagePropView* %8, i32 0, i32 8
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %filetype_label, align 8
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_prop_view_label_set_filetype(%struct._GtkWidget* %9, %struct._GimpImage* %10)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_image_prop_view_update(%struct._GimpImagePropView* %view) #3 {
entry:
  %view.addr = alloca %struct._GimpImagePropView*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %type = alloca i32, align 4
  %unit = alloca i32, align 4
  %unit_factor = alloca double, align 8
  %unit_digits = alloca i32, align 4
  %desc = alloca i8*, align 8
  %format_buf = alloca [32 x i8], align 16
  %buf = alloca [256 x i8], align 16
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  store %struct._GimpImagePropView* %view, %struct._GimpImagePropView** %view.addr, align 8
  %0 = load %struct._GimpImagePropView*, %struct._GimpImagePropView** %view.addr, align 8
  %image1 = getelementptr inbounds %struct._GimpImagePropView, %struct._GimpImagePropView* %0, i32 0, i32 1
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image1, align 8
  store %struct._GimpImage* %1, %struct._GimpImage** %image, align 8
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_get_resolution(%struct._GimpImage* %2, double* %xres, double* %yres)
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call = call i32 @gimp_image_get_height(%struct._GimpImage* %3)
  %conv = sext i32 %call to i64
  %call2 = call i8* @ngettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0), i64 %conv) #7
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call3 = call i32 @gimp_image_get_width(%struct._GimpImage* %4)
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call4 = call i32 @gimp_image_get_height(%struct._GimpImage* %5)
  %call5 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay, i64 256, i8* %call2, i32 %call3, i32 %call4)
  %6 = load %struct._GimpImagePropView*, %struct._GimpImagePropView** %view.addr, align 8
  %pixel_size_label = getelementptr inbounds %struct._GimpImagePropView, %struct._GimpImagePropView* %6, i32 0, i32 2
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %pixel_size_label, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_label_get_type() #8
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call6)
  %9 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkLabel*
  %arraydecay8 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  call void @gtk_label_set_text(%struct._GtkLabel* %9, i8* %arraydecay8)
  %call9 = call i32 @gimp_get_default_unit()
  store i32 %call9, i32* %unit, align 4
  %10 = load i32, i32* %unit, align 4
  %call10 = call i32 @gimp_unit_get_digits(i32 %10)
  store i32 %call10, i32* %unit_digits, align 4
  %arraydecay11 = getelementptr inbounds [32 x i8], [32 x i8]* %format_buf, i32 0, i32 0
  %11 = load i32, i32* %unit_digits, align 4
  %add = add nsw i32 %11, 1
  %12 = load i32, i32* %unit_digits, align 4
  %add12 = add nsw i32 %12, 1
  %13 = load i32, i32* %unit, align 4
  %call13 = call i8* @gimp_unit_get_plural(i32 %13)
  %call14 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay11, i64 32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0), i32 %add, i32 %add12, i8* %call13)
  %arraydecay15 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %arraydecay16 = getelementptr inbounds [32 x i8], [32 x i8]* %format_buf, i32 0, i32 0
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call17 = call i32 @gimp_image_get_width(%struct._GimpImage* %14)
  %conv18 = sitofp i32 %call17 to double
  %15 = load i32, i32* %unit, align 4
  %16 = load double, double* %xres, align 8
  %call19 = call double @gimp_pixels_to_units(double %conv18, i32 %15, double %16)
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call20 = call i32 @gimp_image_get_height(%struct._GimpImage* %17)
  %conv21 = sitofp i32 %call20 to double
  %18 = load i32, i32* %unit, align 4
  %19 = load double, double* %yres, align 8
  %call22 = call double @gimp_pixels_to_units(double %conv21, i32 %18, double %19)
  %call23 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay15, i64 256, i8* %arraydecay16, double %call19, double %call22)
  %20 = load %struct._GimpImagePropView*, %struct._GimpImagePropView** %view.addr, align 8
  %print_size_label = getelementptr inbounds %struct._GimpImagePropView, %struct._GimpImagePropView* %20, i32 0, i32 3
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %print_size_label, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_label_get_type() #8
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call24)
  %23 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkLabel*
  %arraydecay26 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  call void @gtk_label_set_text(%struct._GtkLabel* %23, i8* %arraydecay26)
  %24 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call27 = call i32 @gimp_image_get_unit(%struct._GimpImage* %24)
  store i32 %call27, i32* %unit, align 4
  %25 = load i32, i32* %unit, align 4
  %call28 = call double @gimp_unit_get_factor(i32 %25)
  store double %call28, double* %unit_factor, align 8
  %arraydecay29 = getelementptr inbounds [32 x i8], [32 x i8]* %format_buf, i32 0, i32 0
  %call30 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0)) #7
  %26 = load i32, i32* %unit, align 4
  %call31 = call i8* @gimp_unit_get_abbreviation(i32 %26)
  %call32 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay29, i64 32, i8* %call30, i8* %call31)
  %arraydecay33 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %call34 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0)) #7
  %27 = load double, double* %xres, align 8
  %28 = load double, double* %unit_factor, align 8
  %div = fdiv double %27, %28
  %29 = load double, double* %yres, align 8
  %30 = load double, double* %unit_factor, align 8
  %div35 = fdiv double %29, %30
  %31 = load i32, i32* %unit, align 4
  %cmp = icmp eq i32 %31, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call37 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0)) #7
  br label %cond.end

cond.false:                                       ; preds = %entry
  %arraydecay38 = getelementptr inbounds [32 x i8], [32 x i8]* %format_buf, i32 0, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call37, %cond.true ], [ %arraydecay38, %cond.false ]
  %call39 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay33, i64 256, i8* %call34, double %div, double %div35, i8* %cond)
  %32 = load %struct._GimpImagePropView*, %struct._GimpImagePropView** %view.addr, align 8
  %resolution_label = getelementptr inbounds %struct._GimpImagePropView, %struct._GimpImagePropView* %32, i32 0, i32 4
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %resolution_label, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_label_get_type() #8
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call40)
  %35 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkLabel*
  %arraydecay42 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  call void @gtk_label_set_text(%struct._GtkLabel* %35, i8* %arraydecay42)
  %36 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call43 = call i32 @gimp_image_base_type(%struct._GimpImage* %36)
  store i32 %call43, i32* %type, align 4
  %call44 = call i64 @gimp_image_base_type_get_type() #8
  %37 = load i32, i32* %type, align 4
  %call45 = call i32 @gimp_enum_get_value(i64 %call44, i32 %37, i8** null, i8** null, i8** %desc, i8** null)
  %38 = load i32, i32* %type, align 4
  switch i32 %38, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb.48
  ]

sw.bb:                                            ; preds = %cond.end, %cond.end
  %arraydecay46 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %39 = load i8*, i8** %desc, align 8
  %call47 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay46, i64 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i8* %39)
  br label %sw.epilog

sw.bb.48:                                         ; preds = %cond.end
  %arraydecay49 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %40 = load i8*, i8** %desc, align 8
  %41 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call50 = call i32 @gimp_image_get_colormap_size(%struct._GimpImage* %41)
  %call51 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0)) #7
  %call52 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay49, i64 256, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), i8* %40, i32 %call50, i8* %call51)
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end, %sw.bb.48, %sw.bb
  %42 = load %struct._GimpImagePropView*, %struct._GimpImagePropView** %view.addr, align 8
  %colorspace_label = getelementptr inbounds %struct._GimpImagePropView, %struct._GimpImagePropView* %42, i32 0, i32 5
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %colorspace_label, align 8
  %44 = bitcast %struct._GtkWidget* %43 to %struct._GTypeInstance*
  %call53 = call i64 @gtk_label_get_type() #8
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call53)
  %45 = bitcast %struct._GTypeInstance* %call54 to %struct._GtkLabel*
  %arraydecay55 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  call void @gtk_label_set_text(%struct._GtkLabel* %45, i8* %arraydecay55)
  %46 = load %struct._GimpImagePropView*, %struct._GimpImagePropView** %view.addr, align 8
  %memsize_label = getelementptr inbounds %struct._GimpImagePropView, %struct._GimpImagePropView* %46, i32 0, i32 9
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %memsize_label, align 8
  %48 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %49 = bitcast %struct._GimpImage* %48 to %struct._GTypeInstance*
  %call56 = call i64 @gimp_object_get_type() #8
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call56)
  %50 = bitcast %struct._GTypeInstance* %call57 to %struct._GimpObject*
  call void @gimp_image_prop_view_label_set_memsize(%struct._GtkWidget* %47, %struct._GimpObject* %50)
  %51 = load %struct._GimpImagePropView*, %struct._GimpImagePropView** %view.addr, align 8
  %undo_label = getelementptr inbounds %struct._GimpImagePropView, %struct._GimpImagePropView* %51, i32 0, i32 10
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %undo_label, align 8
  %53 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call58 = call %struct._GimpUndoStack* @gimp_image_get_undo_stack(%struct._GimpImage* %53)
  call void @gimp_image_prop_view_label_set_undo(%struct._GtkWidget* %52, %struct._GimpUndoStack* %call58)
  %54 = load %struct._GimpImagePropView*, %struct._GimpImagePropView** %view.addr, align 8
  %redo_label = getelementptr inbounds %struct._GimpImagePropView, %struct._GimpImagePropView* %54, i32 0, i32 11
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %redo_label, align 8
  %56 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call59 = call %struct._GimpUndoStack* @gimp_image_get_redo_stack(%struct._GimpImage* %56)
  call void @gimp_image_prop_view_label_set_undo(%struct._GtkWidget* %55, %struct._GimpUndoStack* %call59)
  %arraydecay60 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %57 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call61 = call i32 @gimp_image_get_width(%struct._GimpImage* %57)
  %58 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call62 = call i32 @gimp_image_get_height(%struct._GimpImage* %58)
  %mul = mul nsw i32 %call61, %call62
  %call63 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay60, i64 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0), i32 %mul)
  %59 = load %struct._GimpImagePropView*, %struct._GimpImagePropView** %view.addr, align 8
  %pixels_label = getelementptr inbounds %struct._GimpImagePropView, %struct._GimpImagePropView* %59, i32 0, i32 12
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %pixels_label, align 8
  %61 = bitcast %struct._GtkWidget* %60 to %struct._GTypeInstance*
  %call64 = call i64 @gtk_label_get_type() #8
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call64)
  %62 = bitcast %struct._GTypeInstance* %call65 to %struct._GtkLabel*
  %arraydecay66 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  call void @gtk_label_set_text(%struct._GtkLabel* %62, i8* %arraydecay66)
  %arraydecay67 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %63 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call68 = call i32 @gimp_image_get_n_layers(%struct._GimpImage* %63)
  %call69 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay67, i64 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0), i32 %call68)
  %64 = load %struct._GimpImagePropView*, %struct._GimpImagePropView** %view.addr, align 8
  %layers_label = getelementptr inbounds %struct._GimpImagePropView, %struct._GimpImagePropView* %64, i32 0, i32 13
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %layers_label, align 8
  %66 = bitcast %struct._GtkWidget* %65 to %struct._GTypeInstance*
  %call70 = call i64 @gtk_label_get_type() #8
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call70)
  %67 = bitcast %struct._GTypeInstance* %call71 to %struct._GtkLabel*
  %arraydecay72 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  call void @gtk_label_set_text(%struct._GtkLabel* %67, i8* %arraydecay72)
  %arraydecay73 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %68 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call74 = call i32 @gimp_image_get_n_channels(%struct._GimpImage* %68)
  %call75 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay73, i64 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0), i32 %call74)
  %69 = load %struct._GimpImagePropView*, %struct._GimpImagePropView** %view.addr, align 8
  %channels_label = getelementptr inbounds %struct._GimpImagePropView, %struct._GimpImagePropView* %69, i32 0, i32 14
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %channels_label, align 8
  %71 = bitcast %struct._GtkWidget* %70 to %struct._GTypeInstance*
  %call76 = call i64 @gtk_label_get_type() #8
  %call77 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 %call76)
  %72 = bitcast %struct._GTypeInstance* %call77 to %struct._GtkLabel*
  %arraydecay78 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  call void @gtk_label_set_text(%struct._GtkLabel* %72, i8* %arraydecay78)
  %arraydecay79 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %73 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call80 = call i32 @gimp_image_get_n_vectors(%struct._GimpImage* %73)
  %call81 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay79, i64 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0), i32 %call80)
  %74 = load %struct._GimpImagePropView*, %struct._GimpImagePropView** %view.addr, align 8
  %vectors_label = getelementptr inbounds %struct._GimpImagePropView, %struct._GimpImagePropView* %74, i32 0, i32 15
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %vectors_label, align 8
  %76 = bitcast %struct._GtkWidget* %75 to %struct._GTypeInstance*
  %call82 = call i64 @gtk_label_get_type() #8
  %call83 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 %call82)
  %77 = bitcast %struct._GTypeInstance* %call83 to %struct._GtkLabel*
  %arraydecay84 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  call void @gtk_label_set_text(%struct._GtkLabel* %77, i8* %arraydecay84)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_image_prop_view_undo_event(%struct._GimpImage* %image, i32 %event, %struct._GimpUndo* %undo, %struct._GimpImagePropView* %view) #3 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %event.addr = alloca i32, align 4
  %undo.addr = alloca %struct._GimpUndo*, align 8
  %view.addr = alloca %struct._GimpImagePropView*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %event, i32* %event.addr, align 4
  store %struct._GimpUndo* %undo, %struct._GimpUndo** %undo.addr, align 8
  store %struct._GimpImagePropView* %view, %struct._GimpImagePropView** %view.addr, align 8
  %0 = load %struct._GimpImagePropView*, %struct._GimpImagePropView** %view.addr, align 8
  call void @gimp_image_prop_view_update(%struct._GimpImagePropView* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_image_prop_view_label_set_filename(%struct._GtkWidget* %label, %struct._GimpImage* %image) #3 {
entry:
  %label.addr = alloca %struct._GtkWidget*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %uri = alloca i8*, align 8
  %name = alloca i8*, align 8
  store %struct._GtkWidget* %label, %struct._GtkWidget** %label.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call = call i8* @gimp_image_get_any_uri(%struct._GimpImage* %0)
  store i8* %call, i8** %uri, align 8
  %1 = load i8*, i8** %uri, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %uri, align 8
  %call1 = call i8* @file_utils_uri_display_name(i8* %2)
  store i8* %call1, i8** %name, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %label.addr, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_label_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkLabel*
  %6 = load i8*, i8** %name, align 8
  call void @gtk_label_set_text(%struct._GtkLabel* %5, i8* %6)
  %7 = load i8*, i8** %name, align 8
  call void @g_free(i8* %7)
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %label.addr, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_label_get_type() #8
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call4)
  %10 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkLabel*
  call void @gtk_label_set_text(%struct._GtkLabel* %10, i8* null)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %label.addr, align 8
  %call6 = call %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget* %11)
  call void @gimp_help_set_help_data(%struct._GtkWidget* %call6, i8* null, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_image_prop_view_label_set_filesize(%struct._GtkWidget* %label, %struct._GimpImage* %image) #3 {
entry:
  %label.addr = alloca %struct._GtkWidget*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %uri = alloca i8*, align 8
  %file = alloca %struct._GFile*, align 8
  %info = alloca %struct._GFileInfo*, align 8
  %size = alloca i64, align 8
  %str = alloca i8*, align 8
  store %struct._GtkWidget* %label, %struct._GtkWidget** %label.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call = call i8* @gimp_image_get_any_uri(%struct._GimpImage* %0)
  store i8* %call, i8** %uri, align 8
  store %struct._GFile* null, %struct._GFile** %file, align 8
  %1 = load i8*, i8** %uri, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %uri, align 8
  %call1 = call %struct._GFile* @g_file_new_for_uri(i8* %2)
  store %struct._GFile* %call1, %struct._GFile** %file, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct._GFile*, %struct._GFile** %file, align 8
  %tobool2 = icmp ne %struct._GFile* %3, null
  br i1 %tobool2, label %if.then.3, label %if.else.14

if.then.3:                                        ; preds = %if.end
  %4 = load %struct._GFile*, %struct._GFile** %file, align 8
  %call4 = call %struct._GFileInfo* @g_file_query_info(%struct._GFile* %4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i32 0, %struct._GCancellable* null, %struct._GError** null)
  store %struct._GFileInfo* %call4, %struct._GFileInfo** %info, align 8
  %5 = load %struct._GFileInfo*, %struct._GFileInfo** %info, align 8
  %tobool5 = icmp ne %struct._GFileInfo* %5, null
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then.3
  %6 = load %struct._GFileInfo*, %struct._GFileInfo** %info, align 8
  %call7 = call i64 @g_file_info_get_size(%struct._GFileInfo* %6)
  store i64 %call7, i64* %size, align 8
  %7 = load i64, i64* %size, align 8
  %call8 = call i8* @g_format_size(i64 %7)
  store i8* %call8, i8** %str, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %label.addr, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_label_get_type() #8
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call9)
  %10 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkLabel*
  %11 = load i8*, i8** %str, align 8
  call void @gtk_label_set_text(%struct._GtkLabel* %10, i8* %11)
  %12 = load i8*, i8** %str, align 8
  call void @g_free(i8* %12)
  %13 = load %struct._GFileInfo*, %struct._GFileInfo** %info, align 8
  %14 = bitcast %struct._GFileInfo* %13 to i8*
  call void @g_object_unref(i8* %14)
  br label %if.end.13

if.else:                                          ; preds = %if.then.3
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %label.addr, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_label_get_type() #8
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call11)
  %17 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkLabel*
  call void @gtk_label_set_text(%struct._GtkLabel* %17, i8* null)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.6
  %18 = load %struct._GFile*, %struct._GFile** %file, align 8
  %19 = bitcast %struct._GFile* %18 to i8*
  call void @g_object_unref(i8* %19)
  br label %if.end.17

if.else.14:                                       ; preds = %if.end
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %label.addr, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_label_get_type() #8
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call15)
  %22 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkLabel*
  call void @gtk_label_set_text(%struct._GtkLabel* %22, i8* null)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.14, %if.end.13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_image_prop_view_label_set_filetype(%struct._GtkWidget* %label, %struct._GimpImage* %image) #3 {
entry:
  %label.addr = alloca %struct._GtkWidget*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %manager = alloca %struct._GimpPlugInManager*, align 8
  %proc = alloca %struct._GimpPlugInProcedure*, align 8
  %filename = alloca i8*, align 8
  store %struct._GtkWidget* %label, %struct._GtkWidget** %label.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %0, i32 0, i32 1
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %plug_in_manager = getelementptr inbounds %struct._Gimp, %struct._Gimp* %1, i32 0, i32 25
  %2 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager, align 8
  store %struct._GimpPlugInManager* %2, %struct._GimpPlugInManager** %manager, align 8
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call = call %struct._GimpPlugInProcedure* @gimp_image_get_save_proc(%struct._GimpImage* %3)
  store %struct._GimpPlugInProcedure* %call, %struct._GimpPlugInProcedure** %proc, align 8
  %4 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %tobool = icmp ne %struct._GimpPlugInProcedure* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call1 = call %struct._GimpPlugInProcedure* @gimp_image_get_load_proc(%struct._GimpImage* %5)
  store %struct._GimpPlugInProcedure* %call1, %struct._GimpPlugInProcedure** %proc, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %tobool2 = icmp ne %struct._GimpPlugInProcedure* %6, null
  br i1 %tobool2, label %if.end.9, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call4 = call i8* @gimp_image_get_filename(%struct._GimpImage* %7)
  store i8* %call4, i8** %filename, align 8
  %8 = load i8*, i8** %filename, align 8
  %tobool5 = icmp ne i8* %8, null
  br i1 %tobool5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.then.3
  %9 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %load_procs = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %9, i32 0, i32 5
  %10 = load %struct._GSList*, %struct._GSList** %load_procs, align 8
  %11 = load i8*, i8** %filename, align 8
  %call7 = call %struct._GimpPlugInProcedure* @file_procedure_find(%struct._GSList* %10, i8* %11, %struct._GError** null)
  store %struct._GimpPlugInProcedure* %call7, %struct._GimpPlugInProcedure** %proc, align 8
  %12 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %12)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.then.3
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.end
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %label.addr, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_label_get_type() #8
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call10)
  %15 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkLabel*
  %16 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %tobool12 = icmp ne %struct._GimpPlugInProcedure* %16, null
  br i1 %tobool12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.9
  %17 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %call13 = call i8* @gimp_plug_in_procedure_get_label(%struct._GimpPlugInProcedure* %17)
  br label %cond.end

cond.false:                                       ; preds = %if.end.9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call13, %cond.true ], [ null, %cond.false ]
  call void @gtk_label_set_text(%struct._GtkLabel* %15, i8* %cond)
  ret void
}

declare i8* @gimp_image_get_any_uri(%struct._GimpImage*) #1

declare i8* @file_utils_uri_display_name(i8*) #1

declare void @gtk_label_set_text(%struct._GtkLabel*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #2

declare void @g_free(i8*) #1

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

declare %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget*) #1

declare %struct._GFile* @g_file_new_for_uri(i8*) #1

declare %struct._GFileInfo* @g_file_query_info(%struct._GFile*, i8*, i32, %struct._GCancellable*, %struct._GError**) #1

declare i64 @g_file_info_get_size(%struct._GFileInfo*) #1

declare i8* @g_format_size(i64) #1

declare void @g_object_unref(i8*) #1

declare %struct._GimpPlugInProcedure* @gimp_image_get_save_proc(%struct._GimpImage*) #1

declare %struct._GimpPlugInProcedure* @gimp_image_get_load_proc(%struct._GimpImage*) #1

declare i8* @gimp_image_get_filename(%struct._GimpImage*) #1

declare %struct._GimpPlugInProcedure* @file_procedure_find(%struct._GSList*, i8*, %struct._GError**) #1

declare i8* @gimp_plug_in_procedure_get_label(%struct._GimpPlugInProcedure*) #1

declare void @gimp_image_get_resolution(%struct._GimpImage*, double*, double*) #1

declare i32 @g_snprintf(i8*, i64, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @ngettext(i8*, i8*, i64) #6

declare i32 @gimp_image_get_height(%struct._GimpImage*) #1

declare i32 @gimp_image_get_width(%struct._GimpImage*) #1

declare i32 @gimp_get_default_unit() #1

declare i32 @gimp_unit_get_digits(i32) #1

declare i8* @gimp_unit_get_plural(i32) #1

declare double @gimp_pixels_to_units(double, i32, double) #1

declare i32 @gimp_image_get_unit(%struct._GimpImage*) #1

declare double @gimp_unit_get_factor(i32) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #6

declare i8* @gimp_unit_get_abbreviation(i32) #1

declare i32 @gimp_image_base_type(%struct._GimpImage*) #1

declare i32 @gimp_enum_get_value(i64, i32, i8**, i8**, i8**, i8**) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_base_type_get_type() #2

declare i32 @gimp_image_get_colormap_size(%struct._GimpImage*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_image_prop_view_label_set_memsize(%struct._GtkWidget* %label, %struct._GimpObject* %object) #3 {
entry:
  %label.addr = alloca %struct._GtkWidget*, align 8
  %object.addr = alloca %struct._GimpObject*, align 8
  %str = alloca i8*, align 8
  store %struct._GtkWidget* %label, %struct._GtkWidget** %label.addr, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %call = call i64 @gimp_object_get_memsize(%struct._GimpObject* %0, i64* null)
  %call1 = call i8* @g_format_size(i64 %call)
  store i8* %call1, i8** %str, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %label.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_label_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call2)
  %3 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkLabel*
  %4 = load i8*, i8** %str, align 8
  call void @gtk_label_set_text(%struct._GtkLabel* %3, i8* %4)
  %5 = load i8*, i8** %str, align 8
  call void @g_free(i8* %5)
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_image_prop_view_label_set_undo(%struct._GtkWidget* %label, %struct._GimpUndoStack* %stack) #3 {
entry:
  %label.addr = alloca %struct._GtkWidget*, align 8
  %stack.addr = alloca %struct._GimpUndoStack*, align 8
  %steps = alloca i32, align 4
  %object = alloca %struct._GimpObject*, align 8
  %str = alloca i8*, align 8
  %buf = alloca [256 x i8], align 16
  store %struct._GtkWidget* %label, %struct._GtkWidget** %label.addr, align 8
  store %struct._GimpUndoStack* %stack, %struct._GimpUndoStack** %stack.addr, align 8
  %0 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %stack.addr, align 8
  %call = call i32 @gimp_undo_stack_get_depth(%struct._GimpUndoStack* %0)
  store i32 %call, i32* %steps, align 4
  %1 = load i32, i32* %steps, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %stack.addr, align 8
  %3 = bitcast %struct._GimpUndoStack* %2 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_object_get_type() #8
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call1)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpObject*
  store %struct._GimpObject* %4, %struct._GimpObject** %object, align 8
  %5 = load %struct._GimpObject*, %struct._GimpObject** %object, align 8
  %call3 = call i64 @gimp_object_get_memsize(%struct._GimpObject* %5, i64* null)
  %call4 = call i8* @g_format_size(i64 %call3)
  store i8* %call4, i8** %str, align 8
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %6 = load i32, i32* %steps, align 4
  %7 = load i8*, i8** %str, align 8
  %call5 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay, i64 256, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i32 %6, i8* %7)
  %8 = load i8*, i8** %str, align 8
  call void @g_free(i8* %8)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %label.addr, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_label_get_type() #8
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call6)
  %11 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkLabel*
  %arraydecay8 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  call void @gtk_label_set_text(%struct._GtkLabel* %11, i8* %arraydecay8)
  br label %if.end

if.else:                                          ; preds = %entry
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %label.addr, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_label_get_type() #8
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call9)
  %14 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkLabel*
  %call11 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0)) #7
  call void @gtk_label_set_text(%struct._GtkLabel* %14, i8* %call11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare %struct._GimpUndoStack* @gimp_image_get_undo_stack(%struct._GimpImage*) #1

declare %struct._GimpUndoStack* @gimp_image_get_redo_stack(%struct._GimpImage*) #1

declare i32 @gimp_image_get_n_layers(%struct._GimpImage*) #1

declare i32 @gimp_image_get_n_channels(%struct._GimpImage*) #1

declare i32 @gimp_image_get_n_vectors(%struct._GimpImage*) #1

declare i64 @gimp_object_get_memsize(%struct._GimpObject*, i64*) #1

declare i32 @gimp_undo_stack_get_depth(%struct._GimpUndoStack*) #1

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

declare void @gtk_table_resize(%struct._GtkTable*, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @gimp_image_prop_view_add_label(%struct._GtkTable* %table, i32 %row, i8* %text) #3 {
entry:
  %table.addr = alloca %struct._GtkTable*, align 8
  %row.addr = alloca i32, align 4
  %text.addr = alloca i8*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %desc = alloca %struct._GtkWidget*, align 8
  store %struct._GtkTable* %table, %struct._GtkTable** %table.addr, align 8
  store i32 %row, i32* %row.addr, align 4
  store i8* %text, i8** %text.addr, align 8
  %call = call i64 @gtk_label_get_type() #8
  %0 = load i8*, i8** %text.addr, align 8
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), i8* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), double 1.000000e+00, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), double 5.000000e-01, i8* null)
  %1 = bitcast i8* %call1 to %struct._GtkWidget*
  store %struct._GtkWidget* %1, %struct._GtkWidget** %desc, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %desc, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_label_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call2)
  %4 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkLabel*
  call void (%struct._GtkLabel*, ...) @gimp_label_set_attributes(%struct._GtkLabel* %4, i32 4, i32 700, i32 -1)
  %5 = load %struct._GtkTable*, %struct._GtkTable** %table.addr, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %desc, align 8
  %7 = load i32, i32* %row.addr, align 4
  %8 = load i32, i32* %row.addr, align 4
  %add = add nsw i32 %8, 1
  call void @gtk_table_attach(%struct._GtkTable* %5, %struct._GtkWidget* %6, i32 0, i32 1, i32 %7, i32 %add, i32 4, i32 4, i32 0, i32 0)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %desc, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %9)
  %call4 = call i64 @gtk_label_get_type() #8
  %call5 = call i8* (i64, i8*, ...) @g_object_new(i64 %call4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), double 0.000000e+00, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), double 5.000000e-01, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i32 0, i32 0), i32 1, i8* null)
  %10 = bitcast i8* %call5 to %struct._GtkWidget*
  store %struct._GtkWidget* %10, %struct._GtkWidget** %label, align 8
  %11 = load %struct._GtkTable*, %struct._GtkTable** %table.addr, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %13 = load i32, i32* %row.addr, align 4
  %14 = load i32, i32* %row.addr, align 4
  %add6 = add nsw i32 %14, 1
  call void @gtk_table_attach(%struct._GtkTable* %11, %struct._GtkWidget* %12, i32 1, i32 2, i32 %13, i32 %add6, i32 5, i32 4, i32 0, i32 0)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %15)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  ret %struct._GtkWidget* %16
}

declare void @gtk_table_set_row_spacing(%struct._GtkTable*, i32, i32) #1

declare void @gtk_label_set_ellipsize(%struct._GtkLabel*, i32) #1

declare void @gimp_label_set_attributes(%struct._GtkLabel*, ...) #1

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

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
