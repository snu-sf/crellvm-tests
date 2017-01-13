; ModuleID = './libgimpwidgets/gimppageselector.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpPageSelectorClass = type { %struct._GtkBoxClass, void (%struct._GimpPageSelector*)*, void (%struct._GimpPageSelector*)*, void ()*, void ()*, void ()*, void ()* }
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
%struct._GimpPageSelector = type { %struct._GtkBox, i8* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct.GimpPageSelectorPrivate = type { i32, i32, %struct._GtkListStore*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkPixbuf* }
%struct._GtkListStore = type { %struct._GObject, i32, i8*, i8*, %struct._GList*, i32, i32, i32, i64*, i32, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }
%struct._GtkTreeModel = type opaque
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._GdkPixbuf = type opaque
%struct._GtkOrientable = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkScrolledWindow = type { %struct._GtkBin, %struct._GtkWidget*, %struct._GtkWidget*, i16, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkIconView = type { %struct._GtkContainer, %struct._GtkIconViewPrivate* }
%struct._GtkIconViewPrivate = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GtkLabelSelectionInfo = type opaque
%struct._GtkTreePath = type opaque
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._GtkEditable = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_page_selector_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"GimpPageSelector\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"LibGimpWidgets\00", align 1
@__func__.gimp_page_selector_set_n_pages = private unnamed_addr constant [31 x i8] c"gimp_page_selector_set_n_pages\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"GIMP_IS_PAGE_SELECTOR (selector)\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"n_pages >= 0\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"gimp20-libgimp\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Page %d\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"n-pages\00", align 1
@__func__.gimp_page_selector_get_n_pages = private unnamed_addr constant [31 x i8] c"gimp_page_selector_get_n_pages\00", align 1
@__func__.gimp_page_selector_set_target = private unnamed_addr constant [30 x i8] c"gimp_page_selector_set_target\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"target <= GIMP_PAGE_SELECTOR_TARGET_IMAGES\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@__func__.gimp_page_selector_get_target = private unnamed_addr constant [30 x i8] c"gimp_page_selector_get_target\00", align 1
@__func__.gimp_page_selector_set_page_thumbnail = private unnamed_addr constant [38 x i8] c"gimp_page_selector_set_page_thumbnail\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"thumbnail == NULL || GDK_IS_PIXBUF (thumbnail)\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"page_no >= 0 && page_no < priv->n_pages\00", align 1
@__func__.gimp_page_selector_get_page_thumbnail = private unnamed_addr constant [38 x i8] c"gimp_page_selector_get_page_thumbnail\00", align 1
@__func__.gimp_page_selector_set_page_label = private unnamed_addr constant [34 x i8] c"gimp_page_selector_set_page_label\00", align 1
@__func__.gimp_page_selector_get_page_label = private unnamed_addr constant [34 x i8] c"gimp_page_selector_get_page_label\00", align 1
@__func__.gimp_page_selector_select_all = private unnamed_addr constant [30 x i8] c"gimp_page_selector_select_all\00", align 1
@__func__.gimp_page_selector_unselect_all = private unnamed_addr constant [32 x i8] c"gimp_page_selector_unselect_all\00", align 1
@__func__.gimp_page_selector_select_page = private unnamed_addr constant [31 x i8] c"gimp_page_selector_select_page\00", align 1
@__func__.gimp_page_selector_unselect_page = private unnamed_addr constant [33 x i8] c"gimp_page_selector_unselect_page\00", align 1
@__func__.gimp_page_selector_page_is_selected = private unnamed_addr constant [36 x i8] c"gimp_page_selector_page_is_selected\00", align 1
@__func__.gimp_page_selector_get_selected_pages = private unnamed_addr constant [38 x i8] c"gimp_page_selector_get_selected_pages\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"n_selected_pages != NULL\00", align 1
@__func__.gimp_page_selector_select_range = private unnamed_addr constant [32 x i8] c"gimp_page_selector_select_range\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@__func__.gimp_page_selector_get_selected_range = private unnamed_addr constant [38 x i8] c"gimp_page_selector_get_selected_range\00", align 1
@gimp_page_selector_parent_class = internal global i8* null, align 8
@GimpPageSelector_private_offset = internal global i32 0, align 4
@.str.15 = private unnamed_addr constant [18 x i8] c"selection-changed\00", align 1
@selector_signals = internal global [2 x i32] zeroinitializer, align 4
@.str.16 = private unnamed_addr constant [9 x i8] c"activate\00", align 1
@.str.17 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"gimppageselector.c\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"item-activated\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"Nothing selected\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"Select _All\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"focus-out-event\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"Select _range:\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"Open _pages as\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"gtk-file\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"One page selected\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"%d page selected\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"All %d pages selected\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"%d pages selected\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"%d-%d\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"frame\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"gimp-frame\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_page_selector_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_page_selector_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_page_selector_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_box_get_type() #8
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 872, void (i8*, i8*)* bitcast (void (i8*)* @gimp_page_selector_class_intern_init to void (i8*, i8*)*), i32 136, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpPageSelector*)* @gimp_page_selector_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_page_selector_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_page_selector_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_page_selector_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_page_selector_parent_class, align 8
  %1 = load i32, i32* @GimpPageSelector_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpPageSelector_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpPageSelectorClass*
  call void @gimp_page_selector_class_init(%struct._GimpPageSelectorClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_page_selector_init(%struct._GimpPageSelector* %selector) #3 {
entry:
  %selector.addr = alloca %struct._GimpPageSelector*, align 8
  %priv = alloca %struct.GimpPageSelectorPrivate*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %sw = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %hbbox = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %combo = alloca %struct._GtkWidget*, align 8
  store %struct._GimpPageSelector* %selector, %struct._GimpPageSelector** %selector.addr, align 8
  %0 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector.addr, align 8
  %1 = bitcast %struct._GimpPageSelector* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_page_selector_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct.GimpPageSelectorPrivate*
  %3 = bitcast %struct.GimpPageSelectorPrivate* %2 to i8*
  %4 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector.addr, align 8
  %priv2 = getelementptr inbounds %struct._GimpPageSelector, %struct._GimpPageSelector* %4, i32 0, i32 1
  store i8* %3, i8** %priv2, align 8
  %5 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector.addr, align 8
  %priv3 = getelementptr inbounds %struct._GimpPageSelector, %struct._GimpPageSelector* %5, i32 0, i32 1
  %6 = load i8*, i8** %priv3, align 8
  %7 = bitcast i8* %6 to %struct.GimpPageSelectorPrivate*
  store %struct.GimpPageSelectorPrivate* %7, %struct.GimpPageSelectorPrivate** %priv, align 8
  %8 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %n_pages = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %8, i32 0, i32 0
  store i32 0, i32* %n_pages, align 4
  %9 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %target = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %9, i32 0, i32 1
  store i32 0, i32* %target, align 4
  %10 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector.addr, align 8
  %11 = bitcast %struct._GimpPageSelector* %10 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_orientable_get_type() #8
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call4)
  %12 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkOrientable*
  call void @gtk_orientable_set_orientation(%struct._GtkOrientable* %12, i32 1)
  %13 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector.addr, align 8
  %14 = bitcast %struct._GimpPageSelector* %13 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_box_get_type() #8
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call6)
  %15 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkBox*
  call void @gtk_box_set_spacing(%struct._GtkBox* %15, i32 12)
  %call8 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 2)
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %vbox, align 8
  %16 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector.addr, align 8
  %17 = bitcast %struct._GimpPageSelector* %16 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_box_get_type() #8
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call9)
  %18 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkBox*
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %18, %struct._GtkWidget* %19, i32 1, i32 1, i32 0)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %20)
  %call11 = call %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment* null, %struct._GtkAdjustment* null)
  store %struct._GtkWidget* %call11, %struct._GtkWidget** %sw, align 8
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %sw, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_scrolled_window_get_type() #8
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call12)
  %23 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow* %23, i32 1)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %sw, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_scrolled_window_get_type() #8
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call14)
  %26 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow* %26, i32 2, i32 1)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_box_get_type() #8
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call16)
  %29 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkBox*
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %sw, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %29, %struct._GtkWidget* %30, i32 1, i32 1, i32 0)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %sw, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %31)
  %call18 = call i64 @gdk_pixbuf_get_type() #8
  %call19 = call %struct._GtkListStore* (i32, ...) @gtk_list_store_new(i32 4, i64 24, i64 %call18, i64 64, i64 20)
  %32 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %store = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %32, i32 0, i32 2
  store %struct._GtkListStore* %call19, %struct._GtkListStore** %store, align 8
  %33 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %store20 = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %33, i32 0, i32 2
  %34 = load %struct._GtkListStore*, %struct._GtkListStore** %store20, align 8
  %35 = bitcast %struct._GtkListStore* %34 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_tree_model_get_type() #8
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call21)
  %36 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkTreeModel*
  %call23 = call %struct._GtkWidget* @gtk_icon_view_new_with_model(%struct._GtkTreeModel* %36)
  %37 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %view = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %37, i32 0, i32 3
  store %struct._GtkWidget* %call23, %struct._GtkWidget** %view, align 8
  %38 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %view24 = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %38, i32 0, i32 3
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %view24, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_icon_view_get_type() #8
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call25)
  %41 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkIconView*
  call void @gtk_icon_view_set_text_column(%struct._GtkIconView* %41, i32 2)
  %42 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %view27 = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %42, i32 0, i32 3
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %view27, align 8
  %44 = bitcast %struct._GtkWidget* %43 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_icon_view_get_type() #8
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call28)
  %45 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkIconView*
  call void @gtk_icon_view_set_pixbuf_column(%struct._GtkIconView* %45, i32 1)
  %46 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %view30 = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %46, i32 0, i32 3
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %view30, align 8
  %48 = bitcast %struct._GtkWidget* %47 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_icon_view_get_type() #8
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call31)
  %49 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkIconView*
  call void @gtk_icon_view_set_selection_mode(%struct._GtkIconView* %49, i32 3)
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %sw, align 8
  %51 = bitcast %struct._GtkWidget* %50 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_container_get_type() #8
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call33)
  %52 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkContainer*
  %53 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %view35 = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %53, i32 0, i32 3
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %view35, align 8
  call void @gtk_container_add(%struct._GtkContainer* %52, %struct._GtkWidget* %54)
  %55 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %view36 = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %55, i32 0, i32 3
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %view36, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %56)
  %57 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %view37 = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %57, i32 0, i32 3
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %view37, align 8
  %59 = bitcast %struct._GtkWidget* %58 to i8*
  %60 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector.addr, align 8
  %61 = bitcast %struct._GimpPageSelector* %60 to i8*
  %call38 = call i64 @g_signal_connect_data(i8* %59, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0), void ()* bitcast (void (%struct._GtkIconView*, %struct._GimpPageSelector*)* @gimp_page_selector_selection_changed to void ()*), i8* %61, void (i8*, %struct._GClosure*)* null, i32 0)
  %62 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %view39 = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %62, i32 0, i32 3
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %view39, align 8
  %64 = bitcast %struct._GtkWidget* %63 to i8*
  %65 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector.addr, align 8
  %66 = bitcast %struct._GimpPageSelector* %65 to i8*
  %call40 = call i64 @g_signal_connect_data(i8* %64, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0), void ()* bitcast (void (%struct._GtkIconView*, %struct._GtkTreePath*, %struct._GimpPageSelector*)* @gimp_page_selector_item_activated to void ()*), i8* %66, void (i8*, %struct._GClosure*)* null, i32 0)
  %call41 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i32 0, i32 0)) #6
  %call42 = call %struct._GtkWidget* @gtk_label_new(i8* %call41)
  %67 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %count_label = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %67, i32 0, i32 4
  store %struct._GtkWidget* %call42, %struct._GtkWidget** %count_label, align 8
  %68 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %count_label43 = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %68, i32 0, i32 4
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %count_label43, align 8
  %70 = bitcast %struct._GtkWidget* %69 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_misc_get_type() #8
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %70, i64 %call44)
  %71 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %71, float 0.000000e+00, float 5.000000e-01)
  %72 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %count_label46 = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %72, i32 0, i32 4
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %count_label46, align 8
  %74 = bitcast %struct._GtkWidget* %73 to %struct._GTypeInstance*
  %call47 = call i64 @gtk_label_get_type() #8
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %74, i64 %call47)
  %75 = bitcast %struct._GTypeInstance* %call48 to %struct._GtkLabel*
  call void (%struct._GtkLabel*, ...) @gimp_label_set_attributes(%struct._GtkLabel* %75, i32 3, i32 2, i32 -1)
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %77 = bitcast %struct._GtkWidget* %76 to %struct._GTypeInstance*
  %call49 = call i64 @gtk_box_get_type() #8
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %77, i64 %call49)
  %78 = bitcast %struct._GTypeInstance* %call50 to %struct._GtkBox*
  %79 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %count_label51 = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %79, i32 0, i32 4
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %count_label51, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %78, %struct._GtkWidget* %80, i32 0, i32 0, i32 0)
  %81 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %count_label52 = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %81, i32 0, i32 4
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %count_label52, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %82)
  %call53 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call53, %struct._GtkWidget** %hbox, align 8
  %83 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector.addr, align 8
  %84 = bitcast %struct._GimpPageSelector* %83 to %struct._GTypeInstance*
  %call54 = call i64 @gtk_box_get_type() #8
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %84, i64 %call54)
  %85 = bitcast %struct._GTypeInstance* %call55 to %struct._GtkBox*
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %85, %struct._GtkWidget* %86, i32 0, i32 0, i32 0)
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %87)
  %call56 = call %struct._GtkWidget* @gtk_button_box_new(i32 0)
  store %struct._GtkWidget* %call56, %struct._GtkWidget** %hbbox, align 8
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %89 = bitcast %struct._GtkWidget* %88 to %struct._GTypeInstance*
  %call57 = call i64 @gtk_box_get_type() #8
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %89, i64 %call57)
  %90 = bitcast %struct._GTypeInstance* %call58 to %struct._GtkBox*
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %hbbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %90, %struct._GtkWidget* %91, i32 0, i32 0, i32 0)
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %hbbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %92)
  %call59 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0)) #6
  %call60 = call %struct._GtkWidget* @gtk_button_new_with_mnemonic(i8* %call59)
  store %struct._GtkWidget* %call60, %struct._GtkWidget** %button, align 8
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %hbbox, align 8
  %94 = bitcast %struct._GtkWidget* %93 to %struct._GTypeInstance*
  %call61 = call i64 @gtk_box_get_type() #8
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %94, i64 %call61)
  %95 = bitcast %struct._GTypeInstance* %call62 to %struct._GtkBox*
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %95, %struct._GtkWidget* %96, i32 0, i32 0, i32 0)
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %97)
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %99 = bitcast %struct._GtkWidget* %98 to i8*
  %100 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector.addr, align 8
  %101 = bitcast %struct._GimpPageSelector* %100 to i8*
  %call63 = call i64 @g_signal_connect_data(i8* %99, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPageSelector*)* @gimp_page_selector_select_all to void ()*), i8* %101, void (i8*, %struct._GClosure*)* null, i32 2)
  %call64 = call %struct._GtkWidget* @gtk_entry_new()
  %102 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %range_entry = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %102, i32 0, i32 5
  store %struct._GtkWidget* %call64, %struct._GtkWidget** %range_entry, align 8
  %103 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %range_entry65 = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %103, i32 0, i32 5
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %range_entry65, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %104, i32 80, i32 -1)
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %106 = bitcast %struct._GtkWidget* %105 to %struct._GTypeInstance*
  %call66 = call i64 @gtk_box_get_type() #8
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %106, i64 %call66)
  %107 = bitcast %struct._GTypeInstance* %call67 to %struct._GtkBox*
  %108 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %range_entry68 = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %108, i32 0, i32 5
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** %range_entry68, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %107, %struct._GtkWidget* %109, i32 1, i32 1, i32 0)
  %110 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %range_entry69 = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %110, i32 0, i32 5
  %111 = load %struct._GtkWidget*, %struct._GtkWidget** %range_entry69, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %111)
  %112 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %range_entry70 = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %112, i32 0, i32 5
  %113 = load %struct._GtkWidget*, %struct._GtkWidget** %range_entry70, align 8
  %114 = bitcast %struct._GtkWidget* %113 to i8*
  %115 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector.addr, align 8
  %116 = bitcast %struct._GimpPageSelector* %115 to i8*
  %call71 = call i64 @g_signal_connect_data(i8* %114, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkEntry*, %struct._GdkEventFocus*, %struct._GimpPageSelector*)* @gimp_page_selector_range_focus_out to void ()*), i8* %116, void (i8*, %struct._GClosure*)* null, i32 0)
  %117 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %range_entry72 = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %117, i32 0, i32 5
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** %range_entry72, align 8
  %119 = bitcast %struct._GtkWidget* %118 to i8*
  %120 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector.addr, align 8
  %121 = bitcast %struct._GimpPageSelector* %120 to i8*
  %call73 = call i64 @g_signal_connect_data(i8* %119, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), void ()* bitcast (void (%struct._GtkEntry*, %struct._GimpPageSelector*)* @gimp_page_selector_range_activate to void ()*), i8* %121, void (i8*, %struct._GClosure*)* null, i32 0)
  %call74 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0)) #6
  %call75 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call74)
  store %struct._GtkWidget* %call75, %struct._GtkWidget** %label, align 8
  %122 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %123 = bitcast %struct._GtkWidget* %122 to %struct._GTypeInstance*
  %call76 = call i64 @gtk_box_get_type() #8
  %call77 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %123, i64 %call76)
  %124 = bitcast %struct._GTypeInstance* %call77 to %struct._GtkBox*
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %124, %struct._GtkWidget* %125, i32 0, i32 0, i32 0)
  %126 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %126)
  %127 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %128 = bitcast %struct._GtkWidget* %127 to %struct._GTypeInstance*
  %call78 = call i64 @gtk_label_get_type() #8
  %call79 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %128, i64 %call78)
  %129 = bitcast %struct._GTypeInstance* %call79 to %struct._GtkLabel*
  %130 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %range_entry80 = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %130, i32 0, i32 5
  %131 = load %struct._GtkWidget*, %struct._GtkWidget** %range_entry80, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %129, %struct._GtkWidget* %131)
  %call81 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call81, %struct._GtkWidget** %hbox, align 8
  %132 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector.addr, align 8
  %133 = bitcast %struct._GimpPageSelector* %132 to %struct._GTypeInstance*
  %call82 = call i64 @gtk_box_get_type() #8
  %call83 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %133, i64 %call82)
  %134 = bitcast %struct._GTypeInstance* %call83 to %struct._GtkBox*
  %135 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %134, %struct._GtkWidget* %135, i32 0, i32 0, i32 0)
  %136 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %136)
  %call84 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0)) #6
  %call85 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call84)
  store %struct._GtkWidget* %call85, %struct._GtkWidget** %label, align 8
  %137 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %138 = bitcast %struct._GtkWidget* %137 to %struct._GTypeInstance*
  %call86 = call i64 @gtk_box_get_type() #8
  %call87 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %138, i64 %call86)
  %139 = bitcast %struct._GTypeInstance* %call87 to %struct._GtkBox*
  %140 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %139, %struct._GtkWidget* %140, i32 0, i32 0, i32 0)
  %141 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %141)
  %142 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector.addr, align 8
  %143 = bitcast %struct._GimpPageSelector* %142 to %struct._GTypeInstance*
  %call88 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %143, i64 80)
  %144 = bitcast %struct._GTypeInstance* %call88 to %struct._GObject*
  %call89 = call %struct._GtkWidget* @gimp_prop_enum_combo_box_new(%struct._GObject* %144, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32 -1, i32 -1)
  store %struct._GtkWidget* %call89, %struct._GtkWidget** %combo, align 8
  %145 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %146 = bitcast %struct._GtkWidget* %145 to %struct._GTypeInstance*
  %call90 = call i64 @gtk_box_get_type() #8
  %call91 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %146, i64 %call90)
  %147 = bitcast %struct._GTypeInstance* %call91 to %struct._GtkBox*
  %148 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %147, %struct._GtkWidget* %148, i32 0, i32 0, i32 0)
  %149 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %149)
  %150 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %151 = bitcast %struct._GtkWidget* %150 to %struct._GTypeInstance*
  %call92 = call i64 @gtk_label_get_type() #8
  %call93 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %151, i64 %call92)
  %152 = bitcast %struct._GTypeInstance* %call93 to %struct._GtkLabel*
  %153 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %152, %struct._GtkWidget* %153)
  %154 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector.addr, align 8
  %155 = bitcast %struct._GimpPageSelector* %154 to %struct._GTypeInstance*
  %call94 = call i64 @gtk_widget_get_type() #8
  %call95 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %155, i64 %call94)
  %156 = bitcast %struct._GTypeInstance* %call95 to %struct._GtkWidget*
  %call96 = call %struct._GdkPixbuf* @gtk_widget_render_icon(%struct._GtkWidget* %156, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i32 5, i8* null)
  %157 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %default_thumbnail = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %157, i32 0, i32 6
  store %struct._GdkPixbuf* %call96, %struct._GdkPixbuf** %default_thumbnail, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_page_selector_new() #3 {
entry:
  %call = call i64 @gimp_page_selector_get_type() #8
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %0 = bitcast i8* %call1 to %struct._GtkWidget*
  ret %struct._GtkWidget* %0
}

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_page_selector_set_n_pages(%struct._GimpPageSelector* %selector, i32 %n_pages) #3 {
entry:
  %selector.addr = alloca %struct._GimpPageSelector*, align 8
  %n_pages.addr = alloca i32, align 4
  %priv = alloca %struct.GimpPageSelectorPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %iter = alloca %struct._GtkTreeIter, align 8
  %i = alloca i32, align 4
  %text = alloca i8*, align 8
  store %struct._GimpPageSelector* %selector, %struct._GimpPageSelector** %selector.addr, align 8
  store i32 %n_pages, i32* %n_pages.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector.addr, align 8
  %1 = bitcast %struct._GimpPageSelector* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_page_selector_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_page_selector_set_n_pages, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.49

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32, i32* %n_pages.addr, align 4
  %cmp12 = icmp sge i32 %13, 0
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_page_selector_set_n_pages, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.49

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector.addr, align 8
  %priv17 = getelementptr inbounds %struct._GimpPageSelector, %struct._GimpPageSelector* %14, i32 0, i32 1
  %15 = load i8*, i8** %priv17, align 8
  %16 = bitcast i8* %15 to %struct.GimpPageSelectorPrivate*
  store %struct.GimpPageSelectorPrivate* %16, %struct.GimpPageSelectorPrivate** %priv, align 8
  %17 = load i32, i32* %n_pages.addr, align 4
  %18 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %n_pages18 = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %18, i32 0, i32 0
  %19 = load i32, i32* %n_pages18, align 4
  %cmp19 = icmp ne i32 %17, %19
  br i1 %cmp19, label %if.then.20, label %if.end.49

if.then.20:                                       ; preds = %do.end.16
  %20 = load i32, i32* %n_pages.addr, align 4
  %21 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %n_pages23 = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %21, i32 0, i32 0
  %22 = load i32, i32* %n_pages23, align 4
  %cmp24 = icmp slt i32 %20, %22
  br i1 %cmp24, label %if.then.25, label %if.else.33

if.then.25:                                       ; preds = %if.then.20
  %23 = load i32, i32* %n_pages.addr, align 4
  store i32 %23, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.25
  %24 = load i32, i32* %i, align 4
  %25 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %n_pages26 = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %25, i32 0, i32 0
  %26 = load i32, i32* %n_pages26, align 4
  %cmp27 = icmp slt i32 %24, %26
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %store = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %27, i32 0, i32 2
  %28 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %29 = bitcast %struct._GtkListStore* %28 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_tree_model_get_type() #8
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call28)
  %30 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkTreeModel*
  %31 = load i32, i32* %n_pages.addr, align 4
  %call30 = call i32 @gtk_tree_model_iter_nth_child(%struct._GtkTreeModel* %30, %struct._GtkTreeIter* %iter, %struct._GtkTreeIter* null, i32 %31)
  %32 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %store31 = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %32, i32 0, i32 2
  %33 = load %struct._GtkListStore*, %struct._GtkListStore** %store31, align 8
  %call32 = call i32 @gtk_list_store_remove(%struct._GtkListStore* %33, %struct._GtkTreeIter* %iter)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load i32, i32* %i, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.46

if.else.33:                                       ; preds = %if.then.20
  %35 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %n_pages34 = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %35, i32 0, i32 0
  %36 = load i32, i32* %n_pages34, align 4
  store i32 %36, i32* %i, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.43, %if.else.33
  %37 = load i32, i32* %i, align 4
  %38 = load i32, i32* %n_pages.addr, align 4
  %cmp36 = icmp slt i32 %37, %38
  br i1 %cmp36, label %for.body.37, label %for.end.45

for.body.37:                                      ; preds = %for.cond.35
  %call39 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0)) #6
  %39 = load i32, i32* %i, align 4
  %add = add nsw i32 %39, 1
  %call40 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call39, i32 %add)
  store i8* %call40, i8** %text, align 8
  %40 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %store41 = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %40, i32 0, i32 2
  %41 = load %struct._GtkListStore*, %struct._GtkListStore** %store41, align 8
  call void @gtk_list_store_append(%struct._GtkListStore* %41, %struct._GtkTreeIter* %iter)
  %42 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %store42 = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %42, i32 0, i32 2
  %43 = load %struct._GtkListStore*, %struct._GtkListStore** %store42, align 8
  %44 = load i32, i32* %i, align 4
  %45 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %default_thumbnail = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %45, i32 0, i32 6
  %46 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %default_thumbnail, align 8
  %47 = load i8*, i8** %text, align 8
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %43, %struct._GtkTreeIter* %iter, i32 0, i32 %44, i32 1, %struct._GdkPixbuf* %46, i32 2, i8* %47, i32 3, i32 0, i32 -1)
  %48 = load i8*, i8** %text, align 8
  call void @g_free(i8* %48)
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.body.37
  %49 = load i32, i32* %i, align 4
  %inc44 = add nsw i32 %49, 1
  store i32 %inc44, i32* %i, align 4
  br label %for.cond.35

for.end.45:                                       ; preds = %for.cond.35
  br label %if.end.46

if.end.46:                                        ; preds = %for.end.45, %for.end
  %50 = load i32, i32* %n_pages.addr, align 4
  %51 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %n_pages47 = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %51, i32 0, i32 0
  store i32 %50, i32* %n_pages47, align 4
  %52 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector.addr, align 8
  %53 = bitcast %struct._GimpPageSelector* %52 to %struct._GTypeInstance*
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 80)
  %54 = bitcast %struct._GTypeInstance* %call48 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.9, %if.else.14, %if.end.46, %do.end.16
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i32 @gtk_tree_model_iter_nth_child(%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_model_get_type() #2

declare i32 @gtk_list_store_remove(%struct._GtkListStore*, %struct._GtkTreeIter*) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #5

declare void @gtk_list_store_append(%struct._GtkListStore*, %struct._GtkTreeIter*) #1

declare void @gtk_list_store_set(%struct._GtkListStore*, %struct._GtkTreeIter*, ...) #1

declare void @g_free(i8*) #1

declare void @g_object_notify(%struct._GObject*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_page_selector_get_n_pages(%struct._GimpPageSelector* %selector) #3 {
entry:
  %retval = alloca i32, align 4
  %selector.addr = alloca %struct._GimpPageSelector*, align 8
  %priv = alloca %struct.GimpPageSelectorPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPageSelector* %selector, %struct._GimpPageSelector** %selector.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector.addr, align 8
  %1 = bitcast %struct._GimpPageSelector* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_page_selector_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_page_selector_get_n_pages, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector.addr, align 8
  %priv11 = getelementptr inbounds %struct._GimpPageSelector, %struct._GimpPageSelector* %13, i32 0, i32 1
  %14 = load i8*, i8** %priv11, align 8
  %15 = bitcast i8* %14 to %struct.GimpPageSelectorPrivate*
  store %struct.GimpPageSelectorPrivate* %15, %struct.GimpPageSelectorPrivate** %priv, align 8
  %16 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %n_pages = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %16, i32 0, i32 0
  %17 = load i32, i32* %n_pages, align 4
  store i32 %17, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define void @gimp_page_selector_set_target(%struct._GimpPageSelector* %selector, i32 %target) #3 {
entry:
  %selector.addr = alloca %struct._GimpPageSelector*, align 8
  %target.addr = alloca i32, align 4
  %priv = alloca %struct.GimpPageSelectorPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPageSelector* %selector, %struct._GimpPageSelector** %selector.addr, align 8
  store i32 %target, i32* %target.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector.addr, align 8
  %1 = bitcast %struct._GimpPageSelector* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_page_selector_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_page_selector_set_target, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.23

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32, i32* %target.addr, align 4
  %cmp12 = icmp ule i32 %13, 1
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_page_selector_set_target, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.23

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector.addr, align 8
  %priv17 = getelementptr inbounds %struct._GimpPageSelector, %struct._GimpPageSelector* %14, i32 0, i32 1
  %15 = load i8*, i8** %priv17, align 8
  %16 = bitcast i8* %15 to %struct.GimpPageSelectorPrivate*
  store %struct.GimpPageSelectorPrivate* %16, %struct.GimpPageSelectorPrivate** %priv, align 8
  %17 = load i32, i32* %target.addr, align 4
  %18 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %target18 = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %18, i32 0, i32 1
  %19 = load i32, i32* %target18, align 4
  %cmp19 = icmp ne i32 %17, %19
  br i1 %cmp19, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %do.end.16
  %20 = load i32, i32* %target.addr, align 4
  %21 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %target21 = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %21, i32 0, i32 1
  store i32 %20, i32* %target21, align 4
  %22 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector.addr, align 8
  %23 = bitcast %struct._GimpPageSelector* %22 to %struct._GTypeInstance*
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 80)
  %24 = bitcast %struct._GTypeInstance* %call22 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.9, %if.else.14, %if.then.20, %do.end.16
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_page_selector_get_target(%struct._GimpPageSelector* %selector) #3 {
entry:
  %retval = alloca i32, align 4
  %selector.addr = alloca %struct._GimpPageSelector*, align 8
  %priv = alloca %struct.GimpPageSelectorPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPageSelector* %selector, %struct._GimpPageSelector** %selector.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector.addr, align 8
  %1 = bitcast %struct._GimpPageSelector* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_page_selector_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_page_selector_get_target, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector.addr, align 8
  %priv11 = getelementptr inbounds %struct._GimpPageSelector, %struct._GimpPageSelector* %13, i32 0, i32 1
  %14 = load i8*, i8** %priv11, align 8
  %15 = bitcast i8* %14 to %struct.GimpPageSelectorPrivate*
  store %struct.GimpPageSelectorPrivate* %15, %struct.GimpPageSelectorPrivate** %priv, align 8
  %16 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %target = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %16, i32 0, i32 1
  %17 = load i32, i32* %target, align 4
  store i32 %17, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define void @gimp_page_selector_set_page_thumbnail(%struct._GimpPageSelector* %selector, i32 %page_no, %struct._GdkPixbuf* %thumbnail) #3 {
entry:
  %selector.addr = alloca %struct._GimpPageSelector*, align 8
  %page_no.addr = alloca i32, align 4
  %thumbnail.addr = alloca %struct._GdkPixbuf*, align 8
  %priv = alloca %struct.GimpPageSelectorPrivate*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpPageSelector* %selector, %struct._GimpPageSelector** %selector.addr, align 8
  store i32 %page_no, i32* %page_no.addr, align 4
  store %struct._GdkPixbuf* %thumbnail, %struct._GdkPixbuf** %thumbnail.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector.addr, align 8
  %1 = bitcast %struct._GimpPageSelector* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_page_selector_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_page_selector_set_page_thumbnail, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %thumbnail.addr, align 8
  %cmp12 = icmp eq %struct._GdkPixbuf* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %thumbnail.addr, align 8
  %15 = bitcast %struct._GdkPixbuf* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gdk_pixbuf_get_type() #8
  store i64 %call17, i64* %__t16, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %lor.lhs.false
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %tobool24 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.else.30

land.lhs.true.25:                                 ; preds = %if.else.22
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type27, align 8
  %22 = load i64, i64* %__t16, align 8
  %cmp28 = icmp eq i64 %21, %22
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %land.lhs.true.25
  store i32 1, i32* %__r19, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %land.lhs.true.25, %if.else.22
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %24 = load i64, i64* %__t16, align 8
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #9
  store i32 %call31, i32* %__r19, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.21
  %25 = load i32, i32* %__r19, align 4
  store i32 %25, i32* %tmp34
  %26 = load i32, i32* %tmp34
  %tobool35 = icmp ne i32 %26, 0
  br i1 %tobool35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.end.33, %do.body.11
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_page_selector_set_page_thumbnail, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector.addr, align 8
  %priv40 = getelementptr inbounds %struct._GimpPageSelector, %struct._GimpPageSelector* %27, i32 0, i32 1
  %28 = load i8*, i8** %priv40, align 8
  %29 = bitcast i8* %28 to %struct.GimpPageSelectorPrivate*
  store %struct.GimpPageSelectorPrivate* %29, %struct.GimpPageSelectorPrivate** %priv, align 8
  br label %do.body.41

do.body.41:                                       ; preds = %do.end.39
  %30 = load i32, i32* %page_no.addr, align 4
  %cmp42 = icmp sge i32 %30, 0
  br i1 %cmp42, label %land.lhs.true.43, label %if.else.46

land.lhs.true.43:                                 ; preds = %do.body.41
  %31 = load i32, i32* %page_no.addr, align 4
  %32 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %n_pages = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %32, i32 0, i32 0
  %33 = load i32, i32* %n_pages, align 4
  %cmp44 = icmp slt i32 %31, %33
  br i1 %cmp44, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %land.lhs.true.43
  br label %if.end.47

if.else.46:                                       ; preds = %land.lhs.true.43, %do.body.41
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_page_selector_set_page_thumbnail, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i32 0, i32 0))
  br label %return

if.end.47:                                        ; preds = %if.then.45
  br label %do.end.48

do.end.48:                                        ; preds = %if.end.47
  %34 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %store = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %34, i32 0, i32 2
  %35 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %36 = bitcast %struct._GtkListStore* %35 to %struct._GTypeInstance*
  %call49 = call i64 @gtk_tree_model_get_type() #8
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call49)
  %37 = bitcast %struct._GTypeInstance* %call50 to %struct._GtkTreeModel*
  %38 = load i32, i32* %page_no.addr, align 4
  %call51 = call i32 @gtk_tree_model_iter_nth_child(%struct._GtkTreeModel* %37, %struct._GtkTreeIter* %iter, %struct._GtkTreeIter* null, i32 %38)
  %39 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %thumbnail.addr, align 8
  %tobool52 = icmp ne %struct._GdkPixbuf* %39, null
  br i1 %tobool52, label %if.else.55, label %if.then.53

if.then.53:                                       ; preds = %do.end.48
  %40 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %default_thumbnail = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %40, i32 0, i32 6
  %41 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %default_thumbnail, align 8
  %42 = bitcast %struct._GdkPixbuf* %41 to i8*
  %call54 = call i8* @g_object_ref(i8* %42)
  %43 = bitcast i8* %call54 to %struct._GdkPixbuf*
  store %struct._GdkPixbuf* %43, %struct._GdkPixbuf** %thumbnail.addr, align 8
  br label %if.end.59

if.else.55:                                       ; preds = %do.end.48
  %44 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector.addr, align 8
  %45 = bitcast %struct._GimpPageSelector* %44 to %struct._GTypeInstance*
  %call56 = call i64 @gtk_widget_get_type() #8
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call56)
  %46 = bitcast %struct._GTypeInstance* %call57 to %struct._GtkWidget*
  %47 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %thumbnail.addr, align 8
  %call58 = call %struct._GdkPixbuf* @gimp_page_selector_add_frame(%struct._GtkWidget* %46, %struct._GdkPixbuf* %47)
  store %struct._GdkPixbuf* %call58, %struct._GdkPixbuf** %thumbnail.addr, align 8
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.55, %if.then.53
  %48 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %store60 = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %48, i32 0, i32 2
  %49 = load %struct._GtkListStore*, %struct._GtkListStore** %store60, align 8
  %50 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %thumbnail.addr, align 8
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %49, %struct._GtkTreeIter* %iter, i32 1, %struct._GdkPixbuf* %50, i32 -1)
  %51 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %thumbnail.addr, align 8
  %52 = bitcast %struct._GdkPixbuf* %51 to i8*
  call void @g_object_unref(i8* %52)
  br label %return

return:                                           ; preds = %if.end.59, %if.else.46, %if.else.37, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gdk_pixbuf_get_type() #2

declare i8* @g_object_ref(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GdkPixbuf* @gimp_page_selector_add_frame(%struct._GtkWidget* %widget, %struct._GdkPixbuf* %pixbuf) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %pixbuf.addr = alloca %struct._GdkPixbuf*, align 8
  %frame = alloca %struct._GdkPixbuf*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkPixbuf* %pixbuf, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %0 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %call = call i32 @gdk_pixbuf_get_width(%struct._GdkPixbuf* %0)
  store i32 %call, i32* %width, align 4
  %1 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %call1 = call i32 @gdk_pixbuf_get_height(%struct._GdkPixbuf* %1)
  store i32 %call1, i32* %height, align 4
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 80)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GObject*
  %call3 = call i8* @g_object_get_data(%struct._GObject* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0))
  %5 = bitcast i8* %call3 to %struct._GdkPixbuf*
  store %struct._GdkPixbuf* %5, %struct._GdkPixbuf** %frame, align 8
  %6 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %frame, align 8
  %tobool = icmp ne %struct._GdkPixbuf* %6, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call4 = call %struct._GdkPixbuf* @gtk_widget_render_icon(%struct._GtkWidget* %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0), i32 6, i8* null)
  store %struct._GdkPixbuf* %call4, %struct._GdkPixbuf** %frame, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 80)
  %10 = bitcast %struct._GTypeInstance* %call5 to %struct._GObject*
  %11 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %frame, align 8
  %12 = bitcast %struct._GdkPixbuf* %11 to i8*
  call void @g_object_set_data_full(%struct._GObject* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i8* %12, void (i8*)* @g_object_unref)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %frame, align 8
  %14 = load i32, i32* %width, align 4
  %add = add nsw i32 %14, 2
  %add6 = add nsw i32 %add, 4
  %15 = load i32, i32* %height, align 4
  %add7 = add nsw i32 %15, 2
  %add8 = add nsw i32 %add7, 4
  %call9 = call %struct._GdkPixbuf* @stretch_frame_image(%struct._GdkPixbuf* %13, i32 2, i32 2, i32 4, i32 4, i32 %add6, i32 %add8)
  store %struct._GdkPixbuf* %call9, %struct._GdkPixbuf** %frame, align 8
  %16 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %17 = load i32, i32* %width, align 4
  %18 = load i32, i32* %height, align 4
  %19 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %frame, align 8
  call void @gdk_pixbuf_copy_area(%struct._GdkPixbuf* %16, i32 0, i32 0, i32 %17, i32 %18, %struct._GdkPixbuf* %19, i32 2, i32 2)
  %20 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %frame, align 8
  ret %struct._GdkPixbuf* %20
}

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define %struct._GdkPixbuf* @gimp_page_selector_get_page_thumbnail(%struct._GimpPageSelector* %selector, i32 %page_no) #3 {
entry:
  %retval = alloca %struct._GdkPixbuf*, align 8
  %selector.addr = alloca %struct._GimpPageSelector*, align 8
  %page_no.addr = alloca i32, align 4
  %priv = alloca %struct.GimpPageSelectorPrivate*, align 8
  %thumbnail = alloca %struct._GdkPixbuf*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPageSelector* %selector, %struct._GimpPageSelector** %selector.addr, align 8
  store i32 %page_no, i32* %page_no.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector.addr, align 8
  %1 = bitcast %struct._GimpPageSelector* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_page_selector_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_page_selector_get_page_thumbnail, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GdkPixbuf* null, %struct._GdkPixbuf** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector.addr, align 8
  %priv11 = getelementptr inbounds %struct._GimpPageSelector, %struct._GimpPageSelector* %13, i32 0, i32 1
  %14 = load i8*, i8** %priv11, align 8
  %15 = bitcast i8* %14 to %struct.GimpPageSelectorPrivate*
  store %struct.GimpPageSelectorPrivate* %15, %struct.GimpPageSelectorPrivate** %priv, align 8
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %16 = load i32, i32* %page_no.addr, align 4
  %cmp13 = icmp sge i32 %16, 0
  br i1 %cmp13, label %land.lhs.true.14, label %if.else.17

land.lhs.true.14:                                 ; preds = %do.body.12
  %17 = load i32, i32* %page_no.addr, align 4
  %18 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %n_pages = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %18, i32 0, i32 0
  %19 = load i32, i32* %n_pages, align 4
  %cmp15 = icmp slt i32 %17, %19
  br i1 %cmp15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %land.lhs.true.14
  br label %if.end.18

if.else.17:                                       ; preds = %land.lhs.true.14, %do.body.12
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_page_selector_get_page_thumbnail, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i32 0, i32 0))
  store %struct._GdkPixbuf* null, %struct._GdkPixbuf** %retval
  br label %return

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  %20 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %store = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %20, i32 0, i32 2
  %21 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %22 = bitcast %struct._GtkListStore* %21 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_tree_model_get_type() #8
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call20)
  %23 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkTreeModel*
  %24 = load i32, i32* %page_no.addr, align 4
  %call22 = call i32 @gtk_tree_model_iter_nth_child(%struct._GtkTreeModel* %23, %struct._GtkTreeIter* %iter, %struct._GtkTreeIter* null, i32 %24)
  %25 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %store23 = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %25, i32 0, i32 2
  %26 = load %struct._GtkListStore*, %struct._GtkListStore** %store23, align 8
  %27 = bitcast %struct._GtkListStore* %26 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_tree_model_get_type() #8
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call24)
  %28 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkTreeModel*
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %28, %struct._GtkTreeIter* %iter, i32 1, %struct._GdkPixbuf** %thumbnail, i32 -1)
  %29 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %thumbnail, align 8
  %tobool26 = icmp ne %struct._GdkPixbuf* %29, null
  br i1 %tobool26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %do.end.19
  %30 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %thumbnail, align 8
  %31 = bitcast %struct._GdkPixbuf* %30 to i8*
  call void @g_object_unref(i8* %31)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %do.end.19
  %32 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %thumbnail, align 8
  %33 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %default_thumbnail = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %33, i32 0, i32 6
  %34 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %default_thumbnail, align 8
  %cmp29 = icmp eq %struct._GdkPixbuf* %32, %34
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.28
  store %struct._GdkPixbuf* null, %struct._GdkPixbuf** %retval
  br label %return

if.end.31:                                        ; preds = %if.end.28
  %35 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %thumbnail, align 8
  store %struct._GdkPixbuf* %35, %struct._GdkPixbuf** %retval
  br label %return

return:                                           ; preds = %if.end.31, %if.then.30, %if.else.17, %if.else.9
  %36 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %retval
  ret %struct._GdkPixbuf* %36
}

declare void @gtk_tree_model_get(%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_page_selector_set_page_label(%struct._GimpPageSelector* %selector, i32 %page_no, i8* %label) #3 {
entry:
  %selector.addr = alloca %struct._GimpPageSelector*, align 8
  %page_no.addr = alloca i32, align 4
  %label.addr = alloca i8*, align 8
  %priv = alloca %struct.GimpPageSelectorPrivate*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %tmp = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp10 = alloca i32, align 4
  store %struct._GimpPageSelector* %selector, %struct._GimpPageSelector** %selector.addr, align 8
  store i32 %page_no, i32* %page_no.addr, align 4
  store i8* %label, i8** %label.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector.addr, align 8
  %1 = bitcast %struct._GimpPageSelector* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_page_selector_get_type() #8
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.9

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool4 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool4, label %land.lhs.true, label %if.else.7

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.7:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call8 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
  store i32 %call8, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.7, %if.then.6
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp10
  %12 = load i32, i32* %tmp10
  %tobool11 = icmp ne i32 %12, 0
  br i1 %tobool11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.end.9
  br label %if.end.14

if.else.13:                                       ; preds = %if.end.9
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_page_selector_set_page_label, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.37

if.end.14:                                        ; preds = %if.then.12
  br label %do.end

do.end:                                           ; preds = %if.end.14
  %13 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector.addr, align 8
  %priv15 = getelementptr inbounds %struct._GimpPageSelector, %struct._GimpPageSelector* %13, i32 0, i32 1
  %14 = load i8*, i8** %priv15, align 8
  %15 = bitcast i8* %14 to %struct.GimpPageSelectorPrivate*
  store %struct.GimpPageSelectorPrivate* %15, %struct.GimpPageSelectorPrivate** %priv, align 8
  br label %do.body.16

do.body.16:                                       ; preds = %do.end
  %16 = load i32, i32* %page_no.addr, align 4
  %cmp17 = icmp sge i32 %16, 0
  br i1 %cmp17, label %land.lhs.true.18, label %if.else.21

land.lhs.true.18:                                 ; preds = %do.body.16
  %17 = load i32, i32* %page_no.addr, align 4
  %18 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %n_pages = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %18, i32 0, i32 0
  %19 = load i32, i32* %n_pages, align 4
  %cmp19 = icmp slt i32 %17, %19
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %land.lhs.true.18
  br label %if.end.22

if.else.21:                                       ; preds = %land.lhs.true.18, %do.body.16
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_page_selector_set_page_label, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.37

if.end.22:                                        ; preds = %if.then.20
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  %20 = load i8*, i8** %label.addr, align 8
  %tobool24 = icmp ne i8* %20, null
  br i1 %tobool24, label %if.else.28, label %if.then.25

if.then.25:                                       ; preds = %do.end.23
  %call26 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0)) #6
  %21 = load i32, i32* %page_no.addr, align 4
  %add = add nsw i32 %21, 1
  %call27 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call26, i32 %add)
  store i8* %call27, i8** %tmp, align 8
  br label %if.end.29

if.else.28:                                       ; preds = %do.end.23
  %22 = load i8*, i8** %label.addr, align 8
  store i8* %22, i8** %tmp, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.28, %if.then.25
  %23 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %store = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %23, i32 0, i32 2
  %24 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %25 = bitcast %struct._GtkListStore* %24 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_tree_model_get_type() #8
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call30)
  %26 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkTreeModel*
  %27 = load i32, i32* %page_no.addr, align 4
  %call32 = call i32 @gtk_tree_model_iter_nth_child(%struct._GtkTreeModel* %26, %struct._GtkTreeIter* %iter, %struct._GtkTreeIter* null, i32 %27)
  %28 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %store33 = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %28, i32 0, i32 2
  %29 = load %struct._GtkListStore*, %struct._GtkListStore** %store33, align 8
  %30 = load i8*, i8** %tmp, align 8
  %31 = load i8*, i8** %label.addr, align 8
  %cmp34 = icmp ne i8* %31, null
  %conv = zext i1 %cmp34 to i32
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %29, %struct._GtkTreeIter* %iter, i32 2, i8* %30, i32 3, i32 %conv, i32 -1)
  %32 = load i8*, i8** %label.addr, align 8
  %tobool35 = icmp ne i8* %32, null
  br i1 %tobool35, label %if.end.37, label %if.then.36

if.then.36:                                       ; preds = %if.end.29
  %33 = load i8*, i8** %tmp, align 8
  call void @g_free(i8* %33)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.13, %if.else.21, %if.then.36, %if.end.29
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @gimp_page_selector_get_page_label(%struct._GimpPageSelector* %selector, i32 %page_no) #3 {
entry:
  %retval = alloca i8*, align 8
  %selector.addr = alloca %struct._GimpPageSelector*, align 8
  %page_no.addr = alloca i32, align 4
  %priv = alloca %struct.GimpPageSelectorPrivate*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %label = alloca i8*, align 8
  %label_set = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPageSelector* %selector, %struct._GimpPageSelector** %selector.addr, align 8
  store i32 %page_no, i32* %page_no.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector.addr, align 8
  %1 = bitcast %struct._GimpPageSelector* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_page_selector_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_page_selector_get_page_label, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector.addr, align 8
  %priv11 = getelementptr inbounds %struct._GimpPageSelector, %struct._GimpPageSelector* %13, i32 0, i32 1
  %14 = load i8*, i8** %priv11, align 8
  %15 = bitcast i8* %14 to %struct.GimpPageSelectorPrivate*
  store %struct.GimpPageSelectorPrivate* %15, %struct.GimpPageSelectorPrivate** %priv, align 8
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %16 = load i32, i32* %page_no.addr, align 4
  %cmp13 = icmp sge i32 %16, 0
  br i1 %cmp13, label %land.lhs.true.14, label %if.else.17

land.lhs.true.14:                                 ; preds = %do.body.12
  %17 = load i32, i32* %page_no.addr, align 4
  %18 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %n_pages = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %18, i32 0, i32 0
  %19 = load i32, i32* %n_pages, align 4
  %cmp15 = icmp slt i32 %17, %19
  br i1 %cmp15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %land.lhs.true.14
  br label %if.end.18

if.else.17:                                       ; preds = %land.lhs.true.14, %do.body.12
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_page_selector_get_page_label, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  %20 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %store = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %20, i32 0, i32 2
  %21 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %22 = bitcast %struct._GtkListStore* %21 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_tree_model_get_type() #8
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call20)
  %23 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkTreeModel*
  %24 = load i32, i32* %page_no.addr, align 4
  %call22 = call i32 @gtk_tree_model_iter_nth_child(%struct._GtkTreeModel* %23, %struct._GtkTreeIter* %iter, %struct._GtkTreeIter* null, i32 %24)
  %25 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %store23 = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %25, i32 0, i32 2
  %26 = load %struct._GtkListStore*, %struct._GtkListStore** %store23, align 8
  %27 = bitcast %struct._GtkListStore* %26 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_tree_model_get_type() #8
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call24)
  %28 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkTreeModel*
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %28, %struct._GtkTreeIter* %iter, i32 2, i8** %label, i32 3, i32* %label_set, i32 -1)
  %29 = load i32, i32* %label_set, align 4
  %tobool26 = icmp ne i32 %29, 0
  br i1 %tobool26, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %do.end.19
  %30 = load i8*, i8** %label, align 8
  call void @g_free(i8* %30)
  store i8* null, i8** %label, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %do.end.19
  %31 = load i8*, i8** %label, align 8
  store i8* %31, i8** %retval
  br label %return

return:                                           ; preds = %if.end.28, %if.else.17, %if.else.9
  %32 = load i8*, i8** %retval
  ret i8* %32
}

; Function Attrs: nounwind uwtable
define void @gimp_page_selector_select_all(%struct._GimpPageSelector* %selector) #3 {
entry:
  %selector.addr = alloca %struct._GimpPageSelector*, align 8
  %priv = alloca %struct.GimpPageSelectorPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPageSelector* %selector, %struct._GimpPageSelector** %selector.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector.addr, align 8
  %1 = bitcast %struct._GimpPageSelector* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_page_selector_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_page_selector_select_all, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector.addr, align 8
  %priv11 = getelementptr inbounds %struct._GimpPageSelector, %struct._GimpPageSelector* %13, i32 0, i32 1
  %14 = load i8*, i8** %priv11, align 8
  %15 = bitcast i8* %14 to %struct.GimpPageSelectorPrivate*
  store %struct.GimpPageSelectorPrivate* %15, %struct.GimpPageSelectorPrivate** %priv, align 8
  %16 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %view = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %16, i32 0, i32 3
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_icon_view_get_type() #8
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call12)
  %19 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkIconView*
  call void @gtk_icon_view_select_all(%struct._GtkIconView* %19)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

declare void @gtk_icon_view_select_all(%struct._GtkIconView*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_icon_view_get_type() #2

; Function Attrs: nounwind uwtable
define void @gimp_page_selector_unselect_all(%struct._GimpPageSelector* %selector) #3 {
entry:
  %selector.addr = alloca %struct._GimpPageSelector*, align 8
  %priv = alloca %struct.GimpPageSelectorPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPageSelector* %selector, %struct._GimpPageSelector** %selector.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector.addr, align 8
  %1 = bitcast %struct._GimpPageSelector* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_page_selector_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_page_selector_unselect_all, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector.addr, align 8
  %priv11 = getelementptr inbounds %struct._GimpPageSelector, %struct._GimpPageSelector* %13, i32 0, i32 1
  %14 = load i8*, i8** %priv11, align 8
  %15 = bitcast i8* %14 to %struct.GimpPageSelectorPrivate*
  store %struct.GimpPageSelectorPrivate* %15, %struct.GimpPageSelectorPrivate** %priv, align 8
  %16 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %view = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %16, i32 0, i32 3
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_icon_view_get_type() #8
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call12)
  %19 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkIconView*
  call void @gtk_icon_view_unselect_all(%struct._GtkIconView* %19)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

declare void @gtk_icon_view_unselect_all(%struct._GtkIconView*) #1

; Function Attrs: nounwind uwtable
define void @gimp_page_selector_select_page(%struct._GimpPageSelector* %selector, i32 %page_no) #3 {
entry:
  %selector.addr = alloca %struct._GimpPageSelector*, align 8
  %page_no.addr = alloca i32, align 4
  %priv = alloca %struct.GimpPageSelectorPrivate*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %path = alloca %struct._GtkTreePath*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPageSelector* %selector, %struct._GimpPageSelector** %selector.addr, align 8
  store i32 %page_no, i32* %page_no.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector.addr, align 8
  %1 = bitcast %struct._GimpPageSelector* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_page_selector_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_page_selector_select_page, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector.addr, align 8
  %priv11 = getelementptr inbounds %struct._GimpPageSelector, %struct._GimpPageSelector* %13, i32 0, i32 1
  %14 = load i8*, i8** %priv11, align 8
  %15 = bitcast i8* %14 to %struct.GimpPageSelectorPrivate*
  store %struct.GimpPageSelectorPrivate* %15, %struct.GimpPageSelectorPrivate** %priv, align 8
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %16 = load i32, i32* %page_no.addr, align 4
  %cmp13 = icmp sge i32 %16, 0
  br i1 %cmp13, label %land.lhs.true.14, label %if.else.17

land.lhs.true.14:                                 ; preds = %do.body.12
  %17 = load i32, i32* %page_no.addr, align 4
  %18 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %n_pages = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %18, i32 0, i32 0
  %19 = load i32, i32* %n_pages, align 4
  %cmp15 = icmp slt i32 %17, %19
  br i1 %cmp15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %land.lhs.true.14
  br label %if.end.18

if.else.17:                                       ; preds = %land.lhs.true.14, %do.body.12
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_page_selector_select_page, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i32 0, i32 0))
  br label %return

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  %20 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %store = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %20, i32 0, i32 2
  %21 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %22 = bitcast %struct._GtkListStore* %21 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_tree_model_get_type() #8
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call20)
  %23 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkTreeModel*
  %24 = load i32, i32* %page_no.addr, align 4
  %call22 = call i32 @gtk_tree_model_iter_nth_child(%struct._GtkTreeModel* %23, %struct._GtkTreeIter* %iter, %struct._GtkTreeIter* null, i32 %24)
  %25 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %store23 = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %25, i32 0, i32 2
  %26 = load %struct._GtkListStore*, %struct._GtkListStore** %store23, align 8
  %27 = bitcast %struct._GtkListStore* %26 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_tree_model_get_type() #8
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call24)
  %28 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkTreeModel*
  %call26 = call %struct._GtkTreePath* @gtk_tree_model_get_path(%struct._GtkTreeModel* %28, %struct._GtkTreeIter* %iter)
  store %struct._GtkTreePath* %call26, %struct._GtkTreePath** %path, align 8
  %29 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %view = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %29, i32 0, i32 3
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_icon_view_get_type() #8
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call27)
  %32 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkIconView*
  %33 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_icon_view_select_path(%struct._GtkIconView* %32, %struct._GtkTreePath* %33)
  %34 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %34)
  br label %return

return:                                           ; preds = %do.end.19, %if.else.17, %if.else.9
  ret void
}

declare %struct._GtkTreePath* @gtk_tree_model_get_path(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

declare void @gtk_icon_view_select_path(%struct._GtkIconView*, %struct._GtkTreePath*) #1

declare void @gtk_tree_path_free(%struct._GtkTreePath*) #1

; Function Attrs: nounwind uwtable
define void @gimp_page_selector_unselect_page(%struct._GimpPageSelector* %selector, i32 %page_no) #3 {
entry:
  %selector.addr = alloca %struct._GimpPageSelector*, align 8
  %page_no.addr = alloca i32, align 4
  %priv = alloca %struct.GimpPageSelectorPrivate*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %path = alloca %struct._GtkTreePath*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPageSelector* %selector, %struct._GimpPageSelector** %selector.addr, align 8
  store i32 %page_no, i32* %page_no.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector.addr, align 8
  %1 = bitcast %struct._GimpPageSelector* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_page_selector_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_page_selector_unselect_page, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector.addr, align 8
  %priv11 = getelementptr inbounds %struct._GimpPageSelector, %struct._GimpPageSelector* %13, i32 0, i32 1
  %14 = load i8*, i8** %priv11, align 8
  %15 = bitcast i8* %14 to %struct.GimpPageSelectorPrivate*
  store %struct.GimpPageSelectorPrivate* %15, %struct.GimpPageSelectorPrivate** %priv, align 8
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %16 = load i32, i32* %page_no.addr, align 4
  %cmp13 = icmp sge i32 %16, 0
  br i1 %cmp13, label %land.lhs.true.14, label %if.else.17

land.lhs.true.14:                                 ; preds = %do.body.12
  %17 = load i32, i32* %page_no.addr, align 4
  %18 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %n_pages = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %18, i32 0, i32 0
  %19 = load i32, i32* %n_pages, align 4
  %cmp15 = icmp slt i32 %17, %19
  br i1 %cmp15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %land.lhs.true.14
  br label %if.end.18

if.else.17:                                       ; preds = %land.lhs.true.14, %do.body.12
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_page_selector_unselect_page, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i32 0, i32 0))
  br label %return

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  %20 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %store = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %20, i32 0, i32 2
  %21 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %22 = bitcast %struct._GtkListStore* %21 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_tree_model_get_type() #8
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call20)
  %23 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkTreeModel*
  %24 = load i32, i32* %page_no.addr, align 4
  %call22 = call i32 @gtk_tree_model_iter_nth_child(%struct._GtkTreeModel* %23, %struct._GtkTreeIter* %iter, %struct._GtkTreeIter* null, i32 %24)
  %25 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %store23 = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %25, i32 0, i32 2
  %26 = load %struct._GtkListStore*, %struct._GtkListStore** %store23, align 8
  %27 = bitcast %struct._GtkListStore* %26 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_tree_model_get_type() #8
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call24)
  %28 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkTreeModel*
  %call26 = call %struct._GtkTreePath* @gtk_tree_model_get_path(%struct._GtkTreeModel* %28, %struct._GtkTreeIter* %iter)
  store %struct._GtkTreePath* %call26, %struct._GtkTreePath** %path, align 8
  %29 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %view = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %29, i32 0, i32 3
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_icon_view_get_type() #8
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call27)
  %32 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkIconView*
  %33 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_icon_view_unselect_path(%struct._GtkIconView* %32, %struct._GtkTreePath* %33)
  %34 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %34)
  br label %return

return:                                           ; preds = %do.end.19, %if.else.17, %if.else.9
  ret void
}

declare void @gtk_icon_view_unselect_path(%struct._GtkIconView*, %struct._GtkTreePath*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_page_selector_page_is_selected(%struct._GimpPageSelector* %selector, i32 %page_no) #3 {
entry:
  %retval = alloca i32, align 4
  %selector.addr = alloca %struct._GimpPageSelector*, align 8
  %page_no.addr = alloca i32, align 4
  %priv = alloca %struct.GimpPageSelectorPrivate*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %path = alloca %struct._GtkTreePath*, align 8
  %selected = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPageSelector* %selector, %struct._GimpPageSelector** %selector.addr, align 8
  store i32 %page_no, i32* %page_no.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector.addr, align 8
  %1 = bitcast %struct._GimpPageSelector* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_page_selector_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_page_selector_page_is_selected, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector.addr, align 8
  %priv11 = getelementptr inbounds %struct._GimpPageSelector, %struct._GimpPageSelector* %13, i32 0, i32 1
  %14 = load i8*, i8** %priv11, align 8
  %15 = bitcast i8* %14 to %struct.GimpPageSelectorPrivate*
  store %struct.GimpPageSelectorPrivate* %15, %struct.GimpPageSelectorPrivate** %priv, align 8
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %16 = load i32, i32* %page_no.addr, align 4
  %cmp13 = icmp sge i32 %16, 0
  br i1 %cmp13, label %land.lhs.true.14, label %if.else.17

land.lhs.true.14:                                 ; preds = %do.body.12
  %17 = load i32, i32* %page_no.addr, align 4
  %18 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %n_pages = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %18, i32 0, i32 0
  %19 = load i32, i32* %n_pages, align 4
  %cmp15 = icmp slt i32 %17, %19
  br i1 %cmp15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %land.lhs.true.14
  br label %if.end.18

if.else.17:                                       ; preds = %land.lhs.true.14, %do.body.12
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_page_selector_page_is_selected, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  %20 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %store = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %20, i32 0, i32 2
  %21 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %22 = bitcast %struct._GtkListStore* %21 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_tree_model_get_type() #8
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call20)
  %23 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkTreeModel*
  %24 = load i32, i32* %page_no.addr, align 4
  %call22 = call i32 @gtk_tree_model_iter_nth_child(%struct._GtkTreeModel* %23, %struct._GtkTreeIter* %iter, %struct._GtkTreeIter* null, i32 %24)
  %25 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %store23 = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %25, i32 0, i32 2
  %26 = load %struct._GtkListStore*, %struct._GtkListStore** %store23, align 8
  %27 = bitcast %struct._GtkListStore* %26 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_tree_model_get_type() #8
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call24)
  %28 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkTreeModel*
  %call26 = call %struct._GtkTreePath* @gtk_tree_model_get_path(%struct._GtkTreeModel* %28, %struct._GtkTreeIter* %iter)
  store %struct._GtkTreePath* %call26, %struct._GtkTreePath** %path, align 8
  %29 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %view = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %29, i32 0, i32 3
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_icon_view_get_type() #8
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call27)
  %32 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkIconView*
  %33 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  %call29 = call i32 @gtk_icon_view_path_is_selected(%struct._GtkIconView* %32, %struct._GtkTreePath* %33)
  store i32 %call29, i32* %selected, align 4
  %34 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %34)
  %35 = load i32, i32* %selected, align 4
  store i32 %35, i32* %retval
  br label %return

return:                                           ; preds = %do.end.19, %if.else.17, %if.else.9
  %36 = load i32, i32* %retval
  ret i32 %36
}

declare i32 @gtk_icon_view_path_is_selected(%struct._GtkIconView*, %struct._GtkTreePath*) #1

; Function Attrs: nounwind uwtable
define i32* @gimp_page_selector_get_selected_pages(%struct._GimpPageSelector* %selector, i32* %n_selected_pages) #3 {
entry:
  %retval = alloca i32*, align 8
  %selector.addr = alloca %struct._GimpPageSelector*, align 8
  %n_selected_pages.addr = alloca i32*, align 8
  %priv = alloca %struct.GimpPageSelectorPrivate*, align 8
  %selected = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %array = alloca i32*, align 8
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %indices = alloca i32*, align 8
  store %struct._GimpPageSelector* %selector, %struct._GimpPageSelector** %selector.addr, align 8
  store i32* %n_selected_pages, i32** %n_selected_pages.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector.addr, align 8
  %1 = bitcast %struct._GimpPageSelector* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_page_selector_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_page_selector_get_selected_pages, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0))
  store i32* null, i32** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32*, i32** %n_selected_pages.addr, align 8
  %cmp12 = icmp ne i32* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_page_selector_get_selected_pages, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i32 0, i32 0))
  store i32* null, i32** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector.addr, align 8
  %priv17 = getelementptr inbounds %struct._GimpPageSelector, %struct._GimpPageSelector* %14, i32 0, i32 1
  %15 = load i8*, i8** %priv17, align 8
  %16 = bitcast i8* %15 to %struct.GimpPageSelectorPrivate*
  store %struct.GimpPageSelectorPrivate* %16, %struct.GimpPageSelectorPrivate** %priv, align 8
  %17 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %view = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %17, i32 0, i32 3
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_icon_view_get_type() #8
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call18)
  %20 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkIconView*
  %call20 = call %struct._GList* @gtk_icon_view_get_selected_items(%struct._GtkIconView* %20)
  store %struct._GList* %call20, %struct._GList** %selected, align 8
  %21 = load %struct._GList*, %struct._GList** %selected, align 8
  %call21 = call i32 @g_list_length(%struct._GList* %21)
  %22 = load i32*, i32** %n_selected_pages.addr, align 8
  store i32 %call21, i32* %22, align 4
  %23 = load i32*, i32** %n_selected_pages.addr, align 8
  %24 = load i32, i32* %23, align 4
  %conv = sext i32 %24 to i64
  %call22 = call noalias i8* @g_malloc0_n(i64 %conv, i64 4)
  %25 = bitcast i8* %call22 to i32*
  store i32* %25, i32** %array, align 8
  %26 = load %struct._GList*, %struct._GList** %selected, align 8
  store %struct._GList* %26, %struct._GList** %list, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end.16
  %27 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool23 = icmp ne %struct._GList* %27, null
  br i1 %tobool23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %28, i32 0, i32 0
  %29 = load i8*, i8** %data, align 8
  %30 = bitcast i8* %29 to %struct._GtkTreePath*
  %call25 = call i32* @gtk_tree_path_get_indices(%struct._GtkTreePath* %30)
  store i32* %call25, i32** %indices, align 8
  %31 = load i32*, i32** %indices, align 8
  %arrayidx = getelementptr inbounds i32, i32* %31, i64 0
  %32 = load i32, i32* %arrayidx, align 4
  %33 = load i32, i32* %i, align 4
  %idxprom = sext i32 %33 to i64
  %34 = load i32*, i32** %array, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %34, i64 %idxprom
  store i32 %32, i32* %arrayidx26, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %35 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool27 = icmp ne %struct._GList* %35, null
  br i1 %tobool27, label %cond.true, label %cond.false

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
  %38 = load i32, i32* %i, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load i32*, i32** %array, align 8
  %40 = bitcast i32* %39 to i8*
  %41 = load i32*, i32** %n_selected_pages.addr, align 8
  %42 = load i32, i32* %41, align 4
  %conv28 = sext i32 %42 to i64
  call void @qsort(i8* %40, i64 %conv28, i64 4, i32 (i8*, i8*)* @gimp_page_selector_int_compare)
  %43 = load %struct._GList*, %struct._GList** %selected, align 8
  call void @g_list_free_full(%struct._GList* %43, void (i8*)* bitcast (void (%struct._GtkTreePath*)* @gtk_tree_path_free to void (i8*)*))
  %44 = load i32*, i32** %array, align 8
  store i32* %44, i32** %retval
  br label %return

return:                                           ; preds = %for.end, %if.else.14, %if.else.9
  %45 = load i32*, i32** %retval
  ret i32* %45
}

declare %struct._GList* @gtk_icon_view_get_selected_items(%struct._GtkIconView*) #1

declare i32 @g_list_length(%struct._GList*) #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

declare i32* @gtk_tree_path_get_indices(%struct._GtkTreePath*) #1

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_page_selector_int_compare(i8* %a, i8* %b) #3 {
entry:
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  %0 = load i8*, i8** %a.addr, align 8
  %1 = bitcast i8* %0 to i32*
  %2 = load i32, i32* %1, align 4
  %3 = load i8*, i8** %b.addr, align 8
  %4 = bitcast i8* %3 to i32*
  %5 = load i32, i32* %4, align 4
  %sub = sub nsw i32 %2, %5
  ret i32 %sub
}

declare void @g_list_free_full(%struct._GList*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define void @gimp_page_selector_select_range(%struct._GimpPageSelector* %selector, i8* %range) #3 {
entry:
  %selector.addr = alloca %struct._GimpPageSelector*, align 8
  %range.addr = alloca i8*, align 8
  %priv = alloca %struct.GimpPageSelectorPrivate*, align 8
  %ranges = alloca i8**, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %i = alloca i32, align 4
  %range22 = alloca i8*, align 8
  %dash = alloca i8*, align 8
  %from = alloca i8*, align 8
  %to = alloca i8*, align 8
  %page_from = alloca i32, align 4
  %page_to = alloca i32, align 4
  %page_no = alloca i32, align 4
  %page_no78 = alloca i32, align 4
  store %struct._GimpPageSelector* %selector, %struct._GimpPageSelector** %selector.addr, align 8
  store i8* %range, i8** %range.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector.addr, align 8
  %1 = bitcast %struct._GimpPageSelector* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_page_selector_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_page_selector_select_range, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector.addr, align 8
  %priv11 = getelementptr inbounds %struct._GimpPageSelector, %struct._GimpPageSelector* %13, i32 0, i32 1
  %14 = load i8*, i8** %priv11, align 8
  %15 = bitcast i8* %14 to %struct.GimpPageSelectorPrivate*
  store %struct.GimpPageSelectorPrivate* %15, %struct.GimpPageSelectorPrivate** %priv, align 8
  %16 = load i8*, i8** %range.addr, align 8
  %tobool12 = icmp ne i8* %16, null
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %do.end
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i32 0, i32 0), i8** %range.addr, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %do.end
  %17 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %view = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %17, i32 0, i32 3
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %19 = bitcast %struct._GtkWidget* %18 to i8*
  %20 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector.addr, align 8
  %21 = bitcast %struct._GimpPageSelector* %20 to i8*
  %call15 = call i32 @g_signal_handlers_block_matched(i8* %19, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkIconView*, %struct._GimpPageSelector*)* @gimp_page_selector_selection_changed to i8*), i8* %21)
  %22 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector.addr, align 8
  call void @gimp_page_selector_unselect_all(%struct._GimpPageSelector* %22)
  %23 = load i8*, i8** %range.addr, align 8
  %call16 = call noalias i8** @g_strsplit(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0), i32 -1)
  store i8** %call16, i8*** %ranges, align 8
  %24 = load i8**, i8*** %ranges, align 8
  %tobool17 = icmp ne i8** %24, null
  br i1 %tobool17, label %if.then.18, label %if.end.93

if.then.18:                                       ; preds = %if.end.14
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.90, %if.then.18
  %25 = load i32, i32* %i, align 4
  %idxprom = sext i32 %25 to i64
  %26 = load i8**, i8*** %ranges, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %26, i64 %idxprom
  %27 = load i8*, i8** %arrayidx, align 8
  %cmp20 = icmp ne i8* %27, null
  br i1 %cmp20, label %for.body, label %for.end.92

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %28 to i64
  %29 = load i8**, i8*** %ranges, align 8
  %arrayidx24 = getelementptr inbounds i8*, i8** %29, i64 %idxprom23
  %30 = load i8*, i8** %arrayidx24, align 8
  %call25 = call i8* @g_strchug(i8* %30)
  %call26 = call i8* @g_strchomp(i8* %call25)
  store i8* %call26, i8** %range22, align 8
  %31 = load i8*, i8** %range22, align 8
  %call28 = call i8* @strchr(i8* %31, i32 45) #9
  store i8* %call28, i8** %dash, align 8
  %32 = load i8*, i8** %dash, align 8
  %tobool29 = icmp ne i8* %32, null
  br i1 %tobool29, label %if.then.30, label %if.else.76

if.then.30:                                       ; preds = %for.body
  store i32 -1, i32* %page_from, align 4
  store i32 -1, i32* %page_to, align 4
  %33 = load i8*, i8** %dash, align 8
  store i8 0, i8* %33, align 1
  %34 = load i8*, i8** %range22, align 8
  %call35 = call i8* @g_strchug(i8* %34)
  %call36 = call i8* @g_strchomp(i8* %call35)
  store i8* %call36, i8** %from, align 8
  %35 = load i8*, i8** %dash, align 8
  %add.ptr = getelementptr inbounds i8, i8* %35, i64 1
  %call37 = call i8* @g_strchug(i8* %add.ptr)
  %call38 = call i8* @g_strchomp(i8* %call37)
  store i8* %call38, i8** %to, align 8
  %36 = load i8*, i8** %from, align 8
  %call39 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i32* %page_from) #6
  %cmp40 = icmp ne i32 %call39, 1
  br i1 %cmp40, label %land.lhs.true.41, label %if.end.45

land.lhs.true.41:                                 ; preds = %if.then.30
  %37 = load i8*, i8** %from, align 8
  %call42 = call i64 @strlen(i8* %37) #9
  %cmp43 = icmp eq i64 %call42, 0
  br i1 %cmp43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %land.lhs.true.41
  store i32 1, i32* %page_from, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %land.lhs.true.41, %if.then.30
  %38 = load i8*, i8** %to, align 8
  %call46 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i32* %page_to) #6
  %cmp47 = icmp ne i32 %call46, 1
  br i1 %cmp47, label %land.lhs.true.48, label %if.end.52

land.lhs.true.48:                                 ; preds = %if.end.45
  %39 = load i8*, i8** %to, align 8
  %call49 = call i64 @strlen(i8* %39) #9
  %cmp50 = icmp eq i64 %call49, 0
  br i1 %cmp50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %land.lhs.true.48
  %40 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %n_pages = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %40, i32 0, i32 0
  %41 = load i32, i32* %n_pages, align 4
  store i32 %41, i32* %page_to, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %land.lhs.true.48, %if.end.45
  %42 = load i32, i32* %page_from, align 4
  %cmp53 = icmp sgt i32 %42, 0
  br i1 %cmp53, label %land.lhs.true.54, label %if.end.75

land.lhs.true.54:                                 ; preds = %if.end.52
  %43 = load i32, i32* %page_to, align 4
  %cmp55 = icmp sgt i32 %43, 0
  br i1 %cmp55, label %land.lhs.true.56, label %if.end.75

land.lhs.true.56:                                 ; preds = %land.lhs.true.54
  %44 = load i32, i32* %page_from, align 4
  %45 = load i32, i32* %page_to, align 4
  %cmp57 = icmp sle i32 %44, %45
  br i1 %cmp57, label %land.lhs.true.58, label %if.end.75

land.lhs.true.58:                                 ; preds = %land.lhs.true.56
  %46 = load i32, i32* %page_from, align 4
  %47 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %n_pages59 = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %47, i32 0, i32 0
  %48 = load i32, i32* %n_pages59, align 4
  %cmp60 = icmp sle i32 %46, %48
  br i1 %cmp60, label %if.then.61, label %if.end.75

if.then.61:                                       ; preds = %land.lhs.true.58
  %49 = load i32, i32* %page_from, align 4
  %cmp63 = icmp sgt i32 %49, 1
  br i1 %cmp63, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.61
  %50 = load i32, i32* %page_from, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.61
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %50, %cond.true ], [ 1, %cond.false ]
  %sub = sub nsw i32 %cond, 1
  store i32 %sub, i32* %page_from, align 4
  %51 = load i32, i32* %page_to, align 4
  %52 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %n_pages64 = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %52, i32 0, i32 0
  %53 = load i32, i32* %n_pages64, align 4
  %cmp65 = icmp slt i32 %51, %53
  br i1 %cmp65, label %cond.true.66, label %cond.false.67

cond.true.66:                                     ; preds = %cond.end
  %54 = load i32, i32* %page_to, align 4
  br label %cond.end.69

cond.false.67:                                    ; preds = %cond.end
  %55 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %n_pages68 = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %55, i32 0, i32 0
  %56 = load i32, i32* %n_pages68, align 4
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.false.67, %cond.true.66
  %cond70 = phi i32 [ %54, %cond.true.66 ], [ %56, %cond.false.67 ]
  %sub71 = sub nsw i32 %cond70, 1
  store i32 %sub71, i32* %page_to, align 4
  %57 = load i32, i32* %page_from, align 4
  store i32 %57, i32* %page_no, align 4
  br label %for.cond.72

for.cond.72:                                      ; preds = %for.inc, %cond.end.69
  %58 = load i32, i32* %page_no, align 4
  %59 = load i32, i32* %page_to, align 4
  %cmp73 = icmp sle i32 %58, %59
  br i1 %cmp73, label %for.body.74, label %for.end

for.body.74:                                      ; preds = %for.cond.72
  %60 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector.addr, align 8
  %61 = load i32, i32* %page_no, align 4
  call void @gimp_page_selector_select_page(%struct._GimpPageSelector* %60, i32 %61)
  br label %for.inc

for.inc:                                          ; preds = %for.body.74
  %62 = load i32, i32* %page_no, align 4
  %inc = add nsw i32 %62, 1
  store i32 %inc, i32* %page_no, align 4
  br label %for.cond.72

for.end:                                          ; preds = %for.cond.72
  br label %if.end.75

if.end.75:                                        ; preds = %for.end, %land.lhs.true.58, %land.lhs.true.56, %land.lhs.true.54, %if.end.52
  br label %if.end.89

if.else.76:                                       ; preds = %for.body
  %63 = load i8*, i8** %range22, align 8
  %call79 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i32* %page_no78) #6
  %cmp80 = icmp eq i32 %call79, 1
  br i1 %cmp80, label %land.lhs.true.81, label %if.end.88

land.lhs.true.81:                                 ; preds = %if.else.76
  %64 = load i32, i32* %page_no78, align 4
  %cmp82 = icmp sge i32 %64, 1
  br i1 %cmp82, label %land.lhs.true.83, label %if.end.88

land.lhs.true.83:                                 ; preds = %land.lhs.true.81
  %65 = load i32, i32* %page_no78, align 4
  %66 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %n_pages84 = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %66, i32 0, i32 0
  %67 = load i32, i32* %n_pages84, align 4
  %cmp85 = icmp sle i32 %65, %67
  br i1 %cmp85, label %if.then.86, label %if.end.88

if.then.86:                                       ; preds = %land.lhs.true.83
  %68 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector.addr, align 8
  %69 = load i32, i32* %page_no78, align 4
  %sub87 = sub nsw i32 %69, 1
  call void @gimp_page_selector_select_page(%struct._GimpPageSelector* %68, i32 %sub87)
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.86, %land.lhs.true.83, %land.lhs.true.81, %if.else.76
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.end.75
  br label %for.inc.90

for.inc.90:                                       ; preds = %if.end.89
  %70 = load i32, i32* %i, align 4
  %inc91 = add nsw i32 %70, 1
  store i32 %inc91, i32* %i, align 4
  br label %for.cond

for.end.92:                                       ; preds = %for.cond
  %71 = load i8**, i8*** %ranges, align 8
  call void @g_strfreev(i8** %71)
  br label %if.end.93

if.end.93:                                        ; preds = %for.end.92, %if.end.14
  %72 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %view94 = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %72, i32 0, i32 3
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %view94, align 8
  %74 = bitcast %struct._GtkWidget* %73 to i8*
  %75 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector.addr, align 8
  %76 = bitcast %struct._GimpPageSelector* %75 to i8*
  %call95 = call i32 @g_signal_handlers_unblock_matched(i8* %74, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkIconView*, %struct._GimpPageSelector*)* @gimp_page_selector_selection_changed to i8*), i8* %76)
  %77 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %view96 = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %77, i32 0, i32 3
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %view96, align 8
  %79 = bitcast %struct._GtkWidget* %78 to %struct._GTypeInstance*
  %call97 = call i64 @gtk_icon_view_get_type() #8
  %call98 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 %call97)
  %80 = bitcast %struct._GTypeInstance* %call98 to %struct._GtkIconView*
  %81 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector.addr, align 8
  call void @gimp_page_selector_selection_changed(%struct._GtkIconView* %80, %struct._GimpPageSelector* %81)
  br label %return

return:                                           ; preds = %if.end.93, %if.else.9
  ret void
}

declare i32 @g_signal_handlers_block_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_page_selector_selection_changed(%struct._GtkIconView* %icon_view, %struct._GimpPageSelector* %selector) #3 {
entry:
  %icon_view.addr = alloca %struct._GtkIconView*, align 8
  %selector.addr = alloca %struct._GimpPageSelector*, align 8
  %priv = alloca %struct.GimpPageSelectorPrivate*, align 8
  %selected = alloca %struct._GList*, align 8
  %n_selected = alloca i32, align 4
  %range = alloca i8*, align 8
  %text = alloca i8*, align 8
  store %struct._GtkIconView* %icon_view, %struct._GtkIconView** %icon_view.addr, align 8
  store %struct._GimpPageSelector* %selector, %struct._GimpPageSelector** %selector.addr, align 8
  %0 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector.addr, align 8
  %priv1 = getelementptr inbounds %struct._GimpPageSelector, %struct._GimpPageSelector* %0, i32 0, i32 1
  %1 = load i8*, i8** %priv1, align 8
  %2 = bitcast i8* %1 to %struct.GimpPageSelectorPrivate*
  store %struct.GimpPageSelectorPrivate* %2, %struct.GimpPageSelectorPrivate** %priv, align 8
  %3 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %view = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %3, i32 0, i32 3
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call = call i64 @gtk_icon_view_get_type() #8
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkIconView*
  %call3 = call %struct._GList* @gtk_icon_view_get_selected_items(%struct._GtkIconView* %6)
  store %struct._GList* %call3, %struct._GList** %selected, align 8
  %7 = load %struct._GList*, %struct._GList** %selected, align 8
  %call4 = call i32 @g_list_length(%struct._GList* %7)
  store i32 %call4, i32* %n_selected, align 4
  %8 = load %struct._GList*, %struct._GList** %selected, align 8
  call void @g_list_free_full(%struct._GList* %8, void (i8*)* bitcast (void (%struct._GtkTreePath*)* @gtk_tree_path_free to void (i8*)*))
  %9 = load i32, i32* %n_selected, align 4
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %count_label = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %10, i32 0, i32 4
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %count_label, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_label_get_type() #8
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call5)
  %13 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkLabel*
  %call7 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i32 0, i32 0)) #6
  call void @gtk_label_set_text(%struct._GtkLabel* %13, i8* %call7)
  br label %if.end.27

if.else:                                          ; preds = %entry
  %14 = load i32, i32* %n_selected, align 4
  %cmp8 = icmp eq i32 %14, 1
  br i1 %cmp8, label %if.then.9, label %if.else.14

if.then.9:                                        ; preds = %if.else
  %15 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %count_label10 = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %15, i32 0, i32 4
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %count_label10, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_label_get_type() #8
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call11)
  %18 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkLabel*
  %call13 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0)) #6
  call void @gtk_label_set_text(%struct._GtkLabel* %18, i8* %call13)
  br label %if.end.26

if.else.14:                                       ; preds = %if.else
  %19 = load i32, i32* %n_selected, align 4
  %20 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %n_pages = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %20, i32 0, i32 0
  %21 = load i32, i32* %n_pages, align 4
  %cmp15 = icmp eq i32 %19, %21
  br i1 %cmp15, label %if.then.16, label %if.else.19

if.then.16:                                       ; preds = %if.else.14
  %22 = load i32, i32* %n_selected, align 4
  %conv = sext i32 %22 to i64
  %call17 = call i8* @dngettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.30, i32 0, i32 0), i64 %conv) #6
  %23 = load i32, i32* %n_selected, align 4
  %call18 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call17, i32 %23)
  store i8* %call18, i8** %text, align 8
  br label %if.end

if.else.19:                                       ; preds = %if.else.14
  %24 = load i32, i32* %n_selected, align 4
  %conv20 = sext i32 %24 to i64
  %call21 = call i8* @dngettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i32 0, i32 0), i64 %conv20) #6
  %25 = load i32, i32* %n_selected, align 4
  %call22 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call21, i32 %25)
  store i8* %call22, i8** %text, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.19, %if.then.16
  %26 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %count_label23 = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %26, i32 0, i32 4
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %count_label23, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_label_get_type() #8
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call24)
  %29 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkLabel*
  %30 = load i8*, i8** %text, align 8
  call void @gtk_label_set_text(%struct._GtkLabel* %29, i8* %30)
  %31 = load i8*, i8** %text, align 8
  call void @g_free(i8* %31)
  br label %if.end.26

if.end.26:                                        ; preds = %if.end, %if.then.9
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then
  %32 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector.addr, align 8
  %call28 = call i8* @gimp_page_selector_get_selected_range(%struct._GimpPageSelector* %32)
  store i8* %call28, i8** %range, align 8
  %33 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %range_entry = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %33, i32 0, i32 5
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %range_entry, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_entry_get_type() #8
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call29)
  %36 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkEntry*
  %37 = load i8*, i8** %range, align 8
  call void @gtk_entry_set_text(%struct._GtkEntry* %36, i8* %37)
  %38 = load i8*, i8** %range, align 8
  call void @g_free(i8* %38)
  %39 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %range_entry31 = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %39, i32 0, i32 5
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %range_entry31, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_editable_get_type() #8
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call32)
  %42 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkEditable*
  call void @gtk_editable_set_position(%struct._GtkEditable* %42, i32 -1)
  %43 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector.addr, align 8
  %44 = bitcast %struct._GimpPageSelector* %43 to i8*
  %45 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @selector_signals, i32 0, i64 0), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %44, i32 %45, i32 0)
  ret void
}

declare noalias i8** @g_strsplit(i8*, i8*, i32) #1

declare i8* @g_strchomp(i8*) #1

declare i8* @g_strchug(i8*) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare void @g_strfreev(i8**) #1

declare i32 @g_signal_handlers_unblock_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define i8* @gimp_page_selector_get_selected_range(%struct._GimpPageSelector* %selector) #3 {
entry:
  %retval = alloca i8*, align 8
  %selector.addr = alloca %struct._GimpPageSelector*, align 8
  %pages = alloca i32*, align 8
  %n_pages = alloca i32, align 4
  %string = alloca %struct._GString*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %range_start = alloca i32, align 4
  %range_end = alloca i32, align 4
  %last_printed = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._GimpPageSelector* %selector, %struct._GimpPageSelector** %selector.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector.addr, align 8
  %1 = bitcast %struct._GimpPageSelector* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_page_selector_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_page_selector_get_selected_range, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call %struct._GString* @g_string_new(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i32 0, i32 0))
  store %struct._GString* %call11, %struct._GString** %string, align 8
  %13 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector.addr, align 8
  %call12 = call i32* @gimp_page_selector_get_selected_pages(%struct._GimpPageSelector* %13, i32* %n_pages)
  store i32* %call12, i32** %pages, align 8
  %14 = load i32*, i32** %pages, align 8
  %tobool13 = icmp ne i32* %14, null
  br i1 %tobool13, label %if.then.14, label %if.end.32

if.then.14:                                       ; preds = %do.end
  %15 = load i32*, i32** %pages, align 8
  %arrayidx = getelementptr inbounds i32, i32* %15, i64 0
  %16 = load i32, i32* %arrayidx, align 4
  store i32 %16, i32* %range_start, align 4
  %17 = load i32*, i32** %pages, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %17, i64 0
  %18 = load i32, i32* %arrayidx19, align 4
  store i32 %18, i32* %range_end, align 4
  store i32 -1, i32* %last_printed, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.14
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %n_pages, align 4
  %cmp20 = icmp slt i32 %19, %20
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %i, align 4
  %idxprom = sext i32 %21 to i64
  %22 = load i32*, i32** %pages, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %22, i64 %idxprom
  %23 = load i32, i32* %arrayidx21, align 4
  %24 = load i32, i32* %range_end, align 4
  %add = add nsw i32 %24, 1
  %cmp22 = icmp sgt i32 %23, %add
  br i1 %cmp22, label %if.then.23, label %if.end.26

if.then.23:                                       ; preds = %for.body
  %25 = load %struct._GString*, %struct._GString** %string, align 8
  %26 = load i32, i32* %range_start, align 4
  %27 = load i32, i32* %range_end, align 4
  call void @gimp_page_selector_print_range(%struct._GString* %25, i32 %26, i32 %27)
  %28 = load i32, i32* %range_end, align 4
  store i32 %28, i32* %last_printed, align 4
  %29 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %29 to i64
  %30 = load i32*, i32** %pages, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %30, i64 %idxprom24
  %31 = load i32, i32* %arrayidx25, align 4
  store i32 %31, i32* %range_start, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.23, %for.body
  %32 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %32 to i64
  %33 = load i32*, i32** %pages, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %33, i64 %idxprom27
  %34 = load i32, i32* %arrayidx28, align 4
  store i32 %34, i32* %range_end, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %35 = load i32, i32* %i, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load i32, i32* %range_end, align 4
  %37 = load i32, i32* %last_printed, align 4
  %cmp29 = icmp ne i32 %36, %37
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %for.end
  %38 = load %struct._GString*, %struct._GString** %string, align 8
  %39 = load i32, i32* %range_start, align 4
  %40 = load i32, i32* %range_end, align 4
  call void @gimp_page_selector_print_range(%struct._GString* %38, i32 %39, i32 %40)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %for.end
  %41 = load i32*, i32** %pages, align 8
  %42 = bitcast i32* %41 to i8*
  call void @g_free(i8* %42)
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %do.end
  %43 = load %struct._GString*, %struct._GString** %string, align 8
  %call33 = call i8* @g_string_free(%struct._GString* %43, i32 0)
  store i8* %call33, i8** %retval
  br label %return

return:                                           ; preds = %if.end.32, %if.else.9
  %44 = load i8*, i8** %retval
  ret i8* %44
}

declare %struct._GString* @g_string_new(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_page_selector_print_range(%struct._GString* %string, i32 %start, i32 %end) #3 {
entry:
  %string.addr = alloca %struct._GString*, align 8
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  store %struct._GString* %string, %struct._GString** %string.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  store i32 %end, i32* %end.addr, align 4
  %0 = load %struct._GString*, %struct._GString** %string.addr, align 8
  %len = getelementptr inbounds %struct._GString, %struct._GString* %0, i32 0, i32 1
  %1 = load i64, i64* %len, align 8
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GString*, %struct._GString** %string.addr, align 8
  %call = call %struct._GString* @g_string_append_c_inline(%struct._GString* %2, i8 signext 44)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %start.addr, align 4
  %4 = load i32, i32* %end.addr, align 4
  %cmp1 = icmp eq i32 %3, %4
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %5 = load %struct._GString*, %struct._GString** %string.addr, align 8
  %6 = load i32, i32* %start.addr, align 4
  %add = add nsw i32 %6, 1
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0), i32 %add)
  br label %if.end.5

if.else:                                          ; preds = %if.end
  %7 = load %struct._GString*, %struct._GString** %string.addr, align 8
  %8 = load i32, i32* %start.addr, align 4
  %add3 = add nsw i32 %8, 1
  %9 = load i32, i32* %end.addr, align 4
  %add4 = add nsw i32 %9, 1
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i32 %add3, i32 %add4)
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.2
  ret void
}

declare i8* @g_string_free(%struct._GString*, i32) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_page_selector_class_init(%struct._GimpPageSelectorClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpPageSelectorClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  store %struct._GimpPageSelectorClass* %klass, %struct._GimpPageSelectorClass** %klass.addr, align 8
  %0 = load %struct._GimpPageSelectorClass*, %struct._GimpPageSelectorClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpPageSelectorClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpPageSelectorClass*, %struct._GimpPageSelectorClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpPageSelectorClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_widget_get_type() #8
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %5, %struct._GtkWidgetClass** %widget_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_page_selector_finalize, void (%struct._GObject*)** %finalize, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_page_selector_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_page_selector_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %9 = load %struct._GimpPageSelectorClass*, %struct._GimpPageSelectorClass** %klass.addr, align 8
  %selection_changed = getelementptr inbounds %struct._GimpPageSelectorClass, %struct._GimpPageSelectorClass* %9, i32 0, i32 1
  store void (%struct._GimpPageSelector*)* null, void (%struct._GimpPageSelector*)** %selection_changed, align 8
  %10 = load %struct._GimpPageSelectorClass*, %struct._GimpPageSelectorClass** %klass.addr, align 8
  %activate = getelementptr inbounds %struct._GimpPageSelectorClass, %struct._GimpPageSelectorClass* %10, i32 0, i32 2
  store void (%struct._GimpPageSelector*)* null, void (%struct._GimpPageSelector*)** %activate, align 8
  %11 = load %struct._GimpPageSelectorClass*, %struct._GimpPageSelectorClass** %klass.addr, align 8
  %12 = bitcast %struct._GimpPageSelectorClass* %11 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %12, i32 0, i32 0
  %13 = load i64, i64* %g_type, align 8
  %call3 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0), i64 %13, i32 1, i32 824, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call3, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @selector_signals, i32 0, i64 0), align 4
  %14 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %15 = bitcast %struct._GObjectClass* %14 to %struct._GTypeClass*
  %g_type4 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %15, i32 0, i32 0
  %16 = load i64, i64* %g_type4, align 8
  %call5 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i64 %16, i32 33, i32 832, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call5, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @selector_signals, i32 0, i64 1), align 4
  %17 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @selector_signals, i32 0, i64 1), align 4
  %18 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %activate_signal = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %18, i32 0, i32 1
  store i32 %17, i32* %activate_signal, align 4
  %19 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null, i32 0, i32 2147483647, i32 0, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %19, i32 1, %struct._GParamSpec* %call6)
  %20 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call7 = call i64 @gimp_page_selector_target_get_type() #8
  %call8 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* null, i64 %call7, i32 0, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %20, i32 2, %struct._GParamSpec* %call8)
  %21 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %22 = bitcast %struct._GObjectClass* %21 to i8*
  call void @g_type_class_add_private(i8* %22, i64 48)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_page_selector_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %priv = alloca %struct.GimpPageSelectorPrivate*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GimpPageSelector*
  %priv1 = getelementptr inbounds %struct._GimpPageSelector, %struct._GimpPageSelector* %1, i32 0, i32 1
  %2 = load i8*, i8** %priv1, align 8
  %3 = bitcast i8* %2 to %struct.GimpPageSelectorPrivate*
  store %struct.GimpPageSelectorPrivate* %3, %struct.GimpPageSelectorPrivate** %priv, align 8
  %4 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %default_thumbnail = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %4, i32 0, i32 6
  %5 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %default_thumbnail, align 8
  %tobool = icmp ne %struct._GdkPixbuf* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %default_thumbnail2 = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %6, i32 0, i32 6
  %7 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %default_thumbnail2, align 8
  %8 = bitcast %struct._GdkPixbuf* %7 to i8*
  call void @g_object_unref(i8* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8*, i8** @gimp_page_selector_parent_class, align 8
  %10 = bitcast i8* %9 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 80)
  %11 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %11, i32 0, i32 6
  %12 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %13 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %12(%struct._GObject* %13)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_page_selector_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %priv = alloca %struct.GimpPageSelectorPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GimpPageSelector*
  %priv1 = getelementptr inbounds %struct._GimpPageSelector, %struct._GimpPageSelector* %1, i32 0, i32 1
  %2 = load i8*, i8** %priv1, align 8
  %3 = bitcast i8* %2 to %struct.GimpPageSelectorPrivate*
  store %struct.GimpPageSelectorPrivate* %3, %struct.GimpPageSelectorPrivate** %priv, align 8
  %4 = load i32, i32* %property_id.addr, align 4
  switch i32 %4, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %5 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %6 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %n_pages = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %6, i32 0, i32 0
  %7 = load i32, i32* %n_pages, align 4
  call void @g_value_set_int(%struct._GValue* %5, i32 %7)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %9 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %target = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %9, i32 0, i32 1
  %10 = load i32, i32* %target, align 4
  call void @g_value_set_enum(%struct._GValue* %8, i32 %10)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %11 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %11, %struct._GObject** %_glib__object, align 8
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %12, %struct._GParamSpec** %_glib__pspec, align 8
  %13 = load i32, i32* %property_id.addr, align 4
  store i32 %13, i32* %_glib__property_id, align 4
  %14 = load i32, i32* %_glib__property_id, align 4
  %15 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %15, i32 0, i32 1
  %16 = load i8*, i8** %name, align 8
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %18 = bitcast %struct._GParamSpec* %17 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type, align 8
  %call = call i8* @g_type_name(i64 %20)
  %21 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %22 = bitcast %struct._GObject* %21 to %struct._GTypeInstance*
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type4 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %23, i32 0, i32 0
  %24 = load i64, i64* %g_type4, align 8
  %call5 = call i8* @g_type_name(i64 %24)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), i32 363, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 %14, i8* %16, i8* %call, i8* %call5)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_page_selector_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %selector = alloca %struct._GimpPageSelector*, align 8
  %priv = alloca %struct.GimpPageSelectorPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_page_selector_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPageSelector*
  store %struct._GimpPageSelector* %2, %struct._GimpPageSelector** %selector, align 8
  %3 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %4 = bitcast %struct._GObject* %3 to %struct._GimpPageSelector*
  %priv2 = getelementptr inbounds %struct._GimpPageSelector, %struct._GimpPageSelector* %4, i32 0, i32 1
  %5 = load i8*, i8** %priv2, align 8
  %6 = bitcast i8* %5 to %struct.GimpPageSelectorPrivate*
  store %struct.GimpPageSelectorPrivate* %6, %struct.GimpPageSelectorPrivate** %priv, align 8
  %7 = load i32, i32* %property_id.addr, align 4
  switch i32 %7, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  %8 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector, align 8
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call3 = call i32 @g_value_get_int(%struct._GValue* %9)
  call void @gimp_page_selector_set_n_pages(%struct._GimpPageSelector* %8, i32 %call3)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call5 = call i32 @g_value_get_enum(%struct._GValue* %10)
  %11 = load %struct.GimpPageSelectorPrivate*, %struct.GimpPageSelectorPrivate** %priv, align 8
  %target = getelementptr inbounds %struct.GimpPageSelectorPrivate, %struct.GimpPageSelectorPrivate* %11, i32 0, i32 1
  store i32 %call5, i32* %target, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %12 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %12, %struct._GObject** %_glib__object, align 8
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %13, %struct._GParamSpec** %_glib__pspec, align 8
  %14 = load i32, i32* %property_id.addr, align 4
  store i32 %14, i32* %_glib__property_id, align 4
  %15 = load i32, i32* %_glib__property_id, align 4
  %16 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %16, i32 0, i32 1
  %17 = load i8*, i8** %name, align 8
  %18 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %19 = bitcast %struct._GParamSpec* %18 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type, align 8
  %call6 = call i8* @g_type_name(i64 %21)
  %22 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %23 = bitcast %struct._GObject* %22 to %struct._GTypeInstance*
  %g_class7 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %23, i32 0, i32 0
  %24 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class7, align 8
  %g_type8 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %24, i32 0, i32 0
  %25 = load i64, i64* %g_type8, align 8
  %call9 = call i8* @g_type_name(i64 %25)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), i32 386, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 %15, i8* %17, i8* %call6, i8* %call9)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.4, %sw.bb
  ret void
}

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @g_cclosure_marshal_VOID__VOID(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_int(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_page_selector_target_get_type() #2

declare void @g_type_class_add_private(i8*, i64) #1

declare void @g_value_set_int(%struct._GValue*, i32) #1

declare void @g_value_set_enum(%struct._GValue*, i32) #1

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
  call void @g_logv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_type_name(i64) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

declare i32 @g_value_get_int(%struct._GValue*) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

declare void @gtk_orientable_set_orientation(%struct._GtkOrientable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_orientable_get_type() #2

declare void @gtk_box_set_spacing(%struct._GtkBox*, i32) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment*, %struct._GtkAdjustment*) #1

declare void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_scrolled_window_get_type() #2

declare void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow*, i32, i32) #1

declare %struct._GtkListStore* @gtk_list_store_new(i32, ...) #1

declare %struct._GtkWidget* @gtk_icon_view_new_with_model(%struct._GtkTreeModel*) #1

declare void @gtk_icon_view_set_text_column(%struct._GtkIconView*, i32) #1

declare void @gtk_icon_view_set_pixbuf_column(%struct._GtkIconView*, i32) #1

declare void @gtk_icon_view_set_selection_mode(%struct._GtkIconView*, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_page_selector_item_activated(%struct._GtkIconView* %icon_view, %struct._GtkTreePath* %path, %struct._GimpPageSelector* %selector) #3 {
entry:
  %icon_view.addr = alloca %struct._GtkIconView*, align 8
  %path.addr = alloca %struct._GtkTreePath*, align 8
  %selector.addr = alloca %struct._GimpPageSelector*, align 8
  store %struct._GtkIconView* %icon_view, %struct._GtkIconView** %icon_view.addr, align 8
  store %struct._GtkTreePath* %path, %struct._GtkTreePath** %path.addr, align 8
  store %struct._GimpPageSelector* %selector, %struct._GimpPageSelector** %selector.addr, align 8
  %0 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector.addr, align 8
  %1 = bitcast %struct._GimpPageSelector* %0 to i8*
  %2 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @selector_signals, i32 0, i64 1), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %1, i32 %2, i32 0)
  ret void
}

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #2

declare void @gimp_label_set_attributes(%struct._GtkLabel*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #2

declare %struct._GtkWidget* @gtk_button_box_new(i32) #1

declare %struct._GtkWidget* @gtk_button_new_with_mnemonic(i8*) #1

declare %struct._GtkWidget* @gtk_entry_new() #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gtk_box_pack_end(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_page_selector_range_focus_out(%struct._GtkEntry* %entry1, %struct._GdkEventFocus* %fevent, %struct._GimpPageSelector* %selector) #3 {
entry:
  %entry.addr = alloca %struct._GtkEntry*, align 8
  %fevent.addr = alloca %struct._GdkEventFocus*, align 8
  %selector.addr = alloca %struct._GimpPageSelector*, align 8
  store %struct._GtkEntry* %entry1, %struct._GtkEntry** %entry.addr, align 8
  store %struct._GdkEventFocus* %fevent, %struct._GdkEventFocus** %fevent.addr, align 8
  store %struct._GimpPageSelector* %selector, %struct._GimpPageSelector** %selector.addr, align 8
  %0 = load %struct._GtkEntry*, %struct._GtkEntry** %entry.addr, align 8
  %1 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector.addr, align 8
  call void @gimp_page_selector_range_activate(%struct._GtkEntry* %0, %struct._GimpPageSelector* %1)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @gimp_page_selector_range_activate(%struct._GtkEntry* %entry1, %struct._GimpPageSelector* %selector) #3 {
entry:
  %entry.addr = alloca %struct._GtkEntry*, align 8
  %selector.addr = alloca %struct._GimpPageSelector*, align 8
  store %struct._GtkEntry* %entry1, %struct._GtkEntry** %entry.addr, align 8
  store %struct._GimpPageSelector* %selector, %struct._GimpPageSelector** %selector.addr, align 8
  %0 = load %struct._GimpPageSelector*, %struct._GimpPageSelector** %selector.addr, align 8
  %1 = load %struct._GtkEntry*, %struct._GtkEntry** %entry.addr, align 8
  %call = call i8* @gtk_entry_get_text(%struct._GtkEntry* %1)
  call void @gimp_page_selector_select_range(%struct._GimpPageSelector* %0, i8* %call)
  ret void
}

declare %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8*) #1

declare void @gtk_label_set_mnemonic_widget(%struct._GtkLabel*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_prop_enum_combo_box_new(%struct._GObject*, i8*, i32, i32) #1

declare %struct._GdkPixbuf* @gtk_widget_render_icon(%struct._GtkWidget*, i8*, i32, i8*) #1

declare void @g_signal_emit(i8*, i32, i32, ...) #1

declare i8* @gtk_entry_get_text(%struct._GtkEntry*) #1

declare void @gtk_label_set_text(%struct._GtkLabel*, i8*) #1

; Function Attrs: nounwind
declare i8* @dngettext(i8*, i8*, i8*, i64) #5

declare void @gtk_entry_set_text(%struct._GtkEntry*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #2

declare void @gtk_editable_set_position(%struct._GtkEditable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_editable_get_type() #2

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._GString* @g_string_append_c_inline(%struct._GString* %gstring, i8 signext %c) #7 {
entry:
  %gstring.addr = alloca %struct._GString*, align 8
  %c.addr = alloca i8, align 1
  store %struct._GString* %gstring, %struct._GString** %gstring.addr, align 8
  store i8 %c, i8* %c.addr, align 1
  %0 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %len = getelementptr inbounds %struct._GString, %struct._GString* %0, i32 0, i32 1
  %1 = load i64, i64* %len, align 8
  %add = add i64 %1, 1
  %2 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %allocated_len = getelementptr inbounds %struct._GString, %struct._GString* %2, i32 0, i32 2
  %3 = load i64, i64* %allocated_len, align 8
  %cmp = icmp ult i64 %add, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i8, i8* %c.addr, align 1
  %5 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %len1 = getelementptr inbounds %struct._GString, %struct._GString* %5, i32 0, i32 1
  %6 = load i64, i64* %len1, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %len1, align 8
  %7 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %str = getelementptr inbounds %struct._GString, %struct._GString* %7, i32 0, i32 0
  %8 = load i8*, i8** %str, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %6
  store i8 %4, i8* %arrayidx, align 1
  %9 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %len2 = getelementptr inbounds %struct._GString, %struct._GString* %9, i32 0, i32 1
  %10 = load i64, i64* %len2, align 8
  %11 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %str3 = getelementptr inbounds %struct._GString, %struct._GString* %11, i32 0, i32 0
  %12 = load i8*, i8** %str3, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %12, i64 %10
  store i8 0, i8* %arrayidx4, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %14 = load i8, i8* %c.addr, align 1
  %call = call %struct._GString* @g_string_insert_c(%struct._GString* %13, i64 -1, i8 signext %14)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  ret %struct._GString* %15
}

declare void @g_string_append_printf(%struct._GString*, i8*, ...) #1

declare %struct._GString* @g_string_insert_c(%struct._GString*, i64, i8 signext) #1

declare i32 @gdk_pixbuf_get_width(%struct._GdkPixbuf*) #1

declare i32 @gdk_pixbuf_get_height(%struct._GdkPixbuf*) #1

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare void @g_object_set_data_full(%struct._GObject*, i8*, i8*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GdkPixbuf* @stretch_frame_image(%struct._GdkPixbuf* %frame_image, i32 %left_offset, i32 %top_offset, i32 %right_offset, i32 %bottom_offset, i32 %dest_width, i32 %dest_height) #3 {
entry:
  %frame_image.addr = alloca %struct._GdkPixbuf*, align 8
  %left_offset.addr = alloca i32, align 4
  %top_offset.addr = alloca i32, align 4
  %right_offset.addr = alloca i32, align 4
  %bottom_offset.addr = alloca i32, align 4
  %dest_width.addr = alloca i32, align 4
  %dest_height.addr = alloca i32, align 4
  %pixbuf = alloca %struct._GdkPixbuf*, align 8
  %frame_width = alloca i32, align 4
  %frame_height = alloca i32, align 4
  %target_width = alloca i32, align 4
  %target_frame_width = alloca i32, align 4
  %target_height = alloca i32, align 4
  %target_frame_height = alloca i32, align 4
  store %struct._GdkPixbuf* %frame_image, %struct._GdkPixbuf** %frame_image.addr, align 8
  store i32 %left_offset, i32* %left_offset.addr, align 4
  store i32 %top_offset, i32* %top_offset.addr, align 4
  store i32 %right_offset, i32* %right_offset.addr, align 4
  store i32 %bottom_offset, i32* %bottom_offset.addr, align 4
  store i32 %dest_width, i32* %dest_width.addr, align 4
  store i32 %dest_height, i32* %dest_height.addr, align 4
  %0 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %frame_image.addr, align 8
  %call = call i32 @gdk_pixbuf_get_width(%struct._GdkPixbuf* %0)
  store i32 %call, i32* %frame_width, align 4
  %1 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %frame_image.addr, align 8
  %call1 = call i32 @gdk_pixbuf_get_height(%struct._GdkPixbuf* %1)
  store i32 %call1, i32* %frame_height, align 4
  %2 = load i32, i32* %dest_width.addr, align 4
  %3 = load i32, i32* %dest_height.addr, align 4
  %call2 = call %struct._GdkPixbuf* @gdk_pixbuf_new(i32 0, i32 1, i32 8, i32 %2, i32 %3)
  store %struct._GdkPixbuf* %call2, %struct._GdkPixbuf** %pixbuf, align 8
  %4 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  call void @gdk_pixbuf_fill(%struct._GdkPixbuf* %4, i32 0)
  %5 = load i32, i32* %dest_width.addr, align 4
  %6 = load i32, i32* %left_offset.addr, align 4
  %sub = sub nsw i32 %5, %6
  %7 = load i32, i32* %right_offset.addr, align 4
  %sub3 = sub nsw i32 %sub, %7
  store i32 %sub3, i32* %target_width, align 4
  %8 = load i32, i32* %dest_height.addr, align 4
  %9 = load i32, i32* %top_offset.addr, align 4
  %sub4 = sub nsw i32 %8, %9
  %10 = load i32, i32* %bottom_offset.addr, align 4
  %sub5 = sub nsw i32 %sub4, %10
  store i32 %sub5, i32* %target_height, align 4
  %11 = load i32, i32* %frame_width, align 4
  %12 = load i32, i32* %left_offset.addr, align 4
  %sub6 = sub nsw i32 %11, %12
  %13 = load i32, i32* %right_offset.addr, align 4
  %sub7 = sub nsw i32 %sub6, %13
  store i32 %sub7, i32* %target_frame_width, align 4
  %14 = load i32, i32* %frame_height, align 4
  %15 = load i32, i32* %top_offset.addr, align 4
  %sub8 = sub nsw i32 %14, %15
  %16 = load i32, i32* %bottom_offset.addr, align 4
  %sub9 = sub nsw i32 %sub8, %16
  store i32 %sub9, i32* %target_frame_height, align 4
  %17 = load i32, i32* %target_width, align 4
  %div = sdiv i32 %17, 4
  %18 = load i32, i32* %target_frame_width, align 4
  %div10 = sdiv i32 %18, 4
  %cmp = icmp slt i32 %div, %div10
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %19 = load i32, i32* %target_width, align 4
  %div11 = sdiv i32 %19, 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %20 = load i32, i32* %target_frame_width, align 4
  %div12 = sdiv i32 %20, 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div11, %cond.true ], [ %div12, %cond.false ]
  %21 = load i32, i32* %left_offset.addr, align 4
  %add = add nsw i32 %21, %cond
  store i32 %add, i32* %left_offset.addr, align 4
  %22 = load i32, i32* %target_width, align 4
  %div13 = sdiv i32 %22, 4
  %23 = load i32, i32* %target_frame_width, align 4
  %div14 = sdiv i32 %23, 4
  %cmp15 = icmp slt i32 %div13, %div14
  br i1 %cmp15, label %cond.true.16, label %cond.false.18

cond.true.16:                                     ; preds = %cond.end
  %24 = load i32, i32* %target_width, align 4
  %div17 = sdiv i32 %24, 4
  br label %cond.end.20

cond.false.18:                                    ; preds = %cond.end
  %25 = load i32, i32* %target_frame_width, align 4
  %div19 = sdiv i32 %25, 4
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.false.18, %cond.true.16
  %cond21 = phi i32 [ %div17, %cond.true.16 ], [ %div19, %cond.false.18 ]
  %26 = load i32, i32* %right_offset.addr, align 4
  %add22 = add nsw i32 %26, %cond21
  store i32 %add22, i32* %right_offset.addr, align 4
  %27 = load i32, i32* %target_height, align 4
  %div23 = sdiv i32 %27, 4
  %28 = load i32, i32* %target_frame_height, align 4
  %div24 = sdiv i32 %28, 4
  %cmp25 = icmp slt i32 %div23, %div24
  br i1 %cmp25, label %cond.true.26, label %cond.false.28

cond.true.26:                                     ; preds = %cond.end.20
  %29 = load i32, i32* %target_height, align 4
  %div27 = sdiv i32 %29, 4
  br label %cond.end.30

cond.false.28:                                    ; preds = %cond.end.20
  %30 = load i32, i32* %target_frame_height, align 4
  %div29 = sdiv i32 %30, 4
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.28, %cond.true.26
  %cond31 = phi i32 [ %div27, %cond.true.26 ], [ %div29, %cond.false.28 ]
  %31 = load i32, i32* %top_offset.addr, align 4
  %add32 = add nsw i32 %31, %cond31
  store i32 %add32, i32* %top_offset.addr, align 4
  %32 = load i32, i32* %target_height, align 4
  %div33 = sdiv i32 %32, 4
  %33 = load i32, i32* %target_frame_height, align 4
  %div34 = sdiv i32 %33, 4
  %cmp35 = icmp slt i32 %div33, %div34
  br i1 %cmp35, label %cond.true.36, label %cond.false.38

cond.true.36:                                     ; preds = %cond.end.30
  %34 = load i32, i32* %target_height, align 4
  %div37 = sdiv i32 %34, 4
  br label %cond.end.40

cond.false.38:                                    ; preds = %cond.end.30
  %35 = load i32, i32* %target_frame_height, align 4
  %div39 = sdiv i32 %35, 4
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.false.38, %cond.true.36
  %cond41 = phi i32 [ %div37, %cond.true.36 ], [ %div39, %cond.false.38 ]
  %36 = load i32, i32* %bottom_offset.addr, align 4
  %add42 = add nsw i32 %36, %cond41
  store i32 %add42, i32* %bottom_offset.addr, align 4
  %37 = load i32, i32* %dest_width.addr, align 4
  %38 = load i32, i32* %left_offset.addr, align 4
  %sub43 = sub nsw i32 %37, %38
  %39 = load i32, i32* %right_offset.addr, align 4
  %sub44 = sub nsw i32 %sub43, %39
  store i32 %sub44, i32* %target_width, align 4
  %40 = load i32, i32* %dest_height.addr, align 4
  %41 = load i32, i32* %top_offset.addr, align 4
  %sub45 = sub nsw i32 %40, %41
  %42 = load i32, i32* %bottom_offset.addr, align 4
  %sub46 = sub nsw i32 %sub45, %42
  store i32 %sub46, i32* %target_height, align 4
  %43 = load i32, i32* %frame_width, align 4
  %44 = load i32, i32* %left_offset.addr, align 4
  %sub47 = sub nsw i32 %43, %44
  %45 = load i32, i32* %right_offset.addr, align 4
  %sub48 = sub nsw i32 %sub47, %45
  store i32 %sub48, i32* %target_frame_width, align 4
  %46 = load i32, i32* %frame_height, align 4
  %47 = load i32, i32* %top_offset.addr, align 4
  %sub49 = sub nsw i32 %46, %47
  %48 = load i32, i32* %bottom_offset.addr, align 4
  %sub50 = sub nsw i32 %sub49, %48
  store i32 %sub50, i32* %target_frame_height, align 4
  %49 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %frame_image.addr, align 8
  %50 = load i32, i32* %left_offset.addr, align 4
  %51 = load i32, i32* %top_offset.addr, align 4
  %52 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  call void @gdk_pixbuf_copy_area(%struct._GdkPixbuf* %49, i32 0, i32 0, i32 %50, i32 %51, %struct._GdkPixbuf* %52, i32 0, i32 0)
  %53 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %frame_image.addr, align 8
  %54 = load i32, i32* %target_width, align 4
  %55 = load i32, i32* %target_frame_width, align 4
  %56 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %57 = load i32, i32* %left_offset.addr, align 4
  %58 = load i32, i32* %top_offset.addr, align 4
  call void @draw_frame_row(%struct._GdkPixbuf* %53, i32 %54, i32 %55, i32 0, i32 0, %struct._GdkPixbuf* %56, i32 %57, i32 %58)
  %59 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %frame_image.addr, align 8
  %60 = load i32, i32* %frame_width, align 4
  %61 = load i32, i32* %right_offset.addr, align 4
  %sub51 = sub nsw i32 %60, %61
  %62 = load i32, i32* %right_offset.addr, align 4
  %63 = load i32, i32* %top_offset.addr, align 4
  %64 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %65 = load i32, i32* %dest_width.addr, align 4
  %66 = load i32, i32* %right_offset.addr, align 4
  %sub52 = sub nsw i32 %65, %66
  call void @gdk_pixbuf_copy_area(%struct._GdkPixbuf* %59, i32 %sub51, i32 0, i32 %62, i32 %63, %struct._GdkPixbuf* %64, i32 %sub52, i32 0)
  %67 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %frame_image.addr, align 8
  %68 = load i32, i32* %target_height, align 4
  %69 = load i32, i32* %target_frame_height, align 4
  %70 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %71 = load i32, i32* %top_offset.addr, align 4
  %72 = load i32, i32* %left_offset.addr, align 4
  call void @draw_frame_column(%struct._GdkPixbuf* %67, i32 %68, i32 %69, i32 0, i32 0, %struct._GdkPixbuf* %70, i32 %71, i32 %72)
  %73 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %frame_image.addr, align 8
  %74 = load i32, i32* %frame_width, align 4
  %75 = load i32, i32* %right_offset.addr, align 4
  %sub53 = sub nsw i32 %74, %75
  %76 = load i32, i32* %frame_height, align 4
  %77 = load i32, i32* %bottom_offset.addr, align 4
  %sub54 = sub nsw i32 %76, %77
  %78 = load i32, i32* %right_offset.addr, align 4
  %79 = load i32, i32* %bottom_offset.addr, align 4
  %80 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %81 = load i32, i32* %dest_width.addr, align 4
  %82 = load i32, i32* %right_offset.addr, align 4
  %sub55 = sub nsw i32 %81, %82
  %83 = load i32, i32* %dest_height.addr, align 4
  %84 = load i32, i32* %bottom_offset.addr, align 4
  %sub56 = sub nsw i32 %83, %84
  call void @gdk_pixbuf_copy_area(%struct._GdkPixbuf* %73, i32 %sub53, i32 %sub54, i32 %78, i32 %79, %struct._GdkPixbuf* %80, i32 %sub55, i32 %sub56)
  %85 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %frame_image.addr, align 8
  %86 = load i32, i32* %target_width, align 4
  %87 = load i32, i32* %target_frame_width, align 4
  %88 = load i32, i32* %frame_height, align 4
  %89 = load i32, i32* %bottom_offset.addr, align 4
  %sub57 = sub nsw i32 %88, %89
  %90 = load i32, i32* %dest_height.addr, align 4
  %91 = load i32, i32* %bottom_offset.addr, align 4
  %sub58 = sub nsw i32 %90, %91
  %92 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %93 = load i32, i32* %left_offset.addr, align 4
  %94 = load i32, i32* %bottom_offset.addr, align 4
  call void @draw_frame_row(%struct._GdkPixbuf* %85, i32 %86, i32 %87, i32 %sub57, i32 %sub58, %struct._GdkPixbuf* %92, i32 %93, i32 %94)
  %95 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %frame_image.addr, align 8
  %96 = load i32, i32* %frame_height, align 4
  %97 = load i32, i32* %bottom_offset.addr, align 4
  %sub59 = sub nsw i32 %96, %97
  %98 = load i32, i32* %left_offset.addr, align 4
  %99 = load i32, i32* %bottom_offset.addr, align 4
  %100 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %101 = load i32, i32* %dest_height.addr, align 4
  %102 = load i32, i32* %bottom_offset.addr, align 4
  %sub60 = sub nsw i32 %101, %102
  call void @gdk_pixbuf_copy_area(%struct._GdkPixbuf* %95, i32 0, i32 %sub59, i32 %98, i32 %99, %struct._GdkPixbuf* %100, i32 0, i32 %sub60)
  %103 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %frame_image.addr, align 8
  %104 = load i32, i32* %target_height, align 4
  %105 = load i32, i32* %target_frame_height, align 4
  %106 = load i32, i32* %frame_width, align 4
  %107 = load i32, i32* %right_offset.addr, align 4
  %sub61 = sub nsw i32 %106, %107
  %108 = load i32, i32* %dest_width.addr, align 4
  %109 = load i32, i32* %right_offset.addr, align 4
  %sub62 = sub nsw i32 %108, %109
  %110 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %111 = load i32, i32* %top_offset.addr, align 4
  %112 = load i32, i32* %right_offset.addr, align 4
  call void @draw_frame_column(%struct._GdkPixbuf* %103, i32 %104, i32 %105, i32 %sub61, i32 %sub62, %struct._GdkPixbuf* %110, i32 %111, i32 %112)
  %113 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  ret %struct._GdkPixbuf* %113
}

declare void @gdk_pixbuf_copy_area(%struct._GdkPixbuf*, i32, i32, i32, i32, %struct._GdkPixbuf*, i32, i32) #1

declare %struct._GdkPixbuf* @gdk_pixbuf_new(i32, i32, i32, i32, i32) #1

declare void @gdk_pixbuf_fill(%struct._GdkPixbuf*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @draw_frame_row(%struct._GdkPixbuf* %frame_image, i32 %target_width, i32 %source_width, i32 %source_v_position, i32 %dest_v_position, %struct._GdkPixbuf* %result_pixbuf, i32 %left_offset, i32 %height) #3 {
entry:
  %frame_image.addr = alloca %struct._GdkPixbuf*, align 8
  %target_width.addr = alloca i32, align 4
  %source_width.addr = alloca i32, align 4
  %source_v_position.addr = alloca i32, align 4
  %dest_v_position.addr = alloca i32, align 4
  %result_pixbuf.addr = alloca %struct._GdkPixbuf*, align 8
  %left_offset.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %remaining_width = alloca i32, align 4
  %h_offset = alloca i32, align 4
  %slab_width = alloca i32, align 4
  store %struct._GdkPixbuf* %frame_image, %struct._GdkPixbuf** %frame_image.addr, align 8
  store i32 %target_width, i32* %target_width.addr, align 4
  store i32 %source_width, i32* %source_width.addr, align 4
  store i32 %source_v_position, i32* %source_v_position.addr, align 4
  store i32 %dest_v_position, i32* %dest_v_position.addr, align 4
  store %struct._GdkPixbuf* %result_pixbuf, %struct._GdkPixbuf** %result_pixbuf.addr, align 8
  store i32 %left_offset, i32* %left_offset.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load i32, i32* %target_width.addr, align 4
  store i32 %0, i32* %remaining_width, align 4
  store i32 0, i32* %h_offset, align 4
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %entry
  %1 = load i32, i32* %remaining_width, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %remaining_width, align 4
  %3 = load i32, i32* %source_width.addr, align 4
  %cmp1 = icmp sgt i32 %2, %3
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %4 = load i32, i32* %source_width.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %5 = load i32, i32* %remaining_width, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ %5, %cond.false ]
  store i32 %cond, i32* %slab_width, align 4
  %6 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %frame_image.addr, align 8
  %7 = load i32, i32* %left_offset.addr, align 4
  %8 = load i32, i32* %source_v_position.addr, align 4
  %9 = load i32, i32* %slab_width, align 4
  %10 = load i32, i32* %height.addr, align 4
  %11 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %result_pixbuf.addr, align 8
  %12 = load i32, i32* %left_offset.addr, align 4
  %13 = load i32, i32* %h_offset, align 4
  %add = add nsw i32 %12, %13
  %14 = load i32, i32* %dest_v_position.addr, align 4
  call void @gdk_pixbuf_copy_area(%struct._GdkPixbuf* %6, i32 %7, i32 %8, i32 %9, i32 %10, %struct._GdkPixbuf* %11, i32 %add, i32 %14)
  %15 = load i32, i32* %slab_width, align 4
  %16 = load i32, i32* %remaining_width, align 4
  %sub = sub nsw i32 %16, %15
  store i32 %sub, i32* %remaining_width, align 4
  %17 = load i32, i32* %slab_width, align 4
  %18 = load i32, i32* %h_offset, align 4
  %add2 = add nsw i32 %18, %17
  store i32 %add2, i32* %h_offset, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @draw_frame_column(%struct._GdkPixbuf* %frame_image, i32 %target_height, i32 %source_height, i32 %source_h_position, i32 %dest_h_position, %struct._GdkPixbuf* %result_pixbuf, i32 %top_offset, i32 %width) #3 {
entry:
  %frame_image.addr = alloca %struct._GdkPixbuf*, align 8
  %target_height.addr = alloca i32, align 4
  %source_height.addr = alloca i32, align 4
  %source_h_position.addr = alloca i32, align 4
  %dest_h_position.addr = alloca i32, align 4
  %result_pixbuf.addr = alloca %struct._GdkPixbuf*, align 8
  %top_offset.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %remaining_height = alloca i32, align 4
  %v_offset = alloca i32, align 4
  %slab_height = alloca i32, align 4
  store %struct._GdkPixbuf* %frame_image, %struct._GdkPixbuf** %frame_image.addr, align 8
  store i32 %target_height, i32* %target_height.addr, align 4
  store i32 %source_height, i32* %source_height.addr, align 4
  store i32 %source_h_position, i32* %source_h_position.addr, align 4
  store i32 %dest_h_position, i32* %dest_h_position.addr, align 4
  store %struct._GdkPixbuf* %result_pixbuf, %struct._GdkPixbuf** %result_pixbuf.addr, align 8
  store i32 %top_offset, i32* %top_offset.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  %0 = load i32, i32* %target_height.addr, align 4
  store i32 %0, i32* %remaining_height, align 4
  store i32 0, i32* %v_offset, align 4
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %entry
  %1 = load i32, i32* %remaining_height, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %remaining_height, align 4
  %3 = load i32, i32* %source_height.addr, align 4
  %cmp1 = icmp sgt i32 %2, %3
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %4 = load i32, i32* %source_height.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %5 = load i32, i32* %remaining_height, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ %5, %cond.false ]
  store i32 %cond, i32* %slab_height, align 4
  %6 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %frame_image.addr, align 8
  %7 = load i32, i32* %source_h_position.addr, align 4
  %8 = load i32, i32* %top_offset.addr, align 4
  %9 = load i32, i32* %width.addr, align 4
  %10 = load i32, i32* %slab_height, align 4
  %11 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %result_pixbuf.addr, align 8
  %12 = load i32, i32* %dest_h_position.addr, align 4
  %13 = load i32, i32* %top_offset.addr, align 4
  %14 = load i32, i32* %v_offset, align 4
  %add = add nsw i32 %13, %14
  call void @gdk_pixbuf_copy_area(%struct._GdkPixbuf* %6, i32 %7, i32 %8, i32 %9, i32 %10, %struct._GdkPixbuf* %11, i32 %12, i32 %add)
  %15 = load i32, i32* %slab_height, align 4
  %16 = load i32, i32* %remaining_height, align 4
  %sub = sub nsw i32 %16, %15
  store i32 %sub, i32* %remaining_height, align 4
  %17 = load i32, i32* %slab_height, align 4
  %18 = load i32, i32* %v_offset, align 4
  %add2 = add nsw i32 %18, %17
  store i32 %add2, i32* %v_offset, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
