; ModuleID = './libgimpwidgets/gimpbrowser.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpBrowserClass = type { %struct._GtkHPanedClass, void (%struct._GimpBrowser*, i8*, i32)*, void ()*, void ()*, void ()*, void ()* }
%struct._GtkHPanedClass = type { %struct._GtkPanedClass }
%struct._GtkPanedClass = type { %struct._GtkContainerClass, i32 (%struct._GtkPaned*, i32)*, i32 (%struct._GtkPaned*)*, i32 (%struct._GtkPaned*, i32)*, i32 (%struct._GtkPaned*, i32)*, i32 (%struct._GtkPaned*)*, i32 (%struct._GtkPaned*)*, void ()*, void ()*, void ()*, void ()* }
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
%struct._GtkPaned = type { %struct._GtkContainer, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkDrawable*, %struct._GdkGC*, i32, %struct._GdkRectangle, i32, i32, i32, i32, i16, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkPanedPrivate*, i32, i32 }
%struct._GtkPanedPrivate = type opaque
%struct._GimpBrowser = type { %struct._GtkHPaned, %struct._GtkWidget*, %struct._GtkWidget*, i32, %struct._GtkWidget*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkHPaned = type { %struct._GtkPaned }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GtkLabelSelectionInfo = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkScrolledWindow = type { %struct._GtkBin, %struct._GtkWidget*, %struct._GtkWidget*, i16, i16 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkComboBoxPrivate = type opaque
%struct._GimpIntComboBox = type { %struct._GtkComboBox, i8*, void ()*, void ()*, void ()* }
%struct._GSignalInvocationHint = type { i32, i32, i32 }

@gimp_browser_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"GimpBrowser\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"LibGimpWidgets\00", align 1
@__func__.gimp_browser_add_search_types = private unnamed_addr constant [30 x i8] c"gimp_browser_add_search_types\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"GIMP_IS_BROWSER (browser)\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"first_type_label != NULL\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@__func__.gimp_browser_set_widget = private unnamed_addr constant [24 x i8] c"gimp_browser_set_widget\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"widget == NULL || GTK_IS_WIDGET (widget)\00", align 1
@__func__.gimp_browser_show_message = private unnamed_addr constant [26 x i8] c"gimp_browser_show_message\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"message != NULL\00", align 1
@gimp_browser_parent_class = internal global i8* null, align 8
@GimpBrowser_private_offset = internal global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"search\00", align 1
@browser_signals = internal global [1 x i32] zeroinitializer, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"gimp20-libgimp\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"_Search:\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"gtk-clear\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"icon-press\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"No matches\00", align 1
@gdk_threads_lock = external global void ()*, align 8
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@gdk_threads_unlock = external global void ()*, align 8

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_browser_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_browser_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_browser_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_hpaned_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 944, void (i8*, i8*)* bitcast (void (i8*)* @gimp_browser_class_intern_init to void (i8*, i8*)*), i32 280, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpBrowser*)* @gimp_browser_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_browser_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_browser_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_hpaned_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_browser_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_browser_parent_class, align 8
  %1 = load i32, i32* @GimpBrowser_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpBrowser_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpBrowserClass*
  call void @gimp_browser_class_init(%struct._GimpBrowserClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_browser_init(%struct._GimpBrowser* %browser) #3 {
entry:
  %browser.addr = alloca %struct._GimpBrowser*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %scrolled_window = alloca %struct._GtkWidget*, align 8
  store %struct._GimpBrowser* %browser, %struct._GimpBrowser** %browser.addr, align 8
  %0 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %search_type = getelementptr inbounds %struct._GimpBrowser, %struct._GimpBrowser* %0, i32 0, i32 5
  store i32 -1, i32* %search_type, align 4
  %call = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  %1 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %left_vbox = getelementptr inbounds %struct._GimpBrowser, %struct._GimpBrowser* %1, i32 0, i32 1
  store %struct._GtkWidget* %call, %struct._GtkWidget** %left_vbox, align 8
  %2 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %3 = bitcast %struct._GimpBrowser* %2 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_paned_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call1)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkPaned*
  %5 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %left_vbox3 = getelementptr inbounds %struct._GimpBrowser, %struct._GimpBrowser* %5, i32 0, i32 1
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %left_vbox3, align 8
  call void @gtk_paned_pack1(%struct._GtkPaned* %4, %struct._GtkWidget* %6, i32 0, i32 1)
  %7 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %left_vbox4 = getelementptr inbounds %struct._GimpBrowser, %struct._GimpBrowser* %7, i32 0, i32 1
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %left_vbox4, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %8)
  %call5 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %hbox, align 8
  %9 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %left_vbox6 = getelementptr inbounds %struct._GimpBrowser, %struct._GimpBrowser* %9, i32 0, i32 1
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %left_vbox6, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_box_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call7)
  %12 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkBox*
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %12, %struct._GtkWidget* %13, i32 0, i32 0, i32 0)
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %14)
  %call9 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0)) #5
  %call10 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call9)
  store %struct._GtkWidget* %call10, %struct._GtkWidget** %label, align 8
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_box_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call11)
  %17 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkBox*
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %17, %struct._GtkWidget* %18, i32 0, i32 0, i32 0)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %19)
  %call13 = call %struct._GtkWidget* @gtk_entry_new()
  %20 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %search_entry = getelementptr inbounds %struct._GimpBrowser, %struct._GimpBrowser* %20, i32 0, i32 2
  store %struct._GtkWidget* %call13, %struct._GtkWidget** %search_entry, align 8
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_box_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call14)
  %23 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkBox*
  %24 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %search_entry16 = getelementptr inbounds %struct._GimpBrowser, %struct._GimpBrowser* %24, i32 0, i32 2
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %search_entry16, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %23, %struct._GtkWidget* %25, i32 1, i32 1, i32 0)
  %26 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %search_entry17 = getelementptr inbounds %struct._GimpBrowser, %struct._GimpBrowser* %26, i32 0, i32 2
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %search_entry17, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %27)
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_label_get_type() #7
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call18)
  %30 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkLabel*
  %31 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %search_entry20 = getelementptr inbounds %struct._GimpBrowser, %struct._GimpBrowser* %31, i32 0, i32 2
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %search_entry20, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %30, %struct._GtkWidget* %32)
  %33 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %search_entry21 = getelementptr inbounds %struct._GimpBrowser, %struct._GimpBrowser* %33, i32 0, i32 2
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %search_entry21, align 8
  %35 = bitcast %struct._GtkWidget* %34 to i8*
  %36 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %37 = bitcast %struct._GimpBrowser* %36 to i8*
  %call22 = call i64 @g_signal_connect_data(i8* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GtkEntry*, %struct._GimpBrowser*)* @gimp_browser_entry_changed to void ()*), i8* %37, void (i8*, %struct._GClosure*)* null, i32 0)
  %38 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %search_entry23 = getelementptr inbounds %struct._GimpBrowser, %struct._GimpBrowser* %38, i32 0, i32 2
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %search_entry23, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_entry_get_type() #7
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call24)
  %41 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkEntry*
  call void @gtk_entry_set_icon_from_stock(%struct._GtkEntry* %41, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0))
  %42 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %search_entry26 = getelementptr inbounds %struct._GimpBrowser, %struct._GimpBrowser* %42, i32 0, i32 2
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %search_entry26, align 8
  %44 = bitcast %struct._GtkWidget* %43 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_entry_get_type() #7
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call27)
  %45 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkEntry*
  call void @gtk_entry_set_icon_activatable(%struct._GtkEntry* %45, i32 1, i32 1)
  %46 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %search_entry29 = getelementptr inbounds %struct._GimpBrowser, %struct._GimpBrowser* %46, i32 0, i32 2
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %search_entry29, align 8
  %48 = bitcast %struct._GtkWidget* %47 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_entry_get_type() #7
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call30)
  %49 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkEntry*
  call void @gtk_entry_set_icon_sensitive(%struct._GtkEntry* %49, i32 1, i32 0)
  %50 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %search_entry32 = getelementptr inbounds %struct._GimpBrowser, %struct._GimpBrowser* %50, i32 0, i32 2
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %search_entry32, align 8
  %52 = bitcast %struct._GtkWidget* %51 to i8*
  %53 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %54 = bitcast %struct._GimpBrowser* %53 to i8*
  %call33 = call i64 @g_signal_connect_data(i8* %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), void ()* bitcast (void (%struct._GtkEntry*, i32, %union._GdkEvent*, %struct._GimpBrowser*)* @gimp_browser_entry_icon_press to void ()*), i8* %54, void (i8*, %struct._GClosure*)* null, i32 0)
  %call34 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0)) #5
  %call35 = call %struct._GtkWidget* @gtk_label_new(i8* %call34)
  %55 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %count_label = getelementptr inbounds %struct._GimpBrowser, %struct._GimpBrowser* %55, i32 0, i32 6
  store %struct._GtkWidget* %call35, %struct._GtkWidget** %count_label, align 8
  %56 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %count_label36 = getelementptr inbounds %struct._GimpBrowser, %struct._GimpBrowser* %56, i32 0, i32 6
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %count_label36, align 8
  %58 = bitcast %struct._GtkWidget* %57 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_misc_get_type() #7
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call37)
  %59 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %59, float 0.000000e+00, float 5.000000e-01)
  %60 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %count_label39 = getelementptr inbounds %struct._GimpBrowser, %struct._GimpBrowser* %60, i32 0, i32 6
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %count_label39, align 8
  %62 = bitcast %struct._GtkWidget* %61 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_label_get_type() #7
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call40)
  %63 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkLabel*
  call void (%struct._GtkLabel*, ...) @gimp_label_set_attributes(%struct._GtkLabel* %63, i32 3, i32 2, i32 -1)
  %64 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %left_vbox42 = getelementptr inbounds %struct._GimpBrowser, %struct._GimpBrowser* %64, i32 0, i32 1
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %left_vbox42, align 8
  %66 = bitcast %struct._GtkWidget* %65 to %struct._GTypeInstance*
  %call43 = call i64 @gtk_box_get_type() #7
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call43)
  %67 = bitcast %struct._GTypeInstance* %call44 to %struct._GtkBox*
  %68 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %count_label45 = getelementptr inbounds %struct._GimpBrowser, %struct._GimpBrowser* %68, i32 0, i32 6
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %count_label45, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %67, %struct._GtkWidget* %69, i32 0, i32 0, i32 0)
  %70 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %count_label46 = getelementptr inbounds %struct._GimpBrowser, %struct._GimpBrowser* %70, i32 0, i32 6
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %count_label46, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %71)
  %call47 = call %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment* null, %struct._GtkAdjustment* null)
  store %struct._GtkWidget* %call47, %struct._GtkWidget** %scrolled_window, align 8
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window, align 8
  %73 = bitcast %struct._GtkWidget* %72 to %struct._GTypeInstance*
  %call48 = call i64 @gtk_scrolled_window_get_type() #7
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 %call48)
  %74 = bitcast %struct._GTypeInstance* %call49 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow* %74, i32 1, i32 0)
  %75 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %76 = bitcast %struct._GimpBrowser* %75 to %struct._GTypeInstance*
  %call50 = call i64 @gtk_paned_get_type() #7
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 %call50)
  %77 = bitcast %struct._GTypeInstance* %call51 to %struct._GtkPaned*
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window, align 8
  call void @gtk_paned_pack2(%struct._GtkPaned* %77, %struct._GtkWidget* %78, i32 1, i32 1)
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %79)
  %call52 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 0)
  %80 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %right_vbox = getelementptr inbounds %struct._GimpBrowser, %struct._GimpBrowser* %80, i32 0, i32 7
  store %struct._GtkWidget* %call52, %struct._GtkWidget** %right_vbox, align 8
  %81 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %right_vbox53 = getelementptr inbounds %struct._GimpBrowser, %struct._GimpBrowser* %81, i32 0, i32 7
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %right_vbox53, align 8
  %83 = bitcast %struct._GtkWidget* %82 to %struct._GTypeInstance*
  %call54 = call i64 @gtk_container_get_type() #7
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %83, i64 %call54)
  %84 = bitcast %struct._GTypeInstance* %call55 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %84, i32 12)
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window, align 8
  %86 = bitcast %struct._GtkWidget* %85 to %struct._GTypeInstance*
  %call56 = call i64 @gtk_scrolled_window_get_type() #7
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %86, i64 %call56)
  %87 = bitcast %struct._GTypeInstance* %call57 to %struct._GtkScrolledWindow*
  %88 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %right_vbox58 = getelementptr inbounds %struct._GimpBrowser, %struct._GimpBrowser* %88, i32 0, i32 7
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %right_vbox58, align 8
  call void @gtk_scrolled_window_add_with_viewport(%struct._GtkScrolledWindow* %87, %struct._GtkWidget* %89)
  %90 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %right_vbox59 = getelementptr inbounds %struct._GimpBrowser, %struct._GimpBrowser* %90, i32 0, i32 7
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %right_vbox59, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %91)
  %92 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %search_entry60 = getelementptr inbounds %struct._GimpBrowser, %struct._GimpBrowser* %92, i32 0, i32 2
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %search_entry60, align 8
  call void @gtk_widget_grab_focus(%struct._GtkWidget* %93)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_browser_new() #3 {
entry:
  %call = call i64 @gimp_browser_get_type() #7
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %0 = bitcast i8* %call1 to %struct._GtkWidget*
  ret %struct._GtkWidget* %0
}

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_browser_add_search_types(%struct._GimpBrowser* %browser, i8* %first_type_label, i32 %first_type_id, ...) #3 {
entry:
  %browser.addr = alloca %struct._GimpBrowser*, align 8
  %first_type_label.addr = alloca i8*, align 8
  %first_type_id.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %combo = alloca %struct._GtkWidget*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store %struct._GimpBrowser* %browser, %struct._GimpBrowser** %browser.addr, align 8
  store i8* %first_type_label, i8** %first_type_label.addr, align 8
  store i32 %first_type_id, i32* %first_type_id.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %1 = bitcast %struct._GimpBrowser* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_browser_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_browser_add_search_types, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.42

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %first_type_label.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_browser_add_search_types, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.42

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %search_type_combo = getelementptr inbounds %struct._GimpBrowser, %struct._GimpBrowser* %14, i32 0, i32 4
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %search_type_combo, align 8
  %tobool17 = icmp ne %struct._GtkWidget* %15, null
  br i1 %tobool17, label %if.else.38, label %if.then.18

if.then.18:                                       ; preds = %do.end.16
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay21 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay21)
  %16 = load i8*, i8** %first_type_label.addr, align 8
  %17 = load i32, i32* %first_type_id.addr, align 4
  %arraydecay22 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %call23 = call %struct._GtkWidget* @gimp_int_combo_box_new_valist(i8* %16, i32 %17, %struct.__va_list_tag* %arraydecay22)
  store %struct._GtkWidget* %call23, %struct._GtkWidget** %combo, align 8
  %arraydecay24 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay2425 = bitcast %struct.__va_list_tag* %arraydecay24 to i8*
  call void @llvm.va_end(i8* %arraydecay2425)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_combo_box_get_type() #7
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call26)
  %20 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkComboBox*
  call void @gtk_combo_box_set_focus_on_click(%struct._GtkComboBox* %20, i32 0)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %22 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %search_type_combo28 = getelementptr inbounds %struct._GimpBrowser, %struct._GimpBrowser* %22, i32 0, i32 4
  store %struct._GtkWidget* %21, %struct._GtkWidget** %search_type_combo28, align 8
  %23 = load i32, i32* %first_type_id.addr, align 4
  %24 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %search_type = getelementptr inbounds %struct._GimpBrowser, %struct._GimpBrowser* %24, i32 0, i32 5
  store i32 %23, i32* %search_type, align 4
  %25 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %search_entry = getelementptr inbounds %struct._GimpBrowser, %struct._GimpBrowser* %25, i32 0, i32 2
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %search_entry, align 8
  %call29 = call %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget* %26)
  %27 = bitcast %struct._GtkWidget* %call29 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_box_get_type() #7
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call30)
  %28 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkBox*
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %28, %struct._GtkWidget* %29, i32 0, i32 0, i32 0)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %30)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call32 = call i64 @gimp_int_combo_box_get_type() #7
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call32)
  %33 = bitcast %struct._GTypeInstance* %call33 to %struct._GimpIntComboBox*
  %34 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %search_type34 = getelementptr inbounds %struct._GimpBrowser, %struct._GimpBrowser* %34, i32 0, i32 5
  %35 = load i32, i32* %search_type34, align 4
  %36 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %search_type35 = getelementptr inbounds %struct._GimpBrowser, %struct._GimpBrowser* %36, i32 0, i32 5
  %37 = bitcast i32* %search_type35 to i8*
  %call36 = call i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox* %33, i32 %35, void ()* bitcast (i32 (%struct._GimpIntComboBox*, i32*)* @gimp_int_combo_box_get_active to void ()*), i8* %37)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %39 = bitcast %struct._GtkWidget* %38 to i8*
  %40 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %41 = bitcast %struct._GimpBrowser* %40 to i8*
  %call37 = call i64 @g_signal_connect_data(i8* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GtkComboBox*, %struct._GimpBrowser*)* @gimp_browser_combo_changed to void ()*), i8* %41, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.42

if.else.38:                                       ; preds = %do.end.16
  %42 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %search_type_combo39 = getelementptr inbounds %struct._GimpBrowser, %struct._GimpBrowser* %42, i32 0, i32 4
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %search_type_combo39, align 8
  %44 = bitcast %struct._GtkWidget* %43 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_int_combo_box_get_type() #7
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call40)
  %45 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpIntComboBox*
  %46 = load i8*, i8** %first_type_label.addr, align 8
  %47 = load i32, i32* %first_type_id.addr, align 4
  call void (%struct._GimpIntComboBox*, ...) @gimp_int_combo_box_append(%struct._GimpIntComboBox* %45, i8* %46, i32 %47, i8* null)
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.9, %if.else.14, %if.else.38, %if.then.18
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare %struct._GtkWidget* @gimp_int_combo_box_new_valist(i8*, i32, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare void @gtk_combo_box_set_focus_on_click(%struct._GtkComboBox*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_combo_box_get_type() #2

declare void @gtk_box_pack_end(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox*, i32, void ()*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_int_combo_box_get_type() #2

declare i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox*, i32*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_browser_combo_changed(%struct._GtkComboBox* %combo, %struct._GimpBrowser* %browser) #3 {
entry:
  %combo.addr = alloca %struct._GtkComboBox*, align 8
  %browser.addr = alloca %struct._GimpBrowser*, align 8
  store %struct._GtkComboBox* %combo, %struct._GtkComboBox** %combo.addr, align 8
  store %struct._GimpBrowser* %browser, %struct._GimpBrowser** %browser.addr, align 8
  %0 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  call void @gimp_browser_queue_search(%struct._GimpBrowser* %0)
  ret void
}

declare void @gimp_int_combo_box_append(%struct._GimpIntComboBox*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_browser_set_widget(%struct._GimpBrowser* %browser, %struct._GtkWidget* %widget) #3 {
entry:
  %browser.addr = alloca %struct._GimpBrowser*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpBrowser* %browser, %struct._GimpBrowser** %browser.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %1 = bitcast %struct._GimpBrowser* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_browser_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_browser_set_widget, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.56

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %cmp12 = icmp eq %struct._GtkWidget* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gtk_widget_get_type() #7
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
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_browser_set_widget, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.56

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %28 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %right_widget = getelementptr inbounds %struct._GimpBrowser, %struct._GimpBrowser* %28, i32 0, i32 8
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %right_widget, align 8
  %cmp40 = icmp eq %struct._GtkWidget* %27, %29
  br i1 %cmp40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %do.end.39
  br label %if.end.56

if.end.42:                                        ; preds = %do.end.39
  %30 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %right_widget43 = getelementptr inbounds %struct._GimpBrowser, %struct._GimpBrowser* %30, i32 0, i32 8
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %right_widget43, align 8
  %tobool44 = icmp ne %struct._GtkWidget* %31, null
  br i1 %tobool44, label %if.then.45, label %if.end.49

if.then.45:                                       ; preds = %if.end.42
  %32 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %right_vbox = getelementptr inbounds %struct._GimpBrowser, %struct._GimpBrowser* %32, i32 0, i32 7
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %right_vbox, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_container_get_type() #7
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call46)
  %35 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkContainer*
  %36 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %right_widget48 = getelementptr inbounds %struct._GimpBrowser, %struct._GimpBrowser* %36, i32 0, i32 8
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %right_widget48, align 8
  call void @gtk_container_remove(%struct._GtkContainer* %35, %struct._GtkWidget* %37)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.45, %if.end.42
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %39 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %right_widget50 = getelementptr inbounds %struct._GimpBrowser, %struct._GimpBrowser* %39, i32 0, i32 8
  store %struct._GtkWidget* %38, %struct._GtkWidget** %right_widget50, align 8
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %tobool51 = icmp ne %struct._GtkWidget* %40, null
  br i1 %tobool51, label %if.then.52, label %if.end.56

if.then.52:                                       ; preds = %if.end.49
  %41 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %right_vbox53 = getelementptr inbounds %struct._GimpBrowser, %struct._GimpBrowser* %41, i32 0, i32 7
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %right_vbox53, align 8
  %43 = bitcast %struct._GtkWidget* %42 to %struct._GTypeInstance*
  %call54 = call i64 @gtk_box_get_type() #7
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call54)
  %44 = bitcast %struct._GTypeInstance* %call55 to %struct._GtkBox*
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %44, %struct._GtkWidget* %45, i32 0, i32 0, i32 0)
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %46)
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.9, %if.else.37, %if.then.41, %if.then.52, %if.end.49
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare void @gtk_container_remove(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @gimp_browser_show_message(%struct._GimpBrowser* %browser, i8* %message) #3 {
entry:
  %browser.addr = alloca %struct._GimpBrowser*, align 8
  %message.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst18 = alloca %struct._GTypeInstance*, align 8
  %__t20 = alloca i64, align 8
  %__r23 = alloca i32, align 4
  %tmp38 = alloca i32, align 4
  %label = alloca %struct._GtkWidget*, align 8
  store %struct._GimpBrowser* %browser, %struct._GimpBrowser** %browser.addr, align 8
  store i8* %message, i8** %message.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %1 = bitcast %struct._GimpBrowser* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_browser_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_browser_show_message, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %while.end

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %message.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_browser_show_message, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0))
  br label %while.end

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %right_widget = getelementptr inbounds %struct._GimpBrowser, %struct._GimpBrowser* %14, i32 0, i32 8
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %right_widget, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %16, %struct._GTypeInstance** %__inst18, align 8
  %call21 = call i64 @gtk_label_get_type() #7
  store i64 %call21, i64* %__t20, align 8
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst18, align 8
  %tobool24 = icmp ne %struct._GTypeInstance* %17, null
  br i1 %tobool24, label %if.else.26, label %if.then.25

if.then.25:                                       ; preds = %do.end.16
  store i32 0, i32* %__r23, align 4
  br label %if.end.37

if.else.26:                                       ; preds = %do.end.16
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst18, align 8
  %g_class27 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class27, align 8
  %tobool28 = icmp ne %struct._GTypeClass* %19, null
  br i1 %tobool28, label %land.lhs.true.29, label %if.else.34

land.lhs.true.29:                                 ; preds = %if.else.26
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst18, align 8
  %g_class30 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class30, align 8
  %g_type31 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type31, align 8
  %23 = load i64, i64* %__t20, align 8
  %cmp32 = icmp eq i64 %22, %23
  br i1 %cmp32, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %land.lhs.true.29
  store i32 1, i32* %__r23, align 4
  br label %if.end.36

if.else.34:                                       ; preds = %land.lhs.true.29, %if.else.26
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst18, align 8
  %25 = load i64, i64* %__t20, align 8
  %call35 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %24, i64 %25) #8
  store i32 %call35, i32* %__r23, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.34, %if.then.33
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.then.25
  %26 = load i32, i32* %__r23, align 4
  store i32 %26, i32* %tmp38
  %27 = load i32, i32* %tmp38
  %tobool39 = icmp ne i32 %27, 0
  br i1 %tobool39, label %if.then.40, label %if.else.44

if.then.40:                                       ; preds = %if.end.37
  %28 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %right_widget41 = getelementptr inbounds %struct._GimpBrowser, %struct._GimpBrowser* %28, i32 0, i32 8
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %right_widget41, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_label_get_type() #7
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call42)
  %31 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkLabel*
  %32 = load i8*, i8** %message.addr, align 8
  call void @gtk_label_set_text(%struct._GtkLabel* %31, i8* %32)
  br label %if.end.49

if.else.44:                                       ; preds = %if.end.37
  %33 = load i8*, i8** %message.addr, align 8
  %call46 = call %struct._GtkWidget* @gtk_label_new(i8* %33)
  store %struct._GtkWidget* %call46, %struct._GtkWidget** %label, align 8
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call47 = call i64 @gtk_label_get_type() #7
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call47)
  %36 = bitcast %struct._GTypeInstance* %call48 to %struct._GtkLabel*
  call void (%struct._GtkLabel*, ...) @gimp_label_set_attributes(%struct._GtkLabel* %36, i32 3, i32 2, i32 -1)
  %37 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gimp_browser_set_widget(%struct._GimpBrowser* %37, %struct._GtkWidget* %38)
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.44, %if.then.40
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.49
  %call50 = call i32 @gtk_events_pending()
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call52 = call i32 @gtk_main_iteration()
  br label %while.cond

while.end:                                        ; preds = %if.else.9, %if.else.14, %while.cond
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #2

declare void @gtk_label_set_text(%struct._GtkLabel*, i8*) #1

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare void @gimp_label_set_attributes(%struct._GtkLabel*, ...) #1

declare i32 @gtk_events_pending() #1

declare i32 @gtk_main_iteration() #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_browser_class_init(%struct._GimpBrowserClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpBrowserClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpBrowserClass* %klass, %struct._GimpBrowserClass** %klass.addr, align 8
  %0 = load %struct._GimpBrowserClass*, %struct._GimpBrowserClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpBrowserClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpBrowserClass*, %struct._GimpBrowserClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpBrowserClass* %3 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %4, i32 0, i32 0
  %5 = load i64, i64* %g_type, align 8
  %call1 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i64 %5, i32 2, i32 904, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @_gimp_widgets_marshal_VOID__STRING_INT, i64 4, i32 2, i64 64, i64 24)
  store i32 %call1, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @browser_signals, i32 0, i64 0), align 4
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_browser_dispose, void (%struct._GObject*)** %dispose, align 8
  %7 = load %struct._GimpBrowserClass*, %struct._GimpBrowserClass** %klass.addr, align 8
  %search = getelementptr inbounds %struct._GimpBrowserClass, %struct._GimpBrowserClass* %7, i32 0, i32 1
  store void (%struct._GimpBrowser*, i8*, i32)* null, void (%struct._GimpBrowser*, i8*, i32)** %search, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @_gimp_widgets_marshal_VOID__STRING_INT(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_browser_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %browser = alloca %struct._GimpBrowser*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_browser_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBrowser*
  store %struct._GimpBrowser* %2, %struct._GimpBrowser** %browser, align 8
  %3 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser, align 8
  %search_timeout_id = getelementptr inbounds %struct._GimpBrowser, %struct._GimpBrowser* %3, i32 0, i32 3
  %4 = load i32, i32* %search_timeout_id, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser, align 8
  %search_timeout_id2 = getelementptr inbounds %struct._GimpBrowser, %struct._GimpBrowser* %5, i32 0, i32 3
  %6 = load i32, i32* %search_timeout_id2, align 4
  %call3 = call i32 @g_source_remove(i32 %6)
  %7 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser, align 8
  %search_timeout_id4 = getelementptr inbounds %struct._GimpBrowser, %struct._GimpBrowser* %7, i32 0, i32 3
  store i32 0, i32* %search_timeout_id4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8*, i8** @gimp_browser_parent_class, align 8
  %9 = bitcast i8* %8 to %struct._GTypeClass*
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %9, i64 80)
  %10 = bitcast %struct._GTypeClass* %call5 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 5
  %11 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %12 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %11(%struct._GObject* %12)
  ret void
}

declare i32 @g_source_remove(i32) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_paned_pack1(%struct._GtkPaned*, %struct._GtkWidget*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_paned_get_type() #2

declare %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8*) #1

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #6

declare %struct._GtkWidget* @gtk_entry_new() #1

declare void @gtk_label_set_mnemonic_widget(%struct._GtkLabel*, %struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_browser_entry_changed(%struct._GtkEntry* %entry1, %struct._GimpBrowser* %browser) #3 {
entry:
  %entry.addr = alloca %struct._GtkEntry*, align 8
  %browser.addr = alloca %struct._GimpBrowser*, align 8
  store %struct._GtkEntry* %entry1, %struct._GtkEntry** %entry.addr, align 8
  store %struct._GimpBrowser* %browser, %struct._GimpBrowser** %browser.addr, align 8
  %0 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  call void @gimp_browser_queue_search(%struct._GimpBrowser* %0)
  %1 = load %struct._GtkEntry*, %struct._GtkEntry** %entry.addr, align 8
  %2 = load %struct._GtkEntry*, %struct._GtkEntry** %entry.addr, align 8
  %call = call zeroext i16 @gtk_entry_get_text_length(%struct._GtkEntry* %2)
  %conv = zext i16 %call to i32
  %cmp = icmp sgt i32 %conv, 0
  %conv2 = zext i1 %cmp to i32
  call void @gtk_entry_set_icon_sensitive(%struct._GtkEntry* %1, i32 1, i32 %conv2)
  ret void
}

declare void @gtk_entry_set_icon_from_stock(%struct._GtkEntry*, i32, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #2

declare void @gtk_entry_set_icon_activatable(%struct._GtkEntry*, i32, i32) #1

declare void @gtk_entry_set_icon_sensitive(%struct._GtkEntry*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_browser_entry_icon_press(%struct._GtkEntry* %entry1, i32 %icon_pos, %union._GdkEvent* %event, %struct._GimpBrowser* %browser) #3 {
entry:
  %entry.addr = alloca %struct._GtkEntry*, align 8
  %icon_pos.addr = alloca i32, align 4
  %event.addr = alloca %union._GdkEvent*, align 8
  %browser.addr = alloca %struct._GimpBrowser*, align 8
  %bevent = alloca %struct._GdkEventButton*, align 8
  store %struct._GtkEntry* %entry1, %struct._GtkEntry** %entry.addr, align 8
  store i32 %icon_pos, i32* %icon_pos.addr, align 4
  store %union._GdkEvent* %event, %union._GdkEvent** %event.addr, align 8
  store %struct._GimpBrowser* %browser, %struct._GimpBrowser** %browser.addr, align 8
  %0 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %1 = bitcast %union._GdkEvent* %0 to %struct._GdkEventButton*
  store %struct._GdkEventButton* %1, %struct._GdkEventButton** %bevent, align 8
  %2 = load i32, i32* %icon_pos.addr, align 4
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %3, i32 0, i32 8
  %4 = load i32, i32* %button, align 4
  %cmp2 = icmp eq i32 %4, 1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct._GtkEntry*, %struct._GtkEntry** %entry.addr, align 8
  call void @gtk_entry_set_text(%struct._GtkEntry* %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #2

declare %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment*, %struct._GtkAdjustment*) #1

declare void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_scrolled_window_get_type() #2

declare void @gtk_paned_pack2(%struct._GtkPaned*, %struct._GtkWidget*, i32, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

declare void @gtk_scrolled_window_add_with_viewport(%struct._GtkScrolledWindow*, %struct._GtkWidget*) #1

declare void @gtk_widget_grab_focus(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_browser_queue_search(%struct._GimpBrowser* %browser) #3 {
entry:
  %browser.addr = alloca %struct._GimpBrowser*, align 8
  store %struct._GimpBrowser* %browser, %struct._GimpBrowser** %browser.addr, align 8
  %0 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %search_timeout_id = getelementptr inbounds %struct._GimpBrowser, %struct._GimpBrowser* %0, i32 0, i32 3
  %1 = load i32, i32* %search_timeout_id, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %search_timeout_id1 = getelementptr inbounds %struct._GimpBrowser, %struct._GimpBrowser* %2, i32 0, i32 3
  %3 = load i32, i32* %search_timeout_id1, align 4
  %call = call i32 @g_source_remove(i32 %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %5 = bitcast %struct._GimpBrowser* %4 to i8*
  %call2 = call i32 @g_timeout_add(i32 100, i32 (i8*)* @gimp_browser_search_timeout, i8* %5)
  %6 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser.addr, align 8
  %search_timeout_id3 = getelementptr inbounds %struct._GimpBrowser, %struct._GimpBrowser* %6, i32 0, i32 3
  store i32 %call2, i32* %search_timeout_id3, align 4
  ret void
}

declare zeroext i16 @gtk_entry_get_text_length(%struct._GtkEntry*) #1

declare i32 @g_timeout_add(i32, i32 (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_browser_search_timeout(i8* %data) #3 {
entry:
  %data.addr = alloca i8*, align 8
  %browser = alloca %struct._GimpBrowser*, align 8
  %search_string = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_browser_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBrowser*
  store %struct._GimpBrowser* %2, %struct._GimpBrowser** %browser, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load void ()*, void ()** @gdk_threads_lock, align 8
  %tobool = icmp ne void ()* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %4 = load void ()*, void ()** @gdk_threads_lock, align 8
  call void %4()
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %5 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser, align 8
  %search_entry = getelementptr inbounds %struct._GimpBrowser, %struct._GimpBrowser* %5, i32 0, i32 2
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %search_entry, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_entry_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call2)
  %8 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkEntry*
  %call4 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %8)
  store i8* %call4, i8** %search_string, align 8
  %9 = load i8*, i8** %search_string, align 8
  %tobool5 = icmp ne i8* %9, null
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %do.end
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i32 0, i32 0), i8** %search_string, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %do.end
  %10 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser, align 8
  %11 = bitcast %struct._GimpBrowser* %10 to i8*
  %12 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @browser_signals, i32 0, i64 0), align 4
  %13 = load i8*, i8** %search_string, align 8
  %14 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser, align 8
  %search_type = getelementptr inbounds %struct._GimpBrowser, %struct._GimpBrowser* %14, i32 0, i32 5
  %15 = load i32, i32* %search_type, align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %11, i32 %12, i32 0, i8* %13, i32 %15)
  %16 = load %struct._GimpBrowser*, %struct._GimpBrowser** %browser, align 8
  %search_timeout_id = getelementptr inbounds %struct._GimpBrowser, %struct._GimpBrowser* %16, i32 0, i32 3
  store i32 0, i32* %search_timeout_id, align 4
  br label %do.body.8

do.body.8:                                        ; preds = %if.end.7
  %17 = load void ()*, void ()** @gdk_threads_unlock, align 8
  %tobool9 = icmp ne void ()* %17, null
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %do.body.8
  %18 = load void ()*, void ()** @gdk_threads_unlock, align 8
  call void %18()
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %do.body.8
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  ret i32 0
}

declare i8* @gtk_entry_get_text(%struct._GtkEntry*) #1

declare void @g_signal_emit(i8*, i32, i32, ...) #1

declare void @gtk_entry_set_text(%struct._GtkEntry*, i8*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
