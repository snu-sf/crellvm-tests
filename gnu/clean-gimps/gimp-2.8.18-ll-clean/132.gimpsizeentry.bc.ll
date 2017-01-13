; ModuleID = './libgimpwidgets/gimpsizeentry.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpSizeEntryClass = type { %struct._GtkTableClass, void (%struct._GimpSizeEntry*)*, void (%struct._GimpSizeEntry*)*, void (%struct._GimpSizeEntry*)*, void ()*, void ()*, void ()*, void ()* }
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
%struct._GimpSizeEntry = type { %struct._GtkTable, %struct._GSList*, i32, %struct._GtkWidget*, i32, i32, i32, i32, i32 }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GimpUnitStore = type { %struct._GObject }
%struct._GimpSizeEntryField = type { %struct._GimpSizeEntry*, double, double, double, %struct._GtkAdjustment*, %struct._GtkWidget*, double, double, double, %struct._GtkAdjustment*, %struct._GtkWidget*, double, double, double, i32, i32 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkSpinButton = type { %struct._GtkEntry, %struct._GtkAdjustment*, %struct._GdkDrawable*, i32, double, double, i32, i24 }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpUnitComboBox = type { %struct._GtkComboBox }
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkComboBoxPrivate = type opaque
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GtkLabelSelectionInfo = type opaque
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GError = type { i32, i32, i8* }
%struct.GimpEevlQuantity = type { double, i32 }

@gimp_size_entry_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"GimpSizeEntry\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"LibGimpWidgets\00", align 1
@__func__.gimp_size_entry_new = private unnamed_addr constant [20 x i8] c"gimp_size_entry_new\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"(number_of_fields >= 0) && (number_of_fields <= 16)\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%a\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"short-format\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"long-format\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@__func__.gimp_size_entry_add_field = private unnamed_addr constant [26 x i8] c"gimp_size_entry_add_field\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"GIMP_IS_SIZE_ENTRY (gse)\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"GTK_IS_SPIN_BUTTON (value_spinbutton)\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"GTK_IS_SPIN_BUTTON (refval_spinbutton)\00", align 1
@__func__.gimp_size_entry_attach_label = private unnamed_addr constant [29 x i8] c"gimp_size_entry_attach_label\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"text != NULL\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"left-attach\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"top-attach\00", align 1
@__func__.gimp_size_entry_set_resolution = private unnamed_addr constant [31 x i8] c"gimp_size_entry_set_resolution\00", align 1
@.str.16 = private unnamed_addr constant [48 x i8] c"(field >= 0) && (field < gse->number_of_fields)\00", align 1
@__func__.gimp_size_entry_set_size = private unnamed_addr constant [25 x i8] c"gimp_size_entry_set_size\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"lower <= upper\00", align 1
@__func__.gimp_size_entry_set_value_boundaries = private unnamed_addr constant [37 x i8] c"gimp_size_entry_set_value_boundaries\00", align 1
@__func__.gimp_size_entry_get_value = private unnamed_addr constant [26 x i8] c"gimp_size_entry_get_value\00", align 1
@__func__.gimp_size_entry_set_value = private unnamed_addr constant [26 x i8] c"gimp_size_entry_set_value\00", align 1
@__func__.gimp_size_entry_set_refval_boundaries = private unnamed_addr constant [38 x i8] c"gimp_size_entry_set_refval_boundaries\00", align 1
@__func__.gimp_size_entry_set_refval_digits = private unnamed_addr constant [34 x i8] c"gimp_size_entry_set_refval_digits\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"(digits >= 0) && (digits <= 6)\00", align 1
@__func__.gimp_size_entry_get_refval = private unnamed_addr constant [27 x i8] c"gimp_size_entry_get_refval\00", align 1
@__func__.gimp_size_entry_set_refval = private unnamed_addr constant [27 x i8] c"gimp_size_entry_set_refval\00", align 1
@__func__.gimp_size_entry_get_unit = private unnamed_addr constant [25 x i8] c"gimp_size_entry_get_unit\00", align 1
@__func__.gimp_size_entry_set_unit = private unnamed_addr constant [25 x i8] c"gimp_size_entry_set_unit\00", align 1
@.str.19 = private unnamed_addr constant [51 x i8] c"gse->menu_show_pixels || (unit != GIMP_UNIT_PIXEL)\00", align 1
@.str.20 = private unnamed_addr constant [54 x i8] c"gse->menu_show_percent || (unit != GIMP_UNIT_PERCENT)\00", align 1
@__func__.gimp_size_entry_show_unit_menu = private unnamed_addr constant [31 x i8] c"gimp_size_entry_show_unit_menu\00", align 1
@__func__.gimp_size_entry_set_pixel_digits = private unnamed_addr constant [33 x i8] c"gimp_size_entry_set_pixel_digits\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"gimp-pixel-digits\00", align 1
@__func__.gimp_size_entry_grab_focus = private unnamed_addr constant [27 x i8] c"gimp_size_entry_grab_focus\00", align 1
@__func__.gimp_size_entry_set_activates_default = private unnamed_addr constant [38 x i8] c"gimp_size_entry_set_activates_default\00", align 1
@__func__.gimp_size_entry_get_help_widget = private unnamed_addr constant [32 x i8] c"gimp_size_entry_get_help_widget\00", align 1
@gimp_size_entry_parent_class = internal global i8* null, align 8
@GimpSizeEntry_private_offset = internal global i32 0, align 4
@gimp_size_entry_signals = internal global [3 x i32] zeroinitializer, align 4
@.str.22 = private unnamed_addr constant [15 x i8] c"refval-changed\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"unit-changed\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@__func__.gimp_size_entry_eevl_input_callback = private unnamed_addr constant [36 x i8] c"gimp_size_entry_eevl_input_callback\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"GTK_IS_SPIN_BUTTON (spinner)\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"GIMP_IS_SIZE_ENTRY (gsef->gse)\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"ERROR: %s at '%s'\0A\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"<End of input>\00", align 1
@.str.29 = private unnamed_addr constant [52 x i8] c"ERROR: Expression evaluation failed without error.\0A\00", align 1
@.str.30 = private unnamed_addr constant [56 x i8] c"ERROR: result has wrong dimension (expected 1, got %d)\0A\00", align 1
@.str.31 = private unnamed_addr constant [56 x i8] c"ERROR: result has wrong dimension (expected 0, got %d)\0A\00", align 1
@__func__.gimp_size_entry_eevl_unit_resolver = private unnamed_addr constant [35 x i8] c"gimp_size_entry_eevl_unit_resolver\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"gsef\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"result != NULL\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_size_entry_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_size_entry_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_size_entry_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_table_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 880, void (i8*, i8*)* bitcast (void (i8*)* @gimp_size_entry_class_intern_init to void (i8*, i8*)*), i32 200, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpSizeEntry*)* @gimp_size_entry_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_size_entry_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_size_entry_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_size_entry_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_size_entry_parent_class, align 8
  %1 = load i32, i32* @GimpSizeEntry_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpSizeEntry_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpSizeEntryClass*
  call void @gimp_size_entry_class_init(%struct._GimpSizeEntryClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_size_entry_init(%struct._GimpSizeEntry* %gse) #3 {
entry:
  %gse.addr = alloca %struct._GimpSizeEntry*, align 8
  store %struct._GimpSizeEntry* %gse, %struct._GimpSizeEntry** %gse.addr, align 8
  %0 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %fields = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %0, i32 0, i32 1
  store %struct._GSList* null, %struct._GSList** %fields, align 8
  %1 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %number_of_fields = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %1, i32 0, i32 2
  store i32 0, i32* %number_of_fields, align 4
  %2 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %unitmenu = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %2, i32 0, i32 3
  store %struct._GtkWidget* null, %struct._GtkWidget** %unitmenu, align 8
  %3 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %unit = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %3, i32 0, i32 4
  store i32 0, i32* %unit, align 4
  %4 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %menu_show_pixels = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %4, i32 0, i32 5
  store i32 1, i32* %menu_show_pixels, align 4
  %5 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %menu_show_percent = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %5, i32 0, i32 6
  store i32 1, i32* %menu_show_percent, align 4
  %6 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %show_refval = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %6, i32 0, i32 7
  store i32 0, i32* %show_refval, align 4
  %7 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %update_policy = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %7, i32 0, i32 8
  store i32 0, i32* %update_policy, align 4
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_size_entry_new(i32 %number_of_fields, i32 %unit, i8* %unit_format, i32 %menu_show_pixels, i32 %menu_show_percent, i32 %show_refval, i32 %spinbutton_width, i32 %update_policy) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %number_of_fields.addr = alloca i32, align 4
  %unit.addr = alloca i32, align 4
  %unit_format.addr = alloca i8*, align 8
  %menu_show_pixels.addr = alloca i32, align 4
  %menu_show_percent.addr = alloca i32, align 4
  %show_refval.addr = alloca i32, align 4
  %spinbutton_width.addr = alloca i32, align 4
  %update_policy.addr = alloca i32, align 4
  %gse = alloca %struct._GimpSizeEntry*, align 8
  %store = alloca %struct._GimpUnitStore*, align 8
  %i = alloca i32, align 4
  %gsef = alloca %struct._GimpSizeEntryField*, align 8
  %digits = alloca i32, align 4
  %short_format = alloca i8*, align 8
  %p = alloca i8*, align 8
  store i32 %number_of_fields, i32* %number_of_fields.addr, align 4
  store i32 %unit, i32* %unit.addr, align 4
  store i8* %unit_format, i8** %unit_format.addr, align 8
  store i32 %menu_show_pixels, i32* %menu_show_pixels.addr, align 4
  store i32 %menu_show_percent, i32* %menu_show_percent.addr, align 4
  store i32 %show_refval, i32* %show_refval.addr, align 4
  store i32 %spinbutton_width, i32* %spinbutton_width.addr, align 4
  store i32 %update_policy, i32* %update_policy.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %number_of_fields.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %1 = load i32, i32* %number_of_fields.addr, align 4
  %cmp1 = icmp sle i32 %1, 16
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_size_entry_new, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %call = call i64 @gimp_size_entry_get_type() #6
  %call2 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %2 = bitcast i8* %call2 to %struct._GimpSizeEntry*
  store %struct._GimpSizeEntry* %2, %struct._GimpSizeEntry** %gse, align 8
  %3 = load i32, i32* %number_of_fields.addr, align 4
  %4 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse, align 8
  %number_of_fields3 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %4, i32 0, i32 2
  store i32 %3, i32* %number_of_fields3, align 4
  %5 = load i32, i32* %unit.addr, align 4
  %6 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse, align 8
  %unit4 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %6, i32 0, i32 4
  store i32 %5, i32* %unit4, align 4
  %7 = load i32, i32* %show_refval.addr, align 4
  %8 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse, align 8
  %show_refval5 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %8, i32 0, i32 7
  store i32 %7, i32* %show_refval5, align 4
  %9 = load i32, i32* %update_policy.addr, align 4
  %10 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse, align 8
  %update_policy6 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %10, i32 0, i32 8
  store i32 %9, i32* %update_policy6, align 4
  %11 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse, align 8
  %12 = bitcast %struct._GimpSizeEntry* %11 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_table_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call7)
  %13 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkTable*
  %14 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse, align 8
  %show_refval9 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %14, i32 0, i32 7
  %15 = load i32, i32* %show_refval9, align 4
  %add = add nsw i32 1, %15
  %add10 = add nsw i32 %add, 2
  %16 = load i32, i32* %number_of_fields.addr, align 4
  %add11 = add nsw i32 %16, 1
  %add12 = add nsw i32 %add11, 3
  call void @gtk_table_resize(%struct._GtkTable* %13, i32 %add10, i32 %add12)
  %17 = load i32, i32* %update_policy.addr, align 4
  %cmp13 = icmp eq i32 %17, 2
  br i1 %cmp13, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %18 = load i32, i32* %show_refval.addr, align 4
  %cmp14 = icmp eq i32 %18, 1
  br i1 %cmp14, label %if.then.15, label %if.else.17

if.then.15:                                       ; preds = %lor.lhs.false, %do.end
  %19 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse, align 8
  %menu_show_pixels16 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %19, i32 0, i32 5
  store i32 0, i32* %menu_show_pixels16, align 4
  br label %if.end.19

if.else.17:                                       ; preds = %lor.lhs.false
  %20 = load i32, i32* %menu_show_pixels.addr, align 4
  %21 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse, align 8
  %menu_show_pixels18 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %21, i32 0, i32 5
  store i32 %20, i32* %menu_show_pixels18, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.17, %if.then.15
  %22 = load i32, i32* %update_policy.addr, align 4
  %cmp20 = icmp eq i32 %22, 2
  br i1 %cmp20, label %if.then.21, label %if.else.23

if.then.21:                                       ; preds = %if.end.19
  %23 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse, align 8
  %menu_show_percent22 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %23, i32 0, i32 6
  store i32 0, i32* %menu_show_percent22, align 4
  br label %if.end.25

if.else.23:                                       ; preds = %if.end.19
  %24 = load i32, i32* %menu_show_percent.addr, align 4
  %25 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse, align 8
  %menu_show_percent24 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %25, i32 0, i32 6
  store i32 %24, i32* %menu_show_percent24, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.23, %if.then.21
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.25
  %26 = load i32, i32* %i, align 4
  %27 = load i32, i32* %number_of_fields.addr, align 4
  %cmp26 = icmp slt i32 %26, %27
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call27 = call noalias i8* @g_slice_alloc0(i64 120)
  %28 = bitcast i8* %call27 to %struct._GimpSizeEntryField*
  store %struct._GimpSizeEntryField* %28, %struct._GimpSizeEntryField** %gsef, align 8
  %29 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse, align 8
  %fields = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %29, i32 0, i32 1
  %30 = load %struct._GSList*, %struct._GSList** %fields, align 8
  %31 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %32 = bitcast %struct._GimpSizeEntryField* %31 to i8*
  %call28 = call %struct._GSList* @g_slist_append(%struct._GSList* %30, i8* %32)
  %33 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse, align 8
  %fields29 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %33, i32 0, i32 1
  store %struct._GSList* %call28, %struct._GSList** %fields29, align 8
  %34 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse, align 8
  %35 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %gse30 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %35, i32 0, i32 0
  store %struct._GimpSizeEntry* %34, %struct._GimpSizeEntry** %gse30, align 8
  %36 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %resolution = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %36, i32 0, i32 1
  store double 1.000000e+00, double* %resolution, align 8
  %37 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %lower = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %37, i32 0, i32 2
  store double 0.000000e+00, double* %lower, align 8
  %38 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %upper = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %38, i32 0, i32 3
  store double 1.000000e+02, double* %upper, align 8
  %39 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %value = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %39, i32 0, i32 6
  store double 0.000000e+00, double* %value, align 8
  %40 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %min_value = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %40, i32 0, i32 7
  store double 0.000000e+00, double* %min_value, align 8
  %41 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %max_value = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %41, i32 0, i32 8
  store double 5.000000e+05, double* %max_value, align 8
  %42 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %refval_adjustment = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %42, i32 0, i32 9
  store %struct._GtkAdjustment* null, %struct._GtkAdjustment** %refval_adjustment, align 8
  %43 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %value_adjustment = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %43, i32 0, i32 4
  store %struct._GtkAdjustment* null, %struct._GtkAdjustment** %value_adjustment, align 8
  %44 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %refval = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %44, i32 0, i32 11
  store double 0.000000e+00, double* %refval, align 8
  %45 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %min_refval = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %45, i32 0, i32 12
  store double 0.000000e+00, double* %min_refval, align 8
  %46 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %max_refval = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %46, i32 0, i32 13
  store double 5.000000e+05, double* %max_refval, align 8
  %47 = load i32, i32* %update_policy.addr, align 4
  %cmp31 = icmp eq i32 %47, 1
  %cond = select i1 %cmp31, i32 0, i32 3
  %48 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %refval_digits = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %48, i32 0, i32 14
  store i32 %cond, i32* %refval_digits, align 4
  %49 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %stop_recursion = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %49, i32 0, i32 15
  store i32 0, i32* %stop_recursion, align 4
  %50 = load i32, i32* %unit.addr, align 4
  %cmp32 = icmp eq i32 %50, 0
  br i1 %cmp32, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %51 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %refval_digits33 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %51, i32 0, i32 14
  %52 = load i32, i32* %refval_digits33, align 4
  br label %cond.end.46

cond.false:                                       ; preds = %for.body
  %53 = load i32, i32* %unit.addr, align 4
  %cmp34 = icmp eq i32 %53, 65536
  br i1 %cmp34, label %cond.true.35, label %cond.false.36

cond.true.35:                                     ; preds = %cond.false
  br label %cond.end.44

cond.false.36:                                    ; preds = %cond.false
  %54 = load i32, i32* %unit.addr, align 4
  %call37 = call i32 @gimp_unit_get_digits(i32 %54)
  %cmp38 = icmp slt i32 %call37, 5
  br i1 %cmp38, label %cond.true.39, label %cond.false.41

cond.true.39:                                     ; preds = %cond.false.36
  %55 = load i32, i32* %unit.addr, align 4
  %call40 = call i32 @gimp_unit_get_digits(i32 %55)
  br label %cond.end

cond.false.41:                                    ; preds = %cond.false.36
  br label %cond.end

cond.end:                                         ; preds = %cond.false.41, %cond.true.39
  %cond42 = phi i32 [ %call40, %cond.true.39 ], [ 5, %cond.false.41 ]
  %add43 = add nsw i32 %cond42, 1
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.end, %cond.true.35
  %cond45 = phi i32 [ 2, %cond.true.35 ], [ %add43, %cond.end ]
  br label %cond.end.46

cond.end.46:                                      ; preds = %cond.end.44, %cond.true
  %cond47 = phi i32 [ %52, %cond.true ], [ %cond45, %cond.end.44 ]
  store i32 %cond47, i32* %digits, align 4
  %56 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %value_adjustment48 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %56, i32 0, i32 4
  %57 = bitcast %struct._GtkAdjustment** %value_adjustment48 to %struct._GtkObject**
  %58 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %value49 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %58, i32 0, i32 6
  %59 = load double, double* %value49, align 8
  %60 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %min_value50 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %60, i32 0, i32 7
  %61 = load double, double* %min_value50, align 8
  %62 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %max_value51 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %62, i32 0, i32 8
  %63 = load double, double* %max_value51, align 8
  %64 = load i32, i32* %digits, align 4
  %call52 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %57, double %59, double %61, double %63, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00, double 1.000000e+00, i32 %64)
  %65 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %value_spinbutton = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %65, i32 0, i32 5
  store %struct._GtkWidget* %call52, %struct._GtkWidget** %value_spinbutton, align 8
  %66 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %value_spinbutton53 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %66, i32 0, i32 5
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %value_spinbutton53, align 8
  %68 = bitcast %struct._GtkWidget* %67 to %struct._GTypeInstance*
  %call54 = call i64 @gtk_spin_button_get_type() #6
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 %call54)
  %69 = bitcast %struct._GTypeInstance* %call55 to %struct._GtkSpinButton*
  %70 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  call void @gimp_size_entry_attach_eevl(%struct._GtkSpinButton* %69, %struct._GimpSizeEntryField* %70)
  %71 = load i32, i32* %spinbutton_width.addr, align 4
  %cmp56 = icmp sgt i32 %71, 0
  br i1 %cmp56, label %if.then.57, label %if.end.66

if.then.57:                                       ; preds = %cond.end.46
  %72 = load i32, i32* %spinbutton_width.addr, align 4
  %cmp58 = icmp slt i32 %72, 17
  br i1 %cmp58, label %if.then.59, label %if.else.63

if.then.59:                                       ; preds = %if.then.57
  %73 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %value_spinbutton60 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %73, i32 0, i32 5
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %value_spinbutton60, align 8
  %75 = bitcast %struct._GtkWidget* %74 to %struct._GTypeInstance*
  %call61 = call i64 @gtk_entry_get_type() #6
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %75, i64 %call61)
  %76 = bitcast %struct._GTypeInstance* %call62 to %struct._GtkEntry*
  %77 = load i32, i32* %spinbutton_width.addr, align 4
  call void @gtk_entry_set_width_chars(%struct._GtkEntry* %76, i32 %77)
  br label %if.end.65

if.else.63:                                       ; preds = %if.then.57
  %78 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %value_spinbutton64 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %78, i32 0, i32 5
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %value_spinbutton64, align 8
  %80 = load i32, i32* %spinbutton_width.addr, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %79, i32 %80, i32 -1)
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.63, %if.then.59
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %cond.end.46
  %81 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse, align 8
  %82 = bitcast %struct._GimpSizeEntry* %81 to %struct._GTypeInstance*
  %call67 = call i64 @gtk_table_get_type() #6
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %82, i64 %call67)
  %83 = bitcast %struct._GTypeInstance* %call68 to %struct._GtkTable*
  %84 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %value_spinbutton69 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %84, i32 0, i32 5
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %value_spinbutton69, align 8
  %86 = load i32, i32* %i, align 4
  %add70 = add nsw i32 %86, 1
  %87 = load i32, i32* %i, align 4
  %add71 = add nsw i32 %87, 2
  %88 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse, align 8
  %show_refval72 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %88, i32 0, i32 7
  %89 = load i32, i32* %show_refval72, align 4
  %add73 = add nsw i32 %89, 1
  %90 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse, align 8
  %show_refval74 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %90, i32 0, i32 7
  %91 = load i32, i32* %show_refval74, align 4
  %add75 = add nsw i32 %91, 2
  call void @gtk_table_attach_defaults(%struct._GtkTable* %83, %struct._GtkWidget* %85, i32 %add70, i32 %add71, i32 %add73, i32 %add75)
  %92 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %value_adjustment76 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %92, i32 0, i32 4
  %93 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %value_adjustment76, align 8
  %94 = bitcast %struct._GtkAdjustment* %93 to i8*
  %95 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %96 = bitcast %struct._GimpSizeEntryField* %95 to i8*
  %call77 = call i64 @g_signal_connect_data(i8* %94, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_size_entry_value_callback to void ()*), i8* %96, void (i8*, %struct._GClosure*)* null, i32 0)
  %97 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %value_spinbutton78 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %97, i32 0, i32 5
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** %value_spinbutton78, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %98)
  %99 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse, align 8
  %show_refval79 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %99, i32 0, i32 7
  %100 = load i32, i32* %show_refval79, align 4
  %tobool = icmp ne i32 %100, 0
  br i1 %tobool, label %if.then.80, label %if.end.96

if.then.80:                                       ; preds = %if.end.66
  %101 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %refval_adjustment81 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %101, i32 0, i32 9
  %102 = bitcast %struct._GtkAdjustment** %refval_adjustment81 to %struct._GtkObject**
  %103 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %refval82 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %103, i32 0, i32 11
  %104 = load double, double* %refval82, align 8
  %105 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %min_refval83 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %105, i32 0, i32 12
  %106 = load double, double* %min_refval83, align 8
  %107 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %max_refval84 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %107, i32 0, i32 13
  %108 = load double, double* %max_refval84, align 8
  %109 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %refval_digits85 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %109, i32 0, i32 14
  %110 = load i32, i32* %refval_digits85, align 4
  %call86 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %102, double %104, double %106, double %108, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00, double 1.000000e+00, i32 %110)
  %111 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %refval_spinbutton = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %111, i32 0, i32 10
  store %struct._GtkWidget* %call86, %struct._GtkWidget** %refval_spinbutton, align 8
  %112 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %refval_spinbutton87 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %112, i32 0, i32 10
  %113 = load %struct._GtkWidget*, %struct._GtkWidget** %refval_spinbutton87, align 8
  %114 = load i32, i32* %spinbutton_width.addr, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %113, i32 %114, i32 -1)
  %115 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse, align 8
  %116 = bitcast %struct._GimpSizeEntry* %115 to %struct._GTypeInstance*
  %call88 = call i64 @gtk_table_get_type() #6
  %call89 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %116, i64 %call88)
  %117 = bitcast %struct._GTypeInstance* %call89 to %struct._GtkTable*
  %118 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %refval_spinbutton90 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %118, i32 0, i32 10
  %119 = load %struct._GtkWidget*, %struct._GtkWidget** %refval_spinbutton90, align 8
  %120 = load i32, i32* %i, align 4
  %add91 = add nsw i32 %120, 1
  %121 = load i32, i32* %i, align 4
  %add92 = add nsw i32 %121, 2
  call void @gtk_table_attach_defaults(%struct._GtkTable* %117, %struct._GtkWidget* %119, i32 %add91, i32 %add92, i32 1, i32 2)
  %122 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %refval_adjustment93 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %122, i32 0, i32 9
  %123 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %refval_adjustment93, align 8
  %124 = bitcast %struct._GtkAdjustment* %123 to i8*
  %125 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %126 = bitcast %struct._GimpSizeEntryField* %125 to i8*
  %call94 = call i64 @g_signal_connect_data(i8* %124, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_size_entry_refval_callback to void ()*), i8* %126, void (i8*, %struct._GClosure*)* null, i32 0)
  %127 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %refval_spinbutton95 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %127, i32 0, i32 10
  %128 = load %struct._GtkWidget*, %struct._GtkWidget** %refval_spinbutton95, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %128)
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.80, %if.end.66
  %129 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse, align 8
  %menu_show_pixels97 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %129, i32 0, i32 5
  %130 = load i32, i32* %menu_show_pixels97, align 4
  %tobool98 = icmp ne i32 %130, 0
  br i1 %tobool98, label %land.lhs.true.99, label %if.end.109

land.lhs.true.99:                                 ; preds = %if.end.96
  %131 = load i32, i32* %unit.addr, align 4
  %cmp100 = icmp eq i32 %131, 0
  br i1 %cmp100, label %land.lhs.true.101, label %if.end.109

land.lhs.true.101:                                ; preds = %land.lhs.true.99
  %132 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse, align 8
  %show_refval102 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %132, i32 0, i32 7
  %133 = load i32, i32* %show_refval102, align 4
  %tobool103 = icmp ne i32 %133, 0
  br i1 %tobool103, label %if.end.109, label %if.then.104

if.then.104:                                      ; preds = %land.lhs.true.101
  %134 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %value_spinbutton105 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %134, i32 0, i32 5
  %135 = load %struct._GtkWidget*, %struct._GtkWidget** %value_spinbutton105, align 8
  %136 = bitcast %struct._GtkWidget* %135 to %struct._GTypeInstance*
  %call106 = call i64 @gtk_spin_button_get_type() #6
  %call107 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %136, i64 %call106)
  %137 = bitcast %struct._GTypeInstance* %call107 to %struct._GtkSpinButton*
  %138 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %refval_digits108 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %138, i32 0, i32 14
  %139 = load i32, i32* %refval_digits108, align 4
  call void @gtk_spin_button_set_digits(%struct._GtkSpinButton* %137, i32 %139)
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.104, %land.lhs.true.101, %land.lhs.true.99, %if.end.96
  br label %for.inc

for.inc:                                          ; preds = %if.end.109
  %140 = load i32, i32* %i, align 4
  %inc = add nsw i32 %140, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %141 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse, align 8
  %number_of_fields110 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %141, i32 0, i32 2
  %142 = load i32, i32* %number_of_fields110, align 4
  %call111 = call %struct._GimpUnitStore* @gimp_unit_store_new(i32 %142)
  store %struct._GimpUnitStore* %call111, %struct._GimpUnitStore** %store, align 8
  %143 = load %struct._GimpUnitStore*, %struct._GimpUnitStore** %store, align 8
  %144 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse, align 8
  %menu_show_pixels112 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %144, i32 0, i32 5
  %145 = load i32, i32* %menu_show_pixels112, align 4
  call void @gimp_unit_store_set_has_pixels(%struct._GimpUnitStore* %143, i32 %145)
  %146 = load %struct._GimpUnitStore*, %struct._GimpUnitStore** %store, align 8
  %147 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse, align 8
  %menu_show_percent113 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %147, i32 0, i32 6
  %148 = load i32, i32* %menu_show_percent113, align 4
  call void @gimp_unit_store_set_has_percent(%struct._GimpUnitStore* %146, i32 %148)
  %149 = load i8*, i8** %unit_format.addr, align 8
  %tobool114 = icmp ne i8* %149, null
  br i1 %tobool114, label %if.then.115, label %if.end.127

if.then.115:                                      ; preds = %for.end
  %150 = load i8*, i8** %unit_format.addr, align 8
  %call116 = call noalias i8* @g_strdup(i8* %150)
  store i8* %call116, i8** %short_format, align 8
  %151 = load i8*, i8** %short_format, align 8
  %call117 = call i8* @strstr(i8* %151, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0)) #7
  store i8* %call117, i8** %p, align 8
  %152 = load i8*, i8** %p, align 8
  %tobool118 = icmp ne i8* %152, null
  br i1 %tobool118, label %if.then.119, label %if.end.121

if.then.119:                                      ; preds = %if.then.115
  %153 = load i8*, i8** %p, align 8
  %call120 = call i8* @strcpy(i8* %153, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0)) #8
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.119, %if.then.115
  %154 = load i8*, i8** %short_format, align 8
  %call122 = call i8* @strstr(i8* %154, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0)) #7
  store i8* %call122, i8** %p, align 8
  %155 = load i8*, i8** %p, align 8
  %tobool123 = icmp ne i8* %155, null
  br i1 %tobool123, label %if.then.124, label %if.end.126

if.then.124:                                      ; preds = %if.end.121
  %156 = load i8*, i8** %p, align 8
  %call125 = call i8* @strcpy(i8* %156, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0)) #8
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.124, %if.end.121
  %157 = load %struct._GimpUnitStore*, %struct._GimpUnitStore** %store, align 8
  %158 = bitcast %struct._GimpUnitStore* %157 to i8*
  %159 = load i8*, i8** %short_format, align 8
  %160 = load i8*, i8** %unit_format.addr, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %158, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* %159, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* %160, i8* null)
  %161 = load i8*, i8** %short_format, align 8
  call void @g_free(i8* %161)
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.126, %for.end
  %162 = load %struct._GimpUnitStore*, %struct._GimpUnitStore** %store, align 8
  %call128 = call %struct._GtkWidget* @gimp_unit_combo_box_new_with_model(%struct._GimpUnitStore* %162)
  %163 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse, align 8
  %unitmenu = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %163, i32 0, i32 3
  store %struct._GtkWidget* %call128, %struct._GtkWidget** %unitmenu, align 8
  %164 = load %struct._GimpUnitStore*, %struct._GimpUnitStore** %store, align 8
  %165 = bitcast %struct._GimpUnitStore* %164 to i8*
  call void @g_object_unref(i8* %165)
  %166 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse, align 8
  %unitmenu129 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %166, i32 0, i32 3
  %167 = load %struct._GtkWidget*, %struct._GtkWidget** %unitmenu129, align 8
  %168 = bitcast %struct._GtkWidget* %167 to %struct._GTypeInstance*
  %call130 = call i64 @gimp_unit_combo_box_get_type() #6
  %call131 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %168, i64 %call130)
  %169 = bitcast %struct._GTypeInstance* %call131 to %struct._GimpUnitComboBox*
  %170 = load i32, i32* %unit.addr, align 4
  call void @gimp_unit_combo_box_set_active(%struct._GimpUnitComboBox* %169, i32 %170)
  %171 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse, align 8
  %172 = bitcast %struct._GimpSizeEntry* %171 to %struct._GTypeInstance*
  %call132 = call i64 @gtk_table_get_type() #6
  %call133 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %172, i64 %call132)
  %173 = bitcast %struct._GTypeInstance* %call133 to %struct._GtkTable*
  %174 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse, align 8
  %unitmenu134 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %174, i32 0, i32 3
  %175 = load %struct._GtkWidget*, %struct._GtkWidget** %unitmenu134, align 8
  %176 = load i32, i32* %i, align 4
  %add135 = add nsw i32 %176, 2
  %177 = load i32, i32* %i, align 4
  %add136 = add nsw i32 %177, 3
  %178 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse, align 8
  %show_refval137 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %178, i32 0, i32 7
  %179 = load i32, i32* %show_refval137, align 4
  %add138 = add nsw i32 %179, 1
  %180 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse, align 8
  %show_refval139 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %180, i32 0, i32 7
  %181 = load i32, i32* %show_refval139, align 4
  %add140 = add nsw i32 %181, 2
  call void @gtk_table_attach(%struct._GtkTable* %173, %struct._GtkWidget* %175, i32 %add135, i32 %add136, i32 %add138, i32 %add140, i32 6, i32 6, i32 0, i32 0)
  %182 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse, align 8
  %unitmenu141 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %182, i32 0, i32 3
  %183 = load %struct._GtkWidget*, %struct._GtkWidget** %unitmenu141, align 8
  %184 = bitcast %struct._GtkWidget* %183 to i8*
  %185 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse, align 8
  %186 = bitcast %struct._GimpSizeEntry* %185 to i8*
  %call142 = call i64 @g_signal_connect_data(i8* %184, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpSizeEntry*)* @gimp_size_entry_unit_callback to void ()*), i8* %186, void (i8*, %struct._GClosure*)* null, i32 0)
  %187 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse, align 8
  %unitmenu143 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %187, i32 0, i32 3
  %188 = load %struct._GtkWidget*, %struct._GtkWidget** %unitmenu143, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %188)
  %189 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse, align 8
  %190 = bitcast %struct._GimpSizeEntry* %189 to %struct._GTypeInstance*
  %call144 = call i64 @gtk_widget_get_type() #6
  %call145 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %190, i64 %call144)
  %191 = bitcast %struct._GTypeInstance* %call145 to %struct._GtkWidget*
  store %struct._GtkWidget* %191, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.127, %if.else
  %192 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %192
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

declare void @gtk_table_resize(%struct._GtkTable*, i32, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare noalias i8* @g_slice_alloc0(i64) #1

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #1

declare i32 @gimp_unit_get_digits(i32) #1

declare %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject**, double, double, double, double, double, double, double, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_size_entry_attach_eevl(%struct._GtkSpinButton* %spin_button, %struct._GimpSizeEntryField* %gsef) #3 {
entry:
  %spin_button.addr = alloca %struct._GtkSpinButton*, align 8
  %gsef.addr = alloca %struct._GimpSizeEntryField*, align 8
  store %struct._GtkSpinButton* %spin_button, %struct._GtkSpinButton** %spin_button.addr, align 8
  store %struct._GimpSizeEntryField* %gsef, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %0 = load %struct._GtkSpinButton*, %struct._GtkSpinButton** %spin_button.addr, align 8
  call void @gtk_spin_button_set_numeric(%struct._GtkSpinButton* %0, i32 0)
  %1 = load %struct._GtkSpinButton*, %struct._GtkSpinButton** %spin_button.addr, align 8
  call void @gtk_spin_button_set_update_policy(%struct._GtkSpinButton* %1, i32 1)
  %2 = load %struct._GtkSpinButton*, %struct._GtkSpinButton** %spin_button.addr, align 8
  %3 = bitcast %struct._GtkSpinButton* %2 to i8*
  %4 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %5 = bitcast %struct._GimpSizeEntryField* %4 to i8*
  %call = call i64 @g_signal_connect_data(i8* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkSpinButton*, double*, i8**)* @gimp_size_entry_eevl_input_callback to void ()*), i8* %5, void (i8*, %struct._GClosure*)* null, i32 0)
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gtk_spin_button_get_type() #2

declare void @gtk_entry_set_width_chars(%struct._GtkEntry*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #2

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gtk_table_attach_defaults(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_size_entry_value_callback(%struct._GtkWidget* %widget, i8* %data) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %gsef = alloca %struct._GimpSizeEntryField*, align 8
  %new_value = alloca double, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GimpSizeEntryField*
  store %struct._GimpSizeEntryField* %1, %struct._GimpSizeEntryField** %gsef, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call = call i64 @gtk_adjustment_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkAdjustment*
  %call2 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %4)
  store double %call2, double* %new_value, align 8
  %5 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %value = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %5, i32 0, i32 6
  %6 = load double, double* %value, align 8
  %7 = load double, double* %new_value, align 8
  %cmp = fcmp une double %6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %9 = load double, double* %new_value, align 8
  call void @gimp_size_entry_update_value(%struct._GimpSizeEntryField* %8, double %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @gtk_widget_show(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_size_entry_refval_callback(%struct._GtkWidget* %widget, i8* %data) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %gsef = alloca %struct._GimpSizeEntryField*, align 8
  %new_refval = alloca double, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GimpSizeEntryField*
  store %struct._GimpSizeEntryField* %1, %struct._GimpSizeEntryField** %gsef, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call = call i64 @gtk_adjustment_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkAdjustment*
  %call2 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %4)
  store double %call2, double* %new_refval, align 8
  %5 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %refval = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %5, i32 0, i32 11
  %6 = load double, double* %refval, align 8
  %7 = load double, double* %new_refval, align 8
  %cmp = fcmp une double %6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %9 = load double, double* %new_refval, align 8
  call void @gimp_size_entry_update_refval(%struct._GimpSizeEntryField* %8, double %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @gtk_spin_button_set_digits(%struct._GtkSpinButton*, i32) #1

declare %struct._GimpUnitStore* @gimp_unit_store_new(i32) #1

declare void @gimp_unit_store_set_has_pixels(%struct._GimpUnitStore*, i32) #1

declare void @gimp_unit_store_set_has_percent(%struct._GimpUnitStore*, i32) #1

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #4

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #5

declare void @g_object_set(i8*, i8*, ...) #1

declare void @g_free(i8*) #1

declare %struct._GtkWidget* @gimp_unit_combo_box_new_with_model(%struct._GimpUnitStore*) #1

declare void @g_object_unref(i8*) #1

declare void @gimp_unit_combo_box_set_active(%struct._GimpUnitComboBox*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_unit_combo_box_get_type() #2

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_size_entry_unit_callback(%struct._GtkWidget* %widget, %struct._GimpSizeEntry* %gse) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %gse.addr = alloca %struct._GimpSizeEntry*, align 8
  %new_unit = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpSizeEntry* %gse, %struct._GimpSizeEntry** %gse.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_unit_combo_box_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpUnitComboBox*
  %call2 = call i32 @gimp_unit_combo_box_get_active(%struct._GimpUnitComboBox* %2)
  store i32 %call2, i32* %new_unit, align 4
  %3 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %unit = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %3, i32 0, i32 4
  %4 = load i32, i32* %unit, align 4
  %5 = load i32, i32* %new_unit, align 4
  %cmp = icmp ne i32 %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %7 = load i32, i32* %new_unit, align 4
  call void @gimp_size_entry_update_unit(%struct._GimpSizeEntry* %6, i32 %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind uwtable
define void @gimp_size_entry_add_field(%struct._GimpSizeEntry* %gse, %struct._GtkSpinButton* %value_spinbutton, %struct._GtkSpinButton* %refval_spinbutton) #3 {
entry:
  %gse.addr = alloca %struct._GimpSizeEntry*, align 8
  %value_spinbutton.addr = alloca %struct._GtkSpinButton*, align 8
  %refval_spinbutton.addr = alloca %struct._GtkSpinButton*, align 8
  %gsef = alloca %struct._GimpSizeEntryField*, align 8
  %digits = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %__inst43 = alloca %struct._GTypeInstance*, align 8
  %__t45 = alloca i64, align 8
  %__r48 = alloca i32, align 4
  %tmp63 = alloca i32, align 4
  store %struct._GimpSizeEntry* %gse, %struct._GimpSizeEntry** %gse.addr, align 8
  store %struct._GtkSpinButton* %value_spinbutton, %struct._GtkSpinButton** %value_spinbutton.addr, align 8
  store %struct._GtkSpinButton* %refval_spinbutton, %struct._GtkSpinButton** %refval_spinbutton.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %1 = bitcast %struct._GimpSizeEntry* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_size_entry_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_size_entry_add_field, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.126

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkSpinButton*, %struct._GtkSpinButton** %value_spinbutton.addr, align 8
  %14 = bitcast %struct._GtkSpinButton* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gtk_spin_button_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_size_entry_add_field, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.126

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %show_refval = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %26, i32 0, i32 7
  %27 = load i32, i32* %show_refval, align 4
  %tobool39 = icmp ne i32 %27, 0
  br i1 %tobool39, label %if.then.40, label %if.end.69

if.then.40:                                       ; preds = %do.end.38
  br label %do.body.41

do.body.41:                                       ; preds = %if.then.40
  %28 = load %struct._GtkSpinButton*, %struct._GtkSpinButton** %refval_spinbutton.addr, align 8
  %29 = bitcast %struct._GtkSpinButton* %28 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %29, %struct._GTypeInstance** %__inst43, align 8
  %call46 = call i64 @gtk_spin_button_get_type() #6
  store i64 %call46, i64* %__t45, align 8
  %30 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst43, align 8
  %tobool49 = icmp ne %struct._GTypeInstance* %30, null
  br i1 %tobool49, label %if.else.51, label %if.then.50

if.then.50:                                       ; preds = %do.body.41
  store i32 0, i32* %__r48, align 4
  br label %if.end.62

if.else.51:                                       ; preds = %do.body.41
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst43, align 8
  %g_class52 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class52, align 8
  %tobool53 = icmp ne %struct._GTypeClass* %32, null
  br i1 %tobool53, label %land.lhs.true.54, label %if.else.59

land.lhs.true.54:                                 ; preds = %if.else.51
  %33 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst43, align 8
  %g_class55 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %33, i32 0, i32 0
  %34 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class55, align 8
  %g_type56 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %34, i32 0, i32 0
  %35 = load i64, i64* %g_type56, align 8
  %36 = load i64, i64* %__t45, align 8
  %cmp57 = icmp eq i64 %35, %36
  br i1 %cmp57, label %if.then.58, label %if.else.59

if.then.58:                                       ; preds = %land.lhs.true.54
  store i32 1, i32* %__r48, align 4
  br label %if.end.61

if.else.59:                                       ; preds = %land.lhs.true.54, %if.else.51
  %37 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst43, align 8
  %38 = load i64, i64* %__t45, align 8
  %call60 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %37, i64 %38) #7
  store i32 %call60, i32* %__r48, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.59, %if.then.58
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.50
  %39 = load i32, i32* %__r48, align 4
  store i32 %39, i32* %tmp63
  %40 = load i32, i32* %tmp63
  %tobool64 = icmp ne i32 %40, 0
  br i1 %tobool64, label %if.then.65, label %if.else.66

if.then.65:                                       ; preds = %if.end.62
  br label %if.end.67

if.else.66:                                       ; preds = %if.end.62
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_size_entry_add_field, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.126

if.end.67:                                        ; preds = %if.then.65
  br label %do.end.68

do.end.68:                                        ; preds = %if.end.67
  br label %if.end.69

if.end.69:                                        ; preds = %do.end.68, %do.end.38
  %call70 = call noalias i8* @g_slice_alloc0(i64 120)
  %41 = bitcast i8* %call70 to %struct._GimpSizeEntryField*
  store %struct._GimpSizeEntryField* %41, %struct._GimpSizeEntryField** %gsef, align 8
  %42 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %fields = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %42, i32 0, i32 1
  %43 = load %struct._GSList*, %struct._GSList** %fields, align 8
  %44 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %45 = bitcast %struct._GimpSizeEntryField* %44 to i8*
  %call71 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %43, i8* %45)
  %46 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %fields72 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %46, i32 0, i32 1
  store %struct._GSList* %call71, %struct._GSList** %fields72, align 8
  %47 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %number_of_fields = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %47, i32 0, i32 2
  %48 = load i32, i32* %number_of_fields, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %number_of_fields, align 4
  %49 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %50 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %gse73 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %50, i32 0, i32 0
  store %struct._GimpSizeEntry* %49, %struct._GimpSizeEntry** %gse73, align 8
  %51 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %resolution = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %51, i32 0, i32 1
  store double 1.000000e+00, double* %resolution, align 8
  %52 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %lower = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %52, i32 0, i32 2
  store double 0.000000e+00, double* %lower, align 8
  %53 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %upper = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %53, i32 0, i32 3
  store double 1.000000e+02, double* %upper, align 8
  %54 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %value = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %54, i32 0, i32 6
  store double 0.000000e+00, double* %value, align 8
  %55 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %min_value = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %55, i32 0, i32 7
  store double 0.000000e+00, double* %min_value, align 8
  %56 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %max_value = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %56, i32 0, i32 8
  store double 5.000000e+05, double* %max_value, align 8
  %57 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %refval = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %57, i32 0, i32 11
  store double 0.000000e+00, double* %refval, align 8
  %58 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %min_refval = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %58, i32 0, i32 12
  store double 0.000000e+00, double* %min_refval, align 8
  %59 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %max_refval = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %59, i32 0, i32 13
  store double 5.000000e+05, double* %max_refval, align 8
  %60 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %update_policy = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %60, i32 0, i32 8
  %61 = load i32, i32* %update_policy, align 4
  %cmp74 = icmp eq i32 %61, 1
  %cond = select i1 %cmp74, i32 0, i32 3
  %62 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %refval_digits = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %62, i32 0, i32 14
  store i32 %cond, i32* %refval_digits, align 4
  %63 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %stop_recursion = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %63, i32 0, i32 15
  store i32 0, i32* %stop_recursion, align 4
  %64 = load %struct._GtkSpinButton*, %struct._GtkSpinButton** %value_spinbutton.addr, align 8
  %call75 = call %struct._GtkAdjustment* @gtk_spin_button_get_adjustment(%struct._GtkSpinButton* %64)
  %65 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %value_adjustment = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %65, i32 0, i32 4
  store %struct._GtkAdjustment* %call75, %struct._GtkAdjustment** %value_adjustment, align 8
  %66 = load %struct._GtkSpinButton*, %struct._GtkSpinButton** %value_spinbutton.addr, align 8
  %67 = bitcast %struct._GtkSpinButton* %66 to %struct._GTypeInstance*
  %call76 = call i64 @gtk_widget_get_type() #6
  %call77 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 %call76)
  %68 = bitcast %struct._GTypeInstance* %call77 to %struct._GtkWidget*
  %69 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %value_spinbutton78 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %69, i32 0, i32 5
  store %struct._GtkWidget* %68, %struct._GtkWidget** %value_spinbutton78, align 8
  %70 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %value_adjustment79 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %70, i32 0, i32 4
  %71 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %value_adjustment79, align 8
  %72 = bitcast %struct._GtkAdjustment* %71 to i8*
  %73 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %74 = bitcast %struct._GimpSizeEntryField* %73 to i8*
  %call80 = call i64 @g_signal_connect_data(i8* %72, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_size_entry_value_callback to void ()*), i8* %74, void (i8*, %struct._GClosure*)* null, i32 0)
  %75 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %value_spinbutton81 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %75, i32 0, i32 5
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %value_spinbutton81, align 8
  %77 = bitcast %struct._GtkWidget* %76 to %struct._GTypeInstance*
  %call82 = call i64 @gtk_spin_button_get_type() #6
  %call83 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %77, i64 %call82)
  %78 = bitcast %struct._GTypeInstance* %call83 to %struct._GtkSpinButton*
  %79 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  call void @gimp_size_entry_attach_eevl(%struct._GtkSpinButton* %78, %struct._GimpSizeEntryField* %79)
  %80 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %show_refval84 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %80, i32 0, i32 7
  %81 = load i32, i32* %show_refval84, align 4
  %tobool85 = icmp ne i32 %81, 0
  br i1 %tobool85, label %if.then.86, label %if.end.93

if.then.86:                                       ; preds = %if.end.69
  %82 = load %struct._GtkSpinButton*, %struct._GtkSpinButton** %refval_spinbutton.addr, align 8
  %call87 = call %struct._GtkAdjustment* @gtk_spin_button_get_adjustment(%struct._GtkSpinButton* %82)
  %83 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %refval_adjustment = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %83, i32 0, i32 9
  store %struct._GtkAdjustment* %call87, %struct._GtkAdjustment** %refval_adjustment, align 8
  %84 = load %struct._GtkSpinButton*, %struct._GtkSpinButton** %refval_spinbutton.addr, align 8
  %85 = bitcast %struct._GtkSpinButton* %84 to %struct._GTypeInstance*
  %call88 = call i64 @gtk_widget_get_type() #6
  %call89 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %85, i64 %call88)
  %86 = bitcast %struct._GTypeInstance* %call89 to %struct._GtkWidget*
  %87 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %refval_spinbutton90 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %87, i32 0, i32 10
  store %struct._GtkWidget* %86, %struct._GtkWidget** %refval_spinbutton90, align 8
  %88 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %refval_adjustment91 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %88, i32 0, i32 9
  %89 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %refval_adjustment91, align 8
  %90 = bitcast %struct._GtkAdjustment* %89 to i8*
  %91 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %92 = bitcast %struct._GimpSizeEntryField* %91 to i8*
  %call92 = call i64 @g_signal_connect_data(i8* %90, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_size_entry_refval_callback to void ()*), i8* %92, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.86, %if.end.69
  %93 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %unit = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %93, i32 0, i32 4
  %94 = load i32, i32* %unit, align 4
  %cmp94 = icmp eq i32 %94, 0
  br i1 %cmp94, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.93
  %95 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %refval_digits95 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %95, i32 0, i32 14
  %96 = load i32, i32* %refval_digits95, align 4
  br label %cond.end.110

cond.false:                                       ; preds = %if.end.93
  %97 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %unit96 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %97, i32 0, i32 4
  %98 = load i32, i32* %unit96, align 4
  %cmp97 = icmp eq i32 %98, 65536
  br i1 %cmp97, label %cond.true.98, label %cond.false.99

cond.true.98:                                     ; preds = %cond.false
  br label %cond.end.108

cond.false.99:                                    ; preds = %cond.false
  %99 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %unit100 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %99, i32 0, i32 4
  %100 = load i32, i32* %unit100, align 4
  %call101 = call i32 @gimp_unit_get_digits(i32 %100)
  %cmp102 = icmp slt i32 %call101, 5
  br i1 %cmp102, label %cond.true.103, label %cond.false.106

cond.true.103:                                    ; preds = %cond.false.99
  %101 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %unit104 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %101, i32 0, i32 4
  %102 = load i32, i32* %unit104, align 4
  %call105 = call i32 @gimp_unit_get_digits(i32 %102)
  br label %cond.end

cond.false.106:                                   ; preds = %cond.false.99
  br label %cond.end

cond.end:                                         ; preds = %cond.false.106, %cond.true.103
  %cond107 = phi i32 [ %call105, %cond.true.103 ], [ 5, %cond.false.106 ]
  %add = add nsw i32 %cond107, 1
  br label %cond.end.108

cond.end.108:                                     ; preds = %cond.end, %cond.true.98
  %cond109 = phi i32 [ 2, %cond.true.98 ], [ %add, %cond.end ]
  br label %cond.end.110

cond.end.110:                                     ; preds = %cond.end.108, %cond.true
  %cond111 = phi i32 [ %96, %cond.true ], [ %cond109, %cond.end.108 ]
  store i32 %cond111, i32* %digits, align 4
  %103 = load %struct._GtkSpinButton*, %struct._GtkSpinButton** %value_spinbutton.addr, align 8
  %104 = bitcast %struct._GtkSpinButton* %103 to %struct._GTypeInstance*
  %call112 = call i64 @gtk_spin_button_get_type() #6
  %call113 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %104, i64 %call112)
  %105 = bitcast %struct._GTypeInstance* %call113 to %struct._GtkSpinButton*
  %106 = load i32, i32* %digits, align 4
  call void @gtk_spin_button_set_digits(%struct._GtkSpinButton* %105, i32 %106)
  %107 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %menu_show_pixels = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %107, i32 0, i32 5
  %108 = load i32, i32* %menu_show_pixels, align 4
  %tobool114 = icmp ne i32 %108, 0
  br i1 %tobool114, label %land.lhs.true.115, label %if.end.126

land.lhs.true.115:                                ; preds = %cond.end.110
  %109 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %show_refval116 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %109, i32 0, i32 7
  %110 = load i32, i32* %show_refval116, align 4
  %tobool117 = icmp ne i32 %110, 0
  br i1 %tobool117, label %if.end.126, label %land.lhs.true.118

land.lhs.true.118:                                ; preds = %land.lhs.true.115
  %111 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %unit119 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %111, i32 0, i32 4
  %112 = load i32, i32* %unit119, align 4
  %cmp120 = icmp eq i32 %112, 0
  br i1 %cmp120, label %if.then.121, label %if.end.126

if.then.121:                                      ; preds = %land.lhs.true.118
  %113 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %value_spinbutton122 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %113, i32 0, i32 5
  %114 = load %struct._GtkWidget*, %struct._GtkWidget** %value_spinbutton122, align 8
  %115 = bitcast %struct._GtkWidget* %114 to %struct._GTypeInstance*
  %call123 = call i64 @gtk_spin_button_get_type() #6
  %call124 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %115, i64 %call123)
  %116 = bitcast %struct._GTypeInstance* %call124 to %struct._GtkSpinButton*
  %117 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %refval_digits125 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %117, i32 0, i32 14
  %118 = load i32, i32* %refval_digits125, align 4
  call void @gtk_spin_button_set_digits(%struct._GtkSpinButton* %116, i32 %118)
  br label %if.end.126

if.end.126:                                       ; preds = %if.else.9, %if.else.36, %if.else.66, %if.then.121, %land.lhs.true.118, %land.lhs.true.115, %cond.end.110
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare %struct._GSList* @g_slist_prepend(%struct._GSList*, i8*) #1

declare %struct._GtkAdjustment* @gtk_spin_button_get_adjustment(%struct._GtkSpinButton*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_size_entry_attach_label(%struct._GimpSizeEntry* %gse, i8* %text, i32 %row, i32 %column, float %alignment) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %gse.addr = alloca %struct._GimpSizeEntry*, align 8
  %text.addr = alloca i8*, align 8
  %row.addr = alloca i32, align 4
  %column.addr = alloca i32, align 4
  %alignment.addr = alloca float, align 4
  %label = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %children = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %child = alloca %struct._GtkWidget*, align 8
  %left_attach = alloca i32, align 4
  %top_attach = alloca i32, align 4
  store %struct._GimpSizeEntry* %gse, %struct._GimpSizeEntry** %gse.addr, align 8
  store i8* %text, i8** %text.addr, align 8
  store i32 %row, i32* %row.addr, align 4
  store i32 %column, i32* %column.addr, align 4
  store float %alignment, float* %alignment.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %1 = bitcast %struct._GimpSizeEntry* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_size_entry_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_size_entry_attach_label, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %text.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_size_entry_attach_label, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load i8*, i8** %text.addr, align 8
  %call17 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %14)
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %label, align 8
  %15 = load i32, i32* %column.addr, align 4
  %cmp18 = icmp eq i32 %15, 0
  br i1 %cmp18, label %if.then.19, label %if.end.39

if.then.19:                                       ; preds = %do.end.16
  %16 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %17 = bitcast %struct._GimpSizeEntry* %16 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_container_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call22)
  %18 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkContainer*
  %call24 = call %struct._GList* @gtk_container_get_children(%struct._GtkContainer* %18)
  store %struct._GList* %call24, %struct._GList** %children, align 8
  %19 = load %struct._GList*, %struct._GList** %children, align 8
  store %struct._GList* %19, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.then.19
  %20 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool25 = icmp ne %struct._GList* %20, null
  br i1 %tobool25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %21, i32 0, i32 0
  %22 = load i8*, i8** %data, align 8
  %23 = bitcast i8* %22 to %struct._GtkWidget*
  store %struct._GtkWidget* %23, %struct._GtkWidget** %child, align 8
  %24 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %25 = bitcast %struct._GimpSizeEntry* %24 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_container_get_type() #6
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call29)
  %26 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkContainer*
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %child, align 8
  call void (%struct._GtkContainer*, %struct._GtkWidget*, i8*, ...) @gtk_container_child_get(%struct._GtkContainer* %26, %struct._GtkWidget* %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i32* %left_attach, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i32* %top_attach, i8* null)
  %28 = load i32, i32* %left_attach, align 4
  %cmp31 = icmp eq i32 %28, 1
  br i1 %cmp31, label %land.lhs.true.32, label %if.end.37

land.lhs.true.32:                                 ; preds = %for.body
  %29 = load i32, i32* %top_attach, align 4
  %30 = load i32, i32* %row.addr, align 4
  %cmp33 = icmp eq i32 %29, %30
  br i1 %cmp33, label %if.then.34, label %if.end.37

if.then.34:                                       ; preds = %land.lhs.true.32
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_label_get_type() #6
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call35)
  %33 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkLabel*
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %child, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %33, %struct._GtkWidget* %34)
  br label %for.end

if.end.37:                                        ; preds = %land.lhs.true.32, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.37
  %35 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool38 = icmp ne %struct._GList* %35, null
  br i1 %tobool38, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %36 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %36, i32 0, i32 1
  %37 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %37, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.34, %for.cond
  %38 = load %struct._GList*, %struct._GList** %children, align 8
  call void @g_list_free(%struct._GList* %38)
  br label %if.end.39

if.end.39:                                        ; preds = %for.end, %do.end.16
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_misc_get_type() #6
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call40)
  %41 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkMisc*
  %42 = load float, float* %alignment.addr, align 4
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %41, float %42, float 5.000000e-01)
  %43 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %44 = bitcast %struct._GimpSizeEntry* %43 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_table_get_type() #6
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call42)
  %45 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkTable*
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %47 = load i32, i32* %column.addr, align 4
  %48 = load i32, i32* %column.addr, align 4
  %add = add nsw i32 %48, 1
  %49 = load i32, i32* %row.addr, align 4
  %50 = load i32, i32* %row.addr, align 4
  %add44 = add nsw i32 %50, 1
  call void @gtk_table_attach(%struct._GtkTable* %45, %struct._GtkWidget* %46, i32 %47, i32 %add, i32 %49, i32 %add44, i32 6, i32 6, i32 0, i32 0)
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %51)
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  store %struct._GtkWidget* %52, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.39, %if.else.14, %if.else.9
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %53
}

declare %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8*) #1

declare %struct._GList* @gtk_container_get_children(%struct._GtkContainer*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare void @gtk_container_child_get(%struct._GtkContainer*, %struct._GtkWidget*, i8*, ...) #1

declare void @gtk_label_set_mnemonic_widget(%struct._GtkLabel*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #2

declare void @g_list_free(%struct._GList*) #1

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #2

; Function Attrs: nounwind uwtable
define void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry* %gse, i32 %field, double %resolution, i32 %keep_size) #3 {
entry:
  %gse.addr = alloca %struct._GimpSizeEntry*, align 8
  %field.addr = alloca i32, align 4
  %resolution.addr = alloca double, align 8
  %keep_size.addr = alloca i32, align 4
  %gsef = alloca %struct._GimpSizeEntryField*, align 8
  %val = alloca float, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpSizeEntry* %gse, %struct._GimpSizeEntry** %gse.addr, align 8
  store i32 %field, i32* %field.addr, align 4
  store double %resolution, double* %resolution.addr, align 8
  store i32 %keep_size, i32* %keep_size.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %1 = bitcast %struct._GimpSizeEntry* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_size_entry_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_size_entry_set_resolution, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.30

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32, i32* %field.addr, align 4
  %cmp12 = icmp sge i32 %13, 0
  br i1 %cmp12, label %land.lhs.true.13, label %if.else.16

land.lhs.true.13:                                 ; preds = %do.body.11
  %14 = load i32, i32* %field.addr, align 4
  %15 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %number_of_fields = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %15, i32 0, i32 2
  %16 = load i32, i32* %number_of_fields, align 4
  %cmp14 = icmp slt i32 %14, %16
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %land.lhs.true.13
  br label %if.end.17

if.else.16:                                       ; preds = %land.lhs.true.13, %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_size_entry_set_resolution, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end.30

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %17 = load double, double* %resolution.addr, align 8
  %cmp19 = fcmp ogt double %17, 6.553600e+04
  br i1 %cmp19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end.18
  br label %cond.end.23

cond.false:                                       ; preds = %do.end.18
  %18 = load double, double* %resolution.addr, align 8
  %cmp20 = fcmp olt double %18, 5.000000e-03
  br i1 %cmp20, label %cond.true.21, label %cond.false.22

cond.true.21:                                     ; preds = %cond.false
  br label %cond.end

cond.false.22:                                    ; preds = %cond.false
  %19 = load double, double* %resolution.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.22, %cond.true.21
  %cond = phi double [ 5.000000e-03, %cond.true.21 ], [ %19, %cond.false.22 ]
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.end, %cond.true
  %cond24 = phi double [ 6.553600e+04, %cond.true ], [ %cond, %cond.end ]
  store double %cond24, double* %resolution.addr, align 8
  %20 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %fields = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %20, i32 0, i32 1
  %21 = load %struct._GSList*, %struct._GSList** %fields, align 8
  %22 = load i32, i32* %field.addr, align 4
  %call25 = call i8* @g_slist_nth_data(%struct._GSList* %21, i32 %22)
  %23 = bitcast i8* %call25 to %struct._GimpSizeEntryField*
  store %struct._GimpSizeEntryField* %23, %struct._GimpSizeEntryField** %gsef, align 8
  %24 = load double, double* %resolution.addr, align 8
  %25 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %resolution26 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %25, i32 0, i32 1
  store double %24, double* %resolution26, align 8
  %26 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %value = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %26, i32 0, i32 6
  %27 = load double, double* %value, align 8
  %conv = fptrunc double %27 to float
  store float %conv, float* %val, align 4
  %28 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %stop_recursion = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %28, i32 0, i32 15
  store i32 0, i32* %stop_recursion, align 4
  %29 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %30 = load i32, i32* %field.addr, align 4
  %31 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %min_refval = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %31, i32 0, i32 12
  %32 = load double, double* %min_refval, align 8
  %33 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %max_refval = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %33, i32 0, i32 13
  %34 = load double, double* %max_refval, align 8
  call void @gimp_size_entry_set_refval_boundaries(%struct._GimpSizeEntry* %29, i32 %30, double %32, double %34)
  %35 = load i32, i32* %keep_size.addr, align 4
  %tobool27 = icmp ne i32 %35, 0
  br i1 %tobool27, label %if.end.30, label %if.then.28

if.then.28:                                       ; preds = %cond.end.23
  %36 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %37 = load i32, i32* %field.addr, align 4
  %38 = load float, float* %val, align 4
  %conv29 = fpext float %38 to double
  call void @gimp_size_entry_set_value(%struct._GimpSizeEntry* %36, i32 %37, double %conv29)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.9, %if.else.16, %if.then.28, %cond.end.23
  ret void
}

declare i8* @g_slist_nth_data(%struct._GSList*, i32) #1

; Function Attrs: nounwind uwtable
define void @gimp_size_entry_set_refval_boundaries(%struct._GimpSizeEntry* %gse, i32 %field, double %lower, double %upper) #3 {
entry:
  %gse.addr = alloca %struct._GimpSizeEntry*, align 8
  %field.addr = alloca i32, align 4
  %lower.addr = alloca double, align 8
  %upper.addr = alloca double, align 8
  %gsef = alloca %struct._GimpSizeEntryField*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpSizeEntry* %gse, %struct._GimpSizeEntry** %gse.addr, align 8
  store i32 %field, i32* %field.addr, align 4
  store double %lower, double* %lower.addr, align 8
  store double %upper, double* %upper.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %1 = bitcast %struct._GimpSizeEntry* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_size_entry_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_size_entry_set_refval_boundaries, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.91

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32, i32* %field.addr, align 4
  %cmp12 = icmp sge i32 %13, 0
  br i1 %cmp12, label %land.lhs.true.13, label %if.else.16

land.lhs.true.13:                                 ; preds = %do.body.11
  %14 = load i32, i32* %field.addr, align 4
  %15 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %number_of_fields = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %15, i32 0, i32 2
  %16 = load i32, i32* %number_of_fields, align 4
  %cmp14 = icmp slt i32 %14, %16
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %land.lhs.true.13
  br label %if.end.17

if.else.16:                                       ; preds = %land.lhs.true.13, %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_size_entry_set_refval_boundaries, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end.91

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  br label %do.body.19

do.body.19:                                       ; preds = %do.end.18
  %17 = load double, double* %lower.addr, align 8
  %18 = load double, double* %upper.addr, align 8
  %cmp20 = fcmp ole double %17, %18
  br i1 %cmp20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %do.body.19
  br label %if.end.23

if.else.22:                                       ; preds = %do.body.19
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_size_entry_set_refval_boundaries, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end.91

if.end.23:                                        ; preds = %if.then.21
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  %19 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %fields = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %19, i32 0, i32 1
  %20 = load %struct._GSList*, %struct._GSList** %fields, align 8
  %21 = load i32, i32* %field.addr, align 4
  %call25 = call i8* @g_slist_nth_data(%struct._GSList* %20, i32 %21)
  %22 = bitcast i8* %call25 to %struct._GimpSizeEntryField*
  store %struct._GimpSizeEntryField* %22, %struct._GimpSizeEntryField** %gsef, align 8
  %23 = load double, double* %lower.addr, align 8
  %24 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %min_refval = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %24, i32 0, i32 12
  store double %23, double* %min_refval, align 8
  %25 = load double, double* %upper.addr, align 8
  %26 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %max_refval = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %26, i32 0, i32 13
  store double %25, double* %max_refval, align 8
  %27 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %show_refval = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %27, i32 0, i32 7
  %28 = load i32, i32* %show_refval, align 4
  %tobool26 = icmp ne i32 %28, 0
  br i1 %tobool26, label %if.then.27, label %if.end.33

if.then.27:                                       ; preds = %do.end.24
  %29 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %refval_adjustment = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %29, i32 0, i32 9
  %30 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %refval_adjustment, align 8
  %31 = bitcast %struct._GtkAdjustment* %30 to %struct._GTypeInstance*
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 80)
  %32 = bitcast %struct._GTypeInstance* %call28 to %struct._GObject*
  call void @g_object_freeze_notify(%struct._GObject* %32)
  %33 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %refval_adjustment29 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %33, i32 0, i32 9
  %34 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %refval_adjustment29, align 8
  %35 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %min_refval30 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %35, i32 0, i32 12
  %36 = load double, double* %min_refval30, align 8
  call void @gtk_adjustment_set_lower(%struct._GtkAdjustment* %34, double %36)
  %37 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %refval_adjustment31 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %37, i32 0, i32 9
  %38 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %refval_adjustment31, align 8
  %39 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %max_refval32 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %39, i32 0, i32 13
  %40 = load double, double* %max_refval32, align 8
  call void @gtk_adjustment_set_upper(%struct._GtkAdjustment* %38, double %40)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.27, %do.end.24
  %41 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %stop_recursion = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %41, i32 0, i32 15
  %42 = load i32, i32* %stop_recursion, align 4
  %tobool34 = icmp ne i32 %42, 0
  br i1 %tobool34, label %if.then.35, label %if.end.42

if.then.35:                                       ; preds = %if.end.33
  %43 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %show_refval36 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %43, i32 0, i32 7
  %44 = load i32, i32* %show_refval36, align 4
  %tobool37 = icmp ne i32 %44, 0
  br i1 %tobool37, label %if.then.38, label %if.end.41

if.then.38:                                       ; preds = %if.then.35
  %45 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %refval_adjustment39 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %45, i32 0, i32 9
  %46 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %refval_adjustment39, align 8
  %47 = bitcast %struct._GtkAdjustment* %46 to %struct._GTypeInstance*
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 80)
  %48 = bitcast %struct._GTypeInstance* %call40 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %48)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.38, %if.then.35
  br label %if.end.91

if.end.42:                                        ; preds = %if.end.33
  %49 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %stop_recursion43 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %49, i32 0, i32 15
  %50 = load i32, i32* %stop_recursion43, align 4
  %inc = add nsw i32 %50, 1
  store i32 %inc, i32* %stop_recursion43, align 4
  %51 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %gse44 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %51, i32 0, i32 0
  %52 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse44, align 8
  %update_policy = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %52, i32 0, i32 8
  %53 = load i32, i32* %update_policy, align 4
  switch i32 %53, label %sw.default.83 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.45
    i32 2, label %sw.bb.74
  ]

sw.bb:                                            ; preds = %if.end.42
  br label %sw.epilog.84

sw.bb.45:                                         ; preds = %if.end.42
  %54 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %unit = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %54, i32 0, i32 4
  %55 = load i32, i32* %unit, align 4
  switch i32 %55, label %sw.default [
    i32 0, label %sw.bb.46
    i32 65536, label %sw.bb.49
  ]

sw.bb.46:                                         ; preds = %sw.bb.45
  %56 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %57 = load i32, i32* %field.addr, align 4
  %58 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %min_refval47 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %58, i32 0, i32 12
  %59 = load double, double* %min_refval47, align 8
  %60 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %max_refval48 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %60, i32 0, i32 13
  %61 = load double, double* %max_refval48, align 8
  call void @gimp_size_entry_set_value_boundaries(%struct._GimpSizeEntry* %56, i32 %57, double %59, double %61)
  br label %sw.epilog

sw.bb.49:                                         ; preds = %sw.bb.45
  %62 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %63 = load i32, i32* %field.addr, align 4
  %64 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %min_refval50 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %64, i32 0, i32 12
  %65 = load double, double* %min_refval50, align 8
  %66 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %lower51 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %66, i32 0, i32 2
  %67 = load double, double* %lower51, align 8
  %sub = fsub double %65, %67
  %mul = fmul double 1.000000e+02, %sub
  %68 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %upper52 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %68, i32 0, i32 3
  %69 = load double, double* %upper52, align 8
  %70 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %lower53 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %70, i32 0, i32 2
  %71 = load double, double* %lower53, align 8
  %sub54 = fsub double %69, %71
  %div = fdiv double %mul, %sub54
  %72 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %max_refval55 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %72, i32 0, i32 13
  %73 = load double, double* %max_refval55, align 8
  %74 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %lower56 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %74, i32 0, i32 2
  %75 = load double, double* %lower56, align 8
  %sub57 = fsub double %73, %75
  %mul58 = fmul double 1.000000e+02, %sub57
  %76 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %upper59 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %76, i32 0, i32 3
  %77 = load double, double* %upper59, align 8
  %78 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %lower60 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %78, i32 0, i32 2
  %79 = load double, double* %lower60, align 8
  %sub61 = fsub double %77, %79
  %div62 = fdiv double %mul58, %sub61
  call void @gimp_size_entry_set_value_boundaries(%struct._GimpSizeEntry* %62, i32 %63, double %div, double %div62)
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb.45
  %80 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %81 = load i32, i32* %field.addr, align 4
  %82 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %min_refval63 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %82, i32 0, i32 12
  %83 = load double, double* %min_refval63, align 8
  %84 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %unit64 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %84, i32 0, i32 4
  %85 = load i32, i32* %unit64, align 4
  %call65 = call double @gimp_unit_get_factor(i32 %85)
  %mul66 = fmul double %83, %call65
  %86 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %resolution = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %86, i32 0, i32 1
  %87 = load double, double* %resolution, align 8
  %div67 = fdiv double %mul66, %87
  %88 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %max_refval68 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %88, i32 0, i32 13
  %89 = load double, double* %max_refval68, align 8
  %90 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %unit69 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %90, i32 0, i32 4
  %91 = load i32, i32* %unit69, align 4
  %call70 = call double @gimp_unit_get_factor(i32 %91)
  %mul71 = fmul double %89, %call70
  %92 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %resolution72 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %92, i32 0, i32 1
  %93 = load double, double* %resolution72, align 8
  %div73 = fdiv double %mul71, %93
  call void @gimp_size_entry_set_value_boundaries(%struct._GimpSizeEntry* %80, i32 %81, double %div67, double %div73)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.49, %sw.bb.46
  br label %sw.epilog.84

sw.bb.74:                                         ; preds = %if.end.42
  %94 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %95 = load i32, i32* %field.addr, align 4
  %96 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %min_refval75 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %96, i32 0, i32 12
  %97 = load double, double* %min_refval75, align 8
  %98 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %unit76 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %98, i32 0, i32 4
  %99 = load i32, i32* %unit76, align 4
  %call77 = call double @gimp_unit_get_factor(i32 %99)
  %div78 = fdiv double %97, %call77
  %100 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %max_refval79 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %100, i32 0, i32 13
  %101 = load double, double* %max_refval79, align 8
  %102 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %unit80 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %102, i32 0, i32 4
  %103 = load i32, i32* %unit80, align 4
  %call81 = call double @gimp_unit_get_factor(i32 %103)
  %div82 = fdiv double %101, %call81
  call void @gimp_size_entry_set_value_boundaries(%struct._GimpSizeEntry* %94, i32 %95, double %div78, double %div82)
  br label %sw.epilog.84

sw.default.83:                                    ; preds = %if.end.42
  br label %sw.epilog.84

sw.epilog.84:                                     ; preds = %sw.default.83, %sw.bb.74, %sw.epilog, %sw.bb
  %104 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %stop_recursion85 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %104, i32 0, i32 15
  %105 = load i32, i32* %stop_recursion85, align 4
  %dec = add nsw i32 %105, -1
  store i32 %dec, i32* %stop_recursion85, align 4
  %106 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %107 = load i32, i32* %field.addr, align 4
  %108 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %refval = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %108, i32 0, i32 11
  %109 = load double, double* %refval, align 8
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %106, i32 %107, double %109)
  %110 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %show_refval86 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %110, i32 0, i32 7
  %111 = load i32, i32* %show_refval86, align 4
  %tobool87 = icmp ne i32 %111, 0
  br i1 %tobool87, label %if.then.88, label %if.end.91

if.then.88:                                       ; preds = %sw.epilog.84
  %112 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %refval_adjustment89 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %112, i32 0, i32 9
  %113 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %refval_adjustment89, align 8
  %114 = bitcast %struct._GtkAdjustment* %113 to %struct._GTypeInstance*
  %call90 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %114, i64 80)
  %115 = bitcast %struct._GTypeInstance* %call90 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %115)
  br label %if.end.91

if.end.91:                                        ; preds = %if.else.9, %if.else.16, %if.else.22, %if.end.41, %if.then.88, %sw.epilog.84
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_size_entry_set_value(%struct._GimpSizeEntry* %gse, i32 %field, double %value) #3 {
entry:
  %gse.addr = alloca %struct._GimpSizeEntry*, align 8
  %field.addr = alloca i32, align 4
  %value.addr = alloca double, align 8
  %gsef = alloca %struct._GimpSizeEntryField*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpSizeEntry* %gse, %struct._GimpSizeEntry** %gse.addr, align 8
  store i32 %field, i32* %field.addr, align 4
  store double %value, double* %value.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %1 = bitcast %struct._GimpSizeEntry* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_size_entry_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_size_entry_set_value, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32, i32* %field.addr, align 4
  %cmp12 = icmp sge i32 %13, 0
  br i1 %cmp12, label %land.lhs.true.13, label %if.else.16

land.lhs.true.13:                                 ; preds = %do.body.11
  %14 = load i32, i32* %field.addr, align 4
  %15 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %number_of_fields = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %15, i32 0, i32 2
  %16 = load i32, i32* %number_of_fields, align 4
  %cmp14 = icmp slt i32 %14, %16
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %land.lhs.true.13
  br label %if.end.17

if.else.16:                                       ; preds = %land.lhs.true.13, %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_size_entry_set_value, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.16, i32 0, i32 0))
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %17 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %fields = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %17, i32 0, i32 1
  %18 = load %struct._GSList*, %struct._GSList** %fields, align 8
  %19 = load i32, i32* %field.addr, align 4
  %call19 = call i8* @g_slist_nth_data(%struct._GSList* %18, i32 %19)
  %20 = bitcast i8* %call19 to %struct._GimpSizeEntryField*
  store %struct._GimpSizeEntryField* %20, %struct._GimpSizeEntryField** %gsef, align 8
  %21 = load double, double* %value.addr, align 8
  %22 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %max_value = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %22, i32 0, i32 8
  %23 = load double, double* %max_value, align 8
  %cmp20 = fcmp ogt double %21, %23
  br i1 %cmp20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end.18
  %24 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %max_value21 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %24, i32 0, i32 8
  %25 = load double, double* %max_value21, align 8
  br label %cond.end.26

cond.false:                                       ; preds = %do.end.18
  %26 = load double, double* %value.addr, align 8
  %27 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %min_value = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %27, i32 0, i32 7
  %28 = load double, double* %min_value, align 8
  %cmp22 = fcmp olt double %26, %28
  br i1 %cmp22, label %cond.true.23, label %cond.false.25

cond.true.23:                                     ; preds = %cond.false
  %29 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %min_value24 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %29, i32 0, i32 7
  %30 = load double, double* %min_value24, align 8
  br label %cond.end

cond.false.25:                                    ; preds = %cond.false
  %31 = load double, double* %value.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.25, %cond.true.23
  %cond = phi double [ %30, %cond.true.23 ], [ %31, %cond.false.25 ]
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.end, %cond.true
  %cond27 = phi double [ %25, %cond.true ], [ %cond, %cond.end ]
  store double %cond27, double* %value.addr, align 8
  %32 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %value_adjustment = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %32, i32 0, i32 4
  %33 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %value_adjustment, align 8
  %34 = load double, double* %value.addr, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %33, double %34)
  %35 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %36 = load double, double* %value.addr, align 8
  call void @gimp_size_entry_update_value(%struct._GimpSizeEntryField* %35, double %36)
  br label %return

return:                                           ; preds = %cond.end.26, %if.else.16, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_size_entry_set_size(%struct._GimpSizeEntry* %gse, i32 %field, double %lower, double %upper) #3 {
entry:
  %gse.addr = alloca %struct._GimpSizeEntry*, align 8
  %field.addr = alloca i32, align 4
  %lower.addr = alloca double, align 8
  %upper.addr = alloca double, align 8
  %gsef = alloca %struct._GimpSizeEntryField*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpSizeEntry* %gse, %struct._GimpSizeEntry** %gse.addr, align 8
  store i32 %field, i32* %field.addr, align 4
  store double %lower, double* %lower.addr, align 8
  store double %upper, double* %upper.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %1 = bitcast %struct._GimpSizeEntry* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_size_entry_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_size_entry_set_size, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32, i32* %field.addr, align 4
  %cmp12 = icmp sge i32 %13, 0
  br i1 %cmp12, label %land.lhs.true.13, label %if.else.16

land.lhs.true.13:                                 ; preds = %do.body.11
  %14 = load i32, i32* %field.addr, align 4
  %15 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %number_of_fields = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %15, i32 0, i32 2
  %16 = load i32, i32* %number_of_fields, align 4
  %cmp14 = icmp slt i32 %14, %16
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %land.lhs.true.13
  br label %if.end.17

if.else.16:                                       ; preds = %land.lhs.true.13, %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_size_entry_set_size, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.16, i32 0, i32 0))
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  br label %do.body.19

do.body.19:                                       ; preds = %do.end.18
  %17 = load double, double* %lower.addr, align 8
  %18 = load double, double* %upper.addr, align 8
  %cmp20 = fcmp ole double %17, %18
  br i1 %cmp20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %do.body.19
  br label %if.end.23

if.else.22:                                       ; preds = %do.body.19
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_size_entry_set_size, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0))
  br label %return

if.end.23:                                        ; preds = %if.then.21
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  %19 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %fields = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %19, i32 0, i32 1
  %20 = load %struct._GSList*, %struct._GSList** %fields, align 8
  %21 = load i32, i32* %field.addr, align 4
  %call25 = call i8* @g_slist_nth_data(%struct._GSList* %20, i32 %21)
  %22 = bitcast i8* %call25 to %struct._GimpSizeEntryField*
  store %struct._GimpSizeEntryField* %22, %struct._GimpSizeEntryField** %gsef, align 8
  %23 = load double, double* %lower.addr, align 8
  %24 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %lower26 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %24, i32 0, i32 2
  store double %23, double* %lower26, align 8
  %25 = load double, double* %upper.addr, align 8
  %26 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %upper27 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %26, i32 0, i32 3
  store double %25, double* %upper27, align 8
  %27 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %28 = load i32, i32* %field.addr, align 4
  %29 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %refval = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %29, i32 0, i32 11
  %30 = load double, double* %refval, align 8
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %27, i32 %28, double %30)
  br label %return

return:                                           ; preds = %do.end.24, %if.else.22, %if.else.16, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %gse, i32 %field, double %refval) #3 {
entry:
  %gse.addr = alloca %struct._GimpSizeEntry*, align 8
  %field.addr = alloca i32, align 4
  %refval.addr = alloca double, align 8
  %gsef = alloca %struct._GimpSizeEntryField*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpSizeEntry* %gse, %struct._GimpSizeEntry** %gse.addr, align 8
  store i32 %field, i32* %field.addr, align 4
  store double %refval, double* %refval.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %1 = bitcast %struct._GimpSizeEntry* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_size_entry_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_size_entry_set_refval, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32, i32* %field.addr, align 4
  %cmp12 = icmp sge i32 %13, 0
  br i1 %cmp12, label %land.lhs.true.13, label %if.else.16

land.lhs.true.13:                                 ; preds = %do.body.11
  %14 = load i32, i32* %field.addr, align 4
  %15 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %number_of_fields = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %15, i32 0, i32 2
  %16 = load i32, i32* %number_of_fields, align 4
  %cmp14 = icmp slt i32 %14, %16
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %land.lhs.true.13
  br label %if.end.17

if.else.16:                                       ; preds = %land.lhs.true.13, %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_size_entry_set_refval, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.16, i32 0, i32 0))
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %17 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %fields = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %17, i32 0, i32 1
  %18 = load %struct._GSList*, %struct._GSList** %fields, align 8
  %19 = load i32, i32* %field.addr, align 4
  %call19 = call i8* @g_slist_nth_data(%struct._GSList* %18, i32 %19)
  %20 = bitcast i8* %call19 to %struct._GimpSizeEntryField*
  store %struct._GimpSizeEntryField* %20, %struct._GimpSizeEntryField** %gsef, align 8
  %21 = load double, double* %refval.addr, align 8
  %22 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %max_refval = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %22, i32 0, i32 13
  %23 = load double, double* %max_refval, align 8
  %cmp20 = fcmp ogt double %21, %23
  br i1 %cmp20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end.18
  %24 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %max_refval21 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %24, i32 0, i32 13
  %25 = load double, double* %max_refval21, align 8
  br label %cond.end.26

cond.false:                                       ; preds = %do.end.18
  %26 = load double, double* %refval.addr, align 8
  %27 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %min_refval = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %27, i32 0, i32 12
  %28 = load double, double* %min_refval, align 8
  %cmp22 = fcmp olt double %26, %28
  br i1 %cmp22, label %cond.true.23, label %cond.false.25

cond.true.23:                                     ; preds = %cond.false
  %29 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %min_refval24 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %29, i32 0, i32 12
  %30 = load double, double* %min_refval24, align 8
  br label %cond.end

cond.false.25:                                    ; preds = %cond.false
  %31 = load double, double* %refval.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.25, %cond.true.23
  %cond = phi double [ %30, %cond.true.23 ], [ %31, %cond.false.25 ]
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.end, %cond.true
  %cond27 = phi double [ %25, %cond.true ], [ %cond, %cond.end ]
  store double %cond27, double* %refval.addr, align 8
  %32 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %show_refval = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %32, i32 0, i32 7
  %33 = load i32, i32* %show_refval, align 4
  %tobool28 = icmp ne i32 %33, 0
  br i1 %tobool28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %cond.end.26
  %34 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %refval_adjustment = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %34, i32 0, i32 9
  %35 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %refval_adjustment, align 8
  %36 = load double, double* %refval.addr, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %35, double %36)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %cond.end.26
  %37 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %38 = load double, double* %refval.addr, align 8
  call void @gimp_size_entry_update_refval(%struct._GimpSizeEntryField* %37, double %38)
  br label %return

return:                                           ; preds = %if.end.30, %if.else.16, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_size_entry_set_value_boundaries(%struct._GimpSizeEntry* %gse, i32 %field, double %lower, double %upper) #3 {
entry:
  %gse.addr = alloca %struct._GimpSizeEntry*, align 8
  %field.addr = alloca i32, align 4
  %lower.addr = alloca double, align 8
  %upper.addr = alloca double, align 8
  %gsef = alloca %struct._GimpSizeEntryField*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpSizeEntry* %gse, %struct._GimpSizeEntry** %gse.addr, align 8
  store i32 %field, i32* %field.addr, align 4
  store double %lower, double* %lower.addr, align 8
  store double %upper, double* %upper.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %1 = bitcast %struct._GimpSizeEntry* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_size_entry_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_size_entry_set_value_boundaries, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32, i32* %field.addr, align 4
  %cmp12 = icmp sge i32 %13, 0
  br i1 %cmp12, label %land.lhs.true.13, label %if.else.16

land.lhs.true.13:                                 ; preds = %do.body.11
  %14 = load i32, i32* %field.addr, align 4
  %15 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %number_of_fields = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %15, i32 0, i32 2
  %16 = load i32, i32* %number_of_fields, align 4
  %cmp14 = icmp slt i32 %14, %16
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %land.lhs.true.13
  br label %if.end.17

if.else.16:                                       ; preds = %land.lhs.true.13, %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_size_entry_set_value_boundaries, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.16, i32 0, i32 0))
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  br label %do.body.19

do.body.19:                                       ; preds = %do.end.18
  %17 = load double, double* %lower.addr, align 8
  %18 = load double, double* %upper.addr, align 8
  %cmp20 = fcmp ole double %17, %18
  br i1 %cmp20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %do.body.19
  br label %if.end.23

if.else.22:                                       ; preds = %do.body.19
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_size_entry_set_value_boundaries, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0))
  br label %return

if.end.23:                                        ; preds = %if.then.21
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  %19 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %fields = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %19, i32 0, i32 1
  %20 = load %struct._GSList*, %struct._GSList** %fields, align 8
  %21 = load i32, i32* %field.addr, align 4
  %call25 = call i8* @g_slist_nth_data(%struct._GSList* %20, i32 %21)
  %22 = bitcast i8* %call25 to %struct._GimpSizeEntryField*
  store %struct._GimpSizeEntryField* %22, %struct._GimpSizeEntryField** %gsef, align 8
  %23 = load double, double* %lower.addr, align 8
  %24 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %min_value = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %24, i32 0, i32 7
  store double %23, double* %min_value, align 8
  %25 = load double, double* %upper.addr, align 8
  %26 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %max_value = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %26, i32 0, i32 8
  store double %25, double* %max_value, align 8
  %27 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %value_adjustment = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %27, i32 0, i32 4
  %28 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %value_adjustment, align 8
  %29 = bitcast %struct._GtkAdjustment* %28 to %struct._GTypeInstance*
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 80)
  %30 = bitcast %struct._GTypeInstance* %call26 to %struct._GObject*
  call void @g_object_freeze_notify(%struct._GObject* %30)
  %31 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %value_adjustment27 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %31, i32 0, i32 4
  %32 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %value_adjustment27, align 8
  %33 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %min_value28 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %33, i32 0, i32 7
  %34 = load double, double* %min_value28, align 8
  call void @gtk_adjustment_set_lower(%struct._GtkAdjustment* %32, double %34)
  %35 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %value_adjustment29 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %35, i32 0, i32 4
  %36 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %value_adjustment29, align 8
  %37 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %max_value30 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %37, i32 0, i32 8
  %38 = load double, double* %max_value30, align 8
  call void @gtk_adjustment_set_upper(%struct._GtkAdjustment* %36, double %38)
  %39 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %stop_recursion = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %39, i32 0, i32 15
  %40 = load i32, i32* %stop_recursion, align 4
  %tobool31 = icmp ne i32 %40, 0
  br i1 %tobool31, label %if.then.32, label %if.end.35

if.then.32:                                       ; preds = %do.end.24
  %41 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %value_adjustment33 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %41, i32 0, i32 4
  %42 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %value_adjustment33, align 8
  %43 = bitcast %struct._GtkAdjustment* %42 to %struct._GTypeInstance*
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 80)
  %44 = bitcast %struct._GTypeInstance* %call34 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %44)
  br label %return

if.end.35:                                        ; preds = %do.end.24
  %45 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %stop_recursion36 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %45, i32 0, i32 15
  %46 = load i32, i32* %stop_recursion36, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %stop_recursion36, align 4
  %47 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %gse37 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %47, i32 0, i32 0
  %48 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse37, align 8
  %update_policy = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %48, i32 0, i32 8
  %49 = load i32, i32* %update_policy, align 4
  switch i32 %49, label %sw.default.75 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.38
    i32 2, label %sw.bb.66
  ]

sw.bb:                                            ; preds = %if.end.35
  br label %sw.epilog.76

sw.bb.38:                                         ; preds = %if.end.35
  %50 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %unit = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %50, i32 0, i32 4
  %51 = load i32, i32* %unit, align 4
  switch i32 %51, label %sw.default [
    i32 0, label %sw.bb.39
    i32 65536, label %sw.bb.42
  ]

sw.bb.39:                                         ; preds = %sw.bb.38
  %52 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %53 = load i32, i32* %field.addr, align 4
  %54 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %min_value40 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %54, i32 0, i32 7
  %55 = load double, double* %min_value40, align 8
  %56 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %max_value41 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %56, i32 0, i32 8
  %57 = load double, double* %max_value41, align 8
  call void @gimp_size_entry_set_refval_boundaries(%struct._GimpSizeEntry* %52, i32 %53, double %55, double %57)
  br label %sw.epilog

sw.bb.42:                                         ; preds = %sw.bb.38
  %58 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %59 = load i32, i32* %field.addr, align 4
  %60 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %lower43 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %60, i32 0, i32 2
  %61 = load double, double* %lower43, align 8
  %62 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %upper44 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %62, i32 0, i32 3
  %63 = load double, double* %upper44, align 8
  %64 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %lower45 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %64, i32 0, i32 2
  %65 = load double, double* %lower45, align 8
  %sub = fsub double %63, %65
  %66 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %min_value46 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %66, i32 0, i32 7
  %67 = load double, double* %min_value46, align 8
  %mul = fmul double %sub, %67
  %div = fdiv double %mul, 1.000000e+02
  %add = fadd double %61, %div
  %68 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %lower47 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %68, i32 0, i32 2
  %69 = load double, double* %lower47, align 8
  %70 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %upper48 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %70, i32 0, i32 3
  %71 = load double, double* %upper48, align 8
  %72 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %lower49 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %72, i32 0, i32 2
  %73 = load double, double* %lower49, align 8
  %sub50 = fsub double %71, %73
  %74 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %max_value51 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %74, i32 0, i32 8
  %75 = load double, double* %max_value51, align 8
  %mul52 = fmul double %sub50, %75
  %div53 = fdiv double %mul52, 1.000000e+02
  %add54 = fadd double %69, %div53
  call void @gimp_size_entry_set_refval_boundaries(%struct._GimpSizeEntry* %58, i32 %59, double %add, double %add54)
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb.38
  %76 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %77 = load i32, i32* %field.addr, align 4
  %78 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %min_value55 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %78, i32 0, i32 7
  %79 = load double, double* %min_value55, align 8
  %80 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %resolution = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %80, i32 0, i32 1
  %81 = load double, double* %resolution, align 8
  %mul56 = fmul double %79, %81
  %82 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %unit57 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %82, i32 0, i32 4
  %83 = load i32, i32* %unit57, align 4
  %call58 = call double @gimp_unit_get_factor(i32 %83)
  %div59 = fdiv double %mul56, %call58
  %84 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %max_value60 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %84, i32 0, i32 8
  %85 = load double, double* %max_value60, align 8
  %86 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %resolution61 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %86, i32 0, i32 1
  %87 = load double, double* %resolution61, align 8
  %mul62 = fmul double %85, %87
  %88 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %unit63 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %88, i32 0, i32 4
  %89 = load i32, i32* %unit63, align 4
  %call64 = call double @gimp_unit_get_factor(i32 %89)
  %div65 = fdiv double %mul62, %call64
  call void @gimp_size_entry_set_refval_boundaries(%struct._GimpSizeEntry* %76, i32 %77, double %div59, double %div65)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.42, %sw.bb.39
  br label %sw.epilog.76

sw.bb.66:                                         ; preds = %if.end.35
  %90 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %91 = load i32, i32* %field.addr, align 4
  %92 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %min_value67 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %92, i32 0, i32 7
  %93 = load double, double* %min_value67, align 8
  %94 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %unit68 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %94, i32 0, i32 4
  %95 = load i32, i32* %unit68, align 4
  %call69 = call double @gimp_unit_get_factor(i32 %95)
  %mul70 = fmul double %93, %call69
  %96 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %max_value71 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %96, i32 0, i32 8
  %97 = load double, double* %max_value71, align 8
  %98 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %unit72 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %98, i32 0, i32 4
  %99 = load i32, i32* %unit72, align 4
  %call73 = call double @gimp_unit_get_factor(i32 %99)
  %mul74 = fmul double %97, %call73
  call void @gimp_size_entry_set_refval_boundaries(%struct._GimpSizeEntry* %90, i32 %91, double %mul70, double %mul74)
  br label %sw.epilog.76

sw.default.75:                                    ; preds = %if.end.35
  br label %sw.epilog.76

sw.epilog.76:                                     ; preds = %sw.default.75, %sw.bb.66, %sw.epilog, %sw.bb
  %100 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %stop_recursion77 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %100, i32 0, i32 15
  %101 = load i32, i32* %stop_recursion77, align 4
  %dec = add nsw i32 %101, -1
  store i32 %dec, i32* %stop_recursion77, align 4
  %102 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %103 = load i32, i32* %field.addr, align 4
  %104 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %value = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %104, i32 0, i32 6
  %105 = load double, double* %value, align 8
  call void @gimp_size_entry_set_value(%struct._GimpSizeEntry* %102, i32 %103, double %105)
  %106 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %value_adjustment78 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %106, i32 0, i32 4
  %107 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %value_adjustment78, align 8
  %108 = bitcast %struct._GtkAdjustment* %107 to %struct._GTypeInstance*
  %call79 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %108, i64 80)
  %109 = bitcast %struct._GTypeInstance* %call79 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %109)
  br label %return

return:                                           ; preds = %sw.epilog.76, %if.then.32, %if.else.22, %if.else.16, %if.else.9
  ret void
}

declare void @g_object_freeze_notify(%struct._GObject*) #1

declare void @gtk_adjustment_set_lower(%struct._GtkAdjustment*, double) #1

declare void @gtk_adjustment_set_upper(%struct._GtkAdjustment*, double) #1

declare void @g_object_thaw_notify(%struct._GObject*) #1

declare double @gimp_unit_get_factor(i32) #1

; Function Attrs: nounwind uwtable
define double @gimp_size_entry_get_value(%struct._GimpSizeEntry* %gse, i32 %field) #3 {
entry:
  %retval = alloca double, align 8
  %gse.addr = alloca %struct._GimpSizeEntry*, align 8
  %field.addr = alloca i32, align 4
  %gsef = alloca %struct._GimpSizeEntryField*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpSizeEntry* %gse, %struct._GimpSizeEntry** %gse.addr, align 8
  store i32 %field, i32* %field.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %1 = bitcast %struct._GimpSizeEntry* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_size_entry_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_size_entry_get_value, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0))
  store double 0.000000e+00, double* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32, i32* %field.addr, align 4
  %cmp12 = icmp sge i32 %13, 0
  br i1 %cmp12, label %land.lhs.true.13, label %if.else.16

land.lhs.true.13:                                 ; preds = %do.body.11
  %14 = load i32, i32* %field.addr, align 4
  %15 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %number_of_fields = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %15, i32 0, i32 2
  %16 = load i32, i32* %number_of_fields, align 4
  %cmp14 = icmp slt i32 %14, %16
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %land.lhs.true.13
  br label %if.end.17

if.else.16:                                       ; preds = %land.lhs.true.13, %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_size_entry_get_value, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.16, i32 0, i32 0))
  store double 0.000000e+00, double* %retval
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %17 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %fields = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %17, i32 0, i32 1
  %18 = load %struct._GSList*, %struct._GSList** %fields, align 8
  %19 = load i32, i32* %field.addr, align 4
  %call19 = call i8* @g_slist_nth_data(%struct._GSList* %18, i32 %19)
  %20 = bitcast i8* %call19 to %struct._GimpSizeEntryField*
  store %struct._GimpSizeEntryField* %20, %struct._GimpSizeEntryField** %gsef, align 8
  %21 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %value = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %21, i32 0, i32 6
  %22 = load double, double* %value, align 8
  store double %22, double* %retval
  br label %return

return:                                           ; preds = %do.end.18, %if.else.16, %if.else.9
  %23 = load double, double* %retval
  ret double %23
}

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_size_entry_update_value(%struct._GimpSizeEntryField* %gsef, double %value) #3 {
entry:
  %gsef.addr = alloca %struct._GimpSizeEntryField*, align 8
  %value.addr = alloca double, align 8
  store %struct._GimpSizeEntryField* %gsef, %struct._GimpSizeEntryField** %gsef.addr, align 8
  store double %value, double* %value.addr, align 8
  %0 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %stop_recursion = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %0, i32 0, i32 15
  %1 = load i32, i32* %stop_recursion, align 4
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load double, double* %value.addr, align 8
  %3 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %value1 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %3, i32 0, i32 6
  store double %2, double* %value1, align 8
  %4 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %gse = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %4, i32 0, i32 0
  %5 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse, align 8
  %update_policy = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %5, i32 0, i32 8
  %6 = load i32, i32* %update_policy, align 4
  switch i32 %6, label %sw.default.100 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.2
    i32 2, label %sw.bb.65
  ]

sw.bb:                                            ; preds = %if.end
  br label %sw.epilog.101

sw.bb.2:                                          ; preds = %if.end
  %7 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %gse3 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %7, i32 0, i32 0
  %8 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse3, align 8
  %unit = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %8, i32 0, i32 4
  %9 = load i32, i32* %unit, align 4
  switch i32 %9, label %sw.default [
    i32 0, label %sw.bb.4
    i32 65536, label %sw.bb.5
  ]

sw.bb.4:                                          ; preds = %sw.bb.2
  %10 = load double, double* %value.addr, align 8
  %11 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %refval = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %11, i32 0, i32 11
  store double %10, double* %refval, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %sw.bb.2
  %12 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %lower = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %12, i32 0, i32 2
  %13 = load double, double* %lower, align 8
  %14 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %upper = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %14, i32 0, i32 3
  %15 = load double, double* %upper, align 8
  %16 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %lower6 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %16, i32 0, i32 2
  %17 = load double, double* %lower6, align 8
  %sub = fsub double %15, %17
  %18 = load double, double* %value.addr, align 8
  %mul = fmul double %sub, %18
  %div = fdiv double %mul, 1.000000e+02
  %add = fadd double %13, %div
  %19 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %max_refval = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %19, i32 0, i32 13
  %20 = load double, double* %max_refval, align 8
  %cmp7 = fcmp ogt double %add, %20
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.5
  %21 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %max_refval8 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %21, i32 0, i32 13
  %22 = load double, double* %max_refval8, align 8
  br label %cond.end.27

cond.false:                                       ; preds = %sw.bb.5
  %23 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %lower9 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %23, i32 0, i32 2
  %24 = load double, double* %lower9, align 8
  %25 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %upper10 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %25, i32 0, i32 3
  %26 = load double, double* %upper10, align 8
  %27 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %lower11 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %27, i32 0, i32 2
  %28 = load double, double* %lower11, align 8
  %sub12 = fsub double %26, %28
  %29 = load double, double* %value.addr, align 8
  %mul13 = fmul double %sub12, %29
  %div14 = fdiv double %mul13, 1.000000e+02
  %add15 = fadd double %24, %div14
  %30 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %min_refval = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %30, i32 0, i32 12
  %31 = load double, double* %min_refval, align 8
  %cmp16 = fcmp olt double %add15, %31
  br i1 %cmp16, label %cond.true.17, label %cond.false.19

cond.true.17:                                     ; preds = %cond.false
  %32 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %min_refval18 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %32, i32 0, i32 12
  %33 = load double, double* %min_refval18, align 8
  br label %cond.end

cond.false.19:                                    ; preds = %cond.false
  %34 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %lower20 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %34, i32 0, i32 2
  %35 = load double, double* %lower20, align 8
  %36 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %upper21 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %36, i32 0, i32 3
  %37 = load double, double* %upper21, align 8
  %38 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %lower22 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %38, i32 0, i32 2
  %39 = load double, double* %lower22, align 8
  %sub23 = fsub double %37, %39
  %40 = load double, double* %value.addr, align 8
  %mul24 = fmul double %sub23, %40
  %div25 = fdiv double %mul24, 1.000000e+02
  %add26 = fadd double %35, %div25
  br label %cond.end

cond.end:                                         ; preds = %cond.false.19, %cond.true.17
  %cond = phi double [ %33, %cond.true.17 ], [ %add26, %cond.false.19 ]
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.end, %cond.true
  %cond28 = phi double [ %22, %cond.true ], [ %cond, %cond.end ]
  %41 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %refval29 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %41, i32 0, i32 11
  store double %cond28, double* %refval29, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb.2
  %42 = load double, double* %value.addr, align 8
  %43 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %resolution = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %43, i32 0, i32 1
  %44 = load double, double* %resolution, align 8
  %mul30 = fmul double %42, %44
  %45 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %gse31 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %45, i32 0, i32 0
  %46 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse31, align 8
  %unit32 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %46, i32 0, i32 4
  %47 = load i32, i32* %unit32, align 4
  %call = call double @gimp_unit_get_factor(i32 %47)
  %div33 = fdiv double %mul30, %call
  %48 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %max_refval34 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %48, i32 0, i32 13
  %49 = load double, double* %max_refval34, align 8
  %cmp35 = fcmp ogt double %div33, %49
  br i1 %cmp35, label %cond.true.36, label %cond.false.38

cond.true.36:                                     ; preds = %sw.default
  %50 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %max_refval37 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %50, i32 0, i32 13
  %51 = load double, double* %max_refval37, align 8
  br label %cond.end.58

cond.false.38:                                    ; preds = %sw.default
  %52 = load double, double* %value.addr, align 8
  %53 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %resolution39 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %53, i32 0, i32 1
  %54 = load double, double* %resolution39, align 8
  %mul40 = fmul double %52, %54
  %55 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %gse41 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %55, i32 0, i32 0
  %56 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse41, align 8
  %unit42 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %56, i32 0, i32 4
  %57 = load i32, i32* %unit42, align 4
  %call43 = call double @gimp_unit_get_factor(i32 %57)
  %div44 = fdiv double %mul40, %call43
  %58 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %min_refval45 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %58, i32 0, i32 12
  %59 = load double, double* %min_refval45, align 8
  %cmp46 = fcmp olt double %div44, %59
  br i1 %cmp46, label %cond.true.47, label %cond.false.49

cond.true.47:                                     ; preds = %cond.false.38
  %60 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %min_refval48 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %60, i32 0, i32 12
  %61 = load double, double* %min_refval48, align 8
  br label %cond.end.56

cond.false.49:                                    ; preds = %cond.false.38
  %62 = load double, double* %value.addr, align 8
  %63 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %resolution50 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %63, i32 0, i32 1
  %64 = load double, double* %resolution50, align 8
  %mul51 = fmul double %62, %64
  %65 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %gse52 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %65, i32 0, i32 0
  %66 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse52, align 8
  %unit53 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %66, i32 0, i32 4
  %67 = load i32, i32* %unit53, align 4
  %call54 = call double @gimp_unit_get_factor(i32 %67)
  %div55 = fdiv double %mul51, %call54
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.false.49, %cond.true.47
  %cond57 = phi double [ %61, %cond.true.47 ], [ %div55, %cond.false.49 ]
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.end.56, %cond.true.36
  %cond59 = phi double [ %51, %cond.true.36 ], [ %cond57, %cond.end.56 ]
  %68 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %refval60 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %68, i32 0, i32 11
  store double %cond59, double* %refval60, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end.58, %cond.end.27, %sw.bb.4
  %69 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %gse61 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %69, i32 0, i32 0
  %70 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse61, align 8
  %show_refval = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %70, i32 0, i32 7
  %71 = load i32, i32* %show_refval, align 4
  %tobool = icmp ne i32 %71, 0
  br i1 %tobool, label %if.then.62, label %if.end.64

if.then.62:                                       ; preds = %sw.epilog
  %72 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %refval_adjustment = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %72, i32 0, i32 9
  %73 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %refval_adjustment, align 8
  %74 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %refval63 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %74, i32 0, i32 11
  %75 = load double, double* %refval63, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %73, double %75)
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.62, %sw.epilog
  br label %sw.epilog.101

sw.bb.65:                                         ; preds = %if.end
  %76 = load double, double* %value.addr, align 8
  %77 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %gse66 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %77, i32 0, i32 0
  %78 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse66, align 8
  %unit67 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %78, i32 0, i32 4
  %79 = load i32, i32* %unit67, align 4
  %call68 = call double @gimp_unit_get_factor(i32 %79)
  %mul69 = fmul double %76, %call68
  %80 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %max_refval70 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %80, i32 0, i32 13
  %81 = load double, double* %max_refval70, align 8
  %cmp71 = fcmp ogt double %mul69, %81
  br i1 %cmp71, label %cond.true.72, label %cond.false.74

cond.true.72:                                     ; preds = %sw.bb.65
  %82 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %max_refval73 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %82, i32 0, i32 13
  %83 = load double, double* %max_refval73, align 8
  br label %cond.end.90

cond.false.74:                                    ; preds = %sw.bb.65
  %84 = load double, double* %value.addr, align 8
  %85 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %gse75 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %85, i32 0, i32 0
  %86 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse75, align 8
  %unit76 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %86, i32 0, i32 4
  %87 = load i32, i32* %unit76, align 4
  %call77 = call double @gimp_unit_get_factor(i32 %87)
  %mul78 = fmul double %84, %call77
  %88 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %min_refval79 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %88, i32 0, i32 12
  %89 = load double, double* %min_refval79, align 8
  %cmp80 = fcmp olt double %mul78, %89
  br i1 %cmp80, label %cond.true.81, label %cond.false.83

cond.true.81:                                     ; preds = %cond.false.74
  %90 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %min_refval82 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %90, i32 0, i32 12
  %91 = load double, double* %min_refval82, align 8
  br label %cond.end.88

cond.false.83:                                    ; preds = %cond.false.74
  %92 = load double, double* %value.addr, align 8
  %93 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %gse84 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %93, i32 0, i32 0
  %94 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse84, align 8
  %unit85 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %94, i32 0, i32 4
  %95 = load i32, i32* %unit85, align 4
  %call86 = call double @gimp_unit_get_factor(i32 %95)
  %mul87 = fmul double %92, %call86
  br label %cond.end.88

cond.end.88:                                      ; preds = %cond.false.83, %cond.true.81
  %cond89 = phi double [ %91, %cond.true.81 ], [ %mul87, %cond.false.83 ]
  br label %cond.end.90

cond.end.90:                                      ; preds = %cond.end.88, %cond.true.72
  %cond91 = phi double [ %83, %cond.true.72 ], [ %cond89, %cond.end.88 ]
  %96 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %refval92 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %96, i32 0, i32 11
  store double %cond91, double* %refval92, align 8
  %97 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %gse93 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %97, i32 0, i32 0
  %98 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse93, align 8
  %show_refval94 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %98, i32 0, i32 7
  %99 = load i32, i32* %show_refval94, align 4
  %tobool95 = icmp ne i32 %99, 0
  br i1 %tobool95, label %if.then.96, label %if.end.99

if.then.96:                                       ; preds = %cond.end.90
  %100 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %refval_adjustment97 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %100, i32 0, i32 9
  %101 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %refval_adjustment97, align 8
  %102 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %refval98 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %102, i32 0, i32 11
  %103 = load double, double* %refval98, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %101, double %103)
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.96, %cond.end.90
  br label %sw.epilog.101

sw.default.100:                                   ; preds = %if.end
  br label %sw.epilog.101

sw.epilog.101:                                    ; preds = %sw.default.100, %if.end.99, %if.end.64, %sw.bb
  %104 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %gse102 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %104, i32 0, i32 0
  %105 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse102, align 8
  %106 = bitcast %struct._GimpSizeEntry* %105 to i8*
  %107 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @gimp_size_entry_signals, i32 0, i64 0), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %106, i32 %107, i32 0)
  br label %return

return:                                           ; preds = %sw.epilog.101, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_size_entry_set_refval_digits(%struct._GimpSizeEntry* %gse, i32 %field, i32 %digits) #3 {
entry:
  %gse.addr = alloca %struct._GimpSizeEntry*, align 8
  %field.addr = alloca i32, align 4
  %digits.addr = alloca i32, align 4
  %gsef = alloca %struct._GimpSizeEntryField*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpSizeEntry* %gse, %struct._GimpSizeEntry** %gse.addr, align 8
  store i32 %field, i32* %field.addr, align 4
  store i32 %digits, i32* %digits.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %1 = bitcast %struct._GimpSizeEntry* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_size_entry_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_size_entry_set_refval_digits, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.43

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32, i32* %field.addr, align 4
  %cmp12 = icmp sge i32 %13, 0
  br i1 %cmp12, label %land.lhs.true.13, label %if.else.16

land.lhs.true.13:                                 ; preds = %do.body.11
  %14 = load i32, i32* %field.addr, align 4
  %15 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %number_of_fields = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %15, i32 0, i32 2
  %16 = load i32, i32* %number_of_fields, align 4
  %cmp14 = icmp slt i32 %14, %16
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %land.lhs.true.13
  br label %if.end.17

if.else.16:                                       ; preds = %land.lhs.true.13, %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_size_entry_set_refval_digits, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end.43

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  br label %do.body.19

do.body.19:                                       ; preds = %do.end.18
  %17 = load i32, i32* %digits.addr, align 4
  %cmp20 = icmp sge i32 %17, 0
  br i1 %cmp20, label %land.lhs.true.21, label %if.else.24

land.lhs.true.21:                                 ; preds = %do.body.19
  %18 = load i32, i32* %digits.addr, align 4
  %cmp22 = icmp sle i32 %18, 6
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %land.lhs.true.21
  br label %if.end.25

if.else.24:                                       ; preds = %land.lhs.true.21, %do.body.19
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_size_entry_set_refval_digits, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end.43

if.end.25:                                        ; preds = %if.then.23
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  %19 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %fields = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %19, i32 0, i32 1
  %20 = load %struct._GSList*, %struct._GSList** %fields, align 8
  %21 = load i32, i32* %field.addr, align 4
  %call27 = call i8* @g_slist_nth_data(%struct._GSList* %20, i32 %21)
  %22 = bitcast i8* %call27 to %struct._GimpSizeEntryField*
  store %struct._GimpSizeEntryField* %22, %struct._GimpSizeEntryField** %gsef, align 8
  %23 = load i32, i32* %digits.addr, align 4
  %24 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %refval_digits = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %24, i32 0, i32 14
  store i32 %23, i32* %refval_digits, align 4
  %25 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %update_policy = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %25, i32 0, i32 8
  %26 = load i32, i32* %update_policy, align 4
  %cmp28 = icmp eq i32 %26, 1
  br i1 %cmp28, label %if.then.29, label %if.end.43

if.then.29:                                       ; preds = %do.end.26
  %27 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %show_refval = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %27, i32 0, i32 7
  %28 = load i32, i32* %show_refval, align 4
  %tobool30 = icmp ne i32 %28, 0
  br i1 %tobool30, label %if.then.31, label %if.else.35

if.then.31:                                       ; preds = %if.then.29
  %29 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %refval_spinbutton = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %29, i32 0, i32 10
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %refval_spinbutton, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_spin_button_get_type() #6
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call32)
  %32 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkSpinButton*
  %33 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %refval_digits34 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %33, i32 0, i32 14
  %34 = load i32, i32* %refval_digits34, align 4
  call void @gtk_spin_button_set_digits(%struct._GtkSpinButton* %32, i32 %34)
  br label %if.end.42

if.else.35:                                       ; preds = %if.then.29
  %35 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %unit = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %35, i32 0, i32 4
  %36 = load i32, i32* %unit, align 4
  %cmp36 = icmp eq i32 %36, 0
  br i1 %cmp36, label %if.then.37, label %if.end.41

if.then.37:                                       ; preds = %if.else.35
  %37 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %value_spinbutton = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %37, i32 0, i32 5
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %value_spinbutton, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_spin_button_get_type() #6
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call38)
  %40 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkSpinButton*
  %41 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %refval_digits40 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %41, i32 0, i32 14
  %42 = load i32, i32* %refval_digits40, align 4
  call void @gtk_spin_button_set_digits(%struct._GtkSpinButton* %40, i32 %42)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.37, %if.else.35
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.then.31
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.9, %if.else.16, %if.else.24, %if.end.42, %do.end.26
  ret void
}

; Function Attrs: nounwind uwtable
define double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %gse, i32 %field) #3 {
entry:
  %retval = alloca double, align 8
  %gse.addr = alloca %struct._GimpSizeEntry*, align 8
  %field.addr = alloca i32, align 4
  %gsef = alloca %struct._GimpSizeEntryField*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpSizeEntry* %gse, %struct._GimpSizeEntry** %gse.addr, align 8
  store i32 %field, i32* %field.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %1 = bitcast %struct._GimpSizeEntry* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_size_entry_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_size_entry_get_refval, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0))
  store double 1.000000e+00, double* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32, i32* %field.addr, align 4
  %cmp12 = icmp sge i32 %13, 0
  br i1 %cmp12, label %land.lhs.true.13, label %if.else.16

land.lhs.true.13:                                 ; preds = %do.body.11
  %14 = load i32, i32* %field.addr, align 4
  %15 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %number_of_fields = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %15, i32 0, i32 2
  %16 = load i32, i32* %number_of_fields, align 4
  %cmp14 = icmp slt i32 %14, %16
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %land.lhs.true.13
  br label %if.end.17

if.else.16:                                       ; preds = %land.lhs.true.13, %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_size_entry_get_refval, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.16, i32 0, i32 0))
  store double 1.000000e+00, double* %retval
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %17 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %fields = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %17, i32 0, i32 1
  %18 = load %struct._GSList*, %struct._GSList** %fields, align 8
  %19 = load i32, i32* %field.addr, align 4
  %call19 = call i8* @g_slist_nth_data(%struct._GSList* %18, i32 %19)
  %20 = bitcast i8* %call19 to %struct._GimpSizeEntryField*
  store %struct._GimpSizeEntryField* %20, %struct._GimpSizeEntryField** %gsef, align 8
  %21 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %refval = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %21, i32 0, i32 11
  %22 = load double, double* %refval, align 8
  store double %22, double* %retval
  br label %return

return:                                           ; preds = %do.end.18, %if.else.16, %if.else.9
  %23 = load double, double* %retval
  ret double %23
}

; Function Attrs: nounwind uwtable
define internal void @gimp_size_entry_update_refval(%struct._GimpSizeEntryField* %gsef, double %refval) #3 {
entry:
  %gsef.addr = alloca %struct._GimpSizeEntryField*, align 8
  %refval.addr = alloca double, align 8
  store %struct._GimpSizeEntryField* %gsef, %struct._GimpSizeEntryField** %gsef.addr, align 8
  store double %refval, double* %refval.addr, align 8
  %0 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %stop_recursion = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %0, i32 0, i32 15
  %1 = load i32, i32* %stop_recursion, align 4
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load double, double* %refval.addr, align 8
  %3 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %refval1 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %3, i32 0, i32 11
  store double %2, double* %refval1, align 8
  %4 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %gse = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %4, i32 0, i32 0
  %5 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse, align 8
  %update_policy = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %5, i32 0, i32 8
  %6 = load i32, i32* %update_policy, align 4
  switch i32 %6, label %sw.default.93 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.2
    i32 2, label %sw.bb.63
  ]

sw.bb:                                            ; preds = %if.end
  br label %sw.epilog.94

sw.bb.2:                                          ; preds = %if.end
  %7 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %gse3 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %7, i32 0, i32 0
  %8 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse3, align 8
  %unit = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %8, i32 0, i32 4
  %9 = load i32, i32* %unit, align 4
  switch i32 %9, label %sw.default [
    i32 0, label %sw.bb.4
    i32 65536, label %sw.bb.5
  ]

sw.bb.4:                                          ; preds = %sw.bb.2
  %10 = load double, double* %refval.addr, align 8
  %11 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %value = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %11, i32 0, i32 6
  store double %10, double* %value, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %sw.bb.2
  %12 = load double, double* %refval.addr, align 8
  %13 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %lower = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %13, i32 0, i32 2
  %14 = load double, double* %lower, align 8
  %sub = fsub double %12, %14
  %mul = fmul double 1.000000e+02, %sub
  %15 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %upper = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %15, i32 0, i32 3
  %16 = load double, double* %upper, align 8
  %17 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %lower6 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %17, i32 0, i32 2
  %18 = load double, double* %lower6, align 8
  %sub7 = fsub double %16, %18
  %div = fdiv double %mul, %sub7
  %19 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %max_value = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %19, i32 0, i32 8
  %20 = load double, double* %max_value, align 8
  %cmp8 = fcmp ogt double %div, %20
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.5
  %21 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %max_value9 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %21, i32 0, i32 8
  %22 = load double, double* %max_value9, align 8
  br label %cond.end.28

cond.false:                                       ; preds = %sw.bb.5
  %23 = load double, double* %refval.addr, align 8
  %24 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %lower10 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %24, i32 0, i32 2
  %25 = load double, double* %lower10, align 8
  %sub11 = fsub double %23, %25
  %mul12 = fmul double 1.000000e+02, %sub11
  %26 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %upper13 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %26, i32 0, i32 3
  %27 = load double, double* %upper13, align 8
  %28 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %lower14 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %28, i32 0, i32 2
  %29 = load double, double* %lower14, align 8
  %sub15 = fsub double %27, %29
  %div16 = fdiv double %mul12, %sub15
  %30 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %min_value = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %30, i32 0, i32 7
  %31 = load double, double* %min_value, align 8
  %cmp17 = fcmp olt double %div16, %31
  br i1 %cmp17, label %cond.true.18, label %cond.false.20

cond.true.18:                                     ; preds = %cond.false
  %32 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %min_value19 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %32, i32 0, i32 7
  %33 = load double, double* %min_value19, align 8
  br label %cond.end

cond.false.20:                                    ; preds = %cond.false
  %34 = load double, double* %refval.addr, align 8
  %35 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %lower21 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %35, i32 0, i32 2
  %36 = load double, double* %lower21, align 8
  %sub22 = fsub double %34, %36
  %mul23 = fmul double 1.000000e+02, %sub22
  %37 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %upper24 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %37, i32 0, i32 3
  %38 = load double, double* %upper24, align 8
  %39 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %lower25 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %39, i32 0, i32 2
  %40 = load double, double* %lower25, align 8
  %sub26 = fsub double %38, %40
  %div27 = fdiv double %mul23, %sub26
  br label %cond.end

cond.end:                                         ; preds = %cond.false.20, %cond.true.18
  %cond = phi double [ %33, %cond.true.18 ], [ %div27, %cond.false.20 ]
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.end, %cond.true
  %cond29 = phi double [ %22, %cond.true ], [ %cond, %cond.end ]
  %41 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %value30 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %41, i32 0, i32 6
  store double %cond29, double* %value30, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb.2
  %42 = load double, double* %refval.addr, align 8
  %43 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %gse31 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %43, i32 0, i32 0
  %44 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse31, align 8
  %unit32 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %44, i32 0, i32 4
  %45 = load i32, i32* %unit32, align 4
  %call = call double @gimp_unit_get_factor(i32 %45)
  %mul33 = fmul double %42, %call
  %46 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %resolution = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %46, i32 0, i32 1
  %47 = load double, double* %resolution, align 8
  %div34 = fdiv double %mul33, %47
  %48 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %max_value35 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %48, i32 0, i32 8
  %49 = load double, double* %max_value35, align 8
  %cmp36 = fcmp ogt double %div34, %49
  br i1 %cmp36, label %cond.true.37, label %cond.false.39

cond.true.37:                                     ; preds = %sw.default
  %50 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %max_value38 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %50, i32 0, i32 8
  %51 = load double, double* %max_value38, align 8
  br label %cond.end.59

cond.false.39:                                    ; preds = %sw.default
  %52 = load double, double* %refval.addr, align 8
  %53 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %gse40 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %53, i32 0, i32 0
  %54 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse40, align 8
  %unit41 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %54, i32 0, i32 4
  %55 = load i32, i32* %unit41, align 4
  %call42 = call double @gimp_unit_get_factor(i32 %55)
  %mul43 = fmul double %52, %call42
  %56 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %resolution44 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %56, i32 0, i32 1
  %57 = load double, double* %resolution44, align 8
  %div45 = fdiv double %mul43, %57
  %58 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %min_value46 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %58, i32 0, i32 7
  %59 = load double, double* %min_value46, align 8
  %cmp47 = fcmp olt double %div45, %59
  br i1 %cmp47, label %cond.true.48, label %cond.false.50

cond.true.48:                                     ; preds = %cond.false.39
  %60 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %min_value49 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %60, i32 0, i32 7
  %61 = load double, double* %min_value49, align 8
  br label %cond.end.57

cond.false.50:                                    ; preds = %cond.false.39
  %62 = load double, double* %refval.addr, align 8
  %63 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %gse51 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %63, i32 0, i32 0
  %64 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse51, align 8
  %unit52 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %64, i32 0, i32 4
  %65 = load i32, i32* %unit52, align 4
  %call53 = call double @gimp_unit_get_factor(i32 %65)
  %mul54 = fmul double %62, %call53
  %66 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %resolution55 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %66, i32 0, i32 1
  %67 = load double, double* %resolution55, align 8
  %div56 = fdiv double %mul54, %67
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.50, %cond.true.48
  %cond58 = phi double [ %61, %cond.true.48 ], [ %div56, %cond.false.50 ]
  br label %cond.end.59

cond.end.59:                                      ; preds = %cond.end.57, %cond.true.37
  %cond60 = phi double [ %51, %cond.true.37 ], [ %cond58, %cond.end.57 ]
  %68 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %value61 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %68, i32 0, i32 6
  store double %cond60, double* %value61, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end.59, %cond.end.28, %sw.bb.4
  %69 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %value_adjustment = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %69, i32 0, i32 4
  %70 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %value_adjustment, align 8
  %71 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %value62 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %71, i32 0, i32 6
  %72 = load double, double* %value62, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %70, double %72)
  br label %sw.epilog.94

sw.bb.63:                                         ; preds = %if.end
  %73 = load double, double* %refval.addr, align 8
  %74 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %gse64 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %74, i32 0, i32 0
  %75 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse64, align 8
  %unit65 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %75, i32 0, i32 4
  %76 = load i32, i32* %unit65, align 4
  %call66 = call double @gimp_unit_get_factor(i32 %76)
  %div67 = fdiv double %73, %call66
  %77 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %max_value68 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %77, i32 0, i32 8
  %78 = load double, double* %max_value68, align 8
  %cmp69 = fcmp ogt double %div67, %78
  br i1 %cmp69, label %cond.true.70, label %cond.false.72

cond.true.70:                                     ; preds = %sw.bb.63
  %79 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %max_value71 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %79, i32 0, i32 8
  %80 = load double, double* %max_value71, align 8
  br label %cond.end.88

cond.false.72:                                    ; preds = %sw.bb.63
  %81 = load double, double* %refval.addr, align 8
  %82 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %gse73 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %82, i32 0, i32 0
  %83 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse73, align 8
  %unit74 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %83, i32 0, i32 4
  %84 = load i32, i32* %unit74, align 4
  %call75 = call double @gimp_unit_get_factor(i32 %84)
  %div76 = fdiv double %81, %call75
  %85 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %min_value77 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %85, i32 0, i32 7
  %86 = load double, double* %min_value77, align 8
  %cmp78 = fcmp olt double %div76, %86
  br i1 %cmp78, label %cond.true.79, label %cond.false.81

cond.true.79:                                     ; preds = %cond.false.72
  %87 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %min_value80 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %87, i32 0, i32 7
  %88 = load double, double* %min_value80, align 8
  br label %cond.end.86

cond.false.81:                                    ; preds = %cond.false.72
  %89 = load double, double* %refval.addr, align 8
  %90 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %gse82 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %90, i32 0, i32 0
  %91 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse82, align 8
  %unit83 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %91, i32 0, i32 4
  %92 = load i32, i32* %unit83, align 4
  %call84 = call double @gimp_unit_get_factor(i32 %92)
  %div85 = fdiv double %89, %call84
  br label %cond.end.86

cond.end.86:                                      ; preds = %cond.false.81, %cond.true.79
  %cond87 = phi double [ %88, %cond.true.79 ], [ %div85, %cond.false.81 ]
  br label %cond.end.88

cond.end.88:                                      ; preds = %cond.end.86, %cond.true.70
  %cond89 = phi double [ %80, %cond.true.70 ], [ %cond87, %cond.end.86 ]
  %93 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %value90 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %93, i32 0, i32 6
  store double %cond89, double* %value90, align 8
  %94 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %value_adjustment91 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %94, i32 0, i32 4
  %95 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %value_adjustment91, align 8
  %96 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %value92 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %96, i32 0, i32 6
  %97 = load double, double* %value92, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %95, double %97)
  br label %sw.epilog.94

sw.default.93:                                    ; preds = %if.end
  br label %sw.epilog.94

sw.epilog.94:                                     ; preds = %sw.default.93, %cond.end.88, %sw.epilog, %sw.bb
  %98 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef.addr, align 8
  %gse95 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %98, i32 0, i32 0
  %99 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse95, align 8
  %100 = bitcast %struct._GimpSizeEntry* %99 to i8*
  %101 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @gimp_size_entry_signals, i32 0, i64 1), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %100, i32 %101, i32 0)
  br label %return

return:                                           ; preds = %sw.epilog.94, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_size_entry_get_unit(%struct._GimpSizeEntry* %gse) #3 {
entry:
  %retval = alloca i32, align 4
  %gse.addr = alloca %struct._GimpSizeEntry*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpSizeEntry* %gse, %struct._GimpSizeEntry** %gse.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %1 = bitcast %struct._GimpSizeEntry* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_size_entry_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_size_entry_get_unit, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %unit = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %13, i32 0, i32 4
  %14 = load i32, i32* %unit, align 4
  store i32 %14, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define void @gimp_size_entry_set_unit(%struct._GimpSizeEntry* %gse, i32 %unit) #3 {
entry:
  %gse.addr = alloca %struct._GimpSizeEntry*, align 8
  %unit.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpSizeEntry* %gse, %struct._GimpSizeEntry** %gse.addr, align 8
  store i32 %unit, i32* %unit.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %1 = bitcast %struct._GimpSizeEntry* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_size_entry_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_size_entry_set_unit, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %menu_show_pixels = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %13, i32 0, i32 5
  %14 = load i32, i32* %menu_show_pixels, align 4
  %tobool12 = icmp ne i32 %14, 0
  br i1 %tobool12, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %15 = load i32, i32* %unit.addr, align 4
  %cmp13 = icmp ne i32 %15, 0
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %lor.lhs.false, %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_size_entry_set_unit, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.19, i32 0, i32 0))
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  br label %do.body.18

do.body.18:                                       ; preds = %do.end.17
  %16 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %menu_show_percent = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %16, i32 0, i32 6
  %17 = load i32, i32* %menu_show_percent, align 4
  %tobool19 = icmp ne i32 %17, 0
  br i1 %tobool19, label %if.then.22, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %do.body.18
  %18 = load i32, i32* %unit.addr, align 4
  %cmp21 = icmp ne i32 %18, 65536
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %lor.lhs.false.20, %do.body.18
  br label %if.end.24

if.else.23:                                       ; preds = %lor.lhs.false.20
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_size_entry_set_unit, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.20, i32 0, i32 0))
  br label %return

if.end.24:                                        ; preds = %if.then.22
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  %19 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %unitmenu = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %19, i32 0, i32 3
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %unitmenu, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_unit_combo_box_get_type() #6
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call26)
  %22 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpUnitComboBox*
  %23 = load i32, i32* %unit.addr, align 4
  call void @gimp_unit_combo_box_set_active(%struct._GimpUnitComboBox* %22, i32 %23)
  %24 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %25 = load i32, i32* %unit.addr, align 4
  call void @gimp_size_entry_update_unit(%struct._GimpSizeEntry* %24, i32 %25)
  br label %return

return:                                           ; preds = %do.end.25, %if.else.23, %if.else.15, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_size_entry_update_unit(%struct._GimpSizeEntry* %gse, i32 %unit) #3 {
entry:
  %gse.addr = alloca %struct._GimpSizeEntry*, align 8
  %unit.addr = alloca i32, align 4
  %gsef = alloca %struct._GimpSizeEntryField*, align 8
  %i = alloca i32, align 4
  %digits = alloca i32, align 4
  store %struct._GimpSizeEntry* %gse, %struct._GimpSizeEntry** %gse.addr, align 8
  store i32 %unit, i32* %unit.addr, align 4
  %0 = load i32, i32* %unit.addr, align 4
  %1 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %unit1 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %1, i32 0, i32 4
  store i32 %0, i32* %unit1, align 4
  %2 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %3 = bitcast %struct._GimpSizeEntry* %2 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 80)
  %4 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call2 = call i8* @g_object_get_data(%struct._GObject* %4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0))
  %5 = ptrtoint i8* %call2 to i64
  %conv = trunc i64 %5 to i32
  store i32 %conv, i32* %digits, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %number_of_fields = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %7, i32 0, i32 2
  %8 = load i32, i32* %number_of_fields, align 4
  %cmp = icmp slt i32 %6, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %fields = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %9, i32 0, i32 1
  %10 = load %struct._GSList*, %struct._GSList** %fields, align 8
  %11 = load i32, i32* %i, align 4
  %call4 = call i8* @g_slist_nth_data(%struct._GSList* %10, i32 %11)
  %12 = bitcast i8* %call4 to %struct._GimpSizeEntryField*
  store %struct._GimpSizeEntryField* %12, %struct._GimpSizeEntryField** %gsef, align 8
  %13 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %update_policy = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %13, i32 0, i32 8
  %14 = load i32, i32* %update_policy, align 4
  %cmp5 = icmp eq i32 %14, 1
  br i1 %cmp5, label %if.then, label %if.else.30

if.then:                                          ; preds = %for.body
  %15 = load i32, i32* %unit.addr, align 4
  %cmp7 = icmp eq i32 %15, 0
  br i1 %cmp7, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then
  %16 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %value_spinbutton = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %16, i32 0, i32 5
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %value_spinbutton, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_spin_button_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call10)
  %19 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkSpinButton*
  %20 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %refval_digits = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %20, i32 0, i32 14
  %21 = load i32, i32* %refval_digits, align 4
  %22 = load i32, i32* %digits, align 4
  %add = add nsw i32 %21, %22
  call void @gtk_spin_button_set_digits(%struct._GtkSpinButton* %19, i32 %add)
  br label %if.end.29

if.else:                                          ; preds = %if.then
  %23 = load i32, i32* %unit.addr, align 4
  %cmp12 = icmp eq i32 %23, 65536
  br i1 %cmp12, label %if.then.14, label %if.else.19

if.then.14:                                       ; preds = %if.else
  %24 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %value_spinbutton15 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %24, i32 0, i32 5
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %value_spinbutton15, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_spin_button_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call16)
  %27 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkSpinButton*
  %28 = load i32, i32* %digits, align 4
  %add18 = add nsw i32 2, %28
  call void @gtk_spin_button_set_digits(%struct._GtkSpinButton* %27, i32 %add18)
  br label %if.end

if.else.19:                                       ; preds = %if.else
  %29 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %value_spinbutton20 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %29, i32 0, i32 5
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %value_spinbutton20, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_spin_button_get_type() #6
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call21)
  %32 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkSpinButton*
  %33 = load i32, i32* %unit.addr, align 4
  %call23 = call i32 @gimp_unit_get_digits(i32 %33)
  %cmp24 = icmp slt i32 %call23, 5
  br i1 %cmp24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.19
  %34 = load i32, i32* %unit.addr, align 4
  %call26 = call i32 @gimp_unit_get_digits(i32 %34)
  br label %cond.end

cond.false:                                       ; preds = %if.else.19
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call26, %cond.true ], [ 5, %cond.false ]
  %add27 = add nsw i32 %cond, 1
  %35 = load i32, i32* %digits, align 4
  %add28 = add nsw i32 %add27, %35
  call void @gtk_spin_button_set_digits(%struct._GtkSpinButton* %32, i32 %add28)
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then.14
  br label %if.end.29

if.end.29:                                        ; preds = %if.end, %if.then.9
  br label %if.end.49

if.else.30:                                       ; preds = %for.body
  %36 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %update_policy31 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %36, i32 0, i32 8
  %37 = load i32, i32* %update_policy31, align 4
  %cmp32 = icmp eq i32 %37, 2
  br i1 %cmp32, label %if.then.34, label %if.end.48

if.then.34:                                       ; preds = %if.else.30
  %call35 = call i32 @gimp_unit_get_digits(i32 1)
  %38 = load i32, i32* %unit.addr, align 4
  %call36 = call i32 @gimp_unit_get_digits(i32 %38)
  %sub = sub nsw i32 %call35, %call36
  store i32 %sub, i32* %digits, align 4
  %39 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %value_spinbutton37 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %39, i32 0, i32 5
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %value_spinbutton37, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_spin_button_get_type() #6
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call38)
  %42 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkSpinButton*
  %43 = load i32, i32* %digits, align 4
  %add40 = add nsw i32 3, %43
  %cmp41 = icmp sgt i32 %add40, 3
  br i1 %cmp41, label %cond.true.43, label %cond.false.45

cond.true.43:                                     ; preds = %if.then.34
  %44 = load i32, i32* %digits, align 4
  %add44 = add nsw i32 3, %44
  br label %cond.end.46

cond.false.45:                                    ; preds = %if.then.34
  br label %cond.end.46

cond.end.46:                                      ; preds = %cond.false.45, %cond.true.43
  %cond47 = phi i32 [ %add44, %cond.true.43 ], [ 3, %cond.false.45 ]
  call void @gtk_spin_button_set_digits(%struct._GtkSpinButton* %42, i32 %cond47)
  br label %if.end.48

if.end.48:                                        ; preds = %cond.end.46, %if.else.30
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.end.29
  %45 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %stop_recursion = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %45, i32 0, i32 15
  store i32 0, i32* %stop_recursion, align 4
  %46 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %47 = load i32, i32* %i, align 4
  %48 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %min_refval = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %48, i32 0, i32 12
  %49 = load double, double* %min_refval, align 8
  %50 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %max_refval = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %50, i32 0, i32 13
  %51 = load double, double* %max_refval, align 8
  call void @gimp_size_entry_set_refval_boundaries(%struct._GimpSizeEntry* %46, i32 %47, double %49, double %51)
  br label %for.inc

for.inc:                                          ; preds = %if.end.49
  %52 = load i32, i32* %i, align 4
  %inc = add nsw i32 %52, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %53 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %54 = bitcast %struct._GimpSizeEntry* %53 to i8*
  %55 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @gimp_size_entry_signals, i32 0, i64 2), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %54, i32 %55, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_size_entry_show_unit_menu(%struct._GimpSizeEntry* %gse, i32 %show) #3 {
entry:
  %gse.addr = alloca %struct._GimpSizeEntry*, align 8
  %show.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpSizeEntry* %gse, %struct._GimpSizeEntry** %gse.addr, align 8
  store i32 %show, i32* %show.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %1 = bitcast %struct._GimpSizeEntry* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_size_entry_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_size_entry_show_unit_menu, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %unitmenu = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %13, i32 0, i32 3
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %unitmenu, align 8
  %15 = load i32, i32* %show.addr, align 4
  call void @gtk_widget_set_visible(%struct._GtkWidget* %14, i32 %15)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

declare void @gtk_widget_set_visible(%struct._GtkWidget*, i32) #1

; Function Attrs: nounwind uwtable
define void @gimp_size_entry_set_pixel_digits(%struct._GimpSizeEntry* %gse, i32 %digits) #3 {
entry:
  %gse.addr = alloca %struct._GimpSizeEntry*, align 8
  %digits.addr = alloca i32, align 4
  %combo = alloca %struct._GimpUnitComboBox*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpSizeEntry* %gse, %struct._GimpSizeEntry** %gse.addr, align 8
  store i32 %digits, i32* %digits.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %1 = bitcast %struct._GimpSizeEntry* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_size_entry_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_size_entry_set_pixel_digits, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %unitmenu = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %13, i32 0, i32 3
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %unitmenu, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_unit_combo_box_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call11)
  %16 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpUnitComboBox*
  store %struct._GimpUnitComboBox* %16, %struct._GimpUnitComboBox** %combo, align 8
  %17 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %18 = bitcast %struct._GimpSizeEntry* %17 to %struct._GTypeInstance*
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 80)
  %19 = bitcast %struct._GTypeInstance* %call13 to %struct._GObject*
  %20 = load i32, i32* %digits.addr, align 4
  %conv = sext i32 %20 to i64
  %21 = inttoptr i64 %conv to i8*
  call void @g_object_set_data(%struct._GObject* %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0), i8* %21)
  %22 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %23 = load %struct._GimpUnitComboBox*, %struct._GimpUnitComboBox** %combo, align 8
  %call14 = call i32 @gimp_unit_combo_box_get_active(%struct._GimpUnitComboBox* %23)
  call void @gimp_size_entry_update_unit(%struct._GimpSizeEntry* %22, i32 %call14)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

declare i32 @gimp_unit_combo_box_get_active(%struct._GimpUnitComboBox*) #1

; Function Attrs: nounwind uwtable
define void @gimp_size_entry_grab_focus(%struct._GimpSizeEntry* %gse) #3 {
entry:
  %gse.addr = alloca %struct._GimpSizeEntry*, align 8
  %gsef = alloca %struct._GimpSizeEntryField*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpSizeEntry* %gse, %struct._GimpSizeEntry** %gse.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %1 = bitcast %struct._GimpSizeEntry* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_size_entry_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_size_entry_grab_focus, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.14

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %fields = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %13, i32 0, i32 1
  %14 = load %struct._GSList*, %struct._GSList** %fields, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %14, i32 0, i32 0
  %15 = load i8*, i8** %data, align 8
  %16 = bitcast i8* %15 to %struct._GimpSizeEntryField*
  store %struct._GimpSizeEntryField* %16, %struct._GimpSizeEntryField** %gsef, align 8
  %17 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %tobool11 = icmp ne %struct._GimpSizeEntryField* %17, null
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %do.end
  %18 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %show_refval = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %18, i32 0, i32 7
  %19 = load i32, i32* %show_refval, align 4
  %tobool13 = icmp ne i32 %19, 0
  br i1 %tobool13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.12
  %20 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %refval_spinbutton = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %20, i32 0, i32 10
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %refval_spinbutton, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.12
  %22 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %value_spinbutton = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %22, i32 0, i32 5
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %value_spinbutton, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GtkWidget* [ %21, %cond.true ], [ %23, %cond.false ]
  call void @gtk_widget_grab_focus(%struct._GtkWidget* %cond)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.9, %cond.end, %do.end
  ret void
}

declare void @gtk_widget_grab_focus(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define void @gimp_size_entry_set_activates_default(%struct._GimpSizeEntry* %gse, i32 %setting) #3 {
entry:
  %gse.addr = alloca %struct._GimpSizeEntry*, align 8
  %setting.addr = alloca i32, align 4
  %list = alloca %struct._GSList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %gsef = alloca %struct._GimpSizeEntryField*, align 8
  store %struct._GimpSizeEntry* %gse, %struct._GimpSizeEntry** %gse.addr, align 8
  store i32 %setting, i32* %setting.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %1 = bitcast %struct._GimpSizeEntry* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_size_entry_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_size_entry_set_activates_default, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0))
  br label %for.end

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %fields = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %13, i32 0, i32 1
  %14 = load %struct._GSList*, %struct._GSList** %fields, align 8
  store %struct._GSList* %14, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end
  %15 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool11 = icmp ne %struct._GSList* %15, null
  br i1 %tobool11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %16, i32 0, i32 0
  %17 = load i8*, i8** %data, align 8
  %18 = bitcast i8* %17 to %struct._GimpSizeEntryField*
  store %struct._GimpSizeEntryField* %18, %struct._GimpSizeEntryField** %gsef, align 8
  %19 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %value_spinbutton = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %19, i32 0, i32 5
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %value_spinbutton, align 8
  %tobool13 = icmp ne %struct._GtkWidget* %20, null
  br i1 %tobool13, label %if.then.14, label %if.end.18

if.then.14:                                       ; preds = %for.body
  %21 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %value_spinbutton15 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %21, i32 0, i32 5
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %value_spinbutton15, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_entry_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call16)
  %24 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkEntry*
  %25 = load i32, i32* %setting.addr, align 4
  call void @gtk_entry_set_activates_default(%struct._GtkEntry* %24, i32 %25)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.14, %for.body
  %26 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %refval_spinbutton = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %26, i32 0, i32 10
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %refval_spinbutton, align 8
  %tobool19 = icmp ne %struct._GtkWidget* %27, null
  br i1 %tobool19, label %if.then.20, label %if.end.24

if.then.20:                                       ; preds = %if.end.18
  %28 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %refval_spinbutton21 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %28, i32 0, i32 10
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %refval_spinbutton21, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_entry_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call22)
  %31 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkEntry*
  %32 = load i32, i32* %setting.addr, align 4
  call void @gtk_entry_set_activates_default(%struct._GtkEntry* %31, i32 %32)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.20, %if.end.18
  br label %for.inc

for.inc:                                          ; preds = %if.end.24
  %33 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool25 = icmp ne %struct._GSList* %33, null
  br i1 %tobool25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %34 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %34, i32 0, i32 1
  %35 = load %struct._GSList*, %struct._GSList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GSList* [ %35, %cond.true ], [ null, %cond.false ]
  store %struct._GSList* %cond, %struct._GSList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %if.else.9, %for.cond
  ret void
}

declare void @gtk_entry_set_activates_default(%struct._GtkEntry*, i32) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_size_entry_get_help_widget(%struct._GimpSizeEntry* %gse, i32 %field) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %gse.addr = alloca %struct._GimpSizeEntry*, align 8
  %field.addr = alloca i32, align 4
  %gsef = alloca %struct._GimpSizeEntryField*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpSizeEntry* %gse, %struct._GimpSizeEntry** %gse.addr, align 8
  store i32 %field, i32* %field.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %1 = bitcast %struct._GimpSizeEntry* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_size_entry_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_size_entry_get_help_widget, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32, i32* %field.addr, align 4
  %cmp12 = icmp sge i32 %13, 0
  br i1 %cmp12, label %land.lhs.true.13, label %if.else.16

land.lhs.true.13:                                 ; preds = %do.body.11
  %14 = load i32, i32* %field.addr, align 4
  %15 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %number_of_fields = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %15, i32 0, i32 2
  %16 = load i32, i32* %number_of_fields, align 4
  %cmp14 = icmp slt i32 %14, %16
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %land.lhs.true.13
  br label %if.end.17

if.else.16:                                       ; preds = %land.lhs.true.13, %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_size_entry_get_help_widget, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.16, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %17 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse.addr, align 8
  %fields = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %17, i32 0, i32 1
  %18 = load %struct._GSList*, %struct._GSList** %fields, align 8
  %19 = load i32, i32* %field.addr, align 4
  %call19 = call i8* @g_slist_nth_data(%struct._GSList* %18, i32 %19)
  %20 = bitcast i8* %call19 to %struct._GimpSizeEntryField*
  store %struct._GimpSizeEntryField* %20, %struct._GimpSizeEntryField** %gsef, align 8
  %21 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %tobool20 = icmp ne %struct._GimpSizeEntryField* %21, null
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %do.end.18
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.22:                                        ; preds = %do.end.18
  %22 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %refval_spinbutton = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %22, i32 0, i32 10
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %refval_spinbutton, align 8
  %tobool23 = icmp ne %struct._GtkWidget* %23, null
  br i1 %tobool23, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.22
  %24 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %refval_spinbutton24 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %24, i32 0, i32 10
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %refval_spinbutton24, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.22
  %26 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %value_spinbutton = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %26, i32 0, i32 5
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %value_spinbutton, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GtkWidget* [ %25, %cond.true ], [ %27, %cond.false ]
  store %struct._GtkWidget* %cond, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then.21, %if.else.16, %if.else.9
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %28
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_size_entry_class_init(%struct._GimpSizeEntryClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpSizeEntryClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpSizeEntryClass* %klass, %struct._GimpSizeEntryClass** %klass.addr, align 8
  %0 = load %struct._GimpSizeEntryClass*, %struct._GimpSizeEntryClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpSizeEntryClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpSizeEntryClass*, %struct._GimpSizeEntryClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpSizeEntryClass* %3 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %4, i32 0, i32 0
  %5 = load i64, i64* %g_type, align 8
  %call1 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i64 %5, i32 1, i32 824, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call1, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @gimp_size_entry_signals, i32 0, i64 0), align 4
  %6 = load %struct._GimpSizeEntryClass*, %struct._GimpSizeEntryClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpSizeEntryClass* %6 to %struct._GTypeClass*
  %g_type2 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type2, align 8
  %call3 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0), i64 %8, i32 1, i32 832, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call3, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @gimp_size_entry_signals, i32 0, i64 1), align 4
  %9 = load %struct._GimpSizeEntryClass*, %struct._GimpSizeEntryClass** %klass.addr, align 8
  %10 = bitcast %struct._GimpSizeEntryClass* %9 to %struct._GTypeClass*
  %g_type4 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %10, i32 0, i32 0
  %11 = load i64, i64* %g_type4, align 8
  %call5 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), i64 %11, i32 1, i32 840, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call5, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @gimp_size_entry_signals, i32 0, i64 2), align 4
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_size_entry_finalize, void (%struct._GObject*)** %finalize, align 8
  %13 = load %struct._GimpSizeEntryClass*, %struct._GimpSizeEntryClass** %klass.addr, align 8
  %value_changed = getelementptr inbounds %struct._GimpSizeEntryClass, %struct._GimpSizeEntryClass* %13, i32 0, i32 1
  store void (%struct._GimpSizeEntry*)* null, void (%struct._GimpSizeEntry*)** %value_changed, align 8
  %14 = load %struct._GimpSizeEntryClass*, %struct._GimpSizeEntryClass** %klass.addr, align 8
  %refval_changed = getelementptr inbounds %struct._GimpSizeEntryClass, %struct._GimpSizeEntryClass* %14, i32 0, i32 2
  store void (%struct._GimpSizeEntry*)* null, void (%struct._GimpSizeEntry*)** %refval_changed, align 8
  %15 = load %struct._GimpSizeEntryClass*, %struct._GimpSizeEntryClass** %klass.addr, align 8
  %unit_changed = getelementptr inbounds %struct._GimpSizeEntryClass, %struct._GimpSizeEntryClass* %15, i32 0, i32 3
  store void (%struct._GimpSizeEntry*)* null, void (%struct._GimpSizeEntry*)** %unit_changed, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @g_cclosure_marshal_VOID__VOID(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_size_entry_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %gse = alloca %struct._GimpSizeEntry*, align 8
  %list = alloca %struct._GSList*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_size_entry_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSizeEntry*
  store %struct._GimpSizeEntry* %2, %struct._GimpSizeEntry** %gse, align 8
  %3 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse, align 8
  %fields = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %3, i32 0, i32 1
  %4 = load %struct._GSList*, %struct._GSList** %fields, align 8
  %tobool = icmp ne %struct._GSList* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse, align 8
  %fields2 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %5, i32 0, i32 1
  %6 = load %struct._GSList*, %struct._GSList** %fields2, align 8
  store %struct._GSList* %6, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %7 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool3 = icmp ne %struct._GSList* %7, null
  br i1 %tobool3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %8 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %8, i32 0, i32 0
  %9 = load i8*, i8** %data, align 8
  call void @g_slice_free1(i64 120, i8* %9)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %10 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %10, i32 0, i32 1
  %11 = load %struct._GSList*, %struct._GSList** %next, align 8
  store %struct._GSList* %11, %struct._GSList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse, align 8
  %fields4 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %12, i32 0, i32 1
  %13 = load %struct._GSList*, %struct._GSList** %fields4, align 8
  call void @g_slist_free(%struct._GSList* %13)
  %14 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse, align 8
  %fields5 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %14, i32 0, i32 1
  store %struct._GSList* null, %struct._GSList** %fields5, align 8
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %15 = load i8*, i8** @gimp_size_entry_parent_class, align 8
  %16 = bitcast i8* %15 to %struct._GTypeClass*
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %16, i64 80)
  %17 = bitcast %struct._GTypeClass* %call6 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %17, i32 0, i32 6
  %18 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %19 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %18(%struct._GObject* %19)
  ret void
}

declare void @g_slice_free1(i64, i8*) #1

declare void @g_slist_free(%struct._GSList*) #1

declare void @g_signal_emit(i8*, i32, i32, ...) #1

declare double @gtk_adjustment_get_value(%struct._GtkAdjustment*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_adjustment_get_type() #2

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare void @gtk_spin_button_set_numeric(%struct._GtkSpinButton*, i32) #1

declare void @gtk_spin_button_set_update_policy(%struct._GtkSpinButton*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_size_entry_eevl_input_callback(%struct._GtkSpinButton* %spinner, double* %return_val, i8** %data) #3 {
entry:
  %retval = alloca i32, align 4
  %spinner.addr = alloca %struct._GtkSpinButton*, align 8
  %return_val.addr = alloca double*, align 8
  %data.addr = alloca i8**, align 8
  %gsef = alloca %struct._GimpSizeEntryField*, align 8
  %success = alloca i32, align 4
  %error_pos = alloca i8*, align 8
  %error = alloca %struct._GError*, align 8
  %result = alloca %struct.GimpEevlQuantity, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %ui_unit = alloca %struct.GimpEevlQuantity, align 8
  %adj = alloca %struct._GtkAdjustment*, align 8
  %val = alloca double, align 8
  store %struct._GtkSpinButton* %spinner, %struct._GtkSpinButton** %spinner.addr, align 8
  store double* %return_val, double** %return_val.addr, align 8
  store i8** %data, i8*** %data.addr, align 8
  %0 = load i8**, i8*** %data.addr, align 8
  %1 = bitcast i8** %0 to %struct._GimpSizeEntryField*
  store %struct._GimpSizeEntryField* %1, %struct._GimpSizeEntryField** %gsef, align 8
  store i32 0, i32* %success, align 4
  store i8* null, i8** %error_pos, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct._GtkSpinButton*, %struct._GtkSpinButton** %spinner.addr, align 8
  %3 = bitcast %struct._GtkSpinButton* %2 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %3, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_spin_button_get_type() #6
  store i64 %call, i64* %__t, align 8
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %4, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %6, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %7, i32 0, i32 0
  %8 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %8, i32 0, i32 0
  %9 = load i64, i64* %g_type, align 8
  %10 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %9, %10
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %12 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %11, i64 %12) #7
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %13 = load i32, i32* %__r, align 4
  store i32 %13, i32* %tmp
  %14 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %14, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_size_entry_eevl_input_callback, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %15 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %gse = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %15, i32 0, i32 0
  %16 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse, align 8
  %17 = bitcast %struct._GimpSizeEntry* %16 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %17, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_size_entry_get_type() #6
  store i64 %call16, i64* %__t15, align 8
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %18, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %20, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type26, align 8
  %24 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %23, %24
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %25 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %26 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %25, i64 %26) #7
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %27 = load i32, i32* %__r18, align 4
  store i32 %27, i32* %tmp33
  %28 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %28, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_size_entry_eevl_input_callback, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %29 = load %struct._GtkSpinButton*, %struct._GtkSpinButton** %spinner.addr, align 8
  %30 = bitcast %struct._GtkSpinButton* %29 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_entry_get_type() #6
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call39)
  %31 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkEntry*
  %call41 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %31)
  %32 = load i8**, i8*** %data.addr, align 8
  %33 = bitcast i8** %32 to i8*
  %call42 = call i32 @gimp_eevl_evaluate(i8* %call41, i32 (i8*, %struct.GimpEevlQuantity*, i8*)* @gimp_size_entry_eevl_unit_resolver, %struct.GimpEevlQuantity* %result, i8* %33, i8** %error_pos, %struct._GError** %error)
  store i32 %call42, i32* %success, align 4
  %34 = load i32, i32* %success, align 4
  %tobool43 = icmp ne i32 %34, 0
  br i1 %tobool43, label %if.else.54, label %if.then.44

if.then.44:                                       ; preds = %do.end.38
  %35 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool45 = icmp ne %struct._GError* %35, null
  br i1 %tobool45, label %land.lhs.true.46, label %if.else.50

land.lhs.true.46:                                 ; preds = %if.then.44
  %36 = load i8*, i8** %error_pos, align 8
  %tobool47 = icmp ne i8* %36, null
  br i1 %tobool47, label %if.then.48, label %if.else.50

if.then.48:                                       ; preds = %land.lhs.true.46
  %37 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %37, i32 0, i32 2
  %38 = load i8*, i8** %message, align 8
  %39 = load i8*, i8** %error_pos, align 8
  %40 = load i8, i8* %39, align 1
  %conv = sext i8 %40 to i32
  %tobool49 = icmp ne i32 %conv, 0
  br i1 %tobool49, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.48
  %41 = load i8*, i8** %error_pos, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.48
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %41, %cond.true ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0), %cond.false ]
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i32 0, i32 0), i8* %38, i8* %cond)
  br label %if.end.51

if.else.50:                                       ; preds = %land.lhs.true.46, %if.then.44
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.29, i32 0, i32 0))
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.50, %cond.end
  %42 = load %struct._GtkSpinButton*, %struct._GtkSpinButton** %spinner.addr, align 8
  %43 = bitcast %struct._GtkSpinButton* %42 to %struct._GTypeInstance*
  %call52 = call i64 @gtk_widget_get_type() #6
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call52)
  %44 = bitcast %struct._GTypeInstance* %call53 to %struct._GtkWidget*
  call void @gtk_widget_error_bell(%struct._GtkWidget* %44)
  store i32 -1, i32* %retval
  br label %return

if.else.54:                                       ; preds = %do.end.38
  %dimension = getelementptr inbounds %struct.GimpEevlQuantity, %struct.GimpEevlQuantity* %result, i32 0, i32 1
  %45 = load i32, i32* %dimension, align 4
  %cmp55 = icmp ne i32 %45, 1
  br i1 %cmp55, label %land.lhs.true.57, label %if.else.65

land.lhs.true.57:                                 ; preds = %if.else.54
  %46 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %gse58 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %46, i32 0, i32 0
  %47 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse58, align 8
  %unit = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %47, i32 0, i32 4
  %48 = load i32, i32* %unit, align 4
  %cmp59 = icmp ne i32 %48, 65536
  br i1 %cmp59, label %if.then.61, label %if.else.65

if.then.61:                                       ; preds = %land.lhs.true.57
  %dimension62 = getelementptr inbounds %struct.GimpEevlQuantity, %struct.GimpEevlQuantity* %result, i32 0, i32 1
  %49 = load i32, i32* %dimension62, align 4
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.30, i32 0, i32 0), i32 %49)
  %50 = load %struct._GtkSpinButton*, %struct._GtkSpinButton** %spinner.addr, align 8
  %51 = bitcast %struct._GtkSpinButton* %50 to %struct._GTypeInstance*
  %call63 = call i64 @gtk_widget_get_type() #6
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call63)
  %52 = bitcast %struct._GTypeInstance* %call64 to %struct._GtkWidget*
  call void @gtk_widget_error_bell(%struct._GtkWidget* %52)
  store i32 -1, i32* %retval
  br label %return

if.else.65:                                       ; preds = %land.lhs.true.57, %if.else.54
  %dimension66 = getelementptr inbounds %struct.GimpEevlQuantity, %struct.GimpEevlQuantity* %result, i32 0, i32 1
  %53 = load i32, i32* %dimension66, align 4
  %cmp67 = icmp ne i32 %53, 0
  br i1 %cmp67, label %land.lhs.true.69, label %if.else.78

land.lhs.true.69:                                 ; preds = %if.else.65
  %54 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %gse70 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %54, i32 0, i32 0
  %55 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse70, align 8
  %unit71 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %55, i32 0, i32 4
  %56 = load i32, i32* %unit71, align 4
  %cmp72 = icmp eq i32 %56, 65536
  br i1 %cmp72, label %if.then.74, label %if.else.78

if.then.74:                                       ; preds = %land.lhs.true.69
  %dimension75 = getelementptr inbounds %struct.GimpEevlQuantity, %struct.GimpEevlQuantity* %result, i32 0, i32 1
  %57 = load i32, i32* %dimension75, align 4
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.31, i32 0, i32 0), i32 %57)
  %58 = load %struct._GtkSpinButton*, %struct._GtkSpinButton** %spinner.addr, align 8
  %59 = bitcast %struct._GtkSpinButton* %58 to %struct._GTypeInstance*
  %call76 = call i64 @gtk_widget_get_type() #6
  %call77 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call76)
  %60 = bitcast %struct._GTypeInstance* %call77 to %struct._GtkWidget*
  call void @gtk_widget_error_bell(%struct._GtkWidget* %60)
  store i32 -1, i32* %retval
  br label %return

if.else.78:                                       ; preds = %land.lhs.true.69, %if.else.65
  %61 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %gse82 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %61, i32 0, i32 0
  %62 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse82, align 8
  %unit83 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %62, i32 0, i32 4
  %63 = load i32, i32* %unit83, align 4
  switch i32 %63, label %sw.default [
    i32 0, label %sw.bb
    i32 65536, label %sw.bb.85
  ]

sw.bb:                                            ; preds = %if.else.78
  %64 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %resolution = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %64, i32 0, i32 1
  %65 = load double, double* %resolution, align 8
  %value = getelementptr inbounds %struct.GimpEevlQuantity, %struct.GimpEevlQuantity* %ui_unit, i32 0, i32 0
  store double %65, double* %value, align 8
  %dimension84 = getelementptr inbounds %struct.GimpEevlQuantity, %struct.GimpEevlQuantity* %ui_unit, i32 0, i32 1
  store i32 1, i32* %dimension84, align 4
  br label %sw.epilog

sw.bb.85:                                         ; preds = %if.else.78
  %value86 = getelementptr inbounds %struct.GimpEevlQuantity, %struct.GimpEevlQuantity* %ui_unit, i32 0, i32 0
  store double 1.000000e+00, double* %value86, align 8
  %dimension87 = getelementptr inbounds %struct.GimpEevlQuantity, %struct.GimpEevlQuantity* %ui_unit, i32 0, i32 1
  store i32 0, i32* %dimension87, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.else.78
  %66 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %gse88 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %66, i32 0, i32 0
  %67 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse88, align 8
  %unit89 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %67, i32 0, i32 4
  %68 = load i32, i32* %unit89, align 4
  %call90 = call double @gimp_unit_get_factor(i32 %68)
  %value91 = getelementptr inbounds %struct.GimpEevlQuantity, %struct.GimpEevlQuantity* %ui_unit, i32 0, i32 0
  store double %call90, double* %value91, align 8
  %dimension92 = getelementptr inbounds %struct.GimpEevlQuantity, %struct.GimpEevlQuantity* %ui_unit, i32 0, i32 1
  store i32 1, i32* %dimension92, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.85, %sw.bb
  %value93 = getelementptr inbounds %struct.GimpEevlQuantity, %struct.GimpEevlQuantity* %result, i32 0, i32 0
  %69 = load double, double* %value93, align 8
  %value94 = getelementptr inbounds %struct.GimpEevlQuantity, %struct.GimpEevlQuantity* %ui_unit, i32 0, i32 0
  %70 = load double, double* %value94, align 8
  %mul = fmul double %69, %70
  %71 = load double*, double** %return_val.addr, align 8
  store double %mul, double* %71, align 8
  %72 = load %struct._GtkSpinButton*, %struct._GtkSpinButton** %spinner.addr, align 8
  %call95 = call %struct._GtkAdjustment* @gtk_spin_button_get_adjustment(%struct._GtkSpinButton* %72)
  store %struct._GtkAdjustment* %call95, %struct._GtkAdjustment** %adj, align 8
  %73 = load double*, double** %return_val.addr, align 8
  %74 = load double, double* %73, align 8
  %75 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call96 = call double @gtk_adjustment_get_upper(%struct._GtkAdjustment* %75)
  %cmp97 = fcmp ogt double %74, %call96
  br i1 %cmp97, label %cond.true.99, label %cond.false.101

cond.true.99:                                     ; preds = %sw.epilog
  %76 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call100 = call double @gtk_adjustment_get_upper(%struct._GtkAdjustment* %76)
  br label %cond.end.110

cond.false.101:                                   ; preds = %sw.epilog
  %77 = load double*, double** %return_val.addr, align 8
  %78 = load double, double* %77, align 8
  %79 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call102 = call double @gtk_adjustment_get_lower(%struct._GtkAdjustment* %79)
  %cmp103 = fcmp olt double %78, %call102
  br i1 %cmp103, label %cond.true.105, label %cond.false.107

cond.true.105:                                    ; preds = %cond.false.101
  %80 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call106 = call double @gtk_adjustment_get_lower(%struct._GtkAdjustment* %80)
  br label %cond.end.108

cond.false.107:                                   ; preds = %cond.false.101
  %81 = load double*, double** %return_val.addr, align 8
  %82 = load double, double* %81, align 8
  br label %cond.end.108

cond.end.108:                                     ; preds = %cond.false.107, %cond.true.105
  %cond109 = phi double [ %call106, %cond.true.105 ], [ %82, %cond.false.107 ]
  br label %cond.end.110

cond.end.110:                                     ; preds = %cond.end.108, %cond.true.99
  %cond111 = phi double [ %call100, %cond.true.99 ], [ %cond109, %cond.end.108 ]
  store double %cond111, double* %val, align 8
  %83 = load double, double* %val, align 8
  %84 = load double*, double** %return_val.addr, align 8
  %85 = load double, double* %84, align 8
  %cmp112 = fcmp une double %83, %85
  br i1 %cmp112, label %if.then.114, label %if.end.117

if.then.114:                                      ; preds = %cond.end.110
  %86 = load %struct._GtkSpinButton*, %struct._GtkSpinButton** %spinner.addr, align 8
  %87 = bitcast %struct._GtkSpinButton* %86 to %struct._GTypeInstance*
  %call115 = call i64 @gtk_widget_get_type() #6
  %call116 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %87, i64 %call115)
  %88 = bitcast %struct._GTypeInstance* %call116 to %struct._GtkWidget*
  call void @gtk_widget_error_bell(%struct._GtkWidget* %88)
  %89 = load double, double* %val, align 8
  %90 = load double*, double** %return_val.addr, align 8
  store double %89, double* %90, align 8
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.114, %cond.end.110
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.117, %if.then.74, %if.then.61, %if.end.51, %if.else.36, %if.else.9
  %91 = load i32, i32* %retval
  ret i32 %91
}

declare i32 @gimp_eevl_evaluate(i8*, i32 (i8*, %struct.GimpEevlQuantity*, i8*)*, %struct.GimpEevlQuantity*, i8*, i8**, %struct._GError**) #1

declare i8* @gtk_entry_get_text(%struct._GtkEntry*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_size_entry_eevl_unit_resolver(i8* %identifier, %struct.GimpEevlQuantity* %result, i8* %data) #3 {
entry:
  %retval = alloca i32, align 4
  %identifier.addr = alloca i8*, align 8
  %result.addr = alloca %struct.GimpEevlQuantity*, align 8
  %data.addr = alloca i8*, align 8
  %gsef = alloca %struct._GimpSizeEntryField*, align 8
  %resolve_default_unit = alloca i32, align 4
  %unit = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i8* %identifier, i8** %identifier.addr, align 8
  store %struct.GimpEevlQuantity* %result, %struct.GimpEevlQuantity** %result.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GimpSizeEntryField*
  store %struct._GimpSizeEntryField* %1, %struct._GimpSizeEntryField** %gsef, align 8
  %2 = load i8*, i8** %identifier.addr, align 8
  %cmp = icmp eq i8* %2, null
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %resolve_default_unit, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %tobool = icmp ne %struct._GimpSizeEntryField* %3, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_size_entry_eevl_unit_resolver, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %4 = load %struct.GimpEevlQuantity*, %struct.GimpEevlQuantity** %result.addr, align 8
  %cmp2 = icmp ne %struct.GimpEevlQuantity* %4, null
  br i1 %cmp2, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %do.body.1
  br label %if.end.6

if.else.5:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_size_entry_eevl_unit_resolver, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.then.4
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  br label %do.body.8

do.body.8:                                        ; preds = %do.end.7
  %5 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %gse = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %5, i32 0, i32 0
  %6 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse, align 8
  %7 = bitcast %struct._GimpSizeEntry* %6 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %7, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_size_entry_get_type() #6
  store i64 %call, i64* %__t, align 8
  %8 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool9 = icmp ne %struct._GTypeInstance* %8, null
  br i1 %tobool9, label %if.else.11, label %if.then.10

if.then.10:                                       ; preds = %do.body.8
  store i32 0, i32* %__r, align 4
  br label %if.end.20

if.else.11:                                       ; preds = %do.body.8
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %9, i32 0, i32 0
  %10 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool12 = icmp ne %struct._GTypeClass* %10, null
  br i1 %tobool12, label %land.lhs.true, label %if.else.17

land.lhs.true:                                    ; preds = %if.else.11
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class13 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %11, i32 0, i32 0
  %12 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class13, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %12, i32 0, i32 0
  %13 = load i64, i64* %g_type, align 8
  %14 = load i64, i64* %__t, align 8
  %cmp14 = icmp eq i64 %13, %14
  br i1 %cmp14, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.19

if.else.17:                                       ; preds = %land.lhs.true, %if.else.11
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %16 = load i64, i64* %__t, align 8
  %call18 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %15, i64 %16) #7
  store i32 %call18, i32* %__r, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.17, %if.then.16
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.then.10
  %17 = load i32, i32* %__r, align 4
  store i32 %17, i32* %tmp
  %18 = load i32, i32* %tmp
  %tobool21 = icmp ne i32 %18, 0
  br i1 %tobool21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %if.end.20
  br label %if.end.24

if.else.23:                                       ; preds = %if.end.20
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_size_entry_eevl_unit_resolver, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.then.22
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  store i32 0, i32* %unit, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.25
  %19 = load i32, i32* %unit, align 4
  %call26 = call i32 @gimp_unit_get_number_of_units()
  %cmp27 = icmp ule i32 %19, %call26
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %unit, align 4
  %call29 = call i32 @gimp_unit_get_number_of_units()
  %cmp30 = icmp eq i32 %20, %call29
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %for.body
  store i32 65536, i32* %unit, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %for.body
  %21 = load i32, i32* %resolve_default_unit, align 4
  %tobool34 = icmp ne i32 %21, 0
  br i1 %tobool34, label %land.lhs.true.35, label %lor.lhs.false

land.lhs.true.35:                                 ; preds = %if.end.33
  %22 = load i32, i32* %unit, align 4
  %23 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %gse36 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %23, i32 0, i32 0
  %24 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse36, align 8
  %unit37 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %24, i32 0, i32 4
  %25 = load i32, i32* %unit37, align 4
  %cmp38 = icmp eq i32 %22, %25
  br i1 %cmp38, label %if.then.51, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.35, %if.end.33
  %26 = load i8*, i8** %identifier.addr, align 8
  %tobool40 = icmp ne i8* %26, null
  br i1 %tobool40, label %land.lhs.true.41, label %if.end.80

land.lhs.true.41:                                 ; preds = %lor.lhs.false
  %27 = load i32, i32* %unit, align 4
  %call42 = call i8* @gimp_unit_get_symbol(i32 %27)
  %28 = load i8*, i8** %identifier.addr, align 8
  %call43 = call i32 @strcmp(i8* %call42, i8* %28) #7
  %cmp44 = icmp eq i32 %call43, 0
  br i1 %cmp44, label %if.then.51, label %lor.lhs.false.46

lor.lhs.false.46:                                 ; preds = %land.lhs.true.41
  %29 = load i32, i32* %unit, align 4
  %call47 = call i8* @gimp_unit_get_abbreviation(i32 %29)
  %30 = load i8*, i8** %identifier.addr, align 8
  %call48 = call i32 @strcmp(i8* %call47, i8* %30) #7
  %cmp49 = icmp eq i32 %call48, 0
  br i1 %cmp49, label %if.then.51, label %if.end.80

if.then.51:                                       ; preds = %lor.lhs.false.46, %land.lhs.true.41, %land.lhs.true.35
  %31 = load i32, i32* %unit, align 4
  switch i32 %31, label %sw.default [
    i32 65536, label %sw.bb
    i32 0, label %sw.bb.61
  ]

sw.bb:                                            ; preds = %if.then.51
  %32 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %gse52 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %32, i32 0, i32 0
  %33 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse52, align 8
  %unit53 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %33, i32 0, i32 4
  %34 = load i32, i32* %unit53, align 4
  %cmp54 = icmp eq i32 %34, 65536
  br i1 %cmp54, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %sw.bb
  %35 = load %struct.GimpEevlQuantity*, %struct.GimpEevlQuantity** %result.addr, align 8
  %value = getelementptr inbounds %struct.GimpEevlQuantity, %struct.GimpEevlQuantity* %35, i32 0, i32 0
  store double 1.000000e+00, double* %value, align 8
  %36 = load %struct.GimpEevlQuantity*, %struct.GimpEevlQuantity** %result.addr, align 8
  %dimension = getelementptr inbounds %struct.GimpEevlQuantity, %struct.GimpEevlQuantity* %36, i32 0, i32 1
  store i32 0, i32* %dimension, align 4
  br label %if.end.60

if.else.57:                                       ; preds = %sw.bb
  %37 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %resolution = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %37, i32 0, i32 1
  %38 = load double, double* %resolution, align 8
  %mul = fmul double 1.000000e+02, %38
  %39 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %upper = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %39, i32 0, i32 3
  %40 = load double, double* %upper, align 8
  %div = fdiv double %mul, %40
  %41 = load %struct.GimpEevlQuantity*, %struct.GimpEevlQuantity** %result.addr, align 8
  %value58 = getelementptr inbounds %struct.GimpEevlQuantity, %struct.GimpEevlQuantity* %41, i32 0, i32 0
  store double %div, double* %value58, align 8
  %42 = load %struct.GimpEevlQuantity*, %struct.GimpEevlQuantity** %result.addr, align 8
  %dimension59 = getelementptr inbounds %struct.GimpEevlQuantity, %struct.GimpEevlQuantity* %42, i32 0, i32 1
  store i32 1, i32* %dimension59, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.57, %if.then.56
  store i32 1, i32* %retval
  br label %return

sw.bb.61:                                         ; preds = %if.then.51
  %43 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %resolution62 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %43, i32 0, i32 1
  %44 = load double, double* %resolution62, align 8
  %45 = load %struct.GimpEevlQuantity*, %struct.GimpEevlQuantity** %result.addr, align 8
  %value63 = getelementptr inbounds %struct.GimpEevlQuantity, %struct.GimpEevlQuantity* %45, i32 0, i32 0
  store double %44, double* %value63, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.51
  %46 = load i32, i32* %unit, align 4
  %call64 = call double @gimp_unit_get_factor(i32 %46)
  %47 = load %struct.GimpEevlQuantity*, %struct.GimpEevlQuantity** %result.addr, align 8
  %value65 = getelementptr inbounds %struct.GimpEevlQuantity, %struct.GimpEevlQuantity* %47, i32 0, i32 0
  store double %call64, double* %value65, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.61
  %48 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %gse66 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %48, i32 0, i32 0
  %49 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %gse66, align 8
  %unit67 = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %49, i32 0, i32 4
  %50 = load i32, i32* %unit67, align 4
  %cmp68 = icmp eq i32 %50, 65536
  br i1 %cmp68, label %if.then.70, label %if.else.77

if.then.70:                                       ; preds = %sw.epilog
  %51 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %upper71 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %51, i32 0, i32 3
  %52 = load double, double* %upper71, align 8
  %53 = load %struct._GimpSizeEntryField*, %struct._GimpSizeEntryField** %gsef, align 8
  %resolution72 = getelementptr inbounds %struct._GimpSizeEntryField, %struct._GimpSizeEntryField* %53, i32 0, i32 1
  %54 = load double, double* %resolution72, align 8
  %mul73 = fmul double 1.000000e+02, %54
  %div74 = fdiv double %52, %mul73
  %55 = load %struct.GimpEevlQuantity*, %struct.GimpEevlQuantity** %result.addr, align 8
  %value75 = getelementptr inbounds %struct.GimpEevlQuantity, %struct.GimpEevlQuantity* %55, i32 0, i32 0
  store double %div74, double* %value75, align 8
  %56 = load %struct.GimpEevlQuantity*, %struct.GimpEevlQuantity** %result.addr, align 8
  %dimension76 = getelementptr inbounds %struct.GimpEevlQuantity, %struct.GimpEevlQuantity* %56, i32 0, i32 1
  store i32 0, i32* %dimension76, align 4
  br label %if.end.79

if.else.77:                                       ; preds = %sw.epilog
  %57 = load %struct.GimpEevlQuantity*, %struct.GimpEevlQuantity** %result.addr, align 8
  %dimension78 = getelementptr inbounds %struct.GimpEevlQuantity, %struct.GimpEevlQuantity* %57, i32 0, i32 1
  store i32 1, i32* %dimension78, align 4
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.77, %if.then.70
  store i32 1, i32* %retval
  br label %return

if.end.80:                                        ; preds = %lor.lhs.false.46, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.80
  %58 = load i32, i32* %unit, align 4
  %inc = add i32 %58, 1
  store i32 %inc, i32* %unit, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.end.79, %if.end.60, %if.else.23, %if.else.5, %if.else
  %59 = load i32, i32* %retval
  ret i32 %59
}

declare void @g_printerr(i8*, ...) #1

declare void @gtk_widget_error_bell(%struct._GtkWidget*) #1

declare double @gtk_adjustment_get_upper(%struct._GtkAdjustment*) #1

declare double @gtk_adjustment_get_lower(%struct._GtkAdjustment*) #1

declare i32 @gimp_unit_get_number_of_units() #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare i8* @gimp_unit_get_symbol(i32) #1

declare i8* @gimp_unit_get_abbreviation(i32) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
