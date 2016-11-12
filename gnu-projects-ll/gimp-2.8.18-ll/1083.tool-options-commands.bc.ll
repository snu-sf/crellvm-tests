; ModuleID = './app/actions/tool-options-commands.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkActionPrivate = type opaque
%struct._GimpEditor = type { %struct._GtkBox, %struct._GimpEditorPrivate* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
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
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpEditorPrivate = type opaque
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
%struct._GimpDataFactory = type { %struct._GimpObject, %struct._GimpDataFactoryPriv* }
%struct._GimpDataFactoryPriv = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpToolInfo = type { %struct._GimpViewable, %struct._Gimp*, i64, i64, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GimpToolOptions*, %struct._GimpPaintInfo*, %struct._GimpContainer* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpToolOptions = type { %struct._GimpContext, %struct._GimpToolInfo* }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type { %struct._GimpData, %struct._Gimp*, %struct._GimpToolOptions*, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpFont = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpUIManager = type { %struct._GtkUIManager, i8*, %struct._Gimp*, %struct._GList* }
%struct._GtkUIManager = type { %struct._GObject, %struct._GtkUIManagerPrivate* }
%struct._GtkUIManagerPrivate = type opaque
%struct._GimpWindowStrategy = type opaque
%struct._GimpDialogFactory = type { %struct._GimpObject, %struct._GimpDialogFactoryPrivate* }
%struct._GimpDialogFactoryPrivate = type opaque
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GimpDataEditor = type { %struct._GimpEditor, %struct._GimpDataFactory*, %struct._GimpContext*, i32, %struct._GimpData*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GimpMessageDialog = type { %struct._GimpDialog, %struct._GimpMessageBox* }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpMessageBox = type { %struct._GtkBox, i8*, i32, [3 x %struct._GtkWidget*], %struct._GtkWidget* }

@.str = private unnamed_addr constant [9 x i8] c"Untitled\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Reset All Tool Options\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"gimp-question\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"gimp-reset\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"unmap\00", align 1
@.str.6 = private unnamed_addr constant [64 x i8] c"Do you really want to reset all tool options to default values?\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"gimp-tool-preset-editor\00", align 1

; Function Attrs: nounwind uwtable
define void @tool_options_save_new_preset_cmd_callback(%struct._GtkAction* %action, i8* %user_data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %user_data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpEditor*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %data = alloca %struct._GimpData*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load i8*, i8** %user_data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_editor_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpEditor*
  store %struct._GimpEditor* %2, %struct._GimpEditor** %editor, align 8
  %3 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %call2 = call %struct._GimpUIManager* @gimp_editor_get_ui_manager(%struct._GimpEditor* %3)
  %gimp3 = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %call2, i32 0, i32 2
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp3, align 8
  store %struct._Gimp* %4, %struct._Gimp** %gimp, align 8
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call4 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %5)
  store %struct._GimpContext* %call4, %struct._GimpContext** %context, align 8
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp5 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %6, i32 0, i32 1
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp5, align 8
  %tool_preset_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %7, i32 0, i32 42
  %8 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %tool_preset_factory, align 8
  %9 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0)) #5
  %call7 = call %struct._GimpData* @gimp_data_factory_data_new(%struct._GimpDataFactory* %8, %struct._GimpContext* %9, i8* %call6)
  store %struct._GimpData* %call7, %struct._GimpData** %data, align 8
  %10 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %11 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %12 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %13 = bitcast %struct._GimpData* %12 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_tool_preset_get_type() #4
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call8)
  %14 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpToolPreset*
  call void @tool_options_show_preset_editor(%struct._Gimp* %10, %struct._GimpEditor* %11, %struct._GimpToolPreset* %14)
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_editor_get_type() #2

declare %struct._GimpUIManager* @gimp_editor_get_ui_manager(%struct._GimpEditor*) #1

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #1

declare %struct._GimpData* @gimp_data_factory_data_new(%struct._GimpDataFactory*, %struct._GimpContext*, i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

; Function Attrs: nounwind uwtable
define internal void @tool_options_show_preset_editor(%struct._Gimp* %gimp, %struct._GimpEditor* %editor, %struct._GimpToolPreset* %preset) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %editor.addr = alloca %struct._GimpEditor*, align 8
  %preset.addr = alloca %struct._GimpToolPreset*, align 8
  %dockable = alloca %struct._GtkWidget*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpEditor* %editor, %struct._GimpEditor** %editor.addr, align 8
  store %struct._GimpToolPreset* %preset, %struct._GimpToolPreset** %preset.addr, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpObject* @gimp_get_window_strategy(%struct._Gimp* %0)
  %1 = bitcast %struct._GimpObject* %call to %struct._GTypeInstance*
  %call1 = call i64 @gimp_window_strategy_interface_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpWindowStrategy*
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call3 = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  %4 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %5 = bitcast %struct._GimpEditor* %4 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_widget_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call4)
  %6 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWidget*
  %call6 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %6)
  %call7 = call %struct._GtkWidget* @gimp_window_strategy_show_dockable_dialog(%struct._GimpWindowStrategy* %2, %struct._Gimp* %3, %struct._GimpDialogFactory* %call3, %struct._GdkScreen* %call6, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %dockable, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %dockable, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_bin_get_type() #4
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call8)
  %9 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkBin*
  %call10 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %9)
  %10 = bitcast %struct._GtkWidget* %call10 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_data_editor_get_type() #4
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call11)
  %11 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpDataEditor*
  %12 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %preset.addr, align 8
  %13 = bitcast %struct._GimpToolPreset* %12 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_data_get_type() #4
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call13)
  %14 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpData*
  call void @gimp_data_editor_set_data(%struct._GimpDataEditor* %11, %struct._GimpData* %14)
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_preset_get_type() #2

; Function Attrs: nounwind uwtable
define void @tool_options_save_preset_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpEditor*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  %preset = alloca %struct._GimpToolPreset*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_editor_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpEditor*
  store %struct._GimpEditor* %2, %struct._GimpEditor** %editor, align 8
  %3 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %call2 = call %struct._GimpUIManager* @gimp_editor_get_ui_manager(%struct._GimpEditor* %3)
  %gimp3 = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %call2, i32 0, i32 2
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp3, align 8
  store %struct._Gimp* %4, %struct._Gimp** %gimp, align 8
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call4 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %5)
  store %struct._GimpContext* %call4, %struct._GimpContext** %context, align 8
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call5 = call %struct._GimpToolInfo* @gimp_context_get_tool(%struct._GimpContext* %6)
  store %struct._GimpToolInfo* %call5, %struct._GimpToolInfo** %tool_info, align 8
  %7 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %presets = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %7, i32 0, i32 14
  %8 = load %struct._GimpContainer*, %struct._GimpContainer** %presets, align 8
  %9 = load i32, i32* %value.addr, align 4
  %call6 = call %struct._GimpObject* @gimp_container_get_child_by_index(%struct._GimpContainer* %8, i32 %9)
  %10 = bitcast %struct._GimpObject* %call6 to %struct._GimpToolPreset*
  store %struct._GimpToolPreset* %10, %struct._GimpToolPreset** %preset, align 8
  %11 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %preset, align 8
  %tobool = icmp ne %struct._GimpToolPreset* %11, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tool_options = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %12, i32 0, i32 12
  %13 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options, align 8
  %14 = bitcast %struct._GimpToolOptions* %13 to %struct._GTypeInstance*
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 80)
  %15 = bitcast %struct._GTypeInstance* %call7 to %struct._GObject*
  %16 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %preset, align 8
  %tool_options8 = getelementptr inbounds %struct._GimpToolPreset, %struct._GimpToolPreset* %16, i32 0, i32 2
  %17 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options8, align 8
  %18 = bitcast %struct._GimpToolOptions* %17 to %struct._GTypeInstance*
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 80)
  %19 = bitcast %struct._GTypeInstance* %call9 to %struct._GObject*
  %call10 = call i32 @gimp_config_sync(%struct._GObject* %15, %struct._GObject* %19, i32 0)
  %20 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %21 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %22 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %preset, align 8
  call void @tool_options_show_preset_editor(%struct._Gimp* %20, %struct._GimpEditor* %21, %struct._GimpToolPreset* %22)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._GimpToolInfo* @gimp_context_get_tool(%struct._GimpContext*) #1

declare %struct._GimpObject* @gimp_container_get_child_by_index(%struct._GimpContainer*, i32) #1

declare i32 @gimp_config_sync(%struct._GObject*, %struct._GObject*, i32) #1

; Function Attrs: nounwind uwtable
define void @tool_options_restore_preset_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpEditor*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  %preset = alloca %struct._GimpToolPreset*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_editor_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpEditor*
  store %struct._GimpEditor* %2, %struct._GimpEditor** %editor, align 8
  %3 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %call2 = call %struct._GimpUIManager* @gimp_editor_get_ui_manager(%struct._GimpEditor* %3)
  %gimp3 = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %call2, i32 0, i32 2
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp3, align 8
  store %struct._Gimp* %4, %struct._Gimp** %gimp, align 8
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call4 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %5)
  store %struct._GimpContext* %call4, %struct._GimpContext** %context, align 8
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call5 = call %struct._GimpToolInfo* @gimp_context_get_tool(%struct._GimpContext* %6)
  store %struct._GimpToolInfo* %call5, %struct._GimpToolInfo** %tool_info, align 8
  %7 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %presets = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %7, i32 0, i32 14
  %8 = load %struct._GimpContainer*, %struct._GimpContainer** %presets, align 8
  %9 = load i32, i32* %value.addr, align 4
  %call6 = call %struct._GimpObject* @gimp_container_get_child_by_index(%struct._GimpContainer* %8, i32 %9)
  %10 = bitcast %struct._GimpObject* %call6 to %struct._GimpToolPreset*
  store %struct._GimpToolPreset* %10, %struct._GimpToolPreset** %preset, align 8
  %11 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %preset, align 8
  %tobool = icmp ne %struct._GimpToolPreset* %11, null
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %12 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call7 = call %struct._GimpToolPreset* @gimp_context_get_tool_preset(%struct._GimpContext* %12)
  %13 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %preset, align 8
  %cmp = icmp ne %struct._GimpToolPreset* %call7, %13
  br i1 %cmp, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %15 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %preset, align 8
  call void @gimp_context_set_tool_preset(%struct._GimpContext* %14, %struct._GimpToolPreset* %15)
  br label %if.end

if.else:                                          ; preds = %if.then
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_context_tool_preset_changed(%struct._GimpContext* %16)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.8
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %entry
  ret void
}

declare %struct._GimpToolPreset* @gimp_context_get_tool_preset(%struct._GimpContext*) #1

declare void @gimp_context_set_tool_preset(%struct._GimpContext*, %struct._GimpToolPreset*) #1

declare void @gimp_context_tool_preset_changed(%struct._GimpContext*) #1

; Function Attrs: nounwind uwtable
define void @tool_options_edit_preset_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpEditor*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  %preset = alloca %struct._GimpToolPreset*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_editor_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpEditor*
  store %struct._GimpEditor* %2, %struct._GimpEditor** %editor, align 8
  %3 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %call2 = call %struct._GimpUIManager* @gimp_editor_get_ui_manager(%struct._GimpEditor* %3)
  %gimp3 = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %call2, i32 0, i32 2
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp3, align 8
  store %struct._Gimp* %4, %struct._Gimp** %gimp, align 8
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call4 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %5)
  store %struct._GimpContext* %call4, %struct._GimpContext** %context, align 8
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call5 = call %struct._GimpToolInfo* @gimp_context_get_tool(%struct._GimpContext* %6)
  store %struct._GimpToolInfo* %call5, %struct._GimpToolInfo** %tool_info, align 8
  %7 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %presets = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %7, i32 0, i32 14
  %8 = load %struct._GimpContainer*, %struct._GimpContainer** %presets, align 8
  %9 = load i32, i32* %value.addr, align 4
  %call6 = call %struct._GimpObject* @gimp_container_get_child_by_index(%struct._GimpContainer* %8, i32 %9)
  %10 = bitcast %struct._GimpObject* %call6 to %struct._GimpToolPreset*
  store %struct._GimpToolPreset* %10, %struct._GimpToolPreset** %preset, align 8
  %11 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %preset, align 8
  %tobool = icmp ne %struct._GimpToolPreset* %11, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %13 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %14 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %preset, align 8
  call void @tool_options_show_preset_editor(%struct._Gimp* %12, %struct._GimpEditor* %13, %struct._GimpToolPreset* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @tool_options_delete_preset_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpEditor*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  %preset = alloca %struct._GimpToolPreset*, align 8
  %factory = alloca %struct._GimpDataFactory*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_editor_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpEditor*
  store %struct._GimpEditor* %2, %struct._GimpEditor** %editor, align 8
  %3 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %call2 = call %struct._GimpUIManager* @gimp_editor_get_ui_manager(%struct._GimpEditor* %3)
  %gimp = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %call2, i32 0, i32 2
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call3 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %4)
  store %struct._GimpContext* %call3, %struct._GimpContext** %context, align 8
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call4 = call %struct._GimpToolInfo* @gimp_context_get_tool(%struct._GimpContext* %5)
  store %struct._GimpToolInfo* %call4, %struct._GimpToolInfo** %tool_info, align 8
  %6 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %presets = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %6, i32 0, i32 14
  %7 = load %struct._GimpContainer*, %struct._GimpContainer** %presets, align 8
  %8 = load i32, i32* %value.addr, align 4
  %call5 = call %struct._GimpObject* @gimp_container_get_child_by_index(%struct._GimpContainer* %7, i32 %8)
  %9 = bitcast %struct._GimpObject* %call5 to %struct._GimpToolPreset*
  store %struct._GimpToolPreset* %9, %struct._GimpToolPreset** %preset, align 8
  %10 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %preset, align 8
  %tobool = icmp ne %struct._GimpToolPreset* %10, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %11 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %preset, align 8
  %12 = bitcast %struct._GimpToolPreset* %11 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_data_get_type() #4
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call6)
  %13 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpData*
  %call8 = call i32 @gimp_data_is_deletable(%struct._GimpData* %13)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp10 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %14, i32 0, i32 1
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp10, align 8
  %tool_preset_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %15, i32 0, i32 42
  %16 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %tool_preset_factory, align 8
  store %struct._GimpDataFactory* %16, %struct._GimpDataFactory** %factory, align 8
  %17 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory, align 8
  %18 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %preset, align 8
  %19 = bitcast %struct._GimpToolPreset* %18 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_data_get_type() #4
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call11)
  %20 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpData*
  %21 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %22 = bitcast %struct._GimpEditor* %21 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_widget_get_type() #4
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call13)
  %23 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkWidget*
  %call15 = call %struct._GtkWidget* @data_delete_dialog_new(%struct._GimpDataFactory* %17, %struct._GimpData* %20, %struct._GimpContext* null, %struct._GtkWidget* %23)
  store %struct._GtkWidget* %call15, %struct._GtkWidget** %dialog, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %24)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

declare i32 @gimp_data_is_deletable(%struct._GimpData*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_data_get_type() #2

declare %struct._GtkWidget* @data_delete_dialog_new(%struct._GimpDataFactory*, %struct._GimpData*, %struct._GimpContext*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define void @tool_options_reset_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpEditor*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_editor_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpEditor*
  store %struct._GimpEditor* %2, %struct._GimpEditor** %editor, align 8
  %3 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %call2 = call %struct._GimpUIManager* @gimp_editor_get_ui_manager(%struct._GimpEditor* %3)
  %gimp = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %call2, i32 0, i32 2
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call3 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %4)
  store %struct._GimpContext* %call3, %struct._GimpContext** %context, align 8
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call4 = call %struct._GimpToolInfo* @gimp_context_get_tool(%struct._GimpContext* %5)
  store %struct._GimpToolInfo* %call4, %struct._GimpToolInfo** %tool_info, align 8
  %6 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tool_options = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %6, i32 0, i32 12
  %7 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options, align 8
  call void @gimp_tool_options_reset(%struct._GimpToolOptions* %7)
  ret void
}

declare void @gimp_tool_options_reset(%struct._GimpToolOptions*) #1

; Function Attrs: nounwind uwtable
define void @tool_options_reset_all_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpEditor*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  %list = alloca %struct._GList*, align 8
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_editor_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpEditor*
  store %struct._GimpEditor* %2, %struct._GimpEditor** %editor, align 8
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0)) #5
  %3 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %4 = bitcast %struct._GimpEditor* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_widget_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkWidget*
  %call5 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_message_dialog_new(i8* %call2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), %struct._GtkWidget* %5, i32 3, void (i8*, i8*)* @gimp_standard_help_func, i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %dialog, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_dialog_get_type() #4
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call6)
  %8 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %8, i32 -5, i32 -6, i32 -1)
  %9 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %10 = bitcast %struct._GimpEditor* %9 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_widget_get_type() #4
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call8)
  %11 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkWidget*
  %call10 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %11)
  %12 = bitcast %struct._GtkWidget* %call10 to i8*
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %14 = bitcast %struct._GtkWidget* %13 to i8*
  %call11 = call i64 @g_signal_connect_object(i8* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @gtk_widget_destroy to void ()*), i8* %14, i32 2)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_message_dialog_get_type() #4
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call12)
  %17 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpMessageDialog*
  %box = getelementptr inbounds %struct._GimpMessageDialog, %struct._GimpMessageDialog* %17, i32 0, i32 1
  %18 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box, align 8
  %call14 = call i8* @gettext(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.6, i32 0, i32 0)) #5
  call void (%struct._GimpMessageBox*, i8*, ...) @gimp_message_box_set_primary_text(%struct._GimpMessageBox* %18, i8* %call14)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_dialog_get_type() #4
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call15)
  %21 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpDialog*
  %call17 = call i32 @gimp_dialog_run(%struct._GimpDialog* %21)
  %cmp = icmp eq i32 %call17, -5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %22 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %call18 = call %struct._GimpUIManager* @gimp_editor_get_ui_manager(%struct._GimpEditor* %22)
  %gimp19 = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %call18, i32 0, i32 2
  %23 = load %struct._Gimp*, %struct._Gimp** %gimp19, align 8
  store %struct._Gimp* %23, %struct._Gimp** %gimp, align 8
  %24 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call20 = call %struct._GList* @gimp_get_tool_info_iter(%struct._Gimp* %24)
  store %struct._GList* %call20, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.then
  %25 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %25, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load %struct._GList*, %struct._GList** %list, align 8
  %data21 = getelementptr inbounds %struct._GList, %struct._GList* %26, i32 0, i32 0
  %27 = load i8*, i8** %data21, align 8
  %28 = bitcast i8* %27 to %struct._GimpToolInfo*
  store %struct._GimpToolInfo* %28, %struct._GimpToolInfo** %tool_info, align 8
  %29 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tool_options = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %29, i32 0, i32 12
  %30 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options, align 8
  call void @gimp_tool_options_reset(%struct._GimpToolOptions* %30)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool22 = icmp ne %struct._GList* %31, null
  br i1 %tobool22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %32 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %32, i32 0, i32 1
  %33 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %33, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %34)
  ret void
}

declare %struct._GtkWidget* @gimp_message_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #1

declare void @gimp_standard_help_func(i8*, i8*) #1

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #2

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

declare %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget*) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare void @gimp_message_box_set_primary_text(%struct._GimpMessageBox*, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_message_dialog_get_type() #2

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #2

declare %struct._GList* @gimp_get_tool_info_iter(%struct._Gimp*) #1

declare %struct._GtkWidget* @gimp_window_strategy_show_dockable_dialog(%struct._GimpWindowStrategy*, %struct._Gimp*, %struct._GimpDialogFactory*, %struct._GdkScreen*, i8*) #1

declare %struct._GimpObject* @gimp_get_window_strategy(%struct._Gimp*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_window_strategy_interface_get_type() #2

declare %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton() #1

declare %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget*) #1

declare void @gimp_data_editor_set_data(%struct._GimpDataEditor*, %struct._GimpData*) #1

declare %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_bin_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_data_editor_get_type() #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
