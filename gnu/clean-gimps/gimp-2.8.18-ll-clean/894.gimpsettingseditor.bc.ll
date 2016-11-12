; ModuleID = './app/widgets/gimpsettingseditor.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpSettingsEditorClass = type { %struct._GtkBoxClass }
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
%struct._GimpSettingsEditor = type { %struct._GtkBox }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkOrientable = type opaque
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
%struct._GimpTemplate = type opaque
%struct._GimpContext = type opaque
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpSettingsEditorPrivate = type { %struct._Gimp*, %struct._GObject*, %struct._GimpContainer*, %struct._GObject*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GimpContainerTreeView = type { %struct._GimpContainerBox, %struct._GtkTreeModel*, i32, [16 x i64], %struct._GtkTreeView*, %struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, %struct._Gimp*, %struct._GimpContainerTreeViewPriv* }
%struct._GimpContainerBox = type { %struct._GimpEditor, %struct._GtkWidget* }
%struct._GimpEditor = type { %struct._GtkBox, %struct._GimpEditorPrivate* }
%struct._GimpEditorPrivate = type opaque
%struct._GtkTreeModel = type opaque
%struct._GtkTreeView = type { %struct._GtkContainer, %struct._GtkTreeViewPrivate* }
%struct._GtkTreeViewPrivate = type opaque
%struct._GtkTreeViewColumn = type { %struct._GtkObject, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkDrawable*, %struct._GtkCellEditable*, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, %struct._GList*, i32, i32, i32, i32, i16 }
%struct._GtkCellEditable = type opaque
%struct._GtkCellRenderer = type { %struct._GtkObject, float, float, i32, i32, i16, i16, i8 }
%struct._GimpContainerTreeViewPriv = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._GimpContainerView = type opaque
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GtkCellRendererText = type { %struct._GtkCellRenderer, i8*, %struct._PangoFontDescription*, double, %struct._PangoColor, %struct._PangoColor, %struct._PangoAttrList*, i32, i32, i32, i16 }
%struct._PangoColor = type { i16, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._GtkTreePath = type opaque
%struct._GimpViewRenderer = type { %struct._GObject, %struct._GimpContext*, i64, %struct._GimpViewable*, i32, i32, i32, i8, i32, %struct._GimpRGB, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GdkPixbuf*, i8*, i32, i32, i32 }
%struct._GimpRGB = type { double, double, double, double }
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GdkPixbuf = type opaque
%struct._GtkTreeStore = type { %struct._GObject, i32, i8*, i8*, i32, i32, %struct._GList*, i32, i64*, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }

@gimp_settings_editor_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"GimpSettingsEditor\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_settings_editor_new = private unnamed_addr constant [25 x i8] c"gimp_settings_editor_new\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"GIMP_IS_CONFIG (config)\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"GIMP_IS_CONTAINER (container)\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"gimp\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"container\00", align 1
@gimp_settings_editor_parent_class = internal global i8* null, align 8
@GimpSettingsEditor_private_offset = internal global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"gimpsettingseditor.c\00", align 1
@__func__.gimp_settings_editor_constructed = private unnamed_addr constant [33 x i8] c"gimp_settings_editor_constructed\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"GIMP_IS_GIMP (private->gimp)\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"GIMP_IS_CONFIG (private->config)\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"GIMP_IS_CONTAINER (private->container)\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"select-item\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"gtk-open\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"Import settings from a file\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"gtk-save\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"Export the selected settings to a file\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"gtk-delete\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"Delete the selected settings\00", align 1
@.str.19 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.21 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"property\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_settings_editor_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_settings_editor_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_settings_editor_get_type.g_define_type_id__volatile to i8*))
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
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 824, void (i8*, i8*)* bitcast (void (i8*)* @gimp_settings_editor_class_intern_init to void (i8*, i8*)*), i32 128, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpSettingsEditor*)* @gimp_settings_editor_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_settings_editor_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_settings_editor_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_settings_editor_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_settings_editor_parent_class, align 8
  %1 = load i32, i32* @GimpSettingsEditor_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpSettingsEditor_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpSettingsEditorClass*
  call void @gimp_settings_editor_class_init(%struct._GimpSettingsEditorClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_settings_editor_init(%struct._GimpSettingsEditor* %editor) #3 {
entry:
  %editor.addr = alloca %struct._GimpSettingsEditor*, align 8
  store %struct._GimpSettingsEditor* %editor, %struct._GimpSettingsEditor** %editor.addr, align 8
  %0 = load %struct._GimpSettingsEditor*, %struct._GimpSettingsEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpSettingsEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_orientable_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkOrientable*
  call void @gtk_orientable_set_orientation(%struct._GtkOrientable* %2, i32 1)
  %3 = load %struct._GimpSettingsEditor*, %struct._GimpSettingsEditor** %editor.addr, align 8
  %4 = bitcast %struct._GimpSettingsEditor* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_box_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkBox*
  call void @gtk_box_set_spacing(%struct._GtkBox* %5, i32 6)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_settings_editor_new(%struct._Gimp* %gimp, %struct._GObject* %config, %struct._GimpContainer* %container) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %container.addr = alloca %struct._GimpContainer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %__inst41 = alloca %struct._GTypeInstance*, align 8
  %__t43 = alloca i64, align 8
  %__r46 = alloca i32, align 4
  %tmp61 = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_settings_editor_new, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %14 = bitcast %struct._GObject* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_config_interface_get_type() #8
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_settings_editor_new, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %27 = bitcast %struct._GimpContainer* %26 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %27, %struct._GTypeInstance** %__inst41, align 8
  %call44 = call i64 @gimp_container_get_type() #8
  store i64 %call44, i64* %__t43, align 8
  %28 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %tobool47 = icmp ne %struct._GTypeInstance* %28, null
  br i1 %tobool47, label %if.else.49, label %if.then.48

if.then.48:                                       ; preds = %do.body.39
  store i32 0, i32* %__r46, align 4
  br label %if.end.60

if.else.49:                                       ; preds = %do.body.39
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %g_class50 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %29, i32 0, i32 0
  %30 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class50, align 8
  %tobool51 = icmp ne %struct._GTypeClass* %30, null
  br i1 %tobool51, label %land.lhs.true.52, label %if.else.57

land.lhs.true.52:                                 ; preds = %if.else.49
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %g_class53 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class53, align 8
  %g_type54 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %32, i32 0, i32 0
  %33 = load i64, i64* %g_type54, align 8
  %34 = load i64, i64* %__t43, align 8
  %cmp55 = icmp eq i64 %33, %34
  br i1 %cmp55, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %land.lhs.true.52
  store i32 1, i32* %__r46, align 4
  br label %if.end.59

if.else.57:                                       ; preds = %land.lhs.true.52, %if.else.49
  %35 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %36 = load i64, i64* %__t43, align 8
  %call58 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %35, i64 %36) #9
  store i32 %call58, i32* %__r46, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.57, %if.then.56
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.48
  %37 = load i32, i32* %__r46, align 4
  store i32 %37, i32* %tmp61
  %38 = load i32, i32* %tmp61
  %tobool62 = icmp ne i32 %38, 0
  br i1 %tobool62, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %if.end.60
  br label %if.end.65

if.else.64:                                       ; preds = %if.end.60
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_settings_editor_new, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.65:                                        ; preds = %if.then.63
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  %call67 = call i64 @gimp_settings_editor_get_type() #8
  %39 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %40 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %41 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %call68 = call i8* (i64, i8*, ...) @g_object_new(i64 %call67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), %struct._Gimp* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), %struct._GObject* %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), %struct._GimpContainer* %41, i8* null)
  %42 = bitcast i8* %call68 to %struct._GtkWidget*
  store %struct._GtkWidget* %42, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end.66, %if.else.64, %if.else.36, %if.else.9
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %43
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_container_get_type() #2

declare i8* @g_object_new(i64, i8*, ...) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_settings_editor_class_init(%struct._GimpSettingsEditorClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpSettingsEditorClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpSettingsEditorClass* %klass, %struct._GimpSettingsEditorClass** %klass.addr, align 8
  %0 = load %struct._GimpSettingsEditorClass*, %struct._GimpSettingsEditorClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpSettingsEditorClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_settings_editor_constructed, void (%struct._GObject*)** %constructed, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_settings_editor_finalize, void (%struct._GObject*)** %finalize, align 8
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_settings_editor_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_settings_editor_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call1 = call i64 @gimp_get_type() #8
  %call2 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null, i64 %call1, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %7, i32 1, %struct._GParamSpec* %call2)
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call i64 @gimp_config_interface_get_type() #8
  %call4 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null, i64 %call3, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %8, i32 2, %struct._GParamSpec* %call4)
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call i64 @gimp_container_get_type() #8
  %call6 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null, i64 %call5, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %9, i32 3, %struct._GParamSpec* %call6)
  %10 = load %struct._GimpSettingsEditorClass*, %struct._GimpSettingsEditorClass** %klass.addr, align 8
  %11 = bitcast %struct._GimpSettingsEditorClass* %10 to i8*
  call void @g_type_class_add_private(i8* %11, i64 64)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_settings_editor_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %editor = alloca %struct._GimpSettingsEditor*, align 8
  %private = alloca %struct._GimpSettingsEditorPrivate*, align 8
  %tree_view = alloca %struct._GimpContainerTreeView*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst23 = alloca %struct._GTypeInstance*, align 8
  %__t25 = alloca i64, align 8
  %__r28 = alloca i32, align 4
  %tmp43 = alloca i32, align 4
  %__inst51 = alloca %struct._GTypeInstance*, align 8
  %__t53 = alloca i64, align 8
  %__r56 = alloca i32, align 4
  %tmp71 = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_settings_editor_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSettingsEditor*
  store %struct._GimpSettingsEditor* %2, %struct._GimpSettingsEditor** %editor, align 8
  %3 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %4 = bitcast %struct._GObject* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_settings_editor_get_type() #8
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpSettingsEditorPrivate*
  store %struct._GimpSettingsEditorPrivate* %5, %struct._GimpSettingsEditorPrivate** %private, align 8
  %6 = load i8*, i8** @gimp_settings_editor_parent_class, align 8
  %7 = bitcast i8* %6 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 80)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 9
  %9 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %9, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i8*, i8** @gimp_settings_editor_parent_class, align 8
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
  %15 = load %struct._GimpSettingsEditorPrivate*, %struct._GimpSettingsEditorPrivate** %private, align 8
  %gimp = getelementptr inbounds %struct._GimpSettingsEditorPrivate, %struct._GimpSettingsEditorPrivate* %15, i32 0, i32 0
  %16 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %17 = bitcast %struct._Gimp* %16 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %17, %struct._GTypeInstance** %__inst, align 8
  %call7 = call i64 @gimp_get_type() #8
  store i64 %call7, i64* %__t, align 8
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool8 = icmp ne %struct._GTypeInstance* %18, null
  br i1 %tobool8, label %if.else, label %if.then.9

if.then.9:                                        ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.16

if.else:                                          ; preds = %do.body
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool10 = icmp ne %struct._GTypeClass* %20, null
  br i1 %tobool10, label %land.lhs.true, label %if.else.13

land.lhs.true:                                    ; preds = %if.else
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type, align 8
  %24 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %23, %24
  br i1 %cmp, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.15

if.else.13:                                       ; preds = %land.lhs.true, %if.else
  %25 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %26 = load i64, i64* %__t, align 8
  %call14 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %25, i64 %26) #9
  store i32 %call14, i32* %__r, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.13, %if.then.12
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.then.9
  %27 = load i32, i32* %__r, align 4
  store i32 %27, i32* %tmp
  %28 = load i32, i32* %tmp
  %tobool17 = icmp ne i32 %28, 0
  br i1 %tobool17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %if.end.16
  br label %if.end.20

if.else.19:                                       ; preds = %if.end.16
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), i32 166, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_settings_editor_constructed, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0)) #10
  unreachable

if.end.20:                                        ; preds = %if.then.18
  br label %do.end

do.end:                                           ; preds = %if.end.20
  br label %do.body.21

do.body.21:                                       ; preds = %do.end
  %29 = load %struct._GimpSettingsEditorPrivate*, %struct._GimpSettingsEditorPrivate** %private, align 8
  %config = getelementptr inbounds %struct._GimpSettingsEditorPrivate, %struct._GimpSettingsEditorPrivate* %29, i32 0, i32 1
  %30 = load %struct._GObject*, %struct._GObject** %config, align 8
  %31 = bitcast %struct._GObject* %30 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %31, %struct._GTypeInstance** %__inst23, align 8
  %call26 = call i64 @gimp_config_interface_get_type() #8
  store i64 %call26, i64* %__t25, align 8
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst23, align 8
  %tobool29 = icmp ne %struct._GTypeInstance* %32, null
  br i1 %tobool29, label %if.else.31, label %if.then.30

if.then.30:                                       ; preds = %do.body.21
  store i32 0, i32* %__r28, align 4
  br label %if.end.42

if.else.31:                                       ; preds = %do.body.21
  %33 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst23, align 8
  %g_class32 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %33, i32 0, i32 0
  %34 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class32, align 8
  %tobool33 = icmp ne %struct._GTypeClass* %34, null
  br i1 %tobool33, label %land.lhs.true.34, label %if.else.39

land.lhs.true.34:                                 ; preds = %if.else.31
  %35 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst23, align 8
  %g_class35 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %35, i32 0, i32 0
  %36 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class35, align 8
  %g_type36 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %36, i32 0, i32 0
  %37 = load i64, i64* %g_type36, align 8
  %38 = load i64, i64* %__t25, align 8
  %cmp37 = icmp eq i64 %37, %38
  br i1 %cmp37, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %land.lhs.true.34
  store i32 1, i32* %__r28, align 4
  br label %if.end.41

if.else.39:                                       ; preds = %land.lhs.true.34, %if.else.31
  %39 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst23, align 8
  %40 = load i64, i64* %__t25, align 8
  %call40 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %39, i64 %40) #9
  store i32 %call40, i32* %__r28, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.39, %if.then.38
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.then.30
  %41 = load i32, i32* %__r28, align 4
  store i32 %41, i32* %tmp43
  %42 = load i32, i32* %tmp43
  %tobool44 = icmp ne i32 %42, 0
  br i1 %tobool44, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %if.end.42
  br label %if.end.47

if.else.46:                                       ; preds = %if.end.42
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), i32 167, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_settings_editor_constructed, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i32 0, i32 0)) #10
  unreachable

if.end.47:                                        ; preds = %if.then.45
  br label %do.end.48

do.end.48:                                        ; preds = %if.end.47
  br label %do.body.49

do.body.49:                                       ; preds = %do.end.48
  %43 = load %struct._GimpSettingsEditorPrivate*, %struct._GimpSettingsEditorPrivate** %private, align 8
  %container = getelementptr inbounds %struct._GimpSettingsEditorPrivate, %struct._GimpSettingsEditorPrivate* %43, i32 0, i32 2
  %44 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %45 = bitcast %struct._GimpContainer* %44 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %45, %struct._GTypeInstance** %__inst51, align 8
  %call54 = call i64 @gimp_container_get_type() #8
  store i64 %call54, i64* %__t53, align 8
  %46 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst51, align 8
  %tobool57 = icmp ne %struct._GTypeInstance* %46, null
  br i1 %tobool57, label %if.else.59, label %if.then.58

if.then.58:                                       ; preds = %do.body.49
  store i32 0, i32* %__r56, align 4
  br label %if.end.70

if.else.59:                                       ; preds = %do.body.49
  %47 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst51, align 8
  %g_class60 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %47, i32 0, i32 0
  %48 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class60, align 8
  %tobool61 = icmp ne %struct._GTypeClass* %48, null
  br i1 %tobool61, label %land.lhs.true.62, label %if.else.67

land.lhs.true.62:                                 ; preds = %if.else.59
  %49 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst51, align 8
  %g_class63 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %49, i32 0, i32 0
  %50 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class63, align 8
  %g_type64 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %50, i32 0, i32 0
  %51 = load i64, i64* %g_type64, align 8
  %52 = load i64, i64* %__t53, align 8
  %cmp65 = icmp eq i64 %51, %52
  br i1 %cmp65, label %if.then.66, label %if.else.67

if.then.66:                                       ; preds = %land.lhs.true.62
  store i32 1, i32* %__r56, align 4
  br label %if.end.69

if.else.67:                                       ; preds = %land.lhs.true.62, %if.else.59
  %53 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst51, align 8
  %54 = load i64, i64* %__t53, align 8
  %call68 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %53, i64 %54) #9
  store i32 %call68, i32* %__r56, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.67, %if.then.66
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.then.58
  %55 = load i32, i32* %__r56, align 4
  store i32 %55, i32* %tmp71
  %56 = load i32, i32* %tmp71
  %tobool72 = icmp ne i32 %56, 0
  br i1 %tobool72, label %if.then.73, label %if.else.74

if.then.73:                                       ; preds = %if.end.70
  br label %if.end.75

if.else.74:                                       ; preds = %if.end.70
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), i32 168, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_settings_editor_constructed, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i32 0, i32 0)) #10
  unreachable

if.end.75:                                        ; preds = %if.then.73
  br label %do.end.76

do.end.76:                                        ; preds = %if.end.75
  %57 = load %struct._GimpSettingsEditorPrivate*, %struct._GimpSettingsEditorPrivate** %private, align 8
  %container77 = getelementptr inbounds %struct._GimpSettingsEditorPrivate, %struct._GimpSettingsEditorPrivate* %57, i32 0, i32 2
  %58 = load %struct._GimpContainer*, %struct._GimpContainer** %container77, align 8
  %59 = load %struct._GimpSettingsEditorPrivate*, %struct._GimpSettingsEditorPrivate** %private, align 8
  %gimp78 = getelementptr inbounds %struct._GimpSettingsEditorPrivate, %struct._GimpSettingsEditorPrivate* %59, i32 0, i32 0
  %60 = load %struct._Gimp*, %struct._Gimp** %gimp78, align 8
  %call79 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %60)
  %call80 = call %struct._GtkWidget* @gimp_container_tree_view_new(%struct._GimpContainer* %58, %struct._GimpContext* %call79, i32 16, i32 0)
  %61 = load %struct._GimpSettingsEditorPrivate*, %struct._GimpSettingsEditorPrivate** %private, align 8
  %view = getelementptr inbounds %struct._GimpSettingsEditorPrivate, %struct._GimpSettingsEditorPrivate* %61, i32 0, i32 4
  store %struct._GtkWidget* %call80, %struct._GtkWidget** %view, align 8
  %62 = load %struct._GimpSettingsEditorPrivate*, %struct._GimpSettingsEditorPrivate** %private, align 8
  %view81 = getelementptr inbounds %struct._GimpSettingsEditorPrivate, %struct._GimpSettingsEditorPrivate* %62, i32 0, i32 4
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %view81, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %63, i32 200, i32 200)
  %64 = load %struct._GimpSettingsEditor*, %struct._GimpSettingsEditor** %editor, align 8
  %65 = bitcast %struct._GimpSettingsEditor* %64 to %struct._GTypeInstance*
  %call82 = call i64 @gtk_box_get_type() #8
  %call83 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 %call82)
  %66 = bitcast %struct._GTypeInstance* %call83 to %struct._GtkBox*
  %67 = load %struct._GimpSettingsEditorPrivate*, %struct._GimpSettingsEditorPrivate** %private, align 8
  %view84 = getelementptr inbounds %struct._GimpSettingsEditorPrivate, %struct._GimpSettingsEditorPrivate* %67, i32 0, i32 4
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %view84, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %66, %struct._GtkWidget* %68, i32 1, i32 1, i32 0)
  %69 = load %struct._GimpSettingsEditorPrivate*, %struct._GimpSettingsEditorPrivate** %private, align 8
  %view85 = getelementptr inbounds %struct._GimpSettingsEditorPrivate, %struct._GimpSettingsEditorPrivate* %69, i32 0, i32 4
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %view85, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %70)
  %71 = load %struct._GimpSettingsEditorPrivate*, %struct._GimpSettingsEditorPrivate** %private, align 8
  %view86 = getelementptr inbounds %struct._GimpSettingsEditorPrivate, %struct._GimpSettingsEditorPrivate* %71, i32 0, i32 4
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %view86, align 8
  %73 = bitcast %struct._GtkWidget* %72 to %struct._GTypeInstance*
  %call87 = call i64 @gimp_container_tree_view_get_type() #8
  %call88 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 %call87)
  %74 = bitcast %struct._GTypeInstance* %call88 to %struct._GimpContainerTreeView*
  store %struct._GimpContainerTreeView* %74, %struct._GimpContainerTreeView** %tree_view, align 8
  %75 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %view89 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %75, i32 0, i32 4
  %76 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view89, align 8
  %77 = load %struct._GimpSettingsEditorPrivate*, %struct._GimpSettingsEditorPrivate** %private, align 8
  %view90 = getelementptr inbounds %struct._GimpSettingsEditorPrivate, %struct._GimpSettingsEditorPrivate* %77, i32 0, i32 4
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %view90, align 8
  %79 = bitcast %struct._GtkWidget* %78 to i8*
  call void @gtk_tree_view_set_row_separator_func(%struct._GtkTreeView* %76, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, i8*)* @gimp_settings_editor_row_separator_func, i8* %79, void (i8*)* null)
  %80 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %81 = bitcast %struct._GimpContainerTreeView* %80 to i8*
  %82 = load %struct._GimpSettingsEditor*, %struct._GimpSettingsEditor** %editor, align 8
  %83 = bitcast %struct._GimpSettingsEditor* %82 to i8*
  %call91 = call i64 @g_signal_connect_data(i8* %81, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*, %struct._GimpSettingsEditor*)* @gimp_settings_editor_select_item to void ()*), i8* %83, void (i8*, %struct._GClosure*)* null, i32 0)
  %84 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %85 = load %struct._GimpSettingsEditor*, %struct._GimpSettingsEditor** %editor, align 8
  %86 = bitcast %struct._GimpSettingsEditor* %85 to i8*
  call void @gimp_container_tree_view_connect_name_edited(%struct._GimpContainerTreeView* %84, void ()* bitcast (void (%struct._GtkCellRendererText*, i8*, i8*, %struct._GimpSettingsEditor*)* @gimp_settings_editor_name_edited to void ()*), i8* %86)
  %87 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %88 = bitcast %struct._GimpContainerTreeView* %87 to %struct._GTypeInstance*
  %call92 = call i64 @gimp_editor_get_type() #8
  %call93 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %88, i64 %call92)
  %89 = bitcast %struct._GTypeInstance* %call93 to %struct._GimpEditor*
  %call94 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i32 0, i32 0)) #7
  %90 = load %struct._GimpSettingsEditor*, %struct._GimpSettingsEditor** %editor, align 8
  %91 = bitcast %struct._GimpSettingsEditor* %90 to i8*
  %call95 = call %struct._GtkWidget* @gimp_editor_add_button(%struct._GimpEditor* %89, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i8* %call94, i8* null, void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpSettingsEditor*)* @gimp_settings_editor_import_clicked to void ()*), void ()* null, i8* %91)
  %92 = load %struct._GimpSettingsEditorPrivate*, %struct._GimpSettingsEditorPrivate** %private, align 8
  %import_button = getelementptr inbounds %struct._GimpSettingsEditorPrivate, %struct._GimpSettingsEditorPrivate* %92, i32 0, i32 5
  store %struct._GtkWidget* %call95, %struct._GtkWidget** %import_button, align 8
  %93 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %94 = bitcast %struct._GimpContainerTreeView* %93 to %struct._GTypeInstance*
  %call96 = call i64 @gimp_editor_get_type() #8
  %call97 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %94, i64 %call96)
  %95 = bitcast %struct._GTypeInstance* %call97 to %struct._GimpEditor*
  %call98 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i32 0, i32 0)) #7
  %96 = load %struct._GimpSettingsEditor*, %struct._GimpSettingsEditor** %editor, align 8
  %97 = bitcast %struct._GimpSettingsEditor* %96 to i8*
  %call99 = call %struct._GtkWidget* @gimp_editor_add_button(%struct._GimpEditor* %95, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* %call98, i8* null, void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpSettingsEditor*)* @gimp_settings_editor_export_clicked to void ()*), void ()* null, i8* %97)
  %98 = load %struct._GimpSettingsEditorPrivate*, %struct._GimpSettingsEditorPrivate** %private, align 8
  %export_button = getelementptr inbounds %struct._GimpSettingsEditorPrivate, %struct._GimpSettingsEditorPrivate* %98, i32 0, i32 6
  store %struct._GtkWidget* %call99, %struct._GtkWidget** %export_button, align 8
  %99 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %100 = bitcast %struct._GimpContainerTreeView* %99 to %struct._GTypeInstance*
  %call100 = call i64 @gimp_editor_get_type() #8
  %call101 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %100, i64 %call100)
  %101 = bitcast %struct._GTypeInstance* %call101 to %struct._GimpEditor*
  %call102 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i32 0, i32 0)) #7
  %102 = load %struct._GimpSettingsEditor*, %struct._GimpSettingsEditor** %editor, align 8
  %103 = bitcast %struct._GimpSettingsEditor* %102 to i8*
  %call103 = call %struct._GtkWidget* @gimp_editor_add_button(%struct._GimpEditor* %101, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0), i8* %call102, i8* null, void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpSettingsEditor*)* @gimp_settings_editor_delete_clicked to void ()*), void ()* null, i8* %103)
  %104 = load %struct._GimpSettingsEditorPrivate*, %struct._GimpSettingsEditorPrivate** %private, align 8
  %delete_button = getelementptr inbounds %struct._GimpSettingsEditorPrivate, %struct._GimpSettingsEditorPrivate* %104, i32 0, i32 7
  store %struct._GtkWidget* %call103, %struct._GtkWidget** %delete_button, align 8
  %105 = load %struct._GimpSettingsEditorPrivate*, %struct._GimpSettingsEditorPrivate** %private, align 8
  %delete_button104 = getelementptr inbounds %struct._GimpSettingsEditorPrivate, %struct._GimpSettingsEditorPrivate* %105, i32 0, i32 7
  %106 = load %struct._GtkWidget*, %struct._GtkWidget** %delete_button104, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %106, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_settings_editor_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %private = alloca %struct._GimpSettingsEditorPrivate*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_settings_editor_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpSettingsEditorPrivate*
  store %struct._GimpSettingsEditorPrivate* %2, %struct._GimpSettingsEditorPrivate** %private, align 8
  %3 = load %struct._GimpSettingsEditorPrivate*, %struct._GimpSettingsEditorPrivate** %private, align 8
  %config = getelementptr inbounds %struct._GimpSettingsEditorPrivate, %struct._GimpSettingsEditorPrivate* %3, i32 0, i32 1
  %4 = load %struct._GObject*, %struct._GObject** %config, align 8
  %tobool = icmp ne %struct._GObject* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpSettingsEditorPrivate*, %struct._GimpSettingsEditorPrivate** %private, align 8
  %config2 = getelementptr inbounds %struct._GimpSettingsEditorPrivate, %struct._GimpSettingsEditorPrivate* %5, i32 0, i32 1
  %6 = load %struct._GObject*, %struct._GObject** %config2, align 8
  %7 = bitcast %struct._GObject* %6 to i8*
  call void @g_object_unref(i8* %7)
  %8 = load %struct._GimpSettingsEditorPrivate*, %struct._GimpSettingsEditorPrivate** %private, align 8
  %config3 = getelementptr inbounds %struct._GimpSettingsEditorPrivate, %struct._GimpSettingsEditorPrivate* %8, i32 0, i32 1
  store %struct._GObject* null, %struct._GObject** %config3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GimpSettingsEditorPrivate*, %struct._GimpSettingsEditorPrivate** %private, align 8
  %container = getelementptr inbounds %struct._GimpSettingsEditorPrivate, %struct._GimpSettingsEditorPrivate* %9, i32 0, i32 2
  %10 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %tobool4 = icmp ne %struct._GimpContainer* %10, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %11 = load %struct._GimpSettingsEditorPrivate*, %struct._GimpSettingsEditorPrivate** %private, align 8
  %container6 = getelementptr inbounds %struct._GimpSettingsEditorPrivate, %struct._GimpSettingsEditorPrivate* %11, i32 0, i32 2
  %12 = load %struct._GimpContainer*, %struct._GimpContainer** %container6, align 8
  %13 = bitcast %struct._GimpContainer* %12 to i8*
  call void @g_object_unref(i8* %13)
  %14 = load %struct._GimpSettingsEditorPrivate*, %struct._GimpSettingsEditorPrivate** %private, align 8
  %container7 = getelementptr inbounds %struct._GimpSettingsEditorPrivate, %struct._GimpSettingsEditorPrivate* %14, i32 0, i32 2
  store %struct._GimpContainer* null, %struct._GimpContainer** %container7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %15 = load i8*, i8** @gimp_settings_editor_parent_class, align 8
  %16 = bitcast i8* %15 to %struct._GTypeClass*
  %call9 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %16, i64 80)
  %17 = bitcast %struct._GTypeClass* %call9 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %17, i32 0, i32 6
  %18 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %19 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %18(%struct._GObject* %19)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_settings_editor_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpSettingsEditorPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_settings_editor_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpSettingsEditorPrivate*
  store %struct._GimpSettingsEditorPrivate* %2, %struct._GimpSettingsEditorPrivate** %private, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_get_object(%struct._GValue* %4)
  %5 = bitcast i8* %call2 to %struct._Gimp*
  %6 = load %struct._GimpSettingsEditorPrivate*, %struct._GimpSettingsEditorPrivate** %private, align 8
  %gimp = getelementptr inbounds %struct._GimpSettingsEditorPrivate, %struct._GimpSettingsEditorPrivate* %6, i32 0, i32 0
  store %struct._Gimp* %5, %struct._Gimp** %gimp, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i8* @g_value_dup_object(%struct._GValue* %7)
  %8 = bitcast i8* %call4 to %struct._GObject*
  %9 = load %struct._GimpSettingsEditorPrivate*, %struct._GimpSettingsEditorPrivate** %private, align 8
  %config = getelementptr inbounds %struct._GimpSettingsEditorPrivate, %struct._GimpSettingsEditorPrivate* %9, i32 0, i32 1
  store %struct._GObject* %8, %struct._GObject** %config, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call i8* @g_value_dup_object(%struct._GValue* %10)
  %11 = bitcast i8* %call6 to %struct._GimpContainer*
  %12 = load %struct._GimpSettingsEditorPrivate*, %struct._GimpSettingsEditorPrivate** %private, align 8
  %container = getelementptr inbounds %struct._GimpSettingsEditorPrivate, %struct._GimpSettingsEditorPrivate* %12, i32 0, i32 2
  store %struct._GimpContainer* %11, %struct._GimpContainer** %container, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %13 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %13, %struct._GObject** %_glib__object, align 8
  %14 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %14, %struct._GParamSpec** %_glib__pspec, align 8
  %15 = load i32, i32* %property_id.addr, align 4
  store i32 %15, i32* %_glib__property_id, align 4
  %16 = load i32, i32* %_glib__property_id, align 4
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %17, i32 0, i32 1
  %18 = load i8*, i8** %name, align 8
  %19 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %20 = bitcast %struct._GParamSpec* %19 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type, align 8
  %call7 = call i8* @g_type_name(i64 %22)
  %23 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %24 = bitcast %struct._GObject* %23 to %struct._GTypeInstance*
  %g_class8 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %24, i32 0, i32 0
  %25 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class8, align 8
  %g_type9 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %25, i32 0, i32 0
  %26 = load i64, i64* %g_type9, align 8
  %call10 = call i8* @g_type_name(i64 %26)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), i32 264, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i32 %16, i8* %18, i8* %call7, i8* %call10)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.5, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_settings_editor_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpSettingsEditorPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_settings_editor_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpSettingsEditorPrivate*
  store %struct._GimpSettingsEditorPrivate* %2, %struct._GimpSettingsEditorPrivate** %private, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpSettingsEditorPrivate*, %struct._GimpSettingsEditorPrivate** %private, align 8
  %gimp = getelementptr inbounds %struct._GimpSettingsEditorPrivate, %struct._GimpSettingsEditorPrivate* %5, i32 0, i32 0
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %7 = bitcast %struct._Gimp* %6 to i8*
  call void @g_value_set_object(%struct._GValue* %4, i8* %7)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %9 = load %struct._GimpSettingsEditorPrivate*, %struct._GimpSettingsEditorPrivate** %private, align 8
  %config = getelementptr inbounds %struct._GimpSettingsEditorPrivate, %struct._GimpSettingsEditorPrivate* %9, i32 0, i32 1
  %10 = load %struct._GObject*, %struct._GObject** %config, align 8
  %11 = bitcast %struct._GObject* %10 to i8*
  call void @g_value_set_object(%struct._GValue* %8, i8* %11)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %12 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %13 = load %struct._GimpSettingsEditorPrivate*, %struct._GimpSettingsEditorPrivate** %private, align 8
  %container = getelementptr inbounds %struct._GimpSettingsEditorPrivate, %struct._GimpSettingsEditorPrivate* %13, i32 0, i32 2
  %14 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %15 = bitcast %struct._GimpContainer* %14 to i8*
  call void @g_value_set_object(%struct._GValue* %12, i8* %15)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %16 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %16, %struct._GObject** %_glib__object, align 8
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %17, %struct._GParamSpec** %_glib__pspec, align 8
  %18 = load i32, i32* %property_id.addr, align 4
  store i32 %18, i32* %_glib__property_id, align 4
  %19 = load i32, i32* %_glib__property_id, align 4
  %20 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %20, i32 0, i32 1
  %21 = load i8*, i8** %name, align 8
  %22 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %23 = bitcast %struct._GParamSpec* %22 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %23, i32 0, i32 0
  %24 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %24, i32 0, i32 0
  %25 = load i64, i64* %g_type, align 8
  %call4 = call i8* @g_type_name(i64 %25)
  %26 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %27 = bitcast %struct._GObject* %26 to %struct._GTypeInstance*
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %27, i32 0, i32 0
  %28 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type6 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %28, i32 0, i32 0
  %29 = load i64, i64* %g_type6, align 8
  %call7 = call i8* @g_type_name(i64 %29)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), i32 292, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i32 %19, i8* %21, i8* %call4, i8* %call7)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.3, %sw.bb.2, %sw.bb
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

declare void @g_type_class_add_private(i8*, i64) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #5

declare %struct._GtkWidget* @gimp_container_tree_view_new(%struct._GimpContainer*, %struct._GimpContext*, i32, i32) #1

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_tree_view_get_type() #2

declare void @gtk_tree_view_set_row_separator_func(%struct._GtkTreeView*, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_settings_editor_row_separator_func(%struct._GtkTreeModel* %model, %struct._GtkTreeIter* %iter, i8* %data) #3 {
entry:
  %model.addr = alloca %struct._GtkTreeModel*, align 8
  %iter.addr = alloca %struct._GtkTreeIter*, align 8
  %data.addr = alloca i8*, align 8
  %name = alloca i8*, align 8
  store %struct._GtkTreeModel* %model, %struct._GtkTreeModel** %model.addr, align 8
  store %struct._GtkTreeIter* %iter, %struct._GtkTreeIter** %iter.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i8* null, i8** %name, align 8
  %0 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model.addr, align 8
  %1 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %0, %struct._GtkTreeIter* %1, i32 1, i8** %name, i32 -1)
  %2 = load i8*, i8** %name, align 8
  call void @g_free(i8* %2)
  %3 = load i8*, i8** %name, align 8
  %cmp = icmp eq i8* %3, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_settings_editor_select_item(%struct._GimpContainerView* %view, %struct._GimpViewable* %viewable, i8* %insert_data, %struct._GimpSettingsEditor* %editor) #3 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %insert_data.addr = alloca i8*, align 8
  %editor.addr = alloca %struct._GimpSettingsEditor*, align 8
  %private = alloca %struct._GimpSettingsEditorPrivate*, align 8
  %sensitive = alloca i32, align 4
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i8* %insert_data, i8** %insert_data.addr, align 8
  store %struct._GimpSettingsEditor* %editor, %struct._GimpSettingsEditor** %editor.addr, align 8
  %0 = load %struct._GimpSettingsEditor*, %struct._GimpSettingsEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpSettingsEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_settings_editor_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpSettingsEditorPrivate*
  store %struct._GimpSettingsEditorPrivate* %2, %struct._GimpSettingsEditorPrivate** %private, align 8
  %3 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %4 = bitcast %struct._GimpViewable* %3 to %struct._GTypeInstance*
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 80)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GObject*
  %6 = load %struct._GimpSettingsEditorPrivate*, %struct._GimpSettingsEditorPrivate** %private, align 8
  %selected_setting = getelementptr inbounds %struct._GimpSettingsEditorPrivate, %struct._GimpSettingsEditorPrivate* %6, i32 0, i32 3
  store %struct._GObject* %5, %struct._GObject** %selected_setting, align 8
  %7 = load %struct._GimpSettingsEditorPrivate*, %struct._GimpSettingsEditorPrivate** %private, align 8
  %selected_setting3 = getelementptr inbounds %struct._GimpSettingsEditorPrivate, %struct._GimpSettingsEditorPrivate* %7, i32 0, i32 3
  %8 = load %struct._GObject*, %struct._GObject** %selected_setting3, align 8
  %cmp = icmp ne %struct._GObject* %8, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %9 = load %struct._GimpSettingsEditorPrivate*, %struct._GimpSettingsEditorPrivate** %private, align 8
  %selected_setting4 = getelementptr inbounds %struct._GimpSettingsEditorPrivate, %struct._GimpSettingsEditorPrivate* %9, i32 0, i32 3
  %10 = load %struct._GObject*, %struct._GObject** %selected_setting4, align 8
  %11 = bitcast %struct._GObject* %10 to i8*
  %call5 = call i8* @gimp_object_get_name(i8* %11)
  %tobool = icmp ne i8* %call5, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %12 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %12 to i32
  store i32 %land.ext, i32* %sensitive, align 4
  %13 = load %struct._GimpSettingsEditorPrivate*, %struct._GimpSettingsEditorPrivate** %private, align 8
  %export_button = getelementptr inbounds %struct._GimpSettingsEditorPrivate, %struct._GimpSettingsEditorPrivate* %13, i32 0, i32 6
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %export_button, align 8
  %15 = load i32, i32* %sensitive, align 4
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %14, i32 %15)
  %16 = load %struct._GimpSettingsEditorPrivate*, %struct._GimpSettingsEditorPrivate** %private, align 8
  %delete_button = getelementptr inbounds %struct._GimpSettingsEditorPrivate, %struct._GimpSettingsEditorPrivate* %16, i32 0, i32 7
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %delete_button, align 8
  %18 = load i32, i32* %sensitive, align 4
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %17, i32 %18)
  ret void
}

declare void @gimp_container_tree_view_connect_name_edited(%struct._GimpContainerTreeView*, void ()*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_settings_editor_name_edited(%struct._GtkCellRendererText* %cell, i8* %path_str, i8* %new_name, %struct._GimpSettingsEditor* %editor) #3 {
entry:
  %cell.addr = alloca %struct._GtkCellRendererText*, align 8
  %path_str.addr = alloca i8*, align 8
  %new_name.addr = alloca i8*, align 8
  %editor.addr = alloca %struct._GimpSettingsEditor*, align 8
  %private = alloca %struct._GimpSettingsEditorPrivate*, align 8
  %tree_view = alloca %struct._GimpContainerTreeView*, align 8
  %path = alloca %struct._GtkTreePath*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %renderer = alloca %struct._GimpViewRenderer*, align 8
  %object = alloca %struct._GimpObject*, align 8
  %old_name = alloca i8*, align 8
  %name = alloca i8*, align 8
  %t = alloca i32, align 4
  store %struct._GtkCellRendererText* %cell, %struct._GtkCellRendererText** %cell.addr, align 8
  store i8* %path_str, i8** %path_str.addr, align 8
  store i8* %new_name, i8** %new_name.addr, align 8
  store %struct._GimpSettingsEditor* %editor, %struct._GimpSettingsEditor** %editor.addr, align 8
  %0 = load %struct._GimpSettingsEditor*, %struct._GimpSettingsEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpSettingsEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_settings_editor_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpSettingsEditorPrivate*
  store %struct._GimpSettingsEditorPrivate* %2, %struct._GimpSettingsEditorPrivate** %private, align 8
  %3 = load %struct._GimpSettingsEditorPrivate*, %struct._GimpSettingsEditorPrivate** %private, align 8
  %view = getelementptr inbounds %struct._GimpSettingsEditorPrivate, %struct._GimpSettingsEditorPrivate* %3, i32 0, i32 4
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_container_tree_view_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpContainerTreeView*
  store %struct._GimpContainerTreeView* %6, %struct._GimpContainerTreeView** %tree_view, align 8
  %7 = load i8*, i8** %path_str.addr, align 8
  %call4 = call %struct._GtkTreePath* @gtk_tree_path_new_from_string(i8* %7)
  store %struct._GtkTreePath* %call4, %struct._GtkTreePath** %path, align 8
  %8 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %model = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %8, i32 0, i32 1
  %9 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %10 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  %call5 = call i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel* %9, %struct._GtkTreeIter* %iter, %struct._GtkTreePath* %10)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then, label %if.end.31

if.then:                                          ; preds = %entry
  %11 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %model6 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %11, i32 0, i32 1
  %12 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model6, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %12, %struct._GtkTreeIter* %iter, i32 0, %struct._GimpViewRenderer** %renderer, i32 -1)
  %13 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %viewable = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %13, i32 0, i32 3
  %14 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %15 = bitcast %struct._GimpViewable* %14 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_object_get_type() #8
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call7)
  %16 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpObject*
  store %struct._GimpObject* %16, %struct._GimpObject** %object, align 8
  %17 = load %struct._GimpObject*, %struct._GimpObject** %object, align 8
  %18 = bitcast %struct._GimpObject* %17 to i8*
  %call9 = call i8* @gimp_object_get_name(i8* %18)
  store i8* %call9, i8** %old_name, align 8
  %19 = load i8*, i8** %old_name, align 8
  %tobool10 = icmp ne i8* %19, null
  br i1 %tobool10, label %if.end, label %if.then.11

if.then.11:                                       ; preds = %if.then
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i32 0, i32 0), i8** %old_name, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.then
  %20 = load i8*, i8** %new_name.addr, align 8
  %tobool12 = icmp ne i8* %20, null
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.end
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i32 0, i32 0), i8** %new_name.addr, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end
  %21 = load i8*, i8** %new_name.addr, align 8
  %call15 = call noalias i8* @g_strdup(i8* %21)
  %call16 = call i8* @g_strchug(i8* %call15)
  %call17 = call i8* @g_strchomp(i8* %call16)
  store i8* %call17, i8** %name, align 8
  %22 = load i8*, i8** %name, align 8
  %call18 = call i64 @strlen(i8* %22) #9
  %tobool19 = icmp ne i64 %call18, 0
  br i1 %tobool19, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.14
  %23 = load i8*, i8** %old_name, align 8
  %24 = load i8*, i8** %name, align 8
  %call20 = call i32 @strcmp(i8* %23, i8* %24) #9
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %land.lhs.true
  %25 = load %struct._GimpObject*, %struct._GimpObject** %object, align 8
  %26 = bitcast %struct._GimpObject* %25 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i32* %t, i8* null)
  %27 = load i32, i32* %t, align 4
  %cmp = icmp ugt i32 %27, 0
  br i1 %cmp, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.then.22
  %28 = load %struct._GimpObject*, %struct._GimpObject** %object, align 8
  %29 = bitcast %struct._GimpObject* %28 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i32 0, i8* null)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %if.then.22
  %30 = load %struct._GimpObject*, %struct._GimpObject** %object, align 8
  %31 = load i8*, i8** %name, align 8
  call void @gimp_object_take_name(%struct._GimpObject* %30, i8* %31)
  br label %if.end.30

if.else:                                          ; preds = %land.lhs.true, %if.end.14
  %32 = load i8*, i8** %name, align 8
  call void @g_free(i8* %32)
  %33 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %viewable25 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %33, i32 0, i32 3
  %34 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable25, align 8
  %call26 = call i8* @gimp_viewable_get_description(%struct._GimpViewable* %34, i8** null)
  store i8* %call26, i8** %name, align 8
  %35 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %model27 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %35, i32 0, i32 1
  %36 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model27, align 8
  %37 = bitcast %struct._GtkTreeModel* %36 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_tree_store_get_type() #8
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call28)
  %38 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkTreeStore*
  %39 = load i8*, i8** %name, align 8
  call void (%struct._GtkTreeStore*, %struct._GtkTreeIter*, ...) @gtk_tree_store_set(%struct._GtkTreeStore* %38, %struct._GtkTreeIter* %iter, i32 1, i8* %39, i32 -1)
  %40 = load i8*, i8** %name, align 8
  call void @g_free(i8* %40)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else, %if.end.24
  %41 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %42 = bitcast %struct._GimpViewRenderer* %41 to i8*
  call void @g_object_unref(i8* %42)
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %entry
  %43 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %43)
  ret void
}

declare %struct._GtkWidget* @gimp_editor_add_button(%struct._GimpEditor*, i8*, i8*, i8*, void ()*, void ()*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_editor_get_type() #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #6

; Function Attrs: nounwind uwtable
define internal void @gimp_settings_editor_import_clicked(%struct._GtkWidget* %widget, %struct._GimpSettingsEditor* %editor) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %editor.addr = alloca %struct._GimpSettingsEditor*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpSettingsEditor* %editor, %struct._GimpSettingsEditor** %editor.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_settings_editor_export_clicked(%struct._GtkWidget* %widget, %struct._GimpSettingsEditor* %editor) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %editor.addr = alloca %struct._GimpSettingsEditor*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpSettingsEditor* %editor, %struct._GimpSettingsEditor** %editor.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_settings_editor_delete_clicked(%struct._GtkWidget* %widget, %struct._GimpSettingsEditor* %editor) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %editor.addr = alloca %struct._GimpSettingsEditor*, align 8
  %private = alloca %struct._GimpSettingsEditorPrivate*, align 8
  %new = alloca %struct._GimpObject*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpSettingsEditor* %editor, %struct._GimpSettingsEditor** %editor.addr, align 8
  %0 = load %struct._GimpSettingsEditor*, %struct._GimpSettingsEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpSettingsEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_settings_editor_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpSettingsEditorPrivate*
  store %struct._GimpSettingsEditorPrivate* %2, %struct._GimpSettingsEditorPrivate** %private, align 8
  %3 = load %struct._GimpSettingsEditorPrivate*, %struct._GimpSettingsEditorPrivate** %private, align 8
  %selected_setting = getelementptr inbounds %struct._GimpSettingsEditorPrivate, %struct._GimpSettingsEditorPrivate* %3, i32 0, i32 3
  %4 = load %struct._GObject*, %struct._GObject** %selected_setting, align 8
  %tobool = icmp ne %struct._GObject* %4, null
  br i1 %tobool, label %if.then, label %if.end.20

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpSettingsEditorPrivate*, %struct._GimpSettingsEditorPrivate** %private, align 8
  %container = getelementptr inbounds %struct._GimpSettingsEditorPrivate, %struct._GimpSettingsEditorPrivate* %5, i32 0, i32 2
  %6 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %7 = load %struct._GimpSettingsEditorPrivate*, %struct._GimpSettingsEditorPrivate** %private, align 8
  %selected_setting2 = getelementptr inbounds %struct._GimpSettingsEditorPrivate, %struct._GimpSettingsEditorPrivate* %7, i32 0, i32 3
  %8 = load %struct._GObject*, %struct._GObject** %selected_setting2, align 8
  %9 = bitcast %struct._GObject* %8 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_object_get_type() #8
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call3)
  %10 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpObject*
  %call5 = call %struct._GimpObject* @gimp_container_get_neighbor_of(%struct._GimpContainer* %6, %struct._GimpObject* %10)
  store %struct._GimpObject* %call5, %struct._GimpObject** %new, align 8
  %11 = load %struct._GimpObject*, %struct._GimpObject** %new, align 8
  %tobool6 = icmp ne %struct._GimpObject* %11, null
  br i1 %tobool6, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %12 = load %struct._GimpObject*, %struct._GimpObject** %new, align 8
  %13 = bitcast %struct._GimpObject* %12 to i8*
  %call7 = call i8* @gimp_object_get_name(i8* %13)
  %tobool8 = icmp ne i8* %call7, null
  br i1 %tobool8, label %if.end, label %if.then.9

if.then.9:                                        ; preds = %land.lhs.true
  store %struct._GimpObject* null, %struct._GimpObject** %new, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.9, %land.lhs.true, %if.then
  %14 = load %struct._GimpSettingsEditorPrivate*, %struct._GimpSettingsEditorPrivate** %private, align 8
  %container10 = getelementptr inbounds %struct._GimpSettingsEditorPrivate, %struct._GimpSettingsEditorPrivate* %14, i32 0, i32 2
  %15 = load %struct._GimpContainer*, %struct._GimpContainer** %container10, align 8
  %16 = load %struct._GimpSettingsEditorPrivate*, %struct._GimpSettingsEditorPrivate** %private, align 8
  %selected_setting11 = getelementptr inbounds %struct._GimpSettingsEditorPrivate, %struct._GimpSettingsEditorPrivate* %16, i32 0, i32 3
  %17 = load %struct._GObject*, %struct._GObject** %selected_setting11, align 8
  %18 = bitcast %struct._GObject* %17 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_object_get_type() #8
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call12)
  %19 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpObject*
  %call14 = call i32 @gimp_container_remove(%struct._GimpContainer* %15, %struct._GimpObject* %19)
  %20 = load %struct._GimpSettingsEditorPrivate*, %struct._GimpSettingsEditorPrivate** %private, align 8
  %view = getelementptr inbounds %struct._GimpSettingsEditorPrivate, %struct._GimpSettingsEditorPrivate* %20, i32 0, i32 4
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_container_view_interface_get_type() #8
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call15)
  %23 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpContainerView*
  %24 = load %struct._GimpObject*, %struct._GimpObject** %new, align 8
  %25 = bitcast %struct._GimpObject* %24 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_viewable_get_type() #8
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call17)
  %26 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpViewable*
  %call19 = call i32 @gimp_container_view_select_item(%struct._GimpContainerView* %23, %struct._GimpViewable* %26)
  br label %if.end.20

if.end.20:                                        ; preds = %if.end, %entry
  ret void
}

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

declare void @gtk_tree_model_get(%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) #1

declare void @g_free(i8*) #1

declare i8* @gimp_object_get_name(i8*) #1

declare %struct._GtkTreePath* @gtk_tree_path_new_from_string(i8*) #1

declare i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreePath*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare i8* @g_strchomp(i8*) #1

declare i8* @g_strchug(i8*) #1

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare void @g_object_get(i8*, i8*, ...) #1

declare void @g_object_set(i8*, i8*, ...) #1

declare void @gimp_object_take_name(%struct._GimpObject*, i8*) #1

declare i8* @gimp_viewable_get_description(%struct._GimpViewable*, i8**) #1

declare void @gtk_tree_store_set(%struct._GtkTreeStore*, %struct._GtkTreeIter*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_store_get_type() #2

declare void @g_object_unref(i8*) #1

declare void @gtk_tree_path_free(%struct._GtkTreePath*) #1

declare %struct._GimpObject* @gimp_container_get_neighbor_of(%struct._GimpContainer*, %struct._GimpObject*) #1

declare i32 @gimp_container_remove(%struct._GimpContainer*, %struct._GimpObject*) #1

declare i32 @gimp_container_view_select_item(%struct._GimpContainerView*, %struct._GimpViewable*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_view_interface_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

declare i8* @g_value_get_object(%struct._GValue*) #1

declare i8* @g_value_dup_object(%struct._GValue*) #1

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

declare void @gtk_orientable_set_orientation(%struct._GtkOrientable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_orientable_get_type() #2

declare void @gtk_box_set_spacing(%struct._GtkBox*, i32) #1

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
