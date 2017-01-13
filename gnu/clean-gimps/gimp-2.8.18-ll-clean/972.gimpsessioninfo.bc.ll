; ModuleID = './app/widgets/gimpsessioninfo.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpSessionInfoClass = type { %struct._GimpObjectClass, i32 }
%struct._GimpObjectClass = type { %struct._GObjectClass, void (%struct._GimpObject*)*, void (%struct._GimpObject*)*, i64 (%struct._GimpObject*, i64*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpSessionInfo = type { %struct._GimpObject, %struct._GimpSessionInfoPrivate* }
%struct._GimpSessionInfoPrivate = type { %struct._GimpDialogFactoryEntry*, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GList*, %struct._GtkWidget*, %struct._GList* }
%struct._GimpDialogFactoryEntry = type { i8*, i8*, i8*, i8*, i8*, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)*, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpDialogFactory = type { %struct._GimpObject, %struct._GimpDialogFactoryPrivate* }
%struct._GimpDialogFactoryPrivate = type opaque
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type { %struct._GimpBaseConfig, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct._GimpTemplate*, %struct._GimpGrid*, i32, i64, i32, i32, i8*, i32, i32, i32, i64, %struct._GimpColorConfig*, i32, i32, %struct._GimpRGB, i32 }
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GimpGrid = type opaque
%struct._GimpColorConfig = type { %struct._GObject, i32, i8*, i8*, i8*, i32, i8*, i32, i32, i8*, i32, %struct._GimpRGB, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()* }
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
%struct._GimpUIManager = type opaque
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._GdkGC = type { %struct._GObject, i32, i32, i32, i32, %struct._GdkColormap* }
%struct._GdkColormap = type { %struct._GObject, i32, %struct._GdkColor*, %struct._GdkVisual*, i8* }
%struct._GdkColor = type { i32, i16, i16, i16 }
%struct._GdkVisual = type { %struct._GObject, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._cairo_font_options = type opaque
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GtkStyle = type { %struct._GObject, [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], %struct._GdkColor, %struct._GdkColor, %struct._PangoFontDescription*, i32, i32, [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], %struct._GdkGC*, %struct._GdkGC*, [5 x %struct._GdkDrawable*], i32, i32, %struct._GdkColormap*, %struct._GdkFont*, %struct._PangoFontDescription*, %struct._GtkRcStyle*, %struct._GSList*, %struct._GArray*, %struct._GSList* }
%struct._GdkFont = type opaque
%struct._PangoFontDescription = type opaque
%struct._GtkRcStyle = type { %struct._GObject, i8*, [5 x i8*], %struct._PangoFontDescription*, [5 x i32], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], i32, i32, %struct._GArray*, %struct._GSList*, %struct._GSList*, i8 }
%struct._GArray = type { i8*, i32 }
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpConfigInterface = type { %struct._GTypeInterface, i32 (%struct._GimpConfig*, %struct._GimpConfigWriter*, i8*)*, i32 (%struct._GimpConfig*, %struct._GScanner*, i32, i8*)*, i32 (%struct._GimpConfig*, i32, %struct._GValue*, %struct._GParamSpec*, %struct._GimpConfigWriter*)*, i32 (%struct._GimpConfig*, i32, %struct._GValue*, %struct._GParamSpec*, %struct._GScanner*, i32*)*, %struct._GimpConfig* (%struct._GimpConfig*)*, i32 (%struct._GimpConfig*, %struct._GimpConfig*)*, void (%struct._GimpConfig*)*, i32 (%struct._GimpConfig*, %struct._GimpConfig*, i32)* }
%struct._GTypeInterface = type { i64, i64 }
%struct._GimpConfig = type opaque
%struct._GimpConfigWriter = type opaque
%struct._GScanner = type { i8*, i32, i32, i8*, %struct._GData*, %struct._GScannerConfig*, i32, %union._GTokenValue, i32, i32, i32, %union._GTokenValue, i32, i32, %struct._GHashTable*, i32, i8*, i8*, i8*, i32, void (%struct._GScanner*, i8*, i32)* }
%struct._GScannerConfig = type { i8*, i8*, i8*, i8*, i24, i32 }
%union._GTokenValue = type { i8* }
%struct._GHashTable = type opaque
%struct._GdkDisplay = type { %struct._GObject, %struct._GList*, %struct._GList*, [2 x i32], [2 x %struct._GdkDrawable*], [2 x i32], i32, %struct._GdkDevice*, %struct._GdkDisplayPointerHooks*, i8, i32, [2 x i32], [2 x i32], %struct._GList*, %struct.GdkKeyboardGrabInfo, %struct.GdkPointerWindowInfo, i32 }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
%struct._GdkDisplayPointerHooks = type { void (%struct._GdkDisplay*, %struct._GdkScreen**, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, %struct._GdkDrawable*, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, i32*, i32*)* }
%struct.GdkKeyboardGrabInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, i64, i32, i32 }
%struct.GdkPointerWindowInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, double, double, i32, i32, i64 }
%struct.GimpRestoreDocksData = type { %struct._GimpSessionInfo*, %struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GtkWidget* }
%struct._GimpSessionManaged = type opaque
%struct._GimpSessionInfoDock = type { i8*, i32, i32, %struct._GList* }
%struct._GtkPaned = type { %struct._GtkContainer, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkDrawable*, %struct._GdkGC*, i32, %struct._GdkRectangle, i32, i32, i32, i32, i16, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkPanedPrivate*, i32, i32 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkPanedPrivate = type opaque
%struct._GimpDockContainer = type opaque
%struct._GimpDock = type { %struct._GtkBox, %struct._GimpDockPrivate* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpDockPrivate = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GdkEventConfigure = type { i32, %struct._GdkDrawable*, i8, i32, i32, i32, i32 }
%struct._GimpSessionInfoAux = type { i8*, i8* }

@gimp_session_info_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"GimpSessionInfo\00", align 1
@gimp_session_info_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpConfigInterface*)* @gimp_session_info_config_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_session_info_restore = private unnamed_addr constant [26 x i8] c"gimp_session_info_restore\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"GIMP_IS_SESSION_INFO (info)\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"GIMP_IS_DIALOG_FACTORY (factory)\00", align 1
@__func__.gimp_session_info_apply_geometry = private unnamed_addr constant [33 x i8] c"gimp_session_info_apply_geometry\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"GTK_IS_WINDOW (info->p->widget)\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"-0-0\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"-0%+d\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%+d-0\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"%+d%+d\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"show\00", align 1
@__func__.gimp_session_info_read_geometry = private unnamed_addr constant [32 x i8] c"gimp_session_info_read_geometry\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"gimp-dialog-visibility\00", align 1
@__func__.gimp_session_info_get_info = private unnamed_addr constant [27 x i8] c"gimp_session_info_get_info\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"GTK_IS_WIDGET (info->p->widget)\00", align 1
@__func__.gimp_session_info_get_info_with_widget = private unnamed_addr constant [39 x i8] c"gimp_session_info_get_info_with_widget\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"GTK_IS_WIDGET (widget)\00", align 1
@__func__.gimp_session_info_clear_info = private unnamed_addr constant [29 x i8] c"gimp_session_info_clear_info\00", align 1
@__func__.gimp_session_info_is_singleton = private unnamed_addr constant [31 x i8] c"gimp_session_info_is_singleton\00", align 1
@__func__.gimp_session_info_is_session_managed = private unnamed_addr constant [37 x i8] c"gimp_session_info_is_session_managed\00", align 1
@__func__.gimp_session_info_get_remember_size = private unnamed_addr constant [36 x i8] c"gimp_session_info_get_remember_size\00", align 1
@__func__.gimp_session_info_get_remember_if_open = private unnamed_addr constant [39 x i8] c"gimp_session_info_get_remember_if_open\00", align 1
@__func__.gimp_session_info_get_widget = private unnamed_addr constant [29 x i8] c"gimp_session_info_get_widget\00", align 1
@__func__.gimp_session_info_set_widget = private unnamed_addr constant [29 x i8] c"gimp_session_info_set_widget\00", align 1
@__func__.gimp_session_info_get_factory_entry = private unnamed_addr constant [36 x i8] c"gimp_session_info_get_factory_entry\00", align 1
@__func__.gimp_session_info_set_factory_entry = private unnamed_addr constant [36 x i8] c"gimp_session_info_set_factory_entry\00", align 1
@__func__.gimp_session_info_get_open = private unnamed_addr constant [27 x i8] c"gimp_session_info_get_open\00", align 1
@__func__.gimp_session_info_get_x = private unnamed_addr constant [24 x i8] c"gimp_session_info_get_x\00", align 1
@__func__.gimp_session_info_get_y = private unnamed_addr constant [24 x i8] c"gimp_session_info_get_y\00", align 1
@__func__.gimp_session_info_get_width = private unnamed_addr constant [28 x i8] c"gimp_session_info_get_width\00", align 1
@__func__.gimp_session_info_get_height = private unnamed_addr constant [29 x i8] c"gimp_session_info_get_height\00", align 1
@__func__.gimp_session_info_class_set_position_accuracy = private unnamed_addr constant [46 x i8] c"gimp_session_info_class_set_position_accuracy\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"GIMP_IS_SESSION_INFO_CLASS (klass)\00", align 1
@__func__.gimp_session_info_class_apply_position_accuracy = private unnamed_addr constant [48 x i8] c"gimp_session_info_class_apply_position_accuracy\00", align 1
@gimp_session_info_parent_class = internal global i8* null, align 8
@GimpSessionInfo_private_offset = internal global i32 0, align 4
@.str.14 = private unnamed_addr constant [14 x i8] c"factory-entry\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"position\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"open-on-exit\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"aux-info\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"gimp-dock\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"gimp-toolbox\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"dock\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"gimp-toolbox-window\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_session_info_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_session_info_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_session_info_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_object_get_type() #5
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 168, void (i8*, i8*)* bitcast (void (i8*)* @gimp_session_info_class_intern_init to void (i8*, i8*)*), i32 40, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpSessionInfo*)* @gimp_session_info_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_config_interface_get_type() #5
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_session_info_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_session_info_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_session_info_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_session_info_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_session_info_parent_class, align 8
  %1 = load i32, i32* @GimpSessionInfo_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpSessionInfo_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpSessionInfoClass*
  call void @gimp_session_info_class_init(%struct._GimpSessionInfoClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_session_info_init(%struct._GimpSessionInfo* %info) #3 {
entry:
  %info.addr = alloca %struct._GimpSessionInfo*, align 8
  store %struct._GimpSessionInfo* %info, %struct._GimpSessionInfo** %info.addr, align 8
  %0 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %1 = bitcast %struct._GimpSessionInfo* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_session_info_get_type() #5
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpSessionInfoPrivate*
  %3 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %3, i32 0, i32 1
  store %struct._GimpSessionInfoPrivate* %2, %struct._GimpSessionInfoPrivate** %p, align 8
  %4 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p2 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %4, i32 0, i32 1
  %5 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p2, align 8
  %screen = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %5, i32 0, i32 8
  store i32 -1, i32* %screen, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_session_info_config_iface_init(%struct._GimpConfigInterface* %iface) #3 {
entry:
  %iface.addr = alloca %struct._GimpConfigInterface*, align 8
  store %struct._GimpConfigInterface* %iface, %struct._GimpConfigInterface** %iface.addr, align 8
  %0 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %iface.addr, align 8
  %serialize = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %0, i32 0, i32 1
  store i32 (%struct._GimpConfig*, %struct._GimpConfigWriter*, i8*)* @gimp_session_info_serialize, i32 (%struct._GimpConfig*, %struct._GimpConfigWriter*, i8*)** %serialize, align 8
  %1 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %iface.addr, align 8
  %deserialize = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %1, i32 0, i32 2
  store i32 (%struct._GimpConfig*, %struct._GScanner*, i32, i8*)* @gimp_session_info_deserialize, i32 (%struct._GimpConfig*, %struct._GScanner*, i32, i8*)** %deserialize, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpSessionInfo* @gimp_session_info_new() #3 {
entry:
  %call = call i64 @gimp_session_info_get_type() #5
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %0 = bitcast i8* %call1 to %struct._GimpSessionInfo*
  ret %struct._GimpSessionInfo* %0
}

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_session_info_restore(%struct._GimpSessionInfo* %info, %struct._GimpDialogFactory* %factory) #3 {
entry:
  %info.addr = alloca %struct._GimpSessionInfo*, align 8
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %display = alloca %struct._GdkDisplay*, align 8
  %screen = alloca %struct._GdkScreen*, align 8
  %data = alloca %struct.GimpRestoreDocksData*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %__inst68 = alloca %struct._GTypeInstance*, align 8
  %__t70 = alloca i64, align 8
  %__r73 = alloca i32, align 4
  %tmp88 = alloca i32, align 4
  store %struct._GimpSessionInfo* %info, %struct._GimpSessionInfo** %info.addr, align 8
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GtkWidget* null, %struct._GtkWidget** %dialog, align 8
  store %struct._GdkDisplay* null, %struct._GdkDisplay** %display, align 8
  store %struct._GdkScreen* null, %struct._GdkScreen** %screen, align 8
  store %struct.GimpRestoreDocksData* null, %struct.GimpRestoreDocksData** %data, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %1 = bitcast %struct._GimpSessionInfo* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_session_info_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_session_info_restore, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %14 = bitcast %struct._GimpDialogFactory* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_dialog_factory_get_type() #5
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_session_info_restore, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %27 = bitcast %struct._GimpSessionInfo* %26 to i8*
  %call39 = call i8* @g_object_ref(i8* %27)
  %call40 = call %struct._GdkDisplay* @gdk_display_get_default()
  store %struct._GdkDisplay* %call40, %struct._GdkDisplay** %display, align 8
  %28 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %28, i32 0, i32 1
  %29 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p, align 8
  %screen41 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %29, i32 0, i32 8
  %30 = load i32, i32* %screen41, align 4
  %cmp42 = icmp ne i32 %30, -1
  br i1 %cmp42, label %if.then.43, label %if.end.47

if.then.43:                                       ; preds = %do.end.38
  %31 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  %32 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p44 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %32, i32 0, i32 1
  %33 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p44, align 8
  %screen45 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %33, i32 0, i32 8
  %34 = load i32, i32* %screen45, align 4
  %call46 = call %struct._GdkScreen* @gdk_display_get_screen(%struct._GdkDisplay* %31, i32 %34)
  store %struct._GdkScreen* %call46, %struct._GdkScreen** %screen, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.43, %do.end.38
  %35 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  %tobool48 = icmp ne %struct._GdkScreen* %35, null
  br i1 %tobool48, label %if.end.51, label %if.then.49

if.then.49:                                       ; preds = %if.end.47
  %36 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  %call50 = call %struct._GdkScreen* @gdk_display_get_default_screen(%struct._GdkDisplay* %36)
  store %struct._GdkScreen* %call50, %struct._GdkScreen** %screen, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %if.end.47
  %37 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p52 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %37, i32 0, i32 1
  %38 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p52, align 8
  %open = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %38, i32 0, i32 7
  store i32 0, i32* %open, align 4
  %39 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p53 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %39, i32 0, i32 1
  %40 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p53, align 8
  %screen54 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %40, i32 0, i32 8
  store i32 -1, i32* %screen54, align 4
  %41 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p55 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %41, i32 0, i32 1
  %42 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p55, align 8
  %factory_entry = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %42, i32 0, i32 0
  %43 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %factory_entry, align 8
  %tobool56 = icmp ne %struct._GimpDialogFactoryEntry* %43, null
  br i1 %tobool56, label %land.lhs.true.57, label %if.end.66

land.lhs.true.57:                                 ; preds = %if.end.51
  %44 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p58 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %44, i32 0, i32 1
  %45 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p58, align 8
  %factory_entry59 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %45, i32 0, i32 0
  %46 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %factory_entry59, align 8
  %restore_func = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %46, i32 0, i32 6
  %47 = load %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)*, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)** %restore_func, align 8
  %tobool60 = icmp ne %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* %47, null
  br i1 %tobool60, label %if.then.61, label %if.end.66

if.then.61:                                       ; preds = %land.lhs.true.57
  %48 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p62 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %48, i32 0, i32 1
  %49 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p62, align 8
  %factory_entry63 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %49, i32 0, i32 0
  %50 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %factory_entry63, align 8
  %restore_func64 = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %50, i32 0, i32 6
  %51 = load %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)*, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)** %restore_func64, align 8
  %52 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %53 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  %54 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %call65 = call %struct._GtkWidget* %51(%struct._GimpDialogFactory* %52, %struct._GdkScreen* %53, %struct._GimpSessionInfo* %54)
  store %struct._GtkWidget* %call65, %struct._GtkWidget** %dialog, align 8
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.61, %land.lhs.true.57, %if.end.51
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %56 = bitcast %struct._GtkWidget* %55 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %56, %struct._GTypeInstance** %__inst68, align 8
  %call71 = call i64 @gimp_session_managed_interface_get_type() #5
  store i64 %call71, i64* %__t70, align 8
  %57 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst68, align 8
  %tobool74 = icmp ne %struct._GTypeInstance* %57, null
  br i1 %tobool74, label %if.else.76, label %if.then.75

if.then.75:                                       ; preds = %if.end.66
  store i32 0, i32* %__r73, align 4
  br label %if.end.87

if.else.76:                                       ; preds = %if.end.66
  %58 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst68, align 8
  %g_class77 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %58, i32 0, i32 0
  %59 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class77, align 8
  %tobool78 = icmp ne %struct._GTypeClass* %59, null
  br i1 %tobool78, label %land.lhs.true.79, label %if.else.84

land.lhs.true.79:                                 ; preds = %if.else.76
  %60 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst68, align 8
  %g_class80 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %60, i32 0, i32 0
  %61 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class80, align 8
  %g_type81 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %61, i32 0, i32 0
  %62 = load i64, i64* %g_type81, align 8
  %63 = load i64, i64* %__t70, align 8
  %cmp82 = icmp eq i64 %62, %63
  br i1 %cmp82, label %if.then.83, label %if.else.84

if.then.83:                                       ; preds = %land.lhs.true.79
  store i32 1, i32* %__r73, align 4
  br label %if.end.86

if.else.84:                                       ; preds = %land.lhs.true.79, %if.else.76
  %64 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst68, align 8
  %65 = load i64, i64* %__t70, align 8
  %call85 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %64, i64 %65) #6
  store i32 %call85, i32* %__r73, align 4
  br label %if.end.86

if.end.86:                                        ; preds = %if.else.84, %if.then.83
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %if.then.75
  %66 = load i32, i32* %__r73, align 4
  store i32 %66, i32* %tmp88
  %67 = load i32, i32* %tmp88
  %tobool89 = icmp ne i32 %67, 0
  br i1 %tobool89, label %land.lhs.true.90, label %if.end.98

land.lhs.true.90:                                 ; preds = %if.end.87
  %68 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p91 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %68, i32 0, i32 1
  %69 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p91, align 8
  %aux_info = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %69, i32 0, i32 9
  %70 = load %struct._GList*, %struct._GList** %aux_info, align 8
  %tobool92 = icmp ne %struct._GList* %70, null
  br i1 %tobool92, label %if.then.93, label %if.end.98

if.then.93:                                       ; preds = %land.lhs.true.90
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %72 = bitcast %struct._GtkWidget* %71 to %struct._GTypeInstance*
  %call94 = call i64 @gimp_session_managed_interface_get_type() #5
  %call95 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %72, i64 %call94)
  %73 = bitcast %struct._GTypeInstance* %call95 to %struct._GimpSessionManaged*
  %74 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p96 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %74, i32 0, i32 1
  %75 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p96, align 8
  %aux_info97 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %75, i32 0, i32 9
  %76 = load %struct._GList*, %struct._GList** %aux_info97, align 8
  call void @gimp_session_managed_set_aux_info(%struct._GimpSessionManaged* %73, %struct._GList* %76)
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.93, %land.lhs.true.90, %if.end.87
  %call99 = call noalias i8* @g_slice_alloc0(i64 32)
  %77 = bitcast i8* %call99 to %struct.GimpRestoreDocksData*
  store %struct.GimpRestoreDocksData* %77, %struct.GimpRestoreDocksData** %data, align 8
  %78 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %79 = bitcast %struct._GimpSessionInfo* %78 to i8*
  %call100 = call i8* @g_object_ref(i8* %79)
  %80 = bitcast i8* %call100 to %struct._GimpSessionInfo*
  %81 = load %struct.GimpRestoreDocksData*, %struct.GimpRestoreDocksData** %data, align 8
  %info101 = getelementptr inbounds %struct.GimpRestoreDocksData, %struct.GimpRestoreDocksData* %81, i32 0, i32 0
  store %struct._GimpSessionInfo* %80, %struct._GimpSessionInfo** %info101, align 8
  %82 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %83 = bitcast %struct._GimpDialogFactory* %82 to i8*
  %call102 = call i8* @g_object_ref(i8* %83)
  %84 = bitcast i8* %call102 to %struct._GimpDialogFactory*
  %85 = load %struct.GimpRestoreDocksData*, %struct.GimpRestoreDocksData** %data, align 8
  %factory103 = getelementptr inbounds %struct.GimpRestoreDocksData, %struct.GimpRestoreDocksData* %85, i32 0, i32 1
  store %struct._GimpDialogFactory* %84, %struct._GimpDialogFactory** %factory103, align 8
  %86 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  %87 = bitcast %struct._GdkScreen* %86 to i8*
  %call104 = call i8* @g_object_ref(i8* %87)
  %88 = bitcast i8* %call104 to %struct._GdkScreen*
  %89 = load %struct.GimpRestoreDocksData*, %struct.GimpRestoreDocksData** %data, align 8
  %screen105 = getelementptr inbounds %struct.GimpRestoreDocksData, %struct.GimpRestoreDocksData* %89, i32 0, i32 2
  store %struct._GdkScreen* %88, %struct._GdkScreen** %screen105, align 8
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %91 = bitcast %struct._GtkWidget* %90 to i8*
  %call106 = call i8* @g_object_ref(i8* %91)
  %92 = bitcast i8* %call106 to %struct._GtkWidget*
  %93 = load %struct.GimpRestoreDocksData*, %struct.GimpRestoreDocksData** %data, align 8
  %dialog107 = getelementptr inbounds %struct.GimpRestoreDocksData, %struct.GimpRestoreDocksData* %93, i32 0, i32 3
  store %struct._GtkWidget* %92, %struct._GtkWidget** %dialog107, align 8
  %94 = load %struct.GimpRestoreDocksData*, %struct.GimpRestoreDocksData** %data, align 8
  %95 = bitcast %struct.GimpRestoreDocksData* %94 to i8*
  %call108 = call i32 @g_idle_add(i32 (i8*)* bitcast (i32 (%struct.GimpRestoreDocksData*)* @gimp_session_info_restore_docks to i32 (i8*)*), i8* %95)
  %96 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %97 = bitcast %struct._GimpSessionInfo* %96 to i8*
  call void @g_object_unref(i8* %97)
  br label %return

return:                                           ; preds = %if.end.98, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_factory_get_type() #2

declare i8* @g_object_ref(i8*) #1

declare %struct._GdkDisplay* @gdk_display_get_default() #1

declare %struct._GdkScreen* @gdk_display_get_screen(%struct._GdkDisplay*, i32) #1

declare %struct._GdkScreen* @gdk_display_get_default_screen(%struct._GdkDisplay*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_session_managed_interface_get_type() #2

declare void @gimp_session_managed_set_aux_info(%struct._GimpSessionManaged*, %struct._GList*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare noalias i8* @g_slice_alloc0(i64) #1

declare i32 @g_idle_add(i32 (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_session_info_restore_docks(%struct.GimpRestoreDocksData* %data) #3 {
entry:
  %data.addr = alloca %struct.GimpRestoreDocksData*, align 8
  %info = alloca %struct._GimpSessionInfo*, align 8
  %factory = alloca %struct._GimpDialogFactory*, align 8
  %screen = alloca %struct._GdkScreen*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %iter = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %dock_info = alloca %struct._GimpSessionInfoDock*, align 8
  %dock = alloca %struct._GtkWidget*, align 8
  %parent = alloca %struct._GtkWidget*, align 8
  %__inst29 = alloca %struct._GTypeInstance*, align 8
  %__t31 = alloca i64, align 8
  %__r34 = alloca i32, align 4
  %tmp49 = alloca i32, align 4
  %paned = alloca %struct._GtkPaned*, align 8
  store %struct.GimpRestoreDocksData* %data, %struct.GimpRestoreDocksData** %data.addr, align 8
  %0 = load %struct.GimpRestoreDocksData*, %struct.GimpRestoreDocksData** %data.addr, align 8
  %info1 = getelementptr inbounds %struct.GimpRestoreDocksData, %struct.GimpRestoreDocksData* %0, i32 0, i32 0
  %1 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info1, align 8
  store %struct._GimpSessionInfo* %1, %struct._GimpSessionInfo** %info, align 8
  %2 = load %struct.GimpRestoreDocksData*, %struct.GimpRestoreDocksData** %data.addr, align 8
  %factory2 = getelementptr inbounds %struct.GimpRestoreDocksData, %struct.GimpRestoreDocksData* %2, i32 0, i32 1
  %3 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory2, align 8
  store %struct._GimpDialogFactory* %3, %struct._GimpDialogFactory** %factory, align 8
  %4 = load %struct.GimpRestoreDocksData*, %struct.GimpRestoreDocksData** %data.addr, align 8
  %screen3 = getelementptr inbounds %struct.GimpRestoreDocksData, %struct.GimpRestoreDocksData* %4, i32 0, i32 2
  %5 = load %struct._GdkScreen*, %struct._GdkScreen** %screen3, align 8
  store %struct._GdkScreen* %5, %struct._GdkScreen** %screen, align 8
  %6 = load %struct.GimpRestoreDocksData*, %struct.GimpRestoreDocksData** %data.addr, align 8
  %dialog4 = getelementptr inbounds %struct.GimpRestoreDocksData, %struct.GimpRestoreDocksData* %6, i32 0, i32 3
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog4, align 8
  store %struct._GtkWidget* %7, %struct._GtkWidget** %dialog, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %9, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dock_container_interface_get_type() #5
  store i64 %call, i64* %__t, align 8
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %10, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %__r, align 4
  br label %if.end.10

if.else:                                          ; preds = %entry
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %11, i32 0, i32 0
  %12 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool5 = icmp ne %struct._GTypeClass* %12, null
  br i1 %tobool5, label %land.lhs.true, label %if.else.8

land.lhs.true:                                    ; preds = %if.else
  %13 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class6 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %13, i32 0, i32 0
  %14 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class6, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %14, i32 0, i32 0
  %15 = load i64, i64* %g_type, align 8
  %16 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %15, %16
  br i1 %cmp, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.8:                                        ; preds = %land.lhs.true, %if.else
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %18 = load i64, i64* %__t, align 8
  %call9 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %17, i64 %18) #6
  store i32 %call9, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.8, %if.then.7
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then
  %19 = load i32, i32* %__r, align 4
  store i32 %19, i32* %tmp
  %20 = load i32, i32* %tmp
  %tobool11 = icmp ne i32 %20, 0
  br i1 %tobool11, label %if.then.12, label %if.end.63

if.then.12:                                       ; preds = %if.end.10
  %21 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %p = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %21, i32 0, i32 1
  %22 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p, align 8
  %docks = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %22, i32 0, i32 11
  %23 = load %struct._GList*, %struct._GList** %docks, align 8
  store %struct._GList* %23, %struct._GList** %iter, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.then.12
  %24 = load %struct._GList*, %struct._GList** %iter, align 8
  %tobool13 = icmp ne %struct._GList* %24, null
  br i1 %tobool13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load %struct._GList*, %struct._GList** %iter, align 8
  %data15 = getelementptr inbounds %struct._GList, %struct._GList* %25, i32 0, i32 0
  %26 = load i8*, i8** %data15, align 8
  %27 = bitcast i8* %26 to %struct._GimpSessionInfoDock*
  store %struct._GimpSessionInfoDock* %27, %struct._GimpSessionInfoDock** %dock_info, align 8
  %28 = load %struct._GimpSessionInfoDock*, %struct._GimpSessionInfoDock** %dock_info, align 8
  %29 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory, align 8
  %30 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_dock_container_interface_get_type() #5
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call17)
  %33 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpDockContainer*
  %call19 = call %struct._GimpDock* @gimp_session_info_dock_restore(%struct._GimpSessionInfoDock* %28, %struct._GimpDialogFactory* %29, %struct._GdkScreen* %30, %struct._GimpDockContainer* %33)
  %34 = bitcast %struct._GimpDock* %call19 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_widget_get_type() #5
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call20)
  %35 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkWidget*
  store %struct._GtkWidget* %35, %struct._GtkWidget** %dock, align 8
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %dock, align 8
  %tobool22 = icmp ne %struct._GtkWidget* %36, null
  br i1 %tobool22, label %land.lhs.true.23, label %if.end.61

land.lhs.true.23:                                 ; preds = %for.body
  %37 = load %struct._GimpSessionInfoDock*, %struct._GimpSessionInfoDock** %dock_info, align 8
  %position = getelementptr inbounds %struct._GimpSessionInfoDock, %struct._GimpSessionInfoDock* %37, i32 0, i32 2
  %38 = load i32, i32* %position, align 4
  %cmp24 = icmp ne i32 %38, 0
  br i1 %cmp24, label %if.then.25, label %if.end.61

if.then.25:                                       ; preds = %land.lhs.true.23
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %dock, align 8
  %call27 = call %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget* %39)
  store %struct._GtkWidget* %call27, %struct._GtkWidget** %parent, align 8
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %parent, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %41, %struct._GTypeInstance** %__inst29, align 8
  %call32 = call i64 @gtk_paned_get_type() #5
  store i64 %call32, i64* %__t31, align 8
  %42 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst29, align 8
  %tobool35 = icmp ne %struct._GTypeInstance* %42, null
  br i1 %tobool35, label %if.else.37, label %if.then.36

if.then.36:                                       ; preds = %if.then.25
  store i32 0, i32* %__r34, align 4
  br label %if.end.48

if.else.37:                                       ; preds = %if.then.25
  %43 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst29, align 8
  %g_class38 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %43, i32 0, i32 0
  %44 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class38, align 8
  %tobool39 = icmp ne %struct._GTypeClass* %44, null
  br i1 %tobool39, label %land.lhs.true.40, label %if.else.45

land.lhs.true.40:                                 ; preds = %if.else.37
  %45 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst29, align 8
  %g_class41 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %45, i32 0, i32 0
  %46 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class41, align 8
  %g_type42 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %46, i32 0, i32 0
  %47 = load i64, i64* %g_type42, align 8
  %48 = load i64, i64* %__t31, align 8
  %cmp43 = icmp eq i64 %47, %48
  br i1 %cmp43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %land.lhs.true.40
  store i32 1, i32* %__r34, align 4
  br label %if.end.47

if.else.45:                                       ; preds = %land.lhs.true.40, %if.else.37
  %49 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst29, align 8
  %50 = load i64, i64* %__t31, align 8
  %call46 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %49, i64 %50) #6
  store i32 %call46, i32* %__r34, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.45, %if.then.44
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.then.36
  %51 = load i32, i32* %__r34, align 4
  store i32 %51, i32* %tmp49
  %52 = load i32, i32* %tmp49
  %tobool50 = icmp ne i32 %52, 0
  br i1 %tobool50, label %if.then.51, label %if.end.60

if.then.51:                                       ; preds = %if.end.48
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %parent, align 8
  %54 = bitcast %struct._GtkWidget* %53 to %struct._GTypeInstance*
  %call53 = call i64 @gtk_paned_get_type() #5
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call53)
  %55 = bitcast %struct._GTypeInstance* %call54 to %struct._GtkPaned*
  store %struct._GtkPaned* %55, %struct._GtkPaned** %paned, align 8
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %dock, align 8
  %57 = load %struct._GtkPaned*, %struct._GtkPaned** %paned, align 8
  %call55 = call %struct._GtkWidget* @gtk_paned_get_child2(%struct._GtkPaned* %57)
  %cmp56 = icmp eq %struct._GtkWidget* %56, %call55
  br i1 %cmp56, label %if.then.57, label %if.end.59

if.then.57:                                       ; preds = %if.then.51
  %58 = load %struct._GtkPaned*, %struct._GtkPaned** %paned, align 8
  %59 = load %struct._GimpSessionInfoDock*, %struct._GimpSessionInfoDock** %dock_info, align 8
  %position58 = getelementptr inbounds %struct._GimpSessionInfoDock, %struct._GimpSessionInfoDock* %59, i32 0, i32 2
  %60 = load i32, i32* %position58, align 4
  call void @gtk_paned_set_position(%struct._GtkPaned* %58, i32 %60)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.57, %if.then.51
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.end.48
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %land.lhs.true.23, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.61
  %61 = load %struct._GList*, %struct._GList** %iter, align 8
  %tobool62 = icmp ne %struct._GList* %61, null
  br i1 %tobool62, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %62 = load %struct._GList*, %struct._GList** %iter, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %62, i32 0, i32 1
  %63 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %63, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %iter, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %65 = bitcast %struct._GtkWidget* %64 to i8*
  call void @g_object_unref(i8* %65)
  %66 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  %67 = bitcast %struct._GdkScreen* %66 to i8*
  call void @g_object_unref(i8* %67)
  %68 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory, align 8
  %69 = bitcast %struct._GimpDialogFactory* %68 to i8*
  call void @g_object_unref(i8* %69)
  %70 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %71 = bitcast %struct._GimpSessionInfo* %70 to i8*
  call void @g_object_unref(i8* %71)
  br label %do.body

do.body:                                          ; preds = %for.end
  %72 = load %struct.GimpRestoreDocksData*, %struct.GimpRestoreDocksData** %data.addr, align 8
  %73 = bitcast %struct.GimpRestoreDocksData* %72 to i8*
  call void @g_slice_free1(i64 32, i8* %73)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end.63

if.end.63:                                        ; preds = %do.end, %if.end.10
  %74 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  call void @gimp_session_info_clear_info(%struct._GimpSessionInfo* %74)
  ret i32 0
}

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_session_info_apply_geometry(%struct._GimpSessionInfo* %info) #3 {
entry:
  %info.addr = alloca %struct._GimpSessionInfo*, align 8
  %screen = alloca %struct._GdkScreen*, align 8
  %rect = alloca %struct._GdkRectangle, align 4
  %geom = alloca [32 x i8], align 16
  %monitor = alloca i32, align 4
  %use_size = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %__inst204 = alloca %struct._GTypeInstance*, align 8
  %__t208 = alloca i64, align 8
  %__r211 = alloca i32, align 4
  %tmp226 = alloca i32, align 4
  store %struct._GimpSessionInfo* %info, %struct._GimpSessionInfo** %info.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %1 = bitcast %struct._GimpSessionInfo* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_session_info_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_session_info_apply_geometry, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.232

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %13, i32 0, i32 1
  %14 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p, align 8
  %widget = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %14, i32 0, i32 10
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %16, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gtk_window_get_type() #5
  store i64 %call16, i64* %__t15, align 8
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %17, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %19, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type26, align 8
  %23 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %22, %23
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %25 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %24, i64 %25) #6
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %26 = load i32, i32* %__r18, align 4
  store i32 %26, i32* %tmp33
  %27 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %27, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_session_info_apply_geometry, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.232

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %28 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p39 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %28, i32 0, i32 1
  %29 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p39, align 8
  %widget40 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %29, i32 0, i32 10
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %widget40, align 8
  %call41 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %30)
  store %struct._GdkScreen* %call41, %struct._GdkScreen** %screen, align 8
  %31 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %call42 = call i32 @gimp_session_info_get_remember_size(%struct._GimpSessionInfo* %31)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %land.lhs.true.44, label %land.end

land.lhs.true.44:                                 ; preds = %do.end.38
  %32 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p45 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %32, i32 0, i32 1
  %33 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p45, align 8
  %width = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %33, i32 0, i32 3
  %34 = load i32, i32* %width, align 4
  %cmp46 = icmp sgt i32 %34, 0
  br i1 %cmp46, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.44
  %35 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p47 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %35, i32 0, i32 1
  %36 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p47, align 8
  %height = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %36, i32 0, i32 4
  %37 = load i32, i32* %height, align 4
  %cmp48 = icmp sgt i32 %37, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.44, %do.end.38
  %38 = phi i1 [ false, %land.lhs.true.44 ], [ false, %do.end.38 ], [ %cmp48, %land.rhs ]
  %land.ext = zext i1 %38 to i32
  store i32 %land.ext, i32* %use_size, align 4
  %39 = load i32, i32* %use_size, align 4
  %tobool49 = icmp ne i32 %39, 0
  br i1 %tobool49, label %if.then.50, label %if.else.58

if.then.50:                                       ; preds = %land.end
  %40 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  %41 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p51 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %41, i32 0, i32 1
  %42 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p51, align 8
  %x = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %42, i32 0, i32 1
  %43 = load i32, i32* %x, align 4
  %44 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p52 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %44, i32 0, i32 1
  %45 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p52, align 8
  %y = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %45, i32 0, i32 2
  %46 = load i32, i32* %y, align 4
  %47 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p53 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %47, i32 0, i32 1
  %48 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p53, align 8
  %width54 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %48, i32 0, i32 3
  %49 = load i32, i32* %width54, align 4
  %50 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p55 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %50, i32 0, i32 1
  %51 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p55, align 8
  %height56 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %51, i32 0, i32 4
  %52 = load i32, i32* %height56, align 4
  %call57 = call i32 @gimp_session_info_get_appropriate_monitor(%struct._GdkScreen* %40, i32 %43, i32 %46, i32 %49, i32 %52)
  store i32 %call57, i32* %monitor, align 4
  br label %if.end.64

if.else.58:                                       ; preds = %land.end
  %53 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  %54 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p59 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %54, i32 0, i32 1
  %55 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p59, align 8
  %x60 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %55, i32 0, i32 1
  %56 = load i32, i32* %x60, align 4
  %57 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p61 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %57, i32 0, i32 1
  %58 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p61, align 8
  %y62 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %58, i32 0, i32 2
  %59 = load i32, i32* %y62, align 4
  %call63 = call i32 @gdk_screen_get_monitor_at_point(%struct._GdkScreen* %53, i32 %56, i32 %59)
  store i32 %call63, i32* %monitor, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.58, %if.then.50
  %60 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  %61 = load i32, i32* %monitor, align 4
  call void @gdk_screen_get_monitor_geometry(%struct._GdkScreen* %60, i32 %61, %struct._GdkRectangle* %rect)
  %62 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p65 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %62, i32 0, i32 1
  %63 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p65, align 8
  %x66 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %63, i32 0, i32 1
  %64 = load i32, i32* %x66, align 4
  %x67 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 0
  %65 = load i32, i32* %x67, align 4
  %width68 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 2
  %66 = load i32, i32* %width68, align 4
  %add = add nsw i32 %65, %66
  %67 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p69 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %67, i32 0, i32 1
  %68 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p69, align 8
  %width70 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %68, i32 0, i32 3
  %69 = load i32, i32* %width70, align 4
  %cmp71 = icmp sgt i32 %69, 0
  br i1 %cmp71, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.64
  %70 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p72 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %70, i32 0, i32 1
  %71 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p72, align 8
  %width73 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %71, i32 0, i32 3
  %72 = load i32, i32* %width73, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %72, %cond.true ], [ 128, %cond.false ]
  %sub = sub nsw i32 %add, %cond
  %cmp74 = icmp sgt i32 %64, %sub
  br i1 %cmp74, label %cond.true.75, label %cond.false.89

cond.true.75:                                     ; preds = %cond.end
  %x76 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 0
  %73 = load i32, i32* %x76, align 4
  %width77 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 2
  %74 = load i32, i32* %width77, align 4
  %add78 = add nsw i32 %73, %74
  %75 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p79 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %75, i32 0, i32 1
  %76 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p79, align 8
  %width80 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %76, i32 0, i32 3
  %77 = load i32, i32* %width80, align 4
  %cmp81 = icmp sgt i32 %77, 0
  br i1 %cmp81, label %cond.true.82, label %cond.false.85

cond.true.82:                                     ; preds = %cond.true.75
  %78 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p83 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %78, i32 0, i32 1
  %79 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p83, align 8
  %width84 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %79, i32 0, i32 3
  %80 = load i32, i32* %width84, align 4
  br label %cond.end.86

cond.false.85:                                    ; preds = %cond.true.75
  br label %cond.end.86

cond.end.86:                                      ; preds = %cond.false.85, %cond.true.82
  %cond87 = phi i32 [ %80, %cond.true.82 ], [ 128, %cond.false.85 ]
  %sub88 = sub nsw i32 %add78, %cond87
  br label %cond.end.101

cond.false.89:                                    ; preds = %cond.end
  %81 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p90 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %81, i32 0, i32 1
  %82 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p90, align 8
  %x91 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %82, i32 0, i32 1
  %83 = load i32, i32* %x91, align 4
  %x92 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 0
  %84 = load i32, i32* %x92, align 4
  %cmp93 = icmp slt i32 %83, %84
  br i1 %cmp93, label %cond.true.94, label %cond.false.96

cond.true.94:                                     ; preds = %cond.false.89
  %x95 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 0
  %85 = load i32, i32* %x95, align 4
  br label %cond.end.99

cond.false.96:                                    ; preds = %cond.false.89
  %86 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p97 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %86, i32 0, i32 1
  %87 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p97, align 8
  %x98 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %87, i32 0, i32 1
  %88 = load i32, i32* %x98, align 4
  br label %cond.end.99

cond.end.99:                                      ; preds = %cond.false.96, %cond.true.94
  %cond100 = phi i32 [ %85, %cond.true.94 ], [ %88, %cond.false.96 ]
  br label %cond.end.101

cond.end.101:                                     ; preds = %cond.end.99, %cond.end.86
  %cond102 = phi i32 [ %sub88, %cond.end.86 ], [ %cond100, %cond.end.99 ]
  %89 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p103 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %89, i32 0, i32 1
  %90 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p103, align 8
  %x104 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %90, i32 0, i32 1
  store i32 %cond102, i32* %x104, align 4
  %91 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p105 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %91, i32 0, i32 1
  %92 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p105, align 8
  %y106 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %92, i32 0, i32 2
  %93 = load i32, i32* %y106, align 4
  %y107 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 1
  %94 = load i32, i32* %y107, align 4
  %height108 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 3
  %95 = load i32, i32* %height108, align 4
  %add109 = add nsw i32 %94, %95
  %96 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p110 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %96, i32 0, i32 1
  %97 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p110, align 8
  %height111 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %97, i32 0, i32 4
  %98 = load i32, i32* %height111, align 4
  %cmp112 = icmp sgt i32 %98, 0
  br i1 %cmp112, label %cond.true.113, label %cond.false.116

cond.true.113:                                    ; preds = %cond.end.101
  %99 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p114 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %99, i32 0, i32 1
  %100 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p114, align 8
  %height115 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %100, i32 0, i32 4
  %101 = load i32, i32* %height115, align 4
  br label %cond.end.117

cond.false.116:                                   ; preds = %cond.end.101
  br label %cond.end.117

cond.end.117:                                     ; preds = %cond.false.116, %cond.true.113
  %cond118 = phi i32 [ %101, %cond.true.113 ], [ 128, %cond.false.116 ]
  %sub119 = sub nsw i32 %add109, %cond118
  %cmp120 = icmp sgt i32 %93, %sub119
  br i1 %cmp120, label %cond.true.121, label %cond.false.135

cond.true.121:                                    ; preds = %cond.end.117
  %y122 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 1
  %102 = load i32, i32* %y122, align 4
  %height123 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 3
  %103 = load i32, i32* %height123, align 4
  %add124 = add nsw i32 %102, %103
  %104 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p125 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %104, i32 0, i32 1
  %105 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p125, align 8
  %height126 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %105, i32 0, i32 4
  %106 = load i32, i32* %height126, align 4
  %cmp127 = icmp sgt i32 %106, 0
  br i1 %cmp127, label %cond.true.128, label %cond.false.131

cond.true.128:                                    ; preds = %cond.true.121
  %107 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p129 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %107, i32 0, i32 1
  %108 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p129, align 8
  %height130 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %108, i32 0, i32 4
  %109 = load i32, i32* %height130, align 4
  br label %cond.end.132

cond.false.131:                                   ; preds = %cond.true.121
  br label %cond.end.132

cond.end.132:                                     ; preds = %cond.false.131, %cond.true.128
  %cond133 = phi i32 [ %109, %cond.true.128 ], [ 128, %cond.false.131 ]
  %sub134 = sub nsw i32 %add124, %cond133
  br label %cond.end.147

cond.false.135:                                   ; preds = %cond.end.117
  %110 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p136 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %110, i32 0, i32 1
  %111 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p136, align 8
  %y137 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %111, i32 0, i32 2
  %112 = load i32, i32* %y137, align 4
  %y138 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 1
  %113 = load i32, i32* %y138, align 4
  %cmp139 = icmp slt i32 %112, %113
  br i1 %cmp139, label %cond.true.140, label %cond.false.142

cond.true.140:                                    ; preds = %cond.false.135
  %y141 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 1
  %114 = load i32, i32* %y141, align 4
  br label %cond.end.145

cond.false.142:                                   ; preds = %cond.false.135
  %115 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p143 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %115, i32 0, i32 1
  %116 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p143, align 8
  %y144 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %116, i32 0, i32 2
  %117 = load i32, i32* %y144, align 4
  br label %cond.end.145

cond.end.145:                                     ; preds = %cond.false.142, %cond.true.140
  %cond146 = phi i32 [ %114, %cond.true.140 ], [ %117, %cond.false.142 ]
  br label %cond.end.147

cond.end.147:                                     ; preds = %cond.end.145, %cond.end.132
  %cond148 = phi i32 [ %sub134, %cond.end.132 ], [ %cond146, %cond.end.145 ]
  %118 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p149 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %118, i32 0, i32 1
  %119 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p149, align 8
  %y150 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %119, i32 0, i32 2
  store i32 %cond148, i32* %y150, align 4
  %120 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p151 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %120, i32 0, i32 1
  %121 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p151, align 8
  %right_align = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %121, i32 0, i32 5
  %122 = load i32, i32* %right_align, align 4
  %tobool152 = icmp ne i32 %122, 0
  br i1 %tobool152, label %land.lhs.true.153, label %if.else.158

land.lhs.true.153:                                ; preds = %cond.end.147
  %123 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p154 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %123, i32 0, i32 1
  %124 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p154, align 8
  %bottom_align = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %124, i32 0, i32 6
  %125 = load i32, i32* %bottom_align, align 4
  %tobool155 = icmp ne i32 %125, 0
  br i1 %tobool155, label %if.then.156, label %if.else.158

if.then.156:                                      ; preds = %land.lhs.true.153
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %geom, i32 0, i32 0
  %call157 = call i64 @g_strlcpy(i8* %arraydecay, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i64 32)
  br label %if.end.185

if.else.158:                                      ; preds = %land.lhs.true.153, %cond.end.147
  %126 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p159 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %126, i32 0, i32 1
  %127 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p159, align 8
  %right_align160 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %127, i32 0, i32 5
  %128 = load i32, i32* %right_align160, align 4
  %tobool161 = icmp ne i32 %128, 0
  br i1 %tobool161, label %if.then.162, label %if.else.167

if.then.162:                                      ; preds = %if.else.158
  %arraydecay163 = getelementptr inbounds [32 x i8], [32 x i8]* %geom, i32 0, i32 0
  %129 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p164 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %129, i32 0, i32 1
  %130 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p164, align 8
  %y165 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %130, i32 0, i32 2
  %131 = load i32, i32* %y165, align 4
  %call166 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay163, i64 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 %131)
  br label %if.end.184

if.else.167:                                      ; preds = %if.else.158
  %132 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p168 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %132, i32 0, i32 1
  %133 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p168, align 8
  %bottom_align169 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %133, i32 0, i32 6
  %134 = load i32, i32* %bottom_align169, align 4
  %tobool170 = icmp ne i32 %134, 0
  br i1 %tobool170, label %if.then.171, label %if.else.176

if.then.171:                                      ; preds = %if.else.167
  %arraydecay172 = getelementptr inbounds [32 x i8], [32 x i8]* %geom, i32 0, i32 0
  %135 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p173 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %135, i32 0, i32 1
  %136 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p173, align 8
  %x174 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %136, i32 0, i32 1
  %137 = load i32, i32* %x174, align 4
  %call175 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay172, i64 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 %137)
  br label %if.end.183

if.else.176:                                      ; preds = %if.else.167
  %arraydecay177 = getelementptr inbounds [32 x i8], [32 x i8]* %geom, i32 0, i32 0
  %138 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p178 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %138, i32 0, i32 1
  %139 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p178, align 8
  %x179 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %139, i32 0, i32 1
  %140 = load i32, i32* %x179, align 4
  %141 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p180 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %141, i32 0, i32 1
  %142 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p180, align 8
  %y181 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %142, i32 0, i32 2
  %143 = load i32, i32* %y181, align 4
  %call182 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay177, i64 32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32 %140, i32 %143)
  br label %if.end.183

if.end.183:                                       ; preds = %if.else.176, %if.then.171
  br label %if.end.184

if.end.184:                                       ; preds = %if.end.183, %if.then.162
  br label %if.end.185

if.end.185:                                       ; preds = %if.end.184, %if.then.156
  %144 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p186 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %144, i32 0, i32 1
  %145 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p186, align 8
  %widget187 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %145, i32 0, i32 10
  %146 = load %struct._GtkWidget*, %struct._GtkWidget** %widget187, align 8
  %147 = bitcast %struct._GtkWidget* %146 to %struct._GTypeInstance*
  %call188 = call i64 @gtk_window_get_type() #5
  %call189 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %147, i64 %call188)
  %148 = bitcast %struct._GTypeInstance* %call189 to %struct._GtkWindow*
  %arraydecay190 = getelementptr inbounds [32 x i8], [32 x i8]* %geom, i32 0, i32 0
  %call191 = call i32 @gtk_window_parse_geometry(%struct._GtkWindow* %148, i8* %arraydecay190)
  %149 = load i32, i32* %use_size, align 4
  %tobool192 = icmp ne i32 %149, 0
  br i1 %tobool192, label %if.then.193, label %if.end.202

if.then.193:                                      ; preds = %if.end.185
  %150 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p194 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %150, i32 0, i32 1
  %151 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p194, align 8
  %widget195 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %151, i32 0, i32 10
  %152 = load %struct._GtkWidget*, %struct._GtkWidget** %widget195, align 8
  %153 = bitcast %struct._GtkWidget* %152 to %struct._GTypeInstance*
  %call196 = call i64 @gtk_window_get_type() #5
  %call197 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %153, i64 %call196)
  %154 = bitcast %struct._GTypeInstance* %call197 to %struct._GtkWindow*
  %155 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p198 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %155, i32 0, i32 1
  %156 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p198, align 8
  %width199 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %156, i32 0, i32 3
  %157 = load i32, i32* %width199, align 4
  %158 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p200 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %158, i32 0, i32 1
  %159 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p200, align 8
  %height201 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %159, i32 0, i32 4
  %160 = load i32, i32* %height201, align 4
  call void @gtk_window_set_default_size(%struct._GtkWindow* %154, i32 %157, i32 %160)
  br label %if.end.202

if.end.202:                                       ; preds = %if.then.193, %if.end.185
  %161 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p205 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %161, i32 0, i32 1
  %162 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p205, align 8
  %widget206 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %162, i32 0, i32 10
  %163 = load %struct._GtkWidget*, %struct._GtkWidget** %widget206, align 8
  %164 = bitcast %struct._GtkWidget* %163 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %164, %struct._GTypeInstance** %__inst204, align 8
  %call209 = call i64 @gtk_dialog_get_type() #5
  store i64 %call209, i64* %__t208, align 8
  %165 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst204, align 8
  %tobool212 = icmp ne %struct._GTypeInstance* %165, null
  br i1 %tobool212, label %if.else.214, label %if.then.213

if.then.213:                                      ; preds = %if.end.202
  store i32 0, i32* %__r211, align 4
  br label %if.end.225

if.else.214:                                      ; preds = %if.end.202
  %166 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst204, align 8
  %g_class215 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %166, i32 0, i32 0
  %167 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class215, align 8
  %tobool216 = icmp ne %struct._GTypeClass* %167, null
  br i1 %tobool216, label %land.lhs.true.217, label %if.else.222

land.lhs.true.217:                                ; preds = %if.else.214
  %168 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst204, align 8
  %g_class218 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %168, i32 0, i32 0
  %169 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class218, align 8
  %g_type219 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %169, i32 0, i32 0
  %170 = load i64, i64* %g_type219, align 8
  %171 = load i64, i64* %__t208, align 8
  %cmp220 = icmp eq i64 %170, %171
  br i1 %cmp220, label %if.then.221, label %if.else.222

if.then.221:                                      ; preds = %land.lhs.true.217
  store i32 1, i32* %__r211, align 4
  br label %if.end.224

if.else.222:                                      ; preds = %land.lhs.true.217, %if.else.214
  %172 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst204, align 8
  %173 = load i64, i64* %__t208, align 8
  %call223 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %172, i64 %173) #6
  store i32 %call223, i32* %__r211, align 4
  br label %if.end.224

if.end.224:                                       ; preds = %if.else.222, %if.then.221
  br label %if.end.225

if.end.225:                                       ; preds = %if.end.224, %if.then.213
  %174 = load i32, i32* %__r211, align 4
  store i32 %174, i32* %tmp226
  %175 = load i32, i32* %tmp226
  %tobool227 = icmp ne i32 %175, 0
  br i1 %tobool227, label %if.then.228, label %if.end.232

if.then.228:                                      ; preds = %if.end.225
  %176 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p229 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %176, i32 0, i32 1
  %177 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p229, align 8
  %widget230 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %177, i32 0, i32 10
  %178 = load %struct._GtkWidget*, %struct._GtkWidget** %widget230, align 8
  %179 = bitcast %struct._GtkWidget* %178 to i8*
  %180 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %181 = bitcast %struct._GimpSessionInfo* %180 to i8*
  %call231 = call i64 @g_signal_connect_data(i8* %179, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpSessionInfo*)* @gimp_session_info_dialog_show to void ()*), i8* %181, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.232

if.end.232:                                       ; preds = %if.else.9, %if.else.36, %if.then.228, %if.end.225
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #2

declare %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_session_info_get_remember_size(%struct._GimpSessionInfo* %info) #3 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct._GimpSessionInfo*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpSessionInfo* %info, %struct._GimpSessionInfo** %info.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %1 = bitcast %struct._GimpSessionInfo* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_session_info_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_session_info_get_remember_size, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %call11 = call i32 @gimp_session_info_is_for_dock_window(%struct._GimpSessionInfo* %13)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.end
  %14 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %14, i32 0, i32 1
  %15 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p, align 8
  %factory_entry = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %15, i32 0, i32 0
  %16 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %factory_entry, align 8
  %tobool13 = icmp ne %struct._GimpDialogFactoryEntry* %16, null
  br i1 %tobool13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %17 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p14 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %17, i32 0, i32 1
  %18 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p14, align 8
  %factory_entry15 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %18, i32 0, i32 0
  %19 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %factory_entry15, align 8
  %remember_size = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %19, i32 0, i32 10
  %20 = load i32, i32* %remember_size, align 4
  %tobool16 = icmp ne i32 %20, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %21 = phi i1 [ false, %lor.rhs ], [ %tobool16, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %do.end
  %22 = phi i1 [ true, %do.end ], [ %21, %land.end ]
  %lor.ext = zext i1 %22 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

return:                                           ; preds = %lor.end, %if.else.9
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_session_info_get_appropriate_monitor(%struct._GdkScreen* %screen, i32 %x, i32 %y, i32 %w, i32 %h) #3 {
entry:
  %retval = alloca i32, align 4
  %screen.addr = alloca %struct._GdkScreen*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %rect = alloca %struct._GdkRectangle, align 4
  %area = alloca i32, align 4
  %monitor = alloca i32, align 4
  %num_monitors = alloca i32, align 4
  %i = alloca i32, align 4
  %geometry = alloca %struct._GdkRectangle, align 4
  store %struct._GdkScreen* %screen, %struct._GdkScreen** %screen.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  store i32 0, i32* %area, align 4
  store i32 -1, i32* %monitor, align 4
  %0 = load i32, i32* %x.addr, align 4
  %x1 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 0
  store i32 %0, i32* %x1, align 4
  %1 = load i32, i32* %y.addr, align 4
  %y2 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 1
  store i32 %1, i32* %y2, align 4
  %2 = load i32, i32* %w.addr, align 4
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 2
  store i32 %2, i32* %width, align 4
  %3 = load i32, i32* %h.addr, align 4
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 3
  store i32 %3, i32* %height, align 4
  %4 = load %struct._GdkScreen*, %struct._GdkScreen** %screen.addr, align 8
  %call = call i32 @gdk_screen_get_n_monitors(%struct._GdkScreen* %4)
  store i32 %call, i32* %num_monitors, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %num_monitors, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct._GdkScreen*, %struct._GdkScreen** %screen.addr, align 8
  %8 = load i32, i32* %i, align 4
  call void @gdk_screen_get_monitor_geometry(%struct._GdkScreen* %7, i32 %8, %struct._GdkRectangle* %geometry)
  %call3 = call i32 @gdk_rectangle_intersect(%struct._GdkRectangle* %rect, %struct._GdkRectangle* %geometry, %struct._GdkRectangle* %geometry)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %width4 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %geometry, i32 0, i32 2
  %9 = load i32, i32* %width4, align 4
  %height5 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %geometry, i32 0, i32 3
  %10 = load i32, i32* %height5, align 4
  %mul = mul nsw i32 %9, %10
  %11 = load i32, i32* %area, align 4
  %cmp6 = icmp sgt i32 %mul, %11
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %width7 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %geometry, i32 0, i32 2
  %12 = load i32, i32* %width7, align 4
  %height8 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %geometry, i32 0, i32 3
  %13 = load i32, i32* %height8, align 4
  %mul9 = mul nsw i32 %12, %13
  store i32 %mul9, i32* %area, align 4
  %14 = load i32, i32* %i, align 4
  store i32 %14, i32* %monitor, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i32, i32* %monitor, align 4
  %cmp10 = icmp sge i32 %16, 0
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %for.end
  %17 = load i32, i32* %monitor, align 4
  store i32 %17, i32* %retval
  br label %return

if.else:                                          ; preds = %for.end
  %18 = load %struct._GdkScreen*, %struct._GdkScreen** %screen.addr, align 8
  %x12 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 0
  %19 = load i32, i32* %x12, align 4
  %width13 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 2
  %20 = load i32, i32* %width13, align 4
  %div = sdiv i32 %20, 2
  %add = add nsw i32 %19, %div
  %y14 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 1
  %21 = load i32, i32* %y14, align 4
  %height15 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 3
  %22 = load i32, i32* %height15, align 4
  %div16 = sdiv i32 %22, 2
  %add17 = add nsw i32 %21, %div16
  %call18 = call i32 @gdk_screen_get_monitor_at_point(%struct._GdkScreen* %18, i32 %add, i32 %add17)
  store i32 %call18, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.11
  %23 = load i32, i32* %retval
  ret i32 %23
}

declare i32 @gdk_screen_get_monitor_at_point(%struct._GdkScreen*, i32, i32) #1

declare void @gdk_screen_get_monitor_geometry(%struct._GdkScreen*, i32, %struct._GdkRectangle*) #1

declare i64 @g_strlcpy(i8*, i8*, i64) #1

declare i32 @g_snprintf(i8*, i64, i8*, ...) #1

declare i32 @gtk_window_parse_geometry(%struct._GtkWindow*, i8*) #1

declare void @gtk_window_set_default_size(%struct._GtkWindow*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #2

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_session_info_dialog_show(%struct._GtkWidget* %widget, %struct._GimpSessionInfo* %info) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %info.addr = alloca %struct._GimpSessionInfo*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpSessionInfo* %info, %struct._GimpSessionInfo** %info.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_window_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWindow*
  %3 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %3, i32 0, i32 1
  %4 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p, align 8
  %x = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %4, i32 0, i32 1
  %5 = load i32, i32* %x, align 4
  %6 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p2 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %6, i32 0, i32 1
  %7 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p2, align 8
  %y = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %7, i32 0, i32 2
  %8 = load i32, i32* %y, align 4
  call void @gtk_window_move(%struct._GtkWindow* %2, i32 %5, i32 %8)
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_session_info_read_geometry(%struct._GimpSessionInfo* %info, %struct._GdkEventConfigure* %cevent) #3 {
entry:
  %info.addr = alloca %struct._GimpSessionInfo*, align 8
  %cevent.addr = alloca %struct._GdkEventConfigure*, align 8
  %window = alloca %struct._GdkDrawable*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %allocation = alloca %struct._GdkRectangle, align 4
  %visibility = alloca i32, align 4
  %display = alloca %struct._GdkDisplay*, align 8
  %screen114 = alloca %struct._GdkScreen*, align 8
  store %struct._GimpSessionInfo* %info, %struct._GimpSessionInfo** %info.addr, align 8
  store %struct._GdkEventConfigure* %cevent, %struct._GdkEventConfigure** %cevent.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %1 = bitcast %struct._GimpSessionInfo* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_session_info_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_session_info_read_geometry, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.126

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %13, i32 0, i32 1
  %14 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p, align 8
  %widget = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %14, i32 0, i32 10
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %16, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gtk_window_get_type() #5
  store i64 %call16, i64* %__t15, align 8
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %17, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %19, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type26, align 8
  %23 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %22, %23
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %25 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %24, i64 %25) #6
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %26 = load i32, i32* %__r18, align 4
  store i32 %26, i32* %tmp33
  %27 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %27, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_session_info_read_geometry, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.126

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %28 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p39 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %28, i32 0, i32 1
  %29 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p39, align 8
  %widget40 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %29, i32 0, i32 10
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %widget40, align 8
  %call41 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %30)
  store %struct._GdkDrawable* %call41, %struct._GdkDrawable** %window, align 8
  %31 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  %tobool42 = icmp ne %struct._GdkDrawable* %31, null
  br i1 %tobool42, label %if.then.43, label %if.end.82

if.then.43:                                       ; preds = %do.end.38
  %32 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  call void @gdk_window_get_root_origin(%struct._GdkDrawable* %32, i32* %x, i32* %y)
  %33 = load i32, i32* %x, align 4
  %cmp46 = icmp sgt i32 0, %33
  br i1 %cmp46, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.43
  br label %cond.end

cond.false:                                       ; preds = %if.then.43
  %34 = load i32, i32* %x, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %34, %cond.false ]
  %35 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p47 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %35, i32 0, i32 1
  %36 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p47, align 8
  %x48 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %36, i32 0, i32 1
  store i32 %cond, i32* %x48, align 4
  %37 = load i32, i32* %y, align 4
  %cmp49 = icmp sgt i32 0, %37
  br i1 %cmp49, label %cond.true.50, label %cond.false.51

cond.true.50:                                     ; preds = %cond.end
  br label %cond.end.52

cond.false.51:                                    ; preds = %cond.end
  %38 = load i32, i32* %y, align 4
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.51, %cond.true.50
  %cond53 = phi i32 [ 0, %cond.true.50 ], [ %38, %cond.false.51 ]
  %39 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p54 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %39, i32 0, i32 1
  %40 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p54, align 8
  %y55 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %40, i32 0, i32 2
  store i32 %cond53, i32* %y55, align 4
  %41 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %call56 = call i32 @gimp_session_info_get_remember_size(%struct._GimpSessionInfo* %41)
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.then.58, label %if.else.76

if.then.58:                                       ; preds = %cond.end.52
  %42 = load %struct._GdkEventConfigure*, %struct._GdkEventConfigure** %cevent.addr, align 8
  %tobool61 = icmp ne %struct._GdkEventConfigure* %42, null
  br i1 %tobool61, label %if.then.62, label %if.else.65

if.then.62:                                       ; preds = %if.then.58
  %43 = load %struct._GdkEventConfigure*, %struct._GdkEventConfigure** %cevent.addr, align 8
  %width63 = getelementptr inbounds %struct._GdkEventConfigure, %struct._GdkEventConfigure* %43, i32 0, i32 5
  %44 = load i32, i32* %width63, align 4
  store i32 %44, i32* %width, align 4
  %45 = load %struct._GdkEventConfigure*, %struct._GdkEventConfigure** %cevent.addr, align 8
  %height64 = getelementptr inbounds %struct._GdkEventConfigure, %struct._GdkEventConfigure* %45, i32 0, i32 6
  %46 = load i32, i32* %height64, align 4
  store i32 %46, i32* %height, align 4
  br label %if.end.71

if.else.65:                                       ; preds = %if.then.58
  %47 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p67 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %47, i32 0, i32 1
  %48 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p67, align 8
  %widget68 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %48, i32 0, i32 10
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %widget68, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %49, %struct._GdkRectangle* %allocation)
  %width69 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %50 = load i32, i32* %width69, align 4
  store i32 %50, i32* %width, align 4
  %height70 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %51 = load i32, i32* %height70, align 4
  store i32 %51, i32* %height, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.65, %if.then.62
  %52 = load i32, i32* %width, align 4
  %53 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p72 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %53, i32 0, i32 1
  %54 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p72, align 8
  %width73 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %54, i32 0, i32 3
  store i32 %52, i32* %width73, align 4
  %55 = load i32, i32* %height, align 4
  %56 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p74 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %56, i32 0, i32 1
  %57 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p74, align 8
  %height75 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %57, i32 0, i32 4
  store i32 %55, i32* %height75, align 4
  br label %if.end.81

if.else.76:                                       ; preds = %cond.end.52
  %58 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p77 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %58, i32 0, i32 1
  %59 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p77, align 8
  %width78 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %59, i32 0, i32 3
  store i32 0, i32* %width78, align 4
  %60 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p79 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %60, i32 0, i32 1
  %61 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p79, align 8
  %height80 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %61, i32 0, i32 4
  store i32 0, i32* %height80, align 4
  br label %if.end.81

if.end.81:                                        ; preds = %if.else.76, %if.end.71
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %do.end.38
  %62 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p83 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %62, i32 0, i32 1
  %63 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p83, align 8
  %open = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %63, i32 0, i32 7
  store i32 0, i32* %open, align 4
  %64 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %call84 = call i32 @gimp_session_info_get_remember_if_open(%struct._GimpSessionInfo* %64)
  %tobool85 = icmp ne i32 %call84, 0
  br i1 %tobool85, label %if.then.86, label %if.end.103

if.then.86:                                       ; preds = %if.end.82
  %65 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p88 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %65, i32 0, i32 1
  %66 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p88, align 8
  %widget89 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %66, i32 0, i32 10
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %widget89, align 8
  %68 = bitcast %struct._GtkWidget* %67 to %struct._GTypeInstance*
  %call90 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 80)
  %69 = bitcast %struct._GTypeInstance* %call90 to %struct._GObject*
  %call91 = call i8* @g_object_get_data(%struct._GObject* %69, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0))
  %70 = ptrtoint i8* %call91 to i64
  %conv = trunc i64 %70 to i32
  store i32 %conv, i32* %visibility, align 4
  %71 = load i32, i32* %visibility, align 4
  switch i32 %71, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.97
    i32 3, label %sw.bb.100
    i32 2, label %sw.bb.100
  ]

sw.bb:                                            ; preds = %if.then.86
  %72 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p92 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %72, i32 0, i32 1
  %73 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p92, align 8
  %widget93 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %73, i32 0, i32 10
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %widget93, align 8
  %call94 = call i32 @gtk_widget_get_visible(%struct._GtkWidget* %74)
  %75 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p95 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %75, i32 0, i32 1
  %76 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p95, align 8
  %open96 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %76, i32 0, i32 7
  store i32 %call94, i32* %open96, align 4
  br label %sw.epilog

sw.bb.97:                                         ; preds = %if.then.86
  %77 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p98 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %77, i32 0, i32 1
  %78 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p98, align 8
  %open99 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %78, i32 0, i32 7
  store i32 0, i32* %open99, align 4
  br label %sw.epilog

sw.bb.100:                                        ; preds = %if.then.86, %if.then.86
  %79 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p101 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %79, i32 0, i32 1
  %80 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p101, align 8
  %open102 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %80, i32 0, i32 7
  store i32 1, i32* %open102, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.86, %sw.bb.100, %sw.bb.97, %sw.bb
  br label %if.end.103

if.end.103:                                       ; preds = %sw.epilog, %if.end.82
  %81 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p104 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %81, i32 0, i32 1
  %82 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p104, align 8
  %screen = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %82, i32 0, i32 8
  store i32 -1, i32* %screen, align 4
  %83 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p105 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %83, i32 0, i32 1
  %84 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p105, align 8
  %open106 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %84, i32 0, i32 7
  %85 = load i32, i32* %open106, align 4
  %tobool107 = icmp ne i32 %85, 0
  br i1 %tobool107, label %if.then.108, label %if.end.126

if.then.108:                                      ; preds = %if.end.103
  %86 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p110 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %86, i32 0, i32 1
  %87 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p110, align 8
  %widget111 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %87, i32 0, i32 10
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %widget111, align 8
  %call112 = call %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget* %88)
  store %struct._GdkDisplay* %call112, %struct._GdkDisplay** %display, align 8
  %89 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p115 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %89, i32 0, i32 1
  %90 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p115, align 8
  %widget116 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %90, i32 0, i32 10
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %widget116, align 8
  %call117 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %91)
  store %struct._GdkScreen* %call117, %struct._GdkScreen** %screen114, align 8
  %92 = load %struct._GdkScreen*, %struct._GdkScreen** %screen114, align 8
  %93 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  %call118 = call %struct._GdkScreen* @gdk_display_get_default_screen(%struct._GdkDisplay* %93)
  %cmp119 = icmp ne %struct._GdkScreen* %92, %call118
  br i1 %cmp119, label %if.then.121, label %if.end.125

if.then.121:                                      ; preds = %if.then.108
  %94 = load %struct._GdkScreen*, %struct._GdkScreen** %screen114, align 8
  %call122 = call i32 @gdk_screen_get_number(%struct._GdkScreen* %94)
  %95 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p123 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %95, i32 0, i32 1
  %96 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p123, align 8
  %screen124 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %96, i32 0, i32 8
  store i32 %call122, i32* %screen124, align 4
  br label %if.end.125

if.end.125:                                       ; preds = %if.then.121, %if.then.108
  br label %if.end.126

if.end.126:                                       ; preds = %if.else.9, %if.else.36, %if.end.125, %if.end.103
  ret void
}

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare void @gdk_window_get_root_origin(%struct._GdkDrawable*, i32*, i32*) #1

declare void @gtk_widget_get_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_session_info_get_remember_if_open(%struct._GimpSessionInfo* %info) #3 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct._GimpSessionInfo*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpSessionInfo* %info, %struct._GimpSessionInfo** %info.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %1 = bitcast %struct._GimpSessionInfo* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_session_info_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_session_info_get_remember_if_open, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %call11 = call i32 @gimp_session_info_is_for_dock_window(%struct._GimpSessionInfo* %13)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.end
  %14 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %14, i32 0, i32 1
  %15 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p, align 8
  %factory_entry = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %15, i32 0, i32 0
  %16 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %factory_entry, align 8
  %tobool13 = icmp ne %struct._GimpDialogFactoryEntry* %16, null
  br i1 %tobool13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %17 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p14 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %17, i32 0, i32 1
  %18 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p14, align 8
  %factory_entry15 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %18, i32 0, i32 0
  %19 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %factory_entry15, align 8
  %remember_if_open = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %19, i32 0, i32 11
  %20 = load i32, i32* %remember_if_open, align 4
  %tobool16 = icmp ne i32 %20, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %21 = phi i1 [ false, %lor.rhs ], [ %tobool16, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %do.end
  %22 = phi i1 [ true, %do.end ], [ %21, %land.end ]
  %lor.ext = zext i1 %22 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

return:                                           ; preds = %lor.end, %if.else.9
  %23 = load i32, i32* %retval
  ret i32 %23
}

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare i32 @gtk_widget_get_visible(%struct._GtkWidget*) #1

declare %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget*) #1

declare i32 @gdk_screen_get_number(%struct._GdkScreen*) #1

; Function Attrs: nounwind uwtable
define void @gimp_session_info_get_info(%struct._GimpSessionInfo* %info) #3 {
entry:
  %info.addr = alloca %struct._GimpSessionInfo*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %__inst40 = alloca %struct._GTypeInstance*, align 8
  %__t44 = alloca i64, align 8
  %__r47 = alloca i32, align 4
  %tmp62 = alloca i32, align 4
  %__inst73 = alloca %struct._GTypeInstance*, align 8
  %__t77 = alloca i64, align 8
  %__r80 = alloca i32, align 4
  %tmp95 = alloca i32, align 4
  %dock_container = alloca %struct._GimpDockContainer*, align 8
  %iter = alloca %struct._GList*, align 8
  %docks = alloca %struct._GList*, align 8
  %dock = alloca %struct._GimpDock*, align 8
  store %struct._GimpSessionInfo* %info, %struct._GimpSessionInfo** %info.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %1 = bitcast %struct._GimpSessionInfo* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_session_info_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_session_info_get_info, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.117

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %13, i32 0, i32 1
  %14 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p, align 8
  %widget = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %14, i32 0, i32 10
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %16, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gtk_widget_get_type() #5
  store i64 %call16, i64* %__t15, align 8
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %17, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %19, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type26, align 8
  %23 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %22, %23
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %25 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %24, i64 %25) #6
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %26 = load i32, i32* %__r18, align 4
  store i32 %26, i32* %tmp33
  %27 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %27, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_session_info_get_info, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.117

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %28 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  call void @gimp_session_info_read_geometry(%struct._GimpSessionInfo* %28, %struct._GdkEventConfigure* null)
  %29 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p41 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %29, i32 0, i32 1
  %30 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p41, align 8
  %widget42 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %30, i32 0, i32 10
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %widget42, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %32, %struct._GTypeInstance** %__inst40, align 8
  %call45 = call i64 @gimp_session_managed_interface_get_type() #5
  store i64 %call45, i64* %__t44, align 8
  %33 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst40, align 8
  %tobool48 = icmp ne %struct._GTypeInstance* %33, null
  br i1 %tobool48, label %if.else.50, label %if.then.49

if.then.49:                                       ; preds = %do.end.38
  store i32 0, i32* %__r47, align 4
  br label %if.end.61

if.else.50:                                       ; preds = %do.end.38
  %34 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst40, align 8
  %g_class51 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %34, i32 0, i32 0
  %35 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class51, align 8
  %tobool52 = icmp ne %struct._GTypeClass* %35, null
  br i1 %tobool52, label %land.lhs.true.53, label %if.else.58

land.lhs.true.53:                                 ; preds = %if.else.50
  %36 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst40, align 8
  %g_class54 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %36, i32 0, i32 0
  %37 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class54, align 8
  %g_type55 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %37, i32 0, i32 0
  %38 = load i64, i64* %g_type55, align 8
  %39 = load i64, i64* %__t44, align 8
  %cmp56 = icmp eq i64 %38, %39
  br i1 %cmp56, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %land.lhs.true.53
  store i32 1, i32* %__r47, align 4
  br label %if.end.60

if.else.58:                                       ; preds = %land.lhs.true.53, %if.else.50
  %40 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst40, align 8
  %41 = load i64, i64* %__t44, align 8
  %call59 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %40, i64 %41) #6
  store i32 %call59, i32* %__r47, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.58, %if.then.57
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.49
  %42 = load i32, i32* %__r47, align 4
  store i32 %42, i32* %tmp62
  %43 = load i32, i32* %tmp62
  %tobool63 = icmp ne i32 %43, 0
  br i1 %tobool63, label %if.then.64, label %if.end.71

if.then.64:                                       ; preds = %if.end.61
  %44 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p65 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %44, i32 0, i32 1
  %45 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p65, align 8
  %widget66 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %45, i32 0, i32 10
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %widget66, align 8
  %47 = bitcast %struct._GtkWidget* %46 to %struct._GTypeInstance*
  %call67 = call i64 @gimp_session_managed_interface_get_type() #5
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call67)
  %48 = bitcast %struct._GTypeInstance* %call68 to %struct._GimpSessionManaged*
  %call69 = call %struct._GList* @gimp_session_managed_get_aux_info(%struct._GimpSessionManaged* %48)
  %49 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p70 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %49, i32 0, i32 1
  %50 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p70, align 8
  %aux_info = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %50, i32 0, i32 9
  store %struct._GList* %call69, %struct._GList** %aux_info, align 8
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.64, %if.end.61
  %51 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p74 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %51, i32 0, i32 1
  %52 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p74, align 8
  %widget75 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %52, i32 0, i32 10
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %widget75, align 8
  %54 = bitcast %struct._GtkWidget* %53 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %54, %struct._GTypeInstance** %__inst73, align 8
  %call78 = call i64 @gimp_dock_container_interface_get_type() #5
  store i64 %call78, i64* %__t77, align 8
  %55 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst73, align 8
  %tobool81 = icmp ne %struct._GTypeInstance* %55, null
  br i1 %tobool81, label %if.else.83, label %if.then.82

if.then.82:                                       ; preds = %if.end.71
  store i32 0, i32* %__r80, align 4
  br label %if.end.94

if.else.83:                                       ; preds = %if.end.71
  %56 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst73, align 8
  %g_class84 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %56, i32 0, i32 0
  %57 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class84, align 8
  %tobool85 = icmp ne %struct._GTypeClass* %57, null
  br i1 %tobool85, label %land.lhs.true.86, label %if.else.91

land.lhs.true.86:                                 ; preds = %if.else.83
  %58 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst73, align 8
  %g_class87 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %58, i32 0, i32 0
  %59 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class87, align 8
  %g_type88 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %59, i32 0, i32 0
  %60 = load i64, i64* %g_type88, align 8
  %61 = load i64, i64* %__t77, align 8
  %cmp89 = icmp eq i64 %60, %61
  br i1 %cmp89, label %if.then.90, label %if.else.91

if.then.90:                                       ; preds = %land.lhs.true.86
  store i32 1, i32* %__r80, align 4
  br label %if.end.93

if.else.91:                                       ; preds = %land.lhs.true.86, %if.else.83
  %62 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst73, align 8
  %63 = load i64, i64* %__t77, align 8
  %call92 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %62, i64 %63) #6
  store i32 %call92, i32* %__r80, align 4
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.91, %if.then.90
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.then.82
  %64 = load i32, i32* %__r80, align 4
  store i32 %64, i32* %tmp95
  %65 = load i32, i32* %tmp95
  %tobool96 = icmp ne i32 %65, 0
  br i1 %tobool96, label %if.then.97, label %if.end.117

if.then.97:                                       ; preds = %if.end.94
  %66 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p99 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %66, i32 0, i32 1
  %67 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p99, align 8
  %widget100 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %67, i32 0, i32 10
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %widget100, align 8
  %69 = bitcast %struct._GtkWidget* %68 to %struct._GTypeInstance*
  %call101 = call i64 @gimp_dock_container_interface_get_type() #5
  %call102 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call101)
  %70 = bitcast %struct._GTypeInstance* %call102 to %struct._GimpDockContainer*
  store %struct._GimpDockContainer* %70, %struct._GimpDockContainer** %dock_container, align 8
  store %struct._GList* null, %struct._GList** %iter, align 8
  %71 = load %struct._GimpDockContainer*, %struct._GimpDockContainer** %dock_container, align 8
  %call105 = call %struct._GList* @gimp_dock_container_get_docks(%struct._GimpDockContainer* %71)
  store %struct._GList* %call105, %struct._GList** %docks, align 8
  %72 = load %struct._GList*, %struct._GList** %docks, align 8
  store %struct._GList* %72, %struct._GList** %iter, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.then.97
  %73 = load %struct._GList*, %struct._GList** %iter, align 8
  %tobool106 = icmp ne %struct._GList* %73, null
  br i1 %tobool106, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %74 = load %struct._GList*, %struct._GList** %iter, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %74, i32 0, i32 0
  %75 = load i8*, i8** %data, align 8
  %76 = bitcast i8* %75 to %struct._GTypeInstance*
  %call108 = call i64 @gimp_dock_get_type() #5
  %call109 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 %call108)
  %77 = bitcast %struct._GTypeInstance* %call109 to %struct._GimpDock*
  store %struct._GimpDock* %77, %struct._GimpDock** %dock, align 8
  %78 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p110 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %78, i32 0, i32 1
  %79 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p110, align 8
  %docks111 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %79, i32 0, i32 11
  %80 = load %struct._GList*, %struct._GList** %docks111, align 8
  %81 = load %struct._GimpDock*, %struct._GimpDock** %dock, align 8
  %call112 = call %struct._GimpSessionInfoDock* @gimp_session_info_dock_from_widget(%struct._GimpDock* %81)
  %82 = bitcast %struct._GimpSessionInfoDock* %call112 to i8*
  %call113 = call %struct._GList* @g_list_append(%struct._GList* %80, i8* %82)
  %83 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p114 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %83, i32 0, i32 1
  %84 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p114, align 8
  %docks115 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %84, i32 0, i32 11
  store %struct._GList* %call113, %struct._GList** %docks115, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %85 = load %struct._GList*, %struct._GList** %iter, align 8
  %tobool116 = icmp ne %struct._GList* %85, null
  br i1 %tobool116, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %86 = load %struct._GList*, %struct._GList** %iter, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %86, i32 0, i32 1
  %87 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %87, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %iter, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %88 = load %struct._GList*, %struct._GList** %docks, align 8
  call void @g_list_free(%struct._GList* %88)
  br label %if.end.117

if.end.117:                                       ; preds = %if.else.9, %if.else.36, %for.end, %if.end.94
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare %struct._GList* @gimp_session_managed_get_aux_info(%struct._GimpSessionManaged*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dock_container_interface_get_type() #2

declare %struct._GList* @gimp_dock_container_get_docks(%struct._GimpDockContainer*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dock_get_type() #2

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #1

declare %struct._GimpSessionInfoDock* @gimp_session_info_dock_from_widget(%struct._GimpDock*) #1

declare void @g_list_free(%struct._GList*) #1

; Function Attrs: nounwind uwtable
define void @gimp_session_info_get_info_with_widget(%struct._GimpSessionInfo* %info, %struct._GtkWidget* %widget) #3 {
entry:
  %info.addr = alloca %struct._GimpSessionInfo*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %old_widget = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpSessionInfo* %info, %struct._GimpSessionInfo** %info.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %1 = bitcast %struct._GimpSessionInfo* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_session_info_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_session_info_get_info_with_widget, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gtk_widget_get_type() #5
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_session_info_get_info_with_widget, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %call39 = call %struct._GtkWidget* @gimp_session_info_get_widget(%struct._GimpSessionInfo* %26)
  store %struct._GtkWidget* %call39, %struct._GtkWidget** %old_widget, align 8
  %27 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gimp_session_info_set_widget(%struct._GimpSessionInfo* %27, %struct._GtkWidget* %28)
  %29 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  call void @gimp_session_info_get_info(%struct._GimpSessionInfo* %29)
  %30 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %old_widget, align 8
  call void @gimp_session_info_set_widget(%struct._GimpSessionInfo* %30, %struct._GtkWidget* %31)
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_session_info_get_widget(%struct._GimpSessionInfo* %info) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %info.addr = alloca %struct._GimpSessionInfo*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpSessionInfo* %info, %struct._GimpSessionInfo** %info.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %1 = bitcast %struct._GimpSessionInfo* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_session_info_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_session_info_get_widget, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %13, i32 0, i32 1
  %14 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p, align 8
  %widget = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %14, i32 0, i32 10
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  store %struct._GtkWidget* %15, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %16
}

; Function Attrs: nounwind uwtable
define void @gimp_session_info_set_widget(%struct._GimpSessionInfo* %info, %struct._GtkWidget* %widget) #3 {
entry:
  %info.addr = alloca %struct._GimpSessionInfo*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst12 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpSessionInfo* %info, %struct._GimpSessionInfo** %info.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %1 = bitcast %struct._GimpSessionInfo* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_session_info_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_session_info_set_widget, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %13, i32 0, i32 1
  %14 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p, align 8
  %widget13 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %14, i32 0, i32 10
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %widget13, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %16, %struct._GTypeInstance** %__inst12, align 8
  %call16 = call i64 @gtk_dialog_get_type() #5
  store i64 %call16, i64* %__t15, align 8
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst12, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %17, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.end
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.end
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst12, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %19, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst12, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type26, align 8
  %23 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %22, %23
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst12, align 8
  %25 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %24, i64 %25) #6
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %26 = load i32, i32* %__r18, align 4
  store i32 %26, i32* %tmp33
  %27 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %27, 0
  br i1 %tobool34, label %if.then.35, label %if.end.39

if.then.35:                                       ; preds = %if.end.32
  %28 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p36 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %28, i32 0, i32 1
  %29 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p36, align 8
  %widget37 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %29, i32 0, i32 10
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %widget37, align 8
  %31 = bitcast %struct._GtkWidget* %30 to i8*
  %32 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %33 = bitcast %struct._GimpSessionInfo* %32 to i8*
  %call38 = call i32 @g_signal_handlers_disconnect_matched(i8* %31, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GimpSessionInfo*)* @gimp_session_info_dialog_show to i8*), i8* %33)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.35, %if.end.32
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %35 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p40 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %35, i32 0, i32 1
  %36 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p40, align 8
  %widget41 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %36, i32 0, i32 10
  store %struct._GtkWidget* %34, %struct._GtkWidget** %widget41, align 8
  br label %return

return:                                           ; preds = %if.end.39, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_session_info_clear_info(%struct._GimpSessionInfo* %info) #3 {
entry:
  %info.addr = alloca %struct._GimpSessionInfo*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpSessionInfo* %info, %struct._GimpSessionInfo** %info.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %1 = bitcast %struct._GimpSessionInfo* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_session_info_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_session_info_clear_info, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.25

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %13, i32 0, i32 1
  %14 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p, align 8
  %aux_info = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %14, i32 0, i32 9
  %15 = load %struct._GList*, %struct._GList** %aux_info, align 8
  %tobool11 = icmp ne %struct._GList* %15, null
  br i1 %tobool11, label %if.then.12, label %if.end.17

if.then.12:                                       ; preds = %do.end
  %16 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p13 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %16, i32 0, i32 1
  %17 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p13, align 8
  %aux_info14 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %17, i32 0, i32 9
  %18 = load %struct._GList*, %struct._GList** %aux_info14, align 8
  call void @g_list_free_full(%struct._GList* %18, void (i8*)* bitcast (void (%struct._GimpSessionInfoAux*)* @gimp_session_info_aux_free to void (i8*)*))
  %19 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p15 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %19, i32 0, i32 1
  %20 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p15, align 8
  %aux_info16 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %20, i32 0, i32 9
  store %struct._GList* null, %struct._GList** %aux_info16, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.12, %do.end
  %21 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p18 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %21, i32 0, i32 1
  %22 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p18, align 8
  %docks = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %22, i32 0, i32 11
  %23 = load %struct._GList*, %struct._GList** %docks, align 8
  %tobool19 = icmp ne %struct._GList* %23, null
  br i1 %tobool19, label %if.then.20, label %if.end.25

if.then.20:                                       ; preds = %if.end.17
  %24 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p21 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %24, i32 0, i32 1
  %25 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p21, align 8
  %docks22 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %25, i32 0, i32 11
  %26 = load %struct._GList*, %struct._GList** %docks22, align 8
  call void @g_list_free_full(%struct._GList* %26, void (i8*)* bitcast (void (%struct._GimpSessionInfoDock*)* @gimp_session_info_dock_free to void (i8*)*))
  %27 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p23 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %27, i32 0, i32 1
  %28 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p23, align 8
  %docks24 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %28, i32 0, i32 11
  store %struct._GList* null, %struct._GList** %docks24, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.9, %if.then.20, %if.end.17
  ret void
}

declare void @g_list_free_full(%struct._GList*, void (i8*)*) #1

declare void @gimp_session_info_aux_free(%struct._GimpSessionInfoAux*) #1

declare void @gimp_session_info_dock_free(%struct._GimpSessionInfoDock*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_session_info_is_singleton(%struct._GimpSessionInfo* %info) #3 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct._GimpSessionInfo*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpSessionInfo* %info, %struct._GimpSessionInfo** %info.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %1 = bitcast %struct._GimpSessionInfo* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_session_info_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_session_info_is_singleton, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %call11 = call i32 @gimp_session_info_is_for_dock_window(%struct._GimpSessionInfo* %13)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %land.end, label %land.lhs.true.13

land.lhs.true.13:                                 ; preds = %do.end
  %14 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %14, i32 0, i32 1
  %15 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p, align 8
  %factory_entry = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %15, i32 0, i32 0
  %16 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %factory_entry, align 8
  %tobool14 = icmp ne %struct._GimpDialogFactoryEntry* %16, null
  br i1 %tobool14, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.13
  %17 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p15 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %17, i32 0, i32 1
  %18 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p15, align 8
  %factory_entry16 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %18, i32 0, i32 0
  %19 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %factory_entry16, align 8
  %singleton = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %19, i32 0, i32 8
  %20 = load i32, i32* %singleton, align 4
  %tobool17 = icmp ne i32 %20, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.13, %do.end
  %21 = phi i1 [ false, %land.lhs.true.13 ], [ false, %do.end ], [ %tobool17, %land.rhs ]
  %land.ext = zext i1 %21 to i32
  store i32 %land.ext, i32* %retval
  br label %return

return:                                           ; preds = %land.end, %if.else.9
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_session_info_is_for_dock_window(%struct._GimpSessionInfo* %info) #3 {
entry:
  %info.addr = alloca %struct._GimpSessionInfo*, align 8
  %entry_state_for_dock = alloca i32, align 4
  %widget_state_for_dock = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpSessionInfo* %info, %struct._GimpSessionInfo** %info.addr, align 8
  %0 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %0, i32 0, i32 1
  %1 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p, align 8
  %factory_entry = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %1, i32 0, i32 0
  %2 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %factory_entry, align 8
  %cmp = icmp eq %struct._GimpDialogFactoryEntry* %2, null
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %entry_state_for_dock, align 4
  %3 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p1 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %3, i32 0, i32 1
  %4 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p1, align 8
  %widget = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %4, i32 0, i32 10
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %cmp2 = icmp eq %struct._GtkWidget* %5, null
  br i1 %cmp2, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %6 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p4 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %6, i32 0, i32 1
  %7 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p4, align 8
  %widget5 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %7, i32 0, i32 10
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget5, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %9, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dock_window_get_type() #5
  store i64 %call, i64* %__t, align 8
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %10, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %lor.rhs
  store i32 0, i32* %__r, align 4
  br label %if.end.13

if.else:                                          ; preds = %lor.rhs
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %11, i32 0, i32 0
  %12 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool6 = icmp ne %struct._GTypeClass* %12, null
  br i1 %tobool6, label %land.lhs.true, label %if.else.11

land.lhs.true:                                    ; preds = %if.else
  %13 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class7 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %13, i32 0, i32 0
  %14 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class7, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %14, i32 0, i32 0
  %15 = load i64, i64* %g_type, align 8
  %16 = load i64, i64* %__t, align 8
  %cmp8 = icmp eq i64 %15, %16
  br i1 %cmp8, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.11:                                       ; preds = %land.lhs.true, %if.else
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %18 = load i64, i64* %__t, align 8
  %call12 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %17, i64 %18) #6
  store i32 %call12, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.11, %if.then.10
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then
  %19 = load i32, i32* %__r, align 4
  store i32 %19, i32* %tmp
  %20 = load i32, i32* %tmp
  %tobool14 = icmp ne i32 %20, 0
  br label %lor.end

lor.end:                                          ; preds = %if.end.13, %entry
  %21 = phi i1 [ true, %entry ], [ %tobool14, %if.end.13 ]
  %lor.ext = zext i1 %21 to i32
  store i32 %lor.ext, i32* %widget_state_for_dock, align 4
  %22 = load i32, i32* %entry_state_for_dock, align 4
  %tobool15 = icmp ne i32 %22, 0
  br i1 %tobool15, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.end
  %23 = load i32, i32* %widget_state_for_dock, align 4
  %tobool16 = icmp ne i32 %23, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.end
  %24 = phi i1 [ false, %lor.end ], [ %tobool16, %land.rhs ]
  %land.ext = zext i1 %24 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define i32 @gimp_session_info_is_session_managed(%struct._GimpSessionInfo* %info) #3 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct._GimpSessionInfo*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpSessionInfo* %info, %struct._GimpSessionInfo** %info.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %1 = bitcast %struct._GimpSessionInfo* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_session_info_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_session_info_is_session_managed, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %call11 = call i32 @gimp_session_info_is_for_dock_window(%struct._GimpSessionInfo* %13)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.end
  %14 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %14, i32 0, i32 1
  %15 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p, align 8
  %factory_entry = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %15, i32 0, i32 0
  %16 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %factory_entry, align 8
  %tobool13 = icmp ne %struct._GimpDialogFactoryEntry* %16, null
  br i1 %tobool13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %17 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p14 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %17, i32 0, i32 1
  %18 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p14, align 8
  %factory_entry15 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %18, i32 0, i32 0
  %19 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %factory_entry15, align 8
  %session_managed = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %19, i32 0, i32 9
  %20 = load i32, i32* %session_managed, align 4
  %tobool16 = icmp ne i32 %20, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %21 = phi i1 [ false, %lor.rhs ], [ %tobool16, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %do.end
  %22 = phi i1 [ true, %do.end ], [ %21, %land.end ]
  %lor.ext = zext i1 %22 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

return:                                           ; preds = %lor.end, %if.else.9
  %23 = load i32, i32* %retval
  ret i32 %23
}

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpDialogFactoryEntry* @gimp_session_info_get_factory_entry(%struct._GimpSessionInfo* %info) #3 {
entry:
  %retval = alloca %struct._GimpDialogFactoryEntry*, align 8
  %info.addr = alloca %struct._GimpSessionInfo*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpSessionInfo* %info, %struct._GimpSessionInfo** %info.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %1 = bitcast %struct._GimpSessionInfo* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_session_info_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_session_info_get_factory_entry, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpDialogFactoryEntry* null, %struct._GimpDialogFactoryEntry** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %13, i32 0, i32 1
  %14 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p, align 8
  %factory_entry = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %14, i32 0, i32 0
  %15 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %factory_entry, align 8
  store %struct._GimpDialogFactoryEntry* %15, %struct._GimpDialogFactoryEntry** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %retval
  ret %struct._GimpDialogFactoryEntry* %16
}

; Function Attrs: nounwind uwtable
define void @gimp_session_info_set_factory_entry(%struct._GimpSessionInfo* %info, %struct._GimpDialogFactoryEntry* %entry1) #3 {
entry:
  %info.addr = alloca %struct._GimpSessionInfo*, align 8
  %entry.addr = alloca %struct._GimpDialogFactoryEntry*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpSessionInfo* %info, %struct._GimpSessionInfo** %info.addr, align 8
  store %struct._GimpDialogFactoryEntry* %entry1, %struct._GimpDialogFactoryEntry** %entry.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %1 = bitcast %struct._GimpSessionInfo* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_session_info_get_type() #5
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool2 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %12, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_session_info_set_factory_entry, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  %13 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry.addr, align 8
  %14 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %14, i32 0, i32 1
  %15 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p, align 8
  %factory_entry = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %15, i32 0, i32 0
  store %struct._GimpDialogFactoryEntry* %13, %struct._GimpDialogFactoryEntry** %factory_entry, align 8
  br label %return

return:                                           ; preds = %do.end, %if.else.10
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_session_info_get_open(%struct._GimpSessionInfo* %info) #3 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct._GimpSessionInfo*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpSessionInfo* %info, %struct._GimpSessionInfo** %info.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %1 = bitcast %struct._GimpSessionInfo* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_session_info_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_session_info_get_open, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %13, i32 0, i32 1
  %14 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p, align 8
  %open = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %14, i32 0, i32 7
  %15 = load i32, i32* %open, align 4
  store i32 %15, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define i32 @gimp_session_info_get_x(%struct._GimpSessionInfo* %info) #3 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct._GimpSessionInfo*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpSessionInfo* %info, %struct._GimpSessionInfo** %info.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %1 = bitcast %struct._GimpSessionInfo* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_session_info_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_session_info_get_x, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %13, i32 0, i32 1
  %14 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p, align 8
  %x = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %14, i32 0, i32 1
  %15 = load i32, i32* %x, align 4
  store i32 %15, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define i32 @gimp_session_info_get_y(%struct._GimpSessionInfo* %info) #3 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct._GimpSessionInfo*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpSessionInfo* %info, %struct._GimpSessionInfo** %info.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %1 = bitcast %struct._GimpSessionInfo* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_session_info_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_session_info_get_y, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %13, i32 0, i32 1
  %14 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p, align 8
  %y = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %14, i32 0, i32 2
  %15 = load i32, i32* %y, align 4
  store i32 %15, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define i32 @gimp_session_info_get_width(%struct._GimpSessionInfo* %info) #3 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct._GimpSessionInfo*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpSessionInfo* %info, %struct._GimpSessionInfo** %info.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %1 = bitcast %struct._GimpSessionInfo* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_session_info_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_session_info_get_width, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %13, i32 0, i32 1
  %14 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p, align 8
  %width = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %14, i32 0, i32 3
  %15 = load i32, i32* %width, align 4
  store i32 %15, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define i32 @gimp_session_info_get_height(%struct._GimpSessionInfo* %info) #3 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct._GimpSessionInfo*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpSessionInfo* %info, %struct._GimpSessionInfo** %info.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %1 = bitcast %struct._GimpSessionInfo* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_session_info_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_session_info_get_height, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %p = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %13, i32 0, i32 1
  %14 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p, align 8
  %height = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %14, i32 0, i32 4
  %15 = load i32, i32* %height, align 4
  store i32 %15, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define void @gimp_session_info_class_set_position_accuracy(%struct._GimpSessionInfoClass* %klass, i32 %accuracy) #3 {
entry:
  %klass.addr = alloca %struct._GimpSessionInfoClass*, align 8
  %accuracy.addr = alloca i32, align 4
  %__class = alloca %struct._GTypeClass*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpSessionInfoClass* %klass, %struct._GimpSessionInfoClass** %klass.addr, align 8
  store i32 %accuracy, i32* %accuracy.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSessionInfoClass*, %struct._GimpSessionInfoClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpSessionInfoClass* %0 to %struct._GTypeClass*
  store %struct._GTypeClass* %1, %struct._GTypeClass** %__class, align 8
  %call = call i64 @gimp_session_info_get_type() #5
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeClass*, %struct._GTypeClass** %__class, align 8
  %tobool = icmp ne %struct._GTypeClass* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeClass*, %struct._GTypeClass** %__class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %3, i32 0, i32 0
  %4 = load i64, i64* %g_type, align 8
  %5 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %4, %5
  br i1 %cmp, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.2:                                        ; preds = %if.else
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %__class, align 8
  %7 = load i64, i64* %__t, align 8
  %call3 = call i32 @g_type_check_class_is_a(%struct._GTypeClass* %6, i64 %7) #6
  store i32 %call3, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.2, %if.then.1
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %8 = load i32, i32* %__r, align 4
  store i32 %8, i32* %tmp
  %9 = load i32, i32* %tmp
  %tobool5 = icmp ne i32 %9, 0
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end.4
  br label %if.end.8

if.else.7:                                        ; preds = %if.end.4
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__func__.gimp_session_info_class_set_position_accuracy, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0))
  br label %return

if.end.8:                                         ; preds = %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.8
  %10 = load i32, i32* %accuracy.addr, align 4
  %11 = load %struct._GimpSessionInfoClass*, %struct._GimpSessionInfoClass** %klass.addr, align 8
  %position_accuracy = getelementptr inbounds %struct._GimpSessionInfoClass, %struct._GimpSessionInfoClass* %11, i32 0, i32 1
  store i32 %10, i32* %position_accuracy, align 4
  br label %return

return:                                           ; preds = %do.end, %if.else.7
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_class_is_a(%struct._GTypeClass*, i64) #4

; Function Attrs: nounwind uwtable
define i32 @gimp_session_info_class_apply_position_accuracy(%struct._GimpSessionInfoClass* %klass, i32 %position) #3 {
entry:
  %retval = alloca i32, align 4
  %klass.addr = alloca %struct._GimpSessionInfoClass*, align 8
  %position.addr = alloca i32, align 4
  %__class = alloca %struct._GTypeClass*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %to_floor = alloca i32, align 4
  store %struct._GimpSessionInfoClass* %klass, %struct._GimpSessionInfoClass** %klass.addr, align 8
  store i32 %position, i32* %position.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSessionInfoClass*, %struct._GimpSessionInfoClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpSessionInfoClass* %0 to %struct._GTypeClass*
  store %struct._GTypeClass* %1, %struct._GTypeClass** %__class, align 8
  %call = call i64 @gimp_session_info_get_type() #5
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeClass*, %struct._GTypeClass** %__class, align 8
  %tobool = icmp ne %struct._GTypeClass* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeClass*, %struct._GTypeClass** %__class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %3, i32 0, i32 0
  %4 = load i64, i64* %g_type, align 8
  %5 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %4, %5
  br i1 %cmp, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.2:                                        ; preds = %if.else
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %__class, align 8
  %7 = load i64, i64* %__t, align 8
  %call3 = call i32 @g_type_check_class_is_a(%struct._GTypeClass* %6, i64 %7) #6
  store i32 %call3, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.2, %if.then.1
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %8 = load i32, i32* %__r, align 4
  store i32 %8, i32* %tmp
  %9 = load i32, i32* %tmp
  %tobool5 = icmp ne i32 %9, 0
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end.4
  br label %if.end.8

if.else.7:                                        ; preds = %if.end.4
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__func__.gimp_session_info_class_apply_position_accuracy, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0))
  %10 = load i32, i32* %position.addr, align 4
  store i32 %10, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.8
  %11 = load %struct._GimpSessionInfoClass*, %struct._GimpSessionInfoClass** %klass.addr, align 8
  %position_accuracy = getelementptr inbounds %struct._GimpSessionInfoClass, %struct._GimpSessionInfoClass* %11, i32 0, i32 1
  %12 = load i32, i32* %position_accuracy, align 4
  %cmp9 = icmp sgt i32 %12, 0
  br i1 %cmp9, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %do.end
  %13 = load i32, i32* %position.addr, align 4
  %14 = load %struct._GimpSessionInfoClass*, %struct._GimpSessionInfoClass** %klass.addr, align 8
  %position_accuracy12 = getelementptr inbounds %struct._GimpSessionInfoClass, %struct._GimpSessionInfoClass* %14, i32 0, i32 1
  %15 = load i32, i32* %position_accuracy12, align 4
  %div = sdiv i32 %15, 2
  %add = add nsw i32 %13, %div
  store i32 %add, i32* %to_floor, align 4
  %16 = load i32, i32* %to_floor, align 4
  %17 = load i32, i32* %to_floor, align 4
  %18 = load %struct._GimpSessionInfoClass*, %struct._GimpSessionInfoClass** %klass.addr, align 8
  %position_accuracy13 = getelementptr inbounds %struct._GimpSessionInfoClass, %struct._GimpSessionInfoClass* %18, i32 0, i32 1
  %19 = load i32, i32* %position_accuracy13, align 4
  %rem = srem i32 %17, %19
  %sub = sub nsw i32 %16, %rem
  store i32 %sub, i32* %retval
  br label %return

if.end.14:                                        ; preds = %do.end
  %20 = load i32, i32* %position.addr, align 4
  store i32 %20, i32* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.10, %if.else.7
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_session_info_class_init(%struct._GimpSessionInfoClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpSessionInfoClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %gimp_object_class = alloca %struct._GimpObjectClass*, align 8
  store %struct._GimpSessionInfoClass* %klass, %struct._GimpSessionInfoClass** %klass.addr, align 8
  %0 = load %struct._GimpSessionInfoClass*, %struct._GimpSessionInfoClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpSessionInfoClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpSessionInfoClass*, %struct._GimpSessionInfoClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpSessionInfoClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_object_get_type() #5
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpObjectClass*
  store %struct._GimpObjectClass* %5, %struct._GimpObjectClass** %gimp_object_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_session_info_finalize, void (%struct._GObject*)** %finalize, align 8
  %7 = load %struct._GimpObjectClass*, %struct._GimpObjectClass** %gimp_object_class, align 8
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %7, i32 0, i32 3
  store i64 (%struct._GimpObject*, i64*)* @gimp_session_info_get_memsize, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %8 = load %struct._GimpSessionInfoClass*, %struct._GimpSessionInfoClass** %klass.addr, align 8
  %9 = bitcast %struct._GimpSessionInfoClass* %8 to i8*
  call void @g_type_class_add_private(i8* %9, i64 64)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_session_info_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %info = alloca %struct._GimpSessionInfo*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_session_info_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSessionInfo*
  store %struct._GimpSessionInfo* %2, %struct._GimpSessionInfo** %info, align 8
  %3 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  call void @gimp_session_info_clear_info(%struct._GimpSessionInfo* %3)
  %4 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  call void @gimp_session_info_set_widget(%struct._GimpSessionInfo* %4, %struct._GtkWidget* null)
  %5 = load i8*, i8** @gimp_session_info_parent_class, align 8
  %6 = bitcast i8* %5 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %6, i64 80)
  %7 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 6
  %8 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %9 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %8(%struct._GObject* %9)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @gimp_session_info_get_memsize(%struct._GimpObject* %object, i64* %gui_size) #3 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %gui_size.addr = alloca i64*, align 8
  %memsize = alloca i64, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store i64* %gui_size, i64** %gui_size.addr, align 8
  store i64 0, i64* %memsize, align 8
  %0 = load i64, i64* %memsize, align 8
  %1 = load i8*, i8** @gimp_session_info_parent_class, align 8
  %2 = bitcast i8* %1 to %struct._GTypeClass*
  %call = call i64 @gimp_object_get_type() #5
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %2, i64 %call)
  %3 = bitcast %struct._GTypeClass* %call1 to %struct._GimpObjectClass*
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %3, i32 0, i32 3
  %4 = load i64 (%struct._GimpObject*, i64*)*, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %5 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %6 = load i64*, i64** %gui_size.addr, align 8
  %call2 = call i64 %4(%struct._GimpObject* %5, i64* %6)
  %add = add nsw i64 %0, %call2
  ret i64 %add
}

declare void @g_type_class_add_private(i8*, i64) #1

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_session_info_serialize(%struct._GimpConfig* %config, %struct._GimpConfigWriter* %writer, i8* %data) #3 {
entry:
  %config.addr = alloca %struct._GimpConfig*, align 8
  %writer.addr = alloca %struct._GimpConfigWriter*, align 8
  %data.addr = alloca i8*, align 8
  %info = alloca %struct._GimpSessionInfo*, align 8
  %klass = alloca %struct._GimpSessionInfoClass*, align 8
  %iter = alloca %struct._GList*, align 8
  %x_to_write = alloca i32, align 4
  %y_to_write = alloca i32, align 4
  %w_to_write = alloca i32, align 4
  %h_to_write = alloca i32, align 4
  store %struct._GimpConfig* %config, %struct._GimpConfig** %config.addr, align 8
  store %struct._GimpConfigWriter* %writer, %struct._GimpConfigWriter** %writer.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %1 = bitcast %struct._GimpConfig* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_session_info_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSessionInfo*
  store %struct._GimpSessionInfo* %2, %struct._GimpSessionInfo** %info, align 8
  %3 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %4 = bitcast %struct._GimpSessionInfo* %3 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %6 = bitcast %struct._GTypeClass* %5 to %struct._GimpSessionInfoClass*
  store %struct._GimpSessionInfoClass* %6, %struct._GimpSessionInfoClass** %klass, align 8
  store %struct._GList* null, %struct._GList** %iter, align 8
  %7 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %p = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %7, i32 0, i32 1
  %8 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p, align 8
  %factory_entry = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %8, i32 0, i32 0
  %9 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %factory_entry, align 8
  %tobool = icmp ne %struct._GimpDialogFactoryEntry* %9, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %10 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %p2 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %10, i32 0, i32 1
  %11 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p2, align 8
  %factory_entry3 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %11, i32 0, i32 0
  %12 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %factory_entry3, align 8
  %identifier = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %12, i32 0, i32 0
  %13 = load i8*, i8** %identifier, align 8
  %tobool4 = icmp ne i8* %13, null
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %14 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  call void @gimp_config_writer_open(%struct._GimpConfigWriter* %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0))
  %15 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %16 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %p5 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %16, i32 0, i32 1
  %17 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p5, align 8
  %factory_entry6 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %17, i32 0, i32 0
  %18 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %factory_entry6, align 8
  %identifier7 = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %18, i32 0, i32 0
  %19 = load i8*, i8** %identifier7, align 8
  call void @gimp_config_writer_string(%struct._GimpConfigWriter* %15, i8* %19)
  %20 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  call void @gimp_config_writer_close(%struct._GimpConfigWriter* %20)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %21 = load %struct._GimpSessionInfoClass*, %struct._GimpSessionInfoClass** %klass, align 8
  %22 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %p8 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %22, i32 0, i32 1
  %23 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p8, align 8
  %x = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %23, i32 0, i32 1
  %24 = load i32, i32* %x, align 4
  %call9 = call i32 @gimp_session_info_class_apply_position_accuracy(%struct._GimpSessionInfoClass* %21, i32 %24)
  store i32 %call9, i32* %x_to_write, align 4
  %25 = load %struct._GimpSessionInfoClass*, %struct._GimpSessionInfoClass** %klass, align 8
  %26 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %p10 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %26, i32 0, i32 1
  %27 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p10, align 8
  %y = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %27, i32 0, i32 2
  %28 = load i32, i32* %y, align 4
  %call11 = call i32 @gimp_session_info_class_apply_position_accuracy(%struct._GimpSessionInfoClass* %25, i32 %28)
  store i32 %call11, i32* %y_to_write, align 4
  %29 = load %struct._GimpSessionInfoClass*, %struct._GimpSessionInfoClass** %klass, align 8
  %30 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %p12 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %30, i32 0, i32 1
  %31 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p12, align 8
  %width = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %31, i32 0, i32 3
  %32 = load i32, i32* %width, align 4
  %call13 = call i32 @gimp_session_info_class_apply_position_accuracy(%struct._GimpSessionInfoClass* %29, i32 %32)
  store i32 %call13, i32* %w_to_write, align 4
  %33 = load %struct._GimpSessionInfoClass*, %struct._GimpSessionInfoClass** %klass, align 8
  %34 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %p14 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %34, i32 0, i32 1
  %35 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p14, align 8
  %height = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %35, i32 0, i32 4
  %36 = load i32, i32* %height, align 4
  %call15 = call i32 @gimp_session_info_class_apply_position_accuracy(%struct._GimpSessionInfoClass* %33, i32 %36)
  store i32 %call15, i32* %h_to_write, align 4
  %37 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  call void @gimp_config_writer_open(%struct._GimpConfigWriter* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0))
  %38 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %39 = load i32, i32* %x_to_write, align 4
  %40 = load i32, i32* %y_to_write, align 4
  call void (%struct._GimpConfigWriter*, i8*, ...) @gimp_config_writer_printf(%struct._GimpConfigWriter* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 %39, i32 %40)
  %41 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  call void @gimp_config_writer_close(%struct._GimpConfigWriter* %41)
  %42 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %p16 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %42, i32 0, i32 1
  %43 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p16, align 8
  %width17 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %43, i32 0, i32 3
  %44 = load i32, i32* %width17, align 4
  %cmp = icmp sgt i32 %44, 0
  br i1 %cmp, label %land.lhs.true.18, label %if.end.23

land.lhs.true.18:                                 ; preds = %if.end
  %45 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %p19 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %45, i32 0, i32 1
  %46 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p19, align 8
  %height20 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %46, i32 0, i32 4
  %47 = load i32, i32* %height20, align 4
  %cmp21 = icmp sgt i32 %47, 0
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %land.lhs.true.18
  %48 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  call void @gimp_config_writer_open(%struct._GimpConfigWriter* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0))
  %49 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %50 = load i32, i32* %w_to_write, align 4
  %51 = load i32, i32* %h_to_write, align 4
  call void (%struct._GimpConfigWriter*, i8*, ...) @gimp_config_writer_printf(%struct._GimpConfigWriter* %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 %50, i32 %51)
  %52 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  call void @gimp_config_writer_close(%struct._GimpConfigWriter* %52)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %land.lhs.true.18, %if.end
  %53 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %p24 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %53, i32 0, i32 1
  %54 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p24, align 8
  %open = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %54, i32 0, i32 7
  %55 = load i32, i32* %open, align 4
  %tobool25 = icmp ne i32 %55, 0
  br i1 %tobool25, label %if.then.26, label %if.end.33

if.then.26:                                       ; preds = %if.end.23
  %56 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  call void @gimp_config_writer_open(%struct._GimpConfigWriter* %56, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0))
  %57 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %p27 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %57, i32 0, i32 1
  %58 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p27, align 8
  %screen = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %58, i32 0, i32 8
  %59 = load i32, i32* %screen, align 4
  %cmp28 = icmp ne i32 %59, -1
  br i1 %cmp28, label %if.then.29, label %if.end.32

if.then.29:                                       ; preds = %if.then.26
  %60 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %61 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %p30 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %61, i32 0, i32 1
  %62 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p30, align 8
  %screen31 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %62, i32 0, i32 8
  %63 = load i32, i32* %screen31, align 4
  call void (%struct._GimpConfigWriter*, i8*, ...) @gimp_config_writer_printf(%struct._GimpConfigWriter* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i32 %63)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.29, %if.then.26
  %64 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  call void @gimp_config_writer_close(%struct._GimpConfigWriter* %64)
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.end.23
  %65 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %p34 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %65, i32 0, i32 1
  %66 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p34, align 8
  %aux_info = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %66, i32 0, i32 9
  %67 = load %struct._GList*, %struct._GList** %aux_info, align 8
  %tobool35 = icmp ne %struct._GList* %67, null
  br i1 %tobool35, label %if.then.36, label %if.end.39

if.then.36:                                       ; preds = %if.end.33
  %68 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %69 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %p37 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %69, i32 0, i32 1
  %70 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p37, align 8
  %aux_info38 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %70, i32 0, i32 9
  %71 = load %struct._GList*, %struct._GList** %aux_info38, align 8
  call void @gimp_session_info_aux_serialize(%struct._GimpConfigWriter* %68, %struct._GList* %71)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.36, %if.end.33
  %72 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %p40 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %72, i32 0, i32 1
  %73 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p40, align 8
  %docks = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %73, i32 0, i32 11
  %74 = load %struct._GList*, %struct._GList** %docks, align 8
  store %struct._GList* %74, %struct._GList** %iter, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end.39
  %75 = load %struct._GList*, %struct._GList** %iter, align 8
  %tobool41 = icmp ne %struct._GList* %75, null
  br i1 %tobool41, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %76 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %77 = load %struct._GList*, %struct._GList** %iter, align 8
  %data42 = getelementptr inbounds %struct._GList, %struct._GList* %77, i32 0, i32 0
  %78 = load i8*, i8** %data42, align 8
  %79 = bitcast i8* %78 to %struct._GimpSessionInfoDock*
  call void @gimp_session_info_dock_serialize(%struct._GimpConfigWriter* %76, %struct._GimpSessionInfoDock* %79)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %80 = load %struct._GList*, %struct._GList** %iter, align 8
  %tobool43 = icmp ne %struct._GList* %80, null
  br i1 %tobool43, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %81 = load %struct._GList*, %struct._GList** %iter, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %81, i32 0, i32 1
  %82 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %82, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %iter, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_session_info_deserialize(%struct._GimpConfig* %config, %struct._GScanner* %scanner, i32 %nest_level, i8* %data) #3 {
entry:
  %config.addr = alloca %struct._GimpConfig*, align 8
  %scanner.addr = alloca %struct._GScanner*, align 8
  %nest_level.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %info = alloca %struct._GimpSessionInfo*, align 8
  %token = alloca i32, align 4
  %scope_id = alloca i32, align 4
  %old_scope_id = alloca i32, align 4
  %identifier = alloca i8*, align 8
  %entry8 = alloca %struct._GimpDialogFactoryEntry*, align 8
  %dock_info = alloca %struct._GimpSessionInfoDock*, align 8
  %dock_type = alloca i8*, align 8
  store %struct._GimpConfig* %config, %struct._GimpConfig** %config.addr, align 8
  store %struct._GScanner* %scanner, %struct._GScanner** %scanner.addr, align 8
  store i32 %nest_level, i32* %nest_level.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %1 = bitcast %struct._GimpConfig* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_session_info_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSessionInfo*
  store %struct._GimpSessionInfo* %2, %struct._GimpSessionInfo** %info, align 8
  %3 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %4 = bitcast %struct._GimpConfig* %3 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %5, i32 0, i32 0
  %6 = load i64, i64* %g_type, align 8
  %call2 = call i32 @g_type_qname(i64 %6)
  store i32 %call2, i32* %scope_id, align 4
  %7 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %8 = load i32, i32* %scope_id, align 4
  %call3 = call i32 @g_scanner_set_scope(%struct._GScanner* %7, i32 %8)
  store i32 %call3, i32* %old_scope_id, align 4
  %9 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %10 = load i32, i32* %scope_id, align 4
  call void @g_scanner_scope_add_symbol(%struct._GScanner* %9, i32 %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %11 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %12 = load i32, i32* %scope_id, align 4
  call void @g_scanner_scope_add_symbol(%struct._GScanner* %11, i32 %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* inttoptr (i64 1 to i8*))
  %13 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %14 = load i32, i32* %scope_id, align 4
  call void @g_scanner_scope_add_symbol(%struct._GScanner* %13, i32 %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* inttoptr (i64 2 to i8*))
  %15 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %16 = load i32, i32* %scope_id, align 4
  call void @g_scanner_scope_add_symbol(%struct._GScanner* %15, i32 %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i8* inttoptr (i64 3 to i8*))
  %17 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %18 = load i32, i32* %scope_id, align 4
  call void @g_scanner_scope_add_symbol(%struct._GScanner* %17, i32 %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i8* inttoptr (i64 4 to i8*))
  %19 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %20 = load i32, i32* %scope_id, align 4
  call void @g_scanner_scope_add_symbol(%struct._GScanner* %19, i32 %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* inttoptr (i64 6 to i8*))
  %21 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %22 = load i32, i32* %scope_id, align 4
  call void @g_scanner_scope_add_symbol(%struct._GScanner* %21, i32 %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), i8* inttoptr (i64 7 to i8*))
  %23 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %24 = load i32, i32* %scope_id, align 4
  call void @g_scanner_scope_add_symbol(%struct._GScanner* %23, i32 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i8* inttoptr (i64 5 to i8*))
  store i32 40, i32* %token, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog.99, %entry
  %25 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call4 = call i32 @g_scanner_peek_next_token(%struct._GScanner* %25)
  %26 = load i32, i32* %token, align 4
  %cmp = icmp eq i32 %call4, %26
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %27 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call5 = call i32 @g_scanner_get_next_token(%struct._GScanner* %27)
  store i32 %call5, i32* %token, align 4
  %28 = load i32, i32* %token, align 4
  switch i32 %28, label %sw.default.98 [
    i32 40, label %sw.bb
    i32 265, label %sw.bb.6
    i32 41, label %sw.bb.97
  ]

sw.bb:                                            ; preds = %while.body
  store i32 265, i32* %token, align 4
  br label %sw.epilog.99

sw.bb.6:                                          ; preds = %while.body
  %29 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value = getelementptr inbounds %struct._GScanner, %struct._GScanner* %29, i32 0, i32 7
  %v_symbol = bitcast %union._GTokenValue* %value to i8**
  %30 = load i8*, i8** %v_symbol, align 8
  %31 = ptrtoint i8* %30 to i64
  %conv = trunc i64 %31 to i32
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb.7
    i32 1, label %sw.bb.15
    i32 2, label %sw.bb.27
    i32 3, label %sw.bb.38
    i32 4, label %sw.bb.50
    i32 7, label %sw.bb.57
    i32 6, label %sw.bb.57
    i32 5, label %sw.bb.57
  ]

sw.bb.7:                                          ; preds = %sw.bb.6
  store i8* null, i8** %identifier, align 8
  store %struct._GimpDialogFactoryEntry* null, %struct._GimpDialogFactoryEntry** %entry8, align 8
  store i32 264, i32* %token, align 4
  %32 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call9 = call i32 @gimp_scanner_parse_string(%struct._GScanner* %32, i8** %identifier)
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb.7
  br label %error

if.end:                                           ; preds = %sw.bb.7
  %call10 = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  %33 = load i8*, i8** %identifier, align 8
  %call11 = call %struct._GimpDialogFactoryEntry* @gimp_dialog_factory_find_entry(%struct._GimpDialogFactory* %call10, i8* %33)
  store %struct._GimpDialogFactoryEntry* %call11, %struct._GimpDialogFactoryEntry** %entry8, align 8
  %34 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry8, align 8
  %tobool12 = icmp ne %struct._GimpDialogFactoryEntry* %34, null
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.end
  br label %error

if.end.14:                                        ; preds = %if.end
  %35 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %36 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry8, align 8
  call void @gimp_session_info_set_factory_entry(%struct._GimpSessionInfo* %35, %struct._GimpDialogFactoryEntry* %36)
  %37 = load i8*, i8** %identifier, align 8
  call void @g_free(i8* %37)
  br label %sw.epilog

sw.bb.15:                                         ; preds = %sw.bb.6
  store i32 261, i32* %token, align 4
  %38 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %39 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %p = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %39, i32 0, i32 1
  %40 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p, align 8
  %x = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %40, i32 0, i32 1
  %41 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %p16 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %41, i32 0, i32 1
  %42 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p16, align 8
  %right_align = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %42, i32 0, i32 5
  %call17 = call i32 @gimp_session_info_parse_offset(%struct._GScanner* %38, i32* %x, i32* %right_align)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %sw.bb.15
  br label %error

if.end.20:                                        ; preds = %sw.bb.15
  %43 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %44 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %p21 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %44, i32 0, i32 1
  %45 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p21, align 8
  %y = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %45, i32 0, i32 2
  %46 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %p22 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %46, i32 0, i32 1
  %47 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p22, align 8
  %bottom_align = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %47, i32 0, i32 6
  %call23 = call i32 @gimp_session_info_parse_offset(%struct._GScanner* %43, i32* %y, i32* %bottom_align)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %if.end.20
  br label %error

if.end.26:                                        ; preds = %if.end.20
  br label %sw.epilog

sw.bb.27:                                         ; preds = %sw.bb.6
  store i32 261, i32* %token, align 4
  %48 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %49 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %p28 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %49, i32 0, i32 1
  %50 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p28, align 8
  %width = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %50, i32 0, i32 3
  %call29 = call i32 @gimp_scanner_parse_int(%struct._GScanner* %48, i32* %width)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.end.32, label %if.then.31

if.then.31:                                       ; preds = %sw.bb.27
  br label %error

if.end.32:                                        ; preds = %sw.bb.27
  %51 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %52 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %p33 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %52, i32 0, i32 1
  %53 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p33, align 8
  %height = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %53, i32 0, i32 4
  %call34 = call i32 @gimp_scanner_parse_int(%struct._GScanner* %51, i32* %height)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.end.37, label %if.then.36

if.then.36:                                       ; preds = %if.end.32
  br label %error

if.end.37:                                        ; preds = %if.end.32
  br label %sw.epilog

sw.bb.38:                                         ; preds = %sw.bb.6
  %54 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %p39 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %54, i32 0, i32 1
  %55 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p39, align 8
  %open = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %55, i32 0, i32 7
  store i32 1, i32* %open, align 4
  %56 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call40 = call i32 @g_scanner_peek_next_token(%struct._GScanner* %56)
  %cmp41 = icmp eq i32 %call40, 41
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %sw.bb.38
  br label %sw.epilog

if.end.44:                                        ; preds = %sw.bb.38
  store i32 261, i32* %token, align 4
  %57 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %58 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %p45 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %58, i32 0, i32 1
  %59 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p45, align 8
  %screen = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %59, i32 0, i32 8
  %call46 = call i32 @gimp_scanner_parse_int(%struct._GScanner* %57, i32* %screen)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.end.49, label %if.then.48

if.then.48:                                       ; preds = %if.end.44
  br label %error

if.end.49:                                        ; preds = %if.end.44
  br label %sw.epilog

sw.bb.50:                                         ; preds = %sw.bb.6
  %60 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %61 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %p51 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %61, i32 0, i32 1
  %62 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p51, align 8
  %aux_info = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %62, i32 0, i32 9
  %call52 = call i32 @gimp_session_info_aux_deserialize(%struct._GScanner* %60, %struct._GList** %aux_info)
  store i32 %call52, i32* %token, align 4
  %63 = load i32, i32* %token, align 4
  %cmp53 = icmp ne i32 %63, 40
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %sw.bb.50
  br label %error

if.end.56:                                        ; preds = %sw.bb.50
  br label %sw.epilog

sw.bb.57:                                         ; preds = %sw.bb.6, %sw.bb.6, %sw.bb.6
  store %struct._GimpSessionInfoDock* null, %struct._GimpSessionInfoDock** %dock_info, align 8
  store i8* null, i8** %dock_type, align 8
  %64 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value58 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %64, i32 0, i32 7
  %v_symbol59 = bitcast %union._GTokenValue* %value58 to i8**
  %65 = load i8*, i8** %v_symbol59, align 8
  %66 = ptrtoint i8* %65 to i64
  %conv60 = trunc i64 %66 to i32
  %cmp61 = icmp eq i32 %conv60, 5
  br i1 %cmp61, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %sw.bb.57
  %67 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %p63 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %67, i32 0, i32 1
  %68 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p63, align 8
  %factory_entry = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %68, i32 0, i32 0
  %69 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %factory_entry, align 8
  %tobool64 = icmp ne %struct._GimpDialogFactoryEntry* %69, null
  br i1 %tobool64, label %land.lhs.true.65, label %if.else

land.lhs.true.65:                                 ; preds = %land.lhs.true
  %70 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %p66 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %70, i32 0, i32 1
  %71 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p66, align 8
  %factory_entry67 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %71, i32 0, i32 0
  %72 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %factory_entry67, align 8
  %identifier68 = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %72, i32 0, i32 0
  %73 = load i8*, i8** %identifier68, align 8
  %tobool69 = icmp ne i8* %73, null
  br i1 %tobool69, label %land.lhs.true.70, label %if.else

land.lhs.true.70:                                 ; preds = %land.lhs.true.65
  %74 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %p71 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %74, i32 0, i32 1
  %75 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p71, align 8
  %factory_entry72 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %75, i32 0, i32 0
  %76 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %factory_entry72, align 8
  %identifier73 = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %76, i32 0, i32 0
  %77 = load i8*, i8** %identifier73, align 8
  %call74 = call i32 @strcmp(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0), i8* %77) #6
  %cmp75 = icmp eq i32 %call74, 0
  br i1 %cmp75, label %if.then.77, label %if.else

if.then.77:                                       ; preds = %land.lhs.true.70
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), i8** %dock_type, align 8
  br label %if.end.83

if.else:                                          ; preds = %land.lhs.true.70, %land.lhs.true.65, %land.lhs.true, %sw.bb.57
  %78 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value78 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %78, i32 0, i32 7
  %v_symbol79 = bitcast %union._GTokenValue* %value78 to i8**
  %79 = load i8*, i8** %v_symbol79, align 8
  %80 = ptrtoint i8* %79 to i64
  %conv80 = trunc i64 %80 to i32
  %cmp81 = icmp eq i32 %conv80, 7
  %cond = select i1 %cmp81, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0)
  store i8* %cond, i8** %dock_type, align 8
  br label %if.end.83

if.end.83:                                        ; preds = %if.else, %if.then.77
  %81 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %82 = load i32, i32* %scope_id, align 4
  %add = add i32 %82, 1
  %call84 = call i32 @g_scanner_set_scope(%struct._GScanner* %81, i32 %add)
  %83 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %84 = load i32, i32* %scope_id, align 4
  %add85 = add i32 %84, 1
  %85 = load i8*, i8** %dock_type, align 8
  %call86 = call i32 @gimp_session_info_dock_deserialize(%struct._GScanner* %83, i32 %add85, %struct._GimpSessionInfoDock** %dock_info, i8* %85)
  store i32 %call86, i32* %token, align 4
  %86 = load i32, i32* %token, align 4
  %cmp87 = icmp eq i32 %86, 40
  br i1 %cmp87, label %if.then.89, label %if.else.95

if.then.89:                                       ; preds = %if.end.83
  %87 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %88 = load i32, i32* %scope_id, align 4
  %call90 = call i32 @g_scanner_set_scope(%struct._GScanner* %87, i32 %88)
  %89 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %p91 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %89, i32 0, i32 1
  %90 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p91, align 8
  %docks = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %90, i32 0, i32 11
  %91 = load %struct._GList*, %struct._GList** %docks, align 8
  %92 = load %struct._GimpSessionInfoDock*, %struct._GimpSessionInfoDock** %dock_info, align 8
  %93 = bitcast %struct._GimpSessionInfoDock* %92 to i8*
  %call92 = call %struct._GList* @g_list_append(%struct._GList* %91, i8* %93)
  %94 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %p93 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %94, i32 0, i32 1
  %95 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p93, align 8
  %docks94 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %95, i32 0, i32 11
  store %struct._GList* %call92, %struct._GList** %docks94, align 8
  br label %if.end.96

if.else.95:                                       ; preds = %if.end.83
  br label %error

if.end.96:                                        ; preds = %if.then.89
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb.6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.96, %if.end.56, %if.end.49, %if.then.43, %if.end.37, %if.end.26, %if.end.14
  store i32 41, i32* %token, align 4
  br label %sw.epilog.99

sw.bb.97:                                         ; preds = %while.body
  store i32 40, i32* %token, align 4
  br label %sw.epilog.99

sw.default.98:                                    ; preds = %while.body
  br label %sw.epilog.99

sw.epilog.99:                                     ; preds = %sw.default.98, %sw.bb.97, %sw.epilog, %sw.bb
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %error

error:                                            ; preds = %while.end, %if.else.95, %if.then.55, %if.then.48, %if.then.36, %if.then.31, %if.then.25, %if.then.19, %if.then.13, %if.then
  %96 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %p100 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %96, i32 0, i32 1
  %97 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p100, align 8
  %docks101 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %97, i32 0, i32 11
  %98 = load %struct._GList*, %struct._GList** %docks101, align 8
  %tobool102 = icmp ne %struct._GList* %98, null
  br i1 %tobool102, label %if.end.121, label %land.lhs.true.103

land.lhs.true.103:                                ; preds = %error
  %99 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %p104 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %99, i32 0, i32 1
  %100 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p104, align 8
  %factory_entry105 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %100, i32 0, i32 0
  %101 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %factory_entry105, align 8
  %tobool106 = icmp ne %struct._GimpDialogFactoryEntry* %101, null
  br i1 %tobool106, label %land.lhs.true.107, label %if.end.121

land.lhs.true.107:                                ; preds = %land.lhs.true.103
  %102 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %p108 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %102, i32 0, i32 1
  %103 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p108, align 8
  %factory_entry109 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %103, i32 0, i32 0
  %104 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %factory_entry109, align 8
  %identifier110 = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %104, i32 0, i32 0
  %105 = load i8*, i8** %identifier110, align 8
  %call111 = call i32 @strcmp(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0), i8* %105) #6
  %cmp112 = icmp eq i32 %call111, 0
  br i1 %cmp112, label %if.then.114, label %if.end.121

if.then.114:                                      ; preds = %land.lhs.true.107
  %106 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %p115 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %106, i32 0, i32 1
  %107 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p115, align 8
  %docks116 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %107, i32 0, i32 11
  %108 = load %struct._GList*, %struct._GList** %docks116, align 8
  %call117 = call %struct._GimpSessionInfoDock* @gimp_session_info_dock_new(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0))
  %109 = bitcast %struct._GimpSessionInfoDock* %call117 to i8*
  %call118 = call %struct._GList* @g_list_append(%struct._GList* %108, i8* %109)
  %110 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %p119 = getelementptr inbounds %struct._GimpSessionInfo, %struct._GimpSessionInfo* %110, i32 0, i32 1
  %111 = load %struct._GimpSessionInfoPrivate*, %struct._GimpSessionInfoPrivate** %p119, align 8
  %docks120 = getelementptr inbounds %struct._GimpSessionInfoPrivate, %struct._GimpSessionInfoPrivate* %111, i32 0, i32 11
  store %struct._GList* %call118, %struct._GList** %docks120, align 8
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.114, %land.lhs.true.107, %land.lhs.true.103, %error
  %112 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %113 = load i32, i32* %scope_id, align 4
  call void @g_scanner_scope_remove_symbol(%struct._GScanner* %112, i32 %113, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0))
  %114 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %115 = load i32, i32* %scope_id, align 4
  call void @g_scanner_scope_remove_symbol(%struct._GScanner* %114, i32 %115, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0))
  %116 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %117 = load i32, i32* %scope_id, align 4
  call void @g_scanner_scope_remove_symbol(%struct._GScanner* %116, i32 %117, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0))
  %118 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %119 = load i32, i32* %scope_id, align 4
  call void @g_scanner_scope_remove_symbol(%struct._GScanner* %118, i32 %119, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0))
  %120 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %121 = load i32, i32* %scope_id, align 4
  call void @g_scanner_scope_remove_symbol(%struct._GScanner* %120, i32 %121, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0))
  %122 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %123 = load i32, i32* %scope_id, align 4
  call void @g_scanner_scope_remove_symbol(%struct._GScanner* %122, i32 %123, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0))
  %124 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %125 = load i32, i32* %scope_id, align 4
  call void @g_scanner_scope_remove_symbol(%struct._GScanner* %124, i32 %125, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0))
  %126 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %127 = load i32, i32* %scope_id, align 4
  call void @g_scanner_scope_remove_symbol(%struct._GScanner* %126, i32 %127, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0))
  %128 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %129 = load i32, i32* %old_scope_id, align 4
  %call122 = call i32 @g_scanner_set_scope(%struct._GScanner* %128, i32 %129)
  %130 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %131 = load i32, i32* %token, align 4
  %132 = load i32, i32* %nest_level.addr, align 4
  %call123 = call i32 @gimp_config_deserialize_return(%struct._GScanner* %130, i32 %131, i32 %132)
  ret i32 %call123
}

declare void @gimp_config_writer_open(%struct._GimpConfigWriter*, i8*) #1

declare void @gimp_config_writer_string(%struct._GimpConfigWriter*, i8*) #1

declare void @gimp_config_writer_close(%struct._GimpConfigWriter*) #1

declare void @gimp_config_writer_printf(%struct._GimpConfigWriter*, i8*, ...) #1

declare void @gimp_session_info_aux_serialize(%struct._GimpConfigWriter*, %struct._GList*) #1

declare void @gimp_session_info_dock_serialize(%struct._GimpConfigWriter*, %struct._GimpSessionInfoDock*) #1

declare i32 @g_type_qname(i64) #1

declare i32 @g_scanner_set_scope(%struct._GScanner*, i32) #1

declare void @g_scanner_scope_add_symbol(%struct._GScanner*, i32, i8*, i8*) #1

declare i32 @g_scanner_peek_next_token(%struct._GScanner*) #1

declare i32 @g_scanner_get_next_token(%struct._GScanner*) #1

declare i32 @gimp_scanner_parse_string(%struct._GScanner*, i8**) #1

declare %struct._GimpDialogFactoryEntry* @gimp_dialog_factory_find_entry(%struct._GimpDialogFactory*, i8*) #1

declare %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton() #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_session_info_parse_offset(%struct._GScanner* %scanner, i32* %dest, i32* %negative) #3 {
entry:
  %retval = alloca i32, align 4
  %scanner.addr = alloca %struct._GScanner*, align 8
  %dest.addr = alloca i32*, align 8
  %negative.addr = alloca i32*, align 8
  store %struct._GScanner* %scanner, %struct._GScanner** %scanner.addr, align 8
  store i32* %dest, i32** %dest.addr, align 8
  store i32* %negative, i32** %negative.addr, align 8
  %0 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call = call i32 @g_scanner_peek_next_token(%struct._GScanner* %0)
  %cmp = icmp eq i32 %call, 45
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %negative.addr, align 8
  store i32 1, i32* %1, align 4
  %2 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call1 = call i32 @g_scanner_get_next_token(%struct._GScanner* %2)
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load i32*, i32** %negative.addr, align 8
  store i32 0, i32* %3, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call2 = call i32 @g_scanner_peek_next_token(%struct._GScanner* %4)
  %cmp3 = icmp ne i32 %call2, 261
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %5 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call6 = call i32 @g_scanner_get_next_token(%struct._GScanner* %5)
  %6 = load i32*, i32** %negative.addr, align 8
  %7 = load i32, i32* %6, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %if.end.5
  %8 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value = getelementptr inbounds %struct._GScanner, %struct._GScanner* %8, i32 0, i32 7
  %v_int64 = bitcast %union._GTokenValue* %value to i64*
  %9 = load i64, i64* %v_int64, align 8
  %sub = sub i64 0, %9
  %conv = trunc i64 %sub to i32
  %10 = load i32*, i32** %dest.addr, align 8
  store i32 %conv, i32* %10, align 4
  br label %if.end.12

if.else.8:                                        ; preds = %if.end.5
  %11 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value9 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %11, i32 0, i32 7
  %v_int6410 = bitcast %union._GTokenValue* %value9 to i64*
  %12 = load i64, i64* %v_int6410, align 8
  %conv11 = trunc i64 %12 to i32
  %13 = load i32*, i32** %dest.addr, align 8
  store i32 %conv11, i32* %13, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.8, %if.then.7
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.4
  %14 = load i32, i32* %retval
  ret i32 %14
}

declare i32 @gimp_scanner_parse_int(%struct._GScanner*, i32*) #1

declare i32 @gimp_session_info_aux_deserialize(%struct._GScanner*, %struct._GList**) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare i32 @gimp_session_info_dock_deserialize(%struct._GScanner*, i32, %struct._GimpSessionInfoDock**, i8*) #1

declare %struct._GimpSessionInfoDock* @gimp_session_info_dock_new(i8*) #1

declare void @g_scanner_scope_remove_symbol(%struct._GScanner*, i32, i8*) #1

declare i32 @gimp_config_deserialize_return(%struct._GScanner*, i32, i32) #1

declare %struct._GimpDock* @gimp_session_info_dock_restore(%struct._GimpSessionInfoDock*, %struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpDockContainer*) #1

declare %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_paned_get_type() #2

declare %struct._GtkWidget* @gtk_paned_get_child2(%struct._GtkPaned*) #1

declare void @gtk_paned_set_position(%struct._GtkPaned*, i32) #1

declare void @g_slice_free1(i64, i8*) #1

declare i32 @gdk_screen_get_n_monitors(%struct._GdkScreen*) #1

declare i32 @gdk_rectangle_intersect(%struct._GdkRectangle*, %struct._GdkRectangle*, %struct._GdkRectangle*) #1

declare void @gtk_window_move(%struct._GtkWindow*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dock_window_get_type() #2

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
