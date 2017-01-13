; ModuleID = './app/actions/gradients-commands.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkActionPrivate = type opaque
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
%struct._GtkFileChooser = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GError = type { i32, i32, i8* }

@.str = private unnamed_addr constant [21 x i8] c"Save '%s' as POV-Ray\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"gtk-save\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"gimp\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"gimp-gradient-save-pov\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"delete-event\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"gimp-gradient-save-as-pov\00", align 1

; Function Attrs: nounwind uwtable
define void @gradients_save_as_pov_ray_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpContainerEditor*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  %chooser = alloca %struct._GtkFileChooser*, align 8
  %title = alloca i8*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_editor_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerEditor*
  store %struct._GimpContainerEditor* %2, %struct._GimpContainerEditor** %editor, align 8
  %3 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %3, i32 0, i32 1
  %4 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %call2 = call %struct._GimpContext* @gimp_container_view_get_context(%struct._GimpContainerView* %4)
  store %struct._GimpContext* %call2, %struct._GimpContext** %context, align 8
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call3 = call %struct._GimpGradient* @gimp_context_get_gradient(%struct._GimpContext* %5)
  store %struct._GimpGradient* %call3, %struct._GimpGradient** %gradient, align 8
  %6 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %tobool = icmp ne %struct._GimpGradient* %6, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0)) #5
  %7 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %8 = bitcast %struct._GimpGradient* %7 to i8*
  %call5 = call i8* @gimp_object_get_name(i8* %8)
  %call6 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call4, i8* %call5)
  store i8* %call6, i8** %title, align 8
  %9 = load i8*, i8** %title, align 8
  %call7 = call %struct._GtkWidget* (i8*, %struct._GtkWindow*, i32, i8*, ...) @gtk_file_chooser_dialog_new(i8* %9, %struct._GtkWindow* null, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 -5, i8* null)
  %10 = bitcast %struct._GtkWidget* %call7 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_file_chooser_get_type() #4
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call8)
  %11 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkFileChooser*
  store %struct._GtkFileChooser* %11, %struct._GtkFileChooser** %chooser, align 8
  %12 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser, align 8
  %13 = bitcast %struct._GtkFileChooser* %12 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_dialog_get_type() #4
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call10)
  %14 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %14, i32 -5, i32 -6, i32 -1)
  %15 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser, align 8
  %16 = bitcast %struct._GtkFileChooser* %15 to %struct._GTypeInstance*
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 80)
  %17 = bitcast %struct._GTypeInstance* %call12 to %struct._GObject*
  %18 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %18, i32 0, i32 1
  %19 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %20 = bitcast %struct._Gimp* %19 to i8*
  call void @g_object_set_data(%struct._GObject* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* %20)
  %21 = load i8*, i8** %title, align 8
  call void @g_free(i8* %21)
  %22 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser, align 8
  %23 = bitcast %struct._GtkFileChooser* %22 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_window_get_type() #4
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call13)
  %24 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkWindow*
  %25 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %26 = bitcast %struct._GimpContainerEditor* %25 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_widget_get_type() #4
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call15)
  %27 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkWidget*
  %call17 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %27)
  call void @gtk_window_set_screen(%struct._GtkWindow* %24, %struct._GdkScreen* %call17)
  %28 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser, align 8
  %29 = bitcast %struct._GtkFileChooser* %28 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_window_get_type() #4
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call18)
  %30 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkWindow*
  call void @gtk_window_set_role(%struct._GtkWindow* %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0))
  %31 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser, align 8
  %32 = bitcast %struct._GtkFileChooser* %31 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_window_get_type() #4
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call20)
  %33 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkWindow*
  call void @gtk_window_set_position(%struct._GtkWindow* %33, i32 2)
  %34 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser, align 8
  %35 = bitcast %struct._GtkFileChooser* %34 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_dialog_get_type() #4
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call22)
  %36 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkDialog*
  call void @gtk_dialog_set_default_response(%struct._GtkDialog* %36, i32 -5)
  %37 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser, align 8
  call void @gtk_file_chooser_set_do_overwrite_confirmation(%struct._GtkFileChooser* %37, i32 1)
  %38 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser, align 8
  %39 = bitcast %struct._GtkFileChooser* %38 to i8*
  %40 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %41 = bitcast %struct._GimpGradient* %40 to i8*
  %call24 = call i64 @g_signal_connect_data(i8* %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct._GimpGradient*)* @gradients_save_as_pov_ray_response to void ()*), i8* %41, void (i8*, %struct._GClosure*)* null, i32 0)
  %42 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser, align 8
  %43 = bitcast %struct._GtkFileChooser* %42 to i8*
  %call25 = call i64 @g_signal_connect_data(i8* %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (i32 ()* @gtk_true to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %44 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %45 = bitcast %struct._GimpGradient* %44 to i8*
  %call26 = call i8* @g_object_ref(i8* %45)
  %46 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser, align 8
  %47 = bitcast %struct._GtkFileChooser* %46 to i8*
  %48 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %49 = bitcast %struct._GimpGradient* %48 to i8*
  %call27 = call i64 @g_signal_connect_object(i8* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (void (i8*)* @g_object_unref to void ()*), i8* %49, i32 2)
  %50 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser, align 8
  %51 = bitcast %struct._GtkFileChooser* %50 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_widget_get_type() #4
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call28)
  %52 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkWidget*
  call void @gimp_help_connect(%struct._GtkWidget* %52, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0), i8* null)
  %53 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser, align 8
  %54 = bitcast %struct._GtkFileChooser* %53 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_widget_get_type() #4
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call30)
  %55 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkWidget*
  call void @gtk_widget_show(%struct._GtkWidget* %55)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_editor_get_type() #2

declare %struct._GimpContext* @gimp_container_view_get_context(%struct._GimpContainerView*) #1

declare %struct._GimpGradient* @gimp_context_get_gradient(%struct._GimpContext*) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare i8* @gimp_object_get_name(i8*) #1

declare %struct._GtkWidget* @gtk_file_chooser_dialog_new(i8*, %struct._GtkWindow*, i32, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_file_chooser_get_type() #2

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #2

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

declare void @g_free(i8*) #1

declare void @gtk_window_set_screen(%struct._GtkWindow*, %struct._GdkScreen*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #2

declare %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare void @gtk_window_set_role(%struct._GtkWindow*, i8*) #1

declare void @gtk_window_set_position(%struct._GtkWindow*, i32) #1

declare void @gtk_dialog_set_default_response(%struct._GtkDialog*, i32) #1

declare void @gtk_file_chooser_set_do_overwrite_confirmation(%struct._GtkFileChooser*, i32) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gradients_save_as_pov_ray_response(%struct._GtkWidget* %dialog, i32 %response_id, %struct._GimpGradient* %gradient) #0 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %gradient.addr = alloca %struct._GimpGradient*, align 8
  %filename = alloca i8*, align 8
  %error = alloca %struct._GError*, align 8
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct._GimpGradient* %gradient, %struct._GimpGradient** %gradient.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %0, -5
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  store %struct._GError* null, %struct._GError** %error, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_file_chooser_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkFileChooser*
  %call2 = call i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser* %3)
  store i8* %call2, i8** %filename, align 8
  %4 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %5 = load i8*, i8** %filename, align 8
  %call3 = call i32 @gimp_gradient_save_pov(%struct._GimpGradient* %4, i8* %5, %struct._GError** %error)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.then
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 80)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GObject*
  %call6 = call i8* @g_object_get_data(%struct._GObject* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0))
  %9 = bitcast i8* %call6 to %struct._Gimp*
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 80)
  %12 = bitcast %struct._GTypeInstance* %call7 to %struct._GObject*
  %13 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %13, i32 0, i32 2
  %14 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %9, %struct._GObject* %12, i32 2, i8* %14)
  call void @g_clear_error(%struct._GError** %error)
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %entry
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %15)
  br label %return

return:                                           ; preds = %if.end.8, %if.then.4
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @gtk_true() #2

declare i8* @g_object_ref(i8*) #1

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

declare void @g_object_unref(i8*) #1

declare void @gimp_help_connect(%struct._GtkWidget*, void (i8*, i8*)*, i8*, i8*) #1

declare void @gimp_standard_help_func(i8*, i8*) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser*) #1

declare i32 @gimp_gradient_save_pov(%struct._GimpGradient*, i8*, %struct._GError**) #1

declare void @gimp_message_literal(%struct._Gimp*, %struct._GObject*, i32, i8*) #1

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare void @g_clear_error(%struct._GError**) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
