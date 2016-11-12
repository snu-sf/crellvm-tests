; ModuleID = './app/widgets/gimpbrushselect.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpBrushSelectClass = type { %struct._GimpPdbDialogClass }
%struct._GimpPdbDialogClass = type { %struct._GimpDialogClass, %struct._GList*, %struct._GValueArray* (%struct._GimpPdbDialog*, %struct._GimpObject*, i32, %struct._GError**)* }
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
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GValueArray = type { i32, %struct._GValue*, i32 }
%struct._GimpPdbDialog = type { %struct._GimpDialog, %struct._GimpPDB*, %struct._GimpContext*, %struct._GimpContext*, i64, %struct._GimpObject*, i8*, i32, %struct._GimpMenuFactory*, %struct._GtkWidget* }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpPDB = type { %struct._GimpObject, %struct._Gimp*, %struct._GHashTable*, %struct._GHashTable* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
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
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GHashTable = type opaque
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type { %struct._GimpData, %struct._TempBuf*, %struct._TempBuf*, i32, %struct._GimpVector2, %struct._GimpVector2, i32, %struct._GimpBrushCache*, %struct._GimpBrushCache*, %struct._GimpBrushCache* }
%struct._GimpData = type { %struct._GimpViewable }
%struct._TempBuf = type { i32, i32, i32, i32, i32, i8* }
%struct._GimpVector2 = type { double, double }
%struct._GimpBrushCache = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpMenuFactory = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GimpBrushSelect = type { %struct._GimpPdbDialog, double, i32, i32, %struct._GtkAdjustment*, %struct._GtkWidget* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpContainerEditor = type { %struct._GtkBox, %struct._GimpContainerView*, %struct._GimpContainerEditorPrivate* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpContainerView = type opaque
%struct._GimpContainerEditorPrivate = type opaque
%struct._GimpContainerBox = type { %struct._GimpEditor, %struct._GtkWidget* }
%struct._GimpEditor = type { %struct._GtkBox, %struct._GimpEditorPrivate* }
%struct._GimpEditorPrivate = type opaque
%struct._GimpIntComboBox = type { %struct._GtkComboBox, i8*, void ()*, void ()*, void ()* }
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkComboBoxPrivate = type opaque
%struct._GimpBrushFactoryView = type { %struct._GimpDataFactoryView, %struct._GtkWidget*, %struct._GtkAdjustment*, i32, i32 }
%struct._GimpDataFactoryView = type { %struct._GimpContainerEditor, %struct._GimpDataFactoryViewPriv* }
%struct._GimpDataFactoryViewPriv = type opaque
%struct._GimpArray = type { i8*, i64, i32 }

@gimp_brush_select_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"GimpBrushSelect\00", align 1
@gimp_brush_select_parent_class = internal global i8* null, align 8
@GimpBrushSelect_private_offset = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"opacity\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"paint-mode\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"spacing\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"opacity-changed\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"paint-mode-changed\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"Opacity\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"Mode:\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"gimpbrushselect.c\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_brush_select_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_brush_select_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_brush_select_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_pdb_dialog_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 1000, void (i8*, i8*)* bitcast (void (i8*)* @gimp_brush_select_class_intern_init to void (i8*, i8*)*), i32 368, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpBrushSelect*)* @gimp_brush_select_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_brush_select_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_brush_select_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_pdb_dialog_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_select_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_brush_select_parent_class, align 8
  %1 = load i32, i32* @GimpBrushSelect_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpBrushSelect_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpBrushSelectClass*
  call void @gimp_brush_select_class_init(%struct._GimpBrushSelectClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_select_init(%struct._GimpBrushSelect* %select) #3 {
entry:
  %select.addr = alloca %struct._GimpBrushSelect*, align 8
  store %struct._GimpBrushSelect* %select, %struct._GimpBrushSelect** %select.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_select_class_init(%struct._GimpBrushSelectClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpBrushSelectClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %pdb_class = alloca %struct._GimpPdbDialogClass*, align 8
  store %struct._GimpBrushSelectClass* %klass, %struct._GimpBrushSelectClass** %klass.addr, align 8
  %0 = load %struct._GimpBrushSelectClass*, %struct._GimpBrushSelectClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpBrushSelectClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpBrushSelectClass*, %struct._GimpBrushSelectClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpBrushSelectClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_pdb_dialog_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpPdbDialogClass*
  store %struct._GimpPdbDialogClass* %5, %struct._GimpPdbDialogClass** %pdb_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_brush_select_constructed, void (%struct._GObject*)** %constructed, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_brush_select_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %8 = load %struct._GimpPdbDialogClass*, %struct._GimpPdbDialogClass** %pdb_class, align 8
  %run_callback = getelementptr inbounds %struct._GimpPdbDialogClass, %struct._GimpPdbDialogClass* %8, i32 0, i32 2
  store %struct._GValueArray* (%struct._GimpPdbDialog*, %struct._GimpObject*, i32, %struct._GError**)* @gimp_brush_select_run_callback, %struct._GValueArray* (%struct._GimpPdbDialog*, %struct._GimpObject*, i32, %struct._GError**)** %run_callback, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* null, i8* null, double 0.000000e+00, double 1.000000e+00, double 1.000000e+00, i32 230)
  call void @g_object_class_install_property(%struct._GObjectClass* %9, i32 1, %struct._GParamSpec* %call3)
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call4 = call i64 @gimp_layer_mode_effects_get_type() #6
  %call5 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* null, i8* null, i64 %call4, i32 0, i32 230)
  call void @g_object_class_install_property(%struct._GObjectClass* %10, i32 2, %struct._GParamSpec* %call5)
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* null, i32 -2147483647, i32 1000, i32 -1, i32 230)
  call void @g_object_class_install_property(%struct._GObjectClass* %11, i32 3, %struct._GParamSpec* %call6)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_select_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %dialog = alloca %struct._GimpPdbDialog*, align 8
  %select = alloca %struct._GimpBrushSelect*, align 8
  %content_area = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %scale = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %spacing_adj = alloca %struct._GtkAdjustment*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_pdb_dialog_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPdbDialog*
  store %struct._GimpPdbDialog* %2, %struct._GimpPdbDialog** %dialog, align 8
  %3 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %4 = bitcast %struct._GObject* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_brush_select_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpBrushSelect*
  store %struct._GimpBrushSelect* %5, %struct._GimpBrushSelect** %select, align 8
  %6 = load i8*, i8** @gimp_brush_select_parent_class, align 8
  %7 = bitcast i8* %6 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 80)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 9
  %9 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %9, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i8*, i8** @gimp_brush_select_parent_class, align 8
  %11 = bitcast i8* %10 to %struct._GTypeClass*
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %11, i64 80)
  %12 = bitcast %struct._GTypeClass* %call5 to %struct._GObjectClass*
  %constructed6 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 9
  %13 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed6, align 8
  %14 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %13(%struct._GObject* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load %struct._GimpPdbDialog*, %struct._GimpPdbDialog** %dialog, align 8
  %context = getelementptr inbounds %struct._GimpPdbDialog, %struct._GimpPdbDialog* %15, i32 0, i32 3
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %17 = load %struct._GimpBrushSelect*, %struct._GimpBrushSelect** %select, align 8
  %initial_opacity = getelementptr inbounds %struct._GimpBrushSelect, %struct._GimpBrushSelect* %17, i32 0, i32 1
  %18 = load double, double* %initial_opacity, align 8
  call void @gimp_context_set_opacity(%struct._GimpContext* %16, double %18)
  %19 = load %struct._GimpPdbDialog*, %struct._GimpPdbDialog** %dialog, align 8
  %context7 = getelementptr inbounds %struct._GimpPdbDialog, %struct._GimpPdbDialog* %19, i32 0, i32 3
  %20 = load %struct._GimpContext*, %struct._GimpContext** %context7, align 8
  %21 = load %struct._GimpBrushSelect*, %struct._GimpBrushSelect** %select, align 8
  %initial_mode = getelementptr inbounds %struct._GimpBrushSelect, %struct._GimpBrushSelect* %21, i32 0, i32 2
  %22 = load i32, i32* %initial_mode, align 4
  call void @gimp_context_set_paint_mode(%struct._GimpContext* %20, i32 %22)
  %23 = load %struct._GimpPdbDialog*, %struct._GimpPdbDialog** %dialog, align 8
  %context8 = getelementptr inbounds %struct._GimpPdbDialog, %struct._GimpPdbDialog* %23, i32 0, i32 3
  %24 = load %struct._GimpContext*, %struct._GimpContext** %context8, align 8
  %25 = bitcast %struct._GimpContext* %24 to i8*
  %26 = load %struct._GimpPdbDialog*, %struct._GimpPdbDialog** %dialog, align 8
  %27 = bitcast %struct._GimpPdbDialog* %26 to i8*
  %call9 = call i64 @g_signal_connect_data(i8* %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContext*, double, %struct._GimpBrushSelect*)* @gimp_brush_select_opacity_changed to void ()*), i8* %27, void (i8*, %struct._GClosure*)* null, i32 0)
  %28 = load %struct._GimpPdbDialog*, %struct._GimpPdbDialog** %dialog, align 8
  %context10 = getelementptr inbounds %struct._GimpPdbDialog, %struct._GimpPdbDialog* %28, i32 0, i32 3
  %29 = load %struct._GimpContext*, %struct._GimpContext** %context10, align 8
  %30 = bitcast %struct._GimpContext* %29 to i8*
  %31 = load %struct._GimpPdbDialog*, %struct._GimpPdbDialog** %dialog, align 8
  %32 = bitcast %struct._GimpPdbDialog* %31 to i8*
  %call11 = call i64 @g_signal_connect_data(i8* %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContext*, i32, %struct._GimpBrushSelect*)* @gimp_brush_select_mode_changed to void ()*), i8* %32, void (i8*, %struct._GClosure*)* null, i32 0)
  %33 = load %struct._GimpPdbDialog*, %struct._GimpPdbDialog** %dialog, align 8
  %context12 = getelementptr inbounds %struct._GimpPdbDialog, %struct._GimpPdbDialog* %33, i32 0, i32 3
  %34 = load %struct._GimpContext*, %struct._GimpContext** %context12, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %34, i32 0, i32 1
  %35 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %brush_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %35, i32 0, i32 37
  %36 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %brush_factory, align 8
  %37 = load %struct._GimpPdbDialog*, %struct._GimpPdbDialog** %dialog, align 8
  %context13 = getelementptr inbounds %struct._GimpPdbDialog, %struct._GimpPdbDialog* %37, i32 0, i32 3
  %38 = load %struct._GimpContext*, %struct._GimpContext** %context13, align 8
  %39 = load %struct._GimpPdbDialog*, %struct._GimpPdbDialog** %dialog, align 8
  %menu_factory = getelementptr inbounds %struct._GimpPdbDialog, %struct._GimpPdbDialog* %39, i32 0, i32 8
  %40 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory, align 8
  %call14 = call %struct._GtkWidget* @gimp_brush_factory_view_new(i32 1, %struct._GimpDataFactory* %36, %struct._GimpContext* %38, i32 0, i32 32, i32 1, %struct._GimpMenuFactory* %40)
  %41 = load %struct._GimpPdbDialog*, %struct._GimpPdbDialog** %dialog, align 8
  %view = getelementptr inbounds %struct._GimpPdbDialog, %struct._GimpPdbDialog* %41, i32 0, i32 9
  store %struct._GtkWidget* %call14, %struct._GtkWidget** %view, align 8
  %42 = load %struct._GimpPdbDialog*, %struct._GimpPdbDialog** %dialog, align 8
  %view15 = getelementptr inbounds %struct._GimpPdbDialog, %struct._GimpPdbDialog* %42, i32 0, i32 9
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %view15, align 8
  %44 = bitcast %struct._GtkWidget* %43 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_container_editor_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call16)
  %45 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpContainerEditor*
  %view18 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %45, i32 0, i32 1
  %46 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view18, align 8
  %47 = bitcast %struct._GimpContainerView* %46 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_container_box_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call19)
  %48 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpContainerBox*
  call void @gimp_container_box_set_size_request(%struct._GimpContainerBox* %48, i32 170, i32 170)
  %49 = load %struct._GimpPdbDialog*, %struct._GimpPdbDialog** %dialog, align 8
  %view21 = getelementptr inbounds %struct._GimpPdbDialog, %struct._GimpPdbDialog* %49, i32 0, i32 9
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %view21, align 8
  %51 = bitcast %struct._GtkWidget* %50 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_container_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call22)
  %52 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %52, i32 12)
  %53 = load %struct._GimpPdbDialog*, %struct._GimpPdbDialog** %dialog, align 8
  %54 = bitcast %struct._GimpPdbDialog* %53 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_dialog_get_type() #6
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call24)
  %55 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkDialog*
  %call26 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %55)
  store %struct._GtkWidget* %call26, %struct._GtkWidget** %content_area, align 8
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %content_area, align 8
  %57 = bitcast %struct._GtkWidget* %56 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_box_get_type() #6
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call27)
  %58 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkBox*
  %59 = load %struct._GimpPdbDialog*, %struct._GimpPdbDialog** %dialog, align 8
  %view29 = getelementptr inbounds %struct._GimpPdbDialog, %struct._GimpPdbDialog* %59, i32 0, i32 9
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %view29, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %58, %struct._GtkWidget* %60, i32 1, i32 1, i32 0)
  %61 = load %struct._GimpPdbDialog*, %struct._GimpPdbDialog** %dialog, align 8
  %view30 = getelementptr inbounds %struct._GimpPdbDialog, %struct._GimpPdbDialog* %61, i32 0, i32 9
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %view30, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %62)
  %63 = load %struct._GimpPdbDialog*, %struct._GimpPdbDialog** %dialog, align 8
  %view31 = getelementptr inbounds %struct._GimpPdbDialog, %struct._GimpPdbDialog* %63, i32 0, i32 9
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %view31, align 8
  %65 = bitcast %struct._GtkWidget* %64 to %struct._GTypeInstance*
  %call32 = call i64 @gimp_container_editor_get_type() #6
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 %call32)
  %66 = bitcast %struct._GTypeInstance* %call33 to %struct._GimpContainerEditor*
  %view34 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %66, i32 0, i32 1
  %67 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view34, align 8
  %68 = bitcast %struct._GimpContainerView* %67 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_widget_get_type() #6
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 %call35)
  %69 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkWidget*
  store %struct._GtkWidget* %69, %struct._GtkWidget** %vbox, align 8
  %70 = load %struct._GimpPdbDialog*, %struct._GimpPdbDialog** %dialog, align 8
  %context37 = getelementptr inbounds %struct._GimpPdbDialog, %struct._GimpPdbDialog* %70, i32 0, i32 3
  %71 = load %struct._GimpContext*, %struct._GimpContext** %context37, align 8
  %call38 = call double @gimp_context_get_opacity(%struct._GimpContext* %71)
  %mul = fmul double %call38, 1.000000e+02
  %call39 = call %struct._GtkObject* @gtk_adjustment_new(double %mul, double 0.000000e+00, double 1.000000e+02, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00)
  %72 = bitcast %struct._GtkObject* %call39 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_adjustment_get_type() #6
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %72, i64 %call40)
  %73 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkAdjustment*
  %74 = load %struct._GimpBrushSelect*, %struct._GimpBrushSelect** %select, align 8
  %opacity_data = getelementptr inbounds %struct._GimpBrushSelect, %struct._GimpBrushSelect* %74, i32 0, i32 4
  store %struct._GtkAdjustment* %73, %struct._GtkAdjustment** %opacity_data, align 8
  %75 = load %struct._GimpBrushSelect*, %struct._GimpBrushSelect** %select, align 8
  %opacity_data42 = getelementptr inbounds %struct._GimpBrushSelect, %struct._GimpBrushSelect* %75, i32 0, i32 4
  %76 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %opacity_data42, align 8
  %call43 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0)) #5
  %call44 = call %struct._GtkWidget* @gimp_spin_scale_new(%struct._GtkAdjustment* %76, i8* %call43, i32 1)
  store %struct._GtkWidget* %call44, %struct._GtkWidget** %scale, align 8
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %78 = bitcast %struct._GtkWidget* %77 to %struct._GTypeInstance*
  %call45 = call i64 @gtk_box_get_type() #6
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %78, i64 %call45)
  %79 = bitcast %struct._GTypeInstance* %call46 to %struct._GtkBox*
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %79, %struct._GtkWidget* %80, i32 0, i32 0, i32 0)
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %81)
  %82 = load %struct._GimpBrushSelect*, %struct._GimpBrushSelect** %select, align 8
  %opacity_data47 = getelementptr inbounds %struct._GimpBrushSelect, %struct._GimpBrushSelect* %82, i32 0, i32 4
  %83 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %opacity_data47, align 8
  %84 = bitcast %struct._GtkAdjustment* %83 to i8*
  %85 = load %struct._GimpBrushSelect*, %struct._GimpBrushSelect** %select, align 8
  %86 = bitcast %struct._GimpBrushSelect* %85 to i8*
  %call48 = call i64 @g_signal_connect_data(i8* %84, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._GimpBrushSelect*)* @gimp_brush_select_opacity_update to void ()*), i8* %86, void (i8*, %struct._GClosure*)* null, i32 0)
  %call49 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 4)
  store %struct._GtkWidget* %call49, %struct._GtkWidget** %hbox, align 8
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %88 = bitcast %struct._GtkWidget* %87 to %struct._GTypeInstance*
  %call50 = call i64 @gtk_box_get_type() #6
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %88, i64 %call50)
  %89 = bitcast %struct._GTypeInstance* %call51 to %struct._GtkBox*
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %89, %struct._GtkWidget* %90, i32 0, i32 0, i32 0)
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %91)
  %call52 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0)) #5
  %call53 = call %struct._GtkWidget* @gtk_label_new(i8* %call52)
  store %struct._GtkWidget* %call53, %struct._GtkWidget** %label, align 8
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %93 = bitcast %struct._GtkWidget* %92 to %struct._GTypeInstance*
  %call54 = call i64 @gtk_box_get_type() #6
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %93, i64 %call54)
  %94 = bitcast %struct._GTypeInstance* %call55 to %struct._GtkBox*
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %94, %struct._GtkWidget* %95, i32 0, i32 0, i32 0)
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %96)
  %call56 = call %struct._GtkWidget* @gimp_paint_mode_menu_new(i32 1, i32 0)
  %97 = load %struct._GimpBrushSelect*, %struct._GimpBrushSelect** %select, align 8
  %paint_mode_menu = getelementptr inbounds %struct._GimpBrushSelect, %struct._GimpBrushSelect* %97, i32 0, i32 5
  store %struct._GtkWidget* %call56, %struct._GtkWidget** %paint_mode_menu, align 8
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %99 = bitcast %struct._GtkWidget* %98 to %struct._GTypeInstance*
  %call57 = call i64 @gtk_box_get_type() #6
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %99, i64 %call57)
  %100 = bitcast %struct._GTypeInstance* %call58 to %struct._GtkBox*
  %101 = load %struct._GimpBrushSelect*, %struct._GimpBrushSelect** %select, align 8
  %paint_mode_menu59 = getelementptr inbounds %struct._GimpBrushSelect, %struct._GimpBrushSelect* %101, i32 0, i32 5
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %paint_mode_menu59, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %100, %struct._GtkWidget* %102, i32 1, i32 1, i32 0)
  %103 = load %struct._GimpBrushSelect*, %struct._GimpBrushSelect** %select, align 8
  %paint_mode_menu60 = getelementptr inbounds %struct._GimpBrushSelect, %struct._GimpBrushSelect* %103, i32 0, i32 5
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %paint_mode_menu60, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %104)
  %105 = load %struct._GimpBrushSelect*, %struct._GimpBrushSelect** %select, align 8
  %paint_mode_menu61 = getelementptr inbounds %struct._GimpBrushSelect, %struct._GimpBrushSelect* %105, i32 0, i32 5
  %106 = load %struct._GtkWidget*, %struct._GtkWidget** %paint_mode_menu61, align 8
  %107 = bitcast %struct._GtkWidget* %106 to %struct._GTypeInstance*
  %call62 = call i64 @gimp_int_combo_box_get_type() #6
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %107, i64 %call62)
  %108 = bitcast %struct._GTypeInstance* %call63 to %struct._GimpIntComboBox*
  %109 = load %struct._GimpPdbDialog*, %struct._GimpPdbDialog** %dialog, align 8
  %context64 = getelementptr inbounds %struct._GimpPdbDialog, %struct._GimpPdbDialog* %109, i32 0, i32 3
  %110 = load %struct._GimpContext*, %struct._GimpContext** %context64, align 8
  %call65 = call i32 @gimp_context_get_paint_mode(%struct._GimpContext* %110)
  %111 = load %struct._GimpBrushSelect*, %struct._GimpBrushSelect** %select, align 8
  %112 = bitcast %struct._GimpBrushSelect* %111 to i8*
  %call66 = call i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox* %108, i32 %call65, void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpBrushSelect*)* @gimp_brush_select_mode_update to void ()*), i8* %112)
  %113 = load %struct._GimpPdbDialog*, %struct._GimpPdbDialog** %dialog, align 8
  %view67 = getelementptr inbounds %struct._GimpPdbDialog, %struct._GimpPdbDialog* %113, i32 0, i32 9
  %114 = load %struct._GtkWidget*, %struct._GtkWidget** %view67, align 8
  %115 = bitcast %struct._GtkWidget* %114 to %struct._GTypeInstance*
  %call68 = call i64 @gimp_brush_factory_view_get_type() #6
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %115, i64 %call68)
  %116 = bitcast %struct._GTypeInstance* %call69 to %struct._GimpBrushFactoryView*
  %spacing_adjustment = getelementptr inbounds %struct._GimpBrushFactoryView, %struct._GimpBrushFactoryView* %116, i32 0, i32 2
  %117 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %spacing_adjustment, align 8
  store %struct._GtkAdjustment* %117, %struct._GtkAdjustment** %spacing_adj, align 8
  %118 = load %struct._GimpBrushSelect*, %struct._GimpBrushSelect** %select, align 8
  %spacing = getelementptr inbounds %struct._GimpBrushSelect, %struct._GimpBrushSelect* %118, i32 0, i32 3
  %119 = load i32, i32* %spacing, align 4
  %cmp = icmp sge i32 %119, 0
  br i1 %cmp, label %if.then.70, label %if.end.72

if.then.70:                                       ; preds = %if.end
  %120 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %spacing_adj, align 8
  %121 = load %struct._GimpBrushSelect*, %struct._GimpBrushSelect** %select, align 8
  %spacing71 = getelementptr inbounds %struct._GimpBrushSelect, %struct._GimpBrushSelect* %121, i32 0, i32 3
  %122 = load i32, i32* %spacing71, align 4
  %conv = sitofp i32 %122 to double
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %120, double %conv)
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.70, %if.end
  %123 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %spacing_adj, align 8
  %124 = bitcast %struct._GtkAdjustment* %123 to i8*
  %125 = load %struct._GimpBrushSelect*, %struct._GimpBrushSelect** %select, align 8
  %126 = bitcast %struct._GimpBrushSelect* %125 to i8*
  %call73 = call i64 @g_signal_connect_data(i8* %124, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._GimpBrushSelect*)* @gimp_brush_select_spacing_update to void ()*), i8* %126, void (i8*, %struct._GClosure*)* null, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_select_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %dialog = alloca %struct._GimpPdbDialog*, align 8
  %select = alloca %struct._GimpBrushSelect*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_pdb_dialog_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPdbDialog*
  store %struct._GimpPdbDialog* %2, %struct._GimpPdbDialog** %dialog, align 8
  %3 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %4 = bitcast %struct._GObject* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_brush_select_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpBrushSelect*
  store %struct._GimpBrushSelect* %5, %struct._GimpBrushSelect** %select, align 8
  %6 = load i32, i32* %property_id.addr, align 4
  switch i32 %6, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.6
    i32 3, label %sw.bb.15
  ]

sw.bb:                                            ; preds = %entry
  %7 = load %struct._GimpPdbDialog*, %struct._GimpPdbDialog** %dialog, align 8
  %view = getelementptr inbounds %struct._GimpPdbDialog, %struct._GimpPdbDialog* %7, i32 0, i32 9
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %tobool = icmp ne %struct._GtkWidget* %8, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %9 = load %struct._GimpPdbDialog*, %struct._GimpPdbDialog** %dialog, align 8
  %context = getelementptr inbounds %struct._GimpPdbDialog, %struct._GimpPdbDialog* %9, i32 0, i32 3
  %10 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %11 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call double @g_value_get_double(%struct._GValue* %11)
  call void @gimp_context_set_opacity(%struct._GimpContext* %10, double %call4)
  br label %if.end

if.else:                                          ; preds = %sw.bb
  %12 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call5 = call double @g_value_get_double(%struct._GValue* %12)
  %13 = load %struct._GimpBrushSelect*, %struct._GimpBrushSelect** %select, align 8
  %initial_opacity = getelementptr inbounds %struct._GimpBrushSelect, %struct._GimpBrushSelect* %13, i32 0, i32 1
  store double %call5, double* %initial_opacity, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %14 = load %struct._GimpPdbDialog*, %struct._GimpPdbDialog** %dialog, align 8
  %view7 = getelementptr inbounds %struct._GimpPdbDialog, %struct._GimpPdbDialog* %14, i32 0, i32 9
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %view7, align 8
  %tobool8 = icmp ne %struct._GtkWidget* %15, null
  br i1 %tobool8, label %if.then.9, label %if.else.12

if.then.9:                                        ; preds = %sw.bb.6
  %16 = load %struct._GimpPdbDialog*, %struct._GimpPdbDialog** %dialog, align 8
  %context10 = getelementptr inbounds %struct._GimpPdbDialog, %struct._GimpPdbDialog* %16, i32 0, i32 3
  %17 = load %struct._GimpContext*, %struct._GimpContext** %context10, align 8
  %18 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call11 = call i32 @g_value_get_enum(%struct._GValue* %18)
  call void @gimp_context_set_paint_mode(%struct._GimpContext* %17, i32 %call11)
  br label %if.end.14

if.else.12:                                       ; preds = %sw.bb.6
  %19 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call13 = call i32 @g_value_get_enum(%struct._GValue* %19)
  %20 = load %struct._GimpBrushSelect*, %struct._GimpBrushSelect** %select, align 8
  %initial_mode = getelementptr inbounds %struct._GimpBrushSelect, %struct._GimpBrushSelect* %20, i32 0, i32 2
  store i32 %call13, i32* %initial_mode, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.12, %if.then.9
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  %21 = load %struct._GimpPdbDialog*, %struct._GimpPdbDialog** %dialog, align 8
  %view16 = getelementptr inbounds %struct._GimpPdbDialog, %struct._GimpPdbDialog* %21, i32 0, i32 9
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %view16, align 8
  %tobool17 = icmp ne %struct._GtkWidget* %22, null
  br i1 %tobool17, label %if.then.18, label %if.else.26

if.then.18:                                       ; preds = %sw.bb.15
  %23 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call19 = call i32 @g_value_get_int(%struct._GValue* %23)
  %cmp = icmp sge i32 %call19, 0
  br i1 %cmp, label %if.then.20, label %if.end.25

if.then.20:                                       ; preds = %if.then.18
  %24 = load %struct._GimpPdbDialog*, %struct._GimpPdbDialog** %dialog, align 8
  %view21 = getelementptr inbounds %struct._GimpPdbDialog, %struct._GimpPdbDialog* %24, i32 0, i32 9
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %view21, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_brush_factory_view_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call22)
  %27 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpBrushFactoryView*
  %spacing_adjustment = getelementptr inbounds %struct._GimpBrushFactoryView, %struct._GimpBrushFactoryView* %27, i32 0, i32 2
  %28 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %spacing_adjustment, align 8
  %29 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call24 = call i32 @g_value_get_int(%struct._GValue* %29)
  %conv = sitofp i32 %call24 to double
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %28, double %conv)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.20, %if.then.18
  br label %if.end.28

if.else.26:                                       ; preds = %sw.bb.15
  %30 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call27 = call i32 @g_value_get_int(%struct._GValue* %30)
  %31 = load %struct._GimpBrushSelect*, %struct._GimpBrushSelect** %select, align 8
  %spacing = getelementptr inbounds %struct._GimpBrushSelect, %struct._GimpBrushSelect* %31, i32 0, i32 3
  store i32 %call27, i32* %spacing, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.26, %if.end.25
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %32 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %32, %struct._GObject** %_glib__object, align 8
  %33 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %33, %struct._GParamSpec** %_glib__pspec, align 8
  %34 = load i32, i32* %property_id.addr, align 4
  store i32 %34, i32* %_glib__property_id, align 4
  %35 = load i32, i32* %_glib__property_id, align 4
  %36 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %36, i32 0, i32 1
  %37 = load i8*, i8** %name, align 8
  %38 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %39 = bitcast %struct._GParamSpec* %38 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %39, i32 0, i32 0
  %40 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %40, i32 0, i32 0
  %41 = load i64, i64* %g_type, align 8
  %call29 = call i8* @g_type_name(i64 %41)
  %42 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %43 = bitcast %struct._GObject* %42 to %struct._GTypeInstance*
  %g_class30 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %43, i32 0, i32 0
  %44 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class30, align 8
  %g_type31 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %44, i32 0, i32 0
  %45 = load i64, i64* %g_type31, align 8
  %call32 = call i8* @g_type_name(i64 %45)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), i32 250, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i32 %35, i8* %37, i8* %call29, i8* %call32)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.end.28, %if.end.14, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @gimp_brush_select_run_callback(%struct._GimpPdbDialog* %dialog, %struct._GimpObject* %object, i32 %closing, %struct._GError** %error) #3 {
entry:
  %dialog.addr = alloca %struct._GimpPdbDialog*, align 8
  %object.addr = alloca %struct._GimpObject*, align 8
  %closing.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %brush = alloca %struct._GimpBrush*, align 8
  %array = alloca %struct._GimpArray*, align 8
  %return_vals = alloca %struct._GValueArray*, align 8
  store %struct._GimpPdbDialog* %dialog, %struct._GimpPdbDialog** %dialog.addr, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store i32 %closing, i32* %closing.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %1 = bitcast %struct._GimpObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brush_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBrush*
  store %struct._GimpBrush* %2, %struct._GimpBrush** %brush, align 8
  %3 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %mask = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %3, i32 0, i32 1
  %4 = load %struct._TempBuf*, %struct._TempBuf** %mask, align 8
  %call2 = call i8* @temp_buf_get_data(%struct._TempBuf* %4)
  %5 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %mask3 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %5, i32 0, i32 1
  %6 = load %struct._TempBuf*, %struct._TempBuf** %mask3, align 8
  %call4 = call i64 @temp_buf_get_data_size(%struct._TempBuf* %6)
  %call5 = call %struct._GimpArray* @gimp_array_new(i8* %call2, i64 %call4, i32 1)
  store %struct._GimpArray* %call5, %struct._GimpArray** %array, align 8
  %7 = load %struct._GimpPdbDialog*, %struct._GimpPdbDialog** %dialog.addr, align 8
  %pdb = getelementptr inbounds %struct._GimpPdbDialog, %struct._GimpPdbDialog* %7, i32 0, i32 1
  %8 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb, align 8
  %9 = load %struct._GimpPdbDialog*, %struct._GimpPdbDialog** %dialog.addr, align 8
  %caller_context = getelementptr inbounds %struct._GimpPdbDialog, %struct._GimpPdbDialog* %9, i32 0, i32 2
  %10 = load %struct._GimpContext*, %struct._GimpContext** %caller_context, align 8
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %12 = load %struct._GimpPdbDialog*, %struct._GimpPdbDialog** %dialog.addr, align 8
  %callback_name = getelementptr inbounds %struct._GimpPdbDialog, %struct._GimpPdbDialog* %12, i32 0, i32 6
  %13 = load i8*, i8** %callback_name, align 8
  %14 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %15 = bitcast %struct._GimpObject* %14 to i8*
  %call6 = call i8* @gimp_object_get_name(i8* %15)
  %16 = load %struct._GimpPdbDialog*, %struct._GimpPdbDialog** %dialog.addr, align 8
  %context = getelementptr inbounds %struct._GimpPdbDialog, %struct._GimpPdbDialog* %16, i32 0, i32 3
  %17 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call7 = call double @gimp_context_get_opacity(%struct._GimpContext* %17)
  %mul = fmul double %call7, 1.000000e+02
  %call8 = call i64 @gimp_int32_get_type() #6
  %18 = load %struct._GimpPdbDialog*, %struct._GimpPdbDialog** %dialog.addr, align 8
  %19 = bitcast %struct._GimpPdbDialog* %18 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_brush_select_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call9)
  %20 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpBrushSelect*
  %spacing = getelementptr inbounds %struct._GimpBrushSelect, %struct._GimpBrushSelect* %20, i32 0, i32 3
  %21 = load i32, i32* %spacing, align 4
  %call11 = call i64 @gimp_int32_get_type() #6
  %22 = load %struct._GimpPdbDialog*, %struct._GimpPdbDialog** %dialog.addr, align 8
  %context12 = getelementptr inbounds %struct._GimpPdbDialog, %struct._GimpPdbDialog* %22, i32 0, i32 3
  %23 = load %struct._GimpContext*, %struct._GimpContext** %context12, align 8
  %call13 = call i32 @gimp_context_get_paint_mode(%struct._GimpContext* %23)
  %call14 = call i64 @gimp_int32_get_type() #6
  %24 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %mask15 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %24, i32 0, i32 1
  %25 = load %struct._TempBuf*, %struct._TempBuf** %mask15, align 8
  %width = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %25, i32 0, i32 1
  %26 = load i32, i32* %width, align 4
  %call16 = call i64 @gimp_int32_get_type() #6
  %27 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %mask17 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %27, i32 0, i32 1
  %28 = load %struct._TempBuf*, %struct._TempBuf** %mask17, align 8
  %height = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %28, i32 0, i32 2
  %29 = load i32, i32* %height, align 4
  %call18 = call i64 @gimp_int32_get_type() #6
  %30 = load %struct._GimpArray*, %struct._GimpArray** %array, align 8
  %length = getelementptr inbounds %struct._GimpArray, %struct._GimpArray* %30, i32 0, i32 1
  %31 = load i64, i64* %length, align 8
  %call19 = call i64 @gimp_int8_array_get_type() #6
  %32 = load %struct._GimpArray*, %struct._GimpArray** %array, align 8
  %call20 = call i64 @gimp_int32_get_type() #6
  %33 = load i32, i32* %closing.addr, align 4
  %call21 = call %struct._GValueArray* (%struct._GimpPDB*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GError**, i8*, ...) @gimp_pdb_execute_procedure_by_name(%struct._GimpPDB* %8, %struct._GimpContext* %10, %struct._GimpProgress* null, %struct._GError** %11, i8* %13, i64 64, i8* %call6, i64 60, double %mul, i64 %call8, i32 %21, i64 %call11, i32 %call13, i64 %call14, i32 %26, i64 %call16, i32 %29, i64 %call18, i64 %31, i64 %call19, %struct._GimpArray* %32, i64 %call20, i32 %33, i64 4)
  store %struct._GValueArray* %call21, %struct._GValueArray** %return_vals, align 8
  %34 = load %struct._GimpArray*, %struct._GimpArray** %array, align 8
  call void @gimp_array_free(%struct._GimpArray* %34)
  %35 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %35
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_mode_effects_get_type() #2

declare %struct._GParamSpec* @g_param_spec_int(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @gimp_context_set_opacity(%struct._GimpContext*, double) #1

declare void @gimp_context_set_paint_mode(%struct._GimpContext*, i32) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_select_opacity_changed(%struct._GimpContext* %context, double %opacity, %struct._GimpBrushSelect* %select) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %opacity.addr = alloca double, align 8
  %select.addr = alloca %struct._GimpBrushSelect*, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store double %opacity, double* %opacity.addr, align 8
  store %struct._GimpBrushSelect* %select, %struct._GimpBrushSelect** %select.addr, align 8
  %0 = load %struct._GimpBrushSelect*, %struct._GimpBrushSelect** %select.addr, align 8
  %opacity_data = getelementptr inbounds %struct._GimpBrushSelect, %struct._GimpBrushSelect* %0, i32 0, i32 4
  %1 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %opacity_data, align 8
  %2 = bitcast %struct._GtkAdjustment* %1 to i8*
  %3 = load %struct._GimpBrushSelect*, %struct._GimpBrushSelect** %select.addr, align 8
  %4 = bitcast %struct._GimpBrushSelect* %3 to i8*
  %call = call i32 @g_signal_handlers_block_matched(i8* %2, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkAdjustment*, %struct._GimpBrushSelect*)* @gimp_brush_select_opacity_update to i8*), i8* %4)
  %5 = load %struct._GimpBrushSelect*, %struct._GimpBrushSelect** %select.addr, align 8
  %opacity_data1 = getelementptr inbounds %struct._GimpBrushSelect, %struct._GimpBrushSelect* %5, i32 0, i32 4
  %6 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %opacity_data1, align 8
  %7 = load double, double* %opacity.addr, align 8
  %mul = fmul double %7, 1.000000e+02
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %6, double %mul)
  %8 = load %struct._GimpBrushSelect*, %struct._GimpBrushSelect** %select.addr, align 8
  %opacity_data2 = getelementptr inbounds %struct._GimpBrushSelect, %struct._GimpBrushSelect* %8, i32 0, i32 4
  %9 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %opacity_data2, align 8
  %10 = bitcast %struct._GtkAdjustment* %9 to i8*
  %11 = load %struct._GimpBrushSelect*, %struct._GimpBrushSelect** %select.addr, align 8
  %12 = bitcast %struct._GimpBrushSelect* %11 to i8*
  %call3 = call i32 @g_signal_handlers_unblock_matched(i8* %10, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkAdjustment*, %struct._GimpBrushSelect*)* @gimp_brush_select_opacity_update to i8*), i8* %12)
  %13 = load %struct._GimpBrushSelect*, %struct._GimpBrushSelect** %select.addr, align 8
  %14 = bitcast %struct._GimpBrushSelect* %13 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_pdb_dialog_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call4)
  %15 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpPdbDialog*
  call void @gimp_pdb_dialog_run_callback(%struct._GimpPdbDialog* %15, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_select_mode_changed(%struct._GimpContext* %context, i32 %paint_mode, %struct._GimpBrushSelect* %select) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %paint_mode.addr = alloca i32, align 4
  %select.addr = alloca %struct._GimpBrushSelect*, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %paint_mode, i32* %paint_mode.addr, align 4
  store %struct._GimpBrushSelect* %select, %struct._GimpBrushSelect** %select.addr, align 8
  %0 = load %struct._GimpBrushSelect*, %struct._GimpBrushSelect** %select.addr, align 8
  %paint_mode_menu = getelementptr inbounds %struct._GimpBrushSelect, %struct._GimpBrushSelect* %0, i32 0, i32 5
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %paint_mode_menu, align 8
  %2 = bitcast %struct._GtkWidget* %1 to i8*
  %3 = load %struct._GimpBrushSelect*, %struct._GimpBrushSelect** %select.addr, align 8
  %4 = bitcast %struct._GimpBrushSelect* %3 to i8*
  %call = call i32 @g_signal_handlers_block_matched(i8* %2, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GimpBrushSelect*)* @gimp_brush_select_mode_update to i8*), i8* %4)
  %5 = load %struct._GimpBrushSelect*, %struct._GimpBrushSelect** %select.addr, align 8
  %paint_mode_menu1 = getelementptr inbounds %struct._GimpBrushSelect, %struct._GimpBrushSelect* %5, i32 0, i32 5
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %paint_mode_menu1, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_int_combo_box_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call2)
  %8 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpIntComboBox*
  %9 = load i32, i32* %paint_mode.addr, align 4
  %call4 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %8, i32 %9)
  %10 = load %struct._GimpBrushSelect*, %struct._GimpBrushSelect** %select.addr, align 8
  %paint_mode_menu5 = getelementptr inbounds %struct._GimpBrushSelect, %struct._GimpBrushSelect* %10, i32 0, i32 5
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %paint_mode_menu5, align 8
  %12 = bitcast %struct._GtkWidget* %11 to i8*
  %13 = load %struct._GimpBrushSelect*, %struct._GimpBrushSelect** %select.addr, align 8
  %14 = bitcast %struct._GimpBrushSelect* %13 to i8*
  %call6 = call i32 @g_signal_handlers_unblock_matched(i8* %12, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GimpBrushSelect*)* @gimp_brush_select_mode_update to i8*), i8* %14)
  %15 = load %struct._GimpBrushSelect*, %struct._GimpBrushSelect** %select.addr, align 8
  %16 = bitcast %struct._GimpBrushSelect* %15 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_pdb_dialog_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call7)
  %17 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpPdbDialog*
  call void @gimp_pdb_dialog_run_callback(%struct._GimpPdbDialog* %17, i32 0)
  ret void
}

declare %struct._GtkWidget* @gimp_brush_factory_view_new(i32, %struct._GimpDataFactory*, %struct._GimpContext*, i32, i32, i32, %struct._GimpMenuFactory*) #1

declare void @gimp_container_box_set_size_request(%struct._GimpContainerBox*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_editor_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_container_box_get_type() #2

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #2

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare %struct._GtkObject* @gtk_adjustment_new(double, double, double, double, double, double) #1

declare double @gimp_context_get_opacity(%struct._GimpContext*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_adjustment_get_type() #2

declare %struct._GtkWidget* @gimp_spin_scale_new(%struct._GtkAdjustment*, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare void @gtk_box_pack_end(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_select_opacity_update(%struct._GtkAdjustment* %adjustment, %struct._GimpBrushSelect* %select) #3 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %select.addr = alloca %struct._GimpBrushSelect*, align 8
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store %struct._GimpBrushSelect* %select, %struct._GimpBrushSelect** %select.addr, align 8
  %0 = load %struct._GimpBrushSelect*, %struct._GimpBrushSelect** %select.addr, align 8
  %1 = bitcast %struct._GimpBrushSelect* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_pdb_dialog_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPdbDialog*
  %context = getelementptr inbounds %struct._GimpPdbDialog, %struct._GimpPdbDialog* %2, i32 0, i32 3
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %4 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call2 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %4)
  %div = fdiv double %call2, 1.000000e+02
  call void @gimp_context_set_opacity(%struct._GimpContext* %3, double %div)
  ret void
}

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare %struct._GtkWidget* @gimp_paint_mode_menu_new(i32, i32) #1

declare i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox*, i32, void ()*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_int_combo_box_get_type() #2

declare i32 @gimp_context_get_paint_mode(%struct._GimpContext*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_select_mode_update(%struct._GtkWidget* %widget, %struct._GimpBrushSelect* %select) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %select.addr = alloca %struct._GimpBrushSelect*, align 8
  %paint_mode = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpBrushSelect* %select, %struct._GimpBrushSelect** %select.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_int_combo_box_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpIntComboBox*
  %call2 = call i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox* %2, i32* %paint_mode)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpBrushSelect*, %struct._GimpBrushSelect** %select.addr, align 8
  %4 = bitcast %struct._GimpBrushSelect* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_pdb_dialog_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpPdbDialog*
  %context = getelementptr inbounds %struct._GimpPdbDialog, %struct._GimpPdbDialog* %5, i32 0, i32 3
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %7 = load i32, i32* %paint_mode, align 4
  call void @gimp_context_set_paint_mode(%struct._GimpContext* %6, i32 %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_brush_factory_view_get_type() #2

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_select_spacing_update(%struct._GtkAdjustment* %adjustment, %struct._GimpBrushSelect* %select) #3 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %select.addr = alloca %struct._GimpBrushSelect*, align 8
  %value = alloca double, align 8
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store %struct._GimpBrushSelect* %select, %struct._GimpBrushSelect** %select.addr, align 8
  %0 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %0)
  store double %call, double* %value, align 8
  %1 = load %struct._GimpBrushSelect*, %struct._GimpBrushSelect** %select.addr, align 8
  %spacing = getelementptr inbounds %struct._GimpBrushSelect, %struct._GimpBrushSelect* %1, i32 0, i32 3
  %2 = load i32, i32* %spacing, align 4
  %conv = sitofp i32 %2 to double
  %3 = load double, double* %value, align 8
  %cmp = fcmp une double %conv, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load double, double* %value, align 8
  %conv2 = fptosi double %4 to i32
  %5 = load %struct._GimpBrushSelect*, %struct._GimpBrushSelect** %select.addr, align 8
  %spacing3 = getelementptr inbounds %struct._GimpBrushSelect, %struct._GimpBrushSelect* %5, i32 0, i32 3
  store i32 %conv2, i32* %spacing3, align 4
  %6 = load %struct._GimpBrushSelect*, %struct._GimpBrushSelect** %select.addr, align 8
  %7 = bitcast %struct._GimpBrushSelect* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_pdb_dialog_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpPdbDialog*
  call void @gimp_pdb_dialog_run_callback(%struct._GimpPdbDialog* %8, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @g_signal_handlers_block_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare i32 @g_signal_handlers_unblock_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare void @gimp_pdb_dialog_run_callback(%struct._GimpPdbDialog*, i32) #1

declare i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox*, i32) #1

declare double @gtk_adjustment_get_value(%struct._GtkAdjustment*) #1

declare i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox*, i32*) #1

declare double @g_value_get_double(%struct._GValue*) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

declare i32 @g_value_get_int(%struct._GValue*) #1

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
  call void @g_logv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_type_name(i64) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: nounwind readnone
declare i64 @gimp_brush_get_type() #2

declare %struct._GimpArray* @gimp_array_new(i8*, i64, i32) #1

declare i8* @temp_buf_get_data(%struct._TempBuf*) #1

declare i64 @temp_buf_get_data_size(%struct._TempBuf*) #1

declare %struct._GValueArray* @gimp_pdb_execute_procedure_by_name(%struct._GimpPDB*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GError**, i8*, ...) #1

declare i8* @gimp_object_get_name(i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_int32_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_int8_array_get_type() #2

declare void @gimp_array_free(%struct._GimpArray*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
