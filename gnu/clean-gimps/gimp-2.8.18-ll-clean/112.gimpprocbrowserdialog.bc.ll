; ModuleID = './libgimp/gimpprocbrowserdialog.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpProcBrowserDialogClass = type { %struct._GimpDialogClass, void (%struct._GimpProcBrowserDialog*)*, void (%struct._GimpProcBrowserDialog*)*, void ()*, void ()*, void ()*, void ()* }
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
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GimpProcBrowserDialog = type { %struct._GimpDialog, %struct._GtkWidget*, %struct._GtkListStore*, %struct._GtkWidget* }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GtkListStore = type { %struct._GObject, i32, i8*, i8*, %struct._GList*, i32, i32, i32, i64*, i32, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }
%struct._GtkTreeModel = type opaque
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._GtkCellRenderer = type { %struct._GtkObject, float, float, i32, i32, i16, i16, i8 }
%struct._GtkTreeSelection = type { %struct._GObject, %struct._GtkTreeView*, i32, i32 (%struct._GtkTreeSelection*, %struct._GtkTreeModel*, %struct._GtkTreePath*, i32, i8*)*, i8*, void (i8*)* }
%struct._GtkTreeView = type { %struct._GtkContainer, %struct._GtkTreeViewPrivate* }
%struct._GtkTreeViewPrivate = type opaque
%struct._GtkTreePath = type opaque
%struct._GimpBrowser = type { %struct._GtkHPaned, %struct._GtkWidget*, %struct._GtkWidget*, i32, %struct._GtkWidget*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkHPaned = type { %struct._GtkPaned }
%struct._GtkPaned = type { %struct._GtkContainer, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkDrawable*, %struct._GdkGC*, i32, %struct._GdkRectangle, i32, i32, i32, i32, i16, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkPanedPrivate*, i32, i32 }
%struct._GtkPanedPrivate = type opaque
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkScrolledWindow = type { %struct._GtkBin, %struct._GtkWidget*, %struct._GtkWidget*, i16, i16 }
%struct._GtkCellRendererText = type { %struct._GtkCellRenderer, i8*, %struct._PangoFontDescription*, double, %struct._PangoColor, %struct._PangoColor, %struct._PangoAttrList*, i32, i32, i32, i16 }
%struct._PangoColor = type { i16, i16, i16 }
%struct._PangoAttrList = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GRegex = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct._GError = type { i32, i32, i8* }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoLayout = type opaque
%struct._GtkLabelSelectionInfo = type opaque
%struct._GtkTreeSortable = type opaque
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GtkTreeViewColumn = type { %struct._GtkObject, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkDrawable*, %struct._GtkCellEditable*, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, %struct._GList*, i32, i32, i32, i32, i16 }
%struct._GtkCellEditable = type opaque
%struct._GimpParamDef = type { i32, i8*, i8* }

@gimp_proc_browser_dialog_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"GimpProcBrowserDialog\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"role\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"help-func\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"help-id\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"LibGimp\00", align 1
@__func__.gimp_proc_browser_dialog_get_selected = private unnamed_addr constant [38 x i8] c"gimp_proc_browser_dialog_get_selected\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"GIMP_IS_PROC_BROWSER_DIALOG (dialog)\00", align 1
@gimp_proc_browser_dialog_parent_class = internal global i8* null, align 8
@GimpProcBrowserDialog_private_offset = internal global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"selection-changed\00", align 1
@dialog_signals = internal global [2 x i32] zeroinitializer, align 4
@.str.9 = private unnamed_addr constant [14 x i8] c"row-activated\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"gimp20-libgimp\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"by name\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"by description\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"by help\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"by author\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"by copyright\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"by date\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"by type\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"search\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"row_activated\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"No matches\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"Search term invalid or incomplete\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"Searching\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c".*\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"Searching by name\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"Searching by description\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"Searching by help\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"Searching by author\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"Searching by copyright\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"Searching by date\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"Searching by type\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"%d procedure\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"%d procedures\00", align 1
@.str.36 = private unnamed_addr constant [26 x i8] c"No matches for your query\00", align 1
@.str.37 = private unnamed_addr constant [32 x i8] c"%d procedure matches your query\00", align 1
@.str.38 = private unnamed_addr constant [31 x i8] c"%d procedures match your query\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_proc_browser_dialog_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_proc_browser_dialog_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_proc_browser_dialog_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_dialog_get_type() #8
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 1032, void (i8*, i8*)* bitcast (void (i8*)* @gimp_proc_browser_dialog_class_intern_init to void (i8*, i8*)*), i32 288, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpProcBrowserDialog*)* @gimp_proc_browser_dialog_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_proc_browser_dialog_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_proc_browser_dialog_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_proc_browser_dialog_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_proc_browser_dialog_parent_class, align 8
  %1 = load i32, i32* @GimpProcBrowserDialog_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpProcBrowserDialog_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpProcBrowserDialogClass*
  call void @gimp_proc_browser_dialog_class_init(%struct._GimpProcBrowserDialogClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_proc_browser_dialog_init(%struct._GimpProcBrowserDialog* %dialog) #3 {
entry:
  %dialog.addr = alloca %struct._GimpProcBrowserDialog*, align 8
  %scrolled_window = alloca %struct._GtkWidget*, align 8
  %renderer = alloca %struct._GtkCellRenderer*, align 8
  %selection = alloca %struct._GtkTreeSelection*, align 8
  %parent = alloca %struct._GtkWidget*, align 8
  store %struct._GimpProcBrowserDialog* %dialog, %struct._GimpProcBrowserDialog** %dialog.addr, align 8
  %call = call %struct._GtkWidget* @gimp_browser_new()
  %0 = load %struct._GimpProcBrowserDialog*, %struct._GimpProcBrowserDialog** %dialog.addr, align 8
  %browser = getelementptr inbounds %struct._GimpProcBrowserDialog, %struct._GimpProcBrowserDialog* %0, i32 0, i32 1
  store %struct._GtkWidget* %call, %struct._GtkWidget** %browser, align 8
  %1 = load %struct._GimpProcBrowserDialog*, %struct._GimpProcBrowserDialog** %dialog.addr, align 8
  %browser1 = getelementptr inbounds %struct._GimpProcBrowserDialog, %struct._GimpProcBrowserDialog* %1, i32 0, i32 1
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %browser1, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_browser_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call2)
  %4 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpBrowser*
  %call4 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0)) #4
  %call5 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0)) #4
  %call6 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0)) #4
  %call7 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0)) #4
  %call8 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0)) #4
  %call9 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0)) #4
  %call10 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0)) #4
  call void (%struct._GimpBrowser*, i8*, i32, ...) @gimp_browser_add_search_types(%struct._GimpBrowser* %4, i8* %call4, i32 1, i8* %call5, i32 2, i8* %call6, i32 3, i8* %call7, i32 4, i8* %call8, i32 5, i8* %call9, i32 6, i8* %call10, i32 7, i8* null)
  %5 = load %struct._GimpProcBrowserDialog*, %struct._GimpProcBrowserDialog** %dialog.addr, align 8
  %browser11 = getelementptr inbounds %struct._GimpProcBrowserDialog, %struct._GimpProcBrowserDialog* %5, i32 0, i32 1
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %browser11, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_container_get_type() #8
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call12)
  %8 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %8, i32 12)
  %9 = load %struct._GimpProcBrowserDialog*, %struct._GimpProcBrowserDialog** %dialog.addr, align 8
  %10 = bitcast %struct._GimpProcBrowserDialog* %9 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_dialog_get_type() #8
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call14)
  %11 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkDialog*
  %call16 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %11)
  %12 = bitcast %struct._GtkWidget* %call16 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_box_get_type() #8
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call17)
  %13 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkBox*
  %14 = load %struct._GimpProcBrowserDialog*, %struct._GimpProcBrowserDialog** %dialog.addr, align 8
  %browser19 = getelementptr inbounds %struct._GimpProcBrowserDialog, %struct._GimpProcBrowserDialog* %14, i32 0, i32 1
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %browser19, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %13, %struct._GtkWidget* %15, i32 1, i32 1, i32 0)
  %16 = load %struct._GimpProcBrowserDialog*, %struct._GimpProcBrowserDialog** %dialog.addr, align 8
  %browser20 = getelementptr inbounds %struct._GimpProcBrowserDialog, %struct._GimpProcBrowserDialog* %16, i32 0, i32 1
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %browser20, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %17)
  %18 = load %struct._GimpProcBrowserDialog*, %struct._GimpProcBrowserDialog** %dialog.addr, align 8
  %browser21 = getelementptr inbounds %struct._GimpProcBrowserDialog, %struct._GimpProcBrowserDialog* %18, i32 0, i32 1
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %browser21, align 8
  %20 = bitcast %struct._GtkWidget* %19 to i8*
  %21 = load %struct._GimpProcBrowserDialog*, %struct._GimpProcBrowserDialog** %dialog.addr, align 8
  %22 = bitcast %struct._GimpProcBrowserDialog* %21 to i8*
  %call22 = call i64 @g_signal_connect_data(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), void ()* bitcast (void (%struct._GimpBrowser*, i8*, i32, %struct._GimpProcBrowserDialog*)* @browser_search to void ()*), i8* %22, void (i8*, %struct._GClosure*)* null, i32 0)
  %call23 = call %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment* null, %struct._GtkAdjustment* null)
  store %struct._GtkWidget* %call23, %struct._GtkWidget** %scrolled_window, align 8
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_scrolled_window_get_type() #8
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call24)
  %25 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow* %25, i32 1)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_scrolled_window_get_type() #8
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call26)
  %28 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow* %28, i32 1, i32 0)
  %29 = load %struct._GimpProcBrowserDialog*, %struct._GimpProcBrowserDialog** %dialog.addr, align 8
  %browser28 = getelementptr inbounds %struct._GimpProcBrowserDialog, %struct._GimpProcBrowserDialog* %29, i32 0, i32 1
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %browser28, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call29 = call i64 @gimp_browser_get_type() #8
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call29)
  %32 = bitcast %struct._GTypeInstance* %call30 to %struct._GimpBrowser*
  %left_vbox = getelementptr inbounds %struct._GimpBrowser, %struct._GimpBrowser* %32, i32 0, i32 1
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %left_vbox, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_box_get_type() #8
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call31)
  %35 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkBox*
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %35, %struct._GtkWidget* %36, i32 1, i32 1, i32 0)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %37)
  %call33 = call %struct._GtkWidget* @gtk_tree_view_new()
  %38 = load %struct._GimpProcBrowserDialog*, %struct._GimpProcBrowserDialog** %dialog.addr, align 8
  %tree_view = getelementptr inbounds %struct._GimpProcBrowserDialog, %struct._GimpProcBrowserDialog* %38, i32 0, i32 3
  store %struct._GtkWidget* %call33, %struct._GtkWidget** %tree_view, align 8
  %call34 = call %struct._GtkCellRenderer* @gtk_cell_renderer_text_new()
  store %struct._GtkCellRenderer* %call34, %struct._GtkCellRenderer** %renderer, align 8
  %39 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %renderer, align 8
  %40 = bitcast %struct._GtkCellRenderer* %39 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_cell_renderer_text_get_type() #8
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call35)
  %41 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkCellRendererText*
  call void @gtk_cell_renderer_text_set_fixed_height_from_font(%struct._GtkCellRendererText* %41, i32 1)
  %42 = load %struct._GimpProcBrowserDialog*, %struct._GimpProcBrowserDialog** %dialog.addr, align 8
  %tree_view37 = getelementptr inbounds %struct._GimpProcBrowserDialog, %struct._GimpProcBrowserDialog* %42, i32 0, i32 3
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %tree_view37, align 8
  %44 = bitcast %struct._GtkWidget* %43 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_tree_view_get_type() #8
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call38)
  %45 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkTreeView*
  %46 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %renderer, align 8
  %call40 = call i32 (%struct._GtkTreeView*, i32, i8*, %struct._GtkCellRenderer*, ...) @gtk_tree_view_insert_column_with_attributes(%struct._GtkTreeView* %45, i32 -1, i8* null, %struct._GtkCellRenderer* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i32 0, i8* null)
  %47 = load %struct._GimpProcBrowserDialog*, %struct._GimpProcBrowserDialog** %dialog.addr, align 8
  %tree_view41 = getelementptr inbounds %struct._GimpProcBrowserDialog, %struct._GimpProcBrowserDialog* %47, i32 0, i32 3
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %tree_view41, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_tree_view_get_type() #8
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call42)
  %50 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkTreeView*
  call void @gtk_tree_view_set_headers_visible(%struct._GtkTreeView* %50, i32 0)
  %51 = load %struct._GimpProcBrowserDialog*, %struct._GimpProcBrowserDialog** %dialog.addr, align 8
  %tree_view44 = getelementptr inbounds %struct._GimpProcBrowserDialog, %struct._GimpProcBrowserDialog* %51, i32 0, i32 3
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %tree_view44, align 8
  %53 = bitcast %struct._GtkWidget* %52 to i8*
  %54 = load %struct._GimpProcBrowserDialog*, %struct._GimpProcBrowserDialog** %dialog.addr, align 8
  %55 = bitcast %struct._GimpProcBrowserDialog* %54 to i8*
  %call45 = call i64 @g_signal_connect_data(i8* %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), void ()* bitcast (void (%struct._GtkTreeView*, %struct._GtkTreePath*, %struct._GtkTreeViewColumn*, %struct._GimpProcBrowserDialog*)* @browser_row_activated to void ()*), i8* %55, void (i8*, %struct._GClosure*)* null, i32 0)
  %56 = load %struct._GimpProcBrowserDialog*, %struct._GimpProcBrowserDialog** %dialog.addr, align 8
  %tree_view46 = getelementptr inbounds %struct._GimpProcBrowserDialog, %struct._GimpProcBrowserDialog* %56, i32 0, i32 3
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %tree_view46, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %57, i32 250, i32 250)
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window, align 8
  %59 = bitcast %struct._GtkWidget* %58 to %struct._GTypeInstance*
  %call47 = call i64 @gtk_container_get_type() #8
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call47)
  %60 = bitcast %struct._GTypeInstance* %call48 to %struct._GtkContainer*
  %61 = load %struct._GimpProcBrowserDialog*, %struct._GimpProcBrowserDialog** %dialog.addr, align 8
  %tree_view49 = getelementptr inbounds %struct._GimpProcBrowserDialog, %struct._GimpProcBrowserDialog* %61, i32 0, i32 3
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %tree_view49, align 8
  call void @gtk_container_add(%struct._GtkContainer* %60, %struct._GtkWidget* %62)
  %63 = load %struct._GimpProcBrowserDialog*, %struct._GimpProcBrowserDialog** %dialog.addr, align 8
  %tree_view50 = getelementptr inbounds %struct._GimpProcBrowserDialog, %struct._GimpProcBrowserDialog* %63, i32 0, i32 3
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %tree_view50, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %64)
  %65 = load %struct._GimpProcBrowserDialog*, %struct._GimpProcBrowserDialog** %dialog.addr, align 8
  %tree_view51 = getelementptr inbounds %struct._GimpProcBrowserDialog, %struct._GimpProcBrowserDialog* %65, i32 0, i32 3
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %tree_view51, align 8
  %67 = bitcast %struct._GtkWidget* %66 to %struct._GTypeInstance*
  %call52 = call i64 @gtk_tree_view_get_type() #8
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 %call52)
  %68 = bitcast %struct._GTypeInstance* %call53 to %struct._GtkTreeView*
  %call54 = call %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView* %68)
  store %struct._GtkTreeSelection* %call54, %struct._GtkTreeSelection** %selection, align 8
  %69 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection, align 8
  %70 = bitcast %struct._GtkTreeSelection* %69 to i8*
  %71 = load %struct._GimpProcBrowserDialog*, %struct._GimpProcBrowserDialog** %dialog.addr, align 8
  %72 = bitcast %struct._GimpProcBrowserDialog* %71 to i8*
  %call55 = call i64 @g_signal_connect_data(i8* %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), void ()* bitcast (void (%struct._GtkTreeSelection*, %struct._GimpProcBrowserDialog*)* @browser_selection_changed to void ()*), i8* %72, void (i8*, %struct._GClosure*)* null, i32 0)
  %73 = load %struct._GimpProcBrowserDialog*, %struct._GimpProcBrowserDialog** %dialog.addr, align 8
  %browser56 = getelementptr inbounds %struct._GimpProcBrowserDialog, %struct._GimpProcBrowserDialog* %73, i32 0, i32 1
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %browser56, align 8
  %75 = bitcast %struct._GtkWidget* %74 to %struct._GTypeInstance*
  %call57 = call i64 @gimp_browser_get_type() #8
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %75, i64 %call57)
  %76 = bitcast %struct._GTypeInstance* %call58 to %struct._GimpBrowser*
  %right_vbox = getelementptr inbounds %struct._GimpBrowser, %struct._GimpBrowser* %76, i32 0, i32 7
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %right_vbox, align 8
  %call59 = call %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget* %77)
  store %struct._GtkWidget* %call59, %struct._GtkWidget** %parent, align 8
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %parent, align 8
  %call60 = call %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget* %78)
  store %struct._GtkWidget* %call60, %struct._GtkWidget** %parent, align 8
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %parent, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %79, i32 400, i32 -1)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_proc_browser_dialog_new(i8* %title, i8* %role, void (i8*, i8*)* %help_func, i8* %help_id, ...) #3 {
entry:
  %title.addr = alloca i8*, align 8
  %role.addr = alloca i8*, align 8
  %help_func.addr = alloca void (i8*, i8*)*, align 8
  %help_id.addr = alloca i8*, align 8
  %dialog = alloca %struct._GimpProcBrowserDialog*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %title, i8** %title.addr, align 8
  store i8* %role, i8** %role.addr, align 8
  store void (i8*, i8*)* %help_func, void (i8*, i8*)** %help_func.addr, align 8
  store i8* %help_id, i8** %help_id.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %call = call i64 @gimp_proc_browser_dialog_get_type() #8
  %0 = load i8*, i8** %title.addr, align 8
  %1 = load i8*, i8** %role.addr, align 8
  %2 = load void (i8*, i8*)*, void (i8*, i8*)** %help_func.addr, align 8
  %3 = load i8*, i8** %help_id.addr, align 8
  %call2 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*)* %2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* %3, i8* null)
  %4 = bitcast i8* %call2 to %struct._GimpProcBrowserDialog*
  store %struct._GimpProcBrowserDialog* %4, %struct._GimpProcBrowserDialog** %dialog, align 8
  %5 = load %struct._GimpProcBrowserDialog*, %struct._GimpProcBrowserDialog** %dialog, align 8
  %6 = bitcast %struct._GimpProcBrowserDialog* %5 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_dialog_get_type() #8
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call3)
  %7 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpDialog*
  %arraydecay5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @gimp_dialog_add_buttons_valist(%struct._GimpDialog* %7, %struct.__va_list_tag* %arraydecay5)
  %arraydecay6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay67 = bitcast %struct.__va_list_tag* %arraydecay6 to i8*
  call void @llvm.va_end(i8* %arraydecay67)
  %8 = load %struct._GimpProcBrowserDialog*, %struct._GimpProcBrowserDialog** %dialog, align 8
  %browser = getelementptr inbounds %struct._GimpProcBrowserDialog, %struct._GimpProcBrowserDialog* %8, i32 0, i32 1
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %browser, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_browser_get_type() #8
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call8)
  %11 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpBrowser*
  %12 = load %struct._GimpProcBrowserDialog*, %struct._GimpProcBrowserDialog** %dialog, align 8
  call void @browser_search(%struct._GimpBrowser* %11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0), i32 0, %struct._GimpProcBrowserDialog* %12)
  %13 = load %struct._GimpProcBrowserDialog*, %struct._GimpProcBrowserDialog** %dialog, align 8
  %14 = bitcast %struct._GimpProcBrowserDialog* %13 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_widget_get_type() #8
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call10)
  %15 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkWidget*
  ret %struct._GtkWidget* %15
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare i8* @g_object_new(i64, i8*, ...) #1

declare void @gimp_dialog_add_buttons_valist(%struct._GimpDialog*, %struct.__va_list_tag*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: nounwind uwtable
define internal void @browser_search(%struct._GimpBrowser* %browser, i8* %query_text, i32 %search_type, %struct._GimpProcBrowserDialog* %dialog) #3 {
entry:
  %browser.addr = alloca %struct._GimpBrowser*, align 8
  %query_text.addr = alloca i8*, align 8
  %search_type.addr = alloca i32, align 4
  %dialog.addr = alloca %struct._GimpProcBrowserDialog*, align 8
  %proc_list = alloca i8**, align 8
  %num_procs = alloca i32, align 4
  %str = alloca i8*, align 8
  %regex = alloca %struct._GRegex*, align 8
  %query = alloca %struct._GString*, align 8
  %q = alloca i8*, align 8
  %selection = alloca %struct._GtkTreeSelection*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %i = alloca i32, align 4
  store %struct._GimpBrowser* %browser, %struct._GimpBrowser** %browser.addr, align 8
  store i8* %query_text, i8** %query_text.addr, align 8
  store i32 %search_type, i32* %search_type.addr, align 4
  store %struct._GimpProcBrowserDialog* %dialog, %struct._GimpProcBrowserDialog** %dialog.addr, align 8
  %0 = load i8*, i8** %query_text.addr, align 8
  %call = call %struct._GRegex* @g_regex_new(i8* %0, i32 0, i32 0, %struct._GError** null)
  store %struct._GRegex* %call, %struct._GRegex** %regex, align 8
  %1 = load %struct._GRegex*, %struct._GRegex** %regex, align 8
  %tobool = icmp ne %struct._GRegex* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpProcBrowserDialog*, %struct._GimpProcBrowserDialog** %dialog.addr, align 8
  %tree_view = getelementptr inbounds %struct._GimpProcBrowserDialog, %struct._GimpProcBrowserDialog* %2, i32 0, i32 3
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %tree_view, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_tree_view_get_type() #8
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call1)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkTreeView*
  call void @gtk_tree_view_set_model(%struct._GtkTreeView* %5, %struct._GtkTreeModel* null)
  %6 = load %struct._GimpProcBrowserDialog*, %struct._GimpProcBrowserDialog** %dialog.addr, align 8
  %store = getelementptr inbounds %struct._GimpProcBrowserDialog, %struct._GimpProcBrowserDialog* %6, i32 0, i32 2
  store %struct._GtkListStore* null, %struct._GtkListStore** %store, align 8
  %7 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %call3 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0)) #4
  call void @gimp_browser_show_message(%struct._GimpBrowser* %7, i8* %call3)
  %8 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %count_label = getelementptr inbounds %struct._GimpBrowser, %struct._GimpBrowser* %8, i32 0, i32 6
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %count_label, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_label_get_type() #8
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call4)
  %11 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkLabel*
  %call6 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i32 0, i32 0)) #4
  call void @gtk_label_set_text(%struct._GtkLabel* %11, i8* %call6)
  br label %if.end.101

if.end:                                           ; preds = %entry
  %12 = load %struct._GRegex*, %struct._GRegex** %regex, align 8
  call void @g_regex_unref(%struct._GRegex* %12)
  %13 = load i32, i32* %search_type.addr, align 4
  switch i32 %13, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.9
    i32 2, label %sw.bb.24
    i32 3, label %sw.bb.27
    i32 4, label %sw.bb.30
    i32 5, label %sw.bb.33
    i32 6, label %sw.bb.36
    i32 7, label %sw.bb.39
  ]

sw.bb:                                            ; preds = %if.end
  %14 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %call7 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0)) #4
  call void @gimp_browser_show_message(%struct._GimpBrowser* %14, i8* %call7)
  %call8 = call i32 @gimp_procedural_db_query(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i32* %num_procs, i8*** %proc_list)
  br label %sw.epilog

sw.bb.9:                                          ; preds = %if.end
  %call10 = call %struct._GString* @g_string_new(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GString* %call10, %struct._GString** %query, align 8
  %15 = load i8*, i8** %query_text.addr, align 8
  store i8* %15, i8** %q, align 8
  %16 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %call11 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i32 0, i32 0)) #4
  call void @gimp_browser_show_message(%struct._GimpBrowser* %16, i8* %call11)
  br label %while.cond

while.cond:                                       ; preds = %if.end.20, %sw.bb.9
  %17 = load i8*, i8** %q, align 8
  %18 = load i8, i8* %17, align 1
  %tobool12 = icmp ne i8 %18, 0
  br i1 %tobool12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load i8*, i8** %q, align 8
  %20 = load i8, i8* %19, align 1
  %conv = sext i8 %20 to i32
  %cmp = icmp eq i32 %conv, 95
  br i1 %cmp, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %21 = load i8*, i8** %q, align 8
  %22 = load i8, i8* %21, align 1
  %conv14 = sext i8 %22 to i32
  %cmp15 = icmp eq i32 %conv14, 45
  br i1 %cmp15, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %lor.lhs.false, %while.body
  %23 = load %struct._GString*, %struct._GString** %query, align 8
  %call18 = call %struct._GString* @g_string_append(%struct._GString* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0))
  br label %if.end.20

if.else:                                          ; preds = %lor.lhs.false
  %24 = load %struct._GString*, %struct._GString** %query, align 8
  %25 = load i8*, i8** %q, align 8
  %26 = load i8, i8* %25, align 1
  %call19 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %24, i8 signext %26)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.17
  %27 = load i8*, i8** %q, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr, i8** %q, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %28 = load %struct._GString*, %struct._GString** %query, align 8
  %str21 = getelementptr inbounds %struct._GString, %struct._GString* %28, i32 0, i32 0
  %29 = load i8*, i8** %str21, align 8
  %call22 = call i32 @gimp_procedural_db_query(i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i32* %num_procs, i8*** %proc_list)
  %30 = load %struct._GString*, %struct._GString** %query, align 8
  %call23 = call i8* @g_string_free(%struct._GString* %30, i32 1)
  br label %sw.epilog

sw.bb.24:                                         ; preds = %if.end
  %31 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %call25 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i32 0, i32 0)) #4
  call void @gimp_browser_show_message(%struct._GimpBrowser* %31, i8* %call25)
  %32 = load i8*, i8** %query_text.addr, align 8
  %call26 = call i32 @gimp_procedural_db_query(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i32* %num_procs, i8*** %proc_list)
  br label %sw.epilog

sw.bb.27:                                         ; preds = %if.end
  %33 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %call28 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i32 0, i32 0)) #4
  call void @gimp_browser_show_message(%struct._GimpBrowser* %33, i8* %call28)
  %34 = load i8*, i8** %query_text.addr, align 8
  %call29 = call i32 @gimp_procedural_db_query(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i32* %num_procs, i8*** %proc_list)
  br label %sw.epilog

sw.bb.30:                                         ; preds = %if.end
  %35 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %call31 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i32 0, i32 0)) #4
  call void @gimp_browser_show_message(%struct._GimpBrowser* %35, i8* %call31)
  %36 = load i8*, i8** %query_text.addr, align 8
  %call32 = call i32 @gimp_procedural_db_query(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i32* %num_procs, i8*** %proc_list)
  br label %sw.epilog

sw.bb.33:                                         ; preds = %if.end
  %37 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %call34 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.31, i32 0, i32 0)) #4
  call void @gimp_browser_show_message(%struct._GimpBrowser* %37, i8* %call34)
  %38 = load i8*, i8** %query_text.addr, align 8
  %call35 = call i32 @gimp_procedural_db_query(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i32* %num_procs, i8*** %proc_list)
  br label %sw.epilog

sw.bb.36:                                         ; preds = %if.end
  %39 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %call37 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i32 0, i32 0)) #4
  call void @gimp_browser_show_message(%struct._GimpBrowser* %39, i8* %call37)
  %40 = load i8*, i8** %query_text.addr, align 8
  %call38 = call i32 @gimp_procedural_db_query(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i32* %num_procs, i8*** %proc_list)
  br label %sw.epilog

sw.bb.39:                                         ; preds = %if.end
  %41 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %call40 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i32 0, i32 0)) #4
  call void @gimp_browser_show_message(%struct._GimpBrowser* %41, i8* %call40)
  %42 = load i8*, i8** %query_text.addr, align 8
  %call41 = call i32 @gimp_procedural_db_query(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* %42, i32* %num_procs, i8*** %proc_list)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb.39, %sw.bb.36, %sw.bb.33, %sw.bb.30, %sw.bb.27, %sw.bb.24, %while.end, %sw.bb
  %43 = load i8*, i8** %query_text.addr, align 8
  %tobool42 = icmp ne i8* %43, null
  br i1 %tobool42, label %lor.lhs.false.43, label %if.then.47

lor.lhs.false.43:                                 ; preds = %sw.epilog
  %44 = load i8*, i8** %query_text.addr, align 8
  %call44 = call i64 @strlen(i8* %44) #9
  %cmp45 = icmp eq i64 %call44, 0
  br i1 %cmp45, label %if.then.47, label %if.else.51

if.then.47:                                       ; preds = %lor.lhs.false.43, %sw.epilog
  %45 = load i32, i32* %num_procs, align 4
  %conv48 = sext i32 %45 to i64
  %call49 = call i8* @dngettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0), i64 %conv48) #4
  %46 = load i32, i32* %num_procs, align 4
  %call50 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call49, i32 %46)
  store i8* %call50, i8** %str, align 8
  br label %if.end.59

if.else.51:                                       ; preds = %lor.lhs.false.43
  %47 = load i32, i32* %num_procs, align 4
  switch i32 %47, label %sw.default [
    i32 0, label %sw.bb.52
  ]

sw.bb.52:                                         ; preds = %if.else.51
  %call53 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.36, i32 0, i32 0)) #4
  %call54 = call noalias i8* @g_strdup(i8* %call53)
  store i8* %call54, i8** %str, align 8
  br label %sw.epilog.58

sw.default:                                       ; preds = %if.else.51
  %48 = load i32, i32* %num_procs, align 4
  %conv55 = sext i32 %48 to i64
  %call56 = call i8* @dngettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.38, i32 0, i32 0), i64 %conv55) #4
  %49 = load i32, i32* %num_procs, align 4
  %call57 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call56, i32 %49)
  store i8* %call57, i8** %str, align 8
  br label %sw.epilog.58

sw.epilog.58:                                     ; preds = %sw.default, %sw.bb.52
  br label %if.end.59

if.end.59:                                        ; preds = %sw.epilog.58, %if.then.47
  %50 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %count_label60 = getelementptr inbounds %struct._GimpBrowser, %struct._GimpBrowser* %50, i32 0, i32 6
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %count_label60, align 8
  %52 = bitcast %struct._GtkWidget* %51 to %struct._GTypeInstance*
  %call61 = call i64 @gtk_label_get_type() #8
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call61)
  %53 = bitcast %struct._GTypeInstance* %call62 to %struct._GtkLabel*
  %54 = load i8*, i8** %str, align 8
  call void @gtk_label_set_text(%struct._GtkLabel* %53, i8* %54)
  %55 = load i8*, i8** %str, align 8
  call void @g_free(i8* %55)
  %56 = load i32, i32* %num_procs, align 4
  %cmp63 = icmp sgt i32 %56, 0
  br i1 %cmp63, label %if.then.65, label %if.else.95

if.then.65:                                       ; preds = %if.end.59
  %call66 = call %struct._GtkListStore* (i32, ...) @gtk_list_store_new(i32 1, i64 64)
  %57 = load %struct._GimpProcBrowserDialog*, %struct._GimpProcBrowserDialog** %dialog.addr, align 8
  %store67 = getelementptr inbounds %struct._GimpProcBrowserDialog, %struct._GimpProcBrowserDialog* %57, i32 0, i32 2
  store %struct._GtkListStore* %call66, %struct._GtkListStore** %store67, align 8
  %58 = load %struct._GimpProcBrowserDialog*, %struct._GimpProcBrowserDialog** %dialog.addr, align 8
  %tree_view68 = getelementptr inbounds %struct._GimpProcBrowserDialog, %struct._GimpProcBrowserDialog* %58, i32 0, i32 3
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %tree_view68, align 8
  %60 = bitcast %struct._GtkWidget* %59 to %struct._GTypeInstance*
  %call69 = call i64 @gtk_tree_view_get_type() #8
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call69)
  %61 = bitcast %struct._GTypeInstance* %call70 to %struct._GtkTreeView*
  %62 = load %struct._GimpProcBrowserDialog*, %struct._GimpProcBrowserDialog** %dialog.addr, align 8
  %store71 = getelementptr inbounds %struct._GimpProcBrowserDialog, %struct._GimpProcBrowserDialog* %62, i32 0, i32 2
  %63 = load %struct._GtkListStore*, %struct._GtkListStore** %store71, align 8
  %64 = bitcast %struct._GtkListStore* %63 to %struct._GTypeInstance*
  %call72 = call i64 @gtk_tree_model_get_type() #8
  %call73 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call72)
  %65 = bitcast %struct._GTypeInstance* %call73 to %struct._GtkTreeModel*
  call void @gtk_tree_view_set_model(%struct._GtkTreeView* %61, %struct._GtkTreeModel* %65)
  %66 = load %struct._GimpProcBrowserDialog*, %struct._GimpProcBrowserDialog** %dialog.addr, align 8
  %store74 = getelementptr inbounds %struct._GimpProcBrowserDialog, %struct._GimpProcBrowserDialog* %66, i32 0, i32 2
  %67 = load %struct._GtkListStore*, %struct._GtkListStore** %store74, align 8
  %68 = bitcast %struct._GtkListStore* %67 to i8*
  call void @g_object_unref(i8* %68)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.65
  %69 = load i32, i32* %i, align 4
  %70 = load i32, i32* %num_procs, align 4
  %cmp75 = icmp slt i32 %69, %70
  br i1 %cmp75, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %71 = load %struct._GimpProcBrowserDialog*, %struct._GimpProcBrowserDialog** %dialog.addr, align 8
  %store77 = getelementptr inbounds %struct._GimpProcBrowserDialog, %struct._GimpProcBrowserDialog* %71, i32 0, i32 2
  %72 = load %struct._GtkListStore*, %struct._GtkListStore** %store77, align 8
  call void @gtk_list_store_append(%struct._GtkListStore* %72, %struct._GtkTreeIter* %iter)
  %73 = load %struct._GimpProcBrowserDialog*, %struct._GimpProcBrowserDialog** %dialog.addr, align 8
  %store78 = getelementptr inbounds %struct._GimpProcBrowserDialog, %struct._GimpProcBrowserDialog* %73, i32 0, i32 2
  %74 = load %struct._GtkListStore*, %struct._GtkListStore** %store78, align 8
  %75 = load i32, i32* %i, align 4
  %idxprom = sext i32 %75 to i64
  %76 = load i8**, i8*** %proc_list, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %76, i64 %idxprom
  %77 = load i8*, i8** %arrayidx, align 8
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %74, %struct._GtkTreeIter* %iter, i32 0, i8* %77, i32 -1)
  %78 = load i32, i32* %i, align 4
  %idxprom79 = sext i32 %78 to i64
  %79 = load i8**, i8*** %proc_list, align 8
  %arrayidx80 = getelementptr inbounds i8*, i8** %79, i64 %idxprom79
  %80 = load i8*, i8** %arrayidx80, align 8
  call void @g_free(i8* %80)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %81 = load i32, i32* %i, align 4
  %inc = add nsw i32 %81, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %82 = load i8**, i8*** %proc_list, align 8
  %83 = bitcast i8** %82 to i8*
  call void @g_free(i8* %83)
  %84 = load %struct._GimpProcBrowserDialog*, %struct._GimpProcBrowserDialog** %dialog.addr, align 8
  %tree_view81 = getelementptr inbounds %struct._GimpProcBrowserDialog, %struct._GimpProcBrowserDialog* %84, i32 0, i32 3
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %tree_view81, align 8
  %86 = bitcast %struct._GtkWidget* %85 to %struct._GTypeInstance*
  %call82 = call i64 @gtk_tree_view_get_type() #8
  %call83 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %86, i64 %call82)
  %87 = bitcast %struct._GTypeInstance* %call83 to %struct._GtkTreeView*
  call void @gtk_tree_view_columns_autosize(%struct._GtkTreeView* %87)
  %88 = load %struct._GimpProcBrowserDialog*, %struct._GimpProcBrowserDialog** %dialog.addr, align 8
  %store84 = getelementptr inbounds %struct._GimpProcBrowserDialog, %struct._GimpProcBrowserDialog* %88, i32 0, i32 2
  %89 = load %struct._GtkListStore*, %struct._GtkListStore** %store84, align 8
  %90 = bitcast %struct._GtkListStore* %89 to %struct._GTypeInstance*
  %call85 = call i64 @gtk_tree_sortable_get_type() #8
  %call86 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %90, i64 %call85)
  %91 = bitcast %struct._GTypeInstance* %call86 to %struct._GtkTreeSortable*
  call void @gtk_tree_sortable_set_sort_column_id(%struct._GtkTreeSortable* %91, i32 0, i32 0)
  %92 = load %struct._GimpProcBrowserDialog*, %struct._GimpProcBrowserDialog** %dialog.addr, align 8
  %store87 = getelementptr inbounds %struct._GimpProcBrowserDialog, %struct._GimpProcBrowserDialog* %92, i32 0, i32 2
  %93 = load %struct._GtkListStore*, %struct._GtkListStore** %store87, align 8
  %94 = bitcast %struct._GtkListStore* %93 to %struct._GTypeInstance*
  %call88 = call i64 @gtk_tree_model_get_type() #8
  %call89 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %94, i64 %call88)
  %95 = bitcast %struct._GTypeInstance* %call89 to %struct._GtkTreeModel*
  %call90 = call i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel* %95, %struct._GtkTreeIter* %iter)
  %96 = load %struct._GimpProcBrowserDialog*, %struct._GimpProcBrowserDialog** %dialog.addr, align 8
  %tree_view91 = getelementptr inbounds %struct._GimpProcBrowserDialog, %struct._GimpProcBrowserDialog* %96, i32 0, i32 3
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %tree_view91, align 8
  %98 = bitcast %struct._GtkWidget* %97 to %struct._GTypeInstance*
  %call92 = call i64 @gtk_tree_view_get_type() #8
  %call93 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %98, i64 %call92)
  %99 = bitcast %struct._GTypeInstance* %call93 to %struct._GtkTreeView*
  %call94 = call %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView* %99)
  store %struct._GtkTreeSelection* %call94, %struct._GtkTreeSelection** %selection, align 8
  %100 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection, align 8
  call void @gtk_tree_selection_select_iter(%struct._GtkTreeSelection* %100, %struct._GtkTreeIter* %iter)
  br label %if.end.101

if.else.95:                                       ; preds = %if.end.59
  %101 = load %struct._GimpProcBrowserDialog*, %struct._GimpProcBrowserDialog** %dialog.addr, align 8
  %tree_view96 = getelementptr inbounds %struct._GimpProcBrowserDialog, %struct._GimpProcBrowserDialog* %101, i32 0, i32 3
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %tree_view96, align 8
  %103 = bitcast %struct._GtkWidget* %102 to %struct._GTypeInstance*
  %call97 = call i64 @gtk_tree_view_get_type() #8
  %call98 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %103, i64 %call97)
  %104 = bitcast %struct._GTypeInstance* %call98 to %struct._GtkTreeView*
  call void @gtk_tree_view_set_model(%struct._GtkTreeView* %104, %struct._GtkTreeModel* null)
  %105 = load %struct._GimpProcBrowserDialog*, %struct._GimpProcBrowserDialog** %dialog.addr, align 8
  %store99 = getelementptr inbounds %struct._GimpProcBrowserDialog, %struct._GimpProcBrowserDialog* %105, i32 0, i32 2
  store %struct._GtkListStore* null, %struct._GtkListStore** %store99, align 8
  %106 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %call100 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0)) #4
  call void @gimp_browser_show_message(%struct._GimpBrowser* %106, i8* %call100)
  br label %if.end.101

if.end.101:                                       ; preds = %if.then, %if.else.95, %for.end
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_browser_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind uwtable
define i8* @gimp_proc_browser_dialog_get_selected(%struct._GimpProcBrowserDialog* %dialog) #3 {
entry:
  %retval = alloca i8*, align 8
  %dialog.addr = alloca %struct._GimpProcBrowserDialog*, align 8
  %sel = alloca %struct._GtkTreeSelection*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %proc_name = alloca i8*, align 8
  store %struct._GimpProcBrowserDialog* %dialog, %struct._GimpProcBrowserDialog** %dialog.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpProcBrowserDialog*, %struct._GimpProcBrowserDialog** %dialog.addr, align 8
  %1 = bitcast %struct._GimpProcBrowserDialog* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_proc_browser_dialog_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_proc_browser_dialog_get_selected, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpProcBrowserDialog*, %struct._GimpProcBrowserDialog** %dialog.addr, align 8
  %tree_view = getelementptr inbounds %struct._GimpProcBrowserDialog, %struct._GimpProcBrowserDialog* %13, i32 0, i32 3
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %tree_view, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_tree_view_get_type() #8
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call11)
  %16 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkTreeView*
  %call13 = call %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView* %16)
  store %struct._GtkTreeSelection* %call13, %struct._GtkTreeSelection** %sel, align 8
  %17 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %sel, align 8
  %call14 = call i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection* %17, %struct._GtkTreeModel** null, %struct._GtkTreeIter* %iter)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.end.20

if.then.16:                                       ; preds = %do.end
  %18 = load %struct._GimpProcBrowserDialog*, %struct._GimpProcBrowserDialog** %dialog.addr, align 8
  %store = getelementptr inbounds %struct._GimpProcBrowserDialog, %struct._GimpProcBrowserDialog* %18, i32 0, i32 2
  %19 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %20 = bitcast %struct._GtkListStore* %19 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_tree_model_get_type() #8
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call18)
  %21 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkTreeModel*
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %21, %struct._GtkTreeIter* %iter, i32 0, i8** %proc_name, i32 -1)
  %22 = load i8*, i8** %proc_name, align 8
  store i8* %22, i8** %retval
  br label %return

if.end.20:                                        ; preds = %do.end
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.then.16, %if.else.9
  %23 = load i8*, i8** %retval
  ret i8* %23
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #5

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_view_get_type() #2

declare i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection*, %struct._GtkTreeModel**, %struct._GtkTreeIter*) #1

declare void @gtk_tree_model_get(%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_model_get_type() #2

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_proc_browser_dialog_class_init(%struct._GimpProcBrowserDialogClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpProcBrowserDialogClass*, align 8
  store %struct._GimpProcBrowserDialogClass* %klass, %struct._GimpProcBrowserDialogClass** %klass.addr, align 8
  %0 = load %struct._GimpProcBrowserDialogClass*, %struct._GimpProcBrowserDialogClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpProcBrowserDialogClass* %0 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %1, i32 0, i32 0
  %2 = load i64, i64* %g_type, align 8
  %call = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0), i64 %2, i32 2, i32 984, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @dialog_signals, i32 0, i64 0), align 4
  %3 = load %struct._GimpProcBrowserDialogClass*, %struct._GimpProcBrowserDialogClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpProcBrowserDialogClass* %3 to %struct._GTypeClass*
  %g_type1 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %4, i32 0, i32 0
  %5 = load i64, i64* %g_type1, align 8
  %call2 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i64 %5, i32 2, i32 992, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call2, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @dialog_signals, i32 0, i64 1), align 4
  %6 = load %struct._GimpProcBrowserDialogClass*, %struct._GimpProcBrowserDialogClass** %klass.addr, align 8
  %selection_changed = getelementptr inbounds %struct._GimpProcBrowserDialogClass, %struct._GimpProcBrowserDialogClass* %6, i32 0, i32 1
  store void (%struct._GimpProcBrowserDialog*)* null, void (%struct._GimpProcBrowserDialog*)** %selection_changed, align 8
  %7 = load %struct._GimpProcBrowserDialogClass*, %struct._GimpProcBrowserDialogClass** %klass.addr, align 8
  %row_activated = getelementptr inbounds %struct._GimpProcBrowserDialogClass, %struct._GimpProcBrowserDialogClass* %7, i32 0, i32 2
  store void (%struct._GimpProcBrowserDialog*)* null, void (%struct._GimpProcBrowserDialog*)** %row_activated, align 8
  ret void
}

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @g_cclosure_marshal_VOID__VOID(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

declare %struct._GtkWidget* @gimp_browser_new() #1

declare void @gimp_browser_add_search_types(%struct._GimpBrowser*, i8*, i32, ...) #1

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #6

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment*, %struct._GtkAdjustment*) #1

declare void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_scrolled_window_get_type() #2

declare void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow*, i32, i32) #1

declare %struct._GtkWidget* @gtk_tree_view_new() #1

declare %struct._GtkCellRenderer* @gtk_cell_renderer_text_new() #1

declare void @gtk_cell_renderer_text_set_fixed_height_from_font(%struct._GtkCellRendererText*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_cell_renderer_text_get_type() #2

declare i32 @gtk_tree_view_insert_column_with_attributes(%struct._GtkTreeView*, i32, i8*, %struct._GtkCellRenderer*, ...) #1

declare void @gtk_tree_view_set_headers_visible(%struct._GtkTreeView*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @browser_row_activated(%struct._GtkTreeView* %treeview, %struct._GtkTreePath* %path, %struct._GtkTreeViewColumn* %column, %struct._GimpProcBrowserDialog* %dialog) #3 {
entry:
  %treeview.addr = alloca %struct._GtkTreeView*, align 8
  %path.addr = alloca %struct._GtkTreePath*, align 8
  %column.addr = alloca %struct._GtkTreeViewColumn*, align 8
  %dialog.addr = alloca %struct._GimpProcBrowserDialog*, align 8
  store %struct._GtkTreeView* %treeview, %struct._GtkTreeView** %treeview.addr, align 8
  store %struct._GtkTreePath* %path, %struct._GtkTreePath** %path.addr, align 8
  store %struct._GtkTreeViewColumn* %column, %struct._GtkTreeViewColumn** %column.addr, align 8
  store %struct._GimpProcBrowserDialog* %dialog, %struct._GimpProcBrowserDialog** %dialog.addr, align 8
  %0 = load %struct._GimpProcBrowserDialog*, %struct._GimpProcBrowserDialog** %dialog.addr, align 8
  %1 = bitcast %struct._GimpProcBrowserDialog* %0 to i8*
  %2 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @dialog_signals, i32 0, i64 1), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %1, i32 %2, i32 0)
  ret void
}

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @browser_selection_changed(%struct._GtkTreeSelection* %sel, %struct._GimpProcBrowserDialog* %dialog) #3 {
entry:
  %sel.addr = alloca %struct._GtkTreeSelection*, align 8
  %dialog.addr = alloca %struct._GimpProcBrowserDialog*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %proc_name = alloca i8*, align 8
  store %struct._GtkTreeSelection* %sel, %struct._GtkTreeSelection** %sel.addr, align 8
  store %struct._GimpProcBrowserDialog* %dialog, %struct._GimpProcBrowserDialog** %dialog.addr, align 8
  %0 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %sel.addr, align 8
  %call = call i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection* %0, %struct._GtkTreeModel** null, %struct._GtkTreeIter* %iter)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpProcBrowserDialog*, %struct._GimpProcBrowserDialog** %dialog.addr, align 8
  %store = getelementptr inbounds %struct._GimpProcBrowserDialog, %struct._GimpProcBrowserDialog* %1, i32 0, i32 2
  %2 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %3 = bitcast %struct._GtkListStore* %2 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_tree_model_get_type() #8
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call1)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkTreeModel*
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %4, %struct._GtkTreeIter* %iter, i32 0, i8** %proc_name, i32 -1)
  %5 = load %struct._GimpProcBrowserDialog*, %struct._GimpProcBrowserDialog** %dialog.addr, align 8
  %6 = load i8*, i8** %proc_name, align 8
  call void @browser_show_procedure(%struct._GimpProcBrowserDialog* %5, i8* %6)
  %7 = load i8*, i8** %proc_name, align 8
  call void @g_free(i8* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpProcBrowserDialog*, %struct._GimpProcBrowserDialog** %dialog.addr, align 8
  %9 = bitcast %struct._GimpProcBrowserDialog* %8 to i8*
  %10 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @dialog_signals, i32 0, i64 0), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %9, i32 %10, i32 0)
  ret void
}

declare %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget*) #1

declare void @g_signal_emit(i8*, i32, i32, ...) #1

; Function Attrs: nounwind uwtable
define internal void @browser_show_procedure(%struct._GimpProcBrowserDialog* %dialog, i8* %proc_name) #3 {
entry:
  %dialog.addr = alloca %struct._GimpProcBrowserDialog*, align 8
  %proc_name.addr = alloca i8*, align 8
  %proc_blurb = alloca i8*, align 8
  %proc_help = alloca i8*, align 8
  %proc_author = alloca i8*, align 8
  %proc_copyright = alloca i8*, align 8
  %proc_date = alloca i8*, align 8
  %proc_type = alloca i32, align 4
  %n_params = alloca i32, align 4
  %n_return_vals = alloca i32, align 4
  %params = alloca %struct._GimpParamDef*, align 8
  %return_vals = alloca %struct._GimpParamDef*, align 8
  store %struct._GimpProcBrowserDialog* %dialog, %struct._GimpProcBrowserDialog** %dialog.addr, align 8
  store i8* %proc_name, i8** %proc_name.addr, align 8
  %0 = load i8*, i8** %proc_name.addr, align 8
  %call = call i32 @gimp_procedural_db_proc_info(i8* %0, i8** %proc_blurb, i8** %proc_help, i8** %proc_author, i8** %proc_copyright, i8** %proc_date, i32* %proc_type, i32* %n_params, i32* %n_return_vals, %struct._GimpParamDef** %params, %struct._GimpParamDef** %return_vals)
  %1 = load %struct._GimpProcBrowserDialog*, %struct._GimpProcBrowserDialog** %dialog.addr, align 8
  %browser = getelementptr inbounds %struct._GimpProcBrowserDialog, %struct._GimpProcBrowserDialog* %1, i32 0, i32 1
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %browser, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_browser_get_type() #8
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call1)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpBrowser*
  %5 = load i8*, i8** %proc_name.addr, align 8
  %6 = load i8*, i8** %proc_blurb, align 8
  %7 = load i8*, i8** %proc_help, align 8
  %8 = load i8*, i8** %proc_author, align 8
  %9 = load i8*, i8** %proc_copyright, align 8
  %10 = load i8*, i8** %proc_date, align 8
  %11 = load i32, i32* %proc_type, align 4
  %12 = load i32, i32* %n_params, align 4
  %13 = load i32, i32* %n_return_vals, align 4
  %14 = load %struct._GimpParamDef*, %struct._GimpParamDef** %params, align 8
  %15 = load %struct._GimpParamDef*, %struct._GimpParamDef** %return_vals, align 8
  %call3 = call %struct._GtkWidget* @gimp_proc_view_new(i8* %5, i8* null, i8* %6, i8* %7, i8* %8, i8* %9, i8* %10, i32 %11, i32 %12, i32 %13, %struct._GimpParamDef* %14, %struct._GimpParamDef* %15)
  call void @gimp_browser_set_widget(%struct._GimpBrowser* %4, %struct._GtkWidget* %call3)
  %16 = load i8*, i8** %proc_blurb, align 8
  call void @g_free(i8* %16)
  %17 = load i8*, i8** %proc_help, align 8
  call void @g_free(i8* %17)
  %18 = load i8*, i8** %proc_author, align 8
  call void @g_free(i8* %18)
  %19 = load i8*, i8** %proc_copyright, align 8
  call void @g_free(i8* %19)
  %20 = load i8*, i8** %proc_date, align 8
  call void @g_free(i8* %20)
  %21 = load %struct._GimpParamDef*, %struct._GimpParamDef** %params, align 8
  %22 = load i32, i32* %n_params, align 4
  call void @gimp_destroy_paramdefs(%struct._GimpParamDef* %21, i32 %22)
  %23 = load %struct._GimpParamDef*, %struct._GimpParamDef** %return_vals, align 8
  %24 = load i32, i32* %n_return_vals, align 4
  call void @gimp_destroy_paramdefs(%struct._GimpParamDef* %23, i32 %24)
  ret void
}

declare void @g_free(i8*) #1

declare i32 @gimp_procedural_db_proc_info(i8*, i8**, i8**, i8**, i8**, i8**, i32*, i32*, i32*, %struct._GimpParamDef**, %struct._GimpParamDef**) #1

declare void @gimp_browser_set_widget(%struct._GimpBrowser*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_proc_view_new(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, %struct._GimpParamDef*, %struct._GimpParamDef*) #1

declare void @gimp_destroy_paramdefs(%struct._GimpParamDef*, i32) #1

declare %struct._GRegex* @g_regex_new(i8*, i32, i32, %struct._GError**) #1

declare void @gtk_tree_view_set_model(%struct._GtkTreeView*, %struct._GtkTreeModel*) #1

declare void @gimp_browser_show_message(%struct._GimpBrowser*, i8*) #1

declare void @gtk_label_set_text(%struct._GtkLabel*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #2

declare void @g_regex_unref(%struct._GRegex*) #1

declare i32 @gimp_procedural_db_query(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32*, i8***) #1

declare %struct._GString* @g_string_new(i8*) #1

declare %struct._GString* @g_string_append(%struct._GString*, i8*) #1

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

declare i8* @g_string_free(%struct._GString*, i32) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

declare noalias i8* @g_strdup_printf(i8*, ...) #1

; Function Attrs: nounwind
declare i8* @dngettext(i8*, i8*, i8*, i64) #6

declare noalias i8* @g_strdup(i8*) #1

declare %struct._GtkListStore* @gtk_list_store_new(i32, ...) #1

declare void @g_object_unref(i8*) #1

declare void @gtk_list_store_append(%struct._GtkListStore*, %struct._GtkTreeIter*) #1

declare void @gtk_list_store_set(%struct._GtkListStore*, %struct._GtkTreeIter*, ...) #1

declare void @gtk_tree_view_columns_autosize(%struct._GtkTreeView*) #1

declare void @gtk_tree_sortable_set_sort_column_id(%struct._GtkTreeSortable*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_sortable_get_type() #2

declare i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

declare void @gtk_tree_selection_select_iter(%struct._GtkTreeSelection*, %struct._GtkTreeIter*) #1

declare %struct._GString* @g_string_insert_c(%struct._GString*, i64, i8 signext) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
