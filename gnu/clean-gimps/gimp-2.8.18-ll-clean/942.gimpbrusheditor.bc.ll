; ModuleID = './app/widgets/gimpbrusheditor.bc'
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
%struct._GimpContainer = type opaque
%struct._GimpImage = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type { %struct._GimpData, %struct._TempBuf*, %struct._TempBuf*, i32, %struct._GimpVector2, %struct._GimpVector2, i32, %struct._GimpBrushCache*, %struct._GimpBrushCache*, %struct._GimpBrushCache* }
%struct._GimpData = type { %struct._GimpViewable }
%struct._TempBuf = type opaque
%struct._GimpVector2 = type { double, double }
%struct._GimpBrushCache = type opaque
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
%struct._GimpBrushEditorClass = type { %struct._GimpDataEditorClass }
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
%struct._GimpBrushEditor = type { %struct._GimpDataEditor, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, %struct._GtkAdjustment* }
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
%struct._GimpSpinScale = type { %struct._GtkSpinButton }
%struct._GtkSpinButton = type { %struct._GtkEntry, %struct._GtkAdjustment*, %struct._GdkDrawable*, i32, double, double, i32, i24 }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque
%struct._GimpMenuFactory = type opaque
%struct._GimpBrushGenerated = type { %struct._GimpBrush, i32, float, i32, float, float, float }
%struct._GtkRadioButton = type { %struct._GtkCheckButton, %struct._GSList* }
%struct._GtkCheckButton = type { %struct._GtkToggleButton }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }

@gimp_brush_editor_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"GimpBrushEditor\00", align 1
@gimp_brush_editor_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpDockedInterface*)* @gimp_brush_editor_docked_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_brush_editor_new = private unnamed_addr constant [22 x i8] c"gimp_brush_editor_new\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"menu-factory\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"menu-identifier\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"<BrushEditor>\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"ui-path\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"/brush-editor-popup\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"data-factory\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@gimp_brush_editor_parent_class = internal global i8* null, align 8
@GimpBrushEditor_private_offset = internal global i32 0, align 4
@.str.11 = private unnamed_addr constant [13 x i8] c"Brush Editor\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"notify\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"shape\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"radius\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"spikes\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"hardness\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"angle\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"aspect-ratio\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"spacing\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"gimp-item-data\00", align 1
@parent_docked_iface = internal global %struct._GimpDockedInterface* null, align 8
@.str.21 = private unnamed_addr constant [7 x i8] c"Shape:\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"gimp-shape\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"Radius\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"Spikes\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"Hardness\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"Aspect ratio\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"Angle\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"Spacing\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"Percentage of width of brush\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_brush_editor_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_brush_editor_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_brush_editor_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_data_editor_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 840, void (i8*, i8*)* bitcast (void (i8*)* @gimp_brush_editor_class_intern_init to void (i8*, i8*)*), i32 272, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpBrushEditor*)* @gimp_brush_editor_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_docked_interface_get_type() #6
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_brush_editor_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_brush_editor_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_brush_editor_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_data_editor_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_editor_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_brush_editor_parent_class, align 8
  %1 = load i32, i32* @GimpBrushEditor_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpBrushEditor_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpBrushEditorClass*
  call void @gimp_brush_editor_class_init(%struct._GimpBrushEditorClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_editor_init(%struct._GimpBrushEditor* %editor) #3 {
entry:
  %editor.addr = alloca %struct._GimpBrushEditor*, align 8
  %data_editor = alloca %struct._GimpDataEditor*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %box = alloca %struct._GtkWidget*, align 8
  %scale = alloca %struct._GtkWidget*, align 8
  store %struct._GimpBrushEditor* %editor, %struct._GimpBrushEditor** %editor.addr, align 8
  %0 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpBrushEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_editor_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDataEditor*
  store %struct._GimpDataEditor* %2, %struct._GimpDataEditor** %data_editor, align 8
  %call2 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %frame, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_frame_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %5, i32 1)
  %6 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %7 = bitcast %struct._GimpBrushEditor* %6 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_box_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call5)
  %8 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkBox*
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %8, %struct._GtkWidget* %9, i32 1, i32 1, i32 0)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %10)
  %call7 = call i64 @gimp_view_get_type() #6
  %call8 = call i64 @gimp_brush_get_type() #6
  %call9 = call %struct._GtkWidget* @gimp_view_new_full_by_types(%struct._GimpContext* null, i64 %call7, i64 %call8, i32 96, i32 96, i32 0, i32 0, i32 0, i32 1)
  %11 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %view = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %11, i32 0, i32 7
  store %struct._GtkWidget* %call9, %struct._GtkWidget** %view, align 8
  %12 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %view10 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %12, i32 0, i32 7
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %view10, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %13, i32 -1, i32 96)
  %14 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %view11 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %14, i32 0, i32 7
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %view11, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_view_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call12)
  %17 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpView*
  call void @gimp_view_set_expand(%struct._GimpView* %17, i32 1)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_container_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call14)
  %20 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkContainer*
  %21 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %view16 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %21, i32 0, i32 7
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %view16, align 8
  call void @gtk_container_add(%struct._GtkContainer* %20, %struct._GtkWidget* %22)
  %23 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %view17 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %23, i32 0, i32 7
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %view17, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %24)
  %25 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %shape_group = getelementptr inbounds %struct._GimpBrushEditor, %struct._GimpBrushEditor* %25, i32 0, i32 1
  store %struct._GtkWidget* null, %struct._GtkWidget** %shape_group, align 8
  %call18 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 2)
  %26 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %options_box = getelementptr inbounds %struct._GimpBrushEditor, %struct._GimpBrushEditor* %26, i32 0, i32 2
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %options_box, align 8
  %27 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %28 = bitcast %struct._GimpBrushEditor* %27 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_box_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call19)
  %29 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkBox*
  %30 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %options_box21 = getelementptr inbounds %struct._GimpBrushEditor, %struct._GimpBrushEditor* %30, i32 0, i32 2
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %options_box21, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %29, %struct._GtkWidget* %31, i32 0, i32 0, i32 0)
  %32 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %options_box22 = getelementptr inbounds %struct._GimpBrushEditor, %struct._GimpBrushEditor* %32, i32 0, i32 2
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %options_box22, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %33)
  %call23 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 2)
  store %struct._GtkWidget* %call23, %struct._GtkWidget** %hbox, align 8
  %34 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %options_box24 = getelementptr inbounds %struct._GimpBrushEditor, %struct._GimpBrushEditor* %34, i32 0, i32 2
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %options_box24, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_box_get_type() #6
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call25)
  %37 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkBox*
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %37, %struct._GtkWidget* %38, i32 0, i32 0, i32 0)
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %39)
  %call27 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0)) #7
  %call28 = call %struct._GtkWidget* @gtk_label_new(i8* %call27)
  store %struct._GtkWidget* %call28, %struct._GtkWidget** %label, align 8
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_box_get_type() #6
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call29)
  %42 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkBox*
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %42, %struct._GtkWidget* %43, i32 0, i32 0, i32 0)
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %44)
  %call31 = call i64 @gimp_brush_generated_shape_get_type() #6
  %45 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %46 = bitcast %struct._GimpBrushEditor* %45 to i8*
  %47 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %shape_group32 = getelementptr inbounds %struct._GimpBrushEditor, %struct._GimpBrushEditor* %47, i32 0, i32 1
  %call33 = call %struct._GtkWidget* @gimp_enum_stock_box_new(i64 %call31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), i32 1, void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpBrushEditor*)* @gimp_brush_editor_update_shape to void ()*), i8* %46, %struct._GtkWidget** %shape_group32)
  store %struct._GtkWidget* %call33, %struct._GtkWidget** %box, align 8
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_box_get_type() #6
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call34)
  %50 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkBox*
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %50, %struct._GtkWidget* %51, i32 0, i32 0, i32 0)
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %52)
  %call36 = call %struct._GtkObject* @gtk_adjustment_new(double 0.000000e+00, double 1.000000e-01, double 1.000000e+03, double 1.000000e-01, double 1.000000e+00, double 0.000000e+00)
  %53 = bitcast %struct._GtkObject* %call36 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_adjustment_get_type() #6
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call37)
  %54 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkAdjustment*
  %55 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %radius_data = getelementptr inbounds %struct._GimpBrushEditor, %struct._GimpBrushEditor* %55, i32 0, i32 3
  store %struct._GtkAdjustment* %54, %struct._GtkAdjustment** %radius_data, align 8
  %56 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %radius_data39 = getelementptr inbounds %struct._GimpBrushEditor, %struct._GimpBrushEditor* %56, i32 0, i32 3
  %57 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %radius_data39, align 8
  %call40 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0)) #7
  %call41 = call %struct._GtkWidget* @gimp_spin_scale_new(%struct._GtkAdjustment* %57, i8* %call40, i32 1)
  store %struct._GtkWidget* %call41, %struct._GtkWidget** %scale, align 8
  %58 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %options_box42 = getelementptr inbounds %struct._GimpBrushEditor, %struct._GimpBrushEditor* %58, i32 0, i32 2
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %options_box42, align 8
  %60 = bitcast %struct._GtkWidget* %59 to %struct._GTypeInstance*
  %call43 = call i64 @gtk_box_get_type() #6
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call43)
  %61 = bitcast %struct._GTypeInstance* %call44 to %struct._GtkBox*
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %61, %struct._GtkWidget* %62, i32 0, i32 0, i32 0)
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %63)
  %64 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %radius_data45 = getelementptr inbounds %struct._GimpBrushEditor, %struct._GimpBrushEditor* %64, i32 0, i32 3
  %65 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %radius_data45, align 8
  %66 = bitcast %struct._GtkAdjustment* %65 to i8*
  %67 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %68 = bitcast %struct._GimpBrushEditor* %67 to i8*
  %call46 = call i64 @g_signal_connect_data(i8* %66, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._GimpBrushEditor*)* @gimp_brush_editor_update_brush to void ()*), i8* %68, void (i8*, %struct._GClosure*)* null, i32 0)
  %call47 = call %struct._GtkObject* @gtk_adjustment_new(double 2.000000e+00, double 2.000000e+00, double 2.000000e+01, double 1.000000e+00, double 1.000000e+00, double 0.000000e+00)
  %69 = bitcast %struct._GtkObject* %call47 to %struct._GTypeInstance*
  %call48 = call i64 @gtk_adjustment_get_type() #6
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call48)
  %70 = bitcast %struct._GTypeInstance* %call49 to %struct._GtkAdjustment*
  %71 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %spikes_data = getelementptr inbounds %struct._GimpBrushEditor, %struct._GimpBrushEditor* %71, i32 0, i32 4
  store %struct._GtkAdjustment* %70, %struct._GtkAdjustment** %spikes_data, align 8
  %72 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %spikes_data50 = getelementptr inbounds %struct._GimpBrushEditor, %struct._GimpBrushEditor* %72, i32 0, i32 4
  %73 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %spikes_data50, align 8
  %call51 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0)) #7
  %call52 = call %struct._GtkWidget* @gimp_spin_scale_new(%struct._GtkAdjustment* %73, i8* %call51, i32 0)
  store %struct._GtkWidget* %call52, %struct._GtkWidget** %scale, align 8
  %74 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %options_box53 = getelementptr inbounds %struct._GimpBrushEditor, %struct._GimpBrushEditor* %74, i32 0, i32 2
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %options_box53, align 8
  %76 = bitcast %struct._GtkWidget* %75 to %struct._GTypeInstance*
  %call54 = call i64 @gtk_box_get_type() #6
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 %call54)
  %77 = bitcast %struct._GTypeInstance* %call55 to %struct._GtkBox*
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %77, %struct._GtkWidget* %78, i32 0, i32 0, i32 0)
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %79)
  %80 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %spikes_data56 = getelementptr inbounds %struct._GimpBrushEditor, %struct._GimpBrushEditor* %80, i32 0, i32 4
  %81 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %spikes_data56, align 8
  %82 = bitcast %struct._GtkAdjustment* %81 to i8*
  %83 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %84 = bitcast %struct._GimpBrushEditor* %83 to i8*
  %call57 = call i64 @g_signal_connect_data(i8* %82, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._GimpBrushEditor*)* @gimp_brush_editor_update_brush to void ()*), i8* %84, void (i8*, %struct._GClosure*)* null, i32 0)
  %call58 = call %struct._GtkObject* @gtk_adjustment_new(double 0.000000e+00, double 0.000000e+00, double 1.000000e+00, double 1.000000e-02, double 1.000000e-01, double 0.000000e+00)
  %85 = bitcast %struct._GtkObject* %call58 to %struct._GTypeInstance*
  %call59 = call i64 @gtk_adjustment_get_type() #6
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %85, i64 %call59)
  %86 = bitcast %struct._GTypeInstance* %call60 to %struct._GtkAdjustment*
  %87 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %hardness_data = getelementptr inbounds %struct._GimpBrushEditor, %struct._GimpBrushEditor* %87, i32 0, i32 5
  store %struct._GtkAdjustment* %86, %struct._GtkAdjustment** %hardness_data, align 8
  %88 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %hardness_data61 = getelementptr inbounds %struct._GimpBrushEditor, %struct._GimpBrushEditor* %88, i32 0, i32 5
  %89 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %hardness_data61, align 8
  %call62 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0)) #7
  %call63 = call %struct._GtkWidget* @gimp_spin_scale_new(%struct._GtkAdjustment* %89, i8* %call62, i32 2)
  store %struct._GtkWidget* %call63, %struct._GtkWidget** %scale, align 8
  %90 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %options_box64 = getelementptr inbounds %struct._GimpBrushEditor, %struct._GimpBrushEditor* %90, i32 0, i32 2
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %options_box64, align 8
  %92 = bitcast %struct._GtkWidget* %91 to %struct._GTypeInstance*
  %call65 = call i64 @gtk_box_get_type() #6
  %call66 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %92, i64 %call65)
  %93 = bitcast %struct._GTypeInstance* %call66 to %struct._GtkBox*
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %93, %struct._GtkWidget* %94, i32 0, i32 0, i32 0)
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %95)
  %96 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %hardness_data67 = getelementptr inbounds %struct._GimpBrushEditor, %struct._GimpBrushEditor* %96, i32 0, i32 5
  %97 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %hardness_data67, align 8
  %98 = bitcast %struct._GtkAdjustment* %97 to i8*
  %99 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %100 = bitcast %struct._GimpBrushEditor* %99 to i8*
  %call68 = call i64 @g_signal_connect_data(i8* %98, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._GimpBrushEditor*)* @gimp_brush_editor_update_brush to void ()*), i8* %100, void (i8*, %struct._GClosure*)* null, i32 0)
  %call69 = call %struct._GtkObject* @gtk_adjustment_new(double 0.000000e+00, double 1.000000e+00, double 2.000000e+01, double 1.000000e-01, double 1.000000e+00, double 0.000000e+00)
  %101 = bitcast %struct._GtkObject* %call69 to %struct._GTypeInstance*
  %call70 = call i64 @gtk_adjustment_get_type() #6
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %101, i64 %call70)
  %102 = bitcast %struct._GTypeInstance* %call71 to %struct._GtkAdjustment*
  %103 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %aspect_ratio_data = getelementptr inbounds %struct._GimpBrushEditor, %struct._GimpBrushEditor* %103, i32 0, i32 7
  store %struct._GtkAdjustment* %102, %struct._GtkAdjustment** %aspect_ratio_data, align 8
  %104 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %aspect_ratio_data72 = getelementptr inbounds %struct._GimpBrushEditor, %struct._GimpBrushEditor* %104, i32 0, i32 7
  %105 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %aspect_ratio_data72, align 8
  %call73 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i32 0, i32 0)) #7
  %call74 = call %struct._GtkWidget* @gimp_spin_scale_new(%struct._GtkAdjustment* %105, i8* %call73, i32 1)
  store %struct._GtkWidget* %call74, %struct._GtkWidget** %scale, align 8
  %106 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %options_box75 = getelementptr inbounds %struct._GimpBrushEditor, %struct._GimpBrushEditor* %106, i32 0, i32 2
  %107 = load %struct._GtkWidget*, %struct._GtkWidget** %options_box75, align 8
  %108 = bitcast %struct._GtkWidget* %107 to %struct._GTypeInstance*
  %call76 = call i64 @gtk_box_get_type() #6
  %call77 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %108, i64 %call76)
  %109 = bitcast %struct._GTypeInstance* %call77 to %struct._GtkBox*
  %110 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %109, %struct._GtkWidget* %110, i32 0, i32 0, i32 0)
  %111 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %111)
  %112 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %aspect_ratio_data78 = getelementptr inbounds %struct._GimpBrushEditor, %struct._GimpBrushEditor* %112, i32 0, i32 7
  %113 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %aspect_ratio_data78, align 8
  %114 = bitcast %struct._GtkAdjustment* %113 to i8*
  %115 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %116 = bitcast %struct._GimpBrushEditor* %115 to i8*
  %call79 = call i64 @g_signal_connect_data(i8* %114, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._GimpBrushEditor*)* @gimp_brush_editor_update_brush to void ()*), i8* %116, void (i8*, %struct._GClosure*)* null, i32 0)
  %call80 = call %struct._GtkObject* @gtk_adjustment_new(double 0.000000e+00, double 0.000000e+00, double 1.800000e+02, double 1.000000e-01, double 1.000000e+00, double 0.000000e+00)
  %117 = bitcast %struct._GtkObject* %call80 to %struct._GTypeInstance*
  %call81 = call i64 @gtk_adjustment_get_type() #6
  %call82 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %117, i64 %call81)
  %118 = bitcast %struct._GTypeInstance* %call82 to %struct._GtkAdjustment*
  %119 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %angle_data = getelementptr inbounds %struct._GimpBrushEditor, %struct._GimpBrushEditor* %119, i32 0, i32 6
  store %struct._GtkAdjustment* %118, %struct._GtkAdjustment** %angle_data, align 8
  %120 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %angle_data83 = getelementptr inbounds %struct._GimpBrushEditor, %struct._GimpBrushEditor* %120, i32 0, i32 6
  %121 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %angle_data83, align 8
  %call84 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0)) #7
  %call85 = call %struct._GtkWidget* @gimp_spin_scale_new(%struct._GtkAdjustment* %121, i8* %call84, i32 1)
  store %struct._GtkWidget* %call85, %struct._GtkWidget** %scale, align 8
  %122 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %options_box86 = getelementptr inbounds %struct._GimpBrushEditor, %struct._GimpBrushEditor* %122, i32 0, i32 2
  %123 = load %struct._GtkWidget*, %struct._GtkWidget** %options_box86, align 8
  %124 = bitcast %struct._GtkWidget* %123 to %struct._GTypeInstance*
  %call87 = call i64 @gtk_box_get_type() #6
  %call88 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %124, i64 %call87)
  %125 = bitcast %struct._GTypeInstance* %call88 to %struct._GtkBox*
  %126 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %125, %struct._GtkWidget* %126, i32 0, i32 0, i32 0)
  %127 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %127)
  %128 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %angle_data89 = getelementptr inbounds %struct._GimpBrushEditor, %struct._GimpBrushEditor* %128, i32 0, i32 6
  %129 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %angle_data89, align 8
  %130 = bitcast %struct._GtkAdjustment* %129 to i8*
  %131 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %132 = bitcast %struct._GimpBrushEditor* %131 to i8*
  %call90 = call i64 @g_signal_connect_data(i8* %130, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._GimpBrushEditor*)* @gimp_brush_editor_update_brush to void ()*), i8* %132, void (i8*, %struct._GClosure*)* null, i32 0)
  %call91 = call %struct._GtkObject* @gtk_adjustment_new(double 0.000000e+00, double 1.000000e+00, double 5.000000e+03, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00)
  %133 = bitcast %struct._GtkObject* %call91 to %struct._GTypeInstance*
  %call92 = call i64 @gtk_adjustment_get_type() #6
  %call93 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %133, i64 %call92)
  %134 = bitcast %struct._GTypeInstance* %call93 to %struct._GtkAdjustment*
  %135 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %spacing_data = getelementptr inbounds %struct._GimpBrushEditor, %struct._GimpBrushEditor* %135, i32 0, i32 8
  store %struct._GtkAdjustment* %134, %struct._GtkAdjustment** %spacing_data, align 8
  %136 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %spacing_data94 = getelementptr inbounds %struct._GimpBrushEditor, %struct._GimpBrushEditor* %136, i32 0, i32 8
  %137 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %spacing_data94, align 8
  %call95 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0)) #7
  %call96 = call %struct._GtkWidget* @gimp_spin_scale_new(%struct._GtkAdjustment* %137, i8* %call95, i32 1)
  store %struct._GtkWidget* %call96, %struct._GtkWidget** %scale, align 8
  %138 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  %139 = bitcast %struct._GtkWidget* %138 to %struct._GTypeInstance*
  %call97 = call i64 @gimp_spin_scale_get_type() #6
  %call98 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %139, i64 %call97)
  %140 = bitcast %struct._GTypeInstance* %call98 to %struct._GimpSpinScale*
  call void @gimp_spin_scale_set_scale_limits(%struct._GimpSpinScale* %140, double 1.000000e+00, double 2.000000e+02)
  %141 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %options_box99 = getelementptr inbounds %struct._GimpBrushEditor, %struct._GimpBrushEditor* %141, i32 0, i32 2
  %142 = load %struct._GtkWidget*, %struct._GtkWidget** %options_box99, align 8
  %143 = bitcast %struct._GtkWidget* %142 to %struct._GTypeInstance*
  %call100 = call i64 @gtk_box_get_type() #6
  %call101 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %143, i64 %call100)
  %144 = bitcast %struct._GTypeInstance* %call101 to %struct._GtkBox*
  %145 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %144, %struct._GtkWidget* %145, i32 0, i32 0, i32 0)
  %146 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %146)
  %147 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  %call102 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.30, i32 0, i32 0)) #7
  call void @gimp_help_set_help_data(%struct._GtkWidget* %147, i8* %call102, i8* null)
  %148 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %spacing_data103 = getelementptr inbounds %struct._GimpBrushEditor, %struct._GimpBrushEditor* %148, i32 0, i32 8
  %149 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %spacing_data103, align 8
  %150 = bitcast %struct._GtkAdjustment* %149 to i8*
  %151 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %152 = bitcast %struct._GimpBrushEditor* %151 to i8*
  %call104 = call i64 @g_signal_connect_data(i8* %150, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._GimpBrushEditor*)* @gimp_brush_editor_update_brush to void ()*), i8* %152, void (i8*, %struct._GClosure*)* null, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_editor_docked_iface_init(%struct._GimpDockedInterface* %iface) #3 {
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
  store void (%struct._GimpDocked*, %struct._GimpContext*)* @gimp_brush_editor_set_context, void (%struct._GimpDocked*, %struct._GimpContext*)** %set_context, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_docked_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_brush_editor_new(%struct._GimpContext* %context, %struct._GimpMenuFactory* %menu_factory) #3 {
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_brush_editor_new, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_brush_editor_get_type() #6
  %13 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %14, i32 0, i32 1
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %brush_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %15, i32 0, i32 37
  %16 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %brush_factory, align 8
  %17 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %18 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call12 = call %struct._GimpBrush* @gimp_context_get_brush(%struct._GimpContext* %18)
  %call13 = call i8* (i64, i8*, ...) @g_object_new(i64 %call11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), %struct._GimpMenuFactory* %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), %struct._GimpDataFactory* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), %struct._GimpContext* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), %struct._GimpBrush* %call12, i8* null)
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

declare %struct._GimpBrush* @gimp_context_get_brush(%struct._GimpContext*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_editor_class_init(%struct._GimpBrushEditorClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpBrushEditorClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %editor_class = alloca %struct._GimpDataEditorClass*, align 8
  store %struct._GimpBrushEditorClass* %klass, %struct._GimpBrushEditorClass** %klass.addr, align 8
  %0 = load %struct._GimpBrushEditorClass*, %struct._GimpBrushEditorClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpBrushEditorClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpBrushEditorClass*, %struct._GimpBrushEditorClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpBrushEditorClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_data_editor_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpDataEditorClass*
  store %struct._GimpDataEditorClass* %5, %struct._GimpDataEditorClass** %editor_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_brush_editor_constructed, void (%struct._GObject*)** %constructed, align 8
  %7 = load %struct._GimpDataEditorClass*, %struct._GimpDataEditorClass** %editor_class, align 8
  %set_data = getelementptr inbounds %struct._GimpDataEditorClass, %struct._GimpDataEditorClass* %7, i32 0, i32 1
  store void (%struct._GimpDataEditor*, %struct._GimpData*)* @gimp_brush_editor_set_data, void (%struct._GimpDataEditor*, %struct._GimpData*)** %set_data, align 8
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0)) #7
  %8 = load %struct._GimpDataEditorClass*, %struct._GimpDataEditorClass** %editor_class, align 8
  %title = getelementptr inbounds %struct._GimpDataEditorClass, %struct._GimpDataEditorClass* %8, i32 0, i32 2
  store i8* %call3, i8** %title, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_editor_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load i8*, i8** @gimp_brush_editor_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %2, i32 0, i32 9
  %3 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** @gimp_brush_editor_parent_class, align 8
  %5 = bitcast i8* %4 to %struct._GTypeClass*
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %5, i64 80)
  %6 = bitcast %struct._GTypeClass* %call1 to %struct._GObjectClass*
  %constructed2 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 9
  %7 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed2, align 8
  %8 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %7(%struct._GObject* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %10 = bitcast %struct._GObject* %9 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_docked_interface_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call3)
  %11 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpDocked*
  call void @gimp_docked_set_show_button_bar(%struct._GimpDocked* %11, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_editor_set_data(%struct._GimpDataEditor* %editor, %struct._GimpData* %data) #3 {
entry:
  %editor.addr = alloca %struct._GimpDataEditor*, align 8
  %data.addr = alloca %struct._GimpData*, align 8
  %brush_editor = alloca %struct._GimpBrushEditor*, align 8
  %shape = alloca i32, align 4
  %radius = alloca double, align 8
  %spikes = alloca i32, align 4
  %hardness = alloca double, align 8
  %ratio = alloca double, align 8
  %angle = alloca double, align 8
  %spacing = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %brush = alloca %struct._GimpBrushGenerated*, align 8
  store %struct._GimpDataEditor* %editor, %struct._GimpDataEditor** %editor.addr, align 8
  store %struct._GimpData* %data, %struct._GimpData** %data.addr, align 8
  %0 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpDataEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brush_editor_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBrushEditor*
  store %struct._GimpBrushEditor* %2, %struct._GimpBrushEditor** %brush_editor, align 8
  store i32 0, i32* %shape, align 4
  store double 0.000000e+00, double* %radius, align 8
  store i32 2, i32* %spikes, align 4
  store double 0.000000e+00, double* %hardness, align 8
  store double 0.000000e+00, double* %ratio, align 8
  store double 0.000000e+00, double* %angle, align 8
  store double 0.000000e+00, double* %spacing, align 8
  %3 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %data2 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %3, i32 0, i32 4
  %4 = load %struct._GimpData*, %struct._GimpData** %data2, align 8
  %tobool = icmp ne %struct._GimpData* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %data3 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %5, i32 0, i32 4
  %6 = load %struct._GimpData*, %struct._GimpData** %data3, align 8
  %7 = bitcast %struct._GimpData* %6 to i8*
  %8 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %9 = bitcast %struct._GimpDataEditor* %8 to i8*
  %call4 = call i32 @g_signal_handlers_disconnect_matched(i8* %7, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpBrushGenerated*, %struct._GParamSpec*, %struct._GimpBrushEditor*)* @gimp_brush_editor_notify_brush to i8*), i8* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i8*, i8** @gimp_brush_editor_parent_class, align 8
  %11 = bitcast i8* %10 to %struct._GTypeClass*
  %call5 = call i64 @gimp_data_editor_get_type() #6
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %11, i64 %call5)
  %12 = bitcast %struct._GTypeClass* %call6 to %struct._GimpDataEditorClass*
  %set_data = getelementptr inbounds %struct._GimpDataEditorClass, %struct._GimpDataEditorClass* %12, i32 0, i32 1
  %13 = load void (%struct._GimpDataEditor*, %struct._GimpData*)*, void (%struct._GimpDataEditor*, %struct._GimpData*)** %set_data, align 8
  %14 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %15 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  call void %13(%struct._GimpDataEditor* %14, %struct._GimpData* %15)
  %16 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %data7 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %16, i32 0, i32 4
  %17 = load %struct._GimpData*, %struct._GimpData** %data7, align 8
  %tobool8 = icmp ne %struct._GimpData* %17, null
  br i1 %tobool8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.end
  %18 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %data10 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %18, i32 0, i32 4
  %19 = load %struct._GimpData*, %struct._GimpData** %data10, align 8
  %20 = bitcast %struct._GimpData* %19 to i8*
  %21 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %22 = bitcast %struct._GimpDataEditor* %21 to i8*
  %call11 = call i64 @g_signal_connect_data(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), void ()* bitcast (void (%struct._GimpBrushGenerated*, %struct._GParamSpec*, %struct._GimpBrushEditor*)* @gimp_brush_editor_notify_brush to void ()*), i8* %22, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %if.end
  %23 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %view = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %23, i32 0, i32 7
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_view_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call13)
  %26 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpView*
  %27 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %28 = bitcast %struct._GimpData* %27 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_viewable_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call15)
  %29 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpViewable*
  call void @gimp_view_set_viewable(%struct._GimpView* %26, %struct._GimpViewable* %29)
  %30 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %data17 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %30, i32 0, i32 4
  %31 = load %struct._GimpData*, %struct._GimpData** %data17, align 8
  %tobool18 = icmp ne %struct._GimpData* %31, null
  br i1 %tobool18, label %if.then.19, label %if.end.53

if.then.19:                                       ; preds = %if.end.12
  %32 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %data20 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %32, i32 0, i32 4
  %33 = load %struct._GimpData*, %struct._GimpData** %data20, align 8
  %34 = bitcast %struct._GimpData* %33 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_brush_get_type() #6
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call21)
  %35 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpBrush*
  %call23 = call i32 @gimp_brush_get_spacing(%struct._GimpBrush* %35)
  %conv = sitofp i32 %call23 to double
  store double %conv, double* %spacing, align 8
  %36 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %data24 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %36, i32 0, i32 4
  %37 = load %struct._GimpData*, %struct._GimpData** %data24, align 8
  %38 = bitcast %struct._GimpData* %37 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %38, %struct._GTypeInstance** %__inst, align 8
  %call25 = call i64 @gimp_brush_generated_get_type() #6
  store i64 %call25, i64* %__t, align 8
  %39 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool26 = icmp ne %struct._GTypeInstance* %39, null
  br i1 %tobool26, label %if.else, label %if.then.27

if.then.27:                                       ; preds = %if.then.19
  store i32 0, i32* %__r, align 4
  br label %if.end.35

if.else:                                          ; preds = %if.then.19
  %40 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %40, i32 0, i32 0
  %41 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool28 = icmp ne %struct._GTypeClass* %41, null
  br i1 %tobool28, label %land.lhs.true, label %if.else.32

land.lhs.true:                                    ; preds = %if.else
  %42 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class29 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %42, i32 0, i32 0
  %43 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class29, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %43, i32 0, i32 0
  %44 = load i64, i64* %g_type, align 8
  %45 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %44, %45
  br i1 %cmp, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.34

if.else.32:                                       ; preds = %land.lhs.true, %if.else
  %46 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %47 = load i64, i64* %__t, align 8
  %call33 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %46, i64 %47) #8
  store i32 %call33, i32* %__r, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.32, %if.then.31
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.27
  %48 = load i32, i32* %__r, align 4
  store i32 %48, i32* %tmp
  %49 = load i32, i32* %tmp
  %tobool36 = icmp ne i32 %49, 0
  br i1 %tobool36, label %if.then.37, label %if.end.52

if.then.37:                                       ; preds = %if.end.35
  %50 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %data39 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %50, i32 0, i32 4
  %51 = load %struct._GimpData*, %struct._GimpData** %data39, align 8
  %52 = bitcast %struct._GimpData* %51 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_brush_generated_get_type() #6
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call40)
  %53 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpBrushGenerated*
  store %struct._GimpBrushGenerated* %53, %struct._GimpBrushGenerated** %brush, align 8
  %54 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %call42 = call i32 @gimp_brush_generated_get_shape(%struct._GimpBrushGenerated* %54)
  store i32 %call42, i32* %shape, align 4
  %55 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %call43 = call float @gimp_brush_generated_get_radius(%struct._GimpBrushGenerated* %55)
  %conv44 = fpext float %call43 to double
  store double %conv44, double* %radius, align 8
  %56 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %call45 = call i32 @gimp_brush_generated_get_spikes(%struct._GimpBrushGenerated* %56)
  store i32 %call45, i32* %spikes, align 4
  %57 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %call46 = call float @gimp_brush_generated_get_hardness(%struct._GimpBrushGenerated* %57)
  %conv47 = fpext float %call46 to double
  store double %conv47, double* %hardness, align 8
  %58 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %call48 = call float @gimp_brush_generated_get_aspect_ratio(%struct._GimpBrushGenerated* %58)
  %conv49 = fpext float %call48 to double
  store double %conv49, double* %ratio, align 8
  %59 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %call50 = call float @gimp_brush_generated_get_angle(%struct._GimpBrushGenerated* %59)
  %conv51 = fpext float %call50 to double
  store double %conv51, double* %angle, align 8
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.37, %if.end.35
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.end.12
  %60 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %brush_editor, align 8
  %options_box = getelementptr inbounds %struct._GimpBrushEditor, %struct._GimpBrushEditor* %60, i32 0, i32 2
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %options_box, align 8
  %62 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %editor.addr, align 8
  %data_editable = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %62, i32 0, i32 5
  %63 = load i32, i32* %data_editable, align 4
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %61, i32 %63)
  %64 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %brush_editor, align 8
  %shape_group = getelementptr inbounds %struct._GimpBrushEditor, %struct._GimpBrushEditor* %64, i32 0, i32 1
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %shape_group, align 8
  %66 = bitcast %struct._GtkWidget* %65 to %struct._GTypeInstance*
  %call54 = call i64 @gtk_radio_button_get_type() #6
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call54)
  %67 = bitcast %struct._GTypeInstance* %call55 to %struct._GtkRadioButton*
  %68 = load i32, i32* %shape, align 4
  call void @gimp_int_radio_group_set_active(%struct._GtkRadioButton* %67, i32 %68)
  %69 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %brush_editor, align 8
  %radius_data = getelementptr inbounds %struct._GimpBrushEditor, %struct._GimpBrushEditor* %69, i32 0, i32 3
  %70 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %radius_data, align 8
  %71 = load double, double* %radius, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %70, double %71)
  %72 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %brush_editor, align 8
  %spikes_data = getelementptr inbounds %struct._GimpBrushEditor, %struct._GimpBrushEditor* %72, i32 0, i32 4
  %73 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %spikes_data, align 8
  %74 = load i32, i32* %spikes, align 4
  %conv56 = sitofp i32 %74 to double
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %73, double %conv56)
  %75 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %brush_editor, align 8
  %hardness_data = getelementptr inbounds %struct._GimpBrushEditor, %struct._GimpBrushEditor* %75, i32 0, i32 5
  %76 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %hardness_data, align 8
  %77 = load double, double* %hardness, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %76, double %77)
  %78 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %brush_editor, align 8
  %aspect_ratio_data = getelementptr inbounds %struct._GimpBrushEditor, %struct._GimpBrushEditor* %78, i32 0, i32 7
  %79 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %aspect_ratio_data, align 8
  %80 = load double, double* %ratio, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %79, double %80)
  %81 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %brush_editor, align 8
  %angle_data = getelementptr inbounds %struct._GimpBrushEditor, %struct._GimpBrushEditor* %81, i32 0, i32 6
  %82 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %angle_data, align 8
  %83 = load double, double* %angle, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %82, double %83)
  %84 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %brush_editor, align 8
  %spacing_data = getelementptr inbounds %struct._GimpBrushEditor, %struct._GimpBrushEditor* %84, i32 0, i32 8
  %85 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %spacing_data, align 8
  %86 = load double, double* %spacing, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %85, double %86)
  ret void
}

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

declare void @gimp_docked_set_show_button_bar(%struct._GimpDocked*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_editor_notify_brush(%struct._GimpBrushGenerated* %brush, %struct._GParamSpec* %pspec, %struct._GimpBrushEditor* %editor) #3 {
entry:
  %brush.addr = alloca %struct._GimpBrushGenerated*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %editor.addr = alloca %struct._GimpBrushEditor*, align 8
  %adj = alloca %struct._GtkAdjustment*, align 8
  %value = alloca double, align 8
  store %struct._GimpBrushGenerated* %brush, %struct._GimpBrushGenerated** %brush.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpBrushEditor* %editor, %struct._GimpBrushEditor** %editor.addr, align 8
  store %struct._GtkAdjustment* null, %struct._GtkAdjustment** %adj, align 8
  store double 0.000000e+00, double* %value, align 8
  %0 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %0, i32 0, i32 1
  %1 = load i8*, i8** %name, align 8
  %call = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0)) #8
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %shape_group = getelementptr inbounds %struct._GimpBrushEditor, %struct._GimpBrushEditor* %2, i32 0, i32 1
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %shape_group, align 8
  %4 = bitcast %struct._GtkWidget* %3 to i8*
  %5 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %6 = bitcast %struct._GimpBrushEditor* %5 to i8*
  %call1 = call i32 @g_signal_handlers_block_matched(i8* %4, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GimpBrushEditor*)* @gimp_brush_editor_update_shape to i8*), i8* %6)
  %7 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %shape_group2 = getelementptr inbounds %struct._GimpBrushEditor, %struct._GimpBrushEditor* %7, i32 0, i32 1
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %shape_group2, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_radio_button_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call3)
  %10 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkRadioButton*
  %11 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush.addr, align 8
  %shape = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %11, i32 0, i32 1
  %12 = load i32, i32* %shape, align 4
  call void @gimp_int_radio_group_set_active(%struct._GtkRadioButton* %10, i32 %12)
  %13 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %shape_group5 = getelementptr inbounds %struct._GimpBrushEditor, %struct._GimpBrushEditor* %13, i32 0, i32 1
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %shape_group5, align 8
  %15 = bitcast %struct._GtkWidget* %14 to i8*
  %16 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %17 = bitcast %struct._GimpBrushEditor* %16 to i8*
  %call6 = call i32 @g_signal_handlers_unblock_matched(i8* %15, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GimpBrushEditor*)* @gimp_brush_editor_update_shape to i8*), i8* %17)
  %18 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %radius_data = getelementptr inbounds %struct._GimpBrushEditor, %struct._GimpBrushEditor* %18, i32 0, i32 3
  %19 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %radius_data, align 8
  store %struct._GtkAdjustment* %19, %struct._GtkAdjustment** %adj, align 8
  %20 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush.addr, align 8
  %radius = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %20, i32 0, i32 2
  %21 = load float, float* %radius, align 4
  %conv = fpext float %21 to double
  store double %conv, double* %value, align 8
  br label %if.end.51

if.else:                                          ; preds = %entry
  %22 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name7 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %22, i32 0, i32 1
  %23 = load i8*, i8** %name7, align 8
  %call8 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0)) #8
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.else.14, label %if.then.10

if.then.10:                                       ; preds = %if.else
  %24 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %radius_data11 = getelementptr inbounds %struct._GimpBrushEditor, %struct._GimpBrushEditor* %24, i32 0, i32 3
  %25 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %radius_data11, align 8
  store %struct._GtkAdjustment* %25, %struct._GtkAdjustment** %adj, align 8
  %26 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush.addr, align 8
  %radius12 = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %26, i32 0, i32 2
  %27 = load float, float* %radius12, align 4
  %conv13 = fpext float %27 to double
  store double %conv13, double* %value, align 8
  br label %if.end.50

if.else.14:                                       ; preds = %if.else
  %28 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name15 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %28, i32 0, i32 1
  %29 = load i8*, i8** %name15, align 8
  %call16 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0)) #8
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.else.20, label %if.then.18

if.then.18:                                       ; preds = %if.else.14
  %30 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %spikes_data = getelementptr inbounds %struct._GimpBrushEditor, %struct._GimpBrushEditor* %30, i32 0, i32 4
  %31 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %spikes_data, align 8
  store %struct._GtkAdjustment* %31, %struct._GtkAdjustment** %adj, align 8
  %32 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush.addr, align 8
  %spikes = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %32, i32 0, i32 3
  %33 = load i32, i32* %spikes, align 4
  %conv19 = sitofp i32 %33 to double
  store double %conv19, double* %value, align 8
  br label %if.end.49

if.else.20:                                       ; preds = %if.else.14
  %34 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name21 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %34, i32 0, i32 1
  %35 = load i8*, i8** %name21, align 8
  %call22 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0)) #8
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.else.26, label %if.then.24

if.then.24:                                       ; preds = %if.else.20
  %36 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %hardness_data = getelementptr inbounds %struct._GimpBrushEditor, %struct._GimpBrushEditor* %36, i32 0, i32 5
  %37 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %hardness_data, align 8
  store %struct._GtkAdjustment* %37, %struct._GtkAdjustment** %adj, align 8
  %38 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush.addr, align 8
  %hardness = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %38, i32 0, i32 4
  %39 = load float, float* %hardness, align 4
  %conv25 = fpext float %39 to double
  store double %conv25, double* %value, align 8
  br label %if.end.48

if.else.26:                                       ; preds = %if.else.20
  %40 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name27 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %40, i32 0, i32 1
  %41 = load i8*, i8** %name27, align 8
  %call28 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0)) #8
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.else.32, label %if.then.30

if.then.30:                                       ; preds = %if.else.26
  %42 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %angle_data = getelementptr inbounds %struct._GimpBrushEditor, %struct._GimpBrushEditor* %42, i32 0, i32 6
  %43 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %angle_data, align 8
  store %struct._GtkAdjustment* %43, %struct._GtkAdjustment** %adj, align 8
  %44 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush.addr, align 8
  %angle = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %44, i32 0, i32 6
  %45 = load float, float* %angle, align 4
  %conv31 = fpext float %45 to double
  store double %conv31, double* %value, align 8
  br label %if.end.47

if.else.32:                                       ; preds = %if.else.26
  %46 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name33 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %46, i32 0, i32 1
  %47 = load i8*, i8** %name33, align 8
  %call34 = call i32 @strcmp(i8* %47, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0)) #8
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.else.38, label %if.then.36

if.then.36:                                       ; preds = %if.else.32
  %48 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %aspect_ratio_data = getelementptr inbounds %struct._GimpBrushEditor, %struct._GimpBrushEditor* %48, i32 0, i32 7
  %49 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %aspect_ratio_data, align 8
  store %struct._GtkAdjustment* %49, %struct._GtkAdjustment** %adj, align 8
  %50 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush.addr, align 8
  %aspect_ratio = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %50, i32 0, i32 5
  %51 = load float, float* %aspect_ratio, align 4
  %conv37 = fpext float %51 to double
  store double %conv37, double* %value, align 8
  br label %if.end.46

if.else.38:                                       ; preds = %if.else.32
  %52 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name39 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %52, i32 0, i32 1
  %53 = load i8*, i8** %name39, align 8
  %call40 = call i32 @strcmp(i8* %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0)) #8
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.end, label %if.then.42

if.then.42:                                       ; preds = %if.else.38
  %54 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %spacing_data = getelementptr inbounds %struct._GimpBrushEditor, %struct._GimpBrushEditor* %54, i32 0, i32 8
  %55 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %spacing_data, align 8
  store %struct._GtkAdjustment* %55, %struct._GtkAdjustment** %adj, align 8
  %56 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush.addr, align 8
  %57 = bitcast %struct._GimpBrushGenerated* %56 to %struct._GTypeInstance*
  %call43 = call i64 @gimp_brush_get_type() #6
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call43)
  %58 = bitcast %struct._GTypeInstance* %call44 to %struct._GimpBrush*
  %spacing = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %58, i32 0, i32 3
  %59 = load i32, i32* %spacing, align 4
  %conv45 = sitofp i32 %59 to double
  store double %conv45, double* %value, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.42, %if.else.38
  br label %if.end.46

if.end.46:                                        ; preds = %if.end, %if.then.36
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then.30
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.then.24
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.then.18
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.then.10
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.then
  %60 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %tobool52 = icmp ne %struct._GtkAdjustment* %60, null
  br i1 %tobool52, label %if.then.53, label %if.end.56

if.then.53:                                       ; preds = %if.end.51
  %61 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %62 = bitcast %struct._GtkAdjustment* %61 to i8*
  %63 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %64 = bitcast %struct._GimpBrushEditor* %63 to i8*
  %call54 = call i32 @g_signal_handlers_block_matched(i8* %62, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkAdjustment*, %struct._GimpBrushEditor*)* @gimp_brush_editor_update_brush to i8*), i8* %64)
  %65 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %66 = load double, double* %value, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %65, double %66)
  %67 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %68 = bitcast %struct._GtkAdjustment* %67 to i8*
  %69 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %70 = bitcast %struct._GimpBrushEditor* %69 to i8*
  %call55 = call i32 @g_signal_handlers_unblock_matched(i8* %68, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkAdjustment*, %struct._GimpBrushEditor*)* @gimp_brush_editor_update_brush to i8*), i8* %70)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.53, %if.end.51
  ret void
}

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare void @gimp_view_set_viewable(%struct._GimpView*, %struct._GimpViewable*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_view_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

declare i32 @gimp_brush_get_spacing(%struct._GimpBrush*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_brush_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_brush_generated_get_type() #2

declare i32 @gimp_brush_generated_get_shape(%struct._GimpBrushGenerated*) #1

declare float @gimp_brush_generated_get_radius(%struct._GimpBrushGenerated*) #1

declare i32 @gimp_brush_generated_get_spikes(%struct._GimpBrushGenerated*) #1

declare float @gimp_brush_generated_get_hardness(%struct._GimpBrushGenerated*) #1

declare float @gimp_brush_generated_get_aspect_ratio(%struct._GimpBrushGenerated*) #1

declare float @gimp_brush_generated_get_angle(%struct._GimpBrushGenerated*) #1

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

declare void @gimp_int_radio_group_set_active(%struct._GtkRadioButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_radio_button_get_type() #2

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare i32 @g_signal_handlers_block_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_editor_update_shape(%struct._GtkWidget* %widget, %struct._GimpBrushEditor* %editor) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %editor.addr = alloca %struct._GimpBrushEditor*, align 8
  %brush = alloca %struct._GimpBrushGenerated*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %shape = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpBrushEditor* %editor, %struct._GimpBrushEditor** %editor.addr, align 8
  %0 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpBrushEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_editor_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDataEditor*
  %data = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %2, i32 0, i32 4
  %3 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %4 = bitcast %struct._GimpData* %3 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %4, %struct._GTypeInstance** %__inst, align 8
  %call2 = call i64 @gimp_brush_generated_get_type() #6
  store i64 %call2, i64* %__t, align 8
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %5, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %__r, align 4
  br label %if.end.8

if.else:                                          ; preds = %entry
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool3 = icmp ne %struct._GTypeClass* %7, null
  br i1 %tobool3, label %land.lhs.true, label %if.else.6

land.lhs.true:                                    ; preds = %if.else
  %8 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %9, i32 0, i32 0
  %10 = load i64, i64* %g_type, align 8
  %11 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %10, %11
  br i1 %cmp, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.6:                                        ; preds = %land.lhs.true, %if.else
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %13 = load i64, i64* %__t, align 8
  %call7 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %12, i64 %13) #8
  store i32 %call7, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.6, %if.then.5
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  %14 = load i32, i32* %__r, align 4
  store i32 %14, i32* %tmp
  %15 = load i32, i32* %tmp
  %tobool9 = icmp ne i32 %15, 0
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.end.8
  br label %if.end.31

if.end.11:                                        ; preds = %if.end.8
  %16 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %17 = bitcast %struct._GimpBrushEditor* %16 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_data_editor_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call12)
  %18 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpDataEditor*
  %data14 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %18, i32 0, i32 4
  %19 = load %struct._GimpData*, %struct._GimpData** %data14, align 8
  %20 = bitcast %struct._GimpData* %19 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_brush_generated_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call15)
  %21 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpBrushGenerated*
  store %struct._GimpBrushGenerated* %21, %struct._GimpBrushGenerated** %brush, align 8
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_toggle_button_get_type() #6
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call17)
  %24 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkToggleButton*
  %call19 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %24)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.31

if.then.21:                                       ; preds = %if.end.11
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 80)
  %27 = bitcast %struct._GTypeInstance* %call23 to %struct._GObject*
  %call24 = call i8* @g_object_get_data(%struct._GObject* %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0))
  %28 = ptrtoint i8* %call24 to i64
  %conv = trunc i64 %28 to i32
  store i32 %conv, i32* %shape, align 4
  %29 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %call25 = call i32 @gimp_brush_generated_get_shape(%struct._GimpBrushGenerated* %29)
  %30 = load i32, i32* %shape, align 4
  %cmp26 = icmp ne i32 %call25, %30
  br i1 %cmp26, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %if.then.21
  %31 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %32 = load i32, i32* %shape, align 4
  %call29 = call i32 @gimp_brush_generated_set_shape(%struct._GimpBrushGenerated* %31, i32 %32)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %if.then.21
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.10, %if.end.30, %if.end.11
  ret void
}

declare i32 @g_signal_handlers_unblock_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_editor_update_brush(%struct._GtkAdjustment* %adjustment, %struct._GimpBrushEditor* %editor) #3 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %editor.addr = alloca %struct._GimpBrushEditor*, align 8
  %brush = alloca %struct._GimpBrushGenerated*, align 8
  %radius = alloca double, align 8
  %spikes = alloca i32, align 4
  %hardness = alloca double, align 8
  %ratio = alloca double, align 8
  %angle = alloca double, align 8
  %spacing = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store %struct._GimpBrushEditor* %editor, %struct._GimpBrushEditor** %editor.addr, align 8
  %0 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpBrushEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_editor_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDataEditor*
  %data = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %2, i32 0, i32 4
  %3 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %4 = bitcast %struct._GimpData* %3 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %4, %struct._GTypeInstance** %__inst, align 8
  %call2 = call i64 @gimp_brush_generated_get_type() #6
  store i64 %call2, i64* %__t, align 8
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %5, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %__r, align 4
  br label %if.end.8

if.else:                                          ; preds = %entry
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool3 = icmp ne %struct._GTypeClass* %7, null
  br i1 %tobool3, label %land.lhs.true, label %if.else.6

land.lhs.true:                                    ; preds = %if.else
  %8 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %9, i32 0, i32 0
  %10 = load i64, i64* %g_type, align 8
  %11 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %10, %11
  br i1 %cmp, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.6:                                        ; preds = %land.lhs.true, %if.else
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %13 = load i64, i64* %__t, align 8
  %call7 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %12, i64 %13) #8
  store i32 %call7, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.6, %if.then.5
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  %14 = load i32, i32* %__r, align 4
  store i32 %14, i32* %tmp
  %15 = load i32, i32* %tmp
  %tobool9 = icmp ne i32 %15, 0
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.end.8
  br label %if.end.73

if.end.11:                                        ; preds = %if.end.8
  %16 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %17 = bitcast %struct._GimpBrushEditor* %16 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_data_editor_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call12)
  %18 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpDataEditor*
  %data14 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %18, i32 0, i32 4
  %19 = load %struct._GimpData*, %struct._GimpData** %data14, align 8
  %20 = bitcast %struct._GimpData* %19 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_brush_generated_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call15)
  %21 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpBrushGenerated*
  store %struct._GimpBrushGenerated* %21, %struct._GimpBrushGenerated** %brush, align 8
  %22 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %radius_data = getelementptr inbounds %struct._GimpBrushEditor, %struct._GimpBrushEditor* %22, i32 0, i32 3
  %23 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %radius_data, align 8
  %call17 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %23)
  store double %call17, double* %radius, align 8
  %24 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %spikes_data = getelementptr inbounds %struct._GimpBrushEditor, %struct._GimpBrushEditor* %24, i32 0, i32 4
  %25 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %spikes_data, align 8
  %call18 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %25)
  %add = fadd double %call18, 5.000000e-01
  %conv = fptosi double %add to i32
  store i32 %conv, i32* %spikes, align 4
  %26 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %hardness_data = getelementptr inbounds %struct._GimpBrushEditor, %struct._GimpBrushEditor* %26, i32 0, i32 5
  %27 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %hardness_data, align 8
  %call19 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %27)
  store double %call19, double* %hardness, align 8
  %28 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %aspect_ratio_data = getelementptr inbounds %struct._GimpBrushEditor, %struct._GimpBrushEditor* %28, i32 0, i32 7
  %29 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %aspect_ratio_data, align 8
  %call20 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %29)
  store double %call20, double* %ratio, align 8
  %30 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %angle_data = getelementptr inbounds %struct._GimpBrushEditor, %struct._GimpBrushEditor* %30, i32 0, i32 6
  %31 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %angle_data, align 8
  %call21 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %31)
  store double %call21, double* %angle, align 8
  %32 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %spacing_data = getelementptr inbounds %struct._GimpBrushEditor, %struct._GimpBrushEditor* %32, i32 0, i32 8
  %33 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %spacing_data, align 8
  %call22 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %33)
  store double %call22, double* %spacing, align 8
  %34 = load double, double* %radius, align 8
  %35 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %call23 = call float @gimp_brush_generated_get_radius(%struct._GimpBrushGenerated* %35)
  %conv24 = fpext float %call23 to double
  %cmp25 = fcmp une double %34, %conv24
  br i1 %cmp25, label %if.then.52, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.11
  %36 = load i32, i32* %spikes, align 4
  %37 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %call27 = call i32 @gimp_brush_generated_get_spikes(%struct._GimpBrushGenerated* %37)
  %cmp28 = icmp ne i32 %36, %call27
  br i1 %cmp28, label %if.then.52, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %lor.lhs.false
  %38 = load double, double* %hardness, align 8
  %39 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %call31 = call float @gimp_brush_generated_get_hardness(%struct._GimpBrushGenerated* %39)
  %conv32 = fpext float %call31 to double
  %cmp33 = fcmp une double %38, %conv32
  br i1 %cmp33, label %if.then.52, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %lor.lhs.false.30
  %40 = load double, double* %ratio, align 8
  %41 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %call36 = call float @gimp_brush_generated_get_aspect_ratio(%struct._GimpBrushGenerated* %41)
  %conv37 = fpext float %call36 to double
  %cmp38 = fcmp une double %40, %conv37
  br i1 %cmp38, label %if.then.52, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %lor.lhs.false.35
  %42 = load double, double* %angle, align 8
  %43 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %call41 = call float @gimp_brush_generated_get_angle(%struct._GimpBrushGenerated* %43)
  %conv42 = fpext float %call41 to double
  %cmp43 = fcmp une double %42, %conv42
  br i1 %cmp43, label %if.then.52, label %lor.lhs.false.45

lor.lhs.false.45:                                 ; preds = %lor.lhs.false.40
  %44 = load double, double* %spacing, align 8
  %45 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %46 = bitcast %struct._GimpBrushGenerated* %45 to %struct._GTypeInstance*
  %call46 = call i64 @gimp_brush_get_type() #6
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call46)
  %47 = bitcast %struct._GTypeInstance* %call47 to %struct._GimpBrush*
  %call48 = call i32 @gimp_brush_get_spacing(%struct._GimpBrush* %47)
  %conv49 = sitofp i32 %call48 to double
  %cmp50 = fcmp une double %44, %conv49
  br i1 %cmp50, label %if.then.52, label %if.end.73

if.then.52:                                       ; preds = %lor.lhs.false.45, %lor.lhs.false.40, %lor.lhs.false.35, %lor.lhs.false.30, %lor.lhs.false, %if.end.11
  %48 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %49 = bitcast %struct._GimpBrushGenerated* %48 to i8*
  %50 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %51 = bitcast %struct._GimpBrushEditor* %50 to i8*
  %call53 = call i32 @g_signal_handlers_block_matched(i8* %49, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpBrushGenerated*, %struct._GParamSpec*, %struct._GimpBrushEditor*)* @gimp_brush_editor_notify_brush to i8*), i8* %51)
  %52 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %53 = bitcast %struct._GimpBrushGenerated* %52 to %struct._GTypeInstance*
  %call54 = call i64 @gimp_data_get_type() #6
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call54)
  %54 = bitcast %struct._GTypeInstance* %call55 to %struct._GimpData*
  call void @gimp_data_freeze(%struct._GimpData* %54)
  %55 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %56 = bitcast %struct._GimpBrushGenerated* %55 to %struct._GTypeInstance*
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 80)
  %57 = bitcast %struct._GTypeInstance* %call56 to %struct._GObject*
  call void @g_object_freeze_notify(%struct._GObject* %57)
  %58 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %59 = load double, double* %radius, align 8
  %conv57 = fptrunc double %59 to float
  %call58 = call float @gimp_brush_generated_set_radius(%struct._GimpBrushGenerated* %58, float %conv57)
  %60 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %61 = load i32, i32* %spikes, align 4
  %call59 = call i32 @gimp_brush_generated_set_spikes(%struct._GimpBrushGenerated* %60, i32 %61)
  %62 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %63 = load double, double* %hardness, align 8
  %conv60 = fptrunc double %63 to float
  %call61 = call float @gimp_brush_generated_set_hardness(%struct._GimpBrushGenerated* %62, float %conv60)
  %64 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %65 = load double, double* %ratio, align 8
  %conv62 = fptrunc double %65 to float
  %call63 = call float @gimp_brush_generated_set_aspect_ratio(%struct._GimpBrushGenerated* %64, float %conv62)
  %66 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %67 = load double, double* %angle, align 8
  %conv64 = fptrunc double %67 to float
  %call65 = call float @gimp_brush_generated_set_angle(%struct._GimpBrushGenerated* %66, float %conv64)
  %68 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %69 = bitcast %struct._GimpBrushGenerated* %68 to %struct._GTypeInstance*
  %call66 = call i64 @gimp_brush_get_type() #6
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call66)
  %70 = bitcast %struct._GTypeInstance* %call67 to %struct._GimpBrush*
  %71 = load double, double* %spacing, align 8
  %conv68 = fptosi double %71 to i32
  call void @gimp_brush_set_spacing(%struct._GimpBrush* %70, i32 %conv68)
  %72 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %73 = bitcast %struct._GimpBrushGenerated* %72 to %struct._GTypeInstance*
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 80)
  %74 = bitcast %struct._GTypeInstance* %call69 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %74)
  %75 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %76 = bitcast %struct._GimpBrushGenerated* %75 to %struct._GTypeInstance*
  %call70 = call i64 @gimp_data_get_type() #6
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 %call70)
  %77 = bitcast %struct._GTypeInstance* %call71 to %struct._GimpData*
  call void @gimp_data_thaw(%struct._GimpData* %77)
  %78 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %79 = bitcast %struct._GimpBrushGenerated* %78 to i8*
  %80 = load %struct._GimpBrushEditor*, %struct._GimpBrushEditor** %editor.addr, align 8
  %81 = bitcast %struct._GimpBrushEditor* %80 to i8*
  %call72 = call i32 @g_signal_handlers_unblock_matched(i8* %79, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpBrushGenerated*, %struct._GParamSpec*, %struct._GimpBrushEditor*)* @gimp_brush_editor_notify_brush to i8*), i8* %81)
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.10, %if.then.52, %lor.lhs.false.45
  ret void
}

declare i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #2

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare i32 @gimp_brush_generated_set_shape(%struct._GimpBrushGenerated*, i32) #1

declare double @gtk_adjustment_get_value(%struct._GtkAdjustment*) #1

declare void @gimp_data_freeze(%struct._GimpData*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_data_get_type() #2

declare void @g_object_freeze_notify(%struct._GObject*) #1

declare float @gimp_brush_generated_set_radius(%struct._GimpBrushGenerated*, float) #1

declare i32 @gimp_brush_generated_set_spikes(%struct._GimpBrushGenerated*, i32) #1

declare float @gimp_brush_generated_set_hardness(%struct._GimpBrushGenerated*, float) #1

declare float @gimp_brush_generated_set_aspect_ratio(%struct._GimpBrushGenerated*, float) #1

declare float @gimp_brush_generated_set_angle(%struct._GimpBrushGenerated*, float) #1

declare void @gimp_brush_set_spacing(%struct._GimpBrush*, i32) #1

declare void @g_object_thaw_notify(%struct._GObject*) #1

declare void @gimp_data_thaw(%struct._GimpData*) #1

declare i8* @g_type_interface_peek_parent(i8*) #1

declare i8* @g_type_default_interface_peek(i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_editor_set_context(%struct._GimpDocked* %docked, %struct._GimpContext* %context) #3 {
entry:
  %docked.addr = alloca %struct._GimpDocked*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %data_editor = alloca %struct._GimpDataEditor*, align 8
  store %struct._GimpDocked* %docked, %struct._GimpDocked** %docked.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpDocked*, %struct._GimpDocked** %docked.addr, align 8
  %1 = bitcast %struct._GimpDocked* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_editor_get_type() #6
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

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gimp_view_set_expand(%struct._GimpView*, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare %struct._GtkWidget* @gimp_enum_stock_box_new(i64, i8*, i32, void ()*, i8*, %struct._GtkWidget**) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_brush_generated_shape_get_type() #2

declare %struct._GtkObject* @gtk_adjustment_new(double, double, double, double, double, double) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_adjustment_get_type() #2

declare %struct._GtkWidget* @gimp_spin_scale_new(%struct._GtkAdjustment*, i8*, i32) #1

declare void @gimp_spin_scale_set_scale_limits(%struct._GimpSpinScale*, double, double) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_spin_scale_get_type() #2

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

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
