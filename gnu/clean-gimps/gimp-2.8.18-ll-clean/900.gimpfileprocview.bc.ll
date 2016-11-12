; ModuleID = './app/widgets/gimpfileprocview.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpFileProcViewClass = type { %struct._GtkTreeViewClass, void (%struct._GimpFileProcView*)* }
%struct._GtkTreeViewClass = type { %struct._GtkContainerClass, void (%struct._GtkTreeView*, %struct._GtkAdjustment*, %struct._GtkAdjustment*)*, void (%struct._GtkTreeView*, %struct._GtkTreePath*, %struct._GtkTreeViewColumn*)*, i32 (%struct._GtkTreeView*, %struct._GtkTreeIter*, %struct._GtkTreePath*)*, i32 (%struct._GtkTreeView*, %struct._GtkTreeIter*, %struct._GtkTreePath*)*, void (%struct._GtkTreeView*, %struct._GtkTreeIter*, %struct._GtkTreePath*)*, void (%struct._GtkTreeView*, %struct._GtkTreeIter*, %struct._GtkTreePath*)*, void (%struct._GtkTreeView*)*, void (%struct._GtkTreeView*)*, i32 (%struct._GtkTreeView*, i32, i32)*, i32 (%struct._GtkTreeView*)*, i32 (%struct._GtkTreeView*)*, i32 (%struct._GtkTreeView*, i32)*, i32 (%struct._GtkTreeView*)*, i32 (%struct._GtkTreeView*, i32, i32, i32)*, i32 (%struct._GtkTreeView*)*, i32 (%struct._GtkTreeView*)*, void ()*, void ()*, void ()*, void ()*, void ()* }
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
%struct._GtkTreeView = type { %struct._GtkContainer, %struct._GtkTreeViewPrivate* }
%struct._GtkTreeViewPrivate = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkTreePath = type opaque
%struct._GtkTreeViewColumn = type { %struct._GtkObject, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkDrawable*, %struct._GtkCellEditable*, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, %struct._GList*, i32, i32, i32, i32, i16 }
%struct._GtkCellEditable = type opaque
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._GimpFileProcView = type { %struct._GtkTreeView, %struct._GList* }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
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
%struct._GimpPDB = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpContext = type opaque
%struct._GtkCellRenderer = type { %struct._GtkObject, float, float, i32, i32, i16, i16, i8 }
%struct._GtkListStore = type { %struct._GObject, i32, i8*, i8*, %struct._GList*, i32, i32, i32, i64*, i32, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }
%struct._GtkTreeModel = type opaque
%struct._GimpPlugInProcedure = type { %struct._GimpProcedure, i8*, i32, i32, i8*, %struct._GList*, i8*, i32, i32, i8*, i8*, i32, i64, i32, i32, i8*, i8*, i8*, i8*, %struct._GSList*, %struct._GSList*, %struct._GSList*, i8* }
%struct._GimpProcedure = type { %struct._GimpObject, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GParamSpec**, i32, %struct._GParamSpec**, %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* }
%struct._GValueArray = type { i32, %struct._GValue*, i32 }
%struct._GError = type { i32, i32, i8* }
%struct._GtkTreeSelection = type { %struct._GObject, %struct._GtkTreeView*, i32, i32 (%struct._GtkTreeSelection*, %struct._GtkTreeModel*, %struct._GtkTreePath*, i32, i8*)*, i8*, void (i8*)* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GSignalInvocationHint = type { i32, i32, i32 }

@gimp_file_proc_view_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"GimpFileProcView\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_file_proc_view_new = private unnamed_addr constant [24 x i8] c"gimp_file_proc_view_new\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"rules-hint\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"File Type\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"Extensions\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@__func__.gimp_file_proc_view_get_proc = private unnamed_addr constant [29 x i8] c"gimp_file_proc_view_get_proc\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"GIMP_IS_FILE_PROC_VIEW (view)\00", align 1
@__func__.gimp_file_proc_view_set_proc = private unnamed_addr constant [29 x i8] c"gimp_file_proc_view_set_proc\00", align 1
@__func__.gimp_file_proc_view_get_help_id = private unnamed_addr constant [32 x i8] c"gimp_file_proc_view_get_help_id\00", align 1
@gimp_file_proc_view_parent_class = internal global i8* null, align 8
@GimpFileProcView_private_offset = internal global i32 0, align 4
@view_signals = internal global [1 x i32] zeroinitializer, align 4

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_file_proc_view_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_file_proc_view_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_file_proc_view_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_tree_view_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 1000, void (i8*, i8*)* bitcast (void (i8*)* @gimp_file_proc_view_class_intern_init to void (i8*, i8*)*), i32 128, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpFileProcView*)* @gimp_file_proc_view_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_file_proc_view_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_file_proc_view_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_view_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_file_proc_view_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_file_proc_view_parent_class, align 8
  %1 = load i32, i32* @GimpFileProcView_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpFileProcView_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpFileProcViewClass*
  call void @gimp_file_proc_view_class_init(%struct._GimpFileProcViewClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_file_proc_view_init(%struct._GimpFileProcView* %view) #3 {
entry:
  %view.addr = alloca %struct._GimpFileProcView*, align 8
  store %struct._GimpFileProcView* %view, %struct._GimpFileProcView** %view.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_file_proc_view_new(%struct._Gimp* %gimp, %struct._GSList* %procedures, i8* %automatic, i8* %automatic_help_id) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %procedures.addr = alloca %struct._GSList*, align 8
  %automatic.addr = alloca i8*, align 8
  %automatic_help_id.addr = alloca i8*, align 8
  %view = alloca %struct._GtkTreeView*, align 8
  %column = alloca %struct._GtkTreeViewColumn*, align 8
  %cell = alloca %struct._GtkCellRenderer*, align 8
  %store = alloca %struct._GtkListStore*, align 8
  %list = alloca %struct._GSList*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %proc = alloca %struct._GimpPlugInProcedure*, align 8
  %label = alloca i8*, align 8
  %help_id = alloca i8*, align 8
  %list2 = alloca %struct._GSList*, align 8
  %proc_view = alloca %struct._GimpFileProcView*, align 8
  %ext = alloca i8*, align 8
  %dot = alloca i8*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GSList* %procedures, %struct._GSList** %procedures.addr, align 8
  store i8* %automatic, i8** %automatic.addr, align 8
  store i8* %automatic_help_id, i8** %automatic_help_id.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_file_proc_view_new, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_plug_in_procedure_get_type() #6
  %call12 = call %struct._GtkListStore* (i32, ...) @gtk_list_store_new(i32 4, i64 %call11, i64 64, i64 64, i64 64)
  store %struct._GtkListStore* %call12, %struct._GtkListStore** %store, align 8
  %call13 = call i64 @gimp_file_proc_view_get_type() #6
  %13 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %call14 = call i8* (i64, i8*, ...) @g_object_new(i64 %call13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), %struct._GtkListStore* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 1, i8* null)
  %14 = bitcast i8* %call14 to %struct._GtkTreeView*
  store %struct._GtkTreeView* %14, %struct._GtkTreeView** %view, align 8
  %15 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %16 = bitcast %struct._GtkListStore* %15 to i8*
  call void @g_object_unref(i8* %16)
  %17 = load %struct._GSList*, %struct._GSList** %procedures.addr, align 8
  store %struct._GSList* %17, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end.52, %do.end
  %18 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool15 = icmp ne %struct._GSList* %18, null
  br i1 %tobool15, label %for.body, label %for.end.54

for.body:                                         ; preds = %for.cond
  %19 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %19, i32 0, i32 0
  %20 = load i8*, i8** %data, align 8
  %21 = bitcast i8* %20 to %struct._GimpPlugInProcedure*
  store %struct._GimpPlugInProcedure* %21, %struct._GimpPlugInProcedure** %proc, align 8
  %22 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %prefixes_list = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %22, i32 0, i32 20
  %23 = load %struct._GSList*, %struct._GSList** %prefixes_list, align 8
  %tobool17 = icmp ne %struct._GSList* %23, null
  br i1 %tobool17, label %if.end.46, label %if.then.18

if.then.18:                                       ; preds = %for.body
  %24 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %call20 = call i8* @gimp_plug_in_procedure_get_label(%struct._GimpPlugInProcedure* %24)
  store i8* %call20, i8** %label, align 8
  %25 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %call22 = call i8* @gimp_plug_in_procedure_get_help_id(%struct._GimpPlugInProcedure* %25)
  store i8* %call22, i8** %help_id, align 8
  %26 = load i8*, i8** %label, align 8
  %tobool24 = icmp ne i8* %26, null
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.then.18
  %27 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  call void @gtk_list_store_append(%struct._GtkListStore* %27, %struct._GtkTreeIter* %iter)
  %28 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %29 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %30 = load i8*, i8** %label, align 8
  %31 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %extensions = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %31, i32 0, i32 15
  %32 = load i8*, i8** %extensions, align 8
  %33 = load i8*, i8** %help_id, align 8
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %28, %struct._GtkTreeIter* %iter, i32 0, %struct._GimpPlugInProcedure* %29, i32 1, i8* %30, i32 2, i8* %32, i32 3, i8* %33, i32 -1)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.then.18
  %34 = load i8*, i8** %help_id, align 8
  call void @g_free(i8* %34)
  %35 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %extensions_list = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %35, i32 0, i32 19
  %36 = load %struct._GSList*, %struct._GSList** %extensions_list, align 8
  store %struct._GSList* %36, %struct._GSList** %list2, align 8
  br label %for.cond.27

for.cond.27:                                      ; preds = %cond.end, %if.end.26
  %37 = load %struct._GSList*, %struct._GSList** %list2, align 8
  %tobool28 = icmp ne %struct._GSList* %37, null
  br i1 %tobool28, label %for.body.29, label %for.end

for.body.29:                                      ; preds = %for.cond.27
  %38 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view, align 8
  %39 = bitcast %struct._GtkTreeView* %38 to %struct._GTypeInstance*
  %call31 = call i64 @gimp_file_proc_view_get_type() #6
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call31)
  %40 = bitcast %struct._GTypeInstance* %call32 to %struct._GimpFileProcView*
  store %struct._GimpFileProcView* %40, %struct._GimpFileProcView** %proc_view, align 8
  %41 = load %struct._GSList*, %struct._GSList** %list2, align 8
  %data34 = getelementptr inbounds %struct._GSList, %struct._GSList* %41, i32 0, i32 0
  %42 = load i8*, i8** %data34, align 8
  store i8* %42, i8** %ext, align 8
  %43 = load i8*, i8** %ext, align 8
  %call36 = call i8* @strchr(i8* %43, i32 46) #7
  store i8* %call36, i8** %dot, align 8
  %44 = load i8*, i8** %dot, align 8
  %tobool37 = icmp ne i8* %44, null
  br i1 %tobool37, label %land.lhs.true.38, label %if.end.44

land.lhs.true.38:                                 ; preds = %for.body.29
  %45 = load i8*, i8** %dot, align 8
  %46 = load i8*, i8** %ext, align 8
  %cmp39 = icmp ne i8* %45, %46
  br i1 %cmp39, label %if.then.40, label %if.end.44

if.then.40:                                       ; preds = %land.lhs.true.38
  %47 = load %struct._GimpFileProcView*, %struct._GimpFileProcView** %proc_view, align 8
  %meta_extensions = getelementptr inbounds %struct._GimpFileProcView, %struct._GimpFileProcView* %47, i32 0, i32 1
  %48 = load %struct._GList*, %struct._GList** %meta_extensions, align 8
  %49 = load i8*, i8** %dot, align 8
  %add.ptr = getelementptr inbounds i8, i8* %49, i64 1
  %call41 = call noalias i8* @g_strdup(i8* %add.ptr)
  %call42 = call %struct._GList* @g_list_append(%struct._GList* %48, i8* %call41)
  %50 = load %struct._GimpFileProcView*, %struct._GimpFileProcView** %proc_view, align 8
  %meta_extensions43 = getelementptr inbounds %struct._GimpFileProcView, %struct._GimpFileProcView* %50, i32 0, i32 1
  store %struct._GList* %call42, %struct._GList** %meta_extensions43, align 8
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.40, %land.lhs.true.38, %for.body.29
  br label %for.inc

for.inc:                                          ; preds = %if.end.44
  %51 = load %struct._GSList*, %struct._GSList** %list2, align 8
  %tobool45 = icmp ne %struct._GSList* %51, null
  br i1 %tobool45, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %52 = load %struct._GSList*, %struct._GSList** %list2, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %52, i32 0, i32 1
  %53 = load %struct._GSList*, %struct._GSList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GSList* [ %53, %cond.true ], [ null, %cond.false ]
  store %struct._GSList* %cond, %struct._GSList** %list2, align 8
  br label %for.cond.27

for.end:                                          ; preds = %for.cond.27
  br label %if.end.46

if.end.46:                                        ; preds = %for.end, %for.body
  br label %for.inc.47

for.inc.47:                                       ; preds = %if.end.46
  %54 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool48 = icmp ne %struct._GSList* %54, null
  br i1 %tobool48, label %cond.true.49, label %cond.false.51

cond.true.49:                                     ; preds = %for.inc.47
  %55 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next50 = getelementptr inbounds %struct._GSList, %struct._GSList* %55, i32 0, i32 1
  %56 = load %struct._GSList*, %struct._GSList** %next50, align 8
  br label %cond.end.52

cond.false.51:                                    ; preds = %for.inc.47
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.51, %cond.true.49
  %cond53 = phi %struct._GSList* [ %56, %cond.true.49 ], [ null, %cond.false.51 ]
  store %struct._GSList* %cond53, %struct._GSList** %list, align 8
  br label %for.cond

for.end.54:                                       ; preds = %for.cond
  %57 = load i8*, i8** %automatic.addr, align 8
  %tobool55 = icmp ne i8* %57, null
  br i1 %tobool55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %for.end.54
  %58 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  call void @gtk_list_store_prepend(%struct._GtkListStore* %58, %struct._GtkTreeIter* %iter)
  %59 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %60 = load i8*, i8** %automatic.addr, align 8
  %61 = load i8*, i8** %automatic_help_id.addr, align 8
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %59, %struct._GtkTreeIter* %iter, i32 0, i8* null, i32 1, i8* %60, i32 3, i8* %61, i32 -1)
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.56, %for.end.54
  %call58 = call %struct._GtkTreeViewColumn* @gtk_tree_view_column_new()
  store %struct._GtkTreeViewColumn* %call58, %struct._GtkTreeViewColumn** %column, align 8
  %62 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %call59 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0)) #8
  call void @gtk_tree_view_column_set_title(%struct._GtkTreeViewColumn* %62, i8* %call59)
  %63 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  call void @gtk_tree_view_column_set_expand(%struct._GtkTreeViewColumn* %63, i32 1)
  %call60 = call %struct._GtkCellRenderer* @gtk_cell_renderer_text_new()
  store %struct._GtkCellRenderer* %call60, %struct._GtkCellRenderer** %cell, align 8
  %64 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %65 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell, align 8
  call void @gtk_tree_view_column_pack_start(%struct._GtkTreeViewColumn* %64, %struct._GtkCellRenderer* %65, i32 1)
  %66 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %67 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell, align 8
  call void (%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, ...) @gtk_tree_view_column_set_attributes(%struct._GtkTreeViewColumn* %66, %struct._GtkCellRenderer* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 1, i8* null)
  %68 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view, align 8
  %69 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %call61 = call i32 @gtk_tree_view_append_column(%struct._GtkTreeView* %68, %struct._GtkTreeViewColumn* %69)
  %call62 = call %struct._GtkTreeViewColumn* @gtk_tree_view_column_new()
  store %struct._GtkTreeViewColumn* %call62, %struct._GtkTreeViewColumn** %column, align 8
  %70 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %call63 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0)) #8
  call void @gtk_tree_view_column_set_title(%struct._GtkTreeViewColumn* %70, i8* %call63)
  %call64 = call %struct._GtkCellRenderer* @gtk_cell_renderer_text_new()
  store %struct._GtkCellRenderer* %call64, %struct._GtkCellRenderer** %cell, align 8
  %71 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %72 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell, align 8
  call void @gtk_tree_view_column_pack_start(%struct._GtkTreeViewColumn* %71, %struct._GtkCellRenderer* %72, i32 1)
  %73 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %74 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell, align 8
  call void (%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, ...) @gtk_tree_view_column_set_attributes(%struct._GtkTreeViewColumn* %73, %struct._GtkCellRenderer* %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 2, i8* null)
  %75 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view, align 8
  %76 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %call65 = call i32 @gtk_tree_view_append_column(%struct._GtkTreeView* %75, %struct._GtkTreeViewColumn* %76)
  %77 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view, align 8
  %call66 = call %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView* %77)
  %78 = bitcast %struct._GtkTreeSelection* %call66 to i8*
  %79 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view, align 8
  %80 = bitcast %struct._GtkTreeView* %79 to i8*
  %call67 = call i64 @g_signal_connect_data(i8* %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), void ()* bitcast (void (%struct._GtkTreeSelection*, %struct._GimpFileProcView*)* @gimp_file_proc_view_selection_changed to void ()*), i8* %80, void (i8*, %struct._GClosure*)* null, i32 0)
  %81 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view, align 8
  %82 = bitcast %struct._GtkTreeView* %81 to %struct._GTypeInstance*
  %call68 = call i64 @gtk_widget_get_type() #6
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %82, i64 %call68)
  %83 = bitcast %struct._GTypeInstance* %call69 to %struct._GtkWidget*
  store %struct._GtkWidget* %83, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.57, %if.else.9
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %84
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare %struct._GtkListStore* @gtk_list_store_new(i32, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_plug_in_procedure_get_type() #2

declare i8* @g_object_new(i64, i8*, ...) #1

declare void @g_object_unref(i8*) #1

declare i8* @gimp_plug_in_procedure_get_label(%struct._GimpPlugInProcedure*) #1

declare i8* @gimp_plug_in_procedure_get_help_id(%struct._GimpPlugInProcedure*) #1

declare void @gtk_list_store_append(%struct._GtkListStore*, %struct._GtkTreeIter*) #1

declare void @gtk_list_store_set(%struct._GtkListStore*, %struct._GtkTreeIter*, ...) #1

declare void @g_free(i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #1

declare noalias i8* @g_strdup(i8*) #1

declare void @gtk_list_store_prepend(%struct._GtkListStore*, %struct._GtkTreeIter*) #1

declare %struct._GtkTreeViewColumn* @gtk_tree_view_column_new() #1

declare void @gtk_tree_view_column_set_title(%struct._GtkTreeViewColumn*, i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

declare void @gtk_tree_view_column_set_expand(%struct._GtkTreeViewColumn*, i32) #1

declare %struct._GtkCellRenderer* @gtk_cell_renderer_text_new() #1

declare void @gtk_tree_view_column_pack_start(%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, i32) #1

declare void @gtk_tree_view_column_set_attributes(%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, ...) #1

declare i32 @gtk_tree_view_append_column(%struct._GtkTreeView*, %struct._GtkTreeViewColumn*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_file_proc_view_selection_changed(%struct._GtkTreeSelection* %selection, %struct._GimpFileProcView* %view) #3 {
entry:
  %selection.addr = alloca %struct._GtkTreeSelection*, align 8
  %view.addr = alloca %struct._GimpFileProcView*, align 8
  store %struct._GtkTreeSelection* %selection, %struct._GtkTreeSelection** %selection.addr, align 8
  store %struct._GimpFileProcView* %view, %struct._GimpFileProcView** %view.addr, align 8
  %0 = load %struct._GimpFileProcView*, %struct._GimpFileProcView** %view.addr, align 8
  %1 = bitcast %struct._GimpFileProcView* %0 to i8*
  %2 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @view_signals, i32 0, i64 0), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %1, i32 %2, i32 0)
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind uwtable
define %struct._GimpPlugInProcedure* @gimp_file_proc_view_get_proc(%struct._GimpFileProcView* %view, i8** %label) #3 {
entry:
  %retval = alloca %struct._GimpPlugInProcedure*, align 8
  %view.addr = alloca %struct._GimpFileProcView*, align 8
  %label.addr = alloca i8**, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %selection = alloca %struct._GtkTreeSelection*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %proc = alloca %struct._GimpPlugInProcedure*, align 8
  store %struct._GimpFileProcView* %view, %struct._GimpFileProcView** %view.addr, align 8
  store i8** %label, i8*** %label.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpFileProcView*, %struct._GimpFileProcView** %view.addr, align 8
  %1 = bitcast %struct._GimpFileProcView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_file_proc_view_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_file_proc_view_get_proc, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0))
  store %struct._GimpPlugInProcedure* null, %struct._GimpPlugInProcedure** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpFileProcView*, %struct._GimpFileProcView** %view.addr, align 8
  %14 = bitcast %struct._GimpFileProcView* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_tree_view_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkTreeView*
  %call13 = call %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView* %15)
  store %struct._GtkTreeSelection* %call13, %struct._GtkTreeSelection** %selection, align 8
  %16 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection, align 8
  %call14 = call i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection* %16, %struct._GtkTreeModel** %model, %struct._GtkTreeIter* %iter)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.end.25

if.then.16:                                       ; preds = %do.end
  %17 = load i8**, i8*** %label.addr, align 8
  %tobool18 = icmp ne i8** %17, null
  br i1 %tobool18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %if.then.16
  %18 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %19 = load i8**, i8*** %label.addr, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %18, %struct._GtkTreeIter* %iter, i32 0, %struct._GimpPlugInProcedure** %proc, i32 1, i8** %19, i32 -1)
  br label %if.end.21

if.else.20:                                       ; preds = %if.then.16
  %20 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %20, %struct._GtkTreeIter* %iter, i32 0, %struct._GimpPlugInProcedure** %proc, i32 -1)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.20, %if.then.19
  %21 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %tobool22 = icmp ne %struct._GimpPlugInProcedure* %21, null
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.21
  %22 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %23 = bitcast %struct._GimpPlugInProcedure* %22 to i8*
  call void @g_object_unref(i8* %23)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %if.end.21
  %24 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  store %struct._GimpPlugInProcedure* %24, %struct._GimpPlugInProcedure** %retval
  br label %return

if.end.25:                                        ; preds = %do.end
  %25 = load i8**, i8*** %label.addr, align 8
  %tobool26 = icmp ne i8** %25, null
  br i1 %tobool26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.25
  %26 = load i8**, i8*** %label.addr, align 8
  store i8* null, i8** %26, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.end.25
  store %struct._GimpPlugInProcedure* null, %struct._GimpPlugInProcedure** %retval
  br label %return

return:                                           ; preds = %if.end.28, %if.end.24, %if.else.9
  %27 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %retval
  ret %struct._GimpPlugInProcedure* %27
}

declare i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection*, %struct._GtkTreeModel**, %struct._GtkTreeIter*) #1

declare void @gtk_tree_model_get(%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_file_proc_view_set_proc(%struct._GimpFileProcView* %view, %struct._GimpPlugInProcedure* %proc) #3 {
entry:
  %retval = alloca i32, align 4
  %view.addr = alloca %struct._GimpFileProcView*, align 8
  %proc.addr = alloca %struct._GimpPlugInProcedure*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %iter_valid = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %this = alloca %struct._GimpPlugInProcedure*, align 8
  %selection = alloca %struct._GtkTreeSelection*, align 8
  store %struct._GimpFileProcView* %view, %struct._GimpFileProcView** %view.addr, align 8
  store %struct._GimpPlugInProcedure* %proc, %struct._GimpPlugInProcedure** %proc.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpFileProcView*, %struct._GimpFileProcView** %view.addr, align 8
  %1 = bitcast %struct._GimpFileProcView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_file_proc_view_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_file_proc_view_set_proc, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpFileProcView*, %struct._GimpFileProcView** %view.addr, align 8
  %14 = bitcast %struct._GimpFileProcView* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_tree_view_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkTreeView*
  %call13 = call %struct._GtkTreeModel* @gtk_tree_view_get_model(%struct._GtkTreeView* %15)
  store %struct._GtkTreeModel* %call13, %struct._GtkTreeModel** %model, align 8
  %16 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call14 = call i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel* %16, %struct._GtkTreeIter* %iter)
  store i32 %call14, i32* %iter_valid, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %17 = load i32, i32* %iter_valid, align 4
  %tobool15 = icmp ne i32 %17, 0
  br i1 %tobool15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %18, %struct._GtkTreeIter* %iter, i32 0, %struct._GimpPlugInProcedure** %this, i32 -1)
  %19 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %this, align 8
  %tobool17 = icmp ne %struct._GimpPlugInProcedure* %19, null
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %for.body
  %20 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %this, align 8
  %21 = bitcast %struct._GimpPlugInProcedure* %20 to i8*
  call void @g_object_unref(i8* %21)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %for.body
  %22 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %this, align 8
  %23 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %cmp20 = icmp eq %struct._GimpPlugInProcedure* %22, %23
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.19
  br label %for.end

if.end.22:                                        ; preds = %if.end.19
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %24 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call23 = call i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel* %24, %struct._GtkTreeIter* %iter)
  store i32 %call23, i32* %iter_valid, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.21, %for.cond
  %25 = load i32, i32* %iter_valid, align 4
  %tobool24 = icmp ne i32 %25, 0
  br i1 %tobool24, label %if.then.25, label %if.end.30

if.then.25:                                       ; preds = %for.end
  %26 = load %struct._GimpFileProcView*, %struct._GimpFileProcView** %view.addr, align 8
  %27 = bitcast %struct._GimpFileProcView* %26 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_tree_view_get_type() #6
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call27)
  %28 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkTreeView*
  %call29 = call %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView* %28)
  store %struct._GtkTreeSelection* %call29, %struct._GtkTreeSelection** %selection, align 8
  %29 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection, align 8
  call void @gtk_tree_selection_select_iter(%struct._GtkTreeSelection* %29, %struct._GtkTreeIter* %iter)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.25, %for.end
  %30 = load i32, i32* %iter_valid, align 4
  store i32 %30, i32* %retval
  br label %return

return:                                           ; preds = %if.end.30, %if.else.9
  %31 = load i32, i32* %retval
  ret i32 %31
}

declare %struct._GtkTreeModel* @gtk_tree_view_get_model(%struct._GtkTreeView*) #1

declare i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

declare i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

declare void @gtk_tree_selection_select_iter(%struct._GtkTreeSelection*, %struct._GtkTreeIter*) #1

; Function Attrs: nounwind uwtable
define i8* @gimp_file_proc_view_get_help_id(%struct._GimpFileProcView* %view) #3 {
entry:
  %retval = alloca i8*, align 8
  %view.addr = alloca %struct._GimpFileProcView*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %selection = alloca %struct._GtkTreeSelection*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %help_id = alloca i8*, align 8
  store %struct._GimpFileProcView* %view, %struct._GimpFileProcView** %view.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpFileProcView*, %struct._GimpFileProcView** %view.addr, align 8
  %1 = bitcast %struct._GimpFileProcView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_file_proc_view_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_file_proc_view_get_help_id, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpFileProcView*, %struct._GimpFileProcView** %view.addr, align 8
  %14 = bitcast %struct._GimpFileProcView* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_tree_view_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkTreeView*
  %call13 = call %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView* %15)
  store %struct._GtkTreeSelection* %call13, %struct._GtkTreeSelection** %selection, align 8
  %16 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection, align 8
  %call14 = call i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection* %16, %struct._GtkTreeModel** %model, %struct._GtkTreeIter* %iter)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %do.end
  %17 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %17, %struct._GtkTreeIter* %iter, i32 3, i8** %help_id, i32 -1)
  %18 = load i8*, i8** %help_id, align 8
  store i8* %18, i8** %retval
  br label %return

if.end.18:                                        ; preds = %do.end
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.then.16, %if.else.9
  %19 = load i8*, i8** %retval
  ret i8* %19
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_file_proc_view_class_init(%struct._GimpFileProcViewClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpFileProcViewClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpFileProcViewClass* %klass, %struct._GimpFileProcViewClass** %klass.addr, align 8
  %0 = load %struct._GimpFileProcViewClass*, %struct._GimpFileProcViewClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpFileProcViewClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_file_proc_view_finalize, void (%struct._GObject*)** %finalize, align 8
  %4 = load %struct._GimpFileProcViewClass*, %struct._GimpFileProcViewClass** %klass.addr, align 8
  %changed = getelementptr inbounds %struct._GimpFileProcViewClass, %struct._GimpFileProcViewClass* %4, i32 0, i32 1
  store void (%struct._GimpFileProcView*)* null, void (%struct._GimpFileProcView*)** %changed, align 8
  %5 = load %struct._GimpFileProcViewClass*, %struct._GimpFileProcViewClass** %klass.addr, align 8
  %6 = bitcast %struct._GimpFileProcViewClass* %5 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %call1 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i64 %7, i32 2, i32 992, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call1, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @view_signals, i32 0, i64 0), align 4
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_file_proc_view_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %view = alloca %struct._GimpFileProcView*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_file_proc_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpFileProcView*
  store %struct._GimpFileProcView* %2, %struct._GimpFileProcView** %view, align 8
  %3 = load %struct._GimpFileProcView*, %struct._GimpFileProcView** %view, align 8
  %meta_extensions = getelementptr inbounds %struct._GimpFileProcView, %struct._GimpFileProcView* %3, i32 0, i32 1
  %4 = load %struct._GList*, %struct._GList** %meta_extensions, align 8
  %tobool = icmp ne %struct._GList* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpFileProcView*, %struct._GimpFileProcView** %view, align 8
  %meta_extensions2 = getelementptr inbounds %struct._GimpFileProcView, %struct._GimpFileProcView* %5, i32 0, i32 1
  %6 = load %struct._GList*, %struct._GList** %meta_extensions2, align 8
  call void @g_list_free_full(%struct._GList* %6, void (i8*)* @g_free)
  %7 = load %struct._GimpFileProcView*, %struct._GimpFileProcView** %view, align 8
  %meta_extensions3 = getelementptr inbounds %struct._GimpFileProcView, %struct._GimpFileProcView* %7, i32 0, i32 1
  store %struct._GList* null, %struct._GList** %meta_extensions3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8*, i8** @gimp_file_proc_view_parent_class, align 8
  %9 = bitcast i8* %8 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %9, i64 80)
  %10 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 6
  %11 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %12 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %11(%struct._GObject* %12)
  ret void
}

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @g_cclosure_marshal_VOID__VOID(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

declare void @g_list_free_full(%struct._GList*, void (i8*)*) #1

declare void @g_signal_emit(i8*, i32, i32, ...) #1

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
