; ModuleID = './app/actions/data-commands.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkActionPrivate = type opaque
%struct._GimpDataFactoryView = type { %struct._GimpContainerEditor, %struct._GimpDataFactoryViewPriv* }
%struct._GimpContainerEditor = type { %struct._GtkBox, %struct._GimpContainerView*, %struct._GimpContainerEditorPrivate* }
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
%struct._GimpContainerView = type opaque
%struct._GimpContainerEditorPrivate = type opaque
%struct._GimpDataFactoryViewPriv = type opaque
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpDataFactory = type { %struct._GimpObject, %struct._GimpDataFactoryPriv* }
%struct._GimpDataFactoryPriv = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
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
%struct._GimpData = type { %struct._GimpViewable }
%struct._GError = type { i32, i32, i8* }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GimpWindowStrategy = type opaque
%struct._GimpDialogFactory = type { %struct._GimpObject, %struct._GimpDialogFactoryPrivate* }
%struct._GimpDialogFactoryPrivate = type opaque
%struct._GimpDataEditor = type { %struct._GimpEditor, %struct._GimpDataFactory*, %struct._GimpContext*, i32, %struct._GimpData*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GimpEditor = type { %struct._GtkBox, %struct._GimpEditorPrivate* }
%struct._GimpEditorPrivate = type opaque

@.str = private unnamed_addr constant [25 x i8] c"Opening '%s' failed:\0A\0A%s\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Untitled\00", align 1

; Function Attrs: nounwind uwtable
define void @data_open_as_image_cmd_callback(%struct._GtkAction* %action, i8* %user_data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %user_data.addr = alloca i8*, align 8
  %view = alloca %struct._GimpDataFactoryView*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %data = alloca %struct._GimpData*, align 8
  %uri = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %status = alloca i32, align 4
  %error = alloca %struct._GError*, align 8
  %filename = alloca i8*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load i8*, i8** %user_data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_factory_view_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDataFactoryView*
  store %struct._GimpDataFactoryView* %2, %struct._GimpDataFactoryView** %view, align 8
  %3 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %view, align 8
  %4 = bitcast %struct._GimpDataFactoryView* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_container_editor_get_type() #4
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpContainerEditor*
  %view4 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %5, i32 0, i32 1
  %6 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view4, align 8
  %call5 = call %struct._GimpContext* @gimp_container_view_get_context(%struct._GimpContainerView* %6)
  store %struct._GimpContext* %call5, %struct._GimpContext** %context, align 8
  %7 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %8 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %view, align 8
  %call6 = call i64 @gimp_data_factory_view_get_children_type(%struct._GimpDataFactoryView* %8)
  %call7 = call %struct._GimpObject* @gimp_context_get_by_type(%struct._GimpContext* %7, i64 %call6)
  %9 = bitcast %struct._GimpObject* %call7 to %struct._GimpData*
  store %struct._GimpData* %9, %struct._GimpData** %data, align 8
  %10 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %tobool = icmp ne %struct._GimpData* %10, null
  br i1 %tobool, label %land.lhs.true, label %if.end.23

land.lhs.true:                                    ; preds = %entry
  %11 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %call8 = call i8* @gimp_data_get_filename(%struct._GimpData* %11)
  %tobool9 = icmp ne i8* %call8, null
  br i1 %tobool9, label %if.then, label %if.end.23

if.then:                                          ; preds = %land.lhs.true
  %12 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %call10 = call i8* @gimp_data_get_filename(%struct._GimpData* %12)
  %call11 = call noalias i8* @g_filename_to_uri(i8* %call10, i8* null, %struct._GError** null)
  store i8* %call11, i8** %uri, align 8
  %13 = load i8*, i8** %uri, align 8
  %tobool12 = icmp ne i8* %13, null
  br i1 %tobool12, label %if.then.13, label %if.end.22

if.then.13:                                       ; preds = %if.then
  store %struct._GError* null, %struct._GError** %error, align 8
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %14, i32 0, i32 1
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %17 = load i8*, i8** %uri, align 8
  %call14 = call %struct._GimpImage* @file_open_with_display(%struct._Gimp* %15, %struct._GimpContext* %16, %struct._GimpProgress* null, i8* %17, i32 0, i32* %status, %struct._GError** %error)
  store %struct._GimpImage* %call14, %struct._GimpImage** %image, align 8
  %18 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool15 = icmp ne %struct._GimpImage* %18, null
  br i1 %tobool15, label %if.end, label %land.lhs.true.16

land.lhs.true.16:                                 ; preds = %if.then.13
  %19 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %19, 4
  br i1 %cmp, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %land.lhs.true.16
  %20 = load i8*, i8** %uri, align 8
  %call18 = call i8* @file_utils_uri_display_name(i8* %20)
  store i8* %call18, i8** %filename, align 8
  %21 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp19 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %21, i32 0, i32 1
  %22 = load %struct._Gimp*, %struct._Gimp** %gimp19, align 8
  %23 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %view, align 8
  %24 = bitcast %struct._GimpDataFactoryView* %23 to %struct._GTypeInstance*
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 80)
  %25 = bitcast %struct._GTypeInstance* %call20 to %struct._GObject*
  %call21 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0)) #5
  %26 = load i8*, i8** %filename, align 8
  %27 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %27, i32 0, i32 2
  %28 = load i8*, i8** %message, align 8
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %22, %struct._GObject* %25, i32 2, i8* %call21, i8* %26, i8* %28)
  call void @g_clear_error(%struct._GError** %error)
  %29 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %29)
  br label %if.end

if.end:                                           ; preds = %if.then.17, %land.lhs.true.16, %if.then.13
  %30 = load i8*, i8** %uri, align 8
  call void @g_free(i8* %30)
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %if.then
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %land.lhs.true, %entry
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_data_factory_view_get_type() #2

declare %struct._GimpContext* @gimp_container_view_get_context(%struct._GimpContainerView*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_editor_get_type() #2

declare %struct._GimpObject* @gimp_context_get_by_type(%struct._GimpContext*, i64) #1

declare i64 @gimp_data_factory_view_get_children_type(%struct._GimpDataFactoryView*) #1

declare i8* @gimp_data_get_filename(%struct._GimpData*) #1

declare noalias i8* @g_filename_to_uri(i8*, i8*, %struct._GError**) #1

declare %struct._GimpImage* @file_open_with_display(%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, i8*, i32, i32*, %struct._GError**) #1

declare i8* @file_utils_uri_display_name(i8*) #1

declare void @gimp_message(%struct._Gimp*, %struct._GObject*, i32, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare void @g_clear_error(%struct._GError**) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define void @data_new_cmd_callback(%struct._GtkAction* %action, i8* %user_data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %user_data.addr = alloca i8*, align 8
  %view = alloca %struct._GimpDataFactoryView*, align 8
  %factory = alloca %struct._GimpDataFactory*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %data = alloca %struct._GimpData*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load i8*, i8** %user_data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_factory_view_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDataFactoryView*
  store %struct._GimpDataFactoryView* %2, %struct._GimpDataFactoryView** %view, align 8
  %3 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %view, align 8
  %call2 = call i32 @gimp_data_factory_view_has_data_new_func(%struct._GimpDataFactoryView* %3)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end.18

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %view, align 8
  %call3 = call %struct._GimpDataFactory* @gimp_data_factory_view_get_data_factory(%struct._GimpDataFactoryView* %4)
  store %struct._GimpDataFactory* %call3, %struct._GimpDataFactory** %factory, align 8
  %5 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %view, align 8
  %6 = bitcast %struct._GimpDataFactoryView* %5 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_container_editor_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call4)
  %7 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpContainerEditor*
  %view6 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %7, i32 0, i32 1
  %8 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view6, align 8
  %call7 = call %struct._GimpContext* @gimp_container_view_get_context(%struct._GimpContainerView* %8)
  store %struct._GimpContext* %call7, %struct._GimpContext** %context, align 8
  %9 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory, align 8
  %10 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0)) #5
  %call9 = call %struct._GimpData* @gimp_data_factory_data_new(%struct._GimpDataFactory* %9, %struct._GimpContext* %10, i8* %call8)
  store %struct._GimpData* %call9, %struct._GimpData** %data, align 8
  %11 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %tobool10 = icmp ne %struct._GimpData* %11, null
  br i1 %tobool10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then
  %12 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %13 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %view, align 8
  %call12 = call i64 @gimp_data_factory_view_get_children_type(%struct._GimpDataFactoryView* %13)
  %14 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %15 = bitcast %struct._GimpData* %14 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_object_get_type() #4
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call13)
  %16 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpObject*
  call void @gimp_context_set_by_type(%struct._GimpContext* %12, i64 %call12, %struct._GimpObject* %16)
  %17 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %view, align 8
  %call15 = call %struct._GtkWidget* @gimp_data_factory_view_get_edit_button(%struct._GimpDataFactoryView* %17)
  %18 = bitcast %struct._GtkWidget* %call15 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_button_get_type() #4
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call16)
  %19 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkButton*
  call void @gtk_button_clicked(%struct._GtkButton* %19)
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.then
  br label %if.end.18

if.end.18:                                        ; preds = %if.end, %entry
  ret void
}

declare i32 @gimp_data_factory_view_has_data_new_func(%struct._GimpDataFactoryView*) #1

declare %struct._GimpDataFactory* @gimp_data_factory_view_get_data_factory(%struct._GimpDataFactoryView*) #1

declare %struct._GimpData* @gimp_data_factory_data_new(%struct._GimpDataFactory*, %struct._GimpContext*, i8*) #1

declare void @gimp_context_set_by_type(%struct._GimpContext*, i64, %struct._GimpObject*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare void @gtk_button_clicked(%struct._GtkButton*) #1

declare %struct._GtkWidget* @gimp_data_factory_view_get_edit_button(%struct._GimpDataFactoryView*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_button_get_type() #2

; Function Attrs: nounwind uwtable
define void @data_duplicate_cmd_callback(%struct._GtkAction* %action, i8* %user_data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %user_data.addr = alloca i8*, align 8
  %view = alloca %struct._GimpDataFactoryView*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %data = alloca %struct._GimpData*, align 8
  %new_data = alloca %struct._GimpData*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load i8*, i8** %user_data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_factory_view_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDataFactoryView*
  store %struct._GimpDataFactoryView* %2, %struct._GimpDataFactoryView** %view, align 8
  %3 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %view, align 8
  %4 = bitcast %struct._GimpDataFactoryView* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_container_editor_get_type() #4
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpContainerEditor*
  %view4 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %5, i32 0, i32 1
  %6 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view4, align 8
  %call5 = call %struct._GimpContext* @gimp_container_view_get_context(%struct._GimpContainerView* %6)
  store %struct._GimpContext* %call5, %struct._GimpContext** %context, align 8
  %7 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %8 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %view, align 8
  %call6 = call i64 @gimp_data_factory_view_get_children_type(%struct._GimpDataFactoryView* %8)
  %call7 = call %struct._GimpObject* @gimp_context_get_by_type(%struct._GimpContext* %7, i64 %call6)
  %9 = bitcast %struct._GimpObject* %call7 to %struct._GimpData*
  store %struct._GimpData* %9, %struct._GimpData** %data, align 8
  %10 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %tobool = icmp ne %struct._GimpData* %10, null
  br i1 %tobool, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %entry
  %11 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %view, align 8
  %12 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %13 = bitcast %struct._GimpData* %12 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_object_get_type() #4
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call8)
  %14 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpObject*
  %call10 = call i32 @gimp_data_factory_view_have(%struct._GimpDataFactoryView* %11, %struct._GimpObject* %14)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then, label %if.end.22

if.then:                                          ; preds = %land.lhs.true
  %15 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %view, align 8
  %call12 = call %struct._GimpDataFactory* @gimp_data_factory_view_get_data_factory(%struct._GimpDataFactoryView* %15)
  %16 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %call13 = call %struct._GimpData* @gimp_data_factory_data_duplicate(%struct._GimpDataFactory* %call12, %struct._GimpData* %16)
  store %struct._GimpData* %call13, %struct._GimpData** %new_data, align 8
  %17 = load %struct._GimpData*, %struct._GimpData** %new_data, align 8
  %tobool14 = icmp ne %struct._GimpData* %17, null
  br i1 %tobool14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %if.then
  %18 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %19 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %view, align 8
  %call16 = call i64 @gimp_data_factory_view_get_children_type(%struct._GimpDataFactoryView* %19)
  %20 = load %struct._GimpData*, %struct._GimpData** %new_data, align 8
  %21 = bitcast %struct._GimpData* %20 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_object_get_type() #4
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call17)
  %22 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpObject*
  call void @gimp_context_set_by_type(%struct._GimpContext* %18, i64 %call16, %struct._GimpObject* %22)
  %23 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %view, align 8
  %call19 = call %struct._GtkWidget* @gimp_data_factory_view_get_edit_button(%struct._GimpDataFactoryView* %23)
  %24 = bitcast %struct._GtkWidget* %call19 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_button_get_type() #4
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call20)
  %25 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkButton*
  call void @gtk_button_clicked(%struct._GtkButton* %25)
  br label %if.end

if.end:                                           ; preds = %if.then.15, %if.then
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %land.lhs.true, %entry
  ret void
}

declare i32 @gimp_data_factory_view_have(%struct._GimpDataFactoryView*, %struct._GimpObject*) #1

declare %struct._GimpData* @gimp_data_factory_data_duplicate(%struct._GimpDataFactory*, %struct._GimpData*) #1

; Function Attrs: nounwind uwtable
define void @data_copy_location_cmd_callback(%struct._GtkAction* %action, i8* %user_data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %user_data.addr = alloca i8*, align 8
  %view = alloca %struct._GimpDataFactoryView*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %data = alloca %struct._GimpData*, align 8
  %filename = alloca i8*, align 8
  %uri = alloca i8*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load i8*, i8** %user_data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_factory_view_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDataFactoryView*
  store %struct._GimpDataFactoryView* %2, %struct._GimpDataFactoryView** %view, align 8
  %3 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %view, align 8
  %4 = bitcast %struct._GimpDataFactoryView* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_container_editor_get_type() #4
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpContainerEditor*
  %view4 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %5, i32 0, i32 1
  %6 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view4, align 8
  %call5 = call %struct._GimpContext* @gimp_container_view_get_context(%struct._GimpContainerView* %6)
  store %struct._GimpContext* %call5, %struct._GimpContext** %context, align 8
  %7 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %8 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %view, align 8
  %call6 = call i64 @gimp_data_factory_view_get_children_type(%struct._GimpDataFactoryView* %8)
  %call7 = call %struct._GimpObject* @gimp_context_get_by_type(%struct._GimpContext* %7, i64 %call6)
  %9 = bitcast %struct._GimpObject* %call7 to %struct._GimpData*
  store %struct._GimpData* %9, %struct._GimpData** %data, align 8
  %10 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %tobool = icmp ne %struct._GimpData* %10, null
  br i1 %tobool, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  %11 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %call8 = call i8* @gimp_data_get_filename(%struct._GimpData* %11)
  store i8* %call8, i8** %filename, align 8
  %12 = load i8*, i8** %filename, align 8
  %tobool9 = icmp ne i8* %12, null
  br i1 %tobool9, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %if.then
  %13 = load i8*, i8** %filename, align 8
  %14 = load i8, i8* %13, align 1
  %conv = sext i8 %14 to i32
  %tobool10 = icmp ne i32 %conv, 0
  br i1 %tobool10, label %if.then.11, label %if.end.15

if.then.11:                                       ; preds = %land.lhs.true
  %15 = load i8*, i8** %filename, align 8
  %call12 = call noalias i8* @g_filename_to_uri(i8* %15, i8* null, %struct._GError** null)
  store i8* %call12, i8** %uri, align 8
  %16 = load i8*, i8** %uri, align 8
  %tobool13 = icmp ne i8* %16, null
  br i1 %tobool13, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %if.then.11
  %17 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %17, i32 0, i32 1
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %19 = load i8*, i8** %uri, align 8
  call void @gimp_clipboard_set_text(%struct._Gimp* %18, i8* %19)
  %20 = load i8*, i8** %uri, align 8
  call void @g_free(i8* %20)
  br label %if.end

if.end:                                           ; preds = %if.then.14, %if.then.11
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %land.lhs.true, %if.then
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %entry
  ret void
}

declare void @gimp_clipboard_set_text(%struct._Gimp*, i8*) #1

; Function Attrs: nounwind uwtable
define void @data_delete_cmd_callback(%struct._GtkAction* %action, i8* %user_data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %user_data.addr = alloca i8*, align 8
  %view = alloca %struct._GimpDataFactoryView*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %data = alloca %struct._GimpData*, align 8
  %factory = alloca %struct._GimpDataFactory*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load i8*, i8** %user_data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_factory_view_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDataFactoryView*
  store %struct._GimpDataFactoryView* %2, %struct._GimpDataFactoryView** %view, align 8
  %3 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %view, align 8
  %4 = bitcast %struct._GimpDataFactoryView* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_container_editor_get_type() #4
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpContainerEditor*
  %view4 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %5, i32 0, i32 1
  %6 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view4, align 8
  %call5 = call %struct._GimpContext* @gimp_container_view_get_context(%struct._GimpContainerView* %6)
  store %struct._GimpContext* %call5, %struct._GimpContext** %context, align 8
  %7 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %8 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %view, align 8
  %call6 = call i64 @gimp_data_factory_view_get_children_type(%struct._GimpDataFactoryView* %8)
  %call7 = call %struct._GimpObject* @gimp_context_get_by_type(%struct._GimpContext* %7, i64 %call6)
  %9 = bitcast %struct._GimpObject* %call7 to %struct._GimpData*
  store %struct._GimpData* %9, %struct._GimpData** %data, align 8
  %10 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %tobool = icmp ne %struct._GimpData* %10, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %11 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %call8 = call i32 @gimp_data_is_deletable(%struct._GimpData* %11)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %land.lhs.true.10, label %if.end

land.lhs.true.10:                                 ; preds = %land.lhs.true
  %12 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %view, align 8
  %13 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %14 = bitcast %struct._GimpData* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_object_get_type() #4
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpObject*
  %call13 = call i32 @gimp_data_factory_view_have(%struct._GimpDataFactoryView* %12, %struct._GimpObject* %15)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.10
  %16 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %view, align 8
  %call15 = call %struct._GimpDataFactory* @gimp_data_factory_view_get_data_factory(%struct._GimpDataFactoryView* %16)
  store %struct._GimpDataFactory* %call15, %struct._GimpDataFactory** %factory, align 8
  %17 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory, align 8
  %18 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %19 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %20 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %view, align 8
  %21 = bitcast %struct._GimpDataFactoryView* %20 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_widget_get_type() #4
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call16)
  %22 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkWidget*
  %call18 = call %struct._GtkWidget* @data_delete_dialog_new(%struct._GimpDataFactory* %17, %struct._GimpData* %18, %struct._GimpContext* %19, %struct._GtkWidget* %22)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %dialog, align 8
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %23)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.10, %land.lhs.true, %entry
  ret void
}

declare i32 @gimp_data_is_deletable(%struct._GimpData*) #1

declare %struct._GtkWidget* @data_delete_dialog_new(%struct._GimpDataFactory*, %struct._GimpData*, %struct._GimpContext*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define void @data_refresh_cmd_callback(%struct._GtkAction* %action, i8* %user_data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %user_data.addr = alloca i8*, align 8
  %view = alloca %struct._GimpDataFactoryView*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load i8*, i8** %user_data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_factory_view_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDataFactoryView*
  store %struct._GimpDataFactoryView* %2, %struct._GimpDataFactoryView** %view, align 8
  %3 = load i8*, i8** %user_data.addr, align 8
  %call2 = call %struct._Gimp* @action_data_get_gimp(i8* %3)
  store %struct._Gimp* %call2, %struct._Gimp** %gimp, align 8
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %tobool = icmp ne %struct._Gimp* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  call void @gimp_set_busy(%struct._Gimp* %5)
  %6 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %view, align 8
  %call3 = call %struct._GimpDataFactory* @gimp_data_factory_view_get_data_factory(%struct._GimpDataFactoryView* %6)
  %7 = load i8*, i8** %user_data.addr, align 8
  %call4 = call %struct._GimpContext* @action_data_get_context(i8* %7)
  call void @gimp_data_factory_data_refresh(%struct._GimpDataFactory* %call3, %struct._GimpContext* %call4)
  %8 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  call void @gimp_unset_busy(%struct._Gimp* %8)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare %struct._Gimp* @action_data_get_gimp(i8*) #1

declare void @gimp_set_busy(%struct._Gimp*) #1

declare void @gimp_data_factory_data_refresh(%struct._GimpDataFactory*, %struct._GimpContext*) #1

declare %struct._GimpContext* @action_data_get_context(i8*) #1

declare void @gimp_unset_busy(%struct._Gimp*) #1

; Function Attrs: nounwind uwtable
define void @data_edit_cmd_callback(%struct._GtkAction* %action, i8* %value, i8* %user_data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i8*, align 8
  %user_data.addr = alloca i8*, align 8
  %view = alloca %struct._GimpDataFactoryView*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %data = alloca %struct._GimpData*, align 8
  %screen = alloca %struct._GdkScreen*, align 8
  %dockable = alloca %struct._GtkWidget*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load i8*, i8** %user_data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_factory_view_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDataFactoryView*
  store %struct._GimpDataFactoryView* %2, %struct._GimpDataFactoryView** %view, align 8
  %3 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %view, align 8
  %4 = bitcast %struct._GimpDataFactoryView* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_container_editor_get_type() #4
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpContainerEditor*
  %view4 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %5, i32 0, i32 1
  %6 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view4, align 8
  %call5 = call %struct._GimpContext* @gimp_container_view_get_context(%struct._GimpContainerView* %6)
  store %struct._GimpContext* %call5, %struct._GimpContext** %context, align 8
  %7 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %8 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %view, align 8
  %call6 = call i64 @gimp_data_factory_view_get_children_type(%struct._GimpDataFactoryView* %8)
  %call7 = call %struct._GimpObject* @gimp_context_get_by_type(%struct._GimpContext* %7, i64 %call6)
  %9 = bitcast %struct._GimpObject* %call7 to %struct._GimpData*
  store %struct._GimpData* %9, %struct._GimpData** %data, align 8
  %10 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %tobool = icmp ne %struct._GimpData* %10, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %11 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %view, align 8
  %12 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %13 = bitcast %struct._GimpData* %12 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_object_get_type() #4
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call8)
  %14 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpObject*
  %call10 = call i32 @gimp_data_factory_view_have(%struct._GimpDataFactoryView* %11, %struct._GimpObject* %14)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %15 = load %struct._GimpDataFactoryView*, %struct._GimpDataFactoryView** %view, align 8
  %16 = bitcast %struct._GimpDataFactoryView* %15 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_widget_get_type() #4
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call12)
  %17 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkWidget*
  %call14 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %17)
  store %struct._GdkScreen* %call14, %struct._GdkScreen** %screen, align 8
  %18 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %18, i32 0, i32 1
  %19 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call15 = call %struct._GimpObject* @gimp_get_window_strategy(%struct._Gimp* %19)
  %20 = bitcast %struct._GimpObject* %call15 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_window_strategy_interface_get_type() #4
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call16)
  %21 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpWindowStrategy*
  %22 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp18 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %22, i32 0, i32 1
  %23 = load %struct._Gimp*, %struct._Gimp** %gimp18, align 8
  %call19 = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  %24 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  %25 = load i8*, i8** %value.addr, align 8
  %call20 = call %struct._GtkWidget* @gimp_window_strategy_show_dockable_dialog(%struct._GimpWindowStrategy* %21, %struct._Gimp* %23, %struct._GimpDialogFactory* %call19, %struct._GdkScreen* %24, i8* %25)
  store %struct._GtkWidget* %call20, %struct._GtkWidget** %dockable, align 8
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %dockable, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_bin_get_type() #4
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call21)
  %28 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkBin*
  %call23 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %28)
  %29 = bitcast %struct._GtkWidget* %call23 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_data_editor_get_type() #4
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call24)
  %30 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpDataEditor*
  %31 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  call void @gimp_data_editor_set_data(%struct._GimpDataEditor* %30, %struct._GimpData* %31)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

declare %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_window_strategy_show_dockable_dialog(%struct._GimpWindowStrategy*, %struct._Gimp*, %struct._GimpDialogFactory*, %struct._GdkScreen*, i8*) #1

declare %struct._GimpObject* @gimp_get_window_strategy(%struct._Gimp*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_window_strategy_interface_get_type() #2

declare %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton() #1

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
