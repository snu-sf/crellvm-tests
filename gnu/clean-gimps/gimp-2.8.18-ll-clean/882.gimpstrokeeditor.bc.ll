; ModuleID = './app/widgets/gimpstrokeeditor.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpStrokeEditorClass = type { %struct._GimpFillEditorClass }
%struct._GimpFillEditorClass = type { %struct._GtkBoxClass }
%struct._GtkBoxClass = type { %struct._GtkContainerClass }
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
%struct._GimpStrokeEditor = type { %struct._GimpFillEditor, double }
%struct._GimpFillEditor = type { %struct._GtkBox, %struct._GimpFillOptions*, i32 }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpFillOptions = type { %struct._GimpContext }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type opaque
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
%struct._GimpStrokeOptions = type { %struct._GimpFillOptions }
%struct._GimpEnumStore = type { %struct._GimpIntStore, %struct._GEnumClass* }
%struct._GimpIntStore = type { %struct._GtkListStore, %struct._GtkTreeIter* }
%struct._GtkListStore = type { %struct._GObject, i32, i8*, i8*, %struct._GList*, i32, i32, i32, i64*, i32, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }
%struct._GtkTreeModel = type opaque
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._GEnumClass = type { %struct._GTypeClass, i32, i32, i32, %struct._GEnumValue* }
%struct._GEnumValue = type { i32, i8*, i8* }
%struct._GtkCellRenderer = type { %struct._GtkObject, float, float, i32, i32, i16, i16, i8 }
%struct._GimpSizeEntry = type { %struct._GtkTable, %struct._GSList*, i32, %struct._GtkWidget*, i32, i32, i32, i32, i32 }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpIntComboBox = type { %struct._GtkComboBox, i8*, void ()*, void ()*, void ()* }
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkComboBoxPrivate = type opaque
%struct._GtkCellLayout = type opaque
%struct._GimpDashEditor = type { %struct._GtkDrawingArea, %struct._GimpStrokeOptions*, double, i32, i32*, i32, i32, i32, i32, i32, i32 }
%struct._GtkDrawingArea = type { %struct._GtkWidget, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_stroke_editor_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"GimpStrokeEditor\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_stroke_editor_new = private unnamed_addr constant [23 x i8] c"gimp_stroke_editor_new\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"GIMP_IS_STROKE_OPTIONS (options)\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"options\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"resolution\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"edit-context\00", align 1
@gimp_stroke_editor_parent_class = internal global i8* null, align 8
@GimpStrokeEditor_private_offset = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"gimpstrokeeditor.c\00", align 1
@__func__.gimp_stroke_editor_constructed = private unnamed_addr constant [31 x i8] c"gimp_stroke_editor_constructed\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"GIMP_IS_STROKE_OPTIONS (fill_editor->options)\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"Line width:\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"unit\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%a\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"_Line Style\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"<expander>\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"cap-style\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"gimp-cap\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"_Cap style:\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"join-style\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"gimp-join\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"_Join style:\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"miter-limit\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"_Miter limit:\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"Dash pattern:\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"width-request\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"expose-event\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"enum-type\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"user-data-type\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"Dash _preset:\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"xpad\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"pattern\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"dash-info-changed\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"notify::dash-info\00", align 1
@.str.34 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"property\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_stroke_editor_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_stroke_editor_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_stroke_editor_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_fill_editor_get_type() #8
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 824, void (i8*, i8*)* bitcast (void (i8*)* @gimp_stroke_editor_class_intern_init to void (i8*, i8*)*), i32 152, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpStrokeEditor*)* @gimp_stroke_editor_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_stroke_editor_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_stroke_editor_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_fill_editor_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_stroke_editor_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_stroke_editor_parent_class, align 8
  %1 = load i32, i32* @GimpStrokeEditor_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpStrokeEditor_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpStrokeEditorClass*
  call void @gimp_stroke_editor_class_init(%struct._GimpStrokeEditorClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_stroke_editor_init(%struct._GimpStrokeEditor* %editor) #3 {
entry:
  %editor.addr = alloca %struct._GimpStrokeEditor*, align 8
  store %struct._GimpStrokeEditor* %editor, %struct._GimpStrokeEditor** %editor.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_stroke_editor_new(%struct._GimpStrokeOptions* %options, double %resolution, i32 %edit_context) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %options.addr = alloca %struct._GimpStrokeOptions*, align 8
  %resolution.addr = alloca double, align 8
  %edit_context.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStrokeOptions* %options, %struct._GimpStrokeOptions** %options.addr, align 8
  store double %resolution, double* %resolution.addr, align 8
  store i32 %edit_context, i32* %edit_context.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options.addr, align 8
  %1 = bitcast %struct._GimpStrokeOptions* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_stroke_options_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_stroke_editor_new, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_stroke_editor_get_type() #8
  %13 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options.addr, align 8
  %14 = load double, double* %resolution.addr, align 8
  %15 = load i32, i32* %edit_context.addr, align 4
  %tobool12 = icmp ne i32 %15, 0
  %cond = select i1 %tobool12, i32 1, i32 0
  %call13 = call i8* (i64, i8*, ...) @g_object_new(i64 %call11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), %struct._GimpStrokeOptions* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), double %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i32 %cond, i8* null)
  %16 = bitcast i8* %call13 to %struct._GtkWidget*
  store %struct._GtkWidget* %16, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %17
}

; Function Attrs: nounwind readnone
declare i64 @gimp_stroke_options_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_stroke_editor_class_init(%struct._GimpStrokeEditorClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpStrokeEditorClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpStrokeEditorClass* %klass, %struct._GimpStrokeEditorClass** %klass.addr, align 8
  %0 = load %struct._GimpStrokeEditorClass*, %struct._GimpStrokeEditorClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpStrokeEditorClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_stroke_editor_constructed, void (%struct._GObject*)** %constructed, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_stroke_editor_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_stroke_editor_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call1 = call i64 @gimp_stroke_options_get_type() #8
  %call2 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* null, i64 %call1, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %6, i32 1, %struct._GParamSpec* %call2)
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* null, double 5.000000e-03, double 6.553600e+04, double 7.200000e+01, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %7, i32 2, %struct._GParamSpec* %call3)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_stroke_editor_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %fill_editor = alloca %struct._GimpFillEditor*, align 8
  %editor = alloca %struct._GimpStrokeEditor*, align 8
  %options = alloca %struct._GimpStrokeOptions*, align 8
  %store = alloca %struct._GimpEnumStore*, align 8
  %value = alloca %struct._GEnumValue*, align 8
  %box = alloca %struct._GtkWidget*, align 8
  %size = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %expander = alloca %struct._GtkWidget*, align 8
  %dash_editor = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %cell = alloca %struct._GtkCellRenderer*, align 8
  %row = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %iter = alloca %struct._GtkTreeIter, align 8
  %desc = alloca i8*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_fill_editor_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpFillEditor*
  store %struct._GimpFillEditor* %2, %struct._GimpFillEditor** %fill_editor, align 8
  %3 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %4 = bitcast %struct._GObject* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_stroke_editor_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpStrokeEditor*
  store %struct._GimpStrokeEditor* %5, %struct._GimpStrokeEditor** %editor, align 8
  store i32 0, i32* %row, align 4
  %6 = load i8*, i8** @gimp_stroke_editor_parent_class, align 8
  %7 = bitcast i8* %6 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 80)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 9
  %9 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %9, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i8*, i8** @gimp_stroke_editor_parent_class, align 8
  %11 = bitcast i8* %10 to %struct._GTypeClass*
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %11, i64 80)
  %12 = bitcast %struct._GTypeClass* %call5 to %struct._GObjectClass*
  %constructed6 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 9
  %13 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed6, align 8
  %14 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %13(%struct._GObject* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %15 = load %struct._GimpFillEditor*, %struct._GimpFillEditor** %fill_editor, align 8
  %options7 = getelementptr inbounds %struct._GimpFillEditor, %struct._GimpFillEditor* %15, i32 0, i32 1
  %16 = load %struct._GimpFillOptions*, %struct._GimpFillOptions** %options7, align 8
  %17 = bitcast %struct._GimpFillOptions* %16 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %17, %struct._GTypeInstance** %__inst, align 8
  %call8 = call i64 @gimp_stroke_options_get_type() #8
  store i64 %call8, i64* %__t, align 8
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool9 = icmp ne %struct._GTypeInstance* %18, null
  br i1 %tobool9, label %if.else, label %if.then.10

if.then.10:                                       ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.17

if.else:                                          ; preds = %do.body
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool11 = icmp ne %struct._GTypeClass* %20, null
  br i1 %tobool11, label %land.lhs.true, label %if.else.14

land.lhs.true:                                    ; preds = %if.else
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class12 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class12, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type, align 8
  %24 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %23, %24
  br i1 %cmp, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.16

if.else.14:                                       ; preds = %land.lhs.true, %if.else
  %25 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %26 = load i64, i64* %__t, align 8
  %call15 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %25, i64 %26) #9
  store i32 %call15, i32* %__r, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.14, %if.then.13
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then.10
  %27 = load i32, i32* %__r, align 4
  store i32 %27, i32* %tmp
  %28 = load i32, i32* %tmp
  %tobool18 = icmp ne i32 %28, 0
  br i1 %tobool18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %if.end.17
  br label %if.end.21

if.else.20:                                       ; preds = %if.end.17
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0), i32 121, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_stroke_editor_constructed, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i32 0, i32 0)) #10
  unreachable

if.end.21:                                        ; preds = %if.then.19
  br label %do.end

do.end:                                           ; preds = %if.end.21
  %29 = load %struct._GimpFillEditor*, %struct._GimpFillEditor** %fill_editor, align 8
  %options22 = getelementptr inbounds %struct._GimpFillEditor, %struct._GimpFillEditor* %29, i32 0, i32 1
  %30 = load %struct._GimpFillOptions*, %struct._GimpFillOptions** %options22, align 8
  %31 = bitcast %struct._GimpFillOptions* %30 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_stroke_options_get_type() #8
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call23)
  %32 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpStrokeOptions*
  store %struct._GimpStrokeOptions* %32, %struct._GimpStrokeOptions** %options, align 8
  %call25 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call25, %struct._GtkWidget** %box, align 8
  %33 = load %struct._GimpStrokeEditor*, %struct._GimpStrokeEditor** %editor, align 8
  %34 = bitcast %struct._GimpStrokeEditor* %33 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_box_get_type() #8
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call26)
  %35 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkBox*
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %35, %struct._GtkWidget* %36, i32 0, i32 0, i32 0)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %37)
  %call28 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0)) #7
  %call29 = call %struct._GtkWidget* @gtk_label_new(i8* %call28)
  store %struct._GtkWidget* %call29, %struct._GtkWidget** %label, align 8
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_box_get_type() #8
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call30)
  %40 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkBox*
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %40, %struct._GtkWidget* %41, i32 0, i32 0, i32 0)
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %42)
  %43 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options, align 8
  %44 = bitcast %struct._GimpStrokeOptions* %43 to %struct._GTypeInstance*
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 80)
  %45 = bitcast %struct._GTypeInstance* %call32 to %struct._GObject*
  %46 = load %struct._GimpStrokeEditor*, %struct._GimpStrokeEditor** %editor, align 8
  %resolution = getelementptr inbounds %struct._GimpStrokeEditor, %struct._GimpStrokeEditor* %46, i32 0, i32 1
  %47 = load double, double* %resolution, align 8
  %call33 = call %struct._GtkWidget* @gimp_prop_size_entry_new(%struct._GObject* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i32 1, double %47)
  store %struct._GtkWidget* %call33, %struct._GtkWidget** %size, align 8
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %size, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call34 = call i64 @gimp_size_entry_get_type() #8
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call34)
  %50 = bitcast %struct._GTypeInstance* %call35 to %struct._GimpSizeEntry*
  call void @gimp_size_entry_set_pixel_digits(%struct._GimpSizeEntry* %50, i32 1)
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %52 = bitcast %struct._GtkWidget* %51 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_box_get_type() #8
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call36)
  %53 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkBox*
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %size, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %53, %struct._GtkWidget* %54, i32 0, i32 0, i32 0)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %size, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %55)
  %call38 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0)) #7
  %call39 = call %struct._GtkWidget* @gtk_expander_new_with_mnemonic(i8* %call38)
  store %struct._GtkWidget* %call39, %struct._GtkWidget** %expander, align 8
  %56 = load %struct._GimpStrokeEditor*, %struct._GimpStrokeEditor** %editor, align 8
  %57 = bitcast %struct._GimpStrokeEditor* %56 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_box_get_type() #8
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call40)
  %58 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkBox*
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %expander, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %58, %struct._GtkWidget* %59, i32 0, i32 0, i32 0)
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %expander, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %60)
  %call42 = call %struct._GtkWidget* @gimp_frame_new(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0))
  store %struct._GtkWidget* %call42, %struct._GtkWidget** %frame, align 8
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %expander, align 8
  %62 = bitcast %struct._GtkWidget* %61 to %struct._GTypeInstance*
  %call43 = call i64 @gtk_container_get_type() #8
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call43)
  %63 = bitcast %struct._GTypeInstance* %call44 to %struct._GtkContainer*
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_container_add(%struct._GtkContainer* %63, %struct._GtkWidget* %64)
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %65)
  %call45 = call %struct._GtkWidget* @gtk_table_new(i32 5, i32 3, i32 0)
  store %struct._GtkWidget* %call45, %struct._GtkWidget** %table, align 8
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %67 = bitcast %struct._GtkWidget* %66 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_table_get_type() #8
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 %call46)
  %68 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %68, i32 6)
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %70 = bitcast %struct._GtkWidget* %69 to %struct._GTypeInstance*
  %call48 = call i64 @gtk_table_get_type() #8
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %70, i64 %call48)
  %71 = bitcast %struct._GTypeInstance* %call49 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %71, i32 3)
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %73 = bitcast %struct._GtkWidget* %72 to %struct._GTypeInstance*
  %call50 = call i64 @gtk_table_get_type() #8
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 %call50)
  %74 = bitcast %struct._GTypeInstance* %call51 to %struct._GtkTable*
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %74, i32 2, i32 6)
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %76 = bitcast %struct._GtkWidget* %75 to %struct._GTypeInstance*
  %call52 = call i64 @gtk_table_get_type() #8
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 %call52)
  %77 = bitcast %struct._GTypeInstance* %call53 to %struct._GtkTable*
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %77, i32 4, i32 6)
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %79 = bitcast %struct._GtkWidget* %78 to %struct._GTypeInstance*
  %call54 = call i64 @gtk_container_get_type() #8
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 %call54)
  %80 = bitcast %struct._GTypeInstance* %call55 to %struct._GtkContainer*
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %80, %struct._GtkWidget* %81)
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %82)
  %83 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options, align 8
  %84 = bitcast %struct._GimpStrokeOptions* %83 to %struct._GTypeInstance*
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %84, i64 80)
  %85 = bitcast %struct._GTypeInstance* %call56 to %struct._GObject*
  %call57 = call %struct._GtkWidget* @gimp_prop_enum_stock_box_new(%struct._GObject* %85, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 0, i32 0)
  store %struct._GtkWidget* %call57, %struct._GtkWidget** %box, align 8
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %87 = bitcast %struct._GtkWidget* %86 to %struct._GTypeInstance*
  %call58 = call i64 @gtk_table_get_type() #8
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %87, i64 %call58)
  %88 = bitcast %struct._GTypeInstance* %call59 to %struct._GtkTable*
  %89 = load i32, i32* %row, align 4
  %inc = add nsw i32 %89, 1
  store i32 %inc, i32* %row, align 4
  %call60 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0)) #7
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %call61 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %88, i32 0, i32 %89, i8* %call60, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %90, i32 2, i32 1)
  %91 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options, align 8
  %92 = bitcast %struct._GimpStrokeOptions* %91 to %struct._GTypeInstance*
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %92, i64 80)
  %93 = bitcast %struct._GTypeInstance* %call62 to %struct._GObject*
  %call63 = call %struct._GtkWidget* @gimp_prop_enum_stock_box_new(%struct._GObject* %93, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i32 0, i32 0)
  store %struct._GtkWidget* %call63, %struct._GtkWidget** %box, align 8
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %95 = bitcast %struct._GtkWidget* %94 to %struct._GTypeInstance*
  %call64 = call i64 @gtk_table_get_type() #8
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %95, i64 %call64)
  %96 = bitcast %struct._GTypeInstance* %call65 to %struct._GtkTable*
  %97 = load i32, i32* %row, align 4
  %inc66 = add nsw i32 %97, 1
  store i32 %inc66, i32* %row, align 4
  %call67 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0)) #7
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %call68 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %96, i32 0, i32 %97, i8* %call67, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %98, i32 2, i32 1)
  %99 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options, align 8
  %100 = bitcast %struct._GimpStrokeOptions* %99 to %struct._GTypeInstance*
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %100, i64 80)
  %101 = bitcast %struct._GTypeInstance* %call69 to %struct._GObject*
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %103 = bitcast %struct._GtkWidget* %102 to %struct._GTypeInstance*
  %call70 = call i64 @gtk_table_get_type() #8
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %103, i64 %call70)
  %104 = bitcast %struct._GTypeInstance* %call71 to %struct._GtkTable*
  %105 = load i32, i32* %row, align 4
  %inc72 = add nsw i32 %105, 1
  store i32 %inc72, i32* %row, align 4
  %call73 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0)) #7
  %call74 = call %struct._GtkObject* @gimp_prop_scale_entry_new(%struct._GObject* %101, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0), %struct._GtkTable* %104, i32 0, i32 %105, i8* %call73, double 1.000000e+00, double 1.000000e+00, i32 1, i32 0, double 0.000000e+00, double 0.000000e+00)
  %call75 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call75, %struct._GtkWidget** %frame, align 8
  %106 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %107 = bitcast %struct._GtkWidget* %106 to %struct._GTypeInstance*
  %call76 = call i64 @gtk_frame_get_type() #8
  %call77 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %107, i64 %call76)
  %108 = bitcast %struct._GTypeInstance* %call77 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %108, i32 1)
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %110 = bitcast %struct._GtkWidget* %109 to %struct._GTypeInstance*
  %call78 = call i64 @gtk_table_get_type() #8
  %call79 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %110, i64 %call78)
  %111 = bitcast %struct._GTypeInstance* %call79 to %struct._GtkTable*
  %112 = load i32, i32* %row, align 4
  %inc80 = add nsw i32 %112, 1
  store i32 %inc80, i32* %row, align 4
  %call81 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i32 0, i32 0)) #7
  %113 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %call82 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %111, i32 0, i32 %112, i8* %call81, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %113, i32 2, i32 0)
  %call83 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 0)
  store %struct._GtkWidget* %call83, %struct._GtkWidget** %box, align 8
  %114 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %115 = bitcast %struct._GtkWidget* %114 to %struct._GTypeInstance*
  %call84 = call i64 @gtk_container_get_type() #8
  %call85 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %115, i64 %call84)
  %116 = bitcast %struct._GTypeInstance* %call85 to %struct._GtkContainer*
  %117 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  call void @gtk_container_add(%struct._GtkContainer* %116, %struct._GtkWidget* %117)
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %118)
  %119 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options, align 8
  %call86 = call %struct._GtkWidget* @gimp_dash_editor_new(%struct._GimpStrokeOptions* %119)
  store %struct._GtkWidget* %call86, %struct._GtkWidget** %dash_editor, align 8
  %call87 = call i64 @gtk_button_get_type() #8
  %call88 = call i8* (i64, i8*, ...) @g_object_new(i64 %call87, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0), i32 14, i8* null)
  %120 = bitcast i8* %call88 to %struct._GtkWidget*
  store %struct._GtkWidget* %120, %struct._GtkWidget** %button, align 8
  %121 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %122 = bitcast %struct._GtkWidget* %121 to %struct._GTypeInstance*
  %call89 = call i64 @gtk_box_get_type() #8
  %call90 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %122, i64 %call89)
  %123 = bitcast %struct._GTypeInstance* %call90 to %struct._GtkBox*
  %124 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %123, %struct._GtkWidget* %124, i32 0, i32 1, i32 0)
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %125)
  %126 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %127 = bitcast %struct._GtkWidget* %126 to i8*
  %128 = load %struct._GtkWidget*, %struct._GtkWidget** %dash_editor, align 8
  %129 = bitcast %struct._GtkWidget* %128 to i8*
  %call91 = call i64 @g_signal_connect_object(i8* %127, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDashEditor*)* @gimp_dash_editor_shift_left to void ()*), i8* %129, i32 2)
  %130 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %131 = bitcast %struct._GtkWidget* %130 to i8*
  %132 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %133 = bitcast %struct._GtkWidget* %132 to i8*
  %call92 = call i64 @g_signal_connect_data(i8* %131, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventExpose*, i8*)* @gimp_stroke_editor_paint_button to void ()*), i8* %133, void (i8*, %struct._GClosure*)* null, i32 1)
  %134 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %135 = bitcast %struct._GtkWidget* %134 to %struct._GTypeInstance*
  %call93 = call i64 @gtk_box_get_type() #8
  %call94 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %135, i64 %call93)
  %136 = bitcast %struct._GTypeInstance* %call94 to %struct._GtkBox*
  %137 = load %struct._GtkWidget*, %struct._GtkWidget** %dash_editor, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %136, %struct._GtkWidget* %137, i32 1, i32 1, i32 0)
  %138 = load %struct._GtkWidget*, %struct._GtkWidget** %dash_editor, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %138)
  %call95 = call i64 @gtk_button_get_type() #8
  %call96 = call i8* (i64, i8*, ...) @g_object_new(i64 %call95, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0), i32 14, i8* null)
  %139 = bitcast i8* %call96 to %struct._GtkWidget*
  store %struct._GtkWidget* %139, %struct._GtkWidget** %button, align 8
  %140 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %141 = bitcast %struct._GtkWidget* %140 to %struct._GTypeInstance*
  %call97 = call i64 @gtk_box_get_type() #8
  %call98 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %141, i64 %call97)
  %142 = bitcast %struct._GTypeInstance* %call98 to %struct._GtkBox*
  %143 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %142, %struct._GtkWidget* %143, i32 0, i32 1, i32 0)
  %144 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %144)
  %145 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %146 = bitcast %struct._GtkWidget* %145 to i8*
  %147 = load %struct._GtkWidget*, %struct._GtkWidget** %dash_editor, align 8
  %148 = bitcast %struct._GtkWidget* %147 to i8*
  %call99 = call i64 @g_signal_connect_object(i8* %146, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDashEditor*)* @gimp_dash_editor_shift_right to void ()*), i8* %148, i32 2)
  %149 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %150 = bitcast %struct._GtkWidget* %149 to i8*
  %call100 = call i64 @g_signal_connect_data(i8* %150, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventExpose*, i8*)* @gimp_stroke_editor_paint_button to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 1)
  %call101 = call i64 @gimp_enum_store_get_type() #8
  %call102 = call i64 @gimp_dash_preset_get_type() #8
  %call103 = call i64 @gimp_dash_pattern_get_type() #8
  %call104 = call i8* (i64, i8*, ...) @g_object_new(i64 %call101, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i64 %call102, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i32 0, i32 0), i64 %call103, i8* null)
  %151 = bitcast i8* %call104 to %struct._GimpEnumStore*
  store %struct._GimpEnumStore* %151, %struct._GimpEnumStore** %store, align 8
  %152 = load %struct._GimpEnumStore*, %struct._GimpEnumStore** %store, align 8
  %enum_class = getelementptr inbounds %struct._GimpEnumStore, %struct._GimpEnumStore* %152, i32 0, i32 1
  %153 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %values = getelementptr inbounds %struct._GEnumClass, %struct._GEnumClass* %153, i32 0, i32 4
  %154 = load %struct._GEnumValue*, %struct._GEnumValue** %values, align 8
  store %struct._GEnumValue* %154, %struct._GEnumValue** %value, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %155 = load %struct._GEnumValue*, %struct._GEnumValue** %value, align 8
  %value_name = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %155, i32 0, i32 1
  %156 = load i8*, i8** %value_name, align 8
  %tobool105 = icmp ne i8* %156, null
  br i1 %tobool105, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %157 = bitcast %struct._GtkTreeIter* %iter to i8*
  call void @llvm.memset.p0i8.i64(i8* %157, i8 0, i64 32, i32 8, i1 false)
  %158 = load %struct._GimpEnumStore*, %struct._GimpEnumStore** %store, align 8
  %enum_class108 = getelementptr inbounds %struct._GimpEnumStore, %struct._GimpEnumStore* %158, i32 0, i32 1
  %159 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class108, align 8
  %160 = load %struct._GEnumValue*, %struct._GEnumValue** %value, align 8
  %call109 = call i8* @gimp_enum_value_get_desc(%struct._GEnumClass* %159, %struct._GEnumValue* %160)
  store i8* %call109, i8** %desc, align 8
  %161 = load %struct._GimpEnumStore*, %struct._GimpEnumStore** %store, align 8
  %162 = bitcast %struct._GimpEnumStore* %161 to %struct._GTypeInstance*
  %call110 = call i64 @gtk_list_store_get_type() #8
  %call111 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %162, i64 %call110)
  %163 = bitcast %struct._GTypeInstance* %call111 to %struct._GtkListStore*
  call void @gtk_list_store_append(%struct._GtkListStore* %163, %struct._GtkTreeIter* %iter)
  %164 = load %struct._GimpEnumStore*, %struct._GimpEnumStore** %store, align 8
  %165 = bitcast %struct._GimpEnumStore* %164 to %struct._GTypeInstance*
  %call112 = call i64 @gtk_list_store_get_type() #8
  %call113 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %165, i64 %call112)
  %166 = bitcast %struct._GTypeInstance* %call113 to %struct._GtkListStore*
  %167 = load %struct._GEnumValue*, %struct._GEnumValue** %value, align 8
  %value114 = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %167, i32 0, i32 0
  %168 = load i32, i32* %value114, align 4
  %169 = load i8*, i8** %desc, align 8
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %166, %struct._GtkTreeIter* %iter, i32 0, i32 %168, i32 1, i8* %169, i32 -1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %170 = load %struct._GEnumValue*, %struct._GEnumValue** %value, align 8
  %incdec.ptr = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %170, i32 1
  store %struct._GEnumValue* %incdec.ptr, %struct._GEnumValue** %value, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %171 = load %struct._GimpEnumStore*, %struct._GimpEnumStore** %store, align 8
  %call115 = call %struct._GtkWidget* @gimp_enum_combo_box_new_with_model(%struct._GimpEnumStore* %171)
  store %struct._GtkWidget* %call115, %struct._GtkWidget** %box, align 8
  %172 = load %struct._GimpEnumStore*, %struct._GimpEnumStore** %store, align 8
  %173 = bitcast %struct._GimpEnumStore* %172 to i8*
  call void @g_object_unref(i8* %173)
  %174 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %175 = bitcast %struct._GtkWidget* %174 to %struct._GTypeInstance*
  %call116 = call i64 @gimp_int_combo_box_get_type() #8
  %call117 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %175, i64 %call116)
  %176 = bitcast %struct._GTypeInstance* %call117 to %struct._GimpIntComboBox*
  %call118 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %176, i32 0)
  %177 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %178 = bitcast %struct._GtkWidget* %177 to %struct._GTypeInstance*
  %call119 = call i64 @gtk_table_get_type() #8
  %call120 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %178, i64 %call119)
  %179 = bitcast %struct._GTypeInstance* %call120 to %struct._GtkTable*
  %180 = load i32, i32* %row, align 4
  %inc121 = add nsw i32 %180, 1
  store i32 %inc121, i32* %row, align 4
  %call122 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0)) #7
  %181 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %call123 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %179, i32 0, i32 %180, i8* %call122, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %181, i32 2, i32 0)
  %call124 = call i64 @gimp_cell_renderer_dashes_get_type() #8
  %call125 = call i8* (i64, i8*, ...) @g_object_new(i64 %call124, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), i32 2, i8* null)
  %182 = bitcast i8* %call125 to %struct._GtkCellRenderer*
  store %struct._GtkCellRenderer* %182, %struct._GtkCellRenderer** %cell, align 8
  %183 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %184 = bitcast %struct._GtkWidget* %183 to %struct._GTypeInstance*
  %call126 = call i64 @gtk_cell_layout_get_type() #8
  %call127 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %184, i64 %call126)
  %185 = bitcast %struct._GTypeInstance* %call127 to %struct._GtkCellLayout*
  %186 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell, align 8
  call void @gtk_cell_layout_pack_start(%struct._GtkCellLayout* %185, %struct._GtkCellRenderer* %186, i32 0)
  %187 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %188 = bitcast %struct._GtkWidget* %187 to %struct._GTypeInstance*
  %call128 = call i64 @gtk_cell_layout_get_type() #8
  %call129 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %188, i64 %call128)
  %189 = bitcast %struct._GTypeInstance* %call129 to %struct._GtkCellLayout*
  %190 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell, align 8
  call void @gtk_cell_layout_add_attribute(%struct._GtkCellLayout* %189, %struct._GtkCellRenderer* %190, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), i32 4)
  %191 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options, align 8
  %192 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %193 = bitcast %struct._GtkWidget* %192 to %struct._GTypeInstance*
  %call130 = call i64 @gtk_combo_box_get_type() #8
  %call131 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %193, i64 %call130)
  %194 = bitcast %struct._GTypeInstance* %call131 to %struct._GtkComboBox*
  call void @gimp_stroke_editor_combo_fill(%struct._GimpStrokeOptions* %191, %struct._GtkComboBox* %194)
  %195 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %196 = bitcast %struct._GtkWidget* %195 to i8*
  %197 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options, align 8
  %198 = bitcast %struct._GimpStrokeOptions* %197 to i8*
  %call132 = call i64 @g_signal_connect_data(i8* %196, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpStrokeOptions*)* @gimp_stroke_editor_dash_preset to void ()*), i8* %198, void (i8*, %struct._GClosure*)* null, i32 0)
  %199 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options, align 8
  %200 = bitcast %struct._GimpStrokeOptions* %199 to i8*
  %201 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %202 = bitcast %struct._GtkWidget* %201 to i8*
  %call133 = call i64 @g_signal_connect_object(i8* %200, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i32 0, i32 0), void ()* bitcast (i32 (%struct._GimpIntComboBox*, i32)* @gimp_int_combo_box_set_active to void ()*), i8* %202, i32 2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_stroke_editor_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %fill_editor = alloca %struct._GimpFillEditor*, align 8
  %editor = alloca %struct._GimpStrokeEditor*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_fill_editor_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpFillEditor*
  store %struct._GimpFillEditor* %2, %struct._GimpFillEditor** %fill_editor, align 8
  %3 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %4 = bitcast %struct._GObject* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_stroke_editor_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpStrokeEditor*
  store %struct._GimpStrokeEditor* %5, %struct._GimpStrokeEditor** %editor, align 8
  %6 = load i32, i32* %property_id.addr, align 4
  switch i32 %6, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %entry
  %7 = load %struct._GimpFillEditor*, %struct._GimpFillEditor** %fill_editor, align 8
  %options = getelementptr inbounds %struct._GimpFillEditor, %struct._GimpFillEditor* %7, i32 0, i32 1
  %8 = load %struct._GimpFillOptions*, %struct._GimpFillOptions** %options, align 8
  %tobool = icmp ne %struct._GimpFillOptions* %8, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %9 = load %struct._GimpFillEditor*, %struct._GimpFillEditor** %fill_editor, align 8
  %options4 = getelementptr inbounds %struct._GimpFillEditor, %struct._GimpFillEditor* %9, i32 0, i32 1
  %10 = load %struct._GimpFillOptions*, %struct._GimpFillOptions** %options4, align 8
  %11 = bitcast %struct._GimpFillOptions* %10 to i8*
  call void @g_object_unref(i8* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %12 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call5 = call i8* @g_value_dup_object(%struct._GValue* %12)
  %13 = bitcast i8* %call5 to %struct._GimpFillOptions*
  %14 = load %struct._GimpFillEditor*, %struct._GimpFillEditor** %fill_editor, align 8
  %options6 = getelementptr inbounds %struct._GimpFillEditor, %struct._GimpFillEditor* %14, i32 0, i32 1
  store %struct._GimpFillOptions* %13, %struct._GimpFillOptions** %options6, align 8
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %15 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call8 = call double @g_value_get_double(%struct._GValue* %15)
  %16 = load %struct._GimpStrokeEditor*, %struct._GimpStrokeEditor** %editor, align 8
  %resolution = getelementptr inbounds %struct._GimpStrokeEditor, %struct._GimpStrokeEditor* %16, i32 0, i32 1
  store double %call8, double* %resolution, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %17 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %17, %struct._GObject** %_glib__object, align 8
  %18 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %18, %struct._GParamSpec** %_glib__pspec, align 8
  %19 = load i32, i32* %property_id.addr, align 4
  store i32 %19, i32* %_glib__property_id, align 4
  %20 = load i32, i32* %_glib__property_id, align 4
  %21 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %21, i32 0, i32 1
  %22 = load i8*, i8** %name, align 8
  %23 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %24 = bitcast %struct._GParamSpec* %23 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %24, i32 0, i32 0
  %25 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %25, i32 0, i32 0
  %26 = load i64, i64* %g_type, align 8
  %call9 = call i8* @g_type_name(i64 %26)
  %27 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %28 = bitcast %struct._GObject* %27 to %struct._GTypeInstance*
  %g_class10 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %28, i32 0, i32 0
  %29 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class10, align 8
  %g_type11 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %29, i32 0, i32 0
  %30 = load i64, i64* %g_type11, align 8
  %call12 = call i8* @g_type_name(i64 %30)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0), i32 283, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), i32 %20, i8* %22, i8* %call9, i8* %call12)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.7, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_stroke_editor_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %fill_editor = alloca %struct._GimpFillEditor*, align 8
  %editor = alloca %struct._GimpStrokeEditor*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_fill_editor_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpFillEditor*
  store %struct._GimpFillEditor* %2, %struct._GimpFillEditor** %fill_editor, align 8
  %3 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %4 = bitcast %struct._GObject* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_stroke_editor_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpStrokeEditor*
  store %struct._GimpStrokeEditor* %5, %struct._GimpStrokeEditor** %editor, align 8
  %6 = load i32, i32* %property_id.addr, align 4
  switch i32 %6, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GimpFillEditor*, %struct._GimpFillEditor** %fill_editor, align 8
  %options = getelementptr inbounds %struct._GimpFillEditor, %struct._GimpFillEditor* %8, i32 0, i32 1
  %9 = load %struct._GimpFillOptions*, %struct._GimpFillOptions** %options, align 8
  %10 = bitcast %struct._GimpFillOptions* %9 to i8*
  call void @g_value_set_object(%struct._GValue* %7, i8* %10)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %11 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %12 = load %struct._GimpStrokeEditor*, %struct._GimpStrokeEditor** %editor, align 8
  %resolution = getelementptr inbounds %struct._GimpStrokeEditor, %struct._GimpStrokeEditor* %12, i32 0, i32 1
  %13 = load double, double* %resolution, align 8
  call void @g_value_set_double(%struct._GValue* %11, double %13)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %14 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %14, %struct._GObject** %_glib__object, align 8
  %15 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %15, %struct._GParamSpec** %_glib__pspec, align 8
  %16 = load i32, i32* %property_id.addr, align 4
  store i32 %16, i32* %_glib__property_id, align 4
  %17 = load i32, i32* %_glib__property_id, align 4
  %18 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %18, i32 0, i32 1
  %19 = load i8*, i8** %name, align 8
  %20 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %21 = bitcast %struct._GParamSpec* %20 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type, align 8
  %call5 = call i8* @g_type_name(i64 %23)
  %24 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %25 = bitcast %struct._GObject* %24 to %struct._GTypeInstance*
  %g_class6 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %25, i32 0, i32 0
  %26 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class6, align 8
  %g_type7 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %26, i32 0, i32 0
  %27 = load i64, i64* %g_type7, align 8
  %call8 = call i8* @g_type_name(i64 %27)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0), i32 308, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), i32 %17, i8* %19, i8* %call5, i8* %call8)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.4, %sw.bb
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #5

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #6

declare %struct._GtkWidget* @gimp_prop_size_entry_new(%struct._GObject*, i8*, i32, i8*, i8*, i32, double) #1

declare void @gimp_size_entry_set_pixel_digits(%struct._GimpSizeEntry*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_size_entry_get_type() #2

declare %struct._GtkWidget* @gtk_expander_new_with_mnemonic(i8*) #1

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #2

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare void @gtk_table_set_row_spacing(%struct._GtkTable*, i32, i32) #1

declare %struct._GtkWidget* @gimp_prop_enum_stock_box_new(%struct._GObject*, i8*, i8*, i32, i32) #1

declare %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable*, i32, i32, i8*, float, float, %struct._GtkWidget*, i32, i32) #1

declare %struct._GtkObject* @gimp_prop_scale_entry_new(%struct._GObject*, i8*, %struct._GtkTable*, i32, i32, i8*, double, double, i32, i32, double, double) #1

declare %struct._GtkWidget* @gtk_frame_new(i8*) #1

declare void @gtk_frame_set_shadow_type(%struct._GtkFrame*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #2

declare %struct._GtkWidget* @gimp_dash_editor_new(%struct._GimpStrokeOptions*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_button_get_type() #2

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

declare void @gimp_dash_editor_shift_left(%struct._GimpDashEditor*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_stroke_editor_paint_button(%struct._GtkWidget* %widget, %struct._GdkEventExpose* %event, i8* %data) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventExpose*, align 8
  %data.addr = alloca i8*, align 8
  %style = alloca %struct._GtkStyle*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %w = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventExpose* %event, %struct._GdkEventExpose** %event.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %0)
  store %struct._GtkStyle* %call, %struct._GtkStyle** %style, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %1, %struct._GdkRectangle* %allocation)
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %2 = load i32, i32* %width, align 4
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %3 = load i32, i32* %height, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %width1 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %4 = load i32, i32* %width1, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %height2 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %5 = load i32, i32* %height2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ %5, %cond.false ]
  %mul = mul nsw i32 %cond, 2
  %div = sdiv i32 %mul, 3
  store i32 %div, i32* %w, align 4
  %6 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call3 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %7)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call4 = call i32 @gtk_widget_get_state(%struct._GtkWidget* %8)
  %9 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %area = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %9, i32 0, i32 3
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %11 = load i8*, i8** %data.addr, align 8
  %tobool = icmp ne i8* %11, null
  %cond5 = select i1 %tobool, i32 2, i32 3
  %x = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 0
  %12 = load i32, i32* %x, align 4
  %width6 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %13 = load i32, i32* %width6, align 4
  %14 = load i32, i32* %w, align 4
  %sub = sub nsw i32 %13, %14
  %div7 = sdiv i32 %sub, 2
  %add = add nsw i32 %12, %div7
  %y = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 1
  %15 = load i32, i32* %y, align 4
  %height8 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %16 = load i32, i32* %height8, align 4
  %17 = load i32, i32* %w, align 4
  %sub9 = sub nsw i32 %16, %17
  %div10 = sdiv i32 %sub9, 2
  %add11 = add nsw i32 %15, %div10
  %18 = load i32, i32* %w, align 4
  %19 = load i32, i32* %w, align 4
  call void @gtk_paint_arrow(%struct._GtkStyle* %6, %struct._GdkDrawable* %call3, i32 %call4, i32 1, %struct._GdkRectangle* %area, %struct._GtkWidget* %10, i8* null, i32 %cond5, i32 1, i32 %add, i32 %add11, i32 %18, i32 %19)
  ret i32 0
}

declare void @gimp_dash_editor_shift_right(%struct._GimpDashEditor*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_enum_store_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_dash_preset_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_dash_pattern_get_type() #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #7

declare i8* @gimp_enum_value_get_desc(%struct._GEnumClass*, %struct._GEnumValue*) #1

declare void @gtk_list_store_append(%struct._GtkListStore*, %struct._GtkTreeIter*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_list_store_get_type() #2

declare void @gtk_list_store_set(%struct._GtkListStore*, %struct._GtkTreeIter*, ...) #1

declare %struct._GtkWidget* @gimp_enum_combo_box_new_with_model(%struct._GimpEnumStore*) #1

declare void @g_object_unref(i8*) #1

declare i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_int_combo_box_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_cell_renderer_dashes_get_type() #2

declare void @gtk_cell_layout_pack_start(%struct._GtkCellLayout*, %struct._GtkCellRenderer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_cell_layout_get_type() #2

declare void @gtk_cell_layout_add_attribute(%struct._GtkCellLayout*, %struct._GtkCellRenderer*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_stroke_editor_combo_fill(%struct._GimpStrokeOptions* %options, %struct._GtkComboBox* %box) #3 {
entry:
  %options.addr = alloca %struct._GimpStrokeOptions*, align 8
  %box.addr = alloca %struct._GtkComboBox*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %iter_valid = alloca i32, align 4
  %value = alloca i32, align 4
  %pattern = alloca %struct._GArray*, align 8
  store %struct._GimpStrokeOptions* %options, %struct._GimpStrokeOptions** %options.addr, align 8
  store %struct._GtkComboBox* %box, %struct._GtkComboBox** %box.addr, align 8
  %0 = load %struct._GtkComboBox*, %struct._GtkComboBox** %box.addr, align 8
  %call = call %struct._GtkTreeModel* @gtk_combo_box_get_model(%struct._GtkComboBox* %0)
  store %struct._GtkTreeModel* %call, %struct._GtkTreeModel** %model, align 8
  %1 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call1 = call i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel* %1, %struct._GtkTreeIter* %iter)
  store i32 %call1, i32* %iter_valid, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %iter_valid, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %3, %struct._GtkTreeIter* %iter, i32 0, i32* %value, i32 -1)
  %4 = load i32, i32* %value, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %5 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %6 = bitcast %struct._GtkTreeModel* %5 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_list_store_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call2)
  %7 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkListStore*
  %8 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options.addr, align 8
  %call4 = call %struct._GArray* @gimp_stroke_options_get_dash_info(%struct._GimpStrokeOptions* %8)
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %7, %struct._GtkTreeIter* %iter, i32 4, %struct._GArray* %call4, i32 -1)
  %9 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options.addr, align 8
  %10 = bitcast %struct._GimpStrokeOptions* %9 to i8*
  %11 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %12 = bitcast %struct._GtkTreeModel* %11 to i8*
  %call5 = call i64 @g_signal_connect_object(i8* %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i32 0, i32 0), void ()* bitcast (void (%struct._GtkTreeModel*, %struct._GParamSpec*, %struct._GimpStrokeOptions*)* @gimp_stroke_editor_combo_update to void ()*), i8* %12, i32 2)
  br label %if.end

if.else:                                          ; preds = %for.body
  %13 = load i32, i32* %value, align 4
  %call6 = call %struct._GArray* @gimp_dash_pattern_new_from_preset(i32 %13)
  store %struct._GArray* %call6, %struct._GArray** %pattern, align 8
  %14 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %15 = bitcast %struct._GtkTreeModel* %14 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_list_store_get_type() #8
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call7)
  %16 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkListStore*
  %17 = load %struct._GArray*, %struct._GArray** %pattern, align 8
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %16, %struct._GtkTreeIter* %iter, i32 4, %struct._GArray* %17, i32 -1)
  %18 = load %struct._GArray*, %struct._GArray** %pattern, align 8
  call void @gimp_dash_pattern_free(%struct._GArray* %18)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call9 = call i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel* %19, %struct._GtkTreeIter* %iter)
  store i32 %call9, i32* %iter_valid, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gtk_combo_box_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_stroke_editor_dash_preset(%struct._GtkWidget* %widget, %struct._GimpStrokeOptions* %options) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %options.addr = alloca %struct._GimpStrokeOptions*, align 8
  %value = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpStrokeOptions* %options, %struct._GimpStrokeOptions** %options.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_int_combo_box_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpIntComboBox*
  %call2 = call i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox* %2, i32* %value)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %value, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options.addr, align 8
  %5 = load i32, i32* %value, align 4
  call void @gimp_stroke_options_take_dash_pattern(%struct._GimpStrokeOptions* %4, i32 %5, %struct._GArray* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

declare %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget*) #1

declare void @gtk_widget_get_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #1

declare void @gtk_paint_arrow(%struct._GtkStyle*, %struct._GdkDrawable*, i32, i32, %struct._GdkRectangle*, %struct._GtkWidget*, i8*, i32, i32, i32, i32, i32, i32) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare i32 @gtk_widget_get_state(%struct._GtkWidget*) #1

declare %struct._GtkTreeModel* @gtk_combo_box_get_model(%struct._GtkComboBox*) #1

declare i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

declare void @gtk_tree_model_get(%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) #1

declare %struct._GArray* @gimp_stroke_options_get_dash_info(%struct._GimpStrokeOptions*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_stroke_editor_combo_update(%struct._GtkTreeModel* %model, %struct._GParamSpec* %pspec, %struct._GimpStrokeOptions* %options) #3 {
entry:
  %model.addr = alloca %struct._GtkTreeModel*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %options.addr = alloca %struct._GimpStrokeOptions*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  store %struct._GtkTreeModel* %model, %struct._GtkTreeModel** %model.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpStrokeOptions* %options, %struct._GimpStrokeOptions** %options.addr, align 8
  %0 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model.addr, align 8
  %call = call i32 @gimp_int_store_lookup_by_value(%struct._GtkTreeModel* %0, i32 0, %struct._GtkTreeIter* %iter)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model.addr, align 8
  %2 = bitcast %struct._GtkTreeModel* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_list_store_get_type() #8
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkListStore*
  %4 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options.addr, align 8
  %call3 = call %struct._GArray* @gimp_stroke_options_get_dash_info(%struct._GimpStrokeOptions* %4)
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %3, %struct._GtkTreeIter* %iter, i32 4, %struct._GArray* %call3, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._GArray* @gimp_dash_pattern_new_from_preset(i32) #1

declare void @gimp_dash_pattern_free(%struct._GArray*) #1

declare i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

declare i32 @gimp_int_store_lookup_by_value(%struct._GtkTreeModel*, i32, %struct._GtkTreeIter*) #1

declare i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox*, i32*) #1

declare void @gimp_stroke_options_take_dash_pattern(%struct._GimpStrokeOptions*, i32, %struct._GArray*) #1

declare i8* @g_value_dup_object(%struct._GValue*) #1

declare double @g_value_get_double(%struct._GValue*) #1

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

declare void @g_value_set_double(%struct._GValue*, double) #1

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
