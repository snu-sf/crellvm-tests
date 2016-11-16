; ModuleID = './app/actions/quick-mask-commands.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkActionPrivate = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
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
%struct._GtkToggleAction = type { %struct._GtkAction, %struct._GtkToggleActionPrivate* }
%struct._GtkToggleActionPrivate = type opaque
%struct._GtkRadioAction = type { %struct._GtkToggleAction, %struct._GtkRadioActionPrivate* }
%struct._GtkRadioActionPrivate = type opaque
%struct._ChannelOptionsDialog = type { %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GimpImage*, %struct._GimpContext*, %struct._GimpChannel* }
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
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GeglNode = type opaque
%struct._BoundSeg = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpColorButton = type { %struct._GimpButton, i8*, i32, %struct._GtkWidget*, %struct._GtkWidget*, i8* }
%struct._GimpButton = type { %struct._GtkButton, i32 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }

@.str = private unnamed_addr constant [22 x i8] c"Quick Mask Attributes\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"gimp-quick-mask-edit\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"gimp-quick-mask-on\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Edit Quick Mask Attributes\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Edit Quick Mask Color\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"_Mask opacity:\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"response\00", align 1

; Function Attrs: nounwind uwtable
define void @quick_mask_toggle_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %active = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.6

if.end:                                           ; preds = %entry
  %2 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %3 = bitcast %struct._GtkAction* %2 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_toggle_action_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call1)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkToggleAction*
  %call3 = call i32 @gtk_toggle_action_get_active(%struct._GtkToggleAction* %4)
  store i32 %call3, i32* %active, align 4
  %5 = load i32, i32* %active, align 4
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call4 = call i32 @gimp_image_get_quick_mask_state(%struct._GimpImage* %6)
  %cmp = icmp ne i32 %5, %call4
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %8 = load i32, i32* %active, align 4
  call void @gimp_image_set_quick_mask_state(%struct._GimpImage* %7, i32 %8)
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %9)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then, %if.then.5, %if.end
  ret void
}

declare %struct._GimpImage* @action_data_get_image(i8*) #1

declare i32 @gtk_toggle_action_get_active(%struct._GtkToggleAction*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_action_get_type() #2

declare i32 @gimp_image_get_quick_mask_state(%struct._GimpImage*) #1

declare void @gimp_image_set_quick_mask_state(%struct._GimpImage*, i32) #1

declare void @gimp_image_flush(%struct._GimpImage*) #1

; Function Attrs: nounwind uwtable
define void @quick_mask_invert_cmd_callback(%struct._GtkAction* %action, %struct._GtkAction* %current, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %current.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %value = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store %struct._GtkAction* %current, %struct._GtkAction** %current.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.6

if.end:                                           ; preds = %entry
  %2 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %3 = bitcast %struct._GtkAction* %2 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_radio_action_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call1)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkRadioAction*
  %call3 = call i32 @gtk_radio_action_get_current_value(%struct._GtkRadioAction* %4)
  store i32 %call3, i32* %value, align 4
  %5 = load i32, i32* %value, align 4
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call4 = call i32 @gimp_image_get_quick_mask_inverted(%struct._GimpImage* %6)
  %cmp = icmp ne i32 %5, %call4
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_quick_mask_invert(%struct._GimpImage* %7)
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %8)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then, %if.then.5, %if.end
  ret void
}

declare i32 @gtk_radio_action_get_current_value(%struct._GtkRadioAction*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_radio_action_get_type() #2

declare i32 @gimp_image_get_quick_mask_inverted(%struct._GimpImage*) #1

declare void @gimp_image_quick_mask_invert(%struct._GimpImage*) #1

; Function Attrs: nounwind uwtable
define void @quick_mask_configure_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %options = alloca %struct._ChannelOptionsDialog*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %data.addr, align 8
  %call1 = call %struct._GtkWidget* @action_data_get_widget(i8* %2)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %widget, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool2 = icmp ne %struct._GtkWidget* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_get_quick_mask_color(%struct._GimpImage* %4, %struct._GimpRGB* %color)
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %6 = load i8*, i8** %data.addr, align 8
  %call5 = call %struct._GimpContext* @action_data_get_context(i8* %6)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0)) #5
  %call7 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0)) #5
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0)) #5
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0)) #5
  %call10 = call %struct._ChannelOptionsDialog* @channel_options_dialog_new(%struct._GimpImage* %5, %struct._GimpChannel* null, %struct._GimpContext* %call5, %struct._GtkWidget* %7, %struct._GimpRGB* %color, i8* null, i8* %call6, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i8* %call7, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i8* %call8, i8* %call9, i32 0)
  store %struct._ChannelOptionsDialog* %call10, %struct._ChannelOptionsDialog** %options, align 8
  %8 = load %struct._ChannelOptionsDialog*, %struct._ChannelOptionsDialog** %options, align 8
  %dialog = getelementptr inbounds %struct._ChannelOptionsDialog, %struct._ChannelOptionsDialog* %8, i32 0, i32 0
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %10 = bitcast %struct._GtkWidget* %9 to i8*
  %11 = load %struct._ChannelOptionsDialog*, %struct._ChannelOptionsDialog** %options, align 8
  %12 = bitcast %struct._ChannelOptionsDialog* %11 to i8*
  %call11 = call i64 @g_signal_connect_data(i8* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct._ChannelOptionsDialog*)* @quick_mask_configure_response to void ()*), i8* %12, void (i8*, %struct._GClosure*)* null, i32 0)
  %13 = load %struct._ChannelOptionsDialog*, %struct._ChannelOptionsDialog** %options, align 8
  %dialog12 = getelementptr inbounds %struct._ChannelOptionsDialog, %struct._ChannelOptionsDialog* %13, i32 0, i32 0
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog12, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %14)
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  ret void
}

declare %struct._GtkWidget* @action_data_get_widget(i8*) #1

declare void @gimp_image_get_quick_mask_color(%struct._GimpImage*, %struct._GimpRGB*) #1

declare %struct._ChannelOptionsDialog* @channel_options_dialog_new(%struct._GimpImage*, %struct._GimpChannel*, %struct._GimpContext*, %struct._GtkWidget*, %struct._GimpRGB*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32) #1

declare %struct._GimpContext* @action_data_get_context(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @quick_mask_configure_response(%struct._GtkWidget* %widget, i32 %response_id, %struct._ChannelOptionsDialog* %options) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %options.addr = alloca %struct._ChannelOptionsDialog*, align 8
  %old_color = alloca %struct._GimpRGB, align 8
  %new_color = alloca %struct._GimpRGB, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct._ChannelOptionsDialog* %options, %struct._ChannelOptionsDialog** %options.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %0, -5
  br i1 %cmp, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %1 = load %struct._ChannelOptionsDialog*, %struct._ChannelOptionsDialog** %options.addr, align 8
  %image = getelementptr inbounds %struct._ChannelOptionsDialog, %struct._ChannelOptionsDialog* %1, i32 0, i32 4
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_get_quick_mask_color(%struct._GimpImage* %2, %struct._GimpRGB* %old_color)
  %3 = load %struct._ChannelOptionsDialog*, %struct._ChannelOptionsDialog** %options.addr, align 8
  %color_panel = getelementptr inbounds %struct._ChannelOptionsDialog, %struct._ChannelOptionsDialog* %3, i32 0, i32 2
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %color_panel, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_button_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call)
  %6 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorButton*
  call void @gimp_color_button_get_color(%struct._GimpColorButton* %6, %struct._GimpRGB* %new_color)
  %call2 = call double @gimp_rgba_distance(%struct._GimpRGB* %old_color, %struct._GimpRGB* %new_color)
  %cmp3 = fcmp ogt double %call2, 1.000000e-04
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %7 = load %struct._ChannelOptionsDialog*, %struct._ChannelOptionsDialog** %options.addr, align 8
  %image5 = getelementptr inbounds %struct._ChannelOptionsDialog, %struct._ChannelOptionsDialog* %7, i32 0, i32 4
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image5, align 8
  call void @gimp_image_set_quick_mask_color(%struct._GimpImage* %8, %struct._GimpRGB* %new_color)
  %9 = load %struct._ChannelOptionsDialog*, %struct._ChannelOptionsDialog** %options.addr, align 8
  %image6 = getelementptr inbounds %struct._ChannelOptionsDialog, %struct._ChannelOptionsDialog* %9, i32 0, i32 4
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image6, align 8
  call void @gimp_image_flush(%struct._GimpImage* %10)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  %11 = load %struct._ChannelOptionsDialog*, %struct._ChannelOptionsDialog** %options.addr, align 8
  %dialog = getelementptr inbounds %struct._ChannelOptionsDialog, %struct._ChannelOptionsDialog* %11, i32 0, i32 0
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %12)
  ret void
}

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare void @gimp_color_button_get_color(%struct._GimpColorButton*, %struct._GimpRGB*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_button_get_type() #2

declare double @gimp_rgba_distance(%struct._GimpRGB*, %struct._GimpRGB*) #1

declare void @gimp_image_set_quick_mask_color(%struct._GimpImage*, %struct._GimpRGB*) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
