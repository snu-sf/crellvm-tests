; ModuleID = './app/display/gimpsinglewindowstrategy.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpSingleWindowStrategyClass = type { %struct._GimpObjectClass }
%struct._GimpObjectClass = type { %struct._GObjectClass, void (%struct._GimpObject*)*, void (%struct._GimpObject*)*, i64 (%struct._GimpObject*, i64*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GimpSingleWindowStrategy = type { %struct._GimpObject }
%struct._GimpWindowStrategyInterface = type { %struct._GTypeInterface, %struct._GtkWidget* (%struct._GimpWindowStrategy*, %struct._Gimp*, %struct._GimpDialogFactory*, %struct._GdkScreen*, i8*)* }
%struct._GTypeInterface = type { i64, i64 }
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
%struct._GtkObject = type { %struct._GObject, i32 }
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
%struct._GimpWindowStrategy = type opaque
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
%struct._GimpPDB = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type opaque
%struct._GimpDialogFactory = type { %struct._GimpObject, %struct._GimpDialogFactoryPrivate* }
%struct._GimpDialogFactoryPrivate = type opaque
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GimpImageWindow = type { %struct._GimpWindow }
%struct._GimpWindow = type { %struct._GtkWindow, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GimpDockColumns = type { %struct._GtkBox, %struct._GimpDockColumnsPrivate* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpDockColumnsPrivate = type opaque
%struct._GimpUIManager = type opaque
%struct._GimpDock = type { %struct._GtkBox, %struct._GimpDockPrivate* }
%struct._GimpDockPrivate = type opaque
%struct._GimpDockbook = type { %struct._GtkNotebook, %struct._GimpDockbookPrivate* }
%struct._GtkNotebook = type { %struct._GtkContainer, i8*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GtkWidget*, %struct._GdkDrawable*, i32, i16, i16, i24 }
%struct._GimpDockbookPrivate = type opaque

@gimp_single_window_strategy_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"GimpSingleWindowStrategy\00", align 1
@gimp_single_window_strategy_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpWindowStrategyInterface*)* @gimp_single_window_strategy_window_strategy_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@gimp_single_window_strategy_get_singleton.singleton = internal global %struct._GimpObject* null, align 8
@gimp_single_window_strategy_parent_class = internal global i8* null, align 8
@GimpSingleWindowStrategy_private_offset = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Display\00", align 1
@__func__.gimp_single_window_strategy_show_dockable_dialog = private unnamed_addr constant [49 x i8] c"gimp_single_window_strategy_show_dockable_dialog\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"windows != NULL\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"gimp-toolbox\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_single_window_strategy_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_single_window_strategy_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_single_window_strategy_get_type.g_define_type_id__volatile to i8*))
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
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 160, void (i8*, i8*)* bitcast (void (i8*)* @gimp_single_window_strategy_class_intern_init to void (i8*, i8*)*), i32 32, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpSingleWindowStrategy*)* @gimp_single_window_strategy_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_window_strategy_interface_get_type() #5
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_single_window_strategy_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_single_window_strategy_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_single_window_strategy_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_single_window_strategy_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_single_window_strategy_parent_class, align 8
  %1 = load i32, i32* @GimpSingleWindowStrategy_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpSingleWindowStrategy_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpSingleWindowStrategyClass*
  call void @gimp_single_window_strategy_class_init(%struct._GimpSingleWindowStrategyClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_single_window_strategy_init(%struct._GimpSingleWindowStrategy* %strategy) #3 {
entry:
  %strategy.addr = alloca %struct._GimpSingleWindowStrategy*, align 8
  store %struct._GimpSingleWindowStrategy* %strategy, %struct._GimpSingleWindowStrategy** %strategy.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_single_window_strategy_window_strategy_iface_init(%struct._GimpWindowStrategyInterface* %iface) #3 {
entry:
  %iface.addr = alloca %struct._GimpWindowStrategyInterface*, align 8
  store %struct._GimpWindowStrategyInterface* %iface, %struct._GimpWindowStrategyInterface** %iface.addr, align 8
  %0 = load %struct._GimpWindowStrategyInterface*, %struct._GimpWindowStrategyInterface** %iface.addr, align 8
  %show_dockable_dialog = getelementptr inbounds %struct._GimpWindowStrategyInterface, %struct._GimpWindowStrategyInterface* %0, i32 0, i32 1
  store %struct._GtkWidget* (%struct._GimpWindowStrategy*, %struct._Gimp*, %struct._GimpDialogFactory*, %struct._GdkScreen*, i8*)* @gimp_single_window_strategy_show_dockable_dialog, %struct._GtkWidget* (%struct._GimpWindowStrategy*, %struct._Gimp*, %struct._GimpDialogFactory*, %struct._GdkScreen*, i8*)** %show_dockable_dialog, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_window_strategy_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpObject* @gimp_single_window_strategy_get_singleton() #3 {
entry:
  %0 = load %struct._GimpObject*, %struct._GimpObject** @gimp_single_window_strategy_get_singleton.singleton, align 8
  %tobool = icmp ne %struct._GimpObject* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @gimp_single_window_strategy_get_type() #5
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %1 = bitcast i8* %call1 to %struct._GimpObject*
  store %struct._GimpObject* %1, %struct._GimpObject** @gimp_single_window_strategy_get_singleton.singleton, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct._GimpObject*, %struct._GimpObject** @gimp_single_window_strategy_get_singleton.singleton, align 8
  ret %struct._GimpObject* %2
}

declare i8* @g_object_new(i64, i8*, ...) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_single_window_strategy_class_init(%struct._GimpSingleWindowStrategyClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpSingleWindowStrategyClass*, align 8
  store %struct._GimpSingleWindowStrategyClass* %klass, %struct._GimpSingleWindowStrategyClass** %klass.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @gimp_single_window_strategy_show_dockable_dialog(%struct._GimpWindowStrategy* %strategy, %struct._Gimp* %gimp, %struct._GimpDialogFactory* %factory, %struct._GdkScreen* %screen, i8* %identifiers) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %strategy.addr = alloca %struct._GimpWindowStrategy*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %screen.addr = alloca %struct._GdkScreen*, align 8
  %identifiers.addr = alloca i8*, align 8
  %windows = alloca %struct._GList*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %window = alloca %struct._GimpImageWindow*, align 8
  %columns = alloca %struct._GimpDockColumns*, align 8
  %ui_manager = alloca %struct._GimpUIManager*, align 8
  %dockbook = alloca %struct._GtkWidget*, align 8
  %dock_columns = alloca %struct._GimpDockColumns*, align 8
  store %struct._GimpWindowStrategy* %strategy, %struct._GimpWindowStrategy** %strategy.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GdkScreen* %screen, %struct._GdkScreen** %screen.addr, align 8
  store i8* %identifiers, i8** %identifiers.addr, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GList* @gimp_get_image_windows(%struct._Gimp* %0)
  store %struct._GList* %call, %struct._GList** %windows, align 8
  store %struct._GtkWidget* null, %struct._GtkWidget** %widget, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct._GList*, %struct._GList** %windows, align 8
  %cmp = icmp ne %struct._GList* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__func__.gimp_single_window_strategy_show_dockable_dialog, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %2 = load %struct._GList*, %struct._GList** %windows, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %2, i32 0, i32 0
  %3 = load i8*, i8** %data, align 8
  %4 = bitcast i8* %3 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_image_window_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call1)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpImageWindow*
  store %struct._GimpImageWindow* %5, %struct._GimpImageWindow** %window, align 8
  %6 = load i8*, i8** %identifiers.addr, align 8
  %call3 = call i32 @strcmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* %6) #6
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.else.14

if.then.5:                                        ; preds = %do.end
  %7 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %call6 = call i32 @gimp_image_window_has_toolbox(%struct._GimpImageWindow* %7)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.end.13, label %if.then.7

if.then.7:                                        ; preds = %if.then.5
  %8 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %call8 = call %struct._GimpUIManager* @gimp_image_window_get_ui_manager(%struct._GimpImageWindow* %8)
  store %struct._GimpUIManager* %call8, %struct._GimpUIManager** %ui_manager, align 8
  %9 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %10 = load %struct._GdkScreen*, %struct._GdkScreen** %screen.addr, align 8
  %11 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager, align 8
  %call9 = call %struct._GtkWidget* @gimp_dialog_factory_dialog_new(%struct._GimpDialogFactory* %9, %struct._GdkScreen* %10, %struct._GimpUIManager* %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 -1, i32 0)
  store %struct._GtkWidget* %call9, %struct._GtkWidget** %widget, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %12)
  %13 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %call10 = call %struct._GimpDockColumns* @gimp_image_window_get_left_docks(%struct._GimpImageWindow* %13)
  store %struct._GimpDockColumns* %call10, %struct._GimpDockColumns** %columns, align 8
  %14 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %columns, align 8
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_dock_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call11)
  %17 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpDock*
  call void @gimp_dock_columns_add_dock(%struct._GimpDockColumns* %14, %struct._GimpDock* %17, i32 -1)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.7, %if.then.5
  br label %if.end.29

if.else.14:                                       ; preds = %do.end
  %18 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %19 = load i8*, i8** %identifiers.addr, align 8
  %call15 = call %struct._GtkWidget* @gimp_dialog_factory_find_widget(%struct._GimpDialogFactory* %18, i8* %19)
  %tobool16 = icmp ne %struct._GtkWidget* %call15, null
  br i1 %tobool16, label %if.then.17, label %if.else.19

if.then.17:                                       ; preds = %if.else.14
  %20 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %21 = load %struct._GdkScreen*, %struct._GdkScreen** %screen.addr, align 8
  %22 = load i8*, i8** %identifiers.addr, align 8
  %call18 = call %struct._GtkWidget* @gimp_dialog_factory_dialog_raise(%struct._GimpDialogFactory* %20, %struct._GdkScreen* %21, i8* %22, i32 -1)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %retval
  br label %return

if.else.19:                                       ; preds = %if.else.14
  %23 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %call20 = call %struct._GtkWidget* @gimp_image_window_get_default_dockbook(%struct._GimpImageWindow* %23)
  store %struct._GtkWidget* %call20, %struct._GtkWidget** %dockbook, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %dockbook, align 8
  %tobool21 = icmp ne %struct._GtkWidget* %24, null
  br i1 %tobool21, label %if.end.24, label %if.then.22

if.then.22:                                       ; preds = %if.else.19
  %25 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %call23 = call %struct._GimpDockColumns* @gimp_image_window_get_right_docks(%struct._GimpImageWindow* %25)
  store %struct._GimpDockColumns* %call23, %struct._GimpDockColumns** %dock_columns, align 8
  %26 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns, align 8
  call void @gimp_dock_columns_prepare_dockbook(%struct._GimpDockColumns* %26, i32 -1, %struct._GtkWidget** %dockbook)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.else.19
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %dockbook, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_dockbook_get_type() #5
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call25)
  %29 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpDockbook*
  %30 = load i8*, i8** %identifiers.addr, align 8
  %call27 = call %struct._GtkWidget* @gimp_dockbook_add_from_dialog_factory(%struct._GimpDockbook* %29, i8* %30, i32 -1)
  store %struct._GtkWidget* %call27, %struct._GtkWidget** %widget, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.24
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.end.13
  %31 = load %struct._GList*, %struct._GList** %windows, align 8
  call void @g_list_free(%struct._GList* %31)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  store %struct._GtkWidget* %32, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.29, %if.then.17, %if.else
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %33
}

declare %struct._GList* @gimp_get_image_windows(%struct._Gimp*) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_window_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare i32 @gimp_image_window_has_toolbox(%struct._GimpImageWindow*) #1

declare %struct._GimpUIManager* @gimp_image_window_get_ui_manager(%struct._GimpImageWindow*) #1

declare %struct._GtkWidget* @gimp_dialog_factory_dialog_new(%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpUIManager*, i8*, i32, i32) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GimpDockColumns* @gimp_image_window_get_left_docks(%struct._GimpImageWindow*) #1

declare void @gimp_dock_columns_add_dock(%struct._GimpDockColumns*, %struct._GimpDock*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dock_get_type() #2

declare %struct._GtkWidget* @gimp_dialog_factory_find_widget(%struct._GimpDialogFactory*, i8*) #1

declare %struct._GtkWidget* @gimp_dialog_factory_dialog_raise(%struct._GimpDialogFactory*, %struct._GdkScreen*, i8*, i32) #1

declare %struct._GtkWidget* @gimp_image_window_get_default_dockbook(%struct._GimpImageWindow*) #1

declare %struct._GimpDockColumns* @gimp_image_window_get_right_docks(%struct._GimpImageWindow*) #1

declare void @gimp_dock_columns_prepare_dockbook(%struct._GimpDockColumns*, i32, %struct._GtkWidget**) #1

declare %struct._GtkWidget* @gimp_dockbook_add_from_dialog_factory(%struct._GimpDockbook*, i8*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dockbook_get_type() #2

declare void @g_list_free(%struct._GList*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
