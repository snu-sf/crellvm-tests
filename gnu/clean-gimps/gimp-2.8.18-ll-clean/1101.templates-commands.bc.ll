; ModuleID = './app/actions/templates-commands.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkActionPrivate = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpCoreConfig = type { %struct._GimpBaseConfig, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct._GimpTemplate*, %struct._GimpGrid*, i32, i64, i32, i32, i8*, i32, i32, i32, i64, %struct._GimpColorConfig*, i32, i32, %struct._GimpRGB, i32 }
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GimpGrid = type opaque
%struct._GimpColorConfig = type { %struct._GObject, i32, i8*, i8*, i8*, i32, i8*, i32, i32, i8*, i32, %struct._GimpRGB, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()* }
%struct._GimpRGB = type { double, double, double, double }
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
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpTemplate = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpImagefile = type opaque
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
%struct._GimpContainerView = type opaque
%struct._GimpContainerEditorPrivate = type opaque
%struct._TemplateOptionsDialog = type { %struct._GtkWidget*, %struct._GtkWidget*, %struct._Gimp*, %struct._GimpTemplate* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpTemplateEditor = type { %struct._GtkBox }
%struct._GimpConfig = type opaque
%struct.TemplateDeleteData = type { %struct._GimpContext*, %struct._GimpContainer*, %struct._GimpTemplate* }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GimpMessageDialog = type { %struct._GimpDialog, %struct._GimpMessageBox* }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpMessageBox = type { %struct._GtkBox, i8*, i32, [3 x %struct._GtkWidget*], %struct._GtkWidget* }

@.str = private unnamed_addr constant [13 x i8] c"New Template\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"gimp-template-new\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"gimp-template\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Create a New Template\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Edit Template\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"gimp-template-edit\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"gtk-edit\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"Delete Template\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"gtk-delete\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"disconnect\00", align 1
@.str.12 = private unnamed_addr constant [75 x i8] c"Are you sure you want to delete template '%s' from the list and from disk?\00", align 1

; Function Attrs: nounwind uwtable
define void @templates_create_image_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  %editor = alloca %struct._GimpContainerEditor*, align 8
  %container = alloca %struct._GimpContainer*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %template = alloca %struct._GimpTemplate*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_editor_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerEditor*
  store %struct._GimpContainerEditor* %2, %struct._GimpContainerEditor** %editor, align 8
  %3 = load i8*, i8** %data.addr, align 8
  %call2 = call %struct._Gimp* @action_data_get_gimp(i8* %3)
  store %struct._Gimp* %call2, %struct._Gimp** %gimp, align 8
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %tobool = icmp ne %struct._Gimp* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.14

if.end:                                           ; preds = %entry
  %5 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %5, i32 0, i32 1
  %6 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %call3 = call %struct._GimpContainer* @gimp_container_view_get_container(%struct._GimpContainerView* %6)
  store %struct._GimpContainer* %call3, %struct._GimpContainer** %container, align 8
  %7 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view4 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %7, i32 0, i32 1
  %8 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view4, align 8
  %call5 = call %struct._GimpContext* @gimp_container_view_get_context(%struct._GimpContainerView* %8)
  store %struct._GimpContext* %call5, %struct._GimpContext** %context, align 8
  %9 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call6 = call %struct._GimpTemplate* @gimp_context_get_template(%struct._GimpContext* %9)
  store %struct._GimpTemplate* %call6, %struct._GimpTemplate** %template, align 8
  %10 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  %tobool7 = icmp ne %struct._GimpTemplate* %10, null
  br i1 %tobool7, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %if.end
  %11 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %12 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  %13 = bitcast %struct._GimpTemplate* %12 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_object_get_type() #4
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call8)
  %14 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpObject*
  %call10 = call i32 @gimp_container_have(%struct._GimpContainer* %11, %struct._GimpObject* %14)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %land.lhs.true
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %16 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  %17 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call13 = call %struct._GimpImage* @gimp_image_new_from_template(%struct._Gimp* %15, %struct._GimpTemplate* %16, %struct._GimpContext* %17)
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %19 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  call void @gimp_image_new_set_last_template(%struct._Gimp* %18, %struct._GimpTemplate* %19)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then, %if.then.12, %land.lhs.true, %if.end
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_editor_get_type() #2

declare %struct._Gimp* @action_data_get_gimp(i8*) #1

declare %struct._GimpContainer* @gimp_container_view_get_container(%struct._GimpContainerView*) #1

declare %struct._GimpContext* @gimp_container_view_get_context(%struct._GimpContainerView*) #1

declare %struct._GimpTemplate* @gimp_context_get_template(%struct._GimpContext*) #1

declare i32 @gimp_container_have(%struct._GimpContainer*, %struct._GimpObject*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare %struct._GimpImage* @gimp_image_new_from_template(%struct._Gimp*, %struct._GimpTemplate*, %struct._GimpContext*) #1

declare void @gimp_image_new_set_last_template(%struct._Gimp*, %struct._GimpTemplate*) #1

; Function Attrs: nounwind uwtable
define void @templates_new_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpContainerEditor*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %options = alloca %struct._TemplateOptionsDialog*, align 8
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
  %6 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %7 = bitcast %struct._GimpContainerEditor* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_widget_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkWidget*
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)) #5
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0)) #5
  %call7 = call %struct._TemplateOptionsDialog* @template_options_dialog_new(%struct._GimpTemplate* null, %struct._GimpContext* %5, %struct._GtkWidget* %8, i8* %call5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* %call6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  store %struct._TemplateOptionsDialog* %call7, %struct._TemplateOptionsDialog** %options, align 8
  %9 = load %struct._TemplateOptionsDialog*, %struct._TemplateOptionsDialog** %options, align 8
  %dialog = getelementptr inbounds %struct._TemplateOptionsDialog, %struct._TemplateOptionsDialog* %9, i32 0, i32 0
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %11 = bitcast %struct._GtkWidget* %10 to i8*
  %12 = load %struct._TemplateOptionsDialog*, %struct._TemplateOptionsDialog** %options, align 8
  %13 = bitcast %struct._TemplateOptionsDialog* %12 to i8*
  %call8 = call i64 @g_signal_connect_data(i8* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct._TemplateOptionsDialog*)* @templates_new_response to void ()*), i8* %13, void (i8*, %struct._GClosure*)* null, i32 0)
  %14 = load %struct._TemplateOptionsDialog*, %struct._TemplateOptionsDialog** %options, align 8
  %dialog9 = getelementptr inbounds %struct._TemplateOptionsDialog, %struct._TemplateOptionsDialog* %14, i32 0, i32 0
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog9, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %15)
  ret void
}

declare %struct._TemplateOptionsDialog* @template_options_dialog_new(%struct._GimpTemplate*, %struct._GimpContext*, %struct._GtkWidget*, i8*, i8*, i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @templates_new_response(%struct._GtkWidget* %dialog, i32 %response_id, %struct._TemplateOptionsDialog* %options) #0 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %options.addr = alloca %struct._TemplateOptionsDialog*, align 8
  %editor = alloca %struct._GimpTemplateEditor*, align 8
  %template = alloca %struct._GimpTemplate*, align 8
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct._TemplateOptionsDialog* %options, %struct._TemplateOptionsDialog** %options.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %0, -5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._TemplateOptionsDialog*, %struct._TemplateOptionsDialog** %options.addr, align 8
  %editor1 = getelementptr inbounds %struct._TemplateOptionsDialog, %struct._TemplateOptionsDialog* %1, i32 0, i32 1
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %editor1, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call = call i64 @gimp_template_editor_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpTemplateEditor*
  store %struct._GimpTemplateEditor* %4, %struct._GimpTemplateEditor** %editor, align 8
  %5 = load %struct._GimpTemplateEditor*, %struct._GimpTemplateEditor** %editor, align 8
  %call3 = call %struct._GimpTemplate* @gimp_template_editor_get_template(%struct._GimpTemplateEditor* %5)
  store %struct._GimpTemplate* %call3, %struct._GimpTemplate** %template, align 8
  %6 = load %struct._TemplateOptionsDialog*, %struct._TemplateOptionsDialog** %options.addr, align 8
  %gimp = getelementptr inbounds %struct._TemplateOptionsDialog, %struct._TemplateOptionsDialog* %6, i32 0, i32 2
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %templates = getelementptr inbounds %struct._Gimp, %struct._Gimp* %7, i32 0, i32 48
  %8 = load %struct._GimpContainer*, %struct._GimpContainer** %templates, align 8
  %9 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  %10 = bitcast %struct._GimpTemplate* %9 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_object_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call4)
  %11 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpObject*
  %call6 = call i32 @gimp_container_add(%struct._GimpContainer* %8, %struct._GimpObject* %11)
  %12 = load %struct._TemplateOptionsDialog*, %struct._TemplateOptionsDialog** %options.addr, align 8
  %gimp7 = getelementptr inbounds %struct._TemplateOptionsDialog, %struct._TemplateOptionsDialog* %12, i32 0, i32 2
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp7, align 8
  %call8 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %13)
  %14 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  call void @gimp_context_set_template(%struct._GimpContext* %call8, %struct._GimpTemplate* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %15)
  ret void
}

declare void @gtk_widget_show(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define void @templates_duplicate_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpContainerEditor*, align 8
  %container = alloca %struct._GimpContainer*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %template = alloca %struct._GimpTemplate*, align 8
  %new_template = alloca %struct._GimpTemplate*, align 8
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
  %call2 = call %struct._GimpContainer* @gimp_container_view_get_container(%struct._GimpContainerView* %4)
  store %struct._GimpContainer* %call2, %struct._GimpContainer** %container, align 8
  %5 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view3 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %5, i32 0, i32 1
  %6 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view3, align 8
  %call4 = call %struct._GimpContext* @gimp_container_view_get_context(%struct._GimpContainerView* %6)
  store %struct._GimpContext* %call4, %struct._GimpContext** %context, align 8
  %7 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call5 = call %struct._GimpTemplate* @gimp_context_get_template(%struct._GimpContext* %7)
  store %struct._GimpTemplate* %call5, %struct._GimpTemplate** %template, align 8
  %8 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  %tobool = icmp ne %struct._GimpTemplate* %8, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %9 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %10 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  %11 = bitcast %struct._GimpTemplate* %10 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_object_get_type() #4
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call6)
  %12 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpObject*
  %call8 = call i32 @gimp_container_have(%struct._GimpContainer* %9, %struct._GimpObject* %12)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %13 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  %14 = bitcast %struct._GimpTemplate* %13 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_config_interface_get_type() #4
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call10)
  %15 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpConfig*
  %call12 = call i8* @gimp_config_duplicate(%struct._GimpConfig* %15)
  %16 = bitcast i8* %call12 to %struct._GimpTemplate*
  store %struct._GimpTemplate* %16, %struct._GimpTemplate** %new_template, align 8
  %17 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %18 = load %struct._GimpTemplate*, %struct._GimpTemplate** %new_template, align 8
  %19 = bitcast %struct._GimpTemplate* %18 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_object_get_type() #4
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call13)
  %20 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpObject*
  %call15 = call i32 @gimp_container_add(%struct._GimpContainer* %17, %struct._GimpObject* %20)
  %21 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %22 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %call16 = call i64 @gimp_container_get_children_type(%struct._GimpContainer* %22)
  %23 = load %struct._GimpTemplate*, %struct._GimpTemplate** %new_template, align 8
  %24 = bitcast %struct._GimpTemplate* %23 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_object_get_type() #4
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call17)
  %25 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpObject*
  call void @gimp_context_set_by_type(%struct._GimpContext* %21, i64 %call16, %struct._GimpObject* %25)
  %26 = load %struct._GimpTemplate*, %struct._GimpTemplate** %new_template, align 8
  %27 = bitcast %struct._GimpTemplate* %26 to i8*
  call void @g_object_unref(i8* %27)
  %28 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %29 = load i8*, i8** %data.addr, align 8
  call void @templates_edit_cmd_callback(%struct._GtkAction* %28, i8* %29)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

declare i8* @gimp_config_duplicate(%struct._GimpConfig*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #2

declare i32 @gimp_container_add(%struct._GimpContainer*, %struct._GimpObject*) #1

declare void @gimp_context_set_by_type(%struct._GimpContext*, i64, %struct._GimpObject*) #1

declare i64 @gimp_container_get_children_type(%struct._GimpContainer*) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define void @templates_edit_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpContainerEditor*, align 8
  %container = alloca %struct._GimpContainer*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %template = alloca %struct._GimpTemplate*, align 8
  %options = alloca %struct._TemplateOptionsDialog*, align 8
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
  %call2 = call %struct._GimpContainer* @gimp_container_view_get_container(%struct._GimpContainerView* %4)
  store %struct._GimpContainer* %call2, %struct._GimpContainer** %container, align 8
  %5 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view3 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %5, i32 0, i32 1
  %6 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view3, align 8
  %call4 = call %struct._GimpContext* @gimp_container_view_get_context(%struct._GimpContainerView* %6)
  store %struct._GimpContext* %call4, %struct._GimpContext** %context, align 8
  %7 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call5 = call %struct._GimpTemplate* @gimp_context_get_template(%struct._GimpContext* %7)
  store %struct._GimpTemplate* %call5, %struct._GimpTemplate** %template, align 8
  %8 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  %tobool = icmp ne %struct._GimpTemplate* %8, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %9 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %10 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  %11 = bitcast %struct._GimpTemplate* %10 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_object_get_type() #4
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call6)
  %12 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpObject*
  %call8 = call i32 @gimp_container_have(%struct._GimpContainer* %9, %struct._GimpObject* %12)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %13 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %15 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %16 = bitcast %struct._GimpContainerEditor* %15 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_widget_get_type() #4
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call10)
  %17 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkWidget*
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0)) #5
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0)) #5
  %call14 = call %struct._TemplateOptionsDialog* @template_options_dialog_new(%struct._GimpTemplate* %13, %struct._GimpContext* %14, %struct._GtkWidget* %17, i8* %call12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* %call13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0))
  store %struct._TemplateOptionsDialog* %call14, %struct._TemplateOptionsDialog** %options, align 8
  %18 = load %struct._TemplateOptionsDialog*, %struct._TemplateOptionsDialog** %options, align 8
  %dialog = getelementptr inbounds %struct._TemplateOptionsDialog, %struct._TemplateOptionsDialog* %18, i32 0, i32 0
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %20 = bitcast %struct._GtkWidget* %19 to i8*
  %21 = load %struct._TemplateOptionsDialog*, %struct._TemplateOptionsDialog** %options, align 8
  %22 = bitcast %struct._TemplateOptionsDialog* %21 to i8*
  %call15 = call i64 @g_signal_connect_data(i8* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct._TemplateOptionsDialog*)* @templates_edit_response to void ()*), i8* %22, void (i8*, %struct._GClosure*)* null, i32 0)
  %23 = load %struct._TemplateOptionsDialog*, %struct._TemplateOptionsDialog** %options, align 8
  %dialog16 = getelementptr inbounds %struct._TemplateOptionsDialog, %struct._TemplateOptionsDialog* %23, i32 0, i32 0
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog16, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %24)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @templates_edit_response(%struct._GtkWidget* %dialog, i32 %response_id, %struct._TemplateOptionsDialog* %options) #0 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %options.addr = alloca %struct._TemplateOptionsDialog*, align 8
  %editor = alloca %struct._GimpTemplateEditor*, align 8
  %template = alloca %struct._GimpTemplate*, align 8
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct._TemplateOptionsDialog* %options, %struct._TemplateOptionsDialog** %options.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %0, -5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._TemplateOptionsDialog*, %struct._TemplateOptionsDialog** %options.addr, align 8
  %editor1 = getelementptr inbounds %struct._TemplateOptionsDialog, %struct._TemplateOptionsDialog* %1, i32 0, i32 1
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %editor1, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call = call i64 @gimp_template_editor_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpTemplateEditor*
  store %struct._GimpTemplateEditor* %4, %struct._GimpTemplateEditor** %editor, align 8
  %5 = load %struct._GimpTemplateEditor*, %struct._GimpTemplateEditor** %editor, align 8
  %call3 = call %struct._GimpTemplate* @gimp_template_editor_get_template(%struct._GimpTemplateEditor* %5)
  store %struct._GimpTemplate* %call3, %struct._GimpTemplate** %template, align 8
  %6 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  %7 = bitcast %struct._GimpTemplate* %6 to %struct._GTypeInstance*
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 80)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GObject*
  %9 = load %struct._TemplateOptionsDialog*, %struct._TemplateOptionsDialog** %options.addr, align 8
  %template5 = getelementptr inbounds %struct._TemplateOptionsDialog, %struct._TemplateOptionsDialog* %9, i32 0, i32 3
  %10 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template5, align 8
  %11 = bitcast %struct._GimpTemplate* %10 to %struct._GTypeInstance*
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 80)
  %12 = bitcast %struct._GTypeInstance* %call6 to %struct._GObject*
  %call7 = call i32 @gimp_config_sync(%struct._GObject* %8, %struct._GObject* %12, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %13)
  ret void
}

; Function Attrs: nounwind uwtable
define void @templates_delete_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpContainerEditor*, align 8
  %container = alloca %struct._GimpContainer*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %template = alloca %struct._GimpTemplate*, align 8
  %delete_data = alloca %struct.TemplateDeleteData*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
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
  %call2 = call %struct._GimpContainer* @gimp_container_view_get_container(%struct._GimpContainerView* %4)
  store %struct._GimpContainer* %call2, %struct._GimpContainer** %container, align 8
  %5 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view3 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %5, i32 0, i32 1
  %6 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view3, align 8
  %call4 = call %struct._GimpContext* @gimp_container_view_get_context(%struct._GimpContainerView* %6)
  store %struct._GimpContext* %call4, %struct._GimpContext** %context, align 8
  %7 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call5 = call %struct._GimpTemplate* @gimp_context_get_template(%struct._GimpContext* %7)
  store %struct._GimpTemplate* %call5, %struct._GimpTemplate** %template, align 8
  %8 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  %tobool = icmp ne %struct._GimpTemplate* %8, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %9 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %10 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  %11 = bitcast %struct._GimpTemplate* %10 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_object_get_type() #4
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call6)
  %12 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpObject*
  %call8 = call i32 @gimp_container_have(%struct._GimpContainer* %9, %struct._GimpObject* %12)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call10 = call noalias i8* @g_slice_alloc(i64 24)
  %13 = bitcast i8* %call10 to %struct.TemplateDeleteData*
  store %struct.TemplateDeleteData* %13, %struct.TemplateDeleteData** %delete_data, align 8
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %15 = load %struct.TemplateDeleteData*, %struct.TemplateDeleteData** %delete_data, align 8
  %context11 = getelementptr inbounds %struct.TemplateDeleteData, %struct.TemplateDeleteData* %15, i32 0, i32 0
  store %struct._GimpContext* %14, %struct._GimpContext** %context11, align 8
  %16 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %17 = load %struct.TemplateDeleteData*, %struct.TemplateDeleteData** %delete_data, align 8
  %container12 = getelementptr inbounds %struct.TemplateDeleteData, %struct.TemplateDeleteData* %17, i32 0, i32 1
  store %struct._GimpContainer* %16, %struct._GimpContainer** %container12, align 8
  %18 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  %19 = load %struct.TemplateDeleteData*, %struct.TemplateDeleteData** %delete_data, align 8
  %template13 = getelementptr inbounds %struct.TemplateDeleteData, %struct.TemplateDeleteData* %19, i32 0, i32 2
  store %struct._GimpTemplate* %18, %struct._GimpTemplate** %template13, align 8
  %call14 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0)) #5
  %20 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %21 = bitcast %struct._GimpContainerEditor* %20 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_widget_get_type() #4
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call15)
  %22 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkWidget*
  %call17 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_message_dialog_new(i8* %call14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), %struct._GtkWidget* %22, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %dialog, align 8
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_dialog_get_type() #4
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call18)
  %25 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %25, i32 -5, i32 -6, i32 -1)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 80)
  %28 = bitcast %struct._GTypeInstance* %call20 to %struct._GObject*
  %29 = load %struct.TemplateDeleteData*, %struct.TemplateDeleteData** %delete_data, align 8
  %30 = bitcast %struct.TemplateDeleteData* %29 to i8*
  call void @g_object_weak_ref(%struct._GObject* %28, void (i8*, %struct._GObject*)* bitcast (void (%struct.TemplateDeleteData*)* @templates_delete_data_free to void (i8*, %struct._GObject*)*), i8* %30)
  %31 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  %32 = bitcast %struct._GimpTemplate* %31 to i8*
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %34 = bitcast %struct._GtkWidget* %33 to i8*
  %call21 = call i64 @g_signal_connect_object(i8* %32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @gtk_widget_destroy to void ()*), i8* %34, i32 2)
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %36 = bitcast %struct._GtkWidget* %35 to i8*
  %37 = load %struct.TemplateDeleteData*, %struct.TemplateDeleteData** %delete_data, align 8
  %38 = bitcast %struct.TemplateDeleteData* %37 to i8*
  %call22 = call i64 @g_signal_connect_data(i8* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct.TemplateDeleteData*)* @templates_delete_response to void ()*), i8* %38, void (i8*, %struct._GClosure*)* null, i32 0)
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_message_dialog_get_type() #4
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call23)
  %41 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpMessageDialog*
  %box = getelementptr inbounds %struct._GimpMessageDialog, %struct._GimpMessageDialog* %41, i32 0, i32 1
  %42 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box, align 8
  %call25 = call i8* @gettext(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.12, i32 0, i32 0)) #5
  %43 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  %44 = bitcast %struct._GimpTemplate* %43 to i8*
  %call26 = call i8* @gimp_object_get_name(i8* %44)
  call void (%struct._GimpMessageBox*, i8*, ...) @gimp_message_box_set_primary_text(%struct._GimpMessageBox* %42, i8* %call25, i8* %call26)
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %45)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

declare noalias i8* @g_slice_alloc(i64) #1

declare %struct._GtkWidget* @gimp_message_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #1

declare void @gimp_standard_help_func(i8*, i8*) #1

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #2

declare void @g_object_weak_ref(%struct._GObject*, void (i8*, %struct._GObject*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @templates_delete_data_free(%struct.TemplateDeleteData* %delete_data) #0 {
entry:
  %delete_data.addr = alloca %struct.TemplateDeleteData*, align 8
  store %struct.TemplateDeleteData* %delete_data, %struct.TemplateDeleteData** %delete_data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.TemplateDeleteData*, %struct.TemplateDeleteData** %delete_data.addr, align 8
  %1 = bitcast %struct.TemplateDeleteData* %0 to i8*
  call void @g_slice_free1(i64 24, i8* %1)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @templates_delete_response(%struct._GtkWidget* %dialog, i32 %response_id, %struct.TemplateDeleteData* %delete_data) #0 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %delete_data.addr = alloca %struct.TemplateDeleteData*, align 8
  %new_active = alloca %struct._GimpObject*, align 8
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct.TemplateDeleteData* %delete_data, %struct.TemplateDeleteData** %delete_data.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %0, -5
  br i1 %cmp, label %if.then, label %if.end.25

if.then:                                          ; preds = %entry
  store %struct._GimpObject* null, %struct._GimpObject** %new_active, align 8
  %1 = load %struct.TemplateDeleteData*, %struct.TemplateDeleteData** %delete_data.addr, align 8
  %template = getelementptr inbounds %struct.TemplateDeleteData, %struct.TemplateDeleteData* %1, i32 0, i32 2
  %2 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  %3 = load %struct.TemplateDeleteData*, %struct.TemplateDeleteData** %delete_data.addr, align 8
  %context = getelementptr inbounds %struct.TemplateDeleteData, %struct.TemplateDeleteData* %3, i32 0, i32 0
  %4 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call = call %struct._GimpTemplate* @gimp_context_get_template(%struct._GimpContext* %4)
  %cmp1 = icmp eq %struct._GimpTemplate* %2, %call
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %5 = load %struct.TemplateDeleteData*, %struct.TemplateDeleteData** %delete_data.addr, align 8
  %container = getelementptr inbounds %struct.TemplateDeleteData, %struct.TemplateDeleteData* %5, i32 0, i32 1
  %6 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %7 = load %struct.TemplateDeleteData*, %struct.TemplateDeleteData** %delete_data.addr, align 8
  %template3 = getelementptr inbounds %struct.TemplateDeleteData, %struct.TemplateDeleteData* %7, i32 0, i32 2
  %8 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template3, align 8
  %9 = bitcast %struct._GimpTemplate* %8 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_object_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call4)
  %10 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpObject*
  %call6 = call %struct._GimpObject* @gimp_container_get_neighbor_of(%struct._GimpContainer* %6, %struct._GimpObject* %10)
  store %struct._GimpObject* %call6, %struct._GimpObject** %new_active, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %11 = load %struct.TemplateDeleteData*, %struct.TemplateDeleteData** %delete_data.addr, align 8
  %container7 = getelementptr inbounds %struct.TemplateDeleteData, %struct.TemplateDeleteData* %11, i32 0, i32 1
  %12 = load %struct._GimpContainer*, %struct._GimpContainer** %container7, align 8
  %13 = load %struct.TemplateDeleteData*, %struct.TemplateDeleteData** %delete_data.addr, align 8
  %template8 = getelementptr inbounds %struct.TemplateDeleteData, %struct.TemplateDeleteData* %13, i32 0, i32 2
  %14 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template8, align 8
  %15 = bitcast %struct._GimpTemplate* %14 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_object_get_type() #4
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call9)
  %16 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpObject*
  %call11 = call i32 @gimp_container_have(%struct._GimpContainer* %12, %struct._GimpObject* %16)
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.then.12, label %if.end.24

if.then.12:                                       ; preds = %if.end
  %17 = load %struct._GimpObject*, %struct._GimpObject** %new_active, align 8
  %tobool13 = icmp ne %struct._GimpObject* %17, null
  br i1 %tobool13, label %if.then.14, label %if.end.18

if.then.14:                                       ; preds = %if.then.12
  %18 = load %struct.TemplateDeleteData*, %struct.TemplateDeleteData** %delete_data.addr, align 8
  %context15 = getelementptr inbounds %struct.TemplateDeleteData, %struct.TemplateDeleteData* %18, i32 0, i32 0
  %19 = load %struct._GimpContext*, %struct._GimpContext** %context15, align 8
  %20 = load %struct.TemplateDeleteData*, %struct.TemplateDeleteData** %delete_data.addr, align 8
  %container16 = getelementptr inbounds %struct.TemplateDeleteData, %struct.TemplateDeleteData* %20, i32 0, i32 1
  %21 = load %struct._GimpContainer*, %struct._GimpContainer** %container16, align 8
  %call17 = call i64 @gimp_container_get_children_type(%struct._GimpContainer* %21)
  %22 = load %struct._GimpObject*, %struct._GimpObject** %new_active, align 8
  call void @gimp_context_set_by_type(%struct._GimpContext* %19, i64 %call17, %struct._GimpObject* %22)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.14, %if.then.12
  %23 = load %struct.TemplateDeleteData*, %struct.TemplateDeleteData** %delete_data.addr, align 8
  %container19 = getelementptr inbounds %struct.TemplateDeleteData, %struct.TemplateDeleteData* %23, i32 0, i32 1
  %24 = load %struct._GimpContainer*, %struct._GimpContainer** %container19, align 8
  %25 = load %struct.TemplateDeleteData*, %struct.TemplateDeleteData** %delete_data.addr, align 8
  %template20 = getelementptr inbounds %struct.TemplateDeleteData, %struct.TemplateDeleteData* %25, i32 0, i32 2
  %26 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template20, align 8
  %27 = bitcast %struct._GimpTemplate* %26 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_object_get_type() #4
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call21)
  %28 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpObject*
  %call23 = call i32 @gimp_container_remove(%struct._GimpContainer* %24, %struct._GimpObject* %28)
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.18, %if.end
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %entry
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %29)
  ret void
}

declare void @gimp_message_box_set_primary_text(%struct._GimpMessageBox*, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_message_dialog_get_type() #2

declare i8* @gimp_object_get_name(i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_template_editor_get_type() #2

declare %struct._GimpTemplate* @gimp_template_editor_get_template(%struct._GimpTemplateEditor*) #1

declare void @gimp_context_set_template(%struct._GimpContext*, %struct._GimpTemplate*) #1

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #1

declare i32 @gimp_config_sync(%struct._GObject*, %struct._GObject*, i32) #1

declare %struct._GimpObject* @gimp_container_get_neighbor_of(%struct._GimpContainer*, %struct._GimpObject*) #1

declare i32 @gimp_container_remove(%struct._GimpContainer*, %struct._GimpObject*) #1

declare void @g_slice_free1(i64, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
